package com.icar03.content.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.abs

class ControlGridLayoutTest {
    private val mixed = listOf(
        ControlGridItem("brightness", ControlGridSpan(1, 2)),
        ControlGridItem("climate", ControlGridSpan(2, 1)),
        ControlGridItem("lock"),
        ControlGridItem("volume", ControlGridSpan(1, 2)),
        ControlGridItem("wide", ControlGridSpan(2, 2)),
        ControlGridItem("rear_wiper"),
        ControlGridItem("media"),
        ControlGridItem("heater"),
    )

    @Test fun placementReservesEveryCellIncludingTheLowerHalfOfTallItems() {
        val placements = ControlGridLayout.place(mixed)
        assertEquals(mixed.map { it.id }, placements.map { it.id })
        assertEquals(ControlGridPlacement("brightness", 0, 0, ControlGridSpan(1, 2)), placements[0])
        assertEquals(ControlGridPlacement("climate", 1, 0, ControlGridSpan(2, 1)), placements[1])
        assertEquals(ControlGridPlacement("lock", 3, 0, ControlGridSpan()), placements[2])
        assertAllCellsUnique(placements, 4)
        // Filling a hole must not overwrite the reserved lower cell of brightness or volume.
        val occupied = placements.flatMap { placement -> cells(placement) }
        assertEquals(mixed.sumOf { it.span.columns * it.span.rows }, occupied.size)
    }

    @Test fun everyReorderWithMixedSpansRemainsCollisionFree() {
        for (columns in 1..6) {
            for (from in mixed.indices) for (to in mixed.indices) {
                val order = ControlGridLayout.reorder(mixed.map { it.id }, from, to)
                val placements = ControlGridLayout.place(order.map { id -> mixed.first { it.id == id } }, columns)
                assertAllCellsUnique(placements, columns)
                placements.forEach { placement ->
                    val source = mixed.first { it.id == placement.id }
                    assertEquals(source.span.columns.coerceAtMost(columns), placement.span.columns)
                    assertEquals(source.span.rows, placement.span.rows)
                }
            }
        }
    }

    @Test fun tallItemsDoNotDependOnTheNumberOfItemsForTheSearchBound() {
        val placements = ControlGridLayout.place(listOf(
            ControlGridItem("tower", ControlGridSpan(8, 25)),
            ControlGridItem("next", ControlGridSpan(4, 3)),
            ControlGridItem("last", ControlGridSpan(4, 1)),
        ))
        assertEquals(25, placements[1].row)
        assertEquals(28, placements[2].row)
        assertAllCellsUnique(placements, 4)
    }

    @Test fun geometryTracksMeasuredWidthGapsAndFullSpans() {
        val geometry = ControlGridGeometry(widthPx = 430f, cellHeightPx = 90f, gapPx = 10f)
        assertEquals(100f, geometry.cellWidthPx, 0f)
        assertEquals(ControlGridBounds(110f, 200f, 320f, 390f),
            geometry.bounds(ControlGridPlacement("large", 1, 2, ControlGridSpan(2, 2))))
        for (width in listOf(233f, 320f, 640f, 1280f)) {
            val measured = ControlGridGeometry(width, 117f, 7f)
            val right = measured.bounds(ControlGridPlacement("right", 3, 0, ControlGridSpan())).right
            assertEquals(width, right, .0002f)
        }
    }

    @Test fun twoDimensionalDropDistinguishesEqualDxPlusDyAndCrossesManySlots() {
        val items = (0..11).map { ControlGridItem("item$it") }
        val geometry = ControlGridGeometry(430f, 100f, 10f)
        // Both centres are 110px from slot 0 by dx + dy, but one is right and one is below.
        assertEquals(1, ControlGridLayout.nearest2D(items, 0, 160f, 50f, geometry))
        assertEquals(4, ControlGridLayout.nearest2D(items, 0, 50f, 160f, geometry))
        assertEquals(11, ControlGridLayout.nearest2D(items, 0, 380f, 270f, geometry))
        assertEquals(0, ControlGridLayout.nearest2D(items, 11, -1000f, -1000f, geometry))
    }

    @Test fun mixedSpanDropsChooseTheClosestAttainablePositionAtDifferentWidths() {
        for (width in listOf(246f, 480f, 713f, 1280f)) {
            val geometry = ControlGridGeometry(width, width / 4f, 9f)
            for (from in mixed.indices) {
                val original = geometry.bounds(ControlGridLayout.place(mixed)[from])
                assertEquals(from, ControlGridLayout.nearest2D(mixed, from, original.centerX, original.centerY, geometry))
                for (to in mixed.indices) {
                    val ids = ControlGridLayout.reorder(mixed.map { it.id }, from, to)
                    val candidateItems = ids.map { id -> mixed.first { it.id == id } }
                    val target = geometry.bounds(ControlGridLayout.place(candidateItems)[to])
                    val selected = ControlGridLayout.nearest2D(mixed, from, target.centerX, target.centerY, geometry)
                    val selectedIds = ControlGridLayout.reorder(mixed.map { it.id }, from, selected)
                    val selectedItems = selectedIds.map { id -> mixed.first { it.id == id } }
                    val selectedBounds = geometry.bounds(ControlGridLayout.place(selectedItems)[selected])
                    // Several insertion indices can pack into the same hole; all must reach the
                    // exact requested physical slot and preserve the dragged item's full span.
                    assertEquals(target.centerX, selectedBounds.centerX, .0002f)
                    assertEquals(target.centerY, selectedBounds.centerY, .0002f)
                    assertAllCellsUnique(ControlGridLayout.place(selectedItems), 4)
                }
            }
        }
    }

    @Test fun hitTestingRejectsInvalidPointersAndUsesPhysicalAspectRatio() {
        val items = (0..7).map { ControlGridItem("item$it") }
        val narrow = ControlGridGeometry(230f, 100f, 10f)
        val wide = ControlGridGeometry(830f, 100f, 10f)
        assertEquals(3, ControlGridLayout.nearest2D(items, 0, 220f, 50f, narrow))
        assertEquals(1, ControlGridLayout.nearest2D(items, 0, 220f, 50f, wide))
        assertEquals(-1, ControlGridLayout.nearest2D(items, -1, 0f, 0f, narrow))
        assertEquals(-1, ControlGridLayout.nearest2D(items, 0, Float.NaN, 0f, narrow))
        assertEquals(-1, ControlGridLayout.nearest2D(emptyList(), 0, 0f, 0f, narrow))
    }

    @Test fun oneDimensionalListsUseCentresAndGapsOnEitherAxis() {
        assertEquals(0, ControlGridLayout.nearestIndex(-20f, 100f, 3, 20f))
        assertEquals(0, ControlGridLayout.nearestIndex(109f, 100f, 3, 20f))
        assertEquals(1, ControlGridLayout.nearestIndex(111f, 100f, 3, 20f))
        assertEquals(2, ControlGridLayout.nearestIndex(290f, 100f, 3, 20f))
        assertEquals(2, ControlGridLayout.nearestIndex(999f, 100f, 3))
        assertEquals(-1, ControlGridLayout.nearestIndex(10f, 0f, 3))
        assertEquals(-1, ControlGridLayout.nearestIndex(Float.POSITIVE_INFINITY, 100f, 3))
        assertEquals(-1, ControlGridLayout.nearestIndex(10f, 100f, 3, -1f))
        assertEquals(listOf("a", "c", "b"), ControlGridLayout.reorder(listOf("a", "b", "c"), 1, 2))
        assertEquals(listOf("a", "b", "c"), ControlGridLayout.reorder(listOf("a", "b", "c"), -1, 2))
    }

    @Test fun dragPreviewIsLocalAndNormalDropCommitsOnlyOneMoveFromOriginalOrder() {
        val ids = mutableListOf("a", "b", "c", "d", "e")
        val first = requireNotNull(ControlReorderDraft.begin(ids, "b"))
        val last = first.moveTo(4).moveTo(0).moveTo(3)
        assertEquals(listOf("a", "c", "d", "b", "e"), last.previewIds)
        assertEquals(listOf("a", "b", "c", "d", "e"), first.previewIds)
        assertEquals(ids, first.originalIds)
        assertEquals(ControlReorderMove("b", 1, 3), last.finish(ids))
        assertEquals("b", ids[1])
        assertEquals(listOf("a", "c", "d", "b", "e"),
            ControlGridLayout.reorder(ids, requireNotNull(last.finish(ids)).from, last.to))
        // Copying at begin prevents a caller's mutable list from rewriting the captured session.
        ids.removeAt(0)
        assertEquals(listOf("a", "b", "c", "d", "e"), first.originalIds)
    }

    @Test fun cancelNoOpAndConcurrentStateChangesCannotCommitAStaleDrop() {
        val ids = listOf("a", "b", "c", "d")
        val draft = requireNotNull(ControlReorderDraft.begin(ids, "b"))
        assertNull(draft.finish(ids))
        assertNull(draft.moveTo(3).finish(ids, cancelled = true))
        assertEquals(ids, draft.moveTo(3).originalIds)
        assertNull(draft.moveTo(3).finish(listOf("a", "c", "b", "d")))
        assertNull(draft.moveTo(3).finish(listOf("a", "b", "d")))
        assertNull(draft.moveTo(3).finish(ids + "e"))
        assertEquals(ids, draft.moveTo(-1).previewIds)
        assertEquals(ids, draft.moveTo(9).previewIds)
        assertNull(ControlReorderDraft.begin(ids, "missing"))
        assertNull(ControlReorderDraft.begin(listOf("a", "a"), "a"))
    }

    @Test fun editJitterHasSmallDifferentStablePhasesAndNoUnboundedDrift() {
        assertNotEquals(ControlEditMotion.jitter(1, 250), ControlEditMotion.jitter(2, 250))
        assertEquals(ControlEditMotion.jitter(7, 1234), ControlEditMotion.jitter(7, 1234))
        for (index in 0..31) for (time in 0L..2400L step 17) {
            val motion = ControlEditMotion.jitter(index, time)
            assertTrue(abs(motion.translationX) <= .85f)
            assertTrue(abs(motion.translationY) <= .65f)
            assertTrue(abs(motion.rotationDegrees) <= .9f)
        }
    }

    @Test fun emptyGridHasNoInventedFallbackItems() {
        assertTrue(ControlGridLayout.place(emptyList()).isEmpty())
        assertTrue(ControlGridLayout.reorder(emptyList(), 0, 1).isEmpty())
        assertNull(ControlReorderDraft.begin(emptyList(), "lock"))
    }

    @Test(expected = IllegalArgumentException::class)
    fun geometryRejectsGapsWhichEraseAllFourColumns() {
        ControlGridGeometry(24f, 90f, 8f)
    }

    @Test(expected = IllegalArgumentException::class)
    fun packingRejectsZeroColumns() {
        ControlGridLayout.place(mixed, columns = 0)
    }

    private fun cells(placement: ControlGridPlacement): List<Pair<Int, Int>> =
        (placement.row until placement.row + placement.span.rows).flatMap { row ->
            (placement.column until placement.column + placement.span.columns).map { column -> row to column }
        }

    private fun assertAllCellsUnique(placements: List<ControlGridPlacement>, columns: Int) {
        val seen = HashSet<Pair<Int, Int>>()
        placements.forEach { placement ->
            assertTrue(placement.column >= 0 && placement.row >= 0)
            assertTrue(placement.column + placement.span.columns <= columns)
            cells(placement).forEach { cell -> assertFalse("Overlap at $cell for ${placement.id}", !seen.add(cell)) }
        }
    }
}
