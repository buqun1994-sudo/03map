package com.icar03.content.runtime.lyrics

// Migrated from 03lyrics; original source SHA-256: cd04faa97bfb85321c428a8ef48f0e23321a15d09ad3cfe3de59fe1f8bb9aea8.
// Upstream provenance and scoped adaptations: PROVENANCE.json.

import android.util.Log
import java.io.Closeable
import java.util.concurrent.CancellationException
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.LinkedBlockingQueue
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean

/**
 * Coordinates public lyrics sources without routing requests through an app-owned server.
 * Source parsing, recording identity and admission policy live behind separate boundaries.
 */
internal class DirectLyricsRepository internal constructor(
    private val exactAndFallbackSource: LyricsExactAndFallbackSource = LrcLibLyricsSource(),
    private val catalogSources: List<LyricsCatalogSource> = listOf(
        QqLyricsSource(),
        NetEaseLyricsSource()
    ) + additionalPublicLyricsSources(),
    private val executor: ExecutorService = newNetworkExecutor(),
    private val clock: LyricsMonotonicClock = SystemLyricsMonotonicClock,
    private val config: LyricsResolutionConfig = LyricsResolutionConfig(),
    private val logger: LyricsRepositoryLogger = AndroidLyricsRepositoryLogger,
    private val preferredSources: () -> List<String> = { emptyList() }
) : LyricsResolver, LyricsCoverResolver, Closeable {
    private val closed = AtomicBoolean(false)
    private val activeCancellations = ConcurrentHashMap.newKeySet<LyricsCancellationSignal>()
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
        preferredSources = preferredSources
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

    override fun resolveCovers(query: LyricsLookup, cancellation: LyricsCancellationSignal): List<String> {
        if (!LyricsCandidateSelector.canFindCover(query) || closed.get()) return emptyList()
        val requests = LyricsSearchPlanner.catalogRequests(query)
        if (requests.isEmpty()) return emptyList()
        activeCancellations += cancellation
        val startedAtNanos = clock.nanoTime()
        val deadlineNanos = startedAtNanos + TimeUnit.MILLISECONDS.toNanos(COVER_DEADLINE_MS)
        val catalogDeadlineNanos = startedAtNanos + TimeUnit.MILLISECONDS.toNanos(COVER_CATALOG_DEADLINE_MS)
        val events = LinkedBlockingQueue<CoverEvent>()
        val futures = mutableListOf<java.util.concurrent.Future<*>>()
        val candidates = mutableListOf<LyricsResult>()
        try {
            catalogSources.forEach { source ->
                futures += executor.submit {
                    val found = mutableListOf<LyricsResult>()
                    try {
                        for (request in requests) {
                            cancellation.throwIfCancelled()
                            if (clock.nanoTime() >= catalogDeadlineNanos) break
                            found += source.search(request, catalogDeadlineNanos, cancellation)
                            if (LyricsCandidateSelector.selectCoverCandidates(query, found).isNotEmpty()) break
                        }
                    } catch (_: CancellationException) {
                        return@submit
                    } catch (error: Exception) {
                        logger.warning("Cover catalog source=${source.sourceName} failed", error)
                    }
                    events.offer(CoverEvent.Completed(found))
                }
            }
            var remainingSources = catalogSources.size
            while (remainingSources > 0) {
                cancellation.throwIfCancelled()
                val remainingNanos = catalogDeadlineNanos - clock.nanoTime()
                if (remainingNanos <= 0L) break
                val event = events.poll(remainingNanos, TimeUnit.NANOSECONDS) ?: break
                remainingSources--
                candidates += event.candidates
            }
            val selected = LyricsCandidateSelector.selectCoverCandidates(query, candidates, preferredSources())
            val images = LinkedBlockingQueue<Pair<Int, String>>()
            selected.take(MAX_COVER_CANDIDATES).forEachIndexed { index, candidate ->
                futures += executor.submit {
                    var url = candidate.cover
                    try {
                        cancellation.throwIfCancelled()
                        if (url.isBlank()) {
                            url = catalogSources.firstOrNull { it.sourceName == candidate.source }
                                ?.loadCover(candidate, deadlineNanos, cancellation).orEmpty()
                        }
                        cancellation.throwIfCancelled()
                        if (closed.get() || clock.nanoTime() >= deadlineNanos) return@submit
                    } catch (_: CancellationException) {
                        return@submit
                    } catch (error: Exception) {
                        logger.warning("Cover details source=${candidate.source} failed", error)
                    }
                    images.offer(index to url)
                }
            }
            val loaded = mutableListOf<Pair<Int, String>>()
            repeat(minOf(selected.size, MAX_COVER_CANDIDATES)) {
                cancellation.throwIfCancelled()
                val remaining = deadlineNanos - clock.nanoTime()
                if (remaining <= 0L) return@repeat
                images.poll(remaining, TimeUnit.NANOSECONDS)?.let { image ->
                    cancellation.throwIfCancelled()
                    if (!closed.get() && clock.nanoTime() < deadlineNanos) loaded += image
                }
            }
            cancellation.throwIfCancelled()
            if (closed.get()) return emptyList()
            return loaded.sortedBy { it.first }.map { it.second }.filter(String::isNotBlank).distinct()
        } catch (_: InterruptedException) {
            Thread.currentThread().interrupt()
            return emptyList()
        } catch (_: CancellationException) {
            return emptyList()
        } finally {
            futures.forEach { it.cancel(true) }
            cancellation.cancel()
            activeCancellations -= cancellation
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
            catalogSources.forEach { source ->
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
        executor.shutdownNow()
    }

    private sealed interface CoverEvent {
        val candidates: List<LyricsResult>

        data class Completed(
            override val candidates: List<LyricsResult>
        ) : CoverEvent
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

        fun newNetworkExecutor(): ExecutorService =
            Executors.newFixedThreadPool(NETWORK_THREAD_COUNT) { runnable ->
                Thread(runnable, "direct-lyrics").apply { isDaemon = true }
            }

        const val NETWORK_THREAD_COUNT = 12
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
