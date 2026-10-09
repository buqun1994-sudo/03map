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

    @Test fun s56SelectorPreservesTheHalAndSmartSceneIdentitiesWithoutImportingTheStandardEnum() {
        val verified = mapOf(1 to VehicleGear.Drive, 9 to VehicleGear.Reverse,
            10 to VehicleGear.Neutral, 11 to VehicleGear.Park)
        verified.forEach { (raw, expected) -> assertEquals("S56 selector raw=$raw", expected, DrivingGearMapper.fromGearSelection(raw)) }
        for (raw in listOf(null, Int.MIN_VALUE, -1000, -1, 0, 2, 3, 4, 8, 12, 16, 8192, Int.MAX_VALUE)) {
            assertEquals("unverified selector=$raw", VehicleGear.Unknown, DrivingGearMapper.fromGearSelection(raw))
        }
        assertEquals(VehicleGear.Neutral, DrivingGearMapper.fromCurrentGear(1))
        assertEquals(VehicleGear.Unknown, DrivingGearMapper.fromCurrentGear(9))
        assertFalse(VehicleGear.Unknown.isNonPark())
        assertFalse(VehicleGear.Park.isNonPark())
        for (gear in listOf(VehicleGear.Reverse, VehicleGear.Neutral, VehicleGear.Drive)) assertTrue(gear.isNonPark())
    }
}
