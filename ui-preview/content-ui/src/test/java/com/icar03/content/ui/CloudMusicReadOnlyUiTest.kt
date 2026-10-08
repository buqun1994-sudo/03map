package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import androidx.compose.foundation.layout.width
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
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

/** Real disabled pixels and input boundaries in both media layouts; adapter contracts own capability admission. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w1920dp-h1080dp-mdpi")
open class CloudMusicReadOnlyUiTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    private val presentation = ContentPresentation()
    private var width by mutableStateOf(640.dp)
    private var state by mutableStateOf(ContentUiState())
    private lateinit var view: View
    private val events = mutableListOf<ContentEvent>()
    private var sounds = 0

    @Test fun cloudMusicButtonsAreGrayAndRejectPhysicalAndSemanticClicksInBothLayouts() {
        state = ContentUiState(previewMode = false, dark = dark, page = PanelPage.Lyrics,
            showAmbientArtwork = false, media = MediaState(title = "只读歌曲", artist = "测试作者",
                playing = true, isSong = true, source = MediaSource.Local))
        presentation.updateGeometry(640f, 640f, 1280f, 1080)
        presentation.updatePhase(0)
        compose.setContent {
            view = LocalView.current
            CompositionLocalProvider(LocalContentClickSound provides { sounds++ },
                LocalLyricGeometryDispatcher provides Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined) {
                ContentTheme(dark) {
                    ContentPanel(state, { events += it }, Modifier.width(width), presentation = presentation)
                }
            }
        }
        for (wide in listOf(false, true)) {
            compose.runOnIdle {
                width = if (wide) 1920.dp else 640.dp
                presentation.updateGeometry(if (wide) 1920f else 640f, 640f, 1280f, 1080)
                presentation.updatePhase(if (wide) 1 else 0)
                state = state.copy(media = state.media.copy(source = MediaSource.Local,
                    playbackAvailable = true, nextAvailable = true))
            }
            compose.mainClock.advanceTimeBy(800)
            val prefix = if (wide) "immersive" else "media"
            val tags = listOf("$prefix-play", "$prefix-next")
            tags.forEach { compose.onNodeWithTag(it).assertIsEnabled() }
            val enabled = frame()
            val contrast = tags.associateWith { inkContrast(enabled, it) }
            enabled.recycle()
            compose.runOnIdle { state = state.copy(media = state.media.copy(source = MediaSource.CloudMusic,
                playbackAvailable = false, nextAvailable = false)) }
            compose.mainClock.advanceTimeBy(800)
            val disabled = frame()
            for (tag in tags) {
                val button = compose.onNodeWithTag(tag).assertIsNotEnabled()
                assertTrue("$tag has visible native glyph ink", contrast.getValue(tag) > 20.0)
                val ratio = inkContrast(disabled, tag) / contrast.getValue(tag)
                assertTrue("$tag visibly dims by the shared disabled role: $ratio", ratio in .20.. .55)
                button.performClick()
                button.performTouchInput { click(center) }
            }
            assertTrue("disabled taps cannot become playback or blank-page actions", events.isEmpty())
            assertEquals(0, sounds)
            assertEquals("只读歌曲", state.media.title)
            assertTrue("the source still reports actual playing state", state.media.playing)
            compose.onNodeWithTag(if (wide) "immersive-source" else "source-button").assertIsEnabled()
            val target = File("build/frames/${javaClass.simpleName}-${if (wide) "wide" else "split"}.png")
            target.parentFile?.mkdirs()
            target.outputStream().use { assertTrue(disabled.compress(Bitmap.CompressFormat.PNG, 100, it)) }
            disabled.recycle()
        }
    }

    private fun frame() = compose.runOnIdle {
        Bitmap.createBitmap(view.width, view.height, Bitmap.Config.ARGB_8888).also { view.draw(Canvas(it)) }
    }
    private fun inkContrast(image: Bitmap, tag: String): Double {
        val box = compose.onNodeWithTag("$tag-press-area", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        val left = box.left.toInt(); val top = box.top.toInt()
        val baseline = image.getPixel(left + 1, top + 1)
        var contrast = 0.0
        for (y in top until box.bottom.toInt()) for (x in left until box.right.toInt()) {
            val pixel = image.getPixel(x, y)
            for (shift in listOf(16, 8, 0)) contrast += abs(((pixel ushr shift) and 255) - ((baseline ushr shift) and 255))
        }
        return contrast
    }
}

class CloudMusicReadOnlyDarkUiTest : CloudMusicReadOnlyUiTest() { override val dark = true }
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-mdpi")
class CloudMusicReadOnlyApi34UiTest : CloudMusicReadOnlyUiTest()
