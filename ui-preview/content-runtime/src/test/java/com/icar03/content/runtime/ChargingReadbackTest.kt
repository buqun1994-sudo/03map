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
    @Test fun binderSnapshotPublishesPowerAndMinutesThroughMapperWithoutWriting() {
        val reads = mutableListOf<Pair<Int, Int>>()
        var minutes = 62
        var current = 183.2f
        val service = object : Binder() {
            override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
                data.enforceInterface("com.chery.canmanager.interfaces.IVirturalCarProperty")
                val function = data.readInt()
                assertEquals(if (function == 0x110) 1 else 0, data.readInt())
                reads += code to function
                assertTrue("snapshot must only use read transactions", code == 7 || code == 13)
                reply!!.writeNoException()
                if (code == 13) reply.writeFloat(when (function) {
                    0x344 -> 393f
                    0x345 -> current
                    0x306 -> 59.3f
                    else -> Float.NaN
                }) else reply.writeInt(when (function) {
                    0x305 -> 2
                    0x29d -> 3
                    0x308 -> 0
                    0x43d -> minutes
                    else -> -1
                })
                return true
            }
        }
        val adapter = ContentVehicleAdapter(RuntimeEnvironment.getApplication())
        val read = ContentVehicleAdapter::class.java.getDeclaredMethod("readSnapshot", IBinder::class.java).apply { isAccessible = true }
        val snapshot = read.invoke(adapter, service) as ContentPorts.VehicleSnapshot
        assertEquals(72.0f, snapshot.chargePowerKw, .1f)
        assertEquals(62, snapshot.chargeRemainingMinutes)
        assertTrue(reads.containsAll(listOf(13 to 0x344, 13 to 0x345, 7 to 0x43d)))
        val state = ContentState().apply {
            vehicleDataAvailable = snapshot.dataAvailable
            vehiclePreview = false
            chargeState = snapshot.chargeState
            chargePowerKw = snapshot.chargePowerKw
            chargeRemainingMinutes = snapshot.chargeRemainingMinutes
        }
        val ui = ContentUiMapper().map(state)
        assertTrue(ui.charging)
        assertTrue(ui.chargeStatus, ui.chargeStatus!!.contains("72.0 kW"))
        assertTrue(ui.chargeStatus!!.contains("62分钟"))
        minutes = 2047; current = -2f
        val invalid = read.invoke(adapter, service) as ContentPorts.VehicleSnapshot
        assertTrue(invalid.chargePowerKw.isNaN())
        assertEquals(-1, invalid.chargeRemainingMinutes)
        adapter.stop()
    }
}
