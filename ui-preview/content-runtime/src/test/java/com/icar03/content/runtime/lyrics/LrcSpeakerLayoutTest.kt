package com.icar03.content.runtime.lyrics

import org.junit.Assert.*
import org.junit.Test

class LrcSpeakerLayoutTest {
    @Test fun knownLabelsCarryForwardAndMarkerOnlyRowsDoNotBecomeLyricText() {
        val result = LyricsResult(lyrics = "[00:01]开场\n[00:02]女：\n[00:03]第一句\n[00:04]接着唱\n[00:05]男声：第二句\n[00:06]Female：第三句\n[00:07]合唱：一起唱")
        val rows = result.timedLines()
        assertEquals(listOf("开场", "第一句", "接着唱", "第二句", "第三句", "一起唱"), rows.map { it.text })
        assertEquals(listOf(0, 1, 1, 2, 1, 3), rows.map { it.speakerSide })
        assertEquals(listOf(1L, 3L, 4L, 5L, 6L, 7L).map { it * 1_000L }, rows.map { it.timeMs })
    }

    @Test fun repeatedNamedLabelsSupportCypherWithoutAssigningUnmarkedLyrics() {
        val result = LyricsResult(lyrics = "[00:01]丙：第一句\n[00:02]甲：第二句\n[00:03]乙：第三句\n[00:04]丙：第四句\n[00:05]丁：第五句")
        assertEquals(listOf(1, 2, 1, 1, 2), result.timedLines().map { it.speakerSide })
        val unmarked = result.copy(lyrics = "[00:01]第一句\n[00:02]第二句")
        assertEquals(listOf(0, 0), unmarked.timedLines().map { it.speakerSide })
        val oneOffLabels = result.copy(lyrics = "[00:01]甲：第一句\n[00:02]乙：第二句")
        assertEquals(listOf(0, 0), oneOffLabels.timedLines().map { it.speakerSide })
        assertEquals(listOf("甲：第一句", "乙：第二句"), oneOffLabels.timedLines().map { it.text })
    }

    @Test fun splitAndPartialWordPrefixesKeepSurvivingSourceTimesAndBackgrounds() {
        val echo = listOf(ParsedLyricWord(2_500L, 4_000L, "回声"))
        val rows = listOf(ParsedLyricLine(1_000L, "男：第一句", words = listOf(
            ParsedLyricWord(1_000L, 1_500L, "男：第一"), ParsedLyricWord(1_500L, 2_000L, "句")),
            backgroundWords = echo, translation = "M: translation", romanization = "Male：roma"),
            ParsedLyricLine(3_000L, "女：第二句", words = listOf(ParsedLyricWord(3_000L, 3_100L, "女"),
                ParsedLyricWord(3_100L, 3_200L, "："), ParsedLyricWord(3_200L, 4_000L, "第二句"))))
        val projected = LrcSpeakerLayout.project(rows, "", "")
        assertEquals(listOf(1, 2), projected.map { it.speakerSide })
        assertEquals(listOf(ParsedLyricWord(1_000L, 1_500L, "第一"), ParsedLyricWord(1_500L, 2_000L, "句")), projected[0].words)
        assertEquals(listOf(ParsedLyricWord(3_200L, 4_000L, "第二句")), projected[1].words)
        assertEquals(echo, projected[0].backgroundWords)
        assertEquals("translation", projected[0].translation)
        assertEquals("roma", projected[0].romanization)
    }

    @Test fun yrcOnlySpeakerLabelsSurvivePlainLrcAlignmentAndKeepWordTimes() {
        val result = LyricsResult(lyrics = "[00:01]第一句\n[00:03]第二句", durationMs = 10_000L,
            wordLyrics = "[1000,1000](1000,100,0)男(1100,100,0)：(1200,800,0)第一句\n" +
                "[3000,1000](3000,100,0)女(3100,100,0)：(3200,800,0)第二句")
        val rows = result.timedLines()
        assertEquals(listOf(1, 2), rows.map { it.speakerSide })
        assertEquals(listOf("第一句", "第二句"), rows.map { it.text })
        assertEquals(listOf("male", "female"), rows.map { it.speaker })
        assertEquals(listOf("第一句", "第二句"), rows.map { it.words.single().text })
        assertEquals(listOf(1_200L, 3_200L), rows.map { it.words.single().startTimeMs })
    }

    @Test fun ordinaryColonSentencesAndCreditsNeverBecomeVocalIdentities() {
        val rows = listOf("我说：往前走", "然后她问：好吗", "词：甲", "鼓：乙", "笛：丙", "鼓：丁", "Hello!: world", "World!: text", "Hello!: again")
            .mapIndexed { index, text -> ParsedLyricLine(index * 1_000L, text) }
        assertSame(rows, LrcSpeakerLayout.project(rows, "", ""))
    }

    @Test fun realYrcWordsAndLrcLabelsAreStrippedAfterTrustedAxisAlignment() {
        val result = LyricsResult(lyrics = "[00:01]男：第一句\n[00:03]女：第二句", durationMs = 10_000L,
            wordLyrics = "[1000,1000](1000,100,0)男(1100,100,0)：(1200,800,0)第一句\n[3000,1000](3000,100,0)女(3100,100,0)：(3200,800,0)第二句")
        val rows = result.timedLines()
        assertEquals(listOf(1, 2), rows.map { it.speakerSide })
        assertEquals(listOf("第一句", "第二句"), rows.map { it.text })
        assertEquals(listOf(1_200L, 3_200L), rows.map { it.words.single().startTimeMs })
        assertEquals(listOf(1_000L, 3_000L), rows.map { it.timeMs })
    }
}
