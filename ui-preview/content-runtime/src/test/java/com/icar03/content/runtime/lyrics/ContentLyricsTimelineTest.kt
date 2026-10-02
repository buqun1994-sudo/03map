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

    @Test fun realAvrcpEventEstablishesTheClockAndDuplicateEnvelopesNeverReplayIt() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(source = "蓝牙音乐", position = 0L))
        assertFalse(timeline.ready())
        val event = avrcp(position = 35_000L, sequence = 1L, capturedAt = now)
        timeline.update(event)
        assertTrue(timeline.ready())
        assertEquals(35_000L, timeline.positionMs())
        assertEquals(1f, timeline.speed())
        now += 2_000L
        timeline.update(event)
        assertEquals(37_000L, timeline.positionMs())
        now += 1_000L
        timeline.update(avrcp(position = 35_000L, sequence = 1L, capturedAt = event.avrcpElapsedRealtimeMs,
            publisherTime = now))
        assertEquals(38_000L, timeline.positionMs())
        timeline.update(avrcp(position = 12_000L, sequence = 2L, capturedAt = now))
        assertEquals(12_000L, timeline.positionMs())
        timeline.update(avrcp(position = 0L, sequence = 3L, capturedAt = now))
        assertEquals(0L, timeline.positionMs())
    }

    @Test fun avrcpStateEventsFreezeAndResumeWithoutManufacturingPosition() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(avrcp(position = 30_000L, sequence = 1L, capturedAt = now))
        now += 1_000L
        timeline.update(avrcp(sequence = 2L, capturedAt = now,
            eventState = android.media.session.PlaybackState.STATE_PAUSED, playing = false))
        assertEquals(31_000L, timeline.positionMs())
        now += 5_000L
        assertEquals(31_000L, timeline.positionMs())
        assertEquals(0f, timeline.speed())
        timeline.update(avrcp(sequence = 3L, capturedAt = now,
            eventState = android.media.session.PlaybackState.STATE_PLAYING))
        now += 1_000L
        assertEquals(32_000L, timeline.positionMs())
        val unknown = ContentLyricsTimeline { now }
        unknown.update(avrcp(sequence = 1L, capturedAt = now,
            eventState = android.media.session.PlaybackState.STATE_PLAYING))
        assertFalse(unknown.ready())
    }

    @Test fun futureExpiredAndAlreadyConsumedEventsCannotCreateANewClock() {
        var now = 2_000L
        val timeline = ContentLyricsTimeline { now }
        val future = avrcp(position = 30_000L, sequence = 1L, capturedAt = now + 1L)
        timeline.update(future)
        assertFalse(timeline.ready())
        now += 1_000L
        timeline.update(future)
        assertFalse(timeline.ready())
        timeline.update(avrcp(position = 30_000L, sequence = 2L, capturedAt = now - 1_501L))
        assertFalse(timeline.ready())
        val current = avrcp(position = 30_000L, sequence = 3L, capturedAt = now)
        timeline.update(current)
        assertTrue(timeline.ready())
        timeline.reset()
        timeline.update(current)
        assertFalse(timeline.ready())
    }

    @Test fun anOldEventCannotLeakAcrossRecordingChangeButNewZeroIsTrusted() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(avrcp(position = 30_000L, sequence = 1L, capturedAt = now, title = "First"))
        now += 1_000L
        timeline.update(avrcp(position = 30_000L, sequence = 1L, capturedAt = now, title = "Second"))
        assertFalse(timeline.ready())
        timeline.update(avrcp(position = 0L, sequence = 2L, capturedAt = now, title = "Second"))
        assertTrue(timeline.ready())
        now += 1_000L
        assertEquals(1_000L, timeline.positionMs())
    }

    @Test fun standardRepeatedPositionWithFreshTimestampsDoesNotStarveTheClockOrPause() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(position = 5_000L, publisherTime = now))
        repeat(3) {
            now += 1_000L
            timeline.update(media(position = 5_000L, publisherTime = now))
        }
        assertEquals(8_000L, timeline.positionMs())
        timeline.update(media(position = 5_000L, publisherTime = now, playing = false))
        now += 5_000L
        assertEquals(8_000L, timeline.positionMs())
        timeline.update(media(position = 0L, publisherTime = now))
        assertEquals(0L, timeline.positionMs())
    }

    @Test fun rawBufferingStateFreezesTheTrustedClock() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(position = 5_000L, publisherTime = now))
        now += 1_000L
        timeline.update(ContentPorts.MediaSnapshot(true, false, "本机音乐", false, 1, "Song", "Artist", true, true,
            null, "", "Album", 200_000L, 5_000L, now, 0f, "", ContentPorts.MediaSongIdentity.SONG,
            android.media.session.PlaybackState.STATE_BUFFERING, 0L, -1L, -1, 0L))
        now += 5_000L
        assertEquals(6_000L, timeline.positionMs())
        assertEquals(0f, timeline.speed())
    }

    private fun avrcp(position: Long = -1L, sequence: Long, capturedAt: Long,
        eventState: Int = -1, playing: Boolean = true, title: String = "Song", publisherTime: Long = 0L) =
        ContentPorts.MediaSnapshot(true, false, "蓝牙音乐", playing, 1, title, "Artist", true, true,
            null, "", "Album", 200_000L, 0L, publisherTime, 0f, "", ContentPorts.MediaSongIdentity.SONG,
            android.media.session.PlaybackState.STATE_PLAYING, sequence, position, eventState, capturedAt)

    private fun media(source: String = "本机音乐", title: String = "Song", position: Long = -1L,
        duration: Long = 200_000L, publisherTime: Long = 0L, playing: Boolean = true) =
        ContentPorts.MediaSnapshot(true, false, source, playing, 1, title, "Artist", true, true,
            null, "", "Album", duration, position, publisherTime, if (playing) 1f else 0f,
            ContentPorts.MediaSongIdentity.SONG)
}
