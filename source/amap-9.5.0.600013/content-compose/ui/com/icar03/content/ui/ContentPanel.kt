package com.icar03.content.ui

import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.snapshotFlow
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInVertically
import androidx.compose.animation.slideOutVertically
import androidx.compose.animation.core.CubicBezierEasing
import androidx.compose.animation.core.tween
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.ui.text.rememberTextMeasurer
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.sp
import android.graphics.Paint
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.selection.selectableGroup
import androidx.compose.ui.draw.drawBehind
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.graphics.drawscope.drawIntoCanvas
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.graphics.luminance
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.horizontalScroll
import androidx.compose.ui.res.vectorResource
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.testTag
import androidx.compose.material3.*
import androidx.compose.ui.platform.LocalView
import android.view.SoundEffectConstants
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.semantics.*
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import kotlin.math.roundToInt

internal val NaturalTextWidth = SemanticsPropertyKey<Float>("NaturalTextWidth")
internal val TemperatureVisible = SemanticsPropertyKey<Boolean>("TemperatureVisible")
internal val PressActive = SemanticsPropertyKey<Boolean>("PressActive")
internal val PressScale = SemanticsPropertyKey<Float>("PressScale")
internal val PressBackground = SemanticsPropertyKey<Long>("PressBackground")
internal val PressFeedback = SemanticsPropertyKey<String>("PressFeedback")



/** Stateless reusable preview panel. Geometry follows the supplied 640×1080 prototype. */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ContentPanel(
    state: ContentUiState, onEvent: (ContentEvent) -> Unit, modifier: Modifier = Modifier,
    artwork: @Composable (() -> Unit)? = null,
    ambientBackground: @Composable (() -> Unit)? = null,
    clockText: @Composable () -> ClockText = { ClockText(state.time, state.weekday) },
    lyricsState: @Composable () -> LyricsState = { state.lyrics },
) {
    val view = LocalView.current
    val dockOverlay = remember { DockLevelOverlayState() }
    rememberQuickControlGestureGate(!state.sourcesOpen && !state.scenariosOpen) { dockOverlay.cancel() }
    val latestEvent by rememberUpdatedState(onEvent)
    val dispatch: (ContentEvent) -> Unit = { event ->
        // Compose does not call View.performClick(): use the same system sound path
        // as the old Android buttons, respecting the user's sound-effects setting.
        if (event !is ContentEvent.PageSelected && event != ContentEvent.DismissSheet) {
            playClickSound(view)
        }
        latestEvent(event)
    }
    Surface(modifier.fillMaxSize(), color = MaterialTheme.colorScheme.background) {
        BoxWithConstraints(Modifier.fillMaxSize()) {
        val compact = !state.previewMode && maxWidth < 600.dp
        val edge = if (compact) 8.dp else 20.dp
        ambientBackground?.invoke()
        Column(Modifier.fillMaxSize()) {
            PrototypeTopBar(state, clockText)
            Box(Modifier.weight(1f).fillMaxWidth()) {
                if (state.previewMode) {
                    if (state.page == PanelPage.Shortcuts) {
                        Column(Modifier.fillMaxSize().padding(horizontal = edge).verticalScroll(rememberScrollState())) { PrototypeGrid(state, dispatch) }
                    } else LyricsPage(state, dispatch, lyricsState)
                } else {
                    val pager = rememberPagerState(initialPage = state.page.ordinal, pageCount = { PanelPage.entries.size })
                    val currentPage by rememberUpdatedState(state.page)
                    val currentEvent by rememberUpdatedState(dispatch)
                    LaunchedEffect(state.page) {
                        if (pager.currentPage != state.page.ordinal) pager.animateScrollToPage(state.page.ordinal,
                            animationSpec = tween(700, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)))
                    }
                    LaunchedEffect(pager) {
                        snapshotFlow { pager.settledPage }.collect { index ->
                            if (index != currentPage.ordinal) currentEvent(ContentEvent.PageSelected(PanelPage.entries[index]))
                        }
                    }
                    HorizontalPager(pager, Modifier.fillMaxSize().testTag("runtime-pages")) { index ->
                        CompositionLocalProvider(LocalIconVisible provides (index == pager.currentPage)) {
                        if (PanelPage.entries[index] == PanelPage.Shortcuts) {
                            Column(Modifier.fillMaxSize().padding(horizontal = edge).verticalScroll(rememberScrollState())) {
                                PrototypeGrid(state, dispatch)
                                if (state.message != null) Text(state.message,
                                    Modifier.padding(vertical = 12.dp).semantics { liveRegion = LiveRegionMode.Polite },
                                    color = MaterialTheme.colorScheme.onSurfaceVariant)
                            }
                        } else LyricsPage(state, dispatch, lyricsState)
                        }
                    }
                }
            }
            Box(Modifier.fillMaxWidth().height(if (compact) 80.dp else 136.dp).padding(start = edge, end = edge, bottom = if (compact) 8.dp else 16.dp)) {
                PrototypeMediaCard(state.media, dispatch, artwork, state.previewMode || state.media.sourceAvailable, compact)
            }
            PrototypeDock(state, dispatch, compact, dockOverlay)
        }
        DockLevelOverlayHost(dockOverlay) { control, level, modifier ->
            VehicleControlOemIcon(control, state.controls.getValue(control).copy(target = level), state.dark, modifier)
        }
        AnimatedVisibility(
            visible = state.sourcesOpen,
            enter = fadeIn(tween(240)) + slideInVertically(tween(240, easing = CubicBezierEasing(.32f, .72f, 0f, 1f))) { 24 },
            exit = fadeOut(tween(200)) + slideOutVertically(tween(200)) { 24 },
        ) { PrototypeSources(state, dispatch) }
        if (state.scenariosOpen) PreviewScenarioSheet(state, dispatch)
        // This follows the Compose host's actual viewport, supplied by the divider
        // owner. It never assumes 640px or modifies either map Surface.
        Box(Modifier.align(Alignment.CenterEnd).fillMaxHeight().width(1.dp)
            .background(MaterialTheme.colorScheme.outline.copy(alpha = .5f)).testTag("content-divider"))
        }
    }
}

@Composable
private fun PrototypeTopBar(state: ContentUiState, clockText: @Composable () -> ClockText) {
    val clock = clockText()
    BoxWithConstraints(Modifier.fillMaxWidth()) {
        val density = LocalDensity.current
        val measurer = rememberTextMeasurer()
        val compact = maxWidth < 600.dp
        val style = MaterialTheme.typography.titleLarge
        val gap = if (compact) 4.dp else 8.dp
        val batterySize = if (compact) 24.dp else 32.dp
        val availablePx = with(density) { (maxWidth - 24.dp - batterySize).toPx() }
        val gapPx = with(density) { gap.toPx() }
        fun width(text: String) = measurer.measure(AnnotatedString(text), style, softWrap = false, maxLines = 1).size.width.toFloat()
        val temperature = state.temperature.replace("°C", "°").replace("°", "°C")
        val range = state.range + state.rangeUnit
        fun timeWithWeekday(time: String, weekday: String) = time + if (weekday.isEmpty()) "" else " " + weekday
        val fullTime = timeWithWeekday(clock.time, clock.weekday)
        val minuteTime = timeWithWeekday(clock.time.take(5), clock.weekday)
        val shortWeekdayTime = timeWithWeekday(clock.time.take(5), clock.weekday.replace("星期", "周"))
        val temperatureGap = gap + 4.dp
        val fullStatus = state.chargeStatus
        val statuses = if (fullStatus == null) listOf("") else listOf(
            fullStatus,
            fullStatus.replace(" ", ""),
            fullStatus.replace(" ", "").replace("功率", "").replace("剩余", ""),
            when {
                fullStatus.contains("待确认") -> "状态待确认"
                fullStatus.contains("预约") -> "预约充电中"
                state.charging || fullStatus.contains("kW") || fullStatus.contains("充电中") -> "充电中"
                fullStatus.contains("已插枪") -> "已插枪"
                else -> fullStatus
            },
        ).distinct()
        fun required(time: String, status: String, showTemperature: Boolean): Float {
            val texts = listOf(time, status, range, if (showTemperature) temperature else "").filter { it.isNotEmpty() }
            return texts.sumOf { width(it).toDouble() }.toFloat() + gapPx * (texts.size + 1) + if (fullStatus != null && showTemperature) with(density) { 4.dp.toPx() } else 0f
        }
        // Optional temperature yields first, then seconds; weekday and primary values survive.
        val choices = listOf(Triple(fullTime, statuses.first(), true), Triple(fullTime, statuses.first(), false)) +
            statuses.flatMap { status -> listOf(Triple(minuteTime, status, false), Triple(shortWeekdayTime, status, false)) }
        val choice = choices.firstOrNull { required(it.first, it.second, it.third) <= availablePx }
            ?: Triple(shortWeekdayTime, statuses.last(), false)
        val time = choice.first
        val status = choice.second
        val showTemperature = choice.third
        val battery = when {
            state.charging -> R.drawable.content_oem_ico_battery_charging
            state.previewMode -> R.drawable.content_oem_ico_battery_4
            state.batteryPercent == null -> R.drawable.content_oem_ico_battery_0
            else -> listOf(R.drawable.content_oem_ico_battery_0, R.drawable.content_oem_ico_battery_1,
                R.drawable.content_oem_ico_battery_2, R.drawable.content_oem_ico_battery_3,
                R.drawable.content_oem_ico_battery_4, R.drawable.content_oem_ico_battery_5)[(state.batteryPercent / 20).coerceIn(0, 5)]
        }
        Row(Modifier.fillMaxWidth().height(if (compact) 48.dp else 59.dp).padding(horizontal = 12.dp)
            .testTag("top-bar").semantics { this[TemperatureVisible] = showTemperature },
            verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(gap)) {
            TopBarText(time, "top-time", style, width(time), description = fullTime)
            if (fullStatus != null && showTemperature) Row(Modifier.padding(start = temperatureGap - gap)) {
                TopBarText(temperature, "top-temperature", style, width(temperature))
            }
            Spacer(Modifier.weight(1f))
            if (fullStatus == null && showTemperature) TopBarText(temperature, "top-temperature", style, width(temperature))
            if (fullStatus != null) TopBarText(status, "charge-status", style, width(status), description = fullStatus)
            TopBarText(range, "top-range", style, width(range))
            val base = MaterialTheme.colorScheme.primary
            val green = Color(0xFF76E65B)
            val colors = when {
                state.charging -> mapOf(0 to base, 1 to base, 2 to green)
                battery == R.drawable.content_oem_ico_battery_0 -> mapOf(0 to base)
                else -> mapOf(0 to green, 1 to base)
            }
            OemIcon(battery, Modifier.size(batterySize).testTag("top-battery"), state.batteryDescription,
                tint = Color.Unspecified, pathColors = colors)
        }
    }
}

@Composable
private fun TopBarText(text: String, tag: String, style: TextStyle, naturalWidth: Float, description: String? = null) {
    Text(text, Modifier.testTag(tag).semantics {
        this[NaturalTextWidth] = naturalWidth
        if (description != null) stateDescription = description
    }, style = style, maxLines = 1, softWrap = false)
}

@Composable
private fun PrototypeGrid(state: ContentUiState, onEvent: (ContentEvent) -> Unit) {
    BoxWithConstraints(Modifier.fillMaxWidth()) {
        val narrow = maxWidth < 560.dp
        val gap = if (narrow) 12.dp else 20.dp
        val columnWidth = (maxWidth - gap * 3) / 4
        val columns = if (columnWidth < 88.dp) 2 else 4
        val density = LocalDensity.current
        val labelMeasurer = rememberTextMeasurer()
        val tileWidth = if (columns == 4) columnWidth else (maxWidth - gap) / 2
        val labelWidth = with(density) { (tileWidth - 4.dp).roundToPx().coerceAtLeast(1) }
        val labelHeight = ShortcutGrid.buttons.maxOf { id ->
            labelMeasurer.measure(AnnotatedString(id.label), quickControlLabelStyle(), maxLines = 2,
                constraints = androidx.compose.ui.unit.Constraints(maxWidth = labelWidth)).size.height
        }
        val tileHeight = maxOf(if (narrow) 112.dp else 135.dp, with(density) { labelHeight.toDp() } + 68.dp)
        val verticalHeight = maxOf(290.dp, tileHeight * 2 + gap)
        Column(verticalArrangement = Arrangement.spacedBy(gap)) {
            ShortcutGrid.buttons.chunked(columns).forEach { row ->
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(gap)) {
                    row.forEach { id -> Box(Modifier.weight(1f)) { ShortcutTile(id, state, onEvent, tileHeight) } }
                    repeat(columns - row.size) { Spacer(Modifier.weight(1f)) }
                }
            }
            val verticals = ShortcutGrid.verticals.map { QuickVerticalCell.Shortcut(it) } +
                SystemQuickControl.entries.map { QuickVerticalCell.System(it) }
            if (columns == 4) {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(gap)) {
                    Column(Modifier.width(columnWidth), verticalArrangement = Arrangement.spacedBy(gap)) {
                        ShortcutGrid.lowerToggles.forEach { id -> ShortcutTile(id, state, onEvent, (verticalHeight - gap) / 2) }
                    }
                    verticals.take(3).forEach { cell ->
                        Box(Modifier.width(columnWidth)) { QuickVerticalCellContent(cell, state, onEvent, verticalHeight) }
                    }
                    repeat((3 - verticals.size).coerceAtLeast(0)) { Spacer(Modifier.width(columnWidth)) }
                }
                verticals.drop(3).chunked(4).forEach { row ->
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(gap)) {
                        row.forEach { cell -> Box(Modifier.width(columnWidth)) { QuickVerticalCellContent(cell, state, onEvent, verticalHeight) } }
                        repeat(4 - row.size) { Spacer(Modifier.width(columnWidth)) }
                    }
                }
            } else {
                ShortcutGrid.lowerToggles.chunked(2).forEach { row ->
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(gap)) {
                        row.forEach { id -> Box(Modifier.weight(1f)) { ShortcutTile(id, state, onEvent, tileHeight) } }
                        repeat(2 - row.size) { Spacer(Modifier.weight(1f)) }
                    }
                }
                verticals.chunked(2).forEach { row ->
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(gap)) {
                        row.forEach { cell -> Box(Modifier.weight(1f)) { QuickVerticalCellContent(cell, state, onEvent, verticalHeight) } }
                        repeat(2 - row.size) { Spacer(Modifier.weight(1f)) }
                    }
                }
            }
        }
    }
}

private sealed interface QuickVerticalCell {
    data class Shortcut(val id: ShortcutId) : QuickVerticalCell
    data class System(val id: SystemQuickControl) : QuickVerticalCell
}

@Composable
private fun QuickVerticalCellContent(cell: QuickVerticalCell, state: ContentUiState, onEvent: (ContentEvent) -> Unit,
    height: androidx.compose.ui.unit.Dp) = when (cell) {
    is QuickVerticalCell.Shortcut -> ShortcutVertical(cell.id, state, onEvent, height)
    is QuickVerticalCell.System -> SystemVertical(cell.id, state, onEvent, height)
}

@Composable
private fun SystemVertical(id: SystemQuickControl, state: ContentUiState, onEvent: (ContentEvent) -> Unit,
    height: androidx.compose.ui.unit.Dp) {
    val brightness = id == SystemQuickControl.Brightness
    ContinuousVerticalControl(id.label, if (brightness) R.drawable.content_oem_ico_brightness_mid else R.drawable.content_oem_ico_volume_2,
        if (brightness) state.brightness else state.volume, if (brightness) "brightness-card" else "volume-card", height = height) {
        onEvent(if (brightness) ContentEvent.BrightnessChanged(it) else ContentEvent.VolumeChanged(it))
    }
}

@Composable
private fun ShortcutVertical(id: ShortcutId, state: ContentUiState, onEvent: (ContentEvent) -> Unit,
    height: androidx.compose.ui.unit.Dp) {
    val control = requireNotNull(id.control)
    val current = state.controls.getValue(control)
    val manualLevel = current.displayed.takeIf { (current.known || current.pending) && it in 0..control.maxManualLevel }
    val enabled = current.available && current.known && !current.pending && control.isLevel(current.actual)
    val status = when {
        current.pending -> "待确认"
        !current.known -> "状态未知"
        control.isAutomatic(current.displayed) -> "自动"
        current.displayed == 0 -> "关闭"
        else -> "${current.displayed}档"
    }
    SteppedVerticalControl(id.label, control.maxManualLevel, manualLevel, "control-${id.name}", height = height,
        enabled = enabled, status = status,
        onPower = { onEvent(ContentEvent.ControlPowerTapped(control)) },
        onCommit = { onEvent(ContentEvent.ControlLevelChanged(control, it)) }) { level, modifier ->
        val iconState = if (level != null && (current.known || current.pending)) current.copy(target = level) else current
        VehicleControlOemIcon(control, iconState, state.dark, modifier.testTag("shortcut-icon-${id.name}"))
    }
}

private fun shortcutStatus(id: ShortcutId, state: ContentUiState): String {
    if (id == ShortcutId.RearWiper || id == ShortcutId.RearWash) return if (state.placeholderSwitches[id] == true) "开启（本地反馈，车控未接入）" else "关闭（本地反馈，车控未接入）"
    val control = id.control?.let { state.controls.getValue(it) } ?: return id.label
    return when {
        control.pending -> "待确认"
        !control.known -> "状态未知"
        id == ShortcutId.AutoWiper -> if (ControlId.Wiper.isAutomatic(control.actual)) "自动" else "关闭"
        id == ShortcutId.Lock -> if (control.actual == 1) "已锁" else "未锁"
        control.actual == 0 -> "关闭"
        id.control?.isAutomatic(control.actual) == true -> "自动"
        else -> "${control.actual}档"
    }
}

private fun shortcutIcon(id: ShortcutId, state: ContentUiState): Int = when (id) {
    ShortcutId.Lock -> state.controls.getValue(ControlId.Lock).let { if (!it.known && !it.pending || it.displayed == 1) R.drawable.content_oem_ico_lock_close else R.drawable.content_oem_ico_lock_open }
    ShortcutId.SteeringHeat -> steeringHeatIcon(state.controls.getValue(ControlId.SteeringHeat).displayed, state.dark)
    ShortcutId.Wiper -> vehicleControlIconRecipe(ControlId.Wiper, state.controls.getValue(ControlId.Wiper).displayed, state.dark).resource
    ShortcutId.AutoWiper -> vehicleControlIconRecipe(ControlId.Wiper, ControlId.Wiper.automaticLevel, state.dark).resource
    ShortcutId.RearWiper -> rearWiperIconRecipe(state.placeholderSwitches[id] == true, state.dark).resource
    ShortcutId.RearWash -> R.drawable.content_oem_ico_wash_rear
    ShortcutId.Settings -> R.drawable.content_oem_ic_settings
    else -> seatIcon(requireNotNull(id.control), state)
}

/** Same Launcher skin family as the manual/AUTO Lottie, including the A badge. */
internal fun steeringHeatIcon(level: Int, dark: Boolean = false): Int =
    vehicleControlIconRecipe(ControlId.SteeringHeat, level, dark).resource

@Composable
private fun shortcutTint(id: ShortcutId, state: ContentUiState): Color = when {
    id == ShortcutId.Lock && state.controls.getValue(ControlId.Lock).known && state.controls.getValue(ControlId.Lock).displayed == 0 -> Color(0xFF3FA9FF)
    id == ShortcutId.SteeringHeat -> Color.Unspecified
    id.control != null && id.control != ControlId.Lock -> Color.Unspecified
    else -> MaterialTheme.colorScheme.primary
}

@Composable
private fun sourceTint(): Color = MaterialTheme.colorScheme.primary

private fun shortcutSelected(id: ShortcutId, state: ContentUiState): Boolean {
    if (id == ShortcutId.RearWiper || id == ShortcutId.RearWash) return state.placeholderSwitches[id] == true
    val control = id.control?.let { state.controls.getValue(it) } ?: return false
    if (id == ShortcutId.AutoWiper) return (control.known || control.pending) && ControlId.Wiper.isAutomatic(control.displayed)
    return (control.known || control.pending) && if (id == ShortcutId.Lock) control.displayed == 0 else control.displayed > 0
}

private fun shortcutEvent(id: ShortcutId, state: ContentUiState): ContentEvent? = when (id) {
    ShortcutId.Wiper -> ContentEvent.ControlPowerTapped(ControlId.Wiper)
    ShortcutId.AutoWiper -> ContentEvent.ControlAutomaticTapped(ControlId.Wiper)
    ShortcutId.RearWiper, ShortcutId.RearWash -> ContentEvent.PlaceholderToggled(id)
    ShortcutId.Settings -> if (state.previewMode) ContentEvent.OpenScenarios else ContentEvent.SettingsTapped
    else -> id.control?.let { ContentEvent.ControlTapped(it) }
}

private fun dockEvent(id: ShortcutId, state: ContentUiState): ContentEvent? = shortcutEvent(id, state)

internal fun shortcutRippleEnabled(id: ShortcutId, state: ContentUiState): Boolean {
    val idControl = id.control ?: return true
    val control = state.controls.getValue(idControl)
    if (!control.available || !control.known || control.pending || !idControl.isLevel(control.actual)) return false
    return idControl.crossesPowerBoundary(control.actual)
}

@Composable
private fun ShortcutTile(id: ShortcutId, state: ContentUiState, onEvent: (ContentEvent) -> Unit, height: androidx.compose.ui.unit.Dp) {
    val control = id.control?.let { state.controls.getValue(it) }
    val enabled = control == null || control.available && control.known && !control.pending && id.control!!.isLevel(control.actual)
    val tag = shortcutTag(id)
    val icon: @Composable (Modifier) -> Unit = { modifier ->
        ShortcutOemIcon(id, state, shortcutIcon(id, state), modifier.testTag("shortcut-icon-${id.name}"))
    }
    if (id.type == QuickControlType.OrdinaryToggle) {
        OrdinaryToggle(id.label, shortcutStatus(id, state), shortcutSelected(id, state), enabled, tag,
            Modifier.height(height), onClick = { shortcutEvent(id, state)?.let(onEvent) }, icon = icon)
    } else {
        DynamicIconSwitch(id.label, shortcutStatus(id, state), shortcutSelected(id, state), enabled,
            shortcutRippleEnabled(id, state), tag, Modifier.height(height),
            onClick = { shortcutEvent(id, state)?.let(onEvent) }, icon = icon)
    }
}

internal fun shortcutTag(id: ShortcutId): String =
    if (id.control != null && id != ShortcutId.AutoWiper) "control-${id.name}" else "shortcut-${id.name}"

@Composable
private fun PrototypeMediaCard(media: MediaState, onEvent: (ContentEvent) -> Unit, artwork: @Composable (() -> Unit)?, sourcesEnabled: Boolean, compact: Boolean) {
    val button = if (compact) 48.dp else 80.dp
    val icon = if (compact) 28.dp else 42.dp
    val colors = LocalContentColors.current
    Surface(Modifier.fillMaxSize().testTag("media-card").downwardSoftShadow(colors.mediaBase, MaterialTheme.colorScheme.background.luminance() < 0.2f), shape = RoundedCornerShape(12.dp), color = colors.mediaBase, shadowElevation = 0.dp) {
        Row(Modifier.fillMaxSize(), verticalAlignment = Alignment.CenterVertically) {
            Surface(Modifier.width(if (compact) 72.dp else 120.dp).fillMaxHeight(), color = colors.mediaArtworkBase) {
                Box(contentAlignment = Alignment.Center) { if (artwork != null) artwork() else OemIcon(R.drawable.content_oem_ico_media_music, Modifier.size(48.dp), "音乐封面") }
            }
            Column(Modifier.weight(1f).padding(horizontal = if (compact) 4.dp else 20.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
                Text(media.title ?: "暂无媒体", style = if (compact) MaterialTheme.typography.bodyMedium else MaterialTheme.typography.headlineSmall, maxLines = 1, overflow = TextOverflow.Ellipsis)
                Text(media.artist ?: "未连接", style = if (compact) MaterialTheme.typography.bodySmall else MaterialTheme.typography.titleMedium, color = MaterialTheme.colorScheme.onSurfaceVariant, maxLines = 1, overflow = TextOverflow.Ellipsis)
            }
            RoundedPressButton(Modifier.size(button), "media-play", if (media.playing) "暂停" else "播放",
                media.available && media.playbackAvailable && !media.pending, compact,
                onClick = { onEvent(ContentEvent.PlayPause) }) {
                OemIcon(if (media.targetPlaying ?: media.playing) R.drawable.content_oem_ico_media_pause_f else R.drawable.content_oem_ico_media_play_f, Modifier.size(icon).testTag("media-play-icon"), animateOnAction = false)
            }
            Spacer(Modifier.width(if (compact) 0.dp else 12.dp))
            RoundedPressButton(Modifier.size(button), "media-next", "下一首", media.available && media.nextAvailable && !media.pending, compact,
                onClick = { onEvent(ContentEvent.NextTrack) }) { OemIcon(R.drawable.content_oem_ico_media_next_f, Modifier.size(icon).testTag("media-next-icon")) }
            Spacer(Modifier.width(if (compact) 0.dp else 12.dp))
            VerticalDivider(Modifier.height(64.dp), color = MaterialTheme.colorScheme.outline)
            RoundedPressButton(Modifier.width(if (compact) 48.dp else 96.dp).fillMaxHeight()
                .semantics { stateDescription = if (media.targetSource != null) "切换中：${media.targetSource.label}" else media.source.label },
                "source-button", "选择来源", sourcesEnabled, compact, onClick = { onEvent(ContentEvent.OpenSources) }) {
                OemIcon(sourceIcon(media.targetSource ?: media.source), Modifier.size(icon).testTag("media-source-icon"), tint = sourceTint())
            }
        }
    }
}

@Composable
private fun PrototypeDock(state: ContentUiState, onEvent: (ContentEvent) -> Unit, compact: Boolean, overlay: DockLevelOverlayState) {
     val colors = LocalContentColors.current
    val items = DockShortcuts.items
    Box(Modifier.fillMaxWidth().height(if (compact) 72.dp else 112.dp).padding(start = if (compact) 8.dp else 12.dp, end = if (compact) 8.dp else 12.dp, bottom = if (compact) 8.dp else 12.dp)) {
        Surface(
            Modifier.fillMaxSize().testTag("floating-dock").downwardSoftShadow(colors.dockBase, state.dark), shape = RoundedCornerShape(12.dp),
            color = colors.dockBase, shadowElevation = 0.dp,
        ) {
            BoxWithConstraints(Modifier.fillMaxSize()) {
                val minDockWidth = if (compact) 48.dp * items.size
                    else 114.dp + 72.dp * (items.size - 1)
                val dockWidth = maxWidth.coerceAtLeast(minDockWidth)
                Box(Modifier.fillMaxSize().horizontalScroll(rememberScrollState())) {
                    Row(Modifier.width(dockWidth).fillMaxHeight(), verticalAlignment = Alignment.CenterVertically) {
                        items.forEach { id ->
                            val control = id.control?.let { state.controls.getValue(it) }
                            val selected = shortcutSelected(id, state)
                            val enabled = control == null || control.available && control.known && !control.pending && id.control!!.isLevel(control.actual)
                            val stepped = id.type == QuickControlType.SteppedVertical
                            val rippleEnabled = if (stepped) enabled else shortcutRippleEnabled(id, state)
                            val levelGesture = if (stepped) dockLevelGesture(id.control!!, control!!, overlay) {
                                onEvent(ContentEvent.ControlLevelChanged(id.control, it))
                            } else Modifier
                            val slot = (if (!compact && id == ShortcutId.Lock) Modifier.width(114.dp) else Modifier.weight(1f))
                                .fillMaxHeight().then(levelGesture)
                                .semantics { this.selected = selected; stateDescription = shortcutStatus(id, state) }
                            RoundedPressButton(slot, "dock-${id.name}", id.label, enabled, compact,
                                onClick = { dockEvent(id, state)?.let(onEvent) }, rectangular = false,
                                selected = selected && id != ShortcutId.Lock,
                                selectedColor = colors.dockSelected,
                                baseColor = colors.dockBase,
                                rippleEnabled = rippleEnabled,
                                rippleColor = if (selected && id != ShortcutId.Lock) colors.dockBase else colors.dockSelected) {
                                ShortcutOemIcon(id, state, shortcutIcon(id, state), Modifier.size(if (compact) 32.dp else 48.dp).testTag("dock-icon-${id.name}"))
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun RoundedPressButton(
    modifier: Modifier, tag: String, description: String, enabled: Boolean, compact: Boolean,
    onClick: () -> Unit, rectangular: Boolean = true, selected: Boolean = false,
    baseColor: Color? = null,
    selectedColor: Color? = null,
    rippleEnabled: Boolean = !rectangular,
    rippleColor: Color? = null,
    content: @Composable () -> Unit,
) {
    val colors = LocalContentColors.current
    val interactions = remember { MutableInteractionSource() }
    val pressed by interactions.collectIsPressedAsState()
    val active = pressed && enabled
    var action by remember { mutableIntStateOf(0) }
    // Fixed RGB with animated opacity avoids interpolating Transparent's black RGB.
    val opacity by animateFloatAsState(if (active && rectangular) 1f else 0f,
        tween(if (active) 200 else 240, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)), label = "press-opacity")
    val scale by pressScale(active)
    val background = if (opacity == 0f) Color.Transparent else colors.mediaPressed.copy(alpha = opacity)
    val selectedSurface = selectedColor ?: colors.dockSelected
    val rippleSurface = rippleColor ?: selectedSurface
    val base = if (selected) selectedSurface else baseColor ?: colors.mediaBase
    val feedback = rememberBoundaryPressFeedback(interactions, enabled && rippleEnabled && !rectangular, base, rippleSurface)
    Box(modifier.sizeIn(minWidth = 48.dp, minHeight = 48.dp).testTag(tag)
        .then(feedback.touchCoordinates)
            .then(feedback.pointerDownLatch)
        .clickable(interactionSource = interactions, indication = null, enabled = enabled, role = Role.Button, onClick = { action++; onClick() })
        .semantics { contentDescription = description; this[PressActive] = active; this[PressBackground] = background.value.toLong(); this[PressScale] = scale; this[PressFeedback] = if (rectangular || rippleEnabled) if (rectangular) "opacity-rectangle" else "touch-ripple" else "none" },
        contentAlignment = Alignment.Center) {
        val shape = RoundedCornerShape(if (compact) 12.dp else 16.dp)
        val pressArea = Modifier.size(if (compact) 48.dp else 72.dp)
            .clip(shape)
            .then(if (rectangular) Modifier.background(background, shape) else feedback.area(base))
            .testTag("$tag-press-area")
        Box(pressArea, contentAlignment = Alignment.Center) {
            CompositionLocalProvider(LocalIconPressed provides active, LocalIconAction provides action) { content() }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun PrototypeSources(state: ContentUiState, onEvent: (ContentEvent) -> Unit) {
    BoxWithConstraints(Modifier.fillMaxSize().testTag("sources-overlay")) {
         val colors = LocalContentColors.current
        val compact = !state.previewMode && (maxWidth < 600.dp || maxHeight < 800.dp)
        val rowHeight = if (compact) 48.dp else 80.dp
        val menuWidth = 280.dp.coerceAtMost(maxWidth - 16.dp)
        val sourceStyle = MaterialTheme.typography.titleLarge
        val measurer = rememberTextMeasurer()
        val density = LocalDensity.current
        val longestLabel = MediaSource.entries.maxOf { measurer.measure(AnnotatedString(it.label), sourceStyle, softWrap = false).size.width }
        val groupWidth = with(density) { longestLabel.toDp() } + 36.dp + 12.dp
        val groupInset = ((menuWidth - 16.dp - groupWidth) / 2).coerceAtLeast(12.dp)
        Box(Modifier.fillMaxSize().testTag("sources-dismiss").pointerInput(Unit) {
            detectTapGestures { onEvent(ContentEvent.DismissSheet) }
        })
        Surface(
            Modifier.align(Alignment.BottomEnd).padding(end = if (compact) 8.dp else 20.dp, bottom = if (compact) 152.dp else 264.dp)
                .width(menuWidth).testTag("sources-menu")
                .downwardSoftShadow(colors.sourceBase, state.dark),
            shape = RoundedCornerShape(12.dp), color = colors.sourceBase,
        ) {
            Column(Modifier.padding(8.dp).selectableGroup()) {
                MediaSource.entries.forEach { source ->
                    val selected = state.media.source == source
                    val interactions = remember { MutableInteractionSource() }
                    val pressed by interactions.collectIsPressedAsState()
                    Row(
                        Modifier.fillMaxWidth().height(rowHeight).testTag("source-${source.name}")
                            .background(if (selected) colors.sourceSelected else Color.Transparent, RoundedCornerShape(8.dp))
                            .clickable(interactionSource = interactions, indication = ripple(color = colors.sourceSelected), enabled = (!state.previewMode || state.media.available) && state.media.sourceAvailable && !state.media.pending, role = Role.RadioButton) { onEvent(ContentEvent.SourceSelected(source)) }
                            .semantics { this.selected = selected }
                            .padding(start = groupInset),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(12.dp),
                    ) {
                        CompositionLocalProvider(LocalIconPressed provides pressed) {
                        Row(Modifier.testTag("source-group-${source.name}"), verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                            OemIcon(sourceIcon(source), Modifier.size(36.dp).testTag("source-icon-${source.name}"), tint = sourceTint(), animateOnPress = true, animateOnAction = false)
                            Text(source.label, Modifier.testTag("source-label-${source.name}"), style = sourceStyle, maxLines = 1, softWrap = false)
                        }
                        }
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun PreviewScenarioSheet(state: ContentUiState, onEvent: (ContentEvent) -> Unit) {
     val colors = LocalContentColors.current
    ModalBottomSheet(onDismissRequest = { onEvent(ContentEvent.DismissSheet) }, containerColor = colors.sheetBase) {
        Column(Modifier.fillMaxWidth().padding(24.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
            Text("预览场景", style = MaterialTheme.typography.headlineSmall)
            Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                Text("深色模式", Modifier.weight(1f))
                Switch(checked = state.dark, onCheckedChange = { onEvent(ContentEvent.ToggleTheme) })
            }
            PreviewScenario.entries.forEach { scenario ->
                TextButton(onClick = { onEvent(ContentEvent.ScenarioSelected(scenario)) }, Modifier.fillMaxWidth()) { Text(scenario.label, Modifier.weight(1f)) }
            }
        }
    }
}

@Composable
private fun LyricsPage(state: ContentUiState, onEvent: (ContentEvent) -> Unit, lyricsState: @Composable () -> LyricsState) {
    val lyrics = lyricsState()
    LyricsBodyTransition(lyrics, state.dark) {
        if (lyrics.lines.isEmpty()) LyricsEmptyContent(state, onEvent, lyrics)
    }
}

@Composable
private fun LyricsEmptyContent(state: ContentUiState, onEvent: (ContentEvent) -> Unit, lyrics: LyricsState) {
    // A song change can briefly have no lines. Keep the ambient canvas uninterrupted;
    // show the existing empty/source affordance only after lookup actually finishes.
    val showLoading = state.media.isSong && lyrics.loading
    if (!state.previewMode && showLoading) return
    val emptyState = if (state.media.isSong) lyrics.emptyState else LyricsEmptyState.NoLyrics
    val emptyText = when {
        showLoading -> "正在匹配歌词…"
        emptyState == LyricsEmptyState.NetworkError -> "网络错误"
        emptyState == LyricsEmptyState.Instrumental -> "纯音乐，请您欣赏"
        else -> "暂无歌词"
    }
    val interactions = remember { MutableInteractionSource() }
    val pressed by interactions.collectIsPressedAsState()
    androidx.compose.ui.layout.Layout(
        modifier = Modifier.fillMaxSize().padding(horizontal = 24.dp).testTag("lyrics-empty"),
        content = {
            Text(emptyText, Modifier.testTag("lyrics-empty-copy"), style = MaterialTheme.typography.headlineMedium,
                textAlign = androidx.compose.ui.text.style.TextAlign.Center,
                color = MaterialTheme.colorScheme.onBackground)
            if (!state.previewMode && state.media.sourceAvailable && emptyState != LyricsEmptyState.Instrumental) TextButton(
                onClick = { onEvent(ContentEvent.OpenSources) },
                modifier = Modifier.heightIn(min = 48.dp).testTag("lyrics-source-action"),
                interactionSource = interactions,
            ) {
                CompositionLocalProvider(LocalIconPressed provides pressed) {
                    OemIcon(sourceIcon(state.media.targetSource ?: state.media.source), Modifier.size(24.dp), tint = sourceTint(), animateOnPress = true, animateOnAction = false)
                }
                Spacer(Modifier.width(8.dp))
                Text("选择媒体来源")
            }
        },
    ) { measurables, constraints ->
        // Measure each child once. The optional action never shifts the copy's viewport anchor.
        val childConstraints = constraints.copy(minWidth = 0, minHeight = 0)
        val copy = measurables[0].measure(childConstraints)
        val action = measurables.getOrNull(1)?.measure(childConstraints)
        val width = constraints.maxWidth
        val height = constraints.maxHeight
        val copyTop = (height - copy.height) / 2
        val actionGap = 12.dp.roundToPx()
        layout(width, height) {
            copy.place((width - copy.width) / 2, copyTop)
            if (action != null) action.place((width - action.width) / 2, copyTop + copy.height + actionGap)
        }
    }
}

private fun sourceIcon(source: MediaSource): Int = when (source) {
    MediaSource.Bluetooth -> R.drawable.content_oem_ico_bluetooth
    MediaSource.AiMusic -> R.drawable.content_oem_ico_media_aiquting
    MediaSource.CloudMusic -> R.drawable.content_oem_ico_media_neteasy
    MediaSource.Usb -> R.drawable.content_oem_ico_devices_usb
    MediaSource.Local -> R.drawable.content_oem_ico_media_local
}

@Composable
internal fun pressScale(active: Boolean) = animateFloatAsState(
    if (active) .94f else 1f,
    tween(if (active) 200 else 240, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)),
    label = "press-scale",
)

private fun seatIcon(id: ControlId, state: ContentUiState): Int =
    vehicleControlIconRecipe(id, state.controls.getValue(id).displayed, state.dark).resource

/** The same OEM resource, frame segment and palette feed both visible entrances. */
@Composable
internal fun ShortcutOemIcon(id: ShortcutId, state: ContentUiState, icon: Int, modifier: Modifier) {
    val control = id.control
    val projected = control?.let { state.controls.getValue(it) }
    if (projected != null && !projected.known && !projected.pending) {
        OemIcon(icon, modifier, tint = MaterialTheme.colorScheme.primary.copy(alpha = .45f),
            motionKey = "unknown", animationAsset = null, animateOnAction = false)
        return
    }
    val base = MaterialTheme.colorScheme.primary
    if (id == ShortcutId.AutoWiper) {
        OemIcon(icon, modifier, tint = if (shortcutSelected(id, state)) Color(0xFF3FA9FF) else base,
            motionKey = projected?.displayed, animationAsset = null, animateOnAction = false)
        return
    }
    if (id == ShortcutId.RearWiper || id == ShortcutId.RearWash) {
        val selected = state.placeholderSwitches[id] == true
        val recipe = if (id == ShortcutId.RearWiper) rearWiperIconRecipe(selected, state.dark, base)
            else rearWashIconRecipe(selected, state.dark, base)
        OemIcon(recipe.resource, modifier, tint = Color.Unspecified, pathColors = recipe.pathColors,
            motionKey = selected, animationAsset = recipe.asset, animationFrames = recipe.frames,
            animationColors = recipe.animationColors, animationStrokePathColors = recipe.animationStrokePathColors,
            playbackSpeed = recipe.playbackSpeed, animateOnAction = false)
        return
    }
    if (control == null || control == ControlId.Lock) {
        OemIcon(icon, modifier, tint = if (id == ShortcutId.RearWash && shortcutSelected(id, state)) Color(0xFF3FA9FF) else shortcutTint(id, state),
            motionKey = if (control == null) state.placeholderSwitches[id] ?: false else state.controls.getValue(control).displayed,
            animateOnAction = control == null)
        return
    }
    VehicleControlOemIcon(control, state.controls.getValue(control), state.dark, modifier)
}

@Composable
internal fun VehicleControlOemIcon(control: ControlId, value: ControlState, dark: Boolean, modifier: Modifier) {
    val base = MaterialTheme.colorScheme.primary
    val level = value.displayed.coerceIn(0, control.maxLevel)
    val recipe = if (control == ControlId.Wiper) vehicleControlIconRecipe(control, level, dark, base)
        else vehicleControlIconRecipe(control, level, dark)
    val known = value.known || value.pending
    OemIcon(recipe.resource, modifier, tint = if (known) Color.Unspecified else base.copy(alpha = .45f),
        pathColors = if (known) recipe.pathColors else emptyMap(),
        motionKey = if (known) level else "unknown", animationAsset = recipe.asset.takeIf { known && it.isNotEmpty() },
        animationColors = recipe.animationColors, animationFrames = recipe.frames,
        animationStrokePathColors = recipe.animationStrokePathColors,
        animationPathOpacities = recipe.animationPathOpacities, animateOnAction = false)
}

private fun playClickSound(view: android.view.View) {
    if (!view.isSoundEffectsEnabled) return
    val handled = try {
        Class.forName("com.autonavi.amapauto.jni.GAdaAndroid")
            .getMethod("playSystemClick").invoke(null) == true
    } catch (_: ReflectiveOperationException) { false }
      catch (_: LinkageError) { false }
    if (!handled) view.playSoundEffect(SoundEffectConstants.CLICK)
}

@Preview(name = "原型浅色默认态", widthDp = 640, heightDp = 1080, locale = "zh")
@Composable
private fun LightPreview() { ContentTheme(false) { ContentPanel(previewState(), onEvent = {}) } }
@Preview(name = "原型深色占位", widthDp = 640, heightDp = 1080, locale = "zh")
@Composable
private fun DarkPreview() { ContentTheme(true) { ContentPanel(previewState(PreviewScenario.Playing).copy(dark = true), onEvent = {}) } }
