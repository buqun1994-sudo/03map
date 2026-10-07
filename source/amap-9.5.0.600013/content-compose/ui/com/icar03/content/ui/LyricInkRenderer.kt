package com.icar03.content.ui

import android.content.res.AssetManager
import android.graphics.*
import android.icu.text.BreakIterator
import android.text.Layout
import android.text.StaticLayout
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
    const val VOICE_FAR_INSET_RATIO = .15f
    const val VOICE_NEAR_INSET_RATIO = .075f
    const val VOICE_MAX_INSET_EM = 4f
}

internal data class LyricMetrics(
    val main: Float, val activeMain: Float, val translation: Float, val romanization: Float,
    val padding: Float, val gap: Float, val blur: Float, val lift: Float,
    val showTranslation: Boolean = true,
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

/** Source-derived onset; this is presentation metadata, never a fabricated parser timestamp. */
internal fun lyricCharacterOnset(word: LyricWord, startFraction: Float, endFraction: Float): Double {
    if (word.endTimeMs <= word.startTimeMs || endFraction <= startFraction) return Double.NaN
    return word.startTimeMs + (word.endTimeMs - word.startTimeMs).toDouble() * startFraction
}

/** Start on the original baseline, rise for one second, then stay slightly above it. */
internal fun lyricCharacterRiseAt(onset: Double, position: Long): Float {
    if (!onset.isFinite() || position < 0L) return 0f
    val t = ((position.toDouble() - onset) / LyricVisuals.CHARACTER_RISE_DURATION_MS)
        .coerceIn(0.0, 1.0).toFloat()
    val remaining = 1f - t
    return 1f - remaining * remaining * remaining
}
internal fun lyricCharacterRiseProgress(word: LyricWord, startFraction: Float, endFraction: Float,
    position: Long): Float = lyricCharacterRiseAt(lyricCharacterOnset(word, startFraction, endFraction), position)

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
    // The feather can affect this wrapped/Bidi fragment only while these source fractions
    // cross it. They are presentation bounds, never replacement word timestamps.
    val fillStartFraction = (before / (total + feather)).coerceIn(0f, 1f)
    val fillEndFraction = ((before + right - left + feather) / (total + feather)).coerceIn(0f, 1f)
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
    val glyphs: List<LyricGlyph>, val reveals: List<LyricReveal>, val pivotX: Float = 0f) {
    val fullRevealEndMs: Long = if (glyphs.isNotEmpty() && glyphs.all { glyph ->
        glyph.reveal?.word?.let { it.startTimeMs >= 0L && it.endTimeMs > it.startTimeMs } == true
    }) reveals.maxOfOrNull { it.word.endTimeMs } ?: -1L else -1L
}

internal class LyricTrack(val layout: StaticLayout, val top: Float, val alpha: Float,
    val isMain: Boolean, val words: List<LyricWord>, val visualLines: List<LyricVisualLine>, val left: Float = 0f) {
    val rasterPaint = TextPaint(layout.paint) // Immutable style; the draw-only fallback owns layout.paint.
}
internal class NativeLyricRow(val tracks: List<LyricTrack>, val height: Int, val mainPivotX: Float)

internal fun lyricVoiceInsets(side: LyricSide, width: Int, fontSize: Float): Pair<Int, Int> {
    if (side == LyricSide.Unspecified || width <= 1 || !fontSize.isFinite() || fontSize <= 0f) return 0 to 0
    val far = min(width * LyricVisuals.VOICE_FAR_INSET_RATIO, fontSize * LyricVisuals.VOICE_MAX_INSET_EM)
        .roundToInt().coerceIn(0, (width - 1) / 2)
    val near = min(width * LyricVisuals.VOICE_NEAR_INSET_RATIO, fontSize * LyricVisuals.VOICE_MAX_INSET_EM / 2f)
        .roundToInt().coerceIn(0, far)
    return when (side) {
        LyricSide.Leading, LyricSide.Center -> near to far // Legacy center values now use the left lane.
        LyricSide.Trailing -> far to near
        LyricSide.Unspecified -> 0 to 0
    }
}

internal fun prepareLyricRow(line: LyricLine, width: Int, metrics: LyricMetrics, face: Typeface,
    cjk: Typeface = face, baseInset: Int = 0, alignment: String = "left"): NativeLyricRow {
    val base = baseInset.coerceAtLeast(0)
    val physicalWidth = (width + base * 2).coerceAtLeast(1)
    val (physicalLeft, physicalRight) = lyricVoiceInsets(line.side, physicalWidth, metrics.activeMain)
    val mainLeftInset = (physicalLeft - base).coerceAtLeast(0)
    val mainRightInset = (physicalRight - base).coerceAtLeast(0)
    val mainLayoutWidth = (width - mainLeftInset - mainRightInset).coerceAtLeast(1)
    fun layout(text: String, fontSize: Float): StaticLayout {
        val paint = TextPaint(Paint.ANTI_ALIAS_FLAG or Paint.SUBPIXEL_TEXT_FLAG).apply {
            color = Color.WHITE; textSize = fontSize; typeface = face
        }
        val shaped = lyricShapedText(text, cjk)
        return lyricTextLayout(shaped, paint, mainLayoutWidth, when (line.side) {
            LyricSide.Leading -> Layout.Alignment.ALIGN_NORMAL
            LyricSide.Trailing -> Layout.Alignment.ALIGN_OPPOSITE
            LyricSide.Unspecified, LyricSide.Center -> when (alignment) {
                "center" -> Layout.Alignment.ALIGN_CENTER
                "right" -> Layout.Alignment.ALIGN_OPPOSITE
                else -> Layout.Alignment.ALIGN_NORMAL
            }
        })
    }
    val tracks = ArrayList<LyricTrack>()
    var top = metrics.padding
    fun add(text: String, size: Float, alpha: Float, main: Boolean, words: List<LyricWord> = emptyList()) {
        if (text.isBlank()) return
        val shaped = layout(text, size)
        tracks += LyricTrack(shaped, top, alpha, main, words, compileLyricInk(shaped, text, words, size), mainLeftInset.toFloat())
        top += shaped.height + metrics.gap
    }
    add(line.text, metrics.activeMain, 1f, true, line.words)
    add(line.romanization, metrics.romanization, .62f, false)
    if (metrics.showTranslation) add(line.translation, metrics.translation, .76f, false)
    add(line.backgroundWords.joinToString("") { it.text }, metrics.translation, .9f, false, line.backgroundWords)
    val mainTrack = tracks.firstOrNull { it.isMain }
    val actualMainWidth = mainTrack?.layout?.width?.toFloat() ?: mainLayoutWidth.toFloat()
    val actualMainLeft = mainTrack?.left ?: mainLeftInset.toFloat()
    val pivot = when (mainTrack?.layout?.alignment) {
        Layout.Alignment.ALIGN_CENTER -> actualMainWidth / 2f
        Layout.Alignment.ALIGN_OPPOSITE -> actualMainWidth
        else -> 0f
    }
    return NativeLyricRow(tracks, (top - metrics.gap + metrics.padding).roundToInt().coerceAtLeast(1),
        actualMainLeft + pivot)
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
    // Colour cells still need boundaries around safe graphemes when a joining script makes
    // the whole line immovable. Never let one RGBA emoji remove theme tint from Latin ink.
    val colourCuts = if (safe) boundaries.toList() else buildList {
        for (index in 0 until boundaries.lastIndex) {
            val start = boundaries[index]; val end = boundaries[index + 1]
            if (independentlyMovable(text.substring(start, end))) { add(start); add(end) }
        }
    }
    return (0 until layout.lineCount).map { row ->
        val top = layout.getLineTop(row); val bottom = layout.getLineBottom(row)
        val start = layout.getLineStart(row); val end = layout.getLineEnd(row)
        val glyphs = ArrayList<LyricGlyph>()
        // A real source-word boundary can cut through a ligature. Those pieces may fade,
        // but none may move independently: the original joined glyph stays at its baseline.
        val wordCuts = ranges.flatMap { listOf(it.first, it.second) }.filter { it in start..end }
        val runCuts = directionRuns[row].flatMap { listOf(it.start, it.end) }
        val cuts = (colourCuts.filter { it in start..end } +
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
internal data class LyricInkCell(val bounds: RectF, val revealIndex: Int, val coloured: Boolean, val onsetMs: Double)

/** A texture owns its shader geometry; playback sampling never changes another slice's edge. */
internal class LyricInk(val bitmap: Bitmap, val bounds: RectF, private val edge: Shader,
    visual: LyricVisualLine, dynamic: Boolean = true) {
    private val source = BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP).apply {
        setLocalMatrix(Matrix().apply { setTranslate(bounds.left, bounds.top) })
    }
    val shader: Shader = ComposeShader(source, edge, PorterDuff.Mode.DST_IN)
    val highlight: List<Shader> = if (dynamic) visual.reveals.map { ComposeShader(shader, it.gradient, PorterDuff.Mode.DST_IN) } else emptyList()
    private val edgeMatrix = Matrix()
    private var lastY = Float.NaN
    private var lastScale = Float.NaN
    private var lastPivot = Float.NaN
    var edgeMatrixUpdates = 0
        private set
    fun edgeAt(worldY: Float, scale: Float, pivotY: Float) {
        if (lastY == worldY && lastScale == scale && lastPivot == pivotY) return
        lastY = worldY; lastScale = scale; lastPivot = pivotY
        edgeMatrix.setScale(1f, 1f / scale)
        edgeMatrix.postTranslate(0f, (-worldY - (1f - scale) * pivotY) / scale)
        edge.setLocalMatrix(edgeMatrix)
        edgeMatrixUpdates++
    }
    // One worker raster read supplies all immutable colour/ink/motion metadata.
    val colouredGlyphs = BooleanArray(visual.glyphs.size)
    val hasInk = BooleanArray(visual.glyphs.size)
    val clearMotionBoundary = BooleanArray(visual.glyphs.size)
    val cells: List<LyricInkCell>
    val hasColour: Boolean
    init {
        val order = visual.glyphs.indices.sortedBy { visual.glyphs[it].bounds.left }
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
            // A source/grapheme cut need not be an isolated physical stroke. Preserve joined ink.
            for (i in 0 until order.lastIndex) {
                val leftIndex = order[i]; val rightIndex = order[i + 1]
                val left = visual.glyphs[leftIndex].bounds; val right = visual.glyphs[rightIndex].bounds
                if (left.right != right.left) continue
                val boundary = left.right - bounds.left
                val cut = floor(boundary).toInt()
                if (cut !in 0 until bitmap.width) continue
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
        cells = order.filter { hasInk[it] }.map { index ->
            val glyph = visual.glyphs[index]
            val onset = if (glyph.movable && clearMotionBoundary[index] && glyph.reveal != null)
                lyricCharacterOnset(glyph.reveal.word, glyph.startFraction, glyph.endFraction) else Double.NaN
            LyricInkCell(glyph.bounds, glyph.revealIndex, colouredGlyphs[index], onset)
        }
        hasColour = colouredGlyphs.any { it }
    }
    val bytes: Int get() = bitmap.allocationByteCount
}
internal data class PreparedLyricSlice(val row: Int, val track: LyricTrack, val visual: LyricVisualLine,
    val sharp: LyricInk?, val soft: LyricInk, val address: LyricSliceAddress)

/** Byte-bounded, per-visual-line textures; no texture can grow to a whole extremely long paragraph. */
internal class LyricInkCache(private val rows: List<NativeLyricRow>, private val metrics: LyricMetrics, height: Float) {
    val viewportHeight = height
    private fun edge(): Shader = LinearGradient(0f, 0f, 0f, viewportHeight.coerceAtLeast(1f),
        intArrayOf(Color.TRANSPARENT, Color.WHITE, Color.WHITE, Color.TRANSPARENT),
        (metrics.main * 1.5f / viewportHeight.coerceAtLeast(1f)).coerceIn(0f, .25f).let { floatArrayOf(0f, it, 1f - it, 1f) },
        Shader.TileMode.CLAMP)
    private val textures = object : LruCache<LyricRasterKey, LyricInk>(LyricVisuals.CACHE_BYTES) {
        override fun sizeOf(key: LyricRasterKey, value: LyricInk) = value.bytes
        // Published bitmaps must not be recycled: an in-flight RenderThread can still reference them.
    }
    private val workerLayouts = LruCache<LyricTrack, StaticLayout>(64)
    private fun workerLayout(track: LyricTrack): StaticLayout = workerLayouts.get(track) ?: run {
        val source = track.layout
        val paint = TextPaint(track.rasterPaint).apply { color = Color.WHITE }
        lyricTextLayout(source.text, paint, source.width, source.alignment)
            .also { workerLayouts.put(track, it) }
    }
    var rasterizations = 0
        private set
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
        return LyricInk(image, bounds, edge(), visual)
    }
    private fun soften(source: Bitmap, sourceBounds: RectF, radius: Float, visual: LyricVisualLine): LyricInk {
        val shift = IntArray(2)
        val alpha = source.extractAlpha(Paint().apply { maskFilter = BlurMaskFilter(radius, BlurMaskFilter.Blur.NORMAL) }, shift)
        val image = Bitmap.createBitmap(alpha.width, alpha.height, Bitmap.Config.ARGB_8888)
        Canvas(image).drawBitmap(alpha, 0f, 0f, Paint().apply { color = Color.WHITE })
        // These inputs have never been published; only the immutable result reaches RenderThread.
        alpha.recycle(); source.recycle()
        val left = sourceBounds.left + shift[0]; val top = sourceBounds.top + shift[1]
        return LyricInk(image, RectF(left, top, left + image.width, top + image.height), edge(), visual, dynamic = false)
    }
}
internal data class LyricSliceAddress(val row: Int, val track: Int, val line: Int)

/** Draw only the travel window, found by binary search rather than filtering all song rows every frame. */
internal fun lyricSliceWindow(rows: List<NativeLyricRow>, tops: FloatArray, offset: Float, height: Float,
    scroll: LyricScrollSample? = null): List<LyricSliceAddress> {
    if (rows.isEmpty()) return emptyList()
    val minimum = scroll?.minimum ?: offset
    val maximum = scroll?.maximum ?: offset
    var low = 0; var high = rows.size
    while (low < high) {
        val mid = (low + high) ushr 1
        if (tops[mid] + rows[mid].height + maximum < -height) low = mid + 1 else high = mid
    }
    val result = ArrayList<LyricSliceAddress>()
    var row = low
    while (row < rows.size && tops[row] + minimum <= height * 2f) {
        val actualOffset = scroll?.offsetAt(row) ?: offset
        rows[row].tracks.forEachIndexed { trackIndex, track ->
            val y = tops[row] + actualOffset + track.top
            val start = track.layout.getLineForVertical((-height - y).toInt().coerceAtLeast(0))
            val stop = track.layout.getLineForVertical((height * 2f - y).toInt().coerceAtLeast(0))
            for (line in start..stop) {
                val visual = track.visualLines[line]
                if (scroll == null || (y + visual.bottom >= -height && y + visual.top <= height * 2f))
                    result += LyricSliceAddress(row, trackIndex, line)
            }
        }
        row++
    }
    return result
}

internal class LyricInkPainter(private val metrics: LyricMetrics) {
    // Glyph antialiasing lives in the texture. AA on adjacent quads would cut dark seams through ligatures.
    private val paint = Paint(Paint.FILTER_BITMAP_FLAG)
    private var normalTint = Color.rgb(39, 48, 59)
    private var currentTint = normalTint
    private var normalFilter = PorterDuffColorFilter(normalTint, PorterDuff.Mode.SRC_IN)
    private var currentFilter = PorterDuffColorFilter(currentTint, PorterDuff.Mode.SRC_IN)
    private val batchBounds = RectF()
    private var batchShader: Shader? = null
    private var batchFilter: ColorFilter? = null
    private var batchAlpha = 0
    private var batchLift = 0f
    private var canvasLift = 0f
    private var batchPending = false
    var drawBatches = 0
        private set
    var sampledCells = 0
        private set
    var motionTranslations = 0
        private set
    private var scrollRow = Int.MIN_VALUE
    private var scrollOffset = 0f
    private fun offsetFor(row: Int, offset: Float, sample: LyricScrollSample?): Float {
        if (sample == null) return offset
        if (scrollRow != row) {
            scrollRow = row
            scrollOffset = sample.offsetAt(row)
        }
        return scrollOffset
    }

    private fun emitBatch(canvas: Canvas) {
        if (!batchPending) return
        if (canvasLift != batchLift) {
            canvas.translate(0f, batchLift - canvasLift)
            canvasLift = batchLift
            motionTranslations++
        }
        paint.shader = batchShader; paint.colorFilter = batchFilter; paint.alpha = batchAlpha
        canvas.drawRect(batchBounds, paint)
        drawBatches++
        batchPending = false
    }
    private fun appendBatch(canvas: Canvas, bounds: RectF, shader: Shader, filter: ColorFilter?, alpha: Int, lift: Float) {
        if (batchPending && batchShader === shader && batchFilter === filter && batchAlpha == alpha && batchLift == lift &&
            batchBounds.right == bounds.left && batchBounds.top == bounds.top && batchBounds.bottom == bounds.bottom) {
            batchBounds.right = bounds.right
            return
        }
        emitBatch(canvas)
        batchBounds.set(bounds); batchShader = shader; batchFilter = filter; batchAlpha = alpha; batchLift = lift
        batchPending = true
    }
    fun draw(canvas: Canvas, slices: List<PreparedLyricSlice>, rows: List<NativeLyricRow>, tops: FloatArray,
        cache: LyricInkCache, offset: Float, current: Set<Int>, focus: Int, lyrics: LyricsState, position: Long, dark: Boolean,
        fallback: List<LyricSliceAddress> = emptyList(), contentAlpha: Float = 1f,
        scroll: LyricScrollSample? = null, normalColor: Int? = null, currentColor: Int? = null) {
        drawBatches = 0; sampledCells = 0; motionTranslations = 0
        scrollRow = Int.MIN_VALUE
        val bodyAlpha = contentAlpha.coerceIn(0f, 1f)
        if (bodyAlpha <= 0f) return
        val themeColor = if (dark) Color.WHITE else Color.rgb(39, 48, 59)
        val nextNormal = normalColor ?: themeColor
        val nextCurrent = currentColor ?: themeColor
        if (normalTint != nextNormal) {
            normalTint = nextNormal
            normalFilter = PorterDuffColorFilter(nextNormal, PorterDuff.Mode.SRC_IN)
        }
        if (currentTint != nextCurrent) {
            currentTint = nextCurrent
            currentFilter = PorterDuffColorFilter(nextCurrent, PorterDuff.Mode.SRC_IN)
        }
        for (slice in slices) {
            val track = slice.track
            val y = tops[slice.row] + offsetFor(slice.row, offset, scroll) + track.top
            @Suppress("DEPRECATION")
            if (canvas.quickReject(track.left, y + slice.visual.top - metrics.lift,
                    track.left + track.layout.width, y + slice.visual.bottom, Canvas.EdgeType.AA)) continue
            val emphasized = slice.row in current
            val tint = if (emphasized) currentFilter else normalFilter
            paint.colorFilter = tint
            val scale = if (track.isMain && !emphasized) metrics.main / metrics.activeMain else 1f
            val pivotY = (slice.visual.top + slice.visual.bottom) / 2f
            val saved = canvas.save()
            canvas.translate(track.left, y)
            canvas.scale(scale, scale, slice.visual.pivotX, pivotY)
            val opacity = if (!lyrics.timed) .92f else if (emphasized) 1f else when {
                abs(slice.row - focus) <= 2 -> LyricVisuals.NEAR_ALPHA
                slice.row < focus - 2 -> LyricVisuals.PAST_ALPHA
                else -> LyricVisuals.FAR_ALPHA
            }
            val ink = if (emphasized || !lyrics.timed) slice.sharp ?: slice.soft else slice.soft
            ink.edgeAt(y, scale, pivotY)
            val sharp = ink === slice.sharp
            val timed = sharp && lyrics.timed && emphasized && track.words.isNotEmpty()
            if (!timed && !ink.hasColour) {
                paint.shader = ink.shader; paint.alpha = (opacity * track.alpha * bodyAlpha * 255).roundToInt()
                canvas.drawRect(ink.bounds, paint)
                drawBatches++
            } else {
                val visual = slice.visual
                if (timed && lyrics.timelineReady) for (reveal in visual.reveals) reveal.sample(position)
                batchPending = false; canvasLift = 0f
                // Physical order is compiled once. Stable neighbours share one draw, while
                // active characters retain distinct source-derived rises and complete shaping.
                for (cell in ink.cells) {
                    sampledCells++
                    val reveal = if (timed && lyrics.timelineReady) visual.reveals.getOrNull(cell.revealIndex) else null
                    val fraction = reveal?.fraction ?: 0f
                    val shader = if (fraction > 0f && fraction < 1f) ink.highlight[cell.revealIndex] else ink.shader
                    val alpha = (track.alpha * if (!timed) opacity else if (fraction >= 1f) 1f else
                        if (fraction > 0f) 1f else if (track.isMain) LyricVisuals.UNSUNG_ALPHA else .34f) * bodyAlpha * 255f
                    val lift = if (timed && lyrics.timelineReady) -metrics.lift * lyricCharacterRiseAt(cell.onsetMs, position) else 0f
                    appendBatch(canvas, cell.bounds, shader, if (cell.coloured) null else tint, alpha.roundToInt(), lift)
                }
                emitBatch(canvas)
            }
            canvas.restoreToCount(saved)
        }
        // Cold first display / a long seek can outrun the worker. Keep the original measured
        // shaped line visible without synchronously creating a bitmap, blur or new layout.
        // Precise feather/rise returns as soon as that immutable prepared slice is published.
        for (address in fallback) {
            val track = rows[address.row].tracks[address.track]
            val visual = track.visualLines[address.line]
            val y = tops[address.row] + offsetFor(address.row, offset, scroll) + track.top
            @Suppress("DEPRECATION")
            if (canvas.quickReject(track.left, y + visual.top, track.left + track.layout.width,
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
                !(lyrics.timelineReady && visual.fullRevealEndMs >= 0L && position >= visual.fullRevealEndMs))
                LyricVisuals.UNSUNG_ALPHA else 1f
            val saved = canvas.save()
            canvas.translate(track.left, y)
            canvas.scale(scale, scale, visual.pivotX, pivotY)
            canvas.clipRect(0f, visual.top.toFloat(), track.layout.width.toFloat(), visual.bottom.toFloat())
            val textPaint = track.layout.paint
            val oldColor = textPaint.color; val oldAlpha = textPaint.alpha
            textPaint.color = if (emphasized) nextCurrent else nextNormal
            textPaint.alpha = (opacity * track.alpha * singingOpacity * fade * bodyAlpha * 255).roundToInt()
            track.layout.draw(canvas)
            textPaint.color = oldColor; textPaint.alpha = oldAlpha
            canvas.restoreToCount(saved)
        }
        paint.shader = null
    }
}
