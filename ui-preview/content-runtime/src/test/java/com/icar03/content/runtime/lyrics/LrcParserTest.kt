package com.icar03.content.runtime.lyrics

import org.junit.Assert.*
import org.junit.Test

class LrcParserTest {
    @Test fun parsesMultipleStampsAndEnhancedTimingWhileDroppingCredits() {
        val lines = LrcParser.parse("""
            [ar:Artist]
            [00:00.01]作词：作者
            [01:00.1][00:05.25]<00:05.250>一<00:05.800>句
            [00:05.250]一句
            [00:02:009]开始
            [00:03.123]
        """.trimIndent())
        assertEquals(listOf(2_009L, 5_250L, 60_100L), lines.map { it.timeMs })
        assertEquals(listOf("开始", "一句", "一句"), lines.map { it.text })
    }

    @Test fun translationsUseClosestTimestampAndOnlyOneOriginalPerTranslation() {
        val lines = LrcParser.align(
            "[00:01.000]甲\n[00:01.100]乙\n[00:03.000]丙",
            "[00:01.080]second\n[00:01.020]first\n[00:03.701]too far"
        )
        assertEquals(listOf("first", "second", ""), lines.map { it.translation })
        val one = LrcParser.align("[00:01.00]甲\n[00:01.05]乙", "[00:01.04]only")
        assertEquals(listOf("", "only"), one.map { it.translation })
    }

    @Test fun positiveOffsetAdvancesAndNegativeOffsetDelaysAllLineTimes() {
        val positive = LrcParser.parse("[offset:+500]\n[00:01.00]a\n[00:02.00]b")
        val negative = LrcParser.parse("[offset:-300]\n[00:01.00]a\n[00:02.00]b")
        assertEquals(listOf(500L, 1_500L), positive.map { it.timeMs })
        assertEquals(listOf(1_300L, 2_300L), negative.map { it.timeMs })
        assertEquals(0L, LrcParser.parse("[offset:1000]\n[00:00.50]a").single().timeMs)
    }

    @Test fun offsetUsesFirstTagAndRejectsUntrustedMagnitude() {
        assertEquals(900L, LrcParser.parse("[offset:100]\n[offset:900]\n[00:01.00]a").single().timeMs)
        assertEquals(400L, LrcParser.parse("[offset: 600 ]\n[00:01.00]a").single().timeMs)
        for (offset in listOf("10001", "-10001", "999999999999999999999")) {
            assertEquals(1_000L, LrcParser.parse("[offset:$offset]\n[00:01.00]a").single().timeMs)
        }
        assertEquals(1_000L, LrcParser.parse("[offset:10000]\n[00:11.00]a").single().timeMs)
    }

    @Test fun inlineStampsDoNotBecomeAdditionalLinesAndWordsHaveExclusiveEnds() {
        val line = LrcParser.parse("[00:01.00]<00:01.00>a<00:01.50>b<00:02.00>").single()
        assertEquals(1_000L, line.timeMs)
        assertEquals("ab", line.text)
        assertEquals(listOf(ParsedLyricWord(1_000L, 1_500L, "a"),
            ParsedLyricWord(1_500L, 2_000L, "b")), line.words)
        assertTrue(LrcParser.parse("<00:01.00>a<00:02.00>b").isEmpty())
        assertEquals(1, LrcParser.parse("[00:01.00]a [00:02.00]b").size)
    }

    @Test fun enhancedWordsAreCappedByNextLineIncludingAnEmptyEndMark() {
        val lines = LrcParser.parse("[00:01.00]<00:01.00>a<00:01.50>b<00:09.00>\n[00:02.00]")
        assertEquals(listOf(ParsedLyricWord(1_000L, 1_500L, "a"),
            ParsedLyricWord(1_500L, 2_000L, "b")), lines.single().words)
    }

    @Test fun unknownWordEndsAndBackwardsEnhancedTimingNeverGetInventedDurations() {
        val one = LrcParser.parse("[00:01.00]<00:01.00>a").single()
        assertEquals("a", one.text)
        assertTrue(one.words.isEmpty())
        val partial = LrcParser.parse("[00:01.00]<00:01.00>a<00:01.50>b").single()
        assertEquals("ab", partial.text)
        assertEquals(listOf(ParsedLyricWord(1_000L, 1_500L, "a")), partial.words)
        val backwards = LrcParser.parse("[00:01.00]<00:02.00>a<00:01.50>b<00:03.00>").single()
        assertEquals("ab", backwards.text)
        assertTrue(backwards.words.isEmpty())
    }

    @Test fun repeatedStampsShiftWordTimingToEachRepeat() {
        val lines = LrcParser.parse("[00:02.00][00:05.00]<00:02.00>a<00:02.20>b\n" +
            "[00:03.00]next\n[00:06.00]last")
        assertEquals(listOf(2_000L, 3_000L, 5_000L, 6_000L), lines.map { it.timeMs })
        assertEquals(listOf(ParsedLyricWord(2_000L, 2_200L, "a"),
            ParsedLyricWord(2_200L, 3_000L, "b")), lines[0].words)
        assertEquals(listOf(ParsedLyricWord(5_000L, 5_200L, "a"),
            ParsedLyricWord(5_200L, 6_000L, "b")), lines[2].words)
    }

    @Test fun duplicateLinesPreferTimingAndDoNotRequireAdjacency() {
        val lines = LrcParser.parse("[00:01.00]ab\n[00:01.00]other\n" +
            "[00:01.00]<00:01.00>a<00:01.50>b<00:02.00>\n[00:01.00]ab")
        assertEquals(listOf("ab", "other"), lines.map { it.text })
        assertEquals(2, lines.first().words.size)
    }

    @Test fun offsetsApplyToWordsAndAreInheritedByTranslationsAndRomanizations() {
        val line = LrcParser.align(
            "[offset:+500]\n[00:01.00]<00:01.00>a<00:01.50>b<00:02.00>",
            "[00:01.00]translated",
            romanizedRaw = "[00:01.00]roma"
        ).single()
        assertEquals(500L, line.timeMs)
        assertEquals("translated", line.translation)
        assertEquals("roma", line.romanization)
        assertEquals(listOf(ParsedLyricWord(500L, 1_000L, "a"),
            ParsedLyricWord(1_000L, 1_500L, "b")), line.words)
    }

    @Test fun duplicateTranslationsRemainOneToOneAndKeepOriginalWordTiming() {
        val lines = LrcParser.align(
            "[00:01.00]<00:01.00>a<00:01.02>\n[00:01.05]<00:01.05>b<00:01.10>\n[00:02.00]a",
            "[00:01.04]one\n[00:01.04]one\n[00:02.00]two",
            romanizedRaw = "[00:01.00]ra\n[00:01.05]rb"
        )
        assertEquals(listOf("", "one", "two"), lines.map { it.translation })
        assertEquals(listOf("ra", "rb", ""), lines.map { it.romanization })
        assertEquals(listOf(ParsedLyricWord(1_000L, 1_020L, "a")), lines.first().words)
    }

    @Test fun carriageReturnsAndBomDoNotMergeEntireSongsIntoOneLine() {
        val lines = LrcParser.parse("\uFEFF[00:01.00]a\r\n[00:02.00]b\r[00:03.00]c")
        assertEquals(listOf("a", "b", "c"), lines.map { it.text })
    }

    @Test fun yrcUsesExplicitDurationsAndPreservesLiteralParentheses() {
        val line = LrcParser.parseYrc("[1000,1000](1000,500,0)(oh) (1500,2000,0)b").single()
        assertEquals("(oh) b", line.text)
        assertEquals(listOf(ParsedLyricWord(1_000L, 1_500L, "(oh) "),
            ParsedLyricWord(1_500L, 2_000L, "b")), line.words)
        assertEquals("ab", LrcParser.parseYrc("[1000,1000](1000,500,0)a(12,34)(1500,500,0)b").single().text)
    }

    @Test fun yrcIsOnlyAttachedToMatchingLyricsAndKeepsTranslations() {
        val line = LrcParser.align("[offset:500]\n[00:01.00]a b", "[00:01.00]translated",
            "[1000,1000](1000,500,0)a (1500,500,0)b", "[00:01.00]roma").single()
        assertEquals(500L, line.timeMs)
        assertEquals("translated", line.translation)
        assertEquals("roma", line.romanization)
        assertEquals(listOf(ParsedLyricWord(500L, 1_000L, "a "),
            ParsedLyricWord(1_000L, 1_500L, "b")), line.words)
        assertTrue(LrcParser.align("[00:01.00]a", "", "[1000,500](1000,500,0)other").single().words.isEmpty())
        assertTrue(LrcParser.align("[00:01.00]a", "", "[5000,500](5000,500,0)a").single().words.isEmpty())
    }

    @Test fun validWordOnlyBodiesUseRealTimingAndMalformedDurationsAreRejected() {
        val line = LrcParser.align("", "[00:01.00]translated", "[1000,500](1000,500,0)a").single()
        assertEquals(1_000L, line.timeMs)
        assertEquals("a", line.text)
        assertEquals("translated", line.translation)
        assertEquals(listOf(ParsedLyricWord(1_000L, 1_500L, "a")), line.words)
        assertTrue(LrcParser.parseYrc("[1000,500](1000,0,0)a").isEmpty())
        assertTrue(LrcParser.parseYrc("[9223372036854775800,100](9223372036854775800,100,0)a").isEmpty())
        assertTrue(LrcParser.parseYrc("[1000,500](500,100,0)a").isEmpty())
        assertTrue(LrcParser.parseYrc("[1000,500](1000,500,0)作词：作者").isEmpty())
    }

    @Test fun onlyDeclaredEndMarksCreateLineEndsAndOffsetsApplyToThoseEnds() {
        val plain = LrcParser.parse("[00:01.00]a\n[00:02.00]b")
        assertNull(plain.first().endTimeMs)
        assertNull(plain.last().endTimeMs)
        val marked = LrcParser.parse("[offset:500]\n[00:01.00]a\n[00:02.00]\n[00:03.00]b")
        assertEquals(1_500L, marked.first().endTimeMs)
        assertNull(marked.last().endTimeMs)
        val enhanced = LrcParser.parse("[00:01.00]<00:01.00>a<00:01.50>").single()
        assertEquals(1_500L, enhanced.endTimeMs)
        assertNull(LrcParser.parse("[00:01.00]<00:01.00>a").single().endTimeMs)
        assertEquals(2_000L, LrcParser.parseYrc("[1000,1000](1000,200,0)a").single().endTimeMs)
    }

    @Test fun translationAndRomanizationTiesPreferLaterStampsAndLastSameStamp() {
        val line = LrcParser.align("[00:02.00]a",
            "[00:01.50]earlier\n[00:02.50]later\n[00:02.50]last\n[00:02.50]later",
            romanizedRaw = "[00:02.70]boundary").single()
        assertEquals("later", line.translation)
        assertEquals("boundary", line.romanization)
        assertEquals("", LrcParser.align("[00:02.00]a", "[00:02.701]outside").single().translation)
    }

    @Test fun sparseWordTracksDoNotPretendToProvideFullSongTiming() {
        val original = (1..10).joinToString("\n") { "[00:${it.toString().padStart(2, '0')}.00]line$it" }
        val sparse = "[1000,500](1000,500,0)line1"
        val half = (1..5).joinToString("\n") { "[${it * 1000},500](${it * 1000},500,0)line$it" }
        val rejected = LrcParser.align(original, "", sparse)
        assertTrue(rejected.all { it.words.isEmpty() })
        assertTrue(rejected.all { it.endTimeMs == null })
        val accepted = LrcParser.align(original, "", half)
        assertEquals(5, accepted.count { it.words.isNotEmpty() })
        assertEquals((1..10).map { it * 1000L }, accepted.map { it.timeMs })
        assertEquals(1_500L, accepted.first().endTimeMs)
        val inlineSparse = original.replace("[00:01.00]line1", "[00:01.00]<00:01.00>line1<00:01.50>")
        assertTrue(LrcParser.align(inlineSparse, "").all { it.words.isEmpty() })
    }

    @Test fun enhancedLrcWordFieldUsesSameGateAndKeepsTheOriginalLineClock() {
        val line = LrcParser.align("[00:01.00]a", "",
            "[00:01.08]<00:01.08>a<00:01.50>").single()
        assertEquals(1_000L, line.timeMs)
        assertEquals(listOf(ParsedLyricWord(1_080L, 1_500L, "a")), line.words)
        assertEquals(1_500L, line.endTimeMs)
        assertTrue(LrcParser.align("[00:01.00]a", "",
            "[00:01.121]<00:01.121>a<00:01.50>").single().words.isEmpty())
    }

    @Test fun wordEdgesTrimOutsideSpacesWithoutRemovingInternalWordSpacing() {
        val lrc = LrcParser.parse("[00:01.00]<00:01.00>  first <00:01.50>second  <00:02.00>").single()
        assertEquals("first second", lrc.text)
        assertEquals(listOf("first ", "second"), lrc.words.map { it.text })
        val yrc = LrcParser.parseYrc("[1000,1000](1000,500,0)  first (1500,500,0)second  ").single()
        assertEquals(listOf("first ", "second"), yrc.words.map { it.text })
    }

    @Test fun creditsNeverBecomeWordCapsAndNegativeOffsetsShiftWordEndsTogether() {
        val line = LrcParser.parse("[offset:-300]\n[00:01.00]<00:01.00>a<00:02.00>\n" +
            "[00:01.50]作词：作者\n[00:03.00]b").first()
        assertEquals(1_300L, line.timeMs)
        assertEquals(2_300L, line.endTimeMs)
        assertEquals(listOf(ParsedLyricWord(1_300L, 2_300L, "a")), line.words)
        val words = LrcParser.parseYrc("[offset:-300]\n[1000,500](1000,500,0)a").single()
        assertEquals(1_300L, words.timeMs)
        assertEquals(1_800L, words.endTimeMs)
        assertEquals(listOf(ParsedLyricWord(1_300L, 1_800L, "a")), words.words)
    }

    @Test fun wordTracksAlreadyFinishedBeforeTheirMainLineNeverActivate() {
        val line = LrcParser.align("[00:01.00]a", "", "[900,50](900,50,0)a").single()
        assertTrue(line.words.isEmpty())
        assertNull(line.endTimeMs)
    }

    @Test fun trustedCompleteWordAxesRehangKnownSongsAndKeepSubtitlesOnTheirOriginalBodies() {
        val original = "[00:10.00]FIRST, line!\n[00:30.00]second line"
        val translated = "[00:10.00]first translation\n[00:30.00]second translation"
        val romanized = "[00:30.00]second roma"
        for (shift in listOf(500L, 3_000L)) {
            val first = 10_000L + shift
            val second = 30_000L + shift
            val words = "[$first,1000](${first + 100},250,0)first line\n" +
                "[$second,2000](${second + 300},400,0)second line"
            val lines = LrcParser.align(original, translated, words, romanized, durationMs = 40_000L)
            assertEquals(listOf(first, second), lines.map { it.timeMs })
            assertEquals(listOf("FIRST, line!", "second line"), lines.map { it.text })
            assertEquals(listOf("first translation", "second translation"), lines.map { it.translation })
            assertEquals(listOf("", "second roma"), lines.map { it.romanization })
            assertEquals(listOf(ParsedLyricWord(first + 100, first + 350, "first line")), lines.first().words)
            assertEquals(listOf(ParsedLyricWord(second + 300, second + 700, "second line")), lines.last().words)
            assertEquals(listOf(first + 1_000, second + 2_000), lines.map { it.endTimeMs })
        }
    }

    @Test fun punctuationOnlyBodiesCannotCertifyACompleteWordClock() {
        val original = "[00:10]！！！\n[00:30]？？？"
        for (shift in listOf(0L, 500L)) {
            val first = 10_000L + shift
            val second = 30_000L + shift
            val words = "[$first,500]($first,500,0)？？？\n[$second,500]($second,500,0)！！！"
            val rows = LrcParser.align(original, "", words, durationMs = 40_000L)
            assertEquals(listOf(10_000L, 30_000L), rows.map { it.timeMs })
            assertTrue(rows.all { it.words.isEmpty() && it.endTimeMs == null })
        }
    }

    @Test fun unrecognizedColonSentencesMustMatchInFullAcrossBothWordAxisPaths() {
        val original = "[00:10]我说：往前走\n[00:30]然后她问：好吗"
        for (shift in listOf(0L, 500L)) {
            val first = 10_000L + shift
            val second = 30_000L + shift
            val words = "[$first,500]($first,500,0)他问：往前走\n[$second,500]($second,500,0)司机说：好吗"
            val rows = LrcParser.align(original, "", words, durationMs = 40_000L)
            assertEquals(listOf(10_000L, 30_000L), rows.map { it.timeMs })
            assertTrue(rows.all { it.words.isEmpty() && it.speaker.isEmpty() && it.endTimeMs == null })
        }
    }

    @Test fun identicalWordsFromContradictoryRecognizedVoicesNeverAttach() {
        val original = "[00:10]V1：Same words\n[00:30]V2：Same words"
        for (shift in listOf(0L, 500L)) {
            val first = 10_000L + shift
            val second = 30_000L + shift
            val words = "[$first,500]($first,500,0)V2：Same words\n[$second,500]($second,500,0)V1：Same words"
            val rows = LrcParser.align(original, "", words, durationMs = 40_000L)
            assertEquals(listOf(10_000L, 30_000L), rows.map { it.timeMs })
            assertTrue(rows.all { it.words.isEmpty() })
        }
    }

    @Test fun twoRawChannelsCannotInventRepeatedSoloNameEvidence() {
        val original = "[00:01]Aster：First\n[00:03]Briar：Second"
        val words = "[1000,500](1000,500,0)Aster：First\n[3000,500](3000,500,0)Briar：Second"
        val rows = LyricsResult(lyrics = original, wordLyrics = words, durationMs = 10_000L).timedLines()
        assertTrue(rows.all { it.speaker.isEmpty() && it.speakerSide == 0 })
        assertEquals(listOf("Aster：First", "Briar：Second"), rows.map { it.text })
    }

    @Test fun unknownDurationAndSingleLineBodiesNeverEnableClockRehang() {
        val original = "[00:10.00]a\n[00:30.00]b"
        val words = "[10500,500](10500,500,0)a\n[30500,500](30500,500,0)b"
        for (duration in listOf(0L, -1L)) {
            val lines = LrcParser.align(original, "", words, durationMs = duration)
            assertEquals(listOf(10_000L, 30_000L), lines.map { it.timeMs })
            assertTrue(lines.all { it.words.isEmpty() })
        }
        val line = LrcParser.align("[00:10.00]a", "", "[10500,500](10500,500,0)a",
            durationMs = 40_000L).single()
        assertEquals(10_000L, line.timeMs)
        assertTrue(line.words.isEmpty())
    }

    @Test fun invalidWordBoundsOrWorseEndingFitsRejectTheEntireRehang() {
        val original = "[01:20.00]a\n[01:35.00]b"
        val invalidAxes = listOf(
            "[80500,500](80500,500,0)a\n[99500,1000](99500,1000,0)b",
            "[80500,500](80500,1000,0)a\n[95500,500](95500,500,0)b",
            "[80500,500](80500,0,0)a\n[95500,500](95500,500,0)b",
            "[50000,500](50000,500,0)a\n[60000,500](60000,500,0)b"
        )
        for (words in invalidAxes) {
            val lines = LrcParser.align(original, "", words, durationMs = 100_000L)
            assertEquals(listOf(80_000L, 95_000L), lines.map { it.timeMs })
            assertTrue(lines.all { it.words.isEmpty() })
            assertTrue(lines.all { it.endTimeMs == null })
        }
    }

    @Test fun compressedRowsChangedCountsAndRawWordDocumentDisorderRejectRehang() {
        val cases = listOf(
            "[00:10.00][00:30.00]a\n[00:50.00]b" to
                "[10500,500](10500,500,0)a\n[30500,500](30500,500,0)a\n[50500,500](50500,500,0)b",
            "[00:10.00]a\n[00:30.00]b" to "[10500,500](10500,500,0)a",
            "[00:10.00]a\n[00:30.00]b" to
                "[30500,500](30500,500,0)b\n[10500,500](10500,500,0)a",
            "[00:10.00]a\n[00:30.00]b" to
                "[10500,500](10500,500,0)other\n[30500,500](30500,500,0)b"
        )
        for ((original, words) in cases) {
            val lines = LrcParser.align(original, "", words, durationMs = 60_000L)
            assertEquals(LrcParser.parse(original).map { it.timeMs }, lines.map { it.timeMs })
            assertTrue(lines.all { it.words.isEmpty() })
        }
    }

    @Test fun eightMatchingRowsWithTenSecondContradictionAndDifferentRowIdentityKeepLrcOnly() {
        val original = (10..18).joinToString("\n") { "[00:$it.00]line$it" }
        val words = (10..17).joinToString("\n") {
            val time = (it + 10) * 1_000L
            "[$time,500]($time,500,0)line$it"
        } + "\n[28500,500](28500,500,0)different last row"
        val lines = LrcParser.align(original, "", words, durationMs = 40_000L)
        assertEquals((10..18).map { it * 1_000L }, lines.map { it.timeMs })
        assertTrue(lines.all { it.words.isEmpty() })
        assertTrue(lines.all { it.endTimeMs == null })
    }

    @Test fun strictRehangAppliesSignedOffsetsOnceToBothAxesAndCarriesAuxiliaryText() {
        for (offset in listOf(500L, -300L)) {
            val original = "[offset:$offset]\n[00:10.00]a\n[00:30.00]b"
            val words = "[offset:$offset]\n[10500,500](10500,500,0)a\n[30500,500](30500,500,0)b"
            val lines = LrcParser.align(original, "[00:10.00]translated", words,
                "[00:30.00]roma", durationMs = 40_000L)
            assertEquals(listOf(10_500L - offset, 30_500L - offset), lines.map { it.timeMs })
            assertEquals(listOf("translated", ""), lines.map { it.translation })
            assertEquals(listOf("", "roma"), lines.map { it.romanization })
            assertEquals(listOf(ParsedLyricWord(10_500L - offset, 11_000L - offset, "a")), lines.first().words)
        }
    }

    @Test fun repeatedRehangProjectionIsIdempotentAndNeverMutatesRawCacheInputs() {
        val original = "[ar:Artist]\n[00:10.00]a\n[00:11.00]\n[00:30.00]b\n[00:31.00]"
        val translated = "[00:10.00]translated\n[00:30.00]second"
        val words = "[10537,500](10537,300,0)a\n[30537,500](30537,200,0)b"
        val originalBefore = original.toByteArray().toList()
        val translatedBefore = translated.toByteArray().toList()
        val wordsBefore = words.toByteArray().toList()
        val unmodifiedLines = LrcParser.parse(original)
        val expected = LrcParser.align(original, translated, words, durationMs = 40_000L)
        assertEquals(listOf(10_537L, 30_537L), expected.map { it.timeMs })
        repeat(5) {
            assertEquals(expected, LrcParser.align(original, translated, words, durationMs = 40_000L))
            assertEquals(unmodifiedLines, LrcParser.parse(original))
        }
        assertEquals(originalBefore, original.toByteArray().toList())
        assertEquals(translatedBefore, translated.toByteArray().toList())
        assertEquals(wordsBefore, words.toByteArray().toList())
    }

    @Test fun plainOrCreditOnlyBodiesDoNotPretendToBeSynchronizedLyrics() {
        assertTrue(LrcParser.parse("plain song words").isEmpty())
        assertTrue(LrcParser.parse("[00:01.0]制作人：名字\n[00:02.0]").isEmpty())
    }
}
