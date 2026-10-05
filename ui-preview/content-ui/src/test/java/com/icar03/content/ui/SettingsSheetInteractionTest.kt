package com.icar03.content.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.WindowManager
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.text.TextLayoutResult
import androidx.compose.ui.unit.Density
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File

/** Real Panel touch paths and Android frames, including intermediate sheet motion. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
open class SettingsSheetInteractionTest {
    protected open val dark = false
    protected open val systemDpi: Int? = null
    @get:Rule val compose = createComposeRule()
    private val state = mutableStateOf(ContentUiState(previewMode = false))
    private val events = mutableListOf<ContentEvent>()
    private var density = 1f

    private fun mount(open: Boolean = false) {
        state.value = state.value.copy(settingsOpen = open)
        compose.setContent {
            val view = LocalView.current
            val presentationDensity = systemDpi?.let { Density(it / 160f) } ?: LocalDensity.current
            @Suppress("DEPRECATION")
            SideEffect {
                density = presentationDensity.density
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            CompositionLocalProvider(LocalDensity provides presentationDensity) {
            ContentTheme(dark) {
                ContentPanel(state.value.copy(dark = dark), { event ->
                    events += event
                    when (event) {
                        ContentEvent.SettingsTapped -> state.value = state.value.copy(settingsOpen = !state.value.settingsOpen, settingsSection = SettingsSection.TopBar)
                        ContentEvent.SettingsDismissed -> state.value = state.value.copy(settingsOpen = false)
                        is ContentEvent.SettingsSectionSelected -> state.value = state.value.copy(settingsSection = event.section)
                        is ContentEvent.ShowSecondsChanged -> state.value = state.value.copy(showSeconds = event.value)
                        is ContentEvent.ShowWeekdayChanged -> state.value = state.value.copy(showWeekday = event.value)
                        is ContentEvent.ShowIndoorTemperatureChanged -> state.value = state.value.copy(showIndoorTemperature = event.value)
                        is ContentEvent.ShowBatteryChanged -> state.value = state.value.copy(showBattery = event.value)
                        is ContentEvent.ShowChargingStatusChanged -> state.value = state.value.copy(showChargingStatus = event.value)
                        is ContentEvent.LyricsFontScaleChanged -> state.value = state.value.copy(lyricsFontScale = event.value)
                        is ContentEvent.LyricsLineSpacingChanged -> state.value = state.value.copy(lyricsLineSpacing = event.value)
                        is ContentEvent.LyricsSpeakerLayoutChanged -> state.value = state.value.copy(lyricsSpeakerLayout = event.value)
                        is ContentEvent.LyricsHighlightChanged -> state.value = state.value.copy(lyricsHighlight = event.value)
                        is ContentEvent.ImmersiveShowTopBarChanged -> state.value = state.value.copy(immersiveShowTopBar = event.value)
                        is ContentEvent.ImmersiveShowDockChanged -> state.value = state.value.copy(immersiveShowDock = event.value)
                        is ContentEvent.ShowAmbientArtworkChanged -> state.value = state.value.copy(showAmbientArtwork = event.value)
                        is ContentEvent.ShowMediaSourceSwitcherChanged -> state.value = state.value.copy(showMediaSourceSwitcher = event.value)
                        is ContentEvent.DockButtonCountChanged -> state.value = state.value.copy(dockButtonCount = event.value)
                        is ContentEvent.ShowActionFeedbackChanged -> state.value = state.value.copy(showActionFeedback = event.value)
                        is ContentEvent.UiOpacityChanged -> state.value = state.value.copy(uiOpacity = event.value)
                        else -> Unit
                    }
                }, Modifier.testTag("settings-native-root"))
            }
            }
        }
        compose.waitForIdle()
    }

    @Test fun immersiveVisibilityPreferencesUseRealLyricsSettingsSwitches() {
        mount(open = true)
        compose.onNodeWithTag("settings-menu-Lyrics").performClick()
        compose.onNodeWithContentDescription("全屏时显示顶栏").performScrollTo().performClick()
        assertFalse(state.value.immersiveShowTopBar)
        assertTrue(state.value.immersiveShowDock)
        compose.onNodeWithContentDescription("全屏时显示Dock").performScrollTo().performClick()
        assertFalse(state.value.immersiveShowDock)
        assertTrue(events.contains(ContentEvent.ImmersiveShowTopBarChanged(false)))
        assertTrue(events.contains(ContentEvent.ImmersiveShowDockChanged(false)))
    }

    @Test fun entryAndExitKeepTheClipFixedAndNeverPaintOverDock() {
        mount()
        val media = bounds("media-card")
        val dock = bounds("floating-dock")
        val original = capture("before-settings")
        compose.mainClock.autoAdvance = false
        compose.runOnIdle { state.value = state.value.copy(settingsOpen = true) }
        for (elapsed in listOf(16L, 80L, 160L, 200L)) {
            compose.mainClock.advanceTimeBy(elapsed)
            val host = bounds("settings-sheet-host")
            assertEquals(bounds("top-bar").bottom, host.top, 1f)
            assertEquals(media.bottom, host.bottom, 1f)
            assertEquals(dock.left, host.left, 1f)
            assertEquals(dock.right, host.right, 1f)
            assertDockPixels(original, capture("entry-$elapsed"), dock)
        }
        compose.onNodeWithTag("settings-sheet").assertIsDisplayed()
        compose.runOnIdle { state.value = state.value.copy(settingsOpen = false) }
        compose.mainClock.advanceTimeByFrame()
        compose.onNodeWithTag("dock-Wiper").assertIsNotEnabled()
        for (elapsed in listOf(48L, 112L, 240L)) {
            compose.mainClock.advanceTimeBy(elapsed)
            assertDockPixels(original, capture("exit-$elapsed"), dock)
        }
        compose.onNodeWithTag("settings-sheet").assertDoesNotExist()
        compose.onNodeWithTag("dock-Wiper").assertIsEnabled()
        compose.mainClock.autoAdvance = true
    }

    @Test fun menuAndSwitchClicksWithSmallMovementWorkAndBackgroundActionsStayBlocked() {
        mount(open = true)
        compose.onNodeWithTag("settings-menu-TopBar").performTouchInput {
            down(center); moveBy(Offset(1f, 1f)); up()
        }
        assertEquals(SettingsSection.TopBar, state.value.settingsSection)
        compose.onNodeWithContentDescription("显示秒数").performTouchInput {
            down(center); moveBy(Offset(1f, 1f)); up()
        }
        assertTrue(state.value.showSeconds)
        events.clear()
        // Semantic actions also pass through the same modal dispatch guard.
        compose.onNodeWithTag("source-button").performClick()
        compose.onNodeWithTag("control-Lock").performClick()
        compose.onNodeWithTag("runtime-pages").performTouchInput { swipeLeft() }
        assertTrue("no source, page or control event may pass through settings: $events", events.all { it.isSettingsInteraction() })
        compose.onNodeWithTag("dock-Wiper").assertIsNotEnabled()
        val menu = compose.onNodeWithTag("settings-menu")
        val axis = menu.fetchSemanticsNode().config[SemanticsProperties.VerticalScrollAxisRange]
        if (axis.maxValue() > 0f) {
            val before = axis.value()
            menu.performTouchInput { swipeUp(durationMillis = 500) }
            assertTrue("ordinary small-step menu scroll must acquire slop", axis.value() > before)
        }
    }

    @Test fun slowShortDragSettlesFromFingerAndLongDragClosesExactlyOnce() {
        mount(open = true)
        compose.mainClock.autoAdvance = false
        val host = bounds("settings-sheet-host")
        dragAndRelease(host.height * .10f)
        compose.mainClock.advanceTimeByFrame()
        assertTrue("short drag must settle from its release position", bounds("settings-sheet").top > host.top + host.height * .075f)
        compose.mainClock.advanceTimeBy(500)
        assertEquals(host.top, bounds("settings-sheet").top, 1f)
        assertTrue(events.none { it == ContentEvent.SettingsDismissed })
        dragAndRelease(host.height * .30f, cancelGesture = true)
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(500)
        assertEquals(host.top, bounds("settings-sheet").top, 1f)
        assertTrue(events.none { it == ContentEvent.SettingsDismissed })
        dragAndRelease(host.height * .30f)
        compose.mainClock.advanceTimeByFrame()
        assertTrue("dismiss must continue down from the finger, without jumping up", bounds("settings-sheet").top >= host.top + host.height * .29f)
        compose.mainClock.advanceTimeUntil(1_000) { !state.value.settingsOpen }
        assertEquals(1, events.count { it == ContentEvent.SettingsDismissed })
        compose.onNodeWithTag("dock-Settings").performClick()
        compose.mainClock.advanceTimeBy(500)
        assertTrue("a new Settings click must interrupt the outgoing sheet", state.value.settingsOpen)
        assertEquals(host.top, bounds("settings-sheet").top, 1f)
        assertEquals(1, events.count { it == ContentEvent.SettingsDismissed })
        compose.mainClock.autoAdvance = true
    }

    @Test fun aShortDownwardFlingClosesWhileAnUpwardFlingDoesNot() {
        mount(open = true)
        val root = compose.onNodeWithTag("settings-native-root")
        val handle = bounds("settings-gesture-handle")
        val origin = bounds("settings-native-root").topLeft
        val start = handle.center - origin
        root.performTouchInput { swipe(start, start - Offset(0f, 80f * density), durationMillis = 48) }
        compose.waitForIdle()
        assertTrue(state.value.settingsOpen)
        assertTrue(events.none { it == ContentEvent.SettingsDismissed })
        root.performTouchInput { swipe(start, start + Offset(0f, 80f * density), durationMillis = 48) }
        compose.waitForIdle()
        assertFalse(state.value.settingsOpen)
        assertEquals(1, events.count { it == ContentEvent.SettingsDismissed })
    }

    @Test fun feedbackRetainsTextAndWidthUntilItsDownwardExitCompletes() {
        mount()
        val dock = bounds("floating-dock")
        val original = capture("feedback-before")
        compose.mainClock.autoAdvance = false
        compose.runOnIdle { state.value = state.value.copy(message = "媒体播放状态未确认，请检查媒体会话", messageRevision = 1) }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(64)
        assertDockPixels(original, capture("feedback-entry"), dock)
        compose.mainClock.advanceTimeBy(400)
        val feedback = compose.onNodeWithTag("status-feedback")
        val width = feedback.fetchSemanticsNode().boundsInRoot.width
        assertTrue(feedback.fetchSemanticsNode().boundsInRoot.bottom < bounds("floating-dock").top)
        capture("feedback-visible")
        compose.runOnIdle { state.value = state.value.copy(message = null, messageRevision = 2) }
        compose.mainClock.advanceTimeByFrame()
        compose.onNodeWithText("媒体播放状态未确认，请检查媒体会话").assertExists()
        assertEquals(width, feedback.fetchSemanticsNode().boundsInRoot.width, 1f)
        compose.mainClock.advanceTimeBy(64)
        assertDockPixels(original, capture("feedback-exit"), dock)
        compose.mainClock.advanceTimeBy(320)
        feedback.assertDoesNotExist()
        compose.mainClock.autoAdvance = true
    }

    @Test fun settingsOnlyExposePreferencesAndNoVehicleStatusDuplicates() {
        state.value = state.value.copy(controls = state.value.controls + mapOf(
            ControlId.Lock to ControlState(actual = 1, available = false),
            ControlId.Wiper to ControlState(actual = 5, available = false),
            ControlId.RearWash to ControlState(actual = 1, available = false),
        ))
        mount(open = true)
        compose.onNodeWithText("已锁定").assertDoesNotExist()
        compose.onNodeWithText("洗涤中").assertDoesNotExist()
        compose.onNodeWithTag("settings-menu-TopBar").assertExists()
        compose.onNodeWithTag("settings-menu-Connection").assertDoesNotExist()
        compose.onNodeWithText("车辆状态").assertDoesNotExist()
        for (section in SettingsSection.entries) {
            val tag = "settings-menu-${section.name}"
            val menu = compose.onNodeWithTag(tag).assertExists()
            val menuBounds = menu.fetchSemanticsNode().boundsInRoot
            val title = compose.onNode(
                hasText(section.label) and hasAnyAncestor(hasTestTag(tag)),
                useUnmergedTree = true,
            ).assertExists()
            val titleBounds = title.fetchSemanticsNode().boundsInRoot
            assertEquals("${section.name} title is horizontally centered", menuBounds.center.x, titleBounds.center.x, 1f)
            assertEquals("${section.name} title is vertically centered", menuBounds.center.y, titleBounds.center.y, 2f)
            assertMinimumFontPixels(section.label, 24f, tag)
            compose.onNode(
                hasText(section.description) and hasAnyAncestor(hasTestTag(tag)),
                useUnmergedTree = true,
            ).assertDoesNotExist()
        }
        compose.onNodeWithTag("settings-title").assertTextEquals("设置")
        compose.onNodeWithTag("settings-gesture-bar").assertExists()
        compose.onNodeWithTag("settings-header-divider").assertExists()
        compose.onNodeWithTag("settings-menu-divider").assertExists()
        compose.onNodeWithTag("settings-menu-Interaction").performClick()
        compose.onNodeWithTag("settings-option-界面透明度-60%").performScrollTo().performClick()
        assertEquals(.6f, state.value.uiOpacity, .001f)
        compose.onNodeWithTag("settings-option-界面透明度-20%").assertExists()
        assertTrue("the menu keeps enough width for the detail column", bounds("settings-menu").width <= 160f * density + 1f)
    }

    @Test fun preferenceControlsHaveLargeTouchTargetsAndDoNotExposeShortcutActions() {
        mount(open = true)
        compose.onNodeWithTag("settings-menu-Lyrics").performClick()
        compose.onNodeWithTag("settings-option-歌词字号-大").performScrollTo().performClick()
        assertEquals(1.15f, state.value.lyricsFontScale, .001f)
        compose.onNodeWithContentDescription("按声部布局").performScrollTo().performClick()
        assertFalse(state.value.lyricsSpeakerLayout)
        compose.onNodeWithTag("settings-menu-Layout").performScrollTo().performClick()
        compose.onNodeWithTag("settings-option-Dock 显示按钮-3").performClick()
        assertEquals(3, state.value.dockButtonCount)
        assertTrue("top gesture band must be larger than the visible handle", bounds("settings-gesture-handle").height > 60f)
        compose.onNode(hasText("车辆") and hasAnyAncestor(hasTestTag("settings-sheet"))).assertDoesNotExist()
        compose.onNode(hasText("媒体音量") and hasAnyAncestor(hasTestTag("settings-sheet"))).assertDoesNotExist()
    }

    @Test fun theSettingsButtonOpensAndClosesTheVisibleSheet() {
        mount()
        compose.onNodeWithTag("dock-Settings").performClick()
        compose.onNodeWithTag("settings-sheet").assertIsDisplayed()
        compose.onNodeWithTag("dock-Settings").performClick()
        compose.onNodeWithTag("settings-sheet").assertDoesNotExist()
        assertFalse(state.value.settingsOpen)
        assertTrue(events.all { it == ContentEvent.SettingsTapped })
    }

    @Test fun fullWidthTopBandAcceptsDragsAtTheEdgeAndDetailsScrollIndependently() {
        mount(open = true)
        val host = bounds("settings-sheet-host")
        val band = bounds("settings-gesture-handle")
        assertEquals(host.width, band.width, 1f)
        assertTrue(band.height + 1 >= 72f * density)
        val detail = compose.onNodeWithTag("settings-detail-scroll")
        val range = detail.fetchSemanticsNode().config[SemanticsProperties.VerticalScrollAxisRange]
        if (range.maxValue() > 0f) {
            val before = range.value()
            detail.performTouchInput { swipeUp(durationMillis = 600) }
            assertTrue("the content owns its vertical scroll", range.value() > before)
            assertEquals(host.top, bounds("settings-sheet").top, 1f)
            assertTrue(state.value.settingsOpen)
            compose.onNodeWithContentDescription("显示星期").performScrollTo()
        }
        compose.mainClock.autoAdvance = false
        dragAndRelease(host.height * .1f, relativeX = .05f)
        compose.mainClock.advanceTimeByFrame()
        assertTrue("left edge drag follows the finger", bounds("settings-sheet").top > host.top)
        compose.mainClock.advanceTimeBy(500)
        assertEquals(host.top, bounds("settings-sheet").top, 1f)
        assertTrue(events.none { it == ContentEvent.SettingsDismissed })
        dragAndRelease(host.height * .3f, relativeX = .95f)
        compose.mainClock.advanceTimeByFrame()
        assertTrue("edge drag dismiss continues from the finger", bounds("settings-sheet").top >= host.top + host.height * .29f)
        compose.mainClock.advanceTimeUntil(1_000) { !state.value.settingsOpen }
        assertEquals(1, events.count { it == ContentEvent.SettingsDismissed })
        compose.mainClock.autoAdvance = true
    }

    @Test fun everyPreferenceGroupHasAReachableCarScaleControlAndAnActualFrame() {
        mount(open = true)
        for (section in SettingsSection.entries) {
            compose.onNodeWithTag("settings-menu-${section.name}").performScrollTo().performClick()
            capture("settings-${section.name}")
            val detail = compose.onNodeWithTag("settings-detail-scroll")
            assertEquals(0f, detail.fetchSemanticsNode().config[SemanticsProperties.VerticalScrollAxisRange].value(), 1f)
        }
        compose.onNodeWithTag("settings-menu-Lyrics").performScrollTo().performClick()
        for (option in listOf("小", "标准", "大")) {
            val area = compose.onNodeWithTag("settings-option-歌词字号-$option").performScrollTo()
                .assertIsDisplayed().fetchSemanticsNode().boundsInRoot
            assertTrue("option hit width", area.width + 1 >= maxOf(64 * density, 64f))
            assertTrue("option hit height", area.height + 1 >= maxOf(56 * density, 64f))
            assertMinimumFontPixels(option, 22f, "settings-option-歌词字号-$option")
        }
        val speaker = compose.onNodeWithContentDescription("按声部布局").performScrollTo().assertIsDisplayed()
            .fetchSemanticsNode().boundsInRoot
        assertTrue("the switch row keeps a car-sized target", speaker.height + 1 >= maxOf(78 * density, 88f))
        assertMinimumFontPixels("按声部布局", 24f)
        assertMinimumFontPixels("有声部信息时左右分配歌词", 16f)
        capture("settings-Lyrics-scroll")
    }

    private fun assertMinimumFontPixels(text: String, minimum: Float, ancestorTag: String? = null) {
        val layouts = mutableListOf<TextLayoutResult>()
        val matcher = hasText(text).let { if (ancestorTag == null) it else it and hasAnyAncestor(hasTestTag(ancestorTag)) }
        compose.onNode(matcher, useUnmergedTree = true)
            .performSemanticsAction(SemanticsActions.GetTextLayoutResult) { it(layouts) }
        val input = layouts.single().layoutInput
        val pixels = input.style.fontSize.value * input.density.density * input.density.fontScale
        assertTrue("$text has a readable font: $pixels", pixels + .05f >= minimum)
    }

    private fun dragAndRelease(distance: Float, cancelGesture: Boolean = false, relativeX: Float = .5f) {
        val host = bounds("settings-sheet-host")
        val origin = bounds("settings-native-root").topLeft
        val band = bounds("settings-gesture-handle")
        val point = Offset(band.left + band.width * relativeX, band.center.y) - origin
        val root = compose.onNodeWithTag("settings-native-root")
        root.performTouchInput { down(point) }
        repeat(5) { index ->
            root.performTouchInput { moveTo(point + Offset(0f, distance * (index + 1) / 5), delayMillis = 120) }
            compose.mainClock.advanceTimeByFrame()
            assertEquals("sheet follows root-space finger distance", host.top + distance * (index + 1) / 5,
                bounds("settings-sheet").top, 2f)
        }
        root.performTouchInput {
            if (cancelGesture) cancel() else { advanceEventTime(200); up() }
        }
    }

    private fun bounds(tag: String) = compose.onNodeWithTag(tag).fetchSemanticsNode().boundsInRoot

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture(label: String): Bitmap {
        val node = compose.onNodeWithTag("settings-native-root").fetchSemanticsNode()
        val root = node.root as ViewRootForTest
        val area = node.boundsInRoot
        val bitmap = compose.runOnIdle {
            Bitmap.createBitmap(area.width.toInt(), area.height.toInt(), Bitmap.Config.ARGB_8888).also {
                val canvas = Canvas(it); canvas.translate(-area.left, -area.top); root.view.draw(canvas)
            }
        }
        val directory = File("build/frames").apply { mkdirs() }
        File(directory, "${javaClass.simpleName}-$label.png").outputStream().use {
            assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
        return bitmap
    }

    private fun assertDockPixels(before: Bitmap, after: Bitmap, area: Rect) {
        val width = (area.width - 2).toInt()
        val height = (area.height - 2).toInt()
        val original = IntArray(width * height)
        val current = IntArray(width * height)
        before.getPixels(original, 0, width, (area.left + 1).toInt(), (area.top + 1).toInt(), width, height)
        after.getPixels(current, 0, width, (area.left + 1).toInt(), (area.top + 1).toInt(), width, height)
        assertArrayEquals("settings motion must never paint inside the Dock", original, current)
    }

    private tailrec fun Context.activity(): Activity = when (this) {
        is Activity -> this
        is ContextWrapper -> baseContext.activity()
        else -> error("missing activity")
    }
}

@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class SettingsSheetDarkInteractionTest : SettingsSheetInteractionTest() { override val dark = true }

@Config(sdk = [28], qualifiers = "w320dp-h540dp-xhdpi")
class SettingsSheet320InteractionTest : SettingsSheetInteractionTest()

@Config(sdk = [28], qualifiers = "w320dp-h540dp-xhdpi")
class SettingsSheet320DarkInteractionTest : SettingsSheetInteractionTest() { override val dark = true }

@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class SettingsSheetApi34InteractionTest : SettingsSheetInteractionTest()


@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class SettingsSheet141InteractionTest : SettingsSheetInteractionTest() { override val systemDpi = 141 }

@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class SettingsSheet141DarkInteractionTest : SettingsSheetInteractionTest() {
    override val systemDpi = 141
    override val dark = true
}

@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class SettingsSheet212InteractionTest : SettingsSheetInteractionTest() { override val systemDpi = 212 }

@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class SettingsSheet212DarkInteractionTest : SettingsSheetInteractionTest() {
    override val systemDpi = 212
    override val dark = true
}
