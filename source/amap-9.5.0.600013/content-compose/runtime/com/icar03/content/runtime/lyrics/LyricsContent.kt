package com.icar03.content.runtime.lyrics

/** One renderability policy shared by resolution, cache admission and the native UI adapter. */
internal fun LyricsResult.timedLines(): List<ParsedLyricLine> {
    if (ttmlLyrics.isNotBlank()) {
        val structured = runCatching { TtmlLyricsParser.parse(ttmlLyrics) }.getOrNull()
        if (structured != null && structured.lines.isNotEmpty()) {
            return structured.lines.map { line ->
                ParsedLyricLine(line.timeMs, line.text, line.translation,
                    words = line.words.takeIf { words ->
                        words.joinToString("") { it.text }.filterNot(Char::isWhitespace) ==
                            line.text.filterNot(Char::isWhitespace)
                    }.orEmpty().map { ParsedLyricWord(it.startTimeMs, it.endTimeMs, it.text) },
                    romanization = line.romanization, endTimeMs = line.endTimeMs,
                    backgroundWords = line.backgroundWords.map { ParsedLyricWord(it.startTimeMs, it.endTimeMs, it.text) },
                    speaker = line.agent)
            }
        }
    }
    return LrcParser.align(lyrics, translatedLyrics, wordRaw = wordLyrics,
        romanizedRaw = romanizedLyrics, durationMs = durationMs)
}

internal fun LyricsResult.plainText(): String = cleanLyrics(plainLyrics).ifBlank {
    cleanLyrics(lyrics).takeIf { classifyLyrics(it) == LyricsKind.PLAIN }.orEmpty()
}

/** A cheap negative check; positive payloads still require parsing and recording proof. */
internal fun LyricsResult.hasBodyPayload(): Boolean = lyrics.isNotBlank() || wordLyrics.isNotBlank() ||
    ttmlLyrics.isNotBlank() || plainLyrics.isNotBlank()

internal fun LyricsResult.contentKind(): LyricsKind = when {
    timedLines().isNotEmpty() -> LyricsKind.SYNCHRONIZED
    plainText().isNotBlank() -> LyricsKind.PLAIN
    else -> LyricsKind.NONE
}
