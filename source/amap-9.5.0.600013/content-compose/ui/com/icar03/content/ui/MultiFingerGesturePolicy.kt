package com.icar03.content.ui

import com.icar03.content.model.GestureDirection
import kotlin.math.abs
import kotlin.math.cos
import kotlin.math.hypot

/** Coordinates and distances are in the content ancestor's local pixels. No Compose types. */
data class MultiFingerGesturePoint(val x: Double, val y: Double) {
    val isFinite: Boolean get() = x.isFinite() && y.isFinite()
    val distance: Double get() = hypot(x, y)
    operator fun plus(other: MultiFingerGesturePoint) = MultiFingerGesturePoint(x + other.x, y + other.y)
    operator fun minus(other: MultiFingerGesturePoint) = MultiFingerGesturePoint(x - other.x, y - other.y)

    companion object { val Zero = MultiFingerGesturePoint(0.0, 0.0) }
}

data class MultiFingerGestureBounds(val left: Double, val top: Double, val right: Double, val bottom: Double) {
    val isReady: Boolean get() = left.isFinite() && top.isFinite() && right.isFinite() && bottom.isFinite() &&
        right > left && bottom > top
    fun contains(point: MultiFingerGesturePoint): Boolean = isReady && point.isFinite &&
        point.x >= left && point.x <= right && point.y >= top && point.y <= bottom
}

/** The single parameter owner for the first production policy (not a vehicle calibration claim). */
data class MultiFingerGesturePolicy(val density: Float, val touchSlopPx: Float) {
    init {
        require(density.isFinite() && density > 0f)
        require(touchSlopPx.isFinite() && touchSlopPx >= 0f)
    }

    val groupDistancePx: Double get() = GROUP_DISTANCE_DP * density.toDouble()
    val fingerDistancePx: Double get() = FINGER_DISTANCE_DP * density.toDouble()
    val joinDistancePx: Double get() = JOIN_DISTANCE_DP * density.toDouble()

    /** RNGH's normalized vector / dot product cone, with a strictly open angle boundary. */
    fun directionOf(displacement: MultiFingerGesturePoint): GestureDirection? {
        if (!displacement.isFinite) return null
        val length = displacement.distance
        if (!length.isFinite() || length == 0.0) return null
        return when {
            displacement.x / length > DIRECTION_COSINE -> GestureDirection.Right
            -displacement.x / length > DIRECTION_COSINE -> GestureDirection.Left
            displacement.y / length > DIRECTION_COSINE -> GestureDirection.Down
            -displacement.y / length > DIRECTION_COSINE -> GestureDirection.Up
            else -> null
        }
    }

    fun mainAxis(displacement: MultiFingerGesturePoint, direction: GestureDirection): Double = when (direction) {
        GestureDirection.Up -> -displacement.y
        GestureDirection.Down -> displacement.y
        GestureDirection.Left -> -displacement.x
        GestureDirection.Right -> displacement.x
    }

    fun acceptsTransform(zoom: Double, rotationDegrees: Double): Boolean = zoom.isFinite() &&
        rotationDegrees.isFinite() && zoom >= MIN_ZOOM && zoom <= MAX_ZOOM &&
        abs(rotationDegrees) <= MAX_ROTATION_DEGREES

    /** Called only on freezing the final group; early short / asynchronous motion is observable. */
    fun classify(pan: MultiFingerGesturePoint, fingerDisplacements: Collection<MultiFingerGesturePoint>): GestureDirection? {
        if (fingerDisplacements.size !in 2..4) return null
        val direction = directionOf(pan) ?: return null
        if (mainAxis(pan, direction) < groupDistancePx) return null
        var minimum = Double.POSITIVE_INFINITY
        var maximum = 0.0
        for (displacement in fingerDisplacements) {
            if (directionOf(displacement) != direction) return null
            val axis = mainAxis(displacement, direction)
            if (axis < fingerDistancePx) return null
            minimum = minOf(minimum, axis)
            maximum = maxOf(maximum, axis)
        }
        return direction.takeIf { maximum <= minimum * MAX_FINGER_DISTANCE_RATIO }
    }

    companion object {
        const val ASSEMBLY_WINDOW_MILLIS = 150L
        const val GROUP_DISTANCE_DP = 48.0
        const val FINGER_DISTANCE_DP = 24.0
        const val JOIN_DISTANCE_DP = 24.0
        const val DIRECTION_HALF_ANGLE_DEGREES = 30.0
        const val MAX_FINGER_DISTANCE_RATIO = 2.0
        const val MIN_ZOOM = 0.85
        const val MAX_ZOOM = 1.15
        const val MAX_ROTATION_DEGREES = 12.0
        val DIRECTION_COSINE: Double = cos(Math.toRadians(DIRECTION_HALF_ANGLE_DEGREES))
    }
}
