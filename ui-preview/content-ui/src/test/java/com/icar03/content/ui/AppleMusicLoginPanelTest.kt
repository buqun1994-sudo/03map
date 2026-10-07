package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.WindowManager
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.width
import androidx.compose.material3.Text
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import org.robolectric.shadows.ShadowDialog
import java.io.File

/** Exercise the real application dialog without loading a webpage or accessing an account. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
open class AppleMusicLoginPanelTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    private val open = mutableStateOf(true)
    private var dismissals = 0

    private fun mount() {
        compose.setContent {
            ContentTheme(dark) {
                CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(dark)) {
                    Box(Modifier.width(240.dp).testTag("original-settings-width")) {
                        Text("歌词设置")
                        if (open.value) AppleMusicLoginPanel(preparing = false,
                            onDismiss = { dismissals++; open.value = false }) {
                            Box(Modifier.fillMaxSize().testTag("official-webpage-slot")) { Text("Apple 官方网页登录区域") }
                        }
                    }
                }
            }
        }
        compose.waitForIdle()
    }

    @Test fun webpageWindowUsesScreenSpaceAndBackReturnsToOriginalSettings() {
        mount()
        val small = compose.onNodeWithTag("original-settings-width").getUnclippedBoundsInRoot()
        val large = compose.onNodeWithTag("settings-apple-login-panel").getUnclippedBoundsInRoot()
        assertTrue("a 240dp settings column cannot constrain the webpage", large.right - large.left > (small.right - small.left) * 2)
        assertTrue(large.bottom - large.top > 800.dp)
        val window = ShadowDialog.getLatestDialog().window ?: error("missing dialog window")
        assertEquals("fullscreen flags must not suppress Android 9 IME resize", 0,
            window.attributes.flags and WindowManager.LayoutParams.FLAG_FULLSCREEN)
        assertEquals(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE,
            window.attributes.softInputMode and WindowManager.LayoutParams.SOFT_INPUT_MASK_ADJUST)
        compose.onNodeWithTag("official-webpage-slot").assertIsDisplayed()
        compose.onNodeWithTag("settings-apple-login-back").assertIsDisplayed()
        compose.onNodeWithTag("settings-apple-login-close").assertIsDisplayed()
        capture()
        compose.onNodeWithTag("settings-apple-login-back").performClick()
        compose.waitForIdle()
        assertEquals(1, dismissals)
        assertFalse(open.value)
        compose.onNodeWithTag("settings-apple-login-panel").assertDoesNotExist()
        compose.onNodeWithText("歌词设置").assertIsDisplayed()
    }

    @Test fun explicitCloseDismissesOnceAndRemovesTheWindow() {
        mount()
        val dialog = ShadowDialog.getLatestDialog()
        assertTrue(dialog.isShowing)
        compose.onNodeWithTag("settings-apple-login-close").performClick()
        compose.waitForIdle()
        assertEquals(1, dismissals)
        assertFalse(dialog.isShowing)
        compose.onNodeWithTag("official-webpage-slot").assertDoesNotExist()
    }

    @Suppress("DEPRECATION")
    @Test fun systemBackClosesTheWebpageAndRestoresSettings() {
        mount()
        val dialog = ShadowDialog.getLatestDialog()
        compose.runOnIdle { dialog.onBackPressed() }
        compose.waitForIdle()
        assertEquals(1, dismissals)
        assertFalse(open.value)
        assertFalse(dialog.isShowing)
        compose.onNodeWithText("歌词设置").assertIsDisplayed()
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture() {
        val node = compose.onNodeWithTag("settings-apple-login-panel").fetchSemanticsNode()
        val root = node.root as? ViewRootForTest ?: error("missing native dialog root")
        val area = node.boundsInRoot
        val bitmap = compose.runOnIdle {
            Bitmap.createBitmap(area.width.toInt(), area.height.toInt(), Bitmap.Config.ARGB_8888).also {
                val canvas = Canvas(it)
                canvas.translate(-area.left, -area.top)
                root.view.draw(canvas)
            }
        }
        val directory = File("build/frames").apply { mkdirs() }
        File(directory, "${javaClass.simpleName}-apple-large-window.png").outputStream().use {
            assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
    }
}

@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class AppleMusicLoginPanelDarkTest : AppleMusicLoginPanelTest() { override val dark = true }
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class AppleMusicLoginPanelApi34Test : AppleMusicLoginPanelTest()
