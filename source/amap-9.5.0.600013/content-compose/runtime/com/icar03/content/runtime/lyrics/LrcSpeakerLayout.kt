package com.icar03.content.runtime.lyrics

import java.util.Locale

/** Recognize vocal identities first; only solo identities establish the left/right order. */
internal object LrcSpeakerLayout {
    private val soloMarkers = mapOf(
        "男" to "male", "男声" to "male", "男合" to "male", "male" to "male", "m" to "male",
        "女" to "female", "女声" to "female", "女合" to "female", "female" to "female", "f" to "female"
    )
    private val groupMarkers = setOf(
        "合唱", "齐唱", "伴唱", "男女", "合", "众", "齐", "白", "旁白", "念", "说", "对白", "口白",
        "both", "all", "duet", "chorus", "together"
    )
    private val anonymous = Regex("v[1-8]", RegexOption.IGNORE_CASE)
    private val exactCreditLabels = setOf(
        "词", "詞", "曲", "编", "編", "唱", "录", "錄", "混", "监", "監", "译", "譯",
        "词曲", "詞曲", "原唱", "演唱", "歌手", "出品", "发行", "發行", "策划", "策劃",
        "翻唱", "原曲", "歌名", "歌曲", "专辑", "專輯", "标题", "標題", "歌词", "歌詞",
        "副歌选段", "选段", "op", "sp", "vocal", "lyrics", "music", "composer", "arranger", "producer"
    )
    private val nonNameCharacters = "我你他她它们的了着过吗呢吧啊呀哦嗯不没很就都也还又再和跟与及说问答讲道是有在会要能可想觉得看听这那然后最先但而且或如果因为所以"
    private val sentencePunctuation = "，,。.！!？?；;（()）[]【】「」、…\"“”‘’"
    private val instrumentRoots = listOf(
        "琴", "鼓", "号", "笛", "箫", "筝", "胡", "铃", "钹", "提琴", "吉他", "贝斯",
        "弦乐", "打击", "合成", "口琴", "竖琴", "单簧", "双簧", "萨克斯", "定音", "电子", "乐器", "乐团", "乐队",
        "编曲", "录音", "混音", "制作", "母带", "工程", "监制", "演出", "数字", "执行", "统筹", "企划", "发行", "出品",
        "作词", "作曲", "scratch", "beatbox", "mellotron", "sample", "programming"
    )
    private val roleRoots = listOf(
        "和声", "伴唱", "监制", "母带", "翻译", "编曲", "制作", "录音", "混音", "工程", "乐器", "乐队",
        "作词", "作曲", "策划", "版权", "发行", "演出", "选段", "programming", "beatbox", "mellotron"
    )

    data class Label(val identity: String, val prefixLength: Int, val rest: String)

    /** Timing comparison and lane projection consume the same admitted identities. */
    fun identify(rows: List<ParsedLyricLine>, artist: String = "", track: String = ""): List<Label?> =
        identify(rows, artistIdentity(track, artist).let { it.declared + it.featured })

    private fun identify(rows: List<ParsedLyricLine>, artistIds: Set<String>): List<Label?> {
        val candidates = rows.map { row ->
            parseLabel(row.text) ?: row.speaker.takeIf(String::isNotBlank)?.let { raw ->
                Label(canonical(raw), row.speakerPrefixLength, row.text)
            }
        }
        // Unknown solo names still need repeated evidence; neither prose nor joint labels qualify.
        val unknownCounts = candidates.filterNotNull()
            .filter { knownIdentity(it, artistIds) == null && artistNames(it.identity).size == 1 && plausibleSpeakerName(it.identity) }
            .groupingBy { normalizeText(it.identity) }.eachCount()
        val acceptedUnknown = if (unknownCounts.size >= 2 && unknownCounts.values.sum() >= 3 &&
            unknownCounts.values.any { it >= 2 }) unknownCounts.keys else emptySet()
        return candidates.map { label ->
            label ?: return@map null
            val identity = knownIdentity(label, artistIds) ?: normalizeText(label.identity).takeIf {
                artistNames(label.identity).size == 1 && it in acceptedUnknown
            }
            identity?.let { label.copy(identity = it) }
        }
    }

    fun project(rows: List<ParsedLyricLine>, artist: String = "", track: String = ""): List<ParsedLyricLine> {
        val artistIds = artistIdentity(track, artist).let { it.declared + it.featured }
        val labelled = identify(rows, artistIds)
        val speakerIds = labelled.filterNotNull().map(Label::identity).toSet()
        val persons = labelled.filterNotNull().map(Label::identity)
            .filterNot { it == "group" }.distinct()
        val lanes = persons.withIndex().associate { (index, identity) ->
            identity to if (index % 2 == 0) TtmlSpeakerLayout.LEADING else TtmlSpeakerLayout.TRAILING
        }
        if (labelled.none { it != null }) return rows
        var current: Label? = null
        return rows.mapIndexedNotNull { index, row ->
            val explicit = labelled[index]
            if (explicit != null) current = explicit
            if (explicit?.rest?.isBlank() == true) return@mapIndexedNotNull null
            val identity = current?.identity
            val side = when {
                identity == "group" -> TtmlSpeakerLayout.LEADING
                identity == null || persons.size < 2 -> TtmlSpeakerLayout.UNSPECIFIED
                else -> lanes.getValue(identity)
            }
            val words = if (explicit == null || row.words.isEmpty()) row.words else {
                val wordLabel = parseLabel(row.words.joinToString("") { it.text })
                if (wordLabel != null && speakerIdentity(wordLabel, artistIds) == identity) {
                    stripPrefix(row.words, wordLabel.prefixLength)
                } else row.words
            }
            row.copy(
                text = explicit?.rest ?: row.text,
                words = words,
                translation = stripAuxiliaryPrefix(row.translation, speakerIds, artistIds),
                romanization = stripAuxiliaryPrefix(row.romanization, speakerIds, artistIds),
                speaker = identity.orEmpty(),
                speakerSide = side
            )
        }
    }

    /** Syntax only. Identity is decided above, never by a singer's length, spaces or hyphens. */
    private fun parseLabel(text: String): Label? {
        val start = text.indexOfFirst { !it.isWhitespace() }.takeIf { it >= 0 } ?: return null
        val colonRelative = text.substring(start).indexOfFirst { it == ':' || it == '：' }
        if (colonRelative < 1) return null
        val colon = start + colonRelative
        val raw = text.substring(start, colon).trim()
        if (raw.isEmpty()) return null
        var restStart = colon + 1
        while (restStart < text.length && text[restStart].isWhitespace()) restStart++
        return Label(canonical(raw), restStart, text.substring(restStart).trimEnd())
    }

    private fun knownIdentity(label: Label, artistIds: Set<String>): String? {
        val raw = label.identity
        if (raw.lowercase(Locale.ROOT) in exactCreditLabels) return null
        if (isGroup(raw)) return "group"
        // Split the original label first: A/B must never collapse into the solo name A-B.
        val members = artistNames(raw).map { soloMarkers[it] ?: it }.distinct()
        if (members.size > 1) return "group".takeIf {
            members.all { it in artistIds || it in soloMarkers.values || anonymous.matches(it) }
        }
        val normalized = normalizeText(raw)
        return normalized.takeIf { raw in soloMarkers.values || anonymous.matches(raw) || normalized in artistIds }
    }

    private fun speakerIdentity(label: Label, artistIds: Set<String>): String? =
        knownIdentity(label, artistIds) ?: normalizeText(label.identity).takeIf { artistNames(label.identity).size == 1 }

    private fun canonical(raw: String): String {
        val lower = raw.lowercase(Locale.ROOT)
        return soloMarkers[lower] ?: if (groupMarkers.contains(lower)) "group" else raw
    }

    private fun isGroup(identity: String): Boolean =
        identity == "group" || groupMarkers.contains(identity.lowercase(Locale.ROOT))

    private fun plausibleSpeakerName(raw: String): Boolean {
        val normalized = normalizeText(raw)
        if (normalized.isBlank() || raw.lowercase(Locale.ROOT) in exactCreditLabels) return false
        if (raw.any { it in nonNameCharacters || it in sentencePunctuation }) return false
        if (roleRoots.any { normalized.contains(normalizeText(it)) } ||
            instrumentRoots.any { normalized.contains(normalizeText(it)) }) return false
        return raw.any { it.isLetter() || Character.UnicodeScript.of(it.code) == Character.UnicodeScript.HAN }
    }

    private fun stripAuxiliaryPrefix(text: String, speakerIds: Set<String>, artistIds: Set<String>): String {
        val label = parseLabel(text) ?: return text
        return label.takeIf { speakerIdentity(it, artistIds) in speakerIds }?.rest ?: text
    }

    /** Remove a label even when its colon is split across source words; retain source timings. */
    private fun stripPrefix(words: List<ParsedLyricWord>, count: Int): List<ParsedLyricWord> {
        var remaining = count
        var first = true
        return words.mapNotNull { word ->
            if (remaining >= word.text.length) {
                remaining -= word.text.length
                return@mapNotNull null
            }
            val text = word.text.substring(remaining).let { if (first) it.trimStart() else it }
            remaining = 0
            first = false
            word.copy(text = text).takeIf { text.isNotEmpty() }
        }
    }
}
