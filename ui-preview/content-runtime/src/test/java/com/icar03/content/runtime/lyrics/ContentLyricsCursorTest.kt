package com.icar03.content.runtime.lyrics

import com.autonavi.amapauto.content.ContentPorts
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.lang.reflect.Modifier

class ContentLyricsCursorTest {
    @Test fun emptyLyricsHaveNoAnchorOrActivity() {
        assertCursor(emptyList(), -1L, -1, -1)
        assertCursor(emptyList(), 0L, -1, -1)
        assertCursor(emptyList(), 100L, -1, -1, duration = 100L)
    }

    @Test fun plainCallerWithUnknownPositionCannotManufactureActivityOrGap() {
        val lines = listOf(line(0L), line(0L), line(0L))
        assertCursor(lines, -1L, -1, -1)
        assertCursor(lines, Long.MIN_VALUE, -1, -1)
        assertCursor(listOf(line(10_000L)), -1L, -1, -1)
    }

    @Test fun introThresholdAndEightHundredMillisecondLeadAreExact() {
        val shortIntro = listOf(line(4_999L))
        assertCursor(shortIntro, 0L, -1, 0)
        assertCursor(shortIntro, 4_998L, -1, 0)
        assertCursor(shortIntro, 4_999L, 0, 0)
        val intro = listOf(line(5_000L))
        assertCursor(intro, 0L, -1, -1, gapStart = 0L, gapEnd = 4_200L)
        assertCursor(intro, 4_199L, -1, -1, gapStart = 0L, gapEnd = 4_200L)
        assertCursor(intro, 4_200L, -1, 0)
        assertCursor(intro, 4_999L, -1, 0)
        assertCursor(intro, 5_000L, 0, 0)
    }

    @Test fun trueEndGapNeedsSixSecondsAndLeavesTailAndLeadMargins() {
        val lines = listOf(line(1_000L, words = listOf(word(1_000L, 2_000L))), line(8_000L))
        assertCursor(lines, 1_999L, 0, 0)
        assertCursor(lines, 2_000L, -1, 0)
        assertCursor(lines, 3_199L, -1, 0)
        assertCursor(lines, 3_200L, -1, 0, gapStart = 3_200L, gapEnd = 7_200L)
        assertCursor(lines, 7_199L, -1, 0, gapStart = 3_200L, gapEnd = 7_200L)
        assertCursor(lines, 7_200L, -1, 1)
        assertCursor(lines, 7_999L, -1, 1)
        assertCursor(lines, 8_000L, 1, 1)
    }

    @Test fun shortTrueGapScrollsAtEndWithoutHighlightingTheNextRowEarly() {
        val lines = listOf(line(1_000L, end = 2_000L), line(7_999L))
        assertCursor(lines, 1_999L, 0, 0)
        assertCursor(lines, 2_000L, -1, 1)
        assertCursor(lines, 7_998L, -1, 1)
        assertCursor(lines, 7_999L, 1, 1)
    }

    @Test fun declaredEndAloneProvidesTrustedGapButNeverOverridesLaterWords() {
        val declaredOnly = listOf(line(1_000L, end = 3_000L), line(9_000L))
        assertCursor(declaredOnly, 2_999L, 0, 0)
        assertCursor(declaredOnly, 4_200L, -1, 0, gapStart = 4_200L, gapEnd = 8_200L)
        val wordLater = listOf(line(1_000L, end = 2_000L,
            words = listOf(word(1_000L, 4_000L))), line(10_000L))
        assertCursor(wordLater, 3_999L, 0, 0)
        assertCursor(wordLater, 4_000L, -1, 0)
        assertCursor(wordLater, 5_200L, -1, 0, gapStart = 5_200L, gapEnd = 9_200L)
    }

    @Test fun laterTrustedDeclaredEndRemainsTheLongestRealEnd() {
        val lines = listOf(line(1_000L, end = 4_000L,
            words = listOf(word(1_000L, 2_000L))), line(10_000L))
        assertCursor(lines, 3_999L, 0, 0)
        assertCursor(lines, 4_000L, -1, 0)
        assertCursor(lines, 5_200L, -1, 0, gapStart = 5_200L, gapEnd = 9_200L)
    }

    @Test fun backgroundTailDelaysTheTrueGapAndIsNeverClippedToMainEnd() {
        val row = line(1_000L, end = 2_000L, words = listOf(word(1_000L, 2_000L)),
            background = listOf(word(1_500L, 4_000L)))
        val lines = listOf(row, line(10_000L))
        assertCursor(lines, 3_999L, 0, 0)
        assertCursor(lines, 4_000L, -1, 0)
        assertCursor(lines, 5_200L, -1, 0, gapStart = 5_200L, gapEnd = 9_200L)
        assertEquals(4_000L, row.backgroundWords.single().endTimeMs)
    }

    @Test fun shortLrcIntervalsRemainActiveUntilTheNextActualTimestamp() {
        val lines = listOf(line(1_000L), line(15_999L))
        assertCursor(lines, 15_998L, 0, 0)
        assertCursor(lines, 15_999L, 1, 1)
        assertTrue(lines.all { it.words.isEmpty() && it.endTimeMs == -1L })
    }

    @Test fun estimatedLongLrcGapIsDecorativeAndDoesNotCreateWordsOrAnEnd() {
        val lines = listOf(line(1_000L), line(16_000L))
        assertCursor(lines, 7_199L, 0, 0)
        assertCursor(lines, 7_200L, -1, 0, gapStart = 7_200L, gapEnd = 15_200L)
        assertCursor(lines, 15_199L, -1, 0, gapStart = 7_200L, gapEnd = 15_200L)
        assertCursor(lines, 15_200L, -1, 1)
        assertCursor(lines, 15_999L, -1, 1)
        assertCursor(lines, 16_000L, 1, 1)
        assertTrue(lines.all { it.words.isEmpty() && it.backgroundWords.isEmpty() })
        assertTrue(lines.all { it.endTimeMs == -1L })
    }

    @Test fun estimatedLrcSingingTimeIsCappedAtEightSeconds() {
        val lines = listOf(line(1_000L), line(31_000L))
        assertCursor(lines, 10_199L, 0, 0)
        assertCursor(lines, 10_200L, -1, 0, gapStart = 10_200L, gapEnd = 30_200L)
    }

    @Test fun mainOverlapRequiresFiveHundredMillisecondsAndUsesExclusiveEnd() {
        val below = listOf(line(1_000L, words = listOf(word(1_000L, 2_499L))), line(2_000L))
        assertCursor(below, 2_000L, 1, 1)
        val threshold = listOf(line(1_000L, words = listOf(word(1_000L, 2_500L))), line(2_000L))
        assertCursor(threshold, 2_000L, 1, 1, intArrayOf(0, 1))
        assertCursor(threshold, 2_499L, 1, 1, intArrayOf(0, 1))
        assertCursor(threshold, 2_500L, 1, 1)
    }

    @Test fun backgroundOverlapRequiresOneHundredMillisecondsAndUsesExclusiveEnd() {
        val below = listOf(line(1_000L, words = listOf(word(1_000L, 1_800L)),
            background = listOf(word(1_500L, 2_099L))), line(2_000L))
        assertCursor(below, 2_000L, 1, 1)
        val threshold = listOf(line(1_000L, words = listOf(word(1_000L, 1_800L)),
            background = listOf(word(1_500L, 2_100L))), line(2_000L))
        assertCursor(threshold, 2_000L, 1, 1, intArrayOf(0, 1))
        assertCursor(threshold, 2_099L, 1, 1, intArrayOf(0, 1))
        assertCursor(threshold, 2_100L, 1, 1)
    }

    @Test fun trustedDeclaredOverlapCanBeShorterThanTheWordTailThreshold() {
        val lines = listOf(line(1_000L, end = 2_001L,
            words = listOf(word(1_000L, 1_800L))), line(2_000L))
        assertCursor(lines, 2_000L, 1, 1, intArrayOf(0, 1))
        assertCursor(lines, 2_001L, 1, 1)
        val noOverlap = listOf(line(1_000L, end = 2_000L), line(2_000L))
        assertCursor(noOverlap, 2_000L, 1, 1)
    }

    @Test fun overlappingBackgroundRemainsActiveAcrossMultipleFollowingRows() {
        val row = line(1_000L, words = listOf(word(1_000L, 1_900L)),
            background = listOf(word(1_500L, 4_050L)))
        val lines = listOf(row, line(2_000L), line(3_000L), line(4_000L))
        assertCursor(lines, 4_049L, 3, 3, intArrayOf(0, 3))
        assertCursor(lines, 4_050L, 3, 3)
        assertEquals(4_050L, row.backgroundWords.single().endTimeMs)
    }

    @Test fun onlyThreePreviousRowsJoinTheCurrentRow() {
        val lines = (0..5).map { index ->
            val start = index * 1_000L
            line(start, words = listOf(word(start, 10_000L)))
        }
        assertCursor(lines, 5_000L, 5, 5, intArrayOf(2, 3, 4, 5))
        assertCursor(lines, 9_999L, 5, 5, intArrayOf(2, 3, 4, 5))
        assertCursor(lines, 10_000L, -1, 5)
    }

    @Test fun equalTimestampDuetKeepsBothVoicesWithIndependentEndWindows() {
        val lines = listOf(
            line(1_000L, words = listOf(word(1_000L, 3_000L)), side = 1),
            line(1_000L, words = listOf(word(1_000L, 2_000L)), side = 2)
        )
        assertCursor(lines, 1_000L, 1, 1, intArrayOf(0, 1))
        assertCursor(lines, 2_000L, 0, 1)
        assertCursor(lines, 3_000L, -1, 1)
        assertEquals(listOf(1, 2), lines.map { it.speakerSide })
    }

    @Test fun equalStartCurrentGroupIsNotLimitedToFourVoices() {
        val lines = (0..1).map { index ->
            val start = index * 1_000L
            line(start, words = listOf(word(start, 5_000L)))
        } + List(5) { line(2_000L, words = listOf(word(2_000L, 5_000L))) }
        assertCursor(lines, 2_000L, 6, 6, intArrayOf(0, 1, 2, 3, 4, 5, 6))
    }

    @Test fun equalStartSiblingIsNotTheThresholdForAnOverlapIntoTheNextGroup() {
        val lines = listOf(
            line(1_000L, words = listOf(word(1_000L, 2_499L)), side = 1),
            line(1_000L, words = listOf(word(1_000L, 1_800L)), side = 2),
            line(2_000L)
        )
        assertCursor(lines, 2_000L, 2, 2)
    }

    @Test fun scrollWaitsForAllEqualStartVoicesBeforeAdvancingOrShowingGap() {
        val lines = listOf(
            line(1_000L, words = listOf(word(1_000L, 4_000L))),
            line(1_000L, words = listOf(word(1_000L, 2_000L))),
            line(10_000L)
        )
        assertCursor(lines, 3_200L, 0, 1)
        assertCursor(lines, 5_200L, -1, 1, gapStart = 5_200L, gapEnd = 9_200L)
        assertCursor(lines, 9_200L, -1, 2)
    }

    @Test fun previousBackgroundCanRemainActiveAfterTheCurrentGroupEnds() {
        val lines = listOf(
            line(1_000L, words = listOf(word(1_000L, 1_800L)),
                background = listOf(word(1_500L, 4_000L))),
            line(2_000L, words = listOf(word(2_000L, 2_500L))),
            line(3_000L)
        )
        assertCursor(lines, 2_500L, -1, 2, intArrayOf(0))
        assertCursor(lines, 3_000L, 2, 2, intArrayOf(0, 2))
        assertCursor(lines, 4_000L, 2, 2)
    }

    @Test fun heldBackgroundAlsoDelaysAFollowingLongGap() {
        val lines = listOf(
            line(1_000L, words = listOf(word(1_000L, 1_800L)),
                background = listOf(word(1_500L, 7_000L))),
            line(2_000L, words = listOf(word(2_000L, 2_500L))),
            line(13_000L)
        )
        assertCursor(lines, 4_000L, -1, 1, intArrayOf(0))
        assertCursor(lines, 7_000L, -1, 1)
        assertCursor(lines, 8_200L, -1, 1, gapStart = 8_200L, gapEnd = 12_200L)
        assertCursor(lines, 12_200L, -1, 2)
    }

    @Test fun actualWordStartNeverHighlightsAtAnEarlierParagraphStart() {
        val lines = listOf(line(1_000L, end = 3_000L,
            words = listOf(word(1_500L, 2_000L))))
        assertCursor(lines, 1_000L, -1, 0)
        assertCursor(lines, 1_499L, -1, 0)
        assertCursor(lines, 1_500L, 0, 0)
        assertCursor(lines, 3_000L, -1, 0)
        val earlierBackground = listOf(line(1_000L, words = listOf(word(1_500L, 2_000L)),
            background = listOf(word(1_200L, 2_500L))))
        assertCursor(earlierBackground, 1_199L, -1, 0)
        assertCursor(earlierBackground, 1_200L, 0, 0)
    }

    @Test fun finalTrustedEndHasNoActivityOrGapAndKeepsTheLastScrollAnchor() {
        val lines = listOf(line(0L), line(5_000L, end = 6_000L))
        assertCursor(lines, 5_999L, 1, 1)
        assertCursor(lines, 6_000L, -1, 1)
        assertCursor(lines, 199_999L, -1, 1, duration = 200_000L)
        assertCursor(lines, Long.MAX_VALUE, -1, 1)
    }

    @Test fun missingFinalEndCannotCreateAnEntireTrackOutroGap() {
        val lines = listOf(line(0L), line(5_000L))
        assertCursor(lines, 199_999L, 1, 1, duration = 200_000L)
        assertCursor(lines, Long.MAX_VALUE, 1, 1)
        assertTrue(lines.all { it.endTimeMs == -1L && it.words.isEmpty() })
    }

    @Test fun knownTrackEndpointClearsAllFrameActivityIncludingAnIntroGap() {
        val lines = listOf(line(1_000L, words = listOf(word(1_000L, 20_000L))), line(5_000L))
        assertCursor(lines, 9_999L, 1, 1, intArrayOf(0, 1), duration = 10_000L)
        val endpoint = assertCursor(lines, 10_000L, -1, 1, duration = 10_000L)
        assertFalse(endpoint.activeIndices.isNotEmpty() || endpoint.gapStartMs >= 0L)
        assertCursor(lines, 10_001L, -1, 1, duration = 10_000L)
        assertCursor(listOf(line(10_000L)), 5_000L, -1, 0, duration = 5_000L)
    }

    @Test fun forwardBackwardSeekAndRepeatedPausedPositionsHaveNoHistory() {
        val lines = listOf(line(1_000L, end = 2_000L), line(8_000L), line(24_000L))
        val positions = listOf(1_999L, 3_200L, 7_200L, 8_000L, 20_000L, 24_000L)
        val expected = positions.associateWith { ContentLyricsCursor.resolve(lines, it, 30_000L) }
        for (position in positions.reversed() + positions + listOf(3_200L, 3_200L, 1_999L)) {
            val cursor = ContentLyricsCursor.resolve(lines, position, 30_000L)
            val reference = expected.getValue(position)
            assertSameCursor(reference, cursor)
        }
        val original = ContentLyricsCursor.resolve(lines, 8_000L, 30_000L)
        original.activeIndices[0] = 999
        assertCursor(lines, 8_000L, 1, 1, duration = 30_000L)
    }

    @Test fun binarySearchDoesNotActivateTheUpcomingTimestamp() {
        val lines = (0..255).map { line(it * 1_000L) }
        assertCursor(lines, 127_999L, 127, 127)
        assertCursor(lines, 128_000L, 128, 128)
    }

    @Test fun cursorApiIsPublicAndResolveIsJvmStaticForJavaStore() {
        assertTrue(Modifier.isPublic(ContentLyricsCursor::class.java.modifiers))
        assertTrue(Modifier.isPublic(ContentLyricsCursor.Cursor::class.java.modifiers))
        val method = ContentLyricsCursor::class.java.getMethod("resolve", List::class.java,
            java.lang.Long.TYPE, java.lang.Long.TYPE)
        assertTrue(Modifier.isPublic(method.modifiers))
        assertTrue(Modifier.isStatic(method.modifiers))
        val cursor = method.invoke(null, listOf(line(1_000L)), 1_000L, 0L)
            as ContentLyricsCursor.Cursor
        assertEquals(0, cursor.activeIndex)
        assertArrayEquals(intArrayOf(0), cursor.activeIndices)
    }

    private fun line(
        start: Long,
        end: Long = -1L,
        words: List<ContentPorts.LyricsWord> = emptyList(),
        background: List<ContentPorts.LyricsWord> = emptyList(),
        side: Int = 0
    ) = ContentPorts.LyricsLine(start, "Synthetic lyric", "Translation", "Romanization",
        words, end, background, side)

    private fun word(start: Long, end: Long) = ContentPorts.LyricsWord(start, end, "word")

    private fun assertCursor(
        lines: List<ContentPorts.LyricsLine>,
        position: Long,
        active: Int,
        scroll: Int,
        indices: IntArray = if (active >= 0) intArrayOf(active) else intArrayOf(),
        gapStart: Long = -1L,
        gapEnd: Long = -1L,
        duration: Long = 0L
    ): ContentLyricsCursor.Cursor {
        val cursor = ContentLyricsCursor.resolve(lines, position, duration)
        assertEquals("active at $position", active, cursor.activeIndex)
        assertEquals("scroll at $position", scroll, cursor.scrollIndex)
        assertArrayEquals("indices at $position", indices, cursor.activeIndices)
        assertEquals("gap start at $position", gapStart, cursor.gapStartMs)
        assertEquals("gap end at $position", gapEnd, cursor.gapEndMs)
        return cursor
    }

    private fun assertSameCursor(expected: ContentLyricsCursor.Cursor, actual: ContentLyricsCursor.Cursor) {
        assertEquals(expected.activeIndex, actual.activeIndex)
        assertEquals(expected.scrollIndex, actual.scrollIndex)
        assertArrayEquals(expected.activeIndices, actual.activeIndices)
        assertEquals(expected.gapStartMs, actual.gapStartMs)
        assertEquals(expected.gapEndMs, actual.gapEndMs)
    }
}
