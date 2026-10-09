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
                            ambientBackground = {
                                Box(Modifier.fillMaxSize().background(scene))
                            })
                    }
                }
            }
        }
        compose.waitForIdle()
    }

    @Test fun sceneAndFloatingSurfaceContentStayStableWhileBackgroundsFade() {
        mount()
        val full = capture("full")
        val media = bounds("media-card")
        val dockBackground = bounds("dock-background")
        val facts = listOf("top-bar", "lyrics-empty-copy")
        facts.forEach { tag -> assertInkStable(tag, bounds(tag), full, full) }
        compose.runOnIdle { state.value = state.value.copy(uiOpacity = .2f) }
        val faded = capture("20-percent")
        assertEquals("scene cannot expose host underlay", full.getPixel(4, 200), faded.getPixel(4, 200))
        assertEquals(android.graphics.Color.rgb(23, 75, 122), faded.getPixel(4, 200))
        facts.forEach { tag -> assertRegionIdentical(tag, bounds(tag), full, faded) }
        assertDifferent("media background", media, full, faded)
        listOf("media-card-title", "media-card-artist", "media-play-icon", "media-next-icon", "media-source-icon")
            .forEach { tag -> assertInkStable(tag, bounds(tag), full, faded) }
        assertDifferent("Dock background", dockBackground, full, faded)
        dockItemsForCount(6).forEach { id -> assertInkStable("dock-${id.name}", bounds("dock-icon-${id.name}"), full, faded) }
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

    @Test fun shortcutControlCardAndSourceBackgroundsConsumeOpacityWithoutFadingContent() {
        state.value = state.value.copy(page = PanelPage.Shortcuts)
        mount()
        val full = capture("grid-full")
        val shortcut = bounds("control-Heating")
        val controlCard = bounds("brightness-card")
        compose.runOnIdle { state.value = state.value.copy(uiOpacity = .2f) }
        val faded = capture("grid-20-percent")
        assertDifferent("shortcut background", shortcut, full, faded)
        assertInkStable("shortcut label", bounds("shortcut-label-Heating"), full, faded)
        assertInkStable("shortcut icon", bounds("shortcut-icon-Heating"), full, faded)
        assertDifferent("control-card background", controlCard, full, faded)
        assertInkStable("control-card label", bounds("brightness-card-label"), full, faded)
        assertInkStable("control-card icon", bounds("brightness-card-icon"), full, faded)
        assertEquals(full.getPixel(4, 200), faded.getPixel(4, 200))
        compose.runOnIdle { state.value = state.value.copy(uiOpacity = 1f, sourcesOpen = true) }
        compose.mainClock.advanceTimeBy(600)
        val sources = capture("sources-full")
        val menu = bounds("sources-menu")
        compose.runOnIdle { state.value = state.value.copy(uiOpacity = .2f) }
        val fadedSources = capture("sources-20-percent")
        assertDifferent("sources background", menu, sources, fadedSources)
        MediaSource.entries.forEach { source ->
            assertInkStable("source ${source.name}", bounds("source-label-${source.name}"), sources, fadedSources)
        }
    }

    @Test fun settingsSurfaceBackgroundConsumesOpacityWhileHeaderAndLabelsStayOpaque() {
        state.value = state.value.copy(settingsOpen = true)
        mount()
        compose.mainClock.advanceTimeBy(600)
        for (section in SettingsSection.entries) {
            compose.runOnIdle { state.value = state.value.copy(settingsSection = section, uiOpacity = 1f) }
            val sheet = capture("settings-${section.name}-full")
            val page = bounds("settings-sheet")
            val contentTitle = when (section) {
                SettingsSection.Home -> "布局"
                SettingsSection.TopBar -> "时间"
                SettingsSection.Layout -> "底栏"
                SettingsSection.Lyrics -> "歌词库"
                SettingsSection.Artwork -> "背景"
                SettingsSection.Media -> "媒体"
                SettingsSection.Interaction -> "界面"
            }
            val card = bounds("settings-card-$contentTitle")
            compose.runOnIdle { state.value = state.value.copy(uiOpacity = .2f) }
            val faded = capture("settings-${section.name}-20-percent")
            assertDifferent("$section settings page background", page, sheet, faded)
            assertDifferent("$section settings card background", card, sheet, faded)
            assertInkStable("$section settings title", bounds("settings-title"), sheet, faded)
            assertInkStable("$section settings back", bounds("settings-back"), sheet, faded)
            val contentTags = listOf("settings-section-title-$contentTitle") + when (section) {
                SettingsSection.Home -> listOf("settings-menu-TopBar-label")
                SettingsSection.TopBar -> listOf("settings-switch-显示秒数-label")
                SettingsSection.Layout -> emptyList()
                SettingsSection.Lyrics -> listOf("settings-section-title-歌词")
                SettingsSection.Artwork -> listOf("settings-switch-模糊封面背景-label")
                SettingsSection.Media -> listOf("settings-switch-来源切换入口-label")
                SettingsSection.Interaction -> emptyList()
            }
            contentTags.forEach { tag -> assertInkStable("$section $tag", bounds(tag), sheet, faded) }
            assertRegionIdentical("clock above settings", bounds("top-time"), sheet, faded)
        }
        compose.runOnIdle { state.value = state.value.copy(settingsSection = SettingsSection.Lyrics, settingsCollapsed = true) }
        compose.mainClock.advanceTimeBy(600)
    }

    private fun bounds(tag: String) = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().boundsInRoot

    private fun assertInkStable(label: String, area: Rect, before: Bitmap, after: Bitmap) {
        val beforeBackground = dominantColor(area, before)
        val afterBackground = dominantColor(area, after)
        var beforeInk = 0
        var afterInk = 0
        for (y in area.top.toInt().coerceAtLeast(0) until area.bottom.toInt().coerceAtMost(before.height)) {
            for (x in area.left.toInt().coerceAtLeast(0) until area.right.toInt().coerceAtMost(before.width)) {
                if (colorDistance(before.getPixel(x, y), beforeBackground) > 8) beforeInk++
                if (colorDistance(after.getPixel(x, y), afterBackground) > 8) afterInk++
            }
        }
        assertTrue("$label must contain opaque content pixels, before=$beforeInk after=$afterInk",
            beforeInk > 1 && afterInk >= (beforeInk * .55f).toInt())
    }

    private fun dominantColor(area: Rect, bitmap: Bitmap): Int {
        val counts = HashMap<Int, Int>()
        for (y in area.top.toInt().coerceAtLeast(0) until area.bottom.toInt().coerceAtMost(bitmap.height)) {
            for (x in area.left.toInt().coerceAtLeast(0) until area.right.toInt().coerceAtMost(bitmap.width)) {
                val pixel = bitmap.getPixel(x, y) and 0x00FFFFFF
                counts[pixel] = (counts[pixel] ?: 0) + 1
            }
        }
        return counts.maxByOrNull { it.value }?.key ?: 0
    }

    private fun colorDistance(first: Int, second: Int): Int {
        val dr = android.graphics.Color.red(first) - android.graphics.Color.red(second)
        val dg = android.graphics.Color.green(first) - android.graphics.Color.green(second)
        val db = android.graphics.Color.blue(first) - android.graphics.Color.blue(second)
        return kotlin.math.abs(dr) + kotlin.math.abs(dg) + kotlin.math.abs(db)
    }

    private fun assertRegionIdentical(label: String, area: Rect, before: Bitmap, after: Bitmap, excluded: Rect? = null) {
        for (y in area.top.toInt().coerceAtLeast(0) until area.bottom.toInt().coerceAtMost(before.height)) {
            for (x in area.left.toInt().coerceAtLeast(0) until area.right.toInt().coerceAtMost(before.width)) {
                if (excluded != null && x >= excluded.left && x < excluded.right &&
                    y >= excluded.top && y < excluded.bottom) continue
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
        assertTrue("$label must visibly consume interface opacity, changed=$changed", changed > 10)
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
