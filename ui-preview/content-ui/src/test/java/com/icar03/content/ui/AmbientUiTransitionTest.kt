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

    @Test fun stableViewportPreparesPresentationEndpointsWithoutChangingVisibleCompactPixels() {
        val presentation = ContentPresentation().apply { updateGeometry(240f, 240f, 480f, 480) }
        val texture = scene(Color.BLUE)
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalDensity provides Density(1f),
                LocalAmbientPreparationDispatcher provides Dispatchers.Unconfined) {
                ContentTheme(true) {
                    MediaAmbientBackground(texture, true, Modifier.requiredSize(240.dp, 480.dp), presentation = presentation)
                }
            }
        }
        advanceTransitionStart()
        compose.mainClock.advanceTimeBy(640)
        compose.waitForIdle()
        val stable = captureAmbient()
        assertTrue("stable content preps both presentation endpoints", value(AmbientPresentationPrepared))

        compose.runOnIdle {
            presentation.updatePhase(2)
            androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
        }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        assertTrue("legacy press phase keeps the prepared presentation scene", value(AmbientPresentationPrepared))
        assertSameAmbientPixels(stable, captureAmbient(), "press phase must keep the current bitmap")

        compose.runOnIdle {
            presentation.updatePhase(6)
            androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
        }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        assertTrue("legacy blocked phase keeps the prepared presentation scene", value(AmbientPresentationPrepared))
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
                    MediaAmbientBackground(texture, true, Modifier.requiredSize(240.dp, 480.dp), presentation = presentation)
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
                    MediaAmbientBackground(texture, false, Modifier.requiredSize(width.value.dp, 480.dp), presentation = presentation)
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
                assertFalse("reverse completion leaves the presentation canvas path", presentation.moving)
        assertEquals(0f, presentation.progress, 0f)
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
                    MediaAmbientBackground(null, false, Modifier.requiredSize(240.dp, 480.dp), presentation = presentation)
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

    @Test fun continuousResizePreservesArrivalAndOnlyPreparesChangedGeometry() {
        val target = mutableStateOf(scene(Color.RED))
        val width = mutableStateOf(240)
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalDensity provides Density(1f),
                LocalAmbientPreparationDispatcher provides Dispatchers.Unconfined) {
                Box(Modifier.fillMaxSize().background(androidx.compose.ui.graphics.Color.Black)) {
                    MediaAmbientBackground(target.value, true, Modifier.requiredSize(width.value.dp, 480.dp))
                }
            }
        }
        advanceTransitionStart(); compose.mainClock.advanceTimeBy(640)
        assertEquals(1f, value(AmbientOpacity), .001f)
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
            assertEquals(ambientFrameSize(IntSize(nextWidth, 480)), value(AmbientPreparedSize))
            fraction = next
        }
        compose.runOnIdle { width.value = 252; width.value = 276; width.value = 304 }
        repeat(2) { compose.mainClock.advanceTimeByFrame(); compose.waitForIdle() }
        assertEquals(ambientFrameSize(IntSize(304, 480)), value(AmbientPreparedSize))
        compose.mainClock.advanceTimeBy(640)
        assertEquals(1f, value(AmbientFraction), .001f)
        val generation = value(AmbientPreparedGeneration)
        val pixels = captureAmbient()
        compose.mainClock.advanceTimeBy(5_000)
        assertEquals("steady geometry publishes no new scene", generation, value(AmbientPreparedGeneration))
        assertSameAmbientPixels(pixels, captureAmbient(), "static resized endpoint")
    }

    @Test fun coveringAndRevealingSettingsKeepTheSameStaticBackground() {
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
                        ambientBackground = { MediaAmbientBackground(texture, false) })
                }
            }
        }
        advanceTransitionStart(); compose.mainClock.advanceTimeBy(640)
        compose.waitForIdle()
        val generation = value(AmbientPreparedGeneration)
        compose.runOnIdle { state.value = state.value.copy(settingsOpen = true) }
        repeat(2) { compose.mainClock.advanceTimeByFrame(); compose.waitForIdle() }
        compose.mainClock.advanceTimeBy(2_000); compose.waitForIdle()
        assertEquals("covering the background does not restart its static endpoint", generation, value(AmbientPreparedGeneration))
        assertEquals(1f, value(AmbientOpacity), .001f)
        compose.onNodeWithTag("settings-collapse").performClick()
        compose.mainClock.advanceTimeBy(1_000); compose.waitForIdle()
        assertEquals("revealing the background does not start a sampler", generation, value(AmbientPreparedGeneration))
        assertEquals("the retained scene never fades out on collapse", 1f, value(AmbientOpacity), .001f)
    }

    @Test fun steadyStaticFieldHasNoWorkerTasksOrFramePublications() {
        val dispatcher = object : CoroutineDispatcher() {
            var tasks = 0
            override fun dispatch(context: CoroutineContext, block: Runnable) { tasks++; block.run() }
        }
        val base = Bitmap.createBitmap(128, 128, Bitmap.Config.ARGB_8888).apply {
            for (y in 0 until height) for (x in 0 until width) setPixel(x, y, Color.rgb(30 + x, 45 + y, 90 + x / 2))
        }
        val texture = AmbientArtwork(base, Bitmap.createBitmap(128, 128, Bitmap.Config.ARGB_8888),
            listOf(AmbientGlowPose(11f, .45f, .55f, 1.1f)))
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalAmbientPreparationDispatcher provides dispatcher) {
                MediaAmbientBackground(texture, true, Modifier.requiredSize(240.dp, 480.dp))
            }
        }
        advanceTransitionStart(); compose.mainClock.advanceTimeBy(640); compose.waitForIdle()
        val tasks = dispatcher.tasks
        val generation = value(AmbientPreparedGeneration)
        val pixels = captureAmbient()
        assertTrue("the initial static endpoint is prepared once", tasks > 0)
        compose.mainClock.advanceTimeBy(10_000); compose.waitForIdle()
        assertEquals("no periodic worker preparation in steady state", tasks, dispatcher.tasks)
        assertEquals("no periodic scene publication in steady state", generation, value(AmbientPreparedGeneration))
        assertSameAmbientPixels(pixels, captureAmbient(), "static seeded field after ten seconds")
    }

    @Test fun appearanceReplacementDepartureAndLifecycleKeepTheirExistingTransitions() {
        val target = mutableStateOf<AmbientArtwork?>(null)
        val active = mutableStateOf(true)
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalAmbientPreparationDispatcher provides Dispatchers.Unconfined) {
                Box(Modifier.fillMaxSize().background(androidx.compose.ui.graphics.Color.Black)) {
                    MediaAmbientBackground(target.value, true, active = active.value)
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
        compose.runOnIdle { target.value = scene(Color.GREEN) }
        advanceTransitionStart(); compose.mainClock.advanceTimeBy(640)
        val generation = value(AmbientPreparedGeneration)
        val pixels = captureAmbient()
        dispatchFocus(false); compose.mainClock.advanceTimeBy(1_000); compose.waitForIdle()
        assertEquals("focus loss preserves the static scene", generation, value(AmbientPreparedGeneration))
        dispatchFocus(true); compose.mainClock.advanceTimeBy(1_000); compose.waitForIdle()
        assertEquals("focus return does not start a sampler", generation, value(AmbientPreparedGeneration))
        assertSameAmbientPixels(pixels, captureAmbient(), "static field across focus changes")
        compose.runOnIdle { active.value = false }
        repeat(2) { compose.mainClock.advanceTimeByFrame(); compose.waitForIdle() }
        compose.mainClock.advanceTimeBy(1_000); compose.waitForIdle()
        assertEquals(0f, value(AmbientOpacity), .001f)
        assertEquals("host stop releases its prepared texture", 0, value(AmbientPreparedGeneration))
        compose.mainClock.advanceTimeBy(2_000)
        assertEquals(0, value(AmbientPreparedGeneration))
        compose.runOnIdle { active.value = true }
        advanceTransitionStart(); compose.mainClock.advanceTimeBy(640)
        assertEquals(1f, value(AmbientOpacity), .001f)
        assertNotEquals(0, value(AmbientPreparedGeneration))
        assertSameAmbientPixels(pixels, captureAmbient(), "host restart restores the same static field")
    }
}
