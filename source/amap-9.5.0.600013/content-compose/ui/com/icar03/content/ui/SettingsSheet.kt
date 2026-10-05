package com.icar03.content.ui

import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.CubicBezierEasing
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.ui.input.pointer.util.VelocityTracker
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.input.pointer.positionChange
import androidx.compose.ui.layout.LayoutCoordinates
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.stateDescription
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.launch

/**
 * Settings is a content-layer sheet. Its bounds are supplied by ContentPanel so
 * the top bar and Dock remain outside the sheet's clipping and touch region.
 */
@Composable
internal fun SettingsSheet(
    state: ContentUiState,
    onEvent: (ContentEvent) -> Unit,
    modifier: Modifier = Modifier,
    onVisibilityChanged: (Boolean) -> Unit = {},
) {
    BoxWithConstraints(modifier.clipToBounds().testTag("settings-sheet-host")) {
        val menuWidth = (maxWidth * .28f).coerceIn(72.dp, 148.dp)
        val density = LocalDensity.current
        val heightPx = with(density) { maxHeight.toPx() }
        val minimumFlingDistance = with(density) { 12.dp.toPx() }
        val dismissVelocity = with(density) { 1_050.dp.toPx() }
        val reverseVelocity = with(density) { 180.dp.toPx() }
        val offset = remember { Animatable(heightPx.coerceAtLeast(1f)) }
        val scope = rememberCoroutineScope()
        var wasOpen by remember { mutableStateOf(false) }
        var dragging by remember { mutableStateOf(false) }
        var dragPosition by remember { mutableStateOf(0f) }
        var releaseRevision by remember { mutableStateOf(0) }
        var dismissOnRelease by remember { mutableStateOf(false) }
        var handleCoordinates by remember { mutableStateOf<LayoutCoordinates?>(null) }
        val open = state.settingsOpen
        val currentEvent by rememberUpdatedState(onEvent)
        LaunchedEffect(open, heightPx, releaseRevision) {
            if (heightPx <= 0f) return@LaunchedEffect
            if (open && !wasOpen) {
                offset.snapTo(heightPx)
                dismissOnRelease = false
                wasOpen = true
            }
            if (dragging) {
                // Transfer the final drag position before switching render owners.
                // This also interrupts any entry or settle animation.
                offset.snapTo(dragPosition.coerceIn(0f, heightPx))
                dragging = false
            }
            if (open) {
                val dismiss = dismissOnRelease
                dismissOnRelease = false
                if (dismiss) {
                    offset.animateTo(heightPx, tween(230, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)))
                    currentEvent(ContentEvent.SettingsDismissed)
                } else {
                    offset.animateTo(0f, tween(320, easing = CubicBezierEasing(.2f, .8f, .2f, 1f)))
                }
            } else if (wasOpen) {
                offset.animateTo(heightPx, tween(250, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)))
                wasOpen = false
            }
        }
        androidx.compose.runtime.SideEffect { onVisibilityChanged(open || wasOpen) }
        if (!open && !wasOpen) return@BoxWithConstraints
        val handleGesture = Modifier
            .fillMaxWidth()
            .height(32.dp)
            .testTag("settings-gesture-handle")
            .onGloballyPositioned { handleCoordinates = it }
            .pointerInput(open, heightPx, density) {
                awaitEachGesture {
                    val down = awaitFirstDown(requireUnconsumed = false)
                    if (!open) return@awaitEachGesture
                    fun rootPosition(position: androidx.compose.ui.geometry.Offset) =
                        handleCoordinates?.localToRoot(position) ?: position
                    val tracker = VelocityTracker()
                    tracker.addPosition(down.uptimeMillis, rootPosition(down.position))
                    var currentDistance = offset.value.coerceIn(0f, heightPx)
                    var completed = false
                    scope.launch { offset.stop() }
                    dragging = true
                    dragPosition = currentDistance
                    try {
                        while (true) {
                            val event = awaitPointerEvent(PointerEventPass.Main)
                            val change = event.changes.firstOrNull { it.id == down.id } ?: break
                            tracker.addPosition(change.uptimeMillis, rootPosition(change.position))
                            if (!change.pressed) {
                                if (change.isConsumed) break
                                currentDistance = (currentDistance + change.positionChange().y).coerceIn(0f, heightPx)
                                dragPosition = currentDistance
                                val velocityY = tracker.calculateVelocity().y
                                dismissOnRelease = currentDistance >= heightPx * .24f && velocityY > -reverseVelocity ||
                                    currentDistance >= minimumFlingDistance && velocityY >= dismissVelocity
                                releaseRevision++
                                change.consume()
                                completed = true
                                break
                            }
                            if (change.isConsumed || event.changes.any { it.id != down.id && it.pressed }) break
                            val dy = change.positionChange().y
                            if (dy > 0f || currentDistance > 0f) {
                                currentDistance = (currentDistance + dy).coerceIn(0f, heightPx)
                                dragPosition = currentDistance
                                change.consume()
                            }
                        }
                    } finally {
                        if (!completed) {
                            dismissOnRelease = false
                            releaseRevision++
                        }
                    }
                }
            }
        // A stable pointer node owns this whole content rectangle during motion.
        // Siblings below it are excluded from hit testing; observing without
        // consuming child events preserves menu clicks and vertical scrolling.
        val touchShield = Modifier.pointerInput(Unit) {
            awaitEachGesture {
                awaitFirstDown(requireUnconsumed = false)
                do {
                    val event = awaitPointerEvent(PointerEventPass.Final)
                } while (event.changes.any { it.pressed })
            }
        }
        Box(Modifier.fillMaxSize().then(touchShield)) {
            Surface(
                modifier = Modifier.fillMaxSize().graphicsLayer {
                    translationY = if (dragging) dragPosition else offset.value
                }.testTag("settings-sheet"),
                color = LocalContentColors.current.sheetBase,
                shape = RoundedCornerShape(topStart = 16.dp, topEnd = 16.dp),
                tonalElevation = 2.dp,
            ) {
                Column(Modifier.fillMaxSize()) {
                    Box(Modifier.fillMaxWidth().then(handleGesture), contentAlignment = Alignment.Center) {
                        Box(Modifier.width(48.dp).height(4.dp).clip(RoundedCornerShape(2.dp))
                            .background(MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = .42f)))
                    }
                    Row(Modifier.fillMaxSize().padding(start = 12.dp, end = 12.dp, bottom = 12.dp)) {
                        SettingsMenu(state.settingsSection, currentEvent, Modifier.width(menuWidth).fillMaxHeight())
                        Spacer(Modifier.width(12.dp))
                        SettingsDetail(state, currentEvent, Modifier.weight(1f).fillMaxHeight())
                    }
                }
            }
        }
    }
}

@Composable
private fun SettingsMenu(
    selected: SettingsSection,
    onEvent: (ContentEvent) -> Unit,
    modifier: Modifier,
) {
    val colors = LocalContentColors.current
    Column(modifier.testTag("settings-menu").verticalScroll(rememberScrollState()), verticalArrangement = Arrangement.spacedBy(4.dp)) {
        SettingsSection.entries.forEach { section ->
            val active = section == selected
            Row(
                modifier = Modifier.fillMaxWidth().heightIn(min = 48.dp)
                    .clip(RoundedCornerShape(12.dp))
                    .background(if (active) colors.shortcutSelected else Color.Transparent)
                    .testTag("settings-menu-${section.name}")
                     .clickable(role = Role.Button) { onEvent(ContentEvent.SettingsSectionSelected(section)) }
                    .padding(horizontal = 14.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(section.label, style = MaterialTheme.typography.titleMedium,
                    color = if (active) MaterialTheme.colorScheme.onSurface else MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 2)
            }
        }
    }
}

@Composable
private fun SettingsDetail(state: ContentUiState, onEvent: (ContentEvent) -> Unit, modifier: Modifier) {
    Column(modifier.verticalScroll(rememberScrollState()).padding(end = 8.dp)) {
        Text(state.settingsSection.label, style = MaterialTheme.typography.headlineSmall,
            modifier = Modifier.padding(vertical = 8.dp))
        when (state.settingsSection) {
            SettingsSection.Vehicle -> VehicleSettings(state)
            SettingsSection.Volume -> VolumeSettings(state)
            SettingsSection.Sound -> SoundSettings(state)
            SettingsSection.Display -> DisplaySettings(state, onEvent)
            SettingsSection.Connection -> ConnectionSettings(state)
            SettingsSection.Assistant -> UnavailableSettings("理想同学服务")
            SettingsSection.Mode -> ModeSettings(state)
            SettingsSection.Accessories -> AccessoriesSettings(state)
            SettingsSection.General -> GeneralSettings()
        }
    }
}

@Composable
private fun VehicleSettings(state: ContentUiState) {
    val controls = state.controls.entries.toList()
    if (controls.isEmpty()) SettingsInfo("车辆状态", "暂未读取到车辆状态")
    controls.forEach { (control, value) ->
        SettingsValueRow(control.label, vehicleValue(control, value))
    }
}

@Composable
private fun AccessoriesSettings(state: ContentUiState) {
    val accessories = state.controls.entries.filter { it.key != ControlId.Lock }
    if (accessories.isEmpty()) SettingsInfo("配件状态", "暂未读取到车辆状态")
    accessories.forEach { (control, value) -> SettingsValueRow(control.label, vehicleValue(control, value)) }
}

@Composable
private fun VolumeSettings(state: ContentUiState) {
    SettingsValueRow("媒体音量", if (state.volume.available) "${(state.volume.displayed * 100).toInt()}%" else "不可用")
    SettingsProgress(state.volume.displayed, state.volume.available)
    SettingsValueRow("屏幕亮度", if (state.brightness.available) "${(state.brightness.displayed * 100).toInt()}%" else "不可用")
    SettingsProgress(state.brightness.displayed, state.brightness.available)
}

@Composable
private fun SoundSettings(state: ContentUiState) {
    SettingsValueRow("媒体来源", state.media.source.label)
    SettingsValueRow("播放状态", when {
        !state.media.available -> "未连接"
        state.media.pending -> "待确认"
        state.media.playing -> "正在播放"
        else -> "已暂停"
    })
    SettingsValueRow("媒体会话", if (state.media.available) "已连接" else "未确认")
}

@Composable
private fun DisplaySettings(state: ContentUiState, onEvent: (ContentEvent) -> Unit) {
    SettingsSwitchRow("显示星期", state.showWeekday) { onEvent(ContentEvent.ShowWeekdayChanged(it)) }
    SettingsSwitchRow("显示秒数", state.showSeconds) { onEvent(ContentEvent.ShowSecondsChanged(it)) }
    SettingsValueRow("主题", if (state.dark) "深色（跟随地图）" else "浅色（跟随地图）")
}

@Composable
private fun ConnectionSettings(state: ContentUiState) {
    SettingsValueRow("车辆连接", if (state.controls.values.any { it.known }) "已连接" else "未确认")
    SettingsValueRow("媒体连接", if (state.media.available) "已连接" else "未确认")
    SettingsValueRow("充电状态", state.chargeStatus ?: "未充电")
}

@Composable
private fun ModeSettings(state: ContentUiState) {
    SettingsValueRow("当前页面", if (state.page == PanelPage.Lyrics) "歌词" else "快捷功能")
    SettingsValueRow("内容区主题", if (state.dark) "深色" else "浅色")
}

@Composable
private fun GeneralSettings() {
    SettingsValueRow("状态提示", "从底部浮层显示3秒")
    SettingsValueRow("设置页", "下拉手势关闭")
}

@Composable
private fun UnavailableSettings(label: String) {
    SettingsInfo(label, "当前车辆未接入")
}

@Composable
private fun SettingsInfo(label: String, value: String) {
    SettingsValueRow(label, value)
}

@Composable
private fun SettingsValueRow(label: String, value: String) {
    Column(Modifier.fillMaxWidth().padding(vertical = 8.dp)) {
        Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
            Text(label, Modifier.weight(1f), style = MaterialTheme.typography.titleMedium)
            Text(value, style = MaterialTheme.typography.bodyLarge, color = MaterialTheme.colorScheme.onSurfaceVariant)
        }
        HorizontalDivider(Modifier.padding(top = 10.dp), color = MaterialTheme.colorScheme.outline.copy(alpha = .6f))
    }
}

@Composable
private fun SettingsSwitchRow(label: String, checked: Boolean, onCheckedChange: (Boolean) -> Unit) {
    Row(Modifier.fillMaxWidth().heightIn(min = 56.dp), verticalAlignment = Alignment.CenterVertically) {
        Text(label, Modifier.weight(1f), style = MaterialTheme.typography.titleMedium)
        Switch(checked = checked, onCheckedChange = onCheckedChange,
            modifier = Modifier.semantics { contentDescription = label; role = Role.Switch; stateDescription = if (checked) "已开启" else "已关闭" })
    }
    HorizontalDivider(color = MaterialTheme.colorScheme.outline.copy(alpha = .6f))
}

@Composable
private fun SettingsProgress(value: Float, available: Boolean) {
    androidx.compose.material3.LinearProgressIndicator(
        progress = { if (available) value.coerceIn(0f, 1f) else 0f },
        modifier = Modifier.fillMaxWidth().height(4.dp),
        color = MaterialTheme.colorScheme.primary,
        trackColor = MaterialTheme.colorScheme.surfaceVariant,
    )
}

private fun vehicleValue(control: ControlId, value: ControlState): String = when {
    value.pending -> "待确认"
    !value.known || !control.isLevel(value.actual) -> "未确认"
    control == ControlId.Lock -> if (value.actual == 1) "已锁定" else "已解锁"
    control == ControlId.RearWiper -> if (value.actual == 1) "开启" else "关闭"
    control == ControlId.RearWash -> if (value.actual == 1) "洗涤中" else "空闲"
    control.isAutomatic(value.actual) -> "自动"
    value.actual == 0 -> "关闭"
    else -> "${value.actual}档"
}
