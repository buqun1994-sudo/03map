package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Color
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.mutableStateOf
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
    private fun value(key: SemanticsPropertyKey<Float>) = compose.onNodeWithTag("media-ambient").fetchSemanticsNode().config[key]

    @Test fun appearanceReplacementDepartureAndPauseUseThePersistentDriver() {
        val target = mutableStateOf<AmbientArtwork?>(null)
        val playing = mutableStateOf(false); val active = mutableStateOf(true)
        compose.mainClock.autoAdvance = false
        compose.setContent {
            Box(Modifier.fillMaxSize().background(androidx.compose.ui.graphics.Color.Black)) {
                MediaAmbientBackground(target.value, true, active = active.value, animating = playing.value)
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
        compose.mainClock.advanceTimeBy(1000)
        assertEquals(paused, value(AmbientPhase), .001f)
        compose.runOnIdle { playing.value = true }
        compose.waitForIdle(); compose.mainClock.advanceTimeBy(128)
        assertTrue(value(AmbientPhase) > paused)
        compose.runOnIdle { active.value = false }
        compose.waitForIdle(); compose.mainClock.advanceTimeBy(1000)
        assertEquals(0f, value(AmbientOpacity), .001f)
        val stopped = value(AmbientPhase)
        compose.mainClock.advanceTimeBy(2000)
        assertEquals("lifecycle stop freezes the existing phase", stopped, value(AmbientPhase), .001f)
        compose.runOnIdle { active.value = true }
        compose.waitForIdle(); compose.mainClock.advanceTimeBy(128)
        assertTrue("resume continues instead of restarting at zero", value(AmbientPhase) > stopped)
    }
}
