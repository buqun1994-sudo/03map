package com.icar03.content.runtime

import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentState
import com.icar03.content.ui.LyricWaitRow
import org.junit.Assert.*
import org.junit.Test

class ContentUiMapperWaitRowsTest {
    private fun song() = ContentState().apply {
        mediaDataAvailable = true; mediaPreview = false
        mediaSongIdentity = ContentPorts.MediaSongIdentity.SONG
        mediaRecordingKey = "synthetic-admitted-recording"
        mediaTitle = "合成歌曲"; mediaArtist = "合成歌手"; mediaDurationMs = 120_000L
        lyricsTimed = true
        lyricsLines = listOf(
            ContentPorts.LyricsLine(10_000L, "第一句", "译文", "", emptyList(), 13_000L, emptyList(), 0),
            ContentPorts.LyricsLine(25_000L, "第二句", ""))
    }

    @Test fun immutableGapLayoutSurvivesUnknownTimeAndPositionUpdatesWithoutInventingActivation() {
        val mapper = ContentUiMapper()
        val state = song().apply { lyricsTimelineReady = false; lyricsPositionMs = -1L }
        val unknown = mapper.map(state).lyrics
        assertFalse(unknown.timelineReady)
        assertEquals(-1L, unknown.gapStartMs)
        assertEquals(listOf(LyricWaitRow(-1, 0L, 9_200L), LyricWaitRow(0, 14_200L, 24_200L)), unknown.waitRows)
        state.lyricsTimelineReady = true; state.lyricsPositionMs = 15_000L
        state.lyricsGapStartMs = 14_200L; state.lyricsGapEndMs = 24_200L
        val gap = mapper.map(state).lyrics
        assertSame(unknown.waitRows, gap.waitRows)
        assertEquals(14_200L, gap.gapStartMs)
        state.lyricsPositionMs = 25_000L; state.lyricsGapStartMs = -1L; state.lyricsGapEndMs = -1L
        assertSame(gap.waitRows, mapper.map(state).lyrics.waitRows)
    }

    @Test fun untimedAndNoSongStatesNeverProjectWaitingRows() {
        val mapper = ContentUiMapper()
        val state = song()
        assertEquals(2, mapper.map(state).lyrics.waitRows.size)
        state.lyricsTimed = false
        assertTrue(mapper.map(state).lyrics.waitRows.isEmpty())
        state.lyricsTimed = true; state.mediaDataAvailable = false
        assertTrue(mapper.map(state).lyrics.waitRows.isEmpty())
    }
}
