package com.icar03.content.model

import kotlin.math.cos
import kotlin.math.roundToInt
import kotlin.math.sin

/** A semantic item; the UI supplies measured geometry separately. */
data class ControlGridItem(
    val id: String,
    val span: ControlGridSpan = ControlGridSpan(),
)

data class ControlGridPlacement(
    val id: String,
    val column: Int,
    val row: Int,
    val span: ControlGridSpan,
)

data class ControlGridBounds(val left: Float, val top: Float, val right: Float, val bottom: Float) {
    val width: Float get() = right - left
    val height: Float get() = bottom - top
    val centerX: Float get() = (left + right) / 2f
    val centerY: Float get() = (top + bottom) / 2f
}

/** Uses physical pixels on both axes, including the real gap and the dragged item's full span. */
data class ControlGridGeometry(
    val widthPx: Float,
    val cellHeightPx: Float,
    val gapPx: Float,
    val columns: Int = 4,
) {
    init {
        require(columns > 0) { "Grid must have at least one column" }
        require(widthPx.isFinite() && widthPx > 0f) { "Grid width must be finite and positive" }
        require(cellHeightPx.isFinite() && cellHeightPx > 0f) { "Cell height must be finite and positive" }
        require(gapPx.isFinite() && gapPx >= 0f && gapPx * (columns - 1) < widthPx) {
            "Grid gaps must leave positive cell widths"
        }
    }

    val cellWidthPx: Float get() = (widthPx - gapPx * (columns - 1)) / columns

    fun bounds(placement: ControlGridPlacement): ControlGridBounds {
        val left = placement.column * (cellWidthPx + gapPx)
        val top = placement.row * (cellHeightPx + gapPx)
        return ControlGridBounds(
            left, top,
            left + placement.span.columns * cellWidthPx + (placement.span.columns - 1) * gapPx,
            top + placement.span.rows * cellHeightPx + (placement.span.rows - 1) * gapPx,
        )
    }
}

/** No Compose or Android dependency: packing and drop decisions share one tested contract. */
object ControlGridLayout {
    fun place(items: List<ControlGridItem>, columns: Int = 4): List<ControlGridPlacement> {
        require(columns > 0) { "Grid must have at least one column" }
        val occupied = ArrayList<BooleanArray>()
        fun ensureRow(row: Int) {
            while (occupied.size <= row) occupied += BooleanArray(columns)
        }
        fun fits(column: Int, row: Int, span: ControlGridSpan): Boolean {
            if (column + span.columns > columns) return false
            for (dy in 0 until span.rows) {
                val cells = occupied.getOrNull(row + dy) ?: continue
                for (dx in 0 until span.columns) if (cells[column + dx]) return false
            }
            return true
        }
        val result = ArrayList<ControlGridPlacement>(items.size)
        for (item in items) {
            val span = ControlGridSpan(item.span.columns.coerceAtMost(columns), item.span.rows)
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
            result += ControlGridPlacement(item.id, column, row, span)
        }
        return result
    }

    /** Reorders a list after a long-press drag; invalid indices are ignored. */
    fun reorder(items: List<String>, from: Int, to: Int): List<String> = move(items, from, to)

    private fun <T> move(items: List<T>, from: Int, to: Int): List<T> {
        if (from !in items.indices || to !in items.indices || from == to) return items.toList()
        return items.toMutableList().apply { add(to, removeAt(from)) }
    }

    /**
     * Finds the closest *attainable* 2D drop slot. Each candidate is packed with the dragged item
     * occupying its complete span, so the preview reserves space and every other cell avoids it.
     * Comparing candidate dragged bounds, rather than neighbouring item centres or dx + dy,
     * handles wide/tall items, sparse rows and changes in the measured panel width.
     * Ties retain the current slot first, then choose the smaller change in list order.
     */
    fun nearest2D(
        items: List<ControlGridItem>,
        from: Int,
        centerXPx: Float,
        centerYPx: Float,
        geometry: ControlGridGeometry,
    ): Int {
        if (from !in items.indices || !centerXPx.isFinite() || !centerYPx.isFinite()) return -1
        var nearest = from
        var distance = Double.POSITIVE_INFINITY
        // Starting at the original slot makes a stationary long press a strict no-op.
        val candidates = items.indices.sortedWith(compareBy<Int> { kotlin.math.abs(it - from) }.thenBy { it })
        for (to in candidates) {
            val candidate = move(items, from, to)
            val placement = place(candidate, geometry.columns)[to]
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

    /** Nearest centre for either a vertical card list or a horizontal Dock, with real gaps. */
    fun nearestIndex(centerPx: Float, itemSizePx: Float, count: Int, gapPx: Float = 0f): Int {
        if (!centerPx.isFinite() || !itemSizePx.isFinite() || itemSizePx <= 0f || count <= 0 ||
            !gapPx.isFinite() || gapPx < 0f) return -1
        return ((centerPx - itemSizePx / 2f) / (itemSizePx + gapPx)).roundToInt().coerceIn(0, count - 1)
    }
}

data class ControlReorderMove(val id: String, val from: Int, val to: Int)

/**
 * A local drag owns an immutable starting order. Previewing never mutates that order or commits
 * an event. CANCEL, a no-op drop and an external membership/order change all produce no command.
 */
class ControlReorderDraft private constructor(
    val originalIds: List<String>,
    val from: Int,
    val to: Int,
) {
    val id: String get() = originalIds[from]
    val previewIds: List<String> get() = ControlGridLayout.reorder(originalIds, from, to)

    fun moveTo(index: Int): ControlReorderDraft =
        if (index !in originalIds.indices || index == to) this else ControlReorderDraft(originalIds, from, index)

    fun finish(currentIds: List<String>, cancelled: Boolean = false): ControlReorderMove? =
        if (cancelled || currentIds != originalIds || from == to) null else ControlReorderMove(id, from, to)

    companion object {
        fun begin(ids: List<String>, id: String): ControlReorderDraft? {
            val from = ids.indexOf(id)
            if (from < 0 || ids.distinct().size != ids.size) return null
            return ControlReorderDraft(ids.toList(), from, from)
        }
    }
}

data class ControlEditJitter(val translationX: Float, val translationY: Float, val rotationDegrees: Float)

/** One parent frame clock can sample all tiles; stable phases never synchronise after a reorder. */
object ControlEditMotion {
    fun jitter(index: Int, elapsedMs: Long): ControlEditJitter {
        val safeIndex = index.coerceAtLeast(0)
        val time = (elapsedMs.coerceAtLeast(0L) / 1000.0) * (Math.PI * 2.0)
        val phase = safeIndex * 1.731
        return ControlEditJitter(
            translationX = (sin(time * 2.7 + phase) * 0.85).toFloat(),
            translationY = (cos(time * 2.35 + phase * 0.73) * 0.65).toFloat(),
            rotationDegrees = (sin(time * 2.1 + phase * 1.21) * 0.9).toFloat(),
        )
    }
}
