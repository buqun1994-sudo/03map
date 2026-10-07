package com.icar03.content.ui

import android.graphics.Paint
import android.graphics.Color as NativeColor
import android.os.SystemClock
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.foundation.gestures.detectVerticalDragGestures
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.graphics.drawscope.drawIntoCanvas
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.*
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.delay
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.isActive
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeoutOrNull
import kotlin.math.ceil
import kotlin.math.max
import kotlin.math.roundToInt

internal val ActiveLyric = SemanticsPropertyKey<Int>("ActiveLyric")
internal val LyricTextInset = SemanticsPropertyKey<Float>("LyricTextInset")
internal val LyricFontPixels = SemanticsPropertyKey<Float>("LyricFontPixels")
internal val LyricActiveFontPixels = SemanticsPropertyKey<Float>("LyricActiveFontPixels")
internal val LyricLineGapPixels = SemanticsPropertyKey<Float>("LyricLineGapPixels")
internal val LyricNormalColor = SemanticsPropertyKey<Int>("LyricNormalColor")
internal val LyricCurrentColor = SemanticsPropertyKey<Int>("LyricCurrentColor")
internal val LyricTranslationVisible = SemanticsPropertyKey<Boolean>("LyricTranslationVisible")
internal val LyricTextAlignment = SemanticsPropertyKey<String>("LyricTextAlignment")
internal val LyricRowHeights = SemanticsPropertyKey<List<Int>>("LyricRowHeights")
internal val LyricWordProgress = SemanticsPropertyKey<Float>("LyricWordProgress")
internal val LyricScrollAnchor = SemanticsPropertyKey<Int>("LyricScrollAnchor")
internal val LyricScrollOffset = SemanticsPropertyKey<Float>("LyricScrollOffset")
internal val LyricActiveRows = SemanticsPropertyKey<List<Int>>("LyricActiveRows")
internal val LyricEmphasizedRows = SemanticsPropertyKey<List<Int>>("LyricEmphasizedRows")
internal val LyricGapProgress = SemanticsPropertyKey<Float>("LyricGapProgress")
internal val LyricFrameRunning = SemanticsPropertyKey<Boolean>("LyricFrameRunning")
internal val LyricFrameElapsed = SemanticsPropertyKey<Long>("LyricFrameElapsed")
internal val LyricFramePosition = SemanticsPropertyKey<Long>("LyricFramePosition")
internal val LyricFrameEligible = SemanticsPropertyKey<Boolean>("LyricFrameEligible")
internal val LyricRowTops = SemanticsPropertyKey<List<Float>>("LyricRowTops")
internal val LyricWaitRowTops = SemanticsPropertyKey<List<Float>>("LyricWaitRowTops")
internal val LyricWaitRowHeight = SemanticsPropertyKey<Float>("LyricWaitRowHeight")
internal val LyricGapSlotIndex = SemanticsPropertyKey<Int>("LyricGapSlotIndex")
internal val LyricPreparedSliceCount = SemanticsPropertyKey<Int>("LyricPreparedSliceCount")
internal val LyricFallbackSliceCount = SemanticsPropertyKey<Int>("LyricFallbackSliceCount")
internal val LyricRasterizations = SemanticsPropertyKey<Int>("LyricRasterizations")
internal val LyricLayoutReady = SemanticsPropertyKey<Boolean>("LyricLayoutReady")
internal val LocalLyricGeometryDispatcher = staticCompositionLocalOf<CoroutineDispatcher> { Dispatchers.Default }
internal val LocalLyricPreparationDispatcher = staticCompositionLocalOf<CoroutineDispatcher> { Dispatchers.Default }

internal val LyricOpacity = SemanticsPropertyKey<Float>("LyricOpacity")
internal val LyricPresentationFrozen = SemanticsPropertyKey<Boolean>("LyricPresentationFrozen")
internal val LyricEntryHolding = SemanticsPropertyKey<Boolean>("LyricEntryHolding")
internal val LyricRecordingKey = SemanticsPropertyKey<String>("LyricRecordingKey")

internal val LyricScrollRunning = SemanticsPropertyKey<Boolean>("LyricScrollRunning")
internal val LyricScrollPhase = SemanticsPropertyKey<Float>("LyricScrollPhase")
internal val LyricScrollMaximumDelay = SemanticsPropertyKey<Int>("LyricScrollMaximumDelay")

/** Last painted facts, without Snapshot writes, screenshots or a second media clock. */
private class LyricPaintedFrame {
    var document: LyricLayoutDocument? = null
    var source: LyricsState? = null
    var positionMs = -1L
    var offset = 0f
    val scroll = LyricScrollSample()
    var focus = 0
    var emphasized: Set<Int> = emptySet()
    var cache: LyricInkCache? = null
    var slices: List<PreparedLyricSlice> = emptyList()
    var fallback: List<LyricSliceAddress> = emptyList()
}

private data class LyricFollowCommand(val geometry: LyricGeometry, val target: Float, val focus: Int,
    val browsing: Boolean, val canAnimate: Boolean, val paused: Boolean)
private class LyricFollowHistory(var value: LyricFollowCommand? = null)

/** Stable geometry and a byte-bounded ink cache; frame clocks are observed only in draw/semantics. */
@Composable
internal fun WallpaperLyrics(lyrics: LyricsState, dark: Boolean, modifier: Modifier = Modifier,
    opacity: () -> Float = { 1f }, freezeMotion: Boolean = false, holdFollow: Boolean = false,
    startAtFirstRow: Boolean = false, visibility: Boolean? = null,
    fontScale: Float = 1.0f, lineSpacing: Int = 1, speakerLayout: Boolean = true,
    highlightCurrent: Boolean = true, onLayoutReady: () -> Unit = {},
    presentationScale: Float = 1f, externalGestureActive: Boolean = false,
    interactionEnabled: Boolean = true, onGeometryReady: (Boolean) -> Unit = {},
    renderStyle: LyricRenderStyle? = null) {
    BoxWithConstraints(modifier.fillMaxSize().clipToBounds().testTag("wallpaper-lyrics")) {
        val density = LocalDensity.current
        val assets = LocalContext.current.assets
        val face = remember(assets) { lyricTypeface(assets) }
        val cjk = remember(assets) { lyricCjkTypeface(assets) }
        val sceneScale = presentationScale.takeIf { it.isFinite() && it > 0f } ?: 1f
        val requestedInset = with(density) { 48.dp.toPx() } * sceneScale
        val anchorFraction = .41f
        val textAlignment = renderStyle?.alignment ?: "left"
        val width = with(density) { maxWidth.toPx() }.minus(requestedInset * 2f).roundToInt().coerceAtLeast(1)
        val height = with(density) { maxHeight.toPx() }
        val requestedMetrics = with(density) {
            val safeScale = (if (fontScale.isFinite()) fontScale.coerceIn(0.85f, 1.15f) else 1.0f) * sceneScale
            val gapScale = when (lineSpacing.coerceIn(0, 2)) { 0 -> .75f; 2 -> 1.35f; else -> 1f }
            val typographyScale = if (renderStyle?.immersive == true) 1f else sceneScale
            val normal = renderStyle?.normalSizeSp?.sp?.toPx()?.times(typographyScale)
                ?: (LyricVisuals.MAIN_SP.sp.toPx() * safeScale)
            val active = renderStyle?.currentSizeSp?.sp?.toPx()?.times(typographyScale)
                ?: (LyricVisuals.CURRENT_SP.sp.toPx() * safeScale)
            val rowPadding = renderStyle?.lineGapDp?.let { (it / 2f).dp.toPx() * typographyScale }
                ?: (14.dp.toPx() * gapScale * sceneScale)
            LyricMetrics(normal, active, normal * .55f, normal * .5f,
                rowPadding, 4.dp.toPx() * sceneScale,
                LyricVisuals.INACTIVE_BLUR_DP.dp.toPx() * sceneScale, LyricVisuals.LIFT_DP.dp.toPx() * sceneScale,
                showTranslation = renderStyle?.showTranslation ?: true)
        }
        val displayLines = remember(lyrics.lines, speakerLayout) {
            if (speakerLayout) lyrics.lines else lyrics.lines.map { it.copy(side = LyricSide.Unspecified) }
        }
        val incoming = if (speakerLayout) lyrics else lyrics.copy(lines = displayLines)
        val presentationKey = lyricPresentationKey(incoming)
        val visible = visibility ?: rememberLyricVisibility()
        val workEnabled = visible && !freezeMotion
        val request = remember(incoming.lines, width, requestedMetrics, face, cjk, textAlignment) {
            LyricLayoutRequest(incoming.lines, width, requestedMetrics, face, cjk, requestedInset, textAlignment)
        }
        var candidate by remember(presentationKey) { mutableStateOf<LyricLayoutDocument?>(null) }
        val admitted = remember(presentationKey) { LyricPresentationHolder() }
        val painted = remember(presentationKey) { LyricPaintedFrame() }
        val matching = candidate?.takeIf { it.request === request }
        val presentation = if (freezeMotion && painted.document != null && painted.source != null)
            LyricPresentation(painted.document!!, painted.source!!)
            else if (!freezeMotion && matching != null) LyricPresentation(matching, incoming) else admitted.value
        val layoutReady = matching != null && presentation?.document === matching
        val geometryDispatcher = LocalLyricGeometryDispatcher.current
        LaunchedEffect(presentationKey, request, workEnabled, geometryDispatcher) {
            if (!workEnabled || layoutReady) return@LaunchedEffect
            val result = prepareLyricDocument(request, geometryDispatcher)
            currentCoroutineContext().ensureActive()
            candidate = result
        }
        SideEffect {
            onGeometryReady(layoutReady)
            if (!freezeMotion && matching != null) {
                admitted.value = LyricPresentation(matching, incoming)
                onLayoutReady()
            }
        }
        if (presentation == null) {
            Box(Modifier.fillMaxSize().semantics {
                this[LyricLayoutReady] = false
                this[LyricFrameRunning] = false
            })
            return@BoxWithConstraints
        }
        // A completed candidate can be superseded before composition admits it. Hold the
        // entire previous document/source pair, never A's cursor with unadmitted B's rows.
        val ready = presentation.document
        val heldSource = remember(request, ready, freezeMotion) {
            val source = presentation.source
            source.copy(positionMs = if (freezeMotion && painted.document === ready) painted.positionMs
                else lyricPositionAt(source, SystemClock.elapsedRealtime()), playbackSpeed = 0f, playbackTrajectory = null)
        }
        val lyrics = if (layoutReady && !freezeMotion) incoming else heldSource
        val metrics = ready.request.metrics
        val inset = ready.request.baseInset.toFloat()
        val admittedScale = metrics.gap / with(density) { 4.dp.toPx() }
        val measured = ready.rows
        val active = lyrics.activeIndex.coerceIn(-1, lyrics.lines.lastIndex)
        val singing = remember(lyrics.activeIndices, active, lyrics.lines.size) {
            lyrics.activeIndices.ifEmpty { listOfNotNull(active.takeIf { it >= 0 }) }
                .filter { it in lyrics.lines.indices }.toSet()
        }
        val focus = if (freezeMotion && painted.document === ready) painted.focus
            else max(0, if (lyrics.scrollIndex >= 0) lyrics.scrollIndex else active)
                .coerceAtMost(max(0, lyrics.lines.lastIndex))
        val heights = remember(measured) { measured.map { it.height } }
        val waitHeight = with(density) { 64.dp.toPx() } * admittedScale
        val flow = remember(heights, lyrics.waitRows, lyrics.timed, waitHeight) {
            lyricFlow(heights, if (lyrics.timed) lyrics.waitRows else emptyList(), waitHeight)
        }
        val tops = flow.lineTops
        val gapSlot = if (lyrics.timelineReady && lyrics.timed) flow.waitRows.indexOfFirst {
            it.startMs == lyrics.gapStartMs && it.endMs == lyrics.gapEndMs
        } else -1
        val gap = gapSlot >= 0 && lyrics.timelineReady && lyrics.timed
        // Presentation emphasis is the current follow row, not the first-word singing gate.
        // Keep overlapping actual voices emphasized too; waiting rows and song end have no new current line.
        val projectedEmphasis = remember(singing, lyrics.scrollIndex, lyrics.timelineReady, lyrics.timed, gap,
            lyrics.atEnd || lyrics.durationMs > 0L && lyrics.positionMs >= lyrics.durationMs, lyrics.lines.size, highlightCurrent) {
            if (highlightCurrent) lyricEmphasizedRows(lyrics, singing, gap) else emptySet()
        }
        val emphasized = if (freezeMotion && painted.document === ready) painted.emphasized else projectedEmphasis
        val followTarget = if (!lyrics.timed) metrics.padding
            else if (gapSlot >= 0) height * anchorFraction - flow.waitTops[gapSlot] - waitHeight / 2f
            else if (measured.isEmpty()) 0f else height * anchorFraction - tops[focus] - heights[focus] / 2f
        val geometry = remember(lyrics.lines, tops, heights, height) { LyricGeometry(lyrics.lines, tops, heights, height) }
        val firstTarget = if (!lyrics.timed) metrics.padding
            else if (gapSlot >= 0 && flow.waitRows[gapSlot].afterIndex == -1) followTarget
            else if (measured.isEmpty()) 0f else height * anchorFraction - tops[0] - heights[0] / 2f
        val travel = remember(presentationKey) {
            LyricScrollState(if (startAtFirstRow) firstTarget else followTarget).also { it.layoutKey = geometry }
        }
        var committedCoordinates by remember(presentationKey) {
            mutableStateOf(LyricCoordinates(geometry, 0f, travel.value, travel.segment))
        }
        val coordinates = remember(geometry, presentationKey) {
            val previous = committedCoordinates
            if (previous.geometry === geometry) previous else {
                val old = LyricScrollSample()
                if (painted.document?.request?.lines === previous.geometry.lines) old.copyFrom(painted.scroll)
                else travel.sampleInto(old, previous.origin)
                val relativeBase = old.base - previous.origin
                LyricCoordinates(geometry, previous.origin + lyricGeometryShift(previous.geometry, geometry, old.base, old),
                    relativeBase, LyricScrollSegment.stationary(LyricRowPose.uniform(relativeBase)))
            }
        }
        SideEffect { committedCoordinates = coordinates }
        val origin = coordinates.origin
        val readScroll = remember(travel, freezeMotion, ready, geometry, coordinates) {
            { sample: LyricScrollSample ->
                if (freezeMotion && painted.document === ready) sample.copyFrom(painted.scroll)
                else if (travel.layoutKey !== geometry) sample.set(coordinates.rebase, 0f, origin)
                else travel.sampleInto(sample, origin)
            }
        }
        val hasFollowAnchor = workEnabled && !lyricBodyAtEnd(lyrics) &&
            (!lyrics.timed || lyrics.timelineReady) && !holdFollow
        var browsingTravel by remember(presentationKey) { mutableStateOf<Float?>(null) }
        var dragging by remember(presentationKey) { mutableStateOf(false) }
        var pointerDown by remember(presentationKey) { mutableStateOf(false) }
        val paused = lyrics.playbackSpeed <= 0f || !lyrics.playbackSpeed.isFinite()
        val scrollBlocked = !workEnabled || holdFollow || !layoutReady || pointerDown ||
            externalGestureActive
        val commands = remember(presentationKey) { LyricFollowHistory() }
        val commandSample = remember { LyricScrollSample() }
        // One delayed return, cancelled during any gesture/modal and restarted on a timed viewport.
        LaunchedEffect(workEnabled, holdFollow, lyrics.timed, browsingTravel, dragging, pointerDown,
            externalGestureActive, interactionEnabled) {
            if (workEnabled && !holdFollow && lyrics.timed && browsingTravel != null && !dragging && !pointerDown &&
                !externalGestureActive && interactionEnabled) {
                delay(4_000L)
                browsingTravel = null
            }
        }
        LaunchedEffect(followTarget, origin, geometry, hasFollowAnchor, browsingTravel != null, scrollBlocked, paused) {
            val target = followTarget - origin
            val previous = commands.value
            val command = LyricFollowCommand(geometry, target, focus, browsingTravel != null,
                !scrollBlocked && hasFollowAnchor, paused)
            commands.value = command
            if (travel.layoutKey !== geometry) {
                travel.reset(coordinates.rebaseOffset)
                travel.layoutKey = geometry
                if (browsingTravel != null) browsingTravel = coordinates.rebaseOffset
            }
            val changed = previous == null || previous.target != target
            // Pause always owns the stop boundary. A paused seek may still reposition, but it is
            // a rigid move with no automatic group delay and never inherits the old wave.
            if (paused) {
                if (travel.running) travel.stop(painted.scroll.takeIf { painted.document === ready }, origin)
                if (!changed && !previous.browsing && previous.canAnimate) return@LaunchedEffect
            }
            if (scrollBlocked || browsingTravel != null || !hasFollowAnchor) {
                if (travel.running) travel.stop(painted.scroll.takeIf { painted.document === ready }, origin)
                return@LaunchedEffect
            }
            if (travel.running) travel.stop(painted.scroll.takeIf { painted.document === ready }, origin)
            travel.sampleInto(commandSample, origin)
            val visibleRows = lyricFrameWindow(measured, tops, commandSample.base, height, metrics.lift, commandSample)
                .map { it.row }.distinct()
            val first = visibleRows.firstOrNull() ?: focus
            val last = visibleRows.lastOrNull() ?: first
            val stagger = !paused && lyrics.timed && previous != null && previous.geometry === geometry &&
                previous.canAnimate && !previous.paused && (changed || previous.browsing) &&
                kotlin.math.abs(focus - previous.focus) <= 1 &&
                target < commandSample.minimum - origin - .001f &&
                commandSample.maximum - origin - target <= height
            travel.moveTo(target, first, last, stagger)
        }
        // This derived state changes only when a visual line enters/leaves the overscan window.
        // Cache hits survive active-row changes, theme changes and interrupted seeks.
        val windowSample = remember { LyricScrollSample() }
        val window by remember(measured, tops, height, readScroll) {
            derivedStateOf(structuralEqualityPolicy()) {
                readScroll(windowSample)
                lyricSliceWindow(measured, tops, windowSample.base, height, windowSample)
            }
        }
        val targetWindow = remember(measured, tops, height, origin, browsingTravel, followTarget, hasFollowAnchor) {
            val destination = browsingTravel?.let { origin + it } ?: followTarget
            if (browsingTravel != null || hasFollowAnchor) lyricSliceWindow(measured, tops, destination, height) else emptyList()
        }
        // Two disjoint bounded windows, never the unbounded corridor of an interrupted seek.
        val preparationWindow = remember(window, targetWindow) { (window + targetWindow).distinct() }
        val cache = remember(measured, metrics, height, freezeMotion) {
            painted.cache?.takeIf { painted.document === ready && it.viewportHeight == height }
                ?: LyricInkCache(measured, metrics, height)
        }
        val preparationMutex = remember(cache) { Mutex() }
        val preparationDispatcher = LocalLyricPreparationDispatcher.current
        var preparedSlices by remember(cache) {
            mutableStateOf(if (painted.cache === cache) painted.slices else emptyList())
        }
        val liveSlices = remember(preparedSlices, window, emphasized, lyrics.timed) {
            val wanted = window.toHashSet()
            preparedSlices.filter { it.address in wanted &&
                ((lyrics.timed && it.row !in emphasized) || it.sharp != null) }
        }
        val slices = if (freezeMotion && painted.document === ready) painted.slices else liveSlices
        val liveMissing = remember(window, slices) {
            val ready = slices.mapTo(HashSet()) { it.address }
            window.filter { it !in ready }
        }
        val missing = if (freezeMotion && painted.document === ready) painted.fallback else liveMissing
        val painter = remember(metrics) { LyricInkPainter(metrics) }
        LaunchedEffect(cache, preparationWindow, emphasized, focus, lyrics.timed, workEnabled, preparationDispatcher) {
            if (!workEnabled) return@LaunchedEffect
            val prepared = withContext(preparationDispatcher) {
                val ctx = currentCoroutineContext()
                preparationMutex.withLock {
                    ctx.ensureActive()
                    cache.prepare(preparationWindow, emphasized, focus, allSharp = !lyrics.timed,
                        checkCancellation = { ctx.ensureActive() })
                }
            }
            // A superseded/hidden viewport can warm entries but cannot publish its window.
            currentCoroutineContext().ensureActive()
            preparedSlices = prepared
        }
        val latest = rememberUpdatedState(lyrics)
        val frameElapsed = remember { mutableLongStateOf(SystemClock.elapsedRealtime()) }
        val words = remember(emphasized, lyrics.lines) {
            emphasized.sorted().flatMap { index -> lyrics.lines[index].let { it.words + it.backgroundWords } }
        }
        val radius = with(density) { LyricBodyVisuals.WAIT_RADIUS_DP.dp.toPx() } * admittedScale
        // Travel can change which ink is visible; playback frames never observe this in composition.
        val frameSample = remember { LyricScrollSample() }
        val gapSample = remember { LyricScrollSample() }
        val frameWindow by remember(measured, tops, height, readScroll, metrics.lift) {
            derivedStateOf(structuralEqualityPolicy()) {
                readScroll(frameSample)
                lyricFrameWindow(measured, tops, frameSample.base, height, metrics.lift, frameSample)
            }
        }
        val frameGap by remember(gap, gapSlot, flow, waitHeight, height, readScroll, radius) {
            derivedStateOf(structuralEqualityPolicy()) {
                if (!gap) null else flow.waitRows[gapSlot].takeIf {
                    readScroll(gapSample)
                    val y = flow.waitTops[gapSlot] + gapSample.offsetAt(it.afterIndex + 1) + waitHeight / 2f
                    y + radius > 0f && y - radius < height
                }
            }
        }
        val frameSchedule = remember(measured, emphasized, frameWindow, frameGap) {
            lyricFrameSchedule(measured, emphasized, frameWindow, frameGap)
        }
        val latestSchedule = rememberUpdatedState(frameSchedule)
        val latestVisible = rememberUpdatedState(workEnabled)
        val frameRequests = remember { Channel<Unit>(Channel.CONFLATED) }
        val moving by remember(latest, frameElapsed, latestVisible, latestSchedule) {
            derivedStateOf(structuralEqualityPolicy()) {
                val now = latest.value
                val position = lyricPositionAt(now, frameElapsed.longValue)
                lyricFrameEnabled(now, latestVisible.value, position) &&
                    latestSchedule.value.hasRemainingAt(position, now.durationMs)
            }
        }
        // Only an admitted anchor/body/cursor/visibility change invalidates the sleep.
        // Resource publication never changes the trusted clock or follow destination.
        LaunchedEffect(presentationKey, measured, emphasized, frameSchedule, workEnabled,
            lyrics.anchorRevision, lyrics.positionMs, lyrics.capturedAtMs, lyrics.playbackSpeed, lyrics.timelineReady,
            lyrics.timed, lyrics.durationMs, lyrics.gapStartMs, lyrics.gapEndMs) {
            frameElapsed.longValue = SystemClock.elapsedRealtime()
            frameRequests.trySend(Unit)
        }
        LaunchedEffect(moving) {
            frameElapsed.longValue = SystemClock.elapsedRealtime()
            if (moving) while (isActive) {
                // Drain a snapshot already reflected in latest, then choose from that anchor.
                frameRequests.tryReceive()
                val now = latest.value
                val elapsed = SystemClock.elapsedRealtime()
                val position = lyricPositionAt(now, elapsed)
                frameElapsed.longValue = elapsed
                val schedule = latestSchedule.value
                val enabled = lyricFrameEnabled(now, latestVisible.value, position)
                if (enabled && schedule.needsFramesAt(position)) {
                    withFrameNanos { frameElapsed.longValue = SystemClock.elapsedRealtime() }
                } else {
                    val waitMs = if (enabled) schedule.delayUntilNext(now, elapsed) else null
                    if (waitMs == null) frameRequests.receive()
                    else withTimeoutOrNull(waitMs) { frameRequests.receive() }
                }
                // Only derived moving terminates/restarts the owner. Never break at an
                // endpoint here: a same-frame seekback can restore true before recomposition.
            }
        }
        val dotPaint = remember { Paint(Paint.ANTI_ALIAS_FLAG) }
        val step = with(density) { LyricBodyVisuals.WAIT_STEP_DP.dp.toPx() } * admittedScale
        val rowTopList = remember(tops, measured.size) { tops.take(measured.size) }
        val waitTopList = remember(flow) { flow.waitTops.toList() }
        val drawSample = remember { LyricScrollSample() }
        val semanticSample = remember { LyricScrollSample() }
        Canvas(Modifier.fillMaxSize().pointerInput(presentationKey, geometry, workEnabled, holdFollow,
            interactionEnabled, externalGestureActive) {
            if (!workEnabled || holdFollow || !interactionEnabled || externalGestureActive) return@pointerInput
            awaitEachGesture {
                awaitFirstDown(requireUnconsumed = false, pass = androidx.compose.ui.input.pointer.PointerEventPass.Initial)
                travel.stop(painted.scroll.takeIf { painted.document === ready }, origin)
                pointerDown = true
                try {
                    var pressed = true
                    while (pressed) {
                        pressed = awaitPointerEvent(androidx.compose.ui.input.pointer.PointerEventPass.Initial)
                            .changes.any { it.pressed }
                    }
                } finally { pointerDown = false }
            }
        }.pointerInput(presentationKey, geometry, workEnabled, holdFollow, interactionEnabled, externalGestureActive) {
            if (!workEnabled || holdFollow || !interactionEnabled || externalGestureActive) return@pointerInput
            detectVerticalDragGestures(
                onDragStart = { dragging = true; browsingTravel = travel.value },
                onDragEnd = { dragging = false }, onDragCancel = { dragging = false },
            ) { change, amount ->
                change.consume()
                val minimum = minOf(height * anchorFraction - tops.last(), height * anchorFraction)
                val destination = ((browsingTravel ?: travel.value) + amount)
                    .coerceIn(minimum - origin, height * .52f - origin)
                browsingTravel = destination
                travel.dragTo(destination)
            }
        }.semantics {
            val now = latest.value
            val position = lyricPositionAt(now, frameElapsed.longValue)
            this[LyricOpacity] = opacity()
            this[LyricPresentationFrozen] = freezeMotion
            this[LyricEntryHolding] = holdFollow
            this[LyricRecordingKey] = lyrics.recordingKey
            this[ActiveLyric] = active
            this[LyricTextInset] = inset
            this[LyricFontPixels] = metrics.main
            this[LyricActiveFontPixels] = metrics.activeMain
            this[LyricLineGapPixels] = metrics.padding * 2f
            this[LyricNormalColor] = renderStyle?.normalColor ?: if (dark) NativeColor.WHITE else NativeColor.rgb(39, 48, 59)
            this[LyricCurrentColor] = renderStyle?.currentColor ?: if (dark) NativeColor.WHITE else NativeColor.rgb(39, 48, 59)
            this[LyricTextAlignment] = ready.request.alignment
            this[LyricTranslationVisible] = metrics.showTranslation
            this[LyricRowHeights] = heights
            this[LyricWordProgress] = words.firstOrNull()?.let { lyricWordFraction(it, position) } ?: 0f
            this[LyricScrollAnchor] = lyrics.scrollIndex
            readScroll(semanticSample)
            this[LyricScrollOffset] = semanticSample.base
            this[LyricScrollRunning] = travel.running && !scrollBlocked
            this[LyricScrollPhase] = semanticSample.phaseMs
            this[LyricScrollMaximumDelay] = semanticSample.segment.maximumDelayMs
            this[LyricActiveRows] = singing.sorted()
            this[LyricEmphasizedRows] = emphasized.sorted()
            this[LyricRowTops] = rowTopList
            this[LyricWaitRowTops] = waitTopList
            this[LyricWaitRowHeight] = waitHeight
            this[LyricGapSlotIndex] = if (gap && position in lyrics.gapStartMs until lyrics.gapEndMs) gapSlot else -1
            this[LyricGapProgress] = if (gap) lyricGapFraction(lyrics, position) else 0f
            this[LyricFrameRunning] = moving && latestSchedule.value.needsFramesAt(position)
            this[LyricFrameElapsed] = frameElapsed.longValue
            this[LyricFramePosition] = position
            this[LyricFrameEligible] = lyricFrameEnabled(now, latestVisible.value, position)
            this[LyricPreparedSliceCount] = slices.size
            this[LyricFallbackSliceCount] = missing.size
            this[LyricRasterizations] = cache.rasterizations
            this[LyricLayoutReady] = layoutReady
            text = AnnotatedString(lyrics.lines.getOrNull(active.takeIf { it >= 0 } ?: focus)?.text.orEmpty())
            stateDescription = if (!lyrics.timed) "静态歌词" else if (lyrics.timelineReady) "同步歌词" else "等待可信播放进度"
        }) {
            val now = latest.value
            val position = lyricPositionAt(now, frameElapsed.longValue)
            readScroll(drawSample)
            val offset = drawSample.base
            val frameAlpha = opacity().coerceIn(0f, 1f)
            if (!freezeMotion && frameAlpha > 0f) {
                painted.document = ready
                painted.source = now
                painted.positionMs = position
                painted.offset = offset
                painted.scroll.copyFrom(drawSample)
                painted.focus = focus
                painted.emphasized = emphasized
                painted.cache = cache
                painted.slices = slices
                painted.fallback = missing
            }
            drawIntoCanvas { canvas ->
                val native = canvas.nativeCanvas
                val saved = native.save()
                // Ink shaders carry the vertical edge fade: no viewport-sized offscreen DST_IN layer.
                native.clipRect(inset, 0f, size.width - inset, size.height)
                native.translate(inset, 0f)
                painter.draw(native, slices, measured, tops, cache, offset, emphasized, focus, now, position, dark,
                    fallback = missing, contentAlpha = frameAlpha, scroll = drawSample,
                    normalColor = renderStyle?.normalColor, currentColor = renderStyle?.currentColor)
                native.restoreToCount(saved)
                if (gap && position in lyrics.gapStartMs until lyrics.gapEndMs) {
                    val progress = lyricGapFraction(now, position)
                    val y = flow.waitTops[gapSlot] + drawSample.offsetAt(flow.waitRows[gapSlot].afterIndex + 1) + waitHeight / 2f
                    dotPaint.color = renderStyle?.currentColor ?: if (dark) NativeColor.WHITE else NativeColor.rgb(39, 48, 59)
                    repeat(3) { index ->
                        dotPaint.alpha = ((.35f + .55f * (progress * 3f - index).coerceIn(0f, 1f)) * frameAlpha * 255).roundToInt()
                        native.drawCircle(inset + radius + step * index, y, radius, dotPaint)
                    }
                }
            }
        }
    }
}

internal fun lyricFrameEnabled(lyrics: LyricsState, visible: Boolean, positionMs: Long): Boolean =
    visible && lyrics.timed && lyrics.timelineReady && lyrics.playbackSpeed > 0f && lyrics.playbackSpeed.isFinite() &&
        positionMs >= 0L && (lyrics.durationMs <= 0L || positionMs < lyrics.durationMs)

/** Half-open source-time intervals; fractional glyph onsets are never rounded into fake word timestamps. */
internal data class LyricFrameInterval(val startMs: Double, val endMs: Double)
internal class LyricFrameSchedule(intervals: List<LyricFrameInterval>) {
    val intervals: List<LyricFrameInterval>
    init {
        val merged = ArrayList<LyricFrameInterval>()
        intervals.filter { it.startMs.isFinite() && it.endMs.isFinite() && it.startMs >= 0.0 && it.endMs > it.startMs }
            .sortedBy { it.startMs }.forEach { interval ->
                val previous = merged.lastOrNull()
                if (previous != null && interval.startMs <= previous.endMs)
                    merged[merged.lastIndex] = LyricFrameInterval(previous.startMs, max(previous.endMs, interval.endMs))
                else merged += interval
            }
        this.intervals = merged
    }
    private fun nextInterval(positionMs: Long): LyricFrameInterval? {
        if (positionMs < 0L) return null
        var low = 0; var high = intervals.size
        while (low < high) {
            val middle = (low + high) ushr 1
            if (intervals[middle].endMs <= positionMs.toDouble()) low = middle + 1 else high = middle
        }
        return intervals.getOrNull(low)
    }
    fun needsFramesAt(positionMs: Long): Boolean = nextInterval(positionMs)?.let { positionMs.toDouble() >= it.startMs } ?: false
    fun hasRemainingAt(positionMs: Long, durationMs: Long = 0L): Boolean = nextInterval(positionMs)?.let {
        durationMs <= 0L || (positionMs < durationMs && it.startMs < durationMs.toDouble())
    } ?: false
    fun delayUntilNext(lyrics: LyricsState, nowElapsedMs: Long): Long? {
        val position = lyricPositionAt(lyrics, nowElapsedMs)
        val trajectory = lyrics.playbackTrajectory
            ?: return delayUntilNext(position, lyrics.playbackSpeed, lyrics.durationMs)
        if (trajectory.speed <= 0f || !hasRemainingAt(position, lyrics.durationMs)) return null
        val next = nextInterval(position) ?: return null
        if (position.toDouble() >= next.startMs) return 0L
        return trajectory.delayUntilSample(ceil(next.startMs).toLong(), nowElapsedMs)
    }

    fun delayUntilNext(positionMs: Long, playbackSpeed: Float, durationMs: Long = 0L): Long? {
        if (playbackSpeed <= 0f || !playbackSpeed.isFinite() || !hasRemainingAt(positionMs, durationMs)) return null
        val next = nextInterval(positionMs) ?: return null
        if (positionMs.toDouble() >= next.startMs) return 0L
        return ceil((next.startMs - positionMs.toDouble()) / playbackSpeed.toDouble()).toLong().coerceAtLeast(1L)
    }
}

/** Compile only source words actually mapped to visible emphasized ink, independent of worker readiness. */
internal fun lyricFrameSchedule(rows: List<NativeLyricRow>, emphasized: Set<Int>,
    window: List<LyricSliceAddress>, gap: LyricWaitRow? = null): LyricFrameSchedule {
    val intervals = ArrayList<LyricFrameInterval>()
    for (address in window) {
        if (address.row !in emphasized) continue
        val visual = rows.getOrNull(address.row)?.tracks?.getOrNull(address.track)?.visualLines?.getOrNull(address.line) ?: continue
        for (reveal in visual.reveals) {
            val word = reveal.word
            if (word.startTimeMs >= 0L && word.endTimeMs > word.startTimeMs) {
                val duration = (word.endTimeMs - word.startTimeMs).toDouble()
                intervals += LyricFrameInterval(word.startTimeMs + duration * reveal.fillStartFraction,
                    word.startTimeMs + duration * reveal.fillEndFraction)
            }
        }
        for (glyph in visual.glyphs) {
            if (!glyph.movable) continue
            val word = glyph.reveal?.word ?: continue
            if (word.startTimeMs < 0L || word.endTimeMs <= word.startTimeMs) continue
            val onset = lyricCharacterOnset(word, glyph.startFraction, glyph.endFraction)
            // clearMotionBoundary is a prepared-raster fact. Geometry conservatively keeps
            // every movable glyph's fixed window so a held worker cannot suppress motion.
            intervals += LyricFrameInterval(onset, onset + LyricVisuals.CHARACTER_RISE_DURATION_MS)
        }
    }
    if (gap != null) intervals += LyricFrameInterval(gap.startMs.toDouble(), gap.endMs.toDouble())
    return LyricFrameSchedule(intervals)
}

/** The actual clipped viewport, including the upward lift; no playback-clock observation. */
internal fun lyricFrameWindow(rows: List<NativeLyricRow>, tops: FloatArray, offset: Float,
    height: Float, lift: Float, scroll: LyricScrollSample? = null): List<LyricSliceAddress> {
    if (rows.isEmpty() || height <= 0f) return emptyList()
    val minimum = scroll?.minimum ?: offset
    val maximum = scroll?.maximum ?: offset
    var low = 0; var high = rows.size
    while (low < high) {
        val middle = (low + high) ushr 1
        if (tops[middle] + rows[middle].height + maximum <= 0f) low = middle + 1 else high = middle
    }
    val result = ArrayList<LyricSliceAddress>()
    var row = low
    while (row < rows.size && tops[row] + minimum - lift < height) {
        val actualOffset = scroll?.offsetAt(row) ?: offset
        rows[row].tracks.forEachIndexed { trackIndex, track ->
            val y = tops[row] + actualOffset + track.top
            val first = track.layout.getLineForVertical((-y).toInt().coerceAtLeast(0))
            val last = track.layout.getLineForVertical((height + lift - y).toInt().coerceAtLeast(0))
            for (line in first..last) {
                val visual = track.visualLines[line]
                if (y + visual.bottom > 0f && y + visual.top - lift < height)
                    result += LyricSliceAddress(row, trackIndex, line)
            }
        }
        row++
    }
    return result
}

internal fun lyricPositionAt(lyrics: LyricsState, nowElapsedMs: Long): Long {
    if (!lyrics.timelineReady || lyrics.positionMs < 0L) return -1L
    lyrics.playbackTrajectory?.let { return it.sampleAt(nowElapsedMs) }
    val elapsed = if ((lyrics.capturedAtMs > 0L || lyrics.anchorRevision > 0L) && nowElapsedMs > lyrics.capturedAtMs)
        nowElapsedMs - lyrics.capturedAtMs else 0L
    val speed = lyrics.playbackSpeed.takeIf { it.isFinite() } ?: 0f
    val projected = if (speed == 0f) lyrics.positionMs
        else (lyrics.positionMs + elapsed * speed.toDouble()).coerceAtLeast(0.0).toLong()
    return if (lyrics.durationMs > 0L) projected.coerceAtMost(lyrics.durationMs) else projected
}
internal fun lyricGapFraction(lyrics: LyricsState, positionMs: Long): Float {
    if (!lyrics.timelineReady || lyrics.gapStartMs < 0L || lyrics.gapEndMs <= lyrics.gapStartMs || positionMs < 0L) return 0f
    return ((positionMs - lyrics.gapStartMs).toDouble() / (lyrics.gapEndMs - lyrics.gapStartMs)).toFloat().coerceIn(0f, 1f)
}
internal fun lyricWordFraction(word: LyricWord, positionMs: Long): Float {
    if (positionMs < 0L || word.endTimeMs <= word.startTimeMs) return 0f
    return ((positionMs - word.startTimeMs).toDouble() / (word.endTimeMs - word.startTimeMs)).toFloat().coerceIn(0f, 1f)
}
internal data class LyricFlow(val lineTops: FloatArray, val waitRows: List<LyricWaitRow>, val waitTops: FloatArray)
internal fun lyricFlow(heights: List<Int>, rows: List<LyricWaitRow>, waitHeight: Float): LyricFlow {
    val waits = rows.filter { it.afterIndex in -1 until heights.size && it.startMs >= 0L && it.endMs > it.startMs }
        .distinct().sortedWith(compareBy<LyricWaitRow> { it.afterIndex }.thenBy { it.startMs })
    val lineTops = FloatArray(heights.size + 1)
    val waitTops = FloatArray(waits.size)
    var top = 0f; var cursor = 0
    fun appendWaits(afterIndex: Int) {
        while (cursor < waits.size && waits[cursor].afterIndex == afterIndex) { waitTops[cursor++] = top; top += waitHeight }
    }
    appendWaits(-1)
    heights.forEachIndexed { index, height -> lineTops[index] = top; top += height; appendWaits(index) }
    lineTops[heights.size] = top
    return LyricFlow(lineTops, waits, waitTops)
}
internal data class LyricGeometry(val lines: List<LyricLine>, val tops: FloatArray, val heights: List<Int>, val viewportHeight: Float)
private data class LyricCoordinates(val geometry: LyricGeometry, val origin: Float,
    val rebaseOffset: Float, val rebase: LyricScrollSegment)

/** Pure visible-layout migration, never a playback cursor. */
internal fun lyricGeometryShift(previous: LyricGeometry, next: LyricGeometry, oldOffset: Float,
    scroll: LyricScrollSample? = null): Float {
    if (previous === next || previous.lines.isEmpty() || next.lines.isEmpty()) return 0f
    val oldIndex = previous.lines.indices.minBy {
        kotlin.math.abs(previous.tops[it] + previous.heights[it] / 2f +
            (scroll?.offsetAt(it) ?: oldOffset) - previous.viewportHeight * .41f)
    }
    val oldLine = previous.lines[oldIndex]
    val exact = next.lines.indices.filter { next.lines[it].text == oldLine.text && next.lines[it].timeMs == oldLine.timeMs }
    val sameText = next.lines.indices.filter { next.lines[it].text == oldLine.text }
    val candidates = exact.ifEmpty { sameText }.ifEmpty {
        if (oldLine.timeMs >= 0L) next.lines.indices.filter { next.lines[it].timeMs >= 0L } else emptyList()
    }
    val newIndex = candidates.minByOrNull { kotlin.math.abs(next.lines[it].timeMs - oldLine.timeMs) }
        ?: oldIndex.coerceAtMost(next.lines.lastIndex)
    val oldCenter = previous.tops[oldIndex] + previous.heights[oldIndex] / 2f + (scroll?.offsetAt(oldIndex) ?: oldOffset)
    val newCenter = if (previous.viewportHeight > 0f) oldCenter * next.viewportHeight / previous.viewportHeight else oldCenter
    return newCenter - next.tops[newIndex] - next.heights[newIndex] / 2f - oldOffset
}

internal fun lyricEmphasizedRows(lyrics: LyricsState,
    singing: Set<Int> = lyrics.activeIndices.ifEmpty { listOfNotNull(lyrics.activeIndex.takeIf { it >= 0 }) }
        .filter { it in lyrics.lines.indices }.toSet(),
    waiting: Boolean = lyrics.gapStartMs >= 0L,
): Set<Int> = singing + listOfNotNull(lyrics.scrollIndex.takeIf {
    lyrics.timed && lyrics.timelineReady && !lyrics.atEnd && !waiting && it in lyrics.lines.indices &&
        (lyrics.durationMs <= 0L || lyrics.positionMs < lyrics.durationMs)
})
