package com.icar03.content.runtime.lyrics

// Migrated from 03lyrics; original source SHA-256: cd04faa97bfb85321c428a8ef48f0e23321a15d09ad3cfe3de59fe1f8bb9aea8.
// Upstream provenance and scoped adaptations: PROVENANCE.json.

import android.util.Log
import java.io.Closeable
import java.util.concurrent.CancellationException
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.ExecutorService
import java.util.concurrent.LinkedBlockingQueue
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean

/**
 * Coordinates public lyrics sources without routing requests through an app-owned server.
 * Source parsing, recording identity and admission policy live behind separate boundaries.
 */
internal class DirectLyricsRepository internal constructor(
    private val exactAndFallbackSource: LyricsExactAndFallbackSource = LrcLibLyricsSource(),
    private val catalogSources: List<LyricsCatalogSource> = LyricsProviderRegistry.catalogSources(),
    private val executor: ExecutorService = newNetworkExecutor(),
    private val clock: LyricsMonotonicClock = SystemLyricsMonotonicClock,
    private val config: LyricsResolutionConfig = LyricsResolutionConfig(),
    private val logger: LyricsRepositoryLogger = AndroidLyricsRepositoryLogger,
    private val preferredSources: () -> List<String> = { emptyList() }
) : LyricsResolver, LyricsCoverResolver, Closeable {
    private val closed = AtomicBoolean(false)
    private val activeCancellations = ConcurrentHashMap.newKeySet<LyricsCancellationSignal>()
    private val sharedCatalog = SharedProviderCatalog(executor, clock)
    private val bodySources: Map<String, LyricsBodySource> =
        (listOf(exactAndFallbackSource) + catalogSources).associateBy(LyricsBodySource::sourceName)
    private val resolutionSession = LyricsResolutionSession(
        exactAndFallbackSource = exactAndFallbackSource,
        catalogSources = catalogSources,
        bodySources = bodySources,
        executor = executor,
        clock = clock,
        config = config,
        logger = logger,
        preferredSources = preferredSources,
        sharedCatalog = sharedCatalog
    )

    init {
        require(bodySources.size == catalogSources.size + 1) {
            "Lyrics sources must have unique names"
        }
    }

    fun resolveLyrics(
        track: String,
        artist: String,
        album: String = "",
        durationMs: Long = 0L
    ): LyricsResolutionOutcome {
        val cancellation = LyricsCancellationSignal()
        return resolveLyrics(LyricsLookup(track, artist, album, durationMs), cancellation)
    }

    override fun resolveLyrics(
        query: LyricsLookup,
        cancellation: LyricsCancellationSignal
    ): LyricsResolutionOutcome = resolveLyricsProgressive(query, cancellation) { }

    override fun resolveLyricsProgressive(
        query: LyricsLookup,
        cancellation: LyricsCancellationSignal,
        onProvisional: (LyricsResolutionOutcome.Found) -> Unit
    ): LyricsResolutionOutcome {
        if (!LyricsCandidateSelector.canConfirm(query)) {
            return LyricsResolutionOutcome.InvalidMetadata
        }
        if (closed.get()) return LyricsResolutionOutcome.Cancelled
        activeCancellations += cancellation
        val startedAtNanos = clock.nanoTime()
        return try {
            resolutionSession.resolve(query, cancellation, startedAtNanos, onProvisional)
        } catch (_: CancellationException) {
            LyricsResolutionOutcome.Cancelled
        } finally {
            cancellation.cancel()
            activeCancellations -= cancellation
        }
    }

    fun resolveCover(track: String, artist: String): String {
        val cancellation = LyricsCancellationSignal()
        return resolveCover(LyricsLookup(track, artist), cancellation)
    }

    override fun resolveCover(query: LyricsLookup, cancellation: LyricsCancellationSignal): String =
        resolveCovers(query, cancellation).firstOrNull().orEmpty()

    override fun resolveCovers(query: LyricsLookup, cancellation: LyricsCancellationSignal): List<String> =
        resolveCoversProgressive(query, cancellation) { }

    override fun resolveCoversProgressive(query: LyricsLookup, cancellation: LyricsCancellationSignal,
        onCandidate: (String) -> Unit): List<String> {
        if (!LyricsCandidateSelector.canFindCover(query) || closed.get()) return emptyList()
        val requests = LyricsSearchPlanner.catalogRequests(query)
        if (requests.isEmpty()) return emptyList()
        activeCancellations += cancellation
        val started = clock.nanoTime()
        val deadline = started + TimeUnit.MILLISECONDS.toNanos(COVER_DEADLINE_MS)
        val catalogDeadline = started + TimeUnit.MILLISECONDS.toNanos(COVER_CATALOG_DEADLINE_MS)
        val hedgeDeadline = started + TimeUnit.MILLISECONDS.toNanos(350L)
        val preferences = preferredSources().distinct()
        val ordered = LyricsProviderRegistry.ordered(catalogSources, preferences)
        val preferred = preferences.filter { id -> ordered.any { it.sourceName == id } }
        val primary = preferred.ifEmpty { ordered.take(2).map { it.sourceName } }.toSet()
        val states = ordered.map { CoverCatalogState(it, requests) }
        val events = LinkedBlockingQueue<CoverEvent>()
        val futures = mutableListOf<java.util.concurrent.Future<*>>()
        val catalogFutures = mutableListOf<java.util.concurrent.Future<*>>()
        val candidates = mutableListOf<LyricsResult>()
        val startedDetails = mutableSetOf<String>()
        val activeDetails = mutableSetOf<String>()
        val urls = linkedMapOf<String, String>()
        val emitted = mutableSetOf<String>()
        // Without a release anchor keep the conservative full-batch ambiguity check.
        val independentlyAnchored = LyricsCandidateSelector.hasKnownDuration(query.durationMs) &&
            normalizedAlbum(query.album).isNotBlank()
        val registration = cancellation.register { events.offer(CoverEvent.Cancelled) }
        fun identity(candidate: LyricsResult) = "${candidate.source}\u0000${candidate.sourceId}"
        fun publish(candidate: LyricsResult, url: String) {
            if (url.isBlank()) return
            cancellation.throwIfCancelled()
            urls[identity(candidate)] = url
            if (emitted.add(url)) {
                logger.info("Cover candidate source=${candidate.source} elapsedMs=${TimeUnit.NANOSECONDS.toMillis(clock.nanoTime() - started)}")
                onCandidate(url)
            }
        }
        try {
            while (clock.nanoTime() < deadline) {
                cancellation.throwIfCancelled()
                val now = clock.nanoTime()
                if (now >= catalogDeadline) {
                    states.forEach { it.exhaust(); it.inFlight = false }
                    catalogFutures.forEach { it.cancel(true) }
                } else {
                    var lanes = states.count { it.inFlight }
                    val hedged = now >= hedgeDeadline || (preferred.isNotEmpty() &&
                        states.filter { it.source.sourceName in primary }.all { it.firstClosed })
                    states.forEach { state ->
                        if (lanes < 3 && !state.inFlight && !state.isExhausted() &&
                            (hedged || state.source.sourceName in primary)) {
                            val request = state.next() ?: return@forEach
                            lanes++
                            val task = sharedCatalog.submit(state.source, request, catalogDeadline, cancellation,
                                { found -> events.offer(CoverEvent.CatalogReady(state.source.sourceName, found, false)) },
                                { error ->
                                    logger.warning("Cover catalog source=${state.source.sourceName} failed", error)
                                    events.offer(CoverEvent.CatalogReady(state.source.sourceName, emptyList(),
                                        error is LyricsSourceException && !error.retryable))
                                })
                            futures += task
                            catalogFutures += task
                        }
                    }
                }
                val catalogsClosed = states.all { it.isExhausted() }
                val selected = if (independentlyAnchored || catalogsClosed)
                    LyricsCandidateSelector.selectCoverCandidates(query, candidates, preferences).take(MAX_COVER_CANDIDATES)
                    else emptyList()
                selected.forEach { candidate ->
                    val id = identity(candidate)
                    if (id in startedDetails) return@forEach
                    if (candidate.cover.isNotBlank()) {
                        startedDetails += id
                        publish(candidate, candidate.cover)
                    } else if (activeDetails.size < 2) {
                        startedDetails += id
                        activeDetails += id
                        futures += submitProviderWork(executor, ProviderWork.ARTWORK) {
                            val url = try {
                                cancellation.throwIfCancelled()
                                catalogSources.firstOrNull { it.sourceName == candidate.source }
                                    ?.loadCover(candidate, deadline, cancellation).orEmpty()
                            } catch (_: CancellationException) { "" }
                            catch (error: Exception) {
                                logger.warning("Cover details source=${candidate.source} failed", error)
                                ""
                            }
                            events.offer(CoverEvent.DetailReady(candidate, url))
                        }
                    }
                }
                if (catalogsClosed && activeDetails.isEmpty() && selected.all { identity(it) in startedDetails }) break
                val nextWake = minOf(deadline, if (now < catalogDeadline) catalogDeadline else deadline,
                    if (now < hedgeDeadline) hedgeDeadline else deadline)
                val event = events.poll((nextWake - clock.nanoTime()).coerceAtLeast(1L), TimeUnit.NANOSECONDS) ?: continue
                when (event) {
                    is CoverEvent.CatalogReady -> {
                        val state = states.firstOrNull { it.source.sourceName == event.source } ?: continue
                        state.inFlight = false
                        state.firstClosed = true
                        if (clock.nanoTime() <= catalogDeadline) {
                            val found = event.candidates.filter { it.source == event.source }
                            candidates += found
                            if (event.terminal || LyricsCandidateSelector.selectCoverCandidates(query, found).isNotEmpty()) state.exhaust()
                        }
                    }
                    is CoverEvent.DetailReady -> {
                        activeDetails -= identity(event.candidate)
                        if (clock.nanoTime() < deadline) publish(event.candidate, event.url)
                    }
                    CoverEvent.Cancelled -> throw CancellationException("Cover request cancelled")
                }
            }
            val selected = LyricsCandidateSelector.selectCoverCandidates(query, candidates, preferences)
            return selected.mapNotNull { urls[identity(it)] }.distinct().take(MAX_COVER_CANDIDATES)
        } catch (_: CancellationException) {
            return emptyList()
        } catch (_: InterruptedException) {
            Thread.currentThread().interrupt()
            cancellation.cancel()
            return emptyList()
        } finally {
            registration.close()
            cancellation.cancel()
            activeCancellations -= cancellation
            futures.forEach { it.cancel(true) }
        }
    }

    fun searchManualCandidates(
        query: LyricsLookup,
        cancellation: LyricsCancellationSignal
    ): List<LyricsResult> {
        if (query.track.isBlank() || closed.get()) return emptyList()
        val request = LyricsSearchPlanner.catalogRequests(query).firstOrNull()
            ?: LyricsCatalogSearchRequest(
                LyricsCatalogSearchKind.TITLE_ONLY,
                query.track.trim()
            )
        activeCancellations += cancellation
        val deadlineNanos = clock.nanoTime() +
            TimeUnit.MILLISECONDS.toNanos(MANUAL_SEARCH_DEADLINE_MS)
        val events = LinkedBlockingQueue<ManualSearchEvent>()
        val futures = buildList {
            add(executor.submit {
                events.offer(
                    manualSearchResult(exactAndFallbackSource.sourceName) {
                        exactAndFallbackSource.fallback(query, deadlineNanos, cancellation)
                    }
                )
            })
            LyricsProviderRegistry.ordered(catalogSources, preferredSources()).forEach { source ->
                add(executor.submit {
                    events.offer(
                        manualSearchResult(source.sourceName) {
                            source.search(request, deadlineNanos, cancellation)
                        }
                    )
                })
            }
        }
        val candidates = mutableListOf<LyricsResult>()
        try {
            var remainingSources = futures.size
            while (remainingSources > 0) {
                cancellation.throwIfCancelled()
                val remainingNanos = deadlineNanos - clock.nanoTime()
                if (remainingNanos <= 0L) break
                val event = events.poll(remainingNanos, TimeUnit.NANOSECONDS) ?: break
                remainingSources -= 1
                candidates += event.candidates
            }
            return LyricsManualSearchPolicy.rank(query, candidates)
        } catch (_: InterruptedException) {
            Thread.currentThread().interrupt()
            cancellation.cancel()
            return emptyList()
        } catch (_: CancellationException) {
            return emptyList()
        } finally {
            futures.forEach { it.cancel(true) }
            cancellation.cancel()
            activeCancellations -= cancellation
        }
    }

    fun loadManualLyrics(
        candidate: LyricsResult,
        cancellation: LyricsCancellationSignal
    ): LyricsResult? {
        if (closed.get()) return null
        val source = bodySources[candidate.source] ?: return null
        activeCancellations += cancellation
        val deadlineNanos = clock.nanoTime() +
            TimeUnit.MILLISECONDS.toNanos(MANUAL_BODY_DEADLINE_MS)
        return try {
            source.loadLyrics(candidate, deadlineNanos, cancellation)
                ?.takeIf { it.contentKind() != LyricsKind.NONE }
        } catch (_: CancellationException) {
            null
        } catch (error: Throwable) {
            logger.warning(
                "Manual lyrics source=${candidate.source}/${candidate.sourceId} failed",
                error
            )
            null
        } finally {
            cancellation.cancel()
            activeCancellations -= cancellation
        }
    }

    private fun manualSearchResult(
        sourceName: String,
        search: () -> List<LyricsResult>
    ): ManualSearchEvent = try {
        ManualSearchEvent.Completed(
            search().take(LyricsManualSearchPolicy.MAX_RESULTS_PER_SOURCE)
        )
    } catch (_: CancellationException) {
        ManualSearchEvent.Completed(emptyList())
    } catch (error: Throwable) {
        logger.warning("Manual catalog source=$sourceName failed", error)
        ManualSearchEvent.Completed(emptyList())
    }

    override fun close() {
        if (!closed.compareAndSet(false, true)) return
        activeCancellations.forEach(LyricsCancellationSignal::cancel)
        sharedCatalog.close()
        executor.shutdownNow()
    }

    private class CoverCatalogState(val source: LyricsCatalogSource, val requests: List<LyricsCatalogSearchRequest>) {
        var index = 0
        var inFlight = false
        var firstClosed = false
        fun next(): LyricsCatalogSearchRequest? = requests.getOrNull(index)?.also { index++; inFlight = true }
        fun exhaust() { index = requests.size }
        fun isExhausted() = index >= requests.size && !inFlight
    }
    private sealed interface CoverEvent {
        data class CatalogReady(val source: String, val candidates: List<LyricsResult>, val terminal: Boolean) : CoverEvent
        data class DetailReady(val candidate: LyricsResult, val url: String) : CoverEvent
        data object Cancelled : CoverEvent
    }

    private sealed interface ManualSearchEvent {
        val candidates: List<LyricsResult>

        data class Completed(
            override val candidates: List<LyricsResult>
        ) : ManualSearchEvent
    }

    private companion object {
        const val COVER_CATALOG_DEADLINE_MS = 3_500L
        const val COVER_DEADLINE_MS = 6_500L
        const val MAX_COVER_CANDIDATES = 4
        const val MANUAL_SEARCH_DEADLINE_MS = 3_800L
        const val MANUAL_BODY_DEADLINE_MS = 3_800L

        fun newNetworkExecutor(): ExecutorService = LyricsProviderExecutor()

    }
}

internal interface LyricsRepositoryLogger {
    fun info(message: String)
    fun warning(message: String, error: Throwable)
}

internal object AndroidLyricsRepositoryLogger : LyricsRepositoryLogger {
    override fun info(message: String) {
        Log.i(LOG_TAG, message)
    }

    override fun warning(message: String, error: Throwable) {
        Log.w(LOG_TAG, message, error)
    }

    private const val LOG_TAG = "ContentLyrics"
}
