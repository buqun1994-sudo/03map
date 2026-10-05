package com.icar03.content.ui

import android.graphics.Bitmap
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
    private fun dispatchFocus(focused: Boolean) {
        val root = compose.onNodeWithTag("media-ambient").fetchSemanticsNode().root as ViewRootForTest
        val dispatch = ViewTreeObserver::class.java.getDeclaredMethod("dispatchOnWindowFocusChange", java.lang.Boolean.TYPE)
            .apply { isAccessible = true }
        compose.runOnIdle { dispatch.invoke(root.view.viewTreeObserver, focused) }
    }

    private fun advanceMotionPublication() {
        // Apply the resume/focus input, then allow at most two bounded scene samples.
        // AmbientPhase describes the displayed scene, not the former 60Hz clock state.
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(2L * AMBIENT_SCENE_INTERVAL_NS / 1_000_000L)
        compose.waitForIdle()
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
        repeat(2) { compose.mainClock.advanceTimeByFrame(); compose.waitForIdle() }
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
        compose.waitForIdle(); compose.mainClock.advanceTimeBy(640)
        assertEquals(1f, value(AmbientOpacity), .001f)
        val frozenPhase = value(AmbientPhase)
        compose.runOnIdle { target.value = scene(Color.BLUE) }
        compose.waitForIdle(); compose.mainClock.advanceTimeBy(160)
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
        compose.waitForIdle(); compose.mainClock.advanceTimeBy(240)
        val arrival = value(AmbientOpacity)
        assertTrue(arrival > .1f && arrival < .9f)
        compose.mainClock.advanceTimeBy(400)
        assertEquals(1f, value(AmbientOpacity), .001f)
        val preparedSize = value(AmbientPreparedSize)
        assertTrue(preparedSize.width in 1..AMBIENT_MAX_FRAME_EDGE && preparedSize.height in 1..AMBIENT_MAX_FRAME_EDGE)
        assertTrue(value(AmbientHasContent))
        compose.runOnIdle { target.value = scene(Color.BLUE) }
        compose.waitForIdle(); compose.mainClock.advanceTimeBy(240)
        assertEquals(1f, value(AmbientOpacity), .001f)
        assertTrue(value(AmbientFraction) in .1f.. .9f)
        compose.runOnIdle { target.value = null }
        compose.waitForIdle(); compose.mainClock.advanceTimeBy(240)
        assertEquals("appearance and departure share the same curve/time", arrival, 1f - value(AmbientOpacity), .04f)
        compose.mainClock.advanceTimeBy(400)
        assertEquals(0f, value(AmbientOpacity), .001f)
        compose.runOnIdle { target.value = scene(Color.GREEN); playing.value = true }
        compose.waitForIdle(); compose.mainClock.advanceTimeBy(640)
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
        advanceMotionPublication()
        assertTrue("resume continues instead of restarting at zero", value(AmbientPhase) > stopped)
        assertTrue("host return never replays the background time", value(AmbientPhase) - stopped < .5f)
        assertNotEquals(0, value(AmbientPreparedGeneration))
    }
}
