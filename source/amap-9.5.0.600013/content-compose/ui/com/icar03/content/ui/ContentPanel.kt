@file:OptIn(androidx.compose.foundation.ExperimentalFoundationApi::class)

package com.icar03.content.ui

import com.icar03.content.model.GestureAction
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
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.selection.selectableGroup
import androidx.compose.ui.draw.drawBehind
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.graphics.drawscope.drawIntoCanvas
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.draw.blur
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
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
import androidx.compose.ui.zIndex
import androidx.compose.material3.*
import androidx.compose.ui.platform.LocalView
import androidx.compose.runtime.Composable
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.animation.core.Animatable
import androidx.compose.ui.layout.Layout
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.key
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
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.geometry.Offset
import kotlin.math.roundToInt
import kotlinx.coroutines.withTimeoutOrNull

internal val NaturalTextWidth = SemanticsPropertyKey<Float>("NaturalTextWidth")
private val LocalPresentationInteractionEnabled = androidx.compose.runtime.staticCompositionLocalOf { true }
internal val TemperatureVisible = SemanticsPropertyKey<Boolean>("TemperatureVisible")
internal val PressActive = SemanticsPropertyKey<Boolean>("PressActive")
internal val PressScale = SemanticsPropertyKey<Float>("PressScale")
internal val PressBackground = SemanticsPropertyKey<Long>("PressBackground")
internal val PressFeedback = SemanticsPropertyKey<String>("PressFeedback")



/** Stateless panel. Page and overlay geometry follow the host viewport. */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ContentPanel(
    state: ContentUiState, onEvent: (ContentEvent) -> Unit, modifier: Modifier = Modifier,
    artwork: @Composable (() -> Unit)? = null,
    ambientBackground: @Composable (() -> Unit)? = null,
    clockText: @Composable () -> ClockText = {
        ClockText(if (state.showSeconds) state.time else state.time.take(5), if (state.showWeekday) state.weekday else "")
    },
    lyricsState: @Composable () -> LyricsState = { state.lyrics },
    cruiseSignalsAvailable: Boolean = false,
    cruiseSignals: @Composable () -> CruiseSignalState = { CruiseSignalState() },
    presentation: ContentPresentation? = null,
    appleMusicLogin: @Composable ((ContentEvent) -> Unit) -> Unit = {},
    canDispatch: (ContentEvent) -> Boolean = { true },
) {
    val windowActive = rememberContentWindowActive()
    val view = LocalView.current
    val clickSound = LocalContentClickSound.current
    val dockOverlay = remember { DockLevelOverlayState() }
    var settingsRetained by remember { androidx.compose.runtime.mutableStateOf(false) }
    val settingsActive = state.settingsOpen || settingsRetained
    val effectivePage = if (!state.layoutPreferencesLoaded && state.page == PanelPage.Shortcuts) PanelPage.Shortcuts else PanelPage.Lyrics
    val modalSurface = state.controlCenterOpen || state.controlCardListOpen || state.dockEditing
    val contentInteractive = !state.sourcesOpen && !state.scenariosOpen && !settingsActive && !modalSurface
    // Input stays modal; the settings layer does not suspend the underlying lyric presentation.
    val lyricAutoFollowEnabled = !state.sourcesOpen && !state.scenariosOpen &&
        !state.lyricsProviderSettings.appleLoginOpen
    SideEffect {
        presentation?.updateModalActive(!contentInteractive)
    }
    var retainedMessage by remember { androidx.compose.runtime.mutableStateOf(state.message.orEmpty()) }
    androidx.compose.runtime.SideEffect { state.message?.let { retainedMessage = it } }
    val latestEvent by rememberUpdatedState(onEvent)
    val latestCanDispatch by rememberUpdatedState(canDispatch)
    val latestPanelState = rememberUpdatedState(state)
    val latestLyricsState = rememberUpdatedState(lyricsState)
    var geometryReady by remember { mutableStateOf(true) }
    var blankTapRevision by remember { mutableLongStateOf(0L) }
    val pageMotion by remember(presentation) { derivedStateOf { presentation?.moving == true } }
    val acceptsQuickControlClick: (ContentEvent) -> Boolean = { event ->
        latestCanDispatch(event) &&
            (!state.controlCenterEditing && !state.controlCardEditing && !state.dockEditing || event.isLayoutEditorInteraction()) &&
            (!pageMotion || event == ContentEvent.ExitLyricsImmersive) &&
            (!settingsActive || event.isSettingsInteraction() || event.isLayoutEditorInteraction()) && latestPanelState.value.acceptsQuickControlEvent(event)
    }
    val dispatchAccepted: (ContentEvent) -> Boolean = dispatch@{ event ->
        if (!acceptsQuickControlClick(event)) return@dispatch false
        // Compose does not call View.performClick(): use the same system sound path
        // as the old Android buttons, respecting the user's sound-effects setting.
        val audible = when (event) {
            is ContentEvent.PageSelected, ContentEvent.DismissSheet, is ContentEvent.GesturePerformed,
            is ContentEvent.ControlLevelChanged, is ContentEvent.BrightnessChanged, is ContentEvent.VolumeChanged,
             is ContentEvent.SystemVolumeChanged,            is ContentEvent.LyricsFontSizeChanged, is ContentEvent.LyricsCurrentFontSizeChanged,
            is ContentEvent.LyricsLineGapChanged, is ContentEvent.LyricsImmersiveFontSizeChanged,
            is ContentEvent.LyricsImmersiveLineGapChanged, is ContentEvent.LyricsImmersiveCurrentFontSizeChanged -> false
             is LayoutAction -> event.input == LayoutInput.Tap
            is ContentEvent.LyricsCustomColorChanged -> !event.fromDrag
            is ContentEvent.LyricsCurrentCustomColorChanged -> !event.fromDrag
            else -> true
        }
        latestEvent(event)
        if (audible) clickSound(view)
        true
    }
    val dispatch: (ContentEvent) -> Unit = { dispatchAccepted(it) }
    val uiOpacity = state.interfaceOpacity
    Surface(modifier.fillMaxSize(), color = MaterialTheme.colorScheme.background) {
            BoxWithConstraints(Modifier.fillMaxSize().testTag("content-gesture-region")
                .observeUnconsumedPageTap(effectivePage == PanelPage.Lyrics && contentInteractive && !pageMotion) {
                blankTapRevision++
                clickSound(view)
            }) {
                val density = LocalDensity.current
                val fullWidth = if (presentation?.geometryReady == true) with(density) { presentation.fullSize.width.toDp() } else maxWidth
                val splitWidth = if (presentation?.geometryReady == true) with(density) { presentation.splitWidthPx.toDp() } else maxWidth
                val lyricMode = effectivePage == PanelPage.Lyrics && presentation?.geometryReady == true
                val wide by remember(presentation, lyricMode) { derivedStateOf { lyricMode && (presentation?.progress ?: 0f) >= .5f } }
                val transitioning by remember(presentation, lyricMode) { derivedStateOf { lyricMode && presentation?.moving == true } }
                val compactOpacity = remember(presentation, lyricMode) { {
                    if (lyricMode) presentationCompactAlpha(presentation?.progress ?: 0f) else 1f
                } }
                val wideOpacity = remember(presentation, lyricMode) { {
                    if (lyricMode) presentationWideAlpha(presentation?.progress ?: 0f) else 1f
                } }
                val lyricOpacity = remember(presentation, lyricMode) { {
                    if (!lyricMode) 1f else if (geometryReady) lyricsTransitionAlpha(presentation?.progress ?: 0f) else 0f
                } }
                val leftWidth = if (lyricMode) splitWidth else maxWidth
                val geometry = remember(leftWidth, density.density) {
                    contentGeometry(leftWidth, density.density)
                }
                val compact = !state.previewMode && geometry.compact
                val edge = if (compact) 8.dp else 20.dp
                val mediaEdge = geometry.dp(CONTENT_REFERENCE_MEDIA_EDGE_PX)
                val mediaDockGap = geometry.dp(CONTENT_REFERENCE_MEDIA_DOCK_GAP_PX)
                val topBarWidth = if (wide && !state.immersiveTopBarKeepSplit) fullWidth else leftWidth
                val topBarHeight = TopBarMetrics.height(compact)
                val dockHeight = geometry.dockSurfaceHeight + geometry.edge
                val mediaHeight = geometry.mediaSurfaceHeight + mediaDockGap
                val feedbackWidth = (maxWidth - 24.dp).coerceAtLeast(0.dp)
                val showTop = !wide || state.immersiveShowTopBar
                val showDock = !wide || state.immersiveShowDock
                val compactMetadataVisible by remember(settingsActive, compactOpacity) {
                    derivedStateOf { !settingsActive && compactOpacity() > 0f }
                }
                val immersiveMetadataVisible by remember(settingsActive, wideOpacity) {
                    derivedStateOf { !settingsActive && wideOpacity() > 0f }
                }
                val dockIconsVisible by remember(state.immersiveShowDock, compactOpacity) {
                    derivedStateOf { state.immersiveShowDock || compactOpacity() > 0f }
                }
                ambientBackground?.invoke()
                CompositionLocalProvider(
                    LocalContentGeometry provides geometry,
                    LocalContentWindowActive provides windowActive,
                    LocalInterfaceOpacity provides uiOpacity,
                     LocalQuickControlInteractionEnabled provides (!state.controlCenterEditing && !state.controlCardEditing && !state.dockEditing &&
                         !settingsActive && !state.sourcesOpen && !pageMotion),
                    LocalQuickControlClickAcceptance provides acceptsQuickControlClick,
                    LocalQuickControlDispatch provides dispatchAccepted,
                     LocalPresentationInteractionEnabled provides !pageMotion) {




                    CompositionLocalProvider(LocalQuickControlInteractionEnabled provides
                        (contentInteractive && !pageMotion)) {
                    Column(Modifier.width(if (lyricMode) splitWidth else maxWidth).fillMaxHeight()
                         .controlBackdropBlur(modalSurface, 18.dp)) {
                        if (showTop) Spacer(Modifier.height(topBarHeight))
                        Box(Modifier.weight(1f).fillMaxWidth().clipToBounds()) {
                            if (wide) {
                                CompositionLocalProvider(LocalIconVisible provides immersiveMetadataVisible) {
                                    ImmersiveMedia(state, dispatch, artwork, lyricsState, compact,
                                        Modifier.fillMaxSize().graphicsLayer { alpha = wideOpacity() })
                                }
                            }
                        }
                        if (!wide) Box(Modifier.fillMaxWidth().height(mediaHeight)
                            .padding(start = mediaEdge, end = mediaEdge, bottom = mediaDockGap).graphicsLayer {
                                alpha = compactOpacity()
                            }) {
                            CompositionLocalProvider(LocalIconVisible provides compactMetadataVisible) {
                                ControlArea(state, dispatch, artwork, state.previewMode || state.media.sourceAvailable, compact)
                            }
                        }
                        if (showDock) Box(Modifier.fillMaxWidth().graphicsLayer {
                            alpha = if (state.immersiveShowDock) 1f else compactOpacity()
                        }) {
                            CompositionLocalProvider(LocalIconVisible provides dockIconsVisible) {
                                PrototypeDock(state, dispatch, compact, dockOverlay, contentInteractive && !transitioning,
                                    backgroundOpacity = compactOpacity)
                            }
                        }
                    }
                    }
                    Layout(content = {
                        if (effectivePage == PanelPage.Shortcuts) {
                            Column(Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(20.dp)) {
                                PrototypeGrid(state, dispatch)
                            }
                        } else {
                            CompositionLocalProvider(
                                LocalIconVisible provides true,
                                LocalContentDrawingVisible provides contentInteractive,
                            ) {
                                LyricsPage(latestPanelState.value, { latestLyricsState.value() },
                                    presentationScale = if (wide) 3.0f else 1f,
                                    externalGestureActive = transitioning,
                                    interactionEnabled = contentInteractive && !transitioning,
                                    autoFollowEnabled = lyricAutoFollowEnabled,
                                    onGeometryReady = { geometryReady = it },
                                    presentationOpacity = lyricOpacity)
                            }
                        }
                    }, modifier = Modifier.fillMaxSize().controlBackdropBlur(modalSurface, 18.dp)
                        .then(if (wide) Modifier.testTag("immersive-lyrics-region") else Modifier)) { measurables, constraints ->
                        val pagesTop = if (wide) 0 else with(density) { topBarHeight.roundToPx() }.coerceAtMost(constraints.maxHeight)
                        val targetWidth = if (wide) with(density) { (fullWidth - leftWidth).roundToPx() }
                            else if (lyricMode) with(density) { splitWidth.roundToPx() } else constraints.maxWidth
                        val targetHeight = if (wide) constraints.maxHeight else
                            (constraints.maxHeight - pagesTop - with(density) { (mediaHeight + dockHeight).roundToPx() }).coerceAtLeast(0)
                        val child = measurables.single().measure(androidx.compose.ui.unit.Constraints.fixed(targetWidth.coerceAtLeast(1), targetHeight))
                        layout(constraints.maxWidth, constraints.maxHeight) {
                            child.place(if (wide) with(density) { leftWidth.roundToPx() } else 0, pagesTop)
                        }
                    }
                                   if (showTop) Box(Modifier.width(topBarWidth).graphicsLayer {
                      alpha = if (state.immersiveShowTopBar) 1f else compactOpacity()
                  }.zIndex(8f)) {
                      PrototypeTopBar(state, clockText, compactLayout = compact)
                  }
                  if (effectivePage == PanelPage.Lyrics && !modalSurface) {
                    // The action lease belongs to the lyrics page. Keep its host at
                    // the compact page width even after the lyrics surface expands;
                    // the full-screen transition must not move the only page button.
                    key(effectivePage) {
                        val overlayActions = if (wide) listOf(PageActionDescriptor("exit", "退出全屏", R.drawable.content_ic_fullscreen_exit))
                            else listOf(PageActionDescriptor("enter", "全屏歌词", R.drawable.content_ic_fullscreen, enabled = presentation?.geometryReady == true))
                        Box(Modifier.width(leftWidth).fillMaxHeight().align(Alignment.TopStart).zIndex(5f)) {
                            PageActionsOverlay(overlayActions, pageKey = "lyrics:$wide", blankTapRevision = blankTapRevision,
                                enabled = contentInteractive && !transitioning && presentation?.pagerMotion != true,
                                modalActive = settingsActive || state.sourcesOpen,
                                compact = compact, modifier = Modifier.align(Alignment.TopEnd)
                                    .padding(top = topBarHeight + 12.dp, end = 12.dp)
                                    .graphicsLayer { alpha = if (wide) wideOpacity() else compactOpacity() }) { id ->
                                dispatch(if (id == "enter") ContentEvent.EnterLyricsImmersive else ContentEvent.ExitLyricsImmersive)
                            }
                        }
                    }
                }
                 DockLevelOverlayHost(dockOverlay) { control, level, modifier ->
                    VehicleControlOemIcon(control, state.controls.getValue(control).copy(target = level), state.dark, modifier)
                }
                AnimatedVisibility(
                    visible = state.sourcesOpen,
                    enter = fadeIn(tween(240)) + slideInVertically(tween(240, easing = CubicBezierEasing(.32f, .72f, 0f, 1f))) { 24 },
                    exit = fadeOut(tween(200)) + slideOutVertically(tween(200)) { 24 },
                ) { PrototypeSources(state, dispatch, anchorWidth = leftWidth.takeIf { wide }) }
                if (state.scenariosOpen) PreviewScenarioSheet(state, dispatch)
                // A collapsed sheet owns the next tap on exposed content, including semantic activation.
                // Keep this above underlying controls and below the sheet; no media/vehicle intent can leak through.
                if (state.canCollapseSettings && state.settingsCollapsed &&
                    !state.lyricsProviderSettings.appleLoginOpen) {
                    Box(Modifier.fillMaxSize().zIndex(6f).testTag("settings-restore-content")
                        .observeUnconsumedPageTap(!pageMotion) { dispatch(ContentEvent.SettingsRestored) }
                        .semantics {
                            contentDescription = "恢复设置页"
                            role = Role.Button
                            if (pageMotion) disabled() else onClick("恢复设置页") {
                                dispatch(ContentEvent.SettingsRestored)
                                true
                            }
                        })
                }
                // Settings always belong to the original left content region, including full-screen lyrics.
                ProvideContentSliderTickSound {
                    SettingsSheet(state, dispatch,
                        Modifier.align(Alignment.TopStart).width(splitWidth).fillMaxHeight()
                            .padding(
                                top = if (showTop) topBarHeight else 12.dp,
                                bottom = if (showDock) dockHeight else geometry.edge,
                            ).zIndex(7f),
                        contentPadding = PaddingValues(
                            start = geometry.edge,
                            end = geometry.edge,
                            bottom = if (showDock) mediaDockGap else 0.dp,
                        ),
                        onVisibilityChanged = { settingsRetained = it })
                }
                if (state.lyricsProviderSettings.appleLoginOpen) {
                    CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(state.dark, state.interfaceOpacity)) { appleMusicLogin(dispatch) }
                }
                // Keep the moving feedback surface inside the same fixed content bounds.
                Box(Modifier.fillMaxSize().padding(top = if (showTop) topBarHeight else 12.dp, bottom = dockHeight).clipToBounds().zIndex(10f)) {
                    AnimatedVisibility(
                        visible = state.message != null && state.showActionFeedback,
                        modifier = Modifier.align(Alignment.BottomCenter).padding(bottom = 12.dp),
                        enter = fadeIn(tween(220)) + slideInVertically(tween(220, easing = CubicBezierEasing(.32f, .72f, 0f, 1f))) { it / 2 },
                        exit = fadeOut(tween(200)) + slideOutVertically(tween(200, easing = CubicBezierEasing(.32f, .72f, 0f, 1f))) { it / 2 },
                    ) {
                        Surface(
                            Modifier.testTag("status-feedback").widthIn(max = feedbackWidth),
                            shape = RoundedCornerShape(14.dp), color = interfaceSurfaceColor(LocalContentColors.current.sheetBase),
                            tonalElevation = 4.dp,
                        ) {
                            Text(state.message ?: retainedMessage,
                                modifier = Modifier.padding(horizontal = 18.dp, vertical = 12.dp).semantics { liveRegion = LiveRegionMode.Polite },
                                style = MaterialTheme.typography.bodyLarge, color = MaterialTheme.colorScheme.onSurface,
                                maxLines = 2, overflow = TextOverflow.Ellipsis)
                        }
                    }
                }
                // This follows the Compose host's actual viewport, supplied by the divider
                // owner. It never assumes 640px or modifies either map Surface.
                Box(Modifier.align(Alignment.CenterEnd).fillMaxHeight().width(1.dp)
                    .background(MaterialTheme.colorScheme.outline.copy(alpha = .5f)).testTag("content-divider"))
                }
            }
        }
}

@Composable
private fun PrototypeTopBar(
    state: ContentUiState,
    clockText: @Composable () -> ClockText,
    compactLayout: Boolean? = null,
) {
    val clock = clockText()
    BoxWithConstraints(Modifier.fillMaxWidth()) {
        val density = LocalDensity.current
        val measurer = rememberTextMeasurer()
        val compact = compactLayout ?: (!state.previewMode && maxWidth < 600.dp)
        val style = MaterialTheme.typography.titleLarge.copy(fontSize = TopBarMetrics.textSize(maxWidth < 360.dp))
        val gap = if (compact) 4.dp else 8.dp
        val batterySize = if (!state.showBattery) 0.dp else TopBarMetrics.batterySize(compact)
        val availablePx = with(density) { (maxWidth - 24.dp - batterySize).toPx() }
        val gapPx = with(density) { gap.toPx() }
        fun width(text: String) = measurer.measure(AnnotatedString(text), style, softWrap = false, maxLines = 1).size.width.toFloat()
        val temperature = state.temperature.replace("°C", "°").replace("°", "°C")
        val range = if (state.showRange) state.range + state.rangeUnit else ""
        fun timeWithWeekday(time: String, weekday: String) = time + if (weekday.isEmpty()) "" else " " + weekday
        val weekday = clock.weekday.ifEmpty { state.weekday.takeIf { state.showWeekday }.orEmpty() }
        val fullTime = timeWithWeekday(clock.time, weekday)
        val minuteTime = timeWithWeekday(clock.time.take(5), weekday)
        val shortWeekdayTime = timeWithWeekday(clock.time.take(5), weekday.replace("星期", "周"))
        val temperatureGap = gap + 4.dp
        // The mapper already filters the four independent preferences. The legacy master
        // flag is migration/compatibility data, not a second gate over the projected facts.
        val fullStatus = state.chargeStatus?.takeIf { it.isNotBlank() }
        val statusParts = fullStatus?.split("·").orEmpty()
        val powerStatus = statusParts.firstOrNull { it.contains("充电功率") || it.contains("kW") }
        val minutesStatus = statusParts.firstOrNull { it.contains("剩余") || it.contains("分钟") }
        val compactDetail = listOf(minutesStatus, powerStatus).filterNotNull().joinToString("·").takeIf { it.isNotEmpty() }
        val statuses = if (fullStatus == null) listOf("") else listOf(
            fullStatus,
            fullStatus.replace(" ", ""),
            compactDetail,
            powerStatus,
            when {
                fullStatus.contains("待确认") -> "待确认"
                fullStatus.contains("预约") -> "预约中"
                fullStatus.contains("已插枪") -> "已插枪"
                state.showPluggedStatus && (state.charging || fullStatus.contains("kW") || fullStatus.contains("充电中")) -> "充电中"
                else -> fullStatus
            },
        ).filterNotNull().distinct()
        fun required(time: String, status: String, showTemperature: Boolean): Float {
            val texts = listOf(time, status, range, if (showTemperature) temperature else "").filter { it.isNotEmpty() }
            return texts.sumOf { width(it).toDouble() }.toFloat() + gapPx * (texts.size + 1) + if (fullStatus != null && showTemperature) with(density) { 4.dp.toPx() } else 0f
        }
        // Optional temperature yields first, then seconds; weekday and primary values survive.
        val times = listOf(fullTime, minuteTime, shortWeekdayTime).distinct()
        val choices = listOf(Triple(fullTime, statuses.first(), state.showIndoorTemperature)) +
            times.map { Triple(it, statuses.first(), false) } +
            statuses.drop(1).flatMap { status -> times.map { Triple(it, status, false) } } +
            statuses.asReversed().map { Triple(shortWeekdayTime, it, false) }
        val choice = choices.firstOrNull { required(it.first, it.second, it.third) <= availablePx }
            ?: Triple(shortWeekdayTime, statuses.last(), false)
        val time = choice.first
        val status = choice.second
        val showTemperature = choice.third
        val showRange = state.showRange
        val battery = when {
            state.charging -> R.drawable.content_oem_ico_battery_charging
            state.previewMode -> R.drawable.content_oem_ico_battery_4
            state.batteryPercent == null -> R.drawable.content_oem_ico_battery_0
            else -> listOf(R.drawable.content_oem_ico_battery_0, R.drawable.content_oem_ico_battery_1,
                R.drawable.content_oem_ico_battery_2, R.drawable.content_oem_ico_battery_3,
                R.drawable.content_oem_ico_battery_4, R.drawable.content_oem_ico_battery_5)[(state.batteryPercent / 20).coerceIn(0, 5)]
        }
        Row(Modifier.fillMaxWidth().height(TopBarMetrics.height(compact)).padding(horizontal = 12.dp)
            .testTag("top-bar").semantics { this[TemperatureVisible] = showTemperature },
            verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(gap)) {
            TopBarText(time, "top-time", style, width(time), description = fullTime)
            if (fullStatus != null && showTemperature) Row(Modifier.padding(start = temperatureGap - gap)) {
                TopBarText(temperature, "top-temperature", style, width(temperature))
            }
            Spacer(Modifier.weight(1f))
            if (fullStatus == null && showTemperature) TopBarText(temperature, "top-temperature", style, width(temperature))
            if (fullStatus != null) TopBarText(status, "charge-status", style, width(status), description = fullStatus)
            if (showRange) TopBarText(range, "top-range", style, width(range))
            val base = MaterialTheme.colorScheme.primary
            val green = Color(0xFF76E65B)
            val colors = when {
                state.charging -> mapOf(0 to base, 1 to base, 2 to green)
                battery == R.drawable.content_oem_ico_battery_0 -> mapOf(0 to base)
                else -> mapOf(0 to green, 1 to base)
            }
            if (state.showBattery) {
                OemIcon(battery, Modifier.size(batterySize).testTag("top-battery"), state.batteryDescription,
                    tint = Color.Unspecified, pathColors = colors)
            }
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
        val buttons = state.shortcutButtons
        val labelMeasurer = rememberTextMeasurer()
        val tileWidth = if (columns == 4) columnWidth else (maxWidth - gap) / 2
        val labelWidth = with(density) { (tileWidth - 4.dp).roundToPx().coerceAtLeast(1) }
        val labelStyle = quickControlLabelStyle()
        val labelHeight = remember(buttons, labelWidth, labelStyle, labelMeasurer) {
            buttons.maxOfOrNull { id ->
                labelMeasurer.measure(AnnotatedString(id.label), labelStyle, maxLines = 2,
                    constraints = androidx.compose.ui.unit.Constraints(maxWidth = labelWidth)).size.height
            } ?: 0
        }
        val tileHeight = maxOf(if (narrow) 112.dp else 135.dp, with(density) { labelHeight.toDp() } + 68.dp)
        val verticalHeight = maxOf(290.dp, tileHeight * 2 + gap)
        Column(verticalArrangement = Arrangement.spacedBy(gap)) {
            buttons.chunked(columns).forEach { row ->
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(gap)) {
                    row.forEach { id -> key(id) { Box(Modifier.weight(1f)) { ShortcutTile(id, state, onEvent, tileHeight) } } }
                    repeat(columns - row.size) { Spacer(Modifier.weight(1f)) }
                }
            }
            val verticals = ShortcutGrid.verticals.map { QuickVerticalCell.Shortcut(it) } +
                state.systemControls
                    .map { QuickVerticalCell.System(it) }
            if (columns == 4) {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(gap)) {
                    Column(Modifier.width(columnWidth), verticalArrangement = Arrangement.spacedBy(gap)) {
                        ShortcutGrid.lowerToggles.forEach { id -> key(id) { ShortcutTile(id, state, onEvent, (verticalHeight - gap) / 2) } }
                    }
                    verticals.take(3).forEach { cell ->
                        key(cell) { Box(Modifier.width(columnWidth)) { QuickVerticalCellContent(cell, state, onEvent, verticalHeight) } }
                    }
                    repeat((3 - verticals.size).coerceAtLeast(0)) { Spacer(Modifier.width(columnWidth)) }
                }
                verticals.drop(3).chunked(4).forEach { row ->
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(gap)) {
                        row.forEach { cell -> key(cell) { Box(Modifier.width(columnWidth)) { QuickVerticalCellContent(cell, state, onEvent, verticalHeight) } } }
                        repeat(4 - row.size) { Spacer(Modifier.width(columnWidth)) }
                    }
                }
            } else {
                ShortcutGrid.lowerToggles.chunked(2).forEach { row ->
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(gap)) {
                        row.forEach { id -> key(id) { Box(Modifier.weight(1f)) { ShortcutTile(id, state, onEvent, tileHeight) } } }
                        repeat(2 - row.size) { Spacer(Modifier.weight(1f)) }
                    }
                }
                verticals.chunked(2).forEach { row ->
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(gap)) {
                        row.forEach { cell -> key(cell) { Box(Modifier.weight(1f)) { QuickVerticalCellContent(cell, state, onEvent, verticalHeight) } } }
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
    val level = when (id) {
        SystemQuickControl.Brightness -> state.brightness
        SystemQuickControl.Volume -> state.volume
        else -> state.systemLevels.getValue(id)
    }
    val icon = when {
        brightness && level.displayed < .25f -> R.drawable.content_oem_ico_brightness_lo
        brightness && level.displayed > .75f -> R.drawable.content_oem_ico_brightness_hi
        brightness -> R.drawable.content_oem_ico_brightness_mid
        level.displayed < .15f -> R.drawable.content_oem_ico_volume_0
        level.displayed < .4f -> R.drawable.content_oem_ico_volume_1
        level.displayed > .8f -> R.drawable.content_oem_ico_volume_3
        else -> R.drawable.content_oem_ico_volume_2
    }
    ContinuousVerticalControl(id.label, icon, level, "${id.name.lowercase()}-card", height = height) {
        onEvent(when (id) {
            SystemQuickControl.Brightness -> ContentEvent.BrightnessChanged(it)
            SystemQuickControl.Volume -> ContentEvent.VolumeChanged(it)
            else -> ContentEvent.SystemVolumeChanged(id, it)
        })
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
    val dispatchClick = LocalQuickControlDispatch.current
    val acceptClick = LocalQuickControlClickAcceptance.current
    val powerEvent = ContentEvent.ControlPowerTapped(control)
    val effectiveEnabled = enabled && acceptClick(powerEvent)
    var action by remember { mutableIntStateOf(0) }
    CompositionLocalProvider(LocalIconAction provides action) {
        SteppedVerticalControl(id.label, control.maxManualLevel, manualLevel, "control-${id.name}", height = height,
            enabled = effectiveEnabled, status = status,
            onPower = { if (effectiveEnabled && dispatchClick(powerEvent)) action++ },
            onCommit = { if (effectiveEnabled && dispatchClick(ContentEvent.ControlLevelChanged(control, it))) action++ }) { level, modifier ->
            val iconState = if (level != null && (current.known || current.pending)) current.copy(target = level) else current
            VehicleControlOemIcon(control, iconState, state.dark, modifier.testTag("shortcut-icon-${id.name}"),
                acceptedActionOnly = true)
        }
    }
}

private fun shortcutStatus(id: ShortcutId, state: ContentUiState): String {
    id.feature?.let { feature ->
        val value = state.features[feature] ?: FeatureState()
        if (feature == com.icar03.content.model.VehicleFeature.GloveBox) {
            return if (value.available) "执行" else "能力不可用"
        }
        return when {
            value.pending -> "待确认"
            feature.action -> if (value.available) "执行" else "能力不可用"
            !value.known -> "状态未知"
            feature == com.icar03.content.model.VehicleFeature.ExternalDischarge && value.detail == "状态已读取" -> "状态已读取"
            value.actual == 1 -> "开启"
            else -> "关闭"
        }
    }
    if (id == ShortcutId.ScreenClean) return if (state.screenCleanAvailable) "可用" else "能力不可用"
    if (id == ShortcutId.ControlCenter) return if (state.controlCenterAvailable) "打开" else "能力不可用"
    val control = id.control?.let { state.controls.getValue(it) }
    if (id == ShortcutId.RearWiper || id == ShortcutId.RearWash) {
        val value = control ?: return "状态未知"
        return when {
            value.pending -> "待确认"
            !value.known -> "状态未知"
            id == ShortcutId.RearWash && value.actual == 1 -> "喷洗中"
            value.actual == 1 -> "开启"
            else -> "关闭"
        }
    }
    if (control == null) return id.label
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
    ShortcutId.Wiper -> vehicleControlIconRecipe(ControlId.Wiper, state.controls.getValue(ControlId.Wiper).manualWiperDisplayed, state.dark).resource
    ShortcutId.AutoWiper -> vehicleControlIconRecipe(ControlId.Wiper, ControlId.Wiper.automaticLevel, state.dark).resource
    ShortcutId.RearWiper -> state.controls.getValue(ControlId.RearWiper).let { rearWiperIconRecipe(it.displayed == 1, state.dark).resource }
    ShortcutId.RearWash -> state.controls.getValue(ControlId.RearWash).let { rearWashIconRecipe(it.displayed == 1, state.dark).resource }
    ShortcutId.Settings -> R.drawable.content_oem_ic_settings
     ShortcutId.ScreenClean -> R.drawable.content_oem_ico_screen_clean
     ShortcutId.ControlCenter -> R.drawable.content_oem_ico_home_applist
    else -> id.feature?.let { vehicleFeatureIconRecipe(it, state.features[it]?.displayed ?: 0, state.dark).resource }
         ?: seatIcon(requireNotNull(id.control), state)
}

/** Same Launcher skin family as the manual/AUTO Lottie, including the A badge. */
internal fun steeringHeatIcon(level: Int, dark: Boolean = false): Int =
    vehicleControlIconRecipe(ControlId.SteeringHeat, level, dark).resource

@Composable
private fun shortcutTint(id: ShortcutId, state: ContentUiState): Color {
    val base = contentIconNeutral(state.dark)
    return when {
        id == ShortcutId.Lock -> {
            val value = state.controls.getValue(ControlId.Lock)
            if ((value.known || value.pending) && value.displayed == 1) ContentFunctionalBlue else base
        }
        id.feature != null && shortcutSelected(id, state) -> ContentFunctionalBlue
        id == ShortcutId.ScreenClean -> base
        id == ShortcutId.SteeringHeat -> Color.Unspecified
        id.control != null && id.control != ControlId.Lock -> Color.Unspecified
        else -> base
    }
}

@Composable
private fun sourceTint(): Color = MaterialTheme.colorScheme.primary

private fun shortcutSelected(id: ShortcutId, state: ContentUiState): Boolean {
    id.feature?.let { feature ->
        if (feature.action) return false
        val value = state.features[feature] ?: return false
        return value.pending && value.target == 1 || !value.pending && value.known && value.actual == 1
    }
    if (id == ShortcutId.ScreenClean) return false
    val control = id.control?.let { state.controls.getValue(it) } ?: return false
    if (id == ShortcutId.AutoWiper) return (control.known || control.pending) && ControlId.Wiper.isAutomatic(control.displayed)
    if (id == ShortcutId.Wiper) return (control.known || control.pending) && ControlId.Wiper.isManualLevel(control.manualWiperDisplayed)
    return (control.known || control.pending) && if (id == ShortcutId.Lock) control.displayed == 0 else control.displayed > 0
}

private fun shortcutEvent(id: ShortcutId, state: ContentUiState): ContentEvent? = when (id) {
    ShortcutId.Wiper -> ContentEvent.ControlPowerTapped(ControlId.Wiper)
    ShortcutId.AutoWiper -> ContentEvent.ControlAutomaticTapped(ControlId.Wiper)
    ShortcutId.RearWiper -> ContentEvent.ControlTapped(ControlId.RearWiper)
    ShortcutId.RearWash -> ContentEvent.RearWashTapped
    ShortcutId.Settings -> ContentEvent.SettingsTapped
    ShortcutId.ScreenClean -> ContentEvent.ScreenCleanTapped
    ShortcutId.ControlCenter -> ContentEvent.ControlCenterTapped
    else -> if (id.feature != null) ContentEvent.FeatureTapped(id) else id.control?.let { ContentEvent.ControlTapped(it) }
}

/** Read current presentation facts at the release/semantic boundary, not only on composition. */
private fun ContentUiState.acceptsQuickControlEvent(event: ContentEvent): Boolean {
    fun accepts(id: ControlId) = controls[id]?.let { it.available && it.known && !it.pending && id.isLevel(it.actual) } == true
    return when (event) {
        is ContentEvent.ControlTapped -> accepts(event.id)
        is ContentEvent.ControlPowerTapped -> accepts(event.id)
        is ContentEvent.ControlAutomaticTapped -> accepts(event.id)
        is ContentEvent.ControlLevelChanged -> accepts(event.id)
        ContentEvent.RearWashTapped -> accepts(ControlId.RearWash)
        is ContentEvent.FeatureTapped -> event.id.feature?.let { feature ->
            features[feature]?.let { it.available && !it.pending && (it.known || feature.action) }
        } == true
        ContentEvent.SettingsCollapseTapped -> canCollapseSettings && !lyricsProviderSettings.appleLoginOpen
        ContentEvent.SettingsRestored -> canCollapseSettings && settingsCollapsed
        ContentEvent.ControlCenterTapped -> !sourcesOpen && controlCenterAvailable
        is ContentEvent.BrightnessChanged -> event.value.isFinite() && brightness.available && brightness.target == null
        is ContentEvent.VolumeChanged -> event.value.isFinite() && volume.available && volume.target == null
        is ContentEvent.SystemVolumeChanged -> event.value.isFinite() && systemLevels[event.id]?.let { it.available && it.target == null } == true
        is LayoutAction -> true
        ContentEvent.ScreenCleanTapped -> screenCleanAvailable
        else -> true
    }
}

private fun dockEvent(id: ShortcutId, state: ContentUiState): ContentEvent? = shortcutEvent(id, state)

internal fun shortcutRippleEnabled(id: ShortcutId, state: ContentUiState): Boolean {
    if (id == ShortcutId.ControlCenter) return false
    id.feature?.let { feature ->
        val value = state.features[feature] ?: return false
        return value.available && !value.pending && (feature.action || value.known)
    }
    if (id == ShortcutId.ScreenClean) return state.screenCleanAvailable
    val idControl = id.control ?: return true
    val control = state.controls.getValue(idControl)
    if (!control.available || !control.known || control.pending || !idControl.isLevel(control.actual)) return false
    return idControl.crossesPowerBoundary(control.actual)
}

@Composable
private fun ShortcutTile(id: ShortcutId, state: ContentUiState, onEvent: (ContentEvent) -> Unit,
    height: androidx.compose.ui.unit.Dp, tileModifier: Modifier = Modifier) {
    val control = id.control?.let { state.controls.getValue(it) }
    val enabled = when {
        id.feature != null -> state.features[id.feature]?.available == true
        id == ShortcutId.ControlCenter -> state.controlCenterAvailable
        id == ShortcutId.ScreenClean -> state.screenCleanAvailable
        control == null -> true
        else -> control.available && control.known && !control.pending && id.control!!.isLevel(control.actual)
    }
    val tag = shortcutTag(id)
    val acceptClick = LocalQuickControlClickAcceptance.current
    val dispatchClick = LocalQuickControlDispatch.current
    val event = shortcutEvent(id, state)
    val accepted = event != null && acceptClick(event)
    val effectiveEnabled = enabled && accepted
    val icon: @Composable (Modifier) -> Unit = { modifier ->
        ShortcutOemIcon(id, state, shortcutIcon(id, state), modifier.testTag("shortcut-icon-${id.name}"))
    }
    val onClick: () -> Boolean = {
        event?.let { effectiveEnabled && dispatchClick(it) } ?: false
    }
    if (id.type == QuickControlType.OrdinaryToggle) {
        OrdinaryToggle(id.label, shortcutStatus(id, state), shortcutSelected(id, state), effectiveEnabled,
             shortcutRippleEnabled(id, state), tag,
            Modifier.height(height).then(tileModifier), onClick = onClick, icon = icon)
    } else {
        DynamicIconSwitch(id.label, shortcutStatus(id, state), shortcutSelected(id, state), effectiveEnabled,
            shortcutRippleEnabled(id, state), tag, Modifier.height(height).then(tileModifier),
            onClick = onClick, icon = icon)
    }
}

@Composable
internal fun CatalogControlTile(
    id: String,
    state: ContentUiState,
    onEvent: (ContentEvent) -> Unit,
    modifier: Modifier = Modifier,
    editing: Boolean = false,
) {
    val definition = com.icar03.content.model.ControlCatalog.find(id) ?: return
    val inheritedAcceptance = LocalQuickControlClickAcceptance.current
    val inheritedDispatch = LocalQuickControlDispatch.current
    val inheritedInteraction = LocalQuickControlInteractionEnabled.current
    val declaredEnabled = when (definition.section) {
        com.icar03.content.model.ControlSection.Control -> id in state.enabledControlIds
        com.icar03.content.model.ControlSection.Feature -> id in state.enabledFeatureIds
        com.icar03.content.model.ControlSection.System -> id in state.enabledSystemIds
        com.icar03.content.model.ControlSection.Content -> id in state.enabledContentIds
    }
    val renderedEnabled = inheritedInteraction && declaredEnabled && !editing
    CompositionLocalProvider(
        LocalQuickControlInteractionEnabled provides renderedEnabled,
        LocalQuickControlClickAcceptance provides { renderedEnabled && inheritedAcceptance(it) },
        LocalQuickControlDispatch provides { renderedEnabled && inheritedDispatch(it) },
    ) {
        BoxWithConstraints(modifier) {
            val tileHeight = maxHeight
            val tileWidth = maxWidth
            val system = when (id) {
                "brightness" -> SystemQuickControl.Brightness
                "volume" -> SystemQuickControl.Volume
                "call_volume" -> SystemQuickControl.CallVolume
                "navigation_volume" -> SystemQuickControl.NavigationVolume
                "voice_volume" -> SystemQuickControl.VoiceVolume
                else -> null
            }
            val shortcut = when (id) {
                "auto_wiper" -> ShortcutId.AutoWiper
                 "screen_clean" -> ShortcutId.ScreenClean
                com.icar03.content.model.ControlCatalog.SYSTEM_CONTROL_CENTER -> ShortcutId.ControlCenter
                else -> ShortcutId.entries.firstOrNull {
                    it != ShortcutId.AutoWiper && (it.control?.id == id || it.feature?.id == id)
                }
            }
            when {
                !definition.implemented -> Surface(
                    Modifier.fillMaxSize().testTag("control-unavailable-$id").semantics {
                        contentDescription = definition.label
                        stateDescription = "未配置 · 不可用"
                        disabled()
                    },
                    color = MaterialTheme.colorScheme.surfaceVariant,
                    shape = RoundedCornerShape(16.dp),
                ) {
                    Column(Modifier.fillMaxSize().padding(12.dp), verticalArrangement = Arrangement.SpaceBetween) {
                        Text(definition.label, style = MaterialTheme.typography.titleSmall)
                        Text(if (id == "climate") "当前未配置空调控制" else "控制协议未接入",
                            style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                    }
                }
                system != null -> SystemVertical(system, state, onEvent, tileHeight)
                shortcut == ShortcutId.Wiper -> ShortcutVertical(shortcut, state, onEvent, tileHeight)
                shortcut != null -> ShortcutTile(shortcut, state, onEvent, tileHeight, Modifier.fillMaxSize())
                id == "media" -> {
                    val media = state.media
                    val dispatch = LocalQuickControlDispatch.current
                    val mediaInteractive = renderedEnabled && media.available && !media.pending
                    Surface(
                        Modifier.fillMaxSize().testTag("control-media-tile"),
                        shape = RoundedCornerShape(16.dp),
                        color = interfaceSurfaceColor(LocalContentColors.current.mediaBase),
                    ) {
                        Column(
                            Modifier.fillMaxSize().padding(horizontal = 2.dp, vertical = 8.dp),
                            verticalArrangement = Arrangement.SpaceBetween,
                        ) {
                            Text(
                                media.title?.takeIf { it.isNotBlank() } ?: "暂无媒体",
                                Modifier.fillMaxWidth().padding(horizontal = 6.dp).testTag("control-media-title"),
                                style = MaterialTheme.typography.titleSmall,
                                fontWeight = FontWeight.Medium,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                            )
                            Row(Modifier.fillMaxWidth().height(48.dp)) {
                                RoundedPressButton(
                                    Modifier.weight(1f).fillMaxHeight(), "control-media-play",
                                    if (media.targetPlaying ?: media.playing) "暂停" else "播放",
                                    enabled = mediaInteractive && media.playbackAvailable,
                                    compact = true,
                                    pressAreaSize = ((tileWidth - 4.dp) / 2).coerceIn(0.dp, 44.dp),
                                    feedbackCornerRadius = 12.dp,
                                    onClick = { dispatch(ContentEvent.PlayPause) },
                                ) {
                                    OemIcon(
                                        if (media.targetPlaying ?: media.playing) R.drawable.content_oem_ico_media_pause_f
                                        else R.drawable.content_oem_ico_media_play_f,
                                        Modifier.testTag("control-media-play-icon"),
                                        glyphHeight = 24.dp,
                                        animateOnAction = false,
                                    )
                                }
                                RoundedPressButton(
                                    Modifier.weight(1f).fillMaxHeight(), "control-media-next", "下一首",
                                    enabled = mediaInteractive && media.nextAvailable,
                                    compact = true,
                                    pressAreaSize = ((tileWidth - 4.dp) / 2).coerceIn(0.dp, 44.dp),
                                    feedbackCornerRadius = 12.dp,
                                    onClick = { dispatch(ContentEvent.NextTrack) },
                                ) {
                                    OemIcon(R.drawable.content_oem_ico_media_next_f,
                                        Modifier.testTag("control-media-next-icon"), glyphHeight = 22.dp)
                                }
                            }
                        }
                    }
                }
                else -> Surface(Modifier.fillMaxSize(), shape = RoundedCornerShape(16.dp)) {
                    Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) { Text(definition.label) }
                }
            }
        }
    }
}

internal fun shortcutTag(id: ShortcutId): String =
    if (id.control != null && id != ShortcutId.AutoWiper) "control-${id.name}" else "shortcut-${id.name}"

@Composable
private fun ControlArea(
    state: ContentUiState,
    onEvent: (ContentEvent) -> Unit,
    artwork: @Composable (() -> Unit)?,
    sourcesEnabled: Boolean,
    compact: Boolean,
) {
    val ids = remember(state.controlCardIds) { state.controlCardIds }
    val interactive = LocalQuickControlInteractionEnabled.current &&
        !state.settingsOpen && !state.settingsCollapsed && !state.sourcesOpen && !state.scenariosOpen &&
        !state.lyricsProviderSettings.appleLoginOpen && !state.controlCenterOpen &&
        !state.controlCenterEditing && !state.controlCardListOpen && !state.controlCardEditing && !state.dockEditing
    val currentOnEvent by rememberUpdatedState(onEvent)
    if (ids.isEmpty()) {
        Surface(
            Modifier.fillMaxSize().testTag("control-card-empty"),
            shape = RoundedCornerShape(18.dp), color = MaterialTheme.colorScheme.surfaceVariant,
        ) {
            Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                Text("暂无控制组件", color = MaterialTheme.colorScheme.onSurfaceVariant)
            }
        }
        return
    }
    val pager = rememberPagerState(
        initialPage = state.controlCardIndex.coerceIn(0, (ids.size - 1).coerceAtLeast(0)),
        pageCount = { ids.size },
    )
    LaunchedEffect(ids, state.controlCardIndex) {
        val target = state.controlCardIndex.coerceIn(0, (ids.size - 1).coerceAtLeast(0))
        if (pager.currentPage != target) pager.animateScrollToPage(target, animationSpec = tween(260))
    }
    LaunchedEffect(pager, ids, state.controlCardIndex, interactive) {
        snapshotFlow { pager.settledPage }.collect { index ->
            if (interactive && index in ids.indices && index != state.controlCardIndex) {
                currentOnEvent(LayoutAction(ControlCenterEditAction.SelectCard, id = ids[index], from = index))
            }
        }
    }
    Box(Modifier.fillMaxSize()) {
        HorizontalPager(
            state = pager,
            modifier = Modifier.fillMaxSize().testTag("control-card-pager"),
            userScrollEnabled = interactive,
        ) { index ->
            ControlCardContent(ids[index], state, onEvent, artwork, sourcesEnabled, compact)
        }
    }
}

@Composable
internal fun ControlCardContent(
    id: String,
    state: ContentUiState,
    onEvent: (ContentEvent) -> Unit,
    artwork: @Composable (() -> Unit)? = null,
    sourcesEnabled: Boolean = true,
    compact: Boolean = true,
) {
            when (id) {
                "media" -> PrototypeMediaCard(state.media, onEvent, artwork, sourcesEnabled, compact)
                "climate" -> Surface(
                    Modifier.fillMaxSize().testTag("control-card-climate"),
                    shape = RoundedCornerShape(18.dp), color = MaterialTheme.colorScheme.surfaceVariant,
                ) {
                    Column(
                        Modifier.fillMaxSize().padding(horizontal = 18.dp, vertical = 12.dp),
                        verticalArrangement = Arrangement.spacedBy(4.dp, Alignment.CenterVertically),
                    ) {
                        Text("空调", style = MaterialTheme.typography.titleMedium)
                        Text("暂不可用", style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant)
                    }
                }
                else -> CatalogControlTile(id, state, onEvent, Modifier.fillMaxSize(), editing = false)
            }
}

@Composable
private fun PrototypeMediaCard(
    media: MediaState, onEvent: (ContentEvent) -> Unit, artwork: @Composable (() -> Unit)?,
    sourcesEnabled: Boolean, compact: Boolean,
) {
    val interactive by rememberUpdatedState(LocalQuickControlInteractionEnabled.current)
    val dispatch by rememberUpdatedState(LocalQuickControlDispatch.current)
    val geometry = LocalContentGeometry.current
    val cell = geometry.mediaSurfaceHeight
    val fontScale = LocalDensity.current.fontScale
    val colors = LocalContentColors.current
    Surface(
        Modifier.fillMaxSize().testTag("media-card").downwardSoftShadow(
            colors.mediaBase, MaterialTheme.colorScheme.background.luminance() < 0.2f,
            cornerRadius = geometry.mediaCorner, opacity = LocalInterfaceOpacity.current,
        ),
        shape = RoundedCornerShape(geometry.mediaCorner),
        color = interfaceSurfaceColor(colors.mediaBase),
        shadowElevation = 0.dp,
    ) {
        Row(Modifier.fillMaxSize(), verticalAlignment = Alignment.CenterVertically) {
            Surface(
                Modifier.size(cell),
                shape = RoundedCornerShape(topStart = geometry.mediaCorner, bottomStart = geometry.mediaCorner),
                color = interfaceSurfaceColor(colors.mediaArtworkBase),
            ) {
                Box(contentAlignment = Alignment.Center) {
                    if (artwork != null) artwork() else OemIcon(
                        R.drawable.content_oem_ico_media_music,
                        Modifier.size(geometry.dp(48f)), "音乐封面",
                    )
                }
            }
            Column(
                Modifier.weight(1f).fillMaxHeight().padding(horizontal = geometry.dp(16f)),
                verticalArrangement = Arrangement.Center,
            ) {
                MarqueeText(
                    media.title ?: "暂无媒体",
                    Modifier.fillMaxWidth().testTag("media-card-title"),
                    style = MaterialTheme.typography.titleMedium.copy(
                        fontSize = geometry.mediaSp(24f, fontScale), lineHeight = geometry.mediaSp(30f, fontScale), fontWeight = FontWeight.Bold,
                    ),
                )
                Spacer(Modifier.height(geometry.dp(4f)))
                MarqueeText(
                    media.artist ?: "未连接",
                    Modifier.fillMaxWidth().testTag("media-card-artist"),
                    style = MaterialTheme.typography.bodyMedium.copy(
                        fontSize = geometry.mediaSp(20f, fontScale), lineHeight = geometry.mediaSp(26f, fontScale), fontWeight = FontWeight.Medium,
                    ),
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
            }
            RoundedPressButton(
                Modifier.size(cell), "media-play", if (media.playing) "暂停" else "播放",
                media.available && media.playbackAvailable && !media.pending, compact,
                interactionEnabled = interactive,
                pressAreaSize = geometry.mediaFeedbackSize, feedbackCornerRadius = geometry.feedbackCorner,
                onClick = { interactive && dispatch(ContentEvent.PlayPause) },
                onLongClick = {},
            ) {
                OemIcon(
                    if (media.targetPlaying ?: media.playing) R.drawable.content_oem_ico_media_pause_f
                    else R.drawable.content_oem_ico_media_play_f,
                    Modifier.testTag("media-play-icon"), glyphHeight = geometry.mediaPlayGlyphHeight, animateOnAction = false,
                )
            }
            RoundedPressButton(
                Modifier.size(cell), "media-next", "下一首",
                media.available && media.nextAvailable && !media.pending, compact,
                interactionEnabled = interactive,
                pressAreaSize = geometry.mediaFeedbackSize, feedbackCornerRadius = geometry.feedbackCorner,
                onClick = { interactive && dispatch(ContentEvent.NextTrack) },
                onLongClick = {},
            ) {
                OemIcon(R.drawable.content_oem_ico_media_next_f, Modifier.testTag("media-next-icon"), glyphHeight = geometry.mediaActionGlyphHeight)
            }
            RoundedPressButton(
                Modifier.size(cell).drawBehind {
                    val half = geometry.dp(48f).toPx() / 2f
                    val center = size.height / 2f
                    drawLine(colors.mediaDivider, Offset(0f, center - half), Offset(0f, center + half),
                        strokeWidth = geometry.dp(1f).toPx())
                }.semantics {
                    stateDescription = media.targetSource?.let { "切换中：${it.label}" } ?: media.source.label
                }, "source-button", "选择来源", sourcesEnabled, compact,
                interactionEnabled = interactive,
                pressAreaSize = geometry.mediaFeedbackSize, feedbackCornerRadius = geometry.feedbackCorner,
                onClick = { interactive && dispatch(ContentEvent.OpenSources) },
                onLongClick = {},
            ) {
                OemIcon(
                    sourceIcon(media.targetSource ?: media.source),
                    Modifier.testTag("media-source-icon"), tint = sourceTint(), glyphHeight = geometry.mediaActionGlyphHeight,
                )
            }
        }
    }
}

@Composable
private fun ImmersiveMedia(state: ContentUiState, onEvent: (ContentEvent) -> Unit,
    artwork: @Composable (() -> Unit)?, lyricsState: @Composable () -> LyricsState,
    compact: Boolean, modifier: Modifier = Modifier,
) {
    val lyrics = lyricsState()
    val coverScale = animateFloatAsState(if (state.media.playing) 1f else .76f,
        tween(350, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)), label = "immersive-cover")
    BoxWithConstraints(modifier.padding(horizontal = if (compact) 16.dp else 28.dp)) {
        val mediaWidth = (maxWidth * .88f).coerceAtMost(560.dp)
        val coverGap = if (compact) 32.dp else 40.dp
        val buttonSize = if (maxWidth < 360.dp || maxHeight < 500.dp) 52.dp else if (compact) 72.dp else 84.dp
        val geometry = LocalContentGeometry.current
        val media = state.media
        Layout(modifier = Modifier.align(Alignment.Center).fillMaxWidth().testTag("immersive-media-group"), content = {
            Box(Modifier.testTag("immersive-cover-space"), contentAlignment = Alignment.Center) {
                Box(Modifier.fillMaxSize().graphicsLayer { scaleX = coverScale.value; scaleY = coverScale.value }
                    .clip(RoundedCornerShape(18.dp)).testTag("immersive-cover")) {
                    if (artwork != null) artwork() else Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                        OemIcon(R.drawable.content_oem_ico_media_music, Modifier.size(84.dp), "音乐封面", animateOnPress = false, animateOnAction = false)
                    }
                }
            }
            Column(Modifier.fillMaxWidth().testTag("immersive-media-details")) {
                Column(Modifier.fillMaxWidth().testTag("immersive-media-header"),
                    verticalArrangement = Arrangement.spacedBy(4.dp)) {
                    MarqueeText(media.title ?: "暂无媒体", Modifier.fillMaxWidth().testTag("immersive-title"),
                        style = MaterialTheme.typography.headlineMedium.copy(
                            fontSize = if (compact) 26.sp else 30.sp, fontWeight = FontWeight.Bold))
                    MarqueeText(media.artist ?: "未连接", Modifier.fillMaxWidth().testTag("immersive-artist"),
                        style = MaterialTheme.typography.titleLarge.copy(
                            fontSize = if (compact) 22.sp else 24.sp, fontWeight = FontWeight.Medium),
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = .78f))
                }
                Spacer(Modifier.height(if (compact) 12.dp else 16.dp))
                ImmersivePlaybackProgress(lyrics, compact, Modifier.fillMaxWidth())
                Spacer(Modifier.height(if (compact) 16.dp else 20.dp))
                Row(Modifier.align(Alignment.CenterHorizontally).testTag("immersive-media-controls"),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(if (compact) 14.dp else 20.dp)) {
                    RoundedPressButton(Modifier.size(buttonSize), "immersive-play", if (media.playing) "暂停" else "播放",
                        media.available && media.playbackAvailable && !media.pending, compact, pressAreaSize = geometry.mediaFeedbackSize, feedbackCornerRadius = geometry.feedbackCorner,
                        onClick = { onEvent(ContentEvent.PlayPause); true }, onLongClick = {}) {
                        OemIcon(if (media.targetPlaying ?: media.playing) R.drawable.content_oem_ico_media_pause_f else R.drawable.content_oem_ico_media_play_f,
                            Modifier.testTag("immersive-play-icon"), glyphHeight = geometry.mediaPlayGlyphHeight, animateOnAction = false)
                    }
                    RoundedPressButton(Modifier.size(buttonSize), "immersive-next", "下一首",
                        media.available && media.nextAvailable && !media.pending, compact, pressAreaSize = geometry.mediaFeedbackSize, feedbackCornerRadius = geometry.feedbackCorner,
                        onClick = { onEvent(ContentEvent.NextTrack); true }, onLongClick = {}) {
                        OemIcon(R.drawable.content_oem_ico_media_next_f, Modifier.testTag("immersive-next-icon"), glyphHeight = geometry.mediaActionGlyphHeight)
                    }
                        RoundedPressButton(Modifier.size(buttonSize), "immersive-source", "选择来源", media.sourceAvailable, compact, pressAreaSize = geometry.mediaFeedbackSize, feedbackCornerRadius = geometry.feedbackCorner,
                            onClick = { onEvent(ContentEvent.OpenSources); true }, onLongClick = {}) {
                            OemIcon(sourceIcon(media.targetSource ?: media.source), Modifier.testTag("immersive-source-icon"), tint = sourceTint(), glyphHeight = geometry.mediaActionGlyphHeight)
                        }
                }
            }
        }) { measurables, constraints ->
            // Fit one shared square width before measuring either child; playback scale stays in the layer.
            val gap = coverGap.roundToPx()
            val detailsHeight = measurables[1].minIntrinsicHeight(mediaWidth.roundToPx())
            val sharedWidth = minOf(mediaWidth.roundToPx(), (constraints.maxHeight - detailsHeight - gap).coerceAtLeast(0))
            val cover = measurables[0].measure(androidx.compose.ui.unit.Constraints.fixed(sharedWidth, sharedWidth))
            val details = measurables[1].measure(androidx.compose.ui.unit.Constraints.fixedWidth(sharedWidth))
            layout(constraints.maxWidth, cover.height + gap + details.height) {
                val left = (constraints.maxWidth - sharedWidth) / 2
                cover.place(left, 0)
                details.place(left, cover.height + gap)
            }
        }
    }
}

internal fun dockItemsForCount(count: Int): List<ShortcutId> {
    // Historical preview fixture only. The runtime Dock always uses DockShortcuts.items.
    val fixture = listOf(ShortcutId.Lock, ShortcutId.Wiper, ShortcutId.Ventilation,
        ShortcutId.Heating, ShortcutId.Massage, ShortcutId.Settings)
    val normalized = count.coerceIn(3, fixture.size)
    val middle = fixture.drop(1).dropLast(1).take(normalized - 2)
    return listOf(fixture.first()) + middle + listOf(fixture.last())
}

private fun dockShortcutForSemanticId(id: String): ShortcutId? = when (id) {
    "lock" -> ShortcutId.Lock
    "front_wiper" -> ShortcutId.Wiper
    "seat_ventilation" -> ShortcutId.Ventilation
    "seat_heating" -> ShortcutId.Heating
    "seat_massage" -> ShortcutId.Massage
    "settings" -> ShortcutId.Settings
    else -> null
}

@Composable
private fun PrototypeDock(state: ContentUiState, onEvent: (ContentEvent) -> Unit, compact: Boolean,
    overlay: DockLevelOverlayState, interactive: Boolean, backgroundOpacity: () -> Float = { 1f }) {
    val colors = LocalContentColors.current
    val acceptClick = LocalQuickControlClickAcceptance.current
    val dispatchClick = LocalQuickControlDispatch.current
    val previewFixture = state.page == PanelPage.Shortcuts && !state.layoutPreferencesLoaded
    val items = if (previewFixture && !state.dockEditing) dockItemsForCount(state.dockButtonCount) else DockShortcuts.items
    val geometry = LocalContentGeometry.current
    Box(Modifier.fillMaxWidth().height(geometry.dockSurfaceHeight + geometry.edge)
        .padding(start = geometry.edge, end = geometry.edge, bottom = geometry.edge)) {
        Box(Modifier.fillMaxSize().testTag("floating-dock")) {
            Box(Modifier.fillMaxSize().graphicsLayer { alpha = backgroundOpacity() }
                .testTag("dock-background").downwardSoftShadow(colors.dockBase, state.dark, cornerRadius = geometry.dockCorner,
                 opacity = LocalInterfaceOpacity.current)
                .background(interfaceSurfaceColor(colors.dockBase), RoundedCornerShape(geometry.dockCorner)))
            Row(Modifier.fillMaxSize(), verticalAlignment = Alignment.CenterVertically) {
                @Composable fun DockSlot(id: ShortcutId, width: Dp) {
                    val control = id.control?.let { state.controls.getValue(it) }
                    val selected = shortcutSelected(id, state)
                    val glyphStateKnown = control == null || control.known && id.control!!.isLevel(control.actual)
                    val event = dockEvent(id, state)
                    val accepted = event != null && acceptClick(event)
                    val interactionEnabled = (interactive || id == ShortcutId.Settings &&
                        !state.controlCenterOpen && !state.controlCenterEditing &&
                        !state.controlCardListOpen && !state.dockEditing) && accepted
                    val stepped = id.type == QuickControlType.SteppedVertical
                    val rippleEnabled = if (stepped) interactionEnabled else shortcutRippleEnabled(id, state) && interactionEnabled
                    val levelGesture = if (stepped && interactionEnabled) dockLevelGesture(id.control!!, control!!, overlay) {
                        onEvent(ContentEvent.ControlLevelChanged(id.control, it))
                    } else Modifier
                    val slot = Modifier.width(width).fillMaxHeight().then(levelGesture)
                        .semantics { this.selected = selected; stateDescription = shortcutStatus(id, state) }
                    RoundedPressButton(slot, "dock-${id.name}", id.label, glyphStateKnown, compact,
                        interactionEnabled = interactionEnabled,
                        pressAreaSize = if (id == ShortcutId.Lock) geometry.dockLockFeedbackSize else geometry.dockFeedbackSize,
                        feedbackCornerRadius = geometry.feedbackCorner,
                        onClick = { event != null && dispatchClick(event) }, onLongClick = {}, rectangular = false,
                        selected = selected && id != ShortcutId.Lock,
                        selectedColor = colors.selectedSurface,
                        baseColor = Color.Transparent,
                        rippleEnabled = rippleEnabled,
                        rippleColor = if (selected && id != ShortcutId.Lock) colors.dockBase else colors.selectedSurface) {
                        Column(horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.Center) {
                            ShortcutOemIcon(id, state, shortcutIcon(id, state), Modifier.testTag("dock-icon-${id.name}"),
                                glyphHeight = if (id == ShortcutId.Lock) geometry.dockLockGlyphHeight else geometry.dockGlyphHeight)
                        }
                    }
                }
                val slotWidth = (geometry.dockWidth / items.size).coerceAtLeast(48.dp)
                Row(Modifier.fillMaxSize().horizontalScroll(rememberScrollState()).testTag("dock-middle-scroll")) {
                    items.forEach { id -> key(id) { DockSlot(id, slotWidth) } }
                }
            }
        }
    }
}

@Composable
private fun RoundedPressButton(
    modifier: Modifier, tag: String, description: String, enabled: Boolean, compact: Boolean,
    interactionEnabled: Boolean = enabled,
    pressAreaSize: Dp? = null,
    feedbackCornerRadius: Dp? = null,
    onClick: () -> Boolean, onLongClick: (() -> Unit)? = null, rectangular: Boolean = true, selected: Boolean = false,
    baseColor: Color? = null,
    selectedColor: Color? = null,
    rippleEnabled: Boolean = !rectangular,
    rippleColor: Color? = null,
    content: @Composable () -> Unit,
) {
    val colors = LocalContentColors.current
    val canInteract = enabled && interactionEnabled && LocalPresentationInteractionEnabled.current
    val currentCanInteract by rememberUpdatedState(canInteract)
    val currentClick by rememberUpdatedState(onClick)
    val currentLongClick by rememberUpdatedState(onLongClick)
    val interactions = remember { MutableInteractionSource() }
    val pressed by interactions.collectIsPressedAsState()
    val active = pressed && canInteract
    var action by remember { mutableIntStateOf(0) }
    // Fixed RGB with animated opacity avoids interpolating Transparent's black RGB.
    val opacity by animateFloatAsState(if (active && rectangular) 1f else 0f,
        tween(if (active) 200 else 240, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)), label = "press-opacity")
    val scale by pressScale(active)
    val background = if (opacity == 0f) Color.Transparent else interfaceSurfaceColor(colors.selectedSurface.copy(alpha = opacity))
    val rawSelectedSurface = selectedColor ?: colors.selectedSurface
     val rawRippleSurface = rippleColor ?: rawSelectedSurface
          val rippleSurface = interfaceSurfaceColor(rawRippleSurface)
    val rawBase = if (selected) rawSelectedSurface else baseColor ?: colors.mediaBase
     val base = interfaceSurfaceColor(rawBase)
    val feedback = rememberBoundaryPressFeedback(interactions, canInteract && rippleEnabled && !rectangular, base, rippleSurface)
    Box(modifier.sizeIn(minWidth = 48.dp, minHeight = 48.dp).testTag(tag)
        .then(feedback.touchCoordinates)
            .then(feedback.pointerDownLatch)
        .then(if (onLongClick == null) Modifier.clickable(interactionSource = interactions, indication = null, enabled = canInteract, role = Role.Button, onClick = { if (currentCanInteract && currentClick()) action++ }) else Modifier.combinedClickable(interactionSource = interactions, indication = null, enabled = canInteract, role = Role.Button, onClick = { if (currentCanInteract && currentClick()) action++ }, onLongClick = { if (currentCanInteract) currentLongClick?.invoke() }))
        .excludeDisabledActionTap(canInteract)
        .semantics { contentDescription = description; this[PressActive] = active; this[PressBackground] = background.value.toLong(); this[PressScale] = scale; this[PressFeedback] = if (rectangular || rippleEnabled) if (rectangular) "opacity-rectangle" else "touch-ripple" else "none" },
        contentAlignment = Alignment.Center) {
        val shape = RoundedCornerShape(feedbackCornerRadius ?: if (compact) 12.dp else 16.dp)
        val pressArea = Modifier.size(pressAreaSize ?: if (compact) 48.dp else 72.dp)
            .clip(shape)
            .then(if (rectangular) Modifier.background(background, shape) else feedback.area(base))
            .testTag("$tag-press-area")
        // Feedback never measures or clips the glyph. Both are centred in the complete hit slot.
        Box(pressArea.graphicsLayer { alpha = if (enabled) 1f else .38f })
        Box(Modifier.fillMaxSize().graphicsLayer { alpha = if (enabled) 1f else .38f }, contentAlignment = Alignment.Center) {
            CompositionLocalProvider(LocalIconPressed provides active, LocalIconAction provides action) { content() }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun PrototypeSources(state: ContentUiState, onEvent: (ContentEvent) -> Unit, anchorWidth: androidx.compose.ui.unit.Dp? = null) {
    val geometry = LocalContentGeometry.current
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
            Modifier.align(if (anchorWidth == null) Alignment.BottomEnd else Alignment.BottomStart).padding(
                start = if (anchorWidth == null) 0.dp else (anchorWidth - menuWidth - geometry.dp(CONTENT_REFERENCE_MEDIA_EDGE_PX)).coerceAtLeast(0.dp),
                end = geometry.dp(CONTENT_REFERENCE_MEDIA_EDGE_PX),
                bottom = geometry.dockSurfaceHeight + geometry.edge + geometry.mediaSurfaceHeight +
                    geometry.dp(CONTENT_REFERENCE_MEDIA_DOCK_GAP_PX * 2))
                .width(menuWidth).testTag("sources-menu")
                .downwardSoftShadow(colors.sourceBase, state.dark, opacity = LocalInterfaceOpacity.current),
            shape = RoundedCornerShape(12.dp), color = interfaceSurfaceColor(colors.sourceBase),
        ) {
            Column(Modifier.padding(8.dp).selectableGroup()) {
                MediaSource.entries.forEach { source ->
                    val selected = state.media.source == source
                    val interactions = remember { MutableInteractionSource() }
                    val pressed by interactions.collectIsPressedAsState()
                    Row(
                        Modifier.fillMaxWidth().height(rowHeight).testTag("source-${source.name}")
                            .background(if (selected) interfaceSurfaceColor(colors.selectedSurface) else Color.Transparent, RoundedCornerShape(8.dp))
                            .clickable(interactionSource = interactions, indication = ripple(color = interfaceSurfaceColor(colors.selectedSurface)), enabled = (!state.previewMode || state.media.available) && state.media.sourceAvailable && !state.media.pending, role = Role.RadioButton) { onEvent(ContentEvent.SourceSelected(source)) }
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
private fun LyricsPage(state: ContentUiState, lyricsState: @Composable () -> LyricsState,
    presentationScale: Float = 1f, externalGestureActive: Boolean = false,
    interactionEnabled: Boolean = true, autoFollowEnabled: Boolean = true,
    onGeometryReady: (Boolean) -> Unit = {},
    presentationOpacity: () -> Float = { 1f },
) {
    val lyrics = lyricsState()
    LyricsBodyTransition(lyrics, state.dark,
        fontScale = state.lyricsFontScale, lineSpacing = state.lyricsLineSpacing,
        speakerLayout = state.lyricsSpeakerLayout, highlightCurrent = true,
        renderStyle = lyricRenderStyle(state, immersive = presentationScale > 1f),
        presentationScale = presentationScale, externalGestureActive = externalGestureActive,
        interactionEnabled = interactionEnabled, autoFollowEnabled = autoFollowEnabled, onGeometryReady = onGeometryReady, presentationOpacity = presentationOpacity) {
        if (lyrics.lines.isEmpty()) LyricsEmptyContent(state, lyrics)
    }
}

@Composable
private fun LyricsEmptyContent(state: ContentUiState, lyrics: LyricsState) {
    // A song change can briefly have no lines. Keep the ambient canvas uninterrupted;
    // show a terminal message only after lookup actually finishes.
    val showLoading = state.media.isSong && lyrics.loading
    if (!state.previewMode && showLoading) return
    val emptyState = if (state.media.isSong) lyrics.emptyState else LyricsEmptyState.NoLyrics
    val emptyText = when {
        showLoading -> "正在匹配歌词…"
        emptyState == LyricsEmptyState.NetworkError -> "网络错误"
        emptyState == LyricsEmptyState.Instrumental -> "纯音乐，请您欣赏"
        else -> "暂无歌词"
    }
    Box(Modifier.fillMaxSize().padding(horizontal = 24.dp).testTag("lyrics-empty"),
        contentAlignment = Alignment.Center) {
        Text(emptyText, Modifier.testTag("lyrics-empty-copy"), style = MaterialTheme.typography.headlineMedium,
            textAlign = androidx.compose.ui.text.style.TextAlign.Center,
            color = MaterialTheme.colorScheme.onBackground)
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
internal fun ShortcutOemIcon(id: ShortcutId, state: ContentUiState, icon: Int, modifier: Modifier, glyphHeight: Dp? = null) {
    val control = id.control
    val projected = control?.let { state.controls.getValue(it) }
    if (projected != null && !projected.known && !projected.pending) {
        OemIcon(icon, modifier, glyphHeight = glyphHeight, tint = MaterialTheme.colorScheme.primary,
            motionKey = "unknown", animationAsset = null, animateOnAction = false, acceptedActionOnly = true)
        return
    }
    val base = MaterialTheme.colorScheme.primary
    if (id == ShortcutId.AutoWiper) {
        OemIcon(icon, modifier, glyphHeight = glyphHeight, tint = if (shortcutSelected(id, state)) ContentFunctionalBlue else base,
            motionKey = projected?.displayed, animationAsset = null, animateOnAction = false, acceptedActionOnly = true)
        return
    }
    if (id == ShortcutId.RearWiper || id == ShortcutId.RearWash) {
        val rearControl = requireNotNull(control)
        val value = state.controls.getValue(rearControl)
        val selected = value.pending && value.target == 1 || !value.pending && value.actual == 1
        val recipe = if (id == ShortcutId.RearWiper) rearWiperIconRecipe(selected, state.dark, base)
            else rearWashIconRecipe(selected, state.dark, base)
        OemIcon(recipe.resource, modifier, glyphHeight = glyphHeight, tint = Color.Unspecified, pathColors = recipe.pathColors,
            motionKey = if (value.known || value.pending) selected else "unknown", animationAsset = recipe.asset,
            animationFrames = recipe.frames, animationColors = recipe.animationColors,
            animationStrokePathColors = recipe.animationStrokePathColors,
            playbackSpeed = recipe.playbackSpeed, animateOnAction = false, acceptedActionOnly = true)
        return
    }
    val feature = id.feature
    if (feature != null) {
        val value = state.features[feature] ?: FeatureState()
        val known = value.known || value.pending
        val displayed = value.displayed.takeIf { it == 0 || it == 1 } ?: 0
        val recipe = vehicleFeatureIconRecipe(feature, displayed, state.dark, base)
        val oneShot = feature == com.icar03.content.model.VehicleFeature.GloveBox
        OemIcon(recipe.resource, modifier, glyphHeight = glyphHeight,
            tint = if (feature.action) base else recipe.tint,
            pathColors = recipe.pathColors,
            motionKey = if (known) displayed else "unknown",
            animationAsset = recipe.asset.takeIf { it.isNotEmpty() && (known || oneShot) },
            animationFrames = recipe.frames, animationColors = recipe.animationColors,
            animationStrokePathColors = recipe.animationStrokePathColors,
            playbackSpeed = recipe.playbackSpeed, animateOnAction = feature.action,
            acceptedActionOnly = true, actionTint = if (feature.action) ContentFunctionalBlue else Color.Unspecified)
        return
    }
    if (id == ShortcutId.ScreenClean) {
        OemIcon(icon, modifier, glyphHeight = glyphHeight, tint = base,
            motionKey = "screen-clean", animateOnAction = false, acceptedActionOnly = true)
        return
    }
    if (id == ShortcutId.ControlCenter) {
        ControlCenterOemIcon(icon, modifier, base, glyphHeight)
        return
    }
    if (control == null || control == ControlId.Lock) {
        OemIcon(icon, modifier, glyphHeight = glyphHeight, tint = if (id == ShortcutId.RearWash && shortcutSelected(id, state)) ContentFunctionalBlue else shortcutTint(id, state),
            motionKey = if (control == null) state.placeholderSwitches[id] ?: false else state.controls.getValue(control).displayed,
            animateOnAction = control == null, acceptedActionOnly = true)
        return
    }
    VehicleControlOemIcon(control, state.controls.getValue(control), state.dark, modifier, acceptedActionOnly = true, glyphHeight = glyphHeight)
}

@Composable
internal fun VehicleControlOemIcon(control: ControlId, value: ControlState, dark: Boolean, modifier: Modifier,
    acceptedActionOnly: Boolean = false, glyphHeight: Dp? = null) {
    val base = MaterialTheme.colorScheme.primary
    val level = (if (control == ControlId.Wiper) value.manualWiperDisplayed else value.displayed).coerceIn(0, control.maxLevel)
    val recipe = vehicleControlIconRecipe(control, level, dark, base)
    val known = value.known || value.pending
    OemIcon(recipe.resource, modifier, glyphHeight = glyphHeight, tint = if (known) Color.Unspecified else base,
        pathColors = if (known) recipe.pathColors else emptyMap(),
        motionKey = if (known) level else "unknown", animationAsset = recipe.asset.takeIf { known && it.isNotEmpty() },
        animationColors = recipe.animationColors, animationFrames = recipe.frames,
        animationStrokePathColors = recipe.animationStrokePathColors,
        animationPathOpacities = recipe.animationPathOpacities, animateOnAction = false, acceptedActionOnly = acceptedActionOnly)
}

@Composable
private fun ControlCenterOemIcon(resource: Int, modifier: Modifier, base: Color, glyphHeight: Dp? = null) {
    OemIcon(resource, modifier, glyphHeight = glyphHeight, tint = base, actionTint = ContentFunctionalBlue,
        motionKey = "control-center", animationAsset = "ico_home_applist.json",
        animateOnAction = true, acceptedActionOnly = true)
}

@Preview(name = "原型浅色默认态", widthDp = 640, heightDp = 1080, locale = "zh")
@Composable
private fun LightPreview() { ContentTheme(false) { ContentPanel(previewState(), onEvent = {}) } }
@Preview(name = "原型深色占位", widthDp = 640, heightDp = 1080, locale = "zh")
@Composable
private fun DarkPreview() { ContentTheme(true) { ContentPanel(previewState(PreviewScenario.Playing).copy(dark = true), onEvent = {}) } }
