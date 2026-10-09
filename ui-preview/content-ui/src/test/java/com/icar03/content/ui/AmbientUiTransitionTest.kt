package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.requiredSize
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.dp
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.platform.ViewRootForTest
import android.view.ViewTreeObserver
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.CoroutineDispatcher
import kotlin.coroutines.CoroutineContext
import androidx.compose.ui.Modifier
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [34])
class AmbientUiTransitionTest {
    @get:Rule val compose = createComposeRule()
    private fun scene(color: Int) = AmbientArtwork(
        Bitmap.createBitmap(128, 128, Bitmap.Config.ARGB_8888).apply { eraseColor(color) },
        Bitmap.createBitmap(128, 128, Bitmap.Config.ARGB_8888), emptyList(), 0f, 0f,
    )
    private fun <T> value(key: SemanticsPropertyKey<T>) = compose.onNodeWithTag("media-ambient").fetchSemanticsNode().config[key]

    @OptIn(ExperimentalComposeUiApi::class)
    private fun captureAmbient(): Bitmap {
        val semantics = compose.onNodeWithTag("media-ambient").fetchSemanticsNode()
        val root = semantics.root as ViewRootForTest
        val bounds = semantics.boundsInRoot
        return compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.toInt(), bounds.height.toInt(), Bitmap.Config.ARGB_8888).also { image ->
                Canvas(image).apply {
                    translate(-bounds.left, -bounds.top)
                    root.view.draw(this)
                }
            }
        }
    }

    private fun assertSameAmbientPixels(expected: Bitmap, actual: Bitmap, message: String) {
        assertEquals(message + " width", expected.width, actual.width)
        assertEquals(message + " height", expected.height, actual.height)
        for (y in 0 until expected.height step 17) for (x in 0 until expected.width step 13) {
            assertEquals(message + " at $x/$y", expected.getPixel(x, y), actual.getPixel(x, y))
        }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun dispatchFocus(focused: Boolean) {
        val root = compose.onNodeWithTag("media-ambient").fetchSemanticsNode().root as ViewRootForTest
        val dispatch = ViewTreeObserver::class.java.getDeclaredMethod("dispatchOnWindowFocusChange", java.lang.Boolean.TYPE)
            .apply { isAccessible = true }
        compose.runOnIdle { dispatch.invoke(root.view.viewTreeObserver, focused) }
    }

    private fun advanceTransitionStart(hasTarget: Boolean = true) {
        // With a stopped clock, idle does not apply the viewport/target composition.
        // Observe retarget's zero fraction and prepared/withdrawn target one frame at a time.
        compose.mainClock.advanceTimeUntil(AMBIENT_TRANSITION_MS.toLong()) {
            val frame = compose.onNodeWithTag("media-ambient").fetchSemanticsNode().config
            frame[AmbientHasContent] && frame[AmbientFraction] == 0f &&
                (frame[AmbientPreparedGeneration] != 0) == hasTarget
        }
        compose.waitForIdle()
        // animate takes its start timestamp on the next frame, before the elapsed budget.
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
    }

    private fun advanceMotionPublication() {
        // Apply the resume/focus input, then allow at most two bounded scene samples.
        // AmbientPhase describes the displayed scene, not the former 60Hz clock state.
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(2L * AMBIENT_SCENE_INTERVAL_NS / 1_000_000L)
        compose.waitForIdle()
    }

    @Test fun stalePressAndBlockedPhasesKeepTheAmbientBitmapWithoutPreparingAPresentationScene() {
        val presentation = ContentPresentation().apply { updateGeometry(240f, 240f, 480f, 480) }
        val texture = scene(Color.BLUE)
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalDensity provides Density(1f),
                LocalAmbientPreparationDispatcher provides Dispatchers.Unconfined) {
                ContentTheme(true) {
                    MediaAmbientBackground(texture, true, Modifier.requiredSize(240.dp, 480.dp),
                        animating = false, presentation = presentation)
                }
            }
        }
        advanceTransitionStart()
        compose.mainClock.advanceTimeBy(640)
        compose.waitForIdle()
        val stable = captureAmbient()
        assertFalse("stable content has no presentation scene", value(AmbientPresentationPrepared))

        compose.runOnIdle {
            presentation.updatePhase(2)
            androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
        }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        assertFalse("legacy press phase cannot prepare a presentation scene", value(AmbientPresentationPrepared))
        assertSameAmbientPixels(stable, captureAmbient(), "press phase must keep the current bitmap")

        compose.runOnIdle {
            presentation.updatePhase(6)
            androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
        }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        assertFalse("legacy blocked phase cannot prepare a presentation scene", value(AmbientPresentationPrepared))
        assertSameAmbientPixels(stable, captureAmbient(), "blocked phase must keep the current bitmap")

        compose.runOnIdle {
            presentation.updatePhase(3)
            androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
        }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        assertTrue("a real drag phase still prepares the presentation scene", value(AmbientPresentationPrepared))
    }

    @Test fun aSecondEntryAcknowledgesItsOwnRequestWhenThePreparedSceneIsReused() {
        val presentation = ContentPresentation().apply { updateGeometry(240f, 240f, 480f, 480) }
        val texture = scene(Color.BLUE)
        var entered = 0
        presentation.onEntryReady = { entered++ }
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalDensity provides Density(1f),
                LocalAmbientPreparationDispatcher provides Dispatchers.Unconfined) {
                ContentTheme(true) {
                    MediaAmbientBackground(texture, true, Modifier.requiredSize(240.dp, 480.dp),
                        animating = false, presentation = presentation)
                }
            }
        }
        advanceTransitionStart()
        compose.mainClock.advanceTimeBy(640); compose.waitForIdle()
        repeat(2) { index ->
            compose.runOnIdle {
                presentation.requestEnter()
                androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
            }
            repeat(3) { compose.mainClock.advanceTimeByFrame(); compose.waitForIdle() }
            assertEquals("each entry request is acknowledged even with the same prepared scene", index + 1, entered)
            assertEquals(0L, presentation.pendingEnter)
        }
    }

    @Test
    @Config(qualifiers = "w720dp-h480dp-mdpi")
    fun fullBackgroundIsEstablishedAt45PercentAndWideExitKeepsItsOwnCrop() {
        val presentation = ContentPresentation().apply { updateGeometry(240f, 240f, 480f, 480) }
        val width = mutableStateOf(240)
        val texture = scene(Color.BLUE)
        for (y in 0 until 128) for (x in 0 until 128)
            texture.base.setPixel(x, y, Color.rgb(30 + x, 40 + y, 200 - x))
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalDensity provides Density(1f),
                LocalAmbientPreparationDispatcher provides Dispatchers.Unconfined) {
                ContentTheme(false) {
                    MediaAmbientBackground(texture, false, Modifier.requiredSize(width.value.dp, 480.dp),
                        animating = false, presentation = presentation)
                }
            }
        }
        advanceTransitionStart()
        compose.mainClock.advanceTimeBy(640); compose.waitForIdle()
        val original = captureAmbient()
        fun update(progress: Float, phase: Int) {
            compose.runOnIdle {
                val divider = 240f + 480f * progress
                width.value = divider.toInt()
                presentation.updateGeometry(divider, 240f, 480f, 480)
                presentation.updatePhase(phase)
                androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
            }
            repeat(3) { compose.mainClock.advanceTimeByFrame(); compose.waitForIdle() }
        }
        compose.runOnIdle { presentation.requestEnter() }
        repeat(3) { compose.mainClock.advanceTimeByFrame(); compose.waitForIdle() }
        assertTrue(value(AmbientPresentationPrepared))
        assertEquals(0L, presentation.pendingEnter)
        update(.45f, 5)
        val ready = captureAmbient()
        for (progress in listOf(.55f, .8f, 1f)) {
            update(progress, 5)
            val actual = captureAmbient()
            for (y in 30 until 400 step 31) for (x in 30 until ready.width - 20 step 29)
                assertEquals("wide canonical pixels stay fixed after 45%", ready.getPixel(x, y), actual.getPixel(x, y))
        }
        val movingWide = captureAmbient()
        update(1f, 1)
        val stableWide = captureAmbient()
        assertSameAmbientPixels(movingWide, stableWide, "wide stable handoff")
        update(1f, 4)
        assertTrue(value(AmbientPresentationPrepared))
        assertSameAmbientPixels(stableWide, captureAmbient(), "exit cannot flash or compress the wide background")
        update(.225f, 4)
        val half = captureAmbient()
        update(.3f, 3)
        update(.225f, 4)
        assertSameAmbientPixels(half, captureAmbient(), "same progress after reversal")
        update(0f, 4)
        assertSameAmbientPixels(original, captureAmbient(), "compact endpoint restores original crop")
        update(0f, 0)
        assertSameAmbientPixels(original, captureAmbient(), "compact stable handoff")
    }

    @Test fun noArtworkStillPreparesThemeEndpointsAndAcknowledgesEntry() {
        val presentation = ContentPresentation().apply { updateGeometry(240f, 240f, 480f, 480) }
        var entered = 0
        presentation.onEntryReady = { entered++ }
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalDensity provides Density(1f),
                LocalAmbientPreparationDispatcher provides Dispatchers.Unconfined) {
                ContentTheme(false) {
                    MediaAmbientBackground(null, false, Modifier.requiredSize(240.dp, 480.dp),
                        animating = false, presentation = presentation)
                }
            }
        }
        repeat(3) { compose.mainClock.advanceTimeByFrame(); compose.waitForIdle() }
        compose.runOnIdle { presentation.requestEnter() }
        repeat(3) { compose.mainClock.advanceTimeByFrame(); compose.waitForIdle() }
        assertEquals(1, entered)
        assertEquals(0L, presentation.pendingEnter)
        assertTrue(value(AmbientPresentationPrepared))
        assertFalse(value(AmbientHasContent))
    }

    @Test fun continuousResizePreservesTheArrivalDriverAndFrozenPhaseThenMotionSamplesLatestAspect() {
        val target = mutableStateOf(scene(Color.RED))
        val playing = mutableStateOf(false)
        val width = mutableStateOf(240)
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalDensity provides Density(1f),
                LocalAmbientPreparationDispatcher provides Dispatchers.Unconfined) {
                Box(Modifier.fillMaxSize().background(androidx.compose.ui.graphics.Color.Black)) {
                    MediaAmbientBackground(target.value, true, Modifier.requiredSize(width.value.dp, 480.dp),
                        animating = playing.value)
                }
            }
        }
        advanceTransitionStart(); compose.mainClock.advanceTimeBy(640)
        assertEquals(1f, value(AmbientOpacity), .001f)
        val frozenPhase = value(AmbientPhase)
        compose.runOnIdle { target.value = scene(Color.BLUE) }
        advanceTransitionStart(); compose.mainClock.advanceTimeBy(160)
        var fraction = value(AmbientFraction)
        assertTrue(fraction > 0f && fraction < 1f)
        for (nextWidth in listOf(256, 272, 288, 304, 320)) {
            compose.runOnIdle { width.value = nextWidth }
            repeat(2) { compose.mainClock.advanceTimeByFrame(); compose.waitForIdle() }
            val next = value(AmbientFraction)
            assertTrue("resizing cannot restart or reverse the 500ms arrival", next >= fraction && next > 0f)
            assertEquals(1f, value(AmbientOpacity), .001f)
            assertEquals(frozenPhase, value(AmbientPhase), .001f)
            assertEquals(ambientFrameSize(IntSize(nextWidth, 480)), value(AmbientPreparedSize))
            fraction = next
        }
        // Superseded widths must never leave the paused renderer at an older aspect.
        compose.runOnIdle { width.value = 252; width.value = 276; width.value = 304 }
        repeat(2) { compose.mainClock.advanceTimeByFrame(); compose.waitForIdle() }
        assertEquals(ambientFrameSize(IntSize(304, 480)), value(AmbientPreparedSize))
        assertEquals(frozenPhase, value(AmbientPhase), .001f)
        compose.mainClock.advanceTimeBy(400)
        assertEquals(1f, value(AmbientFraction), .001f)
        compose.runOnIdle { playing.value = true }
        dispatchFocus(true)
        advanceMotionPublication()
        val moving = value(AmbientPhase)
        assertTrue(moving > frozenPhase)
        for (nextWidth in listOf(256, 272, 288, 304, 320)) {
            compose.runOnIdle { width.value = nextWidth }
            repeat(2) { compose.mainClock.advanceTimeByFrame(); compose.waitForIdle() }
            assertEquals("geometry never starts another colour fade", 1f, value(AmbientFraction), .001f)
        }
        assertTrue("continuous resize cannot starve or restart the motion sampler", value(AmbientPhase) > moving)
        advanceMotionPublication()
        assertEquals(ambientFrameSize(IntSize(320, 480)), value(AmbientPreparedSize))
    }

    @Test fun coveringSettingsFreezeBackgroundWorkAndCollapseResumesTheExistingScene() {
        val state = mutableStateOf(ContentUiState(previewMode = false, page = PanelPage.Lyrics, settingsSection = SettingsSection.Lyrics))
        val texture = scene(Color.BLUE)
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalDensity provides Density(1f),
                LocalAmbientPreparationDispatcher provides Dispatchers.Unconfined) {
                ContentTheme(false) {
                    ContentPanel(state.value, { event ->
                        if (event == ContentEvent.SettingsCollapseTapped) state.value = state.value.copy(settingsCollapsed = !state.value.settingsCollapsed)
                    }, Modifier.requiredSize(640.dp, 1080.dp),
                        ambientBackground = { MediaAmbientBackground(texture, false, animating = true) })
                }
            }
        }
        advanceTransitionStart()
        dispatchFocus(true)
        compose.mainClock.advanceTimeBy(640)
        compose.waitForIdle()
        advanceMotionPublication()
        assertTrue(value(AmbientPhase) > 0f)
        compose.runOnIdle { state.value = state.value.copy(settingsOpen = true) }
        compose.mainClock.advanceTimeBy(640)
        compose.waitForIdle()
        val frozenPhase = value(AmbientPhase)
        val frozenFrame = value(AmbientPreparedGeneration)
        compose.mainClock.advanceTimeBy(1500)
        compose.waitForIdle()
        assertEquals("opaque settings do not sample the covered background", frozenPhase, value(AmbientPhase), .001f)
        assertEquals(frozenFrame, value(AmbientPreparedGeneration))
        assertEquals(1f, value(AmbientOpacity), .001f)
        compose.onNodeWithTag("settings-collapse").performClick()
        compose.mainClock.advanceTimeBy(480)
        compose.waitForIdle()
        advanceMotionPublication()
        assertTrue("revealing the page resumes the same motion phase", value(AmbientPhase) > frozenPhase)
        assertNotEquals(frozenFrame, value(AmbientPreparedGeneration))
        assertEquals("the retained scene never fades out on collapse", 1f, value(AmbientOpacity), .001f)
    }

    @Test fun appearanceReplacementDepartureAndPauseUseThePersistentDriver() {
        val target = mutableStateOf<AmbientArtwork?>(null)
        val playing = mutableStateOf(false); val active = mutableStateOf(true)
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalAmbientPreparationDispatcher provides Dispatchers.Unconfined) {
                Box(Modifier.fillMaxSize().background(androidx.compose.ui.graphics.Color.Black)) {
                    MediaAmbientBackground(target.value, true, active = active.value, animating = playing.value)
                }
            }
        }
        compose.waitForIdle()
        assertEquals(0f, value(AmbientOpacity), .001f)
        compose.runOnIdle { target.value = scene(Color.RED) }
        advanceTransitionStart(); compose.mainClock.advanceTimeBy(240)
        val arrival = value(AmbientOpacity)
        assertTrue(arrival > .1f && arrival < .9f)
        compose.mainClock.advanceTimeBy(400)
        assertEquals(1f, value(AmbientOpacity), .001f)
        val preparedSize = value(AmbientPreparedSize)
        assertTrue(preparedSize.width in 1..AMBIENT_MAX_FRAME_EDGE && preparedSize.height in 1..AMBIENT_MAX_FRAME_EDGE)
        assertTrue(value(AmbientHasContent))
        compose.runOnIdle { target.value = scene(Color.BLUE) }
        advanceTransitionStart(); compose.mainClock.advanceTimeBy(240)
        assertEquals(1f, value(AmbientOpacity), .001f)
        assertTrue(value(AmbientFraction) in .1f.. .9f)
        compose.runOnIdle { target.value = null }
        advanceTransitionStart(hasTarget = false); compose.mainClock.advanceTimeBy(240)
        assertEquals("appearance and departure share the same curve/time", arrival, 1f - value(AmbientOpacity), .04f)
        compose.mainClock.advanceTimeBy(400)
        assertEquals(0f, value(AmbientOpacity), .001f)
        compose.runOnIdle { target.value = scene(Color.GREEN); playing.value = true }
        advanceTransitionStart(); compose.mainClock.advanceTimeBy(640)
        val moving = value(AmbientPhase)
        assertTrue(moving > 0f)
        compose.runOnIdle { playing.value = false }
        compose.mainClock.advanceTimeByFrame(); compose.waitForIdle()
        val paused = value(AmbientPhase)
        val pausedFrame = value(AmbientPreparedGeneration)
        compose.mainClock.advanceTimeBy(1000)
        assertEquals(paused, value(AmbientPhase), .001f)
        assertEquals("pause publishes no new scene", pausedFrame, value(AmbientPreparedGeneration))
        compose.runOnIdle { playing.value = true }
        advanceMotionPublication()
        assertTrue(value(AmbientPhase) > paused)
        assertTrue("resume never catches up the paused second", value(AmbientPhase) - paused < .5f)
        assertNotEquals("motion publishes a fresh immutable texture", pausedFrame, value(AmbientPreparedGeneration))
        dispatchFocus(false)
        compose.mainClock.advanceTimeByFrame(); compose.waitForIdle()
        val unfocused = value(AmbientPhase)
        val unfocusedFrame = value(AmbientPreparedGeneration)
        compose.mainClock.advanceTimeBy(1000)
        assertEquals("window focus loss freezes motion without clearing colours", unfocused, value(AmbientPhase), .001f)
        assertEquals(unfocusedFrame, value(AmbientPreparedGeneration))
        assertEquals(1f, value(AmbientOpacity), .001f)
        dispatchFocus(true)
        advanceMotionPublication()
        assertTrue(value(AmbientPhase) > unfocused)
        assertTrue("focus return never catches up time spent unfocused", value(AmbientPhase) - unfocused < .5f)
        assertNotEquals(unfocusedFrame, value(AmbientPreparedGeneration))
        compose.runOnIdle { active.value = false }
        compose.waitForIdle(); compose.mainClock.advanceTimeBy(1000)
        assertEquals(0f, value(AmbientOpacity), .001f)
        assertEquals("host stop releases its prepared texture", 0, value(AmbientPreparedGeneration))
        val stopped = value(AmbientPhase)
        compose.mainClock.advanceTimeBy(2000)
        assertEquals("lifecycle stop freezes the existing phase", stopped, value(AmbientPhase), .001f)
        assertEquals(0, value(AmbientPreparedGeneration))
        compose.runOnIdle { active.value = true }
        advanceTransitionStart()
        advanceMotionPublication()
        assertTrue("resume continues instead of restarting at zero", value(AmbientPhase) > stopped)
        assertTrue("host return never replays the background time", value(AmbientPhase) - stopped < .5f)
        assertNotEquals(0, value(AmbientPreparedGeneration))
    }
}
