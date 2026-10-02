package com.icar03.content.runtime

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.WindowManager
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import com.icar03.content.ui.*
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File

/** Actual formal UI + Android baked scene; all song data and the cover are synthetic. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
open class AmbientPanelLightRenderTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    @Test fun preparedBackgroundCoversTheWholePanelAndSourceOverlayInBothThemes() {
        val cover = ambientFixtureCover()
        val scene = createAmbientField(cover)!!
        val state = mutableStateOf(previewState().copy(dark = dark, previewMode = false, page = PanelPage.Lyrics,
            media = MediaState(title = "封面色场 · 合成验证", artist = "本机测试数据", playing = true, source = MediaSource.CloudMusic, isSong = true),
            lyrics = LyricsState(recordingKey = "test", lines = listOf(
                LyricLine(0, "让色彩慢慢流动"), LyricLine(1000, "新封面到达，再柔和过渡"), LyricLine(2000, "暂停时保留这一帧")), activeIndex = 0, timelineReady = true)))
        compose.mainClock.autoAdvance = false
        compose.setContent {
            val view = LocalView.current
            @Suppress("DEPRECATION")
            SideEffect {
                view.context.activity().window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                view.context.activity().window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or
                    View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or
                    View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            ContentTheme(dark) {
                ContentPanel(state.value, onEvent = { event ->
                    if (event == ContentEvent.OpenSources) state.value = state.value.copy(sourcesOpen = true)
                    if (event == ContentEvent.DismissSheet) state.value = state.value.copy(sourcesOpen = false)
                }, modifier = Modifier.testTag("ambient-panel"),
                    artwork = { Image(cover.asImageBitmap(), null, Modifier.fillMaxSize(), contentScale = ContentScale.Crop) },
                    ambientBackground = { MediaAmbientBackground(scene, dark, animating = false) })
            }
        }
        compose.waitForIdle(); compose.mainClock.advanceTimeBy(640)
        val closed = capture("closed")
        assertTrue((120..780 step 19).map { closed.getPixel(6, it) }.toSet().size > 10)
        compose.onNodeWithTag("source-button").performClick()
        compose.waitForIdle(); compose.mainClock.advanceTimeBy(640)
        compose.onNodeWithTag("sources-overlay").assertExists()
        capture("sources")
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture(name: String): Bitmap {
        val semantics = compose.onNodeWithTag("ambient-panel").fetchSemanticsNode()
        val root = semantics.root as ViewRootForTest
        val bounds = semantics.boundsInRoot
        val bitmap = compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.toInt(), bounds.height.toInt(), Bitmap.Config.ARGB_8888).also {
                val canvas = Canvas(it); canvas.translate(-bounds.left, -bounds.top); root.view.draw(canvas)
            }
        }
        assertEquals(640, bitmap.width); assertEquals(1080, bitmap.height)
        val directory = File("build/frames").apply { mkdirs() }
        File(directory, "640x1080-ambient-${if (dark) "dark" else "light"}-$name.png").outputStream().use {
            assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
        return bitmap
    }
    private tailrec fun Context.activity(): Activity = when (this) {
        is Activity -> this
        is ContextWrapper -> baseContext.activity()
        else -> error("missing test activity")
    }
}

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class AmbientPanelDarkRenderTest : AmbientPanelLightRenderTest() { override val dark = true }
