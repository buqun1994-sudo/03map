package com.icar03.content.runtime

import android.media.session.PlaybackState
import android.os.Looper
import android.os.SystemClock
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentState
import com.autonavi.amapauto.content.ContentStore
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.time.Duration

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentLyricsStoreTest {
    private fun store(mediaPort: ContentPorts.MediaPort = ContentPorts.PreviewMediaPort()) = ContentStore(RuntimeEnvironment.getApplication(),
        ContentPorts.PreviewVehiclePort(), mediaPort,
        object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
            override fun write(kind: Int, percent: Int) = false
        })

    @Test fun unknownBluetoothHasNoCursorButActualEventAdvancesWithoutFurtherMediaCallbacks() {
        val store = store()
        try {
            store.startLyrics()
            val initial = media()
            store.acceptMediaSnapshot(initial)
            store.acceptLyricsSnapshot(lyrics(initial, listOf(0L, 1_000L, 2_000L)))
            assertFalse(store.snapshot().lyricsTimelineReady)
            assertEquals(-1, store.snapshot().lyricsActiveIndex)
            assertEquals(-1, store.snapshot().lyricsScrollIndex)
            assertTrue(store.snapshot().lyricsActiveIndices.isEmpty())
            assertEquals(-1L, store.snapshot().lyricsPositionMs)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(3))
            assertEquals(-1, store.snapshot().lyricsActiveIndex)
            assertEquals(-1, store.snapshot().lyricsScrollIndex)
            val event = media(sequence = 1L, position = 0L)
            store.acceptMediaSnapshot(event)
            assertTrue(store.snapshot().lyricsTimelineReady)
            assertEquals(0L, store.snapshot().lyricsPositionMs)
            val generation = store.snapshot().mediaGeneration
            val anchor = store.snapshot().lyricsAnchor
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(500))
            assertEquals(500L, anchor.sampleAt(SystemClock.elapsedRealtime()))
            assertEquals(0L, store.snapshot().lyricsPositionMs)
            assertSame(anchor, store.snapshot().lyricsAnchor)
            assertEquals(0, store.snapshot().lyricsActiveIndex)
            assertEquals(generation, store.snapshot().mediaGeneration)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(700))
            assertEquals(1, store.snapshot().lyricsActiveIndex)
            assertEquals(1_200L, anchor.sampleAt(SystemClock.elapsedRealtime()))
            assertEquals(1_000L, store.snapshot().lyricsPositionMs)
            store.acceptMediaSnapshot(event)
            assertEquals(1_000L, store.snapshot().lyricsPositionMs)
            assertSame(anchor, store.snapshot().lyricsAnchor)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(1))
            assertEquals(2, store.snapshot().lyricsActiveIndex)
        } finally { store.destroy() }
    }

    @Test fun pauseSeekAndHostStopCancelTickerAndResumeUsesTheSameTrustedClock() {
        val store = store()
        try {
            store.startLyrics()
            val initial = media(sequence = 1L, position = 0L)
            store.acceptMediaSnapshot(initial)
            store.acceptLyricsSnapshot(lyrics(initial, listOf(0L, 1_000L, 2_000L)))
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1_200))
            store.acceptMediaSnapshot(media(sequence = 2L, eventState = PlaybackState.STATE_PAUSED, playing = false))
            val paused = store.snapshot()
            assertEquals(1_200L, paused.lyricsPositionMs)
            assertEquals(0f, paused.lyricsPlaybackSpeed, 0f)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(3))
            assertEquals(paused.lyricsPositionMs, store.snapshot().lyricsPositionMs)
            store.acceptMediaSnapshot(media(sequence = 3L, eventState = PlaybackState.STATE_PLAYING))
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(200))
            assertEquals(1_400L, store.snapshot().lyricsAnchor.sampleAt(SystemClock.elapsedRealtime()))
            assertEquals(1_200L, store.snapshot().lyricsPositionMs)
            store.acceptMediaSnapshot(media(sequence = 4L, position = 0L))
            assertEquals(0, store.snapshot().lyricsActiveIndex)
            assertEquals(0L, store.snapshot().lyricsPositionMs)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(300))
            store.stopLyrics()
            val stopped = store.snapshot().lyricsPositionMs
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(2))
            assertEquals(stopped, store.snapshot().lyricsPositionMs)
            store.startLyrics()
            assertEquals(2, store.snapshot().lyricsActiveIndex)
            assertEquals(2_300L, store.snapshot().lyricsPositionMs)
            val resumedAnchor = store.snapshot().lyricsAnchor
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(100))
            assertEquals(2_400L, resumedAnchor.sampleAt(SystemClock.elapsedRealtime()))
            assertEquals(2_300L, store.snapshot().lyricsPositionMs)
            assertSame(resumedAnchor, store.snapshot().lyricsAnchor)
        } finally { store.destroy() }
    }

    @Test fun tickerStopsAtKnownDurationAndRepeatedSnapshotsNeverDelayTheNextLine() {
        val store = store()
        try {
            store.startLyrics()
            val initial = media(sequence = 1L, position = 0L, duration = 2_000L)
            store.acceptMediaSnapshot(initial)
            store.acceptLyricsSnapshot(lyrics(initial, listOf(0L, 1_000L)))
            repeat(4) {
                shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(200))
                store.acceptMediaSnapshot(initial)
            }
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(200))
            assertEquals(1, store.snapshot().lyricsActiveIndex)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(1))
            assertEquals(2_000L, store.snapshot().lyricsPositionMs)
            var publications = 0
            store.addListener { publications++ }
            val terminalPublications = publications
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(2))
            assertEquals(terminalPublications, publications)
            assertEquals(2_000L, store.snapshot().lyricsPositionMs)
        } finally { store.destroy() }
    }

    @Test fun recordingGenerationRejectsLateLyricsAndNewRecordingStartsAtZero() {
        val store = store()
        try {
            store.startLyrics()
            val first = media(sequence = 1L, position = 30_000L)
            store.acceptMediaSnapshot(first)
            val oldLyrics = lyrics(first, listOf(0L, 1_000L))
            store.acceptLyricsSnapshot(oldLyrics)
            val second = media(title = "Second", generation = 2)
            store.acceptMediaSnapshot(second)
            store.acceptLyricsSnapshot(oldLyrics)
            assertTrue(store.snapshot().lyricsLines.isEmpty())
            assertTrue(store.snapshot().lyricsTimelineReady)
            assertEquals(0L, store.snapshot().lyricsPositionMs)
            store.acceptLyricsSnapshot(lyrics(second, listOf(0L, 1_000L)))
            assertEquals(0, store.snapshot().lyricsActiveIndex)
            assertEquals(0, store.snapshot().lyricsScrollIndex)
            store.acceptMediaSnapshot(media(title = "Second", generation = 2, sequence = 2L, position = 0L))
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(1))
            assertTrue(store.snapshot().lyricsTimelineReady)
            assertEquals(1, store.snapshot().lyricsActiveIndex)
        } finally { store.destroy() }
    }

    @Test fun stableRecordingGenerationSurvivesTransportEnrichmentAndLyricsReentry() {
        val store = store()
        try {
            store.startLyrics()
            val initial = standardMedia(30_000L, SystemClock.elapsedRealtime())
            store.acceptMediaSnapshot(initial)
            val oldBody = lyrics(initial, listOf(0L, 10_000L))
            store.acceptLyricsSnapshot(oldBody)
            val first = store.snapshot()
            val generation = first.mediaRecordingGeneration
            assertTrue(generation > 0L)
            assertEquals(generation, first.copy().mediaRecordingGeneration)
            val enriched = standardMedia(30_000L, SystemClock.elapsedRealtime(), mediaId = "item/A", duration = 201_000L)
            assertNotEquals(initial.recordingKey(), enriched.recordingKey())
            store.acceptMediaSnapshot(enriched)
            assertEquals(generation, store.snapshot().mediaRecordingGeneration)
            assertTrue("transport enrichment still clears the old correlated body", store.snapshot().lyricsLines.isEmpty())
            store.acceptLyricsSnapshot(oldBody)
            assertTrue("stable presentation identity never admits a stale transport body", store.snapshot().lyricsLines.isEmpty())
            store.acceptLyricsSnapshot(lyrics(enriched, listOf(0L, 10_000L)))
            assertEquals(generation, ContentUiMapper().mapLyrics(store.snapshot()).recordingGeneration)
            store.stopLyrics()
            store.startLyrics()
            store.acceptMediaSnapshot(enriched)
            assertEquals(generation, store.snapshot().mediaRecordingGeneration)
            assertFalse(store.snapshot().lyricsLines.isEmpty())
            store.acceptMediaSnapshot(ContentPorts.MediaSnapshot.unavailable())
            assertEquals(0L, store.snapshot().mediaRecordingGeneration)
            assertEquals(0L, ContentUiMapper().mapLyrics(store.snapshot()).recordingGeneration)
            store.acceptMediaSnapshot(enriched)
            assertEquals(generation + 1L, store.snapshot().mediaRecordingGeneration)
            assertEquals("already published snapshots preserve their recording identity", generation, first.mediaRecordingGeneration)
        } finally { store.destroy() }
    }

    @Test fun aSilentGapKeepsTickingAndReachesTheNextRealLine() {
        val store = store()
        try {
            store.startLyrics()
            val initial = media(sequence = 1L, position = 0L)
            store.acceptMediaSnapshot(initial)
            val rows = listOf(
                ContentPorts.LyricsLine(0L, "A", "", "", emptyList(), 1_000L, emptyList(), 0),
                ContentPorts.LyricsLine(10_000L, "B", "", "", emptyList(), 11_000L, emptyList(), 0))
            store.acceptLyricsSnapshot(ContentPorts.LyricsSnapshot(initial.recordingKey(), initial.generation,
                ContentPorts.LyricsSnapshot.READY, rows, null))
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(2_500))
            assertEquals(-1, store.snapshot().lyricsActiveIndex)
            assertEquals(0, store.snapshot().lyricsScrollIndex)
            assertEquals(2_200L, store.snapshot().lyricsGapStartMs)
            assertEquals(2_500L, store.snapshot().lyricsAnchor.sampleAt(SystemClock.elapsedRealtime()))
            assertEquals(2_200L, store.snapshot().lyricsPositionMs)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(6_700))
            assertEquals(1, store.snapshot().lyricsScrollIndex)
            assertEquals(-1, store.snapshot().lyricsActiveIndex)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(800))
            assertEquals(1, store.snapshot().lyricsActiveIndex)
            assertEquals(10_000L, store.snapshot().lyricsPositionMs)
        } finally { store.destroy() }
    }

    @Test fun plainTextHasNoTimelineOrAutomaticTicker() {
        val store = store()
        try {
            store.startLyrics()
            val initial = media(sequence = 1L, position = 30_000L)
            store.acceptMediaSnapshot(initial)
            store.acceptLyricsSnapshot(ContentPorts.LyricsSnapshot(initial.recordingKey(), initial.generation,
                ContentPorts.LyricsSnapshot.READY, listOf(ContentPorts.LyricsLine(0L, "Plain body", "")), null, false))
            assertFalse(store.snapshot().lyricsTimed)
            assertFalse(store.snapshot().lyricsTimelineReady)
            assertEquals(-1, store.snapshot().lyricsActiveIndex)
            assertEquals(-1L, store.snapshot().lyricsPositionMs)
            var publications = 0
            store.addListener { publications++ }
            val before = publications
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(3))
            assertEquals(before, publications)
        } finally { store.destroy() }
    }

    @Test fun seekAndLyricsReplacementPublishOnlyTheCurrentPositionCursorNeverATopDetour() {
        val store = store()
        try {
            store.startLyrics()
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(10))
            val firstTime = SystemClock.elapsedRealtime()
            val initial = standardMedia(30_000L, firstTime)
            val rows = lyrics(initial, (0..10).map { it * 10_000L })
            store.acceptMediaSnapshot(initial)
            store.acceptLyricsSnapshot(rows)
            assertEquals(3, store.snapshot().lyricsScrollIndex)
            val publishedAnchors = mutableListOf<Int>()
            store.addListener { publishedAnchors += it.lyricsScrollIndex }
            publishedAnchors.clear()
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(1))
            val seekTime = SystemClock.elapsedRealtime()
            store.acceptMediaSnapshot(standardMedia(80_000L, seekTime))
            assertEquals(8, store.snapshot().lyricsScrollIndex)
            val seekAnchor = store.snapshot().lyricsAnchor
            publishedAnchors.clear()
            store.acceptMediaSnapshot(standardMedia(0L, firstTime))
            store.acceptMediaSnapshot(standardMedia(30_000L, firstTime))
            store.acceptLyricsSnapshot(rows)
            store.stopLyrics()
            store.startLyrics()
            assertTrue("old publisher positions and repeated body/lifecycle facts do not republish", publishedAnchors.isEmpty())
            assertSame(seekAnchor, store.snapshot().lyricsAnchor)
            assertEquals(80_000L, store.snapshot().lyricsPositionMs)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(100))
            store.acceptMediaSnapshot(standardMedia(0L, SystemClock.elapsedRealtime()))
            assertEquals(0L, store.snapshot().lyricsPositionMs)
            assertEquals(0, store.snapshot().lyricsScrollIndex)
            assertEquals(0, store.snapshot().lyricsActiveIndex)
        } finally { store.destroy() }
    }

    @Test fun unknownPositionDoesNotPublishAFirstRowBeforeTheFirstMidSongPosition() {
        val store = store()
        try {
            store.startLyrics()
            val initial = standardMedia(-1L, 0L)
            store.acceptMediaSnapshot(initial)
            store.acceptLyricsSnapshot(lyrics(initial, (0..10).map { it * 10_000L }))
            assertEquals(-1, store.snapshot().lyricsScrollIndex)
            assertEquals(-1, store.snapshot().lyricsActiveIndex)
            store.acceptMediaSnapshot(standardMedia(55_000L, SystemClock.elapsedRealtime()))
            assertEquals(5, store.snapshot().lyricsScrollIndex)
            assertEquals(5, store.snapshot().lyricsActiveIndex)
        } finally { store.destroy() }
    }

    @Test fun terminalProtocolStatesPassThroughWithNoSyntheticInstrumentalTimelineAndRejectOldBindings() {
        val store = store()
        try {
            assertEquals(listOf(0, 1, 2, 3), listOf(ContentPorts.LyricsSnapshot.EMPTY,
                ContentPorts.LyricsSnapshot.LOADING, ContentPorts.LyricsSnapshot.READY, ContentPorts.LyricsSnapshot.UNAVAILABLE))
            store.startLyrics()
            val first = media(sequence = 1L, position = 30_000L)
            store.acceptMediaSnapshot(first)
            for (status in listOf(ContentPorts.LyricsSnapshot.NO_MATCH, ContentPorts.LyricsSnapshot.NETWORK_ERROR,
                ContentPorts.LyricsSnapshot.INSTRUMENTAL)) {
                store.acceptLyricsSnapshot(ContentPorts.LyricsSnapshot(first.recordingKey(), first.generation,
                    status, emptyList(), null, status != ContentPorts.LyricsSnapshot.INSTRUMENTAL))
                assertEquals(status, store.snapshot().lyricsStatus)
                assertTrue(store.snapshot().lyricsLines.isEmpty())
                assertEquals(-1, store.snapshot().lyricsActiveIndex)
                assertEquals(-1, store.snapshot().lyricsScrollIndex)
                if (status == ContentPorts.LyricsSnapshot.INSTRUMENTAL) {
                    assertFalse(store.snapshot().lyricsTimed)
                    assertFalse(store.snapshot().lyricsTimelineReady)
                    assertEquals(-1L, store.snapshot().lyricsPositionMs)
                    assertTrue(store.snapshot().lyricsActiveIndices.isEmpty())
                    var publications = 0
                    store.addListener { publications++ }
                    val before = publications
                    shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(3))
                    assertEquals("pure music schedules no lyric ticker", before, publications)
                }
            }
            val second = media(title = "Second", generation = 2)
            store.acceptMediaSnapshot(second)
            store.acceptLyricsSnapshot(ContentPorts.LyricsSnapshot(first.recordingKey(), first.generation,
                ContentPorts.LyricsSnapshot.INSTRUMENTAL, emptyList(), null, false))
            assertEquals(ContentPorts.LyricsSnapshot.EMPTY, store.snapshot().lyricsStatus)
            assertTrue(store.snapshot().lyricsLines.isEmpty())
            assertTrue(store.snapshot().lyricsTimelineReady)
        } finally { store.destroy() }
    }

    @Test fun nextIntentPublishesBeforeTheCommandAndSameRecordingZeroIsStillARealSeek() {
        val port = NextMediaPort()
        val store = store(port)
        try {
            store.startLyrics()
            val initial = standardMedia(30_000L, SystemClock.elapsedRealtime(), mediaId = "item/A")
            store.acceptMediaSnapshot(initial)
            store.acceptLyricsSnapshot(lyrics(initial, listOf(0L, 10_000L)))
            val generation = store.snapshot().mediaRecordingGeneration
            val before = store.snapshot()
            val published = mutableListOf<Boolean>()
            store.addListener { published += it.mediaNextPending }
            published.clear()
            var dispatchedAfterIntent = false
            port.onNext = { dispatchedAfterIntent = published.firstOrNull() == true; true }
            store.nextMediaTrack()
            assertTrue(store.snapshot().mediaNextPending)
            assertTrue(store.snapshot().copy().mediaNextPending)
            assertFalse(before.mediaNextPending)
            drainNextCommands(store)
            assertEquals(1, port.calls)
            assertTrue("intent is published before port dispatch", dispatchedAfterIntent)
            assertTrue("sending is not recording confirmation", store.snapshot().mediaNextPending)
            assertTrue(ContentUiMapper().mapLyrics(store.snapshot()).changingTrack)
            store.acceptMediaSnapshot(standardMedia(0L, SystemClock.elapsedRealtime(), mediaId = "item/A"))
            assertEquals(0L, store.snapshot().lyricsPositionMs)
            assertEquals(0, store.snapshot().lyricsScrollIndex)
            assertTrue(store.snapshot().mediaNextPending)
            assertEquals(generation, store.snapshot().mediaRecordingGeneration)
            store.acceptMediaSnapshot(standardMedia(0L, SystemClock.elapsedRealtime(), mediaId = "item/A", duration = 201_000L))
            assertTrue("metadata enrichment does not confirm a new recording", store.snapshot().mediaNextPending)
            store.acceptMediaSnapshot(standardMedia(0L, SystemClock.elapsedRealtime(), mediaId = "item/B"))
            assertFalse(store.snapshot().mediaNextPending)
            assertEquals(generation + 1L, store.snapshot().mediaRecordingGeneration)
            val confirmed = store.snapshot().commandSequence
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6))
            assertEquals(confirmed, store.snapshot().commandSequence)
            assertEquals(ContentPorts.LyricsSnapshot.EMPTY, store.snapshot().lyricsStatus)
        } finally { store.destroy() }
    }

    @Test fun failedNextAndOneShotTimeoutRestoreTheLatestActualLyricsAndKeepFailureFeedback() {
        val port = NextMediaPort()
        val store = store(port)
        try {
            store.startLyrics()
            val initial = standardMedia(30_000L, SystemClock.elapsedRealtime(), mediaId = "item/A")
            store.acceptMediaSnapshot(initial)
            store.acceptLyricsSnapshot(lyrics(initial, listOf(0L, 10_000L)))
            port.onNext = { false }
            store.nextMediaTrack()
            store.acceptMediaSnapshot(standardMedia(0L, SystemClock.elapsedRealtime(), mediaId = "item/A"))
            drainNextCommands(store)
            assertFalse(store.snapshot().mediaNextPending)
            assertFalse(ContentUiMapper().mapLyrics(store.snapshot()).changingTrack)
            assertEquals(0L, store.snapshot().lyricsPositionMs)
            assertEquals(0, store.snapshot().lyricsScrollIndex)
            assertFalse(store.snapshot().lyricsLines.isEmpty())
            assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
            assertEquals("下一首命令未发送，请检查媒体会话", store.snapshot().commandMessage)
            val failed = store.snapshot().commandSequence
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6))
            assertEquals(failed, store.snapshot().commandSequence)
            port.onNext = { true }
            store.nextMediaTrack()
            drainNextCommands(store)
            assertTrue(store.snapshot().mediaNextPending)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(5_999))
            assertTrue(store.snapshot().mediaNextPending)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1))
            assertFalse(store.snapshot().mediaNextPending)
            assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
            assertEquals("下一首状态未确认，请检查媒体会话", store.snapshot().commandMessage)
            val timedOut = store.snapshot().commandSequence
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6))
            assertEquals("timeout is one-shot", timedOut, store.snapshot().commandSequence)
        } finally { store.destroy() }
    }

    @Test fun continuousNextKeepsEveryCommandButRejectsOldFailureAndOldTimeout() {
        val port = NextMediaPort()
        val store = store(port)
        try {
            store.acceptMediaSnapshot(standardMedia(30_000L, SystemClock.elapsedRealtime()))
            port.onNext = { false }
            store.nextMediaTrack()
            drainNextWorker(store) // The old failure is posted but not delivered yet.
            val oldTimeout = ContentStore::class.java.getDeclaredField("nextTrackTimeout")
                .apply { isAccessible = true }.get(store) as Runnable
            port.onNext = { true }
            store.nextMediaTrack()
            oldTimeout.run()
            assertTrue(store.snapshot().mediaNextPending)
            shadowOf(Looper.getMainLooper()).idle()
            assertTrue("old failure cannot release the latest intent", store.snapshot().mediaNextPending)
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
            drainNextCommands(store)
            assertEquals("continuous next does not suppress commands", 2, port.calls)
            assertTrue(store.snapshot().mediaNextPending)
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6))
            assertFalse(store.snapshot().mediaNextPending)
            assertEquals("下一首状态未确认，请检查媒体会话", store.snapshot().commandMessage)
        } finally { store.destroy() }
    }

    @Test fun missingSongAndDestroyCancelNextIntentAndUnavailableNextDoesNothing() {
        val port = NextMediaPort()
        val store = store(port)
        try {
            store.nextMediaTrack()
            assertFalse(store.snapshot().mediaNextPending)
            assertEquals(0, port.calls)
            store.acceptMediaSnapshot(standardMedia(30_000L, SystemClock.elapsedRealtime()))
            store.nextMediaTrack()
            drainNextCommands(store)
            store.acceptMediaSnapshot(ContentPorts.MediaSnapshot.unavailable())
            assertFalse(store.snapshot().mediaNextPending)
            val unavailable = store.snapshot().commandSequence
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6))
            assertEquals(unavailable, store.snapshot().commandSequence)
            store.acceptMediaSnapshot(standardMedia(30_000L, SystemClock.elapsedRealtime()))
            store.nextMediaTrack()
            drainNextCommands(store)
            store.acceptMediaSnapshot(standardMedia(30_000L, SystemClock.elapsedRealtime(),
                songIdentity = ContentPorts.MediaSongIdentity.NON_SONG))
            assertFalse(store.snapshot().mediaNextPending)
            val noSong = store.snapshot().commandSequence
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6))
            assertEquals(noSong, store.snapshot().commandSequence)
            store.acceptMediaSnapshot(standardMedia(30_000L, SystemClock.elapsedRealtime()))
            store.nextMediaTrack()
            drainNextCommands(store)
            val dispatched = store.snapshot().commandSequence
            store.destroy()
            assertFalse(store.snapshot().mediaNextPending)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6))
            assertEquals(dispatched, store.snapshot().commandSequence)
            store.nextMediaTrack()
            assertEquals(3, port.calls)
        } finally { store.destroy() }
    }

    private fun standardMedia(position: Long, publisherTime: Long, mediaId: String = "", duration: Long = 200_000L,
        songIdentity: ContentPorts.MediaSongIdentity = ContentPorts.MediaSongIdentity.SONG) = ContentPorts.MediaSnapshot(
        true, false, "本机音乐", true, 1, "Song", "Artist", true, true,
        null, mediaId, "Album", duration, position, publisherTime, 1f, songIdentity)

    private fun drainNextWorker(store: ContentStore) {
        val executor = ContentStore::class.java.getDeclaredField("mediaCommandExecutor").apply { isAccessible = true }
            .get(store) as java.util.concurrent.ExecutorService
        executor.submit {}.get(2, java.util.concurrent.TimeUnit.SECONDS)
    }

    private fun drainNextCommands(store: ContentStore) {
        drainNextWorker(store)
        shadowOf(Looper.getMainLooper()).idle()
    }

    private class NextMediaPort : ContentPorts.MediaPort {
        var calls = 0
        var onNext: () -> Boolean = { true }
        override fun isAvailable() = true
        override fun requestPlayback(playing: Boolean) = true
        override fun requestNext(): Boolean { calls++; return onNext() }
        override fun requestSource(source: String) = true
        override fun start(listener: ContentPorts.MediaSnapshotListener) {
            listener.onMediaSnapshot(ContentPorts.MediaSnapshot.unavailable())
        }
        override fun stop() {}
    }

    private fun lyrics(media: ContentPorts.MediaSnapshot, times: List<Long>) = ContentPorts.LyricsSnapshot(
        media.recordingKey(), media.generation, ContentPorts.LyricsSnapshot.READY,
        times.mapIndexed { index, time -> ContentPorts.LyricsLine(time, "Line $index", "") }, null)

    private fun media(title: String = "Song", generation: Int = 1, sequence: Long = 0L,
        position: Long = -1L, eventState: Int = -1, playing: Boolean = true, duration: Long = 200_000L) =
        ContentPorts.MediaSnapshot(true, false, "蓝牙音乐", playing, generation, title, "Artist", true, true,
            null, "", "Album", duration, 0L, 0L, 0f, "", ContentPorts.MediaSongIdentity.SONG,
            PlaybackState.STATE_PLAYING, sequence, position, eventState,
            if (sequence > 0L) SystemClock.elapsedRealtime() else 0L)
}
