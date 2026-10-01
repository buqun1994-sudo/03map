package com.icar03.content.runtime.lyrics

// Native translation of 03lyrics/app/src/main/assets/lyrics_overlay.html:488-558.
// Exact source hash and original project attribution are retained in PROVENANCE.json.

internal data class ParsedLyricLine(
    val timeMs: Long,
    val text: String,
    val translation: String = ""
)

/** Line synchronization only; enhanced per-character timing never becomes a second clock. */
internal object LrcParser {
    private val timestamps = Regex("\\[(\\d{1,3}):(\\d{2})(?:[.:](\\d{1,3}))?]")
    private val inlineMetadata = Regex("\\[[^]]+]|<\\d{1,3}:\\d{2}(?:[.:]\\d{1,3})?>")
    private val credits = Regex("^(作词|作曲|编曲|制作人|混音|母带|录音|和声|监制|出品|发行|翻译|词|曲)\\s*[：:]", RegexOption.IGNORE_CASE)
    private const val TRANSLATION_TOLERANCE_MS = 120L

    fun parse(raw: String): List<ParsedLyricLine> {
        val lines = buildList {
            raw.replace("\r", "").lineSequence().forEach { source ->
                val stamps = timestamps.findAll(source).toList()
                if (stamps.isEmpty()) return@forEach
                val text = inlineMetadata.replace(source, "").trim()
                if (text.isEmpty() || credits.containsMatchIn(text)) return@forEach
                stamps.forEach { stamp ->
                    val milliseconds = stamp.groupValues[3].takeIf(String::isNotEmpty)
                        ?.padEnd(3, '0')?.toLong() ?: 0L
                    add(ParsedLyricLine(
                        (stamp.groupValues[1].toLong() * 60L + stamp.groupValues[2].toLong()) * 1_000L + milliseconds,
                        text
                    ))
                }
            }
        }.sortedBy(ParsedLyricLine::timeMs)
        return lines.filterIndexed { index, line -> index == 0 || line != lines[index - 1] }
    }

    fun align(originalRaw: String, translatedRaw: String): List<ParsedLyricLine> {
        val originals = parse(originalRaw)
        val translations = parse(translatedRaw)
        if (originals.isEmpty() || translations.isEmpty()) return originals
        data class Alignment(val original: Int, val translation: Int, val difference: Long)
        val candidates = buildList {
            var firstPossibleOriginal = 0
            translations.forEachIndexed { translatedIndex, translation ->
                while (firstPossibleOriginal < originals.size &&
                    originals[firstPossibleOriginal].timeMs < translation.timeMs - TRANSLATION_TOLERANCE_MS) {
                    firstPossibleOriginal++
                }
                var originalIndex = firstPossibleOriginal
                while (originalIndex < originals.size &&
                    originals[originalIndex].timeMs <= translation.timeMs + TRANSLATION_TOLERANCE_MS) {
                    add(Alignment(originalIndex, translatedIndex,
                        kotlin.math.abs(originals[originalIndex].timeMs - translation.timeMs)))
                    originalIndex++
                }
            }
        }.sortedWith(compareBy<Alignment> { it.difference }.thenBy { it.original }.thenBy { it.translation })
        val assignedOriginals = mutableSetOf<Int>()
        val assignedTranslations = mutableSetOf<Int>()
        val aligned = originals.toMutableList()
        candidates.forEach { candidate ->
            if (candidate.original in assignedOriginals || candidate.translation in assignedTranslations) return@forEach
            aligned[candidate.original] = aligned[candidate.original].copy(
                translation = translations[candidate.translation].text)
            assignedOriginals += candidate.original
            assignedTranslations += candidate.translation
        }
        return aligned.toList()
    }
}
