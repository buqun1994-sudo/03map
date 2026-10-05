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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import kotlinx.coroutines.Dispatchers
import java.io.File
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w1920dp-h1080dp-mdpi")
open class LyricsImmersivePanelTest {
    protected open val dark = false
    protected open val platform = "api28"
    @get:Rule val compose = createComposeRule()
    private val presentation = ContentPresentation().apply {
        updateGeometry(1920f, 640f, 1280f, 1080)
        updatePhase(1)
        updateGestureWidth(60)
    }
    private var state by mutableStateOf(previewState().copy(previewMode = false, dark = dark,
        page = PanelPage.Lyrics, media = MediaState(title = "沿途的风", artist = "独立预览 · 布局验证", playing = false, isSong = true),
        lyrics = LyricsState(recordingKey = "immersive-fixture", timelineReady = true, positionMs = 5_000L,
            durationMs = 60_000L, scrollIndex = 2, activeIndex = 2,
            lines = listOf("夜色慢慢铺开", "沿着风的方向", "让每一句歌词自由舒展", "把此刻留在路上", "等下一束光", "一起驶向远方")
                .mapIndexed { index, text -> LyricLine(index * 2_000L, text) })))
    private val events = mutableListOf<ContentEvent>()
    private lateinit var nativeView: View

    private fun mount() {
        state = state.copy(dark = dark)
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
            CompositionLocalProvider(LocalLyricGeometryDispatcher provides Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined) {
                ContentTheme(state.dark) {
                    ContentPanel(state, { events += it }, Modifier.testTag("immersive-panel"),
                        artwork = { Box(Modifier.fillMaxSize().background(Color(0xFF99574D))) }, presentation = presentation)
                }
            }
        }
        compose.waitForIdle()
    }

    @Test fun finalGeometryKeepsMediaInLeftThirdAndLargeLyricsInRightTwoThirds() {
        mount()
        compose.onNodeWithTag("media-card").assertDoesNotExist()
        compose.onNodeWithTag("top-bar").assertIsDisplayed()
        compose.onNodeWithTag("floating-dock").assertIsDisplayed()
        val cover = compose.onNodeWithTag("immersive-cover-space").fetchSemanticsNode().boundsInRoot
        assertTrue(cover.left >= 0f && cover.right <= 640f)
        val lyrics = compose.onNode(SemanticsMatcher.keyIsDefined(LyricFontPixels), useUnmergedTree = true).fetchSemanticsNode()
        assertEquals(640f, lyrics.boundsInRoot.left, 1f)
        assertEquals(1280f, lyrics.boundsInRoot.width, 1f)
        assertEquals(60f, lyrics.config[LyricFontPixels], .1f)
        assertEquals(72f, lyrics.config[LyricActiveFontPixels], .1f)
        capture("lyrics-immersive-$platform-${if (dark) "dark" else "light"}")
    }

    @Test fun hiddenChromeIsUnmeasuredAndEmptyTapAlwaysExposesExit() {
        mount()
        compose.runOnIdle { state = state.copy(immersiveShowTopBar = false, immersiveShowDock = false) }
        compose.waitForIdle()
        compose.onNodeWithTag("top-bar").assertDoesNotExist()
        compose.onNodeWithTag("floating-dock").assertDoesNotExist()
        compose.onNodeWithTag("immersive-panel").performTouchInput { click(androidx.compose.ui.geometry.Offset(1850f, 100f)) }
        compose.waitForIdle()
        val exit = compose.onNodeWithTag("page-action-exit").assertIsDisplayed()
        assertTrue("exit target stays outside map gesture strip", exit.fetchSemanticsNode().boundsInRoot.right <= 1860f)
        exit.performClick()
        assertEquals(ContentEvent.ExitLyricsImmersive, events.last())
        compose.onNodeWithTag("page-action-enter").assertDoesNotExist()
        capture("lyrics-immersive-hidden-$platform-${if (dark) "dark" else "light"}")
    }

    @Test fun childControlsAndLyricDragDoNotBecomeBlankTaps() {
        mount()
        compose.onNodeWithTag("immersive-play").performTouchInput { click(center) }
        compose.waitForIdle()
        assertEquals(ContentEvent.PlayPause, events.last())
        compose.onNodeWithTag("page-actions-overlay").assertDoesNotExist()
        compose.onNodeWithTag("wallpaper-lyrics").performTouchInput { swipeUp() }
        compose.waitForIdle()
        compose.onNodeWithTag("page-actions-overlay").assertDoesNotExist()
    }

    private fun capture(name: String) {
        val bitmap = Bitmap.createBitmap(nativeView.width, nativeView.height, Bitmap.Config.ARGB_8888)
        compose.runOnIdle { nativeView.draw(Canvas(bitmap)) }
        val target = File("build/reports/rendered/$name.png").apply { parentFile?.mkdirs() }
        target.outputStream().use { bitmap.compress(Bitmap.CompressFormat.PNG, 100, it) }
        bitmap.recycle()
    }
}
class LyricsImmersivePanelDarkTest : LyricsImmersivePanelTest() { override val dark = true }
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-mdpi")
class LyricsImmersivePanelApi34Test : LyricsImmersivePanelTest() { override val platform = "api34" }
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-mdpi")
class LyricsImmersivePanelApi34DarkTest : LyricsImmersivePanelTest() { override val platform = "api34"; override val dark = true }
