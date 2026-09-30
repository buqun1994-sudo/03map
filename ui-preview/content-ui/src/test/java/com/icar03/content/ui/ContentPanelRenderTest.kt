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
        compose.onNodeWithText("12:24星期三").assertIsDisplayed()
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
        compose.onNodeWithTag("source-icon-AiMusic", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(OemTint, androidx.compose.ui.graphics.Color.Unspecified.value.toLong()))
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
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        mountInteractionState(state)
        val transparent = androidx.compose.ui.graphics.Color.Transparent.value.toLong()
        val selected = compose.onNodeWithTag("dock-Lock").fetchSemanticsNode().boundsInRoot
        val baseline = captureHost("press-baseline")
        val selectedPixel = baseline.getPixel(selected.left.toInt() + 3, selected.center.y.toInt())
        val expectedSelected = if (dark) android.graphics.Color.rgb(53, 59, 67) else android.graphics.Color.rgb(228, 228, 228)
        assertTrue("selected fill must cover the full slot beyond its inner press area", selectedPixel == expectedSelected)
        compose.mainClock.autoAdvance = false
        listOf("dock-Lock", "dock-Ventilation", "media-play", "media-next", "source-button").forEach { tag ->
            val node = compose.onNodeWithTag(tag)
            node.assert(SemanticsMatcher.expectValue(PressActive, false))
            node.performTouchInput { down(center) }
            compose.mainClock.advanceTimeBy(240)
            node.assert(SemanticsMatcher.expectValue(PressActive, true))
            val color = node.fetchSemanticsNode().config[PressBackground]
            assertTrue("held press must animate to nontransparent color: $tag", color != transparent)
            val outer = node.fetchSemanticsNode().boundsInRoot
            val inner = compose.onNodeWithTag("$tag-press-area", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
            assertTrue("inner rectangular press area remains inside unchanged touch slot", inner.left >= outer.left && inner.right <= outer.right && inner.top >= outer.top && inner.bottom <= outer.bottom)
            val held = captureHost("$tag-held")
            // A circle would leave this point clear; rounded rectangles include it.
            val x = inner.left.toInt() + 9
            val y = inner.top.toInt() + 9
            assertTrue("rounded rectangle not circle or whole-slot ripple: $tag", held.getPixel(x, y) != baseline.getPixel(x, y))
            node.performTouchInput { up() }
            compose.mainClock.advanceTimeBy(240)
            node.assert(SemanticsMatcher.expectValue(PressActive, false))
            node.assert(SemanticsMatcher.expectValue(PressBackground, transparent))
        }
        val count = events.size
        compose.onNodeWithTag("dock-SteeringHeat").performTouchInput { down(center) }
        compose.mainClock.advanceTimeBy(240)
        compose.onNodeWithTag("dock-SteeringHeat").assert(SemanticsMatcher.expectValue(PressActive, false))
        compose.onNodeWithTag("dock-SteeringHeat").performTouchInput { up() }
        compose.mainClock.advanceTimeBy(240)
        assertTrue("unresearched steering placeholder must never write", count == events.size)
        compose.mainClock.autoAdvance = true
        compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(available = false, playbackAvailable = false, nextAvailable = false)) }
        compose.waitForIdle()
        compose.onNodeWithTag("media-play").assertIsNotEnabled()
        compose.mainClock.autoAdvance = false
        compose.onNodeWithTag("media-play").performTouchInput { down(center) }
        compose.mainClock.advanceTimeBy(240)
        compose.onNodeWithTag("media-play").assert(SemanticsMatcher.expectValue(PressActive, false))
        compose.onNodeWithTag("media-play").performTouchInput { cancel() }
        compose.mainClock.advanceTimeBy(240)
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
                    val bodyContrast = if (dark) r > 200 && g > 200 && b > 200 else r < 150 && g < 150 && b < 150
                    if (x > bounds.left + bounds.width * .55f && bodyContrast) body++
                }
                assertTrue("OEM seat asset must remain visible on its themed surface: $id/$level", visible > 20)
                assertTrue("seat body must contrast with its surface without bleaching: $id/$level", body > 5)
                if (level > 0) assertTrue("blue/orange/purple level accents must survive without theme tint: $id/$level", accent > 5)
            }
        }
        resources.values.forEach { assertTrue("each level must select a distinct OEM asset", it.size == 4) }
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
