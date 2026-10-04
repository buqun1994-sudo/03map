package com.icar03.content.runtime.lyrics

import java.util.Locale

/**
 * Derives lanes from explicit LRC/YRC vocal labels. Unmarked lyrics stay ordinary until
 * a recognized label starts a run, matching Lyrimuse's carry-forward rule.
 */
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
        "op", "sp", "vocal", "lyrics", "music", "composer", "arranger", "producer"
    )
    private val nonNameCharacters = "我你他她它们的了着过吗呢吧啊呀哦嗯不没很就都也还又再和跟与及说问答讲道是有在会要能可想觉得看听这那然后最先但而且或如果因为所以"
    private val labelBreakers = " \t　，,。.！!？?；;（()）[]【】「」、…—-\"'“”‘’"
    private val instrumentRoots = listOf(
        "琴", "鼓", "号", "笛", "箫", "筝", "胡", "铃", "钹", "提琴", "吉他", "贝斯",
        "弦乐", "打击", "合成", "口琴", "竖琴", "单簧", "双簧", "萨克斯", "定音", "电子", "乐器", "乐团", "乐队",
        "编曲", "录音", "混音", "制作", "母带", "工程", "监制", "演出", "数字", "执行", "统筹", "企划", "发行", "出品",
        "作词", "作曲", "scratch", "beatbox", "mellotron", "sample", "programming"
    )
    private val roleRoots = listOf(
        "和声", "伴唱", "监制", "母带", "翻译", "编曲", "制作", "录音", "混音", "工程", "乐器", "乐队",
        "作词", "作曲", "策划", "版权", "发行", "演出", "programming", "beatbox", "mellotron"
    )

    private data class Label(
        val identity: String,
        val group: Boolean,
        val prefixLength: Int,
        val rest: String
    )

    @Suppress("UNUSED_PARAMETER")
    fun project(rows: List<ParsedLyricLine>, artist: String = "", track: String = ""): List<ParsedLyricLine> {
        val candidates = rows.map { row ->
            parseLabel(row.text) ?: row.speaker.takeIf(String::isNotBlank)?.let { raw ->
                Label(canonical(raw), isGroup(raw), row.speakerPrefixLength, row.text)
            }
        }
        val known = candidates.filterNotNull().filter { knownIdentity(it) != null }.map { knownIdentity(it)!! }
        val unknownCounts = candidates.filterNotNull()
            .filter { knownIdentity(it) == null && plausibleSpeakerName(it.identity) }
            .groupingBy { normalizeText(it.identity) }.eachCount()
        val acceptedUnknown = if (unknownCounts.size >= 2 && unknownCounts.values.sum() >= 3 &&
            unknownCounts.values.any { it >= 2 }) unknownCounts.keys else emptySet()
        val speakerIds = (known + acceptedUnknown).toSet()
        val labelled = candidates.map { candidate ->
            candidate?.takeIf { speakerIds.contains(speakerIdentity(it, acceptedUnknown)) }
        }
        val persons = labelled.filterNotNull().filterNot { it.group }
            .map { speakerIdentity(it, acceptedUnknown) }.distinct()
        val lanes = persons.withIndex().associate { (index, identity) ->
            identity to if (index % 2 == 0) TtmlSpeakerLayout.LEADING else TtmlSpeakerLayout.TRAILING
        }
        if (labelled.none { it != null }) return rows
        var current: Label? = null
        return rows.mapIndexedNotNull { index, row ->
            val explicit = labelled[index]
            if (explicit != null) current = explicit
            if (explicit?.rest?.isBlank() == true) return@mapIndexedNotNull null
            val voice = current
            val identity = voice?.let { speakerIdentity(it, acceptedUnknown) }
            val side = when {
                voice == null || persons.size < 2 -> TtmlSpeakerLayout.UNSPECIFIED
                voice.group -> TtmlSpeakerLayout.CENTER
                else -> lanes.getValue(identity!!)
            }
            val words = if (explicit == null || row.words.isEmpty()) row.words else {
                val joined = row.words.joinToString("") { it.text }
                val wordLabel = parseLabel(joined)
                if (wordLabel != null && labelled[index]?.identity == wordLabel.identity) {
                    stripPrefix(row.words, wordLabel.prefixLength)
                } else row.words
            }
            row.copy(
                text = explicit?.rest ?: row.text,
                words = words,
                translation = stripAuxiliaryPrefix(row.translation, speakerIds, acceptedUnknown),
                romanization = stripAuxiliaryPrefix(row.romanization, speakerIds, acceptedUnknown),
                speaker = identity.orEmpty(),
                speakerSide = side
            )
        }
    }

    private fun parseLabel(text: String): Label? {
        val start = text.indexOfFirst { !it.isWhitespace() }.takeIf { it >= 0 } ?: return null
        val colonRelative = text.substring(start).indexOfFirst { it == ':' || it == '：' }
        if (colonRelative !in 1..32) return null
        val colon = start + colonRelative
        val raw = text.substring(start, colon).trim()
        if (raw.length > 10 || raw.any(Char::isWhitespace) || raw.any { it in labelBreakers }) return null
        var restStart = colon + 1
        while (restStart < text.length && text[restStart].isWhitespace()) restStart++
        val identity = canonical(raw)
        return Label(identity, isGroup(raw), restStart, text.substring(restStart).trimEnd())
    }

    private fun knownIdentity(label: Label): String? = when {
        isGroup(label.identity) -> "group"
        label.identity in soloMarkers.values -> label.identity
        anonymous.matches(label.identity) -> label.identity.lowercase(Locale.ROOT)
        else -> null
    }

    private fun speakerIdentity(label: Label, acceptedUnknown: Set<String>): String =
        knownIdentity(label) ?: normalizeText(label.identity).takeIf { it in acceptedUnknown } ?: label.identity

    private fun canonical(raw: String): String {
        val lower = raw.lowercase(Locale.ROOT)
        return soloMarkers[lower] ?: if (groupMarkers.contains(lower)) "group" else raw
    }

    private fun isGroup(identity: String): Boolean =
        identity == "group" || groupMarkers.contains(identity.lowercase(Locale.ROOT))

    private fun plausibleSpeakerName(raw: String): Boolean {
        val normalized = normalizeText(raw)
        if (normalized.isBlank() || normalized.length > 10 || exactCreditLabels.contains(raw.lowercase(Locale.ROOT))) return false
        if (raw.any { it in nonNameCharacters }) return false
        if (roleRoots.any { normalized.contains(normalizeText(it)) } ||
            instrumentRoots.any { normalized.contains(normalizeText(it)) }) return false
        return raw.any { it.isLetter() || Character.UnicodeScript.of(it.code) == Character.UnicodeScript.HAN }
    }

    private fun stripAuxiliaryPrefix(text: String, speakerIds: Set<String>, acceptedUnknown: Set<String>): String {
        val label = parseLabel(text) ?: return text
        return label.takeIf { speakerIds.contains(speakerIdentity(it, acceptedUnknown)) }?.rest ?: text
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
