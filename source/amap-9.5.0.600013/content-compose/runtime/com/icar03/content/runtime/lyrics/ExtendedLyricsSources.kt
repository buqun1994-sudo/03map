package com.icar03.content.runtime.lyrics

import org.json.JSONArray
import org.json.JSONObject
import org.json.JSONTokener
import java.net.URL
import java.net.URLEncoder
import java.nio.ByteBuffer
import java.nio.charset.CodingErrorAction
import java.util.Locale
import java.util.concurrent.CancellationException
import kotlin.math.abs

internal const val SOURCE_KUGOU = "酷狗音乐"
internal const val SOURCE_KUWO = "酷我音乐"
internal const val SOURCE_MIGU = "咪咕音乐"
internal const val SOURCE_SODA = "汽水音乐"

internal fun additionalPublicLyricsSources(): List<LyricsCatalogSource> = listOf(
    KugouLyricsSource(), KuwoLyricsSource(), MiguLyricsSource(), SodaLyricsSource()
)

/** Catalog recall only. Recording admission remains owned by LyricsCandidateSelector. */
internal class KugouLyricsSource(
    private val transport: LyricsTransport = HttpLyricsTransport()
) : LyricsCatalogSource {
    override val sourceName: String = SOURCE_KUGOU
    private val entries = CatalogResourceEntries()
    private val lyricResources = object : LinkedHashMap<LyricsCandidateSnapshot, LyricResource>(16, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<LyricsCandidateSnapshot, LyricResource>?): Boolean =
            size > MAX_CATALOG_CONTEXTS
    }

    // Only source-local memory holds the access key; no generated toString exposes it.
    private class LyricResource(val id: String, val accessKey: String)

    override fun search(request: LyricsCatalogSearchRequest, deadlineNanos: Long, cancellation: LyricsCancellationSignal): List<LyricsResult> {
        cancellation.throwIfCancelled()
        val url = "https://songsearch.kugou.com/song_search_v2?keyword=${queryEncode(request.text)}" +
            "&page=1&pagesize=20&platform=WebFilter"
        val root = getJson(url, publicHeaders(), deadlineNanos, cancellation)
        requireCode(root, sourceName, "status", setOf("1"), required = true)
        requireCode(root, sourceName, "error_code", setOf("0"), required = true)
        val rows = requiredArray(requiredObject(root, "data", sourceName), "lists", sourceName)
        return rows.catalogObjects().take(MAX_CATALOG_ITEMS).mapNotNull { row ->
            cancellation.throwIfCancelled()
            val hash = row.contentString("FileHash").lowercase(Locale.ROOT)
            val title = row.contentString("SongName")
            val artist = row.contentString("SingerName")
            if (!HASH.matches(hash) || title.isBlank() || artist.isBlank()) return@mapNotNull null
            val candidate = LyricsResult(
                durationMs = PublicWordLyricsFormats.secondsToMs(row.contentString("Duration")) ?: 0L,
                cover = publicUrl(row.contentString("AlbumImage").replace("{size}", "0")),
                source = sourceName, sourceId = hash, candidateTrack = title,
                candidateArtist = artist, candidateAlbum = row.contentString("AlbumName")
            )
            entries.put(candidate, albumId = row.contentString("AlbumID"))
            candidate
        }.toList()
    }

    override fun loadLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
        val base = loadBaseLyrics(candidate, deadlineNanos, cancellation)
        return loadEnrichment(base ?: candidate, deadlineNanos, cancellation) ?: base
    }

    override fun loadBaseLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
        cancellation.throwIfCancelled()
        if (entries.match(candidate) == null || !HASH.matches(candidate.sourceId)) return null
        val snapshot = candidate.candidateSnapshot()
        synchronized(lyricResources) { lyricResources.remove(snapshot) }
        val searchUrl = "https://krcs.kugou.com/search?ver=1&man=yes&client=mobi" +
            "&keyword=${queryEncode(candidate.candidateArtist + " - " + candidate.candidateTrack)}" +
            "&duration=${candidate.durationMs}&hash=${queryEncode(candidate.sourceId)}"
        val root = getJson(searchUrl, publicHeaders(), deadlineNanos, cancellation)
        requireCode(root, sourceName, "status", setOf("200"), required = true)
        requireCode(root, sourceName, "errcode", setOf("0", "200"))
        val rows = requiredArray(root, "candidates", sourceName)
        val lyric = rows.catalogObjects().take(MAX_CATALOG_ITEMS).firstOrNull { row ->
            row.contentString("id").isNotBlank() && row.contentString("accesskey").isNotBlank() &&
                kugouResourceMatches(candidate, row)
        } ?: return null
        val resource = LyricResource(lyric.contentString("id"), lyric.contentString("accesskey"))
        val encodedLrc = download(resource, "lrc", deadlineNanos, cancellation)
        val lrc = if (encodedLrc.isBlank()) "" else PublicWordLyricsFormats.decodeBase64Text(encodedLrc)
        if (!bodyMetadataMatches(candidate, lrc)) return null
        cancellation.throwIfCancelled()
        synchronized(lyricResources) { lyricResources[snapshot] = resource }
        return bundle(candidate, lrc)
    }

    override fun loadEnrichment(base: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
        cancellation.throwIfCancelled()
        if (entries.match(base) == null || base.isInstrumentalContent() || base.wordLyrics.isNotBlank()) return null
        val resource = synchronized(lyricResources) { lyricResources[base.candidateSnapshot()] } ?: return null
        val tracks = optionalEnrichment(base.contentKind() != LyricsKind.NONE, deadlineNanos, cancellation, PublicWordLyricsFormats.Tracks()) {
            val encodedKrc = download(resource, "krc", deadlineNanos, cancellation)
            if (encodedKrc.isBlank()) PublicWordLyricsFormats.Tracks() else PublicWordLyricsFormats.decodeKrc(encodedKrc, cancellation)
        }
        if (!metadataMatches(base, tracks.title, tracks.artist, tracks.album)) return null
        if (tracks.lineLyrics.isBlank() && tracks.wordLyrics.isBlank() &&
            tracks.translatedLyrics.isBlank() && tracks.romanizedLyrics.isBlank()) return null
        return bundle(base, base.lyrics.ifBlank { base.plainLyrics }.ifBlank { tracks.lineLyrics },
            tracks.wordLyrics.ifBlank { base.wordLyrics }, tracks.translatedLyrics.ifBlank { base.translatedLyrics },
            tracks.romanizedLyrics.ifBlank { base.romanizedLyrics })?.takeUnless { it == base }
    }

    private fun download(resource: LyricResource, format: String, deadlineNanos: Long, cancellation: LyricsCancellationSignal): String {
        cancellation.throwIfCancelled()
        val url = "https://lyrics.kugou.com/download?ver=1&client=pc&id=${queryEncode(resource.id)}" +
            "&accesskey=${queryEncode(resource.accessKey)}&fmt=$format&charset=utf8"
        val payload = getJson(url, publicHeaders(), deadlineNanos, cancellation)
        requireCode(payload, sourceName, "status", setOf("200"), required = true)
        requireCode(payload, sourceName, "errcode", setOf("0", "200"))
        requireCode(payload, sourceName, "error_code", setOf("0"))
        return payload.contentString("content")
    }

    override fun loadCover(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): String {
        cancellation.throwIfCancelled()
        val entry = entries.match(candidate) ?: return ""
        if (candidate.cover.isNotBlank()) return candidate.cover
        if (!DIGITS.matches(entry.albumId)) return ""
        val root = getJson("https://mobilecdn.kugou.com/api/v3/album/info?albumid=${queryEncode(entry.albumId)}", publicHeaders(), deadlineNanos, cancellation)
        requireCode(root, sourceName, "status", setOf("1"))
        requireCode(root, sourceName, "errcode", setOf("0"))
        return publicUrl(requiredObject(root, "data", sourceName).contentString("imgurl").replace("{size}", "0"))
    }

    private fun kugouResourceMatches(candidate: LyricsResult, row: JSONObject): Boolean {
        val hash = row.contentString("hash")
        if (hash.isNotBlank() && !hash.equals(candidate.sourceId, true)) return false
        val duration = row.contentString("duration").toLongOrNull() ?: 0L
        return metadataMatches(candidate, row.contentString("song"), row.contentString("singer"), "", duration)
    }

    private fun getJson(url: String, headers: Map<String, String>, deadline: Long, cancellation: LyricsCancellationSignal): JSONObject =
        publicJson(transport.getBytes(url, headers, deadline, cancellation), sourceName, cancellation)
}

internal class KuwoLyricsSource(
    private val transport: LyricsTransport = HttpLyricsTransport()
) : LyricsCatalogSource {
    override val sourceName: String = SOURCE_KUWO
    private val entries = CatalogResourceEntries()

    override fun search(request: LyricsCatalogSearchRequest, deadlineNanos: Long, cancellation: LyricsCancellationSignal): List<LyricsResult> {
        cancellation.throwIfCancelled()
        val url = "https://search.kuwo.cn/r.s?all=${queryEncode(request.text)}&ft=music&itemset=web_2013" +
            "&client=kt&pn=0&rn=20&rformat=json&encoding=utf8&pcjson=1"
        val root = publicJson(transport.getBytes(url, publicHeaders("https://www.kuwo.cn/"), deadlineNanos, cancellation), sourceName, cancellation)
        requireCode(root, sourceName, "code", setOf("0", "200"))
        requireCode(root, sourceName, "status", setOf("0", "200"))
        val rows = root.optJSONArray("abslist") ?: if (root.contentString("TOTAL") == "0") JSONArray() else schemaError(sourceName, "abslist")
        return rows.catalogObjects().take(MAX_CATALOG_ITEMS).mapNotNull { row ->
            cancellation.throwIfCancelled()
            val id = row.contentString("MUSICRID").removePrefix("MUSIC_")
            val title = row.contentString("SONGNAME").ifBlank { row.contentString("NAME") }
            val artist = row.contentString("ARTIST")
            if (!DIGITS.matches(id) || title.isBlank() || artist.isBlank()) return@mapNotNull null
            val candidate = LyricsResult(
                durationMs = durationTextMs(row.contentString("DURATION")),
                cover = kuwoCover(row.contentString("web_albumpic_short")),
                source = sourceName, sourceId = id, candidateTrack = title,
                candidateArtist = artist, candidateAlbum = row.contentString("ALBUM")
            )
            entries.put(candidate)
            candidate
        }.toList()
    }

    override fun loadLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
        val base = loadBaseLyrics(candidate, deadlineNanos, cancellation)
        return loadEnrichment(base ?: candidate, deadlineNanos, cancellation) ?: base
    }

    override fun loadBaseLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
        cancellation.throwIfCancelled()
        if (entries.match(candidate) == null || !DIGITS.matches(candidate.sourceId)) return null
        val url = "https://kuwo.cn/openapi/v1/www/lyric/getlyric?musicId=${queryEncode(candidate.sourceId)}"
        val root = publicJson(transport.getBytes(url, publicHeaders("https://kuwo.cn/"), deadlineNanos, cancellation), sourceName, cancellation)
        requireCode(root, sourceName, "code", setOf("200"), required = true)
        val data = requiredObject(root, "data", sourceName)
        if (!metadataMatches(candidate, data.contentString("songName"), data.contentString("artist"), data.contentString("album"))) return null
        val rows = requiredArray(data, "lrclist", sourceName)
        val lrc = rows.catalogObjects().mapNotNull { row ->
            cancellation.throwIfCancelled()
            val time = PublicWordLyricsFormats.secondsToMs(row.contentString("time")) ?: return@mapNotNull null
            val text = row.contentString("lineLyric")
            if (text.isBlank()) null else PublicWordLyricsFormats.lrcTimestamp(time) + text
        }.joinToString("\n")
        if (lrc.isBlank()) return null
        return bundle(candidate, lrc)
    }

    override fun loadEnrichment(base: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
        cancellation.throwIfCancelled()
        if (entries.match(base) == null || !DIGITS.matches(base.sourceId) ||
            base.isInstrumentalContent() || base.wordLyrics.isNotBlank() || base.contentKind() == LyricsKind.NONE) return null
        val wordUrl = "https://mlyric.kuwo.cn/mobi.s?f=web&type=lyric&lrcx=1&encode=utf8&rid=${queryEncode(base.sourceId)}"
        val words = optionalEnrichment(true, deadlineNanos, cancellation, "") {
            PublicWordLyricsFormats.decodeLrcx(transport.getBytes(wordUrl, publicHeaders(), deadlineNanos, cancellation), cancellation)
        }
        if (words.isBlank()) return null
        return base.copy(wordLyrics = words, lyricsKind = LyricsKind.SYNCHRONIZED)
    }
}

internal class MiguLyricsSource(
    private val transport: LyricsTransport = HttpLyricsTransport()
) : LyricsCatalogSource {
    override val sourceName: String = SOURCE_MIGU
    private val entries = CatalogResourceEntries()

    override fun search(request: LyricsCatalogSearchRequest, deadlineNanos: Long, cancellation: LyricsCancellationSignal): List<LyricsResult> {
        cancellation.throwIfCancelled()
        val url = "https://pd.musicapp.migu.cn/MIGUM2.0/v1.0/content/search_all.do?text=${queryEncode(request.text)}" +
            "&pageNo=1&pageSize=20&searchSwitch=${queryEncode(JSONObject().put("song", 1).toString())}&isCorrect=1"
        val root = publicJson(transport.getBytes(url, publicHeaders("https://m.music.migu.cn/"), deadlineNanos, cancellation), sourceName, cancellation)
        requireCode(root, sourceName, "code", setOf("000000"), required = true)
        val rows = requiredArray(requiredObject(root, "songResultData", sourceName), "result", sourceName)
        return rows.catalogObjects().take(MAX_CATALOG_ITEMS).mapNotNull { row ->
            cancellation.throwIfCancelled()
            val id = row.contentString("copyrightId")
            val title = row.contentString("name")
            val artist = row.optJSONArray("singers").catalogNames()
            if (id.isBlank() || title.isBlank() || artist.isBlank()) return@mapNotNull null
            val images = row.optJSONArray("imgItems").catalogObjects().toList()
            val cover = images.firstOrNull { it.contentString("imgSizeType") == "03" }?.contentString("img")
                ?: images.lastOrNull { it.contentString("img").isNotBlank() }?.contentString("img").orEmpty()
            val candidate = LyricsResult(
                // search_all does not report recording duration; never substitute the lookup duration.
                durationMs = 0L, cover = publicUrl(cover), source = sourceName, sourceId = id,
                candidateTrack = title, candidateArtist = artist,
                candidateAlbum = row.optJSONArray("albums")?.optJSONObject(0).contentString("name")
            )
            entries.put(candidate, lineUrl = miguResourceUrl(row.contentString("lyricUrl")),
                translationUrl = miguResourceUrl(row.contentString("trcUrl")), wordUrl = miguResourceUrl(row.contentString("mrcurl")))
            candidate
        }.toList()
    }

    override fun loadLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
        val base = loadBaseLyrics(candidate, deadlineNanos, cancellation)
        return loadEnrichment(base ?: candidate, deadlineNanos, cancellation) ?: base
    }

    override fun loadBaseLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
        cancellation.throwIfCancelled()
        val entry = entries.match(candidate) ?: return null
        entries.setBodyVerified(candidate, false)
        if (entry.lineUrl.isBlank()) return null
        val rawLrc = resourceText(entry.lineUrl, deadlineNanos, cancellation)
        if (!miguBodyMetadataMatches(candidate, rawLrc) || !bodyMetadataMatches(candidate, rawLrc)) return null
        val lrc = PublicWordLyricsFormats.stripMiguMetadata(rawLrc)
        cancellation.throwIfCancelled()
        entries.setBodyVerified(candidate, true)
        return bundle(candidate, lrc)
    }

    override fun loadEnrichment(base: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
        cancellation.throwIfCancelled()
        val entry = entries.match(base) ?: return null
        if (!entry.bodyVerified || base.isInstrumentalContent()) return null
        val hasBody = base.contentKind() != LyricsKind.NONE
        val translation = if (entry.translationUrl.isBlank()) "" else optionalEnrichment(hasBody, deadlineNanos, cancellation, "") {
            val raw = resourceText(entry.translationUrl, deadlineNanos, cancellation)
            if (!miguBodyMetadataMatches(base, raw) || !bodyMetadataMatches(base, raw)) ""
            else synchronizedLyricsOrEmpty(PublicWordLyricsFormats.stripMiguMetadata(raw))
        }
        val words = if (entry.wordUrl.isBlank() || base.wordLyrics.isNotBlank()) "" else optionalEnrichment(hasBody, deadlineNanos, cancellation, "") {
            PublicWordLyricsFormats.decodeMrc(resourceText(entry.wordUrl, deadlineNanos, cancellation), cancellation)
        }
        cancellation.throwIfCancelled()
        if (translation.isBlank() && words.isBlank()) return null
        val enriched = base.copy(translatedLyrics = translation.ifBlank { base.translatedLyrics },
            wordLyrics = words.ifBlank { base.wordLyrics },
            lyricsKind = if (words.isNotBlank()) LyricsKind.SYNCHRONIZED else base.contentKind())
        return enriched.takeIf { it.contentKind() != LyricsKind.NONE && it != base }
    }

    private fun resourceText(url: String, deadlineNanos: Long, cancellation: LyricsCancellationSignal): String = validateResourceText(
        publicText(transport.getBytes(url, publicHeaders(), deadlineNanos, cancellation), sourceName, cancellation), sourceName, cancellation
    )
}

internal class SodaLyricsSource(
    private val transport: LyricsTransport = HttpLyricsTransport()
) : LyricsCatalogSource {
    override val sourceName: String = SOURCE_SODA
    private val entries = CatalogResourceEntries()

    override fun search(request: LyricsCatalogSearchRequest, deadlineNanos: Long, cancellation: LyricsCancellationSignal): List<LyricsResult> {
        cancellation.throwIfCancelled()
        val url = "https://api.qishui.com/luna/search/track?q=${queryEncode(request.text)}&cursor=0&count=20&aid=386088"
        val root = publicJson(transport.getBytes(url, publicHeaders(), deadlineNanos, cancellation), sourceName, cancellation)
        requireCode(root, sourceName, "status_code", setOf("0"))
        requireCode(root, sourceName, "code", setOf("0"))
        val groups = requiredArray(root, "result_groups", sourceName)
        return groups.catalogObjects().filter { it.contentString("id") == "tracks" }
            .flatMap { group -> requiredArray(group, "data", sourceName).catalogObjects() }
            .take(MAX_CATALOG_ITEMS).mapNotNull { row ->
                cancellation.throwIfCancelled()
                val track = row.optJSONObject("entity")?.optJSONObject("track") ?: return@mapNotNull null
                val id = track.contentString("id")
                val title = track.contentString("name")
                val artist = track.optJSONArray("artists").catalogNames()
                if (id.isBlank() || title.isBlank() || artist.isBlank()) return@mapNotNull null
                val candidate = LyricsResult(
                    durationMs = reportedMs(track, "duration"), source = sourceName, sourceId = id,
                    candidateTrack = title, candidateArtist = artist,
                    candidateAlbum = track.optJSONObject("album").contentString("name"),
                    cover = sodaCover(track.optJSONObject("album")?.optJSONObject("url_cover"))
                )
                entries.put(candidate)
                candidate
            }.toList()
    }

    override fun loadLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
        cancellation.throwIfCancelled()
        if (entries.match(candidate) == null) return null
        val root = fetchTrack(candidate, deadlineNanos, cancellation)
        val seo = requiredObject(root, "seo_track", sourceName)
        val track = verifiedTrack(candidate, seo) ?: return null
        val lyric = root.optJSONObject("lyric")
        val content = lyric.contentString("content").ifBlank { seo.optJSONObject("lyric").contentString("content") }
        if (content.isBlank()) return null
        val tracks = PublicWordLyricsFormats.parseKrcText(content, cancellation)
        if (!metadataMatches(candidate, tracks.title, tracks.artist, tracks.album)) return null
        val cover = sodaCover(track.optJSONObject("album")?.optJSONObject("url_cover"))
        entries.setCover(candidate, cover)
        return bundle(candidate.copy(cover = cover.ifBlank { candidate.cover }), tracks.lineLyrics, tracks.wordLyrics,
            synchronizedLyricsOrEmpty(lyric?.optJSONObject("translations").contentString("cn")), tracks.romanizedLyrics)
    }

    override fun loadCover(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): String {
        cancellation.throwIfCancelled()
        val entry = entries.match(candidate) ?: return ""
        if (entry.verifiedCover.isNotBlank()) return entry.verifiedCover
        if (candidate.cover.isNotBlank()) return candidate.cover
        val root = fetchTrack(candidate, deadlineNanos, cancellation)
        val track = verifiedTrack(candidate, requiredObject(root, "seo_track", sourceName)) ?: return ""
        val cover = sodaCover(track.optJSONObject("album")?.optJSONObject("url_cover"))
        entries.setCover(candidate, cover)
        return cover
    }

    private fun fetchTrack(candidate: LyricsResult, deadline: Long, cancellation: LyricsCancellationSignal): JSONObject {
        val path = "/luna/h5/seo_track?track_id=${queryEncode(candidate.sourceId)}&device_platform=web"
        val bytes = try {
            transport.getBytes("https://beta-luna.douyin.com$path", publicHeaders(), deadline, cancellation)
        } catch (error: LyricsSourceException) {
            cancellation.throwIfCancelled()
            val ordinaryFailure = error.retryable && (error.reason == LyricsFailureReason.NETWORK ||
                error is LyricsHttpStatusException && error.statusCode >= 500)
            if (!ordinaryFailure) throw error
            transport.getBytes("https://api.qishui.com$path", publicHeaders(), deadline, cancellation)
        }
        val root = publicJson(bytes, sourceName, cancellation)
        requireCode(root, sourceName, "status_code", setOf("0"))
        requireCode(root, sourceName, "code", setOf("0"))
        return root
    }

    private fun verifiedTrack(candidate: LyricsResult, seo: JSONObject): JSONObject? {
        val track = requiredObject(seo, "track", sourceName)
        val id = track.contentString("id")
        if (id.isBlank()) schemaError(sourceName, "seo_track.track.id")
        if (id != candidate.sourceId) return null
        return track.takeIf { metadataMatches(candidate, it.contentString("name"), it.optJSONArray("artists").catalogNames(),
            it.optJSONObject("album").contentString("name"), reportedMs(it, "duration")) }
    }
}

private data class CatalogResourceEntry(
    val snapshot: LyricsCandidateSnapshot,
    val albumId: String = "",
    val lineUrl: String = "",
    val translationUrl: String = "",
    val wordUrl: String = "",
    val verifiedCover: String = "",
    val bodyVerified: Boolean = false
)

private class CatalogResourceEntries {
    private val values = LinkedHashMap<LyricsCandidateSnapshot, CatalogResourceEntry>(MAX_CATALOG_CONTEXTS, 0.75f, true)
    @Synchronized fun put(candidate: LyricsResult, albumId: String = "", lineUrl: String = "", translationUrl: String = "", wordUrl: String = "") {
        val key = candidate.candidateSnapshot()
        val previous = values[key]
        val bodyVerified = previous?.bodyVerified == true && previous.lineUrl == lineUrl &&
            previous.translationUrl == translationUrl && previous.wordUrl == wordUrl
        values[key] = CatalogResourceEntry(key, albumId, lineUrl, translationUrl, wordUrl, bodyVerified = bodyVerified)
        while (values.size > MAX_CATALOG_CONTEXTS) values.remove(values.keys.first())
    }
    @Synchronized fun match(candidate: LyricsResult): CatalogResourceEntry? = values[candidate.candidateSnapshot()]
    @Synchronized fun setBodyVerified(candidate: LyricsResult, verified: Boolean) {
        val entry = match(candidate) ?: return
        values[candidate.candidateSnapshot()] = entry.copy(bodyVerified = verified)
    }
    @Synchronized fun setCover(candidate: LyricsResult, cover: String) {
        val entry = match(candidate) ?: return
        if (cover.isNotBlank()) values[candidate.candidateSnapshot()] = entry.copy(verifiedCover = cover)
    }
}

private inline fun <T> optionalEnrichment(
    hasBody: Boolean, deadlineNanos: Long, cancellation: LyricsCancellationSignal, fallback: T, block: () -> T
): T {
    cancellation.throwIfCancelled()
    if (hasBody && System.nanoTime() >= deadlineNanos) return fallback
    return try {
        block().also { cancellation.throwIfCancelled() }
    } catch (error: CancellationException) {
        throw error
    } catch (error: LyricsSourceException) {
        cancellation.throwIfCancelled()
        if (!hasBody) throw error
        fallback
    }
}

private fun bundle(candidate: LyricsResult, text: String, words: String = "", translated: String = "", romanized: String = ""): LyricsResult? {
    val clean = cleanLyrics(text)
    val kind = classifyLyrics(clean)
    if (kind == LyricsKind.NONE && words.isBlank()) return null
    return candidate.copy(
        lyrics = clean.takeIf { kind == LyricsKind.SYNCHRONIZED }.orEmpty(),
        plainLyrics = clean.takeIf { kind == LyricsKind.PLAIN }.orEmpty(),
        wordLyrics = words, translatedLyrics = translated, romanizedLyrics = romanized,
        lyricsKind = if (words.isNotBlank()) LyricsKind.SYNCHRONIZED else kind
    )
}

private fun publicJson(bytes: ByteArray, source: String, cancellation: LyricsCancellationSignal): JSONObject {
    cancellation.throwIfCancelled()
    try {
        val text = Charsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT)
            .onUnmappableCharacter(CodingErrorAction.REPORT).decode(ByteBuffer.wrap(bytes)).toString().trim().removePrefix("\uFEFF").trim()
        val tokener = JSONTokener(text)
        val root = tokener.nextValue()
        if (root is JSONObject && tokener.nextClean() == '\u0000') {
            cancellation.throwIfCancelled()
            return root
        }
    } catch (error: CancellationException) {
        throw error
    } catch (error: Exception) {
        throw LyricsSourceException(LyricsFailureReason.SERVER, false, "$source returned invalid JSON")
    }
    schemaError(source, "JSON object")
}

private fun publicText(bytes: ByteArray, source: String, cancellation: LyricsCancellationSignal): String {
    cancellation.throwIfCancelled()
    if (bytes.size > PublicWordLyricsFormats.MAX_DECODED_BYTES) schemaError(source, "bounded resource payload")
    return try {
        Charsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT)
            .onUnmappableCharacter(CodingErrorAction.REPORT).decode(ByteBuffer.wrap(bytes)).toString().removePrefix("\uFEFF")
    } catch (_: Exception) {
        schemaError(source, "UTF-8 resource payload")
    }
}

private fun validateResourceText(value: String, source: String, cancellation: LyricsCancellationSignal): String {
    cancellation.throwIfCancelled()
    val text = value.trim()
    if (text.startsWith("{")) {
        val root = publicJson(text.toByteArray(), source, cancellation)
        requireCode(root, source, "code", setOf("000000"))
        requireCode(root, source, "status", setOf("200"))
        schemaError(source, "text lyrics resource")
    }
    if (text.startsWith("<")) schemaError(source, "text lyrics resource")
    return value
}

private fun requireCode(root: JSONObject, source: String, key: String, accepted: Set<String>, required: Boolean = false) {
    if (!root.has(key)) {
        if (required) schemaError(source, key)
        return
    }
    val code = root.contentString(key)
    if (code in accepted) return
    val numeric = code.toIntOrNull()
    val reason = when (numeric) {
        429, -462 -> LyricsFailureReason.RATE_LIMIT
        408 -> LyricsFailureReason.DEADLINE
        else -> LyricsFailureReason.SERVER
    }
    throw LyricsSourceException(reason, numeric == 408 || numeric == 429 || numeric == -462 || numeric != null && numeric >= 500,
        "$source rejected request ($key=${numeric ?: "invalid"})")
}

private fun requiredArray(root: JSONObject, key: String, source: String): JSONArray = root.optJSONArray(key) ?: schemaError(source, key)
private fun requiredObject(root: JSONObject, key: String, source: String): JSONObject = root.optJSONObject(key) ?: schemaError(source, key)
private fun schemaError(source: String, field: String): Nothing = throw LyricsSourceException(LyricsFailureReason.SERVER, false, "$source response missing $field")
private fun JSONArray?.catalogObjects(): Sequence<JSONObject> = sequence {
    if (this@catalogObjects != null) for (index in 0 until length()) optJSONObject(index)?.let { yield(it) }
}
private fun JSONArray?.catalogNames(): String = catalogObjects().map { it.contentString("name") }.filter(String::isNotBlank).joinToString("/")
private fun queryEncode(value: String): String = URLEncoder.encode(value, Charsets.UTF_8.name()).replace("+", "%20")
private fun publicHeaders(referer: String = ""): Map<String, String> = buildMap {
    put("Accept", "application/json, text/plain, */*")
    put("User-Agent", "Mozilla/5.0")
    if (referer.isNotBlank()) put("Referer", referer)
}
private fun publicUrl(value: String): String {
    val text = value.trim().replaceFirst(Regex("^http://", RegexOption.IGNORE_CASE), "https://")
    return runCatching { URL(text).takeIf { it.protocol == "https" && it.host.isNotBlank() && it.userInfo == null }?.toExternalForm().orEmpty() }.getOrDefault("")
}
private fun miguResourceUrl(value: String): String {
    if (value.isBlank()) return ""
    val result = publicUrl(value)
    if (result.isBlank()) schemaError(SOURCE_MIGU, "resource URL")
    val host = URL(result).host.lowercase(Locale.ROOT)
    if (host != "migu.cn" && !host.endsWith(".migu.cn")) schemaError(SOURCE_MIGU, "trusted resource URL")
    return result
}
private fun kuwoCover(short: String): String {
    if (short.isBlank()) return ""
    if (short.startsWith("https://") || short.startsWith("http://")) return publicUrl(short)
    val parts = short.trim().split('/', limit = 2)
    if (parts.size != 2 || parts[1].contains("..")) return ""
    return publicUrl("https://img1.kuwo.cn/star/albumcover/0/${parts[1]}")
}
private fun sodaCover(value: JSONObject?): String {
    value ?: return ""
    val uri = value.contentString("uri")
    if (uri.isBlank()) return ""
    val urls = value.optJSONArray("urls")
    val base = (0 until (urls?.length() ?: 0)).mapNotNull { index -> urls?.optString(index)?.takeIf { it.startsWith("https://") } }
        .firstOrNull() ?: "https://p3-luna.douyinpic.com/img/"
    val template = value.contentString("template_prefix").ifBlank { "tplv-b829550vbb" }
    return publicUrl("${base.trimEnd('/')}/$uri~$template-resize:0:0.jpg")
}
private fun durationTextMs(value: String): Long {
    PublicWordLyricsFormats.secondsToMs(value)?.let { return it }
    val parts = value.trim().split(':')
    if (parts.size != 2) return 0L
    val minutes = parts[0].toLongOrNull()?.takeIf { it in 0..1_440L } ?: return 0L
    val seconds = PublicWordLyricsFormats.secondsToMs(parts[1])?.takeIf { it < 60_000L } ?: return 0L
    return minutes * 60_000L + seconds
}
private fun reportedMs(root: JSONObject, key: String): Long = root.contentString(key).toLongOrNull()?.takeIf { it in 1L..86_400_000L } ?: 0L
private fun metadataMatches(candidate: LyricsResult, title: String = "", artist: String = "", album: String = "", duration: Long = 0L): Boolean {
    if (title.isNotBlank()) {
        val known = titleIdentity(candidate.candidateTrack)
        val returned = titleIdentity(title)
        if (known.base != returned.base || known.versionQualifiers != returned.versionQualifiers || known.featuredArtists != returned.featuredArtists) return false
    }
    if (artist.isNotBlank() && artistNames(artist).toSet() != artistNames(candidate.candidateArtist).toSet()) return false
    if (album.isNotBlank() && candidate.candidateAlbum.isNotBlank() && normalizedAlbumCore(album) != normalizedAlbumCore(candidate.candidateAlbum)) return false
    return duration <= 0L || candidate.durationMs <= 0L || abs(duration - candidate.durationMs) <= 2_000L
}
private fun bodyMetadataMatches(candidate: LyricsResult, lyrics: String): Boolean {
    fun tag(name: String): String = Regex("(?im)^\\[$name:([^\\r\\n]*?)]$").find(lyrics)?.groupValues?.get(1).orEmpty().trim()
    return metadataMatches(candidate, tag("ti"), tag("ar"), tag("al"))
}
private fun miguBodyMetadataMatches(candidate: LyricsResult, lyrics: String): Boolean {
    fun metadata(name: String): String = Regex("(?m)^(?:\\[\\d{1,3}:\\d{2}(?:[.:]\\d{1,3})?])*\\s*$name(?:\\s+|[:：]\\s*)([^\\r\\n]*)")
        .find(lyrics)?.groupValues?.get(1).orEmpty().trim()
    return metadataMatches(candidate, metadata("歌曲名"), metadata("歌手名"))
}
private val HASH = Regex("[0-9a-fA-F]{32}")
private val DIGITS = Regex("[0-9]+")
private const val MAX_CATALOG_ITEMS = 40
private const val MAX_CATALOG_CONTEXTS = 256
