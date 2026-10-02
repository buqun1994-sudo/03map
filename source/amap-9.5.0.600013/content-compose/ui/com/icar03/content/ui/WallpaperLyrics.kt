package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.BlurMaskFilter
import android.graphics.Canvas as NativeCanvas
import android.graphics.Color as NativeColor
import android.graphics.LinearGradient
import android.graphics.Paint
import android.graphics.Path
import android.graphics.PorterDuff
import android.graphics.PorterDuffXfermode
import android.graphics.Shader
import android.graphics.Typeface
import android.os.SystemClock
import android.text.Layout
import android.text.StaticLayout
import android.text.TextPaint
import androidx.compose.animation.core.CubicBezierEasing
import androidx.compose.animation.core.animateFloatAsState
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
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.platform.LocalView
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.compose.ui.semantics.*
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlin.math.max
import kotlin.math.roundToInt

internal val ActiveLyric = SemanticsPropertyKey<Int>("ActiveLyric")
internal val LyricTextInset = SemanticsPropertyKey<Float>("LyricTextInset")
internal val LyricFontPixels = SemanticsPropertyKey<Float>("LyricFontPixels")
internal val LyricRowHeights = SemanticsPropertyKey<List<Int>>("LyricRowHeights")
internal val LyricWordProgress = SemanticsPropertyKey<Float>("LyricWordProgress")
internal val LyricScrollAnchor = SemanticsPropertyKey<Int>("LyricScrollAnchor")
internal val LyricActiveRows = SemanticsPropertyKey<List<Int>>("LyricActiveRows")
internal val LyricGapProgress = SemanticsPropertyKey<Float>("LyricGapProgress")
internal val LyricFrameRunning = SemanticsPropertyKey<Boolean>("LyricFrameRunning")

/** Stable whole-song geometry; only nearby rows are rasterized and only timed words need frames. */
@Composable
internal fun WallpaperLyrics(lyrics: LyricsState, dark: Boolean, modifier: Modifier = Modifier) {
    BoxWithConstraints(modifier.fillMaxSize().clipToBounds().testTag("wallpaper-lyrics")) {
        val density = LocalDensity.current
        val inset = with(density) { 48.dp.toPx() }
        val width = with(density) { maxWidth.toPx() }.minus(inset * 2f).roundToInt().coerceAtLeast(1)
        val height = with(density) { maxHeight.toPx() }
        val metrics = with(density) { LyricMetrics(36.sp.toPx(), 22.sp.toPx(), 20.sp.toPx(), 14.dp.toPx(), 4.dp.toPx()) }
        val active = lyrics.activeIndex.coerceIn(-1, lyrics.lines.lastIndex)
        val singing = lyrics.activeIndices.ifEmpty { listOfNotNull(active.takeIf { it >= 0 }) }
            .filter { it in lyrics.lines.indices }.toSet()
        val focus = max(0, if (lyrics.scrollIndex >= 0) lyrics.scrollIndex else active)
            .coerceAtMost(max(0, lyrics.lines.lastIndex))
        val measured = remember(lyrics.lines, width, dark, metrics) {
            lyrics.lines.map { prepareRow(it, width, metrics, false, dark, 3, false) }
        }
        val tops = remember(measured) {
            FloatArray(measured.size + 1).also { positions ->
                measured.forEachIndexed { index, row -> positions[index + 1] = positions[index] + row.height }
            }
        }
        val followTarget = if (measured.isEmpty()) 0f else if (!lyrics.timed) metrics.padding
            else height * .41f - tops[focus] - measured[focus].height / 2f
        var browsingOffset by remember(lyrics.recordingKey) { mutableStateOf<Float?>(null) }
        val scope = rememberCoroutineScope()
        var returnToSong by remember { mutableStateOf<Job?>(null) }
        val target = browsingOffset ?: followTarget
        val offset by animateFloatAsState(target,
            tween(if (browsingOffset == null) 450 else 0, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)),
            label = "wallpaper-lyrics-position")
        val rendered = remember(lyrics.lines, singing, focus, width, dark, metrics, browsingOffset, height) {
            val visible = if (browsingOffset != null || !lyrics.timed) measured.indices.filter {
                tops[it] + target + measured[it].height >= -height && tops[it] + target <= height * 2f
            } else (max(0, focus - 7)..minOf(measured.lastIndex, focus + 7)).toList()
            visible.associateWith { index ->
                prepareRow(lyrics.lines[index], width, metrics, index in singing, dark,
                    kotlin.math.abs(index - focus), index < focus - 2).let { it to it.rasterize() }
            }
        }
        val owner = LocalLifecycleOwner.current
        val view = LocalView.current
        var started by remember(owner) { mutableStateOf(owner.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)) }
        var focused by remember(view) { mutableStateOf(view.hasWindowFocus()) }
        val visible = started && focused && LocalIconVisible.current
        DisposableEffect(owner, view) {
            val observer = LifecycleEventObserver { _, _ -> started = owner.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED) }
            val tree = view.viewTreeObserver
            val focusListener = android.view.ViewTreeObserver.OnWindowFocusChangeListener { focused = it }
            owner.lifecycle.addObserver(observer)
            tree.addOnWindowFocusChangeListener(focusListener)
            onDispose {
                owner.lifecycle.removeObserver(observer)
                if (tree.isAlive) tree.removeOnWindowFocusChangeListener(focusListener)
                returnToSong?.cancel()
            }
        }
        val latest by rememberUpdatedState(lyrics)
        var frameElapsed by remember { mutableLongStateOf(SystemClock.elapsedRealtime()) }
        val words = singing.sorted().flatMap { index ->
            lyrics.lines.getOrNull(index)?.let { it.words + it.backgroundWords }.orEmpty()
        }
        val gap = lyrics.timelineReady && lyrics.gapStartMs >= 0L && lyrics.gapEndMs > lyrics.gapStartMs
        val moving = visible && lyrics.timelineReady && lyrics.playbackSpeed > 0f &&
            (words.isNotEmpty() || gap) && (lyrics.durationMs <= 0L || lyrics.positionMs < lyrics.durationMs)
        LaunchedEffect(singing, words, moving, lyrics.timelineReady, lyrics.playbackSpeed, visible, gap) {
            frameElapsed = SystemClock.elapsedRealtime()
            if (moving) {
                while (latest.durationMs <= 0L || lyricPositionAt(latest, frameElapsed) < latest.durationMs) {
                    withFrameNanos { frameElapsed = SystemClock.elapsedRealtime() }
                }
            }
        }
        val position = lyricPositionAt(latest, frameElapsed)
        val imagePaint = remember { Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG) }
        val mask = remember(height, metrics) {
            val edge = (metrics.main * 1.5f / height.coerceAtLeast(1f)).coerceIn(0f, .25f)
            Paint().apply {
                shader = LinearGradient(0f, 0f, 0f, height.coerceAtLeast(1f),
                    intArrayOf(NativeColor.TRANSPARENT, NativeColor.BLACK, NativeColor.BLACK, NativeColor.TRANSPARENT),
                    floatArrayOf(0f, edge, 1f - edge, 1f), Shader.TileMode.CLAMP)
                xfermode = PorterDuffXfermode(PorterDuff.Mode.DST_IN)
            }
        }
        Canvas(Modifier.fillMaxSize().pointerInput(lyrics.recordingKey, tops, height) {
            fun resumeLater() {
                returnToSong?.cancel()
                if (lyrics.timed) returnToSong = scope.launch { delay(4_000L); browsingOffset = null }
            }
            detectVerticalDragGestures(
                onDragStart = { returnToSong?.cancel(); browsingOffset = offset },
                onDragEnd = { resumeLater() }, onDragCancel = { resumeLater() },
            ) { change, amount ->
                change.consume()
                val minimum = minOf(height * .41f - tops.last(), height * .41f)
                browsingOffset = ((browsingOffset ?: offset) + amount).coerceIn(minimum, height * .52f)
            }
        }.semantics {
            this[ActiveLyric] = active
            this[LyricTextInset] = inset
            this[LyricFontPixels] = metrics.main
            this[LyricRowHeights] = measured.map { it.height }
            this[LyricWordProgress] = words.firstOrNull()?.let { lyricWordFraction(it, position) } ?: 0f
            this[LyricScrollAnchor] = lyrics.scrollIndex
            this[LyricActiveRows] = singing.sorted()
            this[LyricGapProgress] = lyricGapFraction(lyrics, position)
            this[LyricFrameRunning] = moving
            text = AnnotatedString(lyrics.lines.getOrNull(active.takeIf { it >= 0 } ?: focus)?.text.orEmpty())
            stateDescription = if (!lyrics.timed) "静态歌词" else if (lyrics.timelineReady) "同步歌词" else "等待可信播放进度"
        }) {
            drawIntoCanvas { canvas ->
                val native = canvas.nativeCanvas
                val saved = native.saveLayer(0f, 0f, size.width, size.height, null)
                rendered.forEach { (index, prepared) ->
                    val (row, bitmap) = prepared
                    val y = tops[index] + offset
                    if (y + bitmap.height >= 0 && y <= size.height) {
                        native.drawBitmap(bitmap, (size.width - width) / 2f, y, imagePaint)
                        if (index in singing && lyrics.timelineReady) {
                            val transform = native.save()
                            native.translate((size.width - width) / 2f, y + row.padding)
                            row.drawWords(native, lyrics.lines[index], position)
                            native.restoreToCount(transform)
                        }
                    }
                }
                if (gap && position in lyrics.gapStartMs until lyrics.gapEndMs) {
                    val progress = lyricGapFraction(lyrics, position)
                    val radius = with(density) { 3.dp.toPx() }
                    val step = with(density) { 14.dp.toPx() }
                    val y = if (lyrics.scrollIndex < 0) height * .25f
                        else minOf(height * .75f, tops[focus + 1] + offset + metrics.padding)
                    val paint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
                        color = if (dark) NativeColor.WHITE else NativeColor.rgb(39, 48, 59)
                    }
                    repeat(3) { index ->
                        paint.alpha = ((.35f + .55f * (progress * 3f - index).coerceIn(0f, 1f)) * 255).roundToInt()
                        native.drawCircle(inset + radius + step * index, y, radius, paint)
                    }
                }
                native.drawRect(0f, 0f, size.width, size.height, mask)
                native.restoreToCount(saved)
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
    return ((positionMs - lyrics.gapStartMs).toDouble() / (lyrics.gapEndMs - lyrics.gapStartMs))
        .toFloat().coerceIn(0f, 1f)
}

internal fun lyricWordFraction(word: LyricWord, positionMs: Long): Float {
    if (positionMs < 0L || word.endTimeMs <= word.startTimeMs) return 0f
    return ((positionMs - word.startTimeMs).toDouble() / (word.endTimeMs - word.startTimeMs)).toFloat().coerceIn(0f, 1f)
}

private data class LyricMetrics(val main: Float, val translation: Float, val romanization: Float, val padding: Float, val gap: Float)

private data class NativeLyricRow(
    val original: StaticLayout, val translation: StaticLayout?, val romanization: StaticLayout?,
    val highlight: StaticLayout?, val padding: Int, val gap: Int,
    val background: StaticLayout?, val backgroundHighlight: StaticLayout?, val backgroundText: String,
) {
    val backgroundTop: Int get() = original.height +
        (romanization?.let { gap + it.height } ?: 0) + (translation?.let { gap + it.height } ?: 0) + gap
    val height: Int = padding * 2 + original.height +
        (romanization?.let { gap + it.height } ?: 0) + (translation?.let { gap + it.height } ?: 0) +
        (background?.let { gap + it.height } ?: 0)

    fun rasterize(): Bitmap = Bitmap.createBitmap(original.width, height, Bitmap.Config.ARGB_8888).also { bitmap ->
        val canvas = NativeCanvas(bitmap)
        canvas.translate(0f, padding.toFloat())
        original.draw(canvas)
        var bottom = original.height
        for (layout in listOfNotNull(romanization, translation, background)) {
            canvas.translate(0f, (bottom + gap).toFloat())
            layout.draw(canvas)
            bottom = layout.height
        }
    }

    fun drawWords(canvas: NativeCanvas, line: LyricLine, position: Long) {
        highlight?.let { drawTimedText(canvas, it, line.text, line.words, position) }
        backgroundHighlight?.let {
            val saved = canvas.save()
            canvas.translate(0f, backgroundTop.toFloat())
            drawTimedText(canvas, it, backgroundText, line.backgroundWords, position)
            canvas.restoreToCount(saved)
        }
    }

    private fun drawTimedText(canvas: NativeCanvas, layout: StaticLayout, text: String,
        words: List<LyricWord>, position: Long) {
        var cursor = 0
        val selection = Path()
        for (word in words) {
            val start = text.indexOf(word.text, cursor)
            if (start < 0 || word.text.isEmpty()) continue
            val end = start + word.text.length
            cursor = end
            val fraction = lyricWordFraction(word, position)
            if (fraction <= 0f) continue
            var segmentStart = start
            val segments = mutableListOf<WordSegment>()
            while (segmentStart < end) {
                val row = layout.getLineForOffset(segmentStart)
                val segmentEnd = minOf(end, layout.getLineEnd(row))
                if (segmentEnd <= segmentStart) break
                val x1 = layout.getPrimaryHorizontal(segmentStart)
                val x2 = if (segmentEnd == layout.getLineEnd(row)) {
                    if (layout.getParagraphDirection(row) < 0) layout.getLineLeft(row) else layout.getLineRight(row)
                } else layout.getPrimaryHorizontal(segmentEnd)
                segments += WordSegment(segmentStart, segmentEnd, minOf(x1, x2), maxOf(x1, x2), row, x2 < x1)
                segmentStart = segmentEnd
            }
            var remaining = segments.sumOf { (it.right - it.left).toDouble() }.toFloat() * fraction
            for (segment in segments) {
                val length = segment.right - segment.left
                val fill = minOf(length, remaining).coerceAtLeast(0f)
                remaining -= fill
                if (fill == 0f) continue
                selection.reset()
                layout.getSelectionPath(segment.start, segment.end, selection)
                val saved = canvas.save()
                canvas.clipPath(selection)
                canvas.clipRect(if (segment.rtl) segment.right - fill else segment.left,
                    layout.getLineTop(segment.row).toFloat(),
                    if (segment.rtl) segment.right else segment.left + fill,
                    layout.getLineBottom(segment.row).toFloat())
                layout.draw(canvas)
                canvas.restoreToCount(saved)
            }
        }
    }
}

private data class WordSegment(val start: Int, val end: Int, val left: Float, val right: Float, val row: Int, val rtl: Boolean)

private fun prepareRow(line: LyricLine, width: Int, metrics: LyricMetrics, active: Boolean, dark: Boolean, distance: Int, past: Boolean): NativeLyricRow {
    val color = if (dark) NativeColor.WHITE else NativeColor.rgb(39, 48, 59)
    val opacity = if (active) 1f else if (distance <= 2) .63f else if (past) .34f else .43f
    val blur = if (active) 0f else if (distance <= 2) 1.5f else if (past) 2.5f else 2.3f
    fun layout(text: String, fontSize: Float, alpha: Float, softened: Boolean = true): StaticLayout {
        val paint = TextPaint(Paint.ANTI_ALIAS_FLAG).apply {
            this.color = color
            this.alpha = (alpha * 255).roundToInt()
            textSize = fontSize
            typeface = Typeface.create("sans-serif", Typeface.BOLD)
            if (softened && blur > 0f) maskFilter = BlurMaskFilter(blur, BlurMaskFilter.Blur.NORMAL)
            setShadowLayer(if (dark) 4f else 2f, 0f, 1f, if (dark) 0x60000000 else 0x22000000)
        }
        return StaticLayout.Builder.obtain(text, 0, text.length, paint, width)
            .setAlignment(when (line.side) {
                LyricSide.Trailing -> Layout.Alignment.ALIGN_OPPOSITE
                LyricSide.Center -> Layout.Alignment.ALIGN_CENTER
                else -> Layout.Alignment.ALIGN_NORMAL
            }).setIncludePad(false)
            .setLineSpacing(0f, 1.3f)
            .setBreakStrategy(android.graphics.text.LineBreaker.BREAK_STRATEGY_SIMPLE).build()
    }
    val timed = active && line.words.isNotEmpty()
    val backgroundText = line.backgroundWords.joinToString("") { it.text }
    return NativeLyricRow(layout(line.text, metrics.main, if (timed) .4f else opacity),
        line.translation.takeIf(String::isNotBlank)?.let { layout(it, metrics.translation, opacity * .8f) },
        line.romanization.takeIf(String::isNotBlank)?.let { layout(it, metrics.romanization, opacity * .65f) },
        if (timed) layout(line.text, metrics.main, 1f, false) else null,
        metrics.padding.roundToInt(), metrics.gap.roundToInt(),
        backgroundText.takeIf(String::isNotBlank)?.let { layout(it, metrics.translation, if (active) .35f else opacity * .6f) },
        if (active && backgroundText.isNotBlank()) layout(backgroundText, metrics.translation, .9f, false) else null,
        backgroundText)
}
