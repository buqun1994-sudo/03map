package com.icar03.content.ui

import org.junit.Assert.*
import org.junit.Test

/** Geometry migration never reads or produces media time/cursor truth. */
class LyricGeometryTest {
    private fun geometry(lines: List<LyricLine>, heights: List<Int>, viewport: Float = 1080f): LyricGeometry {
        val tops = FloatArray(heights.size + 1)
        heights.forEachIndexed { i, height -> tops[i + 1] = tops[i] + height }
        return LyricGeometry(lines, tops, heights, viewport)
    }
    private fun center(g: LyricGeometry, index: Int, offset: Float) = g.tops[index] + g.heights[index] / 2f + offset

    @Test fun insertedRowsTranslationAndWordAxisUpgradePreserveVisibleRowCenter() {
        val lines = (0 until 40).map { LyricLine(it * 2000L, "row $it") }
        val previous = geometry(lines, List(40) { 85 })
        val oldOffset = 440f - previous.tops[20] - 42.5f
        val nextLines = listOf(LyricLine(0L, "intro")) + lines.map { it.copy(timeMs = it.timeMs + 100L, translation = "translation") }
        val next = geometry(nextLines, List(41) { 120 })
        val shift = lyricGeometryShift(previous, next, oldOffset)
        assertEquals(center(previous, 20, oldOffset), center(next, 21, oldOffset + shift), .001f)
        assertTrue("migration must not blindly reuse old absolute offset", kotlin.math.abs(shift) > 100f)
    }

    @Test fun replacementDuringSeekUsesVisibleRowNotTheDistantDestination() {
        val lines = (0 until 60).map { LyricLine(it * 2000L, "row $it") }
        val previous = geometry(lines, List(60) { 90 })
        val currentOffset = 440f - previous.tops[27] - 45f // Animation headed to row 50, but row 27 is visible.
        val next = geometry(lines.drop(5), List(55) { 110 })
        val shift = lyricGeometryShift(previous, next, currentOffset)
        assertEquals(center(previous, 27, currentOffset), center(next, 22, currentOffset + shift), .001f)
    }

    @Test fun newlyProvedStaticWaitSlotsRebaseLyricCenterWithoutCountingSlotsAsLyricHeight() {
        val lines = (0 until 40).map { LyricLine(it * 2_000L, "row $it") }
        val heights = List(40) { 80 }
        val oldFlow = lyricFlow(heights, emptyList(), 64f)
        val previous = LyricGeometry(lines, oldFlow.lineTops, heights, 1080f)
        val currentOffset = 440f - previous.tops[20] - 40f
        val flow = lyricFlow(heights, listOf(LyricWaitRow(-1, 0L, 1_000L),
            LyricWaitRow(4, 8_500L, 10_000L), LyricWaitRow(19, 38_500L, 40_000L)), 64f)
        val next = LyricGeometry(lines, flow.lineTops, heights, 1080f)
        val shift = lyricGeometryShift(previous, next, currentOffset)
        assertEquals(-192f, shift, .001f)
        assertEquals(center(previous, 20, currentOffset), center(next, 20, currentOffset + shift), .001f)
        assertEquals("lyric center excludes the adjacent waiting row", heights, next.heights)
        assertEquals(40 * 80f + 3 * 64f, flow.lineTops.last(), .001f)
    }

    @Test fun configurationResizePreservesNormalizedVisiblePositionAndEqualGeometryIsNoop() {
        val lines = (0 until 20).map { LyricLine(it * 1000L, "row $it") }
        val previous = geometry(lines, List(20) { 90 })
        val currentOffset = 440f - previous.tops[10] - 45f
        val next = geometry(lines, List(20) { 160 }, 810f)
        val shifted = currentOffset + lyricGeometryShift(previous, next, currentOffset)
        assertEquals(center(previous, 10, currentOffset) / 1080f, center(next, 10, shifted) / 810f, .0001f)
        assertEquals(0f, lyricGeometryShift(previous, previous, currentOffset), 0f)
    }
}
