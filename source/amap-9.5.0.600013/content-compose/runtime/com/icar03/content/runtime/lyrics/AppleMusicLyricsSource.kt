package com.icar03.content.runtime.lyrics

import org.json.JSONObject
import java.net.URI
import java.util.Locale
import java.util.concurrent.CancellationException

/** Official catalog identity is kept intact across line, word, auxiliary-track and cover stages. */
internal class AppleMusicLyricsSource(
    connection: AppleMusicConnection? = null,
    private val transport: LyricsTransport = AppleMusicTransport(),
    private val authBroker: AppleMusicAuthBroker = AppleMusicAuthBroker(connection, transport),
    private val translationLanguage: () -> String = { Locale.getDefault().toLanguageTag() }
) : LyricsCatalogSource {
    override val sourceName: String = SOURCE_APPLE_MUSIC
    override val isAvailable: Boolean get() = authBroker.isAvailable
    override val catalogRevision: Long get() = authBroker.revision
    private val entries = LinkedHashMap<LyricsCandidateSnapshot, Entry>(64, 0.75f, true)

    override fun search(request: LyricsCatalogSearchRequest, deadlineNanos: Long, cancellation: LyricsCancellationSignal): List<LyricsResult> {
        val session = authBroker.session(deadlineNanos, cancellation)
        if (request.text.isBlank()) return emptyList()
        val url = AppleMusicAuthBroker.CATALOG_BASE + appleMusicEncode(session.storefront) +
            "/search?types=songs&limit=10&term=${appleMusicEncode(request.text)}"
        val root = appleMusicJson(authBroker.catalogGet(url, session, deadlineNanos, cancellation), cancellation)
        val results = root.optJSONObject("results") ?: appleMusicSchemaError("catalog results")
        if (!results.has("songs")) return emptyList()
        val songs = results.optJSONObject("songs")?.optJSONArray("data")
            ?: appleMusicSchemaError("catalog songs data")
        val result = mutableListOf<Pair<LyricsResult, Boolean>>()
        for (index in 0 until minOf(songs.length(), 40)) {
            cancellation.throwIfCancelled()
            val row = songs.optJSONObject(index) ?: appleMusicSchemaError("catalog song")
            val id = row.contentString("id")
            if (!CATALOG_ID.matches(id)) continue
            val attributes = row.optJSONObject("attributes") ?: appleMusicSchemaError("song attributes")
            val title = attributes.contentString("name")
            val artist = attributes.contentString("artistName")
            if (title.isBlank() || artist.isBlank()) continue
            val candidate = LyricsResult(
                source = sourceName, sourceId = id, candidateTrack = title, candidateArtist = artist,
                candidateAlbum = attributes.contentString("albumName"),
                // This is source-reported evidence; missing duration stays unknown.
                durationMs = reportedDuration(attributes),
                cover = artwork(attributes.optJSONObject("artwork").contentString("url"))
            )
            val hasLyrics = attributes.opt("hasLyrics") as? Boolean ?: appleMusicSchemaError("hasLyrics")
            val synced = attributes.opt("hasTimeSyncedLyrics") as? Boolean ?: false
            synchronized(entries) {
                entries[candidate.candidateSnapshot()] = Entry(candidate.candidateSnapshot(), session.storefront,
                    session.credential.generation, hasLyrics, synced, candidate.cover)
                while (entries.size > 256) entries.remove(entries.keys.first())
            }
            result += candidate to synced
        }
        appleMusicCheckBudget(deadlineNanos, cancellation)
        authBroker.requireCurrent(session.credential)
        // Recording admission and proof remain the common selector's responsibility.
        return result.sortedByDescending { it.second }.map { it.first }
    }

    override fun loadBaseLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
        cancellation.throwIfCancelled()
        val entry = match(candidate) ?: return null
        if (!entry.hasLyrics) return null
        val session = sessionFor(entry, deadlineNanos, cancellation) ?: return null
        val raw = ttml(entry, "lyrics", session, deadlineNanos, cancellation) ?: return null
        val tracks = AppleMusicTtmlTracks.parse(raw, cancellation)
        return tracks.applyTo(candidate, includeWords = false)
    }

    override fun loadEnrichment(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
        cancellation.throwIfCancelled()
        val entry = match(candidate) ?: return null
        if (!entry.hasLyrics || !entry.timeSynced) return candidate.takeIf { it.contentKind() != LyricsKind.NONE }
        if (candidate.contentKind() != LyricsKind.NONE && System.nanoTime() >= deadlineNanos) return candidate
        val session = sessionFor(entry, deadlineNanos, cancellation) ?: return null
        val raw = ttml(entry, "syllable-lyrics", session, deadlineNanos, cancellation)
            ?: return candidate.takeIf { it.contentKind() != LyricsKind.NONE }
        val tracks = AppleMusicTtmlTracks.parse(raw, cancellation)
        return tracks.applyTo(candidate, includeWords = true, preserveBase = true)
    }

    override fun loadLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
        val base = loadBaseLyrics(candidate, deadlineNanos, cancellation)
        return try {
            loadEnrichment(base ?: candidate, deadlineNanos, cancellation) ?: base
        } catch (error: CancellationException) {
            throw error
        } catch (error: LyricsSourceException) {
            cancellation.throwIfCancelled()
            // Legacy callers keep a real line body while the progressive owner receives explicit
            // stage failures. Rejected credentials are still marked by the shared auth broker.
            base ?: throw error
        }
    }

    override fun loadCover(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): String {
        cancellation.throwIfCancelled()
        val entry = match(candidate) ?: return ""
        if (entry.cover.isNotBlank()) return entry.cover
        val session = sessionFor(entry, deadlineNanos, cancellation) ?: return ""
        val url = AppleMusicAuthBroker.CATALOG_BASE + appleMusicEncode(entry.storefront) + "/songs/${appleMusicEncode(candidate.sourceId)}"
        val root = appleMusicJson(authBroker.catalogGet(url, session, deadlineNanos, cancellation), cancellation)
        val rows = root.optJSONArray("data") ?: appleMusicSchemaError("catalog detail data")
        for (index in 0 until rows.length()) {
            cancellation.throwIfCancelled()
            val row = rows.optJSONObject(index) ?: continue
            if (row.contentString("id") != candidate.sourceId) continue
            val attributes = row.optJSONObject("attributes") ?: appleMusicSchemaError("catalog detail attributes")
            if (!sameRecording(candidate, attributes)) return ""
            val cover = artwork(attributes.optJSONObject("artwork").contentString("url"))
            if (cover.isNotBlank()) synchronized(entries) {
                entries[candidate.candidateSnapshot()] = entry.copy(cover = cover)
            }
            return cover
        }
        return ""
    }

    private fun match(candidate: LyricsResult): Entry? {
        if (candidate.source != sourceName || !CATALOG_ID.matches(candidate.sourceId)) return null
        val entry = synchronized(entries) { entries[candidate.candidateSnapshot()] } ?: return null
        return entry.takeIf { authBroker.sameGeneration(it.generation) }
    }

    private fun sessionFor(entry: Entry, deadline: Long, cancellation: LyricsCancellationSignal): AppleMusicSession? {
        val session = authBroker.session(deadline, cancellation)
        return session.takeIf { it.credential.generation == entry.generation && it.storefront == entry.storefront }
    }

    private fun ttml(entry: Entry, kind: String, session: AppleMusicSession, deadline: Long, cancellation: LyricsCancellationSignal): String? {
        val url = AppleMusicAuthBroker.CATALOG_BASE + appleMusicEncode(entry.storefront) +
            "/songs/${appleMusicEncode(entry.snapshot.sourceId)}/$kind" + localizationQuery(translationLanguage())
        val bytes = authBroker.lyricsGet(url, session, deadline, cancellation) ?: return null
        val root = appleMusicJson(bytes, cancellation)
        val data = root.optJSONArray("data") ?: appleMusicSchemaError("lyrics data")
        if (data.length() == 0) return null
        val row = data.optJSONObject(0) ?: appleMusicSchemaError("lyrics resource")
        val attributes = row.optJSONObject("attributes") ?: appleMusicSchemaError("lyrics attributes")
        // extend=ttmlLocalizations replaces ttml rather than returning it alongside that field.
        val raw = attributes.contentString("ttmlLocalizations").ifBlank { attributes.contentString("ttml") }
        if (raw.isBlank()) appleMusicSchemaError("TTML content")
        appleMusicCheckBudget(deadline, cancellation)
        return raw
    }

    private data class Entry(
        val snapshot: LyricsCandidateSnapshot, val storefront: String, val generation: String,
        val hasLyrics: Boolean, val timeSynced: Boolean, val cover: String
    )

    companion object {
        private val CATALOG_ID = Regex("[0-9]{1,32}")

        fun localizationQuery(target: String): String {
            val t = target.trim().lowercase(Locale.ROOT)
            val locale = when {
                t in setOf("zh-hant", "zh-tw", "zh-hk") || t.startsWith("zh-hant-") -> "zh-Hant-TW" to "zh-Hant,zh-Latn"
                t.startsWith("zh") -> "zh-Hans-CN" to "zh-Hans,zh-Latn"
                t == "ja" || t.startsWith("ja-") -> "ja-JP" to "ja-Jpan,ja-Latn"
                t == "ko" || t.startsWith("ko-") -> "ko-KR" to "ko-Kore,ko-Latn"
                t.isEmpty() || t == "en" || t.startsWith("en-") -> "en-US" to "en-Latn"
                else -> t to "${t.substringBefore('-')}-Latn"
            }
            return "?extend=ttmlLocalizations&l%5Blyrics%5D=${appleMusicEncode(locale.first)}&l%5Bscript%5D=${appleMusicEncode(locale.second)}"
        }

        fun artwork(template: String): String {
            if (template.isBlank()) return ""
            val url = template.trim().replace("{w}", "512").replace("{h}", "512")
                .replace("{c}", "bb").replace("{f}", "jpg")
            if ('{' in url || '}' in url) return ""
            return runCatching { URI(url).takeIf {
                it.scheme == "https" && it.userInfo == null && it.port in listOf(-1, 443) &&
                    (it.host == "mzstatic.com" || it.host?.endsWith(".mzstatic.com") == true)
            }?.toASCIIString().orEmpty() }.getOrDefault("")
        }

        private fun reportedDuration(attributes: JSONObject): Long = attributes.contentString("durationInMillis")
            .toLongOrNull()?.takeIf { it in 1L..86_400_000L } ?: 0L

        private fun sameRecording(candidate: LyricsResult, attributes: JSONObject): Boolean =
            attributes.contentString("name") == candidate.candidateTrack &&
                attributes.contentString("artistName") == candidate.candidateArtist &&
                attributes.contentString("albumName") == candidate.candidateAlbum &&
                reportedDuration(attributes) == candidate.durationMs
    }
}
