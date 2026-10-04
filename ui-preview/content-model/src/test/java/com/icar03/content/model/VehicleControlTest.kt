package com.icar03.content.model

import org.junit.Assert.*
import org.junit.Test

class VehicleControlTest {
    @Test fun productCyclesCloseWithoutSkippingAutomaticModes() {
        val expected = mapOf(
            VehicleControl.Lock to listOf(0, 1, 0),
            VehicleControl.SteeringHeat to listOf(0, 2, 1, 3, 0),
            VehicleControl.Ventilation to listOf(0, 3, 2, 1, 0),
            VehicleControl.Heating to listOf(0, 3, 2, 1, 4, 0),
            VehicleControl.PassengerHeating to listOf(0, 3, 2, 1, 4, 0),
            VehicleControl.Massage to listOf(0, 3, 2, 1, 0),
            VehicleControl.Wiper to listOf(0, 1, 2, 3, 4, 5, 0),
        )
        assertEquals(VehicleControl.entries.toSet(), expected.keys)
        expected.forEach { (control, cycle) ->
            cycle.zipWithNext().forEach { (actual, next) -> assertEquals("${control.id} at $actual", next, control.nextLevel(actual)) }
            val boundary = cycle.zipWithNext().filter { (actual, next) -> (actual == 0) != (next == 0) }.map { it.first }.toSet()
            cycle.dropLast(1).forEach { assertEquals(it in boundary, control.crossesPowerBoundary(it)) }
        }
        assertTrue(VehicleControl.Heating.isAutomatic(4))
        assertEquals(4, VehicleControl.Heating.maxLevel)
        assertEquals(3, VehicleControl.Heating.maxManualLevel)
        assertTrue(VehicleControl.SteeringHeat.isAutomatic(3))
        assertEquals(3, VehicleControl.SteeringHeat.maxLevel)
        assertEquals(2, VehicleControl.SteeringHeat.maxManualLevel)
        assertFalse(VehicleControl.Ventilation.isAutomatic(3))
    }

    @Test fun passengerHeatingHasIndependentStableIdentityAndTheSharedHeatCycle() {
        val control = VehicleControl.PassengerHeating
        assertEquals("passenger_seat_heating", control.id)
        assertSame(control, VehicleControl.fromId(control.id))
        assertEquals("seat_heating", VehicleControl.Heating.id)
        assertEquals(VehicleControl.Heating.ordinal + 1, control.ordinal)
        assertTrue(control.isAutomatic(4))
        assertEquals(4, control.maxLevel)
        assertEquals(3, control.maxManualLevel)
        assertEquals("座椅通风", VehicleControl.Ventilation.label)
        assertEquals("主驾座椅加热", VehicleControl.Heating.label)
        assertEquals("副驾座椅加热", control.label)
        assertEquals("座椅按摩", VehicleControl.Massage.label)
    }

    @Test fun manualMemoryAndAutomaticTargetsAreSharedAcrossControlFamilies() {
        for (control in VehicleControl.entries.filter { it != VehicleControl.Lock }) {
            assertEquals(1, control.defaultManualLevel)
            assertEquals(1, control.rememberedManualLevel(0))
            assertEquals(1, control.rememberedManualLevel(-1))
            assertEquals(1, control.rememberedManualLevel(control.maxLevel + 1))
            for (manual in 1..control.maxManualLevel) {
                assertTrue(control.isManualLevel(manual))
                assertEquals(manual, control.rememberedManualLevel(manual))
                assertEquals(manual, control.powerToggleLevel(0, manual))
                assertEquals(0, control.powerToggleLevel(manual, manual))
                assertEquals(control.automaticLevel, control.automaticToggleLevel(manual))
            }
            assertFalse(control.isManualLevel(0))
            assertEquals(-1, control.powerToggleLevel(-1, 1))
            assertEquals(-1, control.automaticToggleLevel(-1))
            if (control.automaticLevel >= 0) {
                assertFalse(control.isManualLevel(control.automaticLevel))
                assertEquals(1, control.rememberedManualLevel(control.automaticLevel))
                assertEquals(0, control.powerToggleLevel(control.automaticLevel, 1))
                assertEquals(0, control.automaticToggleLevel(control.automaticLevel))
                assertEquals(control.automaticLevel, control.automaticToggleLevel(0))
            } else assertEquals(-1, control.automaticToggleLevel(0))
        }
        assertSame(VehicleControl.Wiper, VehicleControl.fromId("front_wiper"))
        assertEquals("雨刮器", VehicleControl.Wiper.label)
        assertEquals(4, VehicleControl.Wiper.maxManualLevel)
        assertEquals(5, VehicleControl.Wiper.automaticLevel)
    }

    @Test fun unknownAndForeignModesNeverFabricateAnAction() {
        VehicleControl.entries.forEach { control ->
            for (unknown in listOf(Int.MIN_VALUE, -1000, -1, control.maxLevel + 1, Int.MAX_VALUE)) {
                assertEquals(-1, control.normalizeLevel(unknown))
                assertEquals(-1, control.nextLevel(unknown))
                assertFalse(control.crossesPowerBoundary(unknown))
            }
            assertSame(control, VehicleControl.fromId(control.id))
        }
        assertNull(VehicleControl.fromId(null))
        assertNull(VehicleControl.fromId("settings"))
        assertNull(VehicleControl.fromId("passenger_heating"))
    }
}
