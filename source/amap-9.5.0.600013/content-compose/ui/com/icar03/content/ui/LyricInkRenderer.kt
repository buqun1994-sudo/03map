package com.icar03.content.ui

import android.content.res.AssetManager
import android.graphics.*
import android.icu.text.BreakIterator
import android.text.Layout
import android.text.StaticLayout
import android.graphics.text.LineBreaker
import android.text.TextPaint
import android.text.SpannableString
import android.text.Spanned
import android.text.style.TypefaceSpan
import android.util.LruCache
import java.util.Locale
import java.text.Bidi
import kotlin.math.*

/** Rendering policy, not a media timeline. All dimensions below are converted once by the host. */
internal object LyricVisuals {
    const val MAIN_SP = 40f
    const val CURRENT_SP = 48f
    const val INACTIVE_BLUR_DP = 3f
    const val UNSUNG_ALPHA = .38f
    const val NEAR_ALPHA = .48f
    const val FAR_ALPHA = .30f
    const val PAST_ALPHA = .24f
    const val LIFT_DP = 2.5f
    const val CHARACTER_RISE_DURATION_MS = 1_000L
    const val FEATHER_EM = .16f
    const val CACHE_BYTES = 12 * 1024 * 1024
}

internal data class LyricMetrics(
    val main: Float, val activeMain: Float, val translation: Float, val romanization: Float,
    val padding: Float, val gap: Float, val blur: Float, val lift: Float,
)

internal fun lyricTypeface(assets: AssetManager): Typeface = runCatching {
    // Existing OFL asset, not Apple's restricted SF font. CJK uses Android's weighted fallback.
    Typeface.Builder(assets, "content-fonts/Manrope[wght].ttf")
        .setFontVariationSettings("'wght' 800").setWeight(800).build()
}.getOrElse { Typeface.create(Typeface.create("sans-serif", Typeface.NORMAL), 800, false) }

internal fun lyricCjkTypeface(assets: AssetManager): Typeface = runCatching {
    Typeface.Builder(assets, "content-fonts/NotoSansSC-ExtraBold.ttf").setWeight(800).build()
}.getOrElse { Typeface.create("sans-serif", Typeface.BOLD) }

private fun lyricShapedText(text: String, cjk: Typeface): CharSequence {
    val result = SpannableString(text)
    var index = 0
    var start = -1
    while (index < text.length) {
        val cp = text.codePointAt(index)
        val script = Character.UnicodeScript.of(cp)
        val isCjk = script == Character.UnicodeScript.HAN || script == Character.UnicodeScript.HIRAGANA ||
            script == Character.UnicodeScript.KATAKANA || script == Character.UnicodeScript.HANGUL ||
            cp in 0x3000..0x303f || cp in 0xff00..0xff60 || cp == 0x30fc ||
            (start >= 0 && script == Character.UnicodeScript.INHERITED)
        if (isCjk && start < 0) start = index
        if (!isCjk && start >= 0) {
            result.setSpan(TypefaceSpan(cjk), start, index, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
            start = -1
        }
        index += Character.charCount(cp)
    }
    if (start >= 0) result.setSpan(TypefaceSpan(cjk), start, index, Spanned.SPAN_EXCLUSIVE_EXCLUSIVE)
    return result
}

/**
 * Fixed-duration ease-out rise for one visual unit.
 *
 * The source word interval still determines when a unit starts, while the visual
 * animation always lasts about one second. A negative result means the unit is
 * outside its animation window and should stay on its baseline.
 */
internal fun lyricCharacterRiseProgress(word: LyricWord, startFraction: Float, endFraction: Float,
    position: Long): Float {
    if (word.endTimeMs <= word.startTimeMs || endFraction <= startFraction) return -1f
    val wordDuration = (word.endTimeMs - word.startTimeMs).toDouble()
    val onset = word.startTimeMs + wordDuration * startFraction
    val elapsed = position.toDouble() - onset
    val duration = LyricVisuals.CHARACTER_RISE_DURATION_MS.toDouble()
    if (elapsed < 0.0 || elapsed >= duration) return -1f
    val t = (elapsed / duration).toFloat().coerceIn(0f, 1f)
    val remaining = 1f - t
    // Ease-out cubic: the unit leaves the lower baseline quickly, then settles gently.
    return 1f - remaining * remaining * remaining
}

internal fun lyricGraphemeBoundaries(text: String): IntArray {
    val breaker = BreakIterator.getCharacterInstance(Locale.ROOT)
    breaker.setText(text)
    val result = ArrayList<Int>()
    var boundary = breaker.first()
    while (boundary != BreakIterator.DONE) { result += boundary; boundary = breaker.next() }
    return result.toIntArray()
}

/** Coarsen actual ligatures from the locked Manrope GSUB; keep the original shaped layout intact. */
internal fun lyricMotionBoundaries(text: String): IntArray {
    val boundaries = lyricGraphemeBoundaries(text)
    val merged = ArrayList<Int>()
    merged += 0
    var cursor = 0
    while (cursor < text.length) {
        val ligature = MANROPE_LIGATURES.firstOrNull { text.startsWith(it, cursor) }
        cursor = if (ligature != null) {
            val end = cursor + ligature.length
            val found = boundaries.binarySearch(end)
            if (found >= 0) end else boundaries[-found - 1]
        } else {
            val found = boundaries.binarySearch(cursor)
            boundaries[if (found >= 0) found + 1 else -found - 1]
        }
        merged += cursor
    }
    return merged.toIntArray()
}
private val MANROPE_LIGATURES = listOf(" <3 ", "ffl", "ffi", "(c)", "(>)", "ff", "fi", "fl", "tt", "->", "--", "<-")

/** Joining scripts retain the complete shaped tile and fade, without tearing it into moving letters. */
private fun independentlyMovable(text: String): Boolean = text.codePoints().allMatch { cp ->
    when (Character.UnicodeScript.of(cp)) {
        Character.UnicodeScript.LATIN, Character.UnicodeScript.HAN, Character.UnicodeScript.HIRAGANA,
        Character.UnicodeScript.KATAKANA, Character.UnicodeScript.HANGUL, Character.UnicodeScript.GREEK,
        Character.UnicodeScript.CYRILLIC, Character.UnicodeScript.COMMON, Character.UnicodeScript.INHERITED -> true
        else -> false
    }
}

internal class LyricReveal(
    val word: LyricWord, val left: Float, val right: Float, val rtl: Boolean,
    val before: Float, val total: Float, private val feather: Float,
) {
    private val matrix = Matrix()
    val gradient: Shader = LinearGradient(-feather / 2f, 0f, feather / 2f, 0f,
        if (rtl) intArrayOf(Color.argb((LyricVisuals.UNSUNG_ALPHA * 255).roundToInt(), 255, 255, 255), Color.WHITE)
        else intArrayOf(Color.WHITE, Color.argb((LyricVisuals.UNSUNG_ALPHA * 255).roundToInt(), 255, 255, 255)),
        null, Shader.TileMode.CLAMP)
    var fraction: Float = 0f
        private set
    fun sample(position: Long) {
        val next = lyricWordFraction(word, position)
        if (next == fraction) return
        fraction = next
        // Complete the feather inside the original word interval, including each wrapped fragment.
        val fill = -feather / 2f + fraction * (total + feather) - before
        // The ramp moves continuously beyond the glyph bounds. Clamping at 0/width
        // would abruptly reveal half a feather at the first/last letter.
        val front = if (rtl) right - fill else left + fill
        matrix.setTranslate(front, 0f)
        gradient.setLocalMatrix(matrix)
    }
}

internal data class LyricGlyph(
    val bounds: RectF, val reveal: LyricReveal?, val startFraction: Float = 0f,
    val endFraction: Float = 1f, val movable: Boolean = true,
    val revealIndex: Int = -1,
)
internal data class LyricVisualLine(val index: Int, val top: Int, val bottom: Int,
    val glyphs: List<LyricGlyph>, val reveals: List<LyricReveal>, val pivotX: Float = 0f)

internal class LyricTrack(val layout: StaticLayout, val top: Float, val alpha: Float,
    val isMain: Boolean, val words: List<LyricWord>, val visualLines: List<LyricVisualLine>) {
    val rasterPaint = TextPaint(layout.paint) // Immutable style; the draw-only fallback owns layout.paint.
}
internal class NativeLyricRow(val tracks: List<LyricTrack>, val height: Int, val mainPivotX: Float)

internal fun prepareLyricRow(line: LyricLine, width: Int, metrics: LyricMetrics, face: Typeface, cjk: Typeface = face): NativeLyricRow {
    fun layout(text: String, fontSize: Float): StaticLayout {
        val paint = TextPaint(Paint.ANTI_ALIAS_FLAG or Paint.SUBPIXEL_TEXT_FLAG).apply {
            color = Color.WHITE; textSize = fontSize; typeface = face
        }
        val shaped = lyricShapedText(text, cjk)
        return StaticLayout.Builder.obtain(shaped, 0, shaped.length, paint, width)
            .setAlignment(when (line.side) {
                LyricSide.Trailing -> Layout.Alignment.ALIGN_OPPOSITE
                LyricSide.Center -> Layout.Alignment.ALIGN_CENTER
                else -> Layout.Alignment.ALIGN_NORMAL
            }).setIncludePad(false).setLineSpacing(0f, 1.3f)
            .setBreakStrategy(LineBreaker.BREAK_STRATEGY_SIMPLE).build()
    }
    val tracks = ArrayList<LyricTrack>()
    var top = metrics.padding
    fun add(text: String, size: Float, alpha: Float, main: Boolean, words: List<LyricWord> = emptyList()) {
        if (text.isBlank()) return
        val shaped = layout(text, size)
        tracks += LyricTrack(shaped, top, alpha, main, words, compileLyricInk(shaped, text, words, size))
        top += shaped.height + metrics.gap
    }
    add(line.text, metrics.activeMain, 1f, true, line.words)
    add(line.romanization, metrics.romanization, .62f, false)
    add(line.translation, metrics.translation, .76f, false)
    add(line.backgroundWords.joinToString("") { it.text }, metrics.translation, .9f, false, line.backgroundWords)
    return NativeLyricRow(tracks, (top - metrics.gap + metrics.padding).roundToInt().coerceAtLeast(1),
        when (line.side) { LyricSide.Trailing -> width.toFloat(); LyricSide.Center -> width / 2f; else -> 0f })
}

/** All string searches, caret queries, wrap segmentation and grapheme work happen once per immutable body. */
private fun compileLyricInk(layout: StaticLayout, text: String, words: List<LyricWord>, em: Float): List<LyricVisualLine> {
    val reveals = Array(layout.lineCount) { ArrayList<LyricReveal>() }
    val ranges = ArrayList<Triple<Int, Int, LyricReveal>>()
    data class DirectionRun(val start: Int, val end: Int, val rtl: Boolean)
    val paragraphStarts = (listOf(0) + text.indices.filter { text[it] == '\n' }.map { it + 1 }).distinct()
    val paragraphs = paragraphStarts.mapIndexed { index, start ->
        Bidi(text.substring(start, paragraphStarts.getOrElse(index + 1) { text.length }), Bidi.DIRECTION_DEFAULT_LEFT_TO_RIGHT)
    }
    val directionRuns = (0 until layout.lineCount).map { row ->
        val start = layout.getLineStart(row); val end = layout.getLineEnd(row)
        if (start == end) emptyList() else {
            val found = paragraphStarts.binarySearch(start)
            val paragraph = if (found >= 0) found else -found - 2
            val bidi = paragraphs[paragraph].createLineBidi(start - paragraphStarts[paragraph], end - paragraphStarts[paragraph])
            (0 until bidi.runCount).map { run -> DirectionRun(start + bidi.getRunStart(run),
                start + bidi.getRunLimit(run), bidi.getRunLevel(run) and 1 != 0) }.sortedBy { it.start }
        }
    }
    fun visualBounds(start: Int, end: Int, row: Int): Pair<Float, Float> {
        if (directionRuns[row].size == 1) {
            val x1 = layout.getPrimaryHorizontal(start)
            val x2 = if (end == layout.getLineEnd(row)) {
                if (directionRuns[row].first().rtl) layout.getLineLeft(row) else layout.getLineRight(row)
            } else layout.getPrimaryHorizontal(end)
            return min(x1, x2) to max(x1, x2)
        }
        // Primary caret affinity is ambiguous at a bidi boundary. Selection geometry is
        // resolved by the layout's shaper; clip it to this visual line before taking bounds.
        val selection = Path(); layout.getSelectionPath(start, end, selection)
        val clip = Path().apply { addRect(layout.getLineLeft(row), layout.getLineTop(row).toFloat(),
            layout.getLineRight(row), layout.getLineBottom(row).toFloat(), Path.Direction.CW) }
        selection.op(clip, Path.Op.INTERSECT)
        val bounds = RectF(); selection.computeBounds(bounds, true)
        return bounds.left to bounds.right
    }
    var cursor = 0
    for (word in words) {
        if (word.text.isEmpty()) continue
        val start = text.indexOf(word.text, cursor)
        if (start < 0) continue
        val end = start + word.text.length
        cursor = end
        data class Segment(val start: Int, val end: Int, val line: Int, val x1: Float, val x2: Float)
        val segments = ArrayList<Segment>()
        var offset = start
        while (offset < end) {
            val row = layout.getLineForOffset(offset)
            val stop = min(end, layout.getLineEnd(row))
            if (stop <= offset) break
            for (run in directionRuns[row]) {
                val a = max(offset, run.start); val b = min(stop, run.end)
                if (b <= a) continue
                val (left, right) = visualBounds(a, b, row)
                if (right <= left) continue
                segments += Segment(a, b, row, if (run.rtl) right else left, if (run.rtl) left else right)
            }
            offset = stop
        }
        val total = segments.sumOf { abs(it.x2 - it.x1).toDouble() }.toFloat().coerceAtLeast(1f)
        var before = 0f
        for (segment in segments) {
            val reveal = LyricReveal(word, min(segment.x1, segment.x2), max(segment.x1, segment.x2),
                segment.x2 < segment.x1, before, total, em * LyricVisuals.FEATHER_EM)
            reveals[segment.line] += reveal
            ranges += Triple(segment.start, segment.end, reveal)
            before += abs(segment.x2 - segment.x1)
        }
    }
    val boundaries = lyricMotionBoundaries(text)
    val safe = independentlyMovable(text)
    return (0 until layout.lineCount).map { row ->
        val top = layout.getLineTop(row); val bottom = layout.getLineBottom(row)
        val start = layout.getLineStart(row); val end = layout.getLineEnd(row)
        val glyphs = ArrayList<LyricGlyph>()
        // A real source-word boundary can cut through a ligature. Those pieces may fade,
        // but none may move independently: the original joined glyph stays at its baseline.
        val wordCuts = ranges.flatMap { listOf(it.first, it.second) }.filter { it in start..end }
        val runCuts = directionRuns[row].flatMap { listOf(it.start, it.end) }
        val cuts = ((if (safe) boundaries.filter { it in start..end } else listOf(start, end)) +
            wordCuts + runCuts + listOf(start, end)).distinct().sorted()
        for (i in 0 until cuts.lastIndex) {
            val a = cuts[i]; val b = cuts[i + 1]
            if (a >= b) continue
            // A whitespace selection cell can own contextual overhang or bidi-boundary ink.
            // Retain its original mask/reveal, but never give it independent motion.
            val blank = text.substring(a, b).isBlank()
            val (left, right) = visualBounds(a, b, row)
            if (right <= left) continue
            val reveal = ranges.firstOrNull { a >= it.first && b <= it.second }?.third
            val before = if (reveal?.rtl == true) reveal.right - right else left - (reveal?.left ?: left)
            val after = before + right - left
            glyphs += LyricGlyph(RectF(left, top.toFloat(), right, bottom.toFloat()), reveal,
                if (reveal == null) 0f else ((reveal.before + before) / reveal.total).coerceIn(0f, 1f),
                if (reveal == null) 1f else ((reveal.before + after) / reveal.total).coerceIn(0f, 1f),
                safe && !blank && boundaries.binarySearch(a) >= 0 && boundaries.binarySearch(b) >= 0,
                reveals[row].indexOf(reveal))
        }
        // ALIGN_NORMAL follows this paragraph's leading edge, not the host's LTR edge.
        // Compile it per visual line; inactive scaling must not drift RTL text horizontally.
        val rtl = layout.getParagraphDirection(row) == Layout.DIR_RIGHT_TO_LEFT
        val pivotX = when (layout.alignment) {
            Layout.Alignment.ALIGN_CENTER -> layout.width / 2f
            Layout.Alignment.ALIGN_OPPOSITE -> if (rtl) 0f else layout.width.toFloat()
            else -> if (rtl) layout.width.toFloat() else 0f
        }
        LyricVisualLine(row, top, bottom, glyphs, reveals[row], pivotX)
    }
}

private data class LyricRasterKey(val row: Int, val track: Int, val line: Int, val blur: Boolean)
internal class LyricInk(val bitmap: Bitmap, val bounds: RectF, edge: Shader, visual: LyricVisualLine, dynamic: Boolean = true) {
    private val source = BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP).apply {
        setLocalMatrix(Matrix().apply { setTranslate(bounds.left, bounds.top) })
    }
    val shader: Shader = ComposeShader(source, edge, PorterDuff.Mode.DST_IN)
    val highlight: List<Shader> = if (dynamic) visual.reveals.map { ComposeShader(shader, it.gradient, PorterDuff.Mode.DST_IN) } else emptyList()
    // Sharp-only metadata shares one raster read; soft masks need no source scan.
    // Inspect actual RGBA, not Unicode ranges: supplementary Han and IVS are not emoji.
    val colouredGlyphs = BooleanArray(visual.glyphs.size)
    val hasInk = BooleanArray(visual.glyphs.size)
    val clearMotionBoundary = BooleanArray(visual.glyphs.size)
    init {
        if (dynamic) {
            val pixels = IntArray(bitmap.width * bitmap.height)
            bitmap.getPixels(pixels, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
            visual.glyphs.forEachIndexed { index, glyph ->
                val left = (floor(glyph.bounds.left) - bounds.left).toInt().coerceIn(0, bitmap.width)
                val right = (ceil(glyph.bounds.right) - bounds.left).toInt().coerceIn(left, bitmap.width)
                for (y in 0 until bitmap.height) for (x in left until right) {
                    val pixel = pixels[y * bitmap.width + x]
                    if (pixel ushr 24 > 0) {
                        hasInk[index] = true
                        if (pixel and 0x00ffffff != 0x00ffffff) colouredGlyphs[index] = true
                    }
                }
                clearMotionBoundary[index] = true
            }
            // Grapheme/ligature cuts are not proof of isolated ink: kerning can put a
            // stroke across a shared caret. Inspect neighbours in visual, not source order.
            val order = visual.glyphs.indices.sortedBy { visual.glyphs[it].bounds.left }
            for (i in 0 until order.lastIndex) {
                val leftIndex = order[i]; val rightIndex = order[i + 1]
                val left = visual.glyphs[leftIndex].bounds; val right = visual.glyphs[rightIndex].bounds
                if (left.right != right.left) continue
                val boundary = left.right - bounds.left
                val cut = floor(boundary).toInt()
                if (cut !in 0 until bitmap.width) continue
                // An integer cut must have ink on both sides at the same y. A fractional
                // cut through any occupied source pixel is conservatively unsafe too.
                val fractional = boundary != cut.toFloat()
                val connected = (0 until bitmap.height).any { y ->
                    val at = y * bitmap.width + cut
                    pixels[at] ushr 24 > 0 && (fractional || (cut > 0 && pixels[at - 1] ushr 24 > 0))
                }
                if (connected) {
                    clearMotionBoundary[leftIndex] = false
                    clearMotionBoundary[rightIndex] = false
                }
            }
        }
    }
    val bytes: Int get() = bitmap.allocationByteCount
}
internal data class PreparedLyricSlice(val row: Int, val track: LyricTrack, val visual: LyricVisualLine,
    val sharp: LyricInk?, val soft: LyricInk, val address: LyricSliceAddress)

/** Byte-bounded, per-visual-line textures; no texture can grow to a whole extremely long paragraph. */
internal class LyricInkCache(private val rows: List<NativeLyricRow>, private val metrics: LyricMetrics, height: Float) {
    val viewportHeight = height
    private val edgeMatrix = Matrix()
    private val edge = LinearGradient(0f, 0f, 0f, height.coerceAtLeast(1f),
        intArrayOf(Color.TRANSPARENT, Color.WHITE, Color.WHITE, Color.TRANSPARENT),
        (metrics.main * 1.5f / height.coerceAtLeast(1f)).coerceIn(0f, .25f).let { floatArrayOf(0f, it, 1f - it, 1f) },
        Shader.TileMode.CLAMP)
    private val textures = object : LruCache<LyricRasterKey, LyricInk>(LyricVisuals.CACHE_BYTES) {
        override fun sizeOf(key: LyricRasterKey, value: LyricInk) = value.bytes
        // Published bitmaps must not be recycled: an in-flight RenderThread can still reference them.
    }
    private val workerLayouts = LruCache<LyricTrack, StaticLayout>(64)
    private fun workerLayout(track: LyricTrack): StaticLayout = workerLayouts.get(track) ?: run {
        val source = track.layout
        val paint = TextPaint(track.rasterPaint).apply { color = Color.WHITE }
        StaticLayout.Builder.obtain(source.text, 0, source.text.length, paint, source.width)
            .setAlignment(source.alignment).setIncludePad(false).setLineSpacing(0f, 1.3f)
            .setBreakStrategy(LineBreaker.BREAK_STRATEGY_SIMPLE).build().also { workerLayouts.put(track, it) }
    }
    var rasterizations = 0
        private set
    fun edgeAt(worldY: Float, scale: Float, pivotY: Float) {
        edgeMatrix.setScale(1f, 1f / scale)
        edgeMatrix.postTranslate(0f, (-worldY - (1f - scale) * pivotY) / scale)
        edge.setLocalMatrix(edgeMatrix)
    }
    fun prepare(window: List<LyricSliceAddress>, current: Set<Int>, focus: Int, allSharp: Boolean = false,
        checkCancellation: () -> Unit = {}): List<PreparedLyricSlice> = window.map { address ->
        checkCancellation()
        val track = rows[address.row].tracks[address.track]
        val visual = track.visualLines[address.line]
        fun get(blur: Boolean): LyricInk {
            val key = LyricRasterKey(address.row, address.track, address.line, blur)
            return textures.get(key) ?: rasterize(track, visual, blur).also { textures.put(key, it) }
        }
        val warm = allSharp || address.row in current || address.row in focus..focus + 2
        val sharp = if (warm) get(false) else null
        PreparedLyricSlice(address.row, track, visual, sharp, if (allSharp) sharp!! else get(true), address)
    }
    private fun rasterize(track: LyricTrack, visual: LyricVisualLine, blur: Boolean): LyricInk {
        val bounds = RectF(floor(track.layout.getLineLeft(visual.index)).coerceAtLeast(0f), visual.top.toFloat(),
            ceil(track.layout.getLineRight(visual.index)).coerceAtMost(track.layout.width.toFloat()), visual.bottom.toFloat())
        if (bounds.width() < 1f) bounds.right = bounds.left + 1f
        val image = Bitmap.createBitmap(bounds.width().toInt(), bounds.height().toInt(), Bitmap.Config.ARGB_8888)
        Canvas(image).apply {
            translate(-bounds.left, -bounds.top)
            clipRect(bounds)
            workerLayout(track).draw(this)
        }
        rasterizations++
        if (blur) return soften(image, bounds,
            if (track.isMain) metrics.blur * metrics.activeMain / metrics.main else metrics.blur, visual)
        return LyricInk(image, bounds, edge, visual)
    }
    private fun soften(source: Bitmap, sourceBounds: RectF, radius: Float, visual: LyricVisualLine): LyricInk {
        val shift = IntArray(2)
        val alpha = source.extractAlpha(Paint().apply { maskFilter = BlurMaskFilter(radius, BlurMaskFilter.Blur.NORMAL) }, shift)
        val image = Bitmap.createBitmap(alpha.width, alpha.height, Bitmap.Config.ARGB_8888)
        Canvas(image).drawBitmap(alpha, 0f, 0f, Paint().apply { color = Color.WHITE })
        // These inputs have never been published; only the immutable result reaches RenderThread.
        alpha.recycle(); source.recycle()
        val left = sourceBounds.left + shift[0]; val top = sourceBounds.top + shift[1]
        return LyricInk(image, RectF(left, top, left + image.width, top + image.height), edge, visual, dynamic = false)
    }
}
internal data class LyricSliceAddress(val row: Int, val track: Int, val line: Int)

/** Draw only the travel window, found by binary search rather than filtering all song rows every frame. */
internal fun lyricSliceWindow(rows: List<NativeLyricRow>, tops: FloatArray, offset: Float, height: Float): List<LyricSliceAddress> {
    if (rows.isEmpty()) return emptyList()
    var low = 0; var high = rows.size
    while (low < high) {
        val mid = (low + high) ushr 1
        if (tops[mid] + rows[mid].height + offset < -height) low = mid + 1 else high = mid
    }
    val result = ArrayList<LyricSliceAddress>()
    var row = low
    while (row < rows.size && tops[row] + offset <= height * 2f) {
        rows[row].tracks.forEachIndexed { trackIndex, track ->
            val y = tops[row] + offset + track.top
            val start = track.layout.getLineForVertical((-height - y).toInt().coerceAtLeast(0))
            val stop = track.layout.getLineForVertical((height * 2f - y).toInt().coerceAtLeast(0))
            for (line in start..stop) result += LyricSliceAddress(row, trackIndex, line)
        }
        row++
    }
    return result
}

internal class LyricInkPainter(private val metrics: LyricMetrics) {
    // Glyph antialiasing lives in the texture. AA on adjacent quads would cut dark seams through ligatures.
    private val paint = Paint(Paint.FILTER_BITMAP_FLAG)
    private val light = PorterDuffColorFilter(Color.rgb(39, 48, 59), PorterDuff.Mode.SRC_IN)
    private val dark = PorterDuffColorFilter(Color.WHITE, PorterDuff.Mode.SRC_IN)
    fun draw(canvas: Canvas, slices: List<PreparedLyricSlice>, rows: List<NativeLyricRow>, tops: FloatArray,
        cache: LyricInkCache, offset: Float, current: Set<Int>, focus: Int, lyrics: LyricsState, position: Long, dark: Boolean,
        fallback: List<LyricSliceAddress> = emptyList()) {
        paint.colorFilter = if (dark) this.dark else light
        for (slice in slices) {
            paint.colorFilter = if (dark) this.dark else light
            val track = slice.track
            val y = tops[slice.row] + offset + track.top
            @Suppress("DEPRECATION")
            if (canvas.quickReject(0f, y + slice.visual.top,
                    track.layout.width.toFloat(), y + slice.visual.bottom + metrics.lift, Canvas.EdgeType.AA)) continue
            val emphasized = slice.row in current
            val scale = if (track.isMain && !emphasized) metrics.main / metrics.activeMain else 1f
            // Scaling a huge paragraph around its centre can move the first screen offscreen.
            // Each visual line scales inside its premeasured slot, so slice selection stays valid.
            val pivotY = (slice.visual.top + slice.visual.bottom) / 2f
            val saved = canvas.save()
            canvas.translate(0f, y)
            canvas.scale(scale, scale, slice.visual.pivotX, pivotY)
            cache.edgeAt(y, scale, pivotY)
            val opacity = if (!lyrics.timed) .92f else if (emphasized) 1f else when {
                abs(slice.row - focus) <= 2 -> LyricVisuals.NEAR_ALPHA
                slice.row < focus - 2 -> LyricVisuals.PAST_ALPHA
                else -> LyricVisuals.FAR_ALPHA
            }
            val ink = if (emphasized || !lyrics.timed) slice.sharp ?: slice.soft else slice.soft
            val sharp = ink === slice.sharp
            val timed = sharp && lyrics.timed && emphasized && track.words.isNotEmpty()
            if (!timed && (!sharp || ink.colouredGlyphs.none { it })) {
                paint.shader = ink.shader; paint.alpha = (opacity * track.alpha * 255).roundToInt()
                canvas.drawRect(ink.bounds, paint)
            } else {
                val visual = slice.visual
                if (timed) for (reveal in visual.reveals) reveal.sample(position)
                for (glyphIndex in visual.glyphs.indices) {
                    if (!ink.hasInk[glyphIndex]) continue
                    val glyph = visual.glyphs[glyphIndex]
                    paint.colorFilter = if (ink.colouredGlyphs[glyphIndex]) null else if (dark) this.dark else light
                    val reveal = glyph.reveal
                    val rise = if (timed && glyph.movable && ink.clearMotionBoundary[glyphIndex] && lyrics.timelineReady && reveal != null)
                        lyricCharacterRiseProgress(reveal.word, glyph.startFraction, glyph.endFraction, position) else -1f
                    val transform = canvas.save()
                    if (rise >= 0f) canvas.translate(0f, metrics.lift * (1f - rise))
                    if (timed && lyrics.timelineReady && reveal != null && reveal.fraction > 0f) {
                        // One shaped alpha-mask pass: stacking a dim copy underneath would
                        // thicken antialiased edges and double-apply the viewport fade.
                        paint.shader = ink.highlight[glyph.revealIndex]
                        paint.alpha = (track.alpha * 255).roundToInt()
                    } else {
                        paint.shader = ink.shader
                        paint.alpha = ((if (!timed) opacity * track.alpha else
                            if (track.isMain) LyricVisuals.UNSUNG_ALPHA else .34f) * 255).roundToInt()
                    }
                    canvas.drawRect(glyph.bounds, paint)
                    canvas.restoreToCount(transform)
                }
            }
            canvas.restoreToCount(saved)
        }
        // Cold first display / a long seek can outrun the worker. Keep the original measured
        // shaped line visible without synchronously creating a bitmap, blur or new layout.
        // Precise feather/rise returns as soon as that immutable prepared slice is published.
        for (address in fallback) {
            val track = rows[address.row].tracks[address.track]
            val visual = track.visualLines[address.line]
            val y = tops[address.row] + offset + track.top
            @Suppress("DEPRECATION")
            if (canvas.quickReject(0f, y + visual.top, track.layout.width.toFloat(),
                    y + visual.bottom, Canvas.EdgeType.AA)) continue
            val emphasized = address.row in current
            val scale = if (track.isMain && !emphasized) metrics.main / metrics.activeMain else 1f
            val pivotY = (visual.top + visual.bottom) / 2f
            val opacity = if (!lyrics.timed) .92f else if (emphasized) 1f else when {
                abs(address.row - focus) <= 2 -> LyricVisuals.NEAR_ALPHA
                address.row < focus - 2 -> LyricVisuals.PAST_ALPHA
                else -> LyricVisuals.FAR_ALPHA
            }
            val centreY = y + pivotY
            val fade = (min(centreY, cache.viewportHeight - centreY) / (metrics.main * 1.5f)).coerceIn(0f, 1f)
            val singingOpacity = if (emphasized && track.words.isNotEmpty() && lyrics.timed &&
                !(lyrics.timelineReady && track.words.all { it.endTimeMs > it.startTimeMs && position >= it.endTimeMs }))
                LyricVisuals.UNSUNG_ALPHA else 1f
            val saved = canvas.save()
            canvas.translate(0f, y)
            canvas.scale(scale, scale, visual.pivotX, pivotY)
            canvas.clipRect(0f, visual.top.toFloat(), track.layout.width.toFloat(), visual.bottom.toFloat())
            val textPaint = track.layout.paint
            val oldColor = textPaint.color; val oldAlpha = textPaint.alpha
            textPaint.color = if (dark) Color.WHITE else Color.rgb(39, 48, 59)
            textPaint.alpha = (opacity * track.alpha * singingOpacity * fade * 255).roundToInt()
            track.layout.draw(canvas)
            textPaint.color = oldColor; textPaint.alpha = oldAlpha
            canvas.restoreToCount(saved)
        }
        paint.shader = null
    }
}
