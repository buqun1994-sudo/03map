package com.icar03.content.runtime.lyrics

import org.junit.Assert.*
import org.junit.Test

class LrcSpeakerLayoutTest {
    @Test fun knownLabelsCarryForwardAndMarkerOnlyRowsDoNotBecomeLyricText() {
        val result = LyricsResult(lyrics = "[00:01]开场\n[00:02]女：\n[00:03]第一句\n[00:04]接着唱\n[00:05]男声：第二句\n[00:06]Female：第三句\n[00:07]合唱：一起唱")
        val rows = result.timedLines()
        assertEquals(listOf("开场", "第一句", "接着唱", "第二句", "第三句", "一起唱"), rows.map { it.text })
        assertEquals(listOf(0, 1, 1, 2, 1, 1), rows.map { it.speakerSide })
        assertEquals(listOf(1L, 3L, 4L, 5L, 6L, 7L).map { it * 1_000L }, rows.map { it.timeMs })
    }

    @Test fun markerOnlyIdentitiesCannotEnableOrChooseAFalseSoloLayout() {
        val raw = "[00:01]V1：\n[00:02]V2：唯一独唱\n[00:03]合唱：合唱正文\n[00:04]V1：\n[00:05]V2：继续独唱"
        val ordinary = LyricsResult(lyrics = raw).timedLines()
        assertEquals(listOf("唯一独唱", "合唱正文", "继续独唱"), ordinary.map { it.text })
        assertEquals(listOf(0, 0, 0), ordinary.map { it.speakerSide })
        val duet = LyricsResult(lyrics = "$raw\n[00:06]V1：第二真实独唱").timedLines()
        assertEquals(listOf(1, 1, 1, 2), duet.map { it.speakerSide })
        assertEquals(listOf("v2", "group", "v2", "v1"), duet.map { it.speaker })
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

    @Test fun productionCreditsDoNotOccupyTheFirstSoloLaneAndLongNamesRemainValid() {
        val result = LyricsResult(candidateArtist = "功夫胖KUNGFU-PEN/GAI周延", lyrics =
            "[00:01]副歌选段：合成曲名\n[00:02]选段作词：合成人名\n[00:03]录音棚：合成地点\n" +
            "[00:04]GAI周延：\n[00:05]首位独唱正文\n[00:06]合：\n[00:07]合唱正文\n" +
            "[00:08]功夫胖KUNGFU-PEN：\n[00:09]第二位独唱正文\n[00:10]GAI周延：再唱正文")
        val rows = result.timedLines()
        assertTrue(rows.take(3).all { it.speaker.isEmpty() && it.speakerSide == 0 })
        assertEquals(listOf(1, 1, 2, 1), rows.drop(3).map { it.speakerSide })
        assertEquals(listOf("首位独唱正文", "合唱正文", "第二位独唱正文", "再唱正文"), rows.drop(3).map { it.text })
        assertEquals(normalizeText("功夫胖KUNGFU-PEN"), rows.single { it.text == "第二位独唱正文" }.speaker)
    }

    @Test fun jointArtistLabelsAlwaysStayLeftAndNeverDetermineSoloOrder() {
        val result = LyricsResult(candidateArtist = "功夫胖KUNGFU-PEN/GAI周延", lyrics =
            "[00:01]GAI周延/功夫胖KUNGFU-PEN：\n[00:02]开場合唱\n" +
            "[00:03]功夫胖KUNGFU-PEN：第一独唱\n[00:04]GAI周延：第二独唱\n" +
            "[00:05]功夫胖KUNGFU-PEN／GAI周延：末尾合唱\n[00:06]继续合唱")
        val rows = result.timedLines()
        assertEquals(listOf(1, 1, 2, 1, 1), rows.map { it.speakerSide })
        assertEquals(listOf("group", normalizeText("功夫胖KUNGFU-PEN"), normalizeText("GAI周延"), "group", "group"), rows.map { it.speaker })
        assertEquals(listOf("开場合唱", "第一独唱", "第二独唱", "末尾合唱", "继续合唱"), rows.map { it.text })
    }

    @Test fun jointLabelsCannotCollapseIntoAHyphenatedSoloIdentity() {
        val rows = LyricsResult(candidateArtist = "A-B/C", lyrics =
            "[00:01]A/B：合成开场\n[00:02]C：第一真实独唱\n[00:03]A-B：第二真实独唱").timedLines()
        assertEquals(listOf(0, 1, 2), rows.map { it.speakerSide })
        assertEquals(listOf("", "c", "ab"), rows.map { it.speaker })
        assertEquals(listOf("A/B：合成开场", "第一真实独唱", "第二真实独唱"), rows.map { it.text })
    }

    @Test fun metadataConfirmedNamesHaveNoShortNameOrPunctuationGate() {
        val longName = "An Extremely Long Multi-Word Stage-Name"
        val rows = LyricsResult(candidateArtist = "$longName/A-Lin", lyrics =
            "[00:01]$longName：合成长名正文\n[00:02]A-Lin：合成短名正文\n[00:03]$longName：合成重复正文").timedLines()
        assertEquals(listOf(1, 2, 1), rows.map { it.speakerSide })
        assertEquals(listOf("合成长名正文", "合成短名正文", "合成重复正文"), rows.map { it.text })
    }

    @Test fun longYrcOnlyLabelsPreserveIdentityAuxiliaryTracksAndEverySurvivingWordTime() {
        for (shift in listOf(0L, 500L, 3_000L)) {
            val first = 1_000L + shift
            val second = 3_000L + shift
            val result = LyricsResult(candidateArtist = "GAI周延/功夫胖KUNGFU-PEN", durationMs = 10_000L,
                lyrics = "[00:01]第一正文\n[00:03]第二正文",
                translatedLyrics = "[00:01]GAI周延：第一译文\n[00:03]功夫胖KUNGFU-PEN：第二译文",
                romanizedLyrics = "[00:01]GAI周延：first roma\n[00:03]功夫胖KUNGFU-PEN：second roma",
                wordLyrics = "[$first,1000]($first,100,0)GAI周延(${first + 100},100,0)：(${first + 200},800,0)第一正文\n" +
                    "[$second,1000]($second,100,0)功夫胖KUNGFU-PEN(${second + 100},100,0)：(${second + 200},800,0)第二正文")
            val rows = result.timedLines()
            assertEquals(listOf(first, second), rows.map { it.timeMs })
            assertEquals(listOf(1, 2), rows.map { it.speakerSide })
            assertEquals(listOf(normalizeText("GAI周延"), normalizeText("功夫胖KUNGFU-PEN")), rows.map { it.speaker })
            assertEquals(listOf("第一正文", "第二正文"), rows.map { it.words.single().text })
            assertEquals(listOf(first + 200, second + 200), rows.map { it.words.single().startTimeMs })
            assertEquals(listOf(first + 1_000, second + 1_000), rows.map { it.words.single().endTimeMs })
            assertEquals(listOf("第一译文", "第二译文"), rows.map { it.translation })
            assertEquals(listOf("first roma", "second roma"), rows.map { it.romanization })
        }
    }

    @Test fun repeatedSectionLabelsCannotTurnAnUnmarkedSongIntoADuet() {
        val result = LyricsResult(lyrics = "[00:01]副歌选段：合成曲名\n[00:02]副歌选段：合成曲名\n" +
            "[00:03]混音师：合成人名\n[00:04]另一制作：合成人名\n[00:05]普通正文")
        assertTrue(result.timedLines().all { it.speaker.isEmpty() && it.speakerSide == 0 })
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
