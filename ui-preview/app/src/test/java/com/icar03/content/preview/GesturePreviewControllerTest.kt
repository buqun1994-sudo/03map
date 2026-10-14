package com.icar03.content.preview

import com.icar03.content.model.GestureAction
import com.icar03.content.model.GestureCommand
import com.icar03.content.model.GesturePreferences
import com.icar03.content.ui.*
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.runTest
import org.junit.Assert.*
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class GesturePreviewControllerTest {
    private val change = ContentEvent.GestureActionChanged(GestureCommand.FourRight, GestureAction.EnterImmersive)

    @Test fun gestureSettingsUseTheSameImmutableModelAndOnlyTheActiveGestureSectionAcceptsChoices() = runTest {
        val controller = PreviewController(this)
        val defaults = controller.state.value.gestureActions
        controller.dispatch(change)
        assertSame(defaults, controller.state.value.gestureActions)
        controller.dispatch(ContentEvent.SettingsTapped)
        SettingsSection.entries.filter { it != SettingsSection.Gestures }.forEach { section ->
            controller.dispatch(ContentEvent.SettingsSectionSelected(section))
            controller.dispatch(change)
            assertSame(defaults, controller.state.value.gestureActions)
        }
        controller.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.Gestures))
        controller.dispatch(change)
        assertSame(GestureAction.EnterImmersive, controller.state.value.gestureActions[GestureCommand.FourRight])
        assertSame(GestureAction.None, defaults[GestureCommand.FourRight])
        assertThrows(UnsupportedOperationException::class.java) { (controller.state.value.gestureActions as MutableMap).clear() }
        controller.dispatch(ContentEvent.SettingsBack)
        val accepted = controller.state.value.gestureActions
        controller.dispatch(change.copy(action = GestureAction.ExitImmersive))
        assertSame(accepted, controller.state.value.gestureActions)
        controller.pause()
        controller.dispatch(ContentEvent.SettingsTapped)
        controller.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.Gestures))
        controller.dispatch(change.copy(action = GestureAction.ExitImmersive))
        assertSame(accepted, controller.state.value.gestureActions)
        controller.close()
    }

    @Test fun collapsedAndAppleModalSettingsRejectOldChoices() = runTest {
        val base = ContentUiState(settingsOpen = true, settingsSection = SettingsSection.Gestures)
        for (initial in listOf(base.copy(settingsCollapsed = true),
                base.copy(lyricsProviderSettings = base.lyricsProviderSettings.copy(appleLoginOpen = true)))) {
            val controller = PreviewController(this, initial)
            controller.dispatch(change)
            assertEquals(GesturePreferences.defaultActions(), controller.state.value.gestureActions)
            controller.close()
        }
    }

    @Test fun initialMapsAreFrozenAndScenarioSwitchKeepsTheAcceptedGesturePreferences() = runTest {
        val source = mutableMapOf(GestureCommand.TwoRight to GestureAction.None)
        val controller = PreviewController(this, ContentUiState(gestureActions = source))
        source.clear()
        assertEquals(12, controller.state.value.gestureActions.size)
        assertSame(GestureAction.None, controller.state.value.gestureActions[GestureCommand.TwoRight])
        controller.dispatch(ContentEvent.SettingsTapped)
        controller.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.Gestures))
        controller.dispatch(change)
        val accepted = controller.state.value.gestureActions
        controller.dispatch(ContentEvent.SettingsDismissed)
        controller.dispatch(ContentEvent.ScenarioSelected(PreviewScenario.Playing))
        assertSame(accepted, controller.state.value.gestureActions)
        controller.dispatch(ContentEvent.GesturePerformed(GestureCommand.FourRight))
        assertSame(accepted, controller.state.value.gestureActions)
        controller.close()
    }
}
