package com.icar03.content.runtime.lyrics

import com.autonavi.amapauto.content.ContentPorts

/** Stateless projection of the Store's position onto rows ordered by timeMs. */
public object ContentLyricsCursor {
    public data class Cursor(
        public val activeIndex: Int,
        public val scrollIndex: Int,
        public val activeIndices: IntArray,
        public val gapStartMs: Long = -1L,
        public val gapEndMs: Long = -1L
    )

    private const val INTRO_MIN_MS = 5_000L
    private const val GAP_MIN_MS = 6_000L
    private const val PLAIN_INTERVAL_MIN_MS = 15_000L
    private const val PLAIN_SINGING_CAP_MS = 8_000L
    private const val TAIL_MS = 1_200L
    private const val LEAD_MS = 800L
    private const val MAIN_OVERLAP_MIN_MS = 500L
    private const val BACKGROUND_OVERLAP_MIN_MS = 100L
    private const val PREVIOUS_ROW_LIMIT = 3

    @JvmStatic
    public fun resolve(
        lines: List<ContentPorts.LyricsLine>,
        positionMs: Long,
        durationMs: Long
    ): Cursor {
        if (lines.isEmpty()) return Cursor(-1, -1, intArrayOf())
        if (positionMs < 0L) return Cursor(-1, 0, intArrayOf())
        if (durationMs > 0L && positionMs >= durationMs) {
            return Cursor(-1, lines.lastIndex, intArrayOf())
        }

        val latest = firstAfter(lines, positionMs) - 1
        if (latest < 0) {
            val firstStart = lines[0].timeMs
            val gapEnd = firstStart - LEAD_MS
            return if (firstStart >= INTRO_MIN_MS && positionMs < gapEnd) {
                Cursor(-1, -1, intArrayOf(), 0L, gapEnd)
            } else {
                Cursor(-1, 0, intArrayOf())
            }
        }

        val currentStart = lines[latest].timeMs
        var groupFirst = latest
        while (groupFirst > 0 && lines[groupFirst - 1].timeMs == currentStart) groupFirst--
        val firstCandidate = maxOf(0, groupFirst - PREVIOUS_ROW_LIMIT)
        val timings = (firstCandidate..latest).map { timing(lines[it]) }
        val heldPrevious = BooleanArray(groupFirst - firstCandidate)
        var currentEnd = -1L
        var relevantEnd = -1L
        var currentEndsKnown = true
        var currentIsPlain = true

        // Equal-start voices are one current group, not three-row overlap candidates.
        for (index in firstCandidate..latest) {
            val row = timings[index - firstCandidate]
            if (index >= groupFirst) {
                currentEnd = maxOf(currentEnd, row.end)
                relevantEnd = maxOf(relevantEnd, row.end)
                currentEndsKnown = currentEndsKnown && row.end >= 0L
                currentIsPlain = currentIsPlain && row.plain
            } else {
                val next = firstAfter(lines, lines[index].timeMs)
                val overlap = next < lines.size && row.overlaps(lines[next].timeMs)
                heldPrevious[index - firstCandidate] = overlap
                if (overlap) relevantEnd = maxOf(relevantEnd, row.end)
            }
        }

        val next = latest + 1
        var gapStart = -1L
        var gapEnd = -1L
        var estimated = false
        if (next < lines.size) {
            val nextStart = lines[next].timeMs
            var gapBoundary = -1L
            if (currentEndsKnown && nextStart - relevantEnd >= GAP_MIN_MS) {
                gapBoundary = relevantEnd
            } else if (currentIsPlain && nextStart - currentStart >= PLAIN_INTERVAL_MIN_MS) {
                // This estimate decorates a long LRC interval; it never becomes a model end.
                val assumedEnd = currentStart + minOf(
                    (nextStart - currentStart) / 3L, PLAIN_SINGING_CAP_MS
                )
                gapBoundary = maxOf(assumedEnd, relevantEnd)
                estimated = true
            }
            if (gapBoundary >= 0L && nextStart - gapBoundary > TAIL_MS + LEAD_MS) {
                gapStart = gapBoundary + TAIL_MS
                gapEnd = nextStart - LEAD_MS
            }
        }

        val active = ArrayList<Int>()
        var activeIndex = -1
        for (index in firstCandidate..latest) {
            val row = timings[index - firstCandidate]
            if (positionMs < row.start || (row.end >= 0L && positionMs >= row.end)) continue
            if (index < groupFirst) {
                if (heldPrevious[index - firstCandidate]) active.add(index)
            } else if (!(estimated && gapStart >= 0L && positionMs >= gapStart)) {
                active.add(index)
                activeIndex = index
            }
        }

        val scrollIndex = when {
            next >= lines.size -> latest
            gapStart >= 0L -> if (positionMs >= gapEnd) next else latest
            currentEndsKnown && positionMs >= currentEnd -> next
            else -> latest
        }
        val gapActive = gapStart >= 0L && positionMs >= gapStart && positionMs < gapEnd
            && active.isEmpty()
        return Cursor(
            activeIndex, scrollIndex, active.toIntArray(),
            if (gapActive) gapStart else -1L,
            if (gapActive) gapEnd else -1L
        )
    }

    private fun firstAfter(lines: List<ContentPorts.LyricsLine>, positionMs: Long): Int {
        var low = 0
        var high = lines.size
        while (low < high) {
            val middle = low + (high - low) / 2
            if (lines[middle].timeMs <= positionMs) low = middle + 1 else high = middle
        }
        return low
    }

    private data class RowTiming(
        val start: Long,
        val end: Long,
        val mainEnd: Long,
        val backgroundEnd: Long,
        val declaredEnd: Long,
        val plain: Boolean
    ) {
        fun overlaps(nextStart: Long): Boolean =
            (mainEnd >= nextStart && mainEnd - nextStart >= MAIN_OVERLAP_MIN_MS) ||
                (backgroundEnd >= nextStart && backgroundEnd - nextStart >= BACKGROUND_OVERLAP_MIN_MS) ||
                declaredEnd > nextStart
    }

    private fun timing(line: ContentPorts.LyricsLine): RowTiming {
        val mainEnd = line.words.maxOfOrNull { it.endTimeMs } ?: -1L
        val backgroundEnd = line.backgroundWords.maxOfOrNull { it.endTimeMs } ?: -1L
        val declaredEnd = line.endTimeMs.takeIf { it >= line.timeMs } ?: -1L
        val mainStart = line.words.minOfOrNull { it.startTimeMs } ?: Long.MAX_VALUE
        val backgroundStart = line.backgroundWords.minOfOrNull { it.startTimeMs } ?: Long.MAX_VALUE
        val firstWordStart = minOf(mainStart, backgroundStart)
        val start = if (firstWordStart == Long.MAX_VALUE) line.timeMs
            else maxOf(line.timeMs, firstWordStart)
        return RowTiming(
            start = start,
            end = maxOf(mainEnd, backgroundEnd, declaredEnd),
            mainEnd = mainEnd,
            backgroundEnd = backgroundEnd,
            declaredEnd = declaredEnd,
            plain = line.words.isEmpty() && line.backgroundWords.isEmpty() && declaredEnd < 0L
        )
    }
}
