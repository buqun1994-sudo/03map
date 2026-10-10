package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.width
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.text.TextLayoutResult
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.core.graphics.ColorUtils
import kotlin.math.roundToInt
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Exercise the standard Material controls through real pointer and semantic actions. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
open class SettingsControlsTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()

    private fun mount(width: Dp = 360.dp, content: @Composable () -> Unit) {
        compose.setContent {
            ContentTheme(dark) {
                CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(dark)) {
                    Column(Modifier.width(width)) { content() }
                }
            }
        }
        compose.waitForIdle()
    }

    @Test fun designAndCombinedValueLabelKeepSettingsIndependentFromVehicleSelection() {
        val design = settingsDesign(dark)
        assertEquals(if (dark) 0xFF0F0F0F.toInt() else 0xFFF4F4F4.toInt(), design.page.toArgb())
        assertEquals(design.sliderFill.toArgb(), design.selected.toArgb())
        assertEquals(0xFFFFFFFF.toInt(), design.selectedText.toArgb())
        assertEquals(0xFF33C458.toInt(), design.onSwitchTrack.toArgb())
        assertEquals(0xFF0086FD.toInt(), design.sliderFill.toArgb())
        assertEquals(56.dp, design.segmentHeight)
        assertEquals(60.dp, design.switchWidth)
        assertEquals(30.dp, design.switchHeight)
        assertEquals(24.dp, design.paddingFor(399.dp))
        assertEquals(24.dp, design.paddingFor(400.dp))
        assertEquals(48.dp, design.sectionGap)
        assertEquals(24.dp, design.itemGap)
        assertEquals(12.dp, design.smallGap)
        assertEquals(40.dp, design.controlHeight)
        assertEquals(48.dp, design.minimumTouchHeight)
        assertEquals(60.dp, design.colorHeight)
        var vehicleSelected = 0
        mount {
            vehicleSelected = LocalContentColors.current.selectedSurface.toArgb()
            SettingsValueLabel("歌词颜色", "#799CAB")
        }
        compose.onNodeWithText("歌词颜色·#799CAB").assertExists()
        assertEquals(if (dark) 0xFF303030.toInt() else 0xFFE4E4E4.toInt(), vehicleSelected)
    }

    @Test fun navigationAndSwitchUseOneClickAndRejectCancellationOrDisabledSemantics() {
        val enabled = mutableStateOf(true)
        val checked = mutableStateOf(false)
        var navigations = 0
        var toggles = 0
        mount {
            SettingsNavigationItem("歌词", Icons.Default.Settings, { navigations++ },
                enabled = enabled.value, tag = "navigation")
            SettingsToggle(checked.value, { checked.value = it; toggles++ },
                modifier = Modifier.semantics { contentDescription = "按声部布局" },
                enabled = enabled.value, tag = "toggle")
        }
        compose.onNodeWithTag("navigation").performTouchInput { down(center); cancel() }
        compose.onNodeWithTag("toggle").performTouchInput { down(center); cancel() }
        assertEquals(0, navigations)
        assertEquals(0, toggles)
        compose.onNodeWithTag("navigation").performClick()
        compose.onNodeWithTag("toggle").performClick()
        assertEquals(1, navigations)
        assertEquals(1, toggles)
        compose.onNodeWithTag("toggle").assertContentDescriptionEquals("按声部布局").assertIsOn()
        compose.runOnIdle { enabled.value = false }
        compose.onNodeWithTag("navigation").assertIsNotEnabled()
            .performSemanticsAction(SemanticsActions.OnClick) { it() }
        compose.onNodeWithTag("toggle").assertIsNotEnabled()
            .performSemanticsAction(SemanticsActions.OnClick) { it() }
        assertEquals(1, navigations)
        assertEquals(1, toggles)
    }

    @Test fun navigationRowsKeepReferenceInsetsWithoutMovingTheirArrow() {
        mount {
            SettingsGroupCard(contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp)) {
                SettingsNavigationItem("歌词", Icons.Default.Settings, {}, tag = "navigation")
            }
        }
        val row = bounds("navigation")
        val icon = bounds("navigation-icon")
        val label = bounds("navigation-label")
        val arrow = bounds("navigation-arrow")
        assertEquals(24f, icon.left - row.left, 1f)
        assertEquals(24f, icon.width, 1f)
        assertEquals(24f, label.left - icon.right, 1f)
        assertEquals(24f, arrow.width, 1f)
        assertEquals(24f, row.right - arrow.right, 1f)
    }

    @Test fun sectionFieldAndDividerUseTheirOwnExplicitSpacing() {
        mount {
            SettingsSection("歌词") {
                SettingsSwitchRow("当前句放大", false, {}, tag = "switch-row")
                SettingsDivider(Modifier.testTag("divider"))
                SettingsFieldBlock("歌词颜色", tag = "field") {
                    Text("字段内容", Modifier.testTag("field-body"))
                }
            }
        }
        val title = bounds("settings-section-title-歌词")
        val card = bounds("settings-card-歌词")
        val row = bounds("switch-row-row")
        val divider = bounds("divider")
        assertEquals(24f, title.left - card.left, 1f)
        assertEquals(24f, card.top - title.bottom, 1f)
        assertEquals(24f, row.left - card.left, 1f)
        assertEquals(24f, row.top - card.top, 1f)
        assertEquals(1f, divider.height, 1f)
        assertEquals(row.width, divider.width, 1f)
        assertEquals(24f, bounds("field-body").top - bounds("field-label").bottom, 1f)
    }

    @Test fun onlyTheSwitchAndItsCompleteItemTouchAreaToggleAndRejectCancelOrDisable() {
        val checked = mutableStateOf(false)
        val enabled = mutableStateOf(true)
        var changes = 0
        mount {
            SettingsSwitchRow("显示星期", checked.value, { checked.value = it; changes++ },
                enabled = enabled.value, tag = "switch-row")
        }
        compose.onAllNodes(hasClickAction() and hasAnyAncestor(hasTestTag("switch-row-row")),
            useUnmergedTree = true).assertCountEquals(1)
        compose.onNodeWithTag("switch-row-label").performTouchInput { click() }
        compose.onNodeWithTag("switch-row-row").performTouchInput { click(Offset(4f, center.y)) }
        compose.onNodeWithTag("switch-row").performTouchInput { down(center); cancel() }
        assertEquals(0, changes)
        compose.onNodeWithTag("switch-row").performTouchInput { click(Offset(4f, center.y)) }
        compose.onNodeWithTag("switch-row").assertIsOn().assertContentDescriptionEquals("显示星期").performClick()
        compose.onNodeWithTag("switch-row").assertIsOff()
        assertEquals(2, changes)
        assertEquals(108f, bounds("switch-row").width, 1f)
        assertEquals(78f, bounds("switch-row").height, 1f)
        compose.runOnIdle { enabled.value = false }
        compose.onNodeWithTag("switch-row").assertIsNotEnabled()
            .performSemanticsAction(SemanticsActions.OnClick) { it() }
        compose.onNodeWithTag("switch-row").performTouchInput {
            click(Offset(1f, center.y))
            click(Offset(width.toFloat() - 1f, center.y))
        }
        assertEquals(2, changes)
    }

    @Test fun switchOnlyCardKeepsIts78DpGeometryAndUsesTheStandardExpandedTouchTarget() {
        val checked = mutableStateOf(false)
        var changes = 0
        mount {
            SettingsItemSection("时间") {
                SettingsSwitchRow("显示星期", checked.value, { checked.value = it; changes++ }, tag = "switch-row")
            }
        }
        val card = bounds("settings-card-时间")
        val row = bounds("switch-row-row")
        val hit = bounds("switch-row")
        val text = bounds("switch-row-label")
        val track = bounds("switch-row-track")
        val thumb = bounds("switch-row-thumb")
        assertEquals(78f, card.height, 1f)
        assertEquals(78f, row.height, 1f)
        assertEquals(78f, hit.height, 1f)
        assertEquals(108f, hit.width, 1f)
        assertEquals(card.top, hit.top, 1f)
        assertEquals(card.bottom, hit.bottom, 1f)
        assertEquals(24f, text.top - card.top, 1f)
        assertEquals(24f, card.bottom - text.bottom, 1f)
        assertEquals(60f, track.width, 1f)
        assertEquals(30f, track.height, 1f)
        assertEquals(row.top + 24f, track.top, 1f)
        assertEquals(24f, row.right - track.right, 1f)
        assertEquals(30f, thumb.width, 1f)
        assertEquals(25f, thumb.height, 1f)
        assertEquals(2.5f, thumb.left - track.left, 1f)
        assertEquals(track.center.y, thumb.center.y, 1f)
        assertEquals(card.right, hit.right, 1f)
        assertEquals(24f, track.left - hit.left, 1f)
        assertEquals(24f, hit.right - track.right, 1f)
        val button = compose.onNodeWithTag("switch-row")
        val edges = listOf(Offset(1f, hit.height / 2), Offset(hit.width - 1f, hit.height / 2),
            Offset(hit.width / 2, 1f), Offset(hit.width / 2, hit.height - 1f))
        edges.forEachIndexed { index, point ->
            button.performTouchInput { click(point) }
            assertEquals(index + 1, changes)
        }
        button.assertIsOff()
        assertEquals(4, changes)
    }

    @Test fun expandedSwitchRowsStopAtTheirDividerBoundary() {
        val firstChecked = mutableStateOf(false)
        val secondChecked = mutableStateOf(false)
        var changes = 0
        mount {
            SettingsItemSection("相邻开关") {
                SettingsSwitchRow("第一项", firstChecked.value, { firstChecked.value = it; changes++ }, tag = "first-switch")
                SettingsItemDivider()
                SettingsSwitchRow("第二项", secondChecked.value, { secondChecked.value = it; changes++ }, tag = "second-switch")
            }
        }
        val firstRow = bounds("first-switch-row")
        val secondRow = bounds("second-switch-row")
        val firstHit = bounds("first-switch")
        val secondHit = bounds("second-switch")
        assertEquals(78f, firstRow.height, 1f)
        assertEquals(78f, secondRow.height, 1f)
        assertEquals(79f, secondRow.top - firstRow.top, 1f)
        assertTrue("expanded switch targets must stop at the divider boundary", firstHit.bottom <= secondHit.top)
        assertEquals(firstRow.top, firstHit.top, 1f)
        assertEquals(secondRow.top, secondHit.top, 1f)
        val card = bounds("settings-card-相邻开关")
        compose.onNodeWithTag("settings-card-相邻开关").performTouchInput {
            click(Offset(firstHit.center.x - card.left, (firstHit.bottom + secondHit.top) / 2 - card.top))
        }
        assertEquals("the divider belongs to neither switch", 0, changes)
        compose.onNodeWithTag("first-switch").performTouchInput {
            click(Offset(center.x, height.toFloat() - 1f))
        }
        compose.onNodeWithTag("first-switch").assertIsOn()
        compose.onNodeWithTag("second-switch").assertIsOff()
        compose.onNodeWithTag("second-switch").performTouchInput {
            click(Offset(center.x, 1f))
        }
        compose.onNodeWithTag("second-switch").assertIsOn()
        compose.onNodeWithTag("first-switch").assertIsOn()
        assertEquals(2, changes)
    }

    @Test fun longSwitchLabelsOwnTheirFullHeightAndDisabledItemEdgesRemainSilent() {
        val title = "行车时自动关闭设置页并保持当前歌词设置和滚动位置"
        val checked = mutableStateOf(false)
        val enabled = mutableStateOf(true)
        var changes = 0
        mount(240.dp) {
            SettingsItemSection("长标签") {
                SettingsSwitchRow(title, checked.value, { checked.value = it; changes++ },
                    enabled = enabled.value, tag = "long-switch")
            }
        }
        val card = bounds("settings-card-长标签")
        val row = bounds("long-switch-row")
        val hit = bounds("long-switch")
        val label = bounds("long-switch-label")
        compose.onNodeWithTag("long-switch-label").performSemanticsAction(SemanticsActions.GetTextLayoutResult) { action ->
            val layouts = mutableListOf<TextLayoutResult>()
            assertTrue(action(layouts))
            val text = layouts.single()
            assertTrue("exercise a label beyond the old two-line limit", text.lineCount > 2)
            assertFalse("the complete label must stay readable", text.hasVisualOverflow)
        }
        assertEquals(label.height + 48f, row.height, 1f)
        assertEquals(card.top, row.top, 1f)
        assertEquals(card.bottom, row.bottom, 1f)
        assertEquals(row.top, hit.top, 1f)
        assertEquals(row.bottom, hit.bottom, 1f)
        assertEquals(row.right, hit.right, 1f)
        assertTrue("the passive label cannot overlap the switch target", label.right <= hit.left + 1f)
        compose.onNodeWithTag("long-switch-label").performTouchInput { click() }
        assertEquals(0, changes)
        captureNativeControl("settings-card-长标签", "long-switch-item")
        val edges = listOf(Offset(1f, hit.height / 2), Offset(hit.width - 1f, hit.height / 2),
            Offset(hit.width / 2, 1f), Offset(hit.width / 2, hit.height - 1f))
        val button = compose.onNodeWithTag("long-switch")
        edges.forEachIndexed { index, point ->
            button.performTouchInput { click(point) }
            assertEquals(index + 1, changes)
        }
        compose.runOnIdle { enabled.value = false }
        button.assertIsNotEnabled()
        edges.forEach { point -> button.performTouchInput { click(point) } }
        button.performSemanticsAction(SemanticsActions.OnClick) { it() }
        assertEquals(4, changes)
        captureNativeControl("settings-card-长标签", "long-switch-item-disabled")
    }

    @Test fun explicitItemPaddingControlsBothVisualInsetAndTouchBounds() {
        val padding = mutableStateOf(12.dp)
        mount {
            SettingsGroupCard(Modifier.testTag("custom-card"),
                contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp), itemSpacing = 0.dp) {
                SettingsSwitchRow("显示星期", false, {}, tag = "custom-switch",
                    contentPadding = padding.value)
            }
        }
        val card = bounds("custom-card")
        val row = bounds("custom-switch-row")
        val hit = bounds("custom-switch")
        val track = bounds("custom-switch-track")
        assertEquals(54f, card.height, 1f)
        assertEquals(card, row)
        assertEquals(84f, hit.width, 1f)
        assertEquals(row.top, hit.top, 1f)
        assertEquals(row.bottom, hit.bottom, 1f)
        assertEquals(row.right, hit.right, 1f)
        assertEquals(12f, track.left - hit.left, 1f)
        assertEquals(12f, hit.right - track.right, 1f)
        assertEquals(12f, track.top - row.top, 1f)
        compose.runOnIdle { padding.value = 0.dp }
        assertEquals(48f, bounds("custom-switch-row").height, 1f)
        assertEquals(48f, bounds("custom-switch").height, 1f)
        assertEquals(bounds("custom-switch-label").center.y, bounds("custom-switch-track").center.y, 1f)
    }

    @Test fun sliderRowsShareTheirLabelColumnAndReflowBelow360Dp() {
        val width = mutableStateOf(420.dp)
        mount(420.dp) {
            Column(Modifier.width(width.value)) {
                SettingsSliderRow("字号", 40f, "sp", 24f..64f, {}, {}, tag = "font")
                SettingsSliderRow("间距", 28f, "dp", 0f..64f, {}, {}, tag = "gap")
            }
        }
        // Material expands Slider's semantics horizontally; compare the visible tracks.
        val font = bounds("font-track")
        val gap = bounds("gap-track")
        assertEquals(font.left, gap.left, 1f)
        assertEquals(font.right, gap.right, 1f)
        assertEquals(136f, bounds("font-label").width, 1f)
        assertEquals(148f, font.left - bounds("font-label").left, 1f)
        assertEquals(40f, font.height, 1f)
        assertEquals(5f, bounds("font-label").top - font.top, 1f)
        compose.runOnIdle { width.value = 320.dp }
        assertTrue(bounds("font-track").top >= bounds("font-label").bottom + 11f)
        assertEquals(bounds("font-label").left, bounds("font-track").left, 1f)
        assertEquals(320f, bounds("font-track").width, 1f)
        assertEquals(bounds("font-track").width, bounds("gap-track").width, 1f)
    }

    @Test fun numericFieldMatchesTheReferenceOffsetsAndKeepsStandardTouchExpansion() {
        val value = mutableStateOf(40f)
        var finishes = 0
        mount(570.dp) {
            SettingsGroupCard(Modifier.testTag("numeric-card")) {
                SettingsFieldBlock("字号", tag = "field") {
                    SettingsSliderRow("分屏", value.value, "sp", 24f..64f, { value.value = it },
                        { finishes++ }, modifier = Modifier.testTag("numeric-row"), tag = "numeric")
                }
            }
        }
        val card = bounds("numeric-card")
        val field = bounds("field")
        val label = bounds("numeric-label")
        val row = bounds("numeric-row")
        val track = bounds("numeric-track")
        assertEquals(522f, row.width, 1f)
        assertEquals(40f, row.height, 1f)
        assertEquals(136f, label.width, 1f)
        assertEquals(148f, track.left - row.left, 1f)
        assertEquals(374f, track.width, 1f)
        assertEquals(40f, track.height, 1f)
        assertEquals(field.left, row.left, 1f)
        assertEquals(24f, field.top - card.top, 1f)
        assertEquals(30f, bounds("field-label").height, 1f)
        assertEquals(card.top + 78f, track.top, 1f)
        assertEquals(row.top, track.top, 1f)
        assertEquals(24f, track.top - bounds("field-label").bottom, 1f)
        assertEquals(5f, label.top - row.top, 1f)
        compose.onNodeWithTag("numeric").performTouchInput { click(Offset(width * .8f, -2f)) }
        assertTrue(value.value > 40f)
        assertEquals(1, finishes)
    }

    @Test fun segmentedSelectionScrollsOnNarrowWidthAndKeepsStandardSingleChoiceSemantics() {
        val selected = mutableStateOf("normal")
        val enabled = mutableStateOf(true)
        val changes = mutableListOf<String>()
        mount {
            SettingsSegmented(
                listOf("small" to "小", "normal" to "标准", "large" to "大"),
                selected.value, { selected.value = it; changes += it },
                modifier = Modifier.width(160.dp), enabled = enabled.value, tagPrefix = "size",
            )
        }
        val group = bounds("size-track")
        assertEquals(56f, group.height, 1f)
        assertEquals(52f, bounds("size-normal-surface").height, 1f)
        compose.onNodeWithTag("size-normal").assertIsSelected()
        for (id in listOf("small", "normal", "large")) {
            val bounds = compose.onNodeWithTag("size-$id").performScrollTo().fetchSemanticsNode().boundsInRoot
            assertTrue("each segment keeps its full touch width", bounds.width >= 63f)
            assertEquals("each segment keeps the reference visual height", 56f, bounds.height, 1f)
        }
        compose.onNodeWithTag("size-large").performScrollTo().performClick()
        compose.onNodeWithTag("size-large").assertIsSelected().performClick()
        assertEquals(listOf("large"), changes)
        compose.runOnIdle { enabled.value = false }
        compose.onNodeWithTag("size-small").assertIsNotEnabled()
            .performSemanticsAction(SemanticsActions.OnClick) { it() }
        assertEquals(listOf("large"), changes)
    }

    @Test fun segmentedRectangleKeepsTheInsetSelectionAndStandardExpandedTouchTarget() {
        val selected = mutableStateOf("normal")
        val changes = mutableListOf<String>()
        mount {
            SettingsGroupCard {
                SettingsSegmented(listOf("small" to "小", "normal" to "标准", "large" to "大"),
                    selected.value, { selected.value = it; changes += it }, tagPrefix = "size")
            }
        }
        val track = bounds("size-track")
        val choice = bounds("size-normal")
        val surface = bounds("size-normal-surface")
        assertEquals(56f, bounds("size").height, 1f)
        assertEquals(56f, track.height, 1f)
        assertEquals(52f, surface.height, 1f)
        assertEquals(2f, surface.top - choice.top, 1f)
        assertEquals(2f, surface.left - choice.left, 1f)
        assertEquals("an inset rounded rectangle must retain blue near its corner",
            settingsDesign(dark).selected.toArgb(), pixelAt("size-normal-surface", .04f, .08f))
        compose.onNodeWithTag("size-large").performTouchInput { click(Offset(center.x, 3f)) }
        compose.onNodeWithTag("size-large").assertIsSelected()
        assertEquals(listOf("large"), changes)
    }

    @Test fun narrowSegmentsKeepEqualWidthsAndCompleteLongOptionLabels() {
        val options = listOf("theme" to "跟随主题", "system" to "系统主题色", "custom" to "自定义")
        mount(160.dp) { SettingsSegmented(options, "theme", {}, tagPrefix = "mode") }
        val widths = mutableListOf<Float>()
        for ((id, label) in options) {
            compose.onNodeWithTag("mode-$id").performScrollTo().assertIsDisplayed()
            widths += bounds("mode-$id").width
            compose.onNodeWithText(label, useUnmergedTree = true)
                .performSemanticsAction(SemanticsActions.GetTextLayoutResult) { action ->
                    val layouts = mutableListOf<TextLayoutResult>()
                    assertTrue(action(layouts))
                    val result = layouts.single()
                    assertFalse("the full option name must remain readable: ${result.size}, width=${result.didOverflowWidth}, height=${result.didOverflowHeight}, input=${result.layoutInput.constraints}, line=${result.getLineRight(0)}", result.hasVisualOverflow)
                }
        }
        assertEquals(widths[0], widths[1], 1f)
        assertEquals(widths[1], widths[2], 1f)
    }

    @Test fun narrowSegmentsKeepCompleteLabelsAndFourPhysicalEdgesAcrossDensityAndFontScale() {
        val options = listOf("theme" to "跟随主题", "system" to "系统主题色", "custom" to "自定义")
        val presentation = mutableStateOf(androidx.compose.ui.unit.Density(1.8f, 1f))
        val selected = mutableStateOf("theme")
        val changes = mutableListOf<String>()
        compose.setContent {
            ContentTheme(dark) {
                CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(dark),
                    androidx.compose.ui.platform.LocalDensity provides presentation.value) {
                    Column(Modifier.width(160.dp)) {
                        SettingsSegmented(options, selected.value, { selected.value = it; changes += it }, tagPrefix = "mode")
                    }
                }
            }
        }
        for (density in listOf(1.8f, 1.325f, 2f)) for (fontScale in listOf(1f, 1.3f)) {
            compose.runOnIdle {
                presentation.value = androidx.compose.ui.unit.Density(density, fontScale)
                selected.value = "theme"
                changes.clear()
            }
            compose.waitForIdle()
            val widths = mutableListOf<Float>()
            for ((id, label) in options) {
                val button = compose.onNodeWithTag("mode-$id").performScrollTo().assertIsDisplayed()
                val area = button.fetchSemanticsNode().boundsInRoot
                widths += area.width
                compose.onNodeWithText(label, useUnmergedTree = true)
                    .performSemanticsAction(SemanticsActions.GetTextLayoutResult) { action ->
                        val layouts = mutableListOf<TextLayoutResult>()
                        assertTrue(action(layouts))
                        val text = layouts.single()
                        assertEquals("one complete option line at density=$density fontScale=$fontScale", 1, text.lineCount)
                        assertFalse("full label at density=$density fontScale=$fontScale: $label", text.hasVisualOverflow)
                        assertFalse("no ellipsis at density=$density fontScale=$fontScale: $label", text.isLineEllipsized(0))
                    }
                val edges = listOf(Offset(1f, area.height / 2), Offset(area.width - 1f, area.height / 2),
                    Offset(area.width / 2, 1f), Offset(area.width / 2, area.height - 1f))
                for (point in edges) {
                    compose.runOnIdle { selected.value = if (id == "theme") "custom" else "theme" }
                    compose.waitForIdle()
                    button.performScrollTo().performTouchInput { click(point) }
                    assertEquals(id, selected.value)
                    val accepted = changes.size
                    assertEquals(id, changes.last())
                    button.performTouchInput { click(point) }
                    button.performClick()
                    assertEquals("selected physical and semantic repeats do not submit", accepted, changes.size)
                }
                if (id == "system") captureNativeControl("mode", "segmented-density-$density-font-$fontScale")
            }
            assertEquals(widths[0], widths[1], 1f)
            assertEquals(widths[1], widths[2], 1f)
            assertEquals("each physical edge accepts one new selection", options.size * 4, changes.size)
        }
    }

    @Test fun numericSliderUsesMaterialStepsAndCommitsOnceForAStandardProgressAction() {
        val value = mutableStateOf(.25f)
        val previews = mutableListOf<Float>()
        var finishes = 0
        mount {
            SettingsSlider(value.value, 0f..1f, { value.value = it; previews += it },
                { finishes++ }, steps = 3, tag = "numeric")
        }
        compose.onNodeWithTag("numeric").performSemanticsAction(SemanticsActions.SetProgress) { it(.56f) }
        assertEquals(.5f, value.value, .0001f)
        assertEquals(listOf(.5f), previews)
        assertEquals(1, finishes)
        val info = compose.onNodeWithTag("numeric").fetchSemanticsNode().config[SemanticsProperties.ProgressBarRangeInfo]
        assertEquals(3, info.steps)
        assertEquals(40f, bounds("numeric").height, 1f)
        assertEquals(40f, bounds("numeric-track").height, 1f)
        assertEquals(bounds("numeric-track").width / 2f, bounds("numeric-fill").width, 1f)
    }

    @Test fun disposedSliderRejectsItsPreviouslyCapturedProgressAction() {
        val visible = mutableStateOf(true)
        val value = mutableStateOf(.3f)
        var previews = 0
        var finishes = 0
        mount {
            if (visible.value) SettingsSlider(value.value, 0f..1f, { value.value = it; previews++ },
                { finishes++ }, tag = "numeric")
        }
        val progressAction = compose.onNodeWithTag("numeric").fetchSemanticsNode()
            .config[SemanticsActions.SetProgress].action ?: error("slider progress action missing")
        compose.runOnIdle { visible.value = false }
        compose.onNodeWithTag("numeric").assertDoesNotExist()
        compose.runOnIdle { progressAction(.8f) }
        assertEquals(.3f, value.value, .0001f)
        assertEquals(0, previews)
        assertEquals(0, finishes)
    }

    @Test fun numericSliderCancelsToItsOriginalPreviewAndNeverCommitsAfterDisable() {
        val value = mutableStateOf(.3f)
        val enabled = mutableStateOf(true)
        val previews = mutableListOf<Float>()
        var finishes = 0
        mount {
            SettingsSlider(value.value, 0f..1f, { value.value = it; previews += it },
                { finishes++ }, enabled = enabled.value, tag = "numeric")
        }
        compose.onNodeWithTag("numeric").performTouchInput {
            down(Offset(width * .3f, center.y))
            moveTo(Offset(width * .75f, center.y), delayMillis = 100)
            cancel()
        }
        compose.waitForIdle()
        assertTrue("cancel exercised live preview", previews.size >= 2)
        assertEquals(.3f, value.value, .0001f)
        assertEquals(0, finishes)
        compose.runOnIdle { enabled.value = false }
        val previous = previews.size
        compose.onNodeWithTag("numeric").assertIsNotEnabled()
            .performSemanticsAction(SemanticsActions.SetProgress) { it(.8f) }
        assertEquals(previous, previews.size)
        assertEquals(0, finishes)
    }

    @Test fun colorInitializationAndExternalRgbSynchronizationNeverWriteOrCanonicalizeInput() {
        val initial = 0xFF799CAB.toInt()
        val color = mutableStateOf(initial)
        val previews = mutableListOf<Int>()
        val commits = mutableListOf<Int>()
        mount { SettingsColorPicker(color.value, previews::add, commits::add, tagPrefix = "color") }
        assertEquals(initial, color.value)
        assertTrue(previews.isEmpty())
        assertTrue(commits.isEmpty())
        val replacement = 0xFF895D6E.toInt()
        compose.runOnIdle { color.value = replacement }
        val progress = compose.onNodeWithTag("color-hue").fetchSemanticsNode().config[SemanticsProperties.ProgressBarRangeInfo]
        assertEquals(settingsHuePosition(settingsColorHue(replacement)), progress.current, .0001f)
        assertEquals(0f..1f, progress.range)
        assertEquals(0, progress.steps)
        assertEquals("337度", compose.onNodeWithTag("color-hue").fetchSemanticsNode()
            .config[SemanticsProperties.StateDescription])
        assertTrue(previews.isEmpty())
        assertTrue(commits.isEmpty())
    }

    @Test fun eightSwatchesShareTheHueWidthAndRepeatedShadeSelectionCannotDarkenThePalette() {
        val initial = 0xFF799CAB.toInt()
        val color = mutableStateOf(initial)
        val previews = mutableListOf<Int>()
        val hueCommits = mutableListOf<Int>()
        val swatchCommits = mutableListOf<Int>()
        val palette = settingsColorShades(settingsColorHue(initial))
        mount {
            SettingsColorPicker(color.value, { previews += it }, hueCommits::add,
                tagPrefix = "color", onSwatchSelected = { color.value = it; swatchCommits += it })
        }
        assertEquals(8, palette.size)
        val track = bounds("color-hue-track")
        val strip = bounds("color-swatches")
        assertEquals(track.left, strip.left, 1f)
        assertEquals(track.width, strip.width, 1f)
        assertEquals(60f, track.height, 1f)
        assertEquals(60f, strip.height, 1f)
        assertEquals(60f, bounds("color-hue-thumb").width, 1f)
        assertEquals(60f, bounds("color-hue-thumb").height, 1f)
        var previousLightness = 2f
        var previousRight = strip.left
        for ((index, shade) in palette.withIndex()) {
            val hsl = FloatArray(3)
            ColorUtils.colorToHSL(shade, hsl)
            assertTrue("lightness must descend at every fixed level", hsl[2] < previousLightness)
            previousLightness = hsl[2]
            compose.onNodeWithTag("color-swatch-$index").assertIsDisplayed()
            val swatch = bounds("color-swatch-$index")
            assertEquals(previousRight, swatch.left, 1f)
            assertEquals(strip.width / 8f, swatch.width, 1f)
            assertTrue(swatch.height >= 59f)
            previousRight = swatch.right
        }
        assertEquals(strip.right, previousRight, 1f)
        compose.onNodeWithTag("color-swatch-8").assertDoesNotExist()
        compose.onNodeWithTag("color-swatch-9").assertDoesNotExist()
        repeat(3) { compose.onNodeWithTag("color-swatch-0").performClick() }
        assertEquals(List(3) { palette[0] }, swatchCommits)
        assertEquals(swatchCommits, previews)
        compose.onNodeWithTag("color-swatch-7").performClick()
        assertEquals(palette[7], color.value)
        assertEquals(4, previews.size)
        assertEquals(4, swatchCommits.size)
        assertTrue("swatch has a separate accepted-click callback", hueCommits.isEmpty())
        compose.onNodeWithTag("color-swatch-7").assertIsSelected()
    }

    @Test fun everyNarrowSwatchIsFullyVisibleAndIndependentlyAcceptsItsPhysicalCenter() {
        val initial = 0xFF799CAB.toInt()
        val color = mutableStateOf(initial)
        val swatchCommits = mutableListOf<Int>()
        val palette = settingsColorShades(settingsColorHue(initial))
        mount(160.dp) {
            SettingsColorPicker(color.value, {}, {}, tagPrefix = "color",
                onSwatchSelected = { color.value = it; swatchCommits += it })
        }
        assertEquals(160f, bounds("color-hue-track").width, 1f)
        assertEquals(160f, bounds("color-swatches").width, 1f)
        for (index in 0..7) {
            compose.onNodeWithTag("color-swatch-$index").assertIsDisplayed().performTouchInput { click() }
            assertEquals(palette[index], color.value)
        }
        assertEquals(palette, swatchCommits)
    }

    @Test fun referenceYellowPaletteAndHuePositionsMatchTheSuppliedStops() {
        assertEquals(listOf(0xFFFEFCE8.toInt(), 0xFFFEF08A.toInt(), 0xFFFACC15.toInt(), 0xFFCA8A04.toInt(),
            0xFFA16207.toInt(), 0xFF854D0E.toInt(), 0xFF713F12.toInt(), 0xFF422006.toInt()),
            settingsColorShades(settingsColorHue(0xFFFACC15.toInt())))
        val positions = listOf(.14f to 0xFFFF7700.toInt(), .28f to 0xFFFFF202.toInt(),
            .42f to 0xFF21FF03.toInt(), .56f to 0xFF00FFEE.toInt(), .70f to 0xFF00A2FF.toInt(),
            .84f to 0xFFFF00FF.toInt())
        for ((position, color) in positions) {
            val hue = settingsColorHue(color)
            assertEquals(position, settingsHuePosition(hue), .0001f)
            assertEquals(hue, settingsPositionHue(position), .001f)
        }
        assertEquals(0f, settingsHuePosition(0f), .0001f)
        assertEquals(1f, settingsHuePosition(360f), .0001f)
        assertEquals(360f, settingsPositionHue(1f), .001f)
    }

    @Test fun hueSemanticCommitKeepsTheRightRedEndpointAcrossItsOwnRgbEcho() {
        val color = mutableStateOf(0xFF799CAB.toInt())
        val commits = mutableListOf<Int>()
        mount {
            SettingsColorPicker(color.value, { color.value = it }, { color.value = it; commits += it },
                tagPrefix = "color")
        }
        compose.onNodeWithTag("color-hue").performSemanticsAction(SemanticsActions.SetProgress) { it(.84f) }
        assertEquals(0xFFFF00FF.toInt(), color.value)
        compose.onNodeWithTag("color-hue").performSemanticsAction(SemanticsActions.SetProgress) { it(1f) }
        compose.waitForIdle()
        assertEquals(0xFFFF0000.toInt(), color.value)
        val config = compose.onNodeWithTag("color-hue").fetchSemanticsNode().config
        assertEquals(1f, config[SemanticsProperties.ProgressBarRangeInfo].current, .0001f)
        assertEquals("360度", config[SemanticsProperties.StateDescription])
        compose.onNodeWithTag("color-hue").performSemanticsAction(SemanticsActions.SetProgress) { it(1f) }
        assertEquals(listOf(0xFFFF00FF.toInt(), 0xFFFF0000.toInt()), commits)
    }

    @Test fun hueDragCancelsToExactCustomRgbThenFinishesWithOneContinuousColorCommit() {
        val initial = 0xFF799CAB.toInt()
        val color = mutableStateOf(initial)
        val previews = mutableListOf<Int>()
        val commits = mutableListOf<Int>()
        mount {
            SettingsColorPicker(color.value, { color.value = it; previews += it },
                { color.value = it; commits += it }, tagPrefix = "color")
        }
        compose.onNodeWithTag("color-hue").performTouchInput {
            down(center)
            moveTo(Offset(width * .8f, center.y), delayMillis = 100)
            cancel()
        }
        compose.waitForIdle()
        assertTrue(previews.size >= 2)
        assertEquals(initial, previews.last())
        assertEquals(initial, color.value)
        assertTrue(commits.isEmpty())
        previews.clear()
        compose.onNodeWithTag("color-hue").performTouchInput {
            down(Offset(width * .2f, center.y))
            moveTo(Offset(width * .7f, center.y), delayMillis = 100)
            moveTo(Offset(width * .75f, center.y), delayMillis = 16)
            up()
        }
        compose.waitForIdle()
        assertTrue(previews.isNotEmpty())
        assertEquals(listOf(previews.last()), commits)
    }

    @Test fun disabledColorPickerRejectsBothHueAndSwatchSemanticActions() {
        val previews = mutableListOf<Int>()
        val commits = mutableListOf<Int>()
        mount { SettingsColorPicker(0xFF799CAB.toInt(), previews::add, commits::add,
            enabled = false, tagPrefix = "color") }
        compose.onNodeWithTag("color-hue").assertIsNotEnabled()
            .performSemanticsAction(SemanticsActions.SetProgress) { it(.7f) }
        compose.onNodeWithTag("color-swatch-0").assertIsNotEnabled()
            .performSemanticsAction(SemanticsActions.OnClick) { it() }
        assertTrue(previews.isEmpty())
        assertTrue(commits.isEmpty())
    }

    @Test fun sliderCornersStayOnTheSettingsCardInsteadOfExposingAWhiteBacking() {
        val enabled = mutableStateOf(true)
        mount {
            SettingsGroupCard(Modifier.testTag("slider-card")) {
                SettingsSlider(.5f, 0f..1f, {}, {}, enabled = enabled.value, tag = "card-slider")
            }
        }
        val design = settingsDesign(dark)
        assertEquals("top-left rounded corner stays on the card", design.card.toArgb(), pixelAt("card-slider-track", .01f, .01f))
        assertEquals("top-right rounded corner stays on the card", design.card.toArgb(), pixelAt("card-slider-track", .99f, .01f))
        assertEquals("track center keeps its own color", design.track.toArgb(), pixelAt("card-slider-track", .5f, .5f))
        compose.runOnIdle { enabled.value = false }
        val disabled = ColorUtils.compositeColors(
            design.track.copy(alpha = .38f).toArgb(), design.card.toArgb())
        assertEquals("disabled track blends with its card", disabled, pixelAt("card-slider-track", .5f, .5f))
    }

    @Test fun switchAndNumericSliderUseTheirOwnRenderedStateColors() {
        mount {
            SettingsSwitchRow("显示星期", true, {}, tag = "green")
            SettingsSlider(.5f, 0f..1f, {}, {}, tag = "blue")
        }
        val design = settingsDesign(dark)
        assertEquals(design.onSwitchTrack.toArgb(), pixelAt("green-track", .15f, .5f))
        assertEquals(design.switchThumb.toArgb(), pixelAt("green-thumb", .5f, .5f))
        assertEquals(design.sliderFill.toArgb(), pixelAt("blue-fill", .5f, .5f))
        assertEquals(2.5f, bounds("green-track").right - bounds("green-thumb").right, 1f)
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun captureNativeControl(tag: String, label: String) {
        val node = compose.onNodeWithTag(tag).fetchSemanticsNode()
        val root = node.root as ViewRootForTest
        val area = node.boundsInRoot
        compose.runOnIdle {
            val bitmap = Bitmap.createBitmap(area.width.roundToInt(), area.height.roundToInt(), Bitmap.Config.ARGB_8888)
            try {
                val canvas = Canvas(bitmap)
                canvas.translate(-area.left, -area.top)
                root.view.draw(canvas)
                val directory = java.io.File("build/frames").apply { mkdirs() }
                java.io.File(directory, "${javaClass.simpleName}-$label.png").outputStream().use {
                    assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it))
                }
            } finally { bitmap.recycle() }
        }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun pixelAt(tag: String, x: Float, y: Float): Int {
        val node = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode()
        val root = node.root as ViewRootForTest
        val bounds = node.boundsInRoot
        return compose.runOnIdle {
            val bitmap = Bitmap.createBitmap(bounds.width.roundToInt(), bounds.height.roundToInt(), Bitmap.Config.ARGB_8888)
            try {
                Canvas(bitmap).apply { translate(-bounds.left, -bounds.top); root.view.draw(this) }
                bitmap.getPixel((bitmap.width * x).toInt(), (bitmap.height * y).toInt())
            } finally {
                bitmap.recycle()
            }
        }
    }

    private fun bounds(tag: String) = compose.onNodeWithTag(tag, useUnmergedTree = true)
        .fetchSemanticsNode().boundsInRoot
}

@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class SettingsControlsDarkTest : SettingsControlsTest() { override val dark = true }

@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class SettingsControlsApi34Test : SettingsControlsTest()
