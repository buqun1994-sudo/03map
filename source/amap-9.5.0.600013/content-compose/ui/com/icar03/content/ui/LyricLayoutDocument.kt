package com.icar03.content.ui

import android.graphics.Typeface
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.withContext
import kotlin.math.roundToInt

/** Immutable layout facts, deliberately independent of position, current row and playback speed. */
internal data class LyricLayoutRequest(
    val lines: List<LyricLine>, val width: Int, val metrics: LyricMetrics,
    val face: Typeface, val cjk: Typeface, val baseInset: Float = 0f,
)
internal data class LyricLayoutDocument(val request: LyricLayoutRequest, val rows: List<NativeLyricRow>)

/** An admitted document and its matching presentation source always move together. */
internal data class LyricPresentation(val document: LyricLayoutDocument, val source: LyricsState)
internal class LyricPresentationHolder(var value: LyricPresentation? = null)

/** Whole-document shaping is published atomically; neither shaping nor raster work runs in a frame. */
internal suspend fun prepareLyricDocument(request: LyricLayoutRequest,
    dispatcher: CoroutineDispatcher): LyricLayoutDocument = withContext(dispatcher) {
    val context = currentCoroutineContext()
    val rows = request.lines.map { line ->
        context.ensureActive()
        prepareLyricRow(line, request.width, request.metrics, request.face, request.cjk, request.baseInset.roundToInt())
    }
    context.ensureActive()
    LyricLayoutDocument(request, rows)
}
