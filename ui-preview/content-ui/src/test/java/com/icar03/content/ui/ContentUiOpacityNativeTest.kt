package com.icar03.content.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.WindowManager
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithTag
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File

/** Pixel evidence must distinguish an opaque scene/facts from translucent interactive surfaces. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
open class ContentUiOpacityNativeTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    private val state = mutableStateOf(ContentUiState(previewMode = false, page = PanelPage.Lyrics))
    private val scene = Color(0xFF174B7A)

    private fun mount() {
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
                CompositionLocalProvider(
                    LocalLyricGeometryDispatcher provides kotlinx.coroutines.Dispatchers.Unconfined,
                    LocalLyricPreparationDispatcher provides kotlinx.coroutines.Dispatchers.Unconfined,
                ) {
                    // A vivid host underlay detects root transparency even when the scene itself is opaque.
                    Box(Modifier.fillMaxSize().background(Color.Magenta)) {
                        ContentPanel(state.value.copy(dark = dark), {}, Modifier.testTag("opacity-root"),
                            ambientBackground = { Box(Modifier.fillMaxSize().background(scene)) })
                    }
                }
            }
        }
        compose.waitForIdle()
    }

    @Test fun sceneClockVehicleFactsAndLyricTextStayIdenticalWhileMediaAndDockFade() {
        mount()
        val full = capture("full")
        val media = bounds("media-card")
        val dock = bounds("floating-dock")
        val facts = listOf("top-bar", "lyrics-empty-copy")
        val areas = facts.associateWith(::bounds)
        compose.runOnIdle { state.value = state.value.copy(uiOpacity = .2f) }
        val faded = capture("20-percent")
        assertEquals("scene cannot expose host underlay", full.getPixel(4, 200), faded.getPixel(4, 200))
        assertEquals(android.graphics.Color.rgb(23, 75, 122), faded.getPixel(4, 200))
        areas.forEach { (tag, area) -> assertRegionIdentical(tag, area, full, faded) }
        assertDifferent("media", media, full, faded)
        assertDifferent("dock", dock, full, faded)
    }

    @Test fun pausedTimedLyricsKeepEveryRenderedPixelAcrossOpacityChanges() {
        state.value = state.value.copy(media = MediaState(title = "原生歌词回归", isSong = true),
            lyrics = LyricsState(recordingKey = "opacity-native-song", timelineReady = true,
                positionMs = 5_000L, durationMs = 60_000L, scrollIndex = 2, activeIndex = 2,
                lines = listOf("夜色慢慢铺开", "沿着风的方向", "让每一句歌词自由舒展", "把此刻留在路上")
                    .mapIndexed { index, text -> LyricLine(index * 2_000L, text) }))
        mount()
        compose.mainClock.advanceTimeBy(1000)
        val viewport = bounds("wallpaper-lyrics")
        // The media card shadow is interactive UI and overlaps the bottom of this viewport.
        val body = viewport.copy(bottom = minOf(viewport.bottom, bounds("media-card").top - 8f))
        val full = capture("lyrics-full")
        var ink = 0
        for (y in body.top.toInt() until body.bottom.toInt()) {
            for (x in body.left.toInt() until body.right.toInt()) {
                if (full.getPixel(x, y) != android.graphics.Color.rgb(23, 75, 122)) ink++
            }
        }
        assertTrue("the timed lyric fixture must actually draw text, ink=$ink", ink > 100)
        compose.runOnIdle { state.value = state.value.copy(uiOpacity = .2f) }
        val faded = capture("lyrics-20-percent")
        assertRegionIdentical("timed lyric body", body, full, faded)
    }

    @Test fun gridSourceMenuAndSettingsConsumeTheSamePreferenceWithoutFadingTheScene() {
        state.value = state.value.copy(page = PanelPage.Shortcuts)
        mount()
        val gridFull = capture("grid-full")
        val button = bounds("control-Heating")
        compose.runOnIdle { state.value = state.value.copy(uiOpacity = .2f) }
        val gridFaded = capture("grid-20-percent")
        assertDifferent("shortcut", button, gridFull, gridFaded)
        assertEquals(gridFull.getPixel(4, 200), gridFaded.getPixel(4, 200))
        compose.runOnIdle { state.value = state.value.copy(uiOpacity = 1f, sourcesOpen = true) }
        compose.mainClock.advanceTimeBy(600)
        val sources = capture("sources-full")
        val menu = bounds("sources-menu")
        compose.runOnIdle { state.value = state.value.copy(uiOpacity = .2f) }
        assertDifferent("sources", menu, sources, capture("sources-20-percent"))
        compose.runOnIdle { state.value = state.value.copy(uiOpacity = 1f, sourcesOpen = false,
            settingsOpen = true, settingsSection = SettingsSection.Lyrics) }
        compose.mainClock.advanceTimeBy(600)
        val sheet = capture("settings-full")
        val header = bounds("settings-header")
        compose.runOnIdle { state.value = state.value.copy(uiOpacity = .2f) }
        val transparentSheet = capture("settings-20-percent")
        assertDifferent("settings", header, sheet, transparentSheet)
        assertRegionIdentical("clock above settings", bounds("top-time"), sheet, transparentSheet)
    }

    private fun bounds(tag: String) = compose.onNodeWithTag(tag).fetchSemanticsNode().boundsInRoot

    private fun assertRegionIdentical(label: String, area: Rect, before: Bitmap, after: Bitmap) {
        for (y in area.top.toInt().coerceAtLeast(0) until area.bottom.toInt().coerceAtMost(before.height)) {
            for (x in area.left.toInt().coerceAtLeast(0) until area.right.toInt().coerceAtMost(before.width)) {
                assertEquals("$label pixel $x,$y", before.getPixel(x, y), after.getPixel(x, y))
            }
        }
    }

    private fun assertDifferent(label: String, area: Rect, before: Bitmap, after: Bitmap) {
        var changed = 0
        for (y in area.top.toInt().coerceAtLeast(0) until area.bottom.toInt().coerceAtMost(before.height)) {
            for (x in area.left.toInt().coerceAtLeast(0) until area.right.toInt().coerceAtMost(before.width)) {
                if (before.getPixel(x, y) != after.getPixel(x, y)) changed++
            }
        }
        assertTrue("$label must visibly consume interface opacity, changed=$changed", changed > 100)
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture(label: String): Bitmap {
        compose.waitForIdle()
        val node = compose.onNodeWithTag("opacity-root").fetchSemanticsNode()
        val view = (node.root as ViewRootForTest).view
        val area = node.boundsInRoot
        val bitmap = compose.runOnIdle {
            Bitmap.createBitmap(area.width.toInt(), area.height.toInt(), Bitmap.Config.ARGB_8888).also {
                val canvas = Canvas(it)
                canvas.translate(-area.left, -area.top)
                view.draw(canvas)
            }
        }
        val output = File("build/frames/${javaClass.simpleName}-$label.png")
        output.parentFile?.mkdirs()
        output.outputStream().use { assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it)) }
        return bitmap
    }

    private tailrec fun Context.activity(): Activity = when (this) {
        is Activity -> this
        is ContextWrapper -> baseContext.activity()
        else -> error("missing activity")
    }
}

class ContentUiOpacityDarkNativeTest : ContentUiOpacityNativeTest() { override val dark = true }
