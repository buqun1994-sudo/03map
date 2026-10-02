package com.icar03.content.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.WindowManager
import androidx.compose.runtime.SideEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import androidx.compose.foundation.layout.width
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File

/**
 * First-layer visual contract for the supplied prototype. These tests capture actual
 * Compose Android views; they do not approve subjective visual quality by themselves.
 */
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
open class ContentPanelLightPrototypeRenderTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    private val hostTag = "prototype-render-host"
    private val events = mutableListOf<ContentEvent>()

    @Test
    fun light_default_matches_required_structure_and_captures_640x1080() {
        compose.setContent {
            val view = LocalView.current
            @Suppress("DEPRECATION")
            SideEffect {
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility =
                    View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            ContentTheme(dark) {
                ContentPanel(previewState().copy(dark = dark), onEvent = { events += it }, modifier = Modifier.testTag(hostTag))
            }
        }
        compose.waitForIdle()
        compose.onNodeWithTag(hostTag).assertWidthIsEqualTo(640.dp).assertHeightIsEqualTo(1080.dp)
        val time = compose.onNodeWithTag("top-time").getUnclippedBoundsInRoot()
        assertTrue("time must start at 12dp, not the old geometry center: $time", kotlin.math.abs(time.left.value - 12f) <= 1f)
        val media = compose.onNodeWithTag("media-card").getUnclippedBoundsInRoot()
        assertTrue("media left/top/right/bottom must follow prototype: $media", kotlin.math.abs(media.left.value - 20f) <= 1f && kotlin.math.abs(media.top.value - 832f) <= 1f && kotlin.math.abs(media.right.value - 620f) <= 1f && kotlin.math.abs(media.bottom.value - 952f) <= 1f)
        val dock = compose.onNodeWithTag("floating-dock").getUnclippedBoundsInRoot()
        assertTrue("dock must float inside 12dp outer gap: $dock", kotlin.math.abs(dock.left.value - 12f) <= 1f && kotlin.math.abs(dock.top.value - 968f) <= 1f && kotlin.math.abs(dock.right.value - 628f) <= 1f && kotlin.math.abs(dock.bottom.value - 1068f) <= 1f)
        val lock = compose.onNodeWithTag("dock-Lock").getUnclippedBoundsInRoot()
        val ventilation = compose.onNodeWithTag("dock-Ventilation").getUnclippedBoundsInRoot()
        assertTrue("lock touch area must be larger than each dock slot", lock.right - lock.left > ventilation.right - ventilation.left && lock.bottom - lock.top >= 80.dp)
        compose.onNodeWithText("25°C").assertIsDisplayed()
        compose.onNodeWithText("12:24 星期三").assertIsDisplayed()
        compose.onNodeWithText("366km").assertIsDisplayed()
        compose.onNodeWithContentDescription("屏幕亮度").assertIsDisplayed()
        compose.onNodeWithContentDescription("媒体音量").assertIsDisplayed()
        compose.onNodeWithText("沿途的风").assertIsDisplayed()
        compose.onNodeWithContentDescription("播放").assertIsDisplayed().assertIsEnabled()
        compose.onNodeWithContentDescription("下一首").assertIsDisplayed().assertIsEnabled()
        compose.onNodeWithContentDescription("选择来源").assertIsDisplayed().assertIsEnabled()
        ShortcutId.entries.forEach { id ->
            val node = compose.onNodeWithTag("dock-${id.name}").assertIsDisplayed()
            if (id == ShortcutId.SteeringHeat) node.assertIsNotEnabled() else node.assertHasClickAction()
        }
        compose.onNodeWithContentDescription("快捷").assertDoesNotExist()
        compose.onNodeWithTag("shortcut-SteeringHeat").assertIsNotEnabled()
        compose.onNodeWithTag("shortcut-Settings").assertIsDisplayed().assertHasClickAction()
        val playBounds = compose.onNodeWithContentDescription("播放").getUnclippedBoundsInRoot()
        val nextBounds = compose.onNodeWithContentDescription("下一首").getUnclippedBoundsInRoot()
        assertTrue("media controls must have 80dp square touch areas", playBounds.right - playBounds.left >= 80.dp && playBounds.bottom - playBounds.top >= 80.dp && nextBounds.right - nextBounds.left >= 80.dp && nextBounds.bottom - nextBounds.top >= 80.dp)
        assertTrue("media controls must have a 12dp clear gap", nextBounds.left - playBounds.right >= 12.dp)
        val sourceBounds = compose.onNodeWithTag("source-button").getUnclippedBoundsInRoot()
        assertTrue("source gets a dedicated 96x120dp area", sourceBounds.right - sourceBounds.left == 96.dp && sourceBounds.bottom - sourceBounds.top == 120.dp)
        assertTrue("next and source retain separation", sourceBounds.left - nextBounds.right >= 12.dp)
        assertTrue("source remains inside media card", sourceBounds.right == media.right)
        compose.onNodeWithContentDescription("下一首").performClick()
        assertTrue(events.last() == ContentEvent.NextTrack)
        compose.onNodeWithContentDescription("播放").performClick()
        assertTrue(events.last() == ContentEvent.PlayPause)
        captureHost("prototype-ready")
    }

    @Test
    fun lyricsDataUsesTransparentWallpaperViewportAndActiveIndex() {
        val state = previewState().copy(
            page = PanelPage.Lyrics,
            lyrics = LyricsState(
                recordingKey = "demo-recording",
                lines = listOf(
                    LyricLine(0L, "第一句", "first"),
                    LyricLine(8_000L, "第二句", "second"),
                ),
                activeIndex = 1,
                timelineReady = true,
            ),
        )
        compose.setContent {
            ContentTheme(dark) {
                ContentPanel(state.copy(dark = dark), onEvent = { events += it }, modifier = Modifier.testTag(hostTag))
            }
        }
        compose.waitForIdle()
        compose.onNodeWithTag("wallpaper-lyrics").assertIsDisplayed()
        compose.onNode(SemanticsMatcher.expectValue(ActiveLyric, 1)).assertIsDisplayed()
        compose.onNodeWithText("暂无歌词").assertDoesNotExist()
        compose.onNodeWithText("此处仅预览歌词空态。").assertDoesNotExist()
    }

    @Test
    fun light_empty_state_keeps_prototype_geometry_and_disables_media() {
        compose.setContent {
            val view = LocalView.current
            @Suppress("DEPRECATION")
            SideEffect {
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility =
                    View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            ContentTheme(dark) {
                ContentPanel(previewState(PreviewScenario.NoData).copy(dark = dark), onEvent = { events += it }, modifier = Modifier.testTag(hostTag))
            }
        }
        compose.waitForIdle()
        compose.onNodeWithTag(hostTag).assertWidthIsEqualTo(640.dp).assertHeightIsEqualTo(1080.dp)
        compose.onNodeWithText("暂无媒体").assertIsDisplayed()
        compose.onNodeWithContentDescription("播放").assertIsNotEnabled()
        compose.onNodeWithContentDescription("选择来源").assertIsDisplayed().assertIsEnabled()
        captureHost("prototype-empty")
    }

    @Test
    fun lyrics_empty_without_song_never_shows_loading_copy() {
        val state = previewState(PreviewScenario.NoData).copy(
            page = PanelPage.Lyrics,
            previewMode = false,
            media = MediaState(title = null, artist = null, isSong = false, available = false),
            lyrics = LyricsState(loading = true),
        )
        compose.setContent {
            ContentTheme(dark) {
                ContentPanel(state.copy(dark = dark), onEvent = { events += it }, modifier = Modifier.testTag(hostTag))
            }
        }
        compose.waitForIdle()
        compose.onNodeWithTag("lyrics-empty").assertIsDisplayed()
        compose.onNodeWithText("暂无歌词").assertIsDisplayed()
        compose.onNodeWithText("正在匹配歌词…").assertDoesNotExist()
    }

    @Test
    fun sources_open_select_and_dismiss_in_both_themes() {
        val state = androidx.compose.runtime.mutableStateOf(previewState().copy(dark = dark))
        compose.setContent {
            val view = LocalView.current
            @Suppress("DEPRECATION")
            SideEffect {
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility =
                    View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            ContentTheme(dark) {
                ContentPanel(state.value, onEvent = {
                    events += it
                    state.value = when (it) {
                        ContentEvent.OpenSources -> state.value.copy(sourcesOpen = true)
                        ContentEvent.DismissSheet -> state.value.copy(sourcesOpen = false)
                        is ContentEvent.SourceSelected -> state.value.copy(sourcesOpen = false)
                        else -> state.value
                    }
                }, modifier = Modifier.testTag(hostTag))
            }
        }
        compose.onNodeWithTag("source-button").performClick()
        compose.waitForIdle()
        assertTrue(events.last() == ContentEvent.OpenSources)
        val menu = compose.onNodeWithTag("sources-menu").getUnclippedBoundsInRoot()
        val media = compose.onNodeWithTag("media-card").getUnclippedBoundsInRoot()
        assertTrue("menu right aligned, above media, inside host: $menu", menu.right == media.right && menu.bottom <= media.top - 16.dp && menu.top >= 0.dp && menu.right - menu.left == 280.dp)
        MediaSource.entries.forEach { source ->
            compose.onNodeWithText(source.label).assertIsDisplayed()
            compose.onNodeWithTag("source-${source.name}").assertHeightIsEqualTo(80.dp).assertIsEnabled()
        }
        val cloudGroup = compose.onNodeWithTag("source-group-CloudMusic", useUnmergedTree = true).getUnclippedBoundsInRoot()
        assertTrue("longest icon+label group is horizontally centered", kotlin.math.abs((cloudGroup.left.value + cloudGroup.right.value) / 2 - (menu.left.value + menu.right.value) / 2) <= 1)
        MediaSource.entries.forEach { source ->
            val group = compose.onNodeWithTag("source-group-${source.name}", useUnmergedTree = true).getUnclippedBoundsInRoot()
            val label = compose.onNodeWithTag("source-label-${source.name}", useUnmergedTree = true).getUnclippedBoundsInRoot()
            assertTrue("source groups share one left starting point", kotlin.math.abs(group.left.value - cloudGroup.left.value) <= 1)
            assertTrue("source text must fit menu", label.right <= menu.right - 8.dp)
        }
        compose.onNodeWithTag("source-icon-AiMusic", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(OemTint, (if (dark) androidx.compose.ui.graphics.Color(0xFFE8E8E8) else androidx.compose.ui.graphics.Color(0xFF27303B)).value.toLong()))
        compose.onNodeWithTag("source-icon-AiMusic", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(OemResource, R.drawable.content_oem_ico_media_aiquting))
        compose.onNodeWithTag("source-Bluetooth").assertIsSelected()
        captureHost("prototype-sources")
        MediaSource.entries.forEach { source ->
            compose.onNodeWithTag("source-${source.name}").performClick()
            assertTrue(events.last() == ContentEvent.SourceSelected(source))
            compose.onNodeWithTag("sources-menu").assertDoesNotExist()
            compose.onNodeWithTag("source-button").performClick()
        }
        compose.onNodeWithTag("sources-dismiss").performTouchInput { click(androidx.compose.ui.geometry.Offset(10f, 10f)) }
        compose.onNodeWithTag("sources-menu").assertDoesNotExist()
        assertTrue(events.last() == ContentEvent.DismissSheet)
        compose.runOnIdle { state.value = state.value.copy(sourcesOpen = true, media = state.value.media.copy(available = false)) }
        MediaSource.entries.forEach { compose.onNodeWithTag("source-${it.name}").assertIsNotEnabled() }
        compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(available = true, targetSource = MediaSource.Usb)) }
        MediaSource.entries.forEach { compose.onNodeWithTag("source-${it.name}").assertIsNotEnabled() }
    }

    @Test
    fun runtime_panel_has_only_declared_controls_and_independent_media_capabilities() {
        val state = ContentUiState(
            previewMode = false, dark = dark, weekday = "", rangeUnit = "", time = "08:15",
            temperature = "--", range = "--", batteryDescription = "电量未知",
            controls = ControlId.entries.associateWith { ControlState(actual = -1, available = false, known = false) },
            brightness = LevelState(0f, available = false), volume = LevelState(.4f),
            media = MediaState(title = null, artist = null, available = false, playbackAvailable = false, nextAvailable = false, sourceAvailable = true),
        )
        compose.setContent {
            val view = LocalView.current
            @Suppress("DEPRECATION")
            SideEffect {
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            ContentTheme(dark) { ContentPanel(state, { events += it }, Modifier.testTag(hostTag)) }
        }
        ControlId.entries.forEach { compose.onNodeWithTag("control-${it.name}").assertIsDisplayed().assertIsNotEnabled() }
        compose.onAllNodesWithText("状态未知").assertCountEquals(0)
        ControlId.entries.forEach { id ->
            compose.onNodeWithTag("control-${id.name}").assert(SemanticsMatcher.expectValue(androidx.compose.ui.semantics.SemanticsProperties.StateDescription, "状态未知"))
        }
        compose.onNodeWithTag("shortcut-SteeringHeat").assertIsNotEnabled()
        compose.onNodeWithTag("shortcut-Settings").performClick()
        assertTrue(events.last() == ContentEvent.SettingsTapped)
        compose.onNodeWithText("座椅通风").assertDoesNotExist()
        compose.onNodeWithText("08:15").assertIsDisplayed()
        compose.onNodeWithText("08:15星期三").assertDoesNotExist()
        compose.onNodeWithText("--km").assertDoesNotExist()
        compose.onNodeWithText("暂无媒体").assertIsDisplayed()
        compose.onNodeWithContentDescription("播放").assertIsNotEnabled()
        compose.onNodeWithContentDescription("下一首").assertIsNotEnabled()
        compose.onNodeWithTag("dock-Settings").performClick()
        assertTrue(events.last() == ContentEvent.SettingsTapped)
        compose.onNodeWithTag("source-button").performClick()
        assertTrue(events.last() == ContentEvent.OpenSources)
        compose.onNodeWithTag("volume-card").performTouchInput { click(androidx.compose.ui.geometry.Offset(width / 2f, height * .1f)) }
        assertTrue(events.last() is ContentEvent.VolumeChanged)
        compose.onNodeWithTag("volume-card").assert(SemanticsMatcher.expectValue(
            androidx.compose.ui.semantics.SemanticsProperties.ProgressBarRangeInfo,
            androidx.compose.ui.semantics.ProgressBarRangeInfo(.4f, 0f..1f)))
        captureHost("runtime-unavailable")
        compose.onNodeWithTag("runtime-pages").performTouchInput { swipeLeft() }
        compose.waitForIdle()
        assertTrue(events.contains(ContentEvent.PageSelected(PanelPage.Lyrics)))
        compose.onNodeWithText("暂无歌词").assertIsDisplayed()
        compose.onNodeWithText("此处仅预览歌词空态。").assertDoesNotExist()
    }

    private fun mountInteractionState(state: androidx.compose.runtime.State<ContentUiState>) {
        compose.setContent {
            val view = LocalView.current
            @Suppress("DEPRECATION")
            SideEffect {
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            ContentTheme(dark) { ContentPanel(state.value.copy(dark = dark), { events += it }, Modifier.testTag(hostTag)) }
        }
        compose.waitForIdle()
    }

    @Test fun roundedPressFeedbackIsLocalAnimatedAndDisabledDoesNotFire() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false, controls = previewState().controls + (ControlId.Lock to ControlState(actual = 0))))
        mountInteractionState(state)
        val transparent = androidx.compose.ui.graphics.Color.Transparent.value.toLong()
        val selected = compose.onNodeWithTag("dock-Lock").fetchSemanticsNode().boundsInRoot
        val baseline = captureHost("press-baseline")
        val selectedPixel = baseline.getPixel(selected.left.toInt() + 3, selected.center.y.toInt())
        val expectedSelected = if (dark) android.graphics.Color.rgb(72, 72, 72) else android.graphics.Color.rgb(228,228,228)
        assertTrue("selected fill must cover the full slot beyond its inner press area", selectedPixel == expectedSelected)
        compose.mainClock.autoAdvance = false
        listOf("dock-Lock", "dock-Ventilation", "media-play", "media-next", "source-button").forEach { tag ->
            val node = compose.onNodeWithTag(tag)
            node.assert(SemanticsMatcher.expectValue(PressActive, false))
            node.performTouchInput { down(center) }
            compose.mainClock.advanceTimeBy(320)
            node.assert(SemanticsMatcher.expectValue(PressActive, true))
            val color = node.fetchSemanticsNode().config[PressBackground]
            if (tag.startsWith("dock-")) {
                assertTrue("Dock press must have no rectangular background", color == transparent)
                assertTrue("Dock icon retains subtle deformation alongside shared touch-origin Ripple", node.fetchSemanticsNode().config[PressScale] < .97f)
            } else assertTrue("held media press must animate to nontransparent color: $tag", color != transparent)
            val outer = node.fetchSemanticsNode().boundsInRoot
            val inner = compose.onNodeWithTag("$tag-press-area", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
            assertTrue("inner rectangular press area remains inside unchanged touch slot", inner.left >= outer.left && inner.right <= outer.right && inner.top >= outer.top && inner.bottom <= outer.bottom)
            val held = captureHost("$tag-held")
            // A circle would leave this point clear; rounded rectangles include it.
            val x = inner.left.toInt() + 9
            val y = inner.top.toInt() + 9
            if (!tag.startsWith("dock-")) assertTrue("rounded rectangle not circle or whole-slot ripple: $tag", held.getPixel(x, y) != baseline.getPixel(x, y))
            node.performTouchInput { up() }
            compose.mainClock.advanceTimeBy(320)
            node.assert(SemanticsMatcher.expectValue(PressActive, false))
            node.assert(SemanticsMatcher.expectValue(PressBackground, transparent))
        }
        val count = events.size
        compose.onNodeWithTag("dock-SteeringHeat").performTouchInput { down(center) }
        compose.mainClock.advanceTimeBy(320)
        compose.onNodeWithTag("dock-SteeringHeat").assert(SemanticsMatcher.expectValue(PressActive, false))
        compose.onNodeWithTag("dock-SteeringHeat").performTouchInput { up() }
        compose.mainClock.advanceTimeBy(320)
        assertTrue("unresearched steering placeholder must never write", count == events.size)
        compose.mainClock.autoAdvance = true
        compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(available = false, playbackAvailable = false, nextAvailable = false)) }
        compose.waitForIdle()
        compose.onNodeWithTag("media-play").assertIsNotEnabled()
        compose.mainClock.autoAdvance = false
        compose.onNodeWithTag("media-play").performTouchInput { down(center) }
        compose.mainClock.advanceTimeBy(320)
        compose.onNodeWithTag("media-play").assert(SemanticsMatcher.expectValue(PressActive, false))
        compose.onNodeWithTag("media-play").performTouchInput { cancel() }
        compose.mainClock.advanceTimeBy(320)
        assertTrue("disabled media must not send commands", count == events.size)
        captureHost("press-disabled")
        compose.mainClock.autoAdvance = true
    }

    @Test fun seatLevelsKeepOriginalColorsAndResourcesInGridAndDock() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        mountInteractionState(state)
        val seatIds = listOf(ControlId.Ventilation, ControlId.Heating, ControlId.Massage)
        val resources = seatIds.associateWith { mutableSetOf<Int>() }
        for (level in 0..3) {
            compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls.mapValues { (id, control) -> if (id in seatIds) control.copy(actual = level) else control }) }
            seatIds.forEach { id ->
                val grid = compose.onNodeWithTag("shortcut-icon-${id.name}", useUnmergedTree = true)
                val dock = compose.onNodeWithTag("dock-icon-${id.name}", useUnmergedTree = true)
                grid.assert(SemanticsMatcher.expectValue(OemTint, androidx.compose.ui.graphics.Color.Unspecified.value.toLong()))
                dock.assert(SemanticsMatcher.expectValue(OemTint, androidx.compose.ui.graphics.Color.Unspecified.value.toLong()))
                val gridResource = grid.fetchSemanticsNode().config[OemResource]
                assertTrue("grid and dock must use same original level asset", gridResource == dock.fetchSemanticsNode().config[OemResource])
                resources.getValue(id) += gridResource
                compose.onNodeWithTag("control-${id.name}").assert(SemanticsMatcher.expectValue(androidx.compose.ui.semantics.SemanticsProperties.StateDescription, if (level == 0) "关闭" else "${level}档"))
                compose.onNodeWithText("${level}档").assertDoesNotExist()
            }
            val frame = captureHost("seat-level-$level")
            seatIds.forEach { id ->
                val bounds = compose.onNodeWithTag("shortcut-icon-${id.name}", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
                val background = frame.getPixel(bounds.left.toInt() - 3, bounds.center.y.toInt())
                var visible = 0
                var accent = 0
                var body = 0
                for (y in bounds.top.toInt() until bounds.bottom.toInt()) for (x in bounds.left.toInt() until bounds.right.toInt()) {
                    val pixel = frame.getPixel(x, y)
                    if (pixel != background) visible++
                    val r = android.graphics.Color.red(pixel)
                    val g = android.graphics.Color.green(pixel)
                    val b = android.graphics.Color.blue(pixel)
                    if (id == ControlId.Ventilation && b > 180 && b > r + 70 && g > r + 30) accent++
                    if (id == ControlId.Heating && r > 180 && r > g + 50 && b < 120) accent++
                    if (id == ControlId.Massage && b > 140 && b > g + 50 && r > g + 25) accent++
                    val bodyContrast = if (level == 0) {
                        if (dark) r > 200 && g > 200 && b > 200 else r < 150 && g < 150 && b < 150
                    } else when (id) {
                        ControlId.Ventilation -> b > 180 && b > r + 70 && g > r + 30
                        ControlId.Heating -> r > 180 && r > g + 50 && b < 120
                        ControlId.Massage -> b > 140 && b > g + 50 && r > g + 25
                        else -> false
                    }
                    if (x > bounds.left + bounds.width * .55f && bodyContrast) body++
                }
                assertTrue("OEM seat asset must remain visible on its themed surface: $id/$level", visible > 20)
                assertTrue("seat body must contrast with its surface without bleaching: $id/$level", body > 5)
                if (level > 0) assertTrue("blue/orange/purple level accents must survive without theme tint: $id/$level", accent > 5)
            }
        }
        resources.values.forEach { assertTrue("each level must select a distinct OEM asset", it.size == 4) }
    }

    @Test fun batteryLayersLockColorAndMediaOpacityFollowTruth() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false, batteryPercent = 80))
        mountInteractionState(state)
        fun assertBattery(charging: Boolean) {
            compose.runOnIdle { state.value = state.value.copy(charging = charging) }
            compose.waitForIdle()
            val frame = captureHost(if (charging) "battery-charging" else "battery-idle")
            val bounds = compose.onNodeWithTag("top-battery", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
            var green = 0
            var neutral = 0
            for (y in bounds.top.toInt() until bounds.bottom.toInt()) for (x in bounds.left.toInt() until bounds.right.toInt()) {
                val c = frame.getPixel(x, y)
                val r = android.graphics.Color.red(c); val g = android.graphics.Color.green(c); val b = android.graphics.Color.blue(c)
                if (g > r + 40 && g > b + 50) green++
                if (if (dark) r > 170 && kotlin.math.abs(r - g) < 10 && kotlin.math.abs(g - b) < 10 else r < 100 && g < 100 && b < 100) neutral++
            }
            assertTrue("battery interior is green: $charging", green > 2)
            assertTrue("battery outline retains theme base color: $charging", neutral > 2)
            compose.onNodeWithTag("top-battery", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(OemResource,
                if (charging) R.drawable.content_oem_ico_battery_charging else R.drawable.content_oem_ico_battery_4))
        }
        assertBattery(false); assertBattery(true)
        for (target in listOf(0, 1, 0)) {
            compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls +
                (ControlId.Lock to ControlState(actual = target))) }
            compose.waitForIdle()
            val expected = if (target == 0) androidx.compose.ui.graphics.Color(0xFF3FA9FF)
                else if (dark) androidx.compose.ui.graphics.Color(0xFFE8E8E8) else androidx.compose.ui.graphics.Color(0xFF27303B)
            listOf("shortcut-icon-Lock", "dock-icon-Lock").forEach { tag ->
                compose.onNodeWithTag(tag, useUnmergedTree = true).assert(SemanticsMatcher.expectValue(OemTint, expected.value.toLong()))
            }
        }
        compose.mainClock.autoAdvance = false
        val play = compose.onNodeWithTag("media-play")
        play.performTouchInput { down(center) }
        var previous = 0f
        for (duration in listOf(32L, 48L, 64L, 80L)) {
            compose.mainClock.advanceTimeBy(duration)
            val color = androidx.compose.ui.graphics.Color(play.fetchSemanticsNode().config[PressBackground].toULong())
            assertTrue("media opacity must rise monotonically", color.alpha >= previous)
            if (color.alpha > 0f) {
                val rgb = if (dark) 92f / 255 else 226f / 255
                assertTrue("media fill RGB remains fixed instead of flashing black", kotlin.math.abs(color.red - rgb) < .005f && kotlin.math.abs(color.green - rgb) < .005f && kotlin.math.abs(color.blue - rgb) < .005f)
            }
            previous = color.alpha
        }
        play.performTouchInput { cancel() }
        compose.mainClock.advanceTimeBy(320)
        play.assert(SemanticsMatcher.expectValue(PressBackground, androidx.compose.ui.graphics.Color.Transparent.value.toLong()))
        compose.mainClock.autoAdvance = true
    }


    @Test fun selectionContrastAndDockGeometryFollowDisplayedTruth() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(controls = previewState().controls +
            (ControlId.Lock to ControlState(actual = 0)) + (ControlId.Ventilation to ControlState(actual = 2))))
        mountInteractionState(state)
        compose.onNodeWithTag("control-Lock").assertIsSelected()
        compose.onNodeWithTag("dock-Lock").assertIsSelected()
        compose.onNodeWithTag("control-Ventilation").assertIsSelected()
        compose.onNodeWithTag("dock-Ventilation").assertIsSelected()
        val frame = captureHost("selection-contrast")
        val expectedFill = if (dark) android.graphics.Color.rgb(72,72,72) else android.graphics.Color.WHITE
        for (tag in listOf("brightness-fill", "volume-fill")) {
            val fill = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
            assertTrue("slider fill uses selected light layer in dark and original white in light", frame.getPixel(fill.left.toInt()+5, fill.top.toInt()+5) == expectedFill)
        }
        fun sample(tag: String): Int {
            val bounds = compose.onNodeWithTag(tag).fetchSemanticsNode().boundsInRoot
            return frame.getPixel(bounds.left.toInt() + 3, bounds.top.toInt() + bounds.height.toInt() / 2)
        }
        val selected = if (dark) android.graphics.Color.rgb(72,72,72) else android.graphics.Color.rgb(228,228,228)
        val normal = if (dark) android.graphics.Color.rgb(26,26,26) else android.graphics.Color.rgb(233,233,233)
        assertTrue("unlock selected fills whole dock slot", sample("dock-Lock") == selected)
        assertTrue("selected ventilation does not fill entire dock slot", sample("dock-Ventilation") == (if (dark) normal else android.graphics.Color.WHITE))
        assertTrue("selected shortcut follows theme selection", sample("control-Ventilation") == selected)
        assertTrue("nonselected shortcut is darker", sample("control-Heating") == normal)
        val inner = compose.onNodeWithTag("dock-Ventilation-press-area", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        assertTrue("seat selected rectangle matches media button geometry", frame.getPixel(inner.left.toInt()+5, inner.center.y.toInt()) == selected)
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Lock to ControlState(actual = 1))) }
        compose.onNodeWithTag("control-Lock").assertIsNotSelected()
        compose.onNodeWithTag("dock-Lock").assertIsNotSelected()
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Lock to ControlState(actual = 1, target = 0))) }
        compose.onNodeWithTag("dock-Lock").assertIsSelected().assertIsNotEnabled()
        compose.runOnIdle { state.value = state.value.copy(sourcesOpen = true) }
        val menu = captureHost("menu-contrast")
        val bounds = compose.onNodeWithTag("sources-menu").fetchSemanticsNode().boundsInRoot
        val row = compose.onNodeWithTag("source-Bluetooth").fetchSemanticsNode().boundsInRoot
        assertTrue("menu follows restored light and retained dark surface", menu.getPixel(bounds.left.toInt()+3, bounds.center.y.toInt()) == (if (dark) normal else android.graphics.Color.WHITE))
        assertTrue("selected source follows theme layer", menu.getPixel(row.left.toInt()+4, row.center.y.toInt()) == (if (dark) selected else normal))
    }

    @Test fun touchOriginRippleAndIconMotionAreSharedWithoutDoubleSound() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState())
        mountInteractionState(state)
        com.autonavi.amapauto.jni.GAdaAndroid.clicks = 0
        compose.mainClock.autoAdvance = false
        for ((button, icon) in listOf("control-Ventilation" to "shortcut-icon-Ventilation", "dock-Ventilation" to "dock-icon-Ventilation")) {
            val node = compose.onNodeWithTag(button)
            node.assert(SemanticsMatcher.expectValue(PressFeedback, "touch-ripple"))
            node.performTouchInput { down(androidx.compose.ui.geometry.Offset(12f,12f)) }
            compose.mainClock.advanceTimeBy(320)
            node.assert(SemanticsMatcher.expectValue(PressActive, true))
            val scale = compose.onNodeWithTag(icon, useUnmergedTree = true).fetchSemanticsNode().config[IconMotion]
            assertTrue("every shortcut/dock icon deforms while pressed", scale < .97f)
            node.performTouchInput { cancel() }
            compose.mainClock.advanceTimeBy(320)
            node.assert(SemanticsMatcher.expectValue(PressActive, false))
        }
        assertTrue("cancel never sounds or dispatches", com.autonavi.amapauto.jni.GAdaAndroid.clicks == 0 && events.isEmpty())
        compose.mainClock.autoAdvance = true
        compose.onNodeWithTag("dock-Ventilation").performClick()
        assertTrue("one accepted button produces exactly one native click", com.autonavi.amapauto.jni.GAdaAndroid.clicks == 1)
        compose.onNodeWithTag("dock-SteeringHeat").performTouchInput { click() }
        assertTrue("disabled has no sound", com.autonavi.amapauto.jni.GAdaAndroid.clicks == 1)
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Ventilation to ControlState(actual = 2))) }
        assertTrue("readback has no click sound", com.autonavi.amapauto.jni.GAdaAndroid.clicks == 1)
    }

    @Test fun dividerTracksActualContentWidth() {
        val width = androidx.compose.runtime.mutableStateOf(640.dp)
        compose.setContent { ContentTheme(dark) { ContentPanel(ContentUiState(), {}, Modifier.width(width.value).testTag(hostTag)) } }
        for (value in listOf(640, 520, 400, 640)) {
            compose.runOnIdle { width.value = value.dp }
            val host = compose.onNodeWithTag(hostTag).fetchSemanticsNode().boundsInRoot
            val divider = compose.onNodeWithTag("content-divider", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
            assertTrue("divider remains aligned with content edge during viewport changes", kotlin.math.abs(divider.right - host.right) <= 1 && kotlin.math.abs(divider.height - host.height) <= 1)
            assertTrue("divider is subtle and does not consume map geometry", divider.width <= 1.1f)
        }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    @Test fun registeredOemAnimationPlaysAndSettlesWithoutSnapshotReplay() {
        val context = org.robolectric.RuntimeEnvironment.getApplication()
        for (asset in listOf("ico_lock_open_f.json", "ico_lock_close_f.json", "ico_media_next_f.json", "ico_media_play_02_f.json", "ico_media_pause_02_f.json")) {
            val loaded = com.airbnb.lottie.LottieCompositionFactory.fromAssetSync(context, "content-oem/$asset")
            assertTrue("registered animation must be loadable: $asset / ${loaded.exception}", loaded.value != null)
        }
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState())
        mountInteractionState(state)
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(OemResource, R.drawable.content_oem_ico_lock_close))
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationVisible, true))
        compose.mainClock.autoAdvance = false
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Lock to ControlState(actual = 0))) }
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(96)
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(OemResource, R.drawable.content_oem_ico_lock_open))
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationAsset, "ico_lock_open_f.json"))
        captureHost("oem-lock-open-mid")
        compose.mainClock.advanceTimeBy(1600)
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationRetained, true))
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        val lockTail = iconPixels(captureHost("oem-lock-open-tail"), "dock-icon-Lock")
        compose.runOnIdle { state.value = state.value.copy(time = "12:25") }
        compose.mainClock.advanceTimeBy(96)
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
        assertTrue("timestamp must preserve the rendered last frame", lockTail.contentEquals(iconPixels(captureHost("oem-lock-open-tail-tick"), "dock-icon-Lock")))
        compose.onNodeWithTag("media-next").performClick()
        compose.mainClock.advanceTimeBy(96)
        compose.onNode(SemanticsMatcher.expectValue(IconAnimationAsset, "ico_media_next_f.json"), useUnmergedTree = true).assertExists()
        captureHost("oem-next-mid")
        compose.mainClock.advanceTimeBy(1600)
        compose.onNodeWithTag("media-next-icon", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
        compose.onNodeWithTag("media-next-icon", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        val nextTail = iconPixels(captureHost("oem-next-tail"), "media-next-icon")
        repeat(8) {
            compose.mainClock.advanceTimeByFrame()
            assertTrue("next must retain its tail without a first-frame flash", nextTail.contentEquals(iconPixels(captureHost("oem-next-hold-$it"), "media-next-icon")))
        }
        val view = (compose.onNodeWithTag(hostTag).fetchSemanticsNode().root as ViewRootForTest).view
        val focusDispatch = android.view.ViewTreeObserver::class.java.getDeclaredMethod("dispatchOnWindowFocusChange", java.lang.Boolean.TYPE).apply { isAccessible = true }
        compose.runOnIdle { focusDispatch.invoke(view.viewTreeObserver, false) }
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(96)
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationVisible, false))
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Lock to ControlState(actual = 1))) }
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(96)
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationAsset, ""))
        compose.runOnIdle { focusDispatch.invoke(view.viewTreeObserver, true) }
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(96)
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationAsset, ""))
        compose.mainClock.autoAdvance = true
    }

    private fun preloadOemAnimations(assets: List<String>) {
        val context = org.robolectric.RuntimeEnvironment.getApplication()
        assets.forEach { asset ->
            val result = com.airbnb.lottie.LottieCompositionFactory.fromAssetSync(context, "content-oem/$asset")
            assertTrue("raw OEM asset must parse: $asset / ${result.exception}", result.value != null)
        }
    }

    private fun iconPixels(frame: Bitmap, tag: String): IntArray {
        val bounds = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        val w = bounds.width.toInt(); val h = bounds.height.toInt()
        return IntArray(w * h).also { frame.getPixels(it, 0, w, bounds.left.toInt(), bounds.top.toInt(), w, h) }
    }

    @Test fun allSeatLevelsUseOriginalSegmentsAndRetainTheirTail() {
        val suffix = if (dark) "wh" else "bk"
        val families = mapOf(ControlId.Ventilation to "ventilate", ControlId.Heating to "heat", ControlId.Massage to "massage")
        preloadOemAnimations(families.values.map { "ico_skin_seat_${it}_l_$suffix.json" })
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        mountInteractionState(state)
        compose.mainClock.autoAdvance = false
        for (level in listOf(3, 2, 1, 0)) {
            compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls.mapValues { (id, value) -> if (id in families) value.copy(actual = level) else value }) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(384)
            families.forEach { (id, family) ->
                val asset = "ico_skin_seat_${family}_l_$suffix.json"
                for (prefix in listOf("shortcut-icon", "dock-icon")) {
                    val node = compose.onNodeWithTag("$prefix-${id.name}", useUnmergedTree = true)
                    node.assert(SemanticsMatcher.expectValue(IconAnimationAsset, asset))
                    val progress = node.fetchSemanticsNode().config[IconAnimationProgress]
                    assertTrue("selected OEM segment must be moving", progress > .1f && progress < .8f)
                }
            }
            val first = captureHost("oem-seat-$level-mid-a")
            compose.mainClock.advanceTimeBy(384)
            val second = captureHost("oem-seat-$level-mid-b")
            if (level > 0) families.keys.forEach { id ->
                assertTrue("${id.name} must change actual path pixels after generic 260ms pulse settles",
                    !iconPixels(first, "dock-icon-${id.name}").contentEquals(iconPixels(second, "dock-icon-${id.name}")))
            }
            compose.mainClock.advanceTimeBy(400)
            val tail = captureHost("oem-seat-$level-tail")
            families.keys.forEach { id ->
                val node = compose.onNodeWithTag("dock-icon-${id.name}", useUnmergedTree = true)
                node.assert(SemanticsMatcher.expectValue(IconAnimationRetained, true))
                node.assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
                node.assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            }
            compose.runOnIdle { state.value = state.value.copy(time = "12:25") }
            compose.mainClock.advanceTimeBy(96)
            val held = captureHost("oem-seat-$level-held")
            families.keys.forEach { id ->
                assertTrue("${id.name} last frame must survive unchanged truth and timestamp updates", iconPixels(tail, "dock-icon-${id.name}").contentEquals(iconPixels(held, "dock-icon-${id.name}")))
            }
        }
        compose.mainClock.autoAdvance = true
    }

    @Test fun allFiveSourcesPlayTheirOwnPathsAndLiftDoesNotResetTheFrame() {
        val assets = linkedMapOf(MediaSource.AiMusic to "ico_media_aiquting.json", MediaSource.CloudMusic to "ico_media_neteasy.json",
            MediaSource.Usb to "ico_devices_usb.json", MediaSource.Local to "ico_media_local.json", MediaSource.Bluetooth to "ico_bluetooth_1.json")
        preloadOemAnimations(assets.values.toList())
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(sourcesOpen = true, previewMode = false))
        mountInteractionState(state)
        compose.mainClock.autoAdvance = false
        for ((source, asset) in assets) {
            val tag = "source-icon-${source.name}"
            val row = compose.onNodeWithTag("source-${source.name}")
            row.performTouchInput { down(center) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(384)
            compose.onNodeWithTag(tag, useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationAsset, asset))
            val a = iconPixels(captureHost("oem-source-${source.name}-mid-a"), tag)
            compose.mainClock.advanceTimeBy(256)
            val b = iconPixels(captureHost("oem-source-${source.name}-mid-b"), tag)
            assertTrue("${source.label} must animate path pixels while press scale is stable", !a.contentEquals(b))
            val beforeRelease = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().config[IconAnimationProgress]
            row.performTouchInput { cancel() }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(32)
            val afterRelease = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().config[IconAnimationProgress]
            assertTrue("lifting must continue toward tail rather than rewind", afterRelease >= beforeRelease)
            assertTrue("cancel must never dispatch a source command", events.isEmpty())
            compose.mainClock.advanceTimeBy(600)
            compose.onNodeWithTag(tag, useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(source = source)) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(384)
            compose.onNodeWithTag("media-source-icon", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationAsset, asset))
            compose.mainClock.advanceTimeBy(800)
            val tail = iconPixels(captureHost("oem-source-${source.name}-tail"), "media-source-icon")
            compose.mainClock.advanceTimeBy(96)
            assertTrue("persistent source icon must keep the last original frame", tail.contentEquals(iconPixels(captureHost("oem-source-${source.name}-held"), "media-source-icon")))
        }
        compose.mainClock.autoAdvance = true
    }

    @Test fun mediaTransitionEndsOnTheCorrectFilledTargetAndNeverRewinds() {
        preloadOemAnimations(listOf("ico_media_play_02_f.json", "ico_media_pause_02_f.json"))
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        mountInteractionState(state)
        compose.mainClock.autoAdvance = false
        for (playing in listOf(true, false)) {
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(playing = playing)) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeUntil(512) {
                compose.onNodeWithTag("media-play-icon", useUnmergedTree = true).fetchSemanticsNode().config[IconAnimationPlaying]
            }
            var previous = compose.onNodeWithTag("media-play-icon", useUnmergedTree = true).fetchSemanticsNode().config[IconAnimationProgress]
            assertTrue("each transition must begin at its zero frame", previous <= .1f)
            repeat(40) {
                compose.mainClock.advanceTimeByFrame()
                val node = compose.onNodeWithTag("media-play-icon", useUnmergedTree = true)
                val fraction = node.fetchSemanticsNode().config[IconAnimationProgress]
                assertTrue("timeline must advance once from 0 toward 1", fraction >= previous)
                previous = fraction
            }
            compose.onNodeWithTag("media-play-icon", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            compose.onNodeWithTag("media-play-icon", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
            val frame = captureHost("oem-media-${if (playing) "pause" else "play"}-tail")
            val bounds = compose.onNodeWithTag("media-play-icon", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
            val center = frame.getPixel(bounds.center.x.toInt(), bounds.center.y.toInt())
            val empty = frame.getPixel(bounds.left.toInt()+1, bounds.top.toInt()+1)
            assertTrue("tail must be two pause bars or one filled play triangle", if (playing) center == empty else center != empty)
            val terminal = iconPixels(frame, "media-play-icon")
            repeat(8) {
                compose.mainClock.advanceTimeByFrame()
                assertTrue("completed media transition must retain identical tail pixels", terminal.contentEquals(iconPixels(captureHost("oem-media-${if (playing) "pause" else "play"}-hold-$it"), "media-play-icon")))
            }
        }
        compose.mainClock.autoAdvance = true
    }

    @Test fun uncachedMediaTransitionKeepsItsPreviousFrameUntilZeroFrameIsReady() {
        val context = org.robolectric.RuntimeEnvironment.getApplication()
        com.airbnb.lottie.LottieCompositionFactory.clearCache(context)
        val executor = com.airbnb.lottie.LottieTask.EXECUTOR
        val queued = java.util.ArrayDeque<Runnable>()
        com.airbnb.lottie.LottieTask.EXECUTOR = java.util.concurrent.Executor { queued.add(it) }
        try {
            val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
            mountInteractionState(state)
            compose.mainClock.autoAdvance = false
            val icon = compose.onNodeWithTag("media-play-icon", useUnmergedTree = true)
            icon.assert(SemanticsMatcher.expectValue(IconAnimationReady, false))
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(playing = true)) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(320)
            assertTrue("cold asset parse must still be deferred", queued.isNotEmpty())
            icon.assert(SemanticsMatcher.expectValue(IconAnimationReady, false))
            icon.assert(SemanticsMatcher.expectValue(OemResource, R.drawable.content_oem_ico_media_play_f))
            val held = captureHost("oem-cold-media-waiting")
            val bounds = icon.fetchSemanticsNode().boundsInRoot
            assertTrue("must keep old filled play glyph until new zero frame is ready", held.getPixel(bounds.center.x.toInt(), bounds.center.y.toInt()) != held.getPixel(bounds.left.toInt()+1, bounds.top.toInt()+1))
            while (queued.isNotEmpty()) queued.removeFirst().run()
            compose.waitForIdle()
            compose.mainClock.advanceTimeUntil(512) { icon.fetchSemanticsNode().config[IconAnimationPlaying] }
            val start = icon.fetchSemanticsNode().config[IconAnimationProgress]
            assertTrue("loaded frame must enter at zero instead of flashing the target", start <= .1f)
            compose.mainClock.advanceTimeBy(800)
            icon.assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            val tail = iconPixels(captureHost("oem-cold-media-tail"), "media-play-icon")
            // Drop cache again: the reverse transition must keep this actual
            // retained Lottie tail throughout the next asset's loading gap.
            com.airbnb.lottie.LottieCompositionFactory.clearCache(context)
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(playing = false)) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(320)
            assertTrue("reverse parse must be deferred too", queued.isNotEmpty())
            assertTrue("next cold transition must preserve the previous Drawable tail", tail.contentEquals(iconPixels(captureHost("oem-cold-media-reverse-waiting"), "media-play-icon")))
            while (queued.isNotEmpty()) queued.removeFirst().run()
            compose.waitForIdle()
            compose.mainClock.advanceTimeUntil(512) { icon.fetchSemanticsNode().config[IconAnimationPlaying] }
            assertTrue("reverse transition must enter at zero", icon.fetchSemanticsNode().config[IconAnimationProgress] <= .1f)
            compose.mainClock.advanceTimeBy(800)
            icon.assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            // Now interrupt an in-flight A with a cold B and return to A before
            // B parses. The consumed A key must settle, never freeze mid-frame.
            preloadOemAnimations(listOf("ico_media_play_02_f.json"))
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(playing = true)) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeUntil(512) { icon.fetchSemanticsNode().config[IconAnimationPlaying] }
            compose.mainClock.advanceTimeBy(128)
            val interrupted = icon.fetchSemanticsNode().config[IconAnimationProgress]
            assertTrue("A must actually be mid-transition", interrupted > 0f && interrupted < 1f)
            com.airbnb.lottie.LottieCompositionFactory.clearCache(context)
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(playing = false)) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(64)
            assertTrue("intermediate B parse must remain deferred", queued.isNotEmpty())
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(playing = true)) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(64)
            icon.assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            icon.assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
            while (queued.isNotEmpty()) queued.removeFirst().run()
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(320)
            icon.assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            icon.assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        } finally {
            com.airbnb.lottie.LottieTask.EXECUTOR = executor
            compose.mainClock.autoAdvance = true
            com.airbnb.lottie.LottieCompositionFactory.clearCache(context)
        }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun captureHost(name: String): Bitmap {
        val semantics = compose.onNodeWithTag(hostTag).fetchSemanticsNode()
        val root = semantics.root as? ViewRootForTest ?: error("Compose host is not an Android view")
        val bounds = semantics.boundsInRoot
        val bitmap = compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.toInt(), bounds.height.toInt(), Bitmap.Config.ARGB_8888).also { image ->
                val canvas = Canvas(image)
                canvas.translate(-bounds.left, -bounds.top)
                root.view.draw(canvas)
            }
        }
        assertTrue("empty native capture", bitmap.width > 0 && bitmap.height > 0)
        assertTrue("expected 640x1080 native capture", bitmap.width == 640 && bitmap.height == 1080)
        fun brightness(x: Int, y: Int): Int {
            val pixel = bitmap.getPixel(x, y)
            return android.graphics.Color.red(pixel) + android.graphics.Color.green(pixel) + android.graphics.Color.blue(pixel)
        }
        val background = brightness(300, 800)
        for ((x, bottom) in listOf(70 to 194, 300 to 952, 300 to 1068)) {
            val near = brightness(x, bottom + 2)
            val far = brightness(x, bottom + 8)
            assertTrue("shadow must be visible below surface at $x/$bottom", near < background)
            assertTrue("shadow must soften toward background at $x/$bottom", far > near && far <= background)
        }
        assertTrue("shadow should project downward more than upward", brightness(70, 196) < brightness(70, 57))
        val colors = mutableSetOf<Int>()
        for (y in 0 until bitmap.height step 11) for (x in 0 until bitmap.width step 11) colors += bitmap.getPixel(x, y)
        assertTrue("capture must contain rendered color variation", colors.size > 8)
        val directory = File("build/frames")
        assertTrue(directory.isDirectory || directory.mkdirs())
        File(directory, "640x1080-${if (dark) "dark" else "light"}-$name.png").outputStream().use { output ->
            assertTrue("PNG encoding failed", bitmap.compress(Bitmap.CompressFormat.PNG, 100, output))
        }
        return bitmap
    }

    private tailrec fun Context.activity(): Activity = when (this) {
        is Activity -> this
        is ContextWrapper -> baseContext.activity()
        else -> error("Preview Compose view is not hosted by an Activity")
    }
}

@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class ContentPanelDarkPrototypeRenderTest : ContentPanelLightPrototypeRenderTest() {
    override val dark = true
}
