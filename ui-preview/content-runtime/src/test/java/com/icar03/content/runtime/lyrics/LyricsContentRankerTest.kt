package com.icar03.content.runtime.lyrics

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class LyricsContentRankerTest {
    private val query = LyricsLookup("Song (Live)", "Artist", "Album", 200_000L)

    @Test
    fun completeWordCoverageWinsAgainstPartialOrPreferredLineTiming() {
        val complete = candidate(SOURCE_NETEASE).copy(wordLyrics = WORDS)
        val partial = candidate(SOURCE_QQ).copy(wordLyrics = WORDS.lineSequence().take(2).joinToString("\n"))
        val lineOnly = candidate(SOURCE_LRCLIB)
        val ranked = rank(listOf(complete, partial, lineOnly), listOf(SOURCE_LRCLIB))

        assertEquals(complete, ranked.first().candidate)
        assertEquals(1.0, ranked.first().quality.wordCoverage, 0.0001)
        assertEquals(2.0 / 3.0, ranked.single { it.candidate == partial }.quality.wordCoverage, 0.0001)
        assertEquals(0.0, ranked.single { it.candidate == lineOnly }.quality.wordCoverage, 0.0001)
    }

    @Test
    fun translationAndRomanizationScoreTheirAlignedCoverageNotFieldPresence() {
        val full = candidate(SOURCE_QQ).copy(lyrics = JAPANESE_LINES, translatedLyrics = TRANSLATION, romanizedLyrics = ROMANIZATION)
        val partial = candidate(SOURCE_NETEASE).copy(
            lyrics = JAPANESE_LINES,
            translatedLyrics = TRANSLATION.lineSequence().first(),
            romanizedLyrics = ROMANIZATION.lineSequence().first()
        )
        val fullQuality = LyricsContentRanker.inspect(query, full)
        val partialQuality = LyricsContentRanker.inspect(query, partial)

        assertEquals(1.0, fullQuality.translationCoverage, 0.0001)
        assertEquals(1.0, fullQuality.romanizationCoverage, 0.0001)
        assertEquals(1.0 / 3.0, partialQuality.translationCoverage, 0.0001)
        assertEquals(1.0 / 3.0, partialQuality.romanizationCoverage, 0.0001)
        assertTrue(fullQuality.score > partialQuality.score)
        assertEquals(LyricsContentRanker.inspect(query, partial.copy(translatedLyrics = "", romanizedLyrics = "")).score,
            partialQuality.score)
        assertEquals(full, rank(listOf(full, partial), listOf(SOURCE_NETEASE)).first().candidate)
    }

    @Test
    fun identicalOrUnalignedAuxiliaryTextDoesNotReceiveAValueAddBonus() {
        val duplicate = candidate(SOURCE_QQ).copy(translatedLyrics = LINES, romanizedLyrics = LINES)
        val unaligned = candidate(SOURCE_NETEASE).copy(
            translatedLyrics = "[00:12]A translation without a matching line",
            romanizedLyrics = "[00:12]romaji without a matching line"
        )
        for (result in listOf(duplicate, unaligned)) {
            val quality = LyricsContentRanker.inspect(query, result)
            assertEquals(0.0, quality.translationCoverage, 0.0)
            assertEquals(0.0, quality.romanizationCoverage, 0.0)
        }
    }

    @Test
    fun sourcePreferenceOnlyBreaksEqualContentScores() {
        val first = candidate(SOURCE_QQ)
        val preferred = candidate(SOURCE_NETEASE)
        assertEquals(preferred, rank(listOf(first, preferred), listOf(SOURCE_NETEASE)).first().candidate)
        assertEquals(first, rank(listOf(first.copy(wordLyrics = WORDS), preferred), listOf(SOURCE_NETEASE)).first().candidate.copy(wordLyrics = ""))
    }

    @Test
    fun recordingConflictsAndForgedProofCannotBeRescuedByQualityOrPreference() {
        val valid = candidate(SOURCE_LRCLIB)
        val invalid = listOf(
            candidate(SOURCE_QQ).copy(candidateTrack = "Song (Remix)", wordLyrics = WORDS),
            candidate(SOURCE_QQ).copy(sourceId = "duration", durationMs = 202_001L, wordLyrics = WORDS),
            candidate(SOURCE_QQ).copy(sourceId = "artist", candidateArtist = "Unrelated Performer", wordLyrics = WORDS),
            candidate(SOURCE_QQ).copy(sourceId = "unknown-duration", durationMs = 0L, wordLyrics = WORDS)
        )
        val selections = listOf(selection(valid)) + invalid.map(::selection)
        invalid.forEach { result ->
            assertFalse("Expected recording conflict for ${result.sourceId}",
                LyricsCandidateSelector.isProofValid(query, result, selection(result).proof))
        }
        val ranked = LyricsContentRanker.rank(query, selections, listOf(SOURCE_QQ))

        assertEquals(listOf(valid), ranked.map { it.candidate })
        assertTrue(LyricsContentRanker.rank(query, listOf(selection(valid).copy(
            proof = selection(valid).proof.copy(matcherPolicyVersion = -1)
        ))).isEmpty())
    }

    @Test
    fun deezerAndLyricFindCountAsOneIndependentTextFamily() {
        val lrclib = candidate(SOURCE_LRCLIB)
        val deezer = candidate("deezer")
        val lyricFind = candidate("lyricfind")
        val oneFamily = rank(listOf(lrclib, deezer))
        val duplicatedFamily = rank(listOf(lrclib, deezer, lyricFind))

        assertEquals(1, duplicatedFamily.single { it.candidate == lrclib }.quality.consensusFamilies)
        assertEquals(oneFamily.single { it.candidate == lrclib }.quality.score,
            duplicatedFamily.single { it.candidate == lrclib }.quality.score)
        assertTrue(rank(listOf(deezer, lyricFind)).all { it.quality.consensusFamilies == 0 })
        val independent = rank(listOf(lrclib, deezer, lyricFind, candidate(SOURCE_NETEASE)))
        assertEquals(2, independent.single { it.candidate == lrclib }.quality.consensusFamilies)
    }

    @Test
    fun fullBatchRecomputationRemovesShortEndingConsensusWithoutRejectingTheRecording() {
        val short = candidate(SOURCE_LRCLIB).copy(lyrics = SHORT_LINES)
        val peer = candidate(SOURCE_NETEASE).copy(lyrics = SHORT_LINES)
        val initial = rank(listOf(short, peer))
        assertEquals(1, initial.single { it.candidate == short }.quality.consensusFamilies)

        val complete = candidate(SOURCE_QQ).copy(lyrics = "[00:01]A wholly different opening line\n[01:20]A different central lyric line\n[03:10]The ending belongs near the track end")
        val final = rank(listOf(short, peer, complete))
        assertEquals(0, final.single { it.candidate == short }.quality.consensusFamilies)
        assertEquals(3, final.size)
    }

    @Test
    fun parsedYrcAndEnhancedLrcRemainSynchronizedWithoutRawLineLyrics() {
        val yrc = candidate(SOURCE_NETEASE).copy(lyrics = "", wordLyrics = WORDS)
        val enhanced = candidate(SOURCE_QQ).copy(lyrics = "", wordLyrics = ENHANCED)
        for (result in listOf(yrc, enhanced)) {
            val quality = LyricsContentRanker.inspect(query, result)
            assertEquals(LyricsKind.SYNCHRONIZED, quality.kind)
            assertEquals(1.0, quality.wordCoverage, 0.0001)
            assertEquals(result, rank(listOf(result)).single().candidate)
        }
    }

    @Test
    fun overlappingWordsWithinALineOrTextMismatchCannotClaimCompleteCoverage() {
        val overlapping = candidate(SOURCE_NETEASE).copy(wordLyrics = WORDS.replace(
            "(1500,400,0)", "(1200,400,0)"
        ))
        val mismatched = candidate(SOURCE_QQ).copy(wordLyrics = WORDS.replace("Original", "Unrelated"))
        assertTrue(LyricsContentRanker.inspect(query, overlapping).wordCoverage < 1.0)
        assertEquals(0.0, LyricsContentRanker.inspect(query, mismatched).wordCoverage, 0.0)
        assertEquals(candidate(SOURCE_LRCLIB).copy(wordLyrics = WORDS),
            rank(listOf(overlapping, mismatched, candidate(SOURCE_LRCLIB).copy(wordLyrics = WORDS))).first().candidate)
    }

    @Test
    fun declaredOverlapAcrossLinesRemainsRealWordCoverage() {
        val result = candidate(SOURCE_QQ).copy(lyrics = "", wordLyrics =
            "[1000,4000](1000,3000,0)First\n[2000,2000](2000,1500,0)Second")
        val quality = LyricsContentRanker.inspect(query, result)
        assertEquals(LyricsKind.SYNCHRONIZED, quality.kind)
        assertEquals(1.0, quality.wordCoverage, 0.0)
    }

    @Test
    fun knownTruncatedPrefixCannotClaimFullWordCoverageOfTheWholeBody() {
        val prefix = "[1000,1000](1000,400,0)An original opening sentence with enough characters"
        val suffix = "[190000,1000](190000,400,0)An original closing sentence with enough characters"
        val truncated = candidate(SOURCE_QQ).copy(lyrics = "", wordLyrics = prefix)
        val complete = candidate(SOURCE_NETEASE).copy(lyrics = "", wordLyrics = "$prefix\n$suffix")
        val ranked = rank(listOf(truncated, complete))
        assertTrue(ranked.single { it.candidate == truncated }.quality.wordCoverage < 1.0)
        assertEquals(complete, ranked.first().candidate)
    }

    @Test
    fun sameLanguageHanRewritesAndOrdinaryPinyinDoNotAddQualityPoints() {
        val original = "[00:01]\\u4eca\\u5929\\u770b\\u89c1\\u4f60\\u7684\\u7b11\\u5bb9"
        val result = candidate(SOURCE_QQ).copy(lyrics = original,
            translatedLyrics = "[00:01]\\u4eca\\u5929\\u53c8\\u770b\\u5230\\u4f60\\u7684\\u5fae\\u7b11",
            romanizedLyrics = "[00:01]jin tian kan jian ni de xiao rong")
        val quality = LyricsContentRanker.inspect(query, result)
        assertEquals(0.0, quality.translationCoverage, 0.0)
        assertEquals(0.0, quality.romanizationCoverage, 0.0)
        assertEquals(LyricsContentRanker.inspect(query, result.copy(translatedLyrics = "", romanizedLyrics = "")).score,
            quality.score)
    }

    @Test
    fun emptyTailMarkersAndCreditsDoNotImproveDurationCoverage() {
        val base = candidate(SOURCE_QQ)
        val padded = base.copy(lyrics = "$LINES\n[03:19.99]\n[03:19.98]Lyrics by: Someone")
        assertEquals(0.95, LyricsContentRanker.inspect(query, base).durationCoverage, 0.0001)
        assertEquals(LyricsContentRanker.inspect(query, base).durationCoverage,
            LyricsContentRanker.inspect(query, padded).durationCoverage, 0.0001)
    }

    @Test
    fun synchronizedContentAlwaysOutranksPreferredPurePlainFallback() {
        val timed = candidate(SOURCE_LRCLIB).copy(lyrics = "[00:01]A real timed line")
        val plain = candidate(SOURCE_QQ).copy(lyrics = "", plainLyrics = "A static lyric body")
        val ranked = rank(listOf(timed, plain), listOf(SOURCE_QQ))
        assertEquals(timed, ranked.first().candidate)
        assertEquals(LyricsKind.PLAIN, ranked.last().quality.kind)
        assertEquals(0, ranked.last().quality.score)
    }

    @Test
    fun ttmlOnlyContentUsesTheSharedStructuredParser() {
        val result = candidate("amll").copy(lyrics = "", ttmlLyrics = """
            <tt xmlns="http://www.w3.org/ns/ttml"><body><div>
            <p begin="1s" end="2s"><span begin="1s" end="1.4s">Original </span><span begin="1.5s" end="1.9s">one</span></p>
            <p begin="80s" end="81s"><span begin="80s" end="80.4s">Original </span><span begin="80.5s" end="80.9s">two</span></p>
            <p begin="190s" end="191s"><span begin="190s" end="190.4s">Original </span><span begin="190.5s" end="190.9s">end</span></p>
            </div></body></tt>
        """.trimIndent())
        val ranked = rank(listOf(result))
        assertEquals(LyricsKind.SYNCHRONIZED, ranked.single().quality.kind)
        assertEquals(1.0, ranked.single().quality.wordCoverage, 0.0001)
    }

    private fun rank(candidates: List<LyricsResult>, preferred: List<String> = emptyList()) =
        LyricsContentRanker.rank(query, LyricsCandidateSelector.selectCandidatesWithProof(query, candidates), preferred)

    private fun selection(result: LyricsResult) = LyricsCandidateSelection(
        result, LyricsSelectionProof(LYRICS_MATCHER_POLICY_VERSION, listOf(result.candidateSnapshot()))
    )

    private fun candidate(source: String) = LyricsResult(
        lyrics = LINES,
        durationMs = 200_000L,
        source = source,
        sourceId = "$source-id",
        candidateTrack = query.track,
        candidateArtist = query.artist,
        candidateAlbum = query.album
    )

    private companion object {
        const val LINES = "[00:01]Original one\n[01:20]Original two\n[03:10]Original end"
        const val SHORT_LINES = "[00:01]Original one\n[00:05]Original two\n[00:10]Original end"
        const val WORDS = "[1000,1000](1000,400,0)Original (1500,400,0)one\n" +
            "[80000,1000](80000,400,0)Original (80500,400,0)two\n" +
            "[190000,1000](190000,400,0)Original (190500,400,0)end"
        const val TRANSLATION = "[00:01]\u4e2d\u6587\u7ffb\u8bd1\u4e00\n[01:20]\u4e2d\u6587\u7ffb\u8bd1\u4e8c\n[03:10]\u4e2d\u6587\u7ffb\u8bd1\u4e09"
        const val JAPANESE_LINES = "[00:01]\u3042\u3044\u3046\u3048\u304a\n[01:20]\u304b\u304d\u304f\u3051\u3053\n[03:10]\u3055\u3057\u3059\u305b\u305d"
        const val ROMANIZATION = "[00:01]romaji one\n[01:20]romaji two\n[03:10]romaji end"
        const val ENHANCED = "[00:01]<00:01>Original <00:01.50>one<00:01.90>\n" +
            "[01:20]<01:20>Original <01:20.50>two<01:20.90>\n" +
            "[03:10]<03:10>Original <03:10.50>end<03:10.90>"
    }
}
