package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.text.TextLayoutResult
import androidx.compose.ui.unit.dp
import java.io.File
import kotlin.math.roundToInt
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Inspect actual laid-out labels, rather than repeating the production text-width calculation. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w726dp-h1226dp-141dpi")
open class LyricsProviderGeometryTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    private val ids = listOf("auto", "lrclib", "qq", "netease", "kugou", "kuwo", "migu", "soda", "applemusic")

    private fun mount() {
        compose.setContent {
            ContentTheme(dark) {
                val design = settingsDesign(dark)
                CompositionLocalProvider(LocalSettingsDesign provides design) {
                    Box(Modifier.fillMaxSize().background(design.page).testTag("provider-geometry-root")) {
                        LyricsProviderSettings(LyricsProviderUiState(available = true), {}, enabled = true,
                            modifier = Modifier.padding(24.dp))
                    }
                }
            }
        }
        compose.waitForIdle()
    }

    private fun bounds(id: String, part: String = ""): Rect = compose
        .onNodeWithTag("settings-platform-$id$part", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot

    @Test fun longestActualLabelIsCenteredAndEveryIconSharesItsLeftAnchor() {
        mount()
        val longest = ids.maxBy { bounds(it, "-label").width }
        val longestChoice = bounds(longest)
        val longestIcon = bounds(longest, "-icon")
        val longestLabel = bounds(longest, "-label")
        assertEquals("longest icon + label group must be centered", longestChoice.center.x,
            (longestIcon.left + longestLabel.right) / 2f, 1.1f)
        val commonLeft = longestIcon.left - longestChoice.left
        val density = compose.density.density
        ids.forEach { id ->
            val choice = bounds(id)
            val group = bounds(id, "-group")
            val icon = bounds(id, "-icon")
            val label = bounds(id, "-label")
            assertEquals("$id icon follows the longest group's left anchor", commonLeft, icon.left - choice.left, 1.1f)
            assertEquals("$id shared group stays centered", choice.center.x, group.center.x, 1.1f)
            assertEquals("$id enlarged icon", 32f * density, icon.width, 1.1f)
            assertEquals("$id vertical centering", choice.center.y, icon.center.y, 1.1f)
            assertEquals("$id text vertical centering", choice.center.y, label.center.y, 1.1f)
            assertTrue("$id minimum touch height", choice.height >= 48f * density - 1f)
            assertTrue("$id complete text stays in its button", label.right <= choice.right + .1f)
            val layouts = mutableListOf<TextLayoutResult>()
            compose.onNodeWithTag("settings-platform-$id-label", useUnmergedTree = true)
                .performSemanticsAction(SemanticsActions.GetTextLayoutResult) { it(layouts) }
            assertEquals(1, layouts.single().lineCount)
            assertFalse("$id name must not overflow", layouts.single().didOverflowWidth)
            assertEquals("platform type retains its own 24sp role", 24f, layouts.single().layoutInput.style.fontSize.value, .01f)
        }
        capture()
    }

    @Test fun platformEmphasisRemainsBelowSectionAndPageTitles() {
        val design = settingsDesign(dark)
        assertTrue(design.providerOptionStyle.fontSize < design.sectionTitleStyle.fontSize)
        assertTrue(design.sectionTitleStyle.fontSize < design.pageTitleStyle.fontSize)
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture() {
        val root = compose.onNodeWithTag("provider-geometry-root").fetchSemanticsNode()
        val view = (root.root as ViewRootForTest).view
        val bitmap = compose.runOnIdle {
            Bitmap.createBitmap(view.width, view.height, Bitmap.Config.ARGB_8888).also { view.draw(Canvas(it)) }
        }
        val directory = File("build/frames").apply { mkdirs() }
        File(directory, "${javaClass.simpleName}-provider-alignment.png").outputStream().use {
            assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
    }
}

@Config(sdk = [28], qualifiers = "w726dp-h1226dp-141dpi")
class LyricsProviderGeometry141DarkTest : LyricsProviderGeometryTest() { override val dark = true }
@Config(sdk = [28], qualifiers = "w483dp-h1000dp-212dpi")
class LyricsProviderGeometry212Test : LyricsProviderGeometryTest()
@Config(sdk = [28], qualifiers = "w483dp-h1000dp-212dpi")
class LyricsProviderGeometry212DarkTest : LyricsProviderGeometryTest() { override val dark = true }
@Config(sdk = [28], qualifiers = "w320dp-h1200dp-320dpi")
class LyricsProviderGeometry320Test : LyricsProviderGeometryTest()
@Config(sdk = [28], qualifiers = "w320dp-h1200dp-320dpi")
class LyricsProviderGeometry320DarkTest : LyricsProviderGeometryTest() { override val dark = true }
@Config(sdk = [34], qualifiers = "w726dp-h1226dp-141dpi")
class LyricsProviderGeometryApi34Test : LyricsProviderGeometryTest()
