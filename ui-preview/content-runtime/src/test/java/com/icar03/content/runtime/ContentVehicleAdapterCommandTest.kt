package com.icar03.content.runtime

import android.os.Binder
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.os.Parcel
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentVehicleAdapter
import org.junit.After
import org.junit.Assert.assertEquals
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

    @Test fun vehicleStateNormalizationRequiresTheCompanionAutoFields() {
        assertEquals(0, ContentVehicleAdapter.normalizeHeatingLevel(1, 1))
        assertEquals(4, ContentVehicleAdapter.normalizeHeatingLevel(1, 2))
        assertEquals(-1, ContentVehicleAdapter.normalizeHeatingLevel(1, -1))
        assertEquals(-1, ContentVehicleAdapter.normalizeHeatingLevel(4, -1))
        assertEquals(3, ContentVehicleAdapter.normalizeHeatingLevel(4, 1))
        assertEquals(-1, ContentVehicleAdapter.normalizeHeatingLevel(4, 2))
        assertEquals(0, ContentVehicleAdapter.normalizeSteeringLevel(1, 1))
        assertEquals(1, ContentVehicleAdapter.normalizeSteeringLevel(2, 1))
        assertEquals(3, ContentVehicleAdapter.normalizeSteeringLevel(1, 2))
        assertEquals(-1, ContentVehicleAdapter.normalizeSteeringLevel(2, 2))
        assertEquals(-1, ContentVehicleAdapter.normalizeSteeringLevel(1, -1))
    }
    @Test fun everyGearLabelReachesTheExistingBinderCommandWithoutLocalGearRead() {
        val service = CommandService()
        val adapter = adapter(service)

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
            // Ventilation main=7 is not a known heating-OFF joint state. Return the substitute
            // to known manual OFF before testing this independent heating command.
            service.values[0x212] = 1
            service.values[0x282] = 1
            readSnapshot(adapter, service)
            assertTrue("${scenario.label} heating command must queue", adapter.requestSeatLevel("seat_heating", 3, requestId++))
            shadowOf(Looper.getMainLooper()).idle()
            assertTrue("${scenario.label} massage command must queue", adapter.requestSeatLevel("seat_massage", 3, requestId++))
            shadowOf(Looper.getMainLooper()).idle()
            val sent = service.calls.filter { it.transaction == 5 }.drop(writesBefore)
            assertEquals("${scenario.label} preserves all four established targets, without candidate companion writes",
                listOf(1045 to 2, 0x212 to 7, 0x212 to 4, 0x243 to 3), sent.map { it.functionId to it.value })
            assertTrue(sent.all { it.area == 0 })
        }

        assertTrue(service.calls.any { it.functionId == 1045 && it.value == 2 })
        assertTrue(service.calls.any { it.functionId == 0x212 && it.value == 7 })
        assertFalse("formal manual commands must never write the candidate AUTO field",
            service.calls.any { it.transaction == 5 && it.functionId == 0x282 })
        assertTrue(service.calls.any { it.functionId == 0x212 && it.value == 4 })
        assertTrue(service.calls.any { it.functionId == 0x243 && it.value == 3 })
        assertFalse("project code must not read gear locally", service.calls.any { it.functionId == 0x255 })
        assertFalse("project code must not add a speed gate", service.calls.any { it.functionId == 0x401 })
    }

    @Test fun heatingAutoAndSteeringAutoUseDocumentedCandidateWrites() {
        val service = CommandService()
        val adapter = adapter(service)

        assertFalse(adapter.requestSeatLevel("seat_heating", 4, 200L))
        assertFalse(adapter.requestSeatLevel("steering_heating", 3, 200L))
        assertTrue(adapter.requestResearchSeatLevelCandidate("seat_heating", 4, 201L))
        shadowOf(Looper.getMainLooper()).idle()
        assertTrue(adapter.requestResearchSeatLevelCandidate("steering_heating", 3, 202L))
        shadowOf(Looper.getMainLooper()).idle()

        val writes = service.calls.filter { it.transaction == 5 }
        assertTrue(writes.take(2).map { it.functionId to it.value } == listOf(0x282 to 2, 0x212 to 1))
        assertTrue(writes.drop(2).firstOrNull()?.let { it.functionId == 0x21c && it.area == 0 && it.value == 4 } == true)
    }
    @Test fun strictBinderJointNormalizationMatrixHasNoUnobservedOffOrAutoFallback() {
        val rawValues = listOf(Int.MIN_VALUE, -1000, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, Int.MAX_VALUE)
        val companions = listOf(Int.MIN_VALUE, -1000, -1, 0, 1, 2, 3, Int.MAX_VALUE)
        for (main in rawValues) for (auto in companions) {
            val expectedHeat = when {
                main == 1 && auto == 1 -> 0
                main == 1 && auto == 2 -> 4
                main in 2..4 && auto == 1 -> main - 1
                else -> -1
            }
            assertEquals("heat main=$main auto=$auto", expectedHeat,
                ContentVehicleAdapter.normalizeHeatingLevel(main, auto))
            val expectedSteer = when {
                main in 1..3 && auto == 1 -> main - 1
                main == 1 && auto == 2 -> 3
                else -> -1
            }
            assertEquals("steering main=$main active=$auto", expectedSteer,
                ContentVehicleAdapter.normalizeSteeringLevel(main, auto))
            assertEquals(auto == 1 || auto == 2, ContentVehicleAdapter.isKnownHeatingAuto(auto))
        }
    }

    @Test fun readSnapshotUsesIntegerFunctionAreaOrderAndTheStrictJointFields() {
        val service = CommandService()
        val adapter = adapter(service)
        for ((main, auto, expected) in listOf(
            Triple(1, 1, 0), Triple(1, 2, 4), Triple(2, 1, 1), Triple(3, 1, 2), Triple(4, 1, 3),
            Triple(1, 0, -1), Triple(4, 2, -1), Triple(5, 1, -1), Triple(6, 2, -1), Triple(7, -1, -1))) {
            service.values[0x212] = main
            service.values[0x282] = auto
            val snapshot = readSnapshot(adapter, service)
            assertEquals(expected, snapshot.heatingLevel)
            assertEquals(auto == 1 || auto == 2, snapshot.heatingAutoKnown)
            assertEquals(auto == 2, snapshot.heatingAutoActive)
        }
        for ((main, active, expected) in listOf(
            Triple(1, 1, 0), Triple(2, 1, 1), Triple(3, 1, 2), Triple(1, 2, 3),
            Triple(2, 2, -1), Triple(3, 2, -1), Triple(4, 1, -1), Triple(1, 0, -1))) {
            service.values[0x21c] = main
            service.values[0x2a5] = active
            assertEquals(expected, readSnapshot(adapter, service).steeringHeatLevel)
        }
        for (function in listOf(0x212, 0x282, 0x21c, 0x2a5)) {
            val reads = service.calls.filter { it.functionId == function }
            assertTrue(reads.isNotEmpty())
            assertTrue(reads.all { it.transaction == 7 && it.area == 0 && it.value == null })
        }
        assertFalse(service.calls.any { it.transaction == 5 })
    }

    @Test fun formalEntryRejectsEverySteeringCandidateAutoEntryAndAutoExit() {
        val service = CommandService()
        val adapter = adapter(service)
        assertTrue(adapter.isAvailable)
        assertFalse(adapter.isSeatControlAvailable("steering_heating"))
        for (level in 0..3) {
            assertFalse(adapter.isSeatLevelAvailable("steering_heating", level))
            assertFalse(adapter.requestSeatLevel("steering_heating", level, 300L + level))
        }
        assertFalse(adapter.requestSeatLevel("seat_heating", 4, 304L))
        service.values[0x282] = 2
        assertEquals(4, readSnapshot(adapter, service).heatingLevel)
        for (level in 0..3) assertFalse(adapter.requestSeatLevel("seat_heating", level, 310L + level))
        service.values[0x282] = -1
        readSnapshot(adapter, service)
        assertFalse(adapter.requestSeatLevel("seat_heating", 3, 320L))
        assertFalse(service.calls.any { it.transaction == 5 })
    }

    @Test fun manualSingleWriteRechecksAutoAndDoesNotClearAnExternalAutoSelection() {
        val service = CommandService()
        val adapter = adapter(service)
        val failures = mutableListOf<Long>()
        observe(adapter, failures)
        assertTrue(adapter.requestSeatLevel("seat_heating", 3, 401L))
        // AUTO changes after admission but before the worker executes.
        service.values[0x282] = 2
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(listOf(401L), failures)
        assertFalse(service.calls.any { it.transaction == 5 })
        assertEquals(4, readSnapshot(adapter, service).heatingLevel)
    }

    @Test fun explicitCandidatePacketsCoverEachManualAutoAndSteeringTargetInOrder() {
        val service = CommandService()
        val adapter = adapter(service)
        for (level in 0..4) {
            val before = service.calls.count { it.transaction == 5 }
            assertTrue(adapter.requestResearchSeatLevelCandidate("seat_heating", level, 500L + level))
            shadowOf(Looper.getMainLooper()).idle()
            val writes = service.calls.filter { it.transaction == 5 }.drop(before)
            assertEquals(listOf(Call(5, 0x282, 0, if (level == 4) 2 else 1),
                Call(5, 0x212, 0, if (level == 0 || level == 4) 1 else level + 1)), writes)
        }
        for (level in 0..3) {
            val before = service.calls.count { it.transaction == 5 }
            assertTrue(adapter.requestResearchSeatLevelCandidate("steering_heating", level, 510L + level))
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(listOf(Call(5, 0x21c, 0, level + 1)),
                service.calls.filter { it.transaction == 5 }.drop(before))
        }
        assertFalse(adapter.requestResearchSeatLevelCandidate("seat_heating", 5, 520L))
        assertFalse(adapter.requestResearchSeatLevelCandidate("steering_heating", 4, 521L))
        assertFalse(adapter.requestResearchSeatLevelCandidate("seat_ventilation", 3, 522L))
    }

    @Test fun candidateFirstAndSecondWriteFailuresReadBackPartialStateWithoutClaimingSuccess() {
        for (failedFunction in listOf(0x282, 0x212)) {
            val service = CommandService().apply {
                values[0x212] = 4
                failWriteFunction = failedFunction
            }
            val adapter = adapter(service)
            val failures = mutableListOf<Long>()
            val snapshots = observe(adapter, failures)
            val requestId = 600L + failedFunction
            assertTrue("queued is not successful", adapter.requestResearchSeatLevelCandidate("seat_heating", 4, requestId))
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(listOf(requestId), failures)
            val writes = service.calls.filter { it.transaction == 5 }
            assertEquals(if (failedFunction == 0x282) listOf(Call(5, 0x282, 0, 2))
                else listOf(Call(5, 0x282, 0, 2), Call(5, 0x212, 0, 1)), writes)
            assertTrue("even a partial write must trigger readback", snapshots.isNotEmpty())
            val actual = snapshots.last()
            if (failedFunction == 0x282) {
                assertEquals(3, actual.heatingLevel)
                assertFalse(actual.heatingAutoActive)
            } else {
                // Main manual L3 with companion AUTO is an unobserved pair, not AUTO success.
                assertEquals(-1, actual.heatingLevel)
                assertTrue(actual.heatingAutoKnown)
                assertTrue(actual.heatingAutoActive)
            }
            assertFalse(adapter.isSeatLevelAvailable("seat_heating", 4))
            assertTrue(service.calls.filter { it.transaction == 5 }.all { it.area == 0 })
        }
    }

    private fun adapter(service: CommandService): ContentVehicleAdapter {
        val adapter = ContentVehicleAdapter(RuntimeEnvironment.getApplication())
        adapters += adapter
        setPrivate(adapter, "running", true)
        setPrivate(adapter, "binder", service)
        setPrivate(adapter, "workerHandler", Handler(Looper.getMainLooper()))
        readSnapshot(adapter, service)
        return adapter
    }

    private fun readSnapshot(adapter: ContentVehicleAdapter, service: IBinder): ContentPorts.VehicleSnapshot =
        ContentVehicleAdapter::class.java.getDeclaredMethod("readSnapshot", IBinder::class.java)
            .apply { isAccessible = true }.invoke(adapter, service) as ContentPorts.VehicleSnapshot

    private fun observe(adapter: ContentVehicleAdapter, failures: MutableList<Long>): MutableList<ContentPorts.VehicleSnapshot> {
        val snapshots = mutableListOf<ContentPorts.VehicleSnapshot>()
        setPrivate(adapter, "listener", object : ContentPorts.VehicleSnapshotListener {
            override fun onVehicleSnapshot(snapshot: ContentPorts.VehicleSnapshot) { snapshots += snapshot }
            override fun onVehicleCommandFailed(requestId: Long, message: String) { failures += requestId }
        })
        return snapshots
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
        var failWriteFunction: Int? = null
        val values = mutableMapOf(0x212 to 1, 0x282 to 1, 0x21c to 1, 0x2a5 to 1,
            0x241 to 2, 0x245 to 1, 0x243 to 1, 1047 to 1, 0x303 to 123,
            0x305 to 0, 0x29d to 0, 0x308 to 0)
        val calls = mutableListOf<Call>()

        override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
            data.enforceInterface("com.chery.canmanager.interfaces.IVirturalCarProperty")
            // The contract is (function, area, value), never (function, value, area).
            val function = data.readInt()
            val area = data.readInt()
            val value = if (code == 5) data.readInt() else null
            assertEquals("unexpected trailing packet data", 0, data.dataAvail())
            calls += Call(code, function, area, value)
            if (code == 5 && function == failWriteFunction) return false
            reply!!.writeNoException()
            when (code) {
                5 -> values[if (function == 1045) 1047 else function] = value!!
                7 -> reply.writeInt(if (function == 0x255) gearValue else values[function] ?: -1)
                13 -> reply.writeFloat(when (function) {
                    0x110 -> 25f
                    0x306 -> 60f
                    0x401 -> speed
                    else -> -1000f
                })
                else -> return false
            }
            return true
        }
    }
}
