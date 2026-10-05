package com.icar03.content.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Test

class PlaybackTrajectoryTest {
    @Test
    fun correctedTrajectoryIsContinuousAndReturnsToNormalSpeedAfterFiniteRamp() {
        val positive = PlaybackTrajectory(
            basePositionMs = 100L,
            capturedAtMs = 1_000L,
            speed = 1f,
            durationMs = 20_000L,
            correctionMs = 3.0,
            correctionDurationMs = 1_000L,
        )
        assertEquals(100.0, positive.rawPositionAt(1_000L), 0.0)
        assertEquals(200.3, positive.rawPositionAt(1_100L), 1e-9)
        assertEquals(1_103.0, positive.rawPositionAt(2_000L), 1e-9)
        assertEquals(2_103.0, positive.rawPositionAt(3_000L), 1e-9)
        assertEquals(200L, positive.sampleAt(1_100L))

        val negative = PlaybackTrajectory(
            basePositionMs = 1_000L,
            capturedAtMs = 1_000L,
            speed = -1f,
            durationMs = 20_000L,
            correctionMs = 0.5,
            correctionDurationMs = 1_000L,
        )
        assertEquals(900.05, negative.rawPositionAt(1_100L), 1e-9)
        assertEquals(0.5, negative.rawPositionAt(2_000L), 1e-9)
        assertEquals(-999.5, negative.rawPositionAt(3_000L), 1e-9)
        assertEquals(0L, negative.sampleAt(3_000L))
    }

    @Test
    fun correctionCanBeReanchoredWithoutMutatingEitherTrajectory() {
        val first = PlaybackTrajectory(
            basePositionMs = 500L,
            capturedAtMs = 10_000L,
            speed = 1f,
            durationMs = 30_000L,
            correctionMs = 8.0,
            correctionDurationMs = 2_000L,
        )
        val atReanchor = first.rawPositionAt(11_000L)
        val second = PlaybackTrajectory(
            basePositionMs = atReanchor.toLong(),
            capturedAtMs = 11_000L,
            speed = 1f,
            durationMs = 30_000L,
            correctionMs = -2.0,
            correctionDurationMs = 500L,
        )
        val firstBefore = first.rawPositionAt(12_000L)
        val secondAtCapture = second.rawPositionAt(11_000L)
        assertEquals(atReanchor, secondAtCapture, 0.0)
        assertEquals(firstBefore, first.rawPositionAt(12_000L), 0.0)
        assertEquals(500L, first.sampleAt(10_000L))
    }

    @Test
    fun noCorrectionKeepsOldDoubleArithmeticAndExtremeClamps() {
        val halfSpeed = PlaybackTrajectory(123L, 1_000L, 0.5f, 0L)
        assertEquals(123L, halfSpeed.sampleAt(1_000L))
        assertEquals(126L, halfSpeed.sampleAt(1_007L))
        assertEquals(123L, halfSpeed.sampleAt(999L))

        val hugeForward = PlaybackTrajectory(0L, 0L, Float.MAX_VALUE, 0L)
        assertEquals(Long.MAX_VALUE, hugeForward.sampleAt(Long.MAX_VALUE))
        val hugeReverse = PlaybackTrajectory(0L, 0L, -Float.MAX_VALUE, 0L)
        assertEquals(0L, hugeReverse.sampleAt(Long.MAX_VALUE))

        val bounded = PlaybackTrajectory(4_000L, 0L, 2f, 4_500L)
        assertEquals(4_000L, bounded.sampleAt(0L))
        assertEquals(4_500L, bounded.sampleAt(Long.MAX_VALUE))
        val unbounded = PlaybackTrajectory(4_000L, 0L, 2f, 0L)
        assertEquals(8_000L, unbounded.sampleAt(2_000L))
    }

    @Test
    fun pausedTrajectoryIsStaticAndDoesNotApplyStaleCorrection() {
        val paused = PlaybackTrajectory(
            basePositionMs = 4_000L,
            capturedAtMs = 9_000L,
            speed = 0f,
            durationMs = 5_000L,
            correctionMs = 100.0,
            correctionDurationMs = 1_000L,
        )
        assertEquals(4_000L, paused.sampleAt(9_000L))
        assertEquals(4_000L, paused.sampleAt(Long.MAX_VALUE))
        val extremePaused = PlaybackTrajectory(Long.MAX_VALUE - 1L, 0L, 0f, 0L)
        assertEquals(Long.MAX_VALUE - 1L, extremePaused.sampleAt(Long.MAX_VALUE))
        assertNull(paused.delayUntilPosition(4_001.0, 9_000L))
        assertEquals(0L, paused.delayUntilPosition(4_000.0, 9_000L))
        assertEquals(1L, paused.delayUntilSample(3_000L, 9_000L))
        assertNull(paused.delayUntilSample(4_001L, 9_000L))
    }

    @Test
    fun constructorRejectsInvalidDurationCorrectionAndDirectionReversal() {
        assertIllegalArgument { PlaybackTrajectory(0L, 0L, Float.NaN, 1_000L) }
        assertIllegalArgument { PlaybackTrajectory(0L, 0L, Float.POSITIVE_INFINITY, 1_000L) }
        assertIllegalArgument { PlaybackTrajectory(0L, 0L, 1f, -1L) }
        assertIllegalArgument {
            PlaybackTrajectory(0L, 0L, 1f, 1_000L, Double.NaN, 100L)
        }
        assertIllegalArgument {
            PlaybackTrajectory(0L, 0L, 1f, 1_000L, Double.POSITIVE_INFINITY, 100L)
        }
        assertIllegalArgument {
            PlaybackTrajectory(0L, 0L, 1f, 1_000L, 1.0, 0L)
        }
        assertIllegalArgument {
            PlaybackTrajectory(0L, 0L, 1f, 1_000L, -1_001.0, 1_000L)
        }
        assertIllegalArgument {
            PlaybackTrajectory(0L, 0L, -1f, 1_000L, 1_001.0, 1_000L)
        }
    }

    @Test
    fun delayUsesFirstCrossingAndMinimumPastBoundaryDelay() {
        val forward = PlaybackTrajectory(0L, 1_000L, 1f, 5_000L)
        assertEquals(2_000L, forward.delayUntilPosition(2_000.0, 1_000L))
        assertEquals(1L, forward.delayUntilPosition(2_000.0, 2_999L))
        assertEquals(0L, forward.delayUntilPosition(2_000.0, 3_000L))
        assertEquals(1L, forward.delayUntilPosition(2_000.0, 3_001L))
        assertEquals(1L, forward.delayUntilSample(2_000L, 2_999L))
        assertEquals(0L, forward.delayUntilSample(2_000L, 3_000L))
        assertEquals(1L, forward.delayUntilSample(2_000L, 3_001L))

        val reverse = PlaybackTrajectory(1_000L, 0L, -0.5f, 0L)
        assertEquals(1L, reverse.delayUntilSample(999L, 0L))
        assertEquals(0L, reverse.delayUntilSample(999L, 1L))
        assertEquals(2L, reverse.delayUntilPosition(999.0, 0L))
        assertEquals(0L, reverse.delayUntilPosition(999.0, 2L))
    }

    @Test
    fun delayTracksFutureCaptureCorrectionEndAndTrackBoundaries() {
        val future = PlaybackTrajectory(0L, 1_000L, 1f, 5_000L)
        assertEquals(1_001L, future.delayUntilPosition(1.0, 0L))
        assertEquals(1_001L, future.delayUntilSample(1L, 0L))

        val corrected = PlaybackTrajectory(
            basePositionMs = 0L,
            capturedAtMs = 0L,
            speed = 1f,
            durationMs = 2_000L,
            correctionMs = 10.0,
            correctionDurationMs = 100L,
        )
        assertEquals(100L, corrected.delayUntilPosition(110.0, 0L))
        assertEquals(101L, corrected.delayUntilPosition(111.0, 0L))
        assertEquals(100L, corrected.delayUntilSample(110L, 0L))
        assertEquals(101L, corrected.delayUntilSample(111L, 0L))

        assertNull(future.delayUntilPosition(5_001.0, 1_000L))
        assertNull(future.delayUntilSample(5_001L, 1_000L))
        assertNull(future.delayUntilPosition(-1.0, 1_000L))
        assertNull(future.delayUntilSample(-1L, 1_000L))
    }

    @Test
    fun longTimesAndRepeatedQueriesRemainPureAndOverflowSafe() {
        val trajectory = PlaybackTrajectory(
            basePositionMs = 1L,
            capturedAtMs = 0L,
            speed = 1f,
            durationMs = 0L,
        )
        val firstSample = trajectory.sampleAt(Long.MAX_VALUE)
        val firstRaw = trajectory.rawPositionAt(Long.MAX_VALUE)
        val firstDelay = trajectory.delayUntilSample(Long.MAX_VALUE, Long.MAX_VALUE - 1L)
        repeat(20) {
            assertEquals(firstSample, trajectory.sampleAt(Long.MAX_VALUE))
            assertEquals(firstRaw, trajectory.rawPositionAt(Long.MAX_VALUE), 0.0)
            assertEquals(firstDelay, trajectory.delayUntilSample(Long.MAX_VALUE, Long.MAX_VALUE - 1L))
        }
        assertTrue(firstSample >= 0L)
        assertTrue(firstDelay == 0L || firstDelay == 1L || firstDelay == Long.MAX_VALUE)
    }

    private fun assertIllegalArgument(block: () -> Unit) {
        try {
            block()
            fail("expected IllegalArgumentException")
        } catch (_: IllegalArgumentException) {
            // expected
        }
    }
}
