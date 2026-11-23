package com.icar03.content.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ControlEditDragContractTest {
    private val mixed = listOf(
        EditDragItem("tall", EditDragSpan(1, 2)),
        EditDragItem("wide", EditDragSpan(2, 1)),
        EditDragItem("one"),
        EditDragItem("last"),
    )

    @Test
    fun candidateDraftInsertsIntoEmptyAndCommitsOnlyAgainstCapturedTarget() {
        val draft = requireNotNull(EditDragDraft.begin(emptyList(), "lock", EditDragOrigin.Candidate, "center"))
        assertEquals(listOf("lock"), draft.moveTo(0).previewIds)
        assertEquals(EditDragDrop("lock", EditDragOrigin.Candidate, -1, 0, "center"),
            draft.moveTo(0).finish(emptyList(), currentTargetKey = "center"))
        assertNull(draft.moveTo(0).finish(emptyList(), currentTargetKey = "center", cancelled = true))
        assertNull(draft.moveTo(0).finish(listOf("other"), currentTargetKey = "center"))
        assertNull(draft.moveTo(0).finish(emptyList(), currentTargetKey = "dock"))
    }

    @Test
    fun layoutDraftCapturesIdAndOriginalOrderAndRejectsNoOpOrStaleDrop() {
        val ids = listOf("a", "b", "c", "d")
        val draft = requireNotNull(EditDragDraft.begin(ids, "b", EditDragOrigin.Layout, "grid"))
        val moved = draft.moveTo(3)
        assertEquals(listOf("a", "c", "d", "b"), moved.previewIds)
        assertEquals(EditDragDrop("b", EditDragOrigin.Layout, 1, 3, "grid"), moved.finish(ids))
        assertNull(draft.finish(ids))
        assertNull(moved.finish(listOf("a", "c", "b", "d")))
        assertEquals(ids, draft.originalIds)
    }

    @Test
    fun gridPackingReservesDraggedSpanForCandidateAndEveryOtherItem() {
        val geometry = EditDragGeometry.fourColumn(widthPx = 500f, gapPx = 20f)
        val dragged = EditDragItem("tower", EditDragSpan(1, 2))
        val existing = listOf(EditDragItem("a"), EditDragItem("b"), EditDragItem("c"), EditDragItem("d"))
        val target = EditDragContract.nearestGridIndex(
            existing = existing,
            dragged = dragged,
            origin = EditDragOrigin.Candidate,
            from = -1,
            centerXPx = geometry.bounds(EditDragPlacement("tower", 0, 0, dragged.span)).centerX,
            centerYPx = geometry.bounds(EditDragPlacement("tower", 0, 0, dragged.span)).centerY,
            geometry = geometry,
        )
        assertEquals(0, target)
        val preview = EditDragContract.previewIds(existing.map { it.id }, "tower", EditDragOrigin.Candidate, -1, target)
        val placements = EditDragContract.place(preview.map { id ->
            if (id == "tower") dragged else existing.first { it.id == id }
        })
        assertEquals(6, placements.sumOf { it.span.columns * it.span.rows })
        val occupied = placements.flatMap { placement ->
            (0 until placement.span.rows).flatMap { y ->
                (0 until placement.span.columns).map { x -> placement.column + x to placement.row + y }
            }
        }
        assertEquals("the tall candidate and existing controls must never overlap", occupied.size, occupied.distinct().size)
        assertTrue(placements.map { it.id }.contains("tower"))
        assertEquals(100f, geometry.cellWidthPx, 1f)
    }

    @Test
    fun fourColumnGeometryUsesMeasuredFormulaWithoutCellClamp() {
        assertEquals(105f, EditDragGeometry.fourColumn(520f, 20f).cellWidthPx, 0f)
        assertEquals(50f, EditDragGeometry.fourColumn(270f, 10f).cellWidthPx, 0f)
        assertEquals(1f, EditDragGeometry.fourColumn(24f, 4f).cellWidthPx, 0f)
    }

    @Test
    fun candidateAndLayoutRejectDuplicatesAndInvalidIds() {
        assertNull(EditDragDraft.begin(listOf("a", "a"), "a", EditDragOrigin.Layout))
        assertNull(EditDragDraft.begin(listOf("a"), "a", EditDragOrigin.Candidate))
        assertNull(EditDragDraft.begin(listOf("a"), "missing", EditDragOrigin.Layout))
        assertTrue(EditDragContract.nearestLinearIndex(10f, 0f, 2) < 0)
        assertFalse(EditDragContract.nearestGridIndex(
            existing = emptyList(), dragged = EditDragItem("a"), origin = EditDragOrigin.Layout,
            from = 0, centerXPx = 0f, centerYPx = 0f,
            geometry = EditDragGeometry.fourColumn(100f, 10f),
        ) >= 0)
    }
}
