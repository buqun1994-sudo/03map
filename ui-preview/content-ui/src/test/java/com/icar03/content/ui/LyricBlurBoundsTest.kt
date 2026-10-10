package com.icar03.content.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color as NativeColor
import android.os.Build
import android.view.View
import android.view.WindowManager
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.width
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.Dispatchers
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File
import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.roundToInt

/** Real Panel/Pager/native ink evidence; synthetic blocks put strokes exactly at either text edge. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28, 34], qualifiers = "w1920dp-h1080dp-mdpi")
class LyricBlurBoundsTest {
    @get:Rule val compose = createComposeRule()
    private val presentation = ContentPresentation().apply { updateGestureWidth(60) }
    private var panelWidth by mutableStateOf(640)
    private var density by mutableStateOf(141 / 160f)
    private var state by mutableStateOf(previewState().copy(
        previewMode = false, page = PanelPage.Lyrics,
        lyrics = LyricsState(recordingKey = "blur-bounds", lines = listOf(LyricLine(0L, "██",
            translation = "██", romanization = "██", backgroundWords = listOf(LyricWord(0L, 2_000L, "██")))),
            timed = true, timelineReady = false),
    ))
    private lateinit var nativeView: View

    @Test fun blurredTracksFadeIntoBothMarginsInSplitAndImmersivePanels() {
        mount()
        val lyricNode = compose.onNodeWithTag("wallpaper-lyrics", useUnmergedTree = true).fetchSemanticsNode().id
        for (dpi in listOf(141, 212, 320)) for (dark in listOf(false, true)) for (wide in listOf(false, true)) {
            for (alignment in listOf("left", "right")) {
                compose.runOnIdle {
                    density = dpi / 160f
                    panelWidth = if (wide) 1920 else 640
                    state = state.copy(dark = dark, lyricsAlignment = alignment)
                    presentation.updateGeometry(panelWidth.toFloat(), 640f, 1280f, 1080)
                    presentation.updatePhase(if (wide) 1 else 0)
                }
                compose.waitForIdle()
                val body = compose.onNode(SemanticsMatcher.keyIsDefined(LyricRowHeights), useUnmergedTree = true)
                    .fetchSemanticsNode()
                assertTrue(body.config[LyricLayoutReady])
                assertTrue("inspect the prepared blur, not the temporary sharp fallback", body.config[LyricPreparedSliceCount] > 0)
                assertEquals(0, body.config[LyricFallbackSliceCount])
                assertEquals("the two modes keep the same lyric view", lyricNode,
                    compose.onNodeWithTag("wallpaper-lyrics", useUnmergedTree = true).fetchSemanticsNode().id)
                val inset = body.config[LyricTextInset]
                val scale = if (wide) 3f else 1f
                assertEquals("layout margins keep their original dimensions", 48f * density * scale, inset, .01f)
                val frame = capture("${dpi}dpi-${if (dark) "dark" else "light"}-${if (wide) "wide" else "split"}-$alignment")
                val bounds = body.boundsInRoot
                val edge = if (alignment == "left") bounds.left + inset else bounds.right - inset
                val direction = if (alignment == "left") -1 else 1
                val blur = 3f * density * scale
                // Each actual track must reach into the margin and decay to background
                // well before the physical page edge, including its appended background voice.
                val rowTop = body.config[LyricRowTops].single() + body.config[LyricScrollOffset]
                val main = body.config[LyricFontPixels]
                val rows = prepareLyricRow(state.lyrics.lines.single(), (bounds.width - inset * 2).roundToInt(),
                    LyricMetrics(main, body.config[LyricActiveFontPixels], main * .55f, main * .5f,
                        body.config[LyricLineGapPixels] / 2f, 4f * density * scale, blur, 0f),
                    lyricTypeface(nativeView.context.assets), lyricCjkTypeface(nativeView.context.assets), alignment = alignment)
                assertEquals(4, rows.tracks.size)
                for ((index, track) in rows.tracks.withIndex()) {
                    val top = ceil(bounds.top + rowTop + track.top).toInt().coerceAtLeast(0)
                    val bottom = floor(bounds.top + rowTop + track.top + track.layout.height).toInt().coerceAtMost(frame.height)
                    assertTrue("track $index is visible", bottom > top)
                    val backgroundX = (edge + direction * (blur * 4f + 4f)).roundToInt()
                    val nearX = if (direction < 0) floor(edge).toInt() - 1 else ceil(edge).toInt()
                    val outerX = (edge + direction * (blur * 3f + 2f)).roundToInt()
                    fun contrastAt(x: Int): Int = (top until bottom).maxOf { y ->
                        contrast(frame.getPixel(x, y), frame.getPixel(backgroundX, y))
                    }
                    assertTrue("$dpi dpi, dark=$dark, wide=$wide, $alignment track=$index must blur past the text edge",
                        contrastAt(nearX) > 6)
                    assertEquals("blur ends naturally inside the margin", 0, contrastAt(outerX))
                    assertTrue("the blur decays outwards instead of ending at a hard clip", contrastAt(nearX) > contrastAt(outerX))
                }
            }
        }
    }

    private fun mount() {
        presentation.updateGeometry(640f, 640f, 1280f, 1080)
        presentation.updatePhase(0)
        compose.setContent {
            val view = LocalView.current
            SideEffect {
                nativeView = view
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                @Suppress("DEPRECATION")
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            CompositionLocalProvider(LocalDensity provides Density(density, 1f),
                LocalLyricGeometryDispatcher provides Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined) {
                ContentTheme(state.dark) {
                    Box(Modifier.fillMaxSize()) {
                        ContentPanel(state, {}, Modifier.width((panelWidth / density).dp).testTag("blur-panel"), presentation = presentation)
                    }
                }
            }
        }
        compose.waitForIdle()
    }

    private fun capture(name: String): Bitmap {
        val image = Bitmap.createBitmap(nativeView.width, nativeView.height, Bitmap.Config.ARGB_8888)
        compose.runOnIdle { nativeView.draw(Canvas(image)) }
        val target = File("build/frames/lyrics-blur-sdk${Build.VERSION.SDK_INT}-$name.png").apply { parentFile?.mkdirs() }
        target.outputStream().use { assertTrue(image.compress(Bitmap.CompressFormat.PNG, 100, it)) }
        return image
    }

    private fun contrast(first: Int, second: Int): Int = abs(NativeColor.red(first) - NativeColor.red(second)) +
        abs(NativeColor.green(first) - NativeColor.green(second)) + abs(NativeColor.blue(first) - NativeColor.blue(second))

    private tailrec fun Context.activity(): Activity = when (this) {
        is Activity -> this
        is ContextWrapper -> baseContext.activity()
        else -> error("Compose is not hosted by an Activity")
    }
}
