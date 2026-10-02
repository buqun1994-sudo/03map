package com.icar03.content.runtime.lyrics

import org.xml.sax.Attributes
import org.xml.sax.InputSource
import org.xml.sax.SAXException
import org.xml.sax.SAXNotRecognizedException
import org.xml.sax.SAXNotSupportedException
import org.xml.sax.SAXParseException
import org.xml.sax.XMLReader
import org.xml.sax.ext.DefaultHandler2
import java.io.IOException
import java.io.StringReader
import java.math.BigDecimal
import java.math.RoundingMode
import java.util.Collections
import javax.xml.XMLConstants
import javax.xml.parsers.ParserConfigurationException
import javax.xml.parsers.SAXParserFactory
import kotlin.math.abs

internal data class TtmlLyricWord(
    val startTimeMs: Long,
    val endTimeMs: Long,
    val text: String
)

internal class TtmlLyricLine(
    val timeMs: Long,
    val endTimeMs: Long?,
    val text: String,
    val translation: String = "",
    val romanization: String = "",
    words: List<TtmlLyricWord> = emptyList(),
    backgroundWords: List<TtmlLyricWord> = emptyList(),
    val agent: String = ""
) {
    val words: List<TtmlLyricWord> = immutableTtmlList(words)
    val backgroundWords: List<TtmlLyricWord> = immutableTtmlList(backgroundWords)
}

internal class TtmlLyricsDocument(
    lines: List<TtmlLyricLine>,
    agentTypes: Map<String, String> = emptyMap(),
    metadata: Map<String, List<String>> = emptyMap()
) {
    val lines: List<TtmlLyricLine> = immutableTtmlList(lines)
    val agentTypes: Map<String, String> = Collections.unmodifiableMap(LinkedHashMap(agentTypes))
    val metadata: Map<String, List<String>> = Collections.unmodifiableMap(
        metadata.mapValuesTo(linkedMapOf()) { (_, values) -> immutableTtmlList(values) }
    )
}

internal class TtmlParseException(message: String, cause: Throwable? = null) :
    IllegalArgumentException(message, cause)

internal object TtmlLyricsParser {
    const val MAX_INPUT_BYTES = 2 * 1024 * 1024
    const val MAX_LINES = 4_096
    const val MAX_WORDS = 32_768
    private const val MAX_ELEMENTS = 65_536
    private const val MAX_DEPTH = 64
    private const val MAX_AGENTS = 128
    private const val MAX_METADATA_VALUES = 512
    private const val MAX_KEYED_TEXTS = MAX_LINES * 2
    private const val MAX_TIME_MS = 86_400_000L
    private const val PARALLEL_TOLERANCE_MS = 700L
    private const val TTML_NS = "http://www.w3.org/ns/ttml"
    private const val TTM_NS = "http://www.w3.org/ns/ttml#metadata"
    private const val TTP_NS = "http://www.w3.org/ns/ttml#parameter"
    private const val ITUNES_NS = "http://music.apple.com/lyric-ttml-internal"
    private const val AMLL_NS = "http://www.example.com/ns/amll"
    private val number = Regex("[0-9]+(?:\\.[0-9]{1,9})?")
    private val integer = Regex("[0-9]+")

    fun parse(raw: String): TtmlLyricsDocument {
        if (raw.length > MAX_INPUT_BYTES || raw.toByteArray(Charsets.UTF_8).size > MAX_INPUT_BYTES) {
            throw TtmlParseException("TTML input exceeds 2 MiB")
        }
        if (raw.isBlank()) return TtmlLyricsDocument(emptyList())
        val handler = TtmlHandler()
        try {
            val factory = SAXParserFactory.newInstance().apply {
                isNamespaceAware = true
                isValidating = false
            }
            val reader = factory.newSAXParser().xmlReader
            reader.optionalFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true)
            reader.optionalFeature("http://apache.org/xml/features/disallow-doctype-decl", true)
            reader.optionalFeature("http://xml.org/sax/features/external-general-entities", false)
            reader.optionalFeature("http://xml.org/sax/features/external-parameter-entities", false)
            reader.optionalFeature("http://apache.org/xml/features/nonvalidating/load-external-dtd", false)
            reader.optionalProperty("http://javax.xml.XMLConstants/property/accessExternalDTD", "")
            reader.optionalProperty("http://javax.xml.XMLConstants/property/accessExternalSchema", "")
            // Android and JVM expose different feature sets; the required lexical handler rejects DTDs.
            reader.setProperty("http://xml.org/sax/properties/lexical-handler", handler)
            reader.contentHandler = handler
            reader.dtdHandler = handler
            reader.entityResolver = handler
            reader.errorHandler = handler
            reader.parse(InputSource(StringReader(raw.removePrefix("\uFEFF"))))
        } catch (error: SAXException) {
            throw TtmlParseException("Invalid or unsupported TTML XML", error)
        } catch (error: ParserConfigurationException) {
            throw TtmlParseException("Secure TTML parser is unavailable", error)
        } catch (error: IOException) {
            throw TtmlParseException("Cannot read TTML XML", error)
        }
        return handler.document()
    }

    private fun XMLReader.optionalFeature(name: String, value: Boolean) {
        try {
            setFeature(name, value)
        } catch (_: SAXNotRecognizedException) {
        } catch (_: SAXNotSupportedException) {
        }
    }

    private fun XMLReader.optionalProperty(name: String, value: String) {
        try {
            setProperty(name, value)
        } catch (_: SAXNotRecognizedException) {
        } catch (_: SAXNotSupportedException) {
        }
    }

    private enum class Role { MAIN, TRANSLATION, ROMANIZATION, BACKGROUND, UNKNOWN }

    private fun role(value: String): Role = when (value.trim()) {
        "" -> Role.MAIN
        "x-translation" -> Role.TRANSLATION
        "x-roman", "x-romanization" -> Role.ROMANIZATION
        "x-bg" -> Role.BACKGROUND
        else -> Role.UNKNOWN
    }

    private sealed interface ContentNode
    private class Literal(val preserveSpace: Boolean, val text: StringBuilder) : ContentNode
    private class Element(
        val begin: String,
        val end: String,
        val role: Role,
        val preserveSpace: Boolean,
        val children: MutableList<ContentNode> = mutableListOf()
    ) : ContentNode {
        fun addText(text: String) {
            val last = children.lastOrNull() as? Literal
            if (last != null && last.preserveSpace == preserveSpace) {
                last.text.append(text)
            } else {
                children += Literal(preserveSpace, StringBuilder(text))
            }
        }
    }

    private data class Paragraph(
        val content: Element,
        val role: Role,
        val agent: String,
        val key: String
    )
    private data class KeyedText(val role: Role, val key: String, val content: Element)
    private data class Frame(
        val name: String,
        val namespace: String,
        val inBody: Boolean,
        val inHead: Boolean,
        val effectiveRole: Role,
        val agent: String,
        val preserveSpace: Boolean,
        val appleRole: Role?,
        val inAppleText: Boolean,
        val content: Element?,
        val paragraph: Paragraph? = null,
        val keyedText: KeyedText? = null
    )

    private class TtmlHandler : DefaultHandler2() {
        private val frames = mutableListOf<Frame>()
        private val paragraphs = mutableListOf<Paragraph>()
        private val keyedTexts = mutableListOf<KeyedText>()
        private val agentTypes = linkedMapOf<String, String>()
        private val metadata = linkedMapOf<String, MutableList<String>>()
        private var elements = 0
        private var paragraphCount = 0
        private var metadataCount = 0
        private var keyedTextCount = 0
        private var seenSubtitle = false
        private var seenTransliteration = false
        private var seenRoot = false

        override fun startElement(uri: String, localName: String, qName: String, attributes: Attributes) {
            if (++elements > MAX_ELEMENTS || frames.size >= MAX_DEPTH) fail("TTML structure limit reached")
            val parent = frames.lastOrNull()
            val isTtml = uri.isEmpty() || uri == TTML_NS
            if (parent == null) {
                if (seenRoot || !isTtml || localName != "tt") fail("Expected a TTML root")
                seenRoot = true
                val timeBase = attributes.getValue(TTP_NS, "timeBase").orEmpty()
                if (timeBase.isNotEmpty() && timeBase != "media") fail("Unsupported TTML time base")
            }
            if (isTtml && attributes.getValue("", "timeContainer") == "seq") {
                fail("Sequential TTML containers are not supported")
            }
            val inBody = isTtml && (parent?.inBody == true ||
                (localName == "body" && parent?.name == "tt" &&
                    (parent.namespace.isEmpty() || parent.namespace == TTML_NS)))
            val inHead = parent?.inHead == true || (isTtml && localName == "head")
            val preserveSpace = when (attributes.getValue(XMLConstants.XML_NS_URI, "space")) {
                "preserve" -> true
                "default" -> false
                else -> parent?.preserveSpace ?: false
            }
            val explicitRole = attributes.getValue(TTM_NS, "role")
            val effectiveRole = explicitRole?.let(::role) ?: parent?.effectiveRole ?: Role.MAIN
            val agent = attributes.getValue(TTM_NS, "agent")?.trim() ?: parent?.agent.orEmpty()
            var appleRole = parent?.appleRole
            if (inHead && uri == ITUNES_NS && parent?.namespace == ITUNES_NS) {
                if (localName == "translation" && parent.name == "translations") {
                    appleRole = if (attributes.getValue("", "type") == "subtitle" && !seenSubtitle) {
                        seenSubtitle = true
                        Role.TRANSLATION
                    } else null
                } else if (localName == "transliteration" && parent.name == "transliterations") {
                    appleRole = if (!seenTransliteration) {
                        seenTransliteration = true
                        Role.ROMANIZATION
                    } else null
                }
            }
            if (inHead && uri == TTM_NS && localName == "agent") {
                val id = attributes.getValue(XMLConstants.XML_NS_URI, "id").orEmpty().trim()
                if (id.isNotEmpty()) {
                    if (agentTypes.size >= MAX_AGENTS && id !in agentTypes) fail("Too many TTML agents")
                    agentTypes[id] = attributes.getValue("", "type").orEmpty().trim()
                }
            }
            if (inHead && uri == AMLL_NS && localName == "meta") {
                if (++metadataCount > MAX_METADATA_VALUES) fail("Too much TTML metadata")
                val key = attributes.getValue("", "key").orEmpty()
                val value = attributes.getValue("", "value").orEmpty()
                if (key.isNotBlank()) metadata.getOrPut(key) { mutableListOf() }.add(value)
            }
            var content: Element? = null
            var paragraph: Paragraph? = null
            var keyedText: KeyedText? = null
            val inAppleText = parent?.inAppleText == true ||
                (inHead && uri == ITUNES_NS && localName == "text" && appleRole != null)
            if (inBody && isTtml && localName == "p") {
                if (frames.any { it.paragraph != null }) fail("Nested TTML paragraphs are not supported")
                if (++paragraphCount > MAX_LINES) fail("Too many TTML paragraphs")
                content = Element(
                    attributes.getValue("", "begin").orEmpty(),
                    attributes.getValue("", "end").orEmpty(), Role.MAIN, preserveSpace
                )
                paragraph = Paragraph(content, effectiveRole, agent, attributes.getValue(ITUNES_NS, "key").orEmpty())
            } else if (inHead && uri == ITUNES_NS && localName == "text" && appleRole != null) {
                if (++keyedTextCount > MAX_KEYED_TEXTS) fail("Too many TTML auxiliary texts")
                content = Element("", "", Role.MAIN, preserveSpace)
                keyedText = KeyedText(appleRole, attributes.getValue("", "for").orEmpty(), content)
            } else if (parent?.content != null && (isTtml || (inAppleText && uri == ITUNES_NS))) {
                if (localName == "span") {
                    content = Element(
                        attributes.getValue("", "begin").orEmpty(),
                        attributes.getValue("", "end").orEmpty(),
                        explicitRole?.let(::role) ?: Role.MAIN, preserveSpace
                    )
                    parent.content.children += content
                } else if (localName == "br") {
                    parent.content.addText("\n")
                }
            }
            frames += Frame(localName, uri, inBody, inHead, effectiveRole, agent, preserveSpace,
                appleRole, inAppleText, content, paragraph, keyedText)
        }

        override fun characters(ch: CharArray, start: Int, length: Int) {
            frames.lastOrNull()?.content?.addText(String(ch, start, length))
        }

        override fun endElement(uri: String, localName: String, qName: String) {
            val frame = frames.removeAt(frames.lastIndex)
            frame.paragraph?.let(paragraphs::add)
            frame.keyedText?.let(keyedTexts::add)
        }

        override fun startDTD(name: String?, publicId: String?, systemId: String?) = fail("DOCTYPE is forbidden")
        override fun resolveEntity(publicId: String?, systemId: String?): InputSource = fail("External entities are forbidden")
        override fun resolveEntity(name: String?, publicId: String?, baseURI: String?, systemId: String?): InputSource =
            fail("External entities are forbidden")
        override fun getExternalSubset(name: String?, baseURI: String?): InputSource = fail("External subsets are forbidden")
        override fun skippedEntity(name: String?) = fail("Unresolved entities are forbidden")
        override fun error(error: SAXParseException) { throw error }
        override fun fatalError(error: SAXParseException) { throw error }

        fun document(): TtmlLyricsDocument {
            if (!seenRoot) throw TtmlParseException("Missing TTML root")
            val builder = DocumentBuilder()
            paragraphs.forEach(builder::add)
            return builder.build(keyedTexts, agentTypes, metadata)
        }

        private fun fail(message: String): Nothing = throw SAXException(message)
    }

    private data class TimeRange(val id: Int, val start: Long, val end: Long)
    private data class Fragment(val text: String, val timing: TimeRange?, val preserveSpace: Boolean)
    private data class Rendered(val text: String, val words: List<TtmlLyricWord>)
    private data class MutableWord(
        val timing: TimeRange,
        val text: StringBuilder,
        val startOffset: Int,
        var endOffset: Int
    )

    private class TextRenderer {
        private var nextRangeId = 0

        fun render(element: Element, timed: Boolean = true): Rendered {
            val fragments = mutableListOf<Fragment>()
            flatten(element, null, timed, fragments)
            val text = StringBuilder()
            val words = mutableListOf<MutableWord>()
            var lastTiming: TimeRange? = null
            fragments.forEach { fragment ->
                fragment.text.forEach characterLoop@ { character ->
                    val whitespace = character.isXmlWhitespace()
                    if (!fragment.preserveSpace && whitespace &&
                        (text.isEmpty() || text.last().isXmlWhitespace())) return@characterLoop
                    text.append(if (!fragment.preserveSpace && whitespace) ' ' else character)
                    val owner = if (whitespace && fragment.timing == null) lastTiming else fragment.timing
                    if (owner != null) {
                        if (words.lastOrNull()?.timing?.id != owner.id || lastTiming?.id != owner.id) {
                            if (words.size >= MAX_WORDS) throw TtmlParseException("Too many TTML words")
                            words += MutableWord(owner, StringBuilder(), text.length - 1, text.length)
                        }
                        words.last().text.append(if (!fragment.preserveSpace && whitespace) ' ' else character)
                        words.last().endOffset = text.length
                    }
                    lastTiming = owner
                }
            }
            val body = text.toString().trimXmlWhitespace()
            return Rendered(body, words.mapNotNull { word ->
                var wordText = word.text.toString()
                if (word.startOffset == 0) wordText = wordText.trimStart { it.isXmlWhitespace() }
                if (word.endOffset == text.length) wordText = wordText.trimEnd { it.isXmlWhitespace() }
                wordText.takeIf { it.isNotBlank() }?.let {
                    TtmlLyricWord(word.timing.start, word.timing.end, it)
                }
            })
        }

        private fun flatten(element: Element, inherited: TimeRange?, timed: Boolean, output: MutableList<Fragment>) {
            val ownTiming = if (!timed) null else if (element.begin.isNotBlank() || element.end.isNotBlank()) {
                val start = parseTime(element.begin)
                val end = parseTime(element.end)
                if (start != null && end != null && end > start) TimeRange(++nextRangeId, start, end) else null
            } else inherited
            element.children.forEach { node ->
                when (node) {
                    is Literal -> output += Fragment(node.text.toString(), ownTiming, node.preserveSpace)
                    is Element -> if (node.role == Role.MAIN) flatten(node, ownTiming, timed, output)
                }
            }
        }
    }

    private data class MutableLine(
        val time: Long,
        val end: Long?,
        val text: String,
        val agent: String,
        val key: String,
        val words: List<TtmlLyricWord>,
        val background: List<TtmlLyricWord>,
        var translation: String,
        var romanization: String
    )
    private data class Auxiliary(val role: Role, val time: Long, val agent: String, val key: String, val text: String)

    private class DocumentBuilder {
        private val renderer = TextRenderer()
        private val lines = mutableListOf<MutableLine>()
        private val auxiliary = mutableListOf<Auxiliary>()
        private var wordCount = 0

        fun add(paragraph: Paragraph) {
            val start = parseTime(paragraph.content.begin) ?: return
            val end = if (paragraph.content.end.isBlank()) null else parseTime(paragraph.content.end) ?: return
            if (end != null && end < start) return
            // A paragraph's timing belongs to the line, never to otherwise untimed words.
            val main = renderer.render(Element("", "", Role.MAIN, paragraph.content.preserveSpace, paragraph.content.children))
            if (main.text.isBlank()) return
            if (paragraph.role == Role.TRANSLATION || paragraph.role == Role.ROMANIZATION) {
                auxiliary += Auxiliary(paragraph.role, start, paragraph.agent, paragraph.key, main.text)
                return
            }
            if (paragraph.role != Role.MAIN) return
            var translation = ""
            var romanization = ""
            val background = mutableListOf<TtmlLyricWord>()
            fun collectRoles(element: Element) {
                element.children.filterIsInstance<Element>().forEach { child ->
                    when (child.role) {
                        Role.TRANSLATION -> if (translation.isEmpty()) translation = renderer.render(child, false).text
                        Role.ROMANIZATION -> if (romanization.isEmpty()) romanization = renderer.render(child, false).text
                        Role.BACKGROUND -> {
                            val words = renderer.render(child).words
                            if (background.isNotEmpty() && words.isNotEmpty() && !background.last().text.endsWith(" ")) {
                                background[background.lastIndex] = background.last().copy(text = background.last().text + " ")
                            }
                            background += words
                        }
                        Role.MAIN -> collectRoles(child)
                        Role.UNKNOWN -> Unit
                    }
                }
            }
            collectRoles(paragraph.content)
            wordCount += main.words.size + background.size
            if (wordCount > MAX_WORDS) throw TtmlParseException("Too many TTML words")
            lines += MutableLine(start, end, main.text, paragraph.agent, paragraph.key,
                main.words, background, translation, romanization)
        }

        fun build(keyed: List<KeyedText>, agents: Map<String, String>, metadata: Map<String, List<String>>): TtmlLyricsDocument {
            val sorted = lines.sortedBy { it.time }
            val byKey = sorted.filter { it.key.isNotBlank() }.groupBy { it.key }
            // Apple auxiliary tracks use explicit keys; replacement and unmatched keys never become subtitles.
            keyed.forEach { attachment ->
                if (attachment.key.isBlank()) return@forEach
                val matches = byKey[attachment.key] ?: return@forEach
                if (matches.size != 1) return@forEach
                val text = renderer.render(attachment.content, false).text
                if (text.isNotBlank()) attach(matches.single(), attachment.role, text)
            }
            for (kind in listOf(Role.TRANSLATION, Role.ROMANIZATION)) {
                auxiliary.filter { it.role == kind }
                    .sortedWith(compareBy<Auxiliary> { if (it.key.isNotBlank()) 0 else 1 }.thenBy { it.time })
                    .forEach { entry ->
                        val nearest = sorted.asSequence().filter { line ->
                            value(line, kind).isEmpty() &&
                                (entry.agent.isBlank() || line.agent.isBlank() || entry.agent == line.agent) &&
                                (entry.key.isBlank() || line.key.isBlank() || entry.key == line.key) &&
                                (entry.key.isNotBlank() && entry.key == line.key ||
                                    abs(entry.time - line.time) <= PARALLEL_TOLERANCE_MS)
                        }.minWithOrNull(compareBy<MutableLine> {
                            if (entry.key.isNotBlank() && entry.key == it.key) 0 else 1
                        }.thenBy { abs(entry.time - it.time) }.thenByDescending { it.time })
                        if (nearest != null) attach(nearest, kind, entry.text)
                    }
            }
            return TtmlLyricsDocument(sorted.map { line ->
                TtmlLyricLine(line.time, line.end, line.text, line.translation, line.romanization,
                    line.words, line.background, line.agent)
            }, agents, metadata)
        }

        private fun value(line: MutableLine, role: Role): String = when (role) {
            Role.TRANSLATION -> line.translation
            Role.ROMANIZATION -> line.romanization
            else -> ""
        }

        private fun attach(line: MutableLine, role: Role, text: String) {
            if (value(line, role).isNotEmpty()) return
            when (role) {
                Role.TRANSLATION -> line.translation = text
                Role.ROMANIZATION -> line.romanization = text
                else -> Unit
            }
        }
    }

    private fun parseTime(raw: String): Long? {
        val value = raw.trim()
        if (value.isEmpty() || value.length > 32) return null
        val milliseconds = if (value.endsWith("ms")) {
            value.dropLast(2).takeIf(number::matches)?.toBigDecimalOrNull()
        } else {
            val seconds = value.removeSuffix("s")
            val parts = seconds.split(':')
            when (parts.size) {
                1 -> parts[0].takeIf(number::matches)?.toBigDecimalOrNull()
                2, 3 -> {
                    if (!parts.dropLast(1).all(integer::matches) || !number.matches(parts.last())) return null
                    val last = parts.last().toBigDecimalOrNull() ?: return null
                    if (last >= BigDecimal(60)) return null
                    if (parts.size == 3 && (parts[1].toLongOrNull() ?: return null) >= 60L) return null
                    var total = BigDecimal.ZERO
                    for (part in parts) total = total * BigDecimal(60) + (part.toBigDecimalOrNull() ?: return null)
                    total
                }
                else -> null
            }?.multiply(BigDecimal(1_000))
        } ?: return null
        if (milliseconds < BigDecimal.ZERO || milliseconds > BigDecimal(MAX_TIME_MS)) return null
        return milliseconds.setScale(0, RoundingMode.HALF_UP).toLong()
    }

    private fun Char.isXmlWhitespace(): Boolean = this == ' ' || this == '\t' || this == '\r' || this == '\n'
    private fun String.trimXmlWhitespace(): String = trim { it.isXmlWhitespace() }
}

private fun <T> immutableTtmlList(values: List<T>): List<T> = Collections.unmodifiableList(ArrayList(values))
