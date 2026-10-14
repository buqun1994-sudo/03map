package com.icar03.content.runtime.lyrics

/** One renderability policy shared by resolution, cache admission and the native UI adapter. */
internal fun LyricsResult.timedLines(): List<ParsedLyricLine> {
    // Explicit instrumental evidence is not a lyric row, even if a provider time-tags it.
    if (isInstrumentalContent()) return emptyList()
    if (ttmlLyrics.isNotBlank()) {
        val structured = runCatching { TtmlLyricsParser.parse(ttmlLyrics) }.getOrNull()
        if (structured != null && structured.lines.isNotEmpty()) {
            val sides = TtmlSpeakerLayout.sides(structured)
            val requiresWordFallback = wordLyrics.isNotBlank() && structured.lines.any { line ->
                line.words.isEmpty() || line.words.joinToString("") { it.text }.filterNot(Char::isWhitespace) !=
                    line.text.filterNot(Char::isWhitespace)
            }
            val requiresAuxiliaryFallback = requiresWordFallback ||
                (translatedLyrics.isNotBlank() && structured.lines.any { it.translation.isBlank() }) ||
                (romanizedLyrics.isNotBlank() && structured.lines.any { it.romanization.isBlank() })
            val auxiliaryByTime = if (requiresAuxiliaryFallback) {
                val fallbackAxis = structured.lines.joinToString("\n") { line ->
                    PublicWordLyricsFormats.lrcTimestamp(line.timeMs) + line.text.replace('\n', ' ').replace('\r', ' ')
                }
                // Keep the TTML axis authoritative; only auxiliary rows use the existing LRC tolerances.
                LrcParser.align(fallbackAxis, translatedLyrics, wordRaw = wordLyrics, romanizedRaw = romanizedLyrics,
                    artist = candidateArtist, track = candidateTrack).groupBy(ParsedLyricLine::timeMs)
            } else emptyMap()
            fun fallbackFor(line: TtmlLyricLine): ParsedLyricLine? =
                auxiliaryByTime[line.timeMs]?.let { matches ->
                    matches.firstOrNull { compactLyric(it.text) == compactLyric(line.text) }
                        ?: matches.singleOrNull()
                }
            return structured.lines.mapIndexed { index, line ->
                val fallback = fallbackFor(line)
                val structuredWords = line.words.takeIf { words ->
                    words.joinToString("") { it.text }.filterNot(Char::isWhitespace) ==
                        line.text.filterNot(Char::isWhitespace)
                }.orEmpty().map { ParsedLyricWord(it.startTimeMs, it.endTimeMs, it.text) }
                ParsedLyricLine(line.timeMs, line.text,
                    line.translation.ifBlank { fallback?.translation.orEmpty() },
                    words = structuredWords.ifEmpty { fallback?.words.orEmpty() },
                    romanization = line.romanization.ifBlank { fallback?.romanization.orEmpty() }, endTimeMs = line.endTimeMs,
                    backgroundWords = line.backgroundWords.map { ParsedLyricWord(it.startTimeMs, it.endTimeMs, it.text) },
                    speaker = line.agent, speakerSide = sides[index])
            }
        }
    }
    return LrcSpeakerLayout.project(LrcParser.align(lyrics, translatedLyrics, wordRaw = wordLyrics,
        romanizedRaw = romanizedLyrics, durationMs = durationMs, artist = candidateArtist, track = candidateTrack), candidateArtist, candidateTrack)
}

private fun compactLyric(text: String): String = text.filterNot(Char::isWhitespace)

internal fun LyricsResult.plainText(): String = if (isInstrumentalContent()) "" else cleanLyrics(plainLyrics).ifBlank {
    cleanLyrics(lyrics).takeIf { classifyLyrics(it) == LyricsKind.PLAIN }.orEmpty()
}

/** A cheap negative check; positive payloads still require parsing and recording proof. */
internal fun LyricsResult.hasBodyPayload(): Boolean = !isInstrumentalContent() &&
    (lyrics.isNotBlank() || wordLyrics.isNotBlank() || ttmlLyrics.isNotBlank() || plainLyrics.isNotBlank())

internal fun LyricsResult.contentKind(): LyricsKind = when {
    timedLines().isNotEmpty() -> LyricsKind.SYNCHRONIZED
    plainText().isNotBlank() -> LyricsKind.PLAIN
    else -> LyricsKind.NONE
}

/** Evidence only; every automatic consumer must still replay the existing recording proof. */
internal fun LyricsResult.isInstrumentalContent(): Boolean {
    if (instrumental) return true
    if (wordLyrics.isNotBlank() || ttmlLyrics.isNotBlank() || backgroundLyrics.isNotBlank()) return false
    val tracks = listOf(lyrics, plainLyrics, translatedLyrics, romanizedLyrics)
        .map(::cleanLyrics).filter(String::isNotBlank)
    return tracks.isNotEmpty() && tracks.all(::isExplicitInstrumentalMarker)
}

/** Only a sole explicit lyric marker is evidence. Titles, silence, gaps and empty bodies are not. */
internal fun isExplicitInstrumentalMarker(value: String?): Boolean {
    val rows = cleanLyrics(value).lineSequence().map(String::trim)
        .filter { it.isNotBlank() && !INSTRUMENTAL_METADATA.matches(it) }
        .map { INSTRUMENTAL_TIMESTAMPS.replaceFirst(it, "").trim() }
        .filter(String::isNotBlank).toList()
    return rows.size == 1 && rows.single() in EXPLICIT_INSTRUMENTAL_MARKERS
}

private val INSTRUMENTAL_TIMESTAMPS = Regex("^(?:\\[\\d{1,3}:\\d{2}(?:[.:]\\d{1,3})?])+")
private val INSTRUMENTAL_METADATA = Regex("^\\[(?:ar|ti|al|by|offset|length|re|ve):[^\\]]*]$", RegexOption.IGNORE_CASE)
private val EXPLICIT_INSTRUMENTAL_MARKERS = setOf(
    "纯音乐，请欣赏", "纯音乐，请您欣赏", "纯音乐,请欣赏", "纯音乐,请您欣赏"
)
