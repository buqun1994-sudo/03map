package com.icar03.content.runtime

import android.os.Binder
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.os.Parcel
import com.autonavi.amapauto.content.ContentVehicleAdapter
import org.junit.After
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentVehicleAdapterCommandTest {
    private val adapters = mutableListOf<ContentVehicleAdapter>()

    @After fun cleanup() {
        adapters.forEach { it.stop() }
    }

    @Test fun everyGearLabelReachesTheExistingBinderCommandWithoutLocalGearRead() {
        val service = CommandService()
        val adapter = ContentVehicleAdapter(RuntimeEnvironment.getApplication())
        adapters += adapter
        setPrivate(adapter, "running", true)
        setPrivate(adapter, "binder", service)
        setPrivate(adapter, "workerHandler", Handler(Looper.getMainLooper()))

        val scenarios = listOf(
            GearScenario("P", 11, 0f),
            GearScenario("D", 1, 20f),
            GearScenario("R", 9, 20f),
            GearScenario("未知", -1000, Float.NaN),
        )
        var requestId = 100L
        for (scenario in scenarios) {
            val writesBefore = service.calls.count { it.transaction == 5 }
            service.gearValue = scenario.rawGear
            service.speed = scenario.speed
            assertTrue("${scenario.label} lock command must queue", adapter.requestLock(false, requestId++))
            shadowOf(Looper.getMainLooper()).idle()
            assertTrue("${scenario.label} ventilation command must queue", adapter.requestSeatLevel("seat_ventilation", 3, requestId++))
            shadowOf(Looper.getMainLooper()).idle()
            assertTrue("${scenario.label} heating command must queue", adapter.requestSeatLevel("seat_heating", 3, requestId++))
            shadowOf(Looper.getMainLooper()).idle()
            assertTrue("${scenario.label} massage command must queue", adapter.requestSeatLevel("seat_massage", 3, requestId++))
            shadowOf(Looper.getMainLooper()).idle()
            val sent = service.calls.filter { it.transaction == 5 }.drop(writesBefore)
            assertTrue("${scenario.label} must send all four targets through the existing system transaction",
                sent.map { it.functionId to it.value } == listOf(1045 to 2, 0x212 to 7, 0x212 to 4, 0x243 to 3))
        }

        assertTrue(service.calls.any { it.functionId == 1045 && it.value == 2 })
        assertTrue(service.calls.any { it.functionId == 0x212 && it.value == 7 })
        assertTrue(service.calls.any { it.functionId == 0x212 && it.value == 4 })
        assertTrue(service.calls.any { it.functionId == 0x243 && it.value == 3 })
        assertFalse("project code must not read gear locally", service.calls.any { it.functionId == 0x255 })
        assertFalse("project code must not add a speed gate", service.calls.any { it.functionId == 0x401 })
    }

    private fun setPrivate(target: Any, name: String, value: Any?) {
        target.javaClass.getDeclaredField(name).apply {
            isAccessible = true
            set(target, value)
        }
    }

    private data class GearScenario(val label: String, val rawGear: Int, val speed: Float)

    private data class Call(val transaction: Int, val functionId: Int, val area: Int, val value: Int?)

    private class CommandService : Binder() {
        var gearValue = 11
        var speed = 0f
        val calls = mutableListOf<Call>()

        override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
            data.enforceInterface("com.chery.canmanager.interfaces.IVirturalCarProperty")
            val function = data.readInt()
            val area = data.readInt()
            val value = if (code == 5) data.readInt() else null
            calls += Call(code, function, area, value)
            reply!!.writeNoException()
            when (code) {
                7 -> reply.writeInt(when (function) {
                    0x255 -> gearValue
                    0x241 -> 2
                    0x245 -> 1
                    0x243 -> 1
                    else -> -1
                })
                13 -> reply.writeFloat(if (function == 0x401) speed else -1000f)
            }
            return true
        }
    }
}
