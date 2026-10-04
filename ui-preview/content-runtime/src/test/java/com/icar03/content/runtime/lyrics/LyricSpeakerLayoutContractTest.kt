package com.icar03.content.runtime.lyrics

import org.junit.Assert.*
import org.junit.Test

/** Replay equivalent provider bodies through their real format adapters. */
class LyricSpeakerLayoutContractTest {
    @Test fun ordinarySingleAndSharedOnlyBodiesKeepDefaultDespiteTwoDeclaredArtists() {
        for (labels in listOf(
            listOf("", "", ""),
            listOf("V1", "V1", ""),
            listOf("合唱", "", "合唱"),
            listOf("V1", "合唱", ""),
            listOf("V1/V2", "", "V1")
        )) for (result in formats(labels)) {
            val rows = result.timedLines()
            assertEquals("no divided layout for $labels", List(labels.size) { 0 }, rows.map { it.speakerSide })
            assertEquals(labels.indices.map { "合成正文${it + 1}" }, rows.map { it.text })
            assertEquals(labels.indices.map { (it + 1) * 1_000L }, rows.map { it.timeMs })
        }
    }

    @Test fun sharedOpeningDoesNotReserveTheFirstSoloAndUntaggedRowsInheritOnlyAfterEvidence() {
        for (result in formats(listOf("", "合唱", "V2", "", "V1", "V1/V2", ""))) {
            assertEquals(listOf(0, 1, 1, 1, 2, 1, 1), result.timedLines().map { it.speakerSide })
        }
    }

    @Test fun aSingleYrcVoiceAndChorusKeepDefaultWithoutLosingTimingOrAuxiliaryTracks() {
        val result = LyricsResult(candidateArtist = "V1/V2", durationMs = 10_000L,
            lyrics = "[00:01]独唱正文\n[00:03]合唱正文",
            wordLyrics = "[1000,1000](1000,100,0)V1：(1100,900,0)独唱正文\n" +
                "[3000,1000](3000,100,0)合唱：(3100,900,0)合唱正文",
            translatedLyrics = "[00:01]V1：独唱译文\n[00:03]合唱：合唱译文",
            romanizedLyrics = "[00:01]V1：solo roma\n[00:03]合唱：shared roma")
        val rows = result.timedLines()
        assertEquals(listOf(0, 0), rows.map { it.speakerSide })
        assertEquals(listOf("v1", "group"), rows.map { it.speaker })
        assertEquals(listOf("独唱正文", "合唱正文"), rows.map { it.text })
        assertEquals(listOf("独唱正文", "合唱正文"), rows.map { it.words.single().text })
        assertEquals(listOf(1_100L, 3_100L), rows.map { it.words.single().startTimeMs })
        assertEquals(listOf(2_000L, 4_000L), rows.map { it.words.single().endTimeMs })
        assertEquals(listOf("独唱译文", "合唱译文"), rows.map { it.translation })
        assertEquals(listOf("solo roma", "shared roma"), rows.map { it.romanization })
    }

    private fun formats(labels: List<String>): List<LyricsResult> {
        val lrc = labels.mapIndexed { index, label ->
            "[00:0${index + 1}]" + (if (label.isEmpty()) "" else "$label：") + "合成正文${index + 1}"
        }.joinToString("\n")
        val paragraphs = labels.mapIndexed { index, label ->
            val agent = label.replace("合唱", "all").replace("/", " ").lowercase()
            """<p begin="${index + 1}" end="${index + 2}" ttm:agent="$agent">合成正文${index + 1}</p>"""
        }.joinToString("")
        val ttml = """<tt xmlns="http://www.w3.org/ns/ttml" xmlns:ttm="http://www.w3.org/ns/ttml#metadata"><head><metadata><ttm:agent xml:id="v1" type="person"/><ttm:agent xml:id="v2" type="person"/><ttm:agent xml:id="all" type="group"/></metadata></head><body><div>$paragraphs</div></body></tt>"""
        return listOf(LyricsResult(candidateArtist = "V1/V2", lyrics = lrc),
            LyricsResult(candidateArtist = "V1/V2", ttmlLyrics = ttml))
    }
}
