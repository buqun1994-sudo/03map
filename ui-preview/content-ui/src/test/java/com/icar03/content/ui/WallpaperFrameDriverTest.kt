package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.RectF
import android.graphics.Typeface
import android.os.SystemClock
import android.view.ViewTreeObserver
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import org.robolectric.shadows.ShadowSystemClock
import java.io.File
import java.time.Duration
import kotlin.coroutines.CoroutineContext

/** Formal UI clock/fallback contracts; synthetic media only, no vehicle or new source clock. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class WallpaperFrameDriverTest {
    @get:Rule val compose = createComposeRule()
    private val host = "frame-driver-fixture"
    private fun <T> value(key: SemanticsPropertyKey<T>) = compose.onNode(
        SemanticsMatcher.keyIsDefined(key), useUnmergedTree = true).fetchSemanticsNode().config[key]

    private fun source(key: String = "first", speed: Float = 1f) = LyricsState(
        recordingKey = key,
        lines = listOf(LyricLine(0, "Fallback ink remains visible",
            words = listOf(LyricWord(0, 500, "Fallback ink remains visible")), endTimeMs = 500)),
        activeIndex = 0, activeIndices = listOf(0), scrollIndex = 0,
        timelineReady = true, positionMs = 0, capturedAtMs = SystemClock.elapsedRealtime(),
        playbackSpeed = speed, durationMs = 500,
    )

    private fun mount(initial: () -> LyricsState = { source() }): MutableState<LyricsState> {
        ShadowSystemClock.advanceBy(Duration.ofMillis(1_000))
        val current = mutableStateOf(initial())
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalLyricGeometryDispatcher provides Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined) {
                Box(Modifier.fillMaxSize().background(androidx.compose.ui.graphics.Color.Black).testTag(host)) {
                    WallpaperLyrics(current.value, true)
                }
            }
        }
        dispatchFocus(true)
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
        assertTrue(value(LyricFrameRunning))
        assertEquals(1f, current.value.playbackSpeed, 0f)
        return current
    }

    private fun projectToEndWithoutChangingTheSource(current: MutableState<LyricsState>) {
        val admitted = current.value
        ShadowSystemClock.advanceBy(Duration.ofMillis(1_000))
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
        assertSame("the source did not send an end/pause snapshot", admitted, current.value)
        assertTrue(admitted.positionMs < admitted.durationMs)
        assertFalse("projected duration stops the actual frame gate", value(LyricFrameRunning))
        assertEquals(1f, value(LyricWordProgress), .001f)
        compose.mainClock.advanceTimeBy(128); compose.waitForIdle()
        assertFalse(value(LyricFrameRunning))
    }

    @Test fun projectedEndThenSameRecordingSeekBackRestartsWithoutAnArtificialPause() {
        val current = mount()
        projectToEndWithoutChangingTheSource(current)
        compose.runOnIdle {
            current.value = current.value.copy(positionMs = 0, capturedAtMs = SystemClock.elapsedRealtime())
        }
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
        assertEquals("first", current.value.recordingKey)
        assertEquals(1f, current.value.playbackSpeed, 0f)
        assertTrue(value(LyricFrameRunning))
        assertTrue("seek restored the current real word interval", value(LyricWordProgress) < 1f)
        projectToEndWithoutChangingTheSource(current)
    }

    @Test fun projectedEndThenNewRecordingRestartsWithoutTogglingPlayback() {
        val current = mount()
        projectToEndWithoutChangingTheSource(current)
        compose.runOnIdle { current.value = source("second") }
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
        assertEquals("second", current.value.recordingKey)
        assertTrue(current.value.timelineReady)
        assertEquals(1f, current.value.playbackSpeed, 0f)
        assertTrue(value(LyricFrameRunning))
        assertTrue(value(LyricWordProgress) < 1f)
    }

    @Test fun scheduleMergesOnlyOverlappingOrTouchingHalfOpenIntervals() {
        val schedule = LyricFrameSchedule(listOf(
            LyricFrameInterval(300.0, 400.0), LyricFrameInterval(50.0, 100.0),
            LyricFrameInterval(0.0, 75.0), LyricFrameInterval(100.0, 125.25),
            LyricFrameInterval(-1.0, 10.0), LyricFrameInterval(200.0, 200.0),
            LyricFrameInterval(Double.NaN, 800.0),
        ))
        assertEquals(listOf(LyricFrameInterval(0.0, 125.25), LyricFrameInterval(300.0, 400.0)), schedule.intervals)
        assertTrue(schedule.needsFramesAt(125))
        assertFalse(schedule.needsFramesAt(126))
        assertFalse(schedule.needsFramesAt(299))
        assertTrue(schedule.needsFramesAt(300))
        assertFalse(schedule.needsFramesAt(400))
        assertFalse(schedule.hasRemainingAt(400))
        assertFalse(schedule.hasRemainingAt(-1))
    }

    @Test fun sleepingBoundaryUsesPlaybackSpeedAndStopsAtDuration() {
        val schedule = LyricFrameSchedule(listOf(LyricFrameInterval(100.25, 1_100.25)))
        assertEquals(101L, schedule.delayUntilNext(0, 1f))
        assertEquals(51L, schedule.delayUntilNext(0, 2f))
        assertEquals(201L, schedule.delayUntilNext(0, .5f))
        assertEquals(1L, schedule.delayUntilNext(100, 1f))
        assertEquals(0L, schedule.delayUntilNext(101, 1f))
        assertNull(schedule.delayUntilNext(0, 0f))
        assertNull(schedule.delayUntilNext(0, Float.NaN))
        assertNull(schedule.delayUntilNext(0, Float.POSITIVE_INFINITY))
        assertNull("a visual start beyond the song end has no driver", schedule.delayUntilNext(0, 1f, 100))
        assertFalse(schedule.hasRemainingAt(500, 500))
        assertNull(schedule.delayUntilNext(1_101, 1f))
    }

    @Test fun geometryScheduleUsesMappedWordsAndSafeGlyphOnsetsWithoutWaitingForInk() {
        val word = LyricWord(50, 151, "A")
        val reveal = LyricReveal(word, 0f, 20f, false, 0f, 20f, 1f)
        val visual = LyricVisualLine(0, 0, 48, listOf(
            LyricGlyph(RectF(0f, 0f, 10f, 48f), reveal, .25f, .5f, movable = true),
            LyricGlyph(RectF(10f, 0f, 20f, 48f), reveal, .75f, 1f, movable = false),
        ), listOf(reveal))
        val base = measuredRow(LyricLine(0, "A"))
        val original = base.tracks.single()
        val unmapped = LyricWord(2_000, 9_000, "unmapped source word")
        val track = LyricTrack(original.layout, original.top, original.alpha, original.isMain,
            listOf(word, unmapped), listOf(visual))
        val rows = listOf(NativeLyricRow(listOf(track), base.height, base.mainPivotX))
        val window = listOf(LyricSliceAddress(0, 0, 0))
        val schedule = lyricFrameSchedule(rows, setOf(0), window)
        assertEquals("safe onset is 50 + 101*.25; unsafe later glyph adds no rise",
            listOf(LyricFrameInterval(50.0, 1_075.25)), schedule.intervals)
        assertTrue("a short source word retains its complete fixed rise", schedule.needsFramesAt(1_075))
        assertFalse(schedule.needsFramesAt(1_076))
        assertFalse("track.words alone cannot schedule ink that was never mapped", schedule.hasRemainingAt(2_000))
        assertTrue(lyricFrameSchedule(rows, emptySet(), window).intervals.isEmpty())
        assertTrue(lyricFrameSchedule(rows, setOf(0), emptyList()).intervals.isEmpty())
        val gap = LyricWaitRow(-1, 3_000, 4_000)
        assertEquals(listOf(LyricFrameInterval(3_000.0, 4_000.0)),
            lyricFrameSchedule(rows, emptySet(), window, gap).intervals)
    }

    @Test fun realGeometryIncludesBackgroundWordsAndRejectsUnmappedWords() {
        val row = measuredRow(LyricLine(0, "A", words = listOf(LyricWord(100, 200, "A"),
            LyricWord(10_000, 20_000, "absent from this line")),
            backgroundWords = listOf(LyricWord(4_000, 5_000, "B"))))
        val window = row.tracks.flatMapIndexed { index, track ->
            track.visualLines.indices.map { LyricSliceAddress(0, index, it) }
        }
        assertEquals(listOf(LyricFrameInterval(100.0, 1_100.0), LyricFrameInterval(4_000.0, 5_000.0)),
            lyricFrameSchedule(listOf(row), setOf(0), window).intervals)
    }

    @Test fun wrappedWordSchedulesOnlyItsVisibleFeatherAndRiseIntervals() {
        val word = LyricWord(1_000, 2_100, "whole source word")
        for (rtl in listOf(false, true)) {
            val reveal = LyricReveal(word, 10f, 30f, rtl, before = 40f, total = 100f, feather = 10f)
            val base = measuredRow(LyricLine(0, "A"))
            val original = base.tracks.single()
            val visual = LyricVisualLine(0, 0, 48, emptyList(), listOf(reveal))
            val track = LyricTrack(original.layout, original.top, original.alpha, original.isMain,
                listOf(word), listOf(visual))
            val schedule = lyricFrameSchedule(listOf(NativeLyricRow(listOf(track), base.height, base.mainPivotX)),
                setOf(0), listOf(LyricSliceAddress(0, 0, 0)))
            val interval = schedule.intervals.single()
            assertEquals("feather first enters this fragment at source fraction 40/110", 1_400.0, interval.startMs, .001)
            assertEquals("feather leaves this fragment at source fraction 70/110", 1_700.0, interval.endMs, .001)
            assertFalse(schedule.needsFramesAt(1_399))
            assertTrue(schedule.needsFramesAt(1_500))
            assertFalse(schedule.needsFramesAt(1_701))
        }
        val text = "原生多行词不会因不可见片段继续空转".repeat(20)
        val longWord = LyricWord(1_000, 61_000, text)
        val row = measuredRow(LyricLine(1_000, text, words = listOf(longWord)))
        assertTrue(row.tracks.single().visualLines.size > 10)
        val first = lyricFrameSchedule(listOf(row), setOf(0), listOf(LyricSliceAddress(0, 0, 0)))
        val lastEnd = first.intervals.last().endMs
        assertTrue("only the first native fragment and its fixed rises are visible", lastEnd < 10_000.0)
        assertFalse("a source word may still be playing while all visible ink is stationary",
            first.hasRemainingAt(kotlin.math.ceil(lastEnd).toLong()))
        val last = lyricFrameSchedule(listOf(row), setOf(0),
            listOf(LyricSliceAddress(0, 0, row.tracks.single().visualLines.lastIndex)))
        assertTrue("browsing to the last fragment uses that fragment's real source interval",
            last.intervals.first().startMs > 50_000.0)
    }

    @Test fun viewportScheduleExcludesOffscreenRowsButKeepsTheUpwardLiftMargin() {
        val row = measuredRow(LyricLine(0, "A", words = listOf(LyricWord(0, 500, "A"))))
        val rows = listOf(row)
        val tops = floatArrayOf(0f, row.height.toFloat())
        val track = row.tracks.single()
        val visual = track.visualLines.single()
        val viewport = 200f
        val lift = 2.5f
        val atBottom = viewport - track.top - visual.top
        assertEquals(listOf(LyricSliceAddress(0, 0, 0)), lyricFrameWindow(rows, tops, atBottom + 1f, viewport, lift))
        assertTrue(lyricFrameWindow(rows, tops, atBottom + lift, viewport, lift).isEmpty())
        assertTrue(lyricFrameWindow(rows, tops, -track.top - visual.bottom, viewport, lift).isEmpty())
    }

    @Test fun actualDriverSleepsBetweenWordsAndWakesAtTheNextSourceBoundaryWithoutASnapshot() {
        val current = mount { separatedWords() }
        val admitted = current.value
        advancePosition(1_500)
        assertFalse("the current row is still emphasized, but its first rise is complete", value(LyricFrameRunning))
        assertEquals(1f, value(LyricWordProgress), .001f)
        val sleepingSample = value(LyricFrameElapsed)
        advancePosition(500, frames = 128)
        assertEquals("quiet source time requests no high-frequency samples", sleepingSample, value(LyricFrameElapsed))
        advancePosition(3_500, frames = 4_000)
        assertSame("no new source anchor was sent to wake the driver", admitted, current.value)
        assertTrue("a timed wait wakes inside the next real reveal", value(LyricFrameRunning))
        assertTrue(value(LyricFrameElapsed) > sleepingSample)
        advancePosition(10_000)
        assertFalse("all source words and rises ended before this still-playing song", value(LyricFrameRunning))
        assertTrue(current.value.positionMs < current.value.durationMs)
        val finishedSample = value(LyricFrameElapsed)
        advancePosition(500, frames = 128)
        assertEquals("a completed source schedule has no sustained ticker", finishedSample, value(LyricFrameElapsed))
    }

    @Test fun shortWordKeepsItsFixedRiseAfterRevealEndsAndThenStopsBeforeSongDuration() {
        val current = mount { source().copy(lines = listOf(LyricLine(0, "A",
            words = listOf(LyricWord(0, 100, "A")), endTimeMs = 100)), durationMs = 5_000) }
        val admitted = current.value
        advancePosition(200)
        assertEquals(1f, value(LyricWordProgress), .001f)
        assertTrue("word duration does not truncate its one-second rise", value(LyricFrameRunning))
        advancePosition(1_000)
        assertSame(admitted, current.value)
        assertFalse("the fixed rise completes without waiting for song duration", value(LyricFrameRunning))
    }

    @Test fun seekDuringSleepSamplesImmediatelyAndRetainsTheOwnerAcrossAQuickReturn() {
        val current = mount { separatedWords() }
        advancePosition(1_500)
        assertFalse(value(LyricFrameRunning))
        compose.runOnIdle {
            current.value = current.value.copy(positionMs = 5_500, capturedAtMs = SystemClock.elapsedRealtime())
        }
        compose.mainClock.advanceTimeBy(32); compose.waitForIdle()
        assertTrue("seek releases the former waiting boundary immediately", value(LyricFrameRunning))
        compose.runOnIdle {
            current.value = current.value.copy(positionMs = 2_000, capturedAtMs = SystemClock.elapsedRealtime())
        }
        compose.mainClock.advanceTimeBy(32); compose.waitForIdle()
        assertFalse(value(LyricFrameRunning))
        compose.runOnIdle {
            current.value = current.value.copy(positionMs = 5_500, capturedAtMs = SystemClock.elapsedRealtime())
        }
        compose.mainClock.advanceTimeBy(32); compose.waitForIdle()
        assertTrue(value(LyricFrameRunning))
        val resumedSample = value(LyricFrameElapsed)
        advancePosition(100)
        assertTrue("the driver survives without another anchor effect", value(LyricFrameElapsed) > resumedSample)
    }

    @Test fun pauseCancelsASleepingWaitAndFocusLossStopsTheResumedFrames() {
        val current = mount { separatedWords() }
        advancePosition(1_500)
        compose.runOnIdle {
            current.value = current.value.copy(positionMs = 2_000, playbackSpeed = 0f,
                capturedAtMs = SystemClock.elapsedRealtime())
        }
        compose.mainClock.advanceTimeBy(32); compose.waitForIdle()
        val pausedSample = value(LyricFrameElapsed)
        advancePosition(1_000, frames = 4_000)
        assertFalse(value(LyricFrameRunning))
        assertEquals("the former sleeping wait was cancelled", pausedSample, value(LyricFrameElapsed))
        compose.runOnIdle {
            current.value = current.value.copy(positionMs = 5_500, playbackSpeed = 1f,
                capturedAtMs = SystemClock.elapsedRealtime())
            // autoAdvance=false after a long idle: deliver the snapshot notification before
            // driving frames, otherwise the Android apply handler still holds the pause anchor.
            androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
        }
        compose.mainClock.advanceTimeBy(32); compose.waitForIdle()
        assertTrue("the new trusted anchor is admitted", value(LyricFramePosition) >= 5_500)
        assertTrue("resume gate: layout=${value(LyricLayoutReady)}, position=${value(LyricFramePosition)}, eligible=${value(LyricFrameEligible)}, sample=${value(LyricFrameElapsed)}, clock=${SystemClock.elapsedRealtime()}, source=${current.value}", value(LyricFrameRunning))
        dispatchFocus(false)
        compose.mainClock.advanceTimeBy(32); compose.waitForIdle()
        val hiddenSample = value(LyricFrameElapsed)
        advancePosition(100, frames = 128)
        assertFalse(value(LyricFrameRunning))
        assertEquals(hiddenSample, value(LyricFrameElapsed))
        dispatchFocus(true)
        compose.mainClock.advanceTimeBy(32); compose.waitForIdle()
        assertTrue(value(LyricFrameRunning))
    }

    private fun separatedWords() = source().copy(
        lines = listOf(LyricLine(0, "A B", words = listOf(LyricWord(0, 100, "A"),
            LyricWord(5_000, 12_000, "B")), endTimeMs = 12_000)), durationMs = 60_000,
    )
    private fun measuredRow(line: LyricLine) = prepareLyricRow(line, 400,
        LyricMetrics(40f, 48f, 22f, 20f, 14f, 4f, 3f, 2.5f), Typeface.create("sans-serif", Typeface.BOLD))
    private fun advancePosition(milliseconds: Long, frames: Long = 64) {
        ShadowSystemClock.advanceBy(Duration.ofMillis(milliseconds))
        compose.mainClock.advanceTimeBy(frames); compose.waitForIdle()
    }

    @Test fun heldPreparationUsesVisibleVectorInkWithoutRasterizingOnTheDrawThread() {
        val held = HeldPreparationDispatcher()
        val mounted = mutableStateOf(true)
        val current = source(speed = 0f)
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalLyricGeometryDispatcher provides Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides held) {
                Box(Modifier.fillMaxSize().background(androidx.compose.ui.graphics.Color.Black).testTag(host)) {
                    if (mounted.value) WallpaperLyrics(current, true)
                }
            }
        }
        dispatchFocus(true)
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
        assertTrue("the worker request is held, not secretly prepared inline", held.tasks.isNotEmpty())
        assertEquals(0, value(LyricPreparedSliceCount))
        assertTrue(value(LyricFallbackSliceCount) > 0)
        assertEquals(0, value(LyricRasterizations))
        assertFalse(value(LyricFrameRunning))
        val bitmap = captureHost()
        val pixels = IntArray(bitmap.width * bitmap.height)
        bitmap.getPixels(pixels, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
        assertTrue("unprepared viewport remains visible", pixels.count {
            Color.red(it) > 16 || Color.green(it) > 16 || Color.blue(it) > 16
        } > 20)
        assertEquals("native draw generated no cache bitmaps or blur", 0, value(LyricRasterizations))
        val directory = File("build/frames").apply { mkdirs() }
        File(directory, "wallpaper-worker-fallback.png").outputStream().use {
            assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
        // Losing visibility cancels the held worker but does not withdraw the admitted body.
        dispatchFocus(false)
        compose.mainClock.advanceTimeBy(32); compose.waitForIdle()
        compose.runOnIdle { held.releaseCancelledTasks() }
        compose.waitForIdle()
        assertEquals(0, value(LyricRasterizations))
        assertTrue(value(LyricFallbackSliceCount) > 0)
        dispatchFocus(true)
        compose.mainClock.advanceTimeBy(32); compose.waitForIdle()
        assertTrue("visibility return resumes only a bounded prepare", held.tasks.isNotEmpty())
        // Remove the owner before draining cancellations; never execute an admitted prepare.
        compose.runOnIdle { mounted.value = false }
        compose.mainClock.advanceTimeBy(32); compose.waitForIdle()
        compose.runOnIdle { held.releaseCancelledTasks() }
        compose.waitForIdle()
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun dispatchFocus(focused: Boolean) {
        val root = compose.onNodeWithTag(host).fetchSemanticsNode().root as ViewRootForTest
        val dispatch = ViewTreeObserver::class.java.getDeclaredMethod("dispatchOnWindowFocusChange", java.lang.Boolean.TYPE)
            .apply { isAccessible = true }
        compose.runOnIdle {
            dispatch.invoke(root.view.viewTreeObserver, focused)
            androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
        }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun captureHost(): Bitmap {
        val node = compose.onNodeWithTag(host).fetchSemanticsNode()
        val root = node.root as ViewRootForTest
        val bounds = node.boundsInRoot
        return compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.toInt(), bounds.height.toInt(), Bitmap.Config.ARGB_8888).also {
                Canvas(it).apply { translate(-bounds.left, -bounds.top) }.also(root.view::draw)
            }
        }
    }

    private class HeldPreparationDispatcher : CoroutineDispatcher() {
        val tasks = ArrayList<Runnable>()
        override fun dispatch(context: CoroutineContext, block: Runnable) { tasks += block }
        fun releaseCancelledTasks() {
            while (tasks.isNotEmpty()) tasks.removeAt(0).run()
        }
    }
}
