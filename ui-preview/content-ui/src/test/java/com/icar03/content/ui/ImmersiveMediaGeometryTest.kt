package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.WindowManager
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.Density
import java.io.File
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Actual Android frames in a fixed 1920x1080 viewport, independent of map UI density. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w1920dp-h1080dp-mdpi")
open class ImmersiveMediaGeometryTest {
    protected open val dark = false
    protected open val platform = "api28"
    @get:Rule val compose = createComposeRule()
    private var density by mutableFloatStateOf(1f)
    private var state by mutableStateOf(previewState().copy(previewMode = false, page = PanelPage.Lyrics,
        media = MediaState(title = "沿途的风", artist = "独立歌手", playing = false, isSong = true)))
    private val presentation = ContentPresentation().apply {
        updateGeometry(1920f, 640f, 1280f, 1080)
        updatePhase(1)
    }
    private lateinit var view: View
    private var artworkCompositions = 0

    private fun mount() {
        compose.setContent {
            val native = LocalView.current
            SideEffect {
                view = native
                var context = native.context
                while (context is android.content.ContextWrapper && context !is android.app.Activity) context = context.baseContext
                val window = (context as android.app.Activity).window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                @Suppress("DEPRECATION")
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            CompositionLocalProvider(LocalDensity provides Density(density)) {
                ContentTheme(dark) {
                    ContentPanel(state.copy(dark = dark), {}, presentation = presentation, artwork = {
                        SideEffect { artworkCompositions++ }
                        Box(Modifier.fillMaxSize().background(Color(0xFF99574D)))
                    })
                }
            }
        }
        compose.waitForIdle()
    }

    @Test fun mediaGroupLayoutAt141Dpi() = verifyMediaGroupLayout(141)
    @Test fun mediaGroupLayoutAt212Dpi() = verifyMediaGroupLayout(212)
    @Test fun mediaGroupLayoutAt320Dpi() = verifyMediaGroupLayout(320)

    private fun verifyMediaGroupLayout(dpi: Int) {
        // Each native View is mounted at its real target density; no stale renderer clip from a prior density.
        density = dpi / 160f
        mount()
        settleLayout()
        val top = bounds("top-bar")
        val dock = bounds("floating-dock")
        val group = bounds("immersive-media-group")
        val cover = bounds("immersive-cover-space")
        val details = bounds("immersive-media-details")
        val header = bounds("immersive-media-header")
        val title = bounds("immersive-title")
        val artist = bounds("immersive-artist")
        val controls = bounds("immersive-media-controls")
        val progress = bounds("immersive-progress")
        val compact = 640f / density < 600f
        assertEquals("cover + gap + media are vertically centred at $dpi dpi",
            (top.bottom + dock.top) / 2f, group.center.y, 1f)
        assertTrue(group.top >= top.bottom && group.bottom <= dock.top)
        assertEquals(320f, cover.center.x, 1f)
        assertEquals(320f, details.center.x, 1f)
        assertTrue("cover leaves more lateral space", cover.width < 640f * .8f)
        assertTrue("media row is narrower than the left region", details.width < 640f * .9f)
        assertEquals((if (compact) 20f else 24f) * density, header.top - cover.bottom, 1f)
        assertTrue(title.right <= controls.left && artist.right <= controls.left)
        assertTrue(artist.top >= title.bottom)
        assertEquals(details.right, controls.right, 1f)
        assertTrue(progress.top > maxOf(controls.bottom, artist.bottom))
        assertEquals(details.left, progress.left, 1f)
        assertEquals(details.right, progress.right, 1f)
        for (tag in listOf("immersive-play", "immersive-next", "immersive-source")) {
            val button = bounds(tag)
            assertTrue("$tag keeps at least 48 system dp", button.width + 1f >= 48f * density && button.height + 1f >= 48f * density)
            assertTrue(button.left >= details.left && button.right <= details.right && button.bottom < progress.top)
        }
        val layouts = mutableListOf<androidx.compose.ui.text.TextLayoutResult>()
        compose.onNodeWithTag("immersive-artist").performSemanticsAction(androidx.compose.ui.semantics.SemanticsActions.GetTextLayoutResult) { it(layouts) }
        assertEquals(if (compact) 22f else 24f, layouts.single().layoutInput.style.fontSize.value, 0f)
        layouts.clear()
        compose.onNodeWithTag("immersive-progress-elapsed").performSemanticsAction(androidx.compose.ui.semantics.SemanticsActions.GetTextLayoutResult) { it(layouts) }
        assertEquals(if (compact) 18f else 20f, layouts.single().layoutInput.style.fontSize.value, 0f)
        capture("immersive-media-$platform-${if (dark) "dark" else "light"}-$dpi")
        compose.runOnIdle { state = state.copy(showMediaSourceSwitcher = false) }
        settleLayout()
        compose.onNodeWithTag("immersive-source").assertDoesNotExist()
        assertEquals(details.right, bounds("immersive-media-controls").right, 1f)
        assertEquals("the complete group remains centred without the source button",
            (bounds("top-bar").bottom + bounds("floating-dock").top) / 2f,
            bounds("immersive-media-group").center.y, 1f)
    }

    @Test fun coverUsesExistingEaseOutWithoutRecomposingOrMovingTheMediaGroupEachFrame() {
        mount()
        val space = bounds("immersive-cover-space")
        val group = bounds("immersive-media-group")
        val details = bounds("immersive-media-details")
        assertEquals(.76f, bounds("immersive-cover").width / space.width, .001f)
        compose.mainClock.autoAdvance = false
        compose.runOnIdle { state = state.copy(media = state.media.copy(playing = true)) }
        settleLayout()
        val compositionsAtStart = artworkCompositions
        compose.mainClock.advanceTimeBy(144L)
        val middle = bounds("immersive-cover").width / space.width
        assertTrue("scale starts quickly and slows down", middle > .9f && middle < 1f)
        assertEquals(space, bounds("immersive-cover-space"))
        assertEquals(group, bounds("immersive-media-group"))
        assertEquals(details, bounds("immersive-media-details"))
        assertEquals("scale is sampled by the graphics layer", compositionsAtStart, artworkCompositions)
        compose.mainClock.advanceTimeBy(240L)
        assertEquals(1f, bounds("immersive-cover").width / space.width, .001f)
        assertEquals(compositionsAtStart, artworkCompositions)
        compose.mainClock.autoAdvance = true
    }

    private fun settleLayout() {
        // Density/shell changes legitimately recompose once; measure animated frames after admission.
        repeat(2) {
            compose.mainClock.advanceTimeByFrame()
            compose.waitForIdle()
        }
    }

    private fun bounds(tag: String): Rect = compose.onNodeWithTag(tag, useUnmergedTree = true).assertIsDisplayed().fetchSemanticsNode().boundsInRoot
    private fun capture(name: String) {
        val bitmap = Bitmap.createBitmap(view.width, view.height, Bitmap.Config.ARGB_8888)
        compose.runOnIdle { view.draw(Canvas(bitmap)) }
        val icon = bounds("dock-icon-Settings")
        val inkRows = (kotlin.math.ceil(icon.top).toInt() until kotlin.math.floor(icon.bottom).toInt()).filter { y ->
            (kotlin.math.ceil(icon.left).toInt() until kotlin.math.floor(icon.right).toInt()).any { x ->
                val pixel = bitmap.getPixel(x, y)
                val red = android.graphics.Color.red(pixel)
                val green = android.graphics.Color.green(pixel)
                val blue = android.graphics.Color.blue(pixel)
                if (dark) minOf(red, green, blue) > 210 else maxOf(red, green, blue) < 90
            }
        }
        assertTrue("Dock settings glyph has native ink at $name", inkRows.isNotEmpty())
        assertEquals("the native settings glyph remains complete and vertically centred at $name",
            icon.center.y.toDouble(), inkRows.average() + .5, icon.height * .15.toDouble())
        val target = File("build/reports/rendered/$name.png").apply { parentFile?.mkdirs() }
        target.outputStream().use { bitmap.compress(Bitmap.CompressFormat.PNG, 100, it) }
        bitmap.recycle()
    }
}
class ImmersiveMediaGeometryDarkTest : ImmersiveMediaGeometryTest() { override val dark = true }
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-mdpi")
class ImmersiveMediaGeometryApi34Test : ImmersiveMediaGeometryTest() { override val platform = "api34" }
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-mdpi")
class ImmersiveMediaGeometryApi34DarkTest : ImmersiveMediaGeometryTest() { override val platform = "api34"; override val dark = true }
