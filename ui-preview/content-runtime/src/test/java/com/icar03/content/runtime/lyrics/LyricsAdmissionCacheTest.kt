package com.icar03.content.runtime.lyrics

import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class LyricsAdmissionCacheTest {
    @Test fun durationTitleVersionAndArtistConflictsCannotBeOutrankedByAlbum() {
        val query = LyricsLookup("Song (Live)", "Artist", "Same Album", 200_000L)
        val matching = candidate(query)
        assertEquals(listOf(matching), LyricsCandidateSelector.selectCandidates(query, listOf(matching)))
        for (rejected in listOf(
            matching.copy(durationMs = 202_001L),
            matching.copy(candidateTrack = "Song (Remix)"),
            matching.copy(candidateArtist = "Other Performer"),
            matching.copy(candidateTrack = "Another Track")
        )) {
            assertTrue(LyricsCandidateSelector.selectCandidates(query, listOf(rejected)).isEmpty())
        }
        assertFalse(LyricsCandidateSelector.canConfirm(query.copy(durationMs = 0L)))
        assertFalse(LyricsCandidateSelector.canConfirm(query.copy(artist = "未知歌手")))
    }

    @Test fun crossScriptUnknownTitleCannotBeFilledByMatchingArtistAlbumAndDuration() {
        val query = LyricsLookup("歌曲名称", "歌手", "专辑", 200_000L)
        val otherwiseSame = candidate(query).copy(candidateTrack = "An English Title")
        assertTrue(LyricsCandidateSelector.selectCandidates(query, listOf(otherwiseSame)).isEmpty())
    }

    @Test fun coverFallbackCannotContradictKnownAlbumOrDuration() {
        val query = LyricsLookup("Song", "Artist", "Album", 200_000L)
        val cover = candidate(query).copy(cover = "https://example.invalid/cover")
        assertEquals(cover, LyricsCandidateSelector.selectCoverCandidate(query, listOf(cover)))
        assertNull(LyricsCandidateSelector.selectCoverCandidate(query,
            listOf(cover.copy(candidateAlbum = "Different Release"))))
        assertNull(LyricsCandidateSelector.selectCoverCandidate(query,
            listOf(cover.copy(durationMs = 202_001L))))
        assertNull(LyricsCandidateSelector.selectCoverCandidate(query,
            listOf(cover.copy(candidateAlbum = ""))))
    }

    @Test fun proofMustContainTheSelectedRecordingAndCurrentPolicy() {
        val query = LyricsLookup("Song", "Artist", "Album", 200_000L)
        val result = candidate(query)
        val proof = LyricsCandidateSelector.selectCandidatesWithProof(query, listOf(result)).single().proof
        assertTrue(LyricsCandidateSelector.isProofValid(query, result, proof))
        assertFalse(LyricsCandidateSelector.isProofValid(query, result,
            proof.copy(matcherPolicyVersion = LYRICS_MATCHER_POLICY_VERSION - 1)))
        assertFalse(LyricsCandidateSelector.isProofValid(query, result.copy(sourceId = "different"), proof))
    }

    @Test fun sqliteCacheRejectsUnprovedAutomaticBodiesAndReplaysProofOnRead() {
        val cache = LyricsCache(RuntimeEnvironment.getApplication(), "admission-cache-${System.nanoTime()}.db")
        val identity = LyricsPlaybackIdentity("Song", "Artist", "Album", 200_000L)
        val result = candidate(identity.lookup())
        val proof = LyricsCandidateSelector.selectCandidatesWithProof(identity.lookup(), listOf(result)).single().proof
        try {
            assertFalse(cache.writeAutomatic(identity, ResolvedLyrics(result,
                proof.copy(matcherPolicyVersion = -1))))
            assertNull(cache.read(identity, false))
            assertTrue(cache.writeAutomatic(identity, ResolvedLyrics(result, proof)))
            val entry = cache.read(identity, false)!!
            assertEquals(result.lyrics, entry.result.lyrics)
            assertTrue(LyricsCandidateSelector.isProofValid(identity.lookup(), entry.result, entry.proof!!))
            assertNull(cache.read(identity.copy(durationMs = 202_001L), false))
            assertNull(cache.read(identity.copy(track = "Different"), false))
        } finally { cache.close() }
    }

    @Test fun sqliteCacheKeepsExplicitManualSelectionAheadOfAutomaticRefresh() {
        val cache = LyricsCache(RuntimeEnvironment.getApplication(), "manual-cache-${System.nanoTime()}.db")
        val identity = LyricsPlaybackIdentity("Song", "Artist", "Album", 200_000L)
        val result = candidate(identity.lookup())
        val proof = LyricsCandidateSelector.selectCandidatesWithProof(identity.lookup(), listOf(result)).single().proof
        val manual = result.copy(lyrics = "[00:01.0]人工选择", sourceId = "manual")
        try {
            assertTrue(cache.writeAutomatic(identity, ResolvedLyrics(result, proof)))
            assertTrue(cache.writeManual(identity, manual))
            assertFalse(cache.writeAutomatic(identity, ResolvedLyrics(result, proof)))
            assertFalse(cache.recordRefresh(identity, System.currentTimeMillis()))
            assertEquals(LyricsCacheSelection.MANUAL, cache.read(identity, false)!!.selection)
            assertEquals(manual.lyrics, cache.read(identity, false)!!.result.lyrics)
            assertFalse(cache.read(identity, false)!!.needsRefresh(Long.MAX_VALUE))
            assertTrue(cache.clearManual(identity))
            assertEquals(result.lyrics, cache.read(identity, false)!!.result.lyrics)
        } finally { cache.close() }
    }

    @Test fun instrumentalFlagsAndSoleMarkersNeverEnterTheBodyQualityCacheOrReplaceManualLyrics() {
        val cache = LyricsCache(RuntimeEnvironment.getApplication(), "instrumental-cache-${System.nanoTime()}.db")
        val identity = LyricsPlaybackIdentity("Song", "Artist", "Album", 200_000L)
        val body = candidate(identity.lookup())
        val proof = LyricsCandidateSelector.selectCandidatesWithProof(identity.lookup(), listOf(body)).single().proof
        try {
            for (instrumental in listOf(body.copy(lyrics = "", instrumental = true, lyricsKind = LyricsKind.NONE),
                body.copy(lyrics = "[99:00.00]纯音乐，请欣赏", lyricsKind = LyricsKind.NONE))) {
                assertEquals(LyricsKind.NONE, instrumental.contentKind())
                assertTrue(LyricsCandidateSelector.isProofValid(identity.lookup(), instrumental, proof))
                assertFalse(cache.writeAutomatic(identity, ResolvedLyrics(instrumental, proof)))
                assertFalse(cache.writeManual(identity, instrumental))
                assertNull(cache.read(identity, false))
            }
            assertTrue(cache.writeAutomatic(identity, ResolvedLyrics(body, proof)))
            val manual = body.copy(lyrics = "[00:01.0]保留人工正文", sourceId = "manual")
            assertTrue(cache.writeManual(identity, manual))
            assertFalse(cache.writeAutomatic(identity, ResolvedLyrics(body.copy(lyrics = "", instrumental = true), proof)))
            assertEquals(LyricsCacheSelection.MANUAL, cache.read(identity, false)!!.selection)
            assertEquals(manual.lyrics, cache.read(identity, false)!!.result.lyrics)
        } finally { cache.close() }
    }

    private fun candidate(query: LyricsLookup) = LyricsResult(
        lyrics = "[00:01.0]歌词", durationMs = query.durationMs, source = SOURCE_QQ, sourceId = "item",
        candidateTrack = query.track, candidateArtist = query.artist, candidateAlbum = query.album,
        lyricsKind = LyricsKind.SYNCHRONIZED
    )
}
