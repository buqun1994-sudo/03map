package com.icar03.content.runtime.lyrics

// Migrated from 03lyrics; original source SHA-256: 1cb6fa12f638c3e96e64fcfdf1082582b684577738cdee40e0c5ac29bd65a55c.
// Upstream provenance and scoped adaptations: PROVENANCE.json.

import android.util.Base64
import org.json.JSONArray
import org.json.JSONObject
import org.json.JSONTokener
import java.io.ByteArrayOutputStream
import java.io.IOException
import java.net.HttpURLConnection
import java.net.SocketTimeoutException
import java.net.URL
import java.net.URLEncoder
import java.nio.ByteBuffer
import java.nio.charset.Charset
import java.nio.charset.CodingErrorAction
import java.util.concurrent.CancellationException
import java.util.concurrent.TimeUnit

internal class LrcLibLyricsSource(
    private val transport: LyricsTransport = HttpLyricsTransport()
) : LyricsExactAndFallbackSource {
    override val sourceName: String = SOURCE_LRCLIB

    override fun exact(
        query: LyricsLookup,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): LyricsResult? {
        val terms = LyricsSearchPlanner.lrcLibExactTerms(query)
        val url = buildString {
            append("https://lrclib.net/api/get")
            append("?track_name=${encode(terms.track)}")
            append("&artist_name=${encode(terms.artist)}")
            if (terms.album.isNotBlank()) append("&album_name=${encode(terms.album)}")
            append("&duration=${encode((terms.durationMs / 1000.0).toString())}")
        }
        val item = try {
            parseJsonFlexible(transport.getBytes(url, JSON_HEADERS, deadlineNanos, cancellation))
        } catch (error: LyricsHttpStatusException) {
            if (error.statusCode == HttpURLConnection.HTTP_NOT_FOUND) return null
            throw error
        }
        requireSuccessfulResponse(item, sourceName, setOf(200, 0), "code", "statusCode")
        return result(item)
    }

    override fun fallback(
        query: LyricsLookup,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): List<LyricsResult> {
        val terms = LyricsSearchPlanner.primaryTerms(query)
        val url = "https://lrclib.net/api/search" +
            "?track_name=${encode(terms.track)}&artist_name=${encode(terms.artist)}"
        val payload = parseJsonValueFlexible(transport.getBytes(url, JSON_HEADERS, deadlineNanos, cancellation))
        if (payload is JSONObject) {
            requireSuccessfulResponse(payload, sourceName, setOf(200, 0), "code", "statusCode")
        }
        val list = payload as? JSONArray
            ?: throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Invalid LRCLIB search response")
        return buildList {
            for (index in 0 until list.length()) {
                val item = list.optJSONObject(index) ?: continue
                result(item)?.let(::add)
            }
        }
    }

    override fun loadLyrics(
        candidate: LyricsResult,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): LyricsResult? {
        cancellation.throwIfCancelled()
        val kind = classifyLyrics(candidate.lyrics)
        return when {
            candidate.isInstrumentalContent() -> candidate.copy(lyricsKind = LyricsKind.NONE)
            kind == LyricsKind.SYNCHRONIZED -> candidate
            kind == LyricsKind.PLAIN -> candidate.copy(
                lyrics = "", plainLyrics = candidate.lyrics, lyricsKind = LyricsKind.PLAIN
            )
            candidate.plainLyrics.isNotBlank() -> candidate.copy(lyricsKind = LyricsKind.PLAIN)
            else -> null
        }
    }

    private fun result(item: JSONObject): LyricsResult? {
        val synced = cleanLyrics(item.contentString("syncedLyrics"))
        val lyrics = synced.takeIf { classifyLyrics(it) == LyricsKind.SYNCHRONIZED }.orEmpty()
        val plainLyrics = cleanLyrics(item.contentString("plainLyrics")).ifBlank {
            synced.takeIf { classifyLyrics(it) == LyricsKind.PLAIN }.orEmpty()
        }
        val instrumental = item.opt("instrumental") == true
        if (lyrics.isEmpty() && plainLyrics.isEmpty() && !instrumental) return null
        return LyricsResult(
            lyrics = lyrics,
            plainLyrics = plainLyrics,
            durationMs = (item.optDouble("duration", 0.0) * 1000.0).toLong(),
            source = sourceName,
            sourceId = item.contentString("id"),
            candidateTrack = item.contentString("trackName"),
            candidateArtist = item.contentString("artistName"),
            candidateAlbum = item.contentString("albumName"),
            instrumental = instrumental,
            lyricsKind = when {
                instrumental -> LyricsKind.NONE
                lyrics.isNotEmpty() -> LyricsKind.SYNCHRONIZED
                else -> LyricsKind.PLAIN
            }
        )
    }
}

internal class QqLyricsSource(
    private val transport: LyricsTransport = HttpLyricsTransport(),
    private val wordSource: QqWordLyricsSource? = QqWordLyricsSource(transport)
) : LyricsCatalogSource {
    override val sourceName: String = SOURCE_QQ
    private val pendingTracks = PendingPublicLyricsTracks()
    private val songIds = object : LinkedHashMap<String, Long>(16, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<String, Long>?): Boolean =
            size > 128
    }

    override fun search(
        request: LyricsCatalogSearchRequest,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): List<LyricsResult> {
        val searchUrl = "https://c.y.qq.com/soso/fcgi-bin/search_for_qq_cp" +
            "?format=json&p=1&n=8&w=${encode(request.text)}"
        val root = parseJsonFlexible(transport.getBytes(searchUrl, headers(), deadlineNanos, cancellation))
        requireSuccessfulResponse(root, sourceName, setOf(0), "code", "subcode")
        val songs = root.optJSONObject("data")
            ?.optJSONObject("song")
            ?.optJSONArray("list") ?: return emptyList()
        return buildList {
            for (index in 0 until songs.length()) {
                val song = songs.optJSONObject(index) ?: continue
                val songMid = song.contentString("songmid")
                if (songMid.isBlank()) continue
                val songId = song.contentString("songid").toLongOrNull()?.takeIf { it > 0L }
                synchronized(songIds) {
                    if (songId != null) songIds[songMid] = songId else songIds.remove(songMid)
                }
                add(
                    LyricsResult(
                        durationMs = song.optLong("interval", 0L) * 1000L,
                        cover = cover(song),
                        source = sourceName,
                        sourceId = songMid,
                        candidateTrack = song.contentString("songname").ifBlank {
                            song.contentString("songorig")
                        },
                        candidateArtist = song.optJSONArray("singer").joinNames("name"),
                        candidateAlbum = song.contentString("albumname")
                    )
                )
            }
        }
    }

    override fun loadLyrics(
        candidate: LyricsResult,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): LyricsResult? {
        val base = loadBaseLyrics(candidate, deadlineNanos, cancellation)
        return loadEnrichment(base ?: candidate, deadlineNanos, cancellation) ?: base
    }

    override fun loadBaseLyrics(
        candidate: LyricsResult,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): LyricsResult? {
        cancellation.throwIfCancelled()
        if (candidate.sourceId.isBlank()) return null
        pendingTracks.clear(candidate)
        val lyricUrl = "https://c.y.qq.com/lyric/fcgi-bin/fcg_query_lyric_new.fcg" +
            "?songmid=${encode(candidate.sourceId)}&format=json&nobase64=1&g_tk=5381"
        val lyricRoot = parseJsonFlexible(
            transport.getBytes(lyricUrl, headers(), deadlineNanos, cancellation)
        )
        // QQ's -1901 is an answered no-lyrics result, not a transient source failure.
        requireSuccessfulResponse(lyricRoot, sourceName, setOf(0, -1901), "code", "retcode")
        cancellation.throwIfCancelled()
        val lyrics = decodeQqLyric(lyricRoot.contentString("lyric"))
        val translatedLyrics = decodeQqLyric(lyricRoot.contentString("trans"))
        val kind = classifyLyrics(lyrics)
        val markerResult = candidate.copy(lyrics = lyrics, plainLyrics = "", translatedLyrics = translatedLyrics)
        if (markerResult.isInstrumentalContent()) return markerResult.copy(lyricsKind = LyricsKind.NONE)
        if (kind == LyricsKind.NONE) {
            pendingTracks.remember(markerResult.copy(lyrics = "", plainLyrics = "", wordLyrics = "", lyricsKind = LyricsKind.NONE))
            return null
        }
        cancellation.throwIfCancelled()
        return candidate.copy(
            lyrics = lyrics.takeIf { kind == LyricsKind.SYNCHRONIZED }.orEmpty(),
            plainLyrics = lyrics.takeIf { kind == LyricsKind.PLAIN } ?: candidate.plainLyrics,
            translatedLyrics = translatedLyrics,
            lyricsKind = kind
        )
    }

    override fun loadEnrichment(
        base: LyricsResult,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): LyricsResult? {
        cancellation.throwIfCancelled()
        val body = pendingTracks.restore(base)
        if (body.isInstrumentalContent() || usableWordLyrics(body.wordLyrics).isNotEmpty()) return null
        val songId = synchronized(songIds) { songIds[body.sourceId] } ?: return null
        val source = wordSource ?: return null
        val bundle = optionalPublicEnrichment(body, deadlineNanos, cancellation) {
            source.load(songId, deadlineNanos, cancellation)
        } ?: return null
        val words = usableWordLyrics(bundle.wordLyrics)
        val kind = body.contentKind()
        if (kind == LyricsKind.NONE && words.isEmpty()) return null
        return body.copy(
            translatedLyrics = cleanLyrics(bundle.translatedLyrics).ifBlank { body.translatedLyrics },
            romanizedLyrics = cleanLyrics(bundle.romanizedLyrics).ifBlank { body.romanizedLyrics },
            wordLyrics = words,
            lyricsKind = if (words.isNotEmpty()) LyricsKind.SYNCHRONIZED else kind
        ).takeUnless { it == base }
    }

    private fun cover(song: JSONObject): String {
        val albumMid = song.contentString("albummid")
        val albumId = song.optLong("albumid", 0L)
        return when {
            albumMid.isNotBlank() && !albumMid.all(Char::isDigit) ->
                "https://y.gtimg.cn/music/photo_new/T002R800x800M000$albumMid.jpg"
            albumId > 0L ->
                "https://y.gtimg.cn/music/photo/album_500/${albumId % 100}/500_albumpic_${albumId}_0.jpg"
            else -> ""
        }
    }

    private fun headers(): Map<String, String> = mapOf(
        "Accept" to "application/json",
        "Referer" to "https://y.qq.com/",
        "User-Agent" to USER_AGENT
    )
}

internal class NetEaseLyricsSource(
    private val transport: LyricsTransport = HttpLyricsTransport()
) : LyricsCatalogSource {
    override val sourceName: String = SOURCE_NETEASE
    private val pendingTracks = PendingPublicLyricsTracks()

    override fun search(
        request: LyricsCatalogSearchRequest,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): List<LyricsResult> {
        val searchUrl = "https://music.163.com/api/search/get/web" +
            "?type=1&limit=8&s=${encode(request.text)}"
        val root = parseJsonFlexible(transport.getBytes(searchUrl, headers(), deadlineNanos, cancellation))
        requireSuccessfulResponse(root, sourceName, setOf(200), "code")
        val songs = root.optJSONObject("result")?.optJSONArray("songs") ?: return emptyList()
        return buildList {
            for (index in 0 until songs.length()) {
                val song = songs.optJSONObject(index) ?: continue
                val songId = song.optLong("id", 0L)
                if (songId <= 0L) continue
                val album = song.optJSONObject("album") ?: song.optJSONObject("al")
                add(
                    LyricsResult(
                        durationMs = song.optLong("duration", song.optLong("dt", 0L)),
                        cover = song.optJSONObject("album").contentString("picUrl").ifBlank {
                            song.optJSONObject("al").contentString("picUrl")
                        },
                        source = sourceName,
                        sourceId = songId.toString(),
                        candidateTrack = song.contentString("name"),
                        candidateArtist = (song.optJSONArray("artists") ?: song.optJSONArray("ar"))
                            .joinNames("name"),
                        candidateAlbum = album.contentString("name")
                    )
                )
            }
        }
    }

    override fun loadLyrics(
        candidate: LyricsResult,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): LyricsResult? {
        val base = loadBaseLyrics(candidate, deadlineNanos, cancellation)
        return loadEnrichment(base ?: candidate, deadlineNanos, cancellation) ?: base
    }

    override fun loadBaseLyrics(
        candidate: LyricsResult,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): LyricsResult? {
        cancellation.throwIfCancelled()
        val songId = candidate.sourceId.toLongOrNull()?.takeIf { it > 0L } ?: return null
        pendingTracks.clear(candidate)
        val lyricUrl = "https://music.163.com/api/song/lyric?os=pc&id=$songId" +
            "&lv=-1&kv=-1&tv=-1&rv=-1"
        val lyricRoot = parseJsonFlexible(
            transport.getBytes(lyricUrl, headers(), deadlineNanos, cancellation)
        )
        requireSuccessfulResponse(lyricRoot, sourceName, setOf(200), "code")
        cancellation.throwIfCancelled()
        val lyrics = cleanLyrics(lyricRoot.optJSONObject("lrc").contentString("lyric"))
        val kind = classifyLyrics(lyrics)
        val instrumental = lyricRoot.opt("pureMusic") == true
        if (instrumental) return candidate.copy(
            lyrics = lyrics, plainLyrics = "", instrumental = true, lyricsKind = LyricsKind.NONE)
        val translatedLyrics = cleanLyrics(lyricRoot.optJSONObject("tlyric").contentString("lyric"))
        val romanizedLyrics = cleanLyrics(lyricRoot.optJSONObject("romalrc").contentString("lyric"))
        val rawWords = cleanLyrics(lyricRoot.optJSONObject("yrc").contentString("lyric"))
        val markerResult = candidate.copy(lyrics = lyrics, plainLyrics = "", translatedLyrics = translatedLyrics,
            romanizedLyrics = romanizedLyrics, wordLyrics = rawWords)
        if (markerResult.isInstrumentalContent()) return markerResult.copy(lyricsKind = LyricsKind.NONE)
        // Tracks returned with the line body cost no additional network wait.
        val wordLyrics = usableWordLyrics(rawWords)
        if (kind == LyricsKind.NONE && wordLyrics.isEmpty()) {
            pendingTracks.remember(markerResult.copy(lyrics = "", plainLyrics = "", wordLyrics = "", lyricsKind = LyricsKind.NONE))
            return null
        }
        cancellation.throwIfCancelled()
        return candidate.copy(
            lyrics = lyrics.takeIf { kind == LyricsKind.SYNCHRONIZED }.orEmpty(),
            plainLyrics = lyrics.takeIf { kind == LyricsKind.PLAIN } ?: candidate.plainLyrics,
            translatedLyrics = translatedLyrics,
            romanizedLyrics = romanizedLyrics,
            wordLyrics = wordLyrics,
            lyricsKind = if (wordLyrics.isNotEmpty()) LyricsKind.SYNCHRONIZED else kind
        )
    }

    override fun loadEnrichment(
        base: LyricsResult,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): LyricsResult? {
        cancellation.throwIfCancelled()
        val body = pendingTracks.restore(base)
        if (body.isInstrumentalContent() || usableWordLyrics(body.wordLyrics).isNotEmpty()) return null
        val songId = body.sourceId.toLongOrNull()?.takeIf { it > 0L } ?: return null
        val words = optionalPublicEnrichment(body, deadlineNanos, cancellation) {
            val wordUrl = "https://music.163.com/api/song/lyric/v1?id=$songId&yv=-1"
            val wordRoot = parseJsonFlexible(
                transport.getBytes(wordUrl, headers(), deadlineNanos, cancellation)
            )
            requireSuccessfulResponse(wordRoot, sourceName, setOf(200), "code")
            usableWordLyrics(wordRoot.optJSONObject("yrc").contentString("lyric"))
        }.orEmpty()
        if (words.isEmpty()) return null
        return body.copy(wordLyrics = words, lyricsKind = LyricsKind.SYNCHRONIZED)
    }

    override fun loadCover(
        candidate: LyricsResult,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): String {
        cancellation.throwIfCancelled()
        if (candidate.cover.isNotBlank()) return candidate.cover
        val songId = candidate.sourceId.toLongOrNull()?.takeIf { it > 0L } ?: return ""
        val ids = JSONArray().put(songId).toString()
        val url = "https://music.163.com/api/song/detail/?id=$songId&ids=${encode(ids)}"
        val root = parseJsonFlexible(transport.getBytes(url, headers(), deadlineNanos, cancellation))
        requireSuccessfulResponse(root, sourceName, setOf(200), "code")
        val songs = root.optJSONArray("songs") ?: return ""
        for (index in 0 until songs.length()) {
            val song = songs.optJSONObject(index) ?: continue
            if (song.contentString("id").toLongOrNull() != songId) continue
            return song.optJSONObject("album").contentString("picUrl").ifBlank {
                song.optJSONObject("al").contentString("picUrl")
            }
        }
        return ""
    }

    private fun headers(): Map<String, String> = mapOf(
        "Accept" to "application/json",
        "Referer" to "https://music.163.com/",
        "User-Agent" to USER_AGENT
    )
}

internal interface LyricsTransport {
    fun getText(
        url: String,
        headers: Map<String, String>,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): String

    fun getBytes(
        url: String,
        headers: Map<String, String>,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): ByteArray
}

internal class HttpLyricsTransport(
    private val connectTimeoutMs: Int = CONNECT_TIMEOUT_MS,
    private val readTimeoutMs: Int = READ_TIMEOUT_MS,
    private val maximumResponseBytes: Int = MAX_RESPONSE_BYTES,
    private val followRedirects: Boolean = true
) : LyricsTransport {
    override fun getText(
        url: String,
        headers: Map<String, String>,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): String = getBytes(url, headers, deadlineNanos, cancellation).toString(Charsets.UTF_8)

    override fun getBytes(
        url: String,
        headers: Map<String, String>,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): ByteArray {
        cancellation.throwIfCancelled()
        val connection = URL(url).openConnection() as HttpURLConnection
        val cancellationRegistration = cancellation.register(connection::disconnect)
        try {
            val remainingMs = remainingTimeoutMs(deadlineNanos, cancellation)
            connection.requestMethod = "GET"
            connection.connectTimeout = minOf(connectTimeoutMs, remainingMs)
            connection.readTimeout = minOf(readTimeoutMs, remainingMs)
            connection.instanceFollowRedirects = followRedirects
            connection.useCaches = true
            headers.forEach(connection::setRequestProperty)
            connection.connect()
            connection.readTimeout = minOf(readTimeoutMs, remainingTimeoutMs(deadlineNanos, cancellation))
            val status = connection.responseCode
            remainingTimeoutMs(deadlineNanos, cancellation)
            if (status !in 200..299) throw httpFailure(status)
            connection.inputStream.use { input ->
                val output = ByteArrayOutputStream()
                val buffer = ByteArray(8192)
                var total = 0
                while (true) {
                    connection.readTimeout = minOf(readTimeoutMs, remainingTimeoutMs(deadlineNanos, cancellation))
                    val read = input.read(buffer)
                    remainingTimeoutMs(deadlineNanos, cancellation)
                    if (read < 0) break
                    total += read
                    if (total > maximumResponseBytes) {
                        throw LyricsSourceException(
                            reason = LyricsFailureReason.NETWORK,
                            retryable = false,
                            message = "Lyrics response exceeds configured limit"
                        )
                    }
                    output.write(buffer, 0, read)
                }
                return output.toByteArray()
            }
        } catch (error: CancellationException) {
            throw error
        } catch (error: LyricsSourceException) {
            throw error
        } catch (error: SocketTimeoutException) {
            throw LyricsSourceException(
                reason = LyricsFailureReason.DEADLINE,
                retryable = true,
                message = "Lyrics source timed out",
                cause = error
            )
        } catch (error: IOException) {
            cancellation.throwIfCancelled()
            throw LyricsSourceException(
                reason = LyricsFailureReason.NETWORK,
                retryable = true,
                message = "Lyrics source network failure",
                cause = error
            )
        } finally {
            cancellationRegistration.close()
            connection.disconnect()
        }
    }

    private fun remainingTimeoutMs(
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): Int {
        cancellation.throwIfCancelled()
        val remaining = deadlineNanos - System.nanoTime()
        if (remaining <= 0L) {
            throw LyricsSourceException(
                reason = LyricsFailureReason.DEADLINE,
                retryable = true,
                message = "Lyrics lookup deadline reached"
            )
        }
        return TimeUnit.NANOSECONDS.toMillis(remaining)
            .coerceAtLeast(1L)
            .coerceAtMost(Int.MAX_VALUE.toLong())
            .toInt()
    }

    private fun httpFailure(statusCode: Int): LyricsHttpStatusException {
        val reason = when {
            statusCode == 429 -> LyricsFailureReason.RATE_LIMIT
            statusCode >= 500 -> LyricsFailureReason.SERVER
            else -> LyricsFailureReason.NETWORK
        }
        return LyricsHttpStatusException(
            statusCode = statusCode,
            reason = reason,
            retryable = statusCode == 408 || statusCode == 429 || statusCode >= 500
        )
    }
}

internal class LyricsHttpStatusException(
    val statusCode: Int,
    reason: LyricsFailureReason,
    retryable: Boolean
) : LyricsSourceException(reason, retryable, "HTTP $statusCode")

private fun JSONArray?.joinNames(key: String): String {
    if (this == null) return ""
    return buildList {
        for (index in 0 until length()) {
            optJSONObject(index)?.contentString(key)?.takeIf { it.isNotBlank() }?.let(::add)
        }
    }.joinToString("/")
}

private fun parseJsonFlexible(bytes: ByteArray): JSONObject = parseJsonValueFlexible(bytes) as? JSONObject
    ?: throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Expected lyrics JSON object")

private fun parseJsonValueFlexible(bytes: ByteArray): Any {
    for (charset in listOf(Charsets.UTF_8, Charset.forName("GBK"))) {
        val text = runCatching {
            charset.newDecoder()
                .onMalformedInput(CodingErrorAction.REPORT)
                .onUnmappableCharacter(CodingErrorAction.REPORT)
                .decode(ByteBuffer.wrap(bytes)).toString().trim().removePrefix("\uFEFF").trim()
        }.getOrNull() ?: continue
        val payload = JSONP_WRAPPER.matchEntire(text)?.groupValues?.get(1) ?: text
        val root = runCatching {
            val tokener = JSONTokener(payload)
            tokener.nextValue().takeIf {
                (it is JSONObject || it is JSONArray) && tokener.nextClean() == '\u0000'
            }
        }.getOrNull()
        if (root != null) return root
    }
    throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Invalid lyrics JSON response")
}

private fun requireSuccessfulResponse(
    root: JSONObject,
    source: String,
    acceptedCodes: Set<Int>,
    vararg keys: String
) {
    keys.forEach { key ->
        if (!root.has(key)) return@forEach
        val code = root.contentString(key).toIntOrNull()
        if (code in acceptedCodes) return@forEach
        val reason = when (code) {
            429, -462 -> LyricsFailureReason.RATE_LIMIT
            408 -> LyricsFailureReason.DEADLINE
            else -> LyricsFailureReason.SERVER
        }
        throw LyricsSourceException(
            reason, code == 408 || code == 429 || code == -462 || (code != null && code >= 500),
            "$source rejected lyrics request ($key=$code)"
        )
    }
}

// A blank main track can still have auxiliary tracks needed by the word-only compatibility path.
private class PendingPublicLyricsTracks {
    private val values = object : LinkedHashMap<LyricsCandidateSnapshot, LyricsResult>(16, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<LyricsCandidateSnapshot, LyricsResult>?): Boolean =
            size > 128
    }

    @Synchronized fun clear(candidate: LyricsResult) { values.remove(candidate.candidateSnapshot()) }

    @Synchronized fun remember(body: LyricsResult) {
        if (body.translatedLyrics.isNotBlank() || body.romanizedLyrics.isNotBlank()) {
            values[body.candidateSnapshot()] = body
        }
    }

    @Synchronized fun restore(base: LyricsResult): LyricsResult =
        if (base.hasBodyPayload() || base.isInstrumentalContent()) base
        else values[base.candidateSnapshot()] ?: base
}

private inline fun <T> optionalPublicEnrichment(
    base: LyricsResult,
    deadlineNanos: Long,
    cancellation: LyricsCancellationSignal,
    block: () -> T
): T? {
    cancellation.throwIfCancelled()
    val hasBody = base.contentKind() != LyricsKind.NONE
    if (hasBody && System.nanoTime() >= deadlineNanos) return null
    return try {
        block().also { cancellation.throwIfCancelled() }
    } catch (error: CancellationException) {
        throw error
    } catch (error: LyricsSourceException) {
        cancellation.throwIfCancelled()
        if (!hasBody) throw error
        null
    }
}

private fun usableWordLyrics(value: String): String = cleanLyrics(value).takeIf {
    it.length <= 40_000 && LrcParser.parseYrc(it).ifEmpty { LrcParser.parse(it) }.any { line ->
        line.words.isNotEmpty()
    }
}.orEmpty()

private fun decodeQqLyric(value: String): String {
    val plain = cleanLyrics(unescapeHtml(value))
    if (plain.isEmpty() || plain.startsWith("[") || !BASE64_TEXT.matches(plain)) return plain
    val decoded = runCatching {
        val bytes = Base64.decode(plain, Base64.DEFAULT)
        Charsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT)
            .decode(ByteBuffer.wrap(bytes)).toString()
    }.getOrNull() ?: return plain
    if (decoded.any { it.isISOControl() && it !in "\r\n\t" }) return plain
    return cleanLyrics(unescapeHtml(decoded))
}

private fun unescapeHtml(value: String): String = HTML_ENTITY.replace(value) { match ->
    when (val entity = match.value) {
        "&amp;" -> "&"
        "&lt;" -> "<"
        "&gt;" -> ">"
        "&quot;" -> "\""
        "&apos;" -> "'"
        else -> {
            val codePoint = if (entity.startsWith("&#x", true)) {
                entity.substring(3, entity.length - 1).toIntOrNull(16)
            } else {
                entity.substring(2, entity.length - 1).toIntOrNull()
            }
            if (codePoint != null && codePoint in 1..0x10FFFF && codePoint !in 0xD800..0xDFFF) {
                String(Character.toChars(codePoint))
            } else entity
        }
    }
}

private val JSONP_WRAPPER = Regex(
    "(?:[A-Za-z_$][\\w$]*\\.)*[A-Za-z_$][\\w$]*\\s*\\(([\\s\\S]*)\\)\\s*;?"
)
private val BASE64_TEXT = Regex("[A-Za-z0-9+/\\s]+={0,2}")
private val HTML_ENTITY = Regex("&(?:amp|lt|gt|quot|apos|#\\d+|#[xX][0-9a-fA-F]+);")

private fun encode(value: String): String = URLEncoder.encode(value, Charsets.UTF_8.name())

internal const val SOURCE_LRCLIB = "LRCLIB"
internal const val SOURCE_QQ = "QQ音乐"
internal const val SOURCE_NETEASE = "网易云音乐"

private val JSON_HEADERS = mapOf("Accept" to "application/json")
private const val CONNECT_TIMEOUT_MS = 1_500
private const val READ_TIMEOUT_MS = 2_200
private const val MAX_RESPONSE_BYTES = 2 * 1024 * 1024
private const val USER_AGENT =
    "Mozilla/5.0 (Linux; Android 14) AppleWebKit/537.36 Chrome/124 Mobile Safari/537.36"
