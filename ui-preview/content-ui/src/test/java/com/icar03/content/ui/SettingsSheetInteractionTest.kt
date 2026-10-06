package com.icar03.content.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.WindowManager
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.semantics.getOrNull
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.Density
import kotlinx.coroutines.Dispatchers
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File

/** Real Material controls, modal navigation, fixed preview and actual Android frames. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
open class SettingsSheetInteractionTest {
    protected open val dark = false
    protected open val systemDpi: Int? = null
    @get:Rule val compose = createComposeRule()
    private val state = mutableStateOf(ContentUiState(previewMode = false,
        lyricsProviderSettings = LyricsProviderUiState(available = true)))
    private val events = mutableListOf<ContentEvent>()
    private var density = 1f
    private var sounds = 0

    private fun mount(open: Boolean = false, section: SettingsSection = SettingsSection.Home) {
        state.value = state.value.copy(settingsOpen = open, settingsSection = section)
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
            CompositionLocalProvider(LocalDensity provides presentationDensity,
                LocalLyricGeometryDispatcher provides Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined,
                LocalContentClickSound provides { sounds++ }) {
                ContentTheme(dark) {
                    ContentPanel(state.value.copy(dark = dark), { event ->
                        events += event
                        val current = state.value
                        state.value = when (event) {
                            ContentEvent.SettingsTapped -> current.copy(settingsOpen = !current.settingsOpen, settingsSection = SettingsSection.Home)
                            ContentEvent.SettingsDismissed -> current.copy(settingsOpen = false)
                            ContentEvent.SettingsBack -> if (current.settingsSection == SettingsSection.Home)
                                current.copy(settingsOpen = false) else current.copy(settingsSection = SettingsSection.Home)
                            is ContentEvent.SettingsSectionSelected -> current.copy(settingsSection = event.section)
                            is ContentEvent.ShowSecondsChanged -> current.copy(showSeconds = event.value)
                            is ContentEvent.ShowWeekdayChanged -> current.copy(showWeekday = event.value)
                            is ContentEvent.LyricsFontSizeChanged -> current.copy(lyricsFontSizeSp = event.value)
                            is ContentEvent.LyricsCurrentFontSizeChanged -> current.copy(lyricsCurrentFontSizeSp = event.value)
                            is ContentEvent.LyricsLineGapChanged -> current.copy(lyricsLineGapDp = event.value)
                            is ContentEvent.LyricsImmersiveFontSizeChanged -> current.copy(lyricsImmersiveFontSizeSp = event.value)
                            is ContentEvent.LyricsImmersiveLineGapChanged -> current.copy(lyricsImmersiveLineGapDp = event.value)
                            is ContentEvent.LyricsAlignmentChanged -> current.copy(lyricsAlignment = event.value)
                            is ContentEvent.LyricsColorModeChanged -> current.copy(lyricsColorMode = event.value)
                            is ContentEvent.LyricsCurrentColorModeChanged -> current.copy(lyricsCurrentColorMode = event.value)
                            is ContentEvent.LyricsCustomColorChanged -> current.copy(lyricsCustomColor = event.value)
                            is ContentEvent.LyricsCurrentCustomColorChanged -> current.copy(lyricsCurrentCustomColor = event.value)
                            is ContentEvent.LyricsSpeakerLayoutChanged -> current.copy(lyricsSpeakerLayout = event.value)
                            is ContentEvent.LyricsHighlightChanged -> current.copy(lyricsHighlight = event.value)
                            is ContentEvent.DockButtonCountChanged -> current.copy(dockButtonCount = event.value)
                            is ContentEvent.UiOpacityChanged -> current.copy(uiOpacity = event.value)
                            is LyricsPlatformSelected -> current.copy(lyricsProviderSettings = current.lyricsProviderSettings.copy(preferredPlatform = event.id))
                            else -> current
                        }
                    }, Modifier.testTag("settings-native-root"), canDispatch = { event ->
                        state.value.settingsOpen || !event.isSettingsInteraction() || event in setOf(
                            ContentEvent.SettingsTapped, ContentEvent.OpenLyricsSettings, ContentEvent.SettingsBack,
                            ContentEvent.SettingsDismissed, ContentEvent.DismissSheet)
                    })
                }
            }
        }
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(600)
        compose.waitForIdle()
    }

    @Test fun homeUsesGroupedNavigationAndKeepsExistingPreferenceEntrances() {
        mount(open = true)
        compose.onNodeWithTag("settings-title").assertTextEquals("设置")
        compose.onNodeWithTag("settings-menu").assertDoesNotExist()
        compose.onNodeWithTag("settings-menu-divider").assertDoesNotExist()
        compose.onNodeWithTag("settings-gesture-bar").assertDoesNotExist()
        for (section in SettingsSection.entries.filter { it != SettingsSection.Home }) {
            val item = compose.onNodeWithTag("settings-menu-${section.name}").performScrollTo().assertIsDisplayed()
            assertTrue(item.fetchSemanticsNode().boundsInRoot.height >= 48f * density - 1)
        }
        compose.onNodeWithTag("settings-menu-Lyrics").performScrollTo().performClick()
        compose.onNodeWithTag("settings-title").assertTextEquals("歌词设置")
        compose.onNodeWithTag("settings-lyrics-preview").assertIsDisplayed()
        assertEquals(1, events.count { it == ContentEvent.SettingsSectionSelected(SettingsSection.Lyrics) })
        capture("settings-lyrics-top")
    }

    @Test fun returnFromAChildGoesHomeAndReturnFromHomeCloses() {
        mount(open = true)
        compose.onNodeWithTag("settings-menu-TopBar").performClick()
        compose.onNodeWithTag("settings-title").assertTextEquals("状态栏设置")
        compose.onNodeWithTag("settings-switch-显示秒数").performScrollTo().performClick()
        assertTrue(state.value.showSeconds)
        compose.onNodeWithTag("settings-back").performClick()
        assertTrue(state.value.settingsOpen)
        assertEquals(SettingsSection.Home, state.value.settingsSection)
        compose.onNodeWithTag("settings-title").assertTextEquals("设置")
        compose.onNodeWithTag("settings-back").performClick()
        compose.mainClock.advanceTimeBy(500)
        compose.onNodeWithTag("settings-sheet").assertDoesNotExist()
        assertTrue(state.value.showSeconds)
    }

    @Test fun settingButtonsToggleTheHomeAndOpeningNeverChangesThePage() {
        mount()
        compose.onNodeWithTag("dock-Settings").performClick()
        compose.mainClock.advanceTimeBy(500)
        assertTrue(state.value.settingsOpen)
        assertEquals(SettingsSection.Home, state.value.settingsSection)
        compose.onNodeWithTag("dock-Settings").performClick()
        compose.mainClock.advanceTimeBy(500)
        assertFalse(state.value.settingsOpen)
        assertTrue(events.none { it is ContentEvent.PageSelected })
    }

    @Test fun panelBoundsStayAlignedWithDockAndMediaBottom() {
        mount(open = true)
        val dock = bounds("floating-dock")
        val media = bounds("media-card")
        val host = bounds("settings-sheet-host")
        assertEquals(dock.left, host.left, 1f)
        assertEquals(dock.right, host.right, 1f)
        assertEquals(media.bottom, host.bottom, 1f)
        assertEquals(host.top, bounds("settings-sheet").top, 1f)
        assertEquals(host.bottom, bounds("settings-sheet").bottom, 1f)
        assertTrue(host.bottom <= dock.top + 1f)
        capture("settings-home")
    }

    @Test fun previewAndHeaderStayFixedWhileOnlyTheSettingsScroll() {
        mount(open = true, section = SettingsSection.Lyrics)
        val preview = bounds("settings-lyrics-preview")
        val header = bounds("settings-header")
        compose.onNodeWithTag("settings-lyrics-alignment").performScrollTo().assertIsDisplayed()
        assertEquals(preview, bounds("settings-lyrics-preview"))
        capture("settings-ordinary-controls")
        compose.onNodeWithTag("settings-immersive-line-gap").performScrollTo().assertIsDisplayed()
        assertEquals(preview, bounds("settings-lyrics-preview"))
        assertEquals(header, bounds("settings-header"))
        compose.onNodeWithTag("settings-lyrics-preview").assertIsDisplayed()
        assertTrue(bounds("settings-detail-scroll").top >= preview.bottom)
        capture("settings-lyrics-bottom")
    }

    @Test fun numericLabelsAndPreviewReactToStandardSliderAccessibility() {
        mount(open = true, section = SettingsSection.Lyrics)
        val slider = compose.onNodeWithTag("settings-font-size").performScrollTo()
        slider.performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(52f)) }
        compose.waitForIdle()
        compose.onNodeWithTag("settings-label-歌词字号").assertTextEquals("歌词字号·52sp")
        assertEquals(52f, state.value.lyricsFontSizeSp, .01f)
        val actual = previewBody().fetchSemanticsNode().config[LyricFontPixels]
        assertTrue("the same renderer changes the sample's actual font", actual > 30f * density)
        assertEquals(0, sounds)
        compose.onNodeWithTag("settings-line-gap").performScrollTo()
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(40f)) }
        compose.onNodeWithTag("settings-label-歌词间距").assertTextEquals("歌词间距·40dp")
        assertEquals(40f, state.value.lyricsLineGapDp, .01f)
    }

    @Test fun platformSectionPrecedesFontAndHasExactlyOneSelection() {
        mount(open = true, section = SettingsSection.Lyrics)
        compose.onNodeWithText("歌曲平台倾向", substring = true).assertExists()
        val font = compose.onNodeWithTag("settings-font-size").performScrollTo().fetchSemanticsNode().boundsInRoot
        assertTrue(font.top >= bounds("settings-detail-scroll").top)
        // The provider owner has its own persistence tests; this checks the actual page entrance.
        compose.onNodeWithText("QQ音乐", substring = true).performScrollTo().performClick()
        assertTrue(events.any { it is LyricsPlatformSelected })
        assertNotEquals("auto", state.value.lyricsProviderSettings.preferredPlatform)
    }

    @Test fun customColorsShowTenSwatchesAndBothColorOwnersStayIndependent() {
        mount(open = true, section = SettingsSection.Lyrics)
        chooseSettingOption("settings-lyrics-color-mode", "custom")
        assertEquals("custom", state.value.lyricsColorMode)
        compose.waitForIdle()
        compose.onNodeWithTag("settings-lyrics-color-hue").assertExists()
        for (index in 0..9) compose.onNodeWithTag("settings-lyrics-color-swatch-$index").assertExists()
        val oldCurrent = state.value.lyricsCurrentCustomColor
        chooseSettingSwatch("settings-lyrics-color", 3)
        assertEquals("custom", state.value.lyricsColorMode)
        assertEquals(oldCurrent, state.value.lyricsCurrentCustomColor)
        assertEquals(state.value.lyricsCustomColor, previewBody().fetchSemanticsNode().config[LyricNormalColor])
        capture("settings-normal-color")
        chooseSettingOption("settings-current-color-mode", "system")
        assertEquals("system", state.value.lyricsCurrentColorMode)
        compose.waitForIdle()
        assertEquals(state.value.lyricsSystemAccentColor, previewBody().fetchSemanticsNode().config[LyricCurrentColor])
        chooseSettingOption("settings-current-color-mode", "custom")
        chooseSettingSwatch("settings-current-color", 7)
        assertEquals(state.value.lyricsCurrentCustomColor, previewBody().fetchSemanticsNode().config[LyricCurrentColor])
        capture("settings-current-color")
        chooseSettingOption("settings-current-color-mode", "theme")
        assertEquals(if (dark) 0xFFFFFFFF.toInt() else 0xFF27303B.toInt(), previewBody().fetchSemanticsNode().config[LyricCurrentColor])
        compose.onNodeWithTag("settings-current-color-hue").assertDoesNotExist()
        capture("settings-custom-color")
    }

    @Test fun disablingEnlargementKeepsCurrentColorAndTheSavedFontSize() {
        mount(open = true, section = SettingsSection.Lyrics)
        val saved = state.value.lyricsCurrentFontSizeSp
        compose.onNodeWithTag("settings-switch-当前句歌词放大").performScrollTo().performClick()
        assertFalse(state.value.lyricsHighlight)
        compose.onNodeWithTag("settings-current-font-size").performScrollTo().assertIsNotEnabled()
        val body = previewBody().fetchSemanticsNode().config
        assertEquals(body[LyricFontPixels], body[LyricActiveFontPixels], .01f)
        assertTrue(body[LyricEmphasizedRows].contains(1))
        assertEquals(saved, state.value.lyricsCurrentFontSizeSp, .01f)
        chooseSettingOption("settings-current-color-mode", "system")
        assertEquals("system", state.value.lyricsCurrentColorMode)
        compose.waitForIdle()
        assertEquals(state.value.lyricsSystemAccentColor, previewBody().fetchSemanticsNode().config[LyricCurrentColor])
    }

    @Test fun immersiveSlidersAreIndependentAndPreviewTheirMode() {
        mount(open = true, section = SettingsSection.Lyrics)
        val ordinaryFont = state.value.lyricsFontSizeSp
        val ordinaryGap = state.value.lyricsLineGapDp
        compose.onNodeWithTag("settings-immersive-font-size").performScrollTo()
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(144f)) }
        compose.onNodeWithTag("settings-label-沉浸式全屏歌词字号").assertTextEquals("沉浸式全屏歌词字号·144sp")
        compose.onNodeWithText("全屏歌词预览").assertIsDisplayed()
        compose.onNodeWithTag("settings-immersive-line-gap").performScrollTo()
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(96f)) }
        assertEquals(144f, state.value.lyricsImmersiveFontSizeSp, .01f)
        assertEquals(96f, state.value.lyricsImmersiveLineGapDp, .01f)
        assertEquals(ordinaryFont, state.value.lyricsFontSizeSp, .01f)
        assertEquals(ordinaryGap, state.value.lyricsLineGapDp, .01f)
        assertEquals(0, sounds)
        capture("settings-immersive-controls")
    }

    @Test fun noPreferenceChangesDuringTheRetainedExitAnimation() {
        mount(open = true, section = SettingsSection.TopBar)
        val action = compose.onNodeWithTag("settings-switch-显示秒数").performScrollTo()
            .fetchSemanticsNode().config.getOrNull(SemanticsActions.OnClick)?.action
        compose.mainClock.autoAdvance = false
        compose.runOnIdle { state.value = state.value.copy(settingsOpen = false) }
        compose.mainClock.advanceTimeByFrame()
        val count = events.size
        val soundCount = sounds
        compose.runOnIdle { action?.invoke() }
        compose.mainClock.advanceTimeBy(64)
        assertEquals(count, events.size)
        assertEquals(soundCount, sounds)
        assertFalse(state.value.showSeconds)
        compose.onNodeWithTag("settings-back").assertIsNotEnabled()
        compose.mainClock.advanceTimeBy(500)
        compose.mainClock.autoAdvance = true
        compose.onNodeWithTag("settings-sheet").assertDoesNotExist()
    }

    @Test fun headerDragsDoNotCloseOrTranslateTheSettings() {
        mount(open = true)
        val original = bounds("settings-sheet")
        val rootOrigin = bounds("settings-native-root").topLeft
        val start = bounds("settings-header").center - rootOrigin
        compose.onNodeWithTag("settings-native-root").performTouchInput {
            down(start)
            moveTo(start + Offset(0f, original.height * .65f), delayMillis = 250)
            up()
        }
        compose.mainClock.advanceTimeBy(600)
        assertTrue(state.value.settingsOpen)
        assertEquals(original.top, bounds("settings-sheet").top, 1f)
    }

    private fun chooseSettingOption(group: String, id: String) {
        compose.onNodeWithTag(group).performScrollTo().assertIsDisplayed()
        compose.onNodeWithTag("$group-$id").performScrollTo().assertIsDisplayed().performClick()
        compose.waitForIdle()
    }

    private fun chooseSettingSwatch(group: String, index: Int) {
        compose.onNodeWithTag(group).performScrollTo().assertIsDisplayed()
        compose.onNodeWithTag("$group-swatch-$index").performScrollTo().assertIsDisplayed().performClick()
        compose.waitForIdle()
    }

    private fun previewBody() = compose.onNode(SemanticsMatcher.keyIsDefined(LyricFontPixels) and
        hasAnyAncestor(hasTestTag("settings-lyrics-preview")), useUnmergedTree = true)
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
class SettingsSheet141DarkInteractionTest : SettingsSheetInteractionTest() { override val systemDpi = 141; override val dark = true }
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class SettingsSheet212InteractionTest : SettingsSheetInteractionTest() { override val systemDpi = 212 }
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class SettingsSheet212DarkInteractionTest : SettingsSheetInteractionTest() { override val systemDpi = 212; override val dark = true }
