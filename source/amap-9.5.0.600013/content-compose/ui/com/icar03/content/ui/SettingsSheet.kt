package com.icar03.content.ui

import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.CubicBezierEasing
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
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
import androidx.compose.foundation.selection.selectable
import androidx.compose.foundation.selection.selectableGroup
import androidx.compose.foundation.selection.toggleable
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.key
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
import androidx.compose.ui.input.pointer.util.VelocityTracker
import androidx.compose.ui.layout.LayoutCoordinates
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.stateDescription
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.launch
import kotlin.math.roundToInt

/**
 * Preference-only settings surface. The vehicle, media and system controls stay on their
 * existing shortcut owners; this surface only changes durable presentation preferences.
 */
@Composable
internal fun SettingsSheet(
    state: ContentUiState,
    onEvent: (ContentEvent) -> Unit,
    modifier: Modifier = Modifier,
    onVisibilityChanged: (Boolean) -> Unit = {},
) {
    BoxWithConstraints(modifier.clipToBounds().testTag("settings-sheet-host")) {
        val compact = maxWidth < 520.dp
        val menuWidth = when {
            maxWidth >= 720.dp -> 152.dp
            maxWidth >= 520.dp -> 144.dp
            else -> 112.dp
        }
        val contentGap = if (compact) 8.dp else 12.dp
        val outerPadding = if (compact) 8.dp else 12.dp
        val gestureZoneHeight = if (compact) 72.dp else 92.dp
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
        var gestureCoordinates by remember { mutableStateOf<LayoutCoordinates?>(null) }
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

        // The whole upper band is the vertical gesture target. The visible handle is only a cue.
        val gestureBand = Modifier
            .fillMaxWidth()
            .height(gestureZoneHeight)
            .testTag("settings-gesture-handle")
            .onGloballyPositioned { gestureCoordinates = it }
            .pointerInput(open, heightPx, density) {
                awaitEachGesture {
                    val down = awaitFirstDown(requireUnconsumed = false)
                    if (!open) return@awaitEachGesture
                    fun rootPosition(position: androidx.compose.ui.geometry.Offset) =
                        gestureCoordinates?.localToRoot(position) ?: position
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
        // Observe the sheet rectangle without consuming child clicks or the detail scroll.
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
                shape = RoundedCornerShape(18.dp),
                tonalElevation = 2.dp,
            ) {
                Column(Modifier.fillMaxSize()) {
                    Box(Modifier.fillMaxWidth().then(gestureBand)) {
                        Text(
                            "设置",
                            modifier = Modifier.align(Alignment.Center).testTag("settings-title"),
                            style = settingsTextStyle(if (compact) MaterialTheme.typography.titleLarge else MaterialTheme.typography.headlineSmall, 26f),
                            color = MaterialTheme.colorScheme.onSurface,
                        )
                        Box(
                            Modifier.align(Alignment.TopCenter).padding(top = if (compact) 10.dp else 14.dp)
                                .width(if (compact) 52.dp else 68.dp).height(5.dp)
                                .clip(RoundedCornerShape(3.dp))
                                .background(MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = .42f))
                                .testTag("settings-gesture-bar"),
                        )
                    }
                    Box(Modifier.fillMaxWidth().height(1.dp)
                        .background(MaterialTheme.colorScheme.outline.copy(alpha = .55f))
                        .testTag("settings-header-divider"))
                    Row(
                        Modifier.fillMaxSize().padding(start = outerPadding, end = outerPadding, bottom = outerPadding),
                        horizontalArrangement = Arrangement.spacedBy(contentGap),
                    ) {
                        SettingsMenu(state.settingsSection, currentEvent, compact,
                            Modifier.width(menuWidth).fillMaxHeight())
                        Box(Modifier.fillMaxHeight().width(1.dp)
                            .background(MaterialTheme.colorScheme.outline.copy(alpha = .5f))
                            .testTag("settings-menu-divider"))
                        key(state.settingsSection) {
                            SettingsDetail(state, currentEvent,
                                Modifier.weight(1f).fillMaxHeight(), compact)
                        }
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
    compact: Boolean,
    modifier: Modifier,
) {
    val colors = LocalContentColors.current
    Column(
        modifier.testTag("settings-menu").selectableGroup().verticalScroll(rememberScrollState()),
        verticalArrangement = Arrangement.spacedBy(if (compact) 4.dp else 8.dp),
    ) {
        SettingsSection.entries.forEach { section ->
            val active = section == selected
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(min = settingsMinimumSize(if (compact) 44.dp else 64.dp, 72f))
                    .clip(RoundedCornerShape(if (compact) 12.dp else 16.dp))
                    .background(if (active) colors.selectedSurface else Color.Transparent)
                    .testTag("settings-menu-${section.name}")
                    .selectable(selected = active, role = Role.RadioButton) { onEvent(ContentEvent.SettingsSectionSelected(section)) },
                contentAlignment = Alignment.Center,
            ) {
                Text(
                    section.label,
                    modifier = Modifier.padding(horizontal = if (compact) 6.dp else 10.dp),
                    style = settingsTextStyle(
                        if (compact) MaterialTheme.typography.titleMedium else MaterialTheme.typography.titleLarge,
                        24f,
                    ),
                    color = if (active) MaterialTheme.colorScheme.onSurface else MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 1,
                )
            }
        }
    }
}

@Composable
private fun SettingsDetail(
    state: ContentUiState,
    onEvent: (ContentEvent) -> Unit,
    modifier: Modifier,
    compact: Boolean,
) {
    Column(
        modifier.testTag("settings-detail-scroll").verticalScroll(rememberScrollState())
            .padding(end = if (compact) 4.dp else 12.dp, bottom = 20.dp),
        verticalArrangement = Arrangement.spacedBy(if (compact) 10.dp else 14.dp),
    ) {
        when (state.settingsSection) {
            SettingsSection.TopBar -> TopBarSettings(state, onEvent)
            SettingsSection.Lyrics -> LyricsSettings(state, onEvent)
            SettingsSection.Artwork -> ArtworkSettings(state, onEvent)
            SettingsSection.Media -> MediaSettings(state, onEvent)
            SettingsSection.Layout -> LayoutSettings(state, onEvent)
            SettingsSection.Interaction -> InteractionSettings(state, onEvent)
        }
    }
}

@Composable
private fun TopBarSettings(state: ContentUiState, onEvent: (ContentEvent) -> Unit) {
    SettingsGroup {
        SettingsSwitchRow("显示星期", "在时间旁显示星期名称", state.showWeekday) { onEvent(ContentEvent.ShowWeekdayChanged(it)) }
        SettingsSwitchRow("显示秒数", "时间显示为 HH:mm:ss", state.showSeconds) { onEvent(ContentEvent.ShowSecondsChanged(it)) }
        SettingsSwitchRow("显示车内温度", "在有空间时显示实时车内温度", state.showIndoorTemperature) { onEvent(ContentEvent.ShowIndoorTemperatureChanged(it)) }
        SettingsSwitchRow("显示电量图标", "保留顶栏右侧电池图标", state.showBattery) { onEvent(ContentEvent.ShowBatteryChanged(it)) }
        SettingsSwitchRow("显示充电信息", "显示插枪、预约和充电状态文字", state.showChargingStatus) { onEvent(ContentEvent.ShowChargingStatusChanged(it)) }
    }
}

@Composable
private fun LyricsSettings(state: ContentUiState, onEvent: (ContentEvent) -> Unit) {
    SettingsGroup {
        SettingsOptionRow("歌词字号", "同时调整当前行和普通行", when {
            state.lyricsFontScale < .93f -> "小"
            state.lyricsFontScale > 1.07f -> "大"
            else -> "标准"
        }, listOf("小", "标准", "大")) { value ->
            onEvent(ContentEvent.LyricsFontScaleChanged(when (value) {
                "小" -> .85f
                "大" -> 1.15f
                else -> 1.0f
            }))
        }
        SettingsOptionRow("行间距", "控制相邻歌词行之间的留白", when (state.lyricsLineSpacing.coerceIn(0, 2)) {
            0 -> "紧凑"; 2 -> "宽松"; else -> "标准"
        }, listOf("紧凑", "标准", "宽松")) { value ->
            onEvent(ContentEvent.LyricsLineSpacingChanged(when (value) {
                "紧凑" -> 0; "宽松" -> 2; else -> 1
            }))
        }
        SettingsSwitchRow("按声部布局", "有声部信息时左右分配歌词", state.lyricsSpeakerLayout) { onEvent(ContentEvent.LyricsSpeakerLayoutChanged(it)) }
        SettingsSwitchRow("强调当前行", "放大并突出正在跟随的歌词行", state.lyricsHighlight) { onEvent(ContentEvent.LyricsHighlightChanged(it)) }
    }
}

@Composable
private fun ArtworkSettings(state: ContentUiState, onEvent: (ContentEvent) -> Unit) {
    SettingsGroup {
        SettingsSwitchRow("显示模糊封面背景", "随歌曲封面显示柔和的动态背景", state.showAmbientArtwork) {
            onEvent(ContentEvent.ShowAmbientArtworkChanged(it))
        }
    }
}

@Composable
private fun MediaSettings(state: ContentUiState, onEvent: (ContentEvent) -> Unit) {
    SettingsGroup {
        SettingsSwitchRow("显示来源切换入口", "控制媒体卡和歌词空态中的来源按钮", state.showMediaSourceSwitcher) {
            onEvent(ContentEvent.ShowMediaSourceSwitcherChanged(it))
        }
    }
}

@Composable
private fun LayoutSettings(state: ContentUiState, onEvent: (ContentEvent) -> Unit) {
    SettingsGroup {
        SettingsOptionRow("Dock 显示按钮", "设置入口固定保留在最右侧", state.dockButtonCount.toString(), listOf("3", "4", "5", "6")) { value ->
            onEvent(ContentEvent.DockButtonCountChanged(value.toInt()))
        }
    }
}

@Composable
private fun InteractionSettings(state: ContentUiState, onEvent: (ContentEvent) -> Unit) {
    SettingsGroup {
        val opacityOptions = listOf("20%", "40%", "60%", "80%", "100%")
        val opacityLabel = "${((state.uiOpacity.takeIf { it.isFinite() }?.coerceIn(.20f, 1.0f) ?: 1.0f) * 100f).roundToInt()}%"
        SettingsOptionRow("界面透明度", "调整内容区整体不透明度，最低 20%", opacityLabel, opacityOptions) { value ->
            onEvent(ContentEvent.UiOpacityChanged(value.removeSuffix("%").toFloat() / 100f))
        }
        SettingsSwitchRow("显示操作结果提示", "操作失败或状态未确认时显示提示", state.showActionFeedback) {
            onEvent(ContentEvent.ShowActionFeedbackChanged(it))
        }
    }
}

@Composable
private fun SettingsGroup(content: @Composable () -> Unit) {
    Column(verticalArrangement = Arrangement.spacedBy(10.dp)) { content() }
}

@Composable
private fun SettingsText(title: String, summary: String, modifier: Modifier = Modifier) {
    Column(modifier, verticalArrangement = Arrangement.spacedBy(3.dp)) {
        Text(title, style = settingsTextStyle(MaterialTheme.typography.titleLarge, 24f))
        Text(summary, style = settingsTextStyle(MaterialTheme.typography.bodyMedium, 16f),
            color = MaterialTheme.colorScheme.onSurfaceVariant)
    }
}

@Composable
private fun SettingsSwitchRow(
    title: String,
    summary: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
) {
    BoxWithConstraints(Modifier.fillMaxWidth()) {
        val colors = LocalContentColors.current
        val row = Modifier.fillMaxWidth().heightIn(min = settingsMinimumSize(78.dp, 88f))
            .clip(RoundedCornerShape(14.dp))
            .background(if (checked) colors.selectedSurface else colors.shortcutBase)
            .toggleable(value = checked, role = Role.Switch, onValueChange = onCheckedChange)
            .semantics(mergeDescendants = true) {
                contentDescription = title
                role = Role.Switch
                stateDescription = if (checked) "已开启" else "已关闭"
            }
            .padding(horizontal = 18.dp, vertical = 12.dp)
        if (maxWidth < 280.dp) {
            Column(row, verticalArrangement = Arrangement.spacedBy(8.dp)) {
                SettingsText(title, summary)
                Switch(checked = checked, onCheckedChange = null,
                    modifier = Modifier.align(Alignment.End).testTag("settings-switch-$title"))
            }
        } else {
            Row(row, verticalAlignment = Alignment.CenterVertically) {
                SettingsText(title, summary, Modifier.weight(1f).padding(end = 16.dp))
                Switch(checked = checked, onCheckedChange = null, modifier = Modifier.testTag("settings-switch-$title"))
            }
        }
    }
}

@Composable
private fun SettingsOptionRow(
    title: String,
    summary: String,
    selected: String,
    options: List<String>,
    onSelected: (String) -> Unit,
) {
    val colors = LocalContentColors.current
    Column(
        Modifier.fillMaxWidth().clip(RoundedCornerShape(14.dp))
            .background(colors.shortcutBase)
            .padding(horizontal = 18.dp, vertical = 14.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp),
    ) {
        SettingsText(title, summary)
        BoxWithConstraints(Modifier.fillMaxWidth().selectableGroup()) {
            val minimumColumn = settingsMinimumSize(64.dp, 64f)
            val columns = ((maxWidth + 8.dp) / (minimumColumn + 8.dp)).toInt().coerceIn(1, options.size)
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                options.chunked(columns).forEach { values ->
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        values.forEach { option ->
                            val active = option == selected
                            Surface(
                                Modifier.weight(1f).heightIn(min = settingsMinimumSize(56.dp, 64f))
                                    .testTag("settings-option-${title}-${option}")
                                    .selectable(selected = active, role = Role.RadioButton) { onSelected(option) },

                                shape = RoundedCornerShape(12.dp),
                                color = if (active) colors.selectedSurface else colors.shortcutBase,
                            ) {
                                Box(Modifier.padding(vertical = 8.dp), contentAlignment = Alignment.Center) {
                                    Text(option, style = settingsTextStyle(MaterialTheme.typography.titleMedium, 22f),
                                        color = MaterialTheme.colorScheme.onSurface)
                                }
                            }
                        }
                        repeat(columns - values.size) { Spacer(Modifier.weight(1f)) }
                    }
                }
            }
        }
    }
}

// Keep the native density while guaranteeing readable pixels on low-DPI vehicle displays.
@Composable
private fun settingsTextStyle(style: TextStyle, minimumPixels: Float): TextStyle {
    val density = LocalDensity.current
    val minimumFontSize = with(density) { minimumPixels.toSp() }
    return style.copy(fontSize = if (style.fontSize >= minimumFontSize) style.fontSize else minimumFontSize)
}

@Composable
private fun settingsMinimumSize(minimumDp: Dp, minimumPixels: Float): Dp {
    val density = LocalDensity.current
    return maxOf(minimumDp, with(density) { minimumPixels.toDp() })
}
