package com.icar03.content.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.Canvas as NativeCanvas
import android.graphics.Color as NativeColor
import android.graphics.Paint
import android.graphics.Rect
import android.graphics.Typeface
import android.view.View
import android.view.ViewTreeObserver
import android.view.WindowManager
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.requiredSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.dp
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File
import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.roundToInt

/** SDK 34 native View evidence with synthetic lyrics, not SDK 28 vehicle approval. */
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class WallpaperLyricsRenderTest {
    @get:Rule val compose = createComposeRule()

    private data class RenderState(
        val lyrics: LyricsState,
        val dark: Boolean = false,
        val visible: Boolean = true,
        val density: Float = 1f,
        val widthPx: Int = 640,
        val heightPx: Int = 1080,
    )

    private val state = mutableStateOf(RenderState(LyricsState()))
    private val hostTag = "wallpaper-lyrics-render-host"
    private val longText = "合成的长句需要自然换行并完整保留末尾词语，不通过缩小字号挤进视窗。".repeat(4)

    @Test
    fun currentRowIsLargeBeforeItsFirstWordAndRisesWithoutAnOnsetJump() {
        val text = "每个字符轻轻浮起"
        val lines = listOf(LyricLine(0L, "上一句已缓缓退远"),
            LyricLine(1_000L, text, "Each character rises gently", words = listOf(LyricWord(2_000L, 6_000L, text))),
            LyricLine(7_000L, "下一句安静等待"), LyricLine(9_000L, "远处的句子更加柔和"))
        val initial = LyricsState(recordingKey = "character-wave", lines = lines, timelineReady = true,
            positionMs = 1_200L, scrollIndex = 1, activeIndex = -1, durationMs = 10_000L)
        mount(initial)
        compose.runOnIdle { state.value = state.value.copy(dark = true) }
        compose.waitForIdle()
        assertEquals(setOf(1), value(LyricEmphasizedRows).toSet())
        assertEquals(0f, value(LyricWordProgress), .001f)
        val heights = value(LyricRowHeights)
        val before = captureHost("current-before-first-word")
        project(initial.copy(activeIndex = 1, activeIndices = listOf(1), positionMs = 1_900L))
        val first = captureHost("character-wave-before-rise")
        assertArrayEquals("becoming a singing row does not suddenly change font size", pixels(before), pixels(first))
        project(initial.copy(activeIndex = 1, activeIndices = listOf(1), positionMs = 2_000L))
        val riseStart = captureHost("character-wave-rise-start")
        assertArrayEquals("onset starts on the same baseline, without a downward flash", pixels(first), pixels(riseStart))
        var peak: Bitmap? = null
        listOf(2_125L, 2_250L, 2_375L, 2_500L).forEachIndexed { index, time ->
            project(initial.copy(activeIndex = 1, activeIndices = listOf(1), positionMs = time))
            val frame = captureHost("character-wave-${index + 1}")
            if (time == 2_250L) peak = frame
            assertEquals("character motion never changes row geometry", heights, value(LyricRowHeights))
        }
        assertTrue("fixed ease-out character rise affects native pixels", changedPixels(riseStart, peak!!) > 20)
        project(initial.copy(activeIndex = 1, activeIndices = listOf(1), positionMs = 8_000L))
        val complete = captureHost("character-wave-complete")
        project(initial.copy(activeIndex = 1, activeIndices = listOf(1), positionMs = 8_500L))
        assertArrayEquals("completed characters retain the slightly raised baseline after the fixed window", pixels(complete), pixels(captureHost()))
    }

    @Test
    fun wholeSongMetricsStayStableAcrossActiveRowsAndGapAnchor() {
        val lines = listOf(
            LyricLine(0L, "合成短句"),
            LyricLine(2_000L, "合成译文行", "synthetic translation", "he cheng yi wen hang"),
            LyricLine(4_000L, longText),
            LyricLine(8_000L, "合成末句"),
        )
        val initial = LyricsState(
            recordingKey = "synthetic-geometry", lines = lines,
            activeIndex = 0, scrollIndex = 1, activeIndices = listOf(0),
            timelineReady = true, positionMs = 500L, playbackSpeed = 0f,
            waitRows = listOf(LyricWaitRow(2, 6_000L, 8_000L)),
        )
        mount(initial)
        val heights = value(LyricRowHeights)
        assertEquals(lines.size, heights.size)
        assertTrue("all whole-song rows have measured height", heights.all { it > 0 })
        assertEquals(40f, value(LyricFontPixels), .01f)
        assertEquals(48f, value(LyricActiveFontPixels), .01f)
        assertEquals(48f, value(LyricTextInset), .01f)
        assertEquals(1, value(LyricScrollAnchor))
        assertEquals(0, value(ActiveLyric))
        assertTrue("translation and romanization add stable subrows", heights[1] > heights[0])
        assertTrue("long main text wraps instead of shrinking", heights[2] > heights[0] * 2)
        assertTrue("fixture exceeds native line width", nativeTextWidth(longText, 40f) > 640f - 96f)
        val first = captureHost()
        assertInkBounded(first, 1f)
        val focusRow = inkBounds(first, rowTop(1, heights, 1).roundToInt(), rowBottom(1, heights, 1).roundToInt())
        assertNotNull("scrollIndex, not activeIndex, anchors a visible row", focusRow)
        assertEquals(1080f * .41f, focusRow!!.exactCenterY(), 16f)

        project(initial.copy(activeIndex = 2, activeIndices = listOf(2), positionMs = 5_000L))
        assertEquals(heights, value(LyricRowHeights))
        assertEquals(40f, value(LyricFontPixels), .01f)
        assertEquals(1, value(LyricScrollAnchor))
        body().assertTextEquals(longText)
        assertInkBounded(captureHost(), 1f)

        project(initial.copy(activeIndex = -1, activeIndices = emptyList(), positionMs = 7_000L,
            gapStartMs = 6_000L, gapEndMs = 8_000L))
        assertEquals(-1, value(ActiveLyric))
        assertEquals(emptyList<Int>(), value(LyricActiveRows))
        assertEquals(1, value(LyricScrollAnchor))
        assertEquals(heights, value(LyricRowHeights))
        assertEquals(.5f, value(LyricGapProgress), .001f)
        assertFalse(value(LyricFrameRunning))
        assertInkBounded(captureHost(), 1f)
    }

    @Test
    fun distantSeekAndInterruptionDrawFromCurrentOffsetWithoutBlankFrames() {
        val lines = (0 until 64).map { LyricLine(it * 2_000L, "合成定位歌词第 $it 行") }
        fun at(index: Int) = LyricsState(recordingKey = "seek-path", lines = lines,
            activeIndex = index, scrollIndex = index, activeIndices = listOf(index),
            timelineReady = true, positionMs = index * 2_000L, playbackSpeed = 0f)
        mount(at(20))
        compose.mainClock.autoAdvance = false
        try {
            val start = value(LyricScrollOffset)
            project(at(50))
            compose.mainClock.advanceTimeByFrame()
            val first = value(LyricScrollOffset)
            assertEquals("seek starts at current geometry", start, first, .1f)
            repeat(8) {
                compose.mainClock.advanceTimeBy(32L)
                captureHost() // Native ink must remain present all along a large seek.
            }
            val interrupted = value(LyricScrollOffset)
            project(at(10))
            assertEquals("new seek takes over current frame before the next animation tick", interrupted, value(LyricScrollOffset), .1f)
            compose.mainClock.advanceTimeByFrame()
            repeat(16) { compose.mainClock.advanceTimeBy(32L); captureHost() }
            val settled = value(LyricScrollOffset)
            project(at(10).copy(timelineReady = false, activeIndex = -1, scrollIndex = -1,
                activeIndices = emptyList(), positionMs = -1L))
            compose.mainClock.advanceTimeBy(600L)
            assertEquals("unknown time must not scroll to the first row", settled, value(LyricScrollOffset), .1f)
            captureHost()
            project(at(0).copy(activeIndex = -1, scrollIndex = -1, activeIndices = emptyList(),
                gapStartMs = 0L, gapEndMs = 1_000L))
            repeat(16) { compose.mainClock.advanceTimeBy(32L); captureHost() }
            assertEquals("a trusted intro gap legitimately has no preceding row", -1, value(LyricScrollAnchor))
            assertTrue("real seek into the intro returns to the first row", value(LyricScrollOffset) > settled)
            project(at(0))
            repeat(16) { compose.mainClock.advanceTimeBy(32L); captureHost() }
            assertEquals("real seek to zero is retained", 0, value(LyricScrollAnchor))
        } finally { compose.mainClock.autoAdvance = true }
    }

    @Test
    fun sameRecordingUpgradeRebasesVisibleAnchorWithoutRestartingFromOldAbsoluteOffset() {
        val lines = (0 until 60).map { LyricLine(it * 2_000L, "合成升级定位第 $it 行") }
        val initial = LyricsState(recordingKey = "same-recording-upgrade", lines = lines,
            activeIndex = 20, scrollIndex = 20, activeIndices = listOf(20),
            timelineReady = true, positionMs = 40_000L, playbackSpeed = 0f)
        mount(initial)
        compose.mainClock.autoAdvance = false
        try {
            val beforeHeights = value(LyricRowHeights)
            val beforeCenter = beforeHeights.take(20).sum() + beforeHeights[20] / 2f + value(LyricScrollOffset)
            captureHost("upgrade-before")
            val upgraded = listOf(LyricLine(0L, "新增真实前奏行")) + lines.mapIndexed { i, line ->
                line.copy(translation = if (i < 20) "合成新增译文" else "",
                    words = listOf(LyricWord(line.timeMs, line.timeMs + 1_000L, line.text)))
            }
            project(initial.copy(lines = upgraded, activeIndex = 21, scrollIndex = 21, activeIndices = listOf(21)))
            // The first request frame holds the matching old document while the worker compiles.
            compose.mainClock.advanceTimeByFrame()
            assertFalse("the old document is explicitly held, never indexed by the new cursor", value(LyricLayoutReady))
            assertEquals(beforeHeights, value(LyricRowHeights))
            compose.mainClock.advanceTimeByFrame()
            assertTrue("atomic document publication is observed before measuring replacement geometry", value(LyricLayoutReady))
            val afterHeights = value(LyricRowHeights)
            assertEquals("first published replacement frame exposes the upgraded geometry", upgraded.size, afterHeights.size)
            val afterCenter = afterHeights.take(21).sum() + afterHeights[21] / 2f + value(LyricScrollOffset)
            assertEquals("same visible lyric keeps its screen position at replacement", beforeCenter, afterCenter, .2f)
            captureHost("upgrade-first-frame")
            repeat(16) { compose.mainClock.advanceTimeBy(32L); captureHost() }
            assertEquals("new Store cursor remains the only follow destination", 21, value(LyricScrollAnchor))
            assertEquals(beforeCenter, afterHeights.take(21).sum() + afterHeights[21] / 2f + value(LyricScrollOffset), .2f)
            captureHost("upgrade-settled")
        } finally { compose.mainClock.autoAdvance = true }
    }

    @Test
    fun physical640x1080At141DpiKeepsBothThemesAndNativeTextMetrics() {
        densityThemes(141, saveFrames = true)
    }

    @Test
    fun physical640x1080At212DpiKeepsBothThemesAndNativeTextMetrics() {
        densityThemes(212, saveFrames = true)
    }

    @Test
    fun physical640x1080At320DpiAndCompact320x810RemainClipped() {
        densityThemes(320, saveFrames = true)
        compose.runOnIdle { state.value = state.value.copy(widthPx = 320, heightPx = 810) }
        compose.waitForIdle()
        assertEquals(80f, value(LyricFontPixels), .01f)
        assertEquals(96f, value(LyricActiveFontPixels), .01f)
        assertEquals(96f, value(LyricTextInset), .01f)
        val heights = value(LyricRowHeights)
        assertTrue("128px text width must wrap without font resizing", heights.last() > heights[3] * 2)
        assertInkBounded(captureHost(), 2f)
    }

    @Test
    fun pausedSeeksChangeOnlyTheTimedWordMaskAndLrcStaysWholeLine() {
        val word = LyricWord(1_000L, 3_000L, "合成")
        val line = LyricLine(1_000L, "合成词语保持整行", words = listOf(word), endTimeMs = 4_000L,
            side = LyricSide.Leading)
        val initial = LyricsState(
            recordingKey = "synthetic-word-mask", lines = listOf(line), activeIndex = 0,
            scrollIndex = 0, activeIndices = listOf(0), timelineReady = false,
            positionMs = -1L, playbackSpeed = 0f, capturedAtMs = 1_000L, durationMs = 4_000L,
        )
        mount(initial)
        assertEquals(0f, value(LyricWordProgress), .001f)
        assertFalse(value(LyricFrameRunning))
        val unknown = captureHost()
        assertEquals(-1L, lyricPositionAt(initial, 90_000L))
        assertEquals(0f, lyricWordFraction(word, -1L), .001f)
        assertEquals(0f, lyricWordFraction(word.copy(endTimeMs = word.startTimeMs), 2_000L), .001f)

        val known = initial.copy(timelineReady = true, positionMs = 999L)
        project(known)
        val start = captureHost("word-paused-start")
        assertArrayEquals("unknown time never invents a word highlight", pixels(unknown), pixels(start))
        project(known.copy(positionMs = 2_000L))
        assertEquals(.5f, value(LyricWordProgress), .001f)
        assertEquals(2_000L, lyricPositionAt(known.copy(positionMs = 2_000L), 90_000L))
        val halfway = captureHost("word-paused-half")
        assertTrue("paused real media seek changes native pixels", changedPixels(start, halfway) > 20)
        val wordRight = ceil(value(LyricTextInset) + nativeTextWidth(word.text, value(LyricActiveFontPixels))).toInt() + 2
        assertChangesInside(start, halfway, 47, wordRight, 0, 1080)
        body().assertTextEquals(line.text)

        project(known.copy(positionMs = 3_000L))
        assertEquals(1f, value(LyricWordProgress), .001f)
        val end = captureHost()
        assertTrue("half and end retain distinct native word masks", changedPixels(halfway, end) > 20)
        assertChangesInside(halfway, end, 47, wordRight, 0, 1080)
        project(known.copy(positionMs = 4_000L))
        assertArrayEquals("completed word stays clamped at its endpoint", pixels(end), pixels(captureHost()))
        assertFalse(value(LyricFrameRunning))
        assertEquals(4_000L, lyricPositionAt(known.copy(playbackSpeed = 2f), 90_000L))
        assertEquals(999L, lyricPositionAt(known.copy(playbackSpeed = 1f, capturedAtMs = 90_000L), 1_000L))

        val lrc = known.copy(lines = listOf(line.copy(words = emptyList())), positionMs = 1_000L)
        project(lrc)
        val wholeLine = captureHost()
        project(lrc.copy(positionMs = 2_500L))
        assertEquals(0f, value(LyricWordProgress), .001f)
        assertFalse(value(LyricFrameRunning))
        body().assertTextEquals(line.text)
        assertArrayEquals("untimed LRC words do not get fabricated sweep progress", pixels(wholeLine), pixels(captureHost()))
    }

    @Test
    fun translationRomanizationAndDuetDirectionsRetainBackgroundWordsPastNextRow() {
        val lines = duetLines()
        val initial = duetState(lines)
        mount(initial)
        val heights = value(LyricRowHeights)
        assertEquals(listOf(0, 1), value(LyricActiveRows))
        assertEquals(1, value(ActiveLyric))
        body().assertTextEquals(lines[1].text)
        assertTrue("background adds a real subrow after translation", heights[0] > heights[1])
        val first = captureHost("duet-side-layout")
        val leading = inkBounds(first, rowTop(0, heights, 1).roundToInt(), rowBottom(0, heights, 1).roundToInt())!!
        val trailing = inkBounds(first, rowTop(1, heights, 1).roundToInt(), rowBottom(1, heights, 1).roundToInt())!!
        val chorus = inkBounds(first, rowTop(2, heights, 1).roundToInt(), rowBottom(2, heights, 1).roundToInt())!!
        assertTrue("leading source and subrows keep a visible near inset: $leading", leading.left in 40..65)
        assertTrue("trailing duet and subrows mirror the near inset: $trailing", trailing.right in 575..600)
        assertTrue("chorus uses the same left lane, never a center column: $chorus", chorus.left in 40..65)
        assertTrue("the short chorus is not centered in the viewport", chorus.exactCenterX() < 320f)

        project(initial.copy(positionMs = 3_500L))
        assertEquals(listOf(0, 1), value(LyricActiveRows))
        assertEquals(heights, value(LyricRowHeights))
        val backgroundStart = captureHost()
        val backgroundTop = floor(rowTop(0, heights, 1) + 14f + 48f + 4f + 20f + 4f + 22f).toInt()
        assertTrue("background word remains visible after the next row's rise settles", changedPixels(first, backgroundStart) > 20)
        project(initial.copy(positionMs = 4_000L))
        val backgroundEnd = captureHost()
        assertTrue("background word reaches its own endpoint", changedPixels(backgroundStart, backgroundEnd) > 20)
        assertChangesInside(backgroundStart, backgroundEnd, 47, 593, backgroundTop, ceil(rowBottom(0, heights, 1)).toInt())
        project(initial.copy(positionMs = 4_500L))
        assertArrayEquals("background mask retains its completed frame", pixels(backgroundEnd), pixels(captureHost()))
        assertEquals(heights, value(LyricRowHeights))
    }

    @Test
    fun veryLongStaticParagraphKeepsItsFirstVisibleLinesOnscreen() {
        val initial = LyricsState(recordingKey = "long-static-paragraph",
            lines = listOf(LyricLine(-1L, "合成完整长段落不能因整段缩放而空屏".repeat(220))),
            timed = false, timelineReady = false)
        mount(initial)
        assertTrue(value(LyricRowHeights).single() > 1080 * 3)
        val frame = captureHost("long-static-first-screen")
        assertNotNull("line-local scaling retains actual ink in the first viewport", inkBounds(frame, 0, 1080))
        assertFalse(value(LyricFrameRunning))
    }

    @Test
    fun staticLyricsManualBrowsePersistsUntilRecordingKeyChanges() {
        val initial = LyricsState(
            recordingKey = "synthetic-static-a",
            lines = (0 until 24).map { LyricLine(-1L, "合成静态段落 $it 保留完整文字") },
            timed = false, activeIndex = -1, scrollIndex = 0, timelineReady = false,
            positionMs = -1L, playbackSpeed = 0f,
        )
        mount(initial)
        assertEquals(-1, value(ActiveLyric))
        assertFalse(value(LyricFrameRunning))
        assertTrue(value(SemanticsProperties.StateDescription).contains("静态"))
        val top = captureHost()
        body().performTouchInput {
            swipe(Offset(width / 2f, height * .75f), Offset(width / 2f, height * .35f), 300L)
        }
        compose.waitForIdle()
        val browsed = captureHost()
        assertTrue("manual vertical drag changes native static lyric pixels", changedPixels(top, browsed) > 100)
        val heights = value(LyricRowHeights)
        project(initial.copy(capturedAtMs = 12_000L))
        assertArrayEquals("same recording does not reset manual browsing", pixels(browsed), pixels(captureHost()))
        assertFalse(value(LyricFrameRunning))
        project(initial.copy(recordingKey = "synthetic-static-b"))
        assertEquals(heights, value(LyricRowHeights))
        assertArrayEquals("new recording resets static browsing to the top", pixels(top), pixels(captureHost()))
    }

    @Test
    fun introAndInterludeUseStaticFlowSlotsOutsideDuetAndAllSubrows() {
        val lines = duetLines()
        val waits = listOf(LyricWaitRow(-1, 0L, 1_000L), LyricWaitRow(1, 5_000L, 6_000L))
        val initial = LyricsState(recordingKey = "flow-wait-slots", lines = lines, waitRows = waits,
            timelineReady = true, positionMs = 500L, durationMs = 10_000L, playbackSpeed = 0f,
            gapStartMs = 0L, gapEndMs = 1_000L)
        mount(initial)
        val heights = value(LyricRowHeights)
        val rowTops = value(LyricRowTops)
        val waitTops = value(LyricWaitRowTops)
        val slotHeight = value(LyricWaitRowHeight)
        assertEquals(2, waitTops.size)
        assertEquals(waitTops[0] + slotHeight, rowTops[0], .001f)
        assertEquals(rowTops[1] + heights[1], waitTops[1], .001f)
        assertEquals(waitTops[1] + slotHeight, rowTops[2], .001f)
        fun assertSlot(slot: Int, frame: Bitmap) {
            assertEquals(slot, value(LyricGapSlotIndex))
            val top = waitTops[slot] + value(LyricScrollOffset)
            val dots = inkBounds(frame, kotlin.math.floor(top).toInt(), ceil(top + slotHeight).toInt())
            assertNotNull("waiting slot has its own dot ink", dots)
            assertEquals("waiting dots are 12dp tall", 12f, dots!!.height().toFloat(), 2f)
            assertEquals("three dots retain a 22dp centre step", 56f, dots.width().toFloat(), 2f)
            assertEquals("dots follow the slot, never a viewport overlay", top + slotHeight / 2f, dots.exactCenterY(), 2f)
            assertEquals(1080f * .41f, dots.exactCenterY(), 2f)
        }
        assertSlot(0, captureHost("wait-slot-intro"))
        project(initial.copy(activeIndex = 1, activeIndices = listOf(0, 1), scrollIndex = 1,
            positionMs = 2_500L, gapStartMs = -1L, gapEndMs = -1L))
        assertEquals(-1, value(LyricGapSlotIndex))
        captureHost("wait-slot-duet")
        project(initial.copy(scrollIndex = 1, positionMs = 5_500L, gapStartMs = 5_000L, gapEndMs = 6_000L))
        assertSlot(1, captureHost("wait-slot-interlude"))
        project(initial.copy(activeIndex = 2, activeIndices = listOf(2), scrollIndex = 2,
            positionMs = 6_500L, gapStartMs = -1L, gapEndMs = -1L))
        assertEquals(-1, value(LyricGapSlotIndex))
        captureHost("wait-slot-next-verse")
        assertEquals("gap entry and exit never insert or remove flow rows", rowTops, value(LyricRowTops))
        assertEquals(waitTops, value(LyricWaitRowTops))
        assertEquals(heights, value(LyricRowHeights))
    }

    @Test
    fun gapDotsAndFrameGatesUseOnlyTrustedMediaIntervals() {
        val gap = LyricsState(
            recordingKey = "synthetic-gap", activeIndex = -1, scrollIndex = -1,
            timelineReady = true, positionMs = 999L, playbackSpeed = 0f,
            durationMs = 5_000L, gapStartMs = 1_000L, gapEndMs = 3_000L,
            waitRows = listOf(LyricWaitRow(-1, 1_000L, 3_000L)),
        )
        mount(gap)
        assertNull("dots are absent before the interval", inkBounds(captureHost(requireInk = false)))
        val fractions = listOf(-1L to 0f, 999L to 0f, 1_000L to 0f, 2_000L to .5f, 3_000L to 1f, 7_000L to 1f)
        fractions.forEach { (position, fraction) ->
            assertEquals("gap fraction at $position", fraction, lyricGapFraction(gap, position), .001f)
        }
        assertEquals(0f, lyricGapFraction(gap.copy(timelineReady = false), 2_000L), .001f)
        assertEquals(0f, lyricGapFraction(gap.copy(gapEndMs = 1_000L), 2_000L), .001f)
        project(gap.copy(positionMs = 1_000L))
        val start = captureHost()
        project(gap.copy(positionMs = 2_000L))
        val middle = captureHost()
        assertEquals(.5f, value(LyricGapProgress), .001f)
        assertTrue("paused gap dots change only with real media positions", changedPixels(start, middle) > 10)
        project(gap.copy(positionMs = 3_000L))
        assertNull("dots are absent at the exclusive interval end", inkBounds(captureHost(requireInk = false)))
        project(gap.copy(timelineReady = false, positionMs = 2_000L, playbackSpeed = 1f))
        assertEquals(0f, value(LyricGapProgress), .001f)
        assertFalse(value(LyricFrameRunning))
        assertNull("unknown timeline has no invented gap animation", inkBounds(captureHost(requireInk = false)))
        project(gap.copy(positionMs = 2_000L, waitRows = emptyList()))
        assertEquals(-1, value(LyricGapSlotIndex))
        assertNull("raw gap bounds without a pre-proved flow slot never invent dots", inkBounds(captureHost(requireInk = false)))
        project(gap.copy(positionMs = 2_000L, waitRows = listOf(LyricWaitRow(-1, 1_500L, 3_000L))))
        assertEquals(-1, value(LyricGapSlotIndex))
        assertNull("unmatched gap evidence cannot light a different slot", inkBounds(captureHost(requireInk = false)))
        project(gap.copy(positionMs = 2_000L, timed = false))
        assertEquals(emptyList<Float>(), value(LyricWaitRowTops))
        assertNull("static text never turns long spacing into instrumental dots", inkBounds(captureHost(requireInk = false)))

        val playing = LyricsState(
            recordingKey = "synthetic-frame-gates",
            lines = listOf(LyricLine(1_000L, "合成真实逐词帧", words = listOf(LyricWord(1_000L, 3_000L, "合成")))),
            activeIndex = 0, scrollIndex = 0, activeIndices = listOf(0),
            timelineReady = true, positionMs = 1_500L, playbackSpeed = 1f, durationMs = 4_000L,
        )
        compose.runOnIdle { state.value = state.value.copy(lyrics = playing, visible = false) }
        compose.waitForIdle()
        assertFalse("hidden composition cancels media frames", value(LyricFrameRunning))
        compose.runOnIdle { state.value = state.value.copy(lyrics = playing.copy(playbackSpeed = 0f), visible = true) }
        compose.waitForIdle()
        assertFalse("paused playback cancels media frames", value(LyricFrameRunning))
        project(playing.copy(positionMs = 4_000L))
        assertFalse("duration endpoint cancels media frames", value(LyricFrameRunning))

        // Limit the running probe to explicit frames; pixel progress above never uses this clock.
        compose.mainClock.autoAdvance = false
        try {
            project(playing)
            compose.mainClock.advanceTimeByFrame()
            compose.waitForIdle()
            assertTrue("started, focused, visible timed media can request frames", value(LyricFrameRunning))
            dispatchFocus(false)
            compose.mainClock.advanceTimeByFrame()
            compose.waitForIdle()
            assertFalse("window focus loss cancels media frames", value(LyricFrameRunning))
        } finally {
            compose.runOnIdle { state.value = state.value.copy(visible = false) }
            compose.mainClock.advanceTimeByFrame()
            compose.waitForIdle()
            compose.mainClock.autoAdvance = true
        }
    }

    private fun densityThemes(dpi: Int, saveFrames: Boolean = false) {
        val density = dpi / 160f
        val lines = duetLines() + listOf(LyricLine(6_000L, "合成短句"), LyricLine(8_000L, longText))
        mount(duetState(lines), density)
        var previous: Bitmap? = null
        var heights: List<Int>? = null
        for (dark in listOf(false, true)) {
            compose.runOnIdle { state.value = state.value.copy(dark = dark) }
            compose.waitForIdle()
            assertEquals(40f * density, value(LyricFontPixels), .01f)
            assertEquals(48f * density, value(LyricTextInset), .01f)
            assertEquals(listOf(0, 1), value(LyricActiveRows))
            assertFalse(value(LyricFrameRunning))
            val currentHeights = value(LyricRowHeights)
            assertEquals(lines.size, currentHeights.size)
            assertTrue("long text wraps at $dpi dpi", currentHeights.last() > currentHeights[3] * 2)
            if (heights != null) assertEquals("theme does not change whole-song row geometry", heights, currentHeights)
            heights = currentHeights
            body().assertTextEquals(lines[1].text)
            val frame = captureHost(if (saveFrames) "${dpi}dpi-${if (dark) "dark" else "light"}" else null)
            assertInkBounded(frame, density)
            if (previous != null) assertTrue("native light and dark frames differ", changedPixels(previous, frame) > 100)
            previous = frame
        }
    }

    private fun duetLines() = listOf(
        LyricLine(1_000L, "合成前景整行", "合成译文仍然完整", "he cheng qian jing zheng hang",
            words = listOf(LyricWord(1_000L, 2_000L, "合成")), endTimeMs = 2_000L,
            backgroundWords = listOf(LyricWord(1_800L, 4_000L, "背景合唱仍在继续")), side = LyricSide.Leading),
        LyricLine(2_000L, "合成对唱整行", "合成对唱译文", "he cheng dui chang zheng hang",
            words = listOf(LyricWord(2_000L, 2_400L, "合成")), endTimeMs = 5_000L, side = LyricSide.Trailing),
        LyricLine(6_000L, "合唱合成整行", side = LyricSide.Leading),
    )

    private fun duetState(lines: List<LyricLine>) = LyricsState(
        recordingKey = "synthetic-duet", lines = lines, activeIndex = 1,
        activeIndices = listOf(0, 1), scrollIndex = 1, timelineReady = true,
        positionMs = 2_500L, playbackSpeed = 0f, durationMs = 10_000L,
    )

    private fun mount(lyrics: LyricsState, density: Float = 1f) {
        state.value = RenderState(lyrics, density = density)
        compose.setContent {
            val current = state.value
            val view = LocalView.current
            @Suppress("DEPRECATION")
            SideEffect {
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility =
                    View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            CompositionLocalProvider(
                LocalDensity provides Density(current.density, fontScale = 1f),
                LocalLyricGeometryDispatcher provides kotlinx.coroutines.Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides kotlinx.coroutines.Dispatchers.Unconfined,
                LocalIconVisible provides current.visible,
            ) {
                ContentTheme(current.dark) {
                    Box(Modifier.fillMaxSize()) {
                        Box(Modifier.requiredSize((current.widthPx / current.density).dp, (current.heightPx / current.density).dp)
                            .clipToBounds().background(MaterialTheme.colorScheme.background).testTag(hostTag)) {
                            WallpaperLyrics(current.lyrics, current.dark)
                        }
                    }
                }
            }
        }
        compose.waitForIdle()
    }

    private fun project(lyrics: LyricsState) {
        compose.runOnIdle { state.value = state.value.copy(lyrics = lyrics) }
        compose.waitForIdle()
    }

    private fun body() = compose.onNode(SemanticsMatcher.keyIsDefined(LyricRowHeights), useUnmergedTree = true)

    private fun <T> value(key: SemanticsPropertyKey<T>): T = compose.onNode(
        SemanticsMatcher.keyIsDefined(key), useUnmergedTree = true).fetchSemanticsNode().config[key]

    @OptIn(ExperimentalComposeUiApi::class)
    private fun captureHost(name: String? = null, requireInk: Boolean = true): Bitmap {
        val node = compose.onNodeWithTag(hostTag).fetchSemanticsNode()
        val root = node.root as? ViewRootForTest ?: error("Compose host is not an Android view")
        val bounds = node.boundsInRoot
        val frame = compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.roundToInt(), bounds.height.roundToInt(), Bitmap.Config.ARGB_8888).also { image ->
                val canvas = NativeCanvas(image)
                canvas.translate(-bounds.left, -bounds.top)
                root.view.draw(canvas)
            }
        }
        assertEquals("physical native capture width", state.value.widthPx, frame.width)
        assertEquals("physical native capture height", state.value.heightPx, frame.height)
        assertEquals("only the viewport bounds are exposed", bounds, compose.onNodeWithTag("wallpaper-lyrics").fetchSemanticsNode().boundsInRoot)
        if (requireInk) {
            val background = frame.getPixel(0, 0)
            val colors = mutableSetOf<Int>()
            var ink = 0
            pixels(frame).forEach { if (it != background) { ink++; colors += it } }
            assertTrue("blank native lyric capture", ink > 20 && colors.size > 4)
        }
        if (name != null) {
            val directory = File("build/frames")
            assertTrue(directory.isDirectory || directory.mkdirs())
            File(directory, "${frame.width}x${frame.height}-sdk34-native-wallpaper-lyrics-$name.png").outputStream().use {
                assertTrue("PNG encoding failed", frame.compress(Bitmap.CompressFormat.PNG, 100, it))
            }
        }
        return frame
    }

    private fun pixels(frame: Bitmap) = IntArray(frame.width * frame.height).also {
        frame.getPixels(it, 0, frame.width, 0, 0, frame.width, frame.height)
    }

    private fun changedPixels(first: Bitmap, second: Bitmap): Int {
        assertEquals(first.width, second.width)
        assertEquals(first.height, second.height)
        val left = pixels(first)
        val right = pixels(second)
        return left.indices.count { left[it] != right[it] }
    }

    private fun assertChangesInside(first: Bitmap, second: Bitmap, left: Int, right: Int, top: Int, bottom: Int) {
        val before = pixels(first)
        val after = pixels(second)
        before.indices.forEach { index ->
            if (before[index] != after[index]) {
                val x = index % first.width
                val y = index / first.width
                assertTrue("pixel change outside the true timed word area at $x/$y", x in left until right && y in top until bottom)
            }
        }
    }

    private fun inkBounds(frame: Bitmap, top: Int = 0, bottom: Int = frame.height): Rect? {
        val colors = pixels(frame)
        val background = frame.getPixel(0, 0)
        var left = frame.width
        var right = -1
        var first = frame.height
        var last = -1
        for (y in top.coerceAtLeast(0) until bottom.coerceAtMost(frame.height)) for (x in 0 until frame.width) {
            val color = colors[y * frame.width + x]
            val contrast = abs(NativeColor.red(color) - NativeColor.red(background)) +
                abs(NativeColor.green(color) - NativeColor.green(background)) +
                abs(NativeColor.blue(color) - NativeColor.blue(background))
            if (contrast > 12) {
                left = minOf(left, x); right = maxOf(right, x)
                first = minOf(first, y); last = maxOf(last, y)
            }
        }
        return if (right < left) null else Rect(left, first, right + 1, last + 1)
    }

    private fun assertInkBounded(frame: Bitmap, density: Float) {
        val ink = inkBounds(frame)
        assertNotNull("native text must be visible", ink)
        assertTrue("native text must stay within both 48dp insets: $ink",
            ink!!.left >= floor(48f * density).toInt() - 2 &&
                ink.right <= ceil(frame.width - 48f * density).toInt() + 2)
    }

    private fun nativeTextWidth(text: String, size: Float) = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        textSize = size
        typeface = Typeface.create("sans-serif-black", Typeface.BOLD)
    }.measureText(text)

    private fun rowTop(index: Int, heights: List<Int>, focus: Int): Float =
        1080f * .41f - heights.take(focus).sum() - heights[focus] / 2f + heights.take(index).sum()

    private fun rowBottom(index: Int, heights: List<Int>, focus: Int) = rowTop(index, heights, focus) + heights[index]

    @OptIn(ExperimentalComposeUiApi::class)
    private fun dispatchFocus(focused: Boolean) {
        val root = compose.onNodeWithTag(hostTag).fetchSemanticsNode().root as ViewRootForTest
        val dispatch = ViewTreeObserver::class.java.getDeclaredMethod("dispatchOnWindowFocusChange", java.lang.Boolean.TYPE)
            .apply { isAccessible = true }
        compose.runOnIdle { dispatch.invoke(root.view.viewTreeObserver, focused) }
    }

    private tailrec fun Context.activity(): Activity = when (this) {
        is Activity -> this
        is ContextWrapper -> baseContext.activity()
        else -> error("Compose view is not hosted by an Activity")
    }
}
