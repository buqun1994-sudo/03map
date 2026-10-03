package com.icar03.content.runtime.lyrics

import android.graphics.Bitmap
import android.os.Looper
import com.autonavi.amapauto.content.ContentPorts
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import kotlin.coroutines.Continuation
import kotlin.coroutines.resume
import kotlin.coroutines.suspendCoroutine

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class CoverPipelineTest {
    private val engines = mutableListOf<ContentLyricsEngine>()

    @After
    fun cleanup() {
        engines.forEach(ContentLyricsEngine::stop)
        drain()
    }

    @Test
    fun verifiedCandidatePublishesBeforeSearchReturns() {
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        var pending: Continuation<List<String>>? = null
        val bitmap = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888)
        val runtime = FakeResources { _, onCandidate ->
            onCandidate("https://example.invalid/early.jpg")
            suspendCoroutine { continuation -> pending = continuation }
        }
        val engine = engine(runtime, frames, Dispatchers.Unconfined) { _, _ -> bitmap }

        engine.update(media("CoverEarlySynthetic"))
        drain()

        assertTrue("verified URL should feed the image lane before final search", frames.any {
            it.artwork === bitmap
        })
        assertEquals(1, runtime.coverSearches)
        assertNotNull(pending)
        pending!!.resume(listOf("https://example.invalid/early.jpg"))
        drain()
        assertFalse(bitmap.isRecycled)
    }

    @Test
    fun blockedFirstImageAndDuplicateAreConsumedOnceWhileSecondLaneWins() {
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val bad = Bitmap.createBitmap(3, 3, Bitmap.Config.ARGB_8888)
        val good = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888)
        val badEntered = CountDownLatch(1)
        val goodEntered = CountDownLatch(1)
        val releaseBad = CountDownLatch(1)
        var active = 0
        var maximumActive = 0
        val loads = mutableListOf<String>()
        val runtime = FakeResources { _, _ -> listOf("bad", "bad", "good") }
        val engine = engine(runtime, frames, Dispatchers.Default) { url, _ ->
            synchronized(loads) {
                loads += url
                active += 1
                maximumActive = maxOf(maximumActive, active)
            }
            try {
                if (url == "bad") {
                    badEntered.countDown()
                    releaseBad.await(2, TimeUnit.SECONDS)
                    bad
                } else {
                    goodEntered.countDown()
                    good
                }
            } finally {
                synchronized(loads) { active -= 1 }
            }
        }

        engine.update(media("CoverTwoLanesSynthetic"))
        drain()
        pumpUntil { badEntered.count == 0L && goodEntered.count == 0L }
        assertTrue(badEntered.await(1, TimeUnit.SECONDS))
        assertTrue(goodEntered.await(1, TimeUnit.SECONDS))
        pumpUntil { frames.any { it.artwork === good } }
        assertTrue("Second lane must display while first remains blocked", frames.any { it.artwork === good })
        releaseBad.countDown()
        pumpUntil { frames.any { it.artwork === good } && bad.isRecycled }

        assertEquals(1, runtime.coverSearches)
        assertEquals(setOf("bad", "good"), loads.toSet())
        assertEquals(1, loads.count { it == "bad" })
        assertTrue(maximumActive <= 2)
        assertSame(good, frames.last { it.artwork === good }.artwork)
        assertFalse(good.isRecycled)
    }

    @Test
    fun nativeArtworkPreemptsBlockedDownloadAndKeepsNativeBitmapOwned() {
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val entered = CountDownLatch(1)
        val release = CountDownLatch(1)
        val late = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888)
        val native = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888)
        val runtime = FakeResources { _, onCandidate ->
            onCandidate("late-native")
            suspendCoroutine<List<String>> { }
        }
        val engine = engine(runtime, frames, Dispatchers.Default) { _, _ ->
            entered.countDown()
            release.await(2, TimeUnit.SECONDS)
            late
        }

        engine.update(media("CoverNativeSynthetic"))
        drain()
        pumpUntil { entered.count == 0L }
        assertTrue(entered.await(1, TimeUnit.SECONDS))
        engine.update(media("CoverNativeSynthetic", artwork = native))
        drain()
        release.countDown()
        pumpUntil { late.isRecycled }

        assertTrue(late.isRecycled)
        assertFalse(native.isRecycled)
        // Native artwork reaches Store through the media port; lyrics publishes fallback only.
        assertTrue(frames.none { it.artwork === late })
    }

    @Test
    fun lateBitmapAfterSongChangeIsRecycledAndCannotPublish() {
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val oldEntered = CountDownLatch(1)
        val releaseOld = CountDownLatch(1)
        val late = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888)
        val runtime = FakeResources { query, onCandidate ->
            if (query.track == "CoverOldSynthetic") {
                onCandidate("late")
                suspendCoroutine<List<String>> { }
            } else {
                emptyList()
            }
        }
        val engine = engine(runtime, frames, Dispatchers.Default) { _, _ ->
            oldEntered.countDown()
            releaseOld.await(2, TimeUnit.SECONDS)
            late
        }

        engine.update(media("CoverOldSynthetic"))
        drain()
        pumpUntil { oldEntered.count == 0L }
        assertTrue(oldEntered.await(1, TimeUnit.SECONDS))
        val framesBeforeChange = frames.size
        engine.update(media("CoverNewSynthetic", generation = 2))
        drain()
        releaseOld.countDown()
        pumpUntil { late.isRecycled }

        assertTrue("late old-recording bitmap must be discarded", late.isRecycled)
        assertTrue(frames.none { it.artwork === late })
        assertTrue(frames.drop(framesBeforeChange).all { it.recordingKey == media("CoverNewSynthetic", generation = 2).recordingKey() })
    }

    @Test
    fun searchAndDownloadShareOneShortDeadlineAndCancelBlockedIo() {
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val entered = CountDownLatch(1)
        val release = CountDownLatch(1)
        val late = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888)
        val runtime = FakeResources { _, _ -> listOf("deadline-late") }
        val engine = engine(runtime, frames, Dispatchers.Default, loader = { _, _ ->
            entered.countDown()
            release.await(2, TimeUnit.SECONDS)
            late
        }, deadlineMs = 120L)

        engine.update(media("CoverDeadlineSynthetic"))
        drain()
        pumpUntil { entered.count == 0L }
        assertTrue(entered.await(1, TimeUnit.SECONDS))
        val cancellationsBeforeDeadline = runtime.coverCancels
        pumpUntil(1_000L) { runtime.coverCancels > cancellationsBeforeDeadline }
        assertTrue("Common deadline must cancel this download", runtime.coverCancels > cancellationsBeforeDeadline)
        release.countDown()
        pumpUntil { late.isRecycled }

        assertTrue(runtime.coverCancels > 0)
        assertTrue(late.isRecycled)
        assertTrue(frames.none { it.artwork === late })
    }

    @Test
    fun policyRevisionFlowRestartsSameRecordingWithoutClearingVisibleLyrics() {
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val runtime = FakeResources(
            coverPlan = { _, _ -> emptyList() },
            lyricsPlan = { query -> found(query) }
        )
        val engine = engine(runtime, frames, Dispatchers.Unconfined) { _, _ -> null }

        engine.update(media("PolicyWarmSynthetic"))
        drain()
        val visible = frames.last { it.lines.isNotEmpty() }
        val lookupCount = runtime.lyricsLookups

        runtime.revision = 1L
        runtime.policyChanges.value = 1L
        drain()

        assertTrue(runtime.lyricsLookups > lookupCount)
        assertEquals(visible.lines.map { it.text }, frames.last().lines.map { it.text })
        assertEquals(ContentPorts.LyricsSnapshot.READY, frames.last().status)
    }

    @Test
    fun policyRevisionRefreshesWarmCoverWithoutBlankingTheVisibleImage() {
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val original = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888)
        val preferred = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888)
        var lookups = 0
        val runtime = FakeResources { _, callback ->
            val url = if (lookups++ == 0) "initial-cover" else "preferred-cover"
            callback(url)
            listOf(url)
        }
        val engine = engine(runtime, frames, Dispatchers.Unconfined) { url, _ ->
            if (url == "initial-cover") original else preferred
        }
        engine.update(media("PolicyWarmCoverSynthetic"))
        drain()
        assertSame(original, frames.last().artwork)
        val firstFrameAfterPolicyChange = frames.size

        runtime.revision = 1L
        runtime.policyChanges.value = 1L
        drain()

        assertEquals("A cached cover must not suppress a new platform search", 2, runtime.coverSearches)
        assertSame(preferred, frames.last().artwork)
        assertTrue("Keep the old cover visible until the new one arrives",
            frames.drop(firstFrameAfterPolicyChange).all { it.artwork != null })
        assertFalse(original.isRecycled)
        assertFalse(preferred.isRecycled)
    }

    private fun engine(
        runtime: FakeResources,
        frames: MutableList<ContentPorts.LyricsSnapshot>,
        dispatcher: CoroutineDispatcher,
        deadlineMs: Long = 9_000L,
        loader: (String, LyricsCancellationSignal) -> Bitmap?
    ): ContentLyricsEngine = ContentLyricsEngine(
        RuntimeEnvironment.getApplication(),
        { runtime },
        dispatcher,
        loader,
        {},
        deadlineMs
    ).also {
        engines += it
        it.start(frames::add)
    }

    private fun pumpUntil(timeoutMs: Long = 1_500L, condition: () -> Boolean) {
        val end = System.nanoTime() + TimeUnit.MILLISECONDS.toNanos(timeoutMs)
        while (System.nanoTime() < end && !condition()) {
            shadowOf(Looper.getMainLooper()).idleFor(5L, TimeUnit.MILLISECONDS)
            Thread.sleep(5L)
        }
        drain()
    }

    private fun drain() = shadowOf(Looper.getMainLooper()).idle()

    private fun media(title: String, generation: Int = 1, artwork: Bitmap? = null) =
        ContentPorts.MediaSnapshot(
            true, false, "本机音乐", true, generation, title, "Artist", true, true,
            artwork, "", "Album", 200_000L, -1L, 0L, 1f, "",
            ContentPorts.MediaSongIdentity.SONG
        )

    private class FakeResources(
        private val lyricsPlan: (LyricsLookup) -> LyricsResolutionOutcome = {
            LyricsResolutionOutcome.NoMatch
        },
        private val coverPlan: suspend (LyricsLookup, (String) -> Unit) -> List<String>
    ) : LyricsEngineResources {
        override val cache: LyricsPlaybackCache = EmptyCache()
        val policyChanges = MutableStateFlow(0L)
        var revision: Long = 0L
        var coverSearches = 0
        var coverCancels = 0
        var lyricsLookups = 0

        override val selectionPolicyRevision: Long get() = revision
        override val selectionPolicyChanges: Flow<Long> get() = policyChanges

        override suspend fun resolveLyrics(query: LyricsLookup): LyricsResolutionOutcome {
            lyricsLookups += 1
            return lyricsPlan(query)
        }

        override suspend fun resolveCover(query: LyricsLookup): String = ""

        override suspend fun resolveCoversProgressive(
            query: LyricsLookup,
            onCandidate: (String) -> Unit
        ): List<String> {
            coverSearches += 1
            return coverPlan(query, onCandidate)
        }

        override fun cancelCurrent() = Unit
        override fun cancelCoverResolution() { coverCancels += 1 }
        override fun cancelAll() = Unit
        override fun close() = Unit
    }

    private fun found(query: LyricsLookup): LyricsResolutionOutcome.Found {
        val result = LyricsResult(
            lyrics = "[00:01.00]${query.track} lyric",
            durationMs = query.durationMs,
            source = SOURCE_QQ,
            sourceId = query.track,
            candidateTrack = query.track,
            candidateArtist = query.artist,
            candidateAlbum = query.album,
            lyricsKind = LyricsKind.SYNCHRONIZED
        )
        val proof = LyricsCandidateSelector.selectCandidatesWithProof(query, listOf(result)).single().proof
        return LyricsResolutionOutcome.Found(ResolvedLyrics(result, proof))
    }

    private class EmptyCache : LyricsPlaybackCache {
        override fun read(identity: LyricsPlaybackIdentity, recordUse: Boolean): LyricsCache.Entry? = null
        override fun writeAutomatic(identity: LyricsPlaybackIdentity, resolved: ResolvedLyrics): Boolean = false
        override fun writeManual(identity: LyricsPlaybackIdentity, result: LyricsResult): Boolean = false
        override fun clearManual(identity: LyricsPlaybackIdentity): Boolean = false
        override fun clearCurrent(identity: LyricsPlaybackIdentity): Boolean = false
        override fun snapshot(identity: LyricsPlaybackIdentity?, currentEntry: LyricsCache.Entry?) =
            LyricsCacheSnapshot(LyricsCacheStats(0, 0, 0L, LyricsCachePolicy.MAX_BYTES), null)
    }
}
