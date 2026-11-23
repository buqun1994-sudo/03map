package com.icar03.content.ui

import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.Density
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
open class GestureSettingsNativeTest {
    protected open val dpi = 141
    protected open val dark = false
    @get:Rule val compose = createComposeRule()

    @Test fun nativeSettingsPageHasNoGestureConfigurationAtAnyDensity() {
        compose.setContent {
            CompositionLocalProvider(LocalDensity provides Density(dpi / 160f)) {
                ContentTheme(dark) {
                    ContentPanel(ContentUiState(previewMode = false, settingsOpen = true,
                        settingsSection = SettingsSection.Gestures), {})
                }
            }
        }
        compose.waitForIdle()
        compose.onNodeWithTag("settings-gestures-scroll").assertDoesNotExist()
        compose.onNodeWithTag("settings-menu-Gestures").assertDoesNotExist()
    }
}
class GestureSettingsNativeDarkTest : GestureSettingsNativeTest() { override val dark = true }
class GestureSettingsNative212Test : GestureSettingsNativeTest() { override val dpi = 212 }
class GestureSettingsNative212DarkTest : GestureSettingsNativeTest() { override val dpi = 212; override val dark = true }
class GestureSettingsNative320Test : GestureSettingsNativeTest() { override val dpi = 320 }
class GestureSettingsNative320DarkTest : GestureSettingsNativeTest() { override val dpi = 320; override val dark = true }
