package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.platform.ViewRootForTest
import java.io.File
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.snapshots.Snapshot
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.airbnb.lottie.LottieCompositionFactory
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** The Control Center tile owns a real OEM one-shot action, separate from vehicle readback. */
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
open class ControlCenterIconInteractionTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()

    private val state = mutableStateOf(ContentUiState(
        previewMode = false,
        dark = false,
        page = PanelPage.Shortcuts,
        layoutPreferencesLoaded = false,
        shortcutButtons = listOf(ShortcutId.ControlCenter),
        systemControls = emptyList(),
        controlCenterAvailable = true,
    ))
    private val events = mutableListOf<ContentEvent>()
    private var sounds = 0
    private val owner = object : LifecycleOwner {
        override val lifecycle = LifecycleRegistry.createUnsafe(this).apply {
            currentState = Lifecycle.State.RESUMED
        }
    }

    private val iconBase: Color
        get() = if (dark) Color(0xFFE8E8E8) else Color(0xFF27303B)
    private val tileBase: Color
        get() = if (dark) Color(0xFF1A1A1A) else Color(0xFFE9E9E9)

    private fun mount() {
        state.value = state.value.copy(dark = dark)
        assertNotNull(
            "the Control Center must use the shipped OEM animation",
            LottieCompositionFactory.fromAssetSync(
                RuntimeEnvironment.getApplication(), "content-oem/ico_home_applist.json",
            ).value,
        )
        compose.setContent {
            CompositionLocalProvider(
                LocalLifecycleOwner provides owner,
                LocalContentClickSound provides { sounds++ },
            ) {
                ContentTheme(dark) {
                    ContentPanel(
                        state.value,
                        { events += it },
                        Modifier.fillMaxSize().testTag("control-center-host"),
                    )
                }
            }
        }
        compose.waitForIdle()
    }

    private fun button() = compose.onNodeWithTag("shortcut-ControlCenter")
    private fun icon() = compose.onNodeWithTag("shortcut-icon-ControlCenter", useUnmergedTree = true)

    private fun waitForIconReady() {
        compose.waitUntil(timeoutMillis = 5_000) {
            val config = icon().fetchSemanticsNode().config
            config[IconAnimationReady] &&
                config[IconAnimationAsset] == "ico_home_applist.json" &&
                config[OemResource] == R.drawable.content_oem_ico_home_applist
        }
    }

    private fun assertIdleIcon() {
        icon()
            .assert(SemanticsMatcher.expectValue(OemResource, R.drawable.content_oem_ico_home_applist))
            .assert(SemanticsMatcher.expectValue(OemTint, iconBase.value.toLong()))
            .assert(SemanticsMatcher.expectValue(IconAnimationAsset, "ico_home_applist.json"))
            .assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
            .assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
    }

    private fun assertStableTile(fill: Long = tileBase.value.toLong()) {
        button()
            .assert(SemanticsMatcher.expectValue(ControlFill, fill))
            .assert(SemanticsMatcher.expectValue(PressFeedback, "none"))
            .assert(SemanticsMatcher.expectValue(PressActive, false))
    }

    private fun advanceNativeFrames(durationMs: Long = 16L) {
        check(!compose.mainClock.autoAdvance)
        val deadline = compose.mainClock.currentTime + durationMs
        while (compose.mainClock.currentTime < deadline) {
            compose.mainClock.advanceTimeByFrame()
            compose.waitForIdle()
        }
    }

    private fun advanceUntil(maxFrames: Int, condition: () -> Boolean) {
        repeat(maxFrames) {
            advanceNativeFrames()
            if (condition()) return
        }
        fail("condition did not settle within $maxFrames frames")
    }

    @Test
    fun acceptedControlCenterTapPlaysTheOemBlueActionThenRestoresBaseState() {
        mount()
        button().assertIsDisplayed().assertIsEnabled()
            .assertContentDescriptionEquals("系统控制中心")
            .assert(SemanticsMatcher.expectValue(SemanticsProperties.StateDescription, "打开"))
        waitForIconReady()
        assertIdleIcon()
        assertStableTile()

        compose.mainClock.autoAdvance = false
        button().performClick()
        assertEquals(listOf(ContentEvent.ControlCenterTapped), events)
        assertEquals("one accepted action produces one click sound", 1, sounds)

        var sawBlue = false
        var sawPlayback = false
        repeat(90) {
            advanceNativeFrames()
            val config = icon().fetchSemanticsNode().config
            assertStableTile()
            sawBlue = sawBlue || config[OemTint] == ContentFunctionalBlue.value.toLong()
            sawPlayback = sawPlayback || config[IconAnimationPlaying]
            if (sawBlue && sawPlayback) return@repeat
        }
        assertTrue("accepted Control Center action enters the native OEM animation", sawPlayback)
        assertTrue("accepted action briefly tints the tile functional blue", sawBlue)
        assertEquals("the action uses the real OEM asset", "ico_home_applist.json",
            icon().fetchSemanticsNode().config[IconAnimationAsset])

        advanceUntil(180) {
            val config = icon().fetchSemanticsNode().config
            config[OemTint] == iconBase.value.toLong() &&
                !config[IconAnimationPlaying] && config[IconAnimationProgress] == 1f
        }
        assertIdleIcon()
        assertStableTile()
        assertEquals(1, events.size)
        assertEquals(1, sounds)
        compose.mainClock.autoAdvance = true
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun captureIcon(label: String): Bitmap = compose.runOnIdle {
        val node = icon().fetchSemanticsNode()
        val root = node.root as ViewRootForTest
        val b = node.boundsInRoot
        Bitmap.createBitmap(b.width.toInt(), b.height.toInt(), Bitmap.Config.ARGB_8888).also {
            val canvas = Canvas(it)
            canvas.translate(-b.left, -b.top)
            root.view.draw(canvas)
            val path = File("build/frames/control-center-${if (dark) "dark" else "light"}-$label.png")
            path.parentFile!!.mkdirs()
            path.outputStream().use { output -> assertTrue(it.compress(Bitmap.CompressFormat.PNG, 100, output)) }
        }
    }

    private fun bluePixels(bitmap: Bitmap): Int {
        var count = 0
        for (y in 0 until bitmap.height) for (x in 0 until bitmap.width) {
            val pixel = bitmap.getPixel(x, y)
            if (android.graphics.Color.red(pixel) < 60 && android.graphics.Color.green(pixel) in 80..180 &&
                android.graphics.Color.blue(pixel) > 190) count++
        }
        return count
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun focus(value: Boolean) {
        val root = icon().fetchSemanticsNode().root as ViewRootForTest
        val method = android.view.ViewTreeObserver::class.java
            .getDeclaredMethod("dispatchOnWindowFocusChange", java.lang.Boolean.TYPE).apply { isAccessible = true }
        compose.runOnIdle { method.invoke(root.view.viewTreeObserver, value) }
        advanceNativeFrames(96)
    }

    @Test fun nativeBluePixelsFollowPlaybackAndRepeatedActionRestartsTheSameClock() {
        mount()
        waitForIconReady()
        compose.mainClock.autoAdvance = false
        assertEquals(0, bluePixels(captureIcon("idle-native")))
        button().performClick()
        advanceUntil(30) { icon().fetchSemanticsNode().config[IconAnimationPlaying] }
        advanceNativeFrames(240)
        assertTrue("real drawn icon becomes functional blue", bluePixels(captureIcon("blue-native")) > 4)
        val previous = icon().fetchSemanticsNode().config[IconAnimationProgress]
        button().performClick()
        advanceNativeFrames(32)
        val restarted = icon().fetchSemanticsNode().config
        assertTrue("a second accepted tap starts a fresh action", restarted[IconAnimationProgress] < previous)
        assertEquals(ContentFunctionalBlue.value.toLong(), restarted[OemTint])
        advanceUntil(100) { !icon().fetchSemanticsNode().config[IconAnimationPlaying] }
        // Finish the frame's recomposition/draw before examining the restored palette.
        advanceNativeFrames(32)
        assertIdleIcon()
        assertEquals("tail restores the neutral icon palette", 0, bluePixels(captureIcon("restored-native")))
        assertEquals(2, sounds)
        assertEquals(listOf(ContentEvent.ControlCenterTapped, ContentEvent.ControlCenterTapped), events)
        compose.mainClock.autoAdvance = true
    }

    @Test fun lifecycleAndFocusCancelBluePlaybackAndResumeDoesNotReplayAnOldAction() {
        mount()
        waitForIconReady()
        compose.mainClock.autoAdvance = false
        button().performClick()
        advanceUntil(30) { icon().fetchSemanticsNode().config[IconAnimationPlaying] }
        compose.runOnIdle { owner.lifecycle.currentState = Lifecycle.State.CREATED }
        advanceNativeFrames(96)
        icon().assert(SemanticsMatcher.expectValue(IconAnimationVisible, false))
            .assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
            .assert(SemanticsMatcher.expectValue(OemTint, iconBase.value.toLong()))
        assertEquals(0, bluePixels(captureIcon("background-cancelled")))
        compose.runOnIdle { owner.lifecycle.currentState = Lifecycle.State.RESUMED }
        advanceNativeFrames(240)
        icon().assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        button().performClick()
        advanceUntil(30) { icon().fetchSemanticsNode().config[IconAnimationPlaying] }
        focus(false)
        icon().assert(SemanticsMatcher.expectValue(IconAnimationVisible, false))
            .assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
            .assert(SemanticsMatcher.expectValue(OemTint, iconBase.value.toLong()))
        focus(true)
        advanceNativeFrames(300)
        icon().assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
            .assert(SemanticsMatcher.expectValue(OemTint, iconBase.value.toLong()))
        assertEquals("cancellation and resume create no extra action or click sound", 2, sounds)
        assertEquals(2, events.size)
        compose.mainClock.autoAdvance = true
    }

    @Test
    fun canceledControlCenterPressDoesNotDispatchSoundOrStartTheAction() {
        mount()
        waitForIconReady()
        assertIdleIcon()
        assertStableTile()
        compose.mainClock.autoAdvance = false

        val button = button()
        button.performTouchInput { down(center) }
        advanceNativeFrames(96)
        button.performTouchInput { cancel() }
        advanceNativeFrames(320)

        assertTrue(events.isEmpty())
        assertEquals(0, sounds)
        assertIdleIcon()
        assertStableTile()
        compose.mainClock.autoAdvance = true
    }

    @Test
    fun unavailableControlCenterRejectsPhysicalAndSemanticActivation() {
        mount()
        waitForIconReady()
        compose.mainClock.autoAdvance = false
        compose.runOnIdle {
            state.value = state.value.copy(controlCenterAvailable = false)
            Snapshot.sendApplyNotifications()
        }
        advanceUntil(10) {
            button().fetchSemanticsNode().config[SemanticsProperties.StateDescription] == "能力不可用"
        }

        val button = button()
        button.assertIsDisplayed().assertIsNotEnabled()
            .assert(SemanticsMatcher.expectValue(SemanticsProperties.StateDescription, "能力不可用"))
        assertStableTile()
        assertIdleIcon()
        button.performTouchInput { down(center) }
        advanceNativeFrames(96)
        button.performTouchInput { up() }
        button.performSemanticsAction(androidx.compose.ui.semantics.SemanticsActions.OnClick) { it() }
        advanceNativeFrames(320)

        assertTrue("unavailable Control Center does not dispatch", events.isEmpty())
        assertEquals("unavailable Control Center does not sound", 0, sounds)
        assertIdleIcon()
        assertStableTile()
        compose.mainClock.autoAdvance = true
    }
}

@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class ControlCenterIconInteractionDarkTest : ControlCenterIconInteractionTest() {
    override val dark = true
}
