package com.icar03.content.ui

import androidx.compose.animation.AnimatedContent
import androidx.compose.animation.SizeTransform
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import androidx.compose.animation.togetherWith
import androidx.compose.animation.core.Animatable
import androidx.compose.foundation.background
import androidx.compose.animation.core.CubicBezierEasing
import androidx.compose.animation.core.tween
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
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
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.graphics.TransformOrigin
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.stateDescription
import androidx.compose.ui.unit.dp
import com.icar03.content.model.LyricPreferenceRules
import com.icar03.content.model.GestureAction
import com.icar03.content.model.GestureCommand
import com.icar03.content.model.GesturePreferences
import java.util.Locale
import kotlin.math.roundToInt

/** The sheet owns navigation and drafts. Layout and controls come from SettingsControls. */
@Composable
internal fun SettingsSheet(
    state: ContentUiState,
    onEvent: (ContentEvent) -> Unit,
    modifier: Modifier = Modifier,
    contentPadding: PaddingValues = PaddingValues(0.dp),
    onVisibilityChanged: (Boolean) -> Unit = {},
    onOcclusionChanged: (Boolean) -> Unit = {},
) {
    CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(state.dark, state.interfaceOpacity)) {
        val design = LocalSettingsDesign.current
        val currentState by rememberUpdatedState(state)
        val currentEvent by rememberUpdatedState(onEvent)
        Box(modifier.clipToBounds().testTag("settings-sheet-host")) {
        // The outer viewport owns clipping. Insets reserve real space around the surface for
        // the shared shadow; surface size, travel and pointer clipping use the inner viewport.
        BoxWithConstraints(Modifier.fillMaxSize().padding(contentPadding)
            .testTag("settings-sheet-surface-viewport")) {
            val density = LocalDensity.current
            val heightPx = with(density) { maxHeight.toPx() }
            val headerHeight = with(density) { design.pageTitleStyle.lineHeight.toDp() } + design.pagePadding * 2
            val headerHeightPx = with(density) { headerHeight.toPx() }
            val peekHeightPx = with(density) { (design.minimumTouchHeight + 16.dp).toPx() }
            // One interruptible pose for open, collapsed and dismissed endpoints.
            val verticalOffset = remember { Animatable(1f) }
            var wasOpen by remember { mutableStateOf(false) }
            val open = state.settingsOpen
            val collapsed = state.canCollapseSettings && state.settingsCollapsed
            val controlsEnabled = open && !collapsed && !state.lyricsProviderSettings.appleLoginOpen &&
                state.lyricsProviderSettings.available
            val settingsEvent: (ContentEvent) -> Unit = {
                if (currentState.settingsOpen && (!currentState.lyricsProviderSettings.appleLoginOpen ||
                        it == AppleMusicLoginDismissed || it == ContentEvent.SettingsBack)) currentEvent(it)
            }
            LaunchedEffect(open, collapsed, heightPx, headerHeightPx, peekHeightPx) {
                if (heightPx <= 0f) return@LaunchedEffect
                if (open) {
                    val entering = !wasOpen
                    if (entering) {
                        verticalOffset.snapTo(heightPx)
                        wasOpen = true
                    }
                    val target = if (collapsed) (heightPx - headerHeightPx - peekHeightPx).coerceAtLeast(0f) else 0f
                    verticalOffset.animateTo(target, tween(if (entering) 360 else 340,
                        easing = CubicBezierEasing(.16f, .84f, .24f, 1f)))
                } else if (wasOpen) {
                    // Dismiss directly from the current pose; never restore a collapsed sheet on its way out.
                    verticalOffset.animateTo(heightPx, tween(300, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)))
                    wasOpen = false
                }
            }
            val fullyCovering = remember(open, verticalOffset) {
                derivedStateOf { open && verticalOffset.value == 0f }
            }.value
            SideEffect {
                onVisibilityChanged(open || wasOpen)
                onOcclusionChanged(fullyCovering)
            }
            if (!open && !wasOpen) return@BoxWithConstraints
            Box(Modifier.matchParentSize().graphicsLayer {
                translationY = verticalOffset.value
            }.settingsSurfaceShadow(design.page, design.dark, design.pageCornerRadius, design.surfaceOpacity)
                .testTag("settings-sheet-shadow"))
            Box(Modifier.fillMaxSize().clipToBounds()) {
                Box(
                    Modifier.fillMaxSize()
                        .graphicsLayer {
                            translationY = verticalOffset.value
                        }
                        .clip(design.pageShape)
                        .background(interfaceSurfaceColor(design.page, design.surfaceOpacity))
                        .testTag("settings-sheet"),
                ) {
                    Column(Modifier.fillMaxSize()) {
                        Box(Modifier.fillMaxWidth().height(headerHeight).testTag("settings-header")) {
                            SettingsIconButton(
                                onClick = { settingsEvent(ContentEvent.SettingsBack) },
                                contentDescription = "返回",
                                enabled = open,
                                modifier = Modifier.align(Alignment.CenterStart),
                                tag = "settings-back",
                                fillRow = true,
                            ) { iconModifier ->
                                Icon(Icons.AutoMirrored.Filled.ArrowBack, null, iconModifier, tint = design.text)
                            }
                            val title = when (state.settingsSection) {
                                SettingsSection.Home -> "设置"
                                SettingsSection.Lyrics -> "歌词设置"
                                SettingsSection.Gestures -> "手势操作"
                                else -> "${state.settingsSection.label}设置"
                            }
                            SettingsLineText(title,
                                Modifier.align(Alignment.Center).padding(horizontal = 72.dp).testTag("settings-title"),
                                design.pageTitleStyle, design.text, textAlign = TextAlign.Center)
                            if (state.canCollapseSettings) SettingsIconButton(
                                onClick = { settingsEvent(ContentEvent.SettingsCollapseTapped) },
                                contentDescription = if (collapsed) "恢复设置页" else "下移收起设置页",
                                enabled = open && !state.lyricsProviderSettings.appleLoginOpen,
                                modifier = Modifier.align(Alignment.CenterEnd),
                                tag = "settings-collapse",
                                fillRow = true,
                            ) { iconModifier ->
                                Icon(
                                    painter = painterResource(R.drawable.content_ic_settings_collapse),
                                    contentDescription = null,
                                    modifier = iconModifier.graphicsLayer {
                                        rotationZ = if (collapsed) 180f else 0f
                                        transformOrigin = TransformOrigin.Center
                                    },
                                    tint = design.text,
                                )
                            }
                        }
                        HorizontalDivider(color = design.divider, modifier = Modifier.testTag("settings-header-divider"))
                        AnimatedContent(
                            targetState = state.settingsSection,
                            modifier = Modifier.weight(1f),
                            transitionSpec = {
                                val direction = if (targetState == SettingsSection.Home) -1 else 1
                                (slideInHorizontally(
                                    animationSpec = tween(320, easing = CubicBezierEasing(.16f, .84f, .24f, 1f)),
                                    initialOffsetX = { it * direction },
                                ) + fadeIn(tween(220))) togetherWith
                                    (slideOutHorizontally(
                                        animationSpec = tween(320, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)),
                                        targetOffsetX = { -it * direction },
                                    ) + fadeOut(tween(180))) using SizeTransform(clip = true)
                            },
                            label = "settings-page-transition",
                        ) { section ->
                            when (section) {
                                SettingsSection.Home -> SettingsHome(settingsEvent, controlsEnabled, Modifier.fillMaxSize())
                                SettingsSection.Lyrics -> LyricsSettings(state, settingsEvent, controlsEnabled, Modifier.fillMaxSize())
                                SettingsSection.Gestures -> GestureSettings(state, settingsEvent,
                                    controlsEnabled && state.settingsSection == SettingsSection.Gestures && !state.settingsCollapsed,
                                    Modifier.fillMaxSize())
                                else -> SettingsDetail(state, settingsEvent, controlsEnabled, Modifier.fillMaxSize())
                            }
                        }
                    }
                }
            }
        }
        }
    }
}

@Composable
private fun SettingsPageList(modifier: Modifier, tag: String, content: @Composable ColumnScope.() -> Unit) {
    val design = LocalSettingsDesign.current
    Column(modifier.fillMaxSize().verticalScroll(rememberScrollState())
        .padding(design.pagePadding).testTag(tag),
        verticalArrangement = Arrangement.spacedBy(design.sectionGap), content = content)
}

@Composable
private fun SettingsHome(onEvent: (ContentEvent) -> Unit, enabled: Boolean, modifier: Modifier) {
    val design = LocalSettingsDesign.current
    SettingsPageList(modifier, "settings-home") {
        val groups = listOf(
            "布局" to listOf(SettingsSection.TopBar, SettingsSection.Layout),
            "音乐" to listOf(SettingsSection.Lyrics, SettingsSection.Artwork),
            "其它" to listOf(SettingsSection.Interaction, SettingsSection.Gestures),
        )
        groups.forEach { (title, sections) ->
            SettingsSection(title, contentPadding = PaddingValues(0.dp)) {
                Column {
                    sections.forEachIndexed { index, section ->
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
                        if (index != sections.lastIndex) SettingsDivider(Modifier.padding(start = 72.dp, end = design.pagePadding))
                    }
                }
            }
        }
    }
}

private val COLOR_OPTIONS = listOf("theme" to "跟随主题", "system" to "系统主题色", "custom" to "自定义")
private val ALIGNMENT_OPTIONS = listOf("left" to "左侧", "center" to "中间", "right" to "右侧")
private fun settingColor(mode: String, color: Int) = COLOR_OPTIONS.firstOrNull { it.first == mode }?.second
    ?.takeUnless { mode == "custom" } ?: String.format(Locale.ROOT, "#%06X", color and 0xFFFFFF)

@Composable
private fun <T> rememberSettingsDraft(saved: T, enabled: Boolean): MutableState<T?> {
    val draft = remember { mutableStateOf<T?>(null) }
    LaunchedEffect(saved, enabled) { draft.value = null }
    return draft
}

@Composable
private fun SettingsLyricColor(
    mode: String, color: Int, enabled: Boolean, current: Boolean,
    onMode: (String) -> Unit, onPreview: (Int) -> Unit, onCommit: (Int, Boolean) -> Unit,
) {
    val prefix = if (current) "settings-current" else "settings-lyrics"
    SettingsFieldBlock("颜色", Modifier.semantics { stateDescription = settingColor(mode, color) },
        tag = if (current) "settings-label-当前句歌词颜色" else "settings-label-歌词颜色") {
        SettingsSegmented(COLOR_OPTIONS, mode, onMode, enabled = enabled, tagPrefix = "$prefix-color-mode")
        if (mode == "custom") SettingsColorPicker(color, onPreview,
            onColorCommit = { onCommit(it, true) }, onSwatchSelected = { onCommit(it, false) },
            enabled = enabled, tagPrefix = "$prefix-color")
    }
}

@Composable
private fun LyricsSettings(
    state: ContentUiState, onEvent: (ContentEvent) -> Unit, enabled: Boolean, modifier: Modifier,
) {
    val controlsEnabled = enabled && !state.lyricsProviderSettings.appleLoginOpen
    var normalDraft by rememberSettingsDraft(state.lyricsFontSizeSp, controlsEnabled)
    var currentDraft by rememberSettingsDraft(state.lyricsCurrentFontSizeSp, controlsEnabled && state.lyricsHighlight)
    var gapDraft by rememberSettingsDraft(state.lyricsLineGapDp, controlsEnabled)
    var immersiveDraft by rememberSettingsDraft(state.lyricsImmersiveFontSizeSp, controlsEnabled)
    var immersiveCurrentDraft by rememberSettingsDraft(state.lyricsImmersiveCurrentFontSizeSp, controlsEnabled && state.lyricsHighlight)
    var immersiveGapDraft by rememberSettingsDraft(state.lyricsImmersiveLineGapDp, controlsEnabled)
    var normalColorDraft by rememberSettingsDraft(state.lyricsCustomColor to state.lyricsColorMode, controlsEnabled)
    var currentColorDraft by rememberSettingsDraft(state.lyricsCurrentCustomColor to state.lyricsCurrentColorMode, controlsEnabled)
    val normal = LyricPreferenceRules.fontSize(normalDraft ?: state.lyricsFontSizeSp)
    val current = LyricPreferenceRules.currentFontSize(currentDraft ?: state.lyricsCurrentFontSizeSp, normal)
    val immersive = LyricPreferenceRules.immersiveFontSize(immersiveDraft ?: state.lyricsImmersiveFontSizeSp)
    val immersiveCurrent = LyricPreferenceRules.immersiveCurrentFontSize(immersiveCurrentDraft ?: state.lyricsImmersiveCurrentFontSizeSp, immersive)
    val gap = LyricPreferenceRules.lineGap(gapDraft ?: state.lyricsLineGapDp)
    val immersiveGap = LyricPreferenceRules.immersiveLineGap(immersiveGapDraft ?: state.lyricsImmersiveLineGapDp)
    val currentRange = normal..(normal + LyricPreferenceRules.CURRENT_FONT_EXTRA_SP)
    val immersiveCurrentRange = immersive..(immersive + LyricPreferenceRules.CURRENT_FONT_EXTRA_SP)
    SettingsPageList(modifier, "settings-detail-scroll") {
        SettingsSection("歌词库") {
            LyricsProviderSettings(state.lyricsProviderSettings, onEvent, controlsEnabled, loginEnabled = enabled)
        }
        SettingsSection("歌词") {
            SettingsFieldBlock("字号") {
                SettingsSliderRow("分屏", normal, "sp", LyricPreferenceRules.FONT_RANGE, { normalDraft = it },
                    { onEvent(ContentEvent.LyricsFontSizeChanged(LyricPreferenceRules.fontSize(normalDraft ?: state.lyricsFontSizeSp))); normalDraft = null },
                    enabled = controlsEnabled, tag = "settings-font-size", steps = 43)
                SettingsSliderRow("全屏", immersive, "sp", LyricPreferenceRules.IMMERSIVE_FONT_RANGE, { immersiveDraft = it },
                    { onEvent(ContentEvent.LyricsImmersiveFontSizeChanged(LyricPreferenceRules.immersiveFontSize(immersiveDraft ?: state.lyricsImmersiveFontSizeSp))); immersiveDraft = null },
                    enabled = controlsEnabled, tag = "settings-immersive-font-size", steps = 63)
            }
            SettingsDivider()
            SettingsFieldBlock("间距") {
                SettingsSliderRow("分屏", gap, "dp", LyricPreferenceRules.GAP_RANGE, { gapDraft = it },
                    { onEvent(ContentEvent.LyricsLineGapChanged(LyricPreferenceRules.lineGap(gapDraft ?: state.lyricsLineGapDp))); gapDraft = null },
                    enabled = controlsEnabled, tag = "settings-line-gap", steps = 63)
                SettingsSliderRow("全屏", immersiveGap, "dp", LyricPreferenceRules.IMMERSIVE_GAP_RANGE, { immersiveGapDraft = it },
                    { onEvent(ContentEvent.LyricsImmersiveLineGapChanged(LyricPreferenceRules.immersiveLineGap(immersiveGapDraft ?: state.lyricsImmersiveLineGapDp))); immersiveGapDraft = null },
                    enabled = controlsEnabled, tag = "settings-immersive-line-gap", steps = 95)
            }
            SettingsDivider()
            SettingsFieldBlock("位置") {
                SettingsSegmented(ALIGNMENT_OPTIONS, state.lyricsAlignment,
                    { onEvent(ContentEvent.LyricsAlignmentChanged(it)) }, enabled = controlsEnabled, tagPrefix = "settings-lyrics-alignment")
            }
            SettingsDivider()
            SettingsLyricColor(state.lyricsColorMode, normalColorDraft?.first ?: state.lyricsCustomColor, controlsEnabled, false,
                onMode = { onEvent(ContentEvent.LyricsColorModeChanged(it)) },
                onPreview = { normalColorDraft = it to state.lyricsColorMode },
                onCommit = { color, drag -> onEvent(ContentEvent.LyricsCustomColorChanged(color, fromDrag = drag)); normalColorDraft = null })
        }
        SettingsItemSection("当前句歌词") {
            SettingsSwitchRow("放大强调", state.lyricsHighlight, { onEvent(ContentEvent.LyricsHighlightChanged(it)) },
                enabled = controlsEnabled, tag = "settings-switch-当前句歌词放大")
            if (state.lyricsHighlight) {
                SettingsItemDivider()
                SettingsItemContent {
                    SettingsFieldBlock("字号") {
                        SettingsSliderRow("分屏", current, "sp", currentRange,
                            { currentDraft = it },
                            { onEvent(ContentEvent.LyricsCurrentFontSizeChanged(LyricPreferenceRules.currentFontSize(currentDraft ?: state.lyricsCurrentFontSizeSp, normal))); currentDraft = null },
                            enabled = controlsEnabled, tag = "settings-current-font-size",
                            steps = (currentRange.endInclusive - currentRange.start).roundToInt() - 1)
                        SettingsSliderRow("全屏", immersiveCurrent, "sp", immersiveCurrentRange,
                            { immersiveCurrentDraft = it },
                            { onEvent(ContentEvent.LyricsImmersiveCurrentFontSizeChanged(LyricPreferenceRules.immersiveCurrentFontSize(immersiveCurrentDraft ?: state.lyricsImmersiveCurrentFontSizeSp, immersive))); immersiveCurrentDraft = null },
                            enabled = controlsEnabled, tag = "settings-immersive-current-font-size",
                            steps = ((immersiveCurrentRange.endInclusive - immersiveCurrentRange.start) / 2f).roundToInt() - 1)
                    }
                }
                SettingsItemDivider()
            }
            SettingsItemContent(topPadding = if (state.lyricsHighlight) null else 0.dp) {
                SettingsLyricColor(state.lyricsCurrentColorMode, currentColorDraft?.first ?: state.lyricsCurrentCustomColor, controlsEnabled, true,
                    onMode = { onEvent(ContentEvent.LyricsCurrentColorModeChanged(it)) },
                    onPreview = { currentColorDraft = it to state.lyricsCurrentColorMode },
                    onCommit = { color, drag -> onEvent(ContentEvent.LyricsCurrentCustomColorChanged(color, fromDrag = drag)); currentColorDraft = null })
            }
        }
        SettingsItemSection("对唱布局") {
            SettingsSwitchRow("显示对唱布局", state.lyricsSpeakerLayout, { onEvent(ContentEvent.LyricsSpeakerLayoutChanged(it)) },
                enabled = controlsEnabled, tag = "settings-switch-对唱布局")
        }
        SettingsItemSection("歌词翻译") {
            SettingsSwitchRow("显示歌词翻译", state.lyricsShowTranslation, { onEvent(ContentEvent.LyricsShowTranslationChanged(it)) },
                enabled = controlsEnabled, tag = "settings-switch-显示歌词翻译")
            SettingsItemDivider()
            SettingsSwitchRow("显示歌词注音", state.lyricsShowRomanization, { onEvent(ContentEvent.LyricsShowRomanizationChanged(it)) },
                enabled = controlsEnabled, tag = "settings-switch-显示歌词注音")
        }
        SettingsActionButton(
            label = "恢复默认值",
            onClick = { onEvent(ContentEvent.LyricsDefaultsRequested) },
            enabled = controlsEnabled,
            tag = "settings-lyrics-reset",
        )
    }
}

@Composable
private fun GestureSettings(
    state: ContentUiState, onEvent: (ContentEvent) -> Unit, enabled: Boolean, modifier: Modifier,
) {
    val design = LocalSettingsDesign.current
    val options = GestureAction.entries.map { it.value to it.label }
    SettingsPageList(modifier, "settings-gestures-scroll") {
        listOf(2 to "二指", 3 to "三指", 4 to "四指").forEach { (fingers, title) ->
            SettingsItemSection(title) {
                val commands = GestureCommand.entries.filter { it.fingers == fingers }
                commands.forEachIndexed { index, command ->
                    val label = command.label
                    Row(Modifier.fillMaxWidth().padding(design.pagePadding)
                        .testTag("settings-gesture-row-${command.key}"),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(design.smallGap)) {
                        SettingsLineText(label, Modifier.weight(.28f)
                            .testTag("settings-gesture-label-${command.key}"),
                            design.labelStyle, design.text, maxLines = Int.MAX_VALUE)
                        val action = state.gestureActions[command] ?: GesturePreferences.defaultAction(command)
                        SettingsDropdown(options, action.value, onSelected = { value ->
                            GestureAction.fromValue(value)?.let { onEvent(ContentEvent.GestureActionChanged(command, it)) }
                        }, modifier = Modifier.weight(.72f).semantics { contentDescription = command.label },
                            enabled = enabled, tag = "settings-gesture-${command.key}")
                    }
                    if (index != commands.lastIndex) SettingsItemDivider()
                }
            }
        }
    }
}

@Composable
private fun SettingsDetail(state: ContentUiState, onEvent: (ContentEvent) -> Unit, enabled: Boolean, modifier: Modifier) {
    @Composable fun flag(title: String, checked: Boolean, tag: String = "settings-switch-$title", changed: (Boolean) -> Unit) {
        SettingsSwitchRow(title, checked, changed, enabled = enabled, tag = tag)
    }
    SettingsPageList(modifier, "settings-detail-scroll") {
        when (state.settingsSection) {
            SettingsSection.TopBar -> {
                SettingsItemSection("时间") {
                    flag("显示秒", state.showSeconds, "settings-switch-显示秒数") { onEvent(ContentEvent.ShowSecondsChanged(it)) }
                    SettingsItemDivider()
                    flag("显示星期", state.showWeekday) { onEvent(ContentEvent.ShowWeekdayChanged(it)) }
                }
                SettingsItemSection("温度") { flag("显示车内温度", state.showIndoorTemperature) { onEvent(ContentEvent.ShowIndoorTemperatureChanged(it)) } }
                SettingsItemSection("电池") {
                    flag("显示电量", state.showBattery, "settings-switch-显示电量图标") { onEvent(ContentEvent.ShowBatteryChanged(it)) }
                    SettingsItemDivider()
                    flag("显示续航", state.showRange) { onEvent(ContentEvent.ShowRangeChanged(it)) }
                    SettingsItemDivider()
                    flag("显示插枪", state.showPluggedStatus) { onEvent(ContentEvent.ShowPluggedStatusChanged(it)) }
                    SettingsItemDivider()
                    flag("显示预约充电", state.showScheduledCharging) { onEvent(ContentEvent.ShowScheduledChargingChanged(it)) }
                    SettingsItemDivider()
                    flag("显示充电剩余时长", state.showChargingRemainingTime) { onEvent(ContentEvent.ShowChargingRemainingTimeChanged(it)) }
                    SettingsItemDivider()
                    flag("显示充电功率", state.showChargingPower) { onEvent(ContentEvent.ShowChargingPowerChanged(it)) }
                }
                SettingsItemSection("沉浸式全屏") {
                    flag("显示状态栏", state.immersiveShowTopBar, "settings-switch-全屏时显示状态栏") { onEvent(ContentEvent.ImmersiveShowTopBarChanged(it)) }
                    SettingsItemDivider()
                    SettingsSwitchRow("下个路口红绿灯", state.showCruiseSignals, { onEvent(ContentEvent.ShowCruiseSignalsChanged(it)) },
                        enabled = enabled && state.immersiveShowTopBar, tag = "settings-switch-下个路口红绿灯")
                    SettingsItemDivider()
                    flag("状态栏保持分屏", state.immersiveTopBarKeepSplit) { onEvent(ContentEvent.ImmersiveTopBarKeepSplitChanged(it)) }
                }
            }
            SettingsSection.Layout -> {
                SettingsSection("底栏") {
                    SettingsFieldBlock("按钮数量") {
                        SettingsSegmented((3..6).map { it.toString() to it.toString() }, state.dockButtonCount.toString(),
                            { onEvent(ContentEvent.DockButtonCountChanged(it.toInt())) }, enabled = enabled, tagPrefix = "settings-dock-count")
                    }
                }
                SettingsItemSection("沉浸式全屏") { flag("显示底栏", state.immersiveShowDock, "settings-switch-全屏时显示底栏") { onEvent(ContentEvent.ImmersiveShowDockChanged(it)) } }
            }
            SettingsSection.Artwork -> SettingsItemSection("背景") { flag("模糊封面背景", state.showAmbientArtwork) { onEvent(ContentEvent.ShowAmbientArtworkChanged(it)) } }
            SettingsSection.Media -> Unit
            SettingsSection.Interaction -> {
                SettingsSection("界面") {
                    SettingsFieldBlock("透明度") {
                        SettingsSegmented(listOf(20, 40, 60, 80, 100).map { it.toString() to "$it%" },
                            (state.uiOpacity * 100).roundToInt().toString(), { onEvent(ContentEvent.UiOpacityChanged(it.toFloat() / 100f)) },
                            enabled = enabled, tagPrefix = "settings-opacity")
                    }
                }
                SettingsItemSection("交互") {
                    flag("操作结果提示", state.showActionFeedback) { onEvent(ContentEvent.ShowActionFeedbackChanged(it)) }
                    SettingsItemDivider()
                    flag("行车时自动关闭设置页", state.autoCloseSettingsOnDrive) {
                        onEvent(ContentEvent.AutoCloseSettingsOnDriveChanged(it))
                    }
                }
            }
            SettingsSection.Home, SettingsSection.Lyrics, SettingsSection.Gestures -> Unit
        }
    }
}
