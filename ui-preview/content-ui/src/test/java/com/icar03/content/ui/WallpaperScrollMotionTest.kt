package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas as NativeCanvas
import android.graphics.Typeface
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.requiredSize
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.Dispatchers
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import kotlin.math.abs
import kotlin.math.roundToInt

@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28, 34], qualifiers = "w1280dp-h1080dp-mdpi")
class WallpaperScrollMotionTest {
    @get:Rule val compose = createComposeRule()
    private val lines = (0 until 64).map { LyricLine(it * 2_000L, "Synthetic lyric group $it") }
    private fun source(row: Int, playing: Boolean = true) = LyricsState(recordingKey = "scroll-motion",
        lines = lines, timelineReady = true, positionMs = row * 2_000L, scrollIndex = row,
        activeIndex = row, playbackSpeed = if (playing) 1f else 0f, durationMs = 200_000L)
    private data class Render(val lyrics: LyricsState, val width: Int = 640, val height: Int = 800,
        val scale: Float = 1f, val external: Boolean = false, val interactive: Boolean = true,
        val frozen: Boolean = false, val visible: Boolean = true)
    private val state = mutableStateOf(Render(source(20)))
    private val readyEvents = ArrayList<Boolean>()
    private val host = "scroll-motion-host"

    private fun mount(playing: Boolean = true) {
        state.value = Render(source(20, playing))
        compose.mainClock.autoAdvance = false
        compose.setContent {
            val current = state.value
            CompositionLocalProvider(LocalDensity provides Density(1f, 1f),
                LocalLyricGeometryDispatcher provides Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined) {
                Box(Modifier.requiredSize(current.width.dp, current.height.dp)
                    .background(androidx.compose.ui.graphics.Color.Black).testTag(host)) {
                    WallpaperLyrics(current.lyrics, true, presentationScale = current.scale,
                        externalGestureActive = current.external, interactionEnabled = current.interactive,
                        freezeMotion = current.frozen, visibility = current.visible,
                        onGeometryReady = { readyEvents += it })
                }
            }
        }
        advance(64)
        assertTrue(value(LyricLayoutReady))
        assertFalse(value(LyricScrollRunning))
        capture()
    }
    private fun project(lyrics: LyricsState) {
        compose.runOnIdle {
            state.value = state.value.copy(lyrics = lyrics)
            androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
        }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
    }
    private fun advance(ms: Long) { compose.mainClock.advanceTimeBy(ms); compose.waitForIdle() }
    private fun body() = compose.onNodeWithTag("wallpaper-lyrics", useUnmergedTree = true)
    private fun <T> value(key: SemanticsPropertyKey<T>): T = compose.onNode(
        SemanticsMatcher.keyIsDefined(key), useUnmergedTree = true).fetchSemanticsNode().config[key]
    private fun startWave() {
        project(source(21))
        compose.mainClock.advanceTimeByFrame(); compose.waitForIdle()
        assertTrue(value(LyricScrollRunning))
        assertTrue("visible groups have delayed onsets", value(LyricScrollMaximumDelay) > 0)
    }
    private fun assertSettledAt(row: Int) {
        assertFalse(value(LyricScrollRunning))
        assertEquals(state.value.height * .41f,
            value(LyricRowTops)[row] + value(LyricRowHeights)[row] / 2f + value(LyricScrollOffset), .2f)
    }

    @Test fun onlyAutomaticFollowStaggersAndTheFinalDelayedGroupOwnsTheTail() {
        mount(); startWave()
        val delay = value(LyricScrollMaximumDelay)
        assertEquals("the actual visible group span uses the shorter 18ms interval", 0, delay % 18)
        advance(464)
        assertTrue("first row finishing cannot terminate the delayed tail", value(LyricScrollRunning))
        assertTrue("phase=${value(LyricScrollPhase)} running=${value(LyricScrollRunning)} delay=${value(LyricScrollMaximumDelay)} offset=${value(LyricScrollOffset)}", value(LyricScrollPhase) >= 450f)
        assertTrue(value(LyricScrollPhase) < 450f + delay)
        advance(delay.toLong() + 32L)
        assertSettledAt(21)
        val rasterizations = value(LyricRasterizations)
        val offset = value(LyricScrollOffset)
        advance(2_000)
        assertEquals(rasterizations, value(LyricRasterizations))
        assertEquals(offset, value(LyricScrollOffset), 0f)
        assertFalse(value(LyricFrameRunning)) // no invented word animation in this LRC fixture
    }

    @Test fun downStopsBeforeDragSlopAndExternalOrModalGesturesNeverRunAWave() {
        mount(); startWave(); advance(96); capture()
        body().performTouchInput { down(center) }
        assertFalse(value(LyricScrollRunning))
        val downOffset = value(LyricScrollOffset)
        advance(240)
        assertEquals(downOffset, value(LyricScrollOffset), .01f)
        body().performTouchInput { up() }
        advance(32)
        assertEquals("release from a tap aligns without replaying delay", 0, value(LyricScrollMaximumDelay))
        advance(600)
        project(source(22)); compose.mainClock.advanceTimeByFrame(); advance(96); capture()
        compose.runOnIdle { state.value = state.value.copy(external = true) }
        val externalOffset = value(LyricScrollOffset)
        advance(400)
        assertFalse(value(LyricScrollRunning))
        assertEquals(externalOffset, value(LyricScrollOffset), .01f)
        compose.runOnIdle { state.value = state.value.copy(external = false, interactive = false) }
        body().performTouchInput { swipeUp() }
        advance(400)
        assertFalse(value(LyricScrollRunning))
        assertEquals(externalOffset, value(LyricScrollOffset), .01f)
    }

    @Test fun manualPreviewKeepsRigidMotionThenUsesTheExistingFourSecondReturn() {
        mount(); startWave(); advance(80); capture()
        body().performTouchInput {
            swipe(start = Offset(centerX, height * .65f), end = Offset(centerX, height * .35f), durationMillis = 240)
        }
        assertFalse(value(LyricScrollRunning))
        val browsed = value(LyricScrollOffset)
        advance(3_700)
        assertEquals("manual preview remains held before the single return", browsed, value(LyricScrollOffset), .01f)
        advance(1_500)
        assertSettledAt(21)
    }

    @Test fun pauseFreezesTheWaveButARealPausedSeekStillRepositionsWithoutDelay() {
        mount(); startWave(); advance(128); capture()
        project(source(21, playing = false))
        val stopped = value(LyricScrollOffset)
        assertFalse("running=${value(LyricScrollRunning)} phase=${value(LyricScrollPhase)} delay=${value(LyricScrollMaximumDelay)} offset=$stopped", value(LyricScrollRunning))
        advance(1_000)
        assertEquals(stopped, value(LyricScrollOffset), .01f)
        project(source(30, playing = false)); compose.mainClock.advanceTimeByFrame()
        assertEquals(0, value(LyricScrollMaximumDelay))
        advance(600)
        assertSettledAt(30)
    }

    @Test fun reverseLargeJumpAndVisibilityRecoveryDoNotQueueDelayedTravel() {
        mount(); startWave(); advance(96); capture()
        project(source(18)); compose.mainClock.advanceTimeByFrame()
        assertEquals(0, value(LyricScrollMaximumDelay))
        advance(600); assertSettledAt(18)
        project(source(45)); compose.mainClock.advanceTimeByFrame()
        assertEquals(0, value(LyricScrollMaximumDelay))
        advance(64); capture()
        compose.runOnIdle { state.value = state.value.copy(visible = false) }
        val stopped = value(LyricScrollOffset)
        advance(1_000)
        assertEquals(stopped, value(LyricScrollOffset), .01f)
        compose.runOnIdle { state.value = state.value.copy(visible = true) }
        compose.mainClock.advanceTimeByFrame()
        assertEquals(0, value(LyricScrollMaximumDelay))
        advance(600); assertSettledAt(45)
    }

    @Test fun retirementFreezesEveryActualNativeRowInsteadOfOnlyTheGlobalOffset() {
        mount(); startWave(); advance(176)
        val before = capture()
        compose.runOnIdle { state.value = state.value.copy(frozen = true) }
        advance(400)
        assertTrue(value(LyricPresentationFrozen))
        assertFalse(value(LyricScrollRunning))
        assertArrayEquals("all delayed row and edge pixels stay in place", pixels(before), pixels(capture()))
    }

    @Test fun sameRecordingScaleAndWidthChangeKeepTheManualVisibleAnchorAndReportGeometryReadiness() {
        mount(playing = false)
        body().performTouchInput {
            swipe(start = Offset(centerX, height * .55f), end = Offset(centerX, height * .80f), durationMillis = 240)
        }
        val oldTops = value(LyricRowTops)
        val oldHeights = value(LyricRowHeights)
        val oldOffset = value(LyricScrollOffset)
        val index = lines.indices.minBy { abs(oldTops[it] + oldHeights[it] / 2f + oldOffset - 800f * .41f) }
        val center = oldTops[index] + oldHeights[index] / 2f + oldOffset
        capture()
        compose.runOnIdle {
            readyEvents.clear()
            state.value = state.value.copy(scale = 1.5f, width = 1_000, external = true)
        }
        advance(96)
        assertTrue("new request reports pending before admission", readyEvents.contains(false))
        assertTrue(readyEvents.last())
        assertTrue(value(LyricLayoutReady))
        assertEquals(60f, value(LyricFontPixels), .01f)
        assertEquals(72f, value(LyricActiveFontPixels), .01f)
        assertEquals(center, value(LyricRowTops)[index] + value(LyricRowHeights)[index] / 2f + value(LyricScrollOffset), .2f)
        assertFalse(value(LyricScrollRunning))
        compose.runOnIdle { state.value = state.value.copy(external = false) }
        advance(240)
        assertEquals("manual anchor survives modal/size alignment", center,
            value(LyricRowTops)[index] + value(LyricRowHeights)[index] / 2f + value(LyricScrollOffset), .2f)
        assertEquals("same recording did not remount at the first row", "scroll-motion", value(LyricRecordingKey))
    }

    @Test fun actualWindowHotColdAndShaderPositionsMatchIndependentUniformRowDraws() {
        val metrics = LyricMetrics(40f, 48f, 22f, 20f, 14f, 4f, 3f, 2.5f)
        val rows = lines.map { prepareLyricRow(it, 480, metrics, Typeface.DEFAULT) }
        val tops = lyricFlow(rows.map { it.height }, emptyList(), 64f).lineTops
        val start = 100f - tops[6]
        val segment = LyricScrollSegment(LyricRowPose.uniform(start), start - 100f, 3, 10, stagger = true)
        val sample = LyricScrollSample().apply { set(segment, 132f, 0f) }
        val viewport = 300f
        val addresses = rows.flatMapIndexed { row, native -> native.tracks.flatMapIndexed { trackIndex, track ->
            track.visualLines.map { LyricSliceAddress(row, trackIndex, it.index) }
        } }
        val expectedVisible = addresses.filter { address ->
            val track = rows[address.row].tracks[address.track]
            val line = track.visualLines[address.line]
            val y = tops[address.row] + sample.offsetAt(address.row) + track.top
            y + line.bottom > 0f && y + line.top - metrics.lift < viewport
        }
        assertEquals(expectedVisible, lyricFrameWindow(rows, tops, sample.base, viewport, metrics.lift, sample))
        val window = lyricSliceWindow(rows, tops, sample.base, viewport, sample)
        assertTrue(window.containsAll(expectedVisible))
        val cache = LyricInkCache(rows, metrics, viewport)
        val slices = cache.prepare(window, emptySet(), 0, allSharp = true)
        val rasterizations = cache.rasterizations
        val lyrics = source(20).copy(timed = false)
        val painter = LyricInkPainter(metrics)
        fun image() = Bitmap.createBitmap(480, viewport.toInt(), Bitmap.Config.ARGB_8888)
        val hot = image()
        painter.draw(NativeCanvas(hot), slices, rows, tops, cache, sample.base, emptySet(), 0, lyrics, 0L, true, scroll = sample)
        val hotBatches = painter.drawBatches
        val referenceHot = image()
        val referenceHotCanvas = NativeCanvas(referenceHot)
        var referenceBatches = 0
        slices.forEach { slice ->
            painter.draw(referenceHotCanvas, listOf(slice), rows, tops, cache, sample.offsetAt(slice.row), emptySet(), 0, lyrics, 0L, true)
            referenceBatches += painter.drawBatches
        }
        assertArrayEquals(pixels(referenceHot), pixels(hot))
        assertEquals("row translation does not split existing batches", referenceBatches, hotBatches)
        val cold = image()
        painter.draw(NativeCanvas(cold), emptyList(), rows, tops, cache, sample.base, emptySet(), 0, lyrics, 0L, true,
            fallback = window, scroll = sample)
        val referenceCold = image()
        val referenceColdCanvas = NativeCanvas(referenceCold)
        window.forEach { address ->
            painter.draw(referenceColdCanvas, emptyList(), rows, tops, cache, sample.offsetAt(address.row), emptySet(), 0, lyrics, 0L, true,
                fallback = listOf(address))
        }
        assertArrayEquals(pixels(referenceCold), pixels(cold))
        assertEquals("sampling creates neither new raster nor layout", rasterizations, cache.rasterizations)
        assertTrue("native drawing really emitted ink", pixels(hot).any { it ushr 24 > 0 })
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture(): Bitmap {
        val node = compose.onNodeWithTag(host).fetchSemanticsNode()
        val root = node.root as ViewRootForTest
        val bounds = node.boundsInRoot
        return compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.roundToInt(), bounds.height.roundToInt(), Bitmap.Config.ARGB_8888).also { bitmap ->
                NativeCanvas(bitmap).apply { translate(-bounds.left, -bounds.top); root.view.draw(this) }
            }
        }
    }
    private fun pixels(image: Bitmap) = IntArray(image.width * image.height).also {
        image.getPixels(it, 0, image.width, 0, 0, image.width, image.height)
    }
}
