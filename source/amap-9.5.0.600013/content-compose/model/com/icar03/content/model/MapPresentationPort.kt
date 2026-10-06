package com.icar03.content.model

/** Narrow host capability; implementation remains the map's existing divider controller. */
interface MapPresentationPort {
    fun settleToExpanded()
    fun settleToCollapsed()
    fun reservedGestureWidthPx(): Int = 0

    /** Host page/modal/lifecycle facts decide availability; remind is a one-time request. */
    fun updateGestureState(enabled: Boolean, dark: Boolean, reminderEnabled: Boolean, remind: Boolean) {}
    fun ensureGestureOnTop() {}
}
