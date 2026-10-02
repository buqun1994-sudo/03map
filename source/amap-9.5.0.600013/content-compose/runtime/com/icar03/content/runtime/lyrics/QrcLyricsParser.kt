package com.icar03.content.runtime.lyrics

import org.xml.sax.Attributes
import org.xml.sax.InputSource
import org.xml.sax.SAXException
import org.xml.sax.SAXParseException
import org.xml.sax.helpers.DefaultHandler
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.StringReader
import java.nio.ByteBuffer
import java.nio.charset.CodingErrorAction
import java.util.Locale
import java.util.concurrent.CancellationException
import java.util.zip.InflaterInputStream
import javax.xml.XMLConstants
import javax.xml.parsers.SAXParserFactory

/** Independently implemented public QRC wire-format decoder and timing normalizer. */
internal object QrcLyricsParser {
    internal const val MAX_DECODED_BYTES = 2 * 1024 * 1024
    private const val MAX_CIPHER_BYTES = 512 * 1024
    private const val MAX_XML_DEPTH = 16
    private const val MAX_XML_ELEMENTS = 4_096
    private const val MAX_TIMING_ITEMS = 20_000
    private const val MAX_TIME_MS = 86_400_000L
    private val lineHead = Regex("^\\[(\\d+),(\\d+)]")
    private val wordSuffix = Regex("\\((\\d+),(\\d+)\\)")
    private val offsetTag = Regex("^\\[offset:\\s*[+-]?\\d+\\s*]$", RegexOption.IGNORE_CASE)
    private val lrcHead = Regex("^((?:\\[\\d{1,3}:[0-5]\\d(?:[.:]\\d{1,3})?])+)(.*)$")
    private val forbiddenDeclaration = Regex("<!\\s*(?:DOCTYPE|ENTITY)\\b", RegexOption.IGNORE_CASE)
    private val lyricAttribute = Regex("\\bLyricContent\\s*=\\s*\"")
    private val nextAttribute = Regex("[A-Za-z_:][A-Za-z0-9_:.-]*\\s*=")
    private val lyricElement = Regex("Lyric_\\d+")

    fun decodeHex(
        cipherHex: String,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): String = checkedFormat("ciphertext") {
        lyricsHttpRemainingMs(deadlineNanos, cancellation)
        val hex = cipherHex.trim()
        require(hex.length in 16..MAX_CIPHER_BYTES * 2 && hex.length % 16 == 0)
        val bytes = ByteArray(hex.length / 2) { index ->
            if (index % 4_096 == 0) lyricsHttpRemainingMs(deadlineNanos, cancellation)
            val high = Character.digit(hex[index * 2], 16)
            val low = Character.digit(hex[index * 2 + 1], 16)
            require(high >= 0 && low >= 0)
            ((high shl 4) or low).toByte()
        }
        val compressed = QrcProtocolCipher.crypt(bytes, true, deadlineNanos, cancellation)
        val inflated = InflaterInputStream(ByteArrayInputStream(compressed)).use { input ->
            val output = ByteArrayOutputStream()
            val buffer = ByteArray(8_192)
            while (true) {
                lyricsHttpRemainingMs(deadlineNanos, cancellation)
                val count = input.read(buffer)
                if (count < 0) break
                require(output.size() + count <= MAX_DECODED_BYTES)
                output.write(buffer, 0, count)
            }
            output.toByteArray()
        }
        Charsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT)
            .onUnmappableCharacter(CodingErrorAction.REPORT)
            .decode(ByteBuffer.wrap(inflated)).toString().removePrefix("\uFEFF")
    }

    fun parseWordLyrics(
        xml: String,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): String = checkedFormat("word timing") {
        val content = xmlContent(xml, deadlineNanos, cancellation)
        val lines = mutableListOf<String>()
        var offset = ""
        var itemCount = 0
        normalized(content).lineSequence().forEach { rawLine ->
            lyricsHttpRemainingMs(deadlineNanos, cancellation)
            val line = rawLine.trimStart()
            if (offsetTag.matches(line.trim())) offset = line.trim()
            val head = lineHead.find(line) ?: return@forEach
            val start = time(head.groupValues[1])
            val duration = time(head.groupValues[2])
            require(duration > 0L && start <= MAX_TIME_MS - duration)
            val body = line.substring(head.range.last + 1)
            val marks = wordSuffix.findAll(body).toList()
            itemCount += marks.size
            require(itemCount <= MAX_TIMING_ITEMS)
            if (marks.isEmpty()) return@forEach
            var textStart = 0
            val words = marks.map { mark ->
                val text = body.substring(textStart, mark.range.first)
                textStart = mark.range.last + 1
                Word(time(mark.groupValues[1]), time(mark.groupValues[2]), text)
            }
            val lineEnd = start + duration
            val absolute = words.all { it.start in start..lineEnd && it.duration <= lineEnd - it.start }
            val relative = words.all { it.start <= duration && it.duration <= duration - it.start }
            require(absolute || relative)
            val normalizedWords = if (absolute) words else words.map { it.copy(start = start + it.start) }
            require(normalizedWords.zipWithNext().all { (first, next) -> first.start <= next.start })
            if (normalizedWords.none { it.duration > 0L && it.text.isNotBlank() }) return@forEach
            lines += buildString {
                append("[$start,$duration]")
                mergeTimedSpaces(normalizedWords).forEach { word ->
                    append("(${word.start},${word.duration},0)${word.text}")
                }
                // Untimed trailing text never receives an invented interval.
                if (textStart < body.length) append("($lineEnd,0,0)${body.substring(textStart)}")
            }
        }
        if (lines.isEmpty()) "" else (listOf(offset).filter(String::isNotEmpty) + lines).joinToString("\n")
    }

    fun parseAuxiliaryLyrics(plain: String, deadlineNanos: Long, cancellation: LyricsCancellationSignal): String = checkedFormat("auxiliary timing") {
        require(plain.toByteArray(Charsets.UTF_8).size <= MAX_DECODED_BYTES)
        val content = if (plain.trimStart().startsWith("<")) xmlContent(plain, deadlineNanos, cancellation) else plain
        val lines = mutableListOf<String>()
        var offset = ""
        var itemCount = 0
        normalized(content).lineSequence().forEach { rawLine ->
            lyricsHttpRemainingMs(deadlineNanos, cancellation)
            require(++itemCount <= MAX_TIMING_ITEMS)
            val line = rawLine.trimStart()
            if (offsetTag.matches(line.trim())) {
                offset = line.trim()
                return@forEach
            }
            val qrc = lineHead.find(line)
            if (qrc != null) {
                val start = time(qrc.groupValues[1])
                time(qrc.groupValues[2])
                val text = wordSuffix.replace(line.substring(qrc.range.last + 1), "")
                if (usableAuxiliaryText(text)) lines += timestamp(start) + text
            } else {
                val lrc = lrcHead.matchEntire(line) ?: return@forEach
                if (usableAuxiliaryText(lrc.groupValues[2])) lines += line
            }
        }
        if (lines.isEmpty()) "" else (listOf(offset).filter(String::isNotEmpty) + lines).joinToString("\n")
    }

    private fun xmlContent(xml: String, deadlineNanos: Long, cancellation: LyricsCancellationSignal): String = checkedFormat("XML") {
        lyricsHttpRemainingMs(deadlineNanos, cancellation)
        require(xml.toByteArray(Charsets.UTF_8).size <= MAX_DECODED_BYTES)
        require(!forbiddenDeclaration.containsMatchIn(xml))
        val canonical = preserveLyricAttributeText(xml, deadlineNanos, cancellation)
        require(canonical.toByteArray(Charsets.UTF_8).size <= MAX_DECODED_BYTES)
        val factory = SAXParserFactory.newInstance().apply {
            isNamespaceAware = false
            isValidating = false
            runCatching { isXIncludeAware = false }
            runCatching { setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true) }
        }
        val reader = factory.newSAXParser().xmlReader
        // Providers vary: the declaration precheck and rejecting resolver are mandatory.
        runCatching { reader.setFeature("http://apache.org/xml/features/disallow-doctype-decl", true) }
        runCatching { reader.setFeature("http://xml.org/sax/features/external-general-entities", false) }
        runCatching { reader.setFeature("http://xml.org/sax/features/external-parameter-entities", false) }
        runCatching { reader.setFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false) }
        val handler = object : DefaultHandler() {
            var depth = 0
            var elementCount = 0
            var content = ""
            var foundTrack = false
            override fun startElement(uri: String?, localName: String?, qName: String?, attributes: Attributes) {
                lyricsHttpRemainingMs(deadlineNanos, cancellation)
                if (++depth > MAX_XML_DEPTH || ++elementCount > MAX_XML_ELEMENTS || attributes.length > 16) throw SAXException("QRC XML limit exceeded")
                if (depth == 1 && qName != "QrcInfos") throw SAXException("Invalid QRC root")
                if (!foundTrack && qName != null && lyricElement.matches(qName)) {
                    attributes.getValue("LyricContent")?.let { content = it; foundTrack = true }
                }
            }
            override fun endElement(uri: String?, localName: String?, qName: String?) {
                lyricsHttpRemainingMs(deadlineNanos, cancellation)
                depth--
            }
            override fun resolveEntity(publicId: String?, systemId: String?): InputSource = throw SAXException("External QRC entities are forbidden")
            override fun error(error: SAXParseException) = throw error
            override fun fatalError(error: SAXParseException) = throw error
        }
        reader.contentHandler = handler
        reader.errorHandler = handler
        reader.entityResolver = handler
        reader.parse(InputSource(StringReader(canonical)))
        lyricsHttpRemainingMs(deadlineNanos, cancellation)
        handler.content
    }

    private fun preserveLyricAttributeText(xml: String, deadlineNanos: Long, cancellation: LyricsCancellationSignal): String {
        val output = StringBuilder(xml.length)
        var cursor = 0
        while (true) {
            lyricsHttpRemainingMs(deadlineNanos, cancellation)
            val opening = lyricAttribute.find(xml, cursor) ?: break
            output.append(xml, cursor, opening.range.last + 1)
            cursor = opening.range.last + 1
            var closed = false
            while (cursor < xml.length) {
                if (cursor % 4_096 == 0) lyricsHttpRemainingMs(deadlineNanos, cancellation)
                when (val character = xml[cursor++]) {
                    '\r' -> { if (cursor < xml.length && xml[cursor] == '\n') cursor++; output.append("&#10;") }
                    '\n' -> output.append("&#10;")
                    '\t' -> output.append("&#9;")
                    '"' -> {
                        var next = cursor
                        while (next < xml.length && xml[next].isWhitespace()) next++
                        val attribute = nextAttribute.find(xml, next)?.takeIf { it.range.first == next }
                        if (xml.startsWith("/>", next) || xml.startsWith(">", next) || (next > cursor && attribute != null)) {
                            output.append('"')
                            closed = true
                            break
                        }
                        // QRC can leave literal quotes inside its final LyricContent attribute.
                        output.append("&quot;")
                    }
                    else -> output.append(character)
                }
                require(output.length <= MAX_DECODED_BYTES)
            }
            require(closed)
        }
        output.append(xml, cursor, xml.length)
        return output.toString()
    }

    private fun mergeTimedSpaces(words: List<Word>): List<Word> {
        var nextStart = MAX_TIME_MS
        val nextStarts = LongArray(words.size)
        for (index in words.indices.reversed()) {
            nextStarts[index] = nextStart
            if (words[index].text.isNotBlank()) nextStart = words[index].start
        }
        val merged = mutableListOf<Word>()
        var prefix = ""
        words.forEachIndexed { index, word ->
            if (word.text.isNotEmpty() && word.text.isBlank() && word.duration > 0L) {
                if (merged.isEmpty()) prefix += word.text else {
                    val previous = merged.last()
                    val explicitEnd = minOf(word.start + word.duration, nextStarts[index])
                    merged[merged.lastIndex] = previous.copy(
                        duration = maxOf(previous.duration, explicitEnd - previous.start),
                        text = previous.text + word.text
                    )
                }
            } else {
                merged += word.copy(text = prefix + word.text)
                prefix = ""
            }
        }
        return merged
    }

    private fun time(value: String): Long = value.toLongOrNull()?.takeIf { it in 0..MAX_TIME_MS } ?: throw IllegalArgumentException("Invalid QRC time")
    private fun timestamp(timeMs: Long): String = String.format(Locale.ROOT, "[%02d:%02d.%03d]", timeMs / 60_000L, timeMs / 1_000L % 60L, timeMs % 1_000L)
    private fun usableAuxiliaryText(value: String): Boolean {
        val text = value.trim()
        return text.isNotEmpty() && text != "//" && !text.contains("\u672c\u7ffb\u8bd1\u4f5c\u54c1\u7684\u8457\u4f5c\u6743") && !text.startsWith("\u4ee5\u4e0b\u6b4c\u8bcd\u7ffb\u8bd1\u7531\u6587\u66f2")
    }
    private fun normalized(text: String): String = text.replace("\r\n", "\n").replace('\r', '\n')
    private data class Word(val start: Long, val duration: Long, val text: String)
    private inline fun <T> checkedFormat(part: String, block: () -> T): T = try {
        block()
    } catch (error: CancellationException) {
        throw error
    } catch (error: LyricsSourceException) {
        throw error
    } catch (_: Exception) {
        // Do not retain payload-bearing parser exceptions in source errors or logs.
        throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Invalid QRC $part payload")
    }
}

/** QRC's public format cipher, not an account key or a user credential. */
internal object QrcProtocolCipher {
    private val protocolKey = "!@#)(*$%123ZXC!@!@#)(NHL".toByteArray(Charsets.US_ASCII)
    private const val MASK_28 = 0x0FFFFFFFL
    private const val MASK_32 = 0xFFFFFFFFL
    private val initial = IntArray(64) { index ->
        val row = index / 8
        (if (row < 4) 57 + row * 2 else 56 + (row - 4) * 2) - index % 8 * 8
    }
    private val inverse = IntArray(64).also { result -> initial.forEachIndexed { index, bit -> result[bit] = index } }
    private val expansion = IntArray(48) { index -> (index / 6 * 4 + index % 6 + 31) % 32 }
    private val permutation = intArrayOf(16, 7, 20, 21, 29, 12, 28, 17, 1, 15, 23, 26, 5, 18, 31, 10, 2, 8, 24, 14, 32, 27, 3, 9, 19, 13, 30, 6, 22, 11, 4, 25).map { it - 1 }.toIntArray()
    private val keyC = IntArray(28) { index -> if (index < 24) 56 + index / 8 - index % 8 * 8 else 59 - (index - 24) * 8 }
    private val keyD = IntArray(28) { index -> if (index < 24) 62 - index / 8 - index % 8 * 8 else 27 - (index - 24) * 8 }
    private val compression = intArrayOf(14, 17, 11, 24, 1, 5, 3, 28, 15, 6, 21, 10, 23, 19, 12, 4, 26, 8, 16, 7, 27, 20, 13, 2, 41, 52, 31, 37, 47, 55, 30, 40, 51, 45, 33, 48, 44, 49, 39, 56, 34, 53, 46, 42, 50, 36, 29, 32).map { it - 1 }.toIntArray()
    // Compact public FIPS 46-3 constants, with QRC's two format-specific S-box deviations.
    // Reversed four-byte words and the D-half PC-2 shift also prevent JCE DESede compatibility.
    private val substitutions = arrayOf(
        "e4d12fb83a6c5907" + "0f74e2d1a6cb9538" + "41e8d62bfc973a50" + "fc8249175b3ea06d",
        "f18e6b34972dc05a" + "3d47f28ec01a69b5" + "0e7ba4d158c6932f" + "d8a13f42b67c05e9",
        "a09e63f51dc7b428" + "d709346a285ecbf1" + "d6498f30b12c5ae7" + "1ad069874fe3b52c",
        "7de3069a1285bc4f" + "d8b56f03472c1ae9" + "a690cb7df13e5284" + "3f06a1d8945bc72e",
        "2c417ab6853fd0e9" + "eb2c47d150fa3986" + "421bad78f9c5630e" + "b8c71e2d6f09a453",
        "c1af92680d34e75b" + "af427c9561de0b38" + "9ef528c3704a1db6" + "432c95fabe17608d",
        "4b2ef08d3c975a61" + "d0b7491ae35c2f86" + "14bdc37eaf680592" + "6bd814a7950fe23c",
        "d2846fb1a93e50c7" + "1fd8a374c56b0e92" + "7b419ce206adf358" + "21e74a8dfc90356b"
    ).map { row -> IntArray(row.length) { Character.digit(row[it], 16) } }.toTypedArray().also {
        it[1][23] = 15
        it[3][53] = 10
    }
    private val forwardKeys = Array(3) { keySchedule(readReversedWords(protocolKey, it * 8)) }
    private val reverseKeys = Array(3) { forwardKeys[it].reversedArray() }

    fun crypt(input: ByteArray, decrypt: Boolean, deadlineNanos: Long, cancellation: LyricsCancellationSignal): ByteArray {
        require(input.isNotEmpty() && input.size % 8 == 0)
        val passes = if (decrypt) arrayOf(reverseKeys[2], forwardKeys[1], reverseKeys[0]) else arrayOf(forwardKeys[0], reverseKeys[1], forwardKeys[2])
        val output = ByteArray(input.size)
        for (offset in input.indices step 8) {
            if (offset % 512 == 0) lyricsHttpRemainingMs(deadlineNanos, cancellation)
            var block = readReversedWords(input, offset)
            passes.forEach { block = des(block, it) }
            for (index in 0..7) {
                val target = index / 4 * 4 + 3 - index % 4
                output[offset + target] = (block ushr (56 - index * 8)).toByte()
            }
        }
        lyricsHttpRemainingMs(deadlineNanos, cancellation)
        return output
    }

    private fun keySchedule(key: Long): LongArray {
        var c = select(key, 64, keyC)
        var d = select(key, 64, keyD)
        return LongArray(16) { round ->
            val shift = if (round == 0 || round == 1 || round == 8 || round == 15) 1 else 2
            c = ((c shl shift) or (c ushr (28 - shift))) and MASK_28
            d = ((d shl shift) or (d ushr (28 - shift))) and MASK_28
            select((c shl 28) or ((d shl 1) and MASK_28), 56, compression)
        }
    }

    private fun des(input: Long, keys: LongArray): Long {
        val state = select(input, 64, initial)
        var left = state ushr 32
        var right = state and MASK_32
        keys.forEach { key ->
            val mixed = select(right, 32, expansion) xor key
            var substituted = 0L
            for (box in 0..7) {
                val value = ((mixed ushr (42 - box * 6)) and 63L).toInt()
                val row = ((value ushr 4) and 2) or (value and 1)
                val column = (value ushr 1) and 15
                substituted = (substituted shl 4) or substitutions[box][row * 16 + column].toLong()
            }
            val next = left xor select(substituted, 32, permutation)
            left = right
            right = next
        }
        return select((right shl 32) or left, 64, inverse)
    }

    private fun select(value: Long, width: Int, positions: IntArray): Long {
        var result = 0L
        positions.forEach { bit -> result = (result shl 1) or ((value ushr (width - bit - 1)) and 1L) }
        return result
    }

    private fun readReversedWords(bytes: ByteArray, offset: Int): Long {
        var value = 0L
        for (index in 0..7) value = (value shl 8) or (bytes[offset + index / 4 * 4 + 3 - index % 4].toLong() and 255L)
        return value
    }
}
