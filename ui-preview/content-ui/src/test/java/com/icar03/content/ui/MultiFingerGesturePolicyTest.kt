package com.icar03.content.ui

import com.icar03.content.model.GestureDirection
import org.junit.Assert.*
import org.junit.Test
import kotlin.math.cos
import kotlin.math.sin

class MultiFingerGesturePolicyTest {
    private val policy = MultiFingerGesturePolicy(1f, 8f)
    private fun point(x: Double, y: Double = 0.0) = MultiFingerGesturePoint(x, y)

    @Test fun distancesUseContentDensityAndInclusiveThresholds() {
        assertEquals(48.0, policy.groupDistancePx, 0.0)
        assertEquals(24.0, policy.fingerDistancePx, 0.0)
        assertEquals(24.0, policy.joinDistancePx, 0.0)
        val dense = MultiFingerGesturePolicy(2f, 16f)
        assertEquals(96.0, dense.groupDistancePx, 0.0)
        assertEquals(48.0, dense.fingerDistancePx, 0.0)
        assertEquals(GestureDirection.Right, policy.classify(point(48.0), listOf(point(48.0), point(48.0))))
        assertNull(policy.classify(point(47.999), listOf(point(48.0), point(48.0))))
        assertNull(dense.classify(point(95.999), listOf(point(96.0), point(96.0))))
        assertEquals(GestureDirection.Right, dense.classify(point(96.0), listOf(point(96.0), point(96.0))))
    }

    @Test fun everyFingerMustPassDirectionDistanceAndInclusiveTwoToOneRatio() {
        assertEquals(GestureDirection.Right, policy.classify(point(48.0), listOf(point(24.0), point(48.0))))
        assertNull(policy.classify(point(48.0), listOf(point(23.999), point(48.0))))
        assertNull(policy.classify(point(48.0), listOf(point(24.0), point(48.001))))
        assertNull(policy.classify(point(48.0), listOf(point(0.0), point(96.0))))
        assertNull(policy.classify(point(48.0), listOf(point(-24.0), point(120.0))))
        assertNull(policy.classify(point(48.0), listOf(point(48.0, 48.0), point(48.0, -48.0))))
    }

    @Test fun openThirtyDegreeConesRejectTheBoundaryAndAmbiguousDiagonals() {
        fun at(degrees: Double): MultiFingerGesturePoint {
            val radians = Math.toRadians(degrees)
            return point(cos(radians), sin(radians))
        }
        assertEquals(GestureDirection.Right, policy.directionOf(at(29.999999)))
        assertNull(policy.directionOf(at(30.0)))
        assertNull(policy.directionOf(at(30.000001)))
        assertNull(policy.directionOf(at(45.0)))
        assertNull(policy.directionOf(at(60.0)))
        assertEquals(GestureDirection.Down, policy.directionOf(at(60.000001)))
        assertEquals(GestureDirection.Left, policy.directionOf(at(180.0)))
        assertEquals(GestureDirection.Up, policy.directionOf(at(-90.0)))
        assertNull(policy.directionOf(point(0.0)))
        assertNull(policy.directionOf(point(Double.NaN)))
    }

    @Test fun transformBoundariesAreInclusiveAndAllNonFiniteValuesAreRejected() {
        assertTrue(policy.acceptsTransform(.85, -12.0))
        assertTrue(policy.acceptsTransform(1.15, 12.0))
        assertFalse(policy.acceptsTransform(.849999, 0.0))
        assertFalse(policy.acceptsTransform(1.150001, 0.0))
        assertFalse(policy.acceptsTransform(1.0, -12.000001))
        assertFalse(policy.acceptsTransform(1.0, 12.000001))
        assertFalse(policy.acceptsTransform(Double.NaN, 0.0))
        assertFalse(policy.acceptsTransform(1.0, Double.POSITIVE_INFINITY))
    }
}
