package com.icar03.content.runtime

import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentState
import com.icar03.content.ui.LyricsEmptyState
import org.junit.Assert.*
import org.junit.Test

/** Immutable body projection is shared, but every playback cursor remains a fresh projection. */
class ContentUiMapperLyricsCacheTest {
    private fun state(lines: List<ContentPorts.LyricsLine>) = ContentState().apply {
        mediaDataAvailable = true
        mediaSongIdentity = ContentPorts.MediaSongIdentity.SONG
        mediaRecordingKey = "synthetic-cache-recording"
        mediaTitle = "合成正文缓存"
        mediaArtist = "合成作者"
        mediaDurationMs = 120_000L
        lyricsLines = lines
        lyricsStatus = ContentPorts.LyricsSnapshot.READY
        lyricsTimed = true
        lyricsTimelineReady = true
        lyricsActiveIndex = 0
        lyricsScrollIndex = 0
        lyricsActiveIndices = intArrayOf(0)
    }

    private fun line(text: String = "合成正文", translation: String = "synthetic translation") =
        ContentPorts.LyricsLine(1_000L, text, translation, "he cheng zheng wen",
            listOf(ContentPorts.LyricsWord(1_200L, 2_000L, "合成"), ContentPorts.LyricsWord(2_000L, 3_000L, "正文")),
            4_000L, listOf(ContentPorts.LyricsWord(3_000L, 5_000L, "背景")), 2)

    @Test fun copiesClockAndCursorUpdatesReuseTheExactProjectedBodyAndWordObjects() {
        val mapper = ContentUiMapper()
        val original = state(listOf(line()))
        val first = mapper.map(original).lyrics
        val next = original.copy().apply {
            nowMillis = 1_700_000_000_000L
            lyricsPositionMs = 2_500L
            lyricsPositionCapturedAtMs = 10_000L
            lyricsPlaybackSpeed = 1f
            lyricsActiveIndex = -1
            lyricsActiveIndices = intArrayOf()
            lyricsScrollIndex = 1
        }
        val projected = mapper.map(next).lyrics
        assertSame(first.lines, projected.lines)
        assertSame(first.lines.single(), projected.lines.single())
        assertSame(first.lines.single().words, projected.lines.single().words)
        assertSame(first.lines.single().backgroundWords, projected.lines.single().backgroundWords)
        assertEquals(2_500L, projected.positionMs)
        assertEquals(10_000L, projected.capturedAtMs)
        assertEquals(1f, projected.playbackSpeed, 0f)
        assertEquals(-1, projected.activeIndex)
        assertTrue(projected.activeIndices.isEmpty())
        assertEquals(1, projected.scrollIndex)
    }

    @Test fun aNewBodyIdentityInvalidatesEvenWhenValuesAreEqualAndUpgradeNeverKeepsOldSubrows() {
        val mapper = ContentUiMapper()
        val original = state(listOf(line()))
        val first = mapper.map(original).lyrics
        val equalBody = original.copy().apply { lyricsLines = listOf(line()) }
        val equalProjection = mapper.map(equalBody).lyrics
        assertEquals(first.lines, equalProjection.lines)
        assertNotSame(first.lines, equalProjection.lines)
        val upgrade = original.copy().apply {
            lyricsLines = listOf(line(translation = "新合成译文"))
            lyricsPositionMs = 1_500L
        }
        val upgraded = mapper.map(upgrade).lyrics
        assertEquals("新合成译文", upgraded.lines.single().translation)
        assertEquals(1_500L, upgraded.positionMs)
        assertNotSame(equalProjection.lines, upgraded.lines)
        assertEquals("synthetic translation", first.lines.single().translation)
    }

    @Test fun terminalErrorAndInstrumentalRemainSongOnlyAndPendingSourceCannotLeakOldStatus() {
        val mapper = ContentUiMapper()
        val empty = state(emptyList()).apply { lyricsTimelineReady = false }
        for ((status, expected) in listOf(
            ContentPorts.LyricsSnapshot.NETWORK_ERROR to LyricsEmptyState.NetworkError,
            ContentPorts.LyricsSnapshot.INSTRUMENTAL to LyricsEmptyState.Instrumental,
            ContentPorts.LyricsSnapshot.NO_MATCH to LyricsEmptyState.NoLyrics,
            ContentPorts.LyricsSnapshot.UNAVAILABLE to LyricsEmptyState.NoLyrics)) {
            val result = empty.copy().apply { lyricsStatus = status }
            val projected = mapper.map(result).lyrics
            assertEquals(expected, projected.emptyState)
            assertFalse(projected.loading)
            assertTrue(projected.lines.isEmpty())
            val noSong = result.copy().apply { mediaSongIdentity = ContentPorts.MediaSongIdentity.NON_SONG }
            assertEquals(LyricsEmptyState.NoLyrics, mapper.map(noSong).lyrics.emptyState)
            val pending = result.copy().apply { pendingSource = "爱趣听" }
            assertEquals(LyricsEmptyState.NoLyrics, mapper.map(pending).lyrics.emptyState)
            assertFalse(mapper.map(pending).lyrics.timelineReady)
        }
        val loading = empty.copy().apply { lyricsStatus = ContentPorts.LyricsSnapshot.LOADING }
        assertTrue(mapper.map(loading).lyrics.loading)
        assertEquals(LyricsEmptyState.NoLyrics, mapper.map(loading).lyrics.emptyState)
    }

    @Test fun metadataAndSongGatesStillWithdrawTheBodyWithoutFabricatingProgress() {
        val mapper = ContentUiMapper()
        val original = state(listOf(line()))
        val first = mapper.map(original).lyrics
        val unavailable = original.copy().apply { mediaSongIdentity = ContentPorts.MediaSongIdentity.NON_SONG }
        val hidden = mapper.map(unavailable).lyrics
        assertTrue(hidden.lines.isEmpty())
        assertFalse(hidden.timelineReady)
        assertEquals(-1L, hidden.positionMs)
        assertSame(first.lines, mapper.map(original.copy()).lyrics.lines)
    }
}
