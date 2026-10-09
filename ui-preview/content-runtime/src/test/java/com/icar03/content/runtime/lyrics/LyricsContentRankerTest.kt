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

    @Test fun sameTimingTierNeverReplacesVisibleLyricsForHigherDurationOrConsensusScore() {
        val old = candidate(SOURCE_QQ).copy(lyrics = SHORT_LINES)
        val later = candidate(SOURCE_NETEASE)
        assertTrue(LyricsContentRanker.inspect(query, later).score > LyricsContentRanker.inspect(query, old).score)
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(old), selection(later)))
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(later), selection(old)))
    }

    @Test fun completeWordTimingIsMaterialButPartialWordsAreNot() {
        val old = candidate(SOURCE_QQ)
        val complete = candidate(SOURCE_NETEASE).copy(wordLyrics = WORDS)
        val partial = complete.copy(wordLyrics = WORDS.lineSequence().first())
        assertTrue(LyricsContentRanker.isMaterialUpgrade(query, selection(old), selection(complete)))
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(old), selection(partial)))
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(complete), selection(old)))
    }

    @Test fun preferencePrecedesFineScoresWithinTheSameCapabilityTier() {
        val preferred = candidate(SOURCE_QQ).copy(lyrics = SHORT_LINES)
        val longerAxis = candidate(SOURCE_NETEASE)
        assertEquals(preferred, rank(listOf(longerAxis, preferred), listOf(SOURCE_QQ)).first().candidate)
        assertEquals(longerAxis, rank(listOf(preferred, longerAxis)).first().candidate)
    }

    @Test fun capabilityGainCannotDiscardAnExistingTranslationOrUseForgedProof() {
        val translated = candidate(SOURCE_QQ).copy(lyrics = JAPANESE_LINES, translatedLyrics = TRANSLATION)
        val losesTranslation = candidate(SOURCE_NETEASE).copy(wordLyrics = WORDS)
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(translated), selection(losesTranslation)))
        val valid = selection(losesTranslation)
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(candidate(SOURCE_QQ)),
            valid.copy(proof = valid.proof.copy(matcherPolicyVersion = -1))))
    }

    @Test fun translatedPlainTextCannotReplaceOrOutrankAnExistingLineAxis() {
        val synchronized = candidate(SOURCE_QQ)
        val translatedPlain = candidate(SOURCE_NETEASE).copy(
            lyrics = "", plainLyrics = "Original one\nOriginal two\nOriginal end", translatedLyrics = TRANSLATION
        )
        assertEquals(synchronized, rank(listOf(synchronized, translatedPlain), listOf(SOURCE_NETEASE)).first().candidate)
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(synchronized), selection(translatedPlain)))
        assertFalse(LyricsContentRanker.retainsCapabilities(query, synchronized, translatedPlain))
        assertTrue(LyricsContentRanker.isMaterialUpgrade(query, selection(translatedPlain), selection(synchronized)))
    }

    @Test fun completeWordsOutrankLineTranslationAndRomanization() {
        val translatedLine = candidate(SOURCE_QQ).copy(
            lyrics = JAPANESE_LINES, translatedLyrics = TRANSLATION, romanizedLyrics = ROMANIZATION
        )
        val realWords = candidate(SOURCE_NETEASE).copy(lyrics = JAPANESE_LINES, wordLyrics = JAPANESE_WORDS)
        val wordQuality = LyricsContentRanker.inspect(query, realWords)
        assertEquals(1.0, wordQuality.wordCoverage, 0.0)
        assertTrue(wordQuality.score > LyricsContentRanker.inspect(query, translatedLine).score)
        assertEquals(realWords, rank(listOf(translatedLine, realWords), listOf(SOURCE_QQ)).first().candidate)
        // The best initial tier still cannot erase an already admitted translation.
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(translatedLine), selection(realWords)))
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(realWords), selection(translatedLine)))
    }

    @Test fun qualityOrderIsRealWordsThenTranslationThenLinesThenPlainText() {
        val words = candidate(SOURCE_QQ).copy(wordLyrics = WORDS)
        val translatedLines = candidate(SOURCE_NETEASE).copy(translatedLyrics = TRANSLATION)
        val lines = candidate(SOURCE_LRCLIB)
        val plain = candidate(SOURCE_QQ).copy(sourceId = "plain", lyrics = "", plainLyrics = "Original one\nOriginal two\nOriginal end")
        val ranking = rank(listOf(plain, lines, translatedLines, words), listOf(SOURCE_LRCLIB))
        assertEquals(listOf(words, translatedLines, lines, plain), ranking.map { it.candidate })
    }

    @Test fun fullyTranslatedLinesStillNeedRealWordTiming() {
        val translatedLine = candidate(SOURCE_QQ).copy(translatedLyrics = TRANSLATION)
        assertEquals(1.0, LyricsContentRanker.inspect(query, translatedLine).translationCoverage, 0.0)
        assertTrue(LyricsContentRanker.needsCrossPlatformUpgrade(query, translatedLine))
        val partialWords = translatedLine.copy(wordLyrics = WORDS.lineSequence().take(2).joinToString("\n"))
        assertEquals(2.0 / 3.0, LyricsContentRanker.inspect(query, partialWords).wordCoverage, 0.0001)
        assertTrue(LyricsContentRanker.needsCrossPlatformUpgrade(query, partialWords))
        val words = translatedLine.copy(wordLyrics = WORDS)
        assertFalse(LyricsContentRanker.needsCrossPlatformUpgrade(query, words))
    }

    @Test fun declaredButInvalidWordsCannotCloseCrossPlatformFallback() {
        val declaredWords = candidate(SOURCE_QQ).copy(wordLyrics = WORDS.replace("Original ", "Different "), translatedLyrics = TRANSLATION)
        assertEquals(0.0, LyricsContentRanker.inspect(query, declaredWords).wordCoverage, 0.0)
        assertTrue(LyricsContentRanker.needsCrossPlatformUpgrade(query, declaredWords))
    }

    @Test fun eightyPercentRealWordCoverageIsEnoughForChineseButLowerCoverageIsNot() {
        val chinese = candidate(SOURCE_QQ).copy(
            lyrics = "[00:01]今天好晴天\n[00:20]今天好晴天\n[00:40]今天好晴天\n[01:20]今天好晴天\n[03:10]今天好晴天",
            wordLyrics = "[1000,1000](1000,900,0)今天好晴天\n[20000,1000](20000,900,0)今天好晴天\n" +
                "[40000,1000](40000,900,0)今天好晴天\n[80000,1000](80000,900,0)今天好晴天"
        )
        assertEquals(0.8, LyricsContentRanker.inspect(query, chinese).wordCoverage, 0.0)
        assertFalse(LyricsContentRanker.needsCrossPlatformUpgrade(query, chinese))
        val partial = chinese.copy(wordLyrics = chinese.wordLyrics.lineSequence().take(3).joinToString("\n"))
        assertEquals(0.6, LyricsContentRanker.inspect(query, partial).wordCoverage, 0.0)
        assertTrue(LyricsContentRanker.needsCrossPlatformUpgrade(query, partial))
    }

    @Test fun chineseLineAxisWithoutRealWordsStillNeedsFallback() {
        val chinese = candidate(SOURCE_QQ).copy(lyrics = CHINESE_LINES)
        assertEquals(LyricsKind.SYNCHRONIZED, LyricsContentRanker.inspect(query, chinese).kind)
        assertTrue(LyricsContentRanker.needsCrossPlatformUpgrade(query, chinese))
        val wordSynced = chinese.copy(wordLyrics = CHINESE_WORDS)
        assertEquals(1.0, LyricsContentRanker.inspect(query, wordSynced).wordCoverage, 0.0)
        assertFalse(LyricsContentRanker.needsCrossPlatformUpgrade(query, wordSynced))
        // Metadata language does not change the observed lyric body's script.
        assertFalse(LyricsContentRanker.needsCrossPlatformUpgrade(query.copy(track = "English title"), wordSynced))
    }

    @Test fun foreignWordAxisFallsBackUntilItsChineseTranslationIsUseful() {
        val english = candidate(SOURCE_QQ).copy(wordLyrics = WORDS)
        val japanese = candidate(SOURCE_NETEASE).copy(lyrics = JAPANESE_LINES, wordLyrics = JAPANESE_WORDS)
        for (body in listOf(english, japanese)) {
            assertTrue(LyricsContentRanker.needsCrossPlatformUpgrade(query, body))
            assertTrue(LyricsContentRanker.needsCrossPlatformUpgrade(query,
                body.copy(translatedLyrics = TRANSLATION.lineSequence().first())))
            assertFalse(LyricsContentRanker.needsCrossPlatformUpgrade(query,
                body.copy(translatedLyrics = TRANSLATION.lineSequence().take(2).joinToString("\n"))))
            assertFalse(LyricsContentRanker.needsCrossPlatformUpgrade(query,
                body.copy(translatedLyrics = TRANSLATION)))
        }
    }

    @Test fun kanaPreventsHanMajorityJapaneseFromBeingTreatedAsAlreadyChinese() {
        val japanese = candidate(SOURCE_QQ).copy(
            lyrics = "[00:01]明日の世界\n[03:10]世界の未来",
            wordLyrics = "[1000,1000](1000,900,0)明日の世界\n[190000,1000](190000,900,0)世界の未来"
        )
        assertTrue(LyricsContentRanker.needsCrossPlatformUpgrade(query, japanese))
        val withChinese = japanese.copy(translatedLyrics = "[00:01]明天的世界\n[03:10]世界的未来")
        assertEquals(1.0, LyricsContentRanker.inspect(query, withChinese).translationCoverage, 0.0)
        assertFalse(LyricsContentRanker.needsCrossPlatformUpgrade(query, withChinese))
    }

    @Test fun sameScriptRewritesAndKanaAuxiliaryAreNotChineseTranslationRepairs() {
        val chinese = candidate(SOURCE_QQ).copy(lyrics = CHINESE_LINES, wordLyrics = CHINESE_WORDS, translatedLyrics = TRANSLATION)
        assertEquals(0.0, LyricsContentRanker.inspect(query, chinese).translationCoverage, 0.0)
        assertFalse(LyricsContentRanker.needsCrossPlatformUpgrade(query, chinese))
        val foreign = candidate(SOURCE_NETEASE).copy(
            wordLyrics = WORDS, translatedLyrics = "[00:01]世界の未来\n[01:20]明日の世界\n[03:10]未来の世界"
        )
        assertEquals(0.0, LyricsContentRanker.inspect(query, foreign).translationCoverage, 0.0)
        assertTrue(LyricsContentRanker.needsCrossPlatformUpgrade(query, foreign))
    }

    @Test fun absentOrOutOfRecordingLineAxisNeedsFallbackEvenWithChineseAuxiliary() {
        val missingAxis = listOf(
            candidate(SOURCE_QQ).copy(lyrics = "", plainLyrics = "静态中文正文", translatedLyrics = TRANSLATION),
            candidate(SOURCE_QQ).copy(lyrics = "[03:21]Outside the recording", translatedLyrics = "[03:21]中文翻译"),
            candidate(SOURCE_QQ).copy(lyrics = "[99:99]Malformed time", translatedLyrics = TRANSLATION)
        )
        missingAxis.forEach { result ->
            assertTrue(result.lyrics, LyricsContentRanker.needsCrossPlatformUpgrade(query, result))
        }
    }

    @Test fun sameCandidateTranslationCannotBeErasedByHigherWordScores() {
        val baseline = candidate(SOURCE_QQ).copy(lyrics = JAPANESE_LINES, translatedLyrics = TRANSLATION)
        val losesTranslation = baseline.copy(translatedLyrics = "", wordLyrics = JAPANESE_WORDS, romanizedLyrics = ROMANIZATION)
        assertTrue(LyricsContentRanker.inspect(query, losesTranslation).score > LyricsContentRanker.inspect(query, baseline).score)
        assertFalse(LyricsContentRanker.retainsCapabilities(query, baseline, losesTranslation))
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(baseline), selection(losesTranslation)))
        val complete = losesTranslation.copy(translatedLyrics = TRANSLATION)
        assertTrue(LyricsContentRanker.retainsCapabilities(query, baseline, complete))
        assertTrue(LyricsContentRanker.isMaterialUpgrade(query, selection(baseline), selection(complete)))
    }

    @Test fun sameCandidateTranslationGainMustRetainItsExistingWords() {
        val baseline = candidate(SOURCE_QQ).copy(wordLyrics = WORDS)
        val losesWords = baseline.copy(wordLyrics = "", translatedLyrics = TRANSLATION)
        assertTrue(LyricsContentRanker.inspect(query, baseline).score > LyricsContentRanker.inspect(query, losesWords).score)
        assertFalse(LyricsContentRanker.retainsCapabilities(query, baseline, losesWords))
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(baseline), selection(losesWords)))
        val translated = baseline.copy(translatedLyrics = TRANSLATION)
        assertTrue(LyricsContentRanker.retainsCapabilities(query, baseline, translated))
        assertTrue(LyricsContentRanker.isMaterialUpgrade(query, selection(baseline), selection(translated)))
    }

    @Test fun exactlyHalfValidTranslationClosesFallbackButBelowHalfDoesNot() {
        val body = candidate(SOURCE_QQ).copy(
            lyrics = "[00:01]First lyric\n[03:10]Later lyric", translatedLyrics = "[00:01]第一句翻译",
            wordLyrics = "[1000,1000](1000,900,0)First lyric\n[190000,1000](190000,900,0)Later lyric"
        )
        assertEquals(1.0, LyricsContentRanker.inspect(query, body).wordCoverage, 0.0)
        assertEquals(0.5, LyricsContentRanker.inspect(query, body).translationCoverage, 0.0)
        assertFalse(LyricsContentRanker.needsCrossPlatformUpgrade(query, body))
        val belowHalf = body.copy(
            lyrics = "[00:01]First lyric\n[03:10]Later lyrics",
            wordLyrics = "[1000,1000](1000,900,0)First lyric\n[190000,1000](190000,900,0)Later lyrics"
        )
        assertEquals(1.0, LyricsContentRanker.inspect(query, belowHalf).wordCoverage, 0.0)
        assertTrue(LyricsContentRanker.inspect(query, belowHalf).translationCoverage < 0.5)
        assertTrue(LyricsContentRanker.needsCrossPlatformUpgrade(query, belowHalf))
    }

    @Test fun aNewCapabilityCannotEraseValidPartialTranslationOrWords() {
        val partialTranslation = candidate(SOURCE_QQ).copy(
            lyrics = JAPANESE_LINES, translatedLyrics = TRANSLATION.lineSequence().first()
        )
        val wordsWithoutTranslation = partialTranslation.copy(translatedLyrics = "", wordLyrics = JAPANESE_WORDS)
        assertTrue(LyricsContentRanker.inspect(query, partialTranslation).translationCoverage > 0.0)
        assertFalse(LyricsContentRanker.retainsCapabilities(query, partialTranslation, wordsWithoutTranslation))
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(partialTranslation), selection(wordsWithoutTranslation)))

        val partialWords = candidate(SOURCE_QQ).copy(wordLyrics = WORDS.lineSequence().take(2).joinToString("\n"))
        val translationWithoutWords = partialWords.copy(wordLyrics = "", translatedLyrics = TRANSLATION)
        assertTrue(LyricsContentRanker.inspect(query, partialWords).wordCoverage > 0.0)
        assertFalse(LyricsContentRanker.retainsCapabilities(query, partialWords, translationWithoutWords))
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(partialWords), selection(translationWithoutWords)))
    }

    @Test fun equalCapabilitiesRemainStableEvenForSameCandidateHigherAxisScore() {
        val baseline = candidate(SOURCE_QQ).copy(wordLyrics = WORDS)
        val later = baseline.copy(wordLyrics = WORDS.replace("(190500,400,0)", "(190500,8500,0)"))
        assertTrue(LyricsContentRanker.inspect(query, later).score > LyricsContentRanker.inspect(query, baseline).score)
        assertTrue(LyricsContentRanker.retainsCapabilities(query, baseline, later))
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(baseline), selection(later)))
    }

    @Test fun aProvedMissingTailRemainsABoundedMaterialUpgrade() {
        val prefix = "[00:01]A real opening sentence with sufficient characters\n[01:20]A real middle sentence with sufficient characters"
        val baseline = candidate(SOURCE_QQ).copy(lyrics = prefix)
        val complete = baseline.copy(lyrics = "$prefix\n[03:10]A real ending sentence with sufficient characters")
        assertTrue(LyricsContentRanker.isMaterialUpgrade(query, selection(baseline), selection(complete)))
        assertFalse(LyricsContentRanker.isMaterialUpgrade(query, selection(complete), selection(baseline)))
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
        const val CHINESE_LINES = "[00:01]今天看见你的笑容\n[01:20]明天等待你的归来\n[03:10]此刻听见你的声音"
        const val JAPANESE_WORDS = "[1000,1000](1000,900,0)\u3042\u3044\u3046\u3048\u304a\n" +
            "[80000,1000](80000,900,0)\u304b\u304d\u304f\u3051\u3053\n" +
            "[190000,1000](190000,900,0)\u3055\u3057\u3059\u305b\u305d"
        const val CHINESE_WORDS = "[1000,1000](1000,900,0)今天看见你的笑容\n" +
            "[80000,1000](80000,900,0)明天等待你的归来\n" +
            "[190000,1000](190000,900,0)此刻听见你的声音"
        const val ROMANIZATION = "[00:01]romaji one\n[01:20]romaji two\n[03:10]romaji end"
        const val ENHANCED = "[00:01]<00:01>Original <00:01.50>one<00:01.90>\n" +
            "[01:20]<01:20>Original <01:20.50>two<01:20.90>\n" +
            "[03:10]<03:10>Original <03:10.50>end<03:10.90>"
    }
}
