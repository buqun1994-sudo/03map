package com.icar03.content.runtime.lyrics

import org.junit.Assert.*
import org.junit.Test
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger

class SharedProviderCatalogTest {
    @Test fun concurrentLyricsAndArtworkShareOneCatalogAndCancellationIsIndependent() {
        val network = Executors.newFixedThreadPool(2)
        val hub = SharedProviderCatalog(network, SystemLyricsMonotonicClock)
        val entered = CountDownLatch(1)
        val release = CountDownLatch(1)
        val coverReady = CountDownLatch(1)
        val calls = AtomicInteger()
        val lyrics = LyricsCancellationSignal()
        val artwork = LyricsCancellationSignal()
        val source = source { signal ->
            calls.incrementAndGet(); entered.countDown()
            assertTrue(release.await(2, TimeUnit.SECONDS)); signal.throwIfCancelled()
            listOf(RESULT)
        }
        try {
            val deadline = System.nanoTime() + TimeUnit.SECONDS.toNanos(3)
            hub.submit(source, REQUEST, deadline, lyrics, { fail("Cancelled subscriber published") }, { fail("Cancelled subscriber failed") })
            assertTrue(entered.await(1, TimeUnit.SECONDS))
            hub.submit(source, REQUEST, deadline, artwork, { assertEquals(listOf(RESULT), it); coverReady.countDown() }, { throw it })
            lyrics.cancel()
            release.countDown()
            assertTrue(coverReady.await(1, TimeUnit.SECONDS))
            assertEquals(1, calls.get())
            val cached = CountDownLatch(1)
            hub.submit(source, REQUEST, deadline, LyricsCancellationSignal(), { cached.countDown() }, { throw it })
            assertTrue(cached.await(1, TimeUnit.SECONDS))
            assertEquals(1, calls.get())
        } finally { release.countDown(); hub.close(); network.shutdownNow() }
    }
    @Test fun shortLyricsDeadlineDoesNotAbortTheLongerArtworkSubscriber() {
        val network = Executors.newFixedThreadPool(2)
        val hub = SharedProviderCatalog(network, SystemLyricsMonotonicClock)
        val entered = CountDownLatch(1)
        val release = CountDownLatch(1)
        val expired = CountDownLatch(1)
        val artworkReady = CountDownLatch(1)
        val source = source { signal -> entered.countDown(); assertTrue(release.await(2, TimeUnit.SECONDS))
            signal.throwIfCancelled(); listOf(RESULT) }
        try {
            hub.submit(source, REQUEST, System.nanoTime() + TimeUnit.MILLISECONDS.toNanos(150), LyricsCancellationSignal(),
                { fail("Expired lyric subscriber published") }, { assertEquals(LyricsFailureReason.DEADLINE, (it as LyricsSourceException).reason); expired.countDown() })
            assertTrue(entered.await(1, TimeUnit.SECONDS))
            hub.submit(source, REQUEST, System.nanoTime() + TimeUnit.SECONDS.toNanos(2), LyricsCancellationSignal(),
                { artworkReady.countDown() }, { throw it })
            assertTrue(expired.await(1, TimeUnit.SECONDS))
            release.countDown()
            assertTrue(artworkReady.await(1, TimeUnit.SECONDS))
        } finally { release.countDown(); hub.close(); network.shutdownNow() }
    }
    @Test fun lastSubscriberCancellationDisconnectsTheProducer() {
        val network = Executors.newSingleThreadExecutor()
        val hub = SharedProviderCatalog(network, SystemLyricsMonotonicClock)
        val started = CountDownLatch(1)
        val disconnected = CountDownLatch(1)
        val cancel = LyricsCancellationSignal()
        val source = source { signal -> signal.register { disconnected.countDown() }; started.countDown()
            assertTrue(disconnected.await(2, TimeUnit.SECONDS)); signal.throwIfCancelled(); emptyList() }
        try {
            hub.submit(source, REQUEST, System.nanoTime() + TimeUnit.SECONDS.toNanos(3), cancel, { fail() }, { fail() })
            assertTrue(started.await(1, TimeUnit.SECONDS))
            cancel.cancel()
            assertTrue(disconnected.await(1, TimeUnit.SECONDS))
        } finally { hub.close(); network.shutdownNow() }
    }
    @Test fun closingBetweenSubscriptionAndSchedulingReturnsCancelledWithoutRejectedException() {
        val clockEntered = CountDownLatch(1)
        val releaseClock = CountDownLatch(1)
        val ticks = AtomicInteger()
        val clock = LyricsMonotonicClock {
            if (ticks.incrementAndGet() == 2) { clockEntered.countDown(); assertTrue(releaseClock.await(2, TimeUnit.SECONDS)) }
            System.nanoTime()
        }
        val network = Executors.newSingleThreadExecutor()
        val caller = Executors.newSingleThreadExecutor()
        val hub = SharedProviderCatalog(network, clock)
        try {
            val pending = caller.submit<java.util.concurrent.Future<*>> {
                hub.submit(source { fail("Closed hub started transport"); emptyList() }, REQUEST,
                    System.nanoTime() + TimeUnit.SECONDS.toNanos(2), LyricsCancellationSignal(), { fail() }, { fail() })
            }
            assertTrue(clockEntered.await(1, TimeUnit.SECONDS))
            hub.close()
            releaseClock.countDown()
            assertTrue(pending.get(1, TimeUnit.SECONDS).isCancelled)
        } finally { releaseClock.countDown(); hub.close(); caller.shutdownNow(); network.shutdownNow() }
    }
    @Test fun lateProducerResultIsNeitherPublishedNorCached() {
        val now = java.util.concurrent.atomic.AtomicLong(TimeUnit.SECONDS.toNanos(1))
        val network = Executors.newSingleThreadExecutor()
        val hub = SharedProviderCatalog(network, LyricsMonotonicClock { now.get() }, producerBudgetMs = 10)
        val calls = AtomicInteger()
        val source = source { calls.incrementAndGet(); now.addAndGet(TimeUnit.MILLISECONDS.toNanos(20)); listOf(RESULT) }
        try {
            repeat(2) {
                val failed = CountDownLatch(1)
                hub.submit(source, REQUEST, now.get() + TimeUnit.SECONDS.toNanos(2), LyricsCancellationSignal(),
                    { fail("Late producer published") }, { error ->
                        assertEquals(LyricsFailureReason.DEADLINE, (error as LyricsSourceException).reason); failed.countDown()
                    })
                assertTrue(failed.await(1, TimeUnit.SECONDS))
            }
            assertEquals("Late producer must not be a cache hit", 2, calls.get())
        } finally { hub.close(); network.shutdownNow() }
    }

    @Test fun accountOrStorefrontRevisionDoesNotReuseThePreviousCatalogResult() {
        val network = Executors.newSingleThreadExecutor()
        val hub = SharedProviderCatalog(network, SystemLyricsMonotonicClock)
        val revision = java.util.concurrent.atomic.AtomicLong()
        val calls = AtomicInteger()
        val source = source(revision = { revision.get() }) { calls.incrementAndGet()
            listOf(RESULT.copy(sourceId = "account-${revision.get()}")) }
        try {
            for (version in 0L..1L) {
                revision.set(version)
                val ready = CountDownLatch(1)
                hub.submit(source, REQUEST, System.nanoTime() + TimeUnit.SECONDS.toNanos(2), LyricsCancellationSignal(),
                    { assertEquals("account-$version", it.single().sourceId); ready.countDown() }, { throw it })
                assertTrue(ready.await(1, TimeUnit.SECONDS))
            }
            assertEquals(2, calls.get())
        } finally { hub.close(); network.shutdownNow() }
    }

    private fun source(revision: () -> Long = { 0L }, search: (LyricsCancellationSignal) -> List<LyricsResult>) = object : LyricsCatalogSource {
        override val sourceName = SOURCE_QQ
        override val catalogRevision: Long get() = revision()
        override fun search(request: LyricsCatalogSearchRequest, deadlineNanos: Long, cancellation: LyricsCancellationSignal) = search(cancellation)
        override fun loadLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? = null
    }
    private companion object {
        val REQUEST = LyricsCatalogSearchRequest(LyricsCatalogSearchKind.TITLE_ARTIST, "Song Artist")
        val RESULT = LyricsResult(source = SOURCE_QQ, sourceId = "fixture", candidateTrack = "Song", candidateArtist = "Artist", durationMs = 200_000)
    }
}
