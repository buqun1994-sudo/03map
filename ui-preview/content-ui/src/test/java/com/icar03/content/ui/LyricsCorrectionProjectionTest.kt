package com.icar03.content.ui

import com.icar03.content.model.PlaybackTrajectory
import org.junit.Assert.*
import org.junit.Test

class LyricsCorrectionProjectionTest {
    @Test fun drawingAndFrameWakeUseTheSameCorrectedPosition() {
        val trajectory = PlaybackTrajectory(10_000, 1_000, 1f, 30_000, -80.0, 1_000)
        val lyrics = LyricsState(timelineReady = true, positionMs = 10_000,
            capturedAtMs = 1_000, playbackSpeed = 1f, durationMs = 30_000,
            playbackTrajectory = trajectory)
        for (now in listOf(1_000L, 1_001, 1_500, 2_000, 2_001, 10_000)) {
            assertEquals(trajectory.sampleAt(now), lyricPositionAt(lyrics, now))
        }
        val schedule = LyricFrameSchedule(listOf(LyricFrameInterval(10_500.0, 10_700.0)))
        val delay = requireNotNull(schedule.delayUntilNext(lyrics, 1_000))
        assertTrue(delay > 500) // Slower during phase repayment; nominal-speed wake is too early.
        assertFalse(schedule.needsFramesAt(lyricPositionAt(lyrics, 1_000 + delay - 1)))
        assertTrue(schedule.needsFramesAt(lyricPositionAt(lyrics, 1_000 + delay)))
    }

    @Test fun fractionalWordOnsetWakesWhenTheIntegerDrawingSampleCanActuallyReachIt() {
        val trajectory = PlaybackTrajectory(0, 1_000, 1f, 5_000, -80.0, 1_000)
        val lyrics = LyricsState(timelineReady = true, positionMs = 0,
            playbackSpeed = 1f, durationMs = 5_000, playbackTrajectory = trajectory)
        val schedule = LyricFrameSchedule(listOf(LyricFrameInterval(100.5, 300.0)))
        val delay = requireNotNull(schedule.delayUntilNext(lyrics, 1_000))
        assertFalse(schedule.needsFramesAt(lyricPositionAt(lyrics, 1_000 + delay - 1)))
        assertTrue(schedule.needsFramesAt(lyricPositionAt(lyrics, 1_000 + delay)))
    }

    @Test fun frozenRetiringBodyKeepsItsLastHighlightThroughAFormerCorrection() {
        val trajectory = PlaybackTrajectory(10_000, 1_000, 1f, 30_000, 80.0, 1_000)
        val active = LyricsState(timelineReady = true, positionMs = 10_000,
            playbackSpeed = 1f, durationMs = 30_000, playbackTrajectory = trajectory)
        val frozen = active.copy(positionMs = lyricPositionAt(active, 1_500),
            playbackSpeed = 0f, playbackTrajectory = null)
        assertEquals(10_540L, lyricPositionAt(frozen, 1_500))
        assertEquals(10_540L, lyricPositionAt(frozen, 50_000))
        assertFalse(lyricFrameEnabled(frozen, true, frozen.positionMs))
    }

    @Test fun anUnknownTimelineCannotAnimateEvenWhenAFormerTrajectoryIsPresent() {
        val lyrics = LyricsState(positionMs = 10_000, playbackSpeed = 1f,
            playbackTrajectory = PlaybackTrajectory(10_000, 1_000, 1f, 30_000, -80.0, 1_000))
        assertEquals(-1L, lyricPositionAt(lyrics, 2_000))
        assertFalse(lyricFrameEnabled(lyrics, true, lyricPositionAt(lyrics, 2_000)))
    }
}
