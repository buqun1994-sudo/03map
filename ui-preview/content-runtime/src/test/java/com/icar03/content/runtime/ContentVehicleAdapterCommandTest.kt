package com.icar03.content.runtime

import android.os.Binder
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.os.Parcel
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentVehicleAdapter
import com.autonavi.amapauto.content.ContentVehicleProtocol
import com.icar03.content.model.VehicleControl
import org.junit.After
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode

/** Real Adapter admission and packets, with a service that separates writes from readback. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentVehicleAdapterCommandTest {
    private val adapters = mutableListOf<ContentVehicleAdapter>()

    @After fun cleanup() {
        adapters.forEach { it.stop() }
    }

    @Test fun strictJointNormalizationIncludesAutomaticHeatingAndRejectsWriteCodesAsReadback() {
        val mainValues = listOf(Int.MIN_VALUE, -1000, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, Int.MAX_VALUE)
        val companions = listOf(Int.MIN_VALUE, -1000, -1, 0, 1, 2, 3, Int.MAX_VALUE)
        for (main in mainValues) for (auto in companions) {
            val heat = when {
                main in 1..4 && auto == 1 -> main - 1
                main in 5..7 && auto == 1 -> 0
                main in 1..4 && auto == 2 -> 4
                else -> -1
            }
            val wheel = when {
                main in 1..3 && auto == 1 -> main - 1
                main in 1..3 && auto == 2 -> 3
                else -> -1
            }
            assertEquals("heat main=$main auto=$auto", heat,
                ContentVehicleProtocol.normalizeHeatingLevel(main, auto))
            assertEquals(heat, ContentVehicleAdapter.normalizeHeatingLevel(main, auto))
            assertEquals("passenger main=$main auto=$auto", heat,
                ContentVehicleProtocol.normalizeHeatingLevel(VehicleControl.PassengerHeating, main, auto))
            assertEquals("wheel main=$main active=$auto", wheel,
                ContentVehicleProtocol.normalizeSteeringLevel(main, auto))
            assertEquals(wheel, ContentVehicleAdapter.normalizeSteeringLevel(main, auto))
            assertEquals(auto in 1..2, ContentVehicleAdapter.isKnownHeatingAuto(auto))
        }
        assertEquals(-1, ContentVehicleProtocol.normalizeHeatingLevel(8, 2))
        assertEquals(-1, ContentVehicleProtocol.normalizeSteeringLevel(4, 2))
    }

    @Test fun readSnapshotUsesIntegerFunctionAreaOrderAndBothAutomaticCompanions() {
        val service = VehicleCommandBinder()
        val adapter = adapter(service)
        for ((main, auto, expected) in listOf(
            Triple(1, 1, 0), Triple(2, 1, 1), Triple(3, 1, 2), Triple(4, 1, 3),
            Triple(1, 2, 4), Triple(2, 2, 4), Triple(3, 2, 4), Triple(4, 2, 4),
            Triple(5, 1, 0), Triple(6, 1, 0), Triple(7, 1, 0),
            Triple(1, 0, -1), Triple(4, -1, -1), Triple(5, 2, -1), Triple(6, 2, -1),
            Triple(7, 2, -1), Triple(8, 2, -1))) {
            service.values[0x212] = main
            service.values[0x282] = auto
            val snapshot = readVehicleCommandSnapshot(adapter, service)
            assertEquals(expected, snapshot.heatingLevel)
            assertEquals(auto in 1..2, snapshot.heatingAutoKnown)
            assertEquals(auto == 2, snapshot.heatingAutoActive)
        }
        for ((main, active, expected) in listOf(
            Triple(1, 1, 0), Triple(2, 1, 1), Triple(3, 1, 2),
            Triple(1, 2, 3), Triple(2, 2, 3), Triple(3, 2, 3),
            Triple(4, 1, -1), Triple(4, 2, -1), Triple(1, -1, -1))) {
            service.values[0x21c] = main
            service.values[0x2a5] = active
            assertEquals(expected, readVehicleCommandSnapshot(adapter, service).steeringHeatLevel)
        }
        for (function in listOf(0x212, 0x282, 0x21c, 0x2a5)) {
            val reads = service.calls.filter { it.functionId == function }
            assertTrue(reads.isNotEmpty())
            assertTrue(reads.all { it.transaction == 7 && it.area == 0 && it.value == null })
        }
        assertTrue(service.writes.isEmpty())
    }

    @Test fun passengerReadsUseDedicatedFunctionPairAndFailuresNeverBorrowDriverEvidence() {
        val service = VehicleCommandBinder().apply { values[0x212] = 4 }
        val adapter = adapter(service)
        val passenger = VehicleControl.PassengerHeating
        for ((main, auto, expected) in listOf(
            Triple(1, 1, 0), Triple(2, 1, 1), Triple(3, 1, 2), Triple(4, 1, 3),
            Triple(1, 2, 4), Triple(2, 2, 4), Triple(3, 2, 4), Triple(4, 2, 4),
            Triple(5, 1, 0), Triple(6, 1, 0), Triple(7, 1, 0),
            Triple(1, -1, -1), Triple(4, 0, -1), Triple(5, 2, -1), Triple(7, 2, -1), Triple(8, 2, -1))) {
            service.values[0x213] = main
            service.values[0x34a] = auto
            val snapshot = readVehicleCommandSnapshot(adapter, service)
            assertEquals(expected, snapshot.passengerHeatingLevel)
            assertEquals(auto in 1..2, snapshot.passengerHeatingAutoKnown)
            assertEquals(auto == 2, snapshot.passengerHeatingAutoActive)
            assertEquals(3, snapshot.heatingLevel)
            assertEquals(expected >= 0, adapter.isSeatLevelAvailable(passenger.id, 0))
            assertTrue(adapter.isSeatLevelAvailable("seat_heating", 4))
        }
        for (function in listOf(0x213, 0x34a)) for (permissionReply in listOf(false, true)) {
            service.values[0x213] = 1; service.values[0x34a] = 1
            service.failReadFunction = function
            service.failReadWithPermissionReply = permissionReply
            val snapshot = readVehicleCommandSnapshot(adapter, service)
            assertEquals(-1, snapshot.passengerHeatingLevel)
            assertEquals(function != 0x34a, snapshot.passengerHeatingAutoKnown)
            assertEquals(3, snapshot.heatingLevel)
            for (target in 0..4) assertFalse(adapter.requestSeatLevel(passenger.id, target, 95L))
            assertTrue(adapter.isSeatLevelAvailable("seat_heating", 4))
        }
        service.failReadFunction = null
        assertEquals(0, readVehicleCommandSnapshot(adapter, service).passengerHeatingLevel)
        for (function in listOf(0x213, 0x34a)) {
            val reads = service.calls.filter { it.functionId == function }
            assertTrue(reads.isNotEmpty())
            assertTrue(reads.all { it.transaction == 7 && it.area == 0 && it.value == null })
        }
        assertTrue(service.writes.isEmpty())
    }

    @Test fun formalEntryExecutesEveryHeatingAndSteeringCycleWithOneTargetPacket() {
        val service = VehicleCommandBinder()
        val adapter = adapter(service)
        val failures = mutableListOf<Long>()
        val snapshots = observe(adapter, failures)
        val cycles = listOf(
            VehicleControl.SteeringHeat to listOf(0, 2, 1, 3, 0),
            VehicleControl.Heating to listOf(0, 3, 2, 1, 4, 0),
            VehicleControl.PassengerHeating to listOf(0, 3, 2, 1, 4, 0),
        )
        var requestId = 100L
        for ((control, cycle) in cycles) {
            assertTrue(adapter.isSeatControlAvailable(control.id))
            for ((actual, target) in cycle.zipWithNext()) {
                val before = service.writes.size
                assertTrue("${control.id} $actual->$target", adapter.isSeatLevelAvailable(control.id, actual, target))
                assertTrue(adapter.requestSeatLevel(control.id, target, requestId++))
                assertEquals("queue acceptance does not execute or confirm", before, service.writes.size)
                shadowOf(Looper.getMainLooper()).idle()
                val expected = expectedHeatPacket(control, target)
                assertEquals(listOf(expected), service.writes.drop(before))
                assertEquals(target, level(snapshots.last(), control))
                if (control.isAutomatic(target)) {
                    val main = heatMainFunction(control)
                    val companion = heatCompanionFunction(control)
                    assertEquals("AUTO command is not returned as main", 1, service.values[main])
                    assertEquals(2, service.values[companion])
                }
            }
        }
        assertTrue(failures.isEmpty())
        assertNoCompanionWrites(service)
    }

    @Test fun formalPacketsCoverEveryLegalTargetAndPreserveVentilationAndMassage() {
        val service = VehicleCommandBinder()
        val adapter = adapter(service)
        val targets = listOf(
            VehicleControl.Heating to listOf(1, 2, 3, 4, 8),
            VehicleControl.PassengerHeating to listOf(1, 2, 3, 4, 8),
            VehicleControl.SteeringHeat to listOf(1, 2, 3, 4),
            VehicleControl.Ventilation to listOf(1, 5, 6, 7),
            VehicleControl.Massage to listOf(1, 1, 2, 3),
        )
        var requestId = 200L
        for ((control, codes) in targets) for ((target, code) in codes.withIndex()) {
            // This fixture only supplies known raw readback, never a capability override.
            service.values[0x212] = 1
            service.values[0x282] = 1
            service.values[0x241] = 2
            service.values[0x245] = 1
            service.values[0x243] = 1
            readVehicleCommandSnapshot(adapter, service)
            val before = service.writes.size
            assertTrue(adapter.requestSeatLevel(control.id, target, requestId++))
            shadowOf(Looper.getMainLooper()).idle()
            val function = when (control) {
                VehicleControl.SteeringHeat -> 0x21c
                VehicleControl.PassengerHeating -> 0x213
                VehicleControl.Massage -> if (target == 0) 0x241 else 0x243
                else -> 0x212
            }
            assertEquals(listOf(VehiclePacket(5, function, 0, code)), service.writes.drop(before))
        }
        assertNoCompanionWrites(service)
    }

    @Test fun automaticModeRemainsExecutableWhileTheVehicleChangesLiveHeatLevel() {
        val service = VehicleCommandBinder()
        val adapter = adapter(service)
        for (control in listOf(VehicleControl.Heating, VehicleControl.PassengerHeating)) for (main in 1..4) {
            service.values[heatMainFunction(control)] = main
            service.values[heatCompanionFunction(control)] = 2
            assertEquals(4, level(readVehicleCommandSnapshot(adapter, service), control))
            for (target in 0..4) assertTrue(adapter.isSeatLevelAvailable(control.id, 4, target))
        }
        for (main in 1..3) {
            service.values[0x21c] = main
            service.values[0x2a5] = 2
            assertEquals(3, readVehicleCommandSnapshot(adapter, service).steeringHeatLevel)
            for (target in 0..3) assertTrue(adapter.isSeatLevelAvailable("steering_heating", 3, target))
        }
        assertTrue(service.writes.isEmpty())
    }

    @Test fun unknownReadbacksIllegalModesAndUnknownControlsRejectWithoutWriting() {
        val service = VehicleCommandBinder()
        val adapter = adapter(service)
        for ((main, auto) in listOf(1 to -1, 4 to 0, 5 to 2, 7 to 2, 8 to 2, -1000 to 1)) {
            service.values[0x212] = main
            service.values[0x282] = auto
            assertEquals(-1, readVehicleCommandSnapshot(adapter, service).heatingLevel)
            for (target in 0..4) {
                assertFalse(adapter.isSeatLevelAvailable("seat_heating", target))
                assertFalse(adapter.requestSeatLevel("seat_heating", target, 300L))
            }
        }
        for ((main, active) in listOf(1 to -1, 3 to 0, 4 to 1, 4 to 2, 8 to 2)) {
            service.values[0x21c] = main
            service.values[0x2a5] = active
            readVehicleCommandSnapshot(adapter, service)
            for (target in 0..3) assertFalse(adapter.requestSeatLevel("steering_heating", target, 301L))
        }
        for (id in listOf<String?>(null, "", "settings", "lock", "passenger_heating")) {
            assertNull(ContentVehicleProtocol.seatLevelWrite(id, 0))
            assertFalse(adapter.isSeatControlAvailable(id))
            assertFalse(adapter.requestSeatLevel(id, 0, 302L))
        }
        for (control in VehicleControl.entries.filter { it != VehicleControl.Lock }) {
            for (target in listOf(Int.MIN_VALUE, -1000, -1, control.maxLevel + 1, Int.MAX_VALUE)) {
                assertNull(ContentVehicleProtocol.seatLevelWrite(control.id, target))
                assertFalse(adapter.requestSeatLevel(control.id, target, 303L))
            }
        }
        assertTrue(service.writes.isEmpty())
    }

    @Test fun queueAndBinderAcknowledgementDoNotFabricateDelayedAutomaticReadback() {
        val service = VehicleCommandBinder().apply { holdReadback = true }
        val adapter = adapter(service)
        val snapshots = observe(adapter, mutableListOf())
        assertTrue(adapter.requestSeatLevel("seat_heating", 4, 400L))
        assertTrue(snapshots.isEmpty())
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(8, service.lastWrites[0x212])
        assertEquals(0, snapshots.last().heatingLevel)
        service.releaseReadback()
        pollVehicleCommandAdapter(adapter)
        assertEquals(4, snapshots.last().heatingLevel)
        assertEquals(1, service.values[0x212])
        assertEquals(2, service.values[0x282])

        assertTrue(adapter.requestSeatLevel("steering_heating", 3, 401L))
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(4, service.lastWrites[0x21c])
        assertEquals(0, snapshots.last().steeringHeatLevel)
        service.releaseReadback()
        pollVehicleCommandAdapter(adapter)
        assertEquals(3, snapshots.last().steeringHeatLevel)

        assertTrue(adapter.requestSeatLevel("passenger_seat_heating", 4, 402L))
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(8, service.lastWrites[0x213])
        assertEquals(0, snapshots.last().passengerHeatingLevel)
        assertEquals(4, snapshots.last().heatingLevel)
        service.releaseReadback()
        pollVehicleCommandAdapter(adapter)
        assertEquals(4, snapshots.last().passengerHeatingLevel)
        assertEquals(1, service.values[0x213])
        assertEquals(2, service.values[0x34a])
        assertNoCompanionWrites(service)
    }

    @Test fun rejectedTransactionsAndPermissionRepliesFailAndReadActualStateBack() {
        for (control in listOf(VehicleControl.Heating, VehicleControl.PassengerHeating, VehicleControl.SteeringHeat)) {
            for (permissionReply in listOf(false, true)) {
                val function = heatMainFunction(control)
                val service = VehicleCommandBinder().apply {
                    failWriteFunction = function
                    failWithPermissionReply = permissionReply
                }
                val adapter = adapter(service)
                val failures = mutableListOf<Long>()
                val snapshots = observe(adapter, failures)
                val requestId = 500L + function
                assertTrue("queue acceptance is not successful control", adapter.requestSeatLevel(control.id, control.automaticLevel, requestId))
                shadowOf(Looper.getMainLooper()).idle()
                assertEquals(listOf(requestId), failures)
                assertEquals(listOf(expectedHeatPacket(control, control.automaticLevel)), service.writes)
                assertTrue("failures still request actual readback", snapshots.isNotEmpty())
                assertEquals(0, level(snapshots.last(), control))
                assertTrue(service.lastWrites.isEmpty())
                assertNoCompanionWrites(service)
            }
        }
    }

    @Test fun queuedCommandCannotUseAnOldBinderOrWorkerAfterConnectionChanges() {
        for (replaceWorker in listOf(false, true)) {
            val service = VehicleCommandBinder()
            val replacement = VehicleCommandBinder()
            val adapter = adapter(service)
            val failures = mutableListOf<Long>()
            val snapshots = observe(adapter, failures)
            assertTrue(adapter.requestSeatLevel("seat_heating", 4, 600L))
            if (replaceWorker) setVehicleAdapterField(adapter, "workerHandler", Handler(Looper.getMainLooper()))
            else setVehicleAdapterField(adapter, "binder", replacement)
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(listOf(600L), failures)
            assertTrue(service.writes.isEmpty())
            assertTrue(replacement.writes.isEmpty())
            assertTrue(snapshots.isEmpty())
        }
    }

    @Test fun missingWorkerOrStoppedAdapterCannotAdvertiseOrQueueSeatCommands() {
        val service = VehicleCommandBinder()
        val adapter = adapter(service)
        setVehicleAdapterField(adapter, "workerHandler", null)
        assertTrue("transport is separate from worker capability", adapter.isAvailable)
        assertFalse(adapter.isSeatControlAvailable("steering_heating"))
        assertFalse(adapter.requestSeatLevel("seat_heating", 4, 700L))
        adapter.stop()
        assertFalse(adapter.requestSeatLevel("steering_heating", 3, 701L))
        assertTrue(service.writes.isEmpty())
    }

    @Test fun massageKeepsStartReadinessStrengthAndOffOrder() {
        val service = VehicleCommandBinder().apply {
            values[0x241] = 1; values[0x245] = 0; values[0x243] = 0
        }
        val adapter = adapter(service)
        val before = service.calls.size
        assertTrue(adapter.requestSeatLevel("seat_massage", 3, 800L))
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(listOf(VehiclePacket(5, 0x241, 0, 2), VehiclePacket(5, 0x243, 0, 3)), service.writes)
        val execution = service.calls.drop(before)
        val start = execution.indexOfFirst { it.transaction == 5 && it.functionId == 0x241 }
        val strength = execution.indexOfFirst { it.transaction == 5 && it.functionId == 0x243 }
        assertTrue(execution.subList(start + 1, strength).map { it.functionId }.containsAll(listOf(0x241, 0x245, 0x243)))
        assertTrue(adapter.requestSeatLevel("seat_massage", 0, 801L))
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(VehiclePacket(5, 0x241, 0, 1), service.writes.last())
        assertEquals(3, service.writes.size)
    }

    @Test fun knownActiveMassageCanStopEvenWhenStrengthIsUnknown() {
        val service = VehicleCommandBinder().apply { values[0x243] = -1 }
        val adapter = adapter(service)
        assertEquals(-1, readVehicleCommandSnapshot(adapter, service).massageLevel)
        assertTrue(adapter.isSeatLevelAvailable("seat_massage", 0))
        assertFalse(adapter.requestSeatLevel("seat_massage", 3, 810L))
        assertTrue(adapter.requestSeatLevel("seat_massage", 0, 811L))
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(listOf(VehiclePacket(5, 0x241, 0, 1)), service.writes)
    }

    @Test fun everyGearLabelReachesFormalPacketsWithoutLocalGearOrSpeedReads() {
        val service = VehicleCommandBinder()
        val adapter = adapter(service)
        var requestId = 900L
        for ((gear, speed) in listOf(11 to 0f, 1 to 20f, 9 to 20f, -1000 to Float.NaN)) {
            service.gearValue = gear
            service.speed = speed
            val before = service.writes.size
            assertTrue(adapter.requestLock(false, requestId++))
            shadowOf(Looper.getMainLooper()).idle()
            assertTrue(adapter.requestSeatLevel("seat_ventilation", 3, requestId++))
            shadowOf(Looper.getMainLooper()).idle()
            val ventilating = readVehicleCommandSnapshot(adapter, service)
            assertEquals(3, ventilating.ventilationLevel)
            assertEquals(0, ventilating.heatingLevel)
            assertTrue(adapter.isSeatLevelAvailable("seat_heating", 3))
            assertTrue(adapter.requestSeatLevel("seat_heating", 3, requestId++))
            shadowOf(Looper.getMainLooper()).idle()
            assertTrue(adapter.requestSeatLevel("seat_massage", 3, requestId++))
            shadowOf(Looper.getMainLooper()).idle()
            assertTrue(adapter.requestSeatLevel("steering_heating", 3, requestId++))
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(listOf(1045 to 2, 0x212 to 7, 0x212 to 4, 0x243 to 3, 0x21c to 4),
                service.writes.drop(before).map { it.functionId to it.value })
        }
        assertFalse(service.calls.any { it.functionId == 0x255 || it.functionId == 0x401 })
        assertNoCompanionWrites(service)
    }

    private fun adapter(service: VehicleCommandBinder) = attachedVehicleCommandAdapter(service).also(adapters::add)

    private fun observe(adapter: ContentVehicleAdapter, failures: MutableList<Long>): MutableList<ContentPorts.VehicleSnapshot> {
        val snapshots = mutableListOf<ContentPorts.VehicleSnapshot>()
        setVehicleAdapterField(adapter, "listener", object : ContentPorts.VehicleSnapshotListener {
            override fun onVehicleSnapshot(snapshot: ContentPorts.VehicleSnapshot) { snapshots += snapshot }
            override fun onVehicleCommandFailed(requestId: Long, message: String) { failures += requestId }
        })
        return snapshots
    }

    private fun level(snapshot: ContentPorts.VehicleSnapshot, control: VehicleControl) = when (control) {
        VehicleControl.Heating -> snapshot.heatingLevel
        VehicleControl.PassengerHeating -> snapshot.passengerHeatingLevel
        VehicleControl.SteeringHeat -> snapshot.steeringHeatLevel
        else -> error("Not a heating fixture: $control")
    }
}

internal data class VehiclePacket(val transaction: Int, val functionId: Int, val area: Int, val value: Int?)

// An independent service-side protocol oracle; never derive expected packets from production code.
internal fun heatMainFunction(control: VehicleControl): Int = when (control) {
    VehicleControl.Heating -> 0x212
    VehicleControl.PassengerHeating -> 0x213
    VehicleControl.SteeringHeat -> 0x21c
    else -> error("Not a heating fixture: $control")
}

internal fun heatCompanionFunction(control: VehicleControl): Int = when (control) {
    VehicleControl.Heating -> 0x282
    VehicleControl.PassengerHeating -> 0x34a
    VehicleControl.SteeringHeat -> 0x2a5
    else -> error("Not a heating fixture: $control")
}

internal fun expectedHeatPacket(control: VehicleControl, target: Int) = VehiclePacket(5,
    heatMainFunction(control), 0, if (control != VehicleControl.SteeringHeat && target == 4) 8 else target + 1)

/**
 * Only connection and worker scheduling are installed by the fixture. The real
 * Adapter implements every capability, request, packet and normalization method.
 */
internal fun attachedVehicleCommandAdapter(service: VehicleCommandBinder): ContentVehicleAdapter =
    ContentVehicleAdapter(RuntimeEnvironment.getApplication()).also {
        setVehicleAdapterField(it, "running", true)
        setVehicleAdapterField(it, "binder", service)
        setVehicleAdapterField(it, "workerHandler", Handler(Looper.getMainLooper()))
        readVehicleCommandSnapshot(it, service)
    }

internal fun readVehicleCommandSnapshot(adapter: ContentVehicleAdapter, service: IBinder): ContentPorts.VehicleSnapshot =
    ContentVehicleAdapter::class.java.getDeclaredMethod("readSnapshot", IBinder::class.java)
        .apply { isAccessible = true }.invoke(adapter, service) as ContentPorts.VehicleSnapshot

internal fun pollVehicleCommandAdapter(adapter: ContentVehicleAdapter) {
    val worker = vehicleAdapterField(adapter, "workerHandler") as Handler
    val poll = vehicleAdapterField(adapter, "pollRunnable") as Runnable
    worker.removeCallbacks(poll)
    worker.post(poll)
    shadowOf(Looper.getMainLooper()).idle()
}

internal fun vehicleAdapterField(adapter: ContentVehicleAdapter, name: String): Any? =
    ContentVehicleAdapter::class.java.getDeclaredField(name).apply { isAccessible = true }.get(adapter)

internal fun setVehicleAdapterField(adapter: ContentVehicleAdapter, name: String, value: Any?) {
    ContentVehicleAdapter::class.java.getDeclaredField(name).apply { isAccessible = true; set(adapter, value) }
}

internal fun assertNoCompanionWrites(service: VehicleCommandBinder) {
    assertTrue(service.writes.all { it.area == 0 })
    assertFalse("AUTO state fields are never command targets",
        service.writes.any { it.functionId == 0x282 || it.functionId == 0x34a || it.functionId == 0x2a5 })
}

/** Service write codes are recorded independently from its observable readback state. */
internal class VehicleCommandBinder : Binder() {
    var gearValue = 11
    var speed = 0f
    var failWriteFunction: Int? = null
    var failWithPermissionReply = false
    var failReadFunction: Int? = null
    var failReadWithPermissionReply = false
    var cabinTemperature = 25f
    var batterySoc = 60f
    var holdReadback = false
    val values = mutableMapOf(0x212 to 1, 0x282 to 1, 0x213 to 1, 0x34a to 1, 0x21c to 1, 0x2a5 to 1,
        0x241 to 2, 0x245 to 1, 0x243 to 1, 1047 to 1, 0x303 to 123,
        0x305 to 0, 0x29d to 0, 0x308 to 0)
    val lastWrites = mutableMapOf<Int, Int>()
    val calls = mutableListOf<VehiclePacket>()
    val writes: List<VehiclePacket> get() = calls.filter { it.transaction == 5 }
    private val delayed = mutableListOf<Map<Int, Int>>()

    init { attachInterface(null, "com.chery.canmanager.interfaces.IVirturalCarProperty") }

    fun releaseReadback() {
        delayed.forEach(values::putAll)
        delayed.clear()
    }

    override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
        data.enforceInterface("com.chery.canmanager.interfaces.IVirturalCarProperty")
        val function = data.readInt()
        val area = data.readInt()
        val value = if (code == 5) data.readInt() else null
        assertEquals("contract is (function, area, value)", 0, data.dataAvail())
        assertEquals(0, flags)
        calls += VehiclePacket(code, function, area, value)
        if (code == 5 && function == failWriteFunction || code == 7 && function == failReadFunction) {
            val permissionReply = if (code == 5) failWithPermissionReply else failReadWithPermissionReply
            if (!permissionReply) return false
            reply!!.writeException(SecurityException("vehicle denied transaction"))
            return true
        }
        reply!!.writeNoException()
        when (code) {
            5 -> {
                lastWrites[function] = value!!
                val state = when (function) {
                    1045 -> mapOf(1047 to value)
                    0x212 -> if (value == 8) mapOf(0x212 to 1, 0x282 to 2)
                        else mapOf(0x212 to value, 0x282 to 1)
                    0x213 -> if (value == 8) mapOf(0x213 to 1, 0x34a to 2)
                        else mapOf(0x213 to value, 0x34a to 1)
                    0x21c -> if (value == 4) mapOf(0x21c to 1, 0x2a5 to 2)
                        else mapOf(0x21c to value, 0x2a5 to 1)
                    0x241 -> if (value == 2) mapOf(0x241 to 2, 0x245 to 1, 0x243 to 1)
                        else mapOf(0x241 to 1, 0x245 to 0, 0x243 to 0)
                    0x243 -> mapOf(0x243 to value)
                    else -> error("unexpected write function ${function.toString(16)}")
                }
                if (holdReadback) delayed += state else values.putAll(state)
            }
            7 -> reply.writeInt(if (function == 0x255) gearValue else values[function] ?: -1)
            13 -> reply.writeFloat(when (function) {
                0x110 -> cabinTemperature
                0x306 -> batterySoc
                0x401 -> speed
                else -> -1000f
            })
            else -> return false
        }
        return true
    }
}
