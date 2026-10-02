package com.icar03.content.runtime.lyrics

import android.util.Base64
import org.json.JSONArray
import org.json.JSONObject
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.CodingErrorAction
import java.util.Locale
import java.util.zip.InflaterInputStream
import kotlin.math.abs

/** Independent decoders for public word-timed lyrics wire formats. */
internal object PublicWordLyricsFormats {
    internal const val MAX_DECODED_BYTES = 2 * 1024 * 1024
    private const val MAX_TIME_MS = 86_400_000L
    private val krcKey = intArrayOf(0x40, 0x47, 0x61, 0x77, 0x5E, 0x32, 0x74, 0x47, 0x51, 0x36, 0x31, 0x2D, 0xCE, 0xD2, 0x6E, 0x69)
    private val mrcKey = longArrayOf(27303562373562475L, 18014862372307051L, 22799692160172081L, 34058940340699235L)
    private val numericHead = Regex("^\\[(\\d+),(\\d+)](.*)$")
    private val krcMarker = Regex("<(\\d+),(\\d+),(\\d+)>")
    private val suffixMarker = Regex("\\((\\d+),(\\d+)\\)")
    private val lrcxMarker = Regex("<(-?\\d+),(-?\\d+)(?:,-?\\d+)?>")
    private val lrcxHeader = Regex("^\\[kuwo:([0-7]+)]$")
    private val lrcHead = Regex("^\\[(\\d{1,3}):(\\d{2})(?:[.:](\\d{1,3}))?](.*)$")
    private val krcLanguage = Regex("^\\[language:([^]]+)]$")

    internal data class Tracks(
        val lineLyrics: String = "",
        val wordLyrics: String = "",
        val translatedLyrics: String = "",
        val romanizedLyrics: String = "",
        val title: String = "",
        val artist: String = "",
        val album: String = ""
    )
    private data class Word(val start: Long, val duration: Long, val text: String)
    private data class Line(
        val start: Long, val duration: Long, val words: List<Word>,
        val lineText: String = words.joinToString("") { it.text }
    )

    fun decodeKrc(encoded: String, cancellation: LyricsCancellationSignal): Tracks = decodeFormat("KRC") {
        cancellation.throwIfCancelled()
        val raw = decodeBase64(encoded)
        require(raw.size > 4 && raw.copyOfRange(0, 4).contentEquals("krc1".toByteArray()))
        val compressed = ByteArray(raw.size - 4) { index -> (raw[index + 4].toInt() xor krcKey[index % krcKey.size]).toByte() }
        parseKrcText(decodeUtf8(inflate(compressed, cancellation)), cancellation)
    }

    fun parseKrcText(text: String, cancellation: LyricsCancellationSignal): Tracks = decodeFormat("KRC timing") {
        require(text.length <= MAX_DECODED_BYTES)
        cancellation.throwIfCancelled()
        val lines = mutableListOf<Line>()
        var language = ""
        var offset = ""
        text.lineSequence().forEach { rawLine ->
            cancellation.throwIfCancelled()
            val line = rawLine.trimEnd('\r')
            val languageMatch = krcLanguage.matchEntire(line.trim())
            if (languageMatch != null) {
                language = languageMatch.groupValues[1]
                return@forEach
            }
            if (Regex("^\\[offset:-?\\d+]$").matches(line.trim())) offset = line.trim()
            val head = numericHead.matchEntire(line.trim()) ?: return@forEach
            val start = time(head.groupValues[1])
            val duration = time(head.groupValues[2])
            val body = head.groupValues[3]
            val markers = krcMarker.findAll(body).toList()
            val words = markers.mapIndexed { index, marker ->
                val textEnd = markers.getOrNull(index + 1)?.range?.first ?: body.length
                val wordStart = start + time(marker.groupValues[1])
                require(wordStart <= MAX_TIME_MS)
                Word(wordStart, time(marker.groupValues[2]), body.substring(marker.range.last + 1, textEnd))
            }
            val lineText = if (markers.isEmpty()) body else words.joinToString("") { it.text }
            if (lineText.isNotBlank()) lines += Line(start, duration, words, lineText)
        }
        val wordLyrics = render(lines)
        val lrc = lines.joinToString("\n") { line -> lrcTimestamp(line.start) + line.lineText }
        val tracks = if (language.isBlank()) "" to "" else languageTracks(language, lines)
        Tracks(
            lineLyrics = if (lrc.isBlank()) "" else listOf(offset, lrc).filter(String::isNotBlank).joinToString("\n"),
            wordLyrics = if (wordLyrics.isBlank()) "" else listOf(offset, wordLyrics).filter(String::isNotBlank).joinToString("\n"),
            translatedLyrics = if (tracks.first.isBlank()) "" else listOf(offset, tracks.first).filter(String::isNotBlank).joinToString("\n"),
            romanizedLyrics = if (tracks.second.isBlank()) "" else listOf(offset, tracks.second).filter(String::isNotBlank).joinToString("\n"),
            title = metadataTag(text, "ti"),
            artist = metadataTag(text, "ar"),
            album = metadataTag(text, "al")
        )
    }

    fun decodeLrcx(raw: ByteArray, cancellation: LyricsCancellationSignal): String = decodeFormat("LRCX") {
        cancellation.throwIfCancelled()
        require(raw.size <= MAX_DECODED_BYTES)
        if (raw.size >= 7 && raw.copyOfRange(0, 7).toString(Charsets.US_ASCII).equals("tp=none", true)) return@decodeFormat ""
        require(raw.size > 10 && raw.copyOfRange(0, 10).toString(Charsets.US_ASCII).equals("tp=content", true))
        val separator = byteArrayOf(13, 10, 13, 10)
        val separatorIndex = (0..raw.size - separator.size).firstOrNull { index -> separator.indices.all { raw[index + it] == separator[it] } }
            ?: error("Missing LRCX body")
        val encrypted = decodeBase64(decodeUtf8(inflate(raw.copyOfRange(separatorIndex + 4, raw.size), cancellation)))
        val key = "yeelion".toByteArray(Charsets.US_ASCII)
        val text = decodeUtf8(ByteArray(encrypted.size) { index -> (encrypted[index].toInt() xor key[index % key.size].toInt()).toByte() })
        lrcxToYrc(text, cancellation)
    }

    fun lrcxToYrc(text: String, cancellation: LyricsCancellationSignal): String = decodeFormat("LRCX timing") {
        cancellation.throwIfCancelled()
        val coefficient = text.lineSequence().mapNotNull { line -> lrcxHeader.matchEntire(line.trim())?.groupValues?.get(1)?.toLongOrNull(8) }
            .firstOrNull() ?: return@decodeFormat ""
        val first = coefficient / 10L
        val second = coefficient % 10L
        require(first > 0L && first <= 10_000L && second > 0L)
        val lines = text.lineSequence().mapNotNull { rawLine ->
            cancellation.throwIfCancelled()
            val head = lrcHead.matchEntire(rawLine.trim()) ?: return@mapNotNull null
            val start = lrcTime(head)
            val body = head.groupValues[4]
            val markers = lrcxMarker.findAll(body).toList()
            if (markers.isEmpty()) return@mapNotNull null
            var nonZero = false
            val words = mutableListOf<Word>()
            markers.forEachIndexed { index, marker ->
                val a = marker.groupValues[1].toLong()
                val b = marker.groupValues[2].toLong()
                require(abs(a) <= Int.MAX_VALUE.toLong() && abs(b) <= Int.MAX_VALUE.toLong())
                if (a != 0L || b != 0L) nonZero = true
                val relativeStart = abs(a + b) / (2L * first)
                val duration = abs(a - b) / (2L * second)
                require(relativeStart + duration <= MAX_TIME_MS)
                val absoluteStart = start + relativeStart
                val previous = words.lastOrNull()
                if (previous != null && previous.start + previous.duration > absoluteStart) {
                    words[words.lastIndex] = previous.copy(start = minOf(previous.start, absoluteStart), duration = (absoluteStart - previous.start).coerceAtLeast(0L))
                }
                val textEnd = markers.getOrNull(index + 1)?.range?.first ?: body.length
                words += Word(absoluteStart, duration, body.substring(marker.range.last + 1, textEnd))
            }
            if (!nonZero || words.none { it.text.isNotBlank() }) return@mapNotNull null
            Line(start, words.maxOf { it.start + it.duration } - start, words)
        }.toList()
        render(lines)
    }

    fun decodeMrc(hexText: String, cancellation: LyricsCancellationSignal): String = decodeFormat("MRC") {
        cancellation.throwIfCancelled()
        val hex = hexText.trim()
        require(hex.length in 32..MAX_DECODED_BYTES && hex.length % 16 == 0)
        val values = LongArray(hex.length / 16) { index -> java.lang.Long.parseUnsignedLong(hex.substring(index * 16, index * 16 + 16), 16) }
        // MRC requires signed 64-bit wraparound and arithmetic right shifts.
        val delta = 0x9E3779B9L
        var sum = (6L + 52L / values.size) * delta
        var next = values[0]
        while (sum != 0L) {
            cancellation.throwIfCancelled()
            val keySelector = ((sum shr 2) and 3L).toInt()
            for (index in values.lastIndex downTo 0) {
                val previous = values[if (index == 0) values.lastIndex else index - 1]
                val shifts = (previous shr 5 xor (next shl 2)) + (next shr 3 xor (previous shl 4))
                val keyed = (sum xor next) + (mrcKey[(index and 3) xor keySelector] xor previous)
                values[index] -= shifts xor keyed
                next = values[index]
            }
            sum -= delta
        }
        val buffer = ByteBuffer.allocate(values.size * 8).order(ByteOrder.LITTLE_ENDIAN)
        values.forEach { buffer.putLong(it) }
        val decoded = Charsets.UTF_16LE.newDecoder().onMalformedInput(CodingErrorAction.REPORT).onUnmappableCharacter(CodingErrorAction.REPORT)
            .decode(ByteBuffer.wrap(buffer.array())).toString().trimEnd('\u0000')
        mrcToYrc(decoded, cancellation)
    }

    fun mrcToYrc(text: String, cancellation: LyricsCancellationSignal): String = decodeFormat("MRC timing") {
        val lines = text.lineSequence().mapNotNull { rawLine ->
            cancellation.throwIfCancelled()
            val head = numericHead.matchEntire(rawLine.trim()) ?: return@mapNotNull null
            val start = time(head.groupValues[1])
            val duration = time(head.groupValues[2])
            if (start == 0L && duration == 0L) return@mapNotNull null
            val body = head.groupValues[3]
            val markers = suffixMarker.findAll(body).toList()
            if (markers.isEmpty()) return@mapNotNull null
            var textStart = 0
            val words = markers.map { marker ->
                val word = Word(time(marker.groupValues[1]), time(marker.groupValues[2]), body.substring(textStart, marker.range.first))
                textStart = marker.range.last + 1
                word
            }.toMutableList()
            if (textStart < body.length) words[words.lastIndex] = words.last().copy(text = words.last().text + body.substring(textStart))
            Line(start, duration, words)
        }.toList()
        render(lines)
    }

    fun stripMiguMetadata(value: String): String = value.replace("\r\n", "\n").replace('\r', '\n').lineSequence().filter { line ->
        val text = lrcHead.matchEntire(line.trim())?.groupValues?.get(4) ?: line.trim()
        text.isNotBlank() && !Regex("^(歌曲名|歌手名)(\\s|[:：]|$)").containsMatchIn(text)
    }.joinToString("\n").trim()

    fun decodeBase64Text(value: String): String = decodeFormat("Base64 lyrics") { decodeUtf8(decodeBase64(value)) }
    fun lrcTimestamp(milliseconds: Long): String {
        require(milliseconds in 0..MAX_TIME_MS)
        return String.format(Locale.ROOT, "[%02d:%02d.%03d]", milliseconds / 60_000L, milliseconds / 1_000L % 60L, milliseconds % 1_000L)
    }
    fun secondsToMs(value: String): Long? = value.trim().toBigDecimalOrNull()?.takeIf {
        it.signum() >= 0 && it <= MAX_TIME_MS.toBigDecimal().divide(1000.toBigDecimal())
    }?.multiply(1000.toBigDecimal())?.toLong()
    private fun metadataTag(text: String, name: String): String =
        Regex("(?im)^\\[$name:([^\\r\\n]*?)]$").find(text)?.groupValues?.get(1).orEmpty().trim()
    private fun timeOrNull(value: String): Long? = value.toLongOrNull()?.takeIf { it in 0..MAX_TIME_MS }
    private fun time(value: String): Long = timeOrNull(value) ?: error("Invalid word time")
    private fun lrcTime(head: MatchResult): Long = time(((head.groupValues[1].toLong() * 60L + head.groupValues[2].toLong()) * 1000L + head.groupValues[3].padEnd(3, '0').toLong()).toString())

    private fun languageTracks(encoded: String, lines: List<Line>): Pair<String, String> {
        val root = JSONObject(decodeUtf8(decodeBase64(encoded)))
        var translated = ""
        var romanized = ""
        root.optJSONArray("content").wordFormatObjects().forEach { track ->
            val content = track.optJSONArray("lyricContent") ?: return@forEach
            if (content.length() != lines.size) return@forEach
            val texts = (0 until content.length()).map { index ->
                val fragments = content.optJSONArray(index) ?: return@forEach
                (0 until fragments.length()).joinToString("") { fragments.optString(it) }.trim()
            }
            val lrc = texts.mapIndexedNotNull { index, text -> if (text.isBlank() || text == "//") null else lrcTimestamp(lines[index].start) + text }.joinToString("\n")
            when (track.optInt("type", -1)) {
                1 -> if (translated.isBlank()) translated = lrc
                0 -> if (romanized.isBlank()) {
                    val letters = texts.joinToString("").filter(Char::isLetter)
                    val han = letters.count { Character.UnicodeScript.of(it.code) == Character.UnicodeScript.HAN }
                    if (letters.isNotEmpty() && han.toDouble() / letters.length <= 0.3) romanized = lrc
                }
            }
        }
        return translated to romanized
    }

    private fun render(lines: List<Line>): String = lines.filter { line -> line.words.any { it.text.isNotBlank() } }.joinToString("\n") { line ->
        require(line.start >= 0L && line.duration >= 0L && line.start + line.duration <= MAX_TIME_MS)
        require(line.words.all { it.start >= 0L && it.duration >= 0L && it.start + it.duration <= MAX_TIME_MS })
        val merged = mutableListOf<Word>()
        var prefix = ""
        line.words.forEach { word ->
            if (word.text.isBlank()) {
                if (merged.isEmpty()) prefix += word.text else {
                    val previous = merged.last()
                    merged[merged.lastIndex] = previous.copy(duration = maxOf(previous.duration, word.start + word.duration - previous.start), text = previous.text + word.text)
                }
            } else {
                merged += word.copy(text = prefix + word.text)
                prefix = ""
            }
        }
        buildString {
            append("[${line.start},${line.duration}]")
            merged.forEach { append("(${it.start},${it.duration},0)${it.text}") }
        }
    }

    private fun inflate(bytes: ByteArray, cancellation: LyricsCancellationSignal): ByteArray =
        InflaterInputStream(ByteArrayInputStream(bytes)).use { stream ->
            val output = ByteArrayOutputStream()
            val buffer = ByteArray(8192)
            var count = 0
            while (count >= 0) {
                cancellation.throwIfCancelled()
                require(output.size() + count <= MAX_DECODED_BYTES)
                output.write(buffer, 0, count)
                count = stream.read(buffer)
            }
            output.toByteArray()
        }
    private fun decodeBase64(value: String): ByteArray {
        require(value.length <= MAX_DECODED_BYTES)
        val compact = value.filterNot(Char::isWhitespace)
        require(Regex("[A-Za-z0-9+/]*={0,2}").matches(compact))
        return Base64.decode(compact, Base64.DEFAULT)
    }
    private fun decodeUtf8(bytes: ByteArray): String = Charsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT)
        .onUnmappableCharacter(CodingErrorAction.REPORT).decode(ByteBuffer.wrap(bytes)).toString().removePrefix("\uFEFF")
    private inline fun <T> decodeFormat(format: String, block: () -> T): T = try {
        block()
    } catch (error: java.util.concurrent.CancellationException) {
        throw error
    } catch (error: LyricsSourceException) {
        throw error
    } catch (error: Exception) {
        throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Invalid $format lyrics payload", error)
    }
}

private fun JSONArray?.wordFormatObjects(): Sequence<JSONObject> = sequence {
    if (this@wordFormatObjects != null) for (index in 0 until length()) optJSONObject(index)?.let { yield(it) }
}
