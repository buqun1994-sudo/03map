package com.icar03.content.ui

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.interaction.DragInteraction
import androidx.compose.foundation.interaction.Interaction
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.selection.selectableGroup
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.KeyboardArrowRight
import androidx.compose.material.icons.filled.Check
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.ListItem
import androidx.compose.material3.ListItemDefaults
import androidx.compose.material3.SegmentedButton
import androidx.compose.material3.SegmentedButtonDefaults
import androidx.compose.material3.SingleChoiceSegmentedButtonRow
import androidx.compose.material3.Slider
import androidx.compose.material3.SliderDefaults
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.SwitchDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.foundation.border
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.stateDescription
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.DpSize
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import androidx.core.graphics.ColorUtils
import kotlinx.coroutines.flow.Flow
import kotlin.math.roundToInt

/** Atomic controls dispatch callbacks only; accepted-click sound belongs to the page owner. */
@Composable
fun SettingsValueLabel(
    title: String,
    value: String,
    modifier: Modifier = Modifier,
) {
    val design = LocalSettingsDesign.current
    Text(
        text = "$title·$value",
        modifier = modifier.fillMaxWidth(),
        style = design.labelStyle,
        color = design.text,
    )
}

/** Standard slider steps, focus, keyboard and accessibility actions are retained. */
@Composable
fun SettingsSlider(
    value: Float,
    valueRange: ClosedFloatingPointRange<Float>,
    onValueChange: (Float) -> Unit,
    onValueChangeFinished: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    tag: String = "",
    steps: Int = 0,
) {
    SettingsSliderControl(
        value = value,
        valueRange = valueRange,
        onValueChange = onValueChange,
        onValueChangeFinished = onValueChangeFinished,
        onValueCancelled = onValueChange,
        modifier = modifier,
        enabled = enabled,
        tag = tag,
        steps = steps,
    )
}

/** Pairs are stable option IDs followed by their visible labels. */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsSegmented(
    options: List<Pair<String, String>>,
    selected: String,
    onSelected: (String) -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    tagPrefix: String = "",
) {
    if (options.isEmpty()) return
    val design = LocalSettingsDesign.current
    val currentSelected by rememberUpdatedState(selected)
    val currentEnabled by rememberUpdatedState(enabled)
    val currentOnSelected by rememberUpdatedState(onSelected)
    val colors = SegmentedButtonDefaults.colors(
        activeContainerColor = design.selected,
        activeContentColor = design.text,
        activeBorderColor = Color.Transparent,
        inactiveContainerColor = design.track,
        inactiveContentColor = design.secondaryText,
        inactiveBorderColor = Color.Transparent,
        disabledActiveContainerColor = design.selected.copy(alpha = .38f),
        disabledActiveContentColor = design.text.copy(alpha = .38f),
        disabledActiveBorderColor = Color.Transparent,
        disabledInactiveContainerColor = design.track.copy(alpha = .38f),
        disabledInactiveContentColor = design.secondaryText.copy(alpha = .38f),
        disabledInactiveBorderColor = Color.Transparent,
    )
    BoxWithConstraints(modifier.fillMaxWidth().heightIn(min = design.controlHeight).settingsTag(tagPrefix)) {
        val minimumWidth = design.segmentMinimumWidth * options.size
        val rowWidth = if (maxWidth == Dp.Infinity) minimumWidth else maxOf(maxWidth, minimumWidth)
        Box(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState())) {
            SingleChoiceSegmentedButtonRow(
                modifier = Modifier.width(rowWidth).height(design.controlHeight)
                    .background(design.track, design.controlShape),
                space = 0.dp,
            ) {
                options.forEach { (id, label) ->
                    SegmentedButton(
                        selected = id == selected,
                        onClick = {
                            if (currentEnabled && id != currentSelected) currentOnSelected(id)
                        },
                        enabled = enabled,
                        modifier = Modifier.weight(1f).height(design.controlHeight)
                            .settingsTag(settingsChildTag(tagPrefix, id)),
                        shape = design.controlShape,
                        colors = colors,
                        border = BorderStroke(0.dp, Color.Transparent),
                        icon = {},
                        label = {
                            Text(label, style = design.optionStyle, maxLines = 1, overflow = TextOverflow.Ellipsis)
                        },
                    )
                }
            }
        }
    }
}

/** The owner supplies the setting's title through modifier semantics. */
@Composable
fun SettingsToggle(
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    tag: String = "",
) {
    val design = LocalSettingsDesign.current
    val currentEnabled by rememberUpdatedState(enabled)
    val currentOnCheckedChange by rememberUpdatedState(onCheckedChange)
    Switch(
        checked = checked,
        onCheckedChange = { if (currentEnabled) currentOnCheckedChange(it) },
        enabled = enabled,
        modifier = modifier.heightIn(min = design.controlHeight).settingsTag(tag).semantics {
            stateDescription = if (checked) "已开启" else "已关闭"
        },
        colors = SwitchDefaults.colors(
            checkedThumbColor = design.switchThumb,
            checkedTrackColor = design.onSwitchTrack,
            checkedBorderColor = Color.Transparent,
            uncheckedThumbColor = design.offSwitchThumb,
            uncheckedTrackColor = design.offSwitchTrack,
            uncheckedBorderColor = Color.Transparent,
            disabledCheckedThumbColor = design.switchThumb.copy(alpha = .38f),
            disabledCheckedTrackColor = design.onSwitchTrack.copy(alpha = .38f),
            disabledCheckedBorderColor = Color.Transparent,
            disabledUncheckedThumbColor = design.offSwitchThumb.copy(alpha = .38f),
            disabledUncheckedTrackColor = design.offSwitchTrack.copy(alpha = .38f),
            disabledUncheckedBorderColor = Color.Transparent,
        ),
    )
}

/** One clickable Material surface owns both physical and semantic navigation clicks. */
@Composable
fun SettingsNavigationItem(
    title: String,
    icon: ImageVector,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    tag: String = "",
) {
    val design = LocalSettingsDesign.current
    val currentEnabled by rememberUpdatedState(enabled)
    val currentOnClick by rememberUpdatedState(onClick)
    val textColor = design.text.copy(alpha = if (enabled) 1f else .38f)
    val iconColor = design.secondaryText.copy(alpha = if (enabled) 1f else .38f)
    Surface(
        onClick = { if (currentEnabled) currentOnClick() },
        enabled = enabled,
        modifier = modifier.fillMaxWidth().heightIn(min = design.navigationHeight)
            .settingsTag(tag).semantics { role = Role.Button },
        shape = design.cardShape,
        color = design.card,
        contentColor = textColor,
        tonalElevation = 0.dp,
        shadowElevation = design.shadowElevation,
    ) {
        ListItem(
            headlineContent = { Text(title, style = design.navigationTitleStyle, color = textColor) },
            leadingContent = { Icon(icon, contentDescription = null, modifier = Modifier.size(30.dp)) },
            trailingContent = {
                Icon(Icons.AutoMirrored.Filled.KeyboardArrowRight, contentDescription = null,
                    modifier = Modifier.size(28.dp))
            },
            colors = ListItemDefaults.colors(
                containerColor = Color.Transparent,
                headlineColor = textColor,
                leadingIconColor = iconColor,
                trailingIconColor = iconColor,
            ),
        )
    }
}

/** Padding uses the actual constrained card width, in dp, rather than concept-image pixels. */
@Composable
fun SettingsGroupCard(
    modifier: Modifier = Modifier,
    contentPadding: androidx.compose.foundation.layout.PaddingValues? = null,
    content: @Composable ColumnScope.() -> Unit,
) {
    val design = LocalSettingsDesign.current
    BoxWithConstraints(modifier.fillMaxWidth()) {
        Surface(
            color = design.card,
            contentColor = design.text,
            shape = design.cardShape,
            tonalElevation = 0.dp,
            shadowElevation = design.shadowElevation,
        ) {
            Column(
                modifier = Modifier.fillMaxWidth().padding(
                    contentPadding ?: androidx.compose.foundation.layout.PaddingValues(design.paddingFor(maxWidth)),
                ),
                verticalArrangement = Arrangement.spacedBy(design.itemGap),
                content = content,
            )
        }
    }
}

/**
 * Hue selects a canonical saturated color. Swatches vary only fixed HSL lightness.
 * External RGB synchronizes the hue without generating a preview or a commit.
 */
@Composable
fun SettingsColorPicker(
    color: Int,
    onColorPreview: (Int) -> Unit,
    onColorCommit: (Int) -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    tagPrefix: String = "",
    onSwatchSelected: (Int) -> Unit = onColorCommit,
) {
    val design = LocalSettingsDesign.current
    var hue by remember { mutableFloatStateOf(settingsColorHue(color)) }
    var lastEmittedColor by remember { mutableStateOf<Int?>(null) }
    var gestureStartColor by remember { mutableStateOf(color) }
    val currentColor by rememberUpdatedState(color)
    val currentEnabled by rememberUpdatedState(enabled)
    val currentOnPreview by rememberUpdatedState(onColorPreview)
    val currentOnCommit by rememberUpdatedState(onColorCommit)
    val currentOnSwatch by rememberUpdatedState(onSwatchSelected)
    LaunchedEffect(color, enabled) {
        // Ignore our own preview/commit echo: choosing a shade cannot move its base hue.
        if (!enabled || color != lastEmittedColor) hue = settingsColorHue(color, hue)
        if (!enabled) lastEmittedColor = null
    }
    val shades = remember(hue) { settingsColorShades(hue) }
    Column(modifier.fillMaxWidth().settingsTag(tagPrefix), verticalArrangement = Arrangement.spacedBy(design.itemGap)) {
        SettingsSliderControl(
            value = hue,
            valueRange = 0f..360f,
            onValueChange = { value ->
                if (currentEnabled) {
                    hue = value
                    val preview = settingsCanonicalColor(value)
                    lastEmittedColor = preview
                    currentOnPreview(preview)
                }
            },
            onValueChangeStarted = { gestureStartColor = currentColor },
            onValueChangeFinished = {
                if (currentEnabled) currentOnCommit(settingsCanonicalColor(hue))
            },
            onValueCancelled = { initialHue ->
                hue = initialHue
                if (currentEnabled) {
                    lastEmittedColor = gestureStartColor
                    currentOnPreview(gestureStartColor)
                }
            },
            enabled = enabled,
            rainbow = true,
            tag = settingsChildTag(tagPrefix, "hue"),
            modifier = Modifier.semantics {
                contentDescription = "色相"
                stateDescription = "${hue.roundToInt()}度"
            },
        )
        Row(
            modifier = Modifier.fillMaxWidth().height(design.controlHeight)
                .horizontalScroll(rememberScrollState()).selectableGroup(),
            horizontalArrangement = Arrangement.spacedBy(4.dp),
        ) {
            shades.forEachIndexed { index, shade ->
                val selected = (shade and 0x00FFFFFF) == (color and 0x00FFFFFF)
                Surface(
                    selected = selected,
                    onClick = {
                        if (currentEnabled) {
                            lastEmittedColor = shade
                            currentOnPreview(shade)
                            currentOnSwatch(shade)
                        }
                    },
                    enabled = enabled,
                    modifier = Modifier.size(design.controlHeight)
                        .settingsTag(settingsChildTag(tagPrefix, "swatch-$index"))
                        .semantics {
                            contentDescription = "颜色${index + 1}"
                            stateDescription = "${if (selected) "已选中，" else ""}${settingsColorHex(shade)}"
                        },
                    shape = design.swatchShape,
                    color = Color(shade).copy(alpha = if (enabled) 1f else .38f),
                    tonalElevation = 0.dp,
                ) {
                    Box(contentAlignment = Alignment.Center) {
                        if (selected) Icon(
                            Icons.Default.Check,
                            contentDescription = null,
                            modifier = Modifier.size(24.dp),
                            tint = if (ColorUtils.calculateLuminance(shade) > .45) design.swatchDarkInk else design.swatchLightInk,
                        )
                    }
                }
            }
        }
    }
}

private fun Modifier.settingsTag(tag: String): Modifier = if (tag.isEmpty()) this else testTag(tag)
private fun settingsChildTag(prefix: String, child: String): String = if (prefix.isEmpty()) "" else "$prefix-$child"
private fun settingsColorHex(color: Int): String = "#%06X".format(color and 0x00FFFFFF)

internal fun settingsColorHue(color: Int, fallback: Float = 0f): Float {
    val hsl = FloatArray(3)
    ColorUtils.colorToHSL(color, hsl)
    return if (hsl[1] <= .0001f) settingsNormalizedHue(fallback) else hsl[0]
}

private fun settingsNormalizedHue(hue: Float): Float =
    if (hue.isFinite()) ((hue % 360f) + 360f) % 360f else 0f

internal fun settingsCanonicalColor(hue: Float): Int =
    ColorUtils.HSLToColor(floatArrayOf(settingsNormalizedHue(hue), 1f, .5f))

/** Ten fixed lightness levels; no shade is generated from a previously selected shade. */
internal fun settingsColorShades(hue: Float): List<Int> =
    listOf(.90f, .82f, .74f, .66f, .58f, .50f, .42f, .34f, .26f, .18f).map { lightness ->
        ColorUtils.HSLToColor(floatArrayOf(settingsNormalizedHue(hue), 1f, lightness))
    }

/**
 * Observe standard draggable interactions synchronously before Slider's finish callback.
 * Foundation also ends a cancelled drag; an asynchronous collector can observe Cancel too late.
 * This source only forwards interactions and records cancellation; it does not handle input.
 */
private class SettingsSliderInteractionSource : MutableInteractionSource {
    private val delegate = MutableInteractionSource()
    override val interactions: Flow<Interaction> = delegate.interactions
    var cancelled = false
        private set
    var disposed = false
    var onCancel: () -> Unit = {}

    fun beginValueChange() { cancelled = false }
    fun disable() { cancelled = true }

    private fun observe(interaction: Interaction) {
        when (interaction) {
            is DragInteraction.Start -> cancelled = false
            is DragInteraction.Cancel -> {
                cancelled = true
                onCancel()
            }
        }
    }

    override suspend fun emit(interaction: Interaction) {
        observe(interaction)
        delegate.emit(interaction)
    }

    override fun tryEmit(interaction: Interaction): Boolean {
        observe(interaction)
        return delegate.tryEmit(interaction)
    }
}

private class SettingsSliderDraft {
    var value by mutableStateOf<Float?>(null)
    var initialValue: Float? = null

    fun clear() {
        value = null
        initialValue = null
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun SettingsSliderControl(
    value: Float,
    valueRange: ClosedFloatingPointRange<Float>,
    onValueChange: (Float) -> Unit,
    onValueChangeFinished: () -> Unit,
    onValueCancelled: (Float) -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    tag: String = "",
    steps: Int = 0,
    rainbow: Boolean = false,
    onValueChangeStarted: () -> Unit = {},
) {
    require(steps >= 0) { "Slider steps must be non-negative" }
    require(valueRange.start.isFinite() && valueRange.endInclusive.isFinite() && valueRange.start < valueRange.endInclusive) {
        "Slider range must contain two finite increasing endpoints"
    }
    val design = LocalSettingsDesign.current
    val interactionSource = remember(valueRange.start, valueRange.endInclusive, steps) { SettingsSliderInteractionSource() }
    val draft = remember(interactionSource) { SettingsSliderDraft() }
    val boundedValue = value.takeIf { it.isFinite() }?.coerceIn(valueRange) ?: valueRange.start
    val currentValue by rememberUpdatedState(boundedValue)
    val currentEnabled by rememberUpdatedState(enabled)
    val currentOnChange by rememberUpdatedState(onValueChange)
    val currentOnFinished by rememberUpdatedState(onValueChangeFinished)
    val currentOnCancelled by rememberUpdatedState(onValueCancelled)
    val currentOnStarted by rememberUpdatedState(onValueChangeStarted)
    interactionSource.onCancel = {
        val initialValue = draft.initialValue
        val hadPreview = draft.value != null
        draft.clear()
        if (!interactionSource.disposed && currentEnabled && hadPreview && initialValue != null) {
            currentOnCancelled(initialValue)
        }
    }
    DisposableEffect(interactionSource) {
        onDispose {
            interactionSource.disposed = true
            interactionSource.disable()
            draft.clear()
        }
    }
    DisposableEffect(enabled) {
        if (!enabled) {
            interactionSource.disable()
            draft.clear()
        }
        onDispose {}
    }
    val colors = SliderDefaults.colors(
        thumbColor = design.selected,
        activeTrackColor = design.selected,
        inactiveTrackColor = design.track,
        activeTickColor = Color.Transparent,
        inactiveTickColor = Color.Transparent,
        disabledThumbColor = design.selected.copy(alpha = .38f),
        disabledActiveTrackColor = design.selected.copy(alpha = .38f),
        disabledInactiveTrackColor = design.track.copy(alpha = .38f),
        disabledActiveTickColor = Color.Transparent,
        disabledInactiveTickColor = Color.Transparent,
    )
    val direction = LocalLayoutDirection.current
    val rainbowBrush = remember(direction) {
        val colorsForHue = (0..6).map { Color(settingsCanonicalColor(it * 60f)) }
        Brush.horizontalGradient(if (direction == LayoutDirection.Rtl) colorsForHue.reversed() else colorsForHue)
    }
    Slider(
        value = draft.value ?: boundedValue,
        valueRange = valueRange,
        steps = steps,
        enabled = enabled,
        colors = colors,
        interactionSource = interactionSource,
        modifier = modifier.fillMaxWidth().heightIn(min = design.controlHeight).settingsTag(tag),
        onValueChange = { next ->
            if (!interactionSource.disposed && currentEnabled && next.isFinite()) {
                val bounded = next.coerceIn(valueRange)
                if (bounded != (draft.value ?: currentValue)) {
                    if (draft.initialValue == null) {
                        interactionSource.beginValueChange()
                        draft.initialValue = currentValue
                        currentOnStarted()
                    }
                    draft.value = bounded
                    currentOnChange(bounded)
                }
            }
        },
        onValueChangeFinished = {
            val accepted = !interactionSource.disposed && currentEnabled && !interactionSource.cancelled && draft.value != null
            draft.clear()
            if (accepted) currentOnFinished()
        },
        thumb = {
            if (rainbow) {
                Box(Modifier.size(design.rainbowThumbWidth, design.controlHeight)
                    .alpha(if (enabled) 1f else .38f)
                    .border(BorderStroke(3.dp, design.rainbowThumbOutline), design.rainbowThumbShape))
            } else {
                SliderDefaults.Thumb(
                    interactionSource = interactionSource,
                    colors = colors,
                    enabled = enabled,
                    thumbSize = DpSize(4.dp, design.controlHeight),
                )
            }
        },
        track = { state ->
            if (rainbow) {
                Box(Modifier.fillMaxWidth().height(design.controlHeight)
                    .alpha(if (enabled) 1f else .38f).background(rainbowBrush, design.hueTrackShape))
            } else {
                SliderDefaults.Track(
                    sliderState = state,
                    modifier = Modifier.height(design.controlHeight),
                    enabled = enabled,
                    colors = colors,
                    drawStopIndicator = {},
                    thumbTrackGapSize = 0.dp,
                    trackInsideCornerSize = 0.dp,
                )
            }
        },
    )
}
