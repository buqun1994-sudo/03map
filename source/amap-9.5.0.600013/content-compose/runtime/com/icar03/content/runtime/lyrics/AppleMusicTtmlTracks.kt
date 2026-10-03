package com.icar03.content.runtime.lyrics

import org.xml.sax.Attributes
import org.xml.sax.InputSource
import org.xml.sax.helpers.DefaultHandler
import java.io.StringReader
import javax.xml.parsers.SAXParserFactory

/** Reuses the shared secure TTML parser; all word timings come from explicit Apple spans. */
internal class AppleMusicTtmlTracks private constructor(
    private val raw: String,
    private val document: TtmlLyricsDocument,
    private val plainText: String
) {
    fun applyTo(candidate: LyricsResult, includeWords: Boolean, preserveBase: Boolean = false): LyricsResult? {
        val lineLyrics = document.lines.joinToString("\n") { timestamp(it.timeMs) + singleLine(it.text) }
        val words = if (includeWords) document.lines.mapNotNull { line ->
            // Partial timed spans must not erase the untimed text of a line or invent its timings.
            if (line.words.isEmpty() || singleLine(line.words.joinToString("") { it.text }) != singleLine(line.text)) null
            else yrc(line.words, line.timeMs, line.endTimeMs)
        }.joinToString("\n") else ""
        val translation = document.lines.filter { it.translation.isNotBlank() }
            .joinToString("\n") { timestamp(it.timeMs) + singleLine(it.translation) }
        val romanization = document.lines.filter { it.romanization.isNotBlank() }
            .joinToString("\n") { timestamp(it.timeMs) + singleLine(it.romanization) }
        val background = document.lines.mapNotNull { line ->
            line.backgroundWords.takeIf { it.isNotEmpty() }?.let { yrc(it, it.first().startTimeMs, null) }
        }.joinToString("\n")
        val lyrics = if (preserveBase && candidate.lyrics.isNotBlank()) candidate.lyrics else lineLyrics
        val plain = if (lyrics.isNotBlank()) "" else if (preserveBase && candidate.plainLyrics.isNotBlank()) candidate.plainLyrics else plainText
        if (lyrics.isBlank() && plain.isBlank() && words.isBlank()) return null
        return candidate.copy(
            lyrics = lyrics, plainLyrics = plain,
            wordLyrics = words.ifBlank { candidate.wordLyrics },
            translatedLyrics = translation.ifBlank { candidate.translatedLyrics },
            romanizedLyrics = romanization.ifBlank { candidate.romanizedLyrics },
            backgroundLyrics = background.ifBlank { candidate.backgroundLyrics },
            ttmlLyrics = if (preserveBase && words.isBlank() && candidate.ttmlLyrics.isNotBlank()) candidate.ttmlLyrics else raw,
            lyricsKind = if (lyrics.isNotBlank() || words.isNotBlank()) LyricsKind.SYNCHRONIZED else LyricsKind.PLAIN
        )
    }

    companion object {
        fun parse(raw: String, cancellation: LyricsCancellationSignal): AppleMusicTtmlTracks {
            cancellation.throwIfCancelled()
            val document = try { TtmlLyricsParser.parse(raw) } catch (_: TtmlParseException) {
                throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Apple Music returned invalid TTML")
            }
            cancellation.throwIfCancelled()
            // The shared parser deliberately drops untimed p elements. Only that plain-text case
            // needs a narrow extraction pass, after secure XML validation has already succeeded.
            val plain = if (document.lines.isEmpty()) untimedText(raw, cancellation) else ""
            return AppleMusicTtmlTracks(raw, document, plain)
        }

        private fun timestamp(ms: Long): String = PublicWordLyricsFormats.lrcTimestamp(ms)
        private fun singleLine(value: String): String = value.replace('\r', ' ').replace('\n', ' ')

        private fun yrc(words: List<TtmlLyricWord>, lineStart: Long, lineEnd: Long?): String {
            val start = minOf(lineStart, words.minOf { it.startTimeMs })
            val end = maxOf(lineEnd ?: start, words.maxOf { it.endTimeMs })
            return buildString {
                append("[$start,${end - start}]")
                words.forEach { word ->
                    append("(${word.startTimeMs},${word.endTimeMs - word.startTimeMs},0)")
                    append(singleLine(word.text))
                }
            }
        }

        private fun untimedText(raw: String, cancellation: LyricsCancellationSignal): String {
            val handler = PlainHandler(cancellation)
            try {
                val factory = SAXParserFactory.newInstance().apply { isNamespaceAware = true; isValidating = false }
                val reader = factory.newSAXParser().xmlReader
                // DTDs/entities have already been rejected by TtmlLyricsParser. Keep this pass
                // entity-free as well on every Android/JVM implementation exposing these features.
                for (feature in listOf("http://xml.org/sax/features/external-general-entities", "http://xml.org/sax/features/external-parameter-entities")) {
                    runCatching { reader.setFeature(feature, false) }
                }
                reader.contentHandler = handler
                reader.entityResolver = handler
                reader.parse(InputSource(StringReader(raw)))
                cancellation.throwIfCancelled()
                return handler.lines.joinToString("\n")
            } catch (error: java.util.concurrent.CancellationException) {
                throw error
            } catch (_: Exception) {
                throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Apple Music returned invalid plain TTML")
            }
        }

        private class PlainHandler(private val cancellation: LyricsCancellationSignal) : DefaultHandler() {
            private data class Frame(val inBody: Boolean, val role: String, val inParagraph: Boolean)
            private val frames = mutableListOf<Frame>()
            private var paragraph = StringBuilder()
            val lines = mutableListOf<String>()

            override fun startElement(uri: String, localName: String, qName: String, attributes: Attributes) {
                cancellation.throwIfCancelled()
                val parent = frames.lastOrNull()
                val ttml = uri.isEmpty() || uri == "http://www.w3.org/ns/ttml"
                val body = ttml && (parent?.inBody == true || localName == "body")
                val role = attributes.getValue("http://www.w3.org/ns/ttml#metadata", "role") ?: parent?.role.orEmpty()
                val main = role.isBlank()
                val untimed = attributes.getValue("", "begin").isNullOrBlank() && attributes.getValue("", "end").isNullOrBlank()
                val inParagraph = ttml && main && (parent?.inParagraph == true || body && localName == "p" && untimed)
                if (localName == "p" && inParagraph) paragraph = StringBuilder()
                if (localName == "br" && inParagraph) paragraph.append(' ')
                frames += Frame(body, role, inParagraph)
            }

            override fun characters(ch: CharArray, start: Int, length: Int) {
                if (frames.lastOrNull()?.inParagraph == true) paragraph.append(ch, start, length)
            }

            override fun endElement(uri: String, localName: String, qName: String) {
                val frame = frames.removeAt(frames.lastIndex)
                if (localName == "p" && frame.inParagraph) {
                    val text = paragraph.toString().replace(Regex("[\\t\\r\\n ]+"), " ").trim()
                    if (text.isNotBlank()) lines += text
                }
            }

            override fun resolveEntity(publicId: String?, systemId: String?): InputSource = InputSource(StringReader(""))
        }
    }
}
