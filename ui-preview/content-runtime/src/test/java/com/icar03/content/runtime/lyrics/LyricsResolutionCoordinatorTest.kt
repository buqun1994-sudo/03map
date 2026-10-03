package com.icar03.content.runtime.lyrics

// Migrated source SHA-256: 74fdd1fbe81544be338a35debd6b5c5b0e86fb76987ed58de9c6e7641ffa4212; see runtime lyrics/PROVENANCE.json.

import kotlinx.coroutines.async
import kotlinx.coroutines.CoroutineStart
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger

class LyricsResolutionCoordinatorTest {
    @Test
    fun `retries one transient failure and returns the second attempt`() = runBlocking {
        val attempts = AtomicInteger(0)
        val query = query("retry")
        val coordinator = coordinator(
            resolver = LyricsResolver { request, _ ->
                if (attempts.incrementAndGet() == 1) {
                    LyricsResolutionOutcome.RetryableFailure(LyricsFailureReason.NETWORK)
                } else {
                    found(request)
                }
            }
        )

        try {
            val outcome = coordinator.resolveLatest(query)

            assertTrue(outcome is LyricsResolutionOutcome.Found)
            assertEquals(2, attempts.get())
        } finally {
            coordinator.close()
        }
    }

    @Test
    fun `does not retry a completed no-match`() = runBlocking {
        val attempts = AtomicInteger(0)
        val coordinator = coordinator(
            resolver = LyricsResolver { _, _ ->
                attempts.incrementAndGet()
                LyricsResolutionOutcome.NoMatch
            }
        )

        try {
            assertEquals(LyricsResolutionOutcome.NoMatch, coordinator.resolveLatest(query("none")))
            assertEquals(1, attempts.get())
        } finally {
            coordinator.close()
        }
    }

    @Test
    fun `a newer request disconnects the previous resolver`() = runBlocking {
        val oldStarted = CountDownLatch(1)
        val oldCancelled = CountDownLatch(1)
        val resolver = LyricsResolver { request, cancellation ->
            if (request.track == "old") {
                oldStarted.countDown()
                val registration = cancellation.register(oldCancelled::countDown)
                try {
                    oldCancelled.await()
                    LyricsResolutionOutcome.Cancelled
                } finally {
                    registration.close()
                }
            } else {
                found(request)
            }
        }
        val coordinator = coordinator(resolver)

        try {
            val old = async(start = CoroutineStart.UNDISPATCHED) {
                coordinator.resolveLatest(query("old"))
            }
            assertTrue(oldStarted.await(1L, TimeUnit.SECONDS))
            val newest = async { coordinator.resolveLatest(query("new")) }

            assertTrue(newest.await() is LyricsResolutionOutcome.Found)
            assertEquals(LyricsResolutionOutcome.Cancelled, old.await())
            assertTrue(oldCancelled.await(1L, TimeUnit.SECONDS))
        } finally {
            coordinator.close()
        }
    }

    @Test
    fun `progressive cover callback crosses the blocking lane before final list`() = runBlocking {
        val entered = CountDownLatch(1)
        val release = CountDownLatch(1)
        val callbacks = mutableListOf<String>()
        val resolver = object : LyricsCoverResolver {
            override fun resolveCover(
                query: LyricsLookup,
                cancellation: LyricsCancellationSignal
            ): String = "fallback"

            override fun resolveCoversProgressive(
                query: LyricsLookup,
                cancellation: LyricsCancellationSignal,
                onCandidate: (String) -> Unit
            ): List<String> {
                onCandidate("https://example.invalid/fast.jpg")
                entered.countDown()
                assertTrue(release.await(1L, TimeUnit.SECONDS))
                cancellation.throwIfCancelled()
                return listOf(
                    "https://example.invalid/fast.jpg",
                    "https://example.invalid/slow.jpg"
                )
            }
        }
        val coordinator = LyricsResolutionCoordinator(
            lyricsResolver = LyricsResolver { _, _ -> LyricsResolutionOutcome.NoMatch },
            coverResolver = resolver,
            retryDelayMs = 0L,
            retryWait = {}
        )

        try {
            val result = async(start = CoroutineStart.UNDISPATCHED) {
                coordinator.resolveCoversProgressive(query("cover")) { callbacks += it }
            }
            assertTrue(entered.await(1L, TimeUnit.SECONDS))
            assertEquals(listOf("https://example.invalid/fast.jpg"), callbacks)
            release.countDown()
            assertEquals(
                listOf(
                    "https://example.invalid/fast.jpg",
                    "https://example.invalid/slow.jpg"
                ),
                result.await()
            )
        } finally {
            release.countDown()
            coordinator.close()
        }
    }

    private fun coordinator(resolver: LyricsResolver): LyricsResolutionCoordinator =
        LyricsResolutionCoordinator(
            lyricsResolver = resolver,
            coverResolver = LyricsCoverResolver { _, _ -> "" },
            retryDelayMs = 0L,
            retryWait = {}
        )

    private fun query(track: String) = LyricsLookup(
        track = track,
        artist = "Artist",
        album = "Album",
        durationMs = 200_000L
    )

    private fun found(query: LyricsLookup): LyricsResolutionOutcome.Found {
        val result = LyricsResult(
            lyrics = "[00:01.00]Ready",
            durationMs = query.durationMs,
            source = SOURCE_QQ,
            sourceId = query.track,
            candidateTrack = query.track,
            candidateArtist = query.artist,
            candidateAlbum = query.album,
            lyricsKind = LyricsKind.SYNCHRONIZED
        )
        return LyricsResolutionOutcome.Found(
            ResolvedLyrics(
                result = result,
                proof = LyricsSelectionProof(
                    matcherPolicyVersion = LYRICS_MATCHER_POLICY_VERSION,
                    supportingCandidates = listOf(result.candidateSnapshot())
                )
            )
        )
    }
}
