package com.icar03.content.model

/** Narrow host capability; implementation remains the map's existing divider controller. */
interface MapPresentationPort {
    fun settleToExpanded()
    fun settleToCollapsed()
    fun reservedGestureWidthPx(): Int = 0
}
