package com.icar03.content.runtime.lyrics

import com.autonavi.amapauto.content.ContentPorts
import java.util.Collections
import java.util.TreeSet

/**
 * Immutable body/duration compilation of the one ContentLyricsCursor rule set.
 * Row timings are scanned once; only exact changes of CursorFacts survive the
 * candidate pass. Sampling this index is not media evidence or a second cursor.
 */
class CanonicalSemanticIndex(lines: List<ContentPorts.LyricsLine>, val durationMs: Long) {
    private val body = Collections.unmodifiableList(ArrayList(lines))
    private val timings = body.map(ContentLyricsCursor::timing)
    private val unknown = ContentLyricsCursor.Cursor(-1, -1, intArrayOf())
    private val positions: LongArray
    private val cursors: List<ContentLyricsCursor.Cursor>
    internal val candidatePositions: LongArray

    init {
        val candidates = TreeSet<Long>()
        fun add(position: Long) { if (position >= 0L) candidates.add(position) }
        fun addEnd(end: Long) {
            if (end < 0L) return
            add(end) // row end is exclusive; duration uses >= and is inclusive.
            if (end < Long.MAX_VALUE) add(end + 1L) // explicit integer off-by-one probe.
            if (end <= Long.MAX_VALUE - ContentLyricsCursor.TAIL_MS) {
                add(end + ContentLyricsCursor.TAIL_MS)
            }
        }
        add(0L)
        body.forEachIndexed { index, line ->
            add(line.timeMs)
            add(line.timeMs - ContentLyricsCursor.LEAD_MS)
            add(timings[index].start)
            addEnd(timings[index].end)
        }
        if (durationMs > 0L) addEnd(durationMs)
        candidatePositions = candidates.toLongArray()
        val changes = ArrayList<Long>()
        val facts = ArrayList<ContentLyricsCursor.Cursor>()
        var previous = unknown
        for (position in candidatePositions) {
            val cursor = ContentLyricsCursor.resolveWithTimings(body, position, durationMs) { timings[it] }
            // Endpoint is a semantic status even when a trusted final end has already
            // cleared activity: Store must publish atEnd once, not keep an old event sample.
            val endpoint = durationMs > 0L && position == durationMs && body.isNotEmpty()
            if (!ContentLyricsCursor.sameFacts(previous, cursor) || endpoint) {
                changes.add(position)
                facts.add(cursor)
                previous = cursor
            }
        }
        positions = changes.toLongArray()
        cursors = Collections.unmodifiableList(facts)
    }

    fun resolve(positionMs: Long): ContentLyricsCursor.Cursor {
        val index = firstAfter(positionMs) - 1
        val facts = if (index < 0) unknown else cursors[index]
        // Cursor's legacy public IntArray is caller-owned, never the compiled fact.
        return facts.copy(activeIndices = facts.activeIndices.clone())
    }

    /** The first strictly later *semantic* position, or -1 when no change remains. */
    fun nextChangePosition(positionMs: Long): Long = firstAfter(positionMs).let {
        if (it < positions.size) positions[it] else -1L
    }

    /** Rewind crosses an integer interval when sampling boundary - 1, not boundary. */
    fun previousChangePosition(positionMs: Long): Long = (firstAfter(positionMs) - 1).let {
        if (it >= 0 && positions[it] > 0L) positions[it] - 1L else -1L
    }

    private fun firstAfter(positionMs: Long): Int {
        var low = 0
        var high = positions.size
        while (low < high) {
            val middle = low + (high - low) / 2
            if (positions[middle] <= positionMs) low = middle + 1 else high = middle
        }
        return low
    }
}
