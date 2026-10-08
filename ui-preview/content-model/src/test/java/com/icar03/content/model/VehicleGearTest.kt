package com.icar03.content.model

import org.junit.Assert.*
import org.junit.Test

class VehicleGearTest {
    @Test fun standardSingleValuesPreserveTransmissionIdentity() {
        assertEquals(VehicleGear.Park, DrivingGearMapper.fromCurrentGear(4))
        assertEquals(VehicleGear.Neutral, DrivingGearMapper.fromCurrentGear(1))
        assertEquals(VehicleGear.Reverse, DrivingGearMapper.fromCurrentGear(2))
        for (raw in listOf(8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096)) {
            assertEquals("confirmed non-P raw=$raw", VehicleGear.Drive, DrivingGearMapper.fromCurrentGear(raw))
        }
    }

    @Test fun unavailableCompositeAndVendorBitsNeverBecomeConfirmedNonPark() {
        for (raw in listOf(null, Int.MIN_VALUE, -1000, -1, 0, 3, 5, 6, 7, 9, 10, 11, 12, 8192, Int.MAX_VALUE)) {
            assertEquals("CURRENT_GEAR raw=$raw", VehicleGear.Unknown, DrivingGearMapper.fromCurrentGear(raw))
        }
    }

    @Test fun targetSelectorParkCompatibilityCannotLeakIntoCurrentGear() {
        assertEquals(VehicleGear.Park, DrivingGearMapper.fromGearSelection(11))
        assertEquals(VehicleGear.Unknown, DrivingGearMapper.fromCurrentGear(11))
        for (raw in listOf(1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096)) {
            assertEquals(DrivingGearMapper.fromCurrentGear(raw), DrivingGearMapper.fromGearSelection(raw))
        }
        for (raw in listOf(null, -1000, -1, 0, 3, 9, 8192)) {
            assertEquals(VehicleGear.Unknown, DrivingGearMapper.fromGearSelection(raw))
        }
    }
}
