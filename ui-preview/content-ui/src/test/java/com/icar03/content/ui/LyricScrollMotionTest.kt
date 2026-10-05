package com.icar03.content.ui

import org.junit.Assert.*
import org.junit.Test
import kotlin.math.abs

class LyricScrollMotionTest {
    @Test fun visibleGroupsStartTwentyEightMillisecondsApartAndOffscreenDelayIsCapped() {
        val segment = LyricScrollSegment(LyricRowPose.uniform(120f), -240f, 10, 15, stagger = true)
        for (row in 10..15) {
            val onset = (row - 10) * 28f
            assertEquals(120f, segment.offsetAt(row, onset), 0f)
            assertTrue(segment.offsetAt(row, onset + 1f) < 120f)
            assertEquals(segment.offsetAt(10, 100f), segment.offsetAt(row, onset + 100f), .0001f)
        }
        assertEquals(0, segment.delayAt(0))
        assertEquals(140, segment.delayAt(100_000))
        assertEquals(590, segment.durationMs)
        assertEquals(-240f, segment.offsetAt(10, 450f), 0f)
        assertTrue("last visible group still moves after the first finishes", segment.offsetAt(15, 450f) > -240f)
        for (row in listOf(0, 10, 12, 15, 100_000)) assertEquals(-240f, segment.offsetAt(row, 590f), 0f)
    }

    @Test fun retargetAndNonStaggeredSeekTakeOverEveryActualVisibleOffsetContinuously() {
        val first = LyricScrollSegment(LyricRowPose.uniform(100f), -120f, 20, 26, stagger = true)
        val captured = first.poseAt(160f, visibleRows = 22..29)
        val next = LyricScrollSegment(captured, -250f, 22, 29, stagger = true)
        val seek = LyricScrollSegment(captured, 2_000f)
        for (row in 22..29) {
            assertEquals(first.offsetAt(row, 160f), next.offsetAt(row, 0f), 0f)
            assertEquals(first.offsetAt(row, 160f), seek.offsetAt(row, 0f), 0f)
            assertEquals(2_000f, seek.offsetAt(row, 450f), .0002f)
        }
        assertEquals(0, seek.maximumDelayMs)
        assertEquals(450, seek.durationMs)
    }

    @Test fun repeatedShortFollowSegmentsKeepOnlyVisibleKnotsInsteadOfWholeSongHistory() {
        var segment = LyricScrollSegment(LyricRowPose.uniform(0f), -100f, 0, 6, stagger = true)
        repeat(200) { index ->
            val first = index + 1
            val pose = segment.poseAt(140f, visibleRows = first..first + 6)
            assertTrue("one base plus seven visible groups", pose.rows.size <= 8)
            segment = LyricScrollSegment(pose, -(index + 2) * 100f, first, first + 6, stagger = true)
        }
        assertTrue(segment.poseAt(100f).rows.size <= 8)
    }

    @Test fun downFreezeAndDraggingTranslateThePaintedPoseWithoutReplayingItsWave() {
        val segment = LyricScrollSegment(LyricRowPose.uniform(30f), -180f, 3, 8, stagger = true)
        val painted = LyricScrollSample().apply { set(segment, 170f, 40f) }
        val state = LyricScrollState(999f)
        state.stop(painted, origin = 40f)
        val before = LyricScrollSample().also { state.sampleInto(it, 40f) }
        for (row in 0..12) assertEquals(painted.offsetAt(row), before.offsetAt(row), 0f)
        state.dragTo(state.value + 77f)
        val dragged = LyricScrollSample().also { state.sampleInto(it, 40f) }
        for (row in 0..12) assertEquals(painted.offsetAt(row) + 77f, dragged.offsetAt(row), .0001f)
        assertFalse(state.running)
        assertEquals(0f, state.phaseMs, 0f)
        assertEquals(0, state.segment.maximumDelayMs)
        assertEquals("last painted descriptor stays immutable", painted.offsetAt(8), segment.offsetAt(8, 170f) + 40f, 0f)
    }

    @Test fun actualOffsetBoundsContainEveryDelayedGroupDuringForwardAndReverseTravel() {
        val pose = LyricRowPose.sampled(intArrayOf(0, 10, 11, 12)) { row -> when (row) {
            0 -> -100f; 10 -> -80f; 11 -> -50f; else -> -20f
        } }
        for (segment in listOf(LyricScrollSegment(pose, -220f, 10, 15, stagger = true),
            LyricScrollSegment(pose, 1_200f))) {
            for (phase in 0..segment.durationMs) for (row in 0..30) {
                val offset = segment.offsetAt(row, phase.toFloat())
                assertTrue(offset >= segment.minimumAt(phase.toFloat()) - .001f)
                assertTrue(offset <= segment.maximumAt(phase.toFloat()) + .001f)
            }
        }
    }

    @Test fun resizeMigrationUsesActualDelayedRowCenterAndPreservesNormalizedBrowseAnchor() {
        val lines = (0 until 30).map { LyricLine(it * 2_000L, "row $it") }
        val old = LyricGeometry(lines, FloatArray(31) { it * 90f }, List(30) { 90 }, 800f)
        val next = LyricGeometry(lines, FloatArray(31) { it * 135f }, List(30) { 135 }, 1_000f)
        val scroll = LyricScrollSample().apply {
            set(LyricScrollSegment(LyricRowPose.uniform(-1_600f), -1_700f, 15, 22, stagger = true), 130f, 0f)
        }
        val index = lines.indices.minBy { abs(old.tops[it] + old.heights[it] / 2f + scroll.offsetAt(it) - 800f * .41f) }
        val before = old.tops[index] + old.heights[index] / 2f + scroll.offsetAt(index)
        val shifted = scroll.base + lyricGeometryShift(old, next, scroll.base, scroll)
        val after = next.tops[index] + next.heights[index] / 2f + shifted
        assertEquals(before / 800f, after / 1_000f, .0001f)
    }
}
