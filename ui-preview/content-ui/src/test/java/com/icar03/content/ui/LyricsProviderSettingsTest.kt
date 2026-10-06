package com.icar03.content.ui

import androidx.compose.foundation.layout.Column
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.test.assertIsSelected
import androidx.compose.ui.test.assertIsNotEnabled
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.test.performClick
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.semantics.SemanticsActions
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class LyricsProviderSettingsTest {
    @get:Rule val compose = createComposeRule()

    @Test fun uiContractDefaultsToAutoDisconnectedAndUnavailable() {
        val state = LyricsProviderUiState()
        assertEquals("auto", state.preferredPlatform)
        assertEquals("disconnected", state.appleStatus)
        assertFalse(state.appleNeedsRenewal)
        assertEquals("", state.appleStorefront)
        assertFalse(state.appleLoginOpen)
        assertFalse(state.applePreparing)
        assertFalse(state.available)
    }

    @Test fun providerSelectionIsSingleChoiceAndRepeatedSelectedTapDoesNotToggleOff() {
        val state = mutableStateOf(LyricsProviderUiState(available = true))
        val events = mutableListOf<ContentEvent>()
        compose.setContent {
            ContentTheme(dark = false) {
                CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(false)) {
                    Column(Modifier) {
                        LyricsProviderSettings(state.value, { event ->
                            events += event
                            if (event is LyricsPlatformSelected) state.value = state.value.copy(preferredPlatform = event.id)
                        }, enabled = true)
                    }
                }
            }
        }
        compose.waitForIdle()
        compose.onNodeWithText("自动").assertIsSelected().performClick()
        assertTrue(events.isEmpty())
        compose.onNodeWithText("网易云音乐").performClick()
        compose.waitForIdle()
        assertEquals(listOf(LyricsPlatformSelected("netease")), events)
        compose.onNodeWithText("网易云音乐").assertIsSelected().performClick()
        assertEquals(1, events.size)
    }

    @Test fun disabledProvidersRejectSemanticClick() {
        val events = mutableListOf<ContentEvent>()
        compose.setContent {
            ContentTheme(dark = false) {
                CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(false)) {
                    LyricsProviderSettings(
                        LyricsProviderUiState(available = true),
                        { events += it },
                        enabled = false,
                    )
                }
            }
        }
        compose.waitForIdle()
        compose.onNodeWithText("QQ音乐").assertIsNotEnabled()
            .performSemanticsAction(SemanticsActions.OnClick) { it() }
        assertTrue(events.isEmpty())
    }
}
