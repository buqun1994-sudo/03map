package com.icar03.content.runtime.lyrics

import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class LyricsTerminalModelsTest {
    @Test fun explicitInstrumentalFlagRoundTripsWithoutChangingRecordingProofOrClaimingABody() {
        val result = LyricsResult(durationMs = 200_000L, cover = "https://example.test/cover",
            source = SOURCE_LRCLIB, sourceId = "synthetic-id", candidateTrack = "Song",
            candidateArtist = "Artist", candidateAlbum = "Album", identitySource = SOURCE_LRCLIB,
            instrumental = true)
        val restored = LyricsResult.fromJson(JSONObject(result.toJson().toString()))
        assertEquals(result, restored)
        assertEquals(result.candidateSnapshot(), restored.candidateSnapshot())
        assertTrue(restored.isInstrumentalContent())
        assertEquals(LyricsKind.NONE, restored.contentKind())
        assertFalse(restored.hasBodyPayload())
        assertTrue(restored.timedLines().isEmpty())
        assertEquals("", restored.plainText())
        val query = LyricsLookup("Song", "Artist", "Album", 200_000L)
        val proof = LyricsCandidateSelector.selectCandidatesWithProof(query, listOf(result)).single().proof
        assertTrue(LyricsCandidateSelector.isProofValid(query, restored, proof))
    }

    @Test fun absentOrNonBooleanJsonFlagDoesNotInventInstrumentalAndLegacyBodyKindsRemainDerived() {
        val legacy = LyricsResult(lyrics = "[00:01.0]真实正文", translatedLyrics = "[00:01.0]translation",
            romanizedLyrics = "[00:01.0]romanization", wordLyrics = "[1000,500](1000,500,0)真实正文",
            durationMs = 200_000L, source = SOURCE_NETEASE, sourceId = "synthetic-id",
            candidateTrack = "Song", candidateArtist = "Artist", candidateAlbum = "Album",
            lyricsKind = LyricsKind.SYNCHRONIZED)
        val payload = legacy.toJson().apply { remove("instrumental") }
        val restored = LyricsResult.fromJson(payload)
        assertEquals(legacy, restored)
        assertFalse(restored.instrumental)
        assertEquals(LyricsKind.SYNCHRONIZED, restored.contentKind())
        for (flag in listOf<Any>("true", 1, false)) {
            assertFalse(LyricsResult.fromJson(JSONObject().put("instrumental", flag)).isInstrumentalContent())
        }
        val plain = LyricsResult(plainLyrics = "第一行\n第二行", lyricsKind = LyricsKind.PLAIN)
        assertEquals(plain, LyricsResult.fromJson(plain.toJson()))
    }

    @Test fun structuredTtmlKeepsASeparateRomanizationTrackWhenTheTtmlTrackIsPartial() {
        val result = LyricsResult(
            lyrics = "[00:01]第一句\n[00:03]第二句",
            romanizedLyrics = "[00:01.300]di yi ju\n[00:03.300]di er ju",
            ttmlLyrics = """
                <tt xmlns="http://www.w3.org/ns/ttml">
                  <body><div>
                    <p begin="1s" end="2s">第一句</p>
                    <p begin="3s" end="4s">第二句</p>
                  </div></body>
                </tt>
            """.trimIndent(),
            durationMs = 200_000L,
        )
        assertEquals(listOf("di yi ju", "di er ju"), result.timedLines().map { it.romanization })
    }

    @Test fun soleRealMarkerIsEvidenceButMixedLyricsEmptyBodiesTitlesAndLongGapsAreNot() {
        for (marker in listOf("纯音乐，请欣赏", "[99:00.00]纯音乐，请欣赏",
            "[ti:合成曲名]\n[ar:合成歌手]\n[00:00.0]纯音乐，请您欣赏\n[03:00.0]")) {
            val result = LyricsResult(lyrics = marker)
            assertTrue(marker, result.isInstrumentalContent())
            assertEquals(LyricsKind.NONE, result.contentKind())
            assertTrue(result.timedLines().isEmpty())
            assertEquals("", result.plainText())
        }
        for (result in listOf(
            LyricsResult(),
            LyricsResult(candidateTrack = "纯音乐，请欣赏"),
            LyricsResult(lyrics = "[00:01.0]真正歌词\n[03:00.0]下一句"),
            LyricsResult(lyrics = "[00:01.0]纯音乐，请欣赏\n[00:02.0]真正歌词"),
            LyricsResult(lyrics = "Instrumental"),
            LyricsResult(lyrics = "纯音乐"),
            LyricsResult(lyrics = "[00:01.0]纯音乐，请欣赏", plainLyrics = "真实正文"),
            LyricsResult(lyrics = "[00:01.0]纯音乐，请欣赏", wordLyrics = "[1000,500](1000,500,0)真实正文")
        )) assertFalse(result.toString(), result.isInstrumentalContent())
    }
}
