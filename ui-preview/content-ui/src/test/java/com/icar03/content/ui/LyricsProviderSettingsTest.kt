package com.icar03.content.ui

import androidx.compose.foundation.layout.Column
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
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
        assertEquals("", state.appleAccountName)
        assertEquals("", state.appleRegionName)
        assertEquals("", state.appleConnectionMessage)
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

    private fun mountApple(initial: LyricsProviderUiState, enabled: Boolean = true): Pair<androidx.compose.runtime.MutableState<LyricsProviderUiState>, MutableList<ContentEvent>> {
        val state = mutableStateOf(initial.copy(preferredPlatform = "applemusic", available = true))
        val events = mutableListOf<ContentEvent>()
        compose.setContent {
            ContentTheme(dark = false) {
                CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(false)) {
                    LyricsProviderSettings(state.value, { events += it }, enabled)
                }
            }
        }
        compose.waitForIdle()
        return state to events
    }

    @Test fun theSamePrimaryButtonConnectsThenDisconnectsWithoutASecondAction() {
        val (state, events) = mountApple(LyricsProviderUiState())
        compose.onNodeWithTag("settings-apple-login").assertTextEquals("登录").performClick()
        assertEquals(listOf(AppleMusicConnectRequested), events)
        compose.runOnIdle { state.value = state.value.copy(appleStatus = "connected", appleStorefront = "cn") }
        compose.onNodeWithTag("settings-apple-login").assertTextEquals("断开").performClick()
        compose.onNodeWithTag("settings-apple-disconnect").assertDoesNotExist()
        compose.onNodeWithText("登录").assertDoesNotExist()
        assertEquals(listOf(AppleMusicConnectRequested, AppleMusicDisconnectRequested), events)
        compose.onNodeWithTag("settings-apple-status").assertTextEquals("已登录 · 中国大陆")
        compose.onNodeWithTag("settings-apple-account-name").assertDoesNotExist()
        compose.onNodeWithTag("settings-apple-region").assertDoesNotExist()
        compose.onNodeWithText("已连接 · CN").assertDoesNotExist()
    }

    @Test fun connectedStatusUsesTheActualRegionWithoutAnAccountRowOrCountryCode() {
        val (state, _) = mountApple(LyricsProviderUiState(appleStatus = "connected", appleStorefront = "us",
            appleAccountName = "音乐用户", appleRegionName = "加拿大"))
        compose.onNodeWithTag("settings-apple-status").assertTextEquals("已登录 · 加拿大")
        compose.onNodeWithTag("settings-apple-account-name").assertDoesNotExist()
        compose.runOnIdle { state.value = state.value.copy(appleRegionName = "") }
        compose.onNodeWithTag("settings-apple-status").assertTextEquals("已登录 · 美国")
        compose.runOnIdle { state.value = state.value.copy(appleStorefront = "unknown") }
        compose.onNodeWithTag("settings-apple-status").assertTextEquals("已登录")
    }

    @Test fun connectingCanBeCancelledAndVerifyingDisablesTheSameButton() {
        val (state, events) = mountApple(LyricsProviderUiState(appleStatus = "connecting"))
        compose.onNodeWithTag("settings-apple-login").assertTextEquals("取消").performClick()
        assertEquals(listOf(AppleMusicLoginDismissed), events)
        compose.runOnIdle { state.value = state.value.copy(appleStatus = "verifying", appleConnectionMessage = "正在验证 Apple Music 登录…") }
        compose.onNodeWithTag("settings-apple-status").assertTextEquals("正在验证 Apple Music 登录…")
        compose.onNodeWithTag("settings-apple-message").assertDoesNotExist()
        compose.onNodeWithTag("settings-apple-login").assertTextEquals("验证中").assertIsNotEnabled()
            .performSemanticsAction(SemanticsActions.OnClick) { it() }
        assertEquals(1, events.size)
        compose.onNodeWithTag("settings-apple-account-name").assertDoesNotExist()
    }

    @Test fun failedLoginKeepsOneRetryActionAndInlineMessage() {
        val (state, events) = mountApple(LyricsProviderUiState(appleStatus = "rejected",
            appleConnectionMessage = "登录验证暂时失败，请重试"))
        compose.onNodeWithTag("settings-apple-status").assertTextEquals("登录已失效")
        compose.onNodeWithTag("settings-apple-message").assertTextEquals("登录验证暂时失败，请重试")
        compose.onNodeWithTag("settings-apple-login").assertTextEquals("登录").performClick()
        assertEquals(listOf(AppleMusicConnectRequested), events)
        compose.runOnIdle { state.value = state.value.copy(appleConnectionMessage = "登录已失效") }
        compose.onNodeWithTag("settings-apple-message").assertDoesNotExist()
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
