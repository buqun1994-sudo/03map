package com.icar03.content.runtime.lyrics

import android.media.session.PlaybackState
import com.autonavi.amapauto.content.ContentPorts
import org.junit.Assert.*
import org.junit.Test

/** Bluetooth phase evidence cannot distinguish a tiny seek from a small sampling error. */
class BluetoothTimelineCorrectionTest {
    @Test fun loggedSameValueBurstKeepsTheAnchorAndTheNextSampleCorrectsWithoutAJump() {
        val rig = Rig()
        rig.avrcp(106_639L, 4_290L)
        val first = rig.timeline.anchor()
        rig.now = 10_021L
        rig.avrcp(106_639L, 4_291L)
        assertSame(first, rig.timeline.anchor())
        assertEquals(106_660L, rig.timeline.positionMs())

        rig.now = 10_184L
        val before = first.sampleAt(rig.now)
        rig.avrcp(106_726L, 4_294L)
        val corrected = rig.timeline.anchor()
        assertEquals(before, corrected.sampleAt(rig.now))
        assertEquals(106_823L, before)
        assertCorrection(corrected, -97.0, 1_213L)
        assertEquals(1f, corrected.speed, 0f)
        assertTrue(corrected.revision > first.revision)

        val end = rig.now + corrected.trajectory.correctionDurationMs
        var previous = before
        while (rig.now <= end) {
            val sampled = rig.timeline.positionMs()
            assertTrue("backward step at ${rig.now}: $previous -> $sampled", sampled >= previous)
            assertTrue("unexpected step at ${rig.now}", sampled - previous <= 2L)
            assertEquals(corrected.sampleAt(rig.now), sampled)
            previous = sampled
            rig.now++
        }
        assertEquals(106_726L + 1_213L, corrected.sampleAt(end))
        assertEquals(1_000L, corrected.sampleAt(end + 1_000L) - corrected.sampleAt(end))
        assertEquals(10_000L, corrected.sampleAt(end + 10_000L) - corrected.sampleAt(end))
        assertSame(corrected, rig.timeline.anchor())
    }

    @Test fun alternatingLoggedPositionsStartBothCorrectionsAtThePreviousSample() {
        val rig = Rig()
        rig.avrcp(209_147L, 1L)
        rig.now += 6L
        val beforeFirst = rig.timeline.positionMs()
        rig.avrcp(209_127L, 2L)
        val first = rig.timeline.anchor()
        assertEquals(beforeFirst, first.sampleAt(rig.now))
        assertCorrection(first, -26.0, 1_000L)

        rig.now = 10_023L
        val beforeSecond = first.sampleAt(rig.now)
        rig.avrcp(209_147L, 3L)
        val second = rig.timeline.anchor()
        assertEquals(beforeSecond, second.sampleAt(rig.now))
        assertEquals(209_169L, beforeSecond)
        assertCorrection(second, -22.0, 1_000L)
        assertTrue(second.revision > first.revision)
        assertEquals(210_147L, second.sampleAt(rig.now + 1_000L))
        assertEquals(211_147L, second.sampleAt(rig.now + 2_000L))
    }

    @Test fun significantForwardAndBackwardSeeksRequireTwoConsistentSamples() {
        for (target in listOf(80_000L, 12_000L)) {
            val rig = correctingRig()
            val previous = rig.timeline.anchor()
            rig.now += 100L
            rig.avrcp(target, 3L)
            assertSame(previous, rig.timeline.anchor())
            assertEquals(previous.sampleAt(rig.now), rig.timeline.positionMs())

            rig.now += 100L
            rig.avrcp(target + 100L, 4L)
            assertSame(previous, rig.timeline.anchor())
            assertEquals(previous.sampleAt(rig.now), rig.timeline.positionMs())

            rig.now += 100L
            rig.avrcp(target + 200L, 5L)
            val sought = rig.timeline.anchor()
            assertNotSame(previous, sought)
            assertEquals(target + 200L, rig.timeline.positionMs())
            assertCorrection(sought, 0.0, 0L)
            rig.now += 1_000L
            assertEquals(target + 1_200L, rig.timeline.positionMs())
        }
    }

    @Test fun rapidBackwardAvrcpSampleIsHeldWhenTheNextSampleReturnsToTheEstablishedTrack() {
        val rig = Rig()
        rig.avrcp(106_968L, 1L)
        val established = rig.timeline.anchor()
        rig.now += 25L
        val beforeAnomaly = rig.timeline.positionMs()
        rig.avrcp(106_276L, 2L)
        assertSame(established, rig.timeline.anchor())
        assertEquals(beforeAnomaly, rig.timeline.positionMs())

        rig.now += 5L
        val beforeRecovery = rig.timeline.positionMs()
        rig.avrcp(106_968L, 3L)
        assertTrue("stale AVRCP sample moved the timeline backward",
            rig.timeline.positionMs() >= beforeRecovery)
        assertEquals(beforeRecovery, rig.timeline.positionMs())
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
    }

    @Test fun verifiedZeroSeekImmediatelyCancelsAnActiveCorrection() {
        val rig = correctingRig()
        rig.now += 10L
        rig.avrcp(0L, 3L)
        assertTrue(rig.timeline.ready())
        assertEquals(0L, rig.timeline.positionMs())
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
        rig.now += 1_000L
        assertEquals(1_000L, rig.timeline.positionMs())
    }

    @Test fun tinySeeksInEitherDirectionConvergeToTheNewNominalTrajectory() {
        // Identical evidence receives the same finite correction whether it was a seek or jitter.
        for (error in listOf(-50L, 50L)) {
            val rig = Rig()
            rig.avrcp(40_000L, 1L)
            rig.now += 100L
            val before = rig.timeline.positionMs()
            val target = before + error
            rig.avrcp(target, 2L)
            val anchor = rig.timeline.anchor()
            assertEquals(before, anchor.sampleAt(rig.now))
            assertCorrection(anchor, error.toDouble(), 1_000L)
            assertEquals(target + 1_000L, anchor.sampleAt(rig.now + 1_000L))
            assertEquals(target + 6_000L, anchor.sampleAt(rig.now + 6_000L))
            assertEquals(1f, rig.timeline.speed(), 0f)
        }
    }

    @Test fun the250MillisecondBoundaryIsCorrectedButLargerSeekWaitsForConfirmation() {
        for (error in listOf(-251L, -250L, 250L, 251L)) {
            val rig = Rig()
            rig.avrcp(40_000L, 1L)
            rig.now++
            val before = rig.timeline.positionMs()
            val previousAnchor = rig.timeline.anchor()
            val target = before + error
            rig.avrcp(target, 2L)
            val anchor = rig.timeline.anchor()
            if (kotlin.math.abs(error) == 250L) {
                assertEquals(before, rig.timeline.positionMs())
                assertCorrection(anchor, error.toDouble(), 3_125L)
                assertEquals(target + 3_125L, anchor.sampleAt(rig.now + 3_125L))
            } else {
                assertSame("single large sample must remain pending", previousAnchor, anchor)
                assertEquals(before, rig.timeline.positionMs())
                rig.now += 100L
                rig.avrcp(target + 100L, 3L)
                assertSame(previousAnchor, rig.timeline.anchor())
                assertEquals(previousAnchor.sampleAt(rig.now), rig.timeline.positionMs())
                rig.now += 100L
                rig.avrcp(target + 200L, 4L)
                assertEquals(target + 200L, rig.timeline.positionMs())
                assertCorrection(rig.timeline.anchor(), 0.0, 0L)
            }
        }
    }

    @Test fun sameValuePauseAndResumeFreezeTheCurrentPositionAndCancelTheOldCorrection() {
        val rig = correctingRig()
        rig.now += 100L
        val frozen = rig.timeline.positionMs()
        rig.avrcp(40_051L, 3L, eventState = PlaybackState.STATE_PAUSED)
        val paused = rig.timeline.anchor()
        assertEquals(frozen, rig.timeline.positionMs())
        assertEquals(0f, rig.timeline.speed(), 0f)
        assertCorrection(paused, 0.0, 0L)
        rig.now += 5_000L
        assertEquals(frozen, rig.timeline.positionMs())

        rig.avrcp(40_051L, 4L, eventState = PlaybackState.STATE_PLAYING)
        val resumed = rig.timeline.anchor()
        assertEquals(frozen, rig.timeline.positionMs())
        assertEquals(1f, rig.timeline.speed(), 0f)
        assertCorrection(resumed, 0.0, 0L)
        rig.now += 1_000L
        assertEquals(frozen + 1_000L, rig.timeline.positionMs())
    }

    @Test fun changedPositionsDuringPauseAndResumeAreImmediatelyAdmitted() {
        val rig = correctingRig()
        rig.now += 100L
        rig.avrcp(40_130L, 3L, eventState = PlaybackState.STATE_PAUSED)
        assertEquals(40_130L, rig.timeline.positionMs())
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
        rig.now += 1_000L
        assertEquals(40_130L, rig.timeline.positionMs())
        rig.avrcp(40_180L, 4L, eventState = PlaybackState.STATE_PLAYING)
        assertEquals(40_180L, rig.timeline.positionMs())
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
        rig.now += 100L
        assertEquals(40_280L, rig.timeline.positionMs())
    }

    @Test fun sameValueSpeedChangesKeepTheSampledPositionAndDiscardAnActiveCorrection() {
        val rig = correctingRig()
        rig.now += 100L
        val before = rig.timeline.positionMs()
        rig.avrcp(40_051L, 3L, state = PlaybackState.STATE_FAST_FORWARDING,
            eventState = PlaybackState.STATE_FAST_FORWARDING, speed = 2f)
        assertEquals(before, rig.timeline.positionMs())
        assertEquals(2f, rig.timeline.speed(), 0f)
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
        rig.now += 100L
        assertEquals(before + 200L, rig.timeline.positionMs())
        rig.avrcp(40_351L, 4L, eventState = PlaybackState.STATE_PLAYING, speed = 0.5f)
        assertEquals(40_351L, rig.timeline.positionMs())
        assertEquals(0.5f, rig.timeline.speed(), 0f)
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
        rig.now += 100L
        assertEquals(40_401L, rig.timeline.positionMs())
    }

    @Test fun fastForwardUsesNominal2xSpeedToProjectSamplesAndBoundCorrectionDuration() {
        val rig = Rig()
        rig.avrcp(40_000L, 1L, state = PlaybackState.STATE_FAST_FORWARDING, speed = 2f)
        rig.now++
        val before = rig.timeline.positionMs()
        rig.avrcp(40_203L, 2L, state = PlaybackState.STATE_FAST_FORWARDING, speed = 2f)
        val anchor = rig.timeline.anchor()
        assertEquals(40_002L, before)
        assertEquals(before, rig.timeline.positionMs())
        assertEquals(2f, rig.timeline.speed(), 0f)
        assertCorrection(anchor, 201.0, 1_257L)
        assertEquals(40_203L + 2L * 1_257L, anchor.sampleAt(rig.now + 1_257L))
        assertEquals(2_000L, anchor.sampleAt(rig.now + 2_257L) - anchor.sampleAt(rig.now + 1_257L))
    }

    @Test fun rewindKeepsItsNegativeNominalSpeedAndDoesNotApplyForwardPhaseCorrection() {
        val rig = Rig()
        rig.avrcp(40_000L, 1L, state = PlaybackState.STATE_REWINDING, speed = -1f)
        rig.now += 10L
        rig.avrcp(39_975L, 2L, state = PlaybackState.STATE_REWINDING, speed = -1f)
        assertEquals(39_975L, rig.timeline.positionMs())
        assertEquals(-1f, rig.timeline.speed(), 0f)
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
        rig.now += 100L
        assertEquals(39_875L, rig.timeline.positionMs())
    }

    @Test fun aNewRecordingStartsDirectlyAndCannotInheritThePreviousCorrection() {
        val rig = correctingRig()
        val generation = rig.timeline.recordingGeneration()
        rig.now += 10L
        rig.avrcp(40_030L, 3L, title = "Next Song")
        assertTrue(rig.timeline.recordingGeneration() > generation)
        assertTrue(rig.timeline.ready())
        assertEquals(0L, rig.timeline.positionMs())
        rig.now += 1_000L
        assertEquals(1_000L, rig.timeline.positionMs())
        rig.avrcp(0L, 4L, title = "Next Song")
        assertEquals(0L, rig.timeline.positionMs())
    }

    @Test fun sourceChangesCreateANewRecordingGenerationAndResetCorrectionEvidence() {
        val rig = correctingRig()
        val bluetoothGeneration = rig.timeline.recordingGeneration()
        rig.now += 10L
        rig.media(500L, source = "USB音乐", publisherTime = rig.now)
        val usbGeneration = rig.timeline.recordingGeneration()
        assertTrue(usbGeneration > bluetoothGeneration)
        assertEquals(500L, rig.timeline.positionMs())
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
        rig.now += 10L
        rig.avrcp(510L, 3L)
        assertTrue(rig.timeline.recordingGeneration() > usbGeneration)
        assertEquals(510L, rig.timeline.positionMs())
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
    }

    @Test fun theFirstKnownSampleIsAnchoredAtItsCaptureWithoutAProvisionalCorrection() {
        val rig = Rig()
        rig.media(-1L)
        assertFalse(rig.timeline.ready())
        rig.now += 100L
        rig.avrcp(30_000L, 1L, capturedAt = rig.now - 50L)
        val anchor = rig.timeline.anchor()
        assertTrue(rig.timeline.ready())
        assertEquals(30_000L, anchor.basePositionMs)
        assertEquals(rig.now - 50L, anchor.capturedAtMs)
        assertEquals(30_050L, rig.timeline.positionMs())
        assertCorrection(anchor, 0.0, 0L)
    }

    @Test fun futureAndExpiredCapturesCannotCreateAClockOrReplayTheirConsumedSequence() {
        val rig = Rig()
        rig.avrcp(30_000L, 1L, capturedAt = rig.now + 1L)
        assertFalse(rig.timeline.ready())
        rig.now++
        rig.avrcp(30_000L, 1L, capturedAt = rig.now)
        assertFalse(rig.timeline.ready())
        rig.avrcp(30_000L, 2L, capturedAt = rig.now - 1_501L)
        assertFalse(rig.timeline.ready())
        rig.avrcp(30_000L, 2L, capturedAt = rig.now)
        assertFalse(rig.timeline.ready())
        rig.avrcp(30_000L, 3L)
        assertEquals(30_000L, rig.timeline.positionMs())
        val anchor = rig.timeline.anchor()
        rig.now += 10L
        rig.avrcp(0L, 4L, capturedAt = rig.now + 1L)
        rig.avrcp(0L, 5L, capturedAt = rig.now - 1_501L)
        assertSame(anchor, rig.timeline.anchor())
        assertEquals(30_010L, rig.timeline.positionMs())
    }

    @Test fun aNewSequenceWithOlderCaptureRejectsPositionButStillAppliesPlaybackState() {
        val rig = Rig()
        rig.avrcp(40_000L, 1L)
        rig.now += 50L
        val before = rig.timeline.positionMs()
        rig.avrcp(0L, 2L, capturedAt = 9_999L, eventState = PlaybackState.STATE_PAUSED)
        assertEquals(before, rig.timeline.positionMs())
        assertEquals(0f, rig.timeline.speed(), 0f)
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
        rig.now += 100L
        assertEquals(before, rig.timeline.positionMs())
        rig.avrcp(sequence = 3L, eventState = PlaybackState.STATE_PLAYING)
        rig.now += 100L
        assertEquals(before + 100L, rig.timeline.positionMs())
    }

    @Test fun equalCaptureTimeWithANewerSequenceStillAdmitsASameMillisecondSeek() {
        val rig = Rig()
        rig.avrcp(40_000L, 1L)
        val first = rig.timeline.anchor()
        rig.avrcp(0L, 2L, capturedAt = first.capturedAtMs)
        assertNotSame(first, rig.timeline.anchor())
        assertEquals(0L, rig.timeline.positionMs())
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
        rig.now++
        assertEquals(1L, rig.timeline.positionMs())
    }

    @Test fun freshReceiptWithAnExpiredPositionSampleRejectsPositionButStillPauses() {
        val rig = correctingRig()
        rig.now += 100L
        val frozen = rig.timeline.positionMs()
        rig.avrcp(0L, 3L, sampleCapturedAt = rig.now - 1_501L,
            eventState = PlaybackState.STATE_PAUSED)
        assertEquals(frozen, rig.timeline.positionMs())
        assertEquals(0f, rig.timeline.speed(), 0f)
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
        rig.now += 1_000L
        assertEquals(frozen, rig.timeline.positionMs())

        val unknown = Rig()
        unknown.avrcp(40_000L, 1L, sampleCapturedAt = unknown.now - 1_501L)
        assertFalse(unknown.timeline.ready())
        assertEquals(-1L, unknown.timeline.positionMs())
    }

    @Test fun freshReceiptWithAFuturePositionSampleStillPausesAndCannotReplayTheSample() {
        val rig = correctingRig()
        rig.now += 100L
        val receipt = rig.now
        val futureSample = receipt + 1L
        val frozen = rig.timeline.positionMs()
        rig.avrcp(0L, 3L, capturedAt = receipt, sampleCapturedAt = futureSample,
            eventState = PlaybackState.STATE_PAUSED)
        assertEquals(frozen, rig.timeline.positionMs())
        assertEquals(0f, rig.timeline.speed(), 0f)
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
        rig.now += 100L
        rig.avrcp(0L, 3L, capturedAt = receipt, sampleCapturedAt = futureSample,
            eventState = PlaybackState.STATE_PAUSED)
        assertEquals(frozen, rig.timeline.positionMs())

        val unknown = Rig()
        unknown.avrcp(40_000L, 1L, sampleCapturedAt = unknown.now + 1L)
        assertFalse(unknown.timeline.ready())
        unknown.now++
        unknown.avrcp(40_000L, 1L, sampleCapturedAt = unknown.now)
        assertFalse(unknown.timeline.ready())
    }

    @Test fun samples100MillisecondsBeforeReceiptProjectAtNominalSpeedDuringAnExistingCorrection() {
        for (speed in listOf(1f, 2f)) {
            val rig = Rig()
            val state = if (speed == 2f) PlaybackState.STATE_FAST_FORWARDING else PlaybackState.STATE_PLAYING
            rig.avrcp(40_000L, 1L, state = state, speed = speed)
            rig.now++
            rig.avrcp(40_000L + speed.toLong() + 50L, 2L, state = state, speed = speed)
            assertCorrection(rig.timeline.anchor(), 50.0, 1_000L)
            rig.now += 200L
            val before = rig.timeline.positionMs()
            val sampledPosition = 40_000L + (100L * speed).toLong() - 20L
            val projectedTarget = sampledPosition + (100L * speed).toLong()
            rig.avrcp(sampledPosition, 3L, sampleCapturedAt = rig.now - 100L,
                state = state, speed = speed)
            val anchor = rig.timeline.anchor()
            assertEquals(before, rig.timeline.positionMs())
            assertEquals(rig.now, anchor.capturedAtMs)
            assertEquals(speed, rig.timeline.speed(), 0f)
            assertCorrection(anchor, (projectedTarget - before).toDouble(), 1_000L)
            assertEquals(projectedTarget + (1_000L * speed).toLong(), anchor.sampleAt(rig.now + 1_000L))
            assertEquals((1_000L * speed).toLong(),
                anchor.sampleAt(rig.now + 2_000L) - anchor.sampleAt(rig.now + 1_000L))
        }
    }

    @Test fun repeatedSequenceCannotReplayOrReplaceAnActiveCorrection() {
        val rig = correctingRig()
        val anchor = rig.timeline.anchor()
        rig.now += 100L
        rig.avrcp(40_051L, 2L, capturedAt = 10_001L)
        assertSame(anchor, rig.timeline.anchor())
        rig.avrcp(0L, 2L, capturedAt = rig.now)
        assertSame(anchor, rig.timeline.anchor())
        assertEquals(anchor.sampleAt(rig.now), rig.timeline.positionMs())
        assertCorrection(anchor, 50.0, 1_000L)
    }

    @Test fun sameValueDuplicatesThrough350MillisecondsDoNotRenewTheFirstCaptureWindow() {
        val rig = Rig()
        rig.avrcp(40_000L, 1L)
        val first = rig.timeline.anchor()
        var sequence = 2L
        for (elapsed in listOf(100L, 200L, 300L, 350L)) {
            rig.now = 10_000L + elapsed
            rig.avrcp(40_000L, sequence++)
            assertSame("duplicate at $elapsed ms", first, rig.timeline.anchor())
            assertEquals(40_000L + elapsed, rig.timeline.positionMs())
        }
        rig.now = 10_400L
        rig.avrcp(40_000L, sequence)
        assertSame(first, rig.timeline.anchor())
        assertEquals(40_400L, rig.timeline.positionMs())
        rig.now += 100L
        rig.avrcp(40_100L, sequence + 1L)
        assertSame(first, rig.timeline.anchor())
        assertEquals(40_500L, rig.timeline.positionMs())
        rig.now += 100L
        rig.avrcp(40_200L, sequence + 2L)
        assertEquals(40_200L, rig.timeline.positionMs())
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
    }

    @Test fun sameValueEvidenceAfterTheWindowCanConfirmASmallStallWithFiniteCorrection() {
        val rig = Rig()
        rig.avrcp(40_000L, 1L, speed = 0.5f)
        rig.now += 352L
        val before = rig.timeline.positionMs()
        rig.avrcp(40_000L, 2L, speed = 0.5f)
        val anchor = rig.timeline.anchor()
        assertEquals(40_176L, before)
        assertEquals(before, rig.timeline.positionMs())
        assertCorrection(anchor, -176.0, 4_400L)
        assertEquals(42_200L, anchor.sampleAt(rig.now + 4_400L))
        assertEquals(500L, anchor.sampleAt(rig.now + 5_400L) - anchor.sampleAt(rig.now + 4_400L))
    }

    @Test fun mediaSessionPositionsAreIgnoredAfterAvrcpEstablishesTheBluetoothTimeline() {
        val rig = Rig()
        rig.avrcp(40_000L, 1L)
        val owner = rig.timeline.anchor()
        rig.now += 100L
        val before = rig.timeline.positionMs()
        rig.media(40_030L, publisherTime = rig.now - 50L)
        assertSame(owner, rig.timeline.anchor())
        assertEquals(before, rig.timeline.positionMs())

        rig.now += 6L
        rig.media(12_000L, publisherTime = rig.now)
        assertSame(owner, rig.timeline.anchor())
        assertEquals(before + 6L, rig.timeline.positionMs())

        rig.now += 6L
        rig.avrcp(40_081L, 2L, capturedAt = rig.now - 4L)
        assertNotSame(owner, rig.timeline.anchor())
        assertEquals(before + 12L, rig.timeline.positionMs())
        assertTrue(rig.timeline.anchor().trajectory.correctionMs < 0.0)
    }

    @Test fun freshMediaSessionSeekCannotOverrideAvrcpUntilAvrcpConfirmsIt() {
        val rig = correctingRig()
        rig.now += 50L
        val before = rig.timeline.positionMs()
        rig.media(80_000L, publisherTime = rig.now)
        assertEquals(before, rig.timeline.positionMs())
        assertCorrection(rig.timeline.anchor(), 50.0, 1_000L)

        rig.now++
        rig.avrcp(12_000L, 3L)
        val held = rig.timeline.positionMs()
        val heldAnchor = rig.timeline.anchor()
        assertEquals(heldAnchor.sampleAt(rig.now), held)
        assertCorrection(rig.timeline.anchor(), 50.0, 1_000L)

        rig.now++
        rig.avrcp(12_001L, 4L)
        assertSame(heldAnchor, rig.timeline.anchor())
        assertEquals(rig.timeline.anchor().sampleAt(rig.now), rig.timeline.positionMs())
        rig.now++
        rig.avrcp(12_002L, 5L)
        assertEquals(12_002L, rig.timeline.positionMs())
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
        val sought = rig.timeline.anchor()

        rig.now++
        rig.media(0L, publisherTime = rig.now - 1L)
        assertSame(sought, rig.timeline.anchor())
        assertEquals(12_003L, rig.timeline.positionMs())
        rig.media(20_000L, publisherTime = rig.now)
        assertSame(sought, rig.timeline.anchor())
        assertEquals(12_003L, rig.timeline.positionMs())

        rig.avrcp(20_000L, 6L)
        assertEquals(12_003L, rig.timeline.positionMs())
        rig.now++
        rig.avrcp(20_001L, 7L)
        assertEquals(12_004L, rig.timeline.positionMs())
        rig.now++
        rig.avrcp(20_002L, 8L)
        assertEquals(20_002L, rig.timeline.positionMs())
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
    }

    @Test fun nonBluetoothTinySeeksRemainImmediateAndExact() {
        for (error in listOf(-50L, 50L)) {
            val rig = Rig()
            rig.media(40_000L, source = "本机音乐", publisherTime = rig.now)
            rig.now += 100L
            val target = rig.timeline.positionMs() + error
            rig.media(target, source = "本机音乐", publisherTime = rig.now)
            assertEquals(target, rig.timeline.positionMs())
            assertCorrection(rig.timeline.anchor(), 0.0, 0L)
            rig.now += 1_000L
            assertEquals(target + 1_000L, rig.timeline.positionMs())
        }
    }

    @Test fun durationUpdatesPreserveCorrectionFactsWhileSamplingUsesTheNewClamp() {
        val rig = Rig()
        rig.avrcp(299_000L, 1L)
        rig.now++
        rig.avrcp(299_050L, 2L)
        val old = rig.timeline.anchor()
        assertCorrection(old, 49.0, 1_000L)
        val generation = rig.timeline.recordingGeneration()
        rig.now += 10L
        rig.media(-1L, duration = 299_500L)
        val updated = rig.timeline.anchor()
        assertEquals(generation, rig.timeline.recordingGeneration())
        assertNotSame(old, updated)
        assertEquals(old.basePositionMs, updated.basePositionMs)
        assertEquals(old.capturedAtMs, updated.capturedAtMs)
        assertCorrection(updated, old.trajectory.correctionMs.toDouble(), old.trajectory.correctionDurationMs)
        assertEquals(old.sampleAt(rig.now), rig.timeline.positionMs())
        assertEquals(299_500L, updated.durationMs)
        assertEquals(299_500L, updated.sampleAt(11_001L))
        assertEquals(299_500L, updated.sampleAt(50_000L))
        assertEquals(300_000L, old.sampleAt(11_001L))
    }

    @Test fun queriesAcrossCorrectionExpiryKeepTheExactAnchorTrajectoryAndRevision() {
        val rig = correctingRig()
        val anchor = rig.timeline.anchor()
        val trajectory = anchor.trajectory
        val revision = anchor.revision
        for (elapsed in listOf(0L, 1L, 100L, 999L, 1_000L, 1_001L, 5_000L)) {
            rig.now = 10_001L + elapsed
            repeat(3) {
                assertEquals(anchor.sampleAt(rig.now), rig.timeline.positionMs())
                assertEquals(1f, rig.timeline.speed(), 0f)
                assertTrue(rig.timeline.ready())
                assertEquals(300_000L, rig.timeline.durationMs())
                assertSame(anchor, rig.timeline.anchor())
                assertSame(trajectory, rig.timeline.anchor().trajectory)
                assertEquals(revision, rig.timeline.anchor().revision)
                assertCorrection(anchor, 50.0, 1_000L)
            }
        }
    }

    @Test fun initialZeroAndZeroSpeedRepeatedSnapshotsCannotCreateTrustedProgress() {
        val rig = Rig()
        repeat(8) {
            rig.media(0L, publisherTime = rig.now, speed = 0f)
            assertFalse(rig.timeline.ready())
            assertEquals(-1L, rig.timeline.positionMs())
            assertEquals(0f, rig.timeline.speed(), 0f)
            assertSame(ContentPorts.LyricsPlaybackAnchor.unknown(), rig.timeline.anchor())
            rig.now += 100L
        }
        rig.avrcp(0L, 1L)
        assertTrue(rig.timeline.ready())
        assertEquals(0L, rig.timeline.positionMs())
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
    }

    @Test fun checkpointRestoreIsDirectAndIgnoresControllerPositionsUntilAvrcpConfirms() {
        var now = 10_000L
        val tracker = MediaSessionTimelineTracker { now }
        fun update(position: Long = 0L, publisherTime: Long = 0L) = tracker.update(
            "recording", PlaybackState.STATE_PLAYING, position, 1f, publisherTime, 300_000L,
            MediaSessionTransport.BLUETOOTH_AVRCP
        )
        update()
        tracker.onAvrcpPosition(40_000L, now)
        update()
        now++
        tracker.onAvrcpPosition(40_051L, now)
        update()
        assertCorrection(tracker.anchor(), 50.0, 1_000L)
        now += 100L
        assertEquals(90_000L, tracker.restorePosition("recording", 90_000L, 300_000L,
            MediaSessionTransport.BLUETOOTH_AVRCP)?.positionMs)
        val restored = tracker.anchor()
        assertCorrection(restored, 0.0, 0L)
        now += 100L
        assertEquals(90_100L, update(1_000L, now).positionMs)
        assertSame(restored, tracker.anchor())
        now += 100L
        tracker.onAvrcpPosition(90_200L, now)
        assertEquals(90_200L, update(1_000L, now).positionMs)
        assertCorrection(tracker.anchor(), 0.0, 0L)
        now += 100L
        assertEquals(90_300L, update(50_000L, now).positionMs)
    }

    @Test fun resetClearsCorrectionAndCaptureOrderingButDoesNotReplayConsumedSequences() {
        val rig = correctingRig()
        val generation = rig.timeline.recordingGeneration()
        rig.timeline.reset()
        assertFalse(rig.timeline.ready())
        assertEquals(0L, rig.timeline.recordingGeneration())
        assertSame(ContentPorts.LyricsPlaybackAnchor.unknown(), rig.timeline.anchor())
        rig.now += 100L
        rig.avrcp(40_051L, 2L, capturedAt = 10_001L)
        assertFalse(rig.timeline.ready())
        rig.avrcp(50_000L, 3L, capturedAt = 10_000L)
        assertTrue(rig.timeline.ready())
        assertTrue(rig.timeline.recordingGeneration() > generation)
        assertEquals(50_101L, rig.timeline.positionMs())
        assertCorrection(rig.timeline.anchor(), 0.0, 0L)
    }

    private fun correctingRig(): Rig = Rig().also { rig ->
        rig.avrcp(40_000L, 1L)
        rig.now++
        rig.avrcp(40_051L, 2L)
        assertCorrection(rig.timeline.anchor(), 50.0, 1_000L)
    }

    private fun assertCorrection(anchor: ContentPorts.LyricsPlaybackAnchor, correctionMs: Double,
        durationMs: Long) {
        assertEquals(correctionMs, anchor.trajectory.correctionMs.toDouble(), 0.000_001)
        assertEquals(durationMs, anchor.trajectory.correctionDurationMs)
    }

    private class Rig {
        var now = 10_000L
        val timeline = ContentLyricsTimeline { now }

        fun avrcp(position: Long = -1L, sequence: Long, capturedAt: Long = now,
            state: Int = PlaybackState.STATE_PLAYING, eventState: Int = -1, speed: Float = 1f,
            title: String = "Song", duration: Long = 300_000L, sampleCapturedAt: Long = capturedAt) {
            timeline.update(snapshot("蓝牙音乐", title, 0L, duration, 0L, speed,
                state, sequence, position, eventState, capturedAt, sampleCapturedAt))
        }

        fun media(position: Long, source: String = "蓝牙音乐", publisherTime: Long = 0L,
            speed: Float = 1f, duration: Long = 300_000L) {
            timeline.update(snapshot(source, "Song", position, duration, publisherTime, speed,
                PlaybackState.STATE_PLAYING, 0L, -1L, -1, 0L))
        }

        private fun snapshot(source: String, title: String, position: Long, duration: Long,
            publisherTime: Long, speed: Float, state: Int, sequence: Long,
            avrcpPosition: Long, eventState: Int, capturedAt: Long,
            sampleCapturedAt: Long = capturedAt) = ContentPorts.MediaSnapshot(
            true, false, source,
            state == PlaybackState.STATE_PLAYING || state == PlaybackState.STATE_FAST_FORWARDING ||
                state == PlaybackState.STATE_REWINDING,
            1, title, "Artist", true, true, null, "", "Album", duration, position,
            publisherTime, speed, "", ContentPorts.MediaSongIdentity.SONG, state,
            sequence, avrcpPosition, eventState, capturedAt, sampleCapturedAt
        )
    }
}
