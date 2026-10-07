package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.WindowManager
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.width
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
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
    private var sounds = 0
    private var viewportWidth by mutableStateOf(1920.dp)
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
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined,
                LocalContentClickSound provides { sounds++ }) {
                ContentTheme(state.dark) {
                    ContentPanel(state, { event ->
                        events += event
                        if (event is ContentEvent.PageSelected) state = state.copy(page = event.page)
                    }, Modifier.width(viewportWidth).testTag("immersive-panel"),
                        artwork = { Box(Modifier.fillMaxSize().background(Color(0xFF99574D))) }, presentation = presentation)
                }
            }
        }
        compose.waitForIdle()
    }

    @Test fun settingsKeepTheirLeftThirdWidthThroughEveryImmersiveEndpoint() {
        presentation.updateGeometry(640f, 640f, 1280f, 1080)
        presentation.updatePhase(0)
        viewportWidth = 640.dp
        state = state.copy(settingsOpen = true, settingsSection = SettingsSection.Lyrics)
        mount()
        compose.mainClock.advanceTimeBy(600)
        val original = compose.onNodeWithTag("settings-sheet-host").fetchSemanticsNode().boundsInRoot
        listOf(.34f, .5f, .66f, 1f, .66f, .5f, 0f).forEach { progress ->
            compose.runOnIdle {
                val divider = 640f + 1280f * progress
                viewportWidth = divider.dp
                presentation.updateGeometry(divider, 640f, 1280f, 1080)
                presentation.updatePhase(when (progress) { 0f -> 0; 1f -> 1; else -> 2 })
            }
            compose.mainClock.advanceTimeByFrame()
            compose.waitForIdle()
            val current = compose.onNodeWithTag("settings-sheet-host").fetchSemanticsNode().boundsInRoot
            assertEquals("settings stay fixed at progress=$progress", original, current)
            assertTrue(current.right <= 640f)
            compose.onNodeWithTag("settings-title").assertIsDisplayed()
            compose.onNodeWithTag("settings-lyrics-preview").assertDoesNotExist()
            if (progress == 1f) capture("settings-left-third-$platform-${if (dark) "dark" else "light"}")
        }
    }

    @Test fun independentImmersiveTypographyReachesTheActualNativeLyrics() {
        state = state.copy(lyricsFontSizeSp = 32f, lyricsCurrentFontSizeSp = 48f, lyricsLineGapDp = 18f,
            lyricsImmersiveFontSizeSp = 128f, lyricsImmersiveCurrentFontSizeSp = 180f, lyricsImmersiveLineGapDp = 72f,
            lyricsHighlight = true)
        mount()
        val body = compose.onNode(SemanticsMatcher.keyIsDefined(LyricFontPixels), useUnmergedTree = true)
        assertEquals(128f, body.fetchSemanticsNode().config[LyricFontPixels], .01f)
        assertEquals(180f, body.fetchSemanticsNode().config[LyricActiveFontPixels], .01f)
        assertEquals(72f, body.fetchSemanticsNode().config[LyricLineGapPixels], .01f)
        compose.runOnIdle { state = state.copy(lyricsHighlight = false) }
        compose.waitForIdle()
        assertEquals(128f, body.fetchSemanticsNode().config[LyricActiveFontPixels], .01f)
        assertEquals(32f, state.lyricsFontSizeSp, .01f)
        assertEquals(18f, state.lyricsLineGapDp, .01f)
    }

    @Test fun immersiveTopBarCanUseFullWidthWhileDockAndSettingsKeepTheirSplitWidth() {
        mount()
        assertEquals(616f, compose.onNodeWithTag("top-bar").fetchSemanticsNode().boundsInRoot.width, 1f)
        val dock = compose.onNodeWithTag("floating-dock").fetchSemanticsNode().boundsInRoot
        compose.runOnIdle { state = state.copy(immersiveTopBarKeepSplit = false) }
        compose.waitForIdle()
        assertEquals(1896f, compose.onNodeWithTag("top-bar").fetchSemanticsNode().boundsInRoot.width, 1f)
        assertEquals(dock, compose.onNodeWithTag("floating-dock").fetchSemanticsNode().boundsInRoot)
        compose.runOnIdle { state = state.copy(immersiveShowTopBar = false) }
        compose.onNodeWithTag("top-bar").assertDoesNotExist()
        compose.runOnIdle { state = state.copy(immersiveShowTopBar = true) }
        assertEquals(1896f, compose.onNodeWithTag("top-bar").fetchSemanticsNode().boundsInRoot.width, 1f)
        capture("lyrics-full-width-topbar-$platform-${if (dark) "dark" else "light"}")
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
        assertEquals(120f, lyrics.config[LyricFontPixels], .1f)
        assertEquals(120f, lyrics.config[LyricActiveFontPixels], .1f)
        compose.onNodeWithTag("immersive-progress").assertIsDisplayed()
        compose.onNodeWithTag("immersive-progress-fill").assertIsDisplayed()
        compose.onNodeWithTag("immersive-progress-elapsed").assertTextEquals("0:05")
        compose.onNodeWithTag("immersive-progress-duration").assertTextEquals("1:00")
        capture("lyrics-immersive-$platform-${if (dark) "dark" else "light"}")
    }

    @Test fun splitToImmersiveAndBackRetainsOneLyricViewAcrossRenderedFrames() {
        presentation.updateGeometry(640f, 640f, 1280f, 1080)
        presentation.updatePhase(0)
        viewportWidth = 640.dp
        mount()

        val initialBody = compose.onNodeWithTag("wallpaper-lyrics", useUnmergedTree = true).fetchSemanticsNode().id
        val initialFrame = compose.onNode(SemanticsMatcher.keyIsDefined(LyricFontPixels), useUnmergedTree = true).fetchSemanticsNode()
        val compactBounds = initialFrame.boundsInRoot
        assertEquals(50f, initialFrame.config[LyricFontPixels], .1f)
        assertEquals(50f, initialFrame.config[LyricActiveFontPixels], .1f)
        assertEquals(0f, compactBounds.left, 1f)
        assertEquals(640f, compactBounds.width, 1f)
        assertEquals(compose.onNodeWithTag("top-bar").fetchSemanticsNode().boundsInRoot.bottom, compactBounds.top, 1f)
        assertEquals(compose.onNodeWithTag("media-card").fetchSemanticsNode().boundsInRoot.top, compactBounds.bottom, 1f)

        val topPixels = nativePixels("top-bar")
        val dockBounds = DockShortcuts.items.associateWith { compose.onNodeWithTag("dock-${it.name}").fetchSemanticsNode().boundsInRoot }
        val dockInk = dockInkMask()
        // Each divider update must reach composition/measurement before the next one.
        // Applying both endpoints in one idle block would skip the former pager-to-root move.
        listOf(.34f, .49f, .5f, .51f, .66f, 1f, .66f, .51f, .5f, .49f, .34f, 0f).forEach { progress ->
            compose.runOnIdle {
                val divider = 640f + 1280f * progress
                viewportWidth = divider.dp
                presentation.updateGeometry(divider, 640f, 1280f, 1080)
                presentation.updatePhase(when (progress) { 0f -> 0; 1f -> 1; else -> 2 })
            }
            compose.mainClock.advanceTimeByFrame()
            compose.waitForIdle()
            assertArrayEquals("top bar stays painted at progress=$progress", topPixels, nativePixels("top-bar"))
            DockShortcuts.items.forEach { id ->
                assertEquals("Dock target stays fixed at progress=$progress", dockBounds.getValue(id),
                    compose.onNodeWithTag("dock-${id.name}").fetchSemanticsNode().boundsInRoot)
            }
            assertArrayEquals("Dock icon stays painted at progress=$progress", dockInk, dockInkMask())
            if (progress in listOf(.34f, .5f, 1f)) capture("lyrics-chrome-$platform-${if (dark) "dark" else "light"}-$progress")
            compose.onAllNodesWithTag("wallpaper-lyrics", useUnmergedTree = true).assertCountEquals(1)
            assertEquals("lyric view is retained at progress=$progress", initialBody,
                compose.onNodeWithTag("wallpaper-lyrics", useUnmergedTree = true).fetchSemanticsNode().id)
            val frame = compose.onNode(SemanticsMatcher.keyIsDefined(LyricFontPixels), useUnmergedTree = true).fetchSemanticsNode()
            assertEquals("immersive-fixture", frame.config[LyricRecordingKey])
            assertEquals(if (progress >= .5f) 120f else 50f, frame.config[LyricFontPixels], .1f)
            assertEquals(if (progress >= .5f) 120f else 50f, frame.config[LyricActiveFontPixels], .1f)
            if (progress == 1f) {
                assertEquals(640f, frame.boundsInRoot.left, 1f)
                assertEquals(0f, frame.boundsInRoot.top, 1f)
                assertEquals(1280f, frame.boundsInRoot.width, 1f)
                assertEquals(1080f, frame.boundsInRoot.height, 1f)
                compose.onNodeWithTag("media-card").assertDoesNotExist()
            }
        }
        val restored = compose.onNode(SemanticsMatcher.keyIsDefined(LyricFontPixels), useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        assertEquals(compactBounds.left, restored.left, 1f)
        assertEquals(compactBounds.top, restored.top, 1f)
        assertEquals(compactBounds.width, restored.width, 1f)
        assertEquals(compactBounds.height, restored.height, 1f)
        compose.onNodeWithTag("media-card").assertIsDisplayed()

        // Horizontal navigation must still receive gestures that start on the lyric view.
        compose.onNodeWithTag("wallpaper-lyrics").performTouchInput { swipeRight() }
        compose.waitForIdle()
        assertEquals(ContentEvent.PageSelected(PanelPage.Shortcuts), events.last())
        compose.onNodeWithTag("runtime-pages").performTouchInput { swipeLeft() }
        compose.waitForIdle()
        assertEquals(ContentEvent.PageSelected(PanelPage.Lyrics), events.last())
        compose.onAllNodesWithTag("wallpaper-lyrics", useUnmergedTree = true).assertCountEquals(1)
    }

    @Test fun visibleTopBarKeepsExitBelowClockAndAlignedToItsLeftMargin() {
        mount()
        val topBar = compose.onNodeWithTag("top-bar").fetchSemanticsNode().boundsInRoot
        val clock = compose.onNodeWithTag("top-time").fetchSemanticsNode().boundsInRoot
        compose.onNodeWithTag("immersive-panel").performTouchInput { click(androidx.compose.ui.geometry.Offset(1850f, 100f)) }
        compose.waitForIdle()
        val exit = compose.onNodeWithTag("page-action-exit").assertIsDisplayed().fetchSemanticsNode().boundsInRoot
        assertEquals(clock.left, exit.left, 1f)
        assertEquals(topBar.bottom + 12f, exit.top, 1f)
        assertTrue("exit target cannot cover the top bar", exit.top >= topBar.bottom)
        capture("lyrics-immersive-actions-$platform-${if (dark) "dark" else "light"}")
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

    @Test fun blankTapToggleAndButtonsEachSoundOnceWhileCancelledGesturesStaySilent() {
        mount()
        val page = compose.onNodeWithTag("immersive-panel")
        val blank = androidx.compose.ui.geometry.Offset(1850f, 100f)
        page.performTouchInput { click(blank) }
        compose.waitForIdle()
        assertEquals(1, sounds)
        compose.onNodeWithTag("page-action-settings").assertDoesNotExist()
        page.performTouchInput { click(blank) }
        compose.waitForIdle()
        compose.onNodeWithTag("page-actions-overlay").assertDoesNotExist()
        assertEquals(2, sounds)
        page.performTouchInput { click(blank) }
        compose.waitForIdle()
        compose.onNodeWithTag("page-action-exit").performTouchInput { click(center) }
        compose.waitForIdle()
        assertEquals(4, sounds)
        assertEquals(listOf(ContentEvent.ExitLyricsImmersive), events)
        compose.onNodeWithTag("immersive-play").performTouchInput { down(center); cancel() }
        compose.onNodeWithTag("wallpaper-lyrics").performTouchInput { swipeUp() }
        compose.waitForIdle()
        assertEquals(4, sounds)
        compose.runOnIdle { state = state.copy(media = state.media.copy(playbackAvailable = false)) }
        compose.onNodeWithTag("immersive-play").performTouchInput { click(center) }
        compose.waitForIdle()
        assertEquals("a disabled media action must not sound", 4, sounds)
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

    private fun nativePixels(tag: String): IntArray {
        val bounds = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        val bitmap = Bitmap.createBitmap(nativeView.width, nativeView.height, Bitmap.Config.ARGB_8888)
        compose.runOnIdle { nativeView.draw(Canvas(bitmap)) }
        val left = kotlin.math.ceil(bounds.left).toInt()
        val top = kotlin.math.ceil(bounds.top).toInt()
        val width = kotlin.math.floor(bounds.right).toInt() - left
        val height = kotlin.math.floor(bounds.bottom).toInt() - top
        return IntArray(width * height).also {
            bitmap.getPixels(it, 0, width, left, top, width, height)
            bitmap.recycle()
        }
    }

    private fun dockInkMask(): BooleanArray {
        val pixels = nativePixels("dock-icon-Settings")
        return BooleanArray(pixels.size) { index ->
            val pixel = pixels[index]
            val red = android.graphics.Color.red(pixel)
            val green = android.graphics.Color.green(pixel)
            val blue = android.graphics.Color.blue(pixel)
            if (dark) minOf(red, green, blue) > 210 else maxOf(red, green, blue) < 90
        }.also { assertTrue("the Dock glyph must have actual ink", it.any { ink -> ink }) }
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
