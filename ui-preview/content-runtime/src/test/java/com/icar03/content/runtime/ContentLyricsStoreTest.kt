package com.icar03.content.runtime

import android.media.session.PlaybackState
import android.os.Looper
import android.os.SystemClock
import com.autonavi.amapauto.content.ContentPorts
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
    private fun store() = ContentStore(RuntimeEnvironment.getApplication(),
        ContentPorts.PreviewVehiclePort(), ContentPorts.PreviewMediaPort(),
        object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
            override fun write(kind: Int, percent: Int) = false
        })

    @Test fun unknownBluetoothPreviewsButActualEventAdvancesWithoutFurtherMediaCallbacks() {
        val store = store()
        try {
            store.startLyrics()
            val initial = media()
            store.acceptMediaSnapshot(initial)
            store.acceptLyricsSnapshot(lyrics(initial, listOf(0L, 1_000L, 2_000L)))
            assertFalse(store.snapshot().lyricsTimelineReady)
            assertEquals(0, store.snapshot().lyricsActiveIndex)
            assertEquals(-1L, store.snapshot().lyricsPositionMs)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(3))
            assertEquals(0, store.snapshot().lyricsActiveIndex)
            val event = media(sequence = 1L, position = 0L)
            store.acceptMediaSnapshot(event)
            assertTrue(store.snapshot().lyricsTimelineReady)
            assertEquals(0L, store.snapshot().lyricsPositionMs)
            val generation = store.snapshot().mediaGeneration
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(500))
            assertEquals(500L, store.snapshot().lyricsPositionMs)
            assertEquals(0, store.snapshot().lyricsActiveIndex)
            assertEquals(generation, store.snapshot().mediaGeneration)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(700))
            assertEquals(1, store.snapshot().lyricsActiveIndex)
            assertEquals(1_200L, store.snapshot().lyricsPositionMs)
            store.acceptMediaSnapshot(event)
            assertEquals(1_200L, store.snapshot().lyricsPositionMs)
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
            assertEquals(1_400L, store.snapshot().lyricsPositionMs)
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
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(100))
            assertEquals(2_400L, store.snapshot().lyricsPositionMs)
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

    @Test fun recordingGenerationRejectsLateLyricsAndNewRecordingStartsUntrusted() {
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
            assertFalse(store.snapshot().lyricsTimelineReady)
            assertEquals(-1L, store.snapshot().lyricsPositionMs)
            store.acceptLyricsSnapshot(lyrics(second, listOf(0L, 1_000L)))
            assertEquals(0, store.snapshot().lyricsActiveIndex)
            store.acceptMediaSnapshot(media(title = "Second", generation = 2, sequence = 2L, position = 0L))
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(1))
            assertTrue(store.snapshot().lyricsTimelineReady)
            assertEquals(1, store.snapshot().lyricsActiveIndex)
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
            assertEquals(2_500L, store.snapshot().lyricsPositionMs)
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
