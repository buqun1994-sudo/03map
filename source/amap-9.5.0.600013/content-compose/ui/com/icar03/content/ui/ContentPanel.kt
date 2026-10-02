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


private fun Modifier.downwardSoftShadow(fill: Color, dark: Boolean): Modifier = drawBehind {
    val paint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = fill.toArgb()
        setShadowLayer(5.dp.toPx(), 0f, 3.dp.toPx(), if (dark) 0xA0000000.toInt() else 0x30000000)
    }
    drawIntoCanvas { canvas ->
        canvas.nativeCanvas.drawRoundRect(0f, 0f, size.width, size.height, 12.dp.toPx(), 12.dp.toPx(), paint)
    }
}

/** Stateless reusable preview panel. Geometry follows the supplied 640×1080 prototype. */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ContentPanel(
    state: ContentUiState, onEvent: (ContentEvent) -> Unit, modifier: Modifier = Modifier,
    artwork: @Composable (() -> Unit)? = null,
    ambientBackground: @Composable (() -> Unit)? = null,
) {
    val view = LocalView.current
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
            PrototypeTopBar(state)
            Box(Modifier.weight(1f).fillMaxWidth()) {
                if (state.previewMode) {
                    if (state.page == PanelPage.Shortcuts) {
                        Column(Modifier.fillMaxSize().padding(horizontal = edge).verticalScroll(rememberScrollState())) { PrototypeGrid(state, dispatch) }
                    } else LyricsPage(state, dispatch)
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
                        } else LyricsPage(state, dispatch)
                        }
                    }
                }
            }
            Box(Modifier.fillMaxWidth().height(if (compact) 80.dp else 136.dp).padding(start = edge, end = edge, bottom = if (compact) 8.dp else 16.dp)) {
                PrototypeMediaCard(state.media, dispatch, artwork, state.previewMode || state.media.sourceAvailable, compact)
            }
            PrototypeDock(state, dispatch, compact)
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
private fun PrototypeTopBar(state: ContentUiState) {
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
        val fullTime = timeWithWeekday(state.time, state.weekday)
        val minuteTime = timeWithWeekday(state.time.take(5), state.weekday)
        val shortWeekdayTime = timeWithWeekday(state.time.take(5), state.weekday.replace("星期", "周"))
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
        val columns = if ((maxWidth - gap * 3) / 4 < 64.dp) 2 else 4
        val tileHeight = if (narrow) 112.dp else 135.dp
        Column(verticalArrangement = Arrangement.spacedBy(gap)) {
            ShortcutId.entries.chunked(columns).forEachIndexed { index, row ->
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(gap)) {
                    row.forEach { id -> Box(Modifier.weight(1f)) { ShortcutTile(id, state, onEvent, tileHeight) } }
                    if (columns == 4 && index == 1) {
                        Box(Modifier.weight(1f)) {
                            VerticalLevelCard("屏幕亮度", R.drawable.content_oem_ico_brightness_mid, state.brightness, if (narrow) 160.dp else 290.dp) { onEvent(ContentEvent.BrightnessChanged(it)) }
                        }
                        Box(Modifier.weight(1f)) {
                            VerticalLevelCard("媒体音量", R.drawable.content_oem_ico_volume_2, state.volume, if (narrow) 160.dp else 290.dp) { onEvent(ContentEvent.VolumeChanged(it)) }
                        }
                    }
                }
            }
            if (columns == 2) Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(gap)) {
                Box(Modifier.weight(1f)) { VerticalLevelCard("屏幕亮度", R.drawable.content_oem_ico_brightness_mid, state.brightness, 160.dp) { onEvent(ContentEvent.BrightnessChanged(it)) } }
                Box(Modifier.weight(1f)) { VerticalLevelCard("媒体音量", R.drawable.content_oem_ico_volume_2, state.volume, 160.dp) { onEvent(ContentEvent.VolumeChanged(it)) } }
            }
        }
    }
}

private fun shortcutStatus(id: ShortcutId, state: ContentUiState): String {
    val control = id.control?.let { state.controls.getValue(it) } ?: return if (id == ShortcutId.SteeringHeat) "未接入" else "设置"
    return when {
        control.pending -> "待确认"
        !control.known -> "状态未知"
        id == ShortcutId.Lock -> if (control.actual == 1) "已锁" else "未锁"
        control.actual == 0 -> "关闭"
        else -> "${control.actual}档"
    }
}

private fun shortcutIcon(id: ShortcutId, state: ContentUiState): Int? = when (id) {
    ShortcutId.Lock -> if (state.controls.getValue(ControlId.Lock).displayed == 1) R.drawable.content_oem_ico_lock_close else R.drawable.content_oem_ico_lock_open
    ShortcutId.SteeringHeat -> R.drawable.content_oem_ic_carset_wheel_hot_r_o
    ShortcutId.Settings -> R.drawable.content_oem_ic_settings
    else -> seatIcon(requireNotNull(id.control), state)
}

@Composable
private fun shortcutTint(id: ShortcutId, state: ContentUiState): Color = when {
    id == ShortcutId.Lock && state.controls.getValue(ControlId.Lock).known && state.controls.getValue(ControlId.Lock).displayed == 0 -> Color(0xFF3FA9FF)
    id == ShortcutId.SteeringHeat -> MaterialTheme.colorScheme.onSurfaceVariant
    id.control != null && id.control != ControlId.Lock -> Color.Unspecified
    else -> MaterialTheme.colorScheme.primary
}

@Composable
private fun sourceTint(): Color = MaterialTheme.colorScheme.primary

private fun shortcutSelected(id: ShortcutId, state: ContentUiState): Boolean {
    val control = id.control?.let { state.controls.getValue(it) } ?: return false
    return control.known && if (id == ShortcutId.Lock) control.displayed == 0 else control.displayed > 0
}

private fun shortcutEvent(id: ShortcutId, state: ContentUiState): ContentEvent? = when {
    id.control != null -> ContentEvent.ControlTapped(id.control)
    id == ShortcutId.Settings -> if (state.previewMode) ContentEvent.OpenScenarios else ContentEvent.SettingsTapped
    else -> null
}

@Composable
private fun ShortcutTile(id: ShortcutId, state: ContentUiState, onEvent: (ContentEvent) -> Unit, height: androidx.compose.ui.unit.Dp) {
    val control = id.control?.let { state.controls.getValue(it) }
    val enabled = id != ShortcutId.SteeringHeat && (control == null || control.available && !control.pending)
    val selected = shortcutSelected(id, state)
    val tag = if (id.control != null) "control-${id.name}" else "shortcut-${id.name}"
    val interactions = remember { MutableInteractionSource() }
    val pressed by interactions.collectIsPressedAsState()
    var action by remember { mutableIntStateOf(0) }
    Surface(
        modifier = Modifier.fillMaxWidth().height(height).testTag(tag)
            .downwardSoftShadow(MaterialTheme.colorScheme.surfaceVariant, state.dark)
            .clip(RoundedCornerShape(12.dp))
            .clickable(interactionSource = interactions, indication = ripple(), enabled = enabled, role = Role.Button) {
                action++
                shortcutEvent(id, state)?.let(onEvent)
            }
            .semantics { contentDescription = id.label; stateDescription = shortcutStatus(id, state); this.selected = selected; this[PressActive] = pressed && enabled; this[PressFeedback] = "touch-ripple" },
        shape = RoundedCornerShape(12.dp),
        color = if (selected) MaterialTheme.colorScheme.primaryContainer else MaterialTheme.colorScheme.surfaceVariant,
    ) {
        CompositionLocalProvider(LocalIconPressed provides (pressed && enabled), LocalIconAction provides action) {
        Column(horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.Center) {
            val icon = shortcutIcon(id, state)
            if (icon != null) {
                ShortcutOemIcon(id, state, icon, Modifier.size(52.dp).testTag("shortcut-icon-${id.name}"))
                Spacer(Modifier.height(8.dp))
            }
            Text(id.label, style = MaterialTheme.typography.titleLarge.copy(fontSize = 20.sp), maxLines = if (id == ShortcutId.SteeringHeat) 2 else 1)
        }
        }
    }
}

@Composable
private fun VerticalLevelCard(label: String, icon: Int, level: LevelState, height: androidx.compose.ui.unit.Dp = 290.dp, onCommit: (Float) -> Unit) {
    var draft by remember(level.actual, level.target, level.available) { mutableFloatStateOf(level.displayed) }
    val enabled = level.available && level.target == null
    val density = androidx.compose.ui.platform.LocalDensity.current
    val heightPx = with(density) { height.toPx() }
    fun fraction(y: Float) = (1f - y / heightPx).coerceIn(0f, 1f)
    fun commit(value: Float) {
        onCommit(value)
        draft = level.displayed
    }
    Surface(
        Modifier.fillMaxWidth().height(height).testTag(if (label == "屏幕亮度") "brightness-card" else "volume-card")
            .downwardSoftShadow(MaterialTheme.colorScheme.surfaceVariant, MaterialTheme.colorScheme.background.luminance() < 0.2f)
            .semantics {
                contentDescription = label
                progressBarRangeInfo = ProgressBarRangeInfo(draft, 0f..1f)
                if (enabled) setProgress { value -> onCommit(value.coerceIn(0f, 1f)); true }
                else disabled()
            }
            .pointerInput(enabled, heightPx) {
                if (enabled) detectTapGestures { offset ->
                    draft = fraction(offset.y)
                    commit(draft)
                }
            }
            .pointerInput(enabled, heightPx) {
                if (enabled) detectDragGestures(onDragEnd = { commit(draft) }, onDragCancel = { draft = level.displayed }) { change, _ ->
                    draft = fraction(change.position.y)
                    change.consume()
                }
            },
        shape = RoundedCornerShape(12.dp), color = MaterialTheme.colorScheme.surfaceVariant, shadowElevation = 0.dp,
    ) {
        Box(Modifier.fillMaxSize()) {
            Box(Modifier.fillMaxWidth().fillMaxHeight(draft).align(Alignment.BottomCenter).testTag(if (label == "屏幕亮度") "brightness-fill" else "volume-fill")
                .background(if (MaterialTheme.colorScheme.background.luminance() < .2f) MaterialTheme.colorScheme.primaryContainer else MaterialTheme.colorScheme.surface))
            OemIcon(icon, Modifier.size(52.dp).align(Alignment.BottomCenter).offset(y = (-55).dp), motionKey = draft)
        }
    }
}

@Composable
private fun PrototypeMediaCard(media: MediaState, onEvent: (ContentEvent) -> Unit, artwork: @Composable (() -> Unit)?, sourcesEnabled: Boolean, compact: Boolean) {
    val button = if (compact) 48.dp else 80.dp
    val icon = if (compact) 28.dp else 42.dp
    Surface(Modifier.fillMaxSize().testTag("media-card").downwardSoftShadow(MaterialTheme.colorScheme.surface, MaterialTheme.colorScheme.background.luminance() < 0.2f), shape = RoundedCornerShape(12.dp), color = MaterialTheme.colorScheme.surface, shadowElevation = 0.dp) {
        Row(Modifier.fillMaxSize(), verticalAlignment = Alignment.CenterVertically) {
            Surface(Modifier.width(if (compact) 72.dp else 120.dp).fillMaxHeight(), color = MaterialTheme.colorScheme.surfaceVariant) {
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
private fun PrototypeDock(state: ContentUiState, onEvent: (ContentEvent) -> Unit, compact: Boolean) {
    Box(Modifier.fillMaxWidth().height(if (compact) 72.dp else 112.dp).padding(start = if (compact) 8.dp else 12.dp, end = if (compact) 8.dp else 12.dp, bottom = if (compact) 8.dp else 12.dp)) {
        Surface(
            Modifier.fillMaxSize().testTag("floating-dock").downwardSoftShadow(MaterialTheme.colorScheme.surface, state.dark), shape = RoundedCornerShape(12.dp),
            color = if (state.dark) MaterialTheme.colorScheme.surfaceVariant else MaterialTheme.colorScheme.surface, shadowElevation = 0.dp,
        ) {
            BoxWithConstraints(Modifier.fillMaxSize()) {
                val dockWidth = if (compact) maxWidth.coerceAtLeast(288.dp) else maxWidth
                Box(Modifier.fillMaxSize().horizontalScroll(rememberScrollState())) {
                    Row(Modifier.width(dockWidth).fillMaxHeight(), verticalAlignment = Alignment.CenterVertically) {
                        ShortcutId.entries.forEach { id ->
                            val control = id.control?.let { state.controls.getValue(it) }
                            val selected = shortcutSelected(id, state)
                            val enabled = id != ShortcutId.SteeringHeat && (control == null || control.available && !control.pending)
                            val slot = (if (!compact && id == ShortcutId.Lock) Modifier.width(114.dp) else Modifier.weight(1f))
                                .fillMaxHeight().background(if (selected && id == ShortcutId.Lock) MaterialTheme.colorScheme.primaryContainer else Color.Transparent)
                                .semantics { this.selected = selected; stateDescription = shortcutStatus(id, state) }
                            RoundedPressButton(slot, "dock-${id.name}", id.label, enabled, compact,
                                onClick = { shortcutEvent(id, state)?.let(onEvent) }, rectangular = false, selected = selected && id != ShortcutId.Lock) {
                                val icon = shortcutIcon(id, state)
                                if (icon == null) Text("方向盘加热", style = MaterialTheme.typography.labelMedium, maxLines = 2)
                                else ShortcutOemIcon(id, state, icon, Modifier.size(if (compact) 32.dp else 48.dp).testTag("dock-icon-${id.name}"))
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
    onClick: () -> Unit, rectangular: Boolean = true, selected: Boolean = false, content: @Composable () -> Unit,
) {
    val interactions = remember { MutableInteractionSource() }
    val pressed by interactions.collectIsPressedAsState()
    val active = pressed && enabled
    var action by remember { mutableIntStateOf(0) }
    // Fixed RGB with animated opacity avoids interpolating Transparent's black RGB.
    val opacity by animateFloatAsState(if (active && rectangular) 1f else 0f,
        tween(if (active) 200 else 240, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)), label = "press-opacity")
    val scale by pressScale(active)
    val background = if (opacity == 0f) Color.Transparent else MaterialTheme.colorScheme.surfaceContainerHigh.copy(alpha = opacity)
    Box(modifier.sizeIn(minWidth = 48.dp, minHeight = 48.dp).testTag(tag)
        .clickable(interactionSource = interactions, indication = if (rectangular) null else ripple(), enabled = enabled, role = Role.Button, onClick = { action++; onClick() })
        .semantics { contentDescription = description; this[PressActive] = active; this[PressBackground] = background.value.toLong(); this[PressScale] = scale; this[PressFeedback] = if (rectangular) "opacity-rectangle" else "touch-ripple" },
        contentAlignment = Alignment.Center) {
        Box(Modifier.size(if (compact) 48.dp else 72.dp).testTag("$tag-press-area")
            .background(if (selected) MaterialTheme.colorScheme.primaryContainer else background, RoundedCornerShape(if (compact) 12.dp else 16.dp)),
            contentAlignment = Alignment.Center) {
            CompositionLocalProvider(LocalIconPressed provides active, LocalIconAction provides action) { content() }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun PrototypeSources(state: ContentUiState, onEvent: (ContentEvent) -> Unit) {
    BoxWithConstraints(Modifier.fillMaxSize().testTag("sources-overlay")) {
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
                .downwardSoftShadow(MaterialTheme.colorScheme.surfaceVariant, state.dark),
            shape = RoundedCornerShape(12.dp), color = if (state.dark) MaterialTheme.colorScheme.surfaceVariant else MaterialTheme.colorScheme.surface,
        ) {
            Column(Modifier.padding(8.dp).selectableGroup()) {
                MediaSource.entries.forEach { source ->
                    val selected = state.media.source == source
                    val interactions = remember { MutableInteractionSource() }
                    val pressed by interactions.collectIsPressedAsState()
                    Row(
                        Modifier.fillMaxWidth().height(rowHeight).testTag("source-${source.name}")
                            .background(if (selected) { if (state.dark) MaterialTheme.colorScheme.primaryContainer else MaterialTheme.colorScheme.surfaceVariant } else Color.Transparent, RoundedCornerShape(8.dp))
                            .clickable(interactionSource = interactions, indication = ripple(), enabled = (!state.previewMode || state.media.available) && state.media.sourceAvailable && !state.media.pending, role = Role.RadioButton) { onEvent(ContentEvent.SourceSelected(source)) }
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
    ModalBottomSheet(onDismissRequest = { onEvent(ContentEvent.DismissSheet) }, containerColor = MaterialTheme.colorScheme.surface) {
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
private fun LyricsPage(state: ContentUiState, onEvent: (ContentEvent) -> Unit) {
    if (state.lyrics.lines.isNotEmpty()) {
        androidx.compose.runtime.key(state.lyrics.recordingKey) {
            WallpaperLyrics(state.lyrics, state.dark)
        }
        return
    }
    // A song change can briefly have no lines. Keep the ambient canvas uninterrupted;
    // show the existing empty/source affordance only after lookup actually finishes.
    if (!state.previewMode && state.media.isSong && state.lyrics.loading) return
    val interactions = remember { MutableInteractionSource() }
    val pressed by interactions.collectIsPressedAsState()
    Column(Modifier.fillMaxSize().padding(horizontal = 24.dp).testTag("lyrics-empty"),
        verticalArrangement = Arrangement.Center, horizontalAlignment = Alignment.Start) {
        Text(if (state.lyrics.loading) "正在匹配歌词…" else "暂无歌词", style = MaterialTheme.typography.headlineMedium,
            color = MaterialTheme.colorScheme.onBackground)
        if (!state.previewMode && state.media.sourceAvailable) TextButton(
            onClick = { onEvent(ContentEvent.OpenSources) },
            modifier = Modifier.padding(top = 12.dp).heightIn(min = 48.dp).testTag("lyrics-source-action"),
            interactionSource = interactions,
        ) {
            CompositionLocalProvider(LocalIconPressed provides pressed) {
                OemIcon(sourceIcon(state.media.targetSource ?: state.media.source), Modifier.size(24.dp), tint = sourceTint(), animateOnPress = true, animateOnAction = false)
            }
            Spacer(Modifier.width(8.dp))
            Text("选择媒体来源")
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

private fun seatIcon(id: ControlId, state: ContentUiState): Int {
    val level = state.controls.getValue(id).displayed.coerceIn(0, 3)
    if (state.dark) return when (id) {
        ControlId.Ventilation -> listOf(R.drawable.content_oem_ico_skin_seat_ventilate_l_off_night, R.drawable.content_oem_ico_skin_seat_ventilate_l_1_color_night, R.drawable.content_oem_ico_skin_seat_ventilate_l_2_color_night, R.drawable.content_oem_ico_skin_seat_ventilate_l_3_color_night)[level]
        ControlId.Heating -> listOf(R.drawable.content_oem_ico_skin_seat_heat_l_off_night, R.drawable.content_oem_ico_skin_seat_heat_l_1_night, R.drawable.content_oem_ico_skin_seat_heat_l_2_night, R.drawable.content_oem_ico_skin_seat_heat_l_3_night)[level]
        ControlId.Massage -> listOf(R.drawable.content_oem_ico_skin_seat_massage_l_off_night, R.drawable.content_oem_ico_skin_seat_massage_l_1_night, R.drawable.content_oem_ico_skin_seat_massage_l_2_night, R.drawable.content_oem_ico_skin_seat_massage_l_3_night)[level]
        ControlId.Lock -> R.drawable.content_oem_ico_lock_close
    }
    return when (id) {
        ControlId.Ventilation -> when (level) {
            1 -> R.drawable.content_oem_ico_skin_seat_ventilate_l_1_color_day
            2 -> R.drawable.content_oem_ico_skin_seat_ventilate_l_2_color_day
            3 -> R.drawable.content_oem_ico_skin_seat_ventilate_l_3_color_day
            else -> R.drawable.content_oem_ico_skin_seat_ventilate_l_off_day
        }
        ControlId.Heating -> when (level) {
            1 -> R.drawable.content_oem_ico_skin_seat_heat_l_1_day
            2 -> R.drawable.content_oem_ico_skin_seat_heat_l_2_day
            3 -> R.drawable.content_oem_ico_skin_seat_heat_l_3_day
            else -> R.drawable.content_oem_ico_skin_seat_heat_l_off_day
        }
        ControlId.Massage -> when (level) {
            1 -> R.drawable.content_oem_ico_skin_seat_massage_l_1_day
            2 -> R.drawable.content_oem_ico_skin_seat_massage_l_2_day
            3 -> R.drawable.content_oem_ico_skin_seat_massage_l_3_day
            else -> R.drawable.content_oem_ico_skin_seat_massage_l_off_day
        }
        ControlId.Lock -> R.drawable.content_oem_ico_lock_close
    }
}

@Composable
internal fun pressScale(active: Boolean) = animateFloatAsState(if (active) .94f else 1f,
    tween(if (active) 200 else 240, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)), label = "press-scale")

private fun seatAccent(control: ControlId): Color = when (control) {
    ControlId.Ventilation -> Color(0xFF3FA9FF)
    ControlId.Heating -> Color(0xFFFF6400)
    ControlId.Massage -> Color(0xFFA14FEC)
    ControlId.Lock -> Color.Unspecified
}

/** The same OEM resource, frame segment and palette feed both visible entrances. */
@Composable
private fun ShortcutOemIcon(id: ShortcutId, state: ContentUiState, icon: Int, modifier: Modifier) {
    val control = id.control
    if (control == null || control == ControlId.Lock) {
        OemIcon(icon, modifier, tint = shortcutTint(id, state),
            motionKey = if (control == null) icon else state.controls.getValue(control).displayed)
        return
    }
    val value = state.controls.getValue(control)
    val level = value.displayed.coerceIn(0, 3)
    val accent = seatAccent(control)
    val base = if (state.dark) Color.White else Color.Black
    val body = if (level > 0) accent else base
    val family = when (control) {
        ControlId.Ventilation -> "ventilate"
        ControlId.Heating -> "heat"
        ControlId.Massage -> "massage"
        ControlId.Lock -> error("not a seat")
    }
    // OEM DockAcButton orders heat/vent high→low, massage low→high.
    val gear = when {
        level == 0 -> if (control == ControlId.Heating) 4 else 3
        control == ControlId.Massage -> level - 1
        else -> 3 - level
    }
    val asset = "ico_skin_seat_${family}_l_${if (state.dark) "wh" else "bk"}.json"
    val colors = when (control) {
        ControlId.Ventilation -> mapOf(
            listOf("**", "组 4", "填充 1") to body,
            listOf("**", "组 5", "填充 1") to body,
            listOf("**", "组 6", "组 1", "填充 1") to if (level == 3) accent else base,
            listOf("**", "组 6", "组 2", "填充 1") to if (level >= 2) accent else base,
            listOf("**", "组 6", "组 3", "填充 1") to if (level >= 1) accent else base,
        )
        ControlId.Heating -> mapOf(
            listOf("color1", "**", "填充 1") to body,
            listOf("color2", "**", "填充 1") to base,
            listOf("color3", "**", "填充 1") to if (level > 0) accent else base,
        )
        ControlId.Massage -> mapOf(listOf("color1", "**", "填充 1") to body)
        ControlId.Lock -> emptyMap()
    }
    OemIcon(icon, modifier, tint = Color.Unspecified,
        pathColors = if (level > 0) mapOf(0 to accent) else emptyMap(), motionKey = level,
        animationAsset = if (value.known) asset else null, animationColors = colors,
        animationFrames = (gear * 30 + 1)..((gear + 1) * 30), animateOnAction = false,
        animationStrokeColors = if (control == ControlId.Massage) mapOf(Color.Black.toArgb() to base, Color.White.toArgb() to base) else emptyMap())
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
