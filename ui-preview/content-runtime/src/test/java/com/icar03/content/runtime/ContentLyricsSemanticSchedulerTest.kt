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
import org.robolectric.shadows.ShadowSystemClock
import java.time.Duration

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentLyricsSemanticSchedulerTest {
    private val main get() = shadowOf(Looper.getMainLooper())
    private fun store(media: ContentPorts.MediaPort = ContentPorts.PreviewMediaPort()) = ContentStore(
        RuntimeEnvironment.getApplication(), ContentPorts.PreviewVehiclePort(), media,
        object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
            override fun write(kind: Int, percent: Int) = false
        })
    private fun idle(ms: Long) = main.idleFor(Duration.ofMillis(ms))

    @Test fun finiteBluetoothCorrectionSchedulesRowBoundariesBeforeAndAfterTheRampWithoutCallbacks() {
        val store = store()
        fun bluetooth(position: Long, sequence: Long) = ContentPorts.MediaSnapshot(
            true, false, "蓝牙音乐", true, 1, "Song", "Artist", true, true,
            null, "", "Album", 30_000L, 0L, 0L, 0f, "", ContentPorts.MediaSongIdentity.SONG,
            PlaybackState.STATE_PLAYING, sequence, position, -1, SystemClock.elapsedRealtime())
        try {
            store.startLyrics()
            val initial = bluetooth(10_000, 1)
            store.acceptMediaSnapshot(initial)
            store.acceptLyricsSnapshot(lyrics(initial,
                listOf(row(10_000, 11_000), row(11_000, 12_000), row(12_000, 13_000))))
            idle(200)
            val old = store.snapshot().lyricsAnchor
            val before = old.sampleAt(SystemClock.elapsedRealtime())
            store.acceptMediaSnapshot(bluetooth(10_120, 2))
            val anchor = store.snapshot().lyricsAnchor
            assertEquals(before, anchor.sampleAt(SystemClock.elapsedRealtime()))
            assertEquals(-80.0, anchor.trajectory.correctionMs, 0.0)
            assertEquals(1_000L, anchor.trajectory.correctionDurationMs)
            val seen = mutableListOf<ContentState>()
            store.addListener { seen.add(it) }; seen.clear()
            for ((target, active) in listOf(11_000L to 1, 12_000L to 2)) {
                val delay = requireNotNull(anchor.trajectory.delayUntilSample(target, SystemClock.elapsedRealtime()))
                assertEquals(Duration.ofMillis(SystemClock.uptimeMillis() + delay), main.nextScheduledTaskTime)
                idle(delay - 1)
                assertTrue(seen.isEmpty())
                assertTrue(anchor.sampleAt(SystemClock.elapsedRealtime()) < target)
                idle(1)
                assertEquals(1, seen.size)
                assertEquals(active, store.snapshot().lyricsActiveIndex)
                assertSame(anchor, store.snapshot().lyricsAnchor)
                seen.clear()
            }
            assertEquals(1f, anchor.speed, 0f)
            assertEquals(1_000L, anchor.sampleAt(SystemClock.elapsedRealtime() + 1_000) -
                anchor.sampleAt(SystemClock.elapsedRealtime()))
        } finally { store.destroy() }
    }

    @Test fun tenSecondsOfOneStableLineHaveZeroTickPublicationsAndOneUnchangedAnchorAndDeadline() {
        val store = store()
        try {
            store.startLyrics()
            val media = media(0, duration = 50_000)
            store.acceptMediaSnapshot(media)
            val body = lyrics(media, listOf(row(0, 20_000), row(20_000, 22_000)))
            store.acceptLyricsSnapshot(body)
            val first = store.snapshot()
            val deadline = main.nextScheduledTaskTime
            assertEquals(Duration.ofMillis(SystemClock.uptimeMillis() + 20_000), deadline)
            val seen = mutableListOf<ContentState>()
            store.addListener { seen.add(it) }
            seen.clear()
            repeat(100) {
                idle(100)
                store.acceptMediaSnapshot(media) // repeated real facts must not reset the deadline.
                assertSame(first.lyricsAnchor, store.snapshot().lyricsAnchor)
            }
            store.acceptLyricsSnapshot(body)
            assertEquals(0, seen.size)
            assertEquals(10_000L, first.lyricsAnchor.sampleAt(SystemClock.elapsedRealtime()))
            assertEquals(0L, store.snapshot().lyricsPositionMs)
            assertSame(first.lyricsLines, store.snapshot().lyricsLines)
            assertEquals(first.lyricsAnchor.revision, store.snapshot().lyricsAnchor.revision)
            assertEquals(deadline, main.nextScheduledTaskTime)
            idle(10_000)
            assertEquals(1, seen.size)
            assertEquals(1, seen.single().lyricsActiveIndex)
            assertSame(first.lyricsAnchor, seen.single().lyricsAnchor)
        } finally { store.destroy() }
    }

    @Test fun rowEndGapTailLeadNextRowAndDurationWakeExactlyOnceWithoutAnyMediaCallbacks() {
        val store = store()
        try {
            val emptyQueue = main.nextScheduledTaskTime
            store.startLyrics()
            val media = media(0, duration = 10_000)
            store.acceptMediaSnapshot(media)
            store.acceptLyricsSnapshot(lyrics(media, listOf(row(1_000, 2_000), row(8_000, 9_000))))
            val anchor = store.snapshot().lyricsAnchor
            val seen = mutableListOf<ContentState>()
            store.addListener { seen.add(it) }; seen.clear()
            val boundaries = listOf(1_000L, 2_000L, 3_200L, 7_200L, 8_000L, 9_000L, 10_000L)
            val active = listOf(0, -1, -1, -1, 1, -1, -1)
            val scroll = listOf(0, 0, 0, 1, 1, 1, 1)
            var previous = 0L
            boundaries.forEachIndexed { index, position ->
                idle(position - previous - 1)
                assertEquals(index, seen.size)
                idle(1)
                assertEquals(index + 1, seen.size)
                val state = seen.last()
                assertEquals(position, state.lyricsPositionMs)
                assertEquals(active[index], state.lyricsActiveIndex)
                assertEquals(scroll[index], state.lyricsScrollIndex)
                assertSame(anchor, state.lyricsAnchor)
                if (position == 3_200L) {
                    assertEquals(3_200L, state.lyricsGapStartMs)
                    assertEquals(7_200L, state.lyricsGapEndMs)
                } else assertEquals(-1L, state.lyricsGapStartMs)
                previous = position
            }
            // The final row ended at 9000: 10000 still publishes exactly one atEnd status.
            assertEquals(10_000L, seen.last().lyricsPositionMs)
            assertEquals(emptyQueue, main.nextScheduledTaskTime)
            idle(20_000)
            assertEquals(boundaries.size, seen.size)
        } finally { store.destroy() }
    }

    @Test fun equalStartAndHeldPreviousVoicesExitEvenWhenTheMainIndexAndScrollAreUnchanged() {
        val store = store()
        try {
            store.startLyrics()
            val media = media(0, duration = 50_000)
            store.acceptMediaSnapshot(media)
            store.acceptLyricsSnapshot(lyrics(media, listOf(row(0, 4_000), row(0, 2_000))))
            val anchor = store.snapshot().lyricsAnchor
            val seen = mutableListOf<ContentState>()
            store.addListener { seen.add(it) }; seen.clear()
            idle(2_000)
            assertEquals(1, seen.size)
            assertArrayEquals(intArrayOf(0), seen.last().lyricsActiveIndices)
            assertEquals(0, seen.last().lyricsActiveIndex)
            assertEquals(1, seen.last().lyricsScrollIndex)
            val replacement = media(1_500, duration = 50_000)
            store.acceptMediaSnapshot(replacement)
            store.acceptLyricsSnapshot(lyrics(replacement, listOf(row(0, 2_500), row(1_000, 4_000))))
            assertArrayEquals(intArrayOf(0, 1), store.snapshot().lyricsActiveIndices)
            seen.clear()
            val heldAnchor = store.snapshot().lyricsAnchor
            idle(999)
            assertTrue(seen.isEmpty())
            idle(1)
            assertEquals(1, seen.size)
            assertEquals(1, seen.single().lyricsActiveIndex)
            assertEquals(1, seen.single().lyricsScrollIndex)
            assertArrayEquals(intArrayOf(1), seen.single().lyricsActiveIndices)
            assertSame(heldAnchor, seen.single().lyricsAnchor)
            assertNotSame(anchor, heldAnchor)
        } finally { store.destroy() }
    }

    @Test fun aDelayedFirstWordSelfWakesAtItsRealStartAndDoesNotNeedAnotherPublisherFrame() {
        val store = store()
        try {
            store.startLyrics()
            val media = media(0)
            store.acceptMediaSnapshot(media)
            val delayed = ContentPorts.LyricsLine(0, "delayed", "", "",
                listOf(ContentPorts.LyricsWord(5_000, 6_000, "real word")), 6_000, emptyList(), 0)
            store.acceptLyricsSnapshot(lyrics(media, listOf(delayed)))
            assertEquals(-1, store.snapshot().lyricsActiveIndex)
            assertEquals(0, store.snapshot().lyricsScrollIndex)
            val anchor = store.snapshot().lyricsAnchor
            var publications = 0
            store.addListener { publications++ }; publications = 0
            idle(4_999)
            assertEquals(0, publications)
            idle(1)
            assertEquals(1, publications)
            assertEquals(0, store.snapshot().lyricsActiveIndex)
            assertSame(anchor, store.snapshot().lyricsAnchor)
        } finally { store.destroy() }
    }

    @Test fun pauseSeekSpeedAndLateRealMediaImmediatelyReplaceTheSinglePendingDeadline() {
        val store = store()
        try {
            val emptyQueue = main.nextScheduledTaskTime
            store.startLyrics()
            val initial = media(0, duration = 30_000)
            store.acceptMediaSnapshot(initial)
            store.acceptLyricsSnapshot(lyrics(initial, listOf(row(0), row(10_000))))
            idle(2_000)
            store.acceptMediaSnapshot(media(0, time = initial.positionElapsedRealtimeMs, playing = false, duration = 30_000))
            val paused = store.snapshot()
            assertEquals(2_000L, paused.lyricsPositionMs)
            assertEquals(0f, paused.lyricsAnchor.speed, 0f)
            assertEquals(emptyQueue, main.nextScheduledTaskTime)
            idle(5_000)
            assertEquals(paused.lyricsPositionMs, store.snapshot().lyricsPositionMs)
            store.acceptMediaSnapshot(media(8_000, playing = false, duration = 30_000))
            assertEquals(8_000L, store.snapshot().lyricsPositionMs)
            assertEquals(emptyQueue, main.nextScheduledTaskTime)
            store.acceptMediaSnapshot(media(8_000, speed = 2f, duration = 30_000))
            val resumed = store.snapshot().lyricsAnchor
            assertEquals(Duration.ofMillis(SystemClock.uptimeMillis() + 1_000), main.nextScheduledTaskTime)
            idle(999)
            assertEquals(0, store.snapshot().lyricsActiveIndex)
            idle(1)
            assertEquals(1, store.snapshot().lyricsActiveIndex)
            idle(500)
            val publisherTime = SystemClock.elapsedRealtime() - 1_000
            store.acceptMediaSnapshot(media(15_000, time = publisherTime, speed = 2f, duration = 30_000))
            val late = store.snapshot()
            assertNotSame(resumed, late.lyricsAnchor)
            assertEquals(15_000L, late.lyricsAnchor.basePositionMs)
            assertEquals(publisherTime, late.lyricsAnchor.capturedAtMs)
            assertEquals(17_000L, late.lyricsPositionMs)
            assertEquals(Duration.ofMillis(SystemClock.uptimeMillis() + 6_500), main.nextScheduledTaskTime)
            idle(6_500)
            assertEquals(30_000L, store.snapshot().lyricsPositionMs)
            assertEquals(-1, store.snapshot().lyricsActiveIndex)
            assertEquals(emptyQueue, main.nextScheduledTaskTime)
        } finally { store.destroy() }
    }

    @Test fun lateTimerDeliverySkipsObsoleteRowsAndSchedulesFromCurrentElapsedTime() {
        val store = store()
        try {
            store.startLyrics()
            val media = media(0, duration = 4_000)
            store.acceptMediaSnapshot(media)
            store.acceptLyricsSnapshot(lyrics(media, (0..3).map { row(it * 1_000L) }))
            val anchor = store.snapshot().lyricsAnchor
            val seen = mutableListOf<ContentState>()
            store.addListener { seen.add(it) }; seen.clear()
            ShadowSystemClock.advanceBy(Duration.ofMillis(3_500))
            main.idle()
            assertEquals(1, seen.size)
            assertEquals(3, seen.single().lyricsActiveIndex)
            assertEquals(3_500L, seen.single().lyricsPositionMs)
            assertSame(anchor, seen.single().lyricsAnchor)
            assertEquals(Duration.ofMillis(SystemClock.uptimeMillis() + 500), main.nextScheduledTaskTime)
            idle(500)
            assertEquals(2, seen.size)
            assertEquals(4_000L, seen.last().lyricsPositionMs)
        } finally { store.destroy() }
    }

    @Test fun zeroConsumersUnknownAndPlainTextHaveNoTimerAndResumeReusesTheTrustedClock() {
        val store = store()
        try {
            val emptyQueue = main.nextScheduledTaskTime
            val initial = media(0, duration = 20_000)
            store.acceptMediaSnapshot(initial)
            store.acceptLyricsSnapshot(lyrics(initial, listOf(row(0), row(1_000))))
            assertTrue(store.snapshot().lyricsLines.isEmpty())
            assertEquals(emptyQueue, main.nextScheduledTaskTime)
            store.startLyrics(); store.startLyrics()
            val body = lyrics(initial, listOf(row(0), row(1_000), row(2_000)))
            store.acceptLyricsSnapshot(body)
            val anchor = store.snapshot().lyricsAnchor
            assertNotEquals(emptyQueue, main.nextScheduledTaskTime)
            store.stopLyrics()
            assertNotEquals(emptyQueue, main.nextScheduledTaskTime) // one lease remains.
            store.stopLyrics()
            assertEquals(emptyQueue, main.nextScheduledTaskTime)
            val stopped = store.snapshot()
            var publications = 0
            store.addListener { publications++ }; publications = 0
            idle(5_000)
            store.acceptLyricsSnapshot(lyrics(initial, listOf(row(0, 1_000))))
            assertEquals(0, publications)
            assertEquals(stopped.lyricsPositionMs, store.snapshot().lyricsPositionMs)
            assertSame(stopped.lyricsLines, store.snapshot().lyricsLines)
            assertSame(anchor, store.snapshot().lyricsAnchor)
            store.startLyrics()
            assertEquals(1, publications)
            assertEquals(2, store.snapshot().lyricsActiveIndex)
            assertEquals(5_000L, store.snapshot().lyricsPositionMs)
            assertSame(anchor, store.snapshot().lyricsAnchor)
            store.acceptLyricsSnapshot(ContentPorts.LyricsSnapshot(initial.recordingKey(), initial.generation,
                ContentPorts.LyricsSnapshot.READY, listOf(row(0)), null, false))
            assertFalse(store.snapshot().lyricsTimelineReady)
            assertEquals(-1L, store.snapshot().lyricsPositionMs)
            assertEquals(emptyQueue, main.nextScheduledTaskTime)
            store.acceptMediaSnapshot(media(-1, title = "Unknown", generation = 2))
            val unknown = media(-1, title = "Unknown", generation = 2)
            store.acceptLyricsSnapshot(lyrics(unknown, listOf(row(0), row(1_000))))
            assertTrue(store.snapshot().lyricsTimelineReady)
            assertEquals(0L, store.snapshot().lyricsPositionMs)
            assertNotEquals(emptyQueue, main.nextScheduledTaskTime)
            val before = publications
            idle(1_000)
            assertTrue(publications > before)
            assertEquals(1_000L, store.snapshot().lyricsPositionMs)
        } finally { store.destroy() }
    }

    @Test fun bodyDurationAndSourceChangesCancelObsoleteBoundariesAndRejectLateBodies() {
        val store = store()
        try {
            store.startLyrics()
            val initial = media(0, duration = 30_000)
            val oldBody = lyrics(initial, listOf(row(0), row(10_000)))
            store.acceptMediaSnapshot(initial); store.acceptLyricsSnapshot(oldBody)
            idle(2_000)
            val replacement = media(8_000, duration = 9_000)
            store.acceptMediaSnapshot(replacement)
            store.acceptLyricsSnapshot(oldBody)
            assertTrue(store.snapshot().lyricsLines.isEmpty())
            store.acceptLyricsSnapshot(lyrics(replacement, listOf(row(0))))
            assertEquals(9_000L, store.snapshot().lyricsAnchor.durationMs)
            assertEquals(Duration.ofMillis(SystemClock.uptimeMillis() + 1_000), main.nextScheduledTaskTime)
            idle(1_000)
            assertEquals(9_000L, store.snapshot().lyricsPositionMs)
            assertEquals(-1, store.snapshot().lyricsActiveIndex)
            val switched = media(-1, source = "USB音乐", generation = 2)
            store.acceptMediaSnapshot(switched)
            assertFalse(store.snapshot().lyricsTimelineReady)
            store.acceptLyricsSnapshot(oldBody)
            assertTrue(store.snapshot().lyricsLines.isEmpty())
            assertSame(ContentPorts.LyricsPlaybackAnchor.unknown(), store.snapshot().lyricsAnchor)
        } finally { store.destroy() }
    }

    @Test fun fractionalSpeedSchedulesTheFirstIntegerChangeAndRewindCrossesAtBoundaryMinusOne() {
        val forward = store()
        try {
            forward.startLyrics()
            val initial = media(0, speed = 0.7f, duration = 10_000)
            forward.acceptMediaSnapshot(initial)
            forward.acceptLyricsSnapshot(lyrics(initial, listOf(row(0), row(1_000))))
            val anchor = forward.snapshot().lyricsAnchor
            assertEquals(Duration.ofMillis(SystemClock.uptimeMillis() + 1_429), main.nextScheduledTaskTime)
            idle(1_428)
            assertEquals(0, forward.snapshot().lyricsActiveIndex)
            assertEquals(999L, anchor.sampleAt(SystemClock.elapsedRealtime()))
            idle(1)
            assertEquals(1, forward.snapshot().lyricsActiveIndex)
            assertEquals(1_000L, forward.snapshot().lyricsPositionMs)
            assertSame(anchor, forward.snapshot().lyricsAnchor)
        } finally { forward.destroy() }
        val rewind = store()
        try {
            val emptyQueue = main.nextScheduledTaskTime
            rewind.startLyrics()
            val initial = media(2_500, speed = -1f, duration = 10_000)
            rewind.acceptMediaSnapshot(initial)
            rewind.acceptLyricsSnapshot(lyrics(initial, listOf(row(0), row(1_000), row(2_000))))
            val anchor = rewind.snapshot().lyricsAnchor
            assertEquals(Duration.ofMillis(SystemClock.uptimeMillis() + 501), main.nextScheduledTaskTime)
            idle(500)
            assertEquals(2, rewind.snapshot().lyricsActiveIndex)
            idle(1)
            assertEquals(1, rewind.snapshot().lyricsActiveIndex)
            assertEquals(1_999L, rewind.snapshot().lyricsPositionMs)
            idle(1_000)
            assertEquals(0, rewind.snapshot().lyricsActiveIndex)
            assertEquals(999L, rewind.snapshot().lyricsPositionMs)
            assertSame(anchor, rewind.snapshot().lyricsAnchor)
            assertEquals(emptyQueue, main.nextScheduledTaskTime)
            idle(10_000)
            assertEquals(0L, anchor.sampleAt(SystemClock.elapsedRealtime()))
            assertEquals(999L, rewind.snapshot().lyricsPositionMs)
        } finally { rewind.destroy() }
    }

    @Test fun cachedMediaSourceCapabilityChangesPublishOnceForTheSamePayloadAndDestroyWithdrawsIt() {
        var available = false
        val mediaPort = object : ContentPorts.MediaPort {
            override fun isAvailable() = false
            override fun isSourceAvailable() = available
            override fun requestPlayback(playing: Boolean) = false
            override fun requestNext() = false
            override fun requestSource(source: String?) = false
            override fun start(listener: ContentPorts.MediaSnapshotListener?) {}
            override fun stop() {}
        }
        val store = store(mediaPort)
        try {
            val payload = media(0)
            store.acceptMediaSnapshot(payload)
            val anchor = store.snapshot().lyricsAnchor
            val seen = mutableListOf<Boolean>()
            store.addListener { seen.add(it.mediaSourceWriteAvailable) }; seen.clear()
            assertFalse(store.snapshot().mediaSourceWriteAvailable)
            available = true
            store.acceptMediaSnapshot(payload)
            assertEquals(listOf(true), seen)
            assertSame(anchor, store.snapshot().lyricsAnchor)
            store.acceptMediaSnapshot(payload)
            assertEquals(listOf(true), seen)
            available = false
            store.acceptMediaSnapshot(payload)
            assertEquals(listOf(true, false), seen)
            store.acceptMediaSnapshot(payload)
            assertEquals(listOf(true, false), seen)
            available = true
            assertTrue(store.snapshot().mediaSourceWriteAvailable)
            store.destroy()
            assertFalse(store.snapshot().mediaSourceWriteAvailable)
        } finally { store.destroy() }
    }

    private fun row(start: Long, end: Long = -1) = ContentPorts.LyricsLine(start, "row $start", "", "", emptyList(), end, emptyList(), 0)
    private fun lyrics(media: ContentPorts.MediaSnapshot, rows: List<ContentPorts.LyricsLine>) =
        ContentPorts.LyricsSnapshot(media.recordingKey(), media.generation, ContentPorts.LyricsSnapshot.READY, rows, null)
    private fun media(position: Long, time: Long = SystemClock.elapsedRealtime(), playing: Boolean = true,
        speed: Float = 1f, duration: Long = 200_000, source: String = "本机音乐", title: String = "Song", generation: Int = 1) =
        ContentPorts.MediaSnapshot(true, false, source, playing, generation, title, "Artist", true, true,
            null, "", "Album", duration, position, time, if (playing) speed else 0f, "",
            ContentPorts.MediaSongIdentity.SONG, if (playing) PlaybackState.STATE_PLAYING else PlaybackState.STATE_PAUSED,
            0, -1, -1, 0)
}
