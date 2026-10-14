package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.WindowManager
import androidx.compose.foundation.layout.width
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.SideEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.text.TextLayoutResult
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.dp
import com.icar03.content.model.GestureCommand
import kotlinx.coroutines.Dispatchers
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File

@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
open class GestureSettingsNativeTest {
    protected open val dpi = 141
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    private lateinit var nativeView: View
    private fun frame(name: String) {
        compose.waitForIdle()
        compose.runOnIdle {
            val bitmap = Bitmap.createBitmap(nativeView.width, nativeView.height, Bitmap.Config.ARGB_8888)
            nativeView.draw(Canvas(bitmap))
            val directory = File("../../apk-work/gesture-native-20261015").apply { mkdirs() }
            File(directory, "gestures-$dpi-${if (dark) "dark" else "light"}-$name.png").outputStream().use {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, it)
            }
            bitmap.recycle()
        }
    }
    @Test fun actualNativeSettingsFrameKeepsFullNamesAtAllDensitiesAndScrollsThreeGroups() {
        val density = dpi / 160f
        compose.setContent {
            val view = LocalView.current
            SideEffect {
                nativeView = view
                var context = view.context
                while (context is android.content.ContextWrapper && context !is android.app.Activity) context = context.baseContext
                val window = (context as android.app.Activity).window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                @Suppress("DEPRECATION")
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            CompositionLocalProvider(LocalDensity provides Density(density),
                LocalLyricGeometryDispatcher provides Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined) {
                ContentTheme(dark) {
                    ContentPanel(ContentUiState(previewMode = false, dark = dark, settingsOpen = true,
                        settingsSection = SettingsSection.Gestures, lyricsProviderSettings = LyricsProviderUiState(available = true)),
                        {}, Modifier.width((640f / density).dp))
                }
            }
        }
        compose.waitForIdle(); compose.mainClock.advanceTimeBy(600); compose.waitForIdle()
        val header = compose.onNodeWithTag("settings-header").fetchSemanticsNode().boundsInRoot
        frame("top")
        GestureCommand.entries.forEach { command ->
            val row = compose.onNodeWithTag("settings-gesture-${command.key}").performScrollTo().assertIsDisplayed()
            val bounds = row.fetchSemanticsNode().boundsInRoot
            assertTrue("complete dropdown touch width", bounds.width >= 48f * density)
            assertTrue("complete dropdown touch height", bounds.height >= 48f * density)
            val texts = mutableListOf<TextLayoutResult>()
            compose.onNode(hasText(com.icar03.content.model.GesturePreferences.defaultAction(command).label) and
                hasAnyAncestor(hasTestTag("settings-gesture-${command.key}-value")), useUnmergedTree = true)
                .performSemanticsAction(SemanticsActions.GetTextLayoutResult) { it(texts) }
            val layout = texts.single()
            assertEquals(layout.layoutInput.text.length, layout.getLineEnd(layout.lineCount - 1, visibleEnd = true))
            repeat(layout.lineCount) { assertFalse(layout.isLineEllipsized(it)) }
            assertEquals(header, compose.onNodeWithTag("settings-header").fetchSemanticsNode().boundsInRoot)
        }
        frame("bottom")
        compose.onNodeWithTag("settings-gesture-two_right").performScrollTo()
        frame("two-right")
    }
}
class GestureSettingsNativeDarkTest : GestureSettingsNativeTest() { override val dark = true }
class GestureSettingsNative212Test : GestureSettingsNativeTest() { override val dpi = 212 }
class GestureSettingsNative212DarkTest : GestureSettingsNativeTest() { override val dpi = 212; override val dark = true }
class GestureSettingsNative320Test : GestureSettingsNativeTest() { override val dpi = 320 }
class GestureSettingsNative320DarkTest : GestureSettingsNativeTest() { override val dpi = 320; override val dark = true }
