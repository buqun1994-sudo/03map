package com.icar03.content.ui

import androidx.compose.foundation.gestures.calculateCentroid
import androidx.compose.foundation.gestures.calculateCentroidSize
import androidx.compose.foundation.gestures.calculatePan
import androidx.compose.foundation.gestures.calculateRotation
import androidx.compose.foundation.gestures.calculateZoom
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.input.pointer.PointerEvent
import androidx.compose.ui.input.pointer.PointerId
import androidx.compose.ui.input.pointer.PointerInputChange
import androidx.compose.ui.input.pointer.PointerType
import org.junit.Assert.*
import org.junit.Test

/** Maintained fixtures for the project's actual locked Foundation 1.7.6 dependency. */
class MultiFingerGestureFoundationTest {
    private fun change(id: Long, previous: Offset, current: Offset, previousPressed: Boolean = true,
        pressed: Boolean = true) = PointerInputChange(id = PointerId(id), uptimeMillis = 20L,
        position = current, pressed = pressed, previousUptimeMillis = 10L,
        previousPosition = previous, previousPressed = previousPressed, isInitiallyConsumed = false,
        type = PointerType.Touch)
    private fun event(vararg changes: PointerInputChange) = PointerEvent(changes.toList())
    private fun assertOffset(x: Float, y: Float, value: Offset) {
        assertEquals(x, value.x, .0001f)
        assertEquals(y, value.y, .0001f)
    }

    @Test fun twoPointersMovingTogetherHaveAveragePanAndStableTransform() {
        val e = event(change(1, Offset(0f, 0f), Offset(3f, 4f)), change(2, Offset(10f, 0f), Offset(13f, 4f)))
        assertOffset(3f, 4f, e.calculatePan())
        assertEquals(1f, e.calculateZoom(), .0001f)
        assertEquals(0f, e.calculateRotation(), .0001f)
        assertOffset(8f, 4f, e.calculateCentroid())
        assertEquals(5f, e.calculateCentroidSize(), .0001f)
        val normalized = e.multiFingerFrame()
        assertEquals(MultiFingerGesturePoint(3.0, 4.0), normalized.metrics!!.pan)
        assertEquals(5.0, normalized.metrics!!.previousCentroidSizePx, .0001)
    }

    @Test fun listReorderingPreservesTheSameIdBasedDelta() {
        val e = event(change(2, Offset(10f, 0f), Offset(12f, 1f)), change(1, Offset(0f, 0f), Offset(2f, 1f)))
        assertOffset(2f, 1f, e.calculatePan())
        assertOffset(7f, 1f, e.calculateCentroid())
    }

    @Test fun aStationaryOldPointerDoesNotPanTowardAFarNewDown() {
        val e = event(change(1, Offset(5f, 5f), Offset(5f, 5f)),
            change(2, Offset(9000f, 9000f), Offset(10000f, 10000f), previousPressed = false))
        assertOffset(0f, 0f, e.calculatePan())
        assertEquals(1f, e.calculateZoom(), .0001f)
        assertEquals(0f, e.calculateRotation(), .0001f)
        assertOffset(5f, 5f, e.calculateCentroid())
        // The joined-group radius must include the new ID, using a zero-motion official baseline.
        assertTrue(e.multiFingerFrame().joinedCentroidSizePx!! > 1000.0)
    }

    @Test fun theOfficialHelperExcludesARaisedPointersTerminalJump() {
        val e = event(change(1, Offset(10f, 10f), Offset(9000f, 9000f), pressed = false),
            change(2, Offset(20f, 20f), Offset(20f, 20f)))
        assertOffset(0f, 0f, e.calculatePan())
        assertEquals(1f, e.calculateZoom(), .0001f)
        assertEquals(0f, e.calculateRotation(), .0001f)
    }

    @Test fun allRaisedTerminalJumpsProduceNoHelperPanOrCentroid() {
        val e = event(change(1, Offset(10f, 10f), Offset(9000f, 9000f), pressed = false),
            change(2, Offset(20f, 20f), Offset(-9000f, -9000f), pressed = false))
        assertOffset(0f, 0f, e.calculatePan())
        assertEquals(1f, e.calculateZoom(), .0001f)
        assertEquals(0f, e.calculateRotation(), .0001f)
        assertTrue(e.calculateCentroid().x.isNaN())
    }

    @Test fun theOfficialHelperWouldContinueWithTheRemainingPointersRealMotion() {
        val e = event(change(1, Offset(10f, 10f), Offset(9000f, 9000f), pressed = false),
            change(2, Offset(20f, 20f), Offset(25f, 22f)))
        assertOffset(5f, 2f, e.calculatePan())
        assertEquals(1f, e.calculateZoom(), .0001f)
        assertEquals(0f, e.calculateRotation(), .0001f)
        // The content policy is stricter: the WHOLE release frame is discarded before helpers.
        val normalized = e.multiFingerFrame()
        assertNull(normalized.metrics)
        assertNull(normalized.joinedCentroidSizePx)
        assertTrue(normalized.pointers.all { it.position == MultiFingerGesturePoint.Zero &&
            it.previousPosition == MultiFingerGesturePoint.Zero })
    }

    @Test fun opposingPointersHaveZeroPanAndTwoTimesZoom() {
        val e = event(change(1, Offset(-10f, 0f), Offset(-20f, 0f)),
            change(2, Offset(10f, 0f), Offset(20f, 0f)))
        assertOffset(0f, 0f, e.calculatePan())
        assertEquals(2f, e.calculateZoom(), .0001f)
        assertEquals(0f, e.calculateRotation(), .0001f)
    }

    @Test fun aPreconsumedSyntheticReleaseIsCancellationRatherThanANormalFinalUp() {
        val e = event(change(1, Offset(10f, 10f), Offset(10f, 10f), pressed = false),
            change(2, Offset(20f, 20f), Offset(20f, 20f), pressed = false))
        e.changes.forEach { it.consume() }
        assertEquals(MultiFingerGestureFrameType.Cancel, e.multiFingerFrame().type)
    }

    @Test fun simultaneousOldUpAndNewDownHaveAnEmptyHelperIntersection() {
        val e = event(change(1, Offset(10f, 10f), Offset(9000f, 9000f), pressed = false),
            change(2, Offset(-9000f, -9000f), Offset(-8000f, -8000f), previousPressed = false))
        assertOffset(0f, 0f, e.calculatePan())
        assertEquals(1f, e.calculateZoom(), .0001f)
        assertEquals(0f, e.calculateRotation(), .0001f)
        assertTrue(e.calculateCentroid().x.isNaN())
        assertEquals(0f, e.calculateCentroidSize(), 0f)
        val normalized = e.multiFingerFrame()
        assertTrue(normalized.pointers.any { it.previousPressed && !it.pressed })
        assertTrue(normalized.pointers.any { !it.previousPressed && it.pressed })
        assertNull(normalized.metrics)
    }
}
