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
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.graphics.toArgb
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
                            ContentEvent.SettingsTapped -> current.copy(settingsOpen = !current.settingsOpen, settingsCollapsed = false, settingsSection = SettingsSection.Home)
                            ContentEvent.SettingsDismissed -> current.copy(settingsOpen = false, settingsCollapsed = false)
                            ContentEvent.SettingsCollapseTapped -> current.copy(settingsCollapsed = !current.settingsCollapsed)
                            ContentEvent.SettingsRestored -> current.copy(settingsCollapsed = false)
                            is ContentEvent.AutoCloseSettingsOnDriveChanged -> current.copy(autoCloseSettingsOnDrive = event.value)
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
        compose.runOnIdle { state.value = state.value.copy(lyricsHighlight = true) }
        val saved = state.value.lyricsCurrentFontSizeSp
        val immersiveSaved = state.value.lyricsImmersiveCurrentFontSizeSp
        compose.onNodeWithTag("settings-switch-当前句歌词放大").performScrollTo().performClick()
        assertFalse(state.value.lyricsHighlight)
        compose.onNodeWithTag("settings-current-font-size").assertDoesNotExist()
        compose.onNodeWithTag("settings-immersive-current-font-size").assertDoesNotExist()
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
        compose.runOnIdle { state.value = state.value.copy(lyricsHighlight = true) }
        compose.onNodeWithTag("settings-immersive-current-font-size").performScrollTo()
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(188f)) }
        compose.onNodeWithTag("settings-immersive-current-font-size-label").assertTextEquals("全屏·188sp")
        assertEquals(188f, state.value.lyricsImmersiveCurrentFontSizeSp, .01f)
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


    @Test fun outerSheetEntersAndLeavesThroughTheBottomWithoutHorizontalTravel() {
        mount()
        val host = bounds("settings-sheet-host")
        compose.mainClock.autoAdvance = false
        compose.runOnIdle { state.value = state.value.copy(settingsOpen = true) }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        compose.mainClock.advanceTimeByFrame()
        val initial = unclippedBounds("settings-sheet")
        assertEquals(host.left, initial.left, 1f)
        assertEquals(host.right, initial.right, 1f)
        assertTrue("The sheet starts below its host", initial.top >= host.bottom - 1f)

        compose.mainClock.advanceTimeBy(80)
        val enterFirst = unclippedBounds("settings-sheet")
        assertTrue(enterFirst.top > host.top + 1f && enterFirst.top < host.bottom - 1f)
        assertEquals(initial.left, enterFirst.left, 1f)
        assertEquals(initial.right, enterFirst.right, 1f)
        assertSheetPixel(capture("settings-enter-bottom-80ms"), enterFirst)
        compose.mainClock.advanceTimeBy(80)
        val enterSecond = unclippedBounds("settings-sheet")
        assertTrue(enterSecond.top < enterFirst.top)
        assertTrue("Entrance slows down instead of moving linearly",
            initial.top - enterFirst.top > (enterFirst.top - enterSecond.top) * 1.2f)
        assertEquals(initial.left, enterSecond.left, 1f)
        capture("settings-enter-bottom-160ms")
        compose.mainClock.advanceTimeBy(500)
        assertRectNear(host, unclippedBounds("settings-sheet"))

        compose.runOnIdle { state.value = state.value.copy(settingsOpen = false) }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        compose.mainClock.advanceTimeByFrame()
        val exitInitial = unclippedBounds("settings-sheet")
        assertRectNear(host, exitInitial)
        compose.mainClock.advanceTimeBy(80)
        val exitFirst = unclippedBounds("settings-sheet")
        assertTrue(exitFirst.top > host.top + 1f && exitFirst.top < host.bottom - 1f)
        assertEquals(host.left, exitFirst.left, 1f)
        assertEquals(host.right, exitFirst.right, 1f)
        assertSheetPixel(capture("settings-exit-bottom-80ms"), exitFirst)
        compose.mainClock.advanceTimeBy(80)
        val exitSecond = unclippedBounds("settings-sheet")
        assertTrue(exitSecond.top > exitFirst.top)
        assertTrue("Exit slows down: first=${exitFirst.top - exitInitial.top}, second=${exitSecond.top - exitFirst.top}",
            exitFirst.top - exitInitial.top > (exitSecond.top - exitFirst.top) * 1.2f)
        assertEquals(host.left, exitSecond.left, 1f)
        capture("settings-exit-bottom-160ms")
        compose.mainClock.advanceTimeBy(500)
        compose.mainClock.autoAdvance = true
        compose.onNodeWithTag("settings-sheet").assertDoesNotExist()
        assertTrue(events.none { it is ContentEvent.PageSelected })
    }

    @Test fun childPagesTravelLeftAndRightNonlinearlyInsideAStationaryShell() {
        mount(open = true)
        val shell = unclippedBounds("settings-sheet")
        val header = unclippedBounds("settings-header")
        val home = unclippedBounds("settings-home")
        compose.mainClock.autoAdvance = false
        compose.onNodeWithTag("settings-menu-TopBar").performClick()
        compose.mainClock.advanceTimeByFrame()
        val incomingChild = unclippedBounds("settings-detail-scroll")
        assertTrue("A child enters from the right", incomingChild.left > home.left + shell.width * .9f)
        compose.mainClock.advanceTimeBy(80)
        val childFirst = unclippedBounds("settings-detail-scroll")
        val leavingHome = unclippedBounds("settings-home")
        assertTrue(childFirst.left > home.left + 1f && childFirst.left < incomingChild.left)
        assertTrue("The home page leaves toward the left", leavingHome.left < home.left - 1f)
        assertRectNear(shell, unclippedBounds("settings-sheet"))
        assertRectNear(header, unclippedBounds("settings-header"))
        capture("settings-child-enter-right-80ms")
        compose.mainClock.advanceTimeBy(80)
        val childSecond = unclippedBounds("settings-detail-scroll")
        assertTrue(childSecond.left < childFirst.left)
        assertTrue("Child entrance is nonlinear",
            incomingChild.left - childFirst.left > (childFirst.left - childSecond.left) * 1.2f)
        assertEquals(home.top, childSecond.top, 1f)
        assertRectNear(shell, unclippedBounds("settings-sheet"))
        capture("settings-child-enter-right-160ms")
        compose.mainClock.advanceTimeBy(500)
        assertEquals(home.left, unclippedBounds("settings-detail-scroll").left, 1f)
        assertEquals(home.top, unclippedBounds("settings-detail-scroll").top, 1f)
        assertEquals(home.width, unclippedBounds("settings-detail-scroll").width, 1f)
        compose.onNodeWithTag("settings-home").assertDoesNotExist()

        compose.onNodeWithTag("settings-back").performClick()
        compose.mainClock.advanceTimeByFrame()
        val incomingHome = unclippedBounds("settings-home")
        assertTrue("Home enters from the left", incomingHome.left < home.left - shell.width * .9f)
        compose.mainClock.advanceTimeBy(80)
        val homeFirst = unclippedBounds("settings-home")
        val leavingChild = unclippedBounds("settings-detail-scroll")
        assertTrue(homeFirst.left < home.left - 1f && homeFirst.left > incomingHome.left)
        assertTrue("The child leaves toward the right", leavingChild.left > home.left + 1f)
        assertRectNear(shell, unclippedBounds("settings-sheet"))
        assertRectNear(header, unclippedBounds("settings-header"))
        capture("settings-home-enter-left-80ms")
        compose.mainClock.advanceTimeBy(80)
        val homeSecond = unclippedBounds("settings-home")
        assertTrue(homeSecond.left > homeFirst.left)
        assertTrue("Returning home is nonlinear",
            homeFirst.left - incomingHome.left > (homeSecond.left - homeFirst.left) * 1.2f)
        assertEquals(home.top, homeSecond.top, 1f)
        compose.mainClock.advanceTimeBy(500)
        compose.mainClock.autoAdvance = true
        assertRectNear(home, unclippedBounds("settings-home"))
        assertRectNear(shell, unclippedBounds("settings-sheet"))
        assertRectNear(header, unclippedBounds("settings-header"))
        compose.onNodeWithTag("settings-detail-scroll").assertDoesNotExist()
        assertEquals(SettingsSection.Home, state.value.settingsSection)
        capture("settings-child-return-settled")
    }

    @Test fun collapseFlipsTheSuppliedArrowAroundTheSameVisibleCenterAndKeepsPreferences() {
        state.value = state.value.copy(page = PanelPage.Lyrics)
        mount(open = true, section = SettingsSection.Lyrics)
        val saved = state.value
        val eventCount = events.size
        val originalSheet = unclippedBounds("settings-sheet")
        val originalButton = unclippedBounds("settings-collapse")
        assertEquals(48f * density, originalButton.width, 1f)
        assertEquals(48f * density, originalButton.height, 1f)
        compose.onNodeWithTag("settings-collapse").assertContentDescriptionEquals("下移收起设置页")
        val down = arrowInk(capture("settings-arrow-down"), originalButton)
        assertTrue("The supplied arrow points down", down.spanAt(.25f) > down.spanAt(.75f) + 2f * density)

        compose.onNodeWithTag("settings-collapse").performClick()
        compose.mainClock.advanceTimeBy(600)
        val collapsedSheet = unclippedBounds("settings-sheet")
        val collapsedButton = unclippedBounds("settings-collapse")
        compose.onNodeWithTag("settings-collapse").assertContentDescriptionEquals("恢复设置页")
        val up = arrowInk(capture("settings-arrow-up"), collapsedButton)
        assertTrue("The flipped arrow points up", up.spanAt(.75f) > up.spanAt(.25f) + 2f * density)
        assertEquals("Visible arrow center X", down.bounds.center.x, up.bounds.center.x, 1f)
        assertEquals("Visible arrow center Y", down.bounds.center.y, up.bounds.center.y, 1f)
        assertTrue(collapsedSheet.top > originalSheet.top + 1f)
        assertEquals(originalSheet.left, collapsedSheet.left, 1f)
        assertEquals(originalButton.left - originalSheet.left, collapsedButton.left - collapsedSheet.left, 1f)
        assertEquals(1, sounds)
        assertEquals(saved.copy(settingsCollapsed = true), state.value)
        assertEquals(eventCount + 1, events.size)

        compose.onNodeWithTag("settings-collapse").performClick()
        compose.mainClock.advanceTimeBy(600)
        assertRectNear(originalSheet, unclippedBounds("settings-sheet"))
        val restored = arrowInk(capture("settings-arrow-restored"), unclippedBounds("settings-collapse"))
        assertEquals(down.bounds.center.x, restored.bounds.center.x, 1f)
        assertEquals(down.bounds.center.y, restored.bounds.center.y, 1f)
        assertTrue(restored.spanAt(.25f) > restored.spanAt(.75f) + 2f * density)
        assertEquals(2, sounds)
        assertEquals(saved, state.value)
        assertEquals(eventCount + 2, events.size)
    }

    @Test fun collapseEntryBelongsOnlyToTheUnderlyingLyricsPage() {
        mount(open = true, section = SettingsSection.Lyrics)
        compose.onNodeWithTag("settings-collapse").assertDoesNotExist()
        compose.runOnIdle { state.value = state.value.copy(page = PanelPage.Lyrics) }
        compose.onNodeWithTag("settings-collapse").assertIsDisplayed()
        compose.runOnIdle { state.value = state.value.copy(settingsSection = SettingsSection.Interaction) }
        compose.onNodeWithTag("settings-collapse").assertIsDisplayed()
        compose.runOnIdle { state.value = state.value.copy(page = PanelPage.Shortcuts) }
        compose.onNodeWithTag("settings-collapse").assertDoesNotExist()
    }

    @Test fun exposedContentRestoresTheSameSectionWithoutDispatchingItsUnderlyingAction() {
        state.value = state.value.copy(page = PanelPage.Lyrics)
        mount(open = true, section = SettingsSection.Lyrics)
        compose.onNodeWithTag("settings-collapse").performClick()
        compose.mainClock.advanceTimeBy(600)
        val count = events.size
        val exposedButton = bounds("dock-Lock").center
        val root = bounds("settings-native-root")
        compose.onNodeWithTag("settings-native-root").performTouchInput { click(exposedButton - root.topLeft) }
        compose.mainClock.advanceTimeBy(600)
        assertFalse(state.value.settingsCollapsed)
        assertTrue(state.value.settingsOpen)
        assertEquals(SettingsSection.Lyrics, state.value.settingsSection)
        assertEquals(listOf(ContentEvent.SettingsRestored), events.drop(count))
        assertEquals(2, sounds)
        compose.onNodeWithTag("settings-restore-content").assertDoesNotExist()
        capture("settings-restored-by-content")
    }

    @Test fun restoreRejectsDragCancelLongPressAndAcceptsOneSemanticClick() {
        state.value = state.value.copy(page = PanelPage.Lyrics)
        mount(open = true, section = SettingsSection.Interaction)
        compose.onNodeWithTag("settings-collapse").performClick()
        compose.mainClock.advanceTimeBy(600)
        val count = events.size
        val restore = compose.onNodeWithTag("settings-restore-content")
        restore.performTouchInput { swipe(Offset(width * .5f, height * .2f), Offset(width * .5f, height * .4f)) }
        restore.performTouchInput { down(Offset(width * .5f, height * .2f)); cancel() }
        restore.performTouchInput { down(Offset(width * .5f, height * .2f)); advanceEventTime(700); up() }
        assertTrue(state.value.settingsCollapsed)
        assertEquals(count, events.size)
        assertEquals(1, sounds)
        restore.performClick()
        compose.mainClock.advanceTimeBy(600)
        assertEquals(listOf(ContentEvent.SettingsRestored), events.drop(count))
        assertFalse(state.value.settingsCollapsed)
        assertEquals(2, sounds)
    }

    @Test fun closingACollapsedSheetLeavesDirectlyFromItsCurrentPoseWithoutRestoringFirst() {
        state.value = state.value.copy(page = PanelPage.Lyrics)
        mount(open = true)
        compose.onNodeWithTag("settings-collapse").performClick()
        compose.mainClock.advanceTimeBy(600)
        var previousTop = unclippedBounds("settings-sheet").top
        compose.mainClock.autoAdvance = false
        compose.runOnIdle { state.value = state.value.copy(settingsOpen = false, settingsCollapsed = false) }
        compose.mainClock.advanceTimeByFrame()
        repeat(3) {
            compose.mainClock.advanceTimeBy(64)
            val top = unclippedBounds("settings-sheet").top
            assertTrue("dismissal never raises the collapsed sheet", top >= previousTop - 1f)
            previousTop = top
        }
        compose.mainClock.advanceTimeBy(600)
        compose.onNodeWithTag("settings-sheet").assertDoesNotExist()
        compose.onNodeWithTag("settings-restore-content").assertDoesNotExist()
        assertEquals("automatic state dismissal is silent", 1, sounds)
        compose.mainClock.autoAdvance = true
    }

    @Test fun drivingPreferenceDefaultsOnSavesOnceAndItsFullNameRemainsReadable() {
        mount(open = true, section = SettingsSection.Interaction)
        val tag = "settings-switch-行车时自动关闭设置页"
        compose.onNodeWithTag(tag).performScrollTo().assertIsOn()
        compose.onNodeWithTag("$tag-label").assertTextEquals("行车时自动关闭设置页")
            .performSemanticsAction(SemanticsActions.GetTextLayoutResult) { action ->
                val layouts = mutableListOf<androidx.compose.ui.text.TextLayoutResult>()
                assertTrue(action(layouts))
                val layout = layouts.single()
                assertEquals("行车时自动关闭设置页".length, layout.getLineEnd(layout.lineCount - 1))
                assertFalse(layout.hasVisualOverflow)
            }
        compose.onNodeWithTag(tag).performClick().assertIsOff()
        assertFalse(state.value.autoCloseSettingsOnDrive)
        assertEquals(listOf(ContentEvent.AutoCloseSettingsOnDriveChanged(false)), events)
        assertEquals(1, sounds)
        capture("settings-interaction-auto-close")
    }

    @Test fun lyricDefaultsAndCurrentFontRangesComeFromTheActualControls() {
        mount(open = true, section = SettingsSection.Lyrics)
        assertEquals(50f, state.value.lyricsFontSizeSp, .01f)
        assertEquals(120f, state.value.lyricsImmersiveFontSizeSp, .01f)
        assertFalse(state.value.lyricsHighlight)
        assertSliderRange("settings-font-size", 28f, 72f, 50f, 43)
        compose.onNodeWithTag("settings-font-size-label").assertTextEquals("分屏·50sp")
        assertSliderRange("settings-immersive-font-size", 64f, 192f, 120f, 63)
        compose.onNodeWithTag("settings-immersive-font-size-label").assertTextEquals("全屏·120sp")
        compose.onNodeWithTag("settings-current-font-size").assertDoesNotExist()
        compose.onNodeWithTag("settings-immersive-current-font-size").assertDoesNotExist()
        capture("settings-lyric-default-fonts")

        compose.onNodeWithTag("settings-switch-当前句歌词放大").performScrollTo().performClick()
        assertTrue(state.value.lyricsHighlight)
        assertSliderRange("settings-current-font-size", 50f, 110f, 50f, 59)
        assertSliderRange("settings-immersive-current-font-size", 120f, 180f, 144f, 29)
        compose.onNodeWithTag("settings-font-size").performScrollTo()
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(56f)) }
        assertSliderRange("settings-current-font-size", 56f, 116f, 56f, 59)
        compose.onNodeWithTag("settings-current-font-size")
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(116f)) }
        compose.onNodeWithTag("settings-current-font-size-label").assertTextEquals("分屏·116sp")
        compose.onNodeWithTag("settings-current-font-size")
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(-100f)) }
        assertEquals(56f, state.value.lyricsCurrentFontSizeSp, .01f)
        compose.onNodeWithTag("settings-immersive-font-size").performScrollTo()
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(128f)) }
        assertSliderRange("settings-immersive-current-font-size", 128f, 188f, 144f, 29)
        compose.onNodeWithTag("settings-immersive-current-font-size")
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(188f)) }
        compose.onNodeWithTag("settings-immersive-current-font-size-label").assertTextEquals("全屏·188sp")
        compose.onNodeWithTag("settings-immersive-current-font-size")
            .performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(-100f)) }
        assertEquals(128f, state.value.lyricsImmersiveCurrentFontSizeSp, .01f)
        val expandedColorGap = unclippedBounds("settings-label-当前句歌词颜色").top -
            unclippedBounds("settings-switch-当前句歌词放大").bottom
        capture("settings-current-font-ranges")

        compose.onNodeWithTag("settings-switch-当前句歌词放大").performScrollTo().performClick()
        compose.onNodeWithTag("settings-current-font-size").assertDoesNotExist()
        compose.onNodeWithTag("settings-immersive-current-font-size").assertDoesNotExist()
        val closedColorGap = unclippedBounds("settings-label-当前句歌词颜色").top -
            unclippedBounds("settings-switch-当前句歌词放大").bottom
        assertTrue("The hidden font section leaves no reserved height", closedColorGap < expandedColorGap - 120f * density)
        val savedNormalColor = state.value.lyricsCustomColor
        chooseSettingOption("settings-current-color-mode", "custom")
        chooseSettingSwatch("settings-current-color", 0)
        val colorEvent = events.filterIsInstance<ContentEvent.LyricsCurrentCustomColorChanged>().single()
        assertEquals(colorEvent.value, state.value.lyricsCurrentCustomColor)
        assertEquals(savedNormalColor, state.value.lyricsCustomColor)
        assertEquals(56f, state.value.lyricsCurrentFontSizeSp, .01f)
        assertEquals(128f, state.value.lyricsImmersiveCurrentFontSizeSp, .01f)
        assertFalse(state.value.lyricsHighlight)
        capture("settings-current-fonts-collapsed-color-editable")
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

    private fun unclippedBounds(tag: String): Rect {
        val node = compose.onNodeWithTag(tag).fetchSemanticsNode()
        val origin = node.positionInRoot
        return Rect(origin.x, origin.y, origin.x + node.size.width, origin.y + node.size.height)
    }

    private fun assertRectNear(expected: Rect, actual: Rect) {
        assertEquals(expected.left, actual.left, 1f)
        assertEquals(expected.top, actual.top, 1f)
        assertEquals(expected.right, actual.right, 1f)
        assertEquals(expected.bottom, actual.bottom, 1f)
    }

    private fun assertSheetPixel(bitmap: Bitmap, sheet: Rect) {
        val origin = bounds("settings-native-root").topLeft
        val x = kotlin.math.round(sheet.left + 16f * density - origin.x).toInt()
        val y = kotlin.math.round(sheet.top + 20f * density - origin.y).toInt()
        assertTrue("The sampled native sheet pixel is inside the frame", x in 0 until bitmap.width && y in 0 until bitmap.height)
        val actual = bitmap.getPixel(x, y)
        val expected = settingsDesign(dark).page.toArgb()
        for (shift in listOf(16, 8, 0)) {
            assertEquals("Native frame follows the measured sheet", ((expected ushr shift) and 255).toDouble(),
                ((actual ushr shift) and 255).toDouble(), 3.0)
        }
    }

    private data class ArrowInk(val bounds: Rect, val pixels: List<Offset>) {
        fun spanAt(fraction: Float): Float {
            val y = bounds.top + bounds.height * fraction
            val row = pixels.filter { kotlin.math.abs(it.y - y) <= 1f }
            check(row.isNotEmpty()) { "No arrow pixels in the requested band" }
            return row.maxOf { it.x } - row.minOf { it.x }
        }
    }

    private fun arrowInk(bitmap: Bitmap, button: Rect): ArrowInk {
        val origin = bounds("settings-native-root").topLeft
        val expected = settingsDesign(dark).text.toArgb()
        val pixels = mutableListOf<Offset>()
        val left = kotlin.math.ceil(button.left - origin.x).toInt().coerceAtLeast(0)
        val top = kotlin.math.ceil(button.top - origin.y).toInt().coerceAtLeast(0)
        val right = kotlin.math.floor(button.right - origin.x).toInt().coerceAtMost(bitmap.width)
        val bottom = kotlin.math.floor(button.bottom - origin.y).toInt().coerceAtMost(bitmap.height)
        for (y in top until bottom) for (x in left until right) {
            val actual = bitmap.getPixel(x, y)
            if (listOf(16, 8, 0).all { shift ->
                    kotlin.math.abs(((actual ushr shift) and 255) - ((expected ushr shift) and 255)) <= 24
                }) pixels += Offset(x + .5f + origin.x - button.left, y + .5f + origin.y - button.top)
        }
        assertTrue("The supplied arrow is drawn in the native button frame", pixels.isNotEmpty())
        val ink = Rect(pixels.minOf { it.x } - .5f, pixels.minOf { it.y } - .5f,
            pixels.maxOf { it.x } + .5f, pixels.maxOf { it.y } + .5f)
        assertTrue(ink.width > 20f * density && ink.height > 10f * density)
        return ArrowInk(ink, pixels)
    }

    private fun assertSliderRange(tag: String, minimum: Float, maximum: Float, current: Float, steps: Int) {
        val slider = compose.onNodeWithTag(tag).performScrollTo().fetchSemanticsNode()
        val range = slider.config[SemanticsProperties.ProgressBarRangeInfo]
        assertEquals(minimum, range.range.start, .01f)
        assertEquals(maximum, range.range.endInclusive, .01f)
        assertEquals(current, range.current, .01f)
        assertEquals(steps, range.steps)
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
