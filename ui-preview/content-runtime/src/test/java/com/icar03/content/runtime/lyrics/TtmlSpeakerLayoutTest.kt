package com.icar03.content.runtime.lyrics

import org.junit.Assert.*
import org.junit.Test

class TtmlSpeakerLayoutTest {
    @Test fun declaredDuetKeepsItsSidesWhenTheSecondSingerOpens() {
        val rows = body(listOf("right", "left", "right"),
            """<ttm:agent xml:id="left" type="person"/><ttm:agent xml:id="right" type="person"/>""")
        assertEquals(listOf(1, 2, 1), rows.map { it.speakerSide })
        assertEquals(listOf("right", "left", "right"), rows.map { it.speaker })
    }

    @Test fun cypherReusesEachDeclaredLaneAcrossRepeatedTurns() {
        val rows = body(listOf("c", "a", "b", "d", "a", "c", "b"),
            listOf("a", "b", "c", "d").joinToString("") { """<ttm:agent xml:id="$it" type="person"/>""" })
        assertEquals(listOf(1, 2, 1, 2, 2, 1, 1), rows.map { it.speakerSide })
    }

    @Test fun chorusAndExplicitSharedVoicesStayLeftWithoutBecomingSoloIdentities() {
        val rows = body(listOf("all", "b", "a b", "a", "b a", "a a", ""),
            """<ttm:agent xml:id="all" type="group"/><ttm:agent xml:id="a" type="person"/><ttm:agent xml:id="b" type="person"/>""")
        assertEquals(listOf(1, 1, 1, 2, 1, 2, 2), rows.map { it.speakerSide })
        assertTrue(rows.all { it.words.isEmpty() })
        assertEquals((1L..7L).map { it * 1_000L }, rows.map { it.timeMs })
    }

    @Test fun anOpeningJointLineCannotChooseTheSoloLaneOrder() {
        val rows = body(listOf("a b", "b", "a", "a b", ""),
            """<ttm:agent xml:id="a" type="person"/><ttm:agent xml:id="b" type="person"/>""")
        assertEquals(listOf(1, 1, 2, 1, 1), rows.map { it.speakerSide })
        assertFalse(rows.any { it.speakerSide == TtmlSpeakerLayout.CENTER })
    }

    @Test fun undeclaredVoicesUseStableSourceOrderAndSingleOrUntaggedRowsKeepTheDefault() {
        assertEquals(listOf(1, 2, 1, 1), body(listOf("a", "b", "c", "a")).map { it.speakerSide })
        assertEquals(listOf(0, 0), body(listOf("a", "a")).map { it.speakerSide })
        assertEquals(listOf(0, 0), body(listOf("", ""),
            """<ttm:agent xml:id="a" type="person"/><ttm:agent xml:id="b" type="person"/>""").map { it.speakerSide })
    }

    @Test fun ordinaryLyricsAndInlinePerformerTextDoNotGuessAVocalArrangement() {
        val result = LyricsResult(lyrics = "[00:01]甲：一句歌词\n[00:02]乙：另一句歌词")
        assertEquals(listOf(0, 0), result.timedLines().map { it.speakerSide })
        assertEquals(listOf("甲：一句歌词", "乙：另一句歌词"), result.timedLines().map { it.text })
    }

    private fun body(agents: List<String>, metadata: String = ""): List<ParsedLyricLine> {
        val paragraphs = agents.mapIndexed { index, agent ->
            """<p begin="${index + 1}" end="${index + 2}" ttm:agent="$agent">合成声部${index + 1}</p>"""
        }.joinToString("")
        return LyricsResult(ttmlLyrics = """<tt xmlns="http://www.w3.org/ns/ttml" xmlns:ttm="http://www.w3.org/ns/ttml#metadata"><head><metadata>$metadata</metadata></head><body><div>$paragraphs</div></body></tt>""").timedLines()
    }
}
