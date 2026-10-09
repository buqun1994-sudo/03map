package com.icar03.content.runtime.lyrics

import org.junit.Assert.assertEquals
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import java.util.concurrent.AbstractExecutorService
import java.util.concurrent.RejectedExecutionException
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicLong

// All catalog entries and URLs are synthetic. No transport or network source is constructed.
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class DirectLyricsCoverResolutionTest {
    @Test fun verifiedFastCoverDoesNotWaitForAnotherSourcesCatalogOrDetails() {
        val gate = java.util.concurrent.CountDownLatch(1)
        val shown = java.util.concurrent.CountDownLatch(1)
        val caller = java.util.concurrent.Executors.newSingleThreadExecutor()
        val fast = FakeCatalog(SOURCE_QQ, listOf(candidate(SOURCE_QQ, "fast").copy(cover = FIRST_COVER))) { _, _, _ -> error("URL already supplied") }
        val slow = FakeCatalog(SOURCE_NETEASE, listOf(candidate(SOURCE_NETEASE, "slow")), onSearch = { _, signal ->
            val registration = signal.register { gate.countDown() }
            try { assertTrue(gate.await(2, TimeUnit.SECONDS)); signal.throwIfCancelled() } finally { registration.close() }
        }) { _, _, _ -> SECOND_COVER }
        val repository = DirectLyricsRepository(catalogSources = listOf(fast, slow))
        try {
            val future = caller.submit<List<String>> {
                repository.resolveCoversProgressive(QUERY, LyricsCancellationSignal()) { url ->
                    if (url == FIRST_COVER) shown.countDown()
                }
            }
            assertTrue("Verified URL must stream before slow catalog completes", shown.await(1, TimeUnit.SECONDS))
            assertTrue(!future.isDone)
            gate.countDown()
            assertEquals(setOf(FIRST_COVER, SECOND_COVER), future.get(2, TimeUnit.SECONDS).toSet())
        } finally { gate.countDown(); repository.close(); caller.shutdownNow() }
    }

    @Test
    fun selectedKnownRecordingHydratesOnlyItsOriginalCatalogId() {
        val accepted = candidate(SOURCE_NETEASE, "selected-id").copy(durationMs = 198_500L)
        val rejected = accepted.copy(sourceId = "wrong-id", candidateTrack = "Distant Horizon (Live)")
        assertEquals(listOf(accepted), LyricsCandidateSelector.selectCoverCandidates(QUERY, listOf(rejected, accepted)))
        val source = FakeCatalog(SOURCE_NETEASE, listOf(rejected, accepted)) { _, _, _ -> FIRST_COVER }
        val cancellation = LyricsCancellationSignal()
        repository(listOf(source)).use { repository ->
            assertEquals(listOf(FIRST_COVER), repository.resolveCovers(QUERY, cancellation))
            assertEquals(1, source.searchCalls)
            assertEquals(listOf(accepted.candidateSnapshot()), source.details.map { it.candidate.candidateSnapshot() })
            assertEquals("selected-id", source.details.single().candidate.sourceId)
            assertEquals(198_500L, source.details.single().candidate.durationMs)
            assertSame(cancellation, source.details.single().cancellation)
        }
    }

    @Test
    fun titleAlbumDurationAndMissingKnownDurationConflictsNeverRequestDetails() {
        val valid = candidate(SOURCE_NETEASE, "base")
        val rejected = listOf(
            valid.copy(sourceId = "title", candidateTrack = "Distant Horizon (Live)"),
            valid.copy(sourceId = "album", candidateAlbum = "Unrelated Collection"),
            valid.copy(sourceId = "duration", durationMs = 202_001L),
            valid.copy(sourceId = "unknown-duration", durationMs = 0L)
        )
        rejected.forEach { result ->
            assertTrue("Expected cover recording conflict for ${result.sourceId}",
                LyricsCandidateSelector.selectCoverCandidates(QUERY, listOf(result)).isEmpty())
        }
        val source = FakeCatalog(SOURCE_NETEASE, rejected) { _, _, _ -> FIRST_COVER }
        repository(listOf(source)).use { repository ->
            assertTrue(repository.resolveCovers(QUERY, LyricsCancellationSignal()).isEmpty())
            assertEquals(LyricsSearchPlanner.catalogRequests(QUERY).size, source.searchCalls)
            assertTrue(source.details.isEmpty())
        }
    }

    @Test
    fun selectedProviderCoverUrlsDoNotStartAnotherProvider() {
        val qq = FakeCatalog(SOURCE_QQ, listOf(candidate(SOURCE_QQ, "01"))) { _, _, _ -> FIRST_COVER }
        val netEase = FakeCatalog(SOURCE_NETEASE,
            listOf(candidate(SOURCE_NETEASE, "02"), candidate(SOURCE_NETEASE, "01"))) { result, _, _ ->
            if (result.sourceId == "01") FIRST_COVER else SECOND_COVER
        }
        repository(listOf(qq, netEase), preferredSources = listOf(SOURCE_NETEASE)).use { repository ->
            assertEquals(listOf(FIRST_COVER, SECOND_COVER), repository.resolveCovers(QUERY, LyricsCancellationSignal()))
            assertEquals(listOf("01", "02"), netEase.details.map { it.candidate.sourceId })
            assertEquals(0, qq.searchCalls)
            assertTrue(qq.details.isEmpty())
        }
    }

    @Test fun selectedProviderWaitsForEmptyDetailsBeforeStartingAnotherProvider() {
        var preferredDetailsFinished = false
        val preferred = FakeCatalog(SOURCE_APPLE_MUSIC, listOf(candidate(SOURCE_APPLE_MUSIC, "preferred"))) { _, _, _ ->
            preferredDetailsFinished = true
            ""
        }
        val other = FakeCatalog(SOURCE_QQ, listOf(candidate(SOURCE_QQ, "fallback")), onSearch = { _, _ ->
            assertTrue("Fallback must wait for the selected provider's details", preferredDetailsFinished)
        }) { _, _, _ -> FIRST_COVER }
        repository(listOf(preferred, other), preferredSources = listOf(SOURCE_APPLE_MUSIC)).use { repository ->
            assertEquals(listOf(FIRST_COVER), repository.resolveCovers(QUERY, LyricsCancellationSignal()))
            assertEquals(1, preferred.searchCalls)
            assertEquals(1, other.searchCalls)
        }
    }

    @Test fun selectedCatalogDeadlineLeavesUnstartedFallbackSourcesAvailable() {
        val clock = FakeClock()
        val preferred = FakeCatalog(SOURCE_APPLE_MUSIC, emptyList(), onSearch = { deadline, _ -> clock.advanceTo(deadline) }) { _, _, _ -> "" }
        val other = FakeCatalog(SOURCE_QQ, listOf(candidate(SOURCE_QQ, "fallback"))) { _, _, _ -> FIRST_COVER }
        repository(listOf(preferred, other), listOf(SOURCE_APPLE_MUSIC), clock).use { repository ->
            assertEquals(listOf(FIRST_COVER), repository.resolveCovers(QUERY, LyricsCancellationSignal()))
            assertEquals(1, other.searchCalls)
        }
    }

    @Test
    fun cancellationOrCloseDuringDetailsDiscardsLateCoverAndStopsSubsequentCalls() {
        for (closeDuringDetails in listOf(false, true)) {
            lateinit var repository: DirectLyricsRepository
            val source = FakeCatalog(SOURCE_NETEASE, listOf(candidate(SOURCE_NETEASE, "late-id"))) { _, _, signal ->
                if (closeDuringDetails) repository.close() else signal.cancel()
                FIRST_COVER
            }
            repository = repository(listOf(source))
            repository.use {
                val cancellation = LyricsCancellationSignal()
                assertTrue(repository.resolveCovers(QUERY, cancellation).isEmpty())
                assertTrue(cancellation.isCancelled)
                assertEquals(listOf("late-id"), source.details.map { it.candidate.sourceId })
                val searchCount = source.searchCalls
                val detailCount = source.details.size
                val alreadyCancelled = LyricsCancellationSignal().apply { cancel() }
                assertTrue(repository.resolveCovers(QUERY, alreadyCancelled).isEmpty())
                repository.close()
                assertTrue(repository.resolveCovers(QUERY, LyricsCancellationSignal()).isEmpty())
                assertEquals(searchCount, source.searchCalls)
                assertEquals(detailCount, source.details.size)
            }
        }
    }

    @Test
    fun catalogBudgetLeavesThreeSecondsForSelectedIdDetails() {
        val clock = FakeClock()
        val source = FakeCatalog(SOURCE_NETEASE, listOf(candidate(SOURCE_NETEASE, "budget-id")),
            onSearch = { deadline, _ -> clock.advanceTo(deadline - TimeUnit.MILLISECONDS.toNanos(1L)) }
        ) { _, deadline, _ ->
            assertTrue(clock.nanoTime() < deadline)
            assertEquals(TimeUnit.MILLISECONDS.toNanos(3_001L), deadline - clock.nanoTime())
            FIRST_COVER
        }
        repository(listOf(source), clock = clock).use { repository ->
            assertEquals(listOf(FIRST_COVER), repository.resolveCovers(QUERY, LyricsCancellationSignal()))
            assertEquals(listOf(clock.startedAtNanos + TimeUnit.MILLISECONDS.toNanos(3_500L)), source.searchDeadlines)
            assertEquals(clock.startedAtNanos + TimeUnit.MILLISECONDS.toNanos(6_500L), source.details.single().deadlineNanos)
        }
    }

    private fun repository(
        sources: List<LyricsCatalogSource>,
        preferredSources: List<String> = emptyList(),
        clock: LyricsMonotonicClock = SystemLyricsMonotonicClock
    ) = DirectLyricsRepository(
        exactAndFallbackSource = object : LyricsExactAndFallbackSource {
            override val sourceName = SOURCE_LRCLIB
            override fun exact(query: LyricsLookup, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? =
                error("Cover resolution must not use the exact lyrics endpoint")
            override fun fallback(query: LyricsLookup, deadlineNanos: Long, cancellation: LyricsCancellationSignal): List<LyricsResult> =
                error("Cover resolution must not use the fallback lyrics endpoint")
            override fun loadLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? =
                error("Cover resolution must not fetch lyric bodies")
        },
        catalogSources = sources,
        executor = InlineExecutor(),
        clock = clock,
        logger = object : LyricsRepositoryLogger {
            override fun info(message: String) = Unit
            override fun warning(message: String, error: Throwable) = Unit
        },
        preferredSources = { preferredSources }
    )

    private fun candidate(source: String, id: String) = LyricsResult(
        durationMs = QUERY.durationMs, source = source, sourceId = id,
        candidateTrack = QUERY.track, candidateArtist = QUERY.artist, candidateAlbum = QUERY.album
    )

    private class FakeCatalog(
        override val sourceName: String,
        private val candidates: List<LyricsResult>,
        private val onSearch: (Long, LyricsCancellationSignal) -> Unit = { _, _ -> },
        private val detail: (LyricsResult, Long, LyricsCancellationSignal) -> String
    ) : LyricsCatalogSource {
        var searchCalls = 0
            private set
        val searchDeadlines = mutableListOf<Long>()
        val details = mutableListOf<DetailCall>()

        override fun search(request: LyricsCatalogSearchRequest, deadlineNanos: Long,
            cancellation: LyricsCancellationSignal): List<LyricsResult> {
            searchCalls++
            searchDeadlines += deadlineNanos
            onSearch(deadlineNanos, cancellation)
            return candidates
        }

        override fun loadCover(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): String {
            details += DetailCall(candidate, deadlineNanos, cancellation)
            return detail(candidate, deadlineNanos, cancellation)
        }

        override fun loadLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? =
            error("Cover resolution must not fetch lyric bodies")
    }

    private data class DetailCall(
        val candidate: LyricsResult,
        val deadlineNanos: Long,
        val cancellation: LyricsCancellationSignal
    )

    private class FakeClock : LyricsMonotonicClock {
        val startedAtNanos = TimeUnit.SECONDS.toNanos(1L)
        private val now = AtomicLong(startedAtNanos)
        override fun nanoTime(): Long = now.get()
        fun advanceTo(value: Long) { now.updateAndGet { previous -> maxOf(previous, value) } }
    }

    private class InlineExecutor : AbstractExecutorService() {
        private var stopped = false
        override fun execute(command: Runnable) {
            if (stopped) throw RejectedExecutionException("Synthetic executor closed")
            command.run()
        }
        override fun shutdown() { stopped = true }
        override fun shutdownNow(): MutableList<Runnable> {
            shutdown()
            return mutableListOf()
        }
        override fun isShutdown(): Boolean = stopped
        override fun isTerminated(): Boolean = stopped
        override fun awaitTermination(timeout: Long, unit: TimeUnit): Boolean = stopped
    }

    private companion object {
        val QUERY = LyricsLookup("Chosen Melody (Live)", "Specific Performer", "Chosen Release", 200_000L)
        const val FIRST_COVER = "https://example.invalid/synthetic-first.jpg"
        const val SECOND_COVER = "https://example.invalid/synthetic-second.jpg"
    }
}
