package com.icar03.content.runtime.lyrics

import android.media.session.PlaybackState
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentState
import org.junit.Assert.*
import org.junit.Test

class LyricsPlaybackAnchorContractTest {
    @Test fun queriesAndRepeatedActualFactsKeepTheExactCanonicalPairReferenceAndRevision() {
        var now = 1_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(5_000, time = 900))
        val anchor = timeline.anchor()
        assertEquals(5_000L, anchor.basePositionMs)
        assertEquals(900L, anchor.capturedAtMs)
        val revision = anchor.revision
        repeat(100) {
            now += 100
            assertEquals(anchor.sampleAt(now), timeline.positionMs())
            assertEquals(1f, timeline.speed(), 0f)
            assertTrue(timeline.ready())
            timeline.update(media(5_000, time = now))
            assertSame(anchor, timeline.anchor())
            assertEquals(revision, timeline.anchor().revision)
        }
        val snapshot = ContentState().apply { lyricsAnchor = anchor }
        assertSame(anchor, snapshot.copy().lyricsAnchor)
    }

    @Test fun floatPublisherSpeedUsesTheOriginalDoubleArithmeticOverLongIntervalsAndOverflow() {
        for (speed in listOf(0.1f, 0.7f, 1.0001f, 1.25f, 2.75f, -0.7f, Float.MAX_VALUE)) {
            var now = 10_000L
            val tracker = MediaSessionTimelineTracker { now }
            tracker.update("recording", PlaybackState.STATE_PLAYING, 50_000, speed, now, 86_400_000)
            val anchor = tracker.anchor()
            for (elapsed in listOf(0L, 1L, 13L, 12_345L, 10_000_001L, 86_400_000L, Long.MAX_VALUE - 10_000L)) {
                now = 10_000 + elapsed
                assertEquals("speed=$speed elapsed=$elapsed", tracker.current(86_400_000).positionMs, anchor.sampleAt(now))
                assertSame(anchor, tracker.anchor())
            }
        }
        assertEquals(-1L, ContentPorts.LyricsPlaybackAnchor.unknown().sampleAt(Long.MAX_VALUE))
        assertSame(ContentPorts.LyricsPlaybackAnchor.unknown(), ContentLyricsTimeline { 1_000L }.anchor())
        val paused = ContentPorts.LyricsPlaybackAnchor(Long.MAX_VALUE - 1, 1, 0f, 0, true, 1)
        assertEquals(Long.MAX_VALUE - 1, paused.sampleAt(Long.MAX_VALUE))
    }

    @Test fun theSameLinearTrajectoryRetainsIdentityButSeekPauseSpeedAndDurationAreNewFacts() {
        var now = 10_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(30_000, time = now))
        val first = timeline.anchor()
        now += 1_000
        timeline.update(media(31_000, time = now))
        assertSame(first, timeline.anchor())
        assertEquals(30_000L, first.basePositionMs)
        assertEquals(10_000L, first.capturedAtMs)
        timeline.update(media(80_000, time = now))
        val seek = timeline.anchor()
        assertNotSame(first, seek)
        assertTrue(seek.revision > first.revision)
        now += 100
        timeline.update(media(80_000, time = now, playing = false))
        val pause = timeline.anchor()
        assertNotSame(seek, pause)
        assertEquals(80_100L, pause.basePositionMs)
        now += 10_000
        assertEquals(80_100L, pause.sampleAt(now))
        timeline.update(media(80_000, time = now, playing = false))
        assertSame(pause, timeline.anchor())
        timeline.update(media(80_000, time = now, speed = 1.25f))
        val resumed = timeline.anchor()
        assertNotSame(pause, resumed)
        now += 8_000
        assertEquals(90_100L, resumed.sampleAt(now))
        timeline.update(media(80_000, time = now, speed = 1.25f, duration = 85_000))
        val duration = timeline.anchor()
        assertNotSame(resumed, duration)
        assertEquals(resumed.basePositionMs, duration.basePositionMs)
        assertEquals(resumed.capturedAtMs, duration.capturedAtMs)
        assertEquals(85_000L, duration.sampleAt(now))
    }

    @Test fun incompleteInitializationZeroNeverBecomesAClockAndPartialZeroCannotUndoRecoveryOrARealSeek() {
        var now = 10_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(0, time = now, duration = 0))
        assertSame(ContentPorts.LyricsPlaybackAnchor.unknown(), timeline.anchor())
        now += 5_000
        timeline.update(media(0, time = now, duration = 0))
        assertFalse(timeline.ready())
        timeline.update(media(70_000, time = now))
        val recovered = timeline.anchor()
        now += 1_000
        timeline.update(media(0, time = now, duration = 0))
        assertSame(recovered, timeline.anchor())
        assertEquals(71_000L, timeline.positionMs())
        assertEquals(200_000L, timeline.anchor().durationMs)
        timeline.update(media(0, time = now))
        assertNotSame(recovered, timeline.anchor())
        assertTrue(timeline.ready())
        assertEquals(0L, timeline.positionMs())
    }

    @Test fun publisherOrderingAndReplacementPreserveOnlyVerifiedFencesAndAcceptRealZero() {
        var now = 10_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(media(30_000, time = now))
        now += 1_000
        timeline.update(media(80_000, time = now))
        val seek = timeline.anchor()
        now += 100
        timeline.update(media(0, time = 10_500))
        timeline.update(media(-1, time = now))
        timeline.update(media(80_000))
        assertSame(seek, timeline.anchor())
        assertEquals(80_100L, timeline.positionMs())
        timeline.update(media(0, time = now))
        val zero = timeline.anchor()
        assertNotSame(seek, zero)
        assertEquals(0L, zero.sampleAt(now))
        now += 100
        timeline.update(media(20_000, time = 9_000, generation = 2))
        assertNotSame(zero, timeline.anchor())
        assertEquals(22_200L, timeline.positionMs())
    }

    @Test fun avrcpAgeSequenceAndRecordingRulesKeepDuplicatesStableAndExplicitZeroTrustworthy() {
        var now = 10_000L
        val timeline = ContentLyricsTimeline { now }
        timeline.update(avrcp(0, 1, now + 1))
        assertFalse(timeline.ready())
        now += 1_000
        timeline.update(avrcp(0, 1, now - 999))
        assertFalse(timeline.ready()) // future envelope sequence was consumed, never replayed.
        timeline.update(avrcp(40_000, 2, now - 1_501))
        assertFalse(timeline.ready())
        timeline.update(avrcp(40_000, 3, now))
        val verified = timeline.anchor()
        now += 1_000
        timeline.update(avrcp(40_000, 3, now - 1_000, publisherTime = now))
        timeline.update(avrcp(0, 2, now))
        assertSame(verified, timeline.anchor())
        assertEquals(41_000L, timeline.positionMs())
        timeline.update(avrcp(0, 4, now, duration = 0))
        assertTrue(timeline.ready())
        assertNotSame(verified, timeline.anchor())
        assertEquals(0L, timeline.positionMs())
        timeline.update(avrcp(0, 4, now, title = "Second"))
        assertTrue(timeline.ready())
        assertNotSame(verified, timeline.anchor())
        assertEquals(0L, timeline.positionMs())
        timeline.update(avrcp(0, 4, now, title = "Second"))
        assertTrue(timeline.ready())
        assertEquals(0L, timeline.positionMs())
    }

    @Test fun replacementFrameDeferralAndResetNeverMakeQueriesIntoNewPublisherEvidence() {
        var now = 1_000L
        val tracker = MediaSessionTimelineTracker { now }
        tracker.update("recording", PlaybackState.STATE_PLAYING, 5_000, 1f, 0, 200_000)
        val anchor = tracker.anchor()
        tracker.deferNextReportedPosition()
        now += 1_000
        tracker.update("recording", PlaybackState.STATE_PLAYING, 0, 1f, 0, 200_000)
        now += 1_000
        tracker.update("recording", PlaybackState.STATE_PLAYING, 0, 1f, 0, 200_000)
        assertSame(anchor, tracker.anchor())
        assertEquals(7_000L, tracker.current(200_000).positionMs)
        tracker.update("recording", PlaybackState.STATE_PLAYING, 1_000, 1f, now, 200_000)
        assertNotSame(anchor, tracker.anchor())
        tracker.reset()
        assertSame(ContentPorts.LyricsPlaybackAnchor.unknown(), tracker.anchor())
        assertFalse(tracker.current(200_000).timelineReady)
    }

    private fun media(position: Long, time: Long = 0, speed: Float = 1f, duration: Long = 200_000,
        playing: Boolean = true, generation: Int = 1) = ContentPorts.MediaSnapshot(
        true, false, "本机音乐", playing, generation, "Song", "Artist", true, true,
        null, "", "Album", duration, position, time, if (playing) speed else 0f, ContentPorts.MediaSongIdentity.SONG)

    private fun avrcp(position: Long, sequence: Long, capturedAt: Long, duration: Long = 200_000,
        publisherTime: Long = 0, title: String = "Song") = ContentPorts.MediaSnapshot(
        true, false, "蓝牙音乐", true, 1, title, "Artist", true, true, null, "", "Album", duration,
        0, publisherTime, 0f, "", ContentPorts.MediaSongIdentity.SONG, PlaybackState.STATE_PLAYING,
        sequence, position, -1, capturedAt)
}
