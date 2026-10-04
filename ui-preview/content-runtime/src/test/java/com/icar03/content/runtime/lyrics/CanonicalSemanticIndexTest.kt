package com.icar03.content.runtime.lyrics

import com.autonavi.amapauto.content.ContentPorts
import org.junit.Assert.*
import org.junit.Test
import kotlin.random.Random

class CanonicalSemanticIndexTest {
    @Test fun everyCandidateBeforeAtAndAfterMatchesTheFrozenLegacyCursorOracle() {
        val fixtures = listOf(
            emptyList(), listOf(row(-500), row(0), row(1_000)),
            listOf(row(4_999)), listOf(row(5_000)),
            listOf(row(1_000, end = 2_000), row(7_999)),
            listOf(row(1_000, end = 2_000), row(8_000)),
            listOf(row(1_000), row(31_000)),
            listOf(row(1_000, words = listOf(word(1_500, 2_000)), end = 4_000), row(10_000)),
            listOf(row(1_000, words = listOf(word(1_000, 2_499))), row(2_000)),
            listOf(row(1_000, words = listOf(word(1_000, 2_500))), row(2_000)),
            listOf(row(1_000, background = listOf(word(1_500, 2_099))), row(2_000)),
            listOf(row(1_000, background = listOf(word(1_500, 2_100))), row(2_000)),
            listOf(row(1_000, end = 2_001), row(2_000)),
            listOf(row(1_000, end = 4_000), row(1_000, end = 2_000), row(10_000)),
            listOf(row(1_000, end = 4_000), row(1_000), row(10_000)),
            listOf(row(1_000, background = listOf(word(1_500, 7_000))), row(2_000, end = 2_500), row(13_000)),
            (0..5).map { row(it * 1_000L, end = 10_000) },
            listOf(row(0, end = 5_000), row(1_000, end = 5_000)) + List(5) { row(2_000, end = 5_000) },
            listOf(row(1_000, words = listOf(word(1_000, 20_000))), row(5_000)),
            listOf(row(Long.MAX_VALUE - 1_500, end = Long.MAX_VALUE))
        )
        fixtures.forEach { rows ->
            for (duration in listOf(0L, 500L, 5_000L, 10_000L, 200_000L, Long.MAX_VALUE)) {
                val compiled = CanonicalSemanticIndex(rows, duration)
                val probes = linkedSetOf(-1L, Long.MIN_VALUE, 0L, 1L, Long.MAX_VALUE)
                compiled.candidatePositions.forEach { boundary ->
                    probes.add(boundary - 1L)
                    probes.add(boundary)
                    if (boundary < Long.MAX_VALUE) probes.add(boundary + 1L)
                }
                probes.forEach { assertOracle(rows, duration, compiled, it) }
            }
        }
    }

    @Test fun randomBodiesAndRandomPositionsMatchLegacyRulesInBothSeekDirections() {
        val random = Random(0x8001200)
        repeat(160) {
            var start = random.nextLong(0, 8_000)
            val rows = List(random.nextInt(1, 32)) {
                start += if (random.nextInt(4) == 0) 0L else random.nextLong(1, 10_000)
                val words = if (random.nextBoolean()) listOf(word(start + random.nextLong(0, 900), start + random.nextLong(900, 15_000))) else emptyList()
                val background = if (random.nextInt(3) == 0) listOf(word(start, start + random.nextLong(100, 20_000))) else emptyList()
                row(start, end = if (random.nextBoolean()) start + random.nextLong(0, 16_000) else -1,
                    words = words, background = background)
            }.sortedBy { it.timeMs } // the same ordered-body precondition as legacy resolve.
            assertTrue(rows.zipWithNext().all { (first, second) -> first.timeMs <= second.timeMs })
            val duration = if (random.nextBoolean()) random.nextLong(1, start + 30_001) else 0L
            val compiled = CanonicalSemanticIndex(rows, duration)
            val probes = compiled.candidatePositions.flatMap {
                listOf(it - 1, it, it + 1)
            } + List(120) { random.nextLong(-1, start + 30_001) }
            (probes + probes.reversed()).forEach { assertOracle(rows, duration, compiled, it) }
            for (position in probes) {
                val expectedNext = compiled.candidatePositions.firstOrNull { boundary ->
                    boundary > position && isChange(rows, duration, boundary)
                } ?: -1L
                assertEquals("next change after $position", expectedNext, compiled.nextChangePosition(position))
            }
        }
    }

    @Test fun deadlinesContainOnlyRealChangesIncludingTailLeadAndTheFinalDurationStatus() {
        val compiled = CanonicalSemanticIndex(listOf(row(1_000, end = 2_000), row(8_000)), 10_000)
        val expected = listOf(0L, 1_000L, 2_000L, 3_200L, 7_200L, 8_000L, 10_000L)
        var position = -1L
        val actual = buildList {
            while (true) {
                position = compiled.nextChangePosition(position)
                if (position < 0) break
                add(position)
            }
        }
        assertEquals(expected, actual)
        assertEquals(9_999L, compiled.previousChangePosition(10_000))
        assertEquals(7_999L, compiled.previousChangePosition(9_999))
        assertEquals(-1L, compiled.previousChangePosition(999))
        val finalEnded = CanonicalSemanticIndex(listOf(row(0, end = 1_000)), 50_000)
        assertEquals(50_000L, finalEnded.nextChangePosition(1_000))
        assertEquals(-1L, finalEnded.nextChangePosition(50_000))
        assertEquals(-1L, CanonicalSemanticIndex(emptyList(), 50_000).nextChangePosition(0))
    }

    @Test fun compilationOwnsTheImmutableBodyAndReturnedVoiceArraysCannotCorruptLaterResolves() {
        val rows = mutableListOf(row(0, end = 5_000), row(0, end = 4_000))
        val compiled = CanonicalSemanticIndex(rows, 10_000)
        val expected = LegacyCursorOracle.resolve(rows, 1_000, 10_000)
        rows.clear()
        compiled.resolve(1_000).activeIndices.fill(999)
        assertCursorEquals(expected, compiled.resolve(1_000), 1_000)
    }

    private fun isChange(rows: List<ContentPorts.LyricsLine>, duration: Long, boundary: Long): Boolean =
        !sameFacts(LegacyCursorOracle.resolve(rows, boundary - 1, duration), LegacyCursorOracle.resolve(rows, boundary, duration)) ||
            rows.isNotEmpty() && duration > 0L && boundary == duration

    private fun assertOracle(rows: List<ContentPorts.LyricsLine>, duration: Long, compiled: CanonicalSemanticIndex, position: Long) {
        val oracle = LegacyCursorOracle.resolve(rows, position, duration)
        assertCursorEquals(oracle, compiled.resolve(position), position)
        assertCursorEquals(oracle, ContentLyricsCursor.resolve(rows, position, duration), position)
    }

    private fun assertCursorEquals(expected: ContentLyricsCursor.Cursor, actual: ContentLyricsCursor.Cursor, position: Long) {
        assertEquals("active at $position", expected.activeIndex, actual.activeIndex)
        assertEquals("scroll at $position", expected.scrollIndex, actual.scrollIndex)
        assertArrayEquals("voices at $position", expected.activeIndices, actual.activeIndices)
        assertEquals("gap start at $position", expected.gapStartMs, actual.gapStartMs)
        assertEquals("gap end at $position", expected.gapEndMs, actual.gapEndMs)
    }

    private fun sameFacts(first: ContentLyricsCursor.Cursor, second: ContentLyricsCursor.Cursor) =
        first.activeIndex == second.activeIndex && first.scrollIndex == second.scrollIndex &&
            first.activeIndices.contentEquals(second.activeIndices) && first.gapStartMs == second.gapStartMs && first.gapEndMs == second.gapEndMs

    private fun row(start: Long, end: Long = -1, words: List<ContentPorts.LyricsWord> = emptyList(), background: List<ContentPorts.LyricsWord> = emptyList()) =
        ContentPorts.LyricsLine(start, "oracle row", "", "", words, end, background, 0)
    private fun word(start: Long, end: Long) = ContentPorts.LyricsWord(start, end, "oracle word")
}

/** Frozen pre-index resolve algorithm. It never delegates to the production cursor/index. */
private object LegacyCursorOracle {
    fun resolve(lines: List<ContentPorts.LyricsLine>, positionMs: Long, durationMs: Long): ContentLyricsCursor.Cursor {
        if (lines.isEmpty() || positionMs < 0L) return ContentLyricsCursor.Cursor(-1, -1, intArrayOf())
        if (durationMs > 0L && positionMs >= durationMs) return ContentLyricsCursor.Cursor(-1, lines.lastIndex, intArrayOf())
        val latest = firstAfter(lines, positionMs) - 1
        if (latest < 0) {
            val firstStart = lines[0].timeMs
            val gapEnd = firstStart - 800L
            return if (firstStart >= 5_000L && positionMs < gapEnd) ContentLyricsCursor.Cursor(-1, -1, intArrayOf(), 0L, gapEnd)
                else ContentLyricsCursor.Cursor(-1, 0, intArrayOf())
        }
        val currentStart = lines[latest].timeMs
        var groupFirst = latest
        while (groupFirst > 0 && lines[groupFirst - 1].timeMs == currentStart) groupFirst--
        val firstCandidate = maxOf(0, groupFirst - 3)
        val timings = (firstCandidate..latest).map { timing(lines[it]) }
        val heldPrevious = BooleanArray(groupFirst - firstCandidate)
        var currentEnd = -1L
        var relevantEnd = -1L
        var currentEndsKnown = true
        for (index in firstCandidate..latest) {
            val row = timings[index - firstCandidate]
            if (index >= groupFirst) {
                currentEnd = maxOf(currentEnd, row.end)
                relevantEnd = maxOf(relevantEnd, row.end)
                currentEndsKnown = currentEndsKnown && row.end >= 0L
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
        if (next < lines.size) {
            val nextStart = lines[next].timeMs
            var gapBoundary = -1L
            if (currentEndsKnown && nextStart - relevantEnd >= 6_000L) gapBoundary = relevantEnd
            if (gapBoundary >= 0L && nextStart - gapBoundary > 2_000L) {
                gapStart = gapBoundary + 1_200L
                gapEnd = nextStart - 800L
            }
        }
        val active = ArrayList<Int>()
        var activeIndex = -1
        for (index in firstCandidate..latest) {
            val row = timings[index - firstCandidate]
            if (positionMs < row.start || row.end >= 0L && positionMs >= row.end) continue
            if (index < groupFirst) {
                if (heldPrevious[index - firstCandidate]) active.add(index)
            } else { active.add(index); activeIndex = index }
        }
        val scrollIndex = when {
            next >= lines.size -> latest
            gapStart >= 0L -> if (positionMs >= gapEnd) next else latest
            currentEndsKnown && positionMs >= currentEnd -> next
            else -> latest
        }
        val gapActive = gapStart >= 0L && positionMs >= gapStart && positionMs < gapEnd && active.isEmpty()
        return ContentLyricsCursor.Cursor(activeIndex, scrollIndex, active.toIntArray(), if (gapActive) gapStart else -1L, if (gapActive) gapEnd else -1L)
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
    private data class Timing(val start: Long, val end: Long, val mainEnd: Long, val backgroundEnd: Long, val declaredEnd: Long) {
        fun overlaps(nextStart: Long) = mainEnd >= nextStart && mainEnd - nextStart >= 500L ||
            backgroundEnd >= nextStart && backgroundEnd - nextStart >= 100L || declaredEnd > nextStart
    }
    private fun timing(line: ContentPorts.LyricsLine): Timing {
        val mainEnd = line.words.maxOfOrNull { it.endTimeMs } ?: -1L
        val backgroundEnd = line.backgroundWords.maxOfOrNull { it.endTimeMs } ?: -1L
        val declaredEnd = line.endTimeMs.takeIf { it >= line.timeMs } ?: -1L
        val mainStart = line.words.minOfOrNull { it.startTimeMs } ?: Long.MAX_VALUE
        val backgroundStart = line.backgroundWords.minOfOrNull { it.startTimeMs } ?: Long.MAX_VALUE
        val firstWordStart = minOf(mainStart, backgroundStart)
        val start = if (firstWordStart == Long.MAX_VALUE) line.timeMs else maxOf(line.timeMs, firstWordStart)
        return Timing(start, maxOf(mainEnd, backgroundEnd, declaredEnd), mainEnd, backgroundEnd, declaredEnd)
    }
}
