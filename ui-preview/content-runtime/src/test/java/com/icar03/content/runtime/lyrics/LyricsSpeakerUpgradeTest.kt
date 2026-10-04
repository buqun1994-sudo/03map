package com.icar03.content.runtime.lyrics

import org.junit.Assert.*
import org.junit.Test

class LyricsSpeakerUpgradeTest {
    private val query = LyricsLookup("Synthetic duet", "Synthetic artists", "Synthetic album", 200_000L)
    private val baseline = LyricsResult(lyrics = "[00:01]Original one\n[01:20]Original two\n[03:10]Original end",
        source = SOURCE_QQ, sourceId = "synthetic-duet", candidateTrack = query.track,
        candidateArtist = query.artist, candidateAlbum = query.album, durationMs = query.durationMs)
    private val duet = baseline.copy(ttmlLyrics = document())

    @Test fun explicitVoicesUpgradeAnIdenticalBodyWithoutInventingWordTiming() {
        assertTrue(upgrade(baseline, duet))
        assertEquals(listOf(1, 2, 3), duet.timedLines().map { it.speakerSide })
        assertTrue(duet.timedLines().all { it.words.isEmpty() })
        assertEquals(1.0, LyricsContentRanker.inspect(query, duet).speakerCoverage, 0.0)
    }

    @Test fun speakerMetadataParticipatesInRankingBeforeEqualCapabilitySourcePreference() {
        val plain = baseline.copy(source = SOURCE_NETEASE)
        val ranking = LyricsContentRanker.rank(query, listOf(selection(plain), selection(duet)), listOf(SOURCE_NETEASE))
        assertEquals(duet, ranking.first().candidate)
    }

    @Test fun neitherDifferentTextNorRetimedRowsCanPassAsAVocalOnlyUpgrade() {
        assertFalse(upgrade(baseline, duet.copy(ttmlLyrics = document().replace("Original two", "Different two"))))
        assertFalse(upgrade(baseline, duet.copy(ttmlLyrics = document().replace("begin=\"80\"", "begin=\"80.1\""))))
        val forged = selection(duet).copy(proof = selection(duet).proof.copy(matcherPolicyVersion = -1))
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(baseline), forged))
    }

    @Test fun vocalOnlyUpgradeCannotDropExistingTranslationOrRomanization() {
        for (before in listOf(
            baseline.copy(translatedLyrics = "[00:01]第一句翻译\n[01:20]第二句翻译\n[03:10]最后一句翻译"),
            baseline.copy(romanizedLyrics = "[00:01]roma one\n[01:20]roma two\n[03:10]roma end"))) {
            assertFalse(upgrade(before, duet))
        }
    }

    @Test fun laterWordTimingCannotDiscardOrSwitchAlreadyAdmittedVocalLanes() {
        val lost = duet.copy(ttmlLyrics = document(words = true).replace("ttm:agent=\"b\"", "ttm:agent=\"\""))
        val switched = duet.copy(ttmlLyrics = document(words = true).replace("ttm:agent=\"b\"", "ttm:agent=\"a\""))
        assertFalse(upgrade(duet, lost))
        assertFalse(upgrade(duet, switched))
        assertTrue(upgrade(duet, duet.copy(ttmlLyrics = document(words = true))))
    }

    @Test fun repeatedMetadataAndAnOrdinarySoloDoNotTriggerAnotherUpgrade() {
        assertFalse(upgrade(duet, duet))
        val solo = baseline.copy(ttmlLyrics = document().replace("ttm:agent=\"b\"", "ttm:agent=\"a\"")
            .replace("ttm:agent=\"all\"", "ttm:agent=\"a\"")
            .replace("<ttm:agent xml:id=\"b\" type=\"person\"/>", "")
            .replace("<ttm:agent xml:id=\"all\" type=\"group\"/>", ""))
        assertFalse(upgrade(baseline, solo))
    }

    private fun upgrade(before: LyricsResult, after: LyricsResult) =
        LyricsContentRanker.isMaterialUpgrade(query, selection(before), selection(after))
    private fun selection(result: LyricsResult) = LyricsCandidateSelector.selectCandidatesWithProof(query, listOf(result)).single()

    private fun document(words: Boolean = false): String {
        val rows = listOf(Triple(1, "a", "Original one"), Triple(80, "b", "Original two"), Triple(190, "all", "Original end"))
            .joinToString("") { (start, agent, text) ->
                val body = if (words) """<span begin="$start" end="${start + 1}">$text</span>""" else text
                """<p begin="$start" end="${start + 1}" ttm:agent="$agent">$body</p>"""
            }
        return """<tt xmlns="http://www.w3.org/ns/ttml" xmlns:ttm="http://www.w3.org/ns/ttml#metadata"><head><metadata><ttm:agent xml:id="a" type="person"/><ttm:agent xml:id="b" type="person"/><ttm:agent xml:id="all" type="group"/></metadata></head><body><div>$rows</div></body></tt>"""
    }
}
