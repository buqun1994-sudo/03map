package com.icar03.content.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.WindowManager
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.runtime.SideEffect
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import java.io.File
import kotlin.math.roundToInt
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Native full-page references for the three Figma settings frames at 618dp content width. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h4096dp-mdpi")
open class SettingsFigmaReferenceRenderTest {
    protected open val dark = false

    @get:Rule val compose = createComposeRule()

    @Test fun homeReferenceUsesTheMeasuredFigmaFrame() {
        captureReference(SettingsSection.Home, 904, "home-reference")
    }

    @Test fun topBarReferenceUsesTheMeasuredFigmaFrame() {
        captureReference(SettingsSection.TopBar, 1362, "topbar-reference")
    }

    @Test fun lyricsReferenceUsesTheMeasuredFigmaFrame() {
        captureReference(SettingsSection.Lyrics, 2880, "lyrics-reference")
    }

    private fun captureReference(section: SettingsSection, designHeight: Int, label: String) {
        val state = ContentUiState(
            dark = dark,
            previewMode = false,
            settingsOpen = true,
            settingsSection = section,
            // Project a started provider owner, with no open Apple login/window or network.
            lyricsProviderSettings = LyricsProviderUiState(available = true),
            lyricsColorMode = if (section == SettingsSection.Lyrics) "custom" else "theme",
            lyricsCustomColor = 0xFFFACC15.toInt(),
        )
        val rootTag = "settings-figma-reference-root"
        compose.setContent {
            val view = LocalView.current
            @Suppress("DEPRECATION")
            SideEffect {
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or
                    View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or
                    View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or View.SYSTEM_UI_FLAG_LAYOUT_STABLE or
                    View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            ContentTheme(dark) {
                Box(Modifier.fillMaxSize()) {
                    SettingsSheet(
                        state = state,
                        onEvent = {},
                        modifier = Modifier.width(618.dp).height(designHeight.dp).testTag(rootTag),
                    )
                }
            }
        }
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(600)
        compose.waitForIdle()

        val bitmap = capture(rootTag)
        assertEquals("Figma reference width", 618, bitmap.width)
        assertEquals("Figma reference height for $section", designHeight, bitmap.height)
        val design = settingsDesign(dark)
        assertEquals("page background matches the resolved Amap theme",
            design.page.toArgb(), bitmap.getPixel(12, 110))
        assertTrue("native page must contain its themed card surface", containsColor(bitmap, design.card.toArgb()))
        assertTrue("native page must contain readable themed text", containsColor(bitmap, design.text.toArgb()))
        if (section != SettingsSection.Home) {
            assertTrue("enabled switches must render green", containsColor(bitmap, design.onSwitchTrack.toArgb()))
        }
        if (section == SettingsSection.Lyrics) {
            assertTrue("numeric sliders must render blue", containsColor(bitmap, design.sliderFill.toArgb()))
            val card = compose.onNodeWithTag("settings-card-歌词翻译", useUnmergedTree = true)
                .fetchSemanticsNode().boundsInRoot
            assertTrue("the final lyrics card must not be clipped", card.bottom <= designHeight - 24f)
        }
        val directory = File("build/frames").apply { mkdirs() }
        File(directory, "${javaClass.simpleName}-$label.png").outputStream().use {
            assertTrue("native settings reference must be a PNG", bitmap.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
    }

    private fun containsColor(bitmap: Bitmap, expected: Int): Boolean {
        val pixels = IntArray(bitmap.width * bitmap.height)
        bitmap.getPixels(pixels, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
        return pixels.any { it == expected }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture(tag: String): Bitmap {
        val node = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode()
        val root = node.root as ViewRootForTest
        val bounds = node.boundsInRoot
        return compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.roundToInt(), bounds.height.roundToInt(), Bitmap.Config.ARGB_8888).also {
                Canvas(it).apply {
                    translate(-bounds.left, -bounds.top)
                    root.view.draw(this)
                }
            }
        }
    }

    private tailrec fun Context.activity(): Activity = when (this) {
        is Activity -> this
        is ContextWrapper -> baseContext.activity()
        else -> error("missing activity")
    }
}

@Config(sdk = [28], qualifiers = "w640dp-h4096dp-mdpi")
class SettingsFigmaReferenceRenderDarkTest : SettingsFigmaReferenceRenderTest() {
    override val dark = true
}

@Config(sdk = [34], qualifiers = "w640dp-h4096dp-mdpi")
class SettingsFigmaReferenceRenderApi34LightTest : SettingsFigmaReferenceRenderTest()

@Config(sdk = [34], qualifiers = "w640dp-h4096dp-mdpi")
class SettingsFigmaReferenceRenderApi34DarkTest : SettingsFigmaReferenceRenderTest() {
    override val dark = true
}
