package com.icar03.content.ui

import android.graphics.Paint
import android.graphics.Color as NativeColor
import android.os.SystemClock
import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.CubicBezierEasing
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Canvas
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
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.*
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.delay
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlin.math.max
import kotlin.math.roundToInt

internal val ActiveLyric = SemanticsPropertyKey<Int>("ActiveLyric")
internal val LyricTextInset = SemanticsPropertyKey<Float>("LyricTextInset")
internal val LyricFontPixels = SemanticsPropertyKey<Float>("LyricFontPixels")
internal val LyricActiveFontPixels = SemanticsPropertyKey<Float>("LyricActiveFontPixels")
internal val LyricRowHeights = SemanticsPropertyKey<List<Int>>("LyricRowHeights")
internal val LyricWordProgress = SemanticsPropertyKey<Float>("LyricWordProgress")
internal val LyricScrollAnchor = SemanticsPropertyKey<Int>("LyricScrollAnchor")
internal val LyricScrollOffset = SemanticsPropertyKey<Float>("LyricScrollOffset")
internal val LyricActiveRows = SemanticsPropertyKey<List<Int>>("LyricActiveRows")
internal val LyricEmphasizedRows = SemanticsPropertyKey<List<Int>>("LyricEmphasizedRows")
internal val LyricGapProgress = SemanticsPropertyKey<Float>("LyricGapProgress")
internal val LyricFrameRunning = SemanticsPropertyKey<Boolean>("LyricFrameRunning")
internal val LyricRowTops = SemanticsPropertyKey<List<Float>>("LyricRowTops")
internal val LyricWaitRowTops = SemanticsPropertyKey<List<Float>>("LyricWaitRowTops")
internal val LyricWaitRowHeight = SemanticsPropertyKey<Float>("LyricWaitRowHeight")
internal val LyricGapSlotIndex = SemanticsPropertyKey<Int>("LyricGapSlotIndex")
internal val LyricPreparedSliceCount = SemanticsPropertyKey<Int>("LyricPreparedSliceCount")
internal val LyricFallbackSliceCount = SemanticsPropertyKey<Int>("LyricFallbackSliceCount")
internal val LyricRasterizations = SemanticsPropertyKey<Int>("LyricRasterizations")
internal val LocalLyricPreparationDispatcher = staticCompositionLocalOf<CoroutineDispatcher> { Dispatchers.Default }

/** Stable geometry and a byte-bounded ink cache; frame clocks are observed only in draw/semantics. */
@Composable
internal fun WallpaperLyrics(lyrics: LyricsState, dark: Boolean, modifier: Modifier = Modifier) {
    BoxWithConstraints(modifier.fillMaxSize().clipToBounds().testTag("wallpaper-lyrics")) {
        val density = LocalDensity.current
        val assets = LocalContext.current.assets
        val face = remember(assets) { lyricTypeface(assets) }
        val cjk = remember(assets) { lyricCjkTypeface(assets) }
        val inset = with(density) { 48.dp.toPx() }
        val width = with(density) { maxWidth.toPx() }.minus(inset * 2f).roundToInt().coerceAtLeast(1)
        val height = with(density) { maxHeight.toPx() }
        val metrics = with(density) {
            LyricMetrics(LyricVisuals.MAIN_SP.sp.toPx(), LyricVisuals.CURRENT_SP.sp.toPx(), 22.sp.toPx(), 20.sp.toPx(),
                14.dp.toPx(), 4.dp.toPx(), LyricVisuals.INACTIVE_BLUR_DP.dp.toPx(),
                LyricVisuals.LIFT_DP.dp.toPx())
        }
        val active = lyrics.activeIndex.coerceIn(-1, lyrics.lines.lastIndex)
        val singing = remember(lyrics.activeIndices, active, lyrics.lines.size) {
            lyrics.activeIndices.ifEmpty { listOfNotNull(active.takeIf { it >= 0 }) }
                .filter { it in lyrics.lines.indices }.toSet()
        }
        val focus = max(0, if (lyrics.scrollIndex >= 0) lyrics.scrollIndex else active)
            .coerceAtMost(max(0, lyrics.lines.lastIndex))
        val measured = remember(lyrics.lines, width, metrics, face, cjk) {
            lyrics.lines.map { prepareLyricRow(it, width, metrics, face, cjk) }
        }
        val heights = remember(measured) { measured.map { it.height } }
        val waitHeight = with(density) { 64.dp.toPx() }
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
        val emphasized = remember(singing, lyrics.scrollIndex, lyrics.timelineReady, lyrics.timed, gap,
            lyrics.durationMs > 0L && lyrics.positionMs >= lyrics.durationMs, lyrics.lines.size) {
            lyricEmphasizedRows(lyrics, singing, gap)
        }
        val followTarget = if (!lyrics.timed) metrics.padding
            else if (gapSlot >= 0) height * .41f - flow.waitTops[gapSlot] - waitHeight / 2f
            else if (measured.isEmpty()) 0f else height * .41f - tops[focus] - heights[focus] / 2f
        val geometry = remember(lyrics.lines, tops, heights, height) { LyricGeometry(lyrics.lines, tops, heights, height) }
        val travel = remember(lyrics.recordingKey) { Animatable(followTarget) }
        var committedCoordinates by remember(lyrics.recordingKey) { mutableStateOf(LyricCoordinates(geometry, 0f)) }
        val coordinates = remember(geometry, lyrics.recordingKey) {
            val previous = committedCoordinates
            LyricCoordinates(geometry, previous.origin + lyricGeometryShift(previous.geometry, geometry, previous.origin + travel.value))
        }
        SideEffect { committedCoordinates = coordinates }
        val hasFollowAnchor = !lyrics.timed || lyrics.timelineReady
        var browsingTravel by remember(lyrics.recordingKey) { mutableStateOf<Float?>(null) }
        val scope = rememberCoroutineScope()
        var returnToSong by remember { mutableStateOf<Job?>(null) }
        // Unknown progress does not observe travel in composition or invent a first-row destination.
        LaunchedEffect(followTarget, coordinates.origin, hasFollowAnchor, browsingTravel) {
            if (browsingTravel == null && !hasFollowAnchor) return@LaunchedEffect
            val target = browsingTravel ?: (followTarget - coordinates.origin)
            travel.animateTo(target, tween(if (browsingTravel == null) 450 else 0,
                easing = CubicBezierEasing(.32f, .72f, 0f, 1f)))
        }
        val origin = coordinates.origin
        // This derived state changes only when a visual line enters/leaves the overscan window.
        // Cache hits survive active-row changes, theme changes and interrupted seeks.
        val window by remember(measured, tops, height, origin, travel) {
            derivedStateOf(structuralEqualityPolicy()) { lyricSliceWindow(measured, tops, origin + travel.value, height) }
        }
        val targetWindow = remember(measured, tops, height, origin, browsingTravel, followTarget, hasFollowAnchor) {
            val destination = browsingTravel?.let { origin + it } ?: followTarget
            if (browsingTravel != null || hasFollowAnchor) lyricSliceWindow(measured, tops, destination, height) else emptyList()
        }
        // Two disjoint bounded windows, never the unbounded corridor of an interrupted seek.
        val preparationWindow = remember(window, targetWindow) { (window + targetWindow).distinct() }
        val cache = remember(measured, metrics, height) { LyricInkCache(measured, metrics, height) }
        val preparationMutex = remember(cache) { Mutex() }
        val preparationDispatcher = LocalLyricPreparationDispatcher.current
        var preparedSlices by remember(cache) { mutableStateOf<List<PreparedLyricSlice>>(emptyList()) }
        val slices = remember(preparedSlices, window, emphasized, lyrics.timed) {
            val wanted = window.toHashSet()
            preparedSlices.filter { it.address in wanted &&
                ((lyrics.timed && it.row !in emphasized) || it.sharp != null) }
        }
        val missing = remember(window, slices) {
            val ready = slices.mapTo(HashSet()) { it.address }
            window.filter { it !in ready }
        }
        val painter = remember(metrics) { LyricInkPainter(metrics) }
        val owner = LocalLifecycleOwner.current
        val view = LocalView.current
        var started by remember(owner) { mutableStateOf(owner.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)) }
        var focused by remember(view) { mutableStateOf(view.hasWindowFocus()) }
        val visible = started && focused && LocalIconVisible.current
        LaunchedEffect(cache, preparationWindow, emphasized, focus, lyrics.timed, visible, preparationDispatcher) {
            if (!visible) return@LaunchedEffect
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
        DisposableEffect(owner, view) {
            val observer = LifecycleEventObserver { _, _ -> started = owner.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED) }
            val tree = view.viewTreeObserver
            val listener = android.view.ViewTreeObserver.OnWindowFocusChangeListener { focused = it }
            owner.lifecycle.addObserver(observer); tree.addOnWindowFocusChangeListener(listener)
            onDispose {
                owner.lifecycle.removeObserver(observer)
                if (tree.isAlive) tree.removeOnWindowFocusChangeListener(listener)
                returnToSong?.cancel()
            }
        }
        val latest = rememberUpdatedState(lyrics)
        val frameElapsed = remember { mutableLongStateOf(SystemClock.elapsedRealtime()) }
        val words = remember(emphasized, lyrics.lines) {
            emphasized.sorted().flatMap { index -> lyrics.lines[index].let { it.words + it.backgroundWords } }
        }
        val needsWordFrames = words.isNotEmpty()
        val moving by remember(latest, frameElapsed, visible, needsWordFrames, gap) {
            derivedStateOf(structuralEqualityPolicy()) {
                val now = latest.value
                val position = lyricPositionAt(now, frameElapsed.longValue)
                visible && now.timed && now.timelineReady && now.playbackSpeed > 0f && position >= 0L &&
                    (needsWordFrames || gap) && (now.durationMs <= 0L || position < now.durationMs)
            }
        }
        LaunchedEffect(moving) {
            frameElapsed.longValue = SystemClock.elapsedRealtime()
            if (moving) while (isActive) {
                withFrameNanos { frameElapsed.longValue = SystemClock.elapsedRealtime() }
                // Only the derived boolean cancels this driver. A same-frame seek can
                // restore true before composition observes false; its existing job stays alive.
            }
        }
        val dotPaint = remember { Paint(Paint.ANTI_ALIAS_FLAG) }
        val radius = with(density) { 3.dp.toPx() }
        val step = with(density) { 14.dp.toPx() }
        val rowTopList = remember(tops, measured.size) { tops.take(measured.size) }
        val waitTopList = remember(flow) { flow.waitTops.toList() }
        Canvas(Modifier.fillMaxSize().pointerInput(lyrics.recordingKey, tops, height, origin) {
            fun resumeLater() {
                returnToSong?.cancel()
                if (lyrics.timed) returnToSong = scope.launch { delay(4_000L); browsingTravel = null }
            }
            detectVerticalDragGestures(
                onDragStart = { returnToSong?.cancel(); browsingTravel = travel.value },
                onDragEnd = { resumeLater() }, onDragCancel = { resumeLater() },
            ) { change, amount ->
                change.consume()
                val minimum = minOf(height * .41f - tops.last(), height * .41f)
                browsingTravel = ((browsingTravel ?: travel.value) + amount)
                    .coerceIn(minimum - origin, height * .52f - origin)
            }
        }.semantics {
            val now = latest.value
            val position = lyricPositionAt(now, frameElapsed.longValue)
            this[ActiveLyric] = active
            this[LyricTextInset] = inset
            this[LyricFontPixels] = metrics.main
            this[LyricActiveFontPixels] = metrics.activeMain
            this[LyricRowHeights] = heights
            this[LyricWordProgress] = words.firstOrNull()?.let { lyricWordFraction(it, position) } ?: 0f
            this[LyricScrollAnchor] = lyrics.scrollIndex
            this[LyricScrollOffset] = origin + travel.value
            this[LyricActiveRows] = singing.sorted()
            this[LyricEmphasizedRows] = emphasized.sorted()
            this[LyricRowTops] = rowTopList
            this[LyricWaitRowTops] = waitTopList
            this[LyricWaitRowHeight] = waitHeight
            this[LyricGapSlotIndex] = if (gap && position in lyrics.gapStartMs until lyrics.gapEndMs) gapSlot else -1
            this[LyricGapProgress] = if (gap) lyricGapFraction(lyrics, position) else 0f
            this[LyricFrameRunning] = moving
            this[LyricPreparedSliceCount] = slices.size
            this[LyricFallbackSliceCount] = missing.size
            this[LyricRasterizations] = cache.rasterizations
            text = AnnotatedString(lyrics.lines.getOrNull(active.takeIf { it >= 0 } ?: focus)?.text.orEmpty())
            stateDescription = if (!lyrics.timed) "静态歌词" else if (lyrics.timelineReady) "同步歌词" else "等待可信播放进度"
        }) {
            val now = latest.value
            val position = lyricPositionAt(now, frameElapsed.longValue)
            val offset = origin + travel.value
            drawIntoCanvas { canvas ->
                val native = canvas.nativeCanvas
                val saved = native.save()
                // Ink shaders carry the vertical edge fade: no viewport-sized offscreen DST_IN layer.
                native.clipRect(inset, 0f, size.width - inset, size.height)
                native.translate(inset, 0f)
                painter.draw(native, slices, measured, tops, cache, offset, emphasized, focus, now, position, dark, fallback = missing)
                native.restoreToCount(saved)
                if (gap && position in lyrics.gapStartMs until lyrics.gapEndMs) {
                    val progress = lyricGapFraction(now, position)
                    val y = flow.waitTops[gapSlot] + offset + waitHeight / 2f
                    dotPaint.color = if (dark) NativeColor.WHITE else NativeColor.rgb(39, 48, 59)
                    repeat(3) { index ->
                        dotPaint.alpha = ((.35f + .55f * (progress * 3f - index).coerceIn(0f, 1f)) * 255).roundToInt()
                        native.drawCircle(inset + radius + step * index, y, radius, dotPaint)
                    }
                }
            }
        }
    }
}

internal fun lyricPositionAt(lyrics: LyricsState, nowElapsedMs: Long): Long {
    if (!lyrics.timelineReady || lyrics.positionMs < 0L) return -1L
    val elapsed = if (lyrics.capturedAtMs > 0L) (nowElapsedMs - lyrics.capturedAtMs).coerceAtLeast(0L) else 0L
    val projected = lyrics.positionMs + (elapsed * lyrics.playbackSpeed.coerceAtLeast(0f)).toLong()
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
private data class LyricCoordinates(val geometry: LyricGeometry, val origin: Float)

/** Pure visible-layout migration, never a playback cursor. */
internal fun lyricGeometryShift(previous: LyricGeometry, next: LyricGeometry, oldOffset: Float): Float {
    if (previous === next || previous.lines.isEmpty() || next.lines.isEmpty()) return 0f
    val oldIndex = previous.lines.indices.minBy {
        kotlin.math.abs(previous.tops[it] + previous.heights[it] / 2f + oldOffset - previous.viewportHeight * .41f)
    }
    val oldLine = previous.lines[oldIndex]
    val exact = next.lines.indices.filter { next.lines[it].text == oldLine.text && next.lines[it].timeMs == oldLine.timeMs }
    val sameText = next.lines.indices.filter { next.lines[it].text == oldLine.text }
    val candidates = exact.ifEmpty { sameText }.ifEmpty {
        if (oldLine.timeMs >= 0L) next.lines.indices.filter { next.lines[it].timeMs >= 0L } else emptyList()
    }
    val newIndex = candidates.minByOrNull { kotlin.math.abs(next.lines[it].timeMs - oldLine.timeMs) }
        ?: oldIndex.coerceAtMost(next.lines.lastIndex)
    val oldCenter = previous.tops[oldIndex] + previous.heights[oldIndex] / 2f + oldOffset
    val newCenter = if (previous.viewportHeight > 0f) oldCenter * next.viewportHeight / previous.viewportHeight else oldCenter
    return newCenter - next.tops[newIndex] - next.heights[newIndex] / 2f - oldOffset
}

internal fun lyricEmphasizedRows(lyrics: LyricsState,
    singing: Set<Int> = lyrics.activeIndices.ifEmpty { listOfNotNull(lyrics.activeIndex.takeIf { it >= 0 }) }
        .filter { it in lyrics.lines.indices }.toSet(),
    waiting: Boolean = lyrics.gapStartMs >= 0L,
): Set<Int> = singing + listOfNotNull(lyrics.scrollIndex.takeIf {
    lyrics.timed && lyrics.timelineReady && !waiting && it in lyrics.lines.indices &&
        (lyrics.durationMs <= 0L || lyrics.positionMs < lyrics.durationMs)
})
