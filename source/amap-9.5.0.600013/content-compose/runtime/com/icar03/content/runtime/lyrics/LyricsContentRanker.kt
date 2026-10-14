package com.icar03.content.runtime.lyrics

import java.text.Normalizer
import java.util.Locale
import kotlin.math.roundToInt

/** Ranks renderable content only after recording identity has been proved by the selector. */
internal object LyricsContentRanker {
    // A real word-timing tier outweighs translation and all other bonuses combined.
    private const val WORD_POINTS = 4_000
    private const val PARTIAL_WORD_POINTS = 400
    private const val TRANSLATION_POINTS = 1_600
    private const val ROMANIZATION_POINTS = 30
    private const val DURATION_POINTS = 100
    private const val MINIMUM_WORD_COVERAGE = 0.80
    private const val MINIMUM_TRANSLATION_COVERAGE = 0.50
    private const val MINIMUM_ROMANIZATION_COVERAGE = 0.50
    private const val MINIMUM_CONSENSUS_CHARACTERS = 30
    private const val CONSENSUS_SIMILARITY = 0.55
    private const val MINIMUM_END_COVERAGE = 0.75
    private val creditPrefix = Regex(
        "^(lyrics by|written by|composed by|produced by|arranged by)\\s*[:\\uFF1A]",
        RegexOption.IGNORE_CASE
    )

    data class ContentQuality(
        val kind: LyricsKind,
        val wordCoverage: Double = 0.0,
        val translationCoverage: Double = 0.0,
        val romanizationCoverage: Double = 0.0,
        val durationCoverage: Double = 0.0,
        val consensusFamilies: Int = 0,
        val speakerCoverage: Double = 0.0
    ) {
        val score: Int get() = if (kind == LyricsKind.SYNCHRONIZED) {
            (if (wordCoverage >= MINIMUM_WORD_COVERAGE) WORD_POINTS * wordCoverage else PARTIAL_WORD_POINTS * wordCoverage).roundToInt() +
                (if (translationCoverage >= MINIMUM_TRANSLATION_COVERAGE) TRANSLATION_POINTS * translationCoverage else 0.0).roundToInt() +
                (if (romanizationCoverage >= MINIMUM_ROMANIZATION_COVERAGE) ROMANIZATION_POINTS * romanizationCoverage else 0.0).roundToInt() +
                (DURATION_POINTS * durationCoverage).roundToInt() +
                when {
                    consensusFamilies >= 2 -> 250
                    consensusFamilies == 1 -> 150
                    else -> 0
                }
        } else 0
    }

    data class RankedCandidate(
        val selection: LyricsCandidateSelection,
        val quality: ContentQuality
    ) {
        val candidate: LyricsResult get() = selection.candidate
    }

    fun rank(
        query: LyricsLookup,
        selections: List<LyricsCandidateSelection>,
        preferredSources: List<String> = emptyList()
    ): List<RankedCandidate> {
        val bodies = selections.asSequence()
            .filter { it.candidate.hasBodyPayload() }
            .filter { LyricsCandidateSelector.isProofValid(query, it.candidate, it.proof) }
            .map { selection -> selection to inspectBody(query, selection.candidate) }
            .filter { (_, body) -> body.quality.kind != LyricsKind.NONE }
            .toList()
        val anyCompleteEnding = bodies.any { (_, body) ->
            body.quality.kind == LyricsKind.SYNCHRONIZED &&
                body.quality.durationCoverage >= MINIMUM_END_COVERAGE
        }
        val preference = preferredSources.withIndex().associate { (index, source) -> source to index }
        return bodies.map { (selection, body) ->
            val ownFamily = consensusFamily(selection.candidate.source)
            val expectedCharacters = bodies.asSequence()
                .filter { (peerSelection, peer) ->
                    ownFamily.isNotBlank() && peerSelection.candidate.source.isNotBlank() &&
                        consensusFamily(peerSelection.candidate.source) != ownFamily &&
                        body.normalizedText.codePointCount(0, body.normalizedText.length) >= MINIMUM_CONSENSUS_CHARACTERS &&
                        peer.normalizedText.startsWith(body.normalizedText) &&
                        peer.normalizedText.length > body.normalizedText.length
                }
                .map { (_, peer) -> peer.normalizedText.codePointCount(0, peer.normalizedText.length) }
                .maxOrNull()
            val relativeCoverage = expectedCharacters?.let { expected ->
                body.normalizedText.codePointCount(0, body.normalizedText.length).toDouble() / expected
            } ?: 1.0
            val quality = body.quality.copy(
                wordCoverage = body.quality.wordCoverage * relativeCoverage,
                translationCoverage = body.quality.translationCoverage * relativeCoverage,
                romanizationCoverage = body.quality.romanizationCoverage * relativeCoverage
            )
            val families = if (body.grams.isEmpty() || ownFamily.isBlank() ||
                (anyCompleteEnding && body.quality.durationCoverage < MINIMUM_END_COVERAGE)
            ) {
                emptySet()
            } else {
                bodies.asSequence()
                    .filter { (_, peer) -> peer.grams.isNotEmpty() }
                    .filter { (peerSelection, _) ->
                        val family = consensusFamily(peerSelection.candidate.source)
                        family.isNotBlank() && family != ownFamily
                    }
                    .filter { (_, peer) -> jaccard(body.grams, peer.grams) >= CONSENSUS_SIMILARITY }
                    .map { (peerSelection, _) -> consensusFamily(peerSelection.candidate.source) }
                    .toSet()
            }
            RankedCandidate(selection, quality.copy(consensusFamilies = families.size))
        }.sortedWith(
            compareByDescending<RankedCandidate> { it.quality.kind == LyricsKind.SYNCHRONIZED }
                .thenByDescending { capabilityGrade(it.quality) }
                .thenBy { preference[it.candidate.source] ?: Int.MAX_VALUE }
                .thenByDescending { it.quality.score }
                .thenBy { it.candidate.source }
                .thenBy { it.candidate.sourceId }
        )
    }

    private fun capabilityGrade(quality: ContentQuality): Int =
        (if (quality.wordCoverage >= MINIMUM_WORD_COVERAGE) 8 else 0) +
            (if (quality.translationCoverage >= MINIMUM_TRANSLATION_COVERAGE) 4 else 0) +
            (if (quality.romanizationCoverage >= MINIMUM_ROMANIZATION_COVERAGE) 2 else 0) +
            (if (quality.speakerCoverage > 0.0) 1 else 0)

    fun inspect(query: LyricsLookup, result: LyricsResult): ContentQuality =
        inspectBody(query, result).quality

    /** Cross-provider fallback repairs missing real word timing, needed Chinese translation, or
     * pronunciation tracks for CJK lyrics; speaker metadata alone never starts it. */
    fun needsCrossPlatformUpgrade(query: LyricsLookup, result: LyricsResult): Boolean {
        val body = inspectBody(query, result)
        return body.quality.kind != LyricsKind.SYNCHRONIZED ||
            body.quality.wordCoverage < MINIMUM_WORD_COVERAGE ||
            (body.needsChineseTranslation && body.quality.translationCoverage < MINIMUM_TRANSLATION_COVERAGE) ||
            (body.needsRomanization && body.quality.romanizationCoverage < MINIMUM_ROMANIZATION_COVERAGE)
    }

    /** Shared with same-candidate enrichment admission; identity/proof is checked by its caller. */
    fun retainsCapabilities(query: LyricsLookup, previous: LyricsResult, next: LyricsResult): Boolean =
        retainsCapabilities(previous, next, inspect(query, previous), inspect(query, next))

    private fun capabilities(quality: ContentQuality) = listOf(
        quality.translationCoverage >= MINIMUM_TRANSLATION_COVERAGE,
        quality.wordCoverage >= MINIMUM_WORD_COVERAGE,
        quality.romanizationCoverage >= MINIMUM_ROMANIZATION_COVERAGE
    )

    private fun retainsCapabilities(
        previous: LyricsResult,
        next: LyricsResult,
        old: ContentQuality,
        fresh: ContentQuality
    ): Boolean {
        if (fresh.kind.ordinal < old.kind.ordinal) return false
        val oldFeatures = capabilities(old)
        val newFeatures = capabilities(fresh)
        if (oldFeatures.indices.any { oldFeatures[it] && !newFeatures[it] }) return false
        // Partial aligned tracks still belong to the admitted body, even below a ranking tier.
        if (old.translationCoverage > 0.0 && fresh.translationCoverage == 0.0 ||
            old.wordCoverage > 0.0 && fresh.wordCoverage == 0.0 ||
            old.romanizationCoverage > 0.0 && fresh.romanizationCoverage == 0.0) return false
        if (old.kind == LyricsKind.SYNCHRONIZED && fresh.durationCoverage + .10 < old.durationCoverage) return false
        return retainsSpeakerSides(previous.timedLines(), next.timedLines())
    }

    /** Initial selection may use fine scores; an already visible body changes only for
     * a real capability gain or a proved missing tail, never consensus/axis score noise. */
    fun isMaterialUpgrade(
        query: LyricsLookup,
        previous: LyricsCandidateSelection,
        next: LyricsCandidateSelection
    ): Boolean {
        if (previous.candidate == next.candidate) return false
        val ranked = rank(query, listOf(previous, next))
        val old = ranked.firstOrNull { it.selection == previous }?.quality ?: return false
        val fresh = ranked.firstOrNull { it.selection == next }?.quality ?: return false
        if (!retainsCapabilities(previous.candidate, next.candidate, old, fresh)) return false
        if (fresh.kind == LyricsKind.SYNCHRONIZED && old.kind == LyricsKind.PLAIN) return true
        if (fresh.kind != old.kind || fresh.kind != LyricsKind.SYNCHRONIZED) return false
        val oldFeatures = capabilities(old)
        val newFeatures = capabilities(fresh)
        val oldRows = previous.candidate.timedLines()
        val newRows = next.candidate.timedLines()
        if (oldFeatures.indices.any { !oldFeatures[it] && newFeatures[it] }) return true
        if (isSpeakerUpgrade(oldRows, newRows)) return true
        val oldText = normalizeContent(oldRows.joinToString("") { it.text })
        val newText = normalizeContent(newRows.joinToString("") { it.text })
        val oldLength = oldText.codePointCount(0, oldText.length)
        val newLength = newText.codePointCount(0, newText.length)
        return old.durationCoverage < MINIMUM_END_COVERAGE && fresh.durationCoverage >= MINIMUM_END_COVERAGE &&
            oldLength >= MINIMUM_CONSENSUS_CHARACTERS && newText.startsWith(oldText) &&
            newLength >= oldLength * 1.25
    }

    /** Already admitted vocal lanes remain attached to the same source-time/body rows. */
    private fun retainsSpeakerSides(old: List<ParsedLyricLine>, next: List<ParsedLyricLine>): Boolean {
        val voiced = old.filter { it.speakerSide != LyricSpeakerLayout.UNSPECIFIED }
        if (voiced.isEmpty()) return true
        val available = next.groupBy { it.timeMs to it.text.filterNot(Char::isWhitespace) }
            .mapValues { (_, rows) -> rows.map { it.speakerSide }.toMutableList() }
        return voiced.all { line ->
            available[line.timeMs to line.text.filterNot(Char::isWhitespace)]?.remove(line.speakerSide) == true
        }
    }

    /** Vocal metadata alone upgrades only an unchanged body and axis, without losing its tracks. */
    private fun isSpeakerUpgrade(old: List<ParsedLyricLine>, next: List<ParsedLyricLine>): Boolean {
        if (old.size != next.size || old.isEmpty()) return false
        var added = false
        return old.indices.all { index ->
            val before = old[index]; val after = next[index]
            if (before.speakerSide == LyricSpeakerLayout.UNSPECIFIED && after.speakerSide != LyricSpeakerLayout.UNSPECIFIED) added = true
            before.timeMs == after.timeMs &&
                before.text.filterNot(Char::isWhitespace) == after.text.filterNot(Char::isWhitespace) &&
                (before.translation.isBlank() || before.translation == after.translation) &&
                (before.romanization.isBlank() || before.romanization == after.romanization) &&
                (before.words.isEmpty() || before.words == after.words) &&
                (before.backgroundWords.isEmpty() || before.backgroundWords == after.backgroundWords) &&
                (before.endTimeMs == null || after.endTimeMs != null && after.endTimeMs >= before.endTimeMs)
        } && added
    }

    fun plainText(result: LyricsResult): String = result.plainText()
        .takeIf { classifyLyrics(it) == LyricsKind.PLAIN }.orEmpty()

    private fun inspectBody(query: LyricsLookup, result: LyricsResult): Body {
        val recordingEnd = query.durationMs.takeIf(LyricsCandidateSelector::hasKnownDuration)
            ?: result.durationMs
        val contentLines = result.timedLines().filter { line ->
            line.text.isNotBlank() && !creditPrefix.containsMatchIn(line.text.trim())
        }
        val lines = contentLines.filter { it.timeMs >= 0L && it.timeMs < recordingEnd }
        if (lines.isEmpty()) {
            val kind = if (plainText(result).isNotBlank()) LyricsKind.PLAIN else LyricsKind.NONE
            return Body(ContentQuality(kind))
        }
        val lineCharacters = lines.map { line ->
            val text = compactText(line.text)
            text.codePointCount(0, text.length)
        }
        val totalCharacters = contentLines.sumOf { line ->
            val text = compactText(line.text)
            text.codePointCount(0, text.length)
        }.toDouble()
        if (totalCharacters <= 0.0) return Body(ContentQuality(LyricsKind.NONE))
        var wordCharacters = 0
        var translatedCharacters = 0
        var romanizedCharacters = 0
        var speakerCharacters = 0
        var lastContentTime = 0L
        lines.forEachIndexed { index, line ->
            val nextLineStart = lines.asSequence().drop(index + 1)
                .firstOrNull { it.timeMs > line.timeMs }?.timeMs ?: recordingEnd
            val declaredEnd = line.endTimeMs?.takeIf { end ->
                end > line.timeMs && line.words.isNotEmpty() &&
                    end >= line.words.maxOf(ParsedLyricWord::endTimeMs)
            }
            val wordUpperBound = minOf(recordingEnd, maxOf(nextLineStart, declaredEnd ?: nextLineStart))
            val words = validWords(line, wordUpperBound)
            wordCharacters += words.characters
            if (hasDistinctText(line.text, line.translation) &&
                scriptRatio(line.translation, Character.UnicodeScript.HAN) >= 0.5 &&
                !hasKana(line.translation) && needsChineseTranslation(line.text)
            ) translatedCharacters += lineCharacters[index]
            if (hasDistinctText(line.text, line.romanization) && hasRomanizationLetters(line.romanization)) {
                romanizedCharacters += lineCharacters[index]
            }
            if (line.speakerSide != LyricSpeakerLayout.UNSPECIFIED) speakerCharacters += lineCharacters[index]
            // Empty tail markers and unverified line end hints must not improve duration fit.
            lastContentTime = maxOf(lastContentTime, line.timeMs, words.lastEndMs)
        }
        val normalizedBody = normalizeContent(lines.joinToString("") { it.text })
        return Body(
            quality = ContentQuality(
                kind = LyricsKind.SYNCHRONIZED,
                wordCoverage = (wordCharacters / totalCharacters).coerceIn(0.0, 1.0),
                translationCoverage = (translatedCharacters / totalCharacters).coerceIn(0.0, 1.0),
                romanizationCoverage = (romanizedCharacters / totalCharacters).coerceIn(0.0, 1.0),
                speakerCoverage = (speakerCharacters / totalCharacters).coerceIn(0.0, 1.0),
                durationCoverage = (lastContentTime.toDouble() / recordingEnd).coerceIn(0.0, 1.0)
            ),
            grams = if (normalizedBody.codePointCount(0, normalizedBody.length) >= MINIMUM_CONSENSUS_CHARACTERS) {
                grams(normalizedBody)
            } else emptySet(),
            normalizedText = normalizedBody,
            needsChineseTranslation = needsChineseTranslation(lines.joinToString("\n") { it.text }),
            needsRomanization = lines.any { hasRomanizableScript(it.text) }
        )
    }

    private fun validWords(line: ParsedLyricLine, upperBound: Long): WordCoverage {
        val text = compactText(line.text)
        var textCursor = 0
        var previousEnd = line.timeMs
        var characters = 0
        var lastEndMs = 0L
        for (word in line.words) {
            val wordText = compactText(word.text)
            if (wordText.isEmpty() || word.startTimeMs < previousEnd ||
                word.endTimeMs <= word.startTimeMs || word.endTimeMs > upperBound
            ) return WordCoverage()
            val position = text.indexOf(wordText, textCursor)
            if (position < 0) return WordCoverage()
            textCursor = position + wordText.length
            characters += wordText.codePointCount(0, wordText.length)
            previousEnd = word.endTimeMs
            lastEndMs = word.endTimeMs
        }
        return WordCoverage(characters, lastEndMs)
    }

    private fun hasDistinctText(original: String, auxiliary: String): Boolean {
        val normalized = normalizeContent(auxiliary)
        return normalized.isNotEmpty() && normalized != normalizeContent(original)
    }

    private fun compactText(text: String): String = text.filterNot(Char::isWhitespace)

    private fun normalizeContent(text: String): String {
        val normalized = Normalizer.normalize(text, Normalizer.Form.NFKC).lowercase(Locale.ROOT)
        return buildString {
            normalized.codePoints().forEach { character ->
                if (Character.isLetterOrDigit(character)) appendCodePoint(character)
            }
        }
    }

    private fun needsChineseTranslation(text: String): Boolean =
        hasKana(text) || (text.codePoints().anyMatch(Character::isLetter) &&
            scriptRatio(text, Character.UnicodeScript.HAN) < 0.5)

    private fun hasRomanizableScript(text: String): Boolean = text.codePoints().anyMatch { character ->
        when (Character.UnicodeScript.of(character)) {
            Character.UnicodeScript.HAN,
            Character.UnicodeScript.HANGUL,
            Character.UnicodeScript.HIRAGANA,
            Character.UnicodeScript.KATAKANA -> Character.isLetter(character)
            else -> false
        }
    }


    private fun hasRomanizationLetters(text: String): Boolean = text.codePoints().anyMatch { character ->
        if (character in 0x3100..0x312F || character in 0x31A0..0x31BF) return@anyMatch true
        if (!Character.isLetter(character)) return@anyMatch false
        when (Character.UnicodeScript.of(character)) {
            Character.UnicodeScript.HAN,
            Character.UnicodeScript.HANGUL,
            Character.UnicodeScript.HIRAGANA,
            Character.UnicodeScript.KATAKANA -> false
            else -> true
        }
    }

    private fun hasKana(text: String): Boolean = text.codePoints().anyMatch { character ->
        val script = Character.UnicodeScript.of(character)
        script == Character.UnicodeScript.HIRAGANA || script == Character.UnicodeScript.KATAKANA
    }

    private fun scriptRatio(text: String, script: Character.UnicodeScript): Double {
        val letters = text.codePoints().filter(Character::isLetter).toArray()
        if (letters.isEmpty()) return 0.0
        return letters.count { Character.UnicodeScript.of(it) == script }.toDouble() / letters.size
    }

    private fun grams(text: String): Set<String> {
        val characters = text.codePoints().toArray()
        return (0..characters.size - 3).mapTo(mutableSetOf()) { index ->
            buildString {
                appendCodePoint(characters[index])
                appendCodePoint(characters[index + 1])
                appendCodePoint(characters[index + 2])
            }
        }
    }

    private fun jaccard(first: Set<String>, second: Set<String>): Double {
        if (first.isEmpty() || second.isEmpty()) return 0.0
        val intersection = first.count(second::contains)
        return intersection.toDouble() / (first.size + second.size - intersection)
    }

    private fun consensusFamily(source: String): String = when (val name = source.trim().lowercase(Locale.ROOT)) {
        "deezer", "lyricfind" -> "lyricfind"
        else -> name
    }

    private data class Body(
        val quality: ContentQuality,
        val grams: Set<String> = emptySet(),
        val normalizedText: String = "",
        val needsChineseTranslation: Boolean = false,
        val needsRomanization: Boolean = false
    )
    private data class WordCoverage(val characters: Int = 0, val lastEndMs: Long = 0L)
}
