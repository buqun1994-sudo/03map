package com.icar03.content.ui

import android.os.SystemClock
import android.view.KeyEvent
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.text.TextLayoutResult
import androidx.compose.ui.unit.sp
import com.icar03.content.model.GestureAction
import com.icar03.content.model.GestureCommand
import com.icar03.content.model.GesturePreferences
import kotlinx.coroutines.Dispatchers
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Exercise the real Material3 popup and the panel's single accepted-event sound owner. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w320dp-h1080dp-mdpi")
@OptIn(ExperimentalComposeUiApi::class)
open class GestureSettingsSheetTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    private val state = mutableStateOf(ContentUiState(previewMode = false, settingsOpen = true,
        settingsSection = SettingsSection.Gestures, lyricsProviderSettings = LyricsProviderUiState(available = true)))
    private val events = mutableListOf<ContentEvent>()
    private var sounds = 0
    private fun tag(command: GestureCommand) = "settings-gesture-${command.key}"
    private fun mount(section: SettingsSection = SettingsSection.Gestures) {
        state.value = state.value.copy(settingsSection = section, dark = dark)
        compose.setContent {
            CompositionLocalProvider(LocalContentClickSound provides { sounds++ },
                LocalLyricGeometryDispatcher provides Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined) {
                ContentTheme(dark) {
                    ContentPanel(state.value, onEvent = { event ->
                        events += event
                        val current = state.value
                        state.value = when (event) {
                            is ContentEvent.SettingsSectionSelected -> current.copy(settingsSection = event.section)
                            ContentEvent.SettingsBack -> current.copy(settingsSection = SettingsSection.Home)
                            is ContentEvent.GestureActionChanged -> current.copy(gestureActions =
                                GesturePreferences.withAction(current.gestureActions, event.command, event.action))
                            else -> current
                        }
                    }, modifier = Modifier.testTag("gesture-settings-root"), canDispatch = { event ->
                        event !is ContentEvent.GestureActionChanged || state.value.let {
                            it.settingsOpen && it.settingsSection == SettingsSection.Gestures &&
                                !it.settingsCollapsed && !it.lyricsProviderSettings.appleLoginOpen &&
                                it.lyricsProviderSettings.available && it.gestureActions[event.command] != event.action
                        }
                    })
                }
            }
        }
        settle()
    }
    private fun settle() {
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(600)
        compose.waitForIdle()
    }
    private fun open(command: GestureCommand) {
        compose.onNodeWithTag(tag(command)).performScrollTo().performClick()
        settle()
    }
    private fun option(command: GestureCommand, action: GestureAction) =
        compose.onNodeWithTag("${tag(command)}-option-${action.value}")
    private fun dismissPopupWithPhysicalBack() {
        val popupRoot = compose.onNode(isPopup()).fetchSemanticsNode().root as ViewRootForTest
        val popupWindow = popupRoot.view.rootView
        compose.runOnIdle {
            val now = SystemClock.uptimeMillis()
            // The PopupLayout window receives physical Back before its inner Compose key handler.
            assertTrue(popupWindow.dispatchKeyEvent(KeyEvent(now, now, KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_BACK, 0)))
            assertTrue(popupWindow.dispatchKeyEvent(KeyEvent(now, now + 1, KeyEvent.ACTION_UP, KeyEvent.KEYCODE_BACK, 0)))
        }
    }
    private fun assertCompleteText(tag: String, text: String) {
        val node = compose.onNode(hasText(text) and hasAnyAncestor(hasTestTag(tag)), useUnmergedTree = true)
            .assertTextEquals(text)
        val layouts = mutableListOf<TextLayoutResult>()
        node.performSemanticsAction(SemanticsActions.GetTextLayoutResult) { assertTrue(it(layouts)) }
        val layout = layouts.single()
        assertEquals(24.sp, layout.layoutInput.style.fontSize)
        assertEquals(30.sp, layout.layoutInput.style.lineHeight)
        assertEquals(text.length, layout.getLineEnd(layout.lineCount - 1, visibleEnd = true))
        repeat(layout.lineCount) { line ->
            assertFalse(layout.isLineEllipsized(line))
            assertTrue("complete text stays inside the measured line", layout.getLineRight(line) <= layout.size.width + 1f)
        }
    }

    @Test fun theExistingWholeRowGestureEntranceIsGroupedUnderOtherAndUsesTheFixedTitle() {
        mount(SettingsSection.Home)
        val entrance = compose.onNodeWithTag("settings-menu-Gestures").performScrollTo().assertIsDisplayed()
        val card = compose.onNodeWithTag("settings-card-其它").fetchSemanticsNode().boundsInRoot
        val row = entrance.fetchSemanticsNode().boundsInRoot
        assertTrue(row.left >= card.left && row.right <= card.right)
        assertTrue(row.height >= 48f)
        entrance.performClick(); settle()
        assertEquals(listOf(ContentEvent.SettingsSectionSelected(SettingsSection.Gestures)), events)
        assertEquals(1, sounds)
        compose.onNodeWithTag("settings-title").assertTextEquals("手势操作")
        compose.onNodeWithTag("settings-collapse").assertDoesNotExist()
        compose.onNodeWithTag("settings-back").performClick(); settle()
        compose.onNodeWithTag("settings-title").assertTextEquals("设置")
    }

    @Test fun allTwelveRowsUseThreeCardsAndOnlyOneAcceptedEventAndSoundPerChoice() {
        mount()
        val header = compose.onNodeWithTag("settings-header").fetchSemanticsNode().boundsInRoot
        val scroll = compose.onNodeWithTag("settings-gestures-scroll").fetchSemanticsNode().boundsInRoot
        assertTrue(scroll.top >= header.bottom)
        listOf("二指", "三指", "四指").forEach { compose.onNodeWithTag("settings-card-$it").assertExists() }
        GestureCommand.entries.forEach { command ->
            val saved = state.value.gestureActions.getValue(command)
            val next = GestureAction.entries[(saved.ordinal + 1) % GestureAction.entries.size]
            val soundBefore = sounds
            val eventBefore = events.size
            open(command)
            assertEquals(soundBefore + 1, sounds)
            assertEquals(eventBefore, events.size)
            GestureAction.entries.forEach { option(command, it).assertExists() }
            option(command, next).performClick(); settle()
            assertEquals(eventBefore + 1, events.size)
            assertEquals(ContentEvent.GestureActionChanged(command, next), events.last())
            assertEquals(soundBefore + 2, sounds)
            assertSame(next, state.value.gestureActions[command])
            compose.onNodeWithTag("${tag(command)}-menu").assertDoesNotExist()
            assertEquals(header, compose.onNodeWithTag("settings-header").fetchSemanticsNode().boundsInRoot)
        }
    }

    @Test fun selectedChoiceAndCancelledOrDismissedPopupDoNotWriteOrEmitASelectionSound() {
        mount()
        val command = GestureCommand.TwoRight
        val before = state.value.gestureActions
        open(command)
        option(command, GestureAction.EnterImmersive).performClick(); settle()
        assertTrue(events.isEmpty())
        assertEquals(1, sounds)
        assertSame(before, state.value.gestureActions)
        open(command)
        option(command, GestureAction.ExitImmersive).performTouchInput { down(center); advanceEventTime(40); cancel() }
        compose.waitForIdle()
        assertTrue(events.isEmpty())
        assertEquals(2, sounds)
        dismissPopupWithPhysicalBack()
        settle()
        compose.onNodeWithTag("${tag(command)}-menu").assertDoesNotExist()
        assertTrue(events.isEmpty())
        assertEquals(2, sounds)
        assertSame(before, state.value.gestureActions)
    }

    @Test fun disablingTheOpenPopupRejectsAnOldSemanticSelectionAndKeepsTheSavedMap() {
        mount()
        val command = GestureCommand.TwoRight
        open(command)
        val oldClick = option(command, GestureAction.ExitImmersive).fetchSemanticsNode()
            .config[SemanticsActions.OnClick].action!!
        val before = state.value.gestureActions
        compose.runOnIdle { state.value = state.value.copy(lyricsProviderSettings = state.value.lyricsProviderSettings.copy(available = false)) }
        settle()
        compose.onNodeWithTag("${tag(command)}-menu").assertDoesNotExist()
        compose.onNodeWithTag(tag(command)).assertIsNotEnabled()
        compose.runOnIdle { oldClick() }
        assertTrue(events.isEmpty())
        assertEquals(1, sounds)
        assertSame(before, state.value.gestureActions)
    }

    @Test fun leavingTheSectionOrOpeningAnAppleModalDisposesThePopupWithoutACommit() {
        mount()
        val command = GestureCommand.TwoRight
        open(command)
        val oldClick = option(command, GestureAction.ExitImmersive).fetchSemanticsNode()
            .config[SemanticsActions.OnClick].action!!
        val before = state.value.gestureActions
        compose.runOnIdle { state.value = state.value.copy(settingsSection = SettingsSection.TopBar) }
        settle()
        compose.runOnIdle { oldClick() }
        assertTrue(events.isEmpty())
        assertEquals(1, sounds)
        assertSame(before, state.value.gestureActions)
        compose.runOnIdle { state.value = state.value.copy(settingsSection = SettingsSection.Gestures) }
        settle(); open(command)
        compose.runOnIdle { state.value = state.value.copy(lyricsProviderSettings = state.value.lyricsProviderSettings.copy(appleLoginOpen = true)) }
        settle()
        compose.onNodeWithTag("${tag(command)}-menu").assertDoesNotExist()
        compose.onNodeWithTag(tag(command)).assertIsNotEnabled()
        assertTrue(events.isEmpty())
        assertEquals(2, sounds)
        assertSame(before, state.value.gestureActions)
    }

    @Test fun narrowRowsAndPopupKeepLongChineseChoicesCompleteAtTheShared24SpSize() {
        mount()
        val command = GestureCommand.TwoRight
        compose.onNodeWithTag(tag(command)).performScrollTo()
        assertCompleteText("settings-gesture-label-${command.key}", command.label)
        assertCompleteText("${tag(command)}-value", "进入沉浸式全屏")
        open(command)
        GestureAction.entries.forEach { action ->
            val texts = mutableListOf<TextLayoutResult>()
            val optionTag = "${tag(command)}-option-${action.value}"
            compose.onNode(hasText(action.label) and hasAnyAncestor(hasTestTag(optionTag)) and
                SemanticsMatcher.keyIsDefined(SemanticsActions.GetTextLayoutResult))
                .performSemanticsAction(SemanticsActions.GetTextLayoutResult) { assertTrue(it(texts)) }
            val layout = texts.single()
            assertEquals(action.label, layout.layoutInput.text.text)
            assertEquals(24.sp, layout.layoutInput.style.fontSize)
            assertEquals(action.label.length, layout.getLineEnd(layout.lineCount - 1, visibleEnd = true))
            repeat(layout.lineCount) { assertFalse(layout.isLineEllipsized(it)) }
        }
        assertTrue(events.isEmpty())
    }
}

class GestureSettingsSheetDarkTest : GestureSettingsSheetTest() {
    override val dark = true
}
