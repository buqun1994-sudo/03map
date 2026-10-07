package com.icar03.content.ui

import androidx.compose.animation.core.animateDpAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.interaction.DragInteraction
import androidx.compose.foundation.interaction.Interaction
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.sizeIn
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.wrapContentHeight
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.selection.selectableGroup
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.KeyboardArrowRight
import androidx.compose.material.icons.filled.Check
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.LocalMinimumInteractiveComponentSize
import androidx.compose.material3.LocalTextStyle
import androidx.compose.material3.Slider
import androidx.compose.material3.SliderDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalLayoutDirection
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.selected
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.stateDescription
import androidx.compose.ui.semantics.toggleableState
import androidx.compose.ui.state.ToggleableState
import androidx.compose.ui.text.rememberTextMeasurer
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
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
    SettingsLineText("$title·$value", modifier.fillMaxWidth(), design.labelStyle, design.text)
}

@Composable
internal fun SettingsLineText(
    text: String,
    modifier: Modifier = Modifier,
    style: TextStyle,
    color: Color,
    maxLines: Int = 1,
    textAlign: TextAlign = TextAlign.Start,
    overflow: TextOverflow = TextOverflow.Clip,
) {
    val lineBoxHeight = with(LocalDensity.current) { style.lineHeight.toDp() }
    Box(modifier.height(lineBoxHeight).clipToBounds().semantics(mergeDescendants = true) {},
        contentAlignment = Alignment.Center) {
        Text(text, Modifier.fillMaxWidth().wrapContentHeight(unbounded = true),
            style = style, color = color, maxLines = maxLines, overflow = overflow, textAlign = textAlign)
    }
}

/** Settings icon actions use the same bounded rounded press wash as Dock buttons. */
@Composable
internal fun SettingsIconButton(
    onClick: () -> Unit,
    contentDescription: String,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    tag: String = "",
    icon: @Composable (Modifier) -> Unit,
) {
    val design = LocalSettingsDesign.current
    val interactions = remember { MutableInteractionSource() }
    val feedback = rememberBoundaryPressFeedback(interactions, enabled, design.page, design.selected)
    val shape = RoundedCornerShape(12.dp)
    Box(
        modifier.size(design.minimumTouchHeight).settingsTag(tag)
            .then(feedback.touchCoordinates).then(feedback.pointerDownLatch)
            .clip(shape).then(feedback.area(design.page))
            .clickable(interactionSource = interactions, indication = null, enabled = enabled,
                role = Role.Button, onClick = onClick)
            .excludeDisabledActionTap(enabled)
            .semantics { this.contentDescription = contentDescription },
        contentAlignment = Alignment.Center,
    ) { icon(Modifier.size(28.dp)) }
}

/** Text actions retain a single rounded surface and the shared settings shadow. */
@Composable
internal fun SettingsActionButton(
    label: String,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    tag: String = "",
) {
    val design = LocalSettingsDesign.current
    val interactions = remember { MutableInteractionSource() }
    val base = design.track.copy(alpha = if (enabled) 1f else .38f)
    val feedback = rememberBoundaryPressFeedback(interactions, enabled, base, design.selected)
    val shape = RoundedCornerShape(8.dp)
    Box(
        modifier.fillMaxWidth().heightIn(min = 56.dp).settingsTag(tag)
            .downwardSoftShadow(base, design.dark, 8.dp).clip(shape)
            .then(feedback.touchCoordinates).then(feedback.pointerDownLatch)
            .then(feedback.area(base))
            .clickable(interactionSource = interactions, indication = null, enabled = enabled,
                role = Role.Button, onClick = onClick)
            .excludeDisabledActionTap(enabled)
            .semantics { this.contentDescription = label },
        contentAlignment = Alignment.Center,
    ) { SettingsLineText(label, style = design.optionStyle, color = design.text.copy(alpha = if (enabled) 1f else .38f),
        maxLines = 1, textAlign = TextAlign.Center) }
}

/** Section titles sit 24dp inside the card edge; the card owns its single shadow. */
@Composable
fun SettingsSection(
    title: String,
    modifier: Modifier = Modifier,
    contentPadding: PaddingValues? = null,
    content: @Composable ColumnScope.() -> Unit,
) {
    val design = LocalSettingsDesign.current
    Column(modifier.fillMaxWidth().testTag("settings-section-$title"),
        verticalArrangement = Arrangement.spacedBy(design.itemGap)) {
        SettingsLineText(title, Modifier.padding(start = design.pagePadding)
            .testTag("settings-section-title-$title"), design.sectionTitleStyle, design.text)
        SettingsGroupCard(Modifier.testTag("settings-card-$title"), contentPadding, content)
    }
}

/** A divider carries no implicit margins, so its page owner supplies the intended inset. */
@Composable
fun SettingsDivider(modifier: Modifier = Modifier) {
    HorizontalDivider(modifier.fillMaxWidth(), thickness = 1.dp, color = LocalSettingsDesign.current.divider)
}

@Composable
fun SettingsFieldBlock(
    title: String,
    modifier: Modifier = Modifier,
    tag: String = "",
    content: @Composable ColumnScope.() -> Unit,
) {
    val design = LocalSettingsDesign.current
    Column(modifier.fillMaxWidth().settingsTag(tag), verticalArrangement = Arrangement.spacedBy(design.itemGap)) {
        SettingsLineText(title, Modifier.fillMaxWidth().settingsTag(settingsChildTag(tag, "label")),
            design.labelStyle, design.text)
        content()
    }
}

/** Related numeric rows share a 136dp label plus 12dp gap; narrow cards use a standard Column. */
@Composable
fun SettingsSliderRow(
    title: String,
    value: Float,
    unit: String,
    valueRange: ClosedFloatingPointRange<Float>,
    onValueChange: (Float) -> Unit,
    onValueChangeFinished: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    tag: String = "",
    steps: Int = 0,
) {
    val design = LocalSettingsDesign.current
    val boundedValue = value.takeIf { it.isFinite() }?.coerceIn(valueRange) ?: valueRange.start
    val label: @Composable (Modifier) -> Unit = { labelModifier ->
        SettingsValueLabel(title, "${boundedValue.roundToInt()}$unit",
            labelModifier.testTag(if (tag.isEmpty()) "settings-label-$title" else "$tag-label"))
    }
    val slider: @Composable (Modifier) -> Unit = { sliderModifier ->
        SettingsSlider(value, valueRange, onValueChange, onValueChangeFinished,
            sliderModifier, enabled, tag, steps)
    }
    BoxWithConstraints(modifier.fillMaxWidth()) {
        if (maxWidth >= 360.dp) {
            Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(design.smallGap)) {
                label(Modifier.width(136.dp))
                slider(Modifier.weight(1f))
            }
        } else {
            Column(Modifier.fillMaxWidth(), verticalArrangement = Arrangement.spacedBy(design.smallGap)) {
                label(Modifier.fillMaxWidth())
                slider(Modifier.fillMaxWidth())
            }
        }
    }
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

/** Equal-width standard selectable segments share one capsule, without per-option frames. */
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
    val lastSelected = remember { mutableStateOf(selected) }
    SideEffect { lastSelected.value = selected }
    val textMeasurer = rememberTextMeasurer()
    val density = LocalDensity.current
    val optionStyle = LocalTextStyle.current.merge(design.optionStyle)
    val selectionInset = 2.dp
    val naturalLabelWidth = remember(options, optionStyle, textMeasurer, density) {
        with(density) {
            options.maxOf { textMeasurer.measure(it.second, style = optionStyle,
                maxLines = 1, softWrap = false).size.width }.toDp()
        }
    }
    BoxWithConstraints(modifier.fillMaxWidth().height(design.segmentHeight).settingsTag(tagPrefix)) {
        val minimumWidth = maxOf(design.segmentMinimumWidth, naturalLabelWidth + selectionInset * 2) * options.size
        val rowWidth = if (maxWidth == Dp.Infinity) minimumWidth else maxOf(maxWidth, minimumWidth)
        Box(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState())) {
            Box(
                Modifier.width(rowWidth).height(design.segmentHeight)
                    .downwardSoftShadow(design.track, design.dark)
                    .clip(design.controlShape).background(design.track.copy(alpha = if (enabled) 1f else .38f))
                    .settingsTag(settingsChildTag(tagPrefix, "track")),
            ) {
                Row(Modifier.fillMaxSize().selectableGroup()) {
                    options.forEach { (id, label) ->
                        val optionSelected = id == currentSelected
                        Box(
                            Modifier.weight(1f).fillMaxHeight()
                                .settingsTag(settingsChildTag(tagPrefix, id))
                                .clickable(interactionSource = remember(id) { MutableInteractionSource() }, indication = null,
                                    enabled = currentEnabled, role = Role.RadioButton, onClick = {
                                        if (currentEnabled && id != lastSelected.value) {
                                            lastSelected.value = id
                                            currentOnSelected(id)
                                        }
                                    })
                                .semantics {
                                    role = Role.RadioButton
                                    this.selected = optionSelected
                                    stateDescription = if (optionSelected) "已选中" else "未选中"
                                },
                            contentAlignment = Alignment.Center,
                        ) {
                            Box(
                                Modifier.padding(selectionInset).fillMaxSize()
                                    .clip(design.controlShape)
                                    .background(if (optionSelected) design.selected.copy(alpha = if (enabled) 1f else .38f) else Color.Transparent)
                                    .settingsTag(settingsChildTag(tagPrefix, "$id-surface")),
                                contentAlignment = Alignment.Center,
                            ) {
                                SettingsLineText(label, style = optionStyle,
                                    color = (if (optionSelected) design.text else design.secondaryText)
                                        .copy(alpha = if (enabled) 1f else .38f),
                                    maxLines = 1, textAlign = TextAlign.Center, overflow = TextOverflow.Ellipsis)
                            }
                        }
                    }
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
    val interactions = remember { MutableInteractionSource() }
    Box(
        modifier.sizeIn(minWidth = design.minimumTouchHeight, minHeight = design.minimumTouchHeight)
            .settingsTag(tag)
            .clickable(interactionSource = interactions, indication = null, enabled = enabled, role = Role.Switch,
                onClick = {
                    if (currentEnabled) currentOnCheckedChange(!checked)
                })
            .excludeDisabledActionTap(enabled)
            .semantics {
                role = Role.Switch
                toggleableState = if (checked) ToggleableState.On else ToggleableState.Off
                stateDescription = if (checked) "已开启" else "已关闭"
            },
        contentAlignment = Alignment.Center,
    ) {
        SettingsSwitchVisual(checked, enabled, tag)
    }
}

/** The whole label-and-switch row exposes one toggle action; its visual has no input handler. */
@Composable
fun SettingsSwitchRow(
    title: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    tag: String = "",
) {
    val design = LocalSettingsDesign.current
    val currentEnabled by rememberUpdatedState(enabled)
    val currentOnChanged by rememberUpdatedState(onCheckedChange)
    val interactions = remember { MutableInteractionSource() }
    Row(
        modifier.fillMaxWidth().heightIn(min = 30.dp).settingsTag(tag)
            .clickable(interactionSource = interactions, indication = null, enabled = enabled, role = Role.Switch,
                onClick = {
                    if (currentEnabled) currentOnChanged(!checked)
                })
            .excludeDisabledActionTap(enabled)
            .semantics {
                role = Role.Switch
                toggleableState = if (checked) ToggleableState.On else ToggleableState.Off
                stateDescription = if (checked) "已开启" else "已关闭"
            },
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(design.smallGap),
    ) {
        SettingsLineText(title, Modifier.weight(1f).settingsTag(settingsChildTag(tag, "label")),
            design.labelStyle, design.text.copy(alpha = if (enabled) 1f else .38f))
        SettingsSwitchVisual(checked, enabled, tag)
    }
}

@Composable
private fun SettingsSwitchVisual(checked: Boolean, enabled: Boolean, tag: String) {
    val design = LocalSettingsDesign.current
    val thumbInset = (design.switchHeight - design.switchThumbHeight) / 2
    val thumbOffset by animateDpAsState(
        if (checked) design.switchWidth - design.switchThumbWidth - thumbInset else thumbInset,
        animationSpec = tween(180), label = "settings-switch-thumb")
    Box(
        Modifier.size(design.switchWidth, design.switchHeight).alpha(if (enabled) 1f else .38f)
            .settingsTag(settingsChildTag(tag, "track"))
            .downwardSoftShadow(if (checked) design.onSwitchTrack else design.offSwitchTrack, design.dark)
            .clip(design.controlShape)
            .background(if (checked) design.onSwitchTrack else design.offSwitchTrack),
    ) {
        Box(Modifier.align(Alignment.CenterStart).offset(x = thumbOffset)
            .size(design.switchThumbWidth, design.switchThumbHeight)
            .background(if (checked) design.switchThumb else design.offSwitchThumb, design.controlShape)
            .settingsTag(settingsChildTag(tag, "thumb")))
    }
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
    val interactions = remember { MutableInteractionSource() }
    val feedback = rememberBoundaryPressFeedback(interactions, enabled, design.card, design.selected)
    Box(
        modifier.fillMaxWidth().heightIn(min = design.navigationHeight).settingsTag(tag)
            .then(feedback.touchCoordinates).then(feedback.pointerDownLatch)
            .clip(RoundedCornerShape(8.dp)).then(feedback.area(design.card))
            .clickable(interactionSource = interactions, indication = null, enabled = enabled,
                role = Role.Button, onClick = { if (currentEnabled) currentOnClick() })
            .excludeDisabledActionTap(enabled),
    ) {
        Row(Modifier.fillMaxWidth().padding(design.pagePadding),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(design.itemGap)) {
            Icon(icon, contentDescription = null, tint = iconColor,
                modifier = Modifier.size(24.dp).settingsTag(settingsChildTag(tag, "icon")))
            SettingsLineText(title, Modifier.weight(1f).settingsTag(settingsChildTag(tag, "label")),
                design.navigationTitleStyle, textColor)
            Icon(Icons.AutoMirrored.Filled.KeyboardArrowRight, contentDescription = null, tint = iconColor,
                modifier = Modifier.size(24.dp).settingsTag(settingsChildTag(tag, "arrow")))
        }
    }
}

/** A group owns one shape and shadow, with content spacing independent from its padding. */
@Composable
fun SettingsGroupCard(
    modifier: Modifier = Modifier,
    contentPadding: androidx.compose.foundation.layout.PaddingValues? = null,
    content: @Composable ColumnScope.() -> Unit,
) {
    val design = LocalSettingsDesign.current
    Box(
        modifier.fillMaxWidth()
            .downwardSoftShadow(design.card, design.dark, 8.dp)
            .clip(design.cardShape)
            .background(design.card),
    ) {
        Column(
            modifier = Modifier.fillMaxWidth().padding(contentPadding ?: PaddingValues(design.pagePadding)),
            verticalArrangement = Arrangement.spacedBy(design.itemGap),
            content = content,
        )
    }
}

/**
 * Hue selects a canonical saturated color. Swatches rotate the eight reference HSL levels together.
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
    var gestureStartHue by remember { mutableFloatStateOf(hue) }
    val currentColor by rememberUpdatedState(color)
    val currentEnabled by rememberUpdatedState(enabled)
    val currentOnPreview by rememberUpdatedState(onColorPreview)
    val currentOnCommit by rememberUpdatedState(onColorCommit)
    val currentOnSwatch by rememberUpdatedState(onSwatchSelected)
    LaunchedEffect(color, enabled) {
        // Ignore our own preview/commit echo: choosing a shade cannot move its base hue.
        if (!enabled || color != lastEmittedColor) {
            hue = settingsColorHue(color, hue)
            lastEmittedColor = null
        }
    }
    val shades = remember(hue) { settingsColorShades(hue) }
    Column(modifier.fillMaxWidth().settingsTag(tagPrefix), verticalArrangement = Arrangement.spacedBy(design.itemGap)) {
        SettingsSliderControl(
            value = settingsHuePosition(hue),
            valueRange = 0f..1f,
            onValueChange = { position ->
                if (currentEnabled) {
                    hue = settingsPositionHue(position)
                    val preview = settingsCanonicalColor(hue)
                    lastEmittedColor = preview
                    currentOnPreview(preview)
                }
            },
            onValueChangeStarted = { gestureStartColor = currentColor; gestureStartHue = hue },
            onValueChangeFinished = {
                if (currentEnabled) currentOnCommit(settingsCanonicalColor(hue))
            },
            onValueCancelled = {
                hue = gestureStartHue
                if (currentEnabled) {
                    lastEmittedColor = gestureStartColor
                    currentOnPreview(gestureStartColor)
                }
            },
            enabled = enabled,
            rainbow = true,
            rainbowColor = Color(lastEmittedColor ?: color),
            hueDegrees = hue,
            tag = settingsChildTag(tagPrefix, "hue"),
        )
        Box(
            modifier = Modifier.fillMaxWidth().height(design.colorHeight)
                .settingsTag(settingsChildTag(tagPrefix, "swatches"))
                .downwardSoftShadow(design.track, design.dark, 8.dp)
                .clip(design.hueTrackShape),
        ) {
            Row(Modifier.fillMaxSize().selectableGroup()) {
                shades.forEachIndexed { index, shade ->
                    val selected = (shade and 0x00FFFFFF) == (color and 0x00FFFFFF)
                    Box(
                        Modifier.weight(1f).fillMaxHeight()
                            .background(Color(shade).copy(alpha = if (enabled) 1f else .38f))
                            .settingsTag(settingsChildTag(tagPrefix, "swatch-$index"))
                            .clickable(interactionSource = remember(index) { MutableInteractionSource() }, indication = null,
                                enabled = enabled, role = Role.RadioButton, onClick = {
                                if (currentEnabled) {
                                    lastEmittedColor = shade
                                    currentOnPreview(shade)
                                    currentOnSwatch(shade)
                                }
                            })
                            .semantics {
                                role = Role.RadioButton
                                this.selected = selected
                                contentDescription = "颜色${index + 1}"
                                stateDescription = "${if (selected) "已选中，" else "未选中，"}${settingsColorHex(shade)}"
                            },
                        contentAlignment = Alignment.Center,
                    ) {
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

/** Reference hues and unequal stop positions are mapped independently from Slider input. */
private val SettingsHueStops = listOf(
    0f to 0xFFFF0000.toInt(),
    .14f to 0xFFFF7700.toInt(),
    .28f to 0xFFFFF202.toInt(),
    .42f to 0xFF21FF03.toInt(),
    .56f to 0xFF00FFEE.toInt(),
    .70f to 0xFF00A2FF.toInt(),
    .84f to 0xFFFF00FF.toInt(),
    1f to 0xFFFF0004.toInt(),
)
private val SettingsHueDegrees = SettingsHueStops.mapIndexed { index, stop ->
    if (index == SettingsHueStops.lastIndex) 360f else settingsColorHue(stop.second)
}

internal fun settingsHuePosition(hue: Float): Float {
    val degrees = if (hue.isFinite() && hue == 360f) 360f else settingsNormalizedHue(hue)
    val end = SettingsHueDegrees.indexOfFirst { it >= degrees }.coerceAtLeast(0)
    if (end == 0) return 0f
    val fraction = (degrees - SettingsHueDegrees[end - 1]) / (SettingsHueDegrees[end] - SettingsHueDegrees[end - 1])
    val startPosition = SettingsHueStops[end - 1].first
    return startPosition + fraction * (SettingsHueStops[end].first - startPosition)
}

internal fun settingsPositionHue(position: Float): Float {
    val bounded = position.takeIf { it.isFinite() }?.coerceIn(0f, 1f) ?: 0f
    val end = SettingsHueStops.indexOfFirst { it.first >= bounded }.coerceAtLeast(0)
    if (end == 0) return 0f
    val startPosition = SettingsHueStops[end - 1].first
    val fraction = (bounded - startPosition) / (SettingsHueStops[end].first - startPosition)
    return SettingsHueDegrees[end - 1] + fraction * (SettingsHueDegrees[end] - SettingsHueDegrees[end - 1])
}

private val SettingsYellowReference = listOf(
    0xFFFEFCE8.toInt(), 0xFFFEF08A.toInt(), 0xFFFACC15.toInt(), 0xFFCA8A04.toInt(),
    0xFFA16207.toInt(), 0xFF854D0E.toInt(), 0xFF713F12.toInt(), 0xFF422006.toInt(),
)

/** Eight reference HSL levels rotate together from yellow; selecting a shade cannot regenerate them. */
internal fun settingsColorShades(hue: Float): List<Int> {
    val rotation = settingsNormalizedHue(hue) - settingsColorHue(SettingsYellowReference[2])
    return SettingsYellowReference.map { reference ->
        val hsl = FloatArray(3)
        ColorUtils.colorToHSL(reference, hsl)
        hsl[0] = settingsNormalizedHue(hsl[0] + rotation)
        ColorUtils.HSLToColor(hsl)
    }
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
    rainbowColor: Color = Color.Transparent,
    hueDegrees: Float = 0f,
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
    val view = LocalView.current
    val sliderTick = LocalContentSliderTickSound.current
    val tickCount = if (steps > 0) steps + 1 else 64
    var lastTick by remember(interactionSource) { mutableIntStateOf(Int.MIN_VALUE) }
    fun emitSliderTick(next: Float) {
        val fraction = ((next - valueRange.start) / (valueRange.endInclusive - valueRange.start)).coerceIn(0f, 1f)
        val bucket = (fraction * tickCount).roundToInt()
        if (bucket != lastTick) {
            lastTick = bucket
            sliderTick(view)
        }
    }
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
        thumbColor = Color.Transparent,
        activeTrackColor = Color.Transparent,
        inactiveTrackColor = Color.Transparent,
        activeTickColor = Color.Transparent,
        inactiveTickColor = Color.Transparent,
        disabledThumbColor = Color.Transparent,
        disabledActiveTrackColor = Color.Transparent,
        disabledInactiveTrackColor = Color.Transparent,
        disabledActiveTickColor = Color.Transparent,
        disabledInactiveTickColor = Color.Transparent,
    )
    val direction = LocalLayoutDirection.current
    val rainbowBrush = remember(direction) {
        val stops = if (direction == LayoutDirection.Rtl)
            SettingsHueStops.asReversed().map { (position, color) -> (1f - position) to Color(color) }
        else SettingsHueStops.map { (position, color) -> position to Color(color) }
        Brush.horizontalGradient(*stops.toTypedArray())
    }
    val displayValue = draft.value ?: boundedValue
    val fraction = ((displayValue - valueRange.start) / (valueRange.endInclusive - valueRange.start)).coerceIn(0f, 1f)
    val visualHeight = if (rainbow) design.colorHeight else design.controlHeight
    Box(modifier.fillMaxWidth().height(visualHeight), contentAlignment = Alignment.Center) {
        val trackShape = if (rainbow) design.hueTrackShape else design.controlShape
        Box(
            Modifier.fillMaxWidth().height(visualHeight).alpha(if (enabled) 1f else .38f)
                .settingsTag(settingsChildTag(tag, "track"))
                .downwardSoftShadow(if (rainbow) design.track else design.track, design.dark)
                .clip(trackShape)
                .background(if (rainbow) Color.Transparent else design.track),
        ) {
            if (rainbow) Box(Modifier.fillMaxSize().background(rainbowBrush))
            else Box(Modifier.align(Alignment.CenterStart).fillMaxHeight().fillMaxWidth(fraction)
                .background(design.sliderFill).settingsTag(settingsChildTag(tag, "fill")))
        }
        // Disable Material's extra layout reservation, not Foundation's minimum touch target.
        CompositionLocalProvider(LocalMinimumInteractiveComponentSize provides Dp.Unspecified) {
            Slider(
                value = displayValue,
                valueRange = valueRange,
                steps = steps,
                enabled = enabled,
                colors = colors,
                interactionSource = interactionSource,
                modifier = Modifier.fillMaxWidth().height(visualHeight).settingsTag(tag).then(
                    if (rainbow) Modifier.semantics {
                        contentDescription = "色相"
                        stateDescription = "${hueDegrees.roundToInt()}度"
                    } else Modifier,
                ),
                onValueChange = { next ->
                    if (!interactionSource.disposed && currentEnabled && next.isFinite()) {
                        val bounded = next.coerceIn(valueRange)
                        if (bounded != (draft.value ?: currentValue)) {
                            if (draft.initialValue == null) {
                                interactionSource.beginValueChange()
                                draft.initialValue = currentValue
                                lastTick = (((currentValue - valueRange.start) /
                                    (valueRange.endInclusive - valueRange.start)).coerceIn(0f, 1f) * tickCount).roundToInt()
                                currentOnStarted()
                            }
                            draft.value = bounded
                            emitSliderTick(bounded)
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
                        Box(Modifier.size(design.rainbowThumbWidth, design.colorHeight)
                            .alpha(if (enabled) 1f else .38f).clip(design.rainbowThumbShape)
                            .background(rainbowColor)
                            .border(BorderStroke(4.dp, design.rainbowThumbOutline), design.rainbowThumbShape)
                            .settingsTag(settingsChildTag(tag, "thumb")))
                    } else Box(Modifier.size(0.dp, design.controlHeight))
                },
                track = { Box(Modifier.fillMaxWidth().height(visualHeight)) },
            )
        }
    }
}
