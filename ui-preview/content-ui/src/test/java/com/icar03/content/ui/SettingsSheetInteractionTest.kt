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

/** Real Material controls, modal navigation, fixed headers, uniform groups and actual Android frames. */
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
                             is ContentEvent.ShowRangeChanged -> current.copy(showRange = event.value)
                             is ContentEvent.ShowPluggedStatusChanged -> current.copy(showPluggedStatus = event.value)
                             is ContentEvent.ShowScheduledChargingChanged -> current.copy(showScheduledCharging = event.value)
                             is ContentEvent.ShowChargingRemainingTimeChanged -> current.copy(showChargingRemainingTime = event.value)
                             is ContentEvent.ShowChargingPowerChanged -> current.copy(showChargingPower = event.value)
                             is ContentEvent.ImmersiveTopBarKeepSplitChanged -> current.copy(immersiveTopBarKeepSplit = event.value)
                             is ContentEvent.LyricsShowTranslationChanged -> current.copy(lyricsShowTranslation = event.value)
                            is ContentEvent.LyricsFontSizeChanged -> current.copy(lyricsFontSizeSp = event.value, lyricsCurrentFontSizeSp = current.lyricsCurrentFontSizeSp.coerceAtLeast(event.value))
                            is ContentEvent.LyricsCurrentFontSizeChanged -> current.copy(lyricsCurrentFontSizeSp = event.value)
                            is ContentEvent.LyricsLineGapChanged -> current.copy(lyricsLineGapDp = event.value)
                            is ContentEvent.LyricsImmersiveFontSizeChanged -> current.copy(lyricsImmersiveFontSizeSp = event.value, lyricsImmersiveCurrentFontSizeSp = current.lyricsImmersiveCurrentFontSizeSp.coerceAtLeast(event.value))
                             is ContentEvent.LyricsImmersiveCurrentFontSizeChanged -> current.copy(lyricsImmersiveCurrentFontSizeSp = event.value)
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
        compose.onNodeWithTag("settings-lyrics-preview").assertDoesNotExist()
        assertEquals(1, events.count { it == ContentEvent.SettingsSectionSelected(SettingsSection.Lyrics) })
        capture("settings-lyrics-top")
    }

    @Test fun returnFromAChildGoesHomeAndReturnFromHomeCloses() {
        mount(open = true)
        compose.onNodeWithTag("settings-menu-TopBar").performClick()
        compose.onNodeWithTag("settings-title").assertTextEquals("状态栏设置")
        capture("settings-topbar-top")
        compose.onNodeWithTag("settings-switch-显示充电功率").performScrollTo()
        capture("settings-topbar-battery")
        compose.onNodeWithTag("settings-switch-状态栏保持分屏").performScrollTo()
        capture("settings-topbar-immersive")
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

    @Test fun headerStaysFixedAndLyricsSettingsHaveNoPreview() {
        mount(open = true, section = SettingsSection.Lyrics)
        val header = bounds("settings-header")
        compose.onNodeWithTag("settings-lyrics-preview").assertDoesNotExist()
        compose.onNodeWithTag("settings-lyrics-alignment").performScrollTo().assertIsDisplayed()
        capture("settings-ordinary-controls")
        compose.onNodeWithTag("settings-switch-显示歌词翻译").performScrollTo().assertIsDisplayed().performClick()
        assertFalse(state.value.lyricsShowTranslation)
        assertEquals(1, events.count { it is ContentEvent.LyricsShowTranslationChanged })
        assertEquals(header, bounds("settings-header"))
        assertTrue(bounds("settings-detail-scroll").top >= header.bottom)
        capture("settings-lyrics-bottom")
    }

    @Test fun numericRowsShowTheActualCommittedValueAndDraggingIsSilent() {
        mount(open = true, section = SettingsSection.Lyrics)
        compose.onNodeWithTag("settings-font-size").performScrollTo()
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(52f)) }
        compose.waitForIdle()
        compose.onNodeWithTag("settings-font-size-label").assertTextEquals("分屏·52sp")
        assertEquals(52f, state.value.lyricsFontSizeSp, .01f)
        assertEquals(1, events.count { it is ContentEvent.LyricsFontSizeChanged })
        compose.onNodeWithTag("settings-line-gap").performScrollTo()
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(40f)) }
        compose.onNodeWithTag("settings-line-gap-label").assertTextEquals("分屏·40dp")
        assertEquals(40f, state.value.lyricsLineGapDp, .01f)
        assertEquals(1, events.count { it is ContentEvent.LyricsLineGapChanged })
        assertEquals(0, sounds)
        capture("settings-numeric-controls")
    }

    @Test fun platformSectionPrecedesFontAndHasExactlyOneSelection() {
        mount(open = true, section = SettingsSection.Lyrics)
        compose.onNodeWithTag("settings-label-歌曲平台倾向").assertExists()
        val font = compose.onNodeWithTag("settings-font-size").performScrollTo().fetchSemanticsNode().boundsInRoot
        assertTrue(font.top >= bounds("settings-detail-scroll").top)
        // The provider owner has its own persistence tests; this checks the actual page entrance.
        compose.onNodeWithText("QQ音乐", substring = true).performScrollTo().performClick()
        assertTrue(events.any { it is LyricsPlatformSelected })
        assertNotEquals("auto", state.value.lyricsProviderSettings.preferredPlatform)
    }

    @Test fun eightColorsStayInOneBandAndBothColorOwnersStayIndependent() {
        mount(open = true, section = SettingsSection.Lyrics)
        chooseSettingOption("settings-lyrics-color-mode", "custom")
        compose.onNodeWithTag("settings-lyrics-color-hue").assertExists()
        for (index in 0..7) compose.onNodeWithTag("settings-lyrics-color-swatch-$index").assertExists()
        compose.onNodeWithTag("settings-lyrics-color-swatch-8").assertDoesNotExist()
        val oldCurrent = state.value.lyricsCurrentCustomColor
        chooseSettingSwatch("settings-lyrics-color", 7)
        val lastShade = state.value.lyricsCustomColor
        chooseSettingSwatch("settings-lyrics-color", 7)
        assertEquals(lastShade, state.value.lyricsCustomColor)
        assertEquals(oldCurrent, state.value.lyricsCurrentCustomColor)
        val band = bounds("settings-lyrics-color-swatches")
        val track = bounds("settings-lyrics-color-hue-track")
        assertEquals(band.left, track.left, 1f)
        assertEquals(band.right, track.right, 1f)
        val first = bounds("settings-lyrics-color-swatch-0")
        val last = bounds("settings-lyrics-color-swatch-7")
        assertEquals(band.left, first.left, 1f)
        assertEquals(band.right, last.right, 1f)
        assertEquals(first.width, last.width, 1f)
        capture("settings-normal-color")
        chooseSettingOption("settings-current-color-mode", "custom")
        chooseSettingSwatch("settings-current-color", 3)
        assertEquals(lastShade, state.value.lyricsCustomColor)
        capture("settings-current-color")
        chooseSettingOption("settings-current-color-mode", "theme")
        compose.onNodeWithTag("settings-current-color-hue").assertDoesNotExist()
        assertEquals("theme", state.value.lyricsCurrentColorMode)
    }

    @Test fun disablingEnlargementKeepsBothCurrentSizesAndAllowsIndependentColor() {
        mount(open = true, section = SettingsSection.Lyrics)
        val saved = state.value.lyricsCurrentFontSizeSp
        val immersiveSaved = state.value.lyricsImmersiveCurrentFontSizeSp
        compose.onNodeWithTag("settings-switch-当前句歌词放大").performScrollTo().performClick()
        assertFalse(state.value.lyricsHighlight)
        compose.onNodeWithTag("settings-current-font-size").performScrollTo().assertIsNotEnabled()
        compose.onNodeWithTag("settings-immersive-current-font-size").performScrollTo().assertIsNotEnabled()
        assertEquals(saved, state.value.lyricsCurrentFontSizeSp, .01f)
        assertEquals(immersiveSaved, state.value.lyricsImmersiveCurrentFontSizeSp, .01f)
        chooseSettingOption("settings-current-color-mode", "system")
        assertEquals("system", state.value.lyricsCurrentColorMode)
        assertEquals(1, events.count { it is ContentEvent.LyricsHighlightChanged })
    }

    @Test fun immersiveNormalCurrentAndGapAreIndependentAndHaveNoPreview() {
        mount(open = true, section = SettingsSection.Lyrics)
        val ordinaryFont = state.value.lyricsFontSizeSp
        val ordinaryCurrent = state.value.lyricsCurrentFontSizeSp
        val ordinaryGap = state.value.lyricsLineGapDp
        compose.onNodeWithTag("settings-immersive-font-size").performScrollTo()
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(128f)) }
        compose.onNodeWithTag("settings-immersive-font-size-label").assertTextEquals("全屏·128sp")
        compose.onNodeWithTag("settings-immersive-line-gap").performScrollTo()
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(96f)) }
        assertEquals(128f, state.value.lyricsImmersiveFontSizeSp, .01f)
        assertEquals(96f, state.value.lyricsImmersiveLineGapDp, .01f)
        capture("settings-immersive-controls")
        compose.onNodeWithTag("settings-immersive-current-font-size").performScrollTo()
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(200f)) }
        compose.onNodeWithTag("settings-immersive-current-font-size-label").assertTextEquals("全屏·200sp")
        assertEquals(200f, state.value.lyricsImmersiveCurrentFontSizeSp, .01f)
        assertEquals(ordinaryFont, state.value.lyricsFontSizeSp, .01f)
        assertEquals(ordinaryCurrent, state.value.lyricsCurrentFontSizeSp, .01f)
        assertEquals(ordinaryGap, state.value.lyricsLineGapDp, .01f)
        assertEquals(0, sounds)
        compose.onNodeWithTag("settings-lyrics-preview").assertDoesNotExist()
        capture("settings-immersive-current-controls")
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


    @Test fun homeUsesTheMeasuredHeaderAndSectionSpacingInEveryDensity() {
        mount(open = true)
        val sheet = bounds("settings-sheet")
        val back = bounds("settings-back")
        val title = bounds("settings-title")
        val divider = bounds("settings-header-divider")
        val sectionTitle = bounds("settings-section-title-布局")
        val card = bounds("settings-card-布局")
        val tolerance = maxOf(1.5f, density)
        assertEquals(24f * density, back.left - sheet.left, tolerance)
        assertEquals(24f * density, title.top - sheet.top, tolerance)
        assertEquals(24f * density, divider.top - title.bottom, tolerance)
        assertEquals(24f * density, sectionTitle.top - divider.bottom, tolerance)
        assertEquals(48f * density, sectionTitle.left - sheet.left, tolerance)
        assertEquals(24f * density, card.top - sectionTitle.bottom, tolerance)
        assertEquals(24f * density, card.left - sheet.left, tolerance)
        assertEquals(24f * density, sheet.right - card.right, tolerance)
    }

    @Test fun topBarNewSwitchesEachDispatchOnceAndRetainIndependentValues() {
        mount(open = true, section = SettingsSection.TopBar)
        val cases = listOf(
            "显示续航" to { state.value.showRange },
            "显示插枪" to { state.value.showPluggedStatus },
            "显示预约充电" to { state.value.showScheduledCharging },
            "显示充电剩余时长" to { state.value.showChargingRemainingTime },
            "显示充电功率" to { state.value.showChargingPower },
            "状态栏保持分屏" to { state.value.immersiveTopBarKeepSplit },
        )
        for ((name, value) in cases) {
            assertTrue(value())
            val count = events.size
            val soundCount = sounds
            compose.onNodeWithTag("settings-switch-$name").performScrollTo().performClick()
            assertFalse(value())
            assertEquals(count + 1, events.size)
            assertEquals(soundCount + 1, sounds)
        }
        assertTrue(state.value.showBattery)
        assertTrue(state.value.immersiveShowTopBar)
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
