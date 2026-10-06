package com.icar03.content.ui

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.width
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Settings
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import androidx.core.graphics.ColorUtils
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

    private fun mount(content: @Composable () -> Unit) {
        compose.setContent {
            ContentTheme(dark) {
                CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(dark)) {
                    Column(Modifier.width(360.dp)) { content() }
                }
            }
        }
        compose.waitForIdle()
    }

    @Test fun designAndCombinedValueLabelKeepSettingsIndependentFromVehicleSelection() {
        val design = settingsDesign(dark)
        assertEquals(if (dark) 0xFF0F0F0F.toInt() else 0xFFF4F4F4.toInt(), design.page.toArgb())
        assertEquals(if (dark) 0xFF484848.toInt() else 0xFFFFFFFF.toInt(), design.selected.toArgb())
        assertEquals(if (dark) 0xFFE8E8E8.toInt() else 0xFF27303B.toInt(), design.onSwitchTrack.toArgb())
        assertEquals(16.dp, design.paddingFor(399.dp))
        assertEquals(24.dp, design.paddingFor(400.dp))
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
        compose.onNodeWithTag("size-normal").assertIsSelected()
        for (id in listOf("small", "normal", "large")) {
            val bounds = compose.onNodeWithTag("size-$id").performScrollTo().fetchSemanticsNode().boundsInRoot
            assertTrue("each segment keeps its full touch width", bounds.width >= 63f)
            assertTrue("each segment keeps its full touch height", bounds.height >= 47f)
        }
        compose.onNodeWithTag("size-large").performScrollTo().performClick()
        compose.onNodeWithTag("size-large").assertIsSelected().performClick()
        assertEquals(listOf("large"), changes)
        compose.runOnIdle { enabled.value = false }
        compose.onNodeWithTag("size-small").assertIsNotEnabled()
            .performSemanticsAction(SemanticsActions.OnClick) { it() }
        assertEquals(listOf("large"), changes)
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
        assertTrue(compose.onNodeWithTag("numeric").fetchSemanticsNode().boundsInRoot.height >= 47f)
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
        assertEquals(settingsColorHue(replacement), progress.current, .01f)
        assertEquals(0, progress.steps)
        assertTrue(previews.isEmpty())
        assertTrue(commits.isEmpty())
    }

    @Test fun tenSwatchesHaveFullTouchTargetsAndRepeatedShadeSelectionCannotDarkenThePalette() {
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
        var previousLightness = 2f
        for ((index, shade) in palette.withIndex()) {
            val hsl = FloatArray(3)
            ColorUtils.colorToHSL(shade, hsl)
            assertTrue("lightness must descend at every fixed level", hsl[2] < previousLightness)
            previousLightness = hsl[2]
            val bounds = compose.onNodeWithTag("color-swatch-$index").performScrollTo().fetchSemanticsNode().boundsInRoot
            assertTrue(bounds.width >= 47f)
            assertTrue(bounds.height >= 47f)
        }
        repeat(3) { compose.onNodeWithTag("color-swatch-0").performScrollTo().performClick() }
        assertEquals(List(3) { palette[0] }, swatchCommits)
        assertEquals(swatchCommits, previews)
        compose.onNodeWithTag("color-swatch-9").performScrollTo().performClick()
        assertEquals(palette[9], color.value)
        assertEquals(4, previews.size)
        assertEquals(4, swatchCommits.size)
        assertTrue("swatch has a separate accepted-click callback", hueCommits.isEmpty())
        compose.onNodeWithTag("color-swatch-9").assertIsSelected()
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
            .performSemanticsAction(SemanticsActions.SetProgress) { it(270f) }
        compose.onNodeWithTag("color-swatch-0").assertIsNotEnabled()
            .performSemanticsAction(SemanticsActions.OnClick) { it() }
        assertTrue(previews.isEmpty())
        assertTrue(commits.isEmpty())
    }
}

@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class SettingsControlsDarkTest : SettingsControlsTest() { override val dark = true }

@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class SettingsControlsApi34Test : SettingsControlsTest()
