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
        assertTrue(timeline.ready())
        assertEquals(0L, timeline.positionMs())
        timeline.update(media(title = "Second", position = 0L))
        assertTrue(timeline.ready())
        assertEquals(0L, timeline.positionMs())
    }

    @Test fun newRecordingQuarantinesTheOldPublisherLineageBeforeAllowingManualSeek() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(source = "蓝牙音乐", title = "First", position = 40_000L, publisherTime = now))
        now += 100L
        timeline.update(media(source = "蓝牙音乐", title = "Second", position = -1L, publisherTime = 0L))
        assertTrue(timeline.ready())
        assertEquals(0L, timeline.positionMs())

        now += 100L
        timeline.update(media(source = "蓝牙音乐", title = "Second", position = 40_100L, publisherTime = now))
        assertEquals(100L, timeline.positionMs())
        now += 100L
        timeline.update(media(source = "蓝牙音乐", title = "Second", position = 40_200L, publisherTime = now))
        assertEquals(200L, timeline.positionMs())

        now += 100L
        timeline.update(media(source = "蓝牙音乐", title = "Second", position = 120_000L, publisherTime = now))
        assertEquals(300L, timeline.positionMs())
        now += 100L
        timeline.update(media(source = "蓝牙音乐", title = "Second", position = 120_100L, publisherTime = now))
        assertEquals(400L, timeline.positionMs())
        now += 100L
        timeline.update(media(source = "蓝牙音乐", title = "Second", position = 120_200L, publisherTime = now))
        assertEquals(120_200L, timeline.positionMs())
    }

    @Test fun sameSourceRecordingAfterMediaGapKeepsTheBoundaryAndStartsAtZero() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(source = "蓝牙音乐", title = "First", position = 40_000L, publisherTime = now))
        timeline.suspendForMediaGap()
        now += 100L
        timeline.update(media(source = "蓝牙音乐", title = "Second", position = -1L))
        assertTrue(timeline.ready())
        assertEquals(0L, timeline.positionMs())
        now += 100L
        timeline.update(media(source = "蓝牙音乐", title = "Second", position = 40_100L, publisherTime = now))
        assertEquals(100L, timeline.positionMs())
    }

    @Test fun differentOldAvrcpAndPublisherPositionsCannotConfirmAcrossOrigins() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(source = "蓝牙音乐", title = "First", position = 40_000L, publisherTime = now))
        now += 100L
        timeline.update(media(source = "蓝牙音乐", title = "Second", position = -1L))

        now += 100L
        timeline.update(avrcp(position = 40_100L, sequence = 1L, capturedAt = now, title = "Second"))
        assertEquals(100L, timeline.positionMs())
        now += 100L
        timeline.update(media(source = "蓝牙音乐", title = "Second", position = 75_000L, publisherTime = now))
        assertEquals(200L, timeline.positionMs())
        now += 100L
        timeline.update(media(source = "蓝牙音乐", title = "Second", position = 75_100L, publisherTime = now))
        assertEquals(300L, timeline.positionMs())
        now += 100L
        timeline.update(media(source = "蓝牙音乐", title = "Second", position = 75_200L, publisherTime = now))
        assertEquals(400L, timeline.positionMs())
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
        assertEquals(38_000L, timeline.positionMs())
        timeline.update(avrcp(position = 12_001L, sequence = 3L, capturedAt = now))
        assertEquals(38_000L, timeline.positionMs())
        timeline.update(avrcp(position = 12_002L, sequence = 4L, capturedAt = now))
        assertEquals(12_002L, timeline.positionMs())
        timeline.update(avrcp(position = 0L, sequence = 5L, capturedAt = now))
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
        assertTrue(timeline.ready())
        assertEquals(0L, timeline.positionMs())
        timeline.update(avrcp(position = 0L, sequence = 2L, capturedAt = now, title = "Second"))
        assertTrue(timeline.ready())
        now += 1_000L
        assertEquals(1_000L, timeline.positionMs())
    }

    @Test fun nonzeroAvrcpPositionOnNewRecordingCannotStartLyricsMidSong() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(avrcp(position = 30_000L, sequence = 1L, capturedAt = now, title = "First"))
        now += 1_000L

        timeline.update(
            avrcp(position = 30_000L, sequence = 2L, capturedAt = now, title = "Second")
        )
        assertTrue(timeline.ready())
        assertEquals(0L, timeline.positionMs())
        now += 1_000L
        assertEquals(1_000L, timeline.positionMs())

        timeline.update(
            avrcp(position = 0L, sequence = 3L, capturedAt = now, title = "Second")
        )
        assertTrue(timeline.ready())
        assertEquals(0L, timeline.positionMs())
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

    @Test fun seekRejectsOnlyVerifiablyOlderPublisherPositionsAndAllowsRealZero() {
        var now = 10_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(position = 30_000L, publisherTime = now))
        now += 1_000L
        timeline.update(media(position = 80_000L, publisherTime = now))
        now += 100L
        timeline.update(media(position = 0L, publisherTime = 10_500L))
        assertEquals(80_100L, timeline.positionMs())
        timeline.update(media(position = 30_000L, publisherTime = 10_000L))
        assertEquals(80_100L, timeline.positionMs())
        // A timestamp-less duplicate must not erase the ordering high-water mark.
        timeline.update(media(position = 80_000L))
        timeline.update(media(position = 0L, publisherTime = 10_900L))
        assertEquals(80_100L, timeline.positionMs())
        now += 100L
        timeline.update(media(position = 0L, publisherTime = now))
        assertEquals(0L, timeline.positionMs())
        now += 100L
        assertEquals(100L, timeline.positionMs())
        timeline.update(media(position = 20_000L))
        assertEquals(20_000L, timeline.positionMs())
    }

    @Test fun publisherReplacementDoesNotInheritThePreviousPublishersOrderingFence() {
        var now = 10_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(position = 30_000L, publisherTime = now))
        now += 1_000L
        timeline.update(media(position = 20_000L, publisherTime = 9_000L, generation = 2))
        assertEquals(22_000L, timeline.positionMs())
    }

    @Test fun transportEnrichmentAndPublisherChangesKeepTheSameRecordingGeneration() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        assertEquals(0L, timeline.recordingGeneration())
        val partial = media(artist = "", album = "", duration = 0L)
        timeline.update(partial)
        val generation = timeline.recordingGeneration()
        val unknownAnchor = timeline.anchor()
        assertTrue(generation > 0L)
        assertFalse(timeline.ready())
        val enriched = media(mediaId = "item/A")
        assertNotEquals(partial.recordingKey(), enriched.recordingKey())
        timeline.update(enriched)
        assertEquals(generation, timeline.recordingGeneration())
        now += 1_000L
        for (incoming in listOf(
            media(mediaId = "item/A", duration = 201_000L, generation = 2),
            media(mediaId = "item/A", title = "ＳＯＮＧ", artist = "Ａｒｔｉｓｔ", duration = 204_001L, generation = 3),
            media(duration = 0L, generation = 4),
        )) {
            timeline.update(incoming)
            assertEquals(generation, timeline.recordingGeneration())
            assertSame("identity projection never creates a provisional clock", unknownAnchor, timeline.anchor())
            assertFalse(timeline.ready())
        }
    }

    @Test fun realRecordingChangesAndResetNeverReuseAnEarlierGeneration() {
        val timeline = ContentLyricsTimeline { 1_000L }
        timeline.update(media(mediaId = "item/A"))
        var generation = timeline.recordingGeneration()
        for (incoming in listOf(
            media(mediaId = "item/B"),
            media(mediaId = "item/B", artist = "Other Artist"),
            media(mediaId = "item/B", artist = "Other Artist", album = "Other Album"),
            media(title = "Next Song"),
            media(source = "USB音乐", title = "Next Song"),
        )) {
            timeline.update(incoming)
            assertEquals(++generation, timeline.recordingGeneration())
        }
        val latest = media(source = "USB音乐", title = "Next Song")
        timeline.reset()
        assertEquals(0L, timeline.recordingGeneration())
        timeline.update(latest)
        assertEquals(++generation, timeline.recordingGeneration())
        timeline.update(ContentPorts.MediaSnapshot.unavailable())
        assertEquals(0L, timeline.recordingGeneration())
        timeline.update(latest)
        assertEquals(++generation, timeline.recordingGeneration())
    }

    private fun avrcp(position: Long = -1L, sequence: Long, capturedAt: Long,
        eventState: Int = -1, playing: Boolean = true, title: String = "Song", publisherTime: Long = 0L) =
        ContentPorts.MediaSnapshot(true, false, "蓝牙音乐", playing, 1, title, "Artist", true, true,
            null, "", "Album", 200_000L, 0L, publisherTime, 0f, "", ContentPorts.MediaSongIdentity.SONG,
            android.media.session.PlaybackState.STATE_PLAYING, sequence, position, eventState, capturedAt)

    private fun media(source: String = "本机音乐", title: String = "Song", position: Long = -1L,
        duration: Long = 200_000L, publisherTime: Long = 0L, playing: Boolean = true, generation: Int = 1,
        artist: String = "Artist", album: String = "Album", mediaId: String = "") =
        ContentPorts.MediaSnapshot(true, false, source, playing, generation, title, artist, true, true,
            null, mediaId, album, duration, position, publisherTime, if (playing) 1f else 0f,
            ContentPorts.MediaSongIdentity.SONG)
}
