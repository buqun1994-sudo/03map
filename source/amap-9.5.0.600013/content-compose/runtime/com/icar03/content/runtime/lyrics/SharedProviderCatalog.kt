package com.icar03.content.runtime.lyrics

import java.io.Closeable
import java.util.concurrent.CompletableFuture
import java.util.concurrent.Executors
import java.util.concurrent.ExecutorService
import java.util.concurrent.Future
import java.util.concurrent.RejectedExecutionException
import java.util.concurrent.TimeUnit

/** Shares catalog IO, not recording admission. Each subscriber retains its own proof/deadline/cancel. */
internal class SharedProviderCatalog(private val executor: ExecutorService,
    private val clock: LyricsMonotonicClock, private val producerBudgetMs: Long = 3_500L) : Closeable {
    private val lock = Any()
    private val entries = linkedMapOf<Key, Flight>()
    private var closed = false
    private val timer = Executors.newSingleThreadScheduledExecutor { task ->
        Thread(task, "provider-deadlines").apply { isDaemon = true }
    }
    private data class Key(val source: String, val revision: Long, val request: LyricsCatalogSearchRequest)
    private class Flight {
        val cancellation = LyricsCancellationSignal()
        val subscribers = mutableListOf<Subscription>()
        var job: Future<*>? = null
        var result: List<LyricsResult>? = null
        var completedAt: Long = 0L
    }
    private class Subscription(val deadline: Long, val success: (List<LyricsResult>) -> Unit,
        val failure: (Throwable) -> Unit) : CompletableFuture<Unit>() {
        var registration: Closeable? = null
        var timeout: Future<*>? = null
        var detach: (() -> Unit)? = null
        override fun cancel(mayInterruptIfRunning: Boolean): Boolean {
            val changed = super.cancel(mayInterruptIfRunning)
            if (changed) { registration?.close(); timeout?.cancel(false); detach?.invoke() }
            return changed
        }
    }
    fun submit(source: LyricsCatalogSource, request: LyricsCatalogSearchRequest, deadline: Long,
        cancellation: LyricsCancellationSignal, success: (List<LyricsResult>) -> Unit,
        failure: (Throwable) -> Unit): Future<*> {
        val key = Key(source.sourceName, source.catalogRevision, request)
        val subscription = Subscription(deadline, success, failure)
        var cached: List<LyricsResult>? = null
        var launch: Flight? = null
        synchronized(lock) {
            if (closed || cancellation.isCancelled) { subscription.cancel(false); return subscription }
            val now = clock.nanoTime()
            entries.entries.removeAll { (_, flight) -> flight.result != null &&
                now - flight.completedAt > TimeUnit.SECONDS.toNanos(30L) }
            val existing = entries[key]
            if (existing?.result != null) cached = existing.result
            else {
                val flight = existing ?: Flight().also { entries[key] = it; launch = it }
                flight.subscribers += subscription
                subscription.detach = {
                    synchronized(lock) {
                        flight.subscribers.remove(subscription)
                        if (flight.subscribers.isEmpty() && flight.result == null) {
                            if (entries[key] === flight) entries.remove(key)
                            flight.cancellation.cancel()
                            flight.job?.cancel(true)
                        }
                    }
                }
            }
            while (entries.size > 128) {
                val oldest = entries.entries.firstOrNull { it.value.result != null } ?: break
                entries.remove(oldest.key)
            }
        }
        subscription.registration = cancellation.register { subscription.cancel(true) }
        // Cancellation can race with register returning its handle.
        if (subscription.isDone) subscription.registration?.close()
        cached?.let { deliver(subscription, it, null); return subscription }
        try {
            if (!subscription.isDone) subscription.timeout = timer.schedule({
            val error = LyricsSourceException(LyricsFailureReason.DEADLINE, true, "Catalog subscriber deadline")
            if (subscription.completeExceptionally(error)) {
                subscription.registration?.close()
                subscription.detach?.invoke()
                subscription.failure(error)
            }
            }, (deadline - clock.nanoTime()).coerceAtLeast(1L), TimeUnit.NANOSECONDS)
        } catch (_: RejectedExecutionException) { subscription.cancel(true) }
        if (subscription.isDone) subscription.timeout?.cancel(false)
        launch?.let { flight ->
            val submittedAt = clock.nanoTime()
            val producerDeadline = submittedAt + TimeUnit.MILLISECONDS.toNanos(producerBudgetMs)
            if (flight.cancellation.isCancelled) return@let
            try {
                flight.job = submitProviderWork(executor, ProviderWork.CATALOG) {
                var results: List<LyricsResult>? = null
                var error: Throwable? = null
                try {
                    flight.cancellation.throwIfCancelled()
                    if (clock.nanoTime() >= producerDeadline) throw LyricsSourceException(LyricsFailureReason.DEADLINE, true, "Catalog deadline")
                    val loaded = source.search(request, producerDeadline, flight.cancellation).toList()
                    flight.cancellation.throwIfCancelled()
                    if (clock.nanoTime() >= producerDeadline) throw LyricsSourceException(LyricsFailureReason.DEADLINE, true, "Catalog producer deadline")
                    results = loaded
                } catch (caught: Exception) { error = caught }
                val subscribers = synchronized(lock) {
                    val current = entries[key] === flight
                    if (current && results != null && !flight.cancellation.isCancelled) {
                        flight.result = results
                        flight.completedAt = clock.nanoTime()
                    } else if (current) entries.remove(key)
                    flight.subscribers.toList().also { flight.subscribers.clear() }
                }
                subscribers.forEach { subscriber -> runCatching { deliver(subscriber, results.orEmpty(), error) } }
                }
            } catch (_: RejectedExecutionException) {
                val listeners = synchronized(lock) {
                    if (entries[key] === flight) entries.remove(key)
                    flight.subscribers.toList().also { flight.subscribers.clear() }
                }
                val stopped = synchronized(lock) { closed }
                listeners.forEach { listener ->
                    if (stopped) listener.cancel(true) else runCatching { deliver(listener, emptyList(),
                        LyricsSourceException(LyricsFailureReason.NETWORK, true, "Provider executor unavailable")) }
                }
            }
            if (flight.cancellation.isCancelled) flight.job?.cancel(true)
        }
        return subscription
    }
    private fun deliver(subscriber: Subscription, results: List<LyricsResult>, error: Throwable?) {
        if (!subscriber.complete(Unit)) return
        subscriber.registration?.close()
        subscriber.timeout?.cancel(false)
        if (clock.nanoTime() >= subscriber.deadline) subscriber.failure(
            LyricsSourceException(LyricsFailureReason.DEADLINE, true, "Catalog subscriber deadline"))
        else if (error != null) subscriber.failure(error) else subscriber.success(results)
    }
    override fun close() {
        val (flights, subscriptions) = synchronized(lock) {
            closed = true
            val active = entries.values.toList()
            val listeners = active.flatMap { it.subscribers.toList() }
            entries.clear()
            active to listeners
        }
        subscriptions.forEach { it.cancel(true) }
        flights.forEach { it.cancellation.cancel(); it.job?.cancel(true) }
        timer.shutdownNow()
    }
}
