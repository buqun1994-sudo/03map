package com.icar03.content.runtime

import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentState
import com.icar03.content.ui.LyricsEmptyState
import org.junit.Assert.*
import org.junit.Test
import java.time.Instant
import java.util.Locale
import java.util.TimeZone

class ContentDomainProjectionTest {
    private val off = ContentPorts.SystemSnapshot(false, 0)
    private val caps = RuntimeCapabilities(source = true)
    private fun song() = ContentState().apply {
        mediaDataAvailable = true
        mediaSongIdentity = ContentPorts.MediaSongIdentity.SONG
        mediaRecordingKey = "domain-recording"
        mediaTitle = "领域正文"
        mediaArtist = "测试歌手"
        mediaDurationMs = 30_000L
        lyricsLines = listOf(ContentPorts.LyricsLine(0L, "第一句", ""), ContentPorts.LyricsLine(20_000L, "第二句", ""))
        lyricsStatus = ContentPorts.LyricsSnapshot.READY
        lyricsTimed = true
        lyricsTimelineReady = true
        lyricsActiveIndex = 0
        lyricsScrollIndex = 0
        lyricsActiveIndices = intArrayOf(0)
        lyricsPositionMs = 1_000L
        lyricsAnchor = ContentPorts.LyricsPlaybackAnchor(1_000L, 5_000L, 1f, 30_000L, true, 1L)
    }

    @Test fun mediaAnchorAndCursorEventsDoNotAllocateOrPublishTheShell() {
        val mapper = ContentUiMapper()
        val original = song()
        val shell = mapper.mapShell(original, off, off, caps)
        val body = mapper.mapLyrics(original).lines
        repeat(200) { tick ->
            val incoming = original.copy().apply {
                lyricsAnchor = ContentPorts.LyricsPlaybackAnchor(1_000L + tick, 5_000L + tick, 1f, 30_000L, true, 2L + tick)
                lyricsActiveIndex = tick % 2
                lyricsActiveIndices = intArrayOf(tick % 2)
                lyricsScrollIndex = tick % 2
                nowMillis = 1_700_000_000_000L + tick
            }
            assertSame(shell, mapper.mapShell(incoming, off, off, caps))
            assertSame(body, mapper.mapLyrics(incoming).lines)
        }
        assertEquals(1L, mapper.shellProjectionCount)
        assertEquals(201L, mapper.lyricsProjectionCount)
    }

    @Test fun semanticPositionNeverBecomesAReplacementMediaAnchor() {
        val mapper = ContentUiMapper()
        val initial = song()
        val first = mapper.mapLyrics(initial)
        val sampleOnly = initial.copy().apply { lyricsPositionMs = 19_000L; lyricsPositionCapturedAtMs = 23_000L }
        assertSame(first, mapper.mapLyrics(sampleOnly))
        val nextLine = sampleOnly.copy().apply { lyricsActiveIndex = 1; lyricsActiveIndices = intArrayOf(1); lyricsScrollIndex = 1 }
        val next = mapper.mapLyrics(nextLine)
        assertNotSame(first, next)
        assertSame(first.lines, next.lines)
        assertEquals(1_000L, next.positionMs)
        assertEquals(5_000L, next.capturedAtMs)
        assertEquals(1L, next.anchorRevision)
        val endpoint = nextLine.copy().apply {
            lyricsPositionMs = 30_000L
            lyricsActiveIndex = -1
            lyricsActiveIndices = intArrayOf()
        }
        val end = mapper.mapLyrics(endpoint)
        assertTrue(end.atEnd)
        assertEquals(1_000L, end.positionMs)
        assertEquals(5_000L, end.capturedAtMs)
    }

    @Test fun partialMetadataCannotEraseTrustedDurationAndPlainTextCannotInventTimedProgress() {
        val mapper = ContentUiMapper()
        val partial = song().apply { mediaDurationMs = 0L }
        val projected = mapper.mapLyrics(partial)
        assertEquals(30_000L, projected.durationMs)
        assertTrue(projected.timelineReady)
        val plain = partial.copy().apply { lyricsTimed = false }
        assertFalse(mapper.mapLyrics(plain).timelineReady)
        val noSong = partial.copy().apply { mediaSongIdentity = ContentPorts.MediaSongIdentity.NON_SONG }
        val withdrawn = mapper.mapLyrics(noSong)
        assertTrue(withdrawn.lines.isEmpty())
        assertFalse(withdrawn.timelineReady)
        assertEquals(LyricsEmptyState.NoLyrics, withdrawn.emptyState)
    }

    @Test fun mutableSnapshotCallersCannotMutateCachedProjectionFacts() {
        val mapper = ContentUiMapper()
        val snapshot = song()
        val first = mapper.map(snapshot, off, off, caps)
        snapshot.mediaPlaying = true
        snapshot.lyricsActiveIndex = 1
        snapshot.lyricsActiveIndices[0] = 1
        val next = mapper.map(snapshot, off, off, caps)
        assertFalse(first.media.playing)
        assertEquals(listOf(0), first.lyrics.activeIndices)
        assertTrue(next.media.playing)
        assertEquals(listOf(1), next.lyrics.activeIndices)
    }
}

class ContentClockPresenterTest {
    private fun inZone(id: String, block: () -> Unit) {
        val before = TimeZone.getDefault()
        try { TimeZone.setDefault(TimeZone.getTimeZone(id)); block() } finally { TimeZone.setDefault(before) }
    }
    private fun epoch(text: String) = Instant.parse(text).toEpochMilli()

    @Test fun mediaRateCallsReuseMinuteAndWeekdayTextUntilTheirRealBoundaries() = inZone("Asia/Shanghai") {
        val clock = ContentClockPresenter(Locale.SIMPLIFIED_CHINESE)
        val now = epoch("2026-10-04T04:24:00Z")
        val first = clock.project(now, false, true)
        repeat(600) { assertSame(first, clock.project(now + it * 99L, false, true)) }
        assertEquals("12:24", first.time)
        assertEquals(1L, clock.timeFormatCount)
        assertEquals(1L, clock.weekdayFormatCount)
        val next = clock.project(now + 60_000L, false, true)
        assertEquals("12:25", next.time)
        assertEquals(2L, clock.timeFormatCount)
        assertEquals(1L, clock.weekdayFormatCount)
    }

    @Test fun secondsSettingAndLocalMidnightInvalidateOnlyTheRequiredText() = inZone("Asia/Shanghai") {
        val clock = ContentClockPresenter(Locale.SIMPLIFIED_CHINESE)
        val now = epoch("2026-10-04T15:59:59Z")
        assertEquals("23:59", clock.project(now, false, true).time)
        assertEquals("23:59:59", clock.project(now, true, true).time)
        val next = clock.project(now + 1_000L, true, true)
        assertEquals("00:00:00", next.time)
        assertEquals("星期一", next.weekday)
        assertEquals(3L, clock.timeFormatCount)
        assertEquals(2L, clock.weekdayFormatCount)
        assertEquals("", clock.project(now + 1_000L, true, false).weekday)
    }

    @Test fun timezoneChangesAndWallClockSeeksAreExplicitlyReprojected() = inZone("UTC") {
        val clock = ContentClockPresenter(Locale.SIMPLIFIED_CHINESE)
        val now = epoch("2026-10-04T04:24:00Z")
        assertEquals("04:24", clock.project(now, false, true).time)
        TimeZone.setDefault(TimeZone.getTimeZone("Asia/Shanghai"))
        assertEquals("12:24", clock.project(now, false, true).time)
        assertEquals("12:23", clock.project(now - 60_000L, false, true).time)
        clock.invalidate()
        assertEquals("12:23", clock.project(now - 60_000L, false, true).time)
        assertEquals(4L, clock.timeFormatCount)
        assertEquals("--:--", clock.project(0L, false, true).time)
    }
}
