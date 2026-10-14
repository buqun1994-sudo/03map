package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.text.TextLayoutResult
import java.io.File
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Native account frames use the same section/card/type tokens as the full settings page. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w726dp-h1226dp-141dpi")
open class AppleMusicAccountSettingsTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()

    private fun mount(state: LyricsProviderUiState) {
        compose.setContent {
            ContentTheme(dark) {
                val design = settingsDesign(dark)
                CompositionLocalProvider(LocalSettingsDesign provides design) {
                    Column(Modifier.fillMaxSize().background(design.page).verticalScroll(rememberScrollState())
                        .padding(design.pagePadding).testTag("apple-account-frame")) {
                        SettingsSection("歌词库") {
                            LyricsProviderSettings(state.copy(preferredPlatform = "applemusic", available = true), {}, true)
                        }
                    }
                }
            }
        }
        compose.waitForIdle()
        compose.onNodeWithTag("settings-apple-login").performScrollTo().assertIsDisplayed()
        compose.onNodeWithTag("apple-account-frame").performSemanticsAction(SemanticsActions.ScrollBy) {
            it(0f, 200f * compose.density.density)
        }
        compose.waitForIdle()
    }

    @Test fun connectedAccountKeepsSupportingTypeAndOneAlignedPrimaryAction() {
        mount(LyricsProviderUiState(appleStatus = "connected", appleStorefront = "cn",
            appleAccountName = "音乐用户"))
        val action = compose.onNodeWithTag("settings-apple-login").assertTextEquals("断开").fetchSemanticsNode().boundsInRoot
        val account = compose.onNodeWithTag("settings-apple-account").fetchSemanticsNode().boundsInRoot
        val status = compose.onNodeWithTag("settings-apple-status").assertTextEquals("已登录 · 中国大陆")
        compose.onNodeWithTag("settings-apple-account-name").assertDoesNotExist()
        compose.onNodeWithTag("settings-apple-region").assertDoesNotExist()
        assertEquals(account.right, action.right, 1f)
        assertTrue(action.height >= 56f * compose.density.density - 1f)
        for (line in listOf(status)) {
            val layouts = mutableListOf<TextLayoutResult>()
            line.performSemanticsAction(SemanticsActions.GetTextLayoutResult) { it(layouts) }
            assertEquals(18f, layouts.single().layoutInput.style.fontSize.value, .01f)
            assertEquals(24f, layouts.single().layoutInput.style.lineHeight.value, .01f)
            val layout = layouts.single()
            assertEquals(1, layout.lineCount)
            assertFalse(layout.isLineEllipsized(0))
            assertEquals(layout.layoutInput.text.length, layout.getLineEnd(0))
            assertTrue(layout.getLineRight(0) <= layout.size.width + 1f)
            assertTrue(layout.getLineBottom(0) <= layout.size.height + 1f)
        }
        compose.onNodeWithTag("settings-apple-disconnect").assertDoesNotExist()
        capture("connected")
    }

    @Test fun inlineFailureFitsTheCardAndKeepsLoginAction() {
        mount(LyricsProviderUiState(appleStatus = "disconnected",
            appleConnectionMessage = "登录验证暂时失败，请检查网络后重试"))
        compose.onNodeWithTag("settings-apple-login").assertTextEquals("登录")
        val account = compose.onNodeWithTag("settings-apple-account").fetchSemanticsNode().boundsInRoot
        val message = compose.onNodeWithTag("settings-apple-message").fetchSemanticsNode().boundsInRoot
        assertTrue(message.left >= account.left && message.right <= account.right + 1f)
        compose.onNodeWithTag("settings-apple-account-name").assertDoesNotExist()
        capture("retry")
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture(label: String) {
        val node = compose.onNodeWithTag("apple-account-frame").fetchSemanticsNode()
        val view = (node.root as ViewRootForTest).view
        val bitmap = compose.runOnIdle {
            Bitmap.createBitmap(view.width, view.height, Bitmap.Config.ARGB_8888).also { view.draw(Canvas(it)) }
        }
        val directory = File("build/frames").apply { mkdirs() }
        File(directory, "${javaClass.simpleName}-$label.png").outputStream().use {
            assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
    }
}

@Config(sdk = [28], qualifiers = "w726dp-h1226dp-141dpi")
class AppleMusicAccountSettingsDarkTest : AppleMusicAccountSettingsTest() { override val dark = true }

@Config(sdk = [28], qualifiers = "w320dp-h1080dp-320dpi")
class AppleMusicAccountSettingsNarrowTest : AppleMusicAccountSettingsTest()

@Config(sdk = [28], qualifiers = "w320dp-h1080dp-320dpi")
class AppleMusicAccountSettingsNarrowDarkTest : AppleMusicAccountSettingsTest() { override val dark = true }
