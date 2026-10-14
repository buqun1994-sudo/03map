package com.icar03.content.ui

import android.app.Activity
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.Canvas
import android.os.Build
import android.view.View
import android.view.WindowManager
import androidx.compose.foundation.layout.width
import androidx.compose.runtime.*
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.dp
import java.io.File
import kotlinx.coroutines.Dispatchers
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Production panel/settings integration at physical 1920x1080, 640px split and system 212dpi. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w1920dp-h1080dp-mdpi")
open class CruiseSignalImmersiveTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    private val density = 212f / 160f
    private var viewportPx by mutableFloatStateOf(640f)
    private val presentation = ContentPresentation().apply {
        updateGeometry(640f, 640f, 1280f, 1080)
        updatePhase(0)
    }
    private var state by mutableStateOf(previewState().copy(
        previewMode = false, page = PanelPage.Lyrics, time = "12:34", showWeekday = false,
        showBattery = true, batteryPercent = 72, batteryDescription = "电量72%",
        immersiveShowTopBar = true, immersiveTopBarKeepSplit = true, showCruiseSignals = true,
        media = MediaState(title = "沿途的风", artist = "原生布局验证", playing = false, isSong = true),
        lyricsProviderSettings = LyricsProviderUiState(available = true),
    ))
    private var signals by mutableStateOf(CruiseSignalState(listOf(
        CruiseSignalItem(CruiseSignalDirection.Left, CruiseSignalColor.Red, 28),
        CruiseSignalItem(CruiseSignalDirection.Straight, CruiseSignalColor.Green, 12),
        CruiseSignalItem(CruiseSignalDirection.Right, CruiseSignalColor.Green),
    )))
    private var available by mutableStateOf(true)
    private val events = mutableListOf<ContentEvent>()
    private var sounds = 0

    private fun mount() {
        compose.setContent {
            val view = LocalView.current
            SideEffect {
                var context = view.context
                while (context is ContextWrapper && context !is Activity) context = context.baseContext
                val window = (context as Activity).window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                @Suppress("DEPRECATION")
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            CompositionLocalProvider(LocalDensity provides Density(density),
                LocalLyricGeometryDispatcher provides Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined,
                LocalContentClickSound provides { sounds++ }) {
                ContentTheme(dark) {
                    ContentPanel(state.copy(dark = dark), { event ->
                        events += event
                        state = when (event) {
                            is ContentEvent.ShowCruiseSignalsChanged -> state.copy(showCruiseSignals = event.value)
                            is ContentEvent.ImmersiveShowTopBarChanged -> state.copy(immersiveShowTopBar = event.value)
                            else -> state
                        }
                    }, Modifier.width((viewportPx / density).dp).testTag("cruise-immersive-frame"),
                        presentation = presentation, cruiseSignalsAvailable = available,
                        cruiseSignals = { signals })
                }
            }
        }
        settle()
    }

    private fun settle() {
        compose.mainClock.advanceTimeBy(600)
        compose.waitForIdle()
    }
    private fun wide(value: Boolean) {
        compose.runOnIdle {
            viewportPx = if (value) 1920f else 640f
            presentation.updateGeometry(viewportPx, 640f, 1280f, 1080)
            presentation.updatePhase(if (value) 1 else 0)
        }
        settle()
    }
    private fun bounds(tag: String): Rect = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
    private fun statusRowPresent() {
        compose.onNodeWithTag("top-time").assertIsDisplayed().assertTextEquals("12:34")
        compose.onNodeWithTag("top-battery").assertIsDisplayed()
    }

    @Test fun signalsAppearOnlyInImmersiveAndRespectBothIndependentVisibilityGates() {
        mount()
        statusRowPresent()
        compose.onNodeWithTag("cruise-signal-bar").assertDoesNotExist()
        wide(true)
        statusRowPresent()
        compose.onNodeWithContentDescription("左转红灯，28秒").assertIsDisplayed()
        compose.onNodeWithContentDescription("直行绿灯，12秒").assertIsDisplayed()
        val bar = bounds("top-bar")
        val lamps = bounds("cruise-signal-bar")
        val time = bounds("top-time")
        assertTrue("lamps inside existing top bar", lamps.top >= bar.top && lamps.bottom <= bar.bottom)
        assertEquals(bar.center.y, lamps.center.y, 1f)
        assertTrue("lamps follow time tightly", lamps.left >= time.right && lamps.left - time.right <= 12f)
        assertTrue("compact natural width", lamps.width < bar.width * .6f)
        capture("immersive-inline-oem")
        compose.runOnIdle { state = state.copy(showCruiseSignals = false) }
        compose.onNodeWithTag("cruise-signal-bar").assertDoesNotExist()
        statusRowPresent()
        compose.runOnIdle { state = state.copy(showCruiseSignals = true, immersiveShowTopBar = false) }
        compose.onNodeWithTag("cruise-signal-bar").assertDoesNotExist()
        compose.onNodeWithTag("top-bar").assertDoesNotExist()
        compose.runOnIdle { state = state.copy(immersiveShowTopBar = true) }
        compose.onNodeWithContentDescription("左转红灯，28秒").assertIsDisplayed()
        wide(false)
        compose.onNodeWithTag("cruise-signal-bar").assertDoesNotExist()
        statusRowPresent()
        assertTrue(state.showCruiseSignals)
    }

    @Test fun topBarSplitAndFullWidthPreserveStatusAndEmptyBatchRemovesSignalRow() {
        mount()
        wide(true)
        val inset = 24f * density
        assertEquals(640f - inset, bounds("top-bar").width, 1f)
        val lamps = bounds("cruise-signal-bar")
        assertTrue(lamps.width < bounds("top-bar").width)
        val dock = bounds("floating-dock")
        val time = bounds("top-time")
        compose.runOnIdle { state = state.copy(immersiveTopBarKeepSplit = false) }
        settle()
        statusRowPresent()
        assertEquals(1920f - inset, bounds("top-bar").width, 1f)
        assertEquals(lamps.width, bounds("cruise-signal-bar").width, 1f)
        assertEquals(lamps.left, bounds("cruise-signal-bar").left, 1f)
        assertEquals(dock, bounds("floating-dock"))
        assertEquals(time.left, bounds("top-time").left, 1f)
        capture("immersive-full-width-inline-oem")
        compose.runOnIdle { signals = CruiseSignalState(); available = false }
        compose.onNodeWithTag("cruise-signal-bar").assertDoesNotExist()
        statusRowPresent()
        compose.onNodeWithContentDescription("左转红灯，28秒").assertDoesNotExist()
        assertEquals(1920f - inset, bounds("top-bar").width, 1f)
    }

    @Test fun settingsSwitchFollowsShowStatusBarAndPreservesItsCheckedPreference() {
        state = state.copy(settingsOpen = true, settingsSection = SettingsSection.TopBar,
            showCruiseSignals = true, immersiveShowTopBar = true)
        mount()
        val signal = compose.onNodeWithTag("settings-switch-下个路口红绿灯")
        signal.performScrollTo().assertIsEnabled().assertIsOn()
        val before = compose.onNodeWithTag("settings-switch-全屏时显示状态栏").fetchSemanticsNode()
        val middle = signal.fetchSemanticsNode()
        val after = compose.onNodeWithTag("settings-switch-状态栏保持分屏").fetchSemanticsNode()
        assertTrue(before.positionInRoot.y + before.size.height <= middle.positionInRoot.y)
        assertTrue(middle.positionInRoot.y + middle.size.height <= after.positionInRoot.y)
        capture("settings-enabled")
        signal.performClick()
        assertFalse(state.showCruiseSignals)
        assertEquals(1, events.count { it is ContentEvent.ShowCruiseSignalsChanged })
        signal.performClick()
        assertTrue(state.showCruiseSignals)
        val toggles = events.count { it is ContentEvent.ShowCruiseSignalsChanged }
        val acceptedSounds = sounds
        compose.runOnIdle { state = state.copy(immersiveShowTopBar = false) }
        signal.assertIsNotEnabled().assertIsOn()
        signal.performClick()
        assertEquals(toggles, events.count { it is ContentEvent.ShowCruiseSignalsChanged })
        assertEquals(acceptedSounds, sounds)
        assertTrue(state.showCruiseSignals)
        capture("settings-disabled")
        compose.runOnIdle { state = state.copy(immersiveShowTopBar = true) }
        signal.assertIsEnabled().assertIsOn()
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture(prefix: String) {
        val frame = compose.runOnIdle {
            val node = compose.onNodeWithTag("cruise-immersive-frame").fetchSemanticsNode()
            val root = node.root as ViewRootForTest
            val bounds = node.boundsInRoot
            Bitmap.createBitmap(bounds.width.toInt(), bounds.height.toInt(), Bitmap.Config.ARGB_8888).also {
                val canvas = Canvas(it)
                canvas.translate(-bounds.left, -bounds.top)
                root.view.draw(canvas)
            }
        }
        val directory = File("build/outputs/cruise-signal").apply { mkdirs() }
        File(directory, "$prefix-api${Build.VERSION.SDK_INT}-${if (dark) "dark" else "light"}.png").outputStream().use {
            assertTrue(frame.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
    }
}

@Config(sdk = [28], qualifiers = "w1920dp-h1080dp-mdpi")
class CruiseSignalImmersiveDarkTest : CruiseSignalImmersiveTest() { override val dark = true }

@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-mdpi")
class CruiseSignalImmersiveApi34Test : CruiseSignalImmersiveTest()

@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-mdpi")
class CruiseSignalImmersiveApi34DarkTest : CruiseSignalImmersiveTest() { override val dark = true }
