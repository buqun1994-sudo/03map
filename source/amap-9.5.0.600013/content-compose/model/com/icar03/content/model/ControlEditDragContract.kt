package com.icar03.content.model

import kotlin.math.abs
import kotlin.math.roundToInt

/**
 * The geometry independent axis used by every editable control surface.
 * A candidate source is allowed to enter a Grid, Vertical or Horizontal target.
 */
enum class EditDragAxis {
    Grid,
    Vertical,
    Horizontal,
}

enum class EditDragOrigin {
    Layout,
    Candidate,
}

data class EditDragSpan(val columns: Int = 1, val rows: Int = 1) {
    init {
        require(columns > 0 && rows > 0) { "Edit drag spans must be positive" }
    }
}

data class EditDragItem<Id>(val id: Id, val span: EditDragSpan = EditDragSpan())

data class EditDragPlacement<Id>(
    val id: Id,
    val column: Int,
    val row: Int,
    val span: EditDragSpan,
)

data class EditDragBounds(
    val left: Float,
    val top: Float,
    val right: Float,
    val bottom: Float,
) {
    val width: Float get() = right - left
    val height: Float get() = bottom - top
    val centerX: Float get() = (left + right) / 2f
    val centerY: Float get() = (top + bottom) / 2f
}

/**
 * Measured target geometry. Coordinates are target-content pixels, before any window transform.
 * `originX/Y` describe the first cell's offset inside the target viewport.
 */
data class EditDragGeometry(
    val widthPx: Float,
    val cellWidthPx: Float,
    val cellHeightPx: Float,
    val gapPx: Float,
    val columns: Int = 4,
    val originX: Float = 0f,
    val originY: Float = 0f,
) {
    init {
        require(columns > 0) { "Edit drag geometry needs at least one column" }
        require(widthPx.isFinite() && widthPx > 0f) { "Edit drag width must be finite and positive" }
        require(cellWidthPx.isFinite() && cellWidthPx > 0f) { "Edit drag cell width must be finite and positive" }
        require(cellHeightPx.isFinite() && cellHeightPx > 0f) { "Edit drag cell height must be finite and positive" }
        require(gapPx.isFinite() && gapPx >= 0f) { "Edit drag gap must be finite and non-negative" }
        require(originX.isFinite() && originY.isFinite()) { "Edit drag origin must be finite" }
    }

    fun bounds(placement: EditDragPlacement<*>): EditDragBounds {
        val left = originX + placement.column * (cellWidthPx + gapPx)
        val top = originY + placement.row * (cellHeightPx + gapPx)
        return EditDragBounds(
            left = left,
            top = top,
            right = left + placement.span.columns * cellWidthPx + (placement.span.columns - 1) * gapPx,
            bottom = top + placement.span.rows * cellHeightPx + (placement.span.rows - 1) * gapPx,
        )
    }

    companion object {
        /** Four square columns, fixed 20px outer padding by default and caller-supplied inner gaps. */
        fun fourColumn(widthPx: Float, gapPx: Float, outerPaddingPx: Float = 20f): EditDragGeometry {
            require(widthPx.isFinite() && widthPx > 0f) { "Grid width must be positive" }
            require(gapPx.isFinite() && gapPx >= 0f) { "Grid gap must be non-negative" }
            require(outerPaddingPx.isFinite() && outerPaddingPx >= 0f) { "Grid padding must be non-negative" }
            val cellWidth = ((widthPx - 2f * outerPaddingPx - 3f * gapPx) / 4f).coerceAtLeast(1f)
            return EditDragGeometry(
                widthPx = widthPx,
                cellWidthPx = cellWidth,
                cellHeightPx = cellWidth,
                gapPx = gapPx,
                columns = 4,
                originX = outerPaddingPx,
                originY = outerPaddingPx,
            )
        }
    }
}

data class EditDragDrop<Id>(
    val id: Id,
    val origin: EditDragOrigin,
    val from: Int,
    val to: Int,
    val targetKey: Any?,
)

/**
 * A local, immutable-order drag draft. The UI may preview as often as it wants; only [finish]
 * creates a command and only if the target's authoritative IDs still match the captured IDs.
 * Candidate drags use `from == -1` and insert into `0..originalIds.size`.
 */
class EditDragDraft<Id> private constructor(
    val originalIds: List<Id>,
    val id: Id,
    val origin: EditDragOrigin,
    val from: Int,
    val targetKey: Any?,
    val to: Int,
) {
    val previewIds: List<Id>
        get() = EditDragContract.previewIds(originalIds, id, origin, from, to)

    fun moveTo(index: Int): EditDragDraft<Id> =
        if (!isValidTargetIndex(index) || index == to) this
        else EditDragDraft(originalIds, id, origin, from, targetKey, index)

    fun finish(
        currentIds: List<Id>,
        currentTargetKey: Any? = targetKey,
        cancelled: Boolean = false,
    ): EditDragDrop<Id>? {
        if (cancelled || currentTargetKey != targetKey || currentIds != originalIds) return null
        if (origin == EditDragOrigin.Layout && from == to) return null
        if (!isValidTargetIndex(to)) return null
        return EditDragDrop(id, origin, from, to, targetKey)
    }

    private fun isValidTargetIndex(index: Int): Boolean = when (origin) {
        EditDragOrigin.Layout -> from in originalIds.indices && index in originalIds.indices
        EditDragOrigin.Candidate -> index in 0..originalIds.size
    }

    companion object {
        fun <Id> begin(
            targetIds: List<Id>,
            id: Id,
            origin: EditDragOrigin,
            targetKey: Any? = null,
        ): EditDragDraft<Id>? {
            if (targetIds.distinct().size != targetIds.size) return null
            val from = targetIds.indexOf(id)
            if (origin == EditDragOrigin.Layout && from < 0) return null
            if (origin == EditDragOrigin.Candidate && from >= 0) return null
            return EditDragDraft(
                originalIds = targetIds.toList(),
                id = id,
                origin = origin,
                from = if (origin == EditDragOrigin.Layout) from else -1,
                targetKey = targetKey,
                to = if (origin == EditDragOrigin.Layout) from else targetIds.size,
            )
        }
    }
}

/** Pure packing, hit testing and draft helpers shared by Compose and non-Compose tests. */
object EditDragContract {
    fun <Id> previewIds(ids: List<Id>, id: Id, origin: EditDragOrigin, from: Int, to: Int): List<Id> =
        when (origin) {
            EditDragOrigin.Layout -> move(ids, from, to)
            EditDragOrigin.Candidate -> if (id in ids) ids.toList()
            else ids.toMutableList().apply { add(to.coerceIn(0, size), id) }
        }

    fun <Id> place(items: List<EditDragItem<Id>>, columns: Int = 4): List<EditDragPlacement<Id>> {
        require(columns > 0) { "Edit drag packing needs at least one column" }
        val occupied = ArrayList<BooleanArray>()
        fun ensureRow(row: Int) {
            while (occupied.size <= row) occupied += BooleanArray(columns)
        }
        fun fits(column: Int, row: Int, span: EditDragSpan): Boolean {
            if (column + span.columns > columns) return false
            for (dy in 0 until span.rows) {
                val cells = occupied.getOrNull(row + dy) ?: continue
                for (dx in 0 until span.columns) if (cells[column + dx]) return false
            }
            return true
        }
        val result = ArrayList<EditDragPlacement<Id>>(items.size)
        for (item in items) {
            val span = EditDragSpan(item.span.columns.coerceAtMost(columns), item.span.rows)
            var row = 0
            var column: Int
            while (true) {
                column = (0..columns - span.columns).firstOrNull { fits(it, row, span) } ?: -1
                if (column >= 0) break
                row++
            }
            for (dy in 0 until span.rows) {
                ensureRow(row + dy)
                for (dx in 0 until span.columns) occupied[row + dy][column + dx] = true
            }
            result += EditDragPlacement(item.id, column, row, span)
        }
        return result
    }

    fun <Id> nearestGridIndex(
        existing: List<EditDragItem<Id>>,
        dragged: EditDragItem<Id>,
        origin: EditDragOrigin,
        from: Int,
        centerXPx: Float,
        centerYPx: Float,
        geometry: EditDragGeometry,
    ): Int {
        if (!centerXPx.isFinite() || !centerYPx.isFinite()) return -1
        if (origin == EditDragOrigin.Layout && from !in existing.indices) return -1
        if (origin == EditDragOrigin.Candidate && existing.any { it.id == dragged.id }) return -1
        val count = if (origin == EditDragOrigin.Layout) existing.size else existing.size + 1
        if (count <= 0) return -1
        val seed = if (origin == EditDragOrigin.Layout) from else existing.size
        var nearest = seed.coerceIn(0, count - 1)
        var distance = Double.POSITIVE_INFINITY
        val candidates = (0 until count).sortedWith(compareBy<Int> { abs(it - seed) }.thenBy { it })
        for (to in candidates) {
            val ids = when (origin) {
                EditDragOrigin.Layout -> move(existing.map { it.id }, from, to)
                EditDragOrigin.Candidate -> existing.map { it.id }.toMutableList().apply { add(to, dragged.id) }
            }
            val items = ids.map { id -> if (id == dragged.id) dragged else existing.first { it.id == id } }
            val placementIndex = if (origin == EditDragOrigin.Layout) to else to
            val placement = place(items, geometry.columns).getOrNull(placementIndex) ?: continue
            val bounds = geometry.bounds(placement)
            val dx = centerXPx.toDouble() - bounds.centerX
            val dy = centerYPx.toDouble() - bounds.centerY
            val nextDistance = dx * dx + dy * dy
            if (nextDistance < distance) {
                distance = nextDistance
                nearest = to
            }
        }
        return nearest
    }

    fun nearestLinearIndex(
        centerPx: Float,
        itemSizePx: Float,
        count: Int,
        gapPx: Float = 0f,
    ): Int {
        if (!centerPx.isFinite() || !itemSizePx.isFinite() || itemSizePx <= 0f || count <= 0 ||
            !gapPx.isFinite() || gapPx < 0f) return -1
        return ((centerPx - itemSizePx / 2f) / (itemSizePx + gapPx)).roundToInt().coerceIn(0, count - 1)
    }

    private fun <T> move(items: List<T>, from: Int, to: Int): List<T> {
        if (from !in items.indices || to !in items.indices || from == to) return items.toList()
        return items.toMutableList().apply { add(to, removeAt(from)) }
    }
}
