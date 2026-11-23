package com.icar03.content.ui

import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w320dp-h1080dp-mdpi")
open class GestureSettingsSheetTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()

    @Test fun homeDoesNotExposeGestureSettingsOrGestureActions() {
        val state = ContentUiState(previewMode = false, settingsOpen = true, settingsSection = SettingsSection.Home)
        compose.setContent { ContentTheme(dark) { ContentPanel(state, {}, Modifier.testTag("simple-settings")) } }
        compose.waitForIdle()
        compose.onNodeWithTag("settings-title").assertTextEquals("设置")
        compose.onNodeWithTag("settings-menu-Gestures").assertDoesNotExist()
        compose.onNodeWithText("手势操作").assertDoesNotExist()
        compose.onNodeWithTag("settings-gestures-scroll").assertDoesNotExist()
        compose.onNodeWithTag("settings-import-vehicle-config").assertDoesNotExist()
        com.icar03.content.model.GestureCommand.entries.forEach { command ->
            compose.onNodeWithTag("settings-gesture-" + command.key).assertDoesNotExist()
        }
    }

    @Test fun staleGestureSectionCannotRevealSettingsControls() {
        val state = ContentUiState(previewMode = false, settingsOpen = true, settingsSection = SettingsSection.Gestures)
        compose.setContent { ContentTheme(dark) { ContentPanel(state, {}) } }
        compose.waitForIdle()
        compose.onNodeWithTag("settings-gestures-scroll").assertDoesNotExist()
        compose.onNodeWithText("进入沉浸式全屏").assertDoesNotExist()
        compose.onNodeWithText("关闭控制中心").assertDoesNotExist()
    }
}

class GestureSettingsSheetDarkTest : GestureSettingsSheetTest() { override val dark = true }
