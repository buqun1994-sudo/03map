package com.icar03.content.runtime

import android.os.Binder
import android.os.IBinder
import android.os.Parcel
import com.autonavi.amapauto.content.*
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class ChargingReadbackTest {
    /** OEM type 40 uses getData, type 60 uses getDataFloat; array fields use getDataArray. */
    private class VehicleService : Binder() {
        val reads = mutableListOf<Pair<Int, Int>>()
        val requests = mutableListOf<Triple<Int, Int, Int>>()
        var voltage = 393
        var current = 183.2f
        var minutes = 11
        var soc = 59.3f
        var connection = 2
        var bms = 3
        var schedule = 0
        override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
            assertTrue("snapshot must only use read transactions, never sendData/sendDataArray/sendSeatData",
                code == 7 || code == 8 || code == 13)
            data.enforceInterface("com.chery.canmanager.interfaces.IVirturalCarProperty")
            val function = data.readInt()
            val area = data.readInt()
            val expectedCode = when (function) {
                0x110, 0x306, 0x345 -> 13
                0x31a, 0x25c -> 8
                else -> 7
            }
            assertEquals("read transaction must match the OEM property type", expectedCode, code)
            val expectedAreas = when (function) {
                0x110 -> setOf(1)
                0x418 -> setOf(0x10, 0x40)
                535 -> setOf(0x10, 0x40, 0x100, 0x400)
                else -> setOf(0)
            }
            assertTrue("read area must match the property", area in expectedAreas)
            assertEquals("a read request contains no command payload", 0, data.dataAvail())
            reads += code to function
            requests += Triple(code, function, area)
            reply!!.writeNoException()
            when (code) {
                13 -> reply.writeFloat(when (function) {
                    0x345 -> current
                    0x306 -> soc
                    else -> -1000f
                })
                8 -> reply.writeList(emptyList<Any>()) // New capabilities remain unknown in this charging fixture.
                else -> reply.writeInt(when (function) {
                    0x344 -> voltage
                    0x305 -> connection
                    0x29d -> bms
                    0x308 -> schedule
                    0x43d -> minutes
                    else -> -1000
                })
            }
            return true
        }
    }

    private fun snapshot(service: VehicleService): ContentPorts.VehicleSnapshot {
        val adapter = ContentVehicleAdapter(RuntimeEnvironment.getApplication())
        val read = ContentVehicleAdapter::class.java.getDeclaredMethod("readSnapshot", IBinder::class.java).apply { isAccessible = true }
        try { return read.invoke(adapter, service) as ContentPorts.VehicleSnapshot }
        finally { adapter.stop() }
    }

    private fun ui(snapshot: ContentPorts.VehicleSnapshot) = ContentUiMapper().map(ContentState().apply {
        vehicleDataAvailable = snapshot.dataAvailable
        vehiclePreview = snapshot.preview
        batteryPercent = snapshot.batteryPercent
        chargeState = snapshot.chargeState
        chargePowerKw = snapshot.chargePowerKw
        chargeRemainingMinutes = snapshot.chargeRemainingMinutes
    })

    @Test fun typedBinderSnapshotPublishesPowerAndLiveMinutesWithoutWriting() {
        val service = VehicleService()
        val first = snapshot(service)
        assertEquals(72.0f, first.chargePowerKw, .1f)
        assertEquals(11, first.chargeRemainingMinutes)
        assertTrue(service.reads.containsAll(listOf(7 to 0x344, 13 to 0x345, 7 to 0x43d)))
        assertFalse(service.reads.contains(13 to 0x344))
        assertFalse(service.reads.contains(7 to 0x345))
        val chargingFunctions = setOf(0x306, 0x305, 0x29d, 0x308, 0x344, 0x345, 0x43d)
        assertEquals(listOf(13 to 0x306, 7 to 0x305, 7 to 0x29d, 7 to 0x308,
            7 to 0x344, 13 to 0x345, 7 to 0x43d), service.reads.filter { it.second in chargingFunctions })
        assertEquals(listOf(Triple(7, 0x418, 0x10), Triple(7, 0x418, 0x40)),
            service.requests.filter { it.second == 0x418 })
        assertEquals(listOf(0x10, 0x40, 0x100, 0x400).map { Triple(7, 535, it) },
            service.requests.filter { it.second == 535 })
        assertEquals(listOf(8 to 0x31a, 8 to 0x25c), service.reads.filter { it.first == 8 })
        assertFalse(first.featureSnapshot.centerBrightnessKnown)
        assertFalse(first.featureSnapshot.externalDischargeStatusKnown)
        assertTrue(ui(first).charging)
        assertEquals("剩余11分钟·充电功率 72.0kW", ui(first).chargeStatus)
        service.minutes = 10; service.current = 184.8f
        assertEquals("剩余10分钟·充电功率 72.6kW", ui(snapshot(service)).chargeStatus)
        service.connection = 1; service.voltage = 380; service.current = 15.4f
        assertEquals("剩余10分钟·充电功率 5.9kW", ui(snapshot(service)).chargeStatus)
    }

    @Test fun invalidTypedFieldsAndNegativeCurrentNeverBecomeInventedPower() {
        val service = VehicleService()
        for (invalidCurrent in listOf(-1000f, -2f, 0f, Float.NaN, Float.POSITIVE_INFINITY)) {
            service.current = invalidCurrent
            assertTrue(snapshot(service).chargePowerKw.isNaN())
            assertEquals("剩余11分钟", ui(snapshot(service)).chargeStatus)
        }
        service.current = 183.2f
        for (invalidVoltage in listOf(-1000, -1, 0)) {
            service.voltage = invalidVoltage
            assertTrue(snapshot(service).chargePowerKw.isNaN())
        }
        service.minutes = 2047
        assertEquals(-1, snapshot(service).chargeRemainingMinutes)
        assertEquals("充电中", ui(snapshot(service)).chargeStatus)
        service.voltage = 393
        assertEquals("充电功率 72.0kW", ui(snapshot(service)).chargeStatus)
    }

    @Test fun stateTextUsesRawFullSocAndKnownIdleInsteadOfRoundedPercentOrUnknownBms() {
        val service = VehicleService().apply { bms = 0; current = -2f }
        assertEquals("已插枪", ui(snapshot(service)).chargeStatus)
        service.connection = 1; service.bms = 6; service.schedule = 1
        assertEquals("预约充电中", ui(snapshot(service)).chargeStatus)
        service.bms = 0; service.schedule = 0; service.soc = 99.6f
        assertEquals(100, snapshot(service).batteryPercent)
        assertEquals("已插枪", ui(snapshot(service)).chargeStatus)
        service.soc = 100f
        val full = snapshot(service)
        assertEquals(ContentState.CHARGE_COMPLETE, full.chargeState)
        assertFalse(ui(full).charging)
        assertEquals("充电完成", ui(full).chargeStatus)
        service.connection = 2
        assertEquals("充电完成", ui(snapshot(service)).chargeStatus)
        for (unknown in listOf(-1000, -1, 4, 7, Int.MAX_VALUE)) {
            service.bms = unknown
            assertEquals("已插枪", ui(snapshot(service)).chargeStatus)
        }
        service.bms = 3; service.current = 183.2f
        assertEquals("剩余11分钟·充电功率 72.0kW", ui(snapshot(service)).chargeStatus)
        service.bms = 6; service.schedule = 1
        assertEquals("预约充电中", ui(snapshot(service)).chargeStatus)
        service.connection = 0; service.bms = 0; service.schedule = 0
        assertNull(ui(snapshot(service)).chargeStatus)
        service.connection = -1000
        assertEquals("充电状态待确认", ui(snapshot(service)).chargeStatus)
    }
}
