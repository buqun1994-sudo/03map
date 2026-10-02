package com.icar03.content.runtime.lyrics

// Native translation of 03lyrics/app/src/main/assets/lyrics_overlay.html:488-558.
// Exact source hash and original project attribution are retained in PROVENANCE.json.

internal data class ParsedLyricWord(
    val startTimeMs: Long,
    val endTimeMs: Long,
    val text: String
)

internal data class ParsedLyricLine(
    val timeMs: Long,
    val text: String,
    val translation: String = "",
    val words: List<ParsedLyricWord> = emptyList(),
    val romanization: String = "",
    val endTimeMs: Long? = null,
    val backgroundWords: List<ParsedLyricWord> = emptyList(),
    val speaker: String = ""
)

internal object LrcParser {
    private val timestamps = Regex("\\[(\\d{1,3}):([0-5]\\d)(?:[.:](\\d{1,3}))?]")
    private val wordTimestamps = Regex("<(\\d{1,3}):([0-5]\\d)(?:[.:](\\d{1,3}))?>")
    private val squareMetadata = Regex("\\[[^]]*]")
    private val offsets = Regex("\\[offset:\\s*([+-]?\\d+)\\s*]", RegexOption.IGNORE_CASE)
    private val yrcHead = Regex("^\\[(\\d+),(\\d+)]")
    private val yrcWord = Regex("\\((\\d+),(\\d+),\\d+\\)")
    private val malformedYrcWord = Regex("\\(\\d+,\\d+\\)")
    private val credits = Regex("^(作词|作曲|编曲|制作人|混音|母带|录音|和声|监制|出品|发行|翻译|词|曲)\\s*[：:]", RegexOption.IGNORE_CASE)
    private const val TRANSLATION_TOLERANCE_MS = 700L
    private const val WORD_TOLERANCE_MS = 120L
    private const val MAX_OFFSET_MS = 10_000L

    fun parse(raw: String): List<ParsedLyricLine> = parse(raw, parseOffsetMs(raw))

    private fun parse(raw: String, offset: Long, collapseDuplicates: Boolean = true): List<ParsedLyricLine> {
        val lineTimes = mutableListOf<Long>()
        val endMarks = mutableSetOf<Long>()
        val lines = buildList {
            normalized(raw).lineSequence().forEach { source ->
                val line = source.trimStart().removePrefix("\uFEFF")
                var cursor = 0
                val stamps = mutableListOf<Long>()
                while (true) {
                    val stamp = timestamps.find(line, cursor)?.takeIf { it.range.first == cursor } ?: break
                    stamps += timestampMs(stamp)
                    cursor = stamp.range.last + 1
                    while (cursor < line.length && line[cursor].isWhitespace()) cursor++
                }
                if (stamps.isEmpty()) return@forEach
                val body = squareMetadata.replace(line.substring(cursor), "")
                val text = wordTimestamps.replace(body, "").trim()
                if (text.isEmpty()) {
                    val times = stamps.map { adjustedTime(it, offset) }
                    lineTimes += times
                    endMarks += times
                    return@forEach
                }
                if (credits.containsMatchIn(text)) return@forEach
                lineTimes += stamps.map { adjustedTime(it, offset) }
                val wordMarks = wordTimestamps.findAll(body).toList()
                val wordTimes = wordMarks.map(::timestampMs)
                val monotonicWords = wordTimes.zipWithNext().all { (first, next) -> first <= next }
                val anchor = stamps.minOrNull()!!
                stamps.forEach { stamp ->
                    val shiftedWords = if (monotonicWords) buildList {
                        wordMarks.forEachIndexed { index, mark ->
                            val endOfText = wordMarks.getOrNull(index + 1)?.range?.first ?: body.length
                            val wordText = body.substring(mark.range.last + 1, endOfText)
                            if (wordText.isBlank()) return@forEachIndexed
                            add(RawWord(
                                adjustedTime(wordTimes[index] + stamp - anchor, offset),
                                wordTimes.getOrNull(index + 1)?.let {
                                    adjustedTime(it + stamp - anchor, offset)
                                },
                                wordText
                            ))
                        }
                    } else emptyList()
                    val declaredEnd = if (monotonicWords && wordMarks.isNotEmpty() &&
                        body.substring(wordMarks.last().range.last + 1).isBlank()) {
                        adjustedTime(wordTimes.last() + stamp - anchor, offset)
                    } else null
                    add(RawLine(adjustedTime(stamp, offset), text, shiftedWords, declaredEnd))
                }
            }
        }
        val nextTimes = lineTimes.distinct().sorted().zipWithNext().toMap()
        val parsed = lines.map { line ->
            val upperBound = nextTimes[line.timeMs]
            val words = line.words.mapNotNull { word ->
                val end = listOfNotNull(word.endMs, upperBound).minOrNull() ?: return@mapNotNull null
                word.takeIf { it.startMs >= line.timeMs && end > it.startMs }
                    ?.let { ParsedLyricWord(it.startMs, end, it.text) }
            }
            val end = listOfNotNull(line.declaredEndMs, upperBound?.takeIf { it in endMarks }).minOrNull()
                ?.let { declared -> upperBound?.let { minOf(declared, it) } ?: declared }
                ?.takeIf { it > line.timeMs }
            ParsedLyricLine(line.timeMs, line.text, words = trimWordEdges(words), endTimeMs = end)
        }
        return if (collapseDuplicates) deduplicate(parsed) else parsed.sortedBy(ParsedLyricLine::timeMs)
    }

    fun parseYrc(raw: String): List<ParsedLyricLine> = parseYrc(raw, parseOffsetMs(raw))

    private fun parseYrc(raw: String, offset: Long): List<ParsedLyricLine> = deduplicate(buildList {
        normalized(raw).lineSequence().forEach { source ->
            val line = source.trimStart().removePrefix("\uFEFF")
            val head = yrcHead.find(line) ?: return@forEach
            val time = head.groupValues[1].toLongOrNull() ?: return@forEach
            val duration = head.groupValues[2].toLongOrNull() ?: return@forEach
            if (duration <= 0L || time > Long.MAX_VALUE - duration) return@forEach
            val lineEnd = time + duration
            val body = malformedYrcWord.replace(line.substring(head.range.last + 1), "")
            val marks = yrcWord.findAll(body).toList()
            if (marks.isEmpty()) return@forEach
            val texts = marks.mapIndexed { index, mark ->
                body.substring(mark.range.last + 1, marks.getOrNull(index + 1)?.range?.first ?: body.length)
            }
            val text = texts.joinToString("").trim()
            if (text.isEmpty() || credits.containsMatchIn(text)) return@forEach
            val words = marks.mapIndexedNotNull { index, mark ->
                val start = mark.groupValues[1].toLongOrNull() ?: return@mapIndexedNotNull null
                val length = mark.groupValues[2].toLongOrNull() ?: return@mapIndexedNotNull null
                if (texts[index].isBlank() || length <= 0L || start < time || start >= lineEnd ||
                    start > Long.MAX_VALUE - length) return@mapIndexedNotNull null
                val normalizedStart = adjustedTime(start, offset)
                val normalizedEnd = adjustedTime(minOf(start + length, lineEnd), offset)
                if (normalizedEnd <= normalizedStart) return@mapIndexedNotNull null
                ParsedLyricWord(normalizedStart, normalizedEnd, texts[index])
            }
            if (words.isNotEmpty()) add(ParsedLyricLine(
                adjustedTime(time, offset), text, words = trimWordEdges(words),
                endTimeMs = adjustedTime(lineEnd, offset)
            ))
        }
    })

    fun align(
        originalRaw: String,
        translatedRaw: String,
        wordRaw: String = "",
        romanizedRaw: String = "",
        durationMs: Long = 0L
    ): List<ParsedLyricLine> {
        val offset = parseOffsetMs(originalRaw).takeIf { it != 0L } ?: parseOffsetMs(wordRaw)
        val originals = parse(originalRaw, offset)
        val wordLines = parseYrc(wordRaw, offset).ifEmpty { parse(wordRaw, offset) }
        val base = originals.ifEmpty { wordLines }
        if (base.isEmpty()) return emptyList()
        val matchingWords = assignments(base, wordLines, WORD_TOLERANCE_MS) { original, wordLine ->
            wordLine.words.isNotEmpty() && wordLine.words.any { it.endTimeMs > original.timeMs } &&
                original.text.filterNot(Char::isWhitespace) == wordLine.text.filterNot(Char::isWhitespace)
        }
        val words = matchingWords.takeIf { it.size * 2 >= base.size }.orEmpty()
        val useWordTiming = base.indices.count { index ->
            words[index]?.let { wordLines[it].words }?.isNotEmpty() ?: base[index].words.isNotEmpty()
        } * 2 >= base.size
        val translations = auxiliaryLines(translatedRaw, auxiliaryOffset(translatedRaw, offset))
        val translationIndexes = assignments(base, translations, TRANSLATION_TOLERANCE_MS, preferLater = true)
        val romanizations = auxiliaryLines(romanizedRaw, auxiliaryOffset(romanizedRaw, offset))
        val romanizationIndexes = assignments(base, romanizations, TRANSLATION_TOLERANCE_MS, preferLater = true)
        val aligned = base.mapIndexed { index, line ->
            line.copy(
                translation = translationIndexes[index]?.let { translations[it].text }.orEmpty(),
                words = if (useWordTiming) words[index]?.let { wordLines[it].words } ?: line.words else emptyList(),
                romanization = romanizationIndexes[index]?.let { romanizations[it].text }.orEmpty(),
                endTimeMs = words[index]?.let { wordLines[it].endTimeMs } ?: line.endTimeMs
            )
        }
        return rehangOnTrustedWords(originalRaw, wordRaw, offset, durationMs, aligned) ?: aligned
    }

    private fun rehangOnTrustedWords(
        originalRaw: String,
        wordRaw: String,
        offsetMs: Long,
        durationMs: Long,
        aligned: List<ParsedLyricLine>
    ): List<ParsedLyricLine>? {
        if (durationMs <= 0L || aligned.size < 2) return null
        val originalRows = mutableListOf<ParsedLyricLine>()
        for (source in normalized(originalRaw).lineSequence()) {
            val line = source.trimStart().removePrefix("\uFEFF")
            val stamps = timestamps.findAll(line).toList()
            if (stamps.isEmpty()) continue
            if (stamps.size != 1 || stamps.single().range.first != 0) return null
            val text = wordTimestamps.replace(squareMetadata.replace(line, ""), "").trim()
            if (text.isEmpty()) continue
            if (credits.containsMatchIn(text)) return null
            originalRows += ParsedLyricLine(adjustedTime(timestampMs(stamps.single()), offsetMs), text)
        }
        if (originalRows.size != aligned.size || originalRows.size < 2) return null
        val keys = originalRows.map { it.timeMs to it.text }
        if (keys.toSet().size != keys.size || keys.toSet() != aligned.map { it.timeMs to it.text }.toSet()) return null

        val wordRows = trustedYrcRows(wordRaw, offsetMs, durationMs) ?: return null
        if (wordRows.size != originalRows.size) return null
        if (originalRows.indices.any { index ->
            val text = normalizeText(originalRows[index].text)
            text.isEmpty() || text != normalizeText(wordRows[index].text)
        }) return null
        val oldLast = originalRows.maxOf(ParsedLyricLine::timeMs)
        val newLast = wordRows.last().timeMs
        if (durationFits(oldLast, durationMs) && !durationFits(newLast, durationMs)) return null

        // Only the projected line clock changes; cached text and every word interval stay untouched.
        val byOriginal = keys.zip(wordRows).toMap()
        return aligned.map { line ->
            val wordLine = byOriginal.getValue(line.timeMs to line.text)
            line.copy(timeMs = wordLine.timeMs, words = wordLine.words, endTimeMs = wordLine.endTimeMs)
        }.sortedBy(ParsedLyricLine::timeMs)
    }

    private fun trustedYrcRows(raw: String, offsetMs: Long, durationMs: Long): List<ParsedLyricLine>? {
        val rows = mutableListOf<ParsedLyricLine>()
        var previousHead = -1L
        for (source in normalized(raw).lineSequence()) {
            val line = source.trimStart().removePrefix("\uFEFF")
            val head = yrcHead.find(line) ?: continue
            val time = head.groupValues[1].toLongOrNull() ?: return null
            val length = head.groupValues[2].toLongOrNull() ?: return null
            if (time < previousHead || length <= 0L || time > Long.MAX_VALUE - length) return null
            previousHead = time
            val rawEnd = time + length
            val normalizedHead = adjustedTime(time, offsetMs)
            val normalizedEnd = adjustedTime(rawEnd, offsetMs)
            if (normalizedEnd <= normalizedHead || normalizedEnd > durationMs) return null
            val body = line.substring(head.range.last + 1)
            val marks = yrcWord.findAll(body).toList()
            val text = yrcWord.replace(body, "").trim()
            if (text.isEmpty()) continue
            if (credits.containsMatchIn(text) || marks.isEmpty() ||
                body.substring(0, marks.first().range.first).isNotBlank() ||
                malformedYrcWord.containsMatchIn(body)) return null
            val words = mutableListOf<ParsedLyricWord>()
            var previousWord = time
            for ((index, mark) in marks.withIndex()) {
                val wordText = body.substring(mark.range.last + 1,
                    marks.getOrNull(index + 1)?.range?.first ?: body.length)
                if (wordText.isBlank()) continue
                val start = mark.groupValues[1].toLongOrNull() ?: return null
                val duration = mark.groupValues[2].toLongOrNull() ?: return null
                if (start < previousWord || start < time || duration <= 0L ||
                    start > Long.MAX_VALUE - duration || start + duration > rawEnd) return null
                previousWord = start
                val startMs = adjustedTime(start, offsetMs)
                val endMs = adjustedTime(start + duration, offsetMs)
                if (endMs <= startMs || endMs > durationMs) return null
                words += ParsedLyricWord(startMs, endMs, wordText)
            }
            if (words.isEmpty() || normalizeText(words.joinToString("") { it.text }) != normalizeText(text)) return null
            rows += ParsedLyricLine(normalizedHead, text, words = trimWordEdges(words), endTimeMs = normalizedEnd)
        }
        return rows.takeIf { it.size >= 2 }
    }

    private fun durationFits(lastMs: Long, durationMs: Long): Boolean =
        lastMs.toDouble() <= durationMs.toDouble() + 5_000.0 &&
            kotlin.math.abs(lastMs.toDouble() - durationMs.toDouble()) / durationMs <= 0.25

    private fun auxiliaryLines(raw: String, offset: Long): List<ParsedLyricLine> =
        parse(raw, offset, collapseDuplicates = false).groupBy(ParsedLyricLine::timeMs).values.map { it.last() }

    private fun assignments(
        originals: List<ParsedLyricLine>,
        auxiliary: List<ParsedLyricLine>,
        toleranceMs: Long,
        preferLater: Boolean = false,
        compatible: (ParsedLyricLine, ParsedLyricLine) -> Boolean = { _, _ -> true }
    ): Map<Int, Int> {
        data class Alignment(val original: Int, val auxiliary: Int, val difference: Long)
        val candidates = buildList {
            var firstPossibleOriginal = 0
            auxiliary.forEachIndexed { auxiliaryIndex, line ->
                while (firstPossibleOriginal < originals.size &&
                    originals[firstPossibleOriginal].timeMs < line.timeMs - toleranceMs) {
                    firstPossibleOriginal++
                }
                var originalIndex = firstPossibleOriginal
                val upperBound = if (line.timeMs > Long.MAX_VALUE - toleranceMs) {
                    Long.MAX_VALUE
                } else line.timeMs + toleranceMs
                while (originalIndex < originals.size && originals[originalIndex].timeMs <= upperBound) {
                    if (compatible(originals[originalIndex], line)) {
                        add(Alignment(originalIndex, auxiliaryIndex,
                            kotlin.math.abs(originals[originalIndex].timeMs - line.timeMs)))
                    }
                    originalIndex++
                }
            }
        }
        val order = if (preferLater) {
            compareBy<Alignment> { it.difference }.thenByDescending { auxiliary[it.auxiliary].timeMs }
                .thenBy { it.original }.thenByDescending { it.auxiliary }
        } else {
            compareBy<Alignment> { it.difference }.thenBy { it.original }.thenBy { it.auxiliary }
        }
        val assignedAuxiliary = mutableSetOf<Int>()
        val assignedOriginals = mutableMapOf<Int, Int>()
        candidates.sortedWith(order).forEach { candidate ->
            if (candidate.original in assignedOriginals || candidate.auxiliary in assignedAuxiliary) return@forEach
            assignedOriginals[candidate.original] = candidate.auxiliary
            assignedAuxiliary += candidate.auxiliary
        }
        return assignedOriginals
    }

    private fun parseOffsetMs(raw: String): Long = offsets.find(raw)?.groupValues?.get(1)
        ?.toLongOrNull()?.takeIf { it in -MAX_OFFSET_MS..MAX_OFFSET_MS } ?: 0L

    private fun auxiliaryOffset(raw: String, inherited: Long): Long =
        if (offsets.containsMatchIn(raw)) parseOffsetMs(raw) else inherited

    // Lyrimuse/LRC convention: positive offsets advance lyrics; word ends are exclusive.
    private fun adjustedTime(timeMs: Long, offsetMs: Long): Long = when {
        offsetMs < 0L && timeMs > Long.MAX_VALUE + offsetMs -> Long.MAX_VALUE
        else -> (timeMs - offsetMs).coerceAtLeast(0L)
    }

    private fun timestampMs(stamp: MatchResult): Long {
        val fraction = stamp.groupValues[3].padEnd(3, '0').toLong()
        return (stamp.groupValues[1].toLong() * 60L + stamp.groupValues[2].toLong()) * 1_000L + fraction
    }

    private fun normalized(raw: String): String = raw.replace("\r\n", "\n").replace("\r", "\n")

    private fun deduplicate(lines: List<ParsedLyricLine>): List<ParsedLyricLine> = lines
        .groupBy { it.timeMs to it.text }.values.map { duplicates ->
            duplicates.maxWith(compareBy<ParsedLyricLine> { it.words.size }.thenBy { it.endTimeMs != null })
        }
        .sortedBy(ParsedLyricLine::timeMs)

    private fun trimWordEdges(words: List<ParsedLyricWord>): List<ParsedLyricWord> =
        words.mapIndexed { index, word ->
            val text = word.text.let { if (index == 0) it.trimStart() else it }
                .let { if (index == words.lastIndex) it.trimEnd() else it }
            word.copy(text = text)
        }

    private data class RawWord(val startMs: Long, val endMs: Long?, val text: String)
    private data class RawLine(
        val timeMs: Long, val text: String, val words: List<RawWord>, val declaredEndMs: Long?
    )
}
