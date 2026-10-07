package com.icar03.content.runtime

import com.autonavi.amapauto.content.ContentVehicleProtocol
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/** The feature table is an independent protocol oracle for shortcut-page requests. */
class ContentVehicleFeatureProtocolTest {
    @Test fun featureWritesKeepFunctionAreaAndRawTargetContractsIndependent() {
        val expected = mapOf(
            "rear_fog" to Triple(0x21e, 0, 2),
            "passenger_window_lock" to Triple(0x411, 0, 1),
            "left_child_lock" to Triple(0x412, 0x10, 2),
            "right_child_lock" to Triple(0x412, 0x40, 2),
            "wireless_charging" to Triple(0x238, 0, 2),
            "window_vent" to Triple(0x217, 0x550, 1),
            "external_discharge" to Triple(0x25a, 0, 2),
        )
        for ((id, packet) in expected) {
            val write = requireNotNull(ContentVehicleProtocol.featureWrite(id, 1))
            assertEquals(id, packet.first, write.functionId)
            assertEquals(id, packet.second, write.area)
            assertEquals(id, packet.third, write.value)
            assertFalse(write.ensureMassageOn)
        }
        assertEquals(1, requireNotNull(ContentVehicleProtocol.featureWrite("rear_fog", 0)).value)
        assertEquals(2, requireNotNull(ContentVehicleProtocol.featureWrite("passenger_window_lock", 0)).value)
        assertEquals(1, requireNotNull(ContentVehicleProtocol.featureWrite("left_child_lock", 0)).value)
        assertEquals(5, requireNotNull(ContentVehicleProtocol.featureWrite("window_vent", 0)).value)
        assertNull(ContentVehicleProtocol.featureWrite("wiper_maintenance", 0))
        assertNull(ContentVehicleProtocol.featureWrite("glove_box", 0))
        assertNull(ContentVehicleProtocol.featureWrite("passenger_seat_adjust", 1))
    }

    @Test fun normalizedFeatureReadbacksNeverBorrowAnotherFunctionEncoding() {
        assertEquals(0, ContentVehicleProtocol.normalizeBinarySwitch(1))
        assertEquals(1, ContentVehicleProtocol.normalizeBinarySwitch(2))
        assertEquals(-1, ContentVehicleProtocol.normalizeBinarySwitch(0))
        assertEquals(1, ContentVehicleProtocol.normalizePassengerWindowLock(1))
        assertEquals(0, ContentVehicleProtocol.normalizePassengerWindowLock(2))
        assertEquals(0, ContentVehicleProtocol.normalizeChildLock(1))
        assertEquals(1, ContentVehicleProtocol.normalizeChildLock(2))
        assertEquals(1, ContentVehicleProtocol.normalizeWindowMode(intArrayOf(1, 1, 1, 1)))
        assertEquals(0, ContentVehicleProtocol.normalizeWindowMode(intArrayOf(5, 5, 5, 5)))
        assertEquals(-1, ContentVehicleProtocol.normalizeWindowMode(intArrayOf(1, 5, 1, 5)))
        assertEquals(6, ContentVehicleProtocol.normalizeCenterBrightness(listOf(255, 6)))
        assertEquals(-1, ContentVehicleProtocol.normalizeCenterBrightness(listOf(1, 6)))
        assertEquals(-1, ContentVehicleProtocol.normalizeCenterBrightness(listOf(255, 11)))
        assertTrue(ContentVehicleProtocol.isKnownExternalStatus(List(7) { it.toFloat() }))
        assertFalse(ContentVehicleProtocol.isKnownExternalStatus(List(6) { it.toFloat() }))
    }

    @Test fun centerBrightnessUsesArrayTransactionShapeAndScreenCleanStaysAReadOnlyGate() {
        assertEquals(listOf(255, 1), ContentVehicleProtocol.centerBrightnessWrite(1).toList())
        assertEquals(listOf(255, 10), ContentVehicleProtocol.centerBrightnessWrite(10).toList())
        assertNull(ContentVehicleProtocol.centerBrightnessWrite(0))
        assertNull(ContentVehicleProtocol.centerBrightnessWrite(11))
    }
}
