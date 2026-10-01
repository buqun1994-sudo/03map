package com.icar03.content.runtime.lyrics

// Domain-only extraction from 03lyrics LyricsSettingsModels.kt.
// Original source SHA-256: a94e175ceec418088d8b110a398b0830ce6e9798bf9e60791cbc592dc7c67eba. See PROVENANCE.json.

import org.json.JSONObject
import kotlin.math.abs

internal enum class LyricsCacheSelection {
    AUTOMATIC,
    MANUAL
}

internal data class LyricsPlaybackIdentity(
    val track: String,
    val artist: String,
    val album: String,
    val durationMs: Long
) {
    val isUsable: Boolean
        get() = track.isNotBlank() && LyricsCandidateSelector.hasKnownDuration(durationMs)

    fun lookup(): LyricsLookup = LyricsLookup(track, artist, album, durationMs)

    fun sameRecordingAs(other: LyricsPlaybackIdentity?): Boolean =
        other != null && LyricsCache.key(track, artist, album, durationMs) ==
            LyricsCache.key(other.track, other.artist, other.album, other.durationMs)

    fun toJson(): JSONObject = JSONObject()
        .put("track", track)
        .put("artist", artist)
        .put("album", album)
        .put("durationMs", durationMs)

    companion object {
        fun fromJson(value: JSONObject?): LyricsPlaybackIdentity? {
            value ?: return null
            return LyricsPlaybackIdentity(
                track = value.optString("track"),
                artist = value.optString("artist"),
                album = value.optString("album"),
                durationMs = value.optLong("durationMs", 0L)
            )
        }
    }
}

internal data class LyricsCacheStats(
    val automaticEntries: Int,
    val manualEntries: Int,
    val totalBytes: Long,
    val maximumAutomaticBytes: Long
) {
    val totalEntries: Int get() = automaticEntries + manualEntries

    val estimatedRemainingTracks: Long
        get() {
            val remainingBytes = (maximumAutomaticBytes - totalBytes).coerceAtLeast(0L)
            val averageEntryBytes = if (totalEntries > 0 && totalBytes > 0L) {
                (totalBytes / totalEntries).coerceAtLeast(1L)
            } else {
                ESTIMATED_EMPTY_CACHE_ENTRY_BYTES
            }
            return remainingBytes / averageEntryBytes
        }

    fun toJson(): JSONObject = JSONObject()
        .put("automaticEntries", automaticEntries)
        .put("manualEntries", manualEntries)
        .put("totalBytes", totalBytes)
        .put("maximumBytes", maximumAutomaticBytes)

    companion object {
        private const val ESTIMATED_EMPTY_CACHE_ENTRY_BYTES = 4L * 1024L

        fun fromJson(value: JSONObject?): LyricsCacheStats {
            value ?: return LyricsCacheStats(0, 0, 0L, LyricsCachePolicy.MAX_BYTES)
            return LyricsCacheStats(
                automaticEntries = value.optInt("automaticEntries", 0).coerceAtLeast(0),
                manualEntries = value.optInt("manualEntries", 0).coerceAtLeast(0),
                totalBytes = value.optLong("totalBytes", 0L).coerceAtLeast(0L),
                maximumAutomaticBytes = value.optLong(
                    "maximumBytes",
                    LyricsCachePolicy.MAX_BYTES
                ).coerceAtLeast(1L)
            )
        }
    }
}

internal data class LyricsCachedTrackInfo(
    val selection: LyricsCacheSelection,
    val result: LyricsResult,
    val updatedAtMs: Long
) {
    fun toJson(): JSONObject = result.candidateSnapshot().toJson()
        .put("selection", selection.name)
        .put("translated", result.translatedLyrics.isNotBlank())
        .put("updatedAtMs", updatedAtMs)

    companion object {
        fun fromJson(value: JSONObject?): LyricsCachedTrackInfo? {
            value ?: return null
            val candidate = LyricsCandidateSnapshot.fromJson(value) ?: return null
            val selection = runCatching {
                LyricsCacheSelection.valueOf(value.optString("selection"))
            }.getOrNull() ?: return null
            return LyricsCachedTrackInfo(
                selection = selection,
                result = candidate.toResult().copy(
                    translatedLyrics = if (value.optBoolean("translated")) "available" else ""
                ),
                updatedAtMs = value.optLong("updatedAtMs", 0L).coerceAtLeast(0L)
            )
        }
    }
}

internal data class LyricsCacheSnapshot(
    val stats: LyricsCacheStats,
    val current: LyricsCachedTrackInfo?
) {
    fun toJson(): JSONObject = JSONObject()
        .put("stats", stats.toJson())
        .put("current", current?.toJson())

    companion object {
        fun fromJson(value: JSONObject?): LyricsCacheSnapshot {
            value ?: return LyricsCacheSnapshot(
                LyricsCacheStats(0, 0, 0L, LyricsCachePolicy.MAX_BYTES),
                null
            )
            return LyricsCacheSnapshot(
                stats = LyricsCacheStats.fromJson(value.optJSONObject("stats")),
                current = LyricsCachedTrackInfo.fromJson(value.optJSONObject("current"))
            )
        }
    }
}

internal object LyricsManualSearchPolicy {
    const val MAX_RESULTS_PER_SOURCE = 8
    const val MAX_RESULTS = 24

    fun rank(query: LyricsLookup, candidates: Iterable<LyricsResult>): List<LyricsResult> =
        candidates.asSequence()
            .filter { it.source.isNotBlank() && it.sourceId.isNotBlank() }
            .distinctBy(::identity)
            .groupBy(LyricsResult::source)
            .values
            .flatMap { sourceCandidates ->
                sourceCandidates.sortedWith(candidateComparator(query))
                    .take(MAX_RESULTS_PER_SOURCE)
            }
            .sortedWith(candidateComparator(query))
            .take(MAX_RESULTS)

    fun token(candidate: LyricsResult): String = "${candidate.source}\u0000${candidate.sourceId}"

    private fun candidateComparator(query: LyricsLookup): Comparator<LyricsResult> =
        compareByDescending<LyricsResult> { metadataScore(query, it) }
            .thenBy { durationDelta(query.durationMs, it.durationMs) }
            .thenBy { it.candidateTrack.lowercase() }
            .thenBy { it.source }

    private fun metadataScore(query: LyricsLookup, candidate: LyricsResult): Int {
        val queryTrack = normalizeText(query.track)
        val queryArtist = normalizeText(query.artist)
        val queryAlbum = normalizeText(query.album)
        val candidateTrack = normalizeText(candidate.candidateTrack)
        val candidateArtist = normalizeText(candidate.candidateArtist)
        val candidateAlbum = normalizeText(candidate.candidateAlbum)
        return listOf(
            queryTrack to candidateTrack,
            queryArtist to candidateArtist,
            queryAlbum to candidateAlbum
        ).fold(0) { score, (expected, actual) ->
            score + when {
                expected.isBlank() -> 0
                expected == actual -> 4
                actual.contains(expected) || expected.contains(actual) -> 2
                else -> 0
            }
        }
    }

    private fun durationDelta(expected: Long, actual: Long): Long =
        if (LyricsCandidateSelector.hasKnownDuration(expected) &&
            LyricsCandidateSelector.hasKnownDuration(actual)
        ) {
            abs(expected - actual)
        } else {
            Long.MAX_VALUE
        }

    private fun identity(candidate: LyricsResult): String =
        "${candidate.source}\u0000${candidate.sourceId}"
}

internal interface LyricsPlaybackCache {
    fun read(identity: LyricsPlaybackIdentity, recordUse: Boolean): LyricsCache.Entry?
    fun writeAutomatic(identity: LyricsPlaybackIdentity, resolved: ResolvedLyrics): Boolean
    fun writeManual(identity: LyricsPlaybackIdentity, result: LyricsResult): Boolean
    fun clearManual(identity: LyricsPlaybackIdentity): Boolean
    fun clearCurrent(identity: LyricsPlaybackIdentity): Boolean
    fun snapshot(identity: LyricsPlaybackIdentity?, currentEntry: LyricsCache.Entry?): LyricsCacheSnapshot
}
