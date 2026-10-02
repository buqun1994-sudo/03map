package com.icar03.content.runtime.lyrics

import com.autonavi.amapauto.content.ContentPorts
import org.junit.Assert.*
import org.junit.Test

class ContentLyricsTimelineTest {
    @Test fun readingTheClockNeverReanchorsOrAddsPublisherEvidence() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(position = 5_000L, publisherTime = now))
        assertTrue(timeline.ready())
        now = 2_000L
        assertEquals(6_000L, timeline.positionMs())
        assertEquals(6_000L, timeline.positionMs())
        now = 2_600L
        assertEquals(6_600L, timeline.positionMs())
        assertEquals(1f, timeline.speed())
    }

    @Test fun unknownPositionAndIncompleteZeroCannotCreateAClock() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(position = -1L))
        now = 8_000L
        assertFalse(timeline.ready())
        assertEquals(-1L, timeline.positionMs())
        timeline.update(media(position = 0L, duration = 0L))
        assertFalse(timeline.ready())
        timeline.update(media(position = 42_000L, publisherTime = now))
        assertTrue(timeline.ready())
        assertEquals(42_000L, timeline.positionMs())
    }

    @Test fun bluetoothRepeatedZeroRequiresARealChangedPosition() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(source = "蓝牙音乐", position = 0L))
        now += 1_000L
        timeline.update(media(source = "蓝牙音乐", position = 0L, publisherTime = now))
        assertFalse(timeline.ready())
        assertEquals(-1L, timeline.positionMs())
        timeline.update(media(source = "蓝牙音乐", position = 3_000L, publisherTime = now))
        assertTrue(timeline.ready())
        assertEquals(3_000L, timeline.positionMs())
    }

    @Test fun pauseFreezesAndResetClearsTheEstablishedClock() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(position = 5_000L))
        now = 2_000L
        timeline.update(media(position = 5_000L, playing = false))
        assertEquals(6_000L, timeline.positionMs())
        now = 8_000L
        assertEquals(6_000L, timeline.positionMs())
        assertEquals(0f, timeline.speed())
        timeline.reset()
        assertFalse(timeline.ready())
        assertEquals(-1L, timeline.positionMs())
    }

    @Test fun newRecordingCannotInheritTheOldFirstPosition() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(title = "First", position = 40_000L))
        now = 2_000L
        timeline.update(media(title = "Second", position = 40_000L))
        assertFalse(timeline.ready())
        timeline.update(media(title = "Second", position = 40_500L))
        assertTrue(timeline.ready())
        assertEquals(40_500L, timeline.positionMs())
    }

    private fun media(source: String = "本机音乐", title: String = "Song", position: Long = -1L,
        duration: Long = 200_000L, publisherTime: Long = 0L, playing: Boolean = true) =
        ContentPorts.MediaSnapshot(true, false, source, playing, 1, title, "Artist", true, true,
            null, "", "Album", duration, position, publisherTime, if (playing) 1f else 0f,
            ContentPorts.MediaSongIdentity.SONG)
}
