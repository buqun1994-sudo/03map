package com.icar03.content.runtime.lyrics

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class TtmlLyricsParserTest {
    @Test fun keepsExplicitWordTimesAndMixedContentSpaces() {
        val lines = parseBody("""
            <p begin="00:01.000" end="00:02.000">
              <span begin="1s" end="1.2s">What</span>   <span begin="1.2s" end="1.5s">a</span> <span begin="1.5s" end="2s">ride</span>
            </p>
            <p begin="3" end="4"><span begin="3" end="3.4">How </span><span begin="3.4" end="3.7">it </span><span begin="3.7" end="4">goes</span></p>
            <p begin="5" end="6"><span begin="5" end="5.2">ka</span><span begin="5.2" end="5.6">raoke</span> <span begin="5.6" end="6">night</span></p>
        """).lines

        assertEquals(listOf("What a ride", "How it goes", "karaoke night"), lines.map { it.text })
        assertEquals(listOf(TtmlLyricWord(1_000, 1_200, "What "), TtmlLyricWord(1_200, 1_500, "a "),
            TtmlLyricWord(1_500, 2_000, "ride")), lines[0].words)
        lines.forEach { assertEquals(it.text, it.words.joinToString("") { word -> word.text }) }
    }

    @Test fun pTimingDoesNotInventWordTiming() {
        val lines = parseBody("""
            <p begin="7.439s" end="9.027s">A line with only paragraph timing</p>
            <p begin="10" end="11"><span>Untimed</span> <span>spans</span></p>
            <p begin="12s">Missing explicit end</p>
        """).lines

        assertEquals(listOf(7_439L, 10_000L, 12_000L), lines.map { it.timeMs })
        assertEquals(9_027L, lines[0].endTimeMs)
        assertNull(lines[2].endTimeMs)
        assertTrue(lines.all { it.words.isEmpty() })
    }

    @Test fun clockTimesSecondsAndMillisecondsUseTheSameTimeline() {
        val lines = parseBody("""
            <p begin="00:00:01.250" end="00:00:02.500">clock</p>
            <p begin="01:02.003" end="01:03.000">minutes</p>
            <p begin="01:02:03.004" end="01:02:04.000">hours</p>
            <p begin="0.2505s" end="1s">rounded milliseconds</p>
            <p begin="500ms" end="1500ms">offset milliseconds</p>
        """).lines

        assertEquals(listOf(251L, 500L, 1_250L, 62_003L, 3_723_004L), lines.map { it.timeMs })
    }

    @Test fun inlineTranslationRomanizationAndUnknownRolesStayOutOfMainWords() {
        val line = parseBody("""
            <p begin="1" end="2" ttm:agent="voice-a">
              <span begin="1" end="2">Main</span>
              <span ttm:role="x-translation"><span>Translated</span> text</span>
              <span ttm:role="x-roman">ro ma</span>
              <span ttm:role="x-unknown">not main</span>
              <span ttm:role="x-bg x-translation">ambiguous role</span>
            </p>
        """).lines.single()

        assertEquals("Main", line.text)
        assertEquals("Translated text", line.translation)
        assertEquals("ro ma", line.romanization)
        assertEquals("voice-a", line.agent)
        assertEquals(listOf(TtmlLyricWord(1_000, 2_000, "Main")), line.words)
    }

    @Test fun backgroundOwnTimingMayFinishAfterMainAndNextLine() {
        val lines = parseBody("""
            <p begin="1" end="2">
              <span begin="1" end="2.2">Main</span>
              <span ttm:role="x-bg" begin="2.5" end="4.5"><span begin="2.5" end="4.5">(ooh)</span><span ttm:role="x-translation">background translation</span></span>
              <span ttm:role="x-bg" begin="4.7" end="5">echo</span>
              <span ttm:role="x-translation">Main translation</span>
            </p>
            <p begin="3" end="4">Next line</p>
        """).lines

        assertEquals(2_000L, lines[0].endTimeMs)
        assertEquals(2_200L, lines[0].words.single().endTimeMs)
        assertEquals(listOf(TtmlLyricWord(2_500, 4_500, "(ooh) "), TtmlLyricWord(4_700, 5_000, "echo")),
            lines[0].backgroundWords)
        assertEquals("Main translation", lines[0].translation)
        assertEquals("Main", lines[0].text)
    }

    @Test fun realAgentIdsAndRepeatedTimestampsAreNotRenumberedOrDeduplicated() {
        val document = TtmlLyricsParser.parse("""
            <tt xmlns="$TTML" xmlns:meta="$TTM">
              <head><metadata xmlns=""><meta:agent xml:id="person-left" type="person"/><meta:agent xml:id="person-right" type="other"/><meta:agent xml:id="group-id" type="group"/></metadata></head>
              <body><div meta:agent="person-left">
                <p begin="1" end="2">same text</p>
                <p begin="1" end="2" meta:agent="person-right">same text</p>
                <p begin="1" end="2" meta:agent="group-id">same text</p>
                <p begin="1" end="2">same text</p>
              </div></body>
            </tt>
        """.trimIndent())

        assertEquals(listOf("person-left", "person-right", "group-id", "person-left"), document.lines.map { it.agent })
        assertEquals(listOf(1_000L, 1_000L, 1_000L, 1_000L), document.lines.map { it.timeMs })
        assertEquals(mapOf("person-left" to "person", "person-right" to "other", "group-id" to "group"), document.agentTypes)
        assertTrue(document.lines.all { it.text == "same text" })
    }

    @Test fun parallelParagraphRolesUseAgentNearestTimeAndDoNotExceedTolerance() {
        val lines = parseBody("""
            <div><p begin="1" end="2" ttm:agent="v1">One</p><p begin="1" end="2" ttm:agent="v2">Two</p><p begin="3" end="4" ttm:agent="v1">Three</p></div>
            <div ttm:role="x-translation"><p begin="1.7" ttm:agent="v1">One translated</p><p begin="1" ttm:agent="v2">Two translated</p><p begin="3.701" ttm:agent="v1">Too far</p></div>
            <div ttm:role="x-romanization"><p begin="1.01" ttm:agent="v2">Two roma</p></div>
        """).lines

        assertEquals(listOf("One translated", "Two translated", ""), lines.map { it.translation })
        assertEquals(listOf("", "Two roma", ""), lines.map { it.romanization })
    }

    @Test fun oneParallelTranslationGoesToItsClosestOriginalOnly() {
        val lines = parseBody("""
            <p begin="1">first</p><p begin="1.1">second</p>
            <p begin="1.08" ttm:role="x-translation">only translation</p>
        """).lines

        assertEquals(listOf("", "only translation"), lines.map { it.translation })
    }

    @Test fun appleKeyedTracksMatchKeysRatherThanOrderAndInlineWins() {
        val document = TtmlLyricsParser.parse("""
            <tt xmlns="$TTML" xmlns:itunes="$ITUNES" xmlns:ttm="$TTM">
              <head><metadata><itunes:iTunesMetadata>
                <itunes:translations>
                  <itunes:translation type="replacement"><itunes:text for="L1">not a subtitle</itunes:text></itunes:translation>
                  <itunes:translation type="subtitle"><itunes:text for="L2">Second translated</itunes:text><itunes:text for="L1">First translated</itunes:text><itunes:text for="L83274">Wrong key</itunes:text></itunes:translation>
                  <itunes:translation type="subtitle"><itunes:text for="L1">second language ignored</itunes:text></itunes:translation>
                </itunes:translations>
                <itunes:transliterations><itunes:transliteration><itunes:text for="L2"><itunes:span begin="3" end="3.5">ro</itunes:span> <itunes:span begin="3.5" end="4">ma</itunes:span></itunes:text><itunes:text for="L9">wrong roma key</itunes:text></itunes:transliteration></itunes:transliterations>
              </itunes:iTunesMetadata></metadata></head>
              <body><div>
                <p begin="1" end="2" itunes:key="L1">First<span ttm:role="x-translation">Inline first</span></p>
                <p begin="3" end="4" itunes:key="L2">Second</p>
                <p begin="5" end="6" itunes:key="L3">Third</p>
              </div></body>
            </tt>
        """.trimIndent())

        assertEquals(listOf("Inline first", "Second translated", ""), document.lines.map { it.translation })
        assertEquals(listOf("", "ro ma", ""), document.lines.map { it.romanization })
    }

    @Test fun appleDefaultNamespaceAndUnmatchedKeysDoNotRequirePrefixOrIndexFallback() {
        val document = TtmlLyricsParser.parse("""
            <tt xmlns="$TTML" xmlns:apple="$ITUNES">
              <head><metadata><iTunesMetadata xmlns="$ITUNES"><translations><translation type="replacement"><text for="L1">replacement</text></translation><translation type="subtitle"><text for="L83274">wrong key</text></translation></translations><transliterations><transliteration><text for="L1"><span>joined</span> <span>roma</span></text></transliteration></transliterations></iTunesMetadata></metadata></head>
              <body><div><p begin="1" end="2" apple:key="L1">First</p></div></body>
            </tt>
        """.trimIndent())

        assertEquals("", document.lines.single().translation)
        assertEquals("joined roma", document.lines.single().romanization)
    }

    @Test fun duplicateAppleKeysAreAmbiguousRatherThanPositionalMatches() {
        val document = TtmlLyricsParser.parse("""
            <tt xmlns="$TTML" xmlns:apple="$ITUNES"><head><metadata><apple:iTunesMetadata><apple:translations><apple:translation type="subtitle"><apple:text for="same">ambiguous</apple:text></apple:translation></apple:translations></apple:iTunesMetadata></metadata></head><body><div><p begin="1" apple:key="same">first</p><p begin="2" apple:key="same">second</p></div></body></tt>
        """.trimIndent())
        assertEquals(listOf("", ""), document.lines.map { it.translation })
    }

    @Test fun preservesXmlSpaceAndDecodesXmlEntitiesWithoutJoiningSyllables() {
        val lines = parseBody("""
            <p begin="1" end="2"><span begin="1" end="2" xml:space="preserve">keep  two &amp; &lt;three&gt;</span></p>
            <p begin="3" end="4">line<br/>break <foreign:span xmlns:foreign="urn:foreign">ignored subtree</foreign:span>here</p>
        """).lines

        assertEquals("keep  two & <three>", lines[0].text)
        assertEquals(lines[0].text, lines[0].words.single().text)
        assertEquals("line break here", lines[1].text)
    }

    @Test fun timedSpanWithUntimedStylingChildrenKeepsItsExplicitRange() {
        val line = parseBody("""
            <p begin="1" end="2"><span begin="1.2" end="1.8"><span>nested</span> style</span></p>
        """).lines.single()
        assertEquals(listOf(TtmlLyricWord(1_200, 1_800, "nested style")), line.words)
    }

    @Test fun invalidTimesDoNotProduceUntrustedLinesOrWords() {
        val lines = parseBody("""
            <p begin="NaN" end="2">invalid start</p><p begin="-1" end="2">negative start</p>
            <p begin="00:60.000" end="70">invalid seconds</p><p begin="00:60:00" end="4000">invalid minutes</p>
            <p begin="1" end="invalid">invalid end</p><p begin="2" end="1">backwards line</p>
            <p begin="25:00:00">out of range</p><p begin="1e6">scientific notation unsupported</p>
            <p begin="3" end="4"><span begin="bad" end="4">bad start</span> <span begin="3.5" end="3.4">backwards word</span> <span begin="3.5">missing end</span></p>
            <p begin="5" end="6"><span begin="5.1" end="5.5">valid</span></p>
        """).lines

        assertEquals(listOf(3_000L, 5_000L), lines.map { it.timeMs })
        assertEquals("bad start backwards word missing end", lines[0].text)
        assertTrue(lines[0].words.isEmpty())
        assertEquals(listOf(TtmlLyricWord(5_100, 5_500, "valid")), lines[1].words)
    }

    @Test fun unreasonablyLongTimeAttributeIsSkippedWithoutLargeNumberAllocation() {
        assertTrue(parseBody("<p begin=\"${"9".repeat(10_000)}\">invalid</p>").lines.isEmpty())
    }

    @Test fun malformedXmlAndUnsupportedTimeContainersFailAsAWhole() {
        for (raw in listOf("not xml", "<tt><body><p begin=\"1\">unclosed", "<tt xmlns=\"urn:foreign\"/>",
            "<tt><body><div timeContainer=\"seq\"><p begin=\"1\">not absolute</p></div></body></tt>")) {
            assertThrows(TtmlParseException::class.java) { TtmlLyricsParser.parse(raw) }
        }
    }

    @Test fun doctypeInternalAndExternalEntitiesAreRejected() {
        for (doctype in listOf(
            "<!DOCTYPE tt>",
            "<!DOCTYPE tt [<!ENTITY injected 'expanded'>]>",
            "<!DOCTYPE tt SYSTEM 'https://example.invalid/external.dtd'>",
            "<!DOCTYPE tt [<!ENTITY injected SYSTEM 'file:///etc/passwd'>]>"
        )) {
            assertThrows(TtmlParseException::class.java) {
                TtmlLyricsParser.parse(doctype + "<tt><body><div><p begin=\"1\">literal</p></div></body></tt>")
            }
        }
    }

    @Test fun rejectsByteLineWordAndNestingLimits() {
        assertThrows(TtmlParseException::class.java) { TtmlLyricsParser.parse("x".repeat(TtmlLyricsParser.MAX_INPUT_BYTES + 1)) }
        assertThrows(TtmlParseException::class.java) { TtmlLyricsParser.parse("\u4e00".repeat(TtmlLyricsParser.MAX_INPUT_BYTES / 3 + 1)) }
        assertThrows(TtmlParseException::class.java) { parseBody("<p begin=\"1\">line</p>".repeat(TtmlLyricsParser.MAX_LINES + 1)) }
        assertThrows(TtmlParseException::class.java) {
            parseBody("<p begin=\"0\" end=\"1\">" + "<span begin=\"0\" end=\"1\">a</span>".repeat(TtmlLyricsParser.MAX_WORDS + 1) + "</p>")
        }
        assertThrows(TtmlParseException::class.java) { parseBody("<div>".repeat(65) + "<p begin=\"1\">deep</p>" + "</div>".repeat(65)) }
    }

    @Test fun documentCollectionsTakeImmutableDefensiveSnapshots() {
        val words = mutableListOf(TtmlLyricWord(1_000, 2_000, "text"))
        val line = TtmlLyricLine(1_000, 2_000, "text", words = words)
        val lines = mutableListOf(line)
        val agents = mutableMapOf("v1" to "person")
        val ids = mutableListOf("1962165963")
        val metadata = mutableMapOf("ncmMusicId" to ids)
        val document = TtmlLyricsDocument(lines, agents, metadata)
        words.clear()
        lines.clear()
        agents.clear()
        ids.clear()
        metadata.clear()

        assertEquals(1, document.lines.size)
        assertEquals(1, document.lines.single().words.size)
        assertEquals("person", document.agentTypes["v1"])
        assertEquals(listOf("1962165963"), document.metadata["ncmMusicId"])
        assertThrows(UnsupportedOperationException::class.java) { (document.lines as MutableList<TtmlLyricLine>).clear() }
        assertThrows(UnsupportedOperationException::class.java) { (line.words as MutableList<TtmlLyricWord>).clear() }
        assertThrows(UnsupportedOperationException::class.java) { (document.agentTypes as MutableMap<String, String>).clear() }
        assertThrows(UnsupportedOperationException::class.java) { (document.metadata.getValue("ncmMusicId") as MutableList<String>).clear() }
    }

    @Test fun foreignNamespaceParagraphsAndContainersCannotSpoofLyricsOrAgents() {
        val document = TtmlLyricsParser.parse("""
            <tt xmlns="$TTML" xmlns:ttm="$TTM" xmlns:foreign="urn:foreign">
              <head><metadata><foreign:agent xml:id="fake" type="person"/></metadata></head>
              <body><div>
                <foreign:p begin="1" end="2">foreign paragraph</foreign:p>
                <foreign:div><p begin="2" end="3">hidden paragraph</p></foreign:div>
                <p begin="3" end="4" foreign:agent="fake">valid line<foreign:span>hidden span</foreign:span></p>
              </div></body>
            </tt>
        """.trimIndent())
        assertEquals(listOf("valid line"), document.lines.map { it.text })
        assertEquals("", document.lines.single().agent)
        assertTrue(document.agentTypes.isEmpty())
    }

    @Test fun partialTimedTextKeepsOnlyExplicitWordsAndNoTimeBorrowing() {
        val line = parseBody("""
            <p begin="1" end="3">Untimed <span begin="1.5" end="2">timed</span> <span begin="2">missing end</span></p>
        """).lines.single()
        assertEquals("Untimed timed missing end", line.text)
        assertEquals(listOf(TtmlLyricWord(1_500, 2_000, "timed ")), line.words)
    }

    @Test fun emptyOrUntimedDocumentHasNoSynchronizedLines() {
        assertTrue(TtmlLyricsParser.parse("").lines.isEmpty())
        assertTrue(TtmlLyricsParser.parse("<tt/>").lines.isEmpty())
        assertTrue(parseBody("<p>untimed</p>").lines.isEmpty())
    }

    private fun parseBody(body: String): TtmlLyricsDocument = TtmlLyricsParser.parse(
        "<tt xmlns=\"$TTML\" xmlns:ttm=\"$TTM\"><body><div>$body</div></body></tt>"
    )

    private companion object {
        const val TTML = "http://www.w3.org/ns/ttml"
        const val TTM = "http://www.w3.org/ns/ttml#metadata"
        const val ITUNES = "http://music.apple.com/lyric-ttml-internal"
    }
}
