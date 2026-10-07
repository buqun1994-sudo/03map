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
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.graphics.drawscope.drawIntoCanvas
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.graphics.graphicsLayer
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
    presentation: ContentPresentation? = null,
    appleMusicLogin: @Composable ((ContentEvent) -> Unit) -> Unit = {},
    canDispatch: (ContentEvent) -> Boolean = { true },
) {
    val view = LocalView.current
    val clickSound = LocalContentClickSound.current
    val dockOverlay = remember { DockLevelOverlayState() }
    var settingsRetained by remember { androidx.compose.runtime.mutableStateOf(false) }
    val settingsActive = state.settingsOpen || settingsRetained
    val contentInteractive = !state.sourcesOpen && !state.scenariosOpen && !settingsActive
    SideEffect {
        presentation?.updateModalActive(!contentInteractive)
    }
    rememberQuickControlGestureGate(contentInteractive) { dockOverlay.cancel() }
    var retainedMessage by remember { androidx.compose.runtime.mutableStateOf(state.message.orEmpty()) }
    androidx.compose.runtime.SideEffect { state.message?.let { retainedMessage = it } }
    val latestEvent by rememberUpdatedState(onEvent)
    val latestCanDispatch by rememberUpdatedState(canDispatch)
    var geometryReady by remember { mutableStateOf(true) }
    var blankTapRevision by remember { mutableLongStateOf(0L) }
    val pageMotion by remember(presentation) { derivedStateOf { presentation?.moving == true } }
    val dispatch: (ContentEvent) -> Unit = dispatch@{ event ->
        if (!latestCanDispatch(event)) return@dispatch
        if (pageMotion && event != ContentEvent.ExitLyricsImmersive) return@dispatch
        if (settingsActive && !event.isSettingsInteraction()) return@dispatch
        // Compose does not call View.performClick(): use the same system sound path
        // as the old Android buttons, respecting the user's sound-effects setting.
        val audible = when (event) {
            is ContentEvent.PageSelected, ContentEvent.DismissSheet,
            is ContentEvent.LyricsFontSizeChanged, is ContentEvent.LyricsCurrentFontSizeChanged,
            is ContentEvent.LyricsLineGapChanged, is ContentEvent.LyricsImmersiveFontSizeChanged,
            is ContentEvent.LyricsImmersiveLineGapChanged, is ContentEvent.LyricsImmersiveCurrentFontSizeChanged -> false
            is ContentEvent.LyricsCustomColorChanged -> !event.fromDrag
            is ContentEvent.LyricsCurrentCustomColorChanged -> !event.fromDrag
            else -> true
        }
        if (audible) clickSound(view)
        latestEvent(event)
    }
    Surface(modifier.fillMaxSize().graphicsLayer {
        alpha = state.uiOpacity.takeIf { it.isFinite() }?.coerceIn(.20f, 1.0f) ?: 1.0f
    }, color = MaterialTheme.colorScheme.background) {
        BoxWithConstraints(Modifier.fillMaxSize().observeUnconsumedPageTap(
            state.page == PanelPage.Lyrics && contentInteractive && !pageMotion) {
            clickSound(view)
            blankTapRevision++
        }) {
            val density = LocalDensity.current
            val fullWidth = if (presentation?.geometryReady == true) with(density) { presentation.fullSize.width.toDp() } else maxWidth
            val splitWidth = if (presentation?.geometryReady == true) with(density) { presentation.splitWidthPx.toDp() } else maxWidth
            val lyricMode = state.page == PanelPage.Lyrics && presentation?.geometryReady == true
            val wide by remember(presentation, lyricMode) { derivedStateOf { lyricMode && (presentation?.progress ?: 0f) >= .5f } }
            val transitioning by remember(presentation, lyricMode) { derivedStateOf { lyricMode && presentation?.moving == true } }
            val compactOpacity = remember(presentation, lyricMode) { {
                if (lyricMode) presentationCompactAlpha(presentation?.progress ?: 0f) else 1f
            } }
            val wideOpacity = remember(presentation, lyricMode) { {
                if (lyricMode) presentationWideAlpha(presentation?.progress ?: 0f) else 1f
            } }
            if (state.previewMode || wide || state.page != PanelPage.Lyrics) {
                SideEffect { presentation?.updatePagerMotion(false) }
            }
            val lyricOpacity = remember(presentation, lyricMode) { {
                if (!lyricMode) 1f else if (geometryReady) lyricsTransitionAlpha(presentation?.progress ?: 0f) else 0f
            } }
            val leftWidth = if (lyricMode) splitWidth else maxWidth
            val compact = !state.previewMode && leftWidth < 600.dp
            val edge = if (compact) 8.dp else 20.dp
            val topBarWidth = if (wide && !state.immersiveTopBarKeepSplit) fullWidth else leftWidth
            val topBarHeight = TopBarMetrics.height(compact)
            val dockHeight = if (compact) 72.dp else 112.dp
            val mediaHeight = if (compact) 80.dp else 136.dp
            val feedbackWidth = (maxWidth - 24.dp).coerceAtLeast(0.dp)
            val showTop = !wide || state.immersiveShowTopBar
            val showDock = !wide || state.immersiveShowDock
            ambientBackground?.invoke()
            CompositionLocalProvider(LocalQuickControlInteractionEnabled provides (contentInteractive && !pageMotion),
                LocalPresentationInteractionEnabled provides !pageMotion) {
                if (showTop) Box(Modifier.width(topBarWidth).graphicsLayer {
                    alpha = if (state.immersiveShowTopBar) 1f else compactOpacity()
                }.zIndex(1f)) { PrototypeTopBar(state, clockText, compactLayout = compact) }
                Column(Modifier.width(if (lyricMode) splitWidth else maxWidth).fillMaxHeight()) {
                    if (showTop) Spacer(Modifier.height(topBarHeight))
                    Box(Modifier.weight(1f).fillMaxWidth().clipToBounds()) {
                        if (wide) {
                            ImmersiveMedia(state, dispatch, artwork, lyricsState, compact,
                                Modifier.fillMaxSize().graphicsLayer { alpha = wideOpacity() })
                        }
                    }
                    if (!wide) Box(Modifier.fillMaxWidth().height(mediaHeight)
                        .padding(start = edge, end = edge, bottom = if (compact) 8.dp else 16.dp).graphicsLayer {
                            alpha = compactOpacity()
                        }) {
                        PrototypeMediaCard(state.media, dispatch, artwork, state.previewMode || state.media.sourceAvailable,
                            compact, state.showMediaSourceSwitcher)
                    }
                    if (showDock) Box(Modifier.fillMaxWidth().graphicsLayer {
                        alpha = if (state.immersiveShowDock) 1f else compactOpacity()
                    }) {
                        PrototypeDock(state, dispatch, compact, dockOverlay, contentInteractive && !transitioning,
                            backgroundOpacity = compactOpacity)
                    }
                }
                // The pager and its lyric page keep the same composition in both modes.
                // Switch their measured endpoint only while map progress makes the lyrics transparent.
                Layout(content = {
                    if (state.previewMode) {
                        if (state.page == PanelPage.Shortcuts) {
                            Column(Modifier.fillMaxSize().padding(horizontal = edge).verticalScroll(rememberScrollState())) { PrototypeGrid(state, dispatch) }
                        } else Box(Modifier.fillMaxSize()) {
                            LyricsPage(state, dispatch, lyricsState, presentationScale = if (wide) 3.0f else 1f,
                                externalGestureActive = transitioning, interactionEnabled = contentInteractive && !transitioning,
                                onGeometryReady = { geometryReady = it }, presentationOpacity = lyricOpacity)
                        }
                    } else {
                        val pager = rememberPagerState(initialPage = state.page.ordinal, pageCount = { PanelPage.entries.size })
                        val currentPage by rememberUpdatedState(state.page)
                        val currentEvent by rememberUpdatedState(dispatch)
                        LaunchedEffect(state.page) {
                            if (pager.currentPage != state.page.ordinal) pager.animateScrollToPage(state.page.ordinal,
                                animationSpec = tween(700, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)))
                        }
                        LaunchedEffect(pager) {
                            snapshotFlow { pager.isScrollInProgress }.collect { moving ->
                                presentation?.updatePagerMotion(moving)
                            }
                        }
                        LaunchedEffect(pager) {
                            snapshotFlow { pager.settledPage }.collect { index ->
                                if (index != currentPage.ordinal) currentEvent(ContentEvent.PageSelected(PanelPage.entries[index]))
                            }
                        }
                        HorizontalPager(pager, Modifier.fillMaxSize().testTag("runtime-pages"),
                            userScrollEnabled = contentInteractive && !transitioning && !wide) { index ->
                            CompositionLocalProvider(LocalIconVisible provides (index == pager.currentPage)) {
                                if (PanelPage.entries[index] == PanelPage.Shortcuts) {
                                    Column(Modifier.fillMaxSize().padding(horizontal = edge).verticalScroll(rememberScrollState())) { PrototypeGrid(state, dispatch) }
                                } else Box(Modifier.fillMaxSize()) {
                                    LyricsPage(state, dispatch, lyricsState, presentationScale = if (wide) 3.0f else 1f,
                                        externalGestureActive = transitioning || pager.isScrollInProgress,
                                        interactionEnabled = contentInteractive && !transitioning,
                                        onGeometryReady = { geometryReady = it }, presentationOpacity = lyricOpacity)
                                }
                            }
                        }
                    }
                }, modifier = Modifier.fillMaxSize().then(if (wide) Modifier.testTag("immersive-lyrics-region") else Modifier)) { measurables, constraints ->
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
            }
            if (state.page == PanelPage.Lyrics) {
                val overlayActions = if (wide) listOf(PageActionDescriptor("exit", "退出全屏", R.drawable.content_ic_fullscreen_exit))
                    else listOf(PageActionDescriptor("enter", "全屏歌词", R.drawable.content_ic_fullscreen, enabled = presentation?.geometryReady == true))
                PageActionsOverlay(overlayActions, pageKey = "lyrics:$wide", blankTapRevision = blankTapRevision,
                    enabled = contentInteractive && !transitioning, modalActive = settingsActive || state.sourcesOpen,
                    compact = compact, modifier = Modifier.align(if (wide) Alignment.TopStart else Alignment.TopEnd)
                        .padding(top = if (showTop) topBarHeight + 12.dp else 16.dp,
                            start = if (wide) 12.dp else 0.dp,
                             end = if (wide) 0.dp else 12.dp).zIndex(5f).graphicsLayer { alpha = if (wide) wideOpacity() else compactOpacity() }) { id ->
                    dispatch(if (id == "enter") ContentEvent.EnterLyricsImmersive else ContentEvent.ExitLyricsImmersive)
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
            // Settings always belong to the original left content region, including full-screen lyrics.
            SettingsSheet(state, dispatch,
                Modifier.align(Alignment.TopStart).width(splitWidth).fillMaxHeight()
                    .padding(
                        start = if (compact) 8.dp else 12.dp,
                        end = if (compact) 8.dp else 12.dp,
                        top = if (showTop) topBarHeight else 12.dp,
                        bottom = if (showDock) dockHeight + if (compact) 8.dp else 16.dp else 12.dp,
                    ).zIndex(7f),
                onVisibilityChanged = { settingsRetained = it })
            if (state.lyricsProviderSettings.appleLoginOpen) {
                CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(state.dark)) { appleMusicLogin(dispatch) }
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
                        shape = RoundedCornerShape(14.dp), color = LocalContentColors.current.sheetBase,
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

@Composable
private fun PrototypeTopBar(state: ContentUiState, clockText: @Composable () -> ClockText, compactLayout: Boolean? = null) {
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
            if (state.showRange) TopBarText(range, "top-range", style, width(range))
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
        OrdinaryToggle(id.label, shortcutStatus(id, state), shortcutSelected(id, state), enabled,
             shortcutRippleEnabled(id, state), tag,
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
private fun PrototypeMediaCard(
    media: MediaState, onEvent: (ContentEvent) -> Unit, artwork: @Composable (() -> Unit)?,
    sourcesEnabled: Boolean, compact: Boolean, showSourceSwitcher: Boolean,
) {
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
            if (showSourceSwitcher) {
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
        val iconSize = buttonSize * (2f / 3f)
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
                    Text(media.title ?: "暂无媒体", Modifier.testTag("immersive-title"),
                        style = MaterialTheme.typography.headlineMedium.copy(
                            fontSize = if (compact) 26.sp else 30.sp, fontWeight = FontWeight.SemiBold),
                        maxLines = 1, overflow = TextOverflow.Ellipsis)
                    Text(media.artist ?: "未连接", Modifier.testTag("immersive-artist"),
                        style = MaterialTheme.typography.titleLarge.copy(fontSize = if (compact) 22.sp else 24.sp),
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = .78f),
                        maxLines = 1, overflow = TextOverflow.Ellipsis)
                }
                Spacer(Modifier.height(if (compact) 12.dp else 16.dp))
                ImmersivePlaybackProgress(lyrics, compact, Modifier.fillMaxWidth())
                Spacer(Modifier.height(if (compact) 16.dp else 20.dp))
                Row(Modifier.align(Alignment.CenterHorizontally).testTag("immersive-media-controls"),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(if (compact) 14.dp else 20.dp)) {
                    RoundedPressButton(Modifier.size(buttonSize), "immersive-play", if (media.playing) "暂停" else "播放",
                        media.available && media.playbackAvailable && !media.pending, compact, pressAreaSize = buttonSize,
                        onClick = { onEvent(ContentEvent.PlayPause) }) {
                        OemIcon(if (media.targetPlaying ?: media.playing) R.drawable.content_oem_ico_media_pause_f else R.drawable.content_oem_ico_media_play_f,
                            Modifier.size(iconSize), animateOnAction = false)
                    }
                    RoundedPressButton(Modifier.size(buttonSize), "immersive-next", "下一首",
                        media.available && media.nextAvailable && !media.pending, compact, pressAreaSize = buttonSize,
                        onClick = { onEvent(ContentEvent.NextTrack) }) {
                        OemIcon(R.drawable.content_oem_ico_media_next_f, Modifier.size(iconSize))
                    }
                    if (state.showMediaSourceSwitcher) {
                        RoundedPressButton(Modifier.size(buttonSize), "immersive-source", "选择来源", media.sourceAvailable, compact, pressAreaSize = buttonSize,
                            onClick = { onEvent(ContentEvent.OpenSources) }) {
                            OemIcon(sourceIcon(media.targetSource ?: media.source), Modifier.size(iconSize), tint = sourceTint())
                        }
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
    val normalized = count.coerceIn(3, DockShortcuts.MAX_BUTTONS)
    val middle = DockShortcuts.items.drop(1).dropLast(1).take(normalized - 2)
    return listOf(DockShortcuts.items.first()) + middle + listOf(DockShortcuts.items.last())
}

@Composable
private fun PrototypeDock(state: ContentUiState, onEvent: (ContentEvent) -> Unit, compact: Boolean,
    overlay: DockLevelOverlayState, interactive: Boolean, backgroundOpacity: () -> Float = { 1f }) {
    val colors = LocalContentColors.current
    val items = dockItemsForCount(state.dockButtonCount)
    Box(Modifier.fillMaxWidth().height(if (compact) 72.dp else 112.dp).padding(start = if (compact) 8.dp else 12.dp, end = if (compact) 8.dp else 12.dp, bottom = if (compact) 8.dp else 12.dp)) {
        Box(Modifier.fillMaxSize().testTag("floating-dock")) {
            Box(Modifier.fillMaxSize().graphicsLayer { alpha = backgroundOpacity() }
                .testTag("dock-background").downwardSoftShadow(colors.dockBase, state.dark)
                .background(colors.dockBase, RoundedCornerShape(12.dp)))
            BoxWithConstraints(Modifier.fillMaxSize()) {
                val minDockWidth = if (compact) 48.dp * items.size
                    else 114.dp + 72.dp * (items.size - 1)
                val dockWidth = maxWidth.coerceAtLeast(minDockWidth)
                Box(Modifier.fillMaxSize().horizontalScroll(rememberScrollState())) {
                    Row(Modifier.width(dockWidth).fillMaxHeight(), verticalAlignment = Alignment.CenterVertically) {
                        items.forEach { id ->
                            val control = id.control?.let { state.controls.getValue(it) }
                            val selected = shortcutSelected(id, state)
                            val enabled = (interactive || id == ShortcutId.Settings) &&
                                (control == null || control.available && control.known && !control.pending && id.control!!.isLevel(control.actual))
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
                                selectedColor = colors.selectedSurface,
                                baseColor = Color.Transparent,
                                rippleEnabled = rippleEnabled,
                                rippleColor = if (selected && id != ShortcutId.Lock) colors.dockBase else colors.selectedSurface) {
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
    pressAreaSize: androidx.compose.ui.unit.Dp? = null,
    onClick: () -> Unit, rectangular: Boolean = true, selected: Boolean = false,
    baseColor: Color? = null,
    selectedColor: Color? = null,
    rippleEnabled: Boolean = !rectangular,
    rippleColor: Color? = null,
    content: @Composable () -> Unit,
) {
    val colors = LocalContentColors.current
    val canInteract = enabled && LocalPresentationInteractionEnabled.current
    val interactions = remember { MutableInteractionSource() }
    val pressed by interactions.collectIsPressedAsState()
    val active = pressed && canInteract
    var action by remember { mutableIntStateOf(0) }
    // Fixed RGB with animated opacity avoids interpolating Transparent's black RGB.
    val opacity by animateFloatAsState(if (active && rectangular) 1f else 0f,
        tween(if (active) 200 else 240, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)), label = "press-opacity")
    val scale by pressScale(active)
    val background = if (opacity == 0f) Color.Transparent else colors.selectedSurface.copy(alpha = opacity)
    val selectedSurface = selectedColor ?: colors.selectedSurface
    val rippleSurface = rippleColor ?: selectedSurface
    val base = if (selected) selectedSurface else baseColor ?: colors.mediaBase
    val feedback = rememberBoundaryPressFeedback(interactions, canInteract && rippleEnabled && !rectangular, base, rippleSurface)
    Box(modifier.sizeIn(minWidth = 48.dp, minHeight = 48.dp).testTag(tag)
        .then(feedback.touchCoordinates)
            .then(feedback.pointerDownLatch)
        .clickable(interactionSource = interactions, indication = null, enabled = canInteract, role = Role.Button, onClick = { action++; onClick() })
        .excludeDisabledActionTap(canInteract)
        .semantics { contentDescription = description; this[PressActive] = active; this[PressBackground] = background.value.toLong(); this[PressScale] = scale; this[PressFeedback] = if (rectangular || rippleEnabled) if (rectangular) "opacity-rectangle" else "touch-ripple" else "none" },
        contentAlignment = Alignment.Center) {
        val shape = RoundedCornerShape(if (compact) 12.dp else 16.dp)
        val pressArea = Modifier.size(pressAreaSize ?: if (compact) 48.dp else 72.dp)
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
private fun PrototypeSources(state: ContentUiState, onEvent: (ContentEvent) -> Unit, anchorWidth: androidx.compose.ui.unit.Dp? = null) {
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
                start = if (anchorWidth == null) 0.dp else (anchorWidth - menuWidth - if (compact) 8.dp else 20.dp).coerceAtLeast(8.dp),
                end = if (compact) 8.dp else 20.dp, bottom = if (compact) 152.dp else 264.dp)
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
                            .background(if (selected) colors.selectedSurface else Color.Transparent, RoundedCornerShape(8.dp))
                            .clickable(interactionSource = interactions, indication = ripple(color = colors.selectedSurface), enabled = (!state.previewMode || state.media.available) && state.media.sourceAvailable && !state.media.pending, role = Role.RadioButton) { onEvent(ContentEvent.SourceSelected(source)) }
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
private fun LyricsPage(state: ContentUiState, onEvent: (ContentEvent) -> Unit, lyricsState: @Composable () -> LyricsState,
    presentationScale: Float = 1f, externalGestureActive: Boolean = false,
    interactionEnabled: Boolean = true, onGeometryReady: (Boolean) -> Unit = {},
    presentationOpacity: () -> Float = { 1f },
) {
    val lyrics = lyricsState()
    LyricsBodyTransition(lyrics, state.dark,
        fontScale = state.lyricsFontScale, lineSpacing = state.lyricsLineSpacing,
        speakerLayout = state.lyricsSpeakerLayout, highlightCurrent = true,
        renderStyle = lyricRenderStyle(state, immersive = presentationScale > 1f),
        presentationScale = presentationScale, externalGestureActive = externalGestureActive,
        interactionEnabled = interactionEnabled, onGeometryReady = onGeometryReady, presentationOpacity = presentationOpacity) {
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
            if (!state.previewMode && state.showMediaSourceSwitcher && state.media.sourceAvailable && emptyState != LyricsEmptyState.Instrumental) TextButton(
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
        val rearControl = requireNotNull(control)
        val value = state.controls.getValue(rearControl)
        val selected = value.pending && value.target == 1 || !value.pending && value.actual == 1
        val recipe = if (id == ShortcutId.RearWiper) rearWiperIconRecipe(selected, state.dark, base)
            else rearWashIconRecipe(selected, state.dark, base)
        OemIcon(recipe.resource, modifier, tint = Color.Unspecified, pathColors = recipe.pathColors,
            motionKey = if (value.known || value.pending) selected else "unknown", animationAsset = recipe.asset,
            animationFrames = recipe.frames, animationColors = recipe.animationColors,
            animationStrokePathColors = recipe.animationStrokePathColors,
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
    val level = (if (control == ControlId.Wiper) value.manualWiperDisplayed else value.displayed).coerceIn(0, control.maxLevel)
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

@Preview(name = "原型浅色默认态", widthDp = 640, heightDp = 1080, locale = "zh")
@Composable
private fun LightPreview() { ContentTheme(false) { ContentPanel(previewState(), onEvent = {}) } }
@Preview(name = "原型深色占位", widthDp = 640, heightDp = 1080, locale = "zh")
@Composable
private fun DarkPreview() { ContentTheme(true) { ContentPanel(previewState(PreviewScenario.Playing).copy(dark = true), onEvent = {}) } }
