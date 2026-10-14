package com.icar03.content.ui

import com.icar03.content.model.GestureDirection
import org.junit.Assert.*
import org.junit.Test

class MultiFingerGestureCoreTest {
    private val normalBounds = MultiFingerGestureBounds(0.0, 0.0, 2000.0, 2000.0)
    private fun point(x: Double, y: Double = 0.0) = MultiFingerGesturePoint(x, y)
    private fun metrics(pan: MultiFingerGesturePoint, zoom: Double = 1.0, rotation: Double = 0.0,
        previousRadius: Double = 100.0, radius: Double = 100.0) =
        MultiFingerGestureMetrics(pan, zoom, rotation, previousRadius, radius)

    /** Known common translations supply their known pan; the test does not implement a centroid. */
    private inner class Replay(val core: MultiFingerGestureCore = MultiFingerGestureCore(MultiFingerGesturePolicy(1f, 8f))) {
        var environment = MultiFingerGestureEnvironment(true, normalBounds, "host-page", "geometry")
        val held = linkedMapOf<Long, MultiFingerGesturePoint>()
        val results = mutableListOf<MultiFingerGestureResult>()
        var lastStep = MultiFingerGestureStep(false)
        fun frame(time: Long, add: Map<Long, MultiFingerGesturePoint> = emptyMap(), up: Set<Long> = emptySet(),
            positions: Map<Long, MultiFingerGesturePoint> = emptyMap(), metric: MultiFingerGestureMetrics? = null,
            joinedRadius: Double? = 100.0, order: List<Long>? = null): MultiFingerGestureStep {
            val ids = order ?: (held.keys + add.keys).toList()
            val pointers = ids.map { id ->
                val previous = held[id] ?: add.getValue(id)
                MultiFingerGesturePointer(id, id in held, id !in up, positions[id] ?: add[id] ?: previous, previous)
            }
            val type = when { up.isNotEmpty() -> MultiFingerGestureFrameType.Up
                add.isNotEmpty() -> MultiFingerGestureFrameType.Down
                else -> MultiFingerGestureFrameType.Move }
            val step = raw(MultiFingerGestureFrame(time, pointers, type, metric, joinedRadius))
            held.clear()
            pointers.filter { it.pressed }.forEach { held[it.id] = it.position }
            return step
        }
        fun raw(frame: MultiFingerGestureFrame): MultiFingerGestureStep {
            lastStep = core.onFrame(frame, environment)
            lastStep.result?.let(results::add)
            return lastStep
        }
        fun add(id: Long, time: Long, position: MultiFingerGesturePoint = point(400.0, 200.0 + (id % 10L) * 80.0)) =
            frame(time, add = mapOf(id to position))
        fun move(time: Long, delta: MultiFingerGesturePoint, zoom: Double = 1.0, rotation: Double = 0.0) =
            frame(time, positions = held.mapValues { it.value + delta }, metric = metrics(delta, zoom, rotation))
        fun release(time: Long, ids: Set<Long> = held.keys.toSet(), jump: MultiFingerGesturePoint? = null) =
            frame(time, up = ids, positions = jump?.let { held.mapValues { _ -> it } } ?: emptyMap())
        fun pair() { add(11L, 0L); add(37L, 20L) }
        fun trackedPair() { pair(); move(160L, point(48.0)) }
        fun finish(time: Long = 400L) { if (held.isNotEmpty()) release(time) }
    }

    @Test fun allTwelveCommandsUseFixedIdsAndSubmitOnceOnlyAfterTheLastNormalUp() {
        val axes = mapOf(GestureDirection.Up to point(0.0, -48.0), GestureDirection.Down to point(0.0, 48.0),
            GestureDirection.Left to point(-48.0), GestureDirection.Right to point(48.0))
        for (count in 2..4) for ((direction, delta) in axes) {
            val r = Replay()
            for (index in 0 until count) r.add(101L + index * 13L, index * 30L)
            assertTrue(r.core.hasOwnership)
            assertEquals(MultiFingerGestureState.Assemble, r.core.state)
            r.move(200L, delta)
            assertEquals(MultiFingerGestureState.Track, r.core.state)
            assertTrue(r.results.isEmpty())
            r.release(210L, setOf(r.held.keys.first()), point(Double.NaN, Double.POSITIVE_INFINITY))
            assertEquals(MultiFingerGestureState.Frozen, r.core.state)
            assertTrue(r.results.isEmpty())
            r.finish(220L)
            assertEquals(listOf(MultiFingerGestureResult(count, direction)), r.results)
            assertEquals(MultiFingerGestureState.Idle, r.core.state)
            assertFalse(r.core.hasOwnership)
            assertTrue("the final UP must still be consumed", r.lastStep.consume)
        }
    }

    @Test fun earlyUpCanFreezeBeforeTheAssemblyDeadlineWithoutPrematureTwoFingerSubmission() {
        val r = Replay()
        r.pair()
        r.move(40L, point(48.0))
        assertEquals(MultiFingerGestureState.Assemble, r.core.state)
        assertTrue(r.results.isEmpty())
        r.release(50L, setOf(11L))
        assertTrue(r.results.isEmpty())
        r.release(60L)
        assertEquals(listOf(MultiFingerGestureResult(2, GestureDirection.Right)), r.results)
    }

    @Test fun oneHundredFiftyMillisecondsIsInclusiveAndAddingFingersNeverExtendsIt() {
        val accepted = Replay()
        accepted.add(1, 0); accepted.add(2, 150)
        accepted.move(151, point(48.0)); accepted.finish()
        assertEquals(2, accepted.results.single().fingerCount)
        val late = Replay()
        late.add(1, 0); late.add(2, 151)
        assertEquals(MultiFingerGestureState.Drain, late.core.state)
        assertFalse(late.lastStep.consume)
        late.finish(); assertTrue(late.results.isEmpty())
        val thirdAtBoundary = Replay()
        thirdAtBoundary.pair(); thirdAtBoundary.add(3, 150)
        thirdAtBoundary.move(151, point(48.0)); thirdAtBoundary.finish()
        assertEquals(3, thirdAtBoundary.results.single().fingerCount)
        val fourthLate = Replay()
        fourthLate.add(1, 0); fourthLate.add(2, 100); fourthLate.add(3, 150); fourthLate.add(4, 151)
        assertEquals(MultiFingerGestureState.Drain, fourthLate.core.state)
        assertTrue(fourthLate.lastStep.consume)
        fourthLate.finish(); assertTrue(fourthLate.results.isEmpty())
    }

    @Test fun lockingRetainsTheLastJoinedGroupsTrajectoryRatherThanResettingIt() {
        val r = Replay()
        r.pair(); r.move(100, point(30.0)); r.move(151, point(18.0)); r.finish()
        assertEquals(listOf(MultiFingerGestureResult(2, GestureDirection.Right)), r.results)
    }

    @Test fun aLegalJoinAtTwentyFourPixelsRebuildsEveryOriginAndDiscardsOldMotion() {
        val noNewMove = Replay()
        noNewMove.pair(); noNewMove.move(50, point(24.0)); noNewMove.add(3, 100); noNewMove.finish()
        assertTrue(noNewMove.results.isEmpty())
        val accepted = Replay()
        accepted.pair(); accepted.move(50, point(24.0)); accepted.add(3, 100)
        accepted.move(200, point(48.0)); accepted.finish()
        assertEquals(3, accepted.results.single().fingerCount)
        val exceeded = Replay()
        exceeded.pair(); exceeded.move(50, point(24.0001)); exceeded.add(3, 100)
        assertEquals(MultiFingerGestureState.Drain, exceeded.core.state)
        exceeded.finish(); assertTrue(exceeded.results.isEmpty())
    }

    @Test fun longSlowSwipesHaveNoSpeedOrWholeSequenceTimeout() {
        val r = Replay()
        r.pair(); r.move(200, point(1.0)); r.move(50_000, point(47.0)); r.finish(90_000)
        assertEquals(GestureDirection.Right, r.results.single().direction)
    }

    @Test fun slopIsInclusiveButCrossingItPermanentlyPreventsAnUpgrade() {
        val boundary = Replay()
        boundary.add(1, 0); boundary.move(10, point(8.0)); boundary.add(2, 20)
        assertTrue(boundary.core.hasOwnership)
        val exceeded = Replay()
        exceeded.add(1, 0); exceeded.move(10, point(8.0001)); exceeded.move(15, point(-8.0001)); exceeded.add(2, 20)
        assertEquals(MultiFingerGestureState.Drain, exceeded.core.state)
        assertFalse(exceeded.core.hasOwnership)
        assertFalse(exceeded.lastStep.consume)
        exceeded.finish(); assertTrue(exceeded.results.isEmpty())
    }

    @Test fun singleSlopIsAlsoCheckedOnTheSecondDownFrameBeforeTakingOwnership() {
        val r = Replay()
        r.add(1, 0)
        r.frame(20, add = mapOf(2L to point(400.0, 360.0)), positions = mapOf(1L to point(410.0, 280.0)))
        assertEquals(MultiFingerGestureState.Drain, r.core.state)
        assertFalse(r.lastStep.consume)
    }

    @Test fun finalPositionConsumptionOrAnExplicitSingleOwnerRejectsWithoutConsumingTheSequence() {
        for (explicit in listOf(false, true)) {
            val r = Replay()
            r.add(1, 0)
            if (explicit) r.environment = r.environment.copy(singlePointerOwned = true)
            else r.core.observeSingleOwnership(true)
            r.add(2, 20)
            assertFalse(r.lastStep.consume)
            assertEquals(MultiFingerGestureState.Drain, r.core.state)
            r.finish(); assertTrue(r.results.isEmpty())
        }
        val pressCandidate = Replay()
        pressCandidate.add(1, 0); pressCandidate.core.observeSingleOwnership(false); pressCandidate.add(2, 20)
        assertTrue(pressCandidate.core.hasOwnership)
    }

    @Test fun everyPointerUsesItsOwnIdDespiteChangeListReorderingAndReleaseOrder() {
        val r = Replay()
        r.pair()
        val moved = r.held.mapValues { it.value + point(48.0) }
        r.frame(160, positions = moved, metric = metrics(point(48.0)), order = r.held.keys.reversed())
        r.release(170, setOf(37L), point(-1e9, 1e9)); r.finish(180)
        assertEquals(listOf(MultiFingerGestureResult(2, GestureDirection.Right)), r.results)
    }

    @Test fun theWholeFirstUpFrameAndAllRemainingCoordinatesAreIgnored() {
        val r = Replay()
        r.trackedPair()
        r.release(170, setOf(11L), point(Double.NaN, Double.NEGATIVE_INFINITY))
        assertEquals(MultiFingerGestureState.Frozen, r.core.state)
        r.frame(180, positions = r.held.mapValues { point(Double.POSITIVE_INFINITY, Double.NaN) },
            metric = metrics(point(Double.NaN), Double.NaN, Double.NaN))
        assertEquals(MultiFingerGestureState.Frozen, r.core.state)
        r.finish(190)
        assertEquals(listOf(MultiFingerGestureResult(2, GestureDirection.Right)), r.results)
    }

    @Test fun simultaneousAllUpAlsoFreezesTheLastCompleteMoveAndClearsBeforeReturning() {
        val r = Replay()
        r.trackedPair()
        val step = r.release(170, jump = point(Double.NaN, Double.NaN))
        assertEquals(MultiFingerGestureResult(2, GestureDirection.Right), step.result)
        assertEquals(MultiFingerGestureState.Idle, r.core.state)
        assertFalse(r.core.hasOwnership)
        assertNull(r.raw(MultiFingerGestureFrame(180, emptyList(), MultiFingerGestureFrameType.Up)).result)
        assertEquals(1, r.results.size)
    }

    @Test fun noMoveSampleCannotBeReplacedByLargeReleaseCoordinates() {
        val r = Replay()
        r.pair(); r.release(100, jump = point(900.0, 900.0))
        assertTrue(r.results.isEmpty())
    }

    @Test fun classificationUsesFinalMotionRatherThanPeakDistance() {
        val r = Replay()
        r.pair(); r.move(160, point(80.0)); r.move(170, point(-40.0)); r.finish()
        assertTrue(r.results.isEmpty())
    }

    @Test fun earlyAmbiguousOrAsynchronousMotionDoesNotCancelBeforeFreezing() {
        val r = Replay()
        r.pair()
        val origins = r.held.toMap()
        r.frame(160, positions = mapOf(11L to origins.getValue(11L) + point(10.0)), metric = metrics(point(5.0)))
        assertEquals(MultiFingerGestureState.Track, r.core.state)
        r.frame(170, positions = origins.mapValues { it.value + point(48.0) }, metric = metrics(point(43.0)))
        r.finish()
        assertEquals(GestureDirection.Right, r.results.single().direction)
        // A separate sequence demonstrates an ambiguous but in-bounds early MOVE.
        val clear = Replay()
        clear.pair(); clear.move(160, point(5.0, 5.0))
        assertEquals(MultiFingerGestureState.Track, clear.core.state)
        clear.move(170, point(43.0, -5.0)); clear.finish()
        assertEquals(GestureDirection.Right, clear.results.single().direction)
    }

    @Test fun aCoherentTwoToOneTranslationAtExactlyFortyEightPixelsIsAccepted() {
        val r = Replay()
        r.pair()
        val ids = r.held.keys.toList()
        r.frame(160, positions = mapOf(ids[0] to r.held.getValue(ids[0]) + point(32.0),
            ids[1] to r.held.getValue(ids[1]) + point(64.0)), metric = metrics(point(48.0)))
        r.finish()
        assertEquals(listOf(MultiFingerGestureResult(2, GestureDirection.Right)), r.results)
    }

    @Test fun oneFingerOnlyOpposingDirectionsAmbiguityAndDistanceOutliersNeverClassify() {
        val cases = listOf(
            listOf(point(96.0), point(0.0)) to point(48.0),
            listOf(point(120.0), point(-24.0)) to point(48.0),
            listOf(point(48.0, 48.0), point(48.0, 48.0)) to point(48.0, 48.0),
            listOf(point(31.9), point(64.1)) to point(48.0),
        )
        for ((displacements, pan) in cases) {
            val r = Replay()
            r.pair()
            val positions = r.held.entries.mapIndexed { index, entry -> entry.key to entry.value + displacements[index] }.toMap()
            r.frame(160, positions = positions, metric = metrics(pan))
            assertEquals("thresholds are not early cancellation criteria", MultiFingerGestureState.Track, r.core.state)
            r.finish(); assertTrue(r.results.isEmpty())
        }
    }

    @Test fun transformLimitsIncludeBothBoundariesInAssembleAndTrack() {
        for ((scale, angle) in listOf(.85 to -12.0, 1.15 to 12.0)) for (time in listOf(100L, 160L)) {
            val r = Replay()
            r.pair(); r.move(time, point(48.0), scale, angle); r.finish()
            assertEquals(1, r.results.size)
        }
    }

    @Test fun assemblyTransformExcursionCannotBeUndoneBeforeUpOrLocking() {
        for (rotation in listOf(false, true)) for (freezeEarly in listOf(false, true)) {
            val r = Replay()
            r.pair()
            r.move(40, point(10.0), if (rotation) 1.0 else 1.16, if (rotation) 13.0 else 0.0)
            r.move(50, point(38.0), if (rotation) 1.0 else 1.0 / 1.16, if (rotation) -13.0 else 0.0)
            assertEquals(MultiFingerGestureState.Assemble, r.core.state)
            if (!freezeEarly) {
                r.move(151, point(0.0))
                assertEquals(MultiFingerGestureState.Drain, r.core.state)
            }
            r.finish(if (freezeEarly) 60 else 200)
            assertTrue(r.results.isEmpty())
        }
    }

    @Test fun aLegalNewMemberClearsThePreviousTentativeGroupsTransformExcursion() {
        val r = Replay()
        r.pair(); r.move(40, point(10.0), 1.16); r.move(50, point(10.0), 1.0 / 1.16)
        r.add(3, 100); r.move(160, point(48.0)); r.finish()
        assertEquals(3, r.results.single().fingerCount)
    }

    @Test fun lockedTransformExcursionsCancelImmediatelyAndKeepOwnershipThroughDrain() {
        for ((scale, angle) in listOf(.84999 to 0.0, 1.15001 to 0.0, 1.0 to -12.001, 1.0 to 12.001)) {
            val r = Replay()
            r.pair(); r.move(160, point(48.0), scale, angle)
            assertEquals(MultiFingerGestureState.Drain, r.core.state)
            assertTrue(r.core.hasOwnership)
            assertTrue(r.lastStep.consume)
            r.move(170, point(100.0)); r.finish()
            assertTrue(r.lastStep.consume)
            assertTrue(r.results.isEmpty())
        }
    }

    @Test fun frozenNewDownOrAReusedReleasedIdCancelsWithoutDowngrading() {
        for (id in listOf(11L, 99L)) {
            val r = Replay()
            r.trackedPair(); r.release(170, setOf(11L)); r.add(id, 180)
            assertEquals(MultiFingerGestureState.Drain, r.core.state)
            assertTrue(r.lastStep.consume)
            r.finish(); assertTrue(r.results.isEmpty())
        }
    }

    @Test fun aReplacementFrameTakesPriorityOverOtherwiseValidUpFreezing() {
        val r = Replay()
        r.trackedPair()
        r.frame(170, add = mapOf(99L to point(500.0, 500.0)), up = setOf(11L))
        assertEquals(MultiFingerGestureState.Drain, r.core.state)
        r.finish(); assertTrue(r.results.isEmpty())
    }

    @Test fun frozenCancelAndEveryLatestEnvironmentChangeDiscardTheResult() {
        val environments = listOf<(MultiFingerGestureEnvironment) -> MultiFingerGestureEnvironment>(
            { it.copy(enabled = false) }, { it.copy(sessionKey = "new-host") },
            { it.copy(geometryKey = "moved") }, { it.copy(bounds = normalBounds.copy(right = 1999.0)) },
        )
        for (change in environments) {
            val r = Replay()
            r.trackedPair(); r.release(170, setOf(11L))
            r.core.recheck(change(r.environment))
            assertEquals(MultiFingerGestureState.Drain, r.core.state)
            r.finish(); assertTrue(r.results.isEmpty())
        }
        val cancelled = Replay()
        cancelled.trackedPair(); cancelled.release(170, setOf(11L))
        cancelled.raw(MultiFingerGestureFrame(180, cancelled.held.map { (id, p) ->
            MultiFingerGesturePointer(id, true, true, p) }, MultiFingerGestureFrameType.Cancel))
        cancelled.finish(); assertTrue(cancelled.results.isEmpty())
    }

    @Test fun finalUpRechecksTheGateAndGenerationBeforeProducingAnyResult() {
        for (enabled in listOf(true, false)) {
            val r = Replay()
            r.trackedPair(); r.release(170, setOf(11L))
            r.environment = if (enabled) r.environment.copy(sessionKey = "new-page") else r.environment.copy(enabled = false)
            r.finish(); assertTrue(r.results.isEmpty())
        }
    }

    @Test fun invalidCoordinatesAreRejectedForDownAndCompleteMovesButNotRepaired() {
        for (bad in listOf(point(Double.NaN, 0.0), point(Double.POSITIVE_INFINITY, 0.0), point(-.01, 400.0))) {
            val down = Replay()
            down.add(1, 0, bad)
            assertFalse(down.core.hasOwnership)
            assertEquals(MultiFingerGestureState.Drain, down.core.state)
            val move = Replay()
            move.trackedPair()
            move.frame(170, positions = mapOf(11L to bad), metric = metrics(point(10.0)))
            assertEquals(MultiFingerGestureState.Drain, move.core.state)
            move.finish(); assertTrue(move.results.isEmpty())
        }
    }

    @Test fun duplicateMissingAndFifthPointersTimeRegressionAndIllegalStatesCancel() {
        val alterations = listOf<(MultiFingerGestureFrame) -> MultiFingerGestureFrame>(
            { it.copy(pointers = it.pointers + it.pointers.first()) },
            { it.copy(pointers = it.pointers.drop(1)) },
            { it.copy(pointers = emptyList()) },
            { it.copy(uptimeMillis = 159) },
            { it.copy(pointers = it.pointers + MultiFingerGesturePointer(99, false, false, point(500.0, 500.0))) },
            { it.copy(pointers = it.pointers.mapIndexed { index, p -> if (index == 0) p.copy(type = MultiFingerGesturePointerType.Other) else p }) },
            { it.copy(type = MultiFingerGestureFrameType.Up) },
            { it.copy(metrics = null) },
            { it.copy(metrics = metrics(point(Double.NaN))) },
            { it.copy(metrics = metrics(point(0.0), previousRadius = 0.0)) },
            { it.copy(metrics = metrics(point(0.0), radius = 0.0)) },
        )
        for (alter in alterations) {
            val r = Replay()
            r.trackedPair()
            val frame = MultiFingerGestureFrame(170, r.held.map { (id, p) -> MultiFingerGesturePointer(id, true, true, p) },
                MultiFingerGestureFrameType.Move, metrics(point(0.0)))
            assertTrue(r.raw(alter(frame)).consume)
            assertEquals(MultiFingerGestureState.Drain, r.core.state)
            r.finish(); assertTrue(r.results.isEmpty())
        }
        val five = Replay()
        for (id in 1L..5L) five.add(id, id * 20)
        assertEquals(MultiFingerGestureState.Drain, five.core.state)
        five.finish(); assertTrue(five.results.isEmpty())
    }

    @Test fun zeroRadiusCannotEstablishAMultiPointerBaseline() {
        val r = Replay()
        r.add(1, 0)
        r.frame(20, add = mapOf(2L to r.held.getValue(1)), joinedRadius = 0.0)
        assertEquals(MultiFingerGestureState.Drain, r.core.state)
        assertFalse(r.lastStep.consume)
    }

    @Test fun enablingOrRestartingInTheMiddleOfAHeldSequenceNeverAdoptsIt() {
        val r = Replay()
        r.environment = r.environment.copy(enabled = false)
        r.add(1, 0)
        r.environment = r.environment.copy(enabled = true)
        r.add(2, 20); r.move(160, point(100.0)); r.finish()
        assertTrue(r.results.isEmpty())
        val restarted = Replay()
        restarted.pair(); restarted.core.reset(); restarted.move(160, point(100.0)); restarted.finish()
        assertTrue(restarted.results.isEmpty())
        restarted.pair(); restarted.move(160, point(48.0)); restarted.finish()
        assertEquals(1, restarted.results.size)
    }

    @Test fun policyChangesAndExplicitFinallyCleanupInvalidateTheOldSessionAndPermitANewDown() {
        val r = Replay()
        r.trackedPair(); r.core.updatePolicy(MultiFingerGesturePolicy(2f, 16f))
        assertEquals(MultiFingerGestureState.Drain, r.core.state)
        r.finish(); assertTrue(r.results.isEmpty())
        r.pair(); r.move(160, point(96.0)); r.core.reset()
        assertEquals(MultiFingerGestureState.Idle, r.core.state)
        assertFalse(r.core.hasOwnership)
    }
}
