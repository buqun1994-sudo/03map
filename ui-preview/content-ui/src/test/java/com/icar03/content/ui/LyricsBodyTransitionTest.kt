package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.ViewTreeObserver
import android.os.SystemClock
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.snapshots.Snapshot
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.Density
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.CoroutineDispatcher
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
import kotlin.math.roundToInt

/** Native viewport and actual-page handoff evidence, using synthetic lyrics and the real Compose owner. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28, 34], qualifiers = "w640dp-h1080dp-mdpi")
class LyricsBodyTransitionTest {
    @get:Rule val compose = createComposeRule()
    private val current = mutableStateOf(LyricsState())
    private val host = "lyric-transition-host"
    private val lines = (0 until 40).map { LyricLine(it * 2_000L, "合成转场第 $it 行") }
    private fun source(key: String, generation: Long, index: Int = 0) = LyricsState(
        recordingKey = key, recordingGeneration = generation, lines = lines,
        timelineReady = true, positionMs = index * 2_000L, activeIndex = index,
        activeIndices = listOf(index), scrollIndex = index, durationMs = 90_000L)

    @Test fun actualPageRetiresAnInFlightViewportThroughLoadingWithoutScrollingItToTheStart() {
        val a = source("A", 1, 10)
        mount(a, actualPage = true)
        project(a.copy(activeIndex = 20, activeIndices = listOf(20), scrollIndex = 20, positionMs = 40_000L))
        advance(96)
        capture("in-flight-before-switch")
        val offset = value(LyricScrollOffset)
        assertTrue("fixture is actually following a distant row", offset < -1_000f)
        project(LyricsState(recordingKey = "B", recordingGeneration = 2, loading = true))
        assertTrue(value(LyricPresentationFrozen))
        assertEquals("A", value(LyricRecordingKey))
        val stopped = value(LyricScrollOffset)
        assertTrue("one commit frame may advance the old follow, but cannot scroll towards the start", stopped <= offset + .1f)
        val alpha = value(LyricOpacity)
        advance(64)
        assertEquals("fade cannot continue a previously running travel", stopped, value(LyricScrollOffset), .01f)
        assertTrue(value(LyricOpacity) < alpha)
        assertFalse(value(LyricFrameEligible))
        advance(200)
        compose.onNodeWithTag("wallpaper-lyrics").assertDoesNotExist()
        compose.onNodeWithTag("lyrics-empty").assertDoesNotExist()
        project(source("B", 2))
        advance(64)
        assertEquals("B", value(LyricRecordingKey))
        assertFirstRowCentered()
        advance(400)
        assertEquals(1f, value(LyricOpacity), .001f)
        assertFirstRowCentered()
    }

    @Test fun directReadyReplacementFadesAtOneOffsetAndNewBodyHoldsItsFirstRowDuringEntry() {
        mount(source("A", 1, 15))
        val oldOffset = value(LyricScrollOffset)
        val before = capture("outgoing-before")
        project(source("B", 2, 12))
        advance(64)
        assertEquals(oldOffset, value(LyricScrollOffset), .01f)
        assertEquals("A", value(LyricRecordingKey))
        val faded = capture("outgoing-middle")
        assertTrue("native ink becomes dimmer without an offscreen viewport layer", brightness(faded) < brightness(before))
        compose.mainClock.advanceTimeUntil(timeoutMillis = 600) {
            compose.onAllNodes(SemanticsMatcher.expectValue(LyricRecordingKey, "B"), useUnmergedTree = true)
                .fetchSemanticsNodes().isNotEmpty()
        }
        compose.waitForIdle()
        assertEquals("B", value(LyricRecordingKey))
        assertTrue(value(LyricEntryHolding))
        assertEquals("real Store cursor is preserved while entry only controls geometry", 12, value(LyricScrollAnchor))
        assertFirstRowCentered()
        val start = value(LyricScrollOffset)
        advance(64)
        assertTrue(value(LyricOpacity) in 0f..1f)
        assertEquals("visible entry never scrolls down from A's coordinates", start, value(LyricScrollOffset), .01f)
        capture("incoming-first-row")
        advance(800)
        assertFalse(value(LyricEntryHolding))
        assertEquals("after entry the unique trusted cursor follows normally", 12, value(LyricScrollAnchor))
    }

    @Test fun sameRecordingBodyCompletionAndMetadataEnrichmentKeepOpacityAndTheVisibleAnchor() {
        val a = source("transport-A", 7, 15)
        mount(a)
        val centre = rowCentre(15)
        val rasterizations = value(LyricRasterizations)
        project(a.copy(recordingKey = "transport-ID-filled", lines = emptyList(), loading = true,
            activeIndex = -1, scrollIndex = -1, activeIndices = emptyList()))
        assertTrue(value(LyricPresentationFrozen))
        assertEquals(1f, value(LyricOpacity), .001f)
        advance(500)
        assertEquals(centre, rowCentre(15), .1f)
        val upgraded = listOf(LyricLine(0, "补齐的真实首句")) + lines.mapIndexed { index, line ->
            line.copy(translation = if (index < 15) "synthetic translation" else "",
                words = listOf(LyricWord(line.timeMs, line.timeMs + 1_000, line.text)))
        }
        project(a.copy(recordingKey = "transport-ID-filled", lines = upgraded,
            activeIndex = 16, activeIndices = listOf(16), scrollIndex = 16))
        advance(64)
        assertEquals(1f, value(LyricOpacity), .001f)
        assertFalse(value(LyricEntryHolding))
        assertEquals(centre, rowCentre(16), .2f)
        advance(600)
        assertEquals(centre, rowCentre(16), .2f)
        val stableRasterizations = value(LyricRasterizations)
        assertTrue(stableRasterizations > 0 && rasterizations > 0)
        val stableSample = value(LyricFrameElapsed)
        advance(1_000)
        assertEquals("quiet presentation generates no new textures", stableRasterizations, value(LyricRasterizations))
        assertEquals("fade adds no sustained frame sampler", stableSample, value(LyricFrameElapsed))
    }

    @Test fun explicitNextIntentFreezesBeforeTheOldRecordingReportsZeroAndFailureRestoresItsRealCursor() {
        val a = source("A", 1, 15)
        mount(a)
        val offset = value(LyricScrollOffset)
        project(a.copy(changingTrack = true))
        project(a.copy(changingTrack = true, positionMs = 0, activeIndex = 0,
            activeIndices = listOf(0), scrollIndex = 0))
        advance(64)
        assertTrue(value(LyricPresentationFrozen))
        assertEquals("zero before metadata cannot reset the retiring viewport", offset, value(LyricScrollOffset), .01f)
        advance(250)
        compose.onNodeWithTag("wallpaper-lyrics").assertDoesNotExist()
        project(a) // real command failure/timeout clears the pending intent
        advance(400)
        assertEquals("A", value(LyricRecordingKey))
        assertEquals("failed next restores the trusted middle cursor", offset, value(LyricScrollOffset), .1f)
        assertEquals(1f, value(LyricOpacity), .001f)
    }

    @Test fun semanticEndRetiresAtTheCurrentOffsetAndARealSameSongSeekCanRestoreIt() {
        val a = source("A", 1, 12)
        mount(a)
        val offset = value(LyricScrollOffset)
        project(a.copy(atEnd = true, activeIndex = -1, activeIndices = emptyList(), scrollIndex = lines.lastIndex))
        assertTrue("Store atEnd works even when canonical basePosition predates the end", value(LyricPresentationFrozen))
        advance(64)
        assertEquals("end's last-row cursor is never animated during exit", offset, value(LyricScrollOffset), .01f)
        project(a.copy(positionMs = 0, activeIndex = 0, activeIndices = listOf(0), scrollIndex = 0))
        advance(800)
        assertEquals(1f, value(LyricOpacity), .001f)
        assertFalse(value(LyricPresentationFrozen))
        assertFirstRowCentered()
        project(a.copy(atEnd = true))
        advance(300)
        compose.onNodeWithTag("wallpaper-lyrics").assertDoesNotExist()
    }

    @Test fun rapidRetargetAndFocusLossCannotReplayOrPublishAnAbandonedRecording() {
        mount(source("A", 1, 15))
        project(source("B", 2))
        advance(48)
        project(source("C", 3))
        advance(600)
        assertEquals("C", value(LyricRecordingKey))
        assertFirstRowCentered()
        assertEquals("only one document owner is present", 1, compose.onAllNodesWithTag("wallpaper-lyrics").fetchSemanticsNodes().size)
        project(source("D", 4))
        focus(false)
        advance(64)
        focus(true)
        advance(128)
        assertEquals("D", value(LyricRecordingKey))
        assertEquals("resuming does not replay a background fade", 1f, value(LyricOpacity), .001f)
        assertFalse(value(LyricPresentationFrozen))
        assertFalse(value(LyricFrameEligible)) // paused synthetic source
        project(source("D", 4, 18))
        advance(96)
        focus(false)
        advance(32)
        val hiddenOffset = value(LyricScrollOffset)
        advance(800)
        assertEquals("hidden scroll animation stops as well as the media sampler", hiddenOffset, value(LyricScrollOffset), .01f)
    }

    @Test fun manualBrowseResumesItsSingleReturnAfterFocusOrSameSongBodyIsRestored() {
        val a = source("A", 1, 15)
        mount(a)
        val follow = value(LyricScrollOffset)
        for (suspension in listOf("focus", "body")) {
            val viewport = compose.onNode(SemanticsMatcher.keyIsDefined(LyricScrollOffset), useUnmergedTree = true)
            viewport.performTouchInput { down(androidx.compose.ui.geometry.Offset(width / 2f, height * .75f)) }
            advance(32)
            viewport.performTouchInput { moveBy(androidx.compose.ui.geometry.Offset(0f, -150f)) }
            advance(32)
            viewport.performTouchInput { moveBy(androidx.compose.ui.geometry.Offset(0f, -150f)); up() }
            advance(64)
            assertTrue("fixture moved away during $suspension: follow=$follow actual=${value(LyricScrollOffset)} holding=${value(LyricEntryHolding)}",
                value(LyricScrollOffset) < follow - 100)
            if (suspension == "focus") focus(false)
            else project(a.copy(lines = emptyList(), loading = true))
            advance(5_000)
            if (suspension == "focus") focus(true) else project(a)
            advance(5_000)
            assertEquals("return is rescheduled after $suspension instead of leaving a permanent browse draft",
                follow, value(LyricScrollOffset), .2f)
        }
    }

    @Test fun aHeldPlayingDocumentRetiresWithoutResamplingItsWordPosition() {
        ShadowSystemClock.advanceBy(Duration.ofMillis(1_000))
        val geometry = HeldGeometryDispatcher()
        val a = source("A", 1).copy(positionMs = 500, playbackSpeed = 1f,
            capturedAtMs = SystemClock.elapsedRealtime(), lines = listOf(
                LyricLine(0, "冻结已画逐字正文", words = listOf(LyricWord(0, 5_000, "冻结已画逐字正文")))))
        mount(a, geometry = geometry)
        compose.runOnIdle { geometry.held = true }
        project(a.copy(lines = a.lines.map { it.copy(translation = "held upgrade") }))
        advance(64)
        assertFalse(value(LyricLayoutReady))
        capture("held-playing-before-exit")
        val position = value(LyricFramePosition)
        val progress = value(LyricWordProgress)
        ShadowSystemClock.advanceBy(Duration.ofMillis(2_000))
        project(LyricsState(recordingKey = "B", recordingGeneration = 2, loading = true))
        assertTrue(value(LyricPresentationFrozen))
        assertEquals("already-held source cannot advance at the exit boundary", position, value(LyricFramePosition))
        assertEquals(progress, value(LyricWordProgress), .001f)
        assertFalse(value(LyricFrameEligible))
    }

    @Test fun canonicalEndFreezePreservesTheLastPaintedEmphasisEvenWithoutAnActiveVoice() {
        ShadowSystemClock.advanceBy(Duration.ofMillis(1_000))
        val a = source("A", 1).copy(positionMs = 4_000, durationMs = 5_000, playbackSpeed = 1f,
            capturedAtMs = SystemClock.elapsedRealtime(), activeIndex = -1, activeIndices = emptyList(),
            lines = listOf(LyricLine(0, "末行仍在强调", words = listOf(LyricWord(4_000, 7_000, "末行仍在强调")))))
        mount(a)
        ShadowSystemClock.advanceBy(Duration.ofMillis(1_100))
        advance(64)
        capture("canonical-end-before-exit")
        assertEquals(5_000L, value(LyricFramePosition))
        assertEquals(listOf(0), value(LyricEmphasizedRows))
        project(a.copy(atEnd = true, scrollIndex = 0))
        assertTrue(value(LyricPresentationFrozen))
        assertEquals("retirement cannot turn 48sp sharp ink into 40sp soft ink", listOf(0), value(LyricEmphasizedRows))
        assertEquals(5_000L, value(LyricFramePosition))
    }

    @Test fun admittingANewGeometryBeforeItsFirstDrawCannotDiscardTheRetiringInkCache() {
        val a = source("A", 1, 15)
        val upgraded = a.copy(lines = a.lines.map { it.copy(translation = "changed row geometry") })
        val frozen = mutableStateOf(false)
        var rootView: View? = null
        current.value = a
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalLyricGeometryDispatcher provides Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined) {
                val view = LocalView.current
                SideEffect { rootView = view }
                Box(Modifier.fillMaxSize().background(Color.Black).testTag(host)) {
                    WallpaperLyrics(current.value, true, visibility = true, freezeMotion = frozen.value,
                        onLayoutReady = {
                            if (current.value.lines === upgraded.lines) {
                                // Suppress Android's next draw after B is admitted, then request retirement.
                                view.visibility = View.INVISIBLE
                                frozen.value = true
                            }
                        })
                }
            }
        }
        advance(1_000)
        val before = capture("last-painted-ink-before-upgrade")
        val slices = value(LyricPreparedSliceCount)
        val rasters = value(LyricRasterizations)
        assertTrue(slices > 0)
        project(upgraded)
        advance(64)
        assertTrue(value(LyricPresentationFrozen))
        assertEquals("frozen document is the previously drawn A", a.lines.size, value(LyricRowHeights).size)
        assertEquals("retirement reuses prepared slices instead of a new empty A cache", slices, value(LyricPreparedSliceCount))
        assertEquals("no new raster is allowed in a frozen frame", rasters, value(LyricRasterizations))
        compose.runOnIdle { rootView!!.visibility = View.VISIBLE }
        val after = capture("last-painted-ink-frozen-after-upgrade")
        val beforePixels = IntArray(before.width * before.height)
        val afterPixels = IntArray(after.width * after.height)
        before.getPixels(beforePixels, 0, before.width, 0, 0, before.width, before.height)
        after.getPixels(afterPixels, 0, after.width, 0, 0, after.width, after.height)
        assertArrayEquals("freeze retains exact sharp, soft and edge pixels", beforePixels, afterPixels)
    }

    @Test fun enlargedWaitingDotsRetainTheirFlowCentreAtVehicleDensity() {
        val intro = source("intro", 1).copy(positionMs = 2_000, activeIndex = -1,
            activeIndices = emptyList(), scrollIndex = -1, gapStartMs = 0, gapEndMs = 4_000,
            waitRows = listOf(LyricWaitRow(-1, 0, 4_000)))
        val density = 212f / 160f
        mount(intro, density = density)
        val frame = capture("212dpi-waiting-dots")
        val centreY = value(LyricWaitRowTops).single() + value(LyricScrollOffset) + value(LyricWaitRowHeight) / 2f
        val left = value(LyricTextInset).roundToInt()
        val top = (centreY - 16 * density).roundToInt().coerceAtLeast(0)
        val bottom = (centreY + 16 * density).roundToInt().coerceAtMost(frame.height)
        var x0 = frame.width; var x1 = -1; var y0 = frame.height; var y1 = -1
        for (y in top until bottom) for (x in left until (left + 60 * density).roundToInt()) {
            if (android.graphics.Color.red(frame.getPixel(x, y)) > 8) {
                x0 = minOf(x0, x); x1 = maxOf(x1, x); y0 = minOf(y0, y); y1 = maxOf(y1, y)
            }
        }
        assertEquals("12dp dot diameter follows system density", 12 * density, (y1 - y0 + 1).toFloat(), 2f)
        assertEquals("three dots span 56dp", 56 * density, (x1 - x0 + 1).toFloat(), 2f)
        assertEquals("enlargement preserves the original flow-slot centre", centreY, (y0 + y1 + 1) / 2f, 1f)
    }

    private fun mount(initial: LyricsState, actualPage: Boolean = false, density: Float = 1f,
        geometry: CoroutineDispatcher = Dispatchers.Unconfined) {
        current.value = initial
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalLyricGeometryDispatcher provides geometry,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined,
                LocalDensity provides Density(density, 1f)) {
                ContentTheme(true) {
                    Box(Modifier.fillMaxSize().background(Color.Black).testTag(host)) {
                        if (actualPage) ContentPanel(ContentUiState(page = PanelPage.Lyrics, previewMode = false,
                            dark = true, media = MediaState(isSong = true), lyrics = current.value), {})
                        else LyricsBodyTransition(current.value, true)
                    }
                }
            }
        }
        focus(true)
        advance(1_000)
    }
    private fun project(next: LyricsState) {
        compose.runOnIdle { current.value = next; Snapshot.sendApplyNotifications() }
        advance(16)
    }
    private fun advance(ms: Long) { compose.mainClock.advanceTimeBy(ms); compose.waitForIdle() }
    private fun <T> value(key: SemanticsPropertyKey<T>): T = compose.onNode(
        SemanticsMatcher.keyIsDefined(key), useUnmergedTree = true).fetchSemanticsNode().config[key]
    private fun rowCentre(index: Int) = value(LyricRowTops)[index] + value(LyricRowHeights)[index] / 2f + value(LyricScrollOffset)
    private fun assertFirstRowCentered() {
        val bounds = compose.onNodeWithTag("wallpaper-lyrics").fetchSemanticsNode().boundsInRoot
        assertEquals("first row is already at its viewport anchor", bounds.height * .41f, rowCentre(0), .2f)
    }
    @OptIn(ExperimentalComposeUiApi::class)
    private fun focus(focused: Boolean) {
        val root = compose.onNodeWithTag(host).fetchSemanticsNode().root as ViewRootForTest
        val method = ViewTreeObserver::class.java.getDeclaredMethod("dispatchOnWindowFocusChange", java.lang.Boolean.TYPE)
            .apply { isAccessible = true }
        compose.runOnIdle { method.invoke(root.view.viewTreeObserver, focused); Snapshot.sendApplyNotifications() }
    }
    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture(name: String): Bitmap {
        val node = compose.onNodeWithTag(host).fetchSemanticsNode()
        val root = node.root as ViewRootForTest
        val bounds = node.boundsInRoot
        val image = compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.roundToInt(), bounds.height.roundToInt(), Bitmap.Config.ARGB_8888).also {
                Canvas(it).apply { translate(-bounds.left, -bounds.top); root.view.draw(this) }
            }
        }
        val directory = File("build/frames").apply { mkdirs() }
        File(directory, "lyrics-transition-sdk${android.os.Build.VERSION.SDK_INT}-$name.png").outputStream().use {
            assertTrue(image.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
        return image
    }
    private class HeldGeometryDispatcher : CoroutineDispatcher() {
        var held = false
        val tasks = ArrayList<Runnable>()
        override fun isDispatchNeeded(context: CoroutineContext) = held
        override fun dispatch(context: CoroutineContext, block: Runnable) { tasks += block }
    }
    private fun brightness(image: Bitmap): Long {
        var result = 0L
        for (y in 0 until image.height) for (x in 0 until image.width) {
            val c = image.getPixel(x, y)
            result += android.graphics.Color.red(c) + android.graphics.Color.green(c) + android.graphics.Color.blue(c)
        }
        return result
    }
}
