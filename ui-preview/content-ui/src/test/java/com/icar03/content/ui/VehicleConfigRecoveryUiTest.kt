package com.icar03.content.ui

import androidx.compose.ui.Modifier
import androidx.compose.foundation.layout.size
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Simplified release does not expose configuration self-check/import repair UI. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class VehicleConfigRecoveryUiTest {
    @get:Rule val compose = createComposeRule()

    @Test fun settingsDoNotExposeVehicleSelfCheckOrConfigImport() {
        val state = ContentUiState(previewMode = false, settingsOpen = true, settingsSection = SettingsSection.Home,
            vehicleConfigValid = false, vehicleConfigMessage = "配置文件无效")
        compose.setContent { ContentTheme(false) { ContentPanel(state, {}, Modifier.size(640.dp, 1080.dp)) } }
        compose.waitForIdle()
        compose.onNodeWithTag("settings-menu-VehicleConfig").assertDoesNotExist()
        compose.onNodeWithTag("settings-import-vehicle-config").assertDoesNotExist()
        compose.onNodeWithText("自检：等待冷启动").assertDoesNotExist()
        compose.onNodeWithText("配置文件无效").assertDoesNotExist()
    }
}
