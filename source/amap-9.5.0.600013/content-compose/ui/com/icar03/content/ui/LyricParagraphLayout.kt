package com.icar03.content.ui

import android.annotation.SuppressLint
import android.graphics.text.LineBreaker
import android.text.Layout
import android.text.StaticLayout
import android.text.TextPaint
import kotlin.math.roundToInt

private const val SHORT_TAIL_RATIO = .4f
private const val REPAIRED_LEADING_SHARE = .7f
private data class LyricTailIndent(val line: Int, val left: Int, val right: Int)

/** One native factory for document geometry and worker copies; source text and spans stay intact. */
@SuppressLint("InlinedApi") // The break-strategy constant is inlined; Builder supports it since API 23.
internal fun lyricTextLayout(text: CharSequence, paint: TextPaint, width: Int,
    alignment: Layout.Alignment): StaticLayout {
    fun build(indents: List<LyricTailIndent> = emptyList()): StaticLayout {
        val builder = StaticLayout.Builder.obtain(text, 0, text.length, paint, width)
            .setAlignment(alignment).setIncludePad(false)
            // Native greedy filling keeps ordinary two/three-line paragraphs naturally unequal.
            // Font leading groups wrapped lines; sentence padding remains a separate row metric.
            .setLineSpacing(0f, 1f).setBreakStrategy(LineBreaker.BREAK_STRATEGY_SIMPLE)
        if (indents.isNotEmpty()) {
            // The final zero resets the indent; StaticLayout repeats an array's last value.
            val count = indents.maxOf { it.line } + 2
            val left = IntArray(count)
            val right = IntArray(count)
            for (indent in indents) { left[indent.line] = indent.left; right[indent.line] = indent.right }
            builder.setIndents(left, right)
        }
        return builder.build()
    }
    val natural = build()
    val indents = lyricShortTailIndents(natural)
    if (indents.isEmpty()) return natural
    val candidate = build(indents)
    if (!lyricTailStructureMatches(natural, candidate, indents)) return natural
    val accepted = indents.filter { lyricTailImproved(natural, candidate, it.line) }
    if (accepted.size == indents.size) return candidate
    if (accepted.isEmpty()) return natural
    // A paragraph with no useful legal break must not prevent another paragraph's repair.
    // At most three native layouts per track, only during document/texture preparation.
    return build(accepted).takeIf { repaired ->
        lyricTailStructureMatches(natural, repaired, accepted) &&
            accepted.all { lyricTailImproved(natural, repaired, it.line) }
    } ?: natural
}

private fun lyricShortTailIndents(natural: StaticLayout): List<LyricTailIndent> = buildList {
    for (last in 1 until natural.lineCount) {
        val end = natural.getLineEnd(last)
        val previousEnd = natural.getLineEnd(last - 1)
        // Only repair the soft-wrap tail of one original paragraph. An explicit short line is intentional.
        if (end != natural.text.length && (end == 0 || natural.text[end - 1] != '\n')) continue
        if (previousEnd == 0 || natural.text[previousEnd - 1] == '\n') continue
        val leading = natural.getLineMax(last - 1)
        val trailing = natural.getLineMax(last)
        if (leading <= 0f || trailing <= 0f || trailing >= leading * SHORT_TAIL_RATIO) continue
        val targetWidth = ((leading + trailing) * REPAIRED_LEADING_SHARE).roundToInt()
            .coerceIn(1, natural.width)
        val indent = natural.width - targetWidth
        if (indent <= 0) continue
        // Narrow only the far edge. The paragraph's real Bidi/alignment anchor does not move.
        val rtl = natural.getParagraphDirection(last - 1) == Layout.DIR_RIGHT_TO_LEFT
        add(when (natural.alignment) {
            Layout.Alignment.ALIGN_CENTER -> LyricTailIndent(last - 1, indent / 2, indent - indent / 2)
            Layout.Alignment.ALIGN_OPPOSITE -> if (rtl) LyricTailIndent(last - 1, 0, indent)
                else LyricTailIndent(last - 1, indent, 0)
            else -> if (rtl) LyricTailIndent(last - 1, indent, 0) else LyricTailIndent(last - 1, 0, indent)
        })
    }
}

private fun lyricTailStructureMatches(natural: StaticLayout, candidate: StaticLayout,
    indents: List<LyricTailIndent>): Boolean {
    if (candidate.lineCount != natural.lineCount) return false
    val movableStarts = indents.mapTo(HashSet()) { it.line + 1 }
    return (0 until natural.lineCount).all { line ->
        line in movableStarts || candidate.getLineStart(line) == natural.getLineStart(line)
    }
}

private fun lyricTailImproved(natural: StaticLayout, candidate: StaticLayout, previous: Int): Boolean {
    val leading = candidate.getLineMax(previous)
    val trailing = candidate.getLineMax(previous + 1)
    // Native word/punctuation/shaping rules may choose a nearby ratio; never force an even split.
    return candidate.getLineStart(previous + 1) < natural.getLineStart(previous + 1) &&
        leading > trailing && trailing >= leading * SHORT_TAIL_RATIO &&
        trailing > natural.getLineMax(previous + 1)
}
