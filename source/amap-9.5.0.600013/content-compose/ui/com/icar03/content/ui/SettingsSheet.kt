package com.icar03.content.ui

import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.CubicBezierEasing
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.outlined.QueueMusic
import androidx.compose.material.icons.outlined.Image
import androidx.compose.material.icons.outlined.Subtitles
import androidx.compose.material.icons.outlined.Tune
import androidx.compose.material.icons.outlined.VerticalAlignBottom
import androidx.compose.material.icons.outlined.VerticalAlignTop
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.key
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.dp
import com.icar03.content.model.LyricPreferenceRules
import java.util.Locale
import kotlin.math.roundToInt

/** Navigation and composition only; all controls use the shared Material3 atoms. */
@Composable
internal fun SettingsSheet(
    state: ContentUiState,
    onEvent: (ContentEvent) -> Unit,
    modifier: Modifier = Modifier,
    onVisibilityChanged: (Boolean) -> Unit = {},
    appleMusicLogin: @Composable ((ContentEvent) -> Unit) -> Unit = {},
) {
    CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(state.dark)) {
        val design = LocalSettingsDesign.current
        val currentState by rememberUpdatedState(state)
        val currentEvent by rememberUpdatedState(onEvent)
        BoxWithConstraints(modifier.clipToBounds().testTag("settings-sheet-host")) {
            val density = LocalDensity.current
            val heightPx = with(density) { maxHeight.toPx() }
            val headerHeight = maxOf(64.dp, with(density) { 80f.toDp() })
            val backSize = maxOf(48.dp, with(density) { 64f.toDp() })
            val offset = remember { Animatable(heightPx.coerceAtLeast(1f)) }
            var wasOpen by remember { mutableStateOf(false) }
            val open = state.settingsOpen
            val pageEnabled = open && !state.lyricsProviderSettings.appleLoginOpen
            val settingsEvent: (ContentEvent) -> Unit = {
                if (currentState.settingsOpen && (!currentState.lyricsProviderSettings.appleLoginOpen ||
                        it == AppleMusicLoginDismissed)) currentEvent(it)
            }
            LaunchedEffect(open, heightPx) {
                if (heightPx <= 0f) return@LaunchedEffect
                if (open) {
                    if (!wasOpen) {
                        offset.snapTo(heightPx)
                        wasOpen = true
                    }
                    offset.animateTo(0f, tween(320, easing = CubicBezierEasing(.2f, .8f, .2f, 1f)))
                } else if (wasOpen) {
                    offset.animateTo(heightPx, tween(250, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)))
                    wasOpen = false
                }
            }
            SideEffect { onVisibilityChanged(open || wasOpen) }
            if (!open && !wasOpen) return@BoxWithConstraints
            Surface(
                modifier = Modifier.fillMaxSize().graphicsLayer { translationY = offset.value }
                    .testTag("settings-sheet"),
                color = design.page,
                shape = RoundedCornerShape(18.dp),
                tonalElevation = 0.dp,
                shadowElevation = 2.dp,
            ) {
                Box(Modifier.fillMaxSize()) {
                    Column(Modifier.fillMaxSize()) {
                        Box(Modifier.fillMaxWidth().height(headerHeight).testTag("settings-header")) {
                            IconButton(
                                onClick = { settingsEvent(ContentEvent.SettingsBack) }, enabled = pageEnabled,
                                modifier = Modifier.align(Alignment.CenterStart).padding(start = 8.dp)
                                    .size(backSize).testTag("settings-back"),
                            ) {
                                Icon(Icons.AutoMirrored.Filled.ArrowBack, "返回", tint = design.text,
                                    modifier = Modifier.size(28.dp))
                            }
                            val title = when (state.settingsSection) {
                                SettingsSection.Home -> "设置"
                                SettingsSection.Lyrics -> "歌词设置"
                                else -> "${state.settingsSection.label}设置"
                            }
                            Text(title, Modifier.align(Alignment.Center).testTag("settings-title"),
                                style = design.pageTitleStyle, color = design.text)
                        }
                        HorizontalDivider(color = design.divider.copy(alpha = .65f),
                            modifier = Modifier.testTag("settings-header-divider"))
                        key(state.settingsSection) {
                            when (state.settingsSection) {
                                SettingsSection.Home -> SettingsHome(settingsEvent, pageEnabled, Modifier.weight(1f))
                                SettingsSection.Lyrics -> LyricsSettings(state, settingsEvent, pageEnabled, Modifier.weight(1f))
                                else -> SettingsDetail(state, settingsEvent, pageEnabled, Modifier.weight(1f))
                            }
                        }
                    }
                    if (state.lyricsProviderSettings.appleLoginOpen) appleMusicLogin(settingsEvent)
                }
            }
        }
    }
}

@Composable
private fun SettingsHome(onEvent: (ContentEvent) -> Unit, enabled: Boolean, modifier: Modifier) {
    val design = LocalSettingsDesign.current
    BoxWithConstraints(modifier.fillMaxSize()) {
        val padding = design.paddingFor(maxWidth)
        Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState())
            .padding(horizontal = padding, vertical = 20.dp).testTag("settings-home"),
            verticalArrangement = Arrangement.spacedBy(24.dp)) {
            val groups = listOf(
                listOf(SettingsSection.TopBar, SettingsSection.Layout),
                listOf(SettingsSection.Lyrics, SettingsSection.Artwork),
                listOf(SettingsSection.Media, SettingsSection.Interaction),
            )
            for (group in groups) {
                Surface(shape = design.cardShape, color = design.card, tonalElevation = 0.dp,
                    shadowElevation = design.shadowElevation, modifier = Modifier.fillMaxWidth()) {
                    Column {
                        group.forEachIndexed { index, section ->
                            val icon = when (section) {
                                SettingsSection.TopBar -> Icons.Outlined.VerticalAlignTop
                                SettingsSection.Layout -> Icons.Outlined.VerticalAlignBottom
                                SettingsSection.Lyrics -> Icons.Outlined.Subtitles
                                SettingsSection.Artwork -> Icons.Outlined.Image
                                SettingsSection.Media -> Icons.AutoMirrored.Outlined.QueueMusic
                                else -> Icons.Outlined.Tune
                            }
                            SettingsNavigationItem(section.label, icon,
                                onClick = { onEvent(ContentEvent.SettingsSectionSelected(section)) },
                                enabled = enabled, tag = "settings-menu-${section.name}")
                            if (index != group.lastIndex) HorizontalDivider(color = design.divider.copy(alpha = .65f),
                                modifier = Modifier.padding(start = 64.dp, end = 20.dp))
                        }
                    }
                }
            }
        }
    }
}

private val COLOR_OPTIONS = listOf("theme" to "跟随主题", "system" to "系统主题色", "custom" to "自定义")
private val ALIGNMENT_OPTIONS = listOf("left" to "左侧", "center" to "中间", "right" to "右侧")
private fun settingNumber(value: Float) = value.roundToInt().toString()
private fun settingColor(mode: String, color: Int) = COLOR_OPTIONS.firstOrNull { it.first == mode }?.second
    ?.takeUnless { mode == "custom" } ?: String.format(Locale.ROOT, "#%06X", color and 0xFFFFFF)

@Composable
private fun LyricsSettings(state: ContentUiState, onEvent: (ContentEvent) -> Unit, enabled: Boolean, modifier: Modifier) {
    val design = LocalSettingsDesign.current
    var normalDraft by remember { mutableStateOf<Float?>(null) }
    var currentDraft by remember { mutableStateOf<Float?>(null) }
    var gapDraft by remember { mutableStateOf<Float?>(null) }
    var immersiveFontDraft by remember { mutableStateOf<Float?>(null) }
    var immersiveGapDraft by remember { mutableStateOf<Float?>(null) }
    var previewImmersive by remember { mutableStateOf(false) }
    var normalColorDraft by remember { mutableStateOf<Int?>(null) }
    var currentColorDraft by remember { mutableStateOf<Int?>(null) }
    LaunchedEffect(enabled) {
        if (!enabled) {
            normalDraft = null
            currentDraft = null
            gapDraft = null
            immersiveFontDraft = null
            immersiveGapDraft = null
            normalColorDraft = null
            currentColorDraft = null
            previewImmersive = false
        }
    }
    LaunchedEffect(state.lyricsFontSizeSp) { normalDraft = null }
    LaunchedEffect(state.lyricsCurrentFontSizeSp) { currentDraft = null }
    LaunchedEffect(state.lyricsLineGapDp) { gapDraft = null }
    LaunchedEffect(state.lyricsImmersiveFontSizeSp) { immersiveFontDraft = null }
    LaunchedEffect(state.lyricsImmersiveLineGapDp) { immersiveGapDraft = null }
    LaunchedEffect(state.lyricsCustomColor, state.lyricsColorMode) { normalColorDraft = null }
    LaunchedEffect(state.lyricsCurrentCustomColor, state.lyricsCurrentColorMode) { currentColorDraft = null }
    val normal = LyricPreferenceRules.fontSize(normalDraft ?: state.lyricsFontSizeSp)
    val current = LyricPreferenceRules.currentFontSize(currentDraft ?: state.lyricsCurrentFontSizeSp, normal)
    val gap = LyricPreferenceRules.lineGap(gapDraft ?: state.lyricsLineGapDp)
    val immersiveFont = LyricPreferenceRules.immersiveFontSize(immersiveFontDraft ?: state.lyricsImmersiveFontSizeSp)
    val immersiveGap = LyricPreferenceRules.immersiveLineGap(immersiveGapDraft ?: state.lyricsImmersiveLineGapDp)
    val normalColor = normalColorDraft ?: state.lyricsCustomColor
    val currentColor = currentColorDraft ?: state.lyricsCurrentCustomColor
    val sampleState = state.copy(lyricsFontSizeSp = normal, lyricsCurrentFontSizeSp = current,
        lyricsLineGapDp = gap, lyricsCustomColor = normalColor, lyricsCurrentCustomColor = currentColor,
        lyricsImmersiveFontSizeSp = immersiveFont, lyricsImmersiveLineGapDp = immersiveGap)
    BoxWithConstraints(modifier.fillMaxSize()) {
        val padding = design.paddingFor(maxWidth)
        val previewHeight = minOf(220.dp, maxHeight * .32f).coerceAtLeast(140.dp)
            .coerceAtMost((maxHeight - 100.dp).coerceAtLeast(0.dp))
        val previewScale = minOf((maxWidth.value / 600f).coerceIn(.65f, .9f), previewHeight.value / 220f * .9f)
        Column(Modifier.fillMaxSize()) {
            LyricsSettingsPreview(sampleState, previewScale, previewImmersive, Modifier.padding(start = padding, end = padding, top = 20.dp)
                .fillMaxWidth().height(previewHeight))
            Spacer(Modifier.height(20.dp))
            Column(Modifier.weight(1f).fillMaxWidth().verticalScroll(rememberScrollState())
                .padding(start = padding, end = padding, bottom = 28.dp).testTag("settings-detail-scroll"),
                verticalArrangement = Arrangement.spacedBy(design.sectionGap)) {
                LyricsProviderSettings(state.lyricsProviderSettings, onEvent, enabled)
                SettingsSectionBlock("歌词字号", "${settingNumber(normal)}sp") {
                    SettingsSlider(normal, LyricPreferenceRules.FONT_RANGE, { normalDraft = it; previewImmersive = false },
                        { onEvent(ContentEvent.LyricsFontSizeChanged(LyricPreferenceRules.fontSize(normalDraft ?: state.lyricsFontSizeSp))); normalDraft = null },
                        enabled = enabled, tag = "settings-font-size", steps = 39)
                }
                SettingsSectionBlock("歌词间距", "${settingNumber(gap)}dp") {
                    SettingsSlider(gap, LyricPreferenceRules.GAP_RANGE, { gapDraft = it; previewImmersive = false },
                        { onEvent(ContentEvent.LyricsLineGapChanged(LyricPreferenceRules.lineGap(gapDraft ?: state.lyricsLineGapDp))); gapDraft = null },
                        enabled = enabled, tag = "settings-line-gap", steps = 63)
                }
                SettingsSectionBlock("歌词位置", ALIGNMENT_OPTIONS.first { it.first == state.lyricsAlignment }.second) {
                    SettingsSegmented(ALIGNMENT_OPTIONS, state.lyricsAlignment,
                        { onEvent(ContentEvent.LyricsAlignmentChanged(it)) }, enabled = enabled,
                        tagPrefix = "settings-lyrics-alignment")
                }
                SettingsSectionBlock("歌词颜色", settingColor(state.lyricsColorMode, normalColor)) {
                    SettingsSegmented(COLOR_OPTIONS, state.lyricsColorMode,
                        { onEvent(ContentEvent.LyricsColorModeChanged(it)) }, enabled = enabled,
                        tagPrefix = "settings-lyrics-color-mode")
                    if (state.lyricsColorMode == "custom") SettingsColorPicker(normalColor,
                        onColorPreview = { normalColorDraft = it },
                        onColorCommit = { onEvent(ContentEvent.LyricsCustomColorChanged(it, fromDrag = true)); normalColorDraft = null },
                        onSwatchSelected = { onEvent(ContentEvent.LyricsCustomColorChanged(it)); normalColorDraft = null },
                        enabled = enabled, tagPrefix = "settings-lyrics-color")
                }
                SettingsBooleanBlock("当前句歌词放大", state.lyricsHighlight, enabled,
                    "settings-switch-当前句歌词放大") { onEvent(ContentEvent.LyricsHighlightChanged(it)) }
                SettingsSectionBlock("当前句歌词字号", "${settingNumber(current)}sp") {
                    SettingsSlider(current, normal..LyricPreferenceRules.CURRENT_FONT_RANGE.endInclusive,
                        { currentDraft = it },
                        { onEvent(ContentEvent.LyricsCurrentFontSizeChanged(LyricPreferenceRules.currentFontSize(
                            currentDraft ?: state.lyricsCurrentFontSizeSp, normalDraft ?: state.lyricsFontSizeSp))); currentDraft = null },
                        enabled = enabled && state.lyricsHighlight, tag = "settings-current-font-size",
                        steps = (LyricPreferenceRules.CURRENT_FONT_RANGE.endInclusive - normal).roundToInt() - 1)
                }
                SettingsSectionBlock("当前句歌词颜色", settingColor(state.lyricsCurrentColorMode, currentColor)) {
                    SettingsSegmented(COLOR_OPTIONS, state.lyricsCurrentColorMode,
                        { onEvent(ContentEvent.LyricsCurrentColorModeChanged(it)) }, enabled = enabled,
                        tagPrefix = "settings-current-color-mode")
                    if (state.lyricsCurrentColorMode == "custom") SettingsColorPicker(currentColor,
                        onColorPreview = { currentColorDraft = it },
                        onColorCommit = { onEvent(ContentEvent.LyricsCurrentCustomColorChanged(it, fromDrag = true)); currentColorDraft = null },
                        onSwatchSelected = { onEvent(ContentEvent.LyricsCurrentCustomColorChanged(it)); currentColorDraft = null },
                        enabled = enabled, tagPrefix = "settings-current-color")
                }
                SettingsBooleanBlock("对唱布局", state.lyricsSpeakerLayout, enabled,
                    "settings-switch-对唱布局") { onEvent(ContentEvent.LyricsSpeakerLayoutChanged(it)) }
                SettingsSectionBlock("沉浸式全屏歌词字号", "${settingNumber(immersiveFont)}sp") {
                    SettingsSlider(immersiveFont, LyricPreferenceRules.IMMERSIVE_FONT_RANGE,
                        { immersiveFontDraft = it; previewImmersive = true },
                        { onEvent(ContentEvent.LyricsImmersiveFontSizeChanged(LyricPreferenceRules.immersiveFontSize(
                            immersiveFontDraft ?: state.lyricsImmersiveFontSizeSp))); immersiveFontDraft = null },
                        enabled = enabled, tag = "settings-immersive-font-size", steps = 63)
                }
                SettingsSectionBlock("沉浸式全屏歌词间距", "${settingNumber(immersiveGap)}dp") {
                    SettingsSlider(immersiveGap, LyricPreferenceRules.IMMERSIVE_GAP_RANGE,
                        { immersiveGapDraft = it; previewImmersive = true },
                        { onEvent(ContentEvent.LyricsImmersiveLineGapChanged(LyricPreferenceRules.immersiveLineGap(
                            immersiveGapDraft ?: state.lyricsImmersiveLineGapDp))); immersiveGapDraft = null },
                        enabled = enabled, tag = "settings-immersive-line-gap", steps = 95)
                }
            }
        }
    }
}

@Composable
private fun LyricsSettingsPreview(state: ContentUiState, scale: Float, immersive: Boolean, modifier: Modifier) {
    val design = LocalSettingsDesign.current
    val sample = remember {
        LyricsState(recordingKey = "settings-fixed-sample", lines = listOf(
            LyricLine(0L, "这句是歌词", endTimeMs = 1_000L, side = LyricSide.Leading),
            LyricLine(1_000L, "这句也是歌词", endTimeMs = 2_000L),
            LyricLine(2_000L, "这句是歌词", endTimeMs = 3_000L, side = LyricSide.Trailing),
        ), timelineReady = true, positionMs = 1_500L, durationMs = 60_000L,
            scrollIndex = 1, activeIndex = 1, activeIndices = listOf(1), playbackSpeed = 0f)
    }
    Surface(modifier.testTag("settings-lyrics-preview"), shape = design.previewShape,
        color = design.track, tonalElevation = 0.dp, shadowElevation = design.shadowElevation) {
        Box(Modifier.fillMaxSize()) {
            val style = lyricRenderStyle(state, immersive)
            val sampleStyle = if (immersive) style.copy(normalSizeSp = style.normalSizeSp / 3f,
                currentSizeSp = style.currentSizeSp / 3f, lineGapDp = style.lineGapDp / 3f, immersive = false) else style
            WallpaperLyrics(sample, state.dark, Modifier.fillMaxSize(),
                renderStyle = sampleStyle, speakerLayout = state.lyricsSpeakerLayout,
                presentationScale = scale, interactionEnabled = false, settingsPreview = true)
            if (immersive) Text("全屏歌词预览", Modifier.align(Alignment.TopEnd).padding(end = 12.dp, top = 8.dp),
                style = design.supportingStyle, color = design.secondaryText)
        }
    }
}

@Composable
private fun SettingsSectionBlock(title: String, value: String, content: @Composable ColumnScope.() -> Unit) {
    Column(Modifier.fillMaxWidth(), verticalArrangement = Arrangement.spacedBy(10.dp)) {
        SettingsValueLabel(title, value, Modifier.testTag("settings-label-$title"))
        content()
    }
}

@Composable
private fun SettingsBooleanBlock(title: String, checked: Boolean, enabled: Boolean, tag: String,
    onChanged: (Boolean) -> Unit) {
    SettingsSectionBlock(title, if (checked) "开启" else "关闭") {
        SettingsToggle(checked, onChanged, Modifier.semantics { contentDescription = title }, enabled, tag)
    }
}

@Composable
private fun SettingsDetail(state: ContentUiState, onEvent: (ContentEvent) -> Unit, enabled: Boolean, modifier: Modifier) {
    val design = LocalSettingsDesign.current
    BoxWithConstraints(modifier.fillMaxSize()) {
        val padding = design.paddingFor(maxWidth)
        Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState())
            .padding(horizontal = padding, vertical = 24.dp).testTag("settings-detail-scroll"),
            verticalArrangement = Arrangement.spacedBy(design.sectionGap)) {
            when (state.settingsSection) {
                SettingsSection.TopBar -> {
                    SettingsBooleanBlock("显示星期", state.showWeekday, enabled, "settings-switch-显示星期") { onEvent(ContentEvent.ShowWeekdayChanged(it)) }
                    SettingsBooleanBlock("显示秒数", state.showSeconds, enabled, "settings-switch-显示秒数") { onEvent(ContentEvent.ShowSecondsChanged(it)) }
                    SettingsBooleanBlock("显示车内温度", state.showIndoorTemperature, enabled, "settings-switch-显示车内温度") { onEvent(ContentEvent.ShowIndoorTemperatureChanged(it)) }
                    SettingsBooleanBlock("显示电量图标", state.showBattery, enabled, "settings-switch-显示电量图标") { onEvent(ContentEvent.ShowBatteryChanged(it)) }
                    SettingsBooleanBlock("显示充电信息", state.showChargingStatus, enabled, "settings-switch-显示充电信息") { onEvent(ContentEvent.ShowChargingStatusChanged(it)) }
                    SettingsBooleanBlock("全屏时显示状态栏", state.immersiveShowTopBar, enabled, "settings-switch-全屏时显示状态栏") { onEvent(ContentEvent.ImmersiveShowTopBarChanged(it)) }
                }
                SettingsSection.Layout -> {
                    SettingsSectionBlock("底栏按钮数量", state.dockButtonCount.toString()) {
                        SettingsSegmented((3..6).map { it.toString() to it.toString() }, state.dockButtonCount.toString(),
                            { onEvent(ContentEvent.DockButtonCountChanged(it.toInt())) }, enabled = enabled,
                            tagPrefix = "settings-dock-count")
                    }
                    SettingsBooleanBlock("全屏时显示底栏", state.immersiveShowDock, enabled, "settings-switch-全屏时显示底栏") { onEvent(ContentEvent.ImmersiveShowDockChanged(it)) }
                }
                SettingsSection.Artwork -> SettingsBooleanBlock("模糊封面背景", state.showAmbientArtwork, enabled,
                    "settings-switch-模糊封面背景") { onEvent(ContentEvent.ShowAmbientArtworkChanged(it)) }
                SettingsSection.Media -> SettingsBooleanBlock("来源切换入口", state.showMediaSourceSwitcher, enabled,
                    "settings-switch-来源切换入口") { onEvent(ContentEvent.ShowMediaSourceSwitcherChanged(it)) }
                SettingsSection.Interaction -> {
                    SettingsSectionBlock("界面透明度", "${(state.uiOpacity * 100).roundToInt()}%") {
                        SettingsSegmented(listOf(20, 40, 60, 80, 100).map { it.toString() to "$it%" },
                            (state.uiOpacity * 100).roundToInt().toString(),
                            { onEvent(ContentEvent.UiOpacityChanged(it.toFloat() / 100f)) }, enabled = enabled,
                            tagPrefix = "settings-opacity")
                    }
                    SettingsBooleanBlock("操作结果提示", state.showActionFeedback, enabled,
                        "settings-switch-操作结果提示") { onEvent(ContentEvent.ShowActionFeedbackChanged(it)) }
                }
                SettingsSection.Home, SettingsSection.Lyrics -> Unit
            }
        }
    }
}
