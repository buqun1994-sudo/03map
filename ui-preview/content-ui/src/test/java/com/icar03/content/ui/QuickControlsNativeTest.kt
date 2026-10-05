package com.icar03.content.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.Canvas
import android.os.Build
import android.view.View
import android.view.WindowManager
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.layout.layout
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.ProgressBarRangeInfo
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.dp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.airbnb.lottie.LottieCompositionFactory
import com.airbnb.lottie.LottieDrawable
import com.airbnb.lottie.model.KeyPath
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File
import kotlin.math.abs
import kotlin.math.roundToInt

/** Calls the production Panel and icon adapters, and captures actual Android drawing. */
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
open class QuickControlsNativeTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    private val events = mutableListOf<ContentEvent>()
    private val state = mutableStateOf(ContentUiState(previewMode = false))
    private val panelWidth = mutableStateOf(640.dp)
    private val owner = object : LifecycleOwner {
        override val lifecycle = LifecycleRegistry.createUnsafe(this).apply { currentState = Lifecycle.State.RESUMED }
    }
    private var hostView: View? = null

    // Divider occlusion is intentionally anisotropic: horizontal breathing must
    // not consume the real 8dp icon/text gap vertically.
    private val dividerHorizontalClearanceDp = 6f
    private val dividerVerticalClearanceDp = 2f

    @Composable private fun FrameHost(content: @Composable () -> Unit) {
        val view = LocalView.current
        @Suppress("DEPRECATION")
        SideEffect {
            hostView = view
            view.context.activity().window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
            view.context.activity().window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or
                View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or
                View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or View.SYSTEM_UI_FLAG_LAYOUT_STABLE or
                View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
        }
        CompositionLocalProvider(LocalLifecycleOwner provides owner) { ContentTheme(dark, content) }
    }

    private fun mountPanel(onEvent: (ContentEvent) -> Unit = {}) {
        compose.setContent {
            FrameHost { ContentPanel(state.value.copy(dark = dark), { events += it; onEvent(it) },
                Modifier.width(panelWidth.value).testTag("quick-native-host")) }
        }
        compose.waitForIdle()
    }

    @Test fun metadataAndWholeVerticalLabelGroupsHaveStableGeometry() {
        mountPanel()
        compose.onAllNodes(hasClickAction() and hasAnyAncestor(hasTestTag("floating-dock"))).assertCountEquals(6)
        compose.onNodeWithTag("dock-SteeringHeat").assertDoesNotExist()
        compose.onNodeWithTag("dock-PassengerHeating").assertDoesNotExist()
        for (tag in listOf("control-Wiper", "brightness-card", "volume-card")) {
            val bar = compose.onNodeWithTag(tag).getUnclippedBoundsInRoot()
            val group = compose.onNodeWithTag("$tag-label-group", useUnmergedTree = true).getUnclippedBoundsInRoot()
            assertEquals(290f, (bar.bottom - bar.top).value, 1f)
            assertEquals("whole icon + text group remains at the previous icon centre", bar.bottom.value - 81f,
                (group.top.value + group.bottom.value) / 2f, 1f)
        }
        for (id in ShortcutId.entries) compose.onNodeWithTag("shortcut-label-${id.name}", useUnmergedTree = true).assertTextEquals(id.label)
        capture("metadata-label-groups")
    }

    @Test fun steppedTapPowerDragOnlyCommitsOnceAndCancelRestoresActual() {
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Wiper to ControlState(actual = 2, rememberedLevel = 2))) }
        mountPanel()
        val bar = compose.onNodeWithTag("control-Wiper")
        bar.performClick()
        assertEquals(listOf(ContentEvent.ControlPowerTapped(ControlId.Wiper)), events)
        events.clear()
        bar.performTouchInput { down(center); moveTo(Offset(center.x, height * .15f)) }
        assertTrue("every drag frame is only a draft", events.isEmpty())
        bar.assert(SemanticsMatcher.expectValue(ControlDragging, true))
        bar.performTouchInput { up() }
        assertEquals(listOf(ContentEvent.ControlLevelChanged(ControlId.Wiper, 4)), events)
        events.clear()
        bar.performTouchInput { down(center); moveTo(Offset(center.x, 10f)); cancel() }
        assertTrue(events.isEmpty())
        bar.assert(SemanticsMatcher.expectValue(ControlDraft, .5f))
        bar.assert(SemanticsMatcher.expectValue(ControlDragging, false))
        capture("stepped-cancel")
    }

    @Test fun autoAndUnknownNeverProjectAFakeManualLevel() {
        preload()
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Wiper to ControlState(actual = 5, rememberedLevel = 3))) }
        mountPanel()
        compose.onNodeWithTag("control-Wiper").assertIsNotSelected()
            .assert(SemanticsMatcher.expectValue(SemanticsProperties.ProgressBarRangeInfo, ProgressBarRangeInfo.Indeterminate))
            .assert(SemanticsMatcher.expectValue(SemanticsProperties.StateDescription, "自动"))
            .assert(SemanticsMatcher.expectValue(ControlDraft, 0f))
        compose.onNodeWithTag("dock-Wiper").assertIsNotSelected()
        compose.onNodeWithTag("shortcut-AutoWiper").assertIsSelected()
        assertManualWiperIcons(0)
        capture("automatic-separate")
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Wiper to ControlState(actual = -1, known = false))) }
        compose.onNodeWithTag("control-Wiper").assertIsNotEnabled()
            .assert(SemanticsMatcher.expectValue(SemanticsProperties.ProgressBarRangeInfo, ProgressBarRangeInfo.Indeterminate))
        capture("unknown-no-manual-truth")
    }

    @Test fun allWiperModesAndPendingTargetsKeepManualGridDockAndAutomaticButtonConsistent() {
        preload()
        mountPanel()
        val cases = (0..5).map { ControlState(actual = it, rememberedLevel = 3) } +
            (0..5).map { ControlState(actual = 5, target = it, available = false, rememberedLevel = 3) } +
            listOf(ControlState(actual = 0, target = 5, available = false, rememberedLevel = 3),
                ControlState(actual = 2, target = 5, available = false, rememberedLevel = 3),
                ControlState(actual = -1, target = 4, known = false, available = false, rememberedLevel = 3))
        for (value in cases) {
            compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Wiper to value)) }
            val displayed = value.target ?: value.actual
            val manual = if (displayed == 5) 0 else displayed
            val selected = displayed in 1..4
            for (tag in listOf("control-Wiper", "dock-Wiper")) {
                val node = compose.onNodeWithTag(tag)
                node.assert(SemanticsMatcher.expectValue(SemanticsProperties.Selected, selected))
                if (value.pending) node.assertIsNotEnabled() else node.assertIsEnabled()
            }
            compose.onNodeWithTag("shortcut-AutoWiper")
                .assert(SemanticsMatcher.expectValue(SemanticsProperties.Selected, displayed == 5))
            compose.onNodeWithTag("control-Wiper")
                .assert(SemanticsMatcher.expectValue(ControlDraft, manual / 4f))
                .assert(SemanticsMatcher.expectValue(SemanticsProperties.ProgressBarRangeInfo,
                    if (displayed == 5) ProgressBarRangeInfo.Indeterminate
                    else ProgressBarRangeInfo(displayed.toFloat(), 0f..4f, 3)))
            assertManualWiperIcons(manual)
            assertEquals("UI projection never changes vehicle facts or confirmed memory", value, state.value.controls.getValue(ControlId.Wiper))
        }
        assertTrue("readback/target changes must not send a command", events.isEmpty())
    }

    @Test fun offAndAutomaticChangesDoNotReplayOrColorEitherManualWiperIcon() {
        preload()
        mountPanel()
        assertManualWiperIcons(0)
        val off = capture("manual-wiper-off-reference")
        compose.mainClock.autoAdvance = false
        val values = listOf(ControlState(actual = 0, target = 5, available = false),
            ControlState(actual = 5), ControlState(actual = 5, target = 0, available = false), ControlState(actual = 0))
        for (value in values) {
            compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Wiper to value)) }
            compose.mainClock.advanceTimeByFrame()
            compose.waitForIdle()
            assertManualWiperIcons(0)
            val frame = capture("manual-wiper-off-auto-${value.actual}-${value.target}")
            for (tag in listOf("shortcut-icon-Wiper", "dock-icon-Wiper")) {
                compose.onNodeWithTag(tag, useUnmergedTree = true)
                    .assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
                    .assert(SemanticsMatcher.expectValue(IconMotion, 1f))
                assertArrayEquals("$tag stays at the neutral OFF frame for $value", iconPixels(off, tag), iconPixels(frame, tag))
            }
            compose.onNodeWithTag("control-Wiper").assertIsNotSelected()
            compose.onNodeWithTag("dock-Wiper").assertIsNotSelected()
        }
        compose.mainClock.autoAdvance = true
        assertTrue(events.isEmpty())
    }

    private fun assertManualWiperIcons(level: Int) {
        val expected = vehicleControlIconRecipe(ControlId.Wiper, level, dark)
        val tags = listOf("shortcut-icon-Wiper", "dock-icon-Wiper")
        compose.waitUntil(3_000) { tags.all { tag ->
            val current = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().config
            current[IconAnimationReady] && current[OemResource] == expected.resource && current[IconAnimationAsset] == expected.asset
        } }
        for (tag in tags) compose.onNodeWithTag(tag, useUnmergedTree = true)
            .assert(SemanticsMatcher.expectValue(OemResource, expected.resource))
            .assert(SemanticsMatcher.expectValue(IconAnimationAsset, expected.asset))
    }

    @Test fun continuousDragAlsoUsesSingleCommitAndHorizontalPagerKeepsItsGesture() {
        mountPanel()
        val bar = compose.onNodeWithTag("brightness-card")
        bar.performTouchInput { down(center); moveTo(Offset(center.x, height * .2f)) }
        assertTrue(events.isEmpty())
        bar.performTouchInput { up() }
        assertEquals(1, events.size)
        assertEquals(.8f, (events.single() as ContentEvent.BrightnessChanged).value, .015f)
        events.clear()
        bar.performTouchInput { down(center); moveTo(Offset(center.x, height * .8f)); cancel() }
        assertTrue(events.isEmpty())
        compose.onNodeWithTag("runtime-pages").performTouchInput { swipeLeft() }
        assertTrue(events.contains(ContentEvent.PageSelected(PanelPage.Lyrics)))
    }

    @Test fun ordinaryToggleRetainsSelectionAfterRippleWhileDynamicReturnsToBase() {
        mountPanel { event -> if (event is ContentEvent.ControlTapped && event.id == ControlId.RearWiper) state.value = state.value.copy(
            controls = state.value.controls + (ControlId.RearWiper to ControlState(actual = 1))) }
        compose.mainClock.autoAdvance = false
        val ordinary = compose.onNodeWithTag("control-RearWiper")
        ordinary.performTouchInput { down(Offset(12f, 12f)) }
        compose.mainClock.advanceTimeBy(240)
        ordinary.assert(SemanticsMatcher.expectValue(RippleRunning, true))
        capture("ordinary-ripple-expanded")
        ordinary.performTouchInput { up() }
        compose.mainClock.advanceTimeBy(360)
        ordinary.assertIsSelected().assert(SemanticsMatcher.expectValue(SemanticsProperties.StateDescription,
            "开启"))
        val selected = if (dark) Color(0xFF303030) else Color(0xFFE4E4E4)
        val base = if (dark) Color(0xFF1A1A1A) else Color(0xFFE9E9E9)
        ordinary.assert(SemanticsMatcher.expectValue(ControlFill, selected.value.toLong()))
        compose.onNodeWithTag("control-Ventilation").assert(SemanticsMatcher.expectValue(ControlFill, base.value.toLong()))
        capture("ordinary-selected-tail")
        compose.mainClock.autoAdvance = true
    }

    @Test fun dockTapAndLongPressNeverOpenAndShortUpwardRevealNeverTurnsThreeOff() {
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Wiper to ControlState(actual = 3, rememberedLevel = 3))) }
        mountPanel()
        val dock = compose.onNodeWithTag("dock-Wiper")
        dock.performClick()
        assertEquals(listOf(ContentEvent.ControlPowerTapped(ControlId.Wiper)), events)
        events.clear()
        dock.performTouchInput { down(center); advanceEventTime(700); up() }
        compose.onNodeWithTag("dock-overlay-host").assert(SemanticsMatcher.expectValue(DockOverlayVisible, false))
        events.clear()
        compose.mainClock.autoAdvance = false
        dock.performTouchInput { down(center); moveBy(Offset(0f, -36f)) }
        compose.mainClock.advanceTimeBy(96)
        compose.onNodeWithTag("dock-overlay-host").assert(SemanticsMatcher.expectValue(DockOverlayVisible, true))
        compose.onNodeWithTag("dock-overlay-host").assert(SemanticsMatcher.expectValue(DockOverlaySelecting, false))
        compose.onNodeWithTag("dock-level-overlay").assert(SemanticsMatcher.expectValue(DockOverlayLevel, 3))
        val overlay = compose.onNodeWithTag("dock-level-overlay").fetchSemanticsNode().boundsInRoot
        val slot = dock.fetchSemanticsNode().boundsInRoot
        assertEquals("overlay width participates in first activation", 140f, overlay.width, 0f)
        assertEquals("overlay keeps the standard track height", 290f, overlay.height, 0f)
        assertTrue("sibling overlay draws above the unclipped Dock", overlay.bottom < slot.top)
        capture("dock-three-short-up-visible")
        dock.performTouchInput { up() }
        assertTrue("reveal without a changed draft cannot send OFF or exit AUTO", events.isEmpty())
        compose.mainClock.advanceTimeBy(240)
        compose.mainClock.autoAdvance = true
    }

    @Test fun ordinaryToggleSelectionUsesSharedSurfaceForAutoAndRearControls() {
        compose.runOnIdle {
            state.value = state.value.copy(controls = state.value.controls + mapOf(
                ControlId.Wiper to ControlState(actual = ControlId.Wiper.automaticLevel),
                ControlId.RearWiper to ControlState(actual = 1),
                ControlId.RearWash to ControlState(actual = 1),
            ))
        }
        mountPanel()
        val selected = if (dark) Color(0xFF303030) else Color(0xFFE4E4E4)
        for (tag in listOf("shortcut-AutoWiper", "control-RearWiper", "control-RearWash")) {
            compose.onNodeWithTag(tag).assertIsSelected()
                .assert(SemanticsMatcher.expectValue(ControlFill, selected.value.toLong()))
        }
    }

    @Test fun dockSamePointerAdjustsOneDraftAndPendingPreservesTheFadeTail() {
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls +
            (ControlId.Wiper to ControlState(actual = 1, rememberedLevel = 1))) }
        mountPanel { event -> if (event is ContentEvent.ControlLevelChanged) state.value = state.value.copy(
            controls = state.value.controls + (event.id to state.value.controls.getValue(event.id).copy(target = event.level))) }
        compose.mainClock.autoAdvance = false
        val dock = compose.onNodeWithTag("dock-Wiper")
        dock.performTouchInput { down(center); moveBy(Offset(0f, -36f)) }
        compose.mainClock.advanceTimeBy(80)
        assertTrue(events.isEmpty())
        val slot = dock.fetchSemanticsNode().boundsInRoot
        val overlay = compose.onNodeWithTag("dock-level-overlay").fetchSemanticsNode().boundsInRoot
        val levelThree = Offset(overlay.center.x, overlay.top + overlay.height * .30f)
        dock.performTouchInput { moveTo(pointerInDock(slot, levelThree)) }
        compose.mainClock.advanceTimeByFrame()
        compose.onNodeWithTag("dock-level-overlay").assert(SemanticsMatcher.expectValue(DockOverlayLevel, 3))
        val levelTwo = Offset(overlay.center.x, overlay.top + overlay.height * .62f)
        // The final UP coordinate is intentionally different from the last MOVE.
        dock.performTouchInput { moveTo(pointerInDock(slot, levelTwo)); up() }
        compose.mainClock.advanceTimeByFrame()
        assertEquals(listOf(ContentEvent.ControlLevelChanged(ControlId.Wiper, 2)), events)
        compose.mainClock.advanceTimeBy(48)
        val opacity = compose.onNodeWithTag("dock-overlay-host").fetchSemanticsNode().config[DockOverlayOpacity]
        assertTrue("pending does not erase the release fade", opacity > 0f && opacity < 1f)
        compose.onNodeWithTag("dock-level-overlay").assertExists()
        capture("dock-pending-fade")
        compose.mainClock.advanceTimeBy(240)
        compose.mainClock.autoAdvance = true
        compose.waitUntil(2_000) { compose.onAllNodesWithTag("dock-level-overlay").fetchSemanticsNodes().isEmpty() }
    }

    @Test fun dockCancelPauseFocusAndGeometryChangeRejectTheOldPointer() {
        mountPanel()
        val dock = compose.onNodeWithTag("dock-Wiper")
        dock.performTouchInput { down(center); moveBy(Offset(0f, -36f)); cancel() }
        assertTrue(events.isEmpty())
        dock.performTouchInput { down(center); moveBy(Offset(0f, -36f)) }
        compose.runOnIdle { owner.lifecycle.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE) }
        compose.onNodeWithTag("dock-overlay-host").assert(SemanticsMatcher.expectValue(DockOverlayVisible, false))
        dock.performTouchInput { up() }
        assertTrue(events.isEmpty())
        compose.runOnIdle { owner.lifecycle.handleLifecycleEvent(Lifecycle.Event.ON_RESUME) }
        dock.performTouchInput { down(center); moveBy(Offset(0f, -36f)) }
        val focus = android.view.ViewTreeObserver::class.java.getDeclaredMethod("dispatchOnWindowFocusChange", java.lang.Boolean.TYPE).apply { isAccessible = true }
        compose.runOnIdle { focus.invoke(hostView!!.viewTreeObserver, false) }
        compose.onNodeWithTag("dock-level-overlay").assertDoesNotExist()
        dock.performTouchInput { up() }
        compose.runOnIdle { focus.invoke(hostView!!.viewTreeObserver, true) }
        dock.performTouchInput { down(center); moveBy(Offset(0f, -36f)) }
        compose.runOnIdle { panelWidth.value = 520.dp }
        compose.onNodeWithTag("dock-level-overlay").assertDoesNotExist()
        dock.performTouchInput { up() }
        assertTrue(events.isEmpty())
        capture("dock-lifecycle-clean")
    }

    @Test fun narrowDockHorizontalScrollAndDynamicCyclesHaveNoSteppedPopup() {
        compose.runOnIdle { panelWidth.value = 260.dp }
        mountPanel()
        compose.onNodeWithTag("dock-Wiper").performTouchInput { down(center); moveBy(Offset(-70f, 0f)); up() }
        compose.onNodeWithTag("dock-overlay-host").assert(SemanticsMatcher.expectValue(DockOverlayVisible, false))
        assertTrue(events.isEmpty())
        compose.onNodeWithTag("dock-Ventilation").performScrollTo().performClick()
        assertEquals(ContentEvent.ControlTapped(ControlId.Ventilation), events.last())
    }

    @Test fun nativeManualFillAndThreeInternalDividersFollowActualHeightAndSystemDensity() {
        val heightDp = mutableStateOf(290.dp)
        val density = mutableStateOf(141f / 160f)
        val level = mutableIntStateOf(0)
        compose.setContent {
            FrameHost {
                CompositionLocalProvider(LocalDensity provides Density(density.value)) {
                    Row(Modifier.fillMaxSize().testTag("quick-native-host"), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        SteppedVerticalControl("雨刮器", 4, level.intValue, "geometry-wiper",
                            Modifier.width(96.dp), height = heightDp.value,
                            onPower = { events += ContentEvent.ControlPowerTapped(ControlId.Wiper) },
                            onCommit = { events += ContentEvent.ControlLevelChanged(ControlId.Wiper, it) },
                            icon = { _, modifier -> Box(modifier.testTag("geometry-wiper-icon")) })
                        ContinuousVerticalControl("屏幕亮度", R.drawable.content_oem_ico_brightness_mid, LevelState(.5f),
                            "geometry-brightness", Modifier.width(96.dp), heightDp.value) { events += ContentEvent.BrightnessChanged(it) }
                        ContinuousVerticalControl("媒体音量", R.drawable.content_oem_ico_volume_2, LevelState(.5f),
                            "geometry-volume", Modifier.width(96.dp), heightDp.value) { events += ContentEvent.VolumeChanged(it) }
                    }
                }
            }
        }
        compose.waitForIdle()
        compose.mainClock.autoAdvance = false
        val base = if (dark) Color(0xFF1A1A1A).toArgb() else Color(0xFFE9E9E9).toArgb()
        val fill = if (dark) Color(0xFF484848).toArgb() else Color.White.toArgb()
        assertNotEquals("both themes expose the active fill against the track", base, fill)
        for (dpi in listOf(141, 212, 320)) for (height in listOf(290.dp, 173.dp)) {
            compose.runOnIdle { density.value = dpi / 160f; heightDp.value = height; level.intValue = 0 }
            advanceTargetTo("geometry-wiper", 0f,
                expectedHeight = (height.value * density.value).roundToInt().toFloat(),
                expectedWidth = (96f * density.value).roundToInt().toFloat())
            compose.mainClock.advanceTimeBy(320)
            for (manual in 0..4) {
                compose.runOnIdle { level.intValue = manual }
                advanceTargetTo("geometry-wiper", listOf(0f, .25f, .5f, .75f, 1f)[manual])
                compose.mainClock.advanceTimeBy(320)
                val frame = capture("geometry-${dpi}dpi-${height.value.toInt()}dp-level-$manual")
                val bounds = compose.onNodeWithTag("geometry-wiper").fetchSemanticsNode().boundsInRoot
                assertEquals("use the measured height at $dpi dpi", height.value * density.value, bounds.height, 1f)
                // Each band centre has a fixed independent expected state. Avoid
                // labels, corners and dividing strokes by sampling the side gutter.
                for ((fraction, band) in listOf(.875f to 1, .625f to 2, .375f to 3, .125f to 4)) {
                    assertEquals("$dpi dpi / $height / level$manual / band$band", if (band <= manual) fill else base,
                        trackPixel(frame, "geometry-wiper", 8f * density.value, bounds.height * fraction))
                }
                assertNativeDividers(frame, "geometry-wiper", density.value, manual, base, fill)
                if (manual in 1..3) {
                    // A four-band fill must terminate at the same quarter-height
                    // boundary as its separator, not at the centre of a band.
                    val edge = bounds.height * listOf(1f, .75f, .5f, .25f, 0f)[manual]
                    assertEquals(base, trackPixel(frame, "geometry-wiper", 8f * density.value, edge - 5f * density.value))
                    assertEquals(fill, trackPixel(frame, "geometry-wiper", 8f * density.value, edge + 5f * density.value))
                }
                for (tag in listOf("geometry-brightness", "geometry-volume")) {
                    val continuous = compose.onNodeWithTag(tag).fetchSemanticsNode().boundsInRoot
                    assertEquals("continuous unfilled track shares the semantic base", base,
                        trackPixel(frame, tag, 8f * density.value, 16f * density.value))
                    assertEquals("continuous active area shares the semantic fill", fill,
                        trackPixel(frame, tag, 8f * density.value, continuous.height - 16f * density.value))
                }
            }
        }
        assertTrue("rendering and geometry changes never emit a command", events.isEmpty())
        compose.mainClock.autoAdvance = true
    }

    @Test fun genericCountsTwoThreeAndSevenDrawTheirOwnBandsAndPreserveLinesBetweenIconAndText() {
        val count = mutableIntStateOf(2)
        val level = mutableIntStateOf(0)
        val height = mutableStateOf(469.dp)
        val commands = mutableListOf<Int>()
        var powerTaps = 0
        compose.setContent {
            FrameHost {
                Box(Modifier.fillMaxSize().testTag("quick-native-host")) {
                    SteppedVerticalControl("档位", count.intValue, level.intValue, "generic-count",
                        Modifier.width(140.dp), height = height.value,
                        onPower = { powerTaps++ }, onCommit = { commands += it },
                        icon = { _, modifier -> Box(modifier.testTag("generic-count-icon")) })
                }
            }
        }
        compose.waitForIdle()
        compose.mainClock.autoAdvance = false
        val base = if (dark) Color(0xFF1A1A1A).toArgb() else Color(0xFFE9E9E9).toArgb()
        val fill = if (dark) Color(0xFF484848).toArgb() else Color.White.toArgb()
        val examples = listOf(
            NativeScaleExample(2, listOf(.25f, .75f), listOf(234.5f), listOf(0f, .5f, 1f)),
            NativeScaleExample(3, listOf(1f / 6f, .5f, 5f / 6f), listOf(156.33333f, 312.66667f),
                listOf(0f, 1f / 3f, 2f / 3f, 1f)),
            NativeScaleExample(7, listOf(1f / 14f, 3f / 14f, 5f / 14f, .5f, 9f / 14f, 11f / 14f, 13f / 14f),
                listOf(67f, 134f, 201f, 268f, 335f, 402f),
                listOf(0f, 1f / 7f, 2f / 7f, 3f / 7f, 4f / 7f, 5f / 7f, 6f / 7f, 1f)),
        )
        examples.forEach { example ->
            compose.runOnIdle { count.intValue = example.count; level.intValue = 0 }
            advanceTargetTo("generic-count", 0f, expectedHeight = 469f, expectedWidth = 140f, expectedCount = example.count)
            compose.mainClock.advanceTimeBy(320)
            for (manual in 0..example.count) {
                compose.runOnIdle { level.intValue = manual }
                advanceTargetTo("generic-count", example.fills[manual], expectedCount = example.count)
                compose.mainClock.advanceTimeBy(320)
                val frame = capture("generic-${example.count}-levels-$manual")
                val bounds = compose.onNodeWithTag("generic-count").fetchSemanticsNode().boundsInRoot
                assertEquals(469f, bounds.height, 0f)
                example.centresFromTop.forEachIndexed { bandFromTop, fraction ->
                    val bandLevel = example.count - bandFromTop
                    assertEquals("count ${example.count} / level $manual / band $bandLevel",
                        if (bandLevel <= manual) fill else base,
                        trackPixel(frame, "generic-count", 8f, bounds.height * fraction))
                }
                assertNativeDividers(frame, "generic-count", 1f, manual, base, fill,
                    expectedY = example.dividers, fillFraction = example.fills[manual])
            }
        }
        // The host font includes its own padding. Use the independently measured
        // icon/text gap to choose a height whose sixth equal division crosses its
        // centre; no production scale or dividing pixels supply this test input.
        val initialBounds = compose.onNodeWithTag("generic-count").fetchSemanticsNode().boundsInRoot
        val initialIcon = compose.onNodeWithTag("generic-count-icon", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        val initialText = compose.onNodeWithTag("generic-count-label", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        val initialGapCentre = (initialIcon.bottom + initialText.top) / 2f
        val gapHeight = (7f * (initialBounds.bottom - initialGapCentre)).roundToInt()
        compose.runOnIdle { count.intValue = 7; height.value = gapHeight.dp; level.intValue = 0 }
        advanceTargetTo("generic-count", 0f, expectedHeight = gapHeight.toFloat(), expectedCount = 7)
        compose.mainClock.advanceTimeBy(320)
        val gapFrame = capture("generic-7-gap-${gapHeight}px")
        val gapBounds = compose.onNodeWithTag("generic-count").fetchSemanticsNode().boundsInRoot
        val gapIcon = compose.onNodeWithTag("generic-count-icon", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        val gapText = compose.onNodeWithTag("generic-count-label", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        val gapDivider = gapBounds.height * 6f / 7f
        val verticalClearancePx = dividerVerticalClearanceDp
        assertTrue("sixth divider $gapDivider must lie in the measured gap: height=$gapHeight icon=$gapIcon text=$gapText",
            gapBounds.top + gapDivider > gapIcon.bottom + verticalClearancePx &&
                gapBounds.top + gapDivider < gapText.top - verticalClearancePx)
        assertNativeDividers(gapFrame, "generic-count", 1f, 0, base, fill,
            expectedY = (1..6).map { gapBounds.height * it / 7f }, fillFraction = 0f)
        assertTrue("empty space between icon and text preserves a full divider at $gapDivider",
            (gapDivider.toInt() - 1..gapDivider.toInt() + 1).any { y ->
                abs(android.graphics.Color.red(trackPixel(gapFrame, "generic-count", gapBounds.width / 2f, y.toFloat())) -
                    android.graphics.Color.red(base)) > 2
            })
        compose.runOnIdle { count.intValue = 7; height.value = 420.dp; level.intValue = 0 }
        advanceTargetTo("generic-count", 0f, expectedHeight = 420f, expectedCount = 7)
        for (manual in listOf(0, 7)) {
            compose.runOnIdle { level.intValue = manual }
            advanceTargetTo("generic-count", if (manual == 0) 0f else 1f, expectedHeight = 420f, expectedCount = 7)
            compose.mainClock.advanceTimeBy(320)
            val frame = capture("generic-7-levels-${manual}-icon-text-overlap-420dp")
            val bounds = compose.onNodeWithTag("generic-count").fetchSemanticsNode().boundsInRoot
            val icon = compose.onNodeWithTag("generic-count-icon", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
            val text = compose.onNodeWithTag("generic-count-label", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
            assertTrue("the fifth line crosses the real icon rectangle", bounds.top + 300f > icon.top && bounds.top + 300f < icon.bottom)
            assertTrue("the sixth line crosses the real text rectangle", bounds.top + 360f > text.top && bounds.top + 360f < text.bottom)
            assertNativeDividers(frame, "generic-count", 1f, manual, base, fill,
                expectedY = listOf(60f, 120f, 180f, 240f, 300f, 360f), fillFraction = if (manual == 0) 0f else 1f)
            val surface = if (manual == 0) base else fill
            assertEquals("no divider is painted beneath the blank icon", surface,
                trackPixel(frame, "generic-count", bounds.width / 2f, 300f))
            assertEquals("text clearance protects the empty margin next to the real text", surface,
                trackPixel(frame, "generic-count", text.left - bounds.left - 1f, 360f))
            for (y in listOf(300f, 360f)) for (x in listOf(30f, 110f)) {
                assertTrue("divider resumes immediately outside occupied content, x=$x y=$y",
                    (y.toInt() - 1..y.toInt() + 1).any { row ->
                        abs(android.graphics.Color.red(trackPixel(frame, "generic-count", x, row.toFloat())) -
                            android.graphics.Color.red(surface)) > 2
                    })
            }
        }
        assertTrue("rendering configurable counts cannot emit an ordinal command", commands.isEmpty())
        assertEquals(0, powerTaps)
        compose.mainClock.autoAdvance = true
    }

    @Test fun genericSevenLevelGesturesCommitOnceAndCancelWhenConfigurationChanges() {
        val count = mutableIntStateOf(7)
        val height = mutableStateOf(420.dp)
        val confirmed = 3
        val commands = mutableListOf<Int>()
        var powerTaps = 0
        compose.setContent {
            FrameHost {
                Box(Modifier.fillMaxSize().testTag("quick-native-host")) {
                    SteppedVerticalControl("档位", count.intValue, confirmed, "generic-touch",
                        Modifier.width(140.dp), height = height.value,
                        onPower = { powerTaps++ }, onCommit = { commands += it },
                        icon = { _, modifier -> Box(modifier) })
                }
            }
        }
        compose.waitForIdle()
        compose.mainClock.autoAdvance = false
        val bar = compose.onNodeWithTag("generic-touch")
        for ((y, expected) in listOf(30f to 7, 90f to 6, 150f to 5, 210f to 4, 270f to 3, 330f to 2, 390f to 1, 419f to 1, 420f to 0, 440f to 0)) {
            commands.clear()
            bar.performTouchInput {
                down(Offset(center.x, if (y < 210f) 390f else 30f))
                moveTo(Offset(center.x, y))
            }
            advanceTargetTo("generic-touch", listOf(0f, 1f / 7f, 2f / 7f, 3f / 7f, 4f / 7f, 5f / 7f, 6f / 7f, 1f)[expected])
            assertTrue("generic drag is a presentation draft", commands.isEmpty())
            bar.performTouchInput { up() }
            assertEquals(listOf(expected), commands)
            advanceTargetTo("generic-touch", 3f / 7f)
        }
        commands.clear()
        bar.performTouchInput { click(Offset(center.x, 419f)) }
        assertEquals(1, powerTaps)
        assertTrue(commands.isEmpty())
        bar.performTouchInput { down(Offset(center.x, 390f)); moveTo(Offset(center.x, 30f)); cancel() }
        assertTrue("CANCEL cannot commit a generic ordinal", commands.isEmpty())
        advanceTargetTo("generic-touch", 3f / 7f)
        bar.performTouchInput { down(Offset(center.x, 390f)); moveTo(Offset(center.x, 30f)) }
        advanceTargetTo("generic-touch", 1f)
        compose.runOnIdle { count.intValue = 3 }
        compose.mainClock.advanceTimeUntil(1_000) {
            val node = bar.fetchSemanticsNode()
            node.config[SemanticsProperties.ProgressBarRangeInfo].range == 0f..3f && !node.config[ControlDragging]
        }
        bar.performTouchInput { up() }
        assertTrue("changing configured count cancels the old gesture", commands.isEmpty())
        advanceTargetTo("generic-touch", 1f, expectedCount = 3)
        bar.performTouchInput { down(Offset(center.x, 30f)); moveTo(Offset(center.x, 210f)); up() }
        assertEquals("the next pointer uses the new three-level scale", listOf(2), commands)
        commands.clear()
        bar.performTouchInput { down(Offset(center.x, 30f)); moveTo(Offset(center.x, 390f)) }
        advanceTargetTo("generic-touch", 1f / 3f)
        compose.runOnIdle { height.value = 300.dp }
        compose.mainClock.advanceTimeUntil(1_000) {
            val node = bar.fetchSemanticsNode()
            node.boundsInRoot.height == 300f && !node.config[ControlDragging]
        }
        bar.performTouchInput { up() }
        assertTrue("changing actual height cancels the old gesture", commands.isEmpty())
        advanceTargetTo("generic-touch", 1f, expectedHeight = 300f, expectedCount = 3)
        bar.performTouchInput { down(Offset(center.x, 30f)); moveTo(Offset(center.x, 150f)); up() }
        assertEquals("a new gesture measures its new actual height", listOf(2), commands)
        advanceTargetTo("generic-touch", 1f, expectedCount = 3)
        bar.assert(SemanticsMatcher.expectValue(SemanticsProperties.ProgressBarRangeInfo,
            ProgressBarRangeInfo(3f, 0f..3f, 2)))
        compose.mainClock.autoAdvance = true
    }

    private data class NativeScaleExample(val count: Int, val centresFromTop: List<Float>,
        val dividers: List<Float>, val fills: List<Float>)

    @Test fun animatedFillChangesNativePixelsWithoutRepeatedLabelCompositionOrMeasurement() {
        val target = mutableFloatStateOf(.25f)
        var labelCompositions = 0
        var labelMeasures = 0
        compose.setContent {
            FrameHost {
                Box(Modifier.fillMaxSize().testTag("quick-native-host")) {
                    VerticalControlSurface("雨刮器", "draw-phase-wiper", QuickControlType.SteppedVertical,
                        target.floatValue, false, Modifier.width(108.dp).height(290.dp), SteppedControlScale(4)) { modifier ->
                        SideEffect { labelCompositions++ }
                        Box(modifier.layout { measurable, constraints ->
                            labelMeasures++
                            val placeable = measurable.measure(constraints)
                            layout(placeable.width, placeable.height) { placeable.place(0, 0) }
                        })
                    }
                }
            }
        }
        compose.waitForIdle()
        compose.mainClock.autoAdvance = false
        compose.runOnIdle { target.floatValue = .75f }
        advanceTargetTo("draw-phase-wiper", .75f)
        val first = capture("draw-phase-fill-start")
        val compositionsAfterTarget = labelCompositions
        val measuresAfterTarget = labelMeasures
        compose.mainClock.advanceTimeBy(320)
        val final = capture("draw-phase-fill-end")
        val base = if (dark) Color(0xFF1A1A1A).toArgb() else Color(0xFFE9E9E9).toArgb()
        val fill = if (dark) Color(0xFF484848).toArgb() else Color.White.toArgb()
        assertEquals("early frame preserves the old unfilled region", base, trackPixel(first, "draw-phase-wiper", 8f, 155f))
        assertEquals("animation visibly fills that region", fill, trackPixel(final, "draw-phase-wiper", 8f, 155f))
        assertEquals("animation frames do not recompose the label", compositionsAfterTarget, labelCompositions)
        assertEquals("animation frames do not remeasure the label", measuresAfterTarget, labelMeasures)
        compose.mainClock.autoAdvance = true
    }

    @Test fun everyFullManualBandCommitsItsOwnLevelAndOnlyTheBottomEdgeSelectsOff() {
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls +
            (ControlId.Wiper to ControlState(actual = 2, rememberedLevel = 2))) }
        mountPanel()
        val bar = compose.onNodeWithTag("control-Wiper")
        val samples = listOf(.125f to 4, .375f to 3, .625f to 2, .875f to 1, .99f to 1, 1f to 0, 1.08f to 0)
        for ((touchFraction, expected) in samples) {
            events.clear()
            bar.performTouchInput {
                down(Offset(center.x, height * if (touchFraction < .5f) .9f else .1f))
                moveTo(Offset(center.x, height * touchFraction))
            }
            assertTrue("band selection remains a local draft", events.isEmpty())
            bar.assert(SemanticsMatcher.expectValue(ControlDraft, listOf(0f, .25f, .5f, .75f, 1f)[expected]))
            bar.performTouchInput { up() }
            assertEquals("one committed target at touch fraction $touchFraction",
                listOf(ContentEvent.ControlLevelChanged(ControlId.Wiper, expected)), events)
            assertEquals("UI must preserve confirmed state", 2, state.value.controls.getValue(ControlId.Wiper).actual)
            assertEquals("UI must preserve confirmed manual memory", 2, state.value.controls.getValue(ControlId.Wiper).rememberedLevel)
        }
        events.clear()
        bar.performTouchInput { click(Offset(center.x, height * .99f)) }
        assertEquals("a tap remains a power toggle even in the bottom manual band",
            listOf(ContentEvent.ControlPowerTapped(ControlId.Wiper)), events)
    }

    @Test fun dockAbsoluteSelectionIsStableAcrossOpeningLevelsAndFirstSlopPositions() {
        mountPanel()
        val dock = compose.onNodeWithTag("dock-Wiper")
        val targetLevel = 3
        // One physical point in the floating track is replayed against every
        // confirmed opening mode, including OFF and AUTO+remembered manual.
        for (actual in listOf(0, 1, 2, 3, 4, 5)) {
            for (directFirstMove in listOf(false, true)) {
                compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls +
                    (ControlId.Wiper to ControlState(actual = actual, rememberedLevel = 3))) }
                compose.waitForIdle()
                events.clear()
                val slot = dock.fetchSemanticsNode().boundsInRoot
                val panel = compose.onNodeWithTag("quick-native-host").fetchSemanticsNode().boundsInRoot
                val planned = expectedDockOverlayBounds(panel, slot)
                val target = Offset(planned.center.x, planned.top + planned.height * .30f)
                if (directFirstMove) {
                    // A single large first event must enter the real overlay,
                    // not merely open it and keep the remembered level.
                    dock.performTouchInput { down(center); moveTo(pointerInDock(slot, target)) }
                } else {
                    dock.performTouchInput { down(center); moveBy(Offset(0f, -36f)) }
                    compose.onNodeWithTag("dock-overlay-host").assert(
                        SemanticsMatcher.expectValue(DockOverlayVisible, true))
                        .assert(SemanticsMatcher.expectValue(DockOverlaySelecting, false))
                    val opened = compose.onNodeWithTag("dock-level-overlay").fetchSemanticsNode().boundsInRoot
                    val samePoint = Offset(opened.center.x, opened.top + opened.height * .30f)
                    dock.performTouchInput { moveTo(pointerInDock(slot, samePoint)) }
                }
                compose.onNodeWithTag("dock-overlay-host").assert(
                    SemanticsMatcher.expectValue(DockOverlayVisible, true))
                    .assert(SemanticsMatcher.expectValue(DockOverlaySelecting, true))
                compose.onNodeWithTag("dock-level-overlay").assert(
                    SemanticsMatcher.expectValue(DockOverlayLevel, targetLevel))
                dock.performTouchInput { up() }
                val expected = if (actual == targetLevel) emptyList() else
                    listOf(ContentEvent.ControlLevelChanged(ControlId.Wiper, targetLevel))
                assertEquals("absolute level selection / actual=$actual / direct=$directFirstMove", expected, events)
                compose.mainClock.advanceTimeBy(240)
                compose.waitUntil(2_000) {
                    compose.onAllNodesWithTag("dock-level-overlay").fetchSemanticsNodes().isEmpty()
                }
            }
        }
    }

    @Test fun dockFirstEntryUsesAbsoluteBandInsteadOfRebasingFromOpeningLevel() {
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls +
            (ControlId.Wiper to ControlState(actual = 3, rememberedLevel = 3))) }
        mountPanel()
        val dock = compose.onNodeWithTag("dock-Wiper")
        dock.performTouchInput { down(center); moveBy(Offset(0f, -36f)) }
        compose.onNodeWithTag("dock-level-overlay").assert(
            SemanticsMatcher.expectValue(DockOverlayLevel, 3))
            .assert(SemanticsMatcher.expectValue(DockOverlaySelecting, false))
        val slot = dock.fetchSemanticsNode().boundsInRoot
        val overlay = compose.onNodeWithTag("dock-level-overlay").fetchSemanticsNode().boundsInRoot
        val bottomBand = Offset(overlay.center.x, overlay.top + overlay.height * .875f)
        dock.performTouchInput { moveTo(pointerInDock(slot, bottomBand)) }
        compose.onNodeWithTag("dock-overlay-host").assert(
            SemanticsMatcher.expectValue(DockOverlaySelecting, true))
        compose.onNodeWithTag("dock-level-overlay").assert(
            SemanticsMatcher.expectValue(DockOverlayLevel, 1))
        dock.performTouchInput { cancel() }
        assertTrue("cancel after direct entry must not commit", events.isEmpty())
        compose.onNodeWithTag("dock-overlay-host").assert(
            SemanticsMatcher.expectValue(DockOverlaySelecting, false))
    }

    @Test fun dockEnteredSelectionIgnoresHorizontalDriftAndClampsOutsideVerticalBounds() {
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls +
            (ControlId.Wiper to ControlState(actual = 3, rememberedLevel = 3))) }
        mountPanel()
        val dock = compose.onNodeWithTag("dock-Wiper")
        dock.performTouchInput { down(center); moveBy(Offset(0f, -36f)) }
        compose.mainClock.advanceTimeBy(120)
        val slot = dock.fetchSemanticsNode().boundsInRoot
        val overlay = compose.onNodeWithTag("dock-level-overlay").fetchSemanticsNode().boundsInRoot
        val inside = Offset(overlay.center.x, overlay.top + overlay.height * .62f)
        dock.performTouchInput { moveTo(pointerInDock(slot, inside)) }
        compose.onNodeWithTag("dock-overlay-host").assert(
            SemanticsMatcher.expectValue(DockOverlaySelecting, true))
        compose.onNodeWithTag("dock-level-overlay").assert(
            SemanticsMatcher.expectValue(DockOverlayLevel, 2))
        // Once selection has started, horizontal motion outside the visual
        // track must not cancel the pointer or alter its level.
        val outsideX = overlay.right + 72f
        dock.performTouchInput { moveTo(pointerInDock(slot, Offset(outsideX, inside.y))) }
        compose.onNodeWithTag("dock-level-overlay").assert(
            SemanticsMatcher.expectValue(DockOverlayLevel, 2))
            .assert(SemanticsMatcher.expectValue(DockOverlaySelecting, true))
        dock.performTouchInput { moveTo(pointerInDock(slot, Offset(outsideX, overlay.bottom + 2f))) }
        compose.onNodeWithTag("dock-level-overlay").assert(SemanticsMatcher.expectValue(DockOverlayLevel, 0))
        dock.performTouchInput { moveTo(pointerInDock(slot, Offset(outsideX, overlay.top - 2f))) }
        compose.onNodeWithTag("dock-level-overlay").assert(
            SemanticsMatcher.expectValue(DockOverlayLevel, 4))
            .assert(SemanticsMatcher.expectValue(DockOverlaySelecting, true))
        dock.performTouchInput { cancel() }
        assertTrue("cancel after out-of-bounds tracking must not commit", events.isEmpty())
    }

    @Test fun dockLargeFirstEventEntersTopBandAndActiveTargetPaintsInTheSameNativeFrame() {
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls +
            (ControlId.Wiper to ControlState(actual = 1, rememberedLevel = 3))) }
        mountPanel()
        compose.mainClock.autoAdvance = false
        val dock = compose.onNodeWithTag("dock-Wiper")
        val slot = dock.fetchSemanticsNode().boundsInRoot
        val panel = compose.onNodeWithTag("quick-native-host").fetchSemanticsNode().boundsInRoot
        val planned = expectedDockOverlayBounds(panel, slot)
        val topPoint = Offset(planned.center.x, planned.top + 1f)
        dock.performTouchInput { down(center); moveTo(pointerInDock(slot, topPoint)) }
        compose.mainClock.advanceTimeByFrame()
        compose.onNodeWithTag("dock-overlay-host").assert(
            SemanticsMatcher.expectValue(DockOverlaySelecting, true))
        compose.onNodeWithTag("dock-level-overlay").assert(
            SemanticsMatcher.expectValue(DockOverlayLevel, 4))
        assertTrue("large first event must not commit before UP", events.isEmpty())
        dock.performTouchInput { cancel() }
        assertTrue(events.isEmpty())

        // Reopen and enter a fractional physical point. Capture immediately:
        // a 70ms chase animation must not hide a stale active target.
        dock.performTouchInput { down(center); moveBy(Offset(0f, -36f)) }
        compose.mainClock.advanceTimeBy(200)
        val opened = compose.onNodeWithTag("dock-level-overlay").fetchSemanticsNode().boundsInRoot
        val activePoint = Offset(opened.center.x, opened.top + opened.height * .62f)
        dock.performTouchInput { moveTo(pointerInDock(slot, activePoint)) }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        compose.onNodeWithTag("dock-level-overlay").assert(
            SemanticsMatcher.expectValue(DockOverlayLevel, 2))
        val frame = capture("dock-active-level-two-same-frame")
        val base = if (dark) Color(0xFF1A1A1A).toArgb() else Color(0xFFE9E9E9).toArgb()
        val fill = if (dark) Color(0xFF484848).toArgb() else Color.White.toArgb()
        assertEquals("active target is not delayed above its half fill", base,
            trackPixel(frame, "dock-level-overlay", 8f, opened.height * .375f))
        assertEquals("active target is painted at its selected half fill", fill,
            trackPixel(frame, "dock-level-overlay", 8f, opened.height * .625f))
        dock.performTouchInput { cancel() }
        compose.mainClock.autoAdvance = true
    }

    /** Advance real test frames until the target composition and optional layout are observable. */
    private fun advanceTargetTo(tag: String, expected: Float, expectedHeight: Float? = null, expectedWidth: Float? = null,
        expectedCount: Int? = null) {
        compose.mainClock.advanceTimeUntil(1_000) {
            val node = compose.onNodeWithTag(tag).fetchSemanticsNode()
            node.config[ControlDraft] == expected &&
                (expectedHeight == null || abs(node.boundsInRoot.height - expectedHeight) < .5f) &&
                (expectedWidth == null || abs(node.boundsInRoot.width - expectedWidth) < .5f) &&
                (expectedCount == null || node.config[SemanticsProperties.ProgressBarRangeInfo].range == 0f..expectedCount.toFloat())
        }
        compose.waitForIdle()
        // Start the newly observed animation before its elapsed-time budget.
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
    }

    private fun preload() {
        val context = RuntimeEnvironment.getApplication()
        for (name in listOf("ico_wiper_1.json", "ico_wiper_2.json", "ico_wiper_3.json", "ico_wiper_4.json",
            "ico_rear_wiper.json", "ico_wash_rear_derived.json")) {
            assertNotNull(name, LottieCompositionFactory.fromAssetSync(context, "content-oem/$name").value)
        }
    }

    private fun mountActualIconAdapters() {
        preload()
        compose.setContent {
            FrameHost {
                Row(Modifier.fillMaxWidth().height(220.dp).background(Color(0xFF202020)).testTag("quick-native-host")) {
                    VehicleControlOemIcon(ControlId.Wiper, state.value.controls.getValue(ControlId.Wiper), dark,
                        Modifier.size(160.dp).testTag("native-front"))
                    ShortcutOemIcon(ShortcutId.RearWiper, state.value.copy(dark = dark), rearWiperIconRecipe(false, dark).resource,
                        Modifier.size(160.dp).testTag("native-rear"))
                    ShortcutOemIcon(ShortcutId.RearWash, state.value.copy(dark = dark), rearWashIconRecipe(false, dark).resource,
                        Modifier.size(160.dp).testTag("native-wash"))
                }
            }
        }
        compose.waitForIdle()
        compose.waitUntil(3_000) { listOf("native-front", "native-rear", "native-wash").all {
            compose.onNodeWithTag(it).fetchSemanticsNode().config[IconAnimationReady]
        } }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
    }

    /** Advance the real production animation to an explicit early/middle phase. */
    private fun advanceIconTo(tag: String, minimum: Float, maximum: Float) {
        compose.mainClock.advanceTimeUntil(1_500) {
            val current = compose.onNodeWithTag(tag).fetchSemanticsNode().config
            current[IconAnimationReady] && current[IconAnimationPlaying] && current[IconAnimationProgress] >= minimum
        }
        compose.waitForIdle()
        val progress = compose.onNodeWithTag(tag).fetchSemanticsNode().config[IconAnimationProgress]
        assertTrue("$tag captured in the requested animation phase: $progress", progress >= minimum && progress < maximum)
    }

    private fun advanceIconToTail(tag: String) {
        compose.mainClock.advanceTimeUntil(1_500) {
            val current = compose.onNodeWithTag(tag).fetchSemanticsNode().config
            current[IconAnimationReady] && !current[IconAnimationPlaying] && current[IconAnimationProgress] == 1f
        }
        compose.waitForIdle()
    }

    @Test fun actualWiperAndRearAdaptersPaintColoredMiddleAndTailWithoutWhiteLeaks() {
        mountActualIconAdapters()
        compose.mainClock.autoAdvance = false
        val recipe = vehicleControlIconRecipe(ControlId.Wiper, 0, dark)
        val original = requireNotNull(LottieCompositionFactory.fromAssetSync(RuntimeEnvironment.getApplication(),
            "content-oem/${recipe.asset}").value)
        val drawable = LottieDrawable().apply { setComposition(original) }
        val opacityPath = recipe.animationPathOpacities.keys.single()
        val resolved = drawable.resolveKeyPath(KeyPath(*opacityPath.toTypedArray()))
        assertEquals("OFF opacity must resolve exactly its Lv1 stroke: $resolved", 1, resolved.size)
        assertTrue("Lv1 suppression must never target the white matte", resolved.single().toString().contains("Lv1") && !resolved.single().toString().contains("mask"))
        for (level in listOf(1, 2, 3, 4, 0)) {
             compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Wiper to ControlState(actual = level)) +
                 (ControlId.RearWiper to ControlState(actual = if (level > 0) 1 else 0)) +
                 (ControlId.RearWash to ControlState(actual = if (level > 0) 1 else 0))) }
            advanceIconTo("native-front", .05f, .18f)
            val first = capture("wipers-$level-first")
            assertPalette(first, "native-front", level > 0)
            if (level == 0) assertFrontLevelMark(first, false)
            advanceIconTo("native-front", .32f, .50f)
            val middle = capture("wipers-$level-middle")
            assertPalette(middle, "native-front", level > 0)
            if (level == 0) assertFrontLevelMark(middle, false)
            advanceIconToTail("native-front")
            val tail = capture("wipers-$level-tail")
            assertPalette(tail, "native-front", level > 0)
            for (tag in listOf("native-rear", "native-wash")) {
                assertPalette(first, tag, level > 0)
                assertPalette(middle, tag, level > 0)
                assertPalette(tail, tag, level > 0)
            }
            assertFrontLevelMark(tail, level > 0)
            compose.onNodeWithTag("native-front").assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        }
        compose.mainClock.autoAdvance = true
    }

    @Test fun washUserCyclePlaysOnceThenFalseAndPauseKeepTheRealTailWithoutReplay() {
        mountActualIconAdapters()
        compose.mainClock.autoAdvance = false
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.RearWash to ControlState(actual = 1))) }
        advanceIconTo("native-wash", .05f, .18f)
        assertPalette(capture("wash-on-first"), "native-wash", true)
        advanceIconTo("native-wash", .32f, .50f)
        assertPalette(capture("wash-on-middle"), "native-wash", true)
        advanceIconTo("native-wash", 30f / 59f, 32f / 59f)
        val cleared = capture("wash-on-pulse-cleared")
        assertPalette(cleared, "native-wash", true)
        assertWashWater(cleared, false)
        advanceIconTo("native-wash", .66f, .82f)
        val secondFill = capture("wash-on-second-fill")
        assertPalette(secondFill, "native-wash", true)
        assertWashWater(secondFill, true)
        advanceIconToTail("native-wash")
        val tail = capture("wash-on-tail")
        assertPalette(tail, "native-wash", true)
        assertWashWater(tail, true)
        compose.runOnIdle { state.value = state.value.copy(time = "12:25") }
        compose.mainClock.advanceTimeBy(160)
        assertArrayEquals(iconPixels(tail, "native-wash"), iconPixels(capture("wash-on-held"), "native-wash"))
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.RearWash to ControlState(actual = 0))) }
        advanceIconTo("native-wash", .05f, .18f)
        assertPalette(capture("wash-off-first"), "native-wash", false)
        advanceIconTo("native-wash", .32f, .50f)
        compose.runOnIdle { owner.lifecycle.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE) }
        compose.mainClock.advanceTimeBy(64)
        compose.onNodeWithTag("native-wash").assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        val paused = capture("wash-only-pause-tail")
        assertPalette(paused, "native-wash", false)
        compose.runOnIdle { owner.lifecycle.handleLifecycleEvent(Lifecycle.Event.ON_RESUME) }
        compose.mainClock.advanceTimeBy(160)
        compose.onNodeWithTag("native-wash").assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        assertArrayEquals(iconPixels(paused, "native-wash"), iconPixels(capture("wash-resume-no-replay"), "native-wash"))
        compose.mainClock.autoAdvance = true
    }

    private fun assertWashWater(bitmap: Bitmap, visible: Boolean) {
        val bounds = compose.onNodeWithTag("native-wash").fetchSemanticsNode().boundsInRoot
        val width = bounds.width.toInt(); val height = bounds.height.toInt()
        val pixels = iconPixels(bitmap, "native-wash")
        var waterInk = 0; var waterBlue = 0; var windowBlue = 0
        // Static OEM window occupies y=103.125..246.875 of 300. These bands
        // keep a margin outside its contours and sample only animated water.
        for (y in 0 until height) for (x in 0 until width) {
            val pixel = pixels[y * width + x]
            val r = android.graphics.Color.red(pixel); val g = android.graphics.Color.green(pixel); val b = android.graphics.Color.blue(pixel)
            val blue = abs(r - 63) <= 10 && abs(g - 169) <= 10 && abs(b - 255) <= 10
            if (y < (height * .30f).toInt() || y >= (height * .84f).toInt()) {
                if (abs(r - 32) > 4 || abs(g - 32) > 4 || abs(b - 32) > 4) waterInk++
                if (blue) waterBlue++
            } else if (x < (width * .42f).toInt() || x >= (width * .58f).toInt()) {
                if (blue) windowBlue++
            }
        }
        assertTrue("static window must remain blue while water clears/fills", windowBlue > 12)
        if (visible) assertTrue("second fill must reveal actual blue water pixels: $waterBlue", waterBlue > 12)
        else assertEquals("30..32 frame gap must erase water completely without erasing the window", 0, waterInk)
    }

    private fun assertFrontLevelMark(bitmap: Bitmap, visible: Boolean) {
        val bounds = compose.onNodeWithTag("native-front").fetchSemanticsNode().boundsInRoot
        val width = bounds.width.toInt(); val height = bounds.height.toInt()
        val pixels = iconPixels(bitmap, "native-front")
        var ink = 0
        // OEM Lv1 is centred at (38,38) in its 300x300 composition. This ROI
        // surrounds only that small horizontal mark, above all windshield ink.
        for (y in (height * .07f).toInt() until (height * .18f).toInt()) {
            for (x in (width * .05f).toInt() until (width * .33f).toInt()) {
                val pixel = pixels[y * width + x]
                if (abs(android.graphics.Color.red(pixel) - 32) > 4 || abs(android.graphics.Color.green(pixel) - 32) > 4 ||
                    abs(android.graphics.Color.blue(pixel) - 32) > 4) ink++
            }
        }
        if (visible) assertTrue("manual Lv1 region must contain actual mark pixels: $ink", ink > 12)
        else assertEquals("OFF must suppress all actual Lv1 ink while keeping body/matte intact", 0, ink)
    }

    private fun assertPalette(bitmap: Bitmap, tag: String, active: Boolean): Int {
        val expected = if (active) intArrayOf(63, 169, 255) else if (dark) intArrayOf(232, 232, 232) else intArrayOf(39, 48, 59)
        val pixels = iconPixels(bitmap, tag)
        val count = pixels.count { pixel -> abs(android.graphics.Color.red(pixel) - expected[0]) <= 10 &&
            abs(android.graphics.Color.green(pixel) - expected[1]) <= 10 && abs(android.graphics.Color.blue(pixel) - expected[2]) <= 10 }
        assertTrue("$tag must contain nonzero actual expected glyph ink", count > 12)
        assertTrue("white source or matte must not leak into colored/basic glyphs", pixels.none { pixel ->
            android.graphics.Color.red(pixel) >= 248 && android.graphics.Color.green(pixel) >= 248 && android.graphics.Color.blue(pixel) >= 248 })
        return count
    }

    private fun expectedDockOverlayBounds(panel: androidx.compose.ui.geometry.Rect, slot: androidx.compose.ui.geometry.Rect): androidx.compose.ui.geometry.Rect {
        val width = 140f.coerceAtMost(panel.width)
        val height = 290f.coerceAtMost(panel.height)
        val x = (slot.center.x - panel.left - width / 2f).coerceIn(0f, panel.width - width)
        val y = (slot.top - panel.top - 8f - height).coerceIn(0f, panel.height - height)
        return androidx.compose.ui.geometry.Rect(panel.left + x, panel.top + y,
            panel.left + x + width, panel.top + y + height)
    }

    private fun pointerInDock(slot: androidx.compose.ui.geometry.Rect, rootPoint: Offset): Offset =
        Offset(rootPoint.x - slot.left, rootPoint.y - slot.top)

    private fun trackPixel(bitmap: Bitmap, tag: String, x: Float, y: Float): Int {
        val host = compose.onNodeWithTag("quick-native-host").fetchSemanticsNode().boundsInRoot
        val track = compose.onNodeWithTag(tag).fetchSemanticsNode().boundsInRoot
        return bitmap.getPixel((track.left - host.left + x).toInt(), (track.top - host.top + y).toInt())
    }

    private fun assertNativeDividers(bitmap: Bitmap, tag: String, density: Float, level: Int, base: Int, fill: Int,
        expectedY: List<Float>? = null, fillFraction: Float? = null) {
        val host = compose.onNodeWithTag("quick-native-host").fetchSemanticsNode().boundsInRoot
        val bounds = compose.onNodeWithTag(tag).fetchSemanticsNode().boundsInRoot
        val bitmapLeft = bounds.left - host.left
        val bitmapTop = bounds.top - host.top
        val divider = if (dark) 92 else 216
        val edge = bounds.height * (1f - (fillFraction ?: listOf(0f, .25f, .5f, .75f, 1f)[level]))
        fun isStroke(x: Float, y: Int): Boolean {
            val pixel = bitmap.getPixel((bitmapLeft + x).toInt(), (bitmapTop + y).toInt())
            val red = android.graphics.Color.red(pixel)
            val green = android.graphics.Color.green(pixel)
            val blue = android.graphics.Color.blue(pixel)
            val background = android.graphics.Color.red(if (y + .5f >= edge) fill else base)
            // Fractional px widths blend the independent divider token with the
            // known underlying surface. Require visible contrast in its direction.
            return abs(red - green) <= 1 && abs(red - blue) <= 1 &&
                red in minOf(background, divider)..maxOf(background, divider) &&
                abs(red - background) > 2 && (red - background) * (divider - background) > 0
        }
        val left = 8f * density
        val right = bounds.width - 8f * density
        val expected = expectedY ?: listOf(bounds.height * .25f, bounds.height * .5f, bounds.height * .75f)
        val first = kotlin.math.ceil(6f * density).toInt()
        val last = (bounds.height - 6f * density).toInt()
        for (x in listOf(left, right)) {
            val rows = (first until last).filter { isStroke(x, it) }
            val groups = mutableListOf<MutableList<Int>>()
            rows.forEach { y ->
                if (groups.isEmpty() || y != groups.last().last() + 1) groups += mutableListOf(y)
                else groups.last() += y
            }
            assertEquals("every internal boundary remains visible at both sides: $groups", expected.size, groups.size)
            groups.zip(expected).forEach { (group, y) ->
                assertTrue("divider belongs to expected measured-height y=$y, pixels=$group",
                    abs((group.first() + group.last() + 1) / 2f - y) <= 1.5f)
            }
        }
        val obstacles = listOf("$tag-icon", "$tag-label").map { obstacleTag ->
            val rectangle = compose.onNodeWithTag(obstacleTag, useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
            androidx.compose.ui.geometry.Rect(rectangle.left - bounds.left - 6f * density, rectangle.top - bounds.top - 2f * density,
                rectangle.right - bounds.left + 6f * density, rectangle.bottom - bounds.top + 2f * density)
        }
        val radius = kotlin.math.ceil(density).toInt() + 1
        for (y in expected) {
            val activeObstacles = obstacles.filter { y >= it.top && y <= it.bottom }
            for (x in listOf(bounds.width * .25f, bounds.width * .5f, bounds.width * .75f)) {
                val rows = y.toInt() - radius..y.toInt() + radius
                if (activeObstacles.none { x >= it.left && x <= it.right }) {
                    assertTrue("divider spans every unoccupied point at x=$x, y=$y", rows.any { isStroke(x, it) })
                }
                // Protected content is checked separately against a solid OFF/full
                // surface, so glyph antialiasing and a fractional fill edge cannot
                // be mistaken for the neutral dividing stroke.
            }
        }
    }

    private fun iconPixels(bitmap: Bitmap, tag: String): IntArray {
        val host = compose.onNodeWithTag("quick-native-host").fetchSemanticsNode().boundsInRoot
        val bounds = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        val x = (bounds.left - host.left).toInt(); val y = (bounds.top - host.top).toInt()
        val width = bounds.width.toInt(); val height = bounds.height.toInt()
        return IntArray(width * height).also { bitmap.getPixels(it, 0, width, x, y, width, height) }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture(name: String): Bitmap {
        compose.waitForIdle()
        val node = compose.onNodeWithTag("quick-native-host").fetchSemanticsNode()
        val root = node.root as ViewRootForTest
        val bounds = node.boundsInRoot
        val bitmap = compose.runOnIdle { Bitmap.createBitmap(bounds.width.toInt(), bounds.height.toInt(), Bitmap.Config.ARGB_8888).also {
            val canvas = Canvas(it); canvas.translate(-bounds.left, -bounds.top); root.view.draw(canvas)
        } }
        val workspace = generateSequence(File(requireNotNull(System.getProperty("user.dir")))) { it.parentFile }
            .first { File(it, "source/amap-9.5.0.600013/content-compose").isDirectory }
        val directory = File(workspace, "apk-work/ui-stepped-geometry/api-${Build.VERSION.SDK_INT}")
        assertTrue(directory.isDirectory || directory.mkdirs())
        File(directory, "${if (dark) "dark" else "light"}-$name.png").outputStream().use {
            assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
        return bitmap
    }

    private tailrec fun Context.activity(): Activity = when (this) {
        is Activity -> this
        is ContextWrapper -> baseContext.activity()
        else -> error("Native Compose fixture needs an Activity")
    }
}

@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class QuickControlsNativeDarkTest : QuickControlsNativeTest() { override val dark = true }

@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
open class QuickControlsApi28NativeTest : QuickControlsNativeTest()

@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class QuickControlsApi28NativeDarkTest : QuickControlsApi28NativeTest() { override val dark = true }
