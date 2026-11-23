package com.icar03.content.runtime

import android.content.ComponentName
import android.content.ServiceConnection
import android.os.Handler
import android.os.Looper
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentState
import com.autonavi.amapauto.content.ContentStore
import com.autonavi.amapauto.content.ContentVehicleAdapter
import com.icar03.content.model.VehicleControl
import com.icar03.content.ui.ContentEvent
import org.junit.After
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.time.Duration

/** Formal Store -> real Adapter -> Binder -> actual readback, with no Port capability override. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentVehicleBinderStoreTest {
    private val stores = mutableListOf<ContentStore>()
    private val bindings = mutableListOf<ContentBinding>()

    @After fun cleanup() {
        bindings.forEach { it.close() }
        stores.forEach { it.destroy() }
    }

    @Test fun defaultFormalPortCyclesKeepActualAndTargetSeparateUntilBinderReadback() {
        val fixture = connectedStore(VehicleCommandBinder().apply { holdReadback = true })
        val (store, adapter, service) = fixture
        val port: ContentPorts.VehiclePort = adapter
        val cycles = listOf(
            VehicleControl.SteeringHeat to listOf(0, 2, 1, 3, 0),
            VehicleControl.Heating to listOf(0, 3, 2, 1, 4, 0),
            VehicleControl.PassengerHeating to listOf(0, 3, 2, 1, 4, 0),
        )
        for ((control, cycle) in cycles) for ((actual, target) in cycle.zipWithNext()) {
            assertTrue(control.id in store.snapshot().writableSeatControls)
            assertTrue(port.isSeatLevelAvailable(control.id, actual, target))
            val before = service.writes.size
            store.cycleSeatLevel(control.id)
            val queued = store.snapshot()
            assertEquals(actual, queued.controlLevel(control))
            assertEquals(control.id, queued.pendingVehicleCommand)
            assertEquals(target, queued.pendingSeatLevel)
            assertEquals(ContentState.COMMAND_PENDING, queued.commandStatus)
            assertTrue(queued.writableSeatControls.isEmpty())
            assertEquals(before, service.writes.size)

            shadowOf(Looper.getMainLooper()).idle()
            val acknowledged = store.snapshot()
            assertEquals("Binder ACK does not confirm", ContentState.COMMAND_PENDING, acknowledged.commandStatus)
            assertEquals(actual, acknowledged.controlLevel(control))
            assertEquals(target, acknowledged.pendingSeatLevel)
            val packet = expectedHeatPacket(control, target)
            assertEquals(listOf(packet), service.writes.drop(before))

            service.releaseReadback()
            pollVehicleCommandAdapter(adapter)
            val confirmed = store.snapshot()
            assertEquals(target, confirmed.controlLevel(control))
            assertEquals("", confirmed.pendingVehicleCommand)
            assertEquals(-1, confirmed.pendingSeatLevel)
            assertEquals(ContentState.COMMAND_NONE, confirmed.commandStatus)
            assertTrue("every next mode remains executable, including L1->AUTO->OFF",
                control.id in confirmed.writableSeatControls)
        }
        assertNoCompanionWrites(service)
    }

    @Test fun passengerBindingCyclesUseOnlyOwnPacketsAndWaitForIndependentReadback() {
        val service = VehicleCommandBinder().apply { holdReadback = true; values[0x212] = 4 }
        val (store, adapter, _) = connectedStore(service)
        val binding = ContentBinding(store).also(bindings::add).also { it.start() }
        val passenger = VehicleControl.PassengerHeating
        for ((actual, target) in listOf(0, 3, 2, 1, 4, 0).zipWithNext()) {
            val before = service.writes.size
            assertTrue(binding.state.value.controls.getValue(passenger).available)
            binding.dispatch(ContentEvent.ControlTapped(passenger))
            val pending = binding.state.value.controls.getValue(passenger)
            assertEquals(actual, pending.actual)
            assertEquals(target, pending.target)
            assertEquals(passenger.id, store.snapshot().pendingVehicleCommand)
            assertTrue(binding.state.value.controls.values.none { it.available })
            binding.dispatch(ContentEvent.ControlTapped(VehicleControl.Heating))
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(listOf(expectedHeatPacket(passenger, target)), service.writes.drop(before))
            assertEquals(actual, store.snapshot().passengerHeatingLevel)
            assertEquals(3, store.snapshot().heatingLevel)
            assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
            service.releaseReadback()
            pollVehicleCommandAdapter(adapter)
            val confirmed = binding.state.value.controls.getValue(passenger)
            assertEquals(target, confirmed.actual)
            assertNull(confirmed.target)
            assertTrue(confirmed.available)
            assertEquals(3, binding.state.value.controls.getValue(VehicleControl.Heating).actual)
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        }
        assertEquals(listOf(4, 3, 2, 8, 1), service.writes.map { it.value })
        assertTrue(service.writes.all { it.functionId == 0x213 && it.area == 0 })
        assertNoCompanionWrites(service)
    }

    @Test fun passengerAutoRejectsInvalidOwnReadbackAndNeverBorrowsDriverMode() {
        val service = VehicleCommandBinder().apply { holdReadback = true; values[0x282] = 2 }
        val (store, adapter, _) = connectedStore(service)
        val binding = ContentBinding(store).also(bindings::add).also { it.start() }
        val passenger = VehicleControl.PassengerHeating
        store.setSeatLevel(passenger.id, 4)
        shadowOf(Looper.getMainLooper()).idle()
        for ((main, auto, expected) in listOf(
            Triple(8, 2, -1), Triple(1, -1, -1), Triple(4, 1, 3), Triple(7, 2, -1), Triple(0, 1, -1))) {
            service.values[0x213] = main; service.values[0x34a] = auto
            pollVehicleCommandAdapter(adapter)
            assertEquals(4, store.snapshot().heatingLevel)
            assertEquals(expected, store.snapshot().passengerHeatingLevel)
            assertEquals(4, binding.state.value.controls.getValue(passenger).target)
            assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        }
        service.values[0x213] = 2; service.values[0x34a] = 2
        pollVehicleCommandAdapter(adapter)
        assertEquals(4, binding.state.value.controls.getValue(passenger).actual)
        assertNull(binding.state.value.controls.getValue(passenger).target)
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        for (main in 1..4) {
            service.values[0x213] = main
            pollVehicleCommandAdapter(adapter)
            assertEquals(4, store.snapshot().passengerHeatingLevel)
            assertTrue(passenger.id in store.snapshot().writableSeatControls)
        }
        service.values[0x34a] = -1
        pollVehicleCommandAdapter(adapter)
        assertFalse(passenger.id in store.snapshot().writableSeatControls)
        assertTrue(VehicleControl.Heating.id in store.snapshot().writableSeatControls)
        binding.dispatch(ContentEvent.ControlTapped(passenger))
        assertEquals(listOf(VehiclePacket(5, 0x213, 0, 8)), service.writes)
        assertNoCompanionWrites(service)
    }

    @Test fun passengerAloneMakesAValidVehicleSnapshotAndItsLossDisablesOnlyThatReadback() {
        val service = VehicleCommandBinder().apply {
            cabinTemperature = Float.NaN; batterySoc = Float.NaN
            values.clear(); values[0x213] = 1; values[0x34a] = 1
        }
        val (store, adapter, _) = connectedStore(service)
        val passenger = VehicleControl.PassengerHeating
        val ready = store.snapshot()
        assertTrue(ready.vehicleDataAvailable)
        assertTrue(ready.seatControlsKnown)
        assertEquals(setOf(passenger.id), ready.writableSeatControls)
        assertEquals(0, ready.passengerHeatingLevel)
        assertEquals(-1, ready.heatingLevel)
        service.failReadFunction = 0x34a
        pollVehicleCommandAdapter(adapter)
        val unknown = store.snapshot()
        assertFalse(unknown.vehicleDataAvailable)
        assertFalse(unknown.seatControlsKnown)
        assertEquals(-1, unknown.passengerHeatingLevel)
        assertTrue(unknown.writableSeatControls.isEmpty())
        store.cycleSeatLevel(passenger.id)
        assertTrue(service.writes.isEmpty())
        service.failReadFunction = null
        pollVehicleCommandAdapter(adapter)
        assertTrue(passenger.id in store.snapshot().writableSeatControls)
        store.cycleSeatLevel(passenger.id)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(3, store.snapshot().passengerHeatingLevel)
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        assertEquals(listOf(VehiclePacket(5, 0x213, 0, 4)), service.writes)
        assertNoCompanionWrites(service)
    }

    @Test fun solePendingRequestDoesNotQueueOtherControlsOrReplaceItsTarget() {
        val (store, _, service) = connectedStore(VehicleCommandBinder().apply { holdReadback = true })
        store.cycleSeatLevel("seat_heating")
        val firstId = pendingRequestId(store)
        shadowOf(Looper.getMainLooper()).idle()
        for (id in listOf("steering_heating", "seat_ventilation", "seat_heating", "passenger_seat_heating", "seat_massage")) {
            store.cycleSeatLevel(id)
            store.setSeatLevel(id, 0)
            store.setSeatLevel(id, 1)
        }
        store.toggleLock()
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(firstId, pendingRequestId(store))
        assertEquals("seat_heating", store.snapshot().pendingVehicleCommand)
        assertEquals(3, store.snapshot().pendingSeatLevel)
        assertEquals(0, store.snapshot().heatingLevel)
        assertEquals(listOf(VehiclePacket(5, 0x212, 0, 4)), service.writes)
        assertNoCompanionWrites(service)
    }

    @Test fun wrongAndUnknownJointReadbacksCannotConfirmAutomaticTargets() {
        val (store, adapter, service) = connectedStore(VehicleCommandBinder().apply { holdReadback = true })
        store.setSeatLevel("seat_heating", 4)
        shadowOf(Looper.getMainLooper()).idle()
        for ((main, auto, actual) in listOf(
            Triple(8, 2, -1), Triple(1, -1, -1), Triple(4, 1, 3), Triple(7, 2, -1))) {
            service.values[0x212] = main
            service.values[0x282] = auto
            pollVehicleCommandAdapter(adapter)
            assertEquals(actual, store.snapshot().heatingLevel)
            assertEquals(4, store.snapshot().pendingSeatLevel)
            assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        }
        service.values[0x212] = 2
        service.values[0x282] = 2
        pollVehicleCommandAdapter(adapter)
        assertEquals("AUTO remains selected while the seat is heating at L1", 4, store.snapshot().heatingLevel)
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)

        store.setSeatLevel("steering_heating", 3)
        shadowOf(Looper.getMainLooper()).idle()
        for ((main, active, actual) in listOf(Triple(3, 1, 2), Triple(4, 2, -1), Triple(1, -1, -1))) {
            service.values[0x21c] = main
            service.values[0x2a5] = active
            pollVehicleCommandAdapter(adapter)
            assertEquals(actual, store.snapshot().steeringHeatLevel)
            assertEquals(3, store.snapshot().pendingSeatLevel)
            assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        }
        service.values[0x21c] = 3
        service.values[0x2a5] = 2
        pollVehicleCommandAdapter(adapter)
        assertEquals(3, store.snapshot().steeringHeatLevel)
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        assertEquals(listOf(VehiclePacket(5, 0x212, 0, 8), VehiclePacket(5, 0x21c, 0, 4)), service.writes)
        assertNoCompanionWrites(service)
    }

    @Test fun binderRejectionAndPermissionFailureClearTargetAndRetainActual() {
        for (permissionReply in listOf(false, true)) for (control in listOf(VehicleControl.Heating, VehicleControl.PassengerHeating, VehicleControl.SteeringHeat)) {
            val function = heatMainFunction(control)
            val service = VehicleCommandBinder().apply {
                failWriteFunction = function
                failWithPermissionReply = permissionReply
            }
            val (store, _, _) = connectedStore(service)
            store.setSeatLevel(control.id, control.automaticLevel)
            assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
            shadowOf(Looper.getMainLooper()).idle()
            val failed = store.snapshot()
            assertEquals(0, failed.controlLevel(control))
            assertEquals("", failed.pendingVehicleCommand)
            assertEquals(-1, failed.pendingSeatLevel)
            assertEquals(ContentState.COMMAND_FAILED, failed.commandStatus)
            assertTrue(failed.commandMessage.isNotEmpty())
            assertEquals(listOf(expectedHeatPacket(control, control.automaticLevel)), service.writes)
            assertNoCompanionWrites(service)
        }
    }

    @Test fun lateFailureFromTheAdapterCannotClearANewerRequest() {
        val service = VehicleCommandBinder().apply { failWriteFunction = 0x212 }
        val (store, adapter, _) = connectedStore(service)
        store.setSeatLevel("seat_heating", 4)
        val failedId = pendingRequestId(store)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
        service.failWriteFunction = null
        service.holdReadback = true
        store.setSeatLevel("steering_heating", 3)
        val newId = pendingRequestId(store)
        assertTrue(newId > failedId)
        ContentVehicleAdapter::class.java.getDeclaredMethod("reportCommandFailure", Long::class.javaPrimitiveType, String::class.java)
            .apply { isAccessible = true }.invoke(adapter, failedId, "late failure")
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(newId, pendingRequestId(store))
        assertEquals("steering_heating", store.snapshot().pendingVehicleCommand)
        assertEquals(3, store.snapshot().pendingSeatLevel)
        assertEquals(0, store.snapshot().steeringHeatLevel)
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        service.releaseReadback()
        pollVehicleCommandAdapter(adapter)
        assertEquals(3, store.snapshot().steeringHeatLevel)
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
    }

    @Test fun serviceDisconnectReturnsUnknownActualAndFailureInsteadOfTheQueuedTarget() {
        for (control in listOf(VehicleControl.Heating, VehicleControl.PassengerHeating)) {
            val (store, adapter, service) = connectedStore(VehicleCommandBinder().apply { holdReadback = true })
            store.setSeatLevel(control.id, 4)
            shadowOf(Looper.getMainLooper()).idle()
            val connection = vehicleAdapterField(adapter, "serviceConnection") as ServiceConnection
            connection.onServiceDisconnected(ComponentName("com.chery.virtualcarservice", "com.chery.virtualcarservice.virtualcar.VirtualCarService"))
            shadowOf(Looper.getMainLooper()).idle()
            assertFalse(adapter.isAvailable)
            val failed = store.snapshot()
            assertEquals(-1, failed.heatingLevel)
            assertEquals(-1, failed.passengerHeatingLevel)
            assertFalse(failed.passengerHeatingAutoKnown)
            assertFalse(failed.passengerHeatingAutoActive)
            assertEquals(-1, failed.steeringHeatLevel)
            assertEquals("", failed.pendingVehicleCommand)
            assertEquals(ContentState.COMMAND_FAILED, failed.commandStatus)
            assertTrue(failed.writableSeatControls.isEmpty())
            assertEquals(listOf(expectedHeatPacket(control, 4)), service.writes)
            assertNoCompanionWrites(service)
        }
    }

    @Test fun sixSecondTimeoutAndLateReadbackDoNotRetroactivelyConfirmTheFailedRequest() {
        val (store, adapter, service) = connectedStore(VehicleCommandBinder().apply { holdReadback = true })
        store.setSeatLevel("seat_heating", 4)
        val oldTimeout = ContentStore::class.java.getDeclaredField("commandTimeout")
            .apply { isAccessible = true }.get(store) as Runnable
        shadowOf(Looper.getMainLooper()).idle()
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(5999))
        assertEquals(0, store.snapshot().heatingLevel)
        assertEquals(4, store.snapshot().pendingSeatLevel)
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1))
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
        assertEquals("", store.snapshot().pendingVehicleCommand)
        service.releaseReadback()
        pollVehicleCommandAdapter(adapter)
        assertEquals(4, store.snapshot().heatingLevel)
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)

        store.cycleSeatLevel("seat_heating")
        assertEquals(0, store.snapshot().pendingSeatLevel)
        oldTimeout.run()
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        assertEquals(4, store.snapshot().heatingLevel)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(listOf(VehiclePacket(5, 0x212, 0, 8), VehiclePacket(5, 0x212, 0, 1)), service.writes)
        service.releaseReadback()
        pollVehicleCommandAdapter(adapter)
        assertEquals(0, store.snapshot().heatingLevel)
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        assertNoCompanionWrites(service)
    }

    @Test fun passengerTimeoutAndLateReadbackCannotConfirmAYoungerDriverRequest() {
        val (store, adapter, service) = connectedStore(VehicleCommandBinder().apply { holdReadback = true })
        val passenger = VehicleControl.PassengerHeating
        store.setSeatLevel(passenger.id, 4)
        val oldId = pendingRequestId(store)
        val oldTimeout = ContentStore::class.java.getDeclaredField("commandTimeout")
            .apply { isAccessible = true }.get(store) as Runnable
        shadowOf(Looper.getMainLooper()).idle()
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(5999))
        assertEquals(0, store.snapshot().passengerHeatingLevel)
        assertEquals(passenger.id, store.snapshot().pendingVehicleCommand)
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1))
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
        assertEquals("", store.snapshot().pendingVehicleCommand)
        assertEquals(0, store.snapshot().heatingLevel)
        store.setSeatLevel(VehicleControl.Heating.id, 4)
        val newId = pendingRequestId(store)
        assertTrue(newId > oldId)
        oldTimeout.run()
        ContentVehicleAdapter::class.java.getDeclaredMethod("reportCommandFailure", Long::class.javaPrimitiveType, String::class.java)
            .apply { isAccessible = true }.invoke(adapter, oldId, "late passenger failure")
        service.releaseReadback() // Only the earlier passenger packet has executed at this point.
        shadowOf(Looper.getMainLooper()).idle()
        // Passenger AUTO and its late failure are not the driver's independent AUTO readback.
        assertEquals(newId, pendingRequestId(store))
        assertEquals(VehicleControl.Heating.id, store.snapshot().pendingVehicleCommand)
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        assertEquals(0, store.snapshot().heatingLevel)
        assertEquals(4, store.snapshot().passengerHeatingLevel)
        service.releaseReadback()
        pollVehicleCommandAdapter(adapter)
        assertEquals(4, store.snapshot().heatingLevel)
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        assertEquals(listOf(VehiclePacket(5, 0x213, 0, 8), VehiclePacket(5, 0x212, 0, 8)), service.writes)
        assertNoCompanionWrites(service)
    }

    @Test fun unknownAndIllegalIntentsNeverReachFormalPacketsAndValidAutoReadbackRestoresAdmission() {
        val (store, adapter, service) = connectedStore()
        service.values[0x212] = 8
        service.values[0x282] = 2
        service.values[0x21c] = 4
        service.values[0x2a5] = 2
        pollVehicleCommandAdapter(adapter)
        for (id in listOf("seat_heating", "steering_heating")) {
            assertFalse(id in store.snapshot().writableSeatControls)
            store.cycleSeatLevel(id)
            store.setSeatLevel(id, 0)
            store.setSeatLevel(id, 3)
        }
        for ((id, target) in listOf("seat_heating" to -1, "seat_heating" to 5,
            "steering_heating" to 4, "seat_ventilation" to 4, "seat_massage" to 4, "lock" to 0, "settings" to 0)) {
            store.setSeatLevel(id, target)
        }
        assertTrue(service.writes.isEmpty())
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        service.values[0x212] = 3
        service.values[0x21c] = 2
        pollVehicleCommandAdapter(adapter)
        assertEquals(4, store.snapshot().heatingLevel)
        assertEquals(3, store.snapshot().steeringHeatLevel)
        assertTrue("seat_heating" in store.snapshot().writableSeatControls)
        assertTrue("steering_heating" in store.snapshot().writableSeatControls)
    }

    @Test fun realAdapterAdmissionFailureBetweenPublicationAndDispatchIsARejection() {
        val (store, adapter, service) = connectedStore()
        var interrupted = false
        store.addListener { state ->
            if (!interrupted && state.pendingVehicleCommand == "seat_heating") {
                interrupted = true
                setVehicleAdapterField(adapter, "workerHandler", null)
            }
        }
        store.setSeatLevel("seat_heating", 4)
        assertTrue(interrupted)
        assertTrue(service.writes.isEmpty())
        assertEquals(0, store.snapshot().heatingLevel)
        assertEquals("", store.snapshot().pendingVehicleCommand)
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
        setVehicleAdapterField(adapter, "workerHandler", Handler(Looper.getMainLooper()))
        pollVehicleCommandAdapter(adapter)
        assertTrue("seat_heating" in store.snapshot().writableSeatControls)
    }

    @Test fun frontWiperAloneEnablesItsPowerAutomaticAndManualTargetsThroughTheFormalAdapter() {
        val service = VehicleCommandBinder().apply {
            cabinTemperature = Float.NaN; batterySoc = Float.NaN
            values.clear(); values[608] = 3
        }
        val (store, adapter, _) = connectedStore(service)
        val binding = ContentBinding(store).also(bindings::add).also { it.start() }
        val wiper = VehicleControl.Wiper
        val ready = store.snapshot()
        assertTrue(ready.vehicleDataAvailable)
        assertFalse(ready.seatControlsKnown)
        assertEquals(setOf(wiper.id), ready.writableSeatControls)
        assertEquals(2, binding.state.value.controls.getValue(wiper).actual)
        assertEquals(2, binding.state.value.controls.getValue(wiper).rememberedLevel)
        assertTrue(binding.state.value.controls.getValue(wiper).available)
        for ((event, target, packet) in listOf(
            Triple(ContentEvent.ControlPowerTapped(wiper), 0, 1),
            Triple(ContentEvent.ControlPowerTapped(wiper), 2, 4),
            Triple(ContentEvent.ControlAutomaticTapped(wiper), 5, 2),
            Triple(ContentEvent.ControlAutomaticTapped(wiper), 0, 1),
            Triple(ContentEvent.ControlLevelChanged(wiper, 4), 4, 6),
            Triple(ContentEvent.ControlLevelChanged(wiper, 0), 0, 1))) {
            val before = service.writes.size
            val actual = store.snapshot().wiperLevel
            binding.dispatch(event)
            assertEquals(actual, binding.state.value.controls.getValue(wiper).actual)
            assertEquals(target, binding.state.value.controls.getValue(wiper).target)
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(listOf(VehiclePacket(5, 608, 0, packet)), service.writes.drop(before))
            assertEquals(target, binding.state.value.controls.getValue(wiper).actual)
            assertNull(binding.state.value.controls.getValue(wiper).target)
            assertFalse(store.snapshot().seatControlsKnown)
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        }
        assertFalse(service.writes.any { it.functionId in listOf(561, 671) })
        assertFalse("front-wiper intents never write rear controls", service.writes.any { it.functionId in listOf(609, 610) })
        service.failReadFunction = 608
        pollVehicleCommandAdapter(adapter)
        assertFalse(store.snapshot().wiperKnown)
        assertFalse(store.snapshot().vehicleDataAvailable)
        assertFalse(binding.state.value.controls.getValue(wiper).available)
    }

    @Test fun aReadOfOneNeverAcknowledgesAnOffRequestAndItsTimeoutRollsBackToActualAuto() {
        val service = VehicleCommandBinder().apply { values[608] = 1; holdReadback = true }
        val (store, adapter, _) = connectedStore(service)
        val binding = ContentBinding(store).also(bindings::add).also { it.start() }
        val wiper = VehicleControl.Wiper
        assertEquals(5, store.snapshot().wiperLevel)
        binding.dispatch(ContentEvent.ControlAutomaticTapped(wiper))
        val firstId = pendingRequestId(store)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(listOf(VehiclePacket(5, 608, 0, 1)), service.writes)
        assertEquals(5, binding.state.value.controls.getValue(wiper).actual)
        assertEquals(0, binding.state.value.controls.getValue(wiper).target)
        store.toggleControlPower(wiper.id)
        store.toggleControlAutomatic(wiper.id)
        store.setControlLevel(wiper.id, 3)
        store.cycleSeatLevel("seat_heating")
        store.toggleLock()
        assertEquals(firstId, pendingRequestId(store))
        assertEquals(1, service.writes.size)
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(5999))
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1))
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
        assertEquals(5, binding.state.value.controls.getValue(wiper).actual)
        assertNull(binding.state.value.controls.getValue(wiper).target)
        service.releaseReadback()
        pollVehicleCommandAdapter(adapter)
        assertEquals(0, store.snapshot().wiperLevel)
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
        assertEquals(1, binding.state.value.controls.getValue(wiper).rememberedLevel)
    }

    @Test fun frontWiperDisconnectAndFailedPacketsClearOnlyPendingAndKeepConfirmedManualMemory() {
        for (disconnect in listOf(false, true)) {
            val service = VehicleCommandBinder().apply { values[608] = 4; holdReadback = true }
            val (store, adapter, _) = connectedStore(service)
            val binding = ContentBinding(store).also(bindings::add).also { it.start() }
            val wiper = VehicleControl.Wiper
            assertEquals(3, binding.state.value.controls.getValue(wiper).rememberedLevel)
            if (!disconnect) service.failWriteFunction = 608
            store.setControlLevel(wiper.id, 4)
            shadowOf(Looper.getMainLooper()).idle()
            if (disconnect) {
                val connection = vehicleAdapterField(adapter, "serviceConnection") as ServiceConnection
                connection.onServiceDisconnected(ComponentName("com.chery.virtualcarservice", "com.chery.virtualcarservice.virtualcar.VirtualCarService"))
                shadowOf(Looper.getMainLooper()).idle()
            }
            val failed = binding.state.value.controls.getValue(wiper)
            assertEquals(if (disconnect) -1 else 3, failed.actual)
            assertEquals(3, failed.rememberedLevel)
            assertNull(failed.target)
            assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
            assertEquals(listOf(VehiclePacket(5, 608, 0, 6)), service.writes)
            assertFalse(service.writes.any { it.functionId in listOf(561, 671) })
            assertFalse("failed front requests never trigger rear actions", service.writes.any { it.functionId in listOf(609, 610) })
        }
    }

    @Test fun featureActionsUseFreshStateAndOneShotTransportContracts() {
        val service = VehicleCommandBinder().apply {
            values[0x21e] = 1
            values[0x29f] = 2
        }
        val (store, adapter, _) = connectedStore(service)

        store.requestFeature("rear_fog", 1)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(listOf(VehiclePacket(5, 0x21e, 0, 2)), service.writes)
        assertEquals(1, store.snapshot().rearFogLevel)
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)

        // 671 already reports active: the enter-only contract must not send TX2 again.
        store.requestFeature("wiper_maintenance", 1)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(listOf(VehiclePacket(5, 0x21e, 0, 2)), service.writes)
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)

        service.values[0x29f] = 1
        pollVehicleCommandAdapter(adapter)
        store.requestFeature("wiper_maintenance", 1)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(listOf(
            VehiclePacket(5, 0x21e, 0, 2),
            VehiclePacket(5, 0x29f, 0, 2),
        ), service.writes)
        assertEquals(1, store.snapshot().wiperMaintenanceLevel)
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)

        val beforeGloveBox = service.writes.size
        store.requestFeature("glove_box", 0)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(beforeGloveBox, service.writes.size)
        store.requestFeature("glove_box", 1)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(beforeGloveBox + 1, service.writes.size)
        assertEquals(VehiclePacket(5, 0x416, 0, 2), service.writes.last())
        assertEquals(1, service.writes.count { it.functionId == 1046 })
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        assertEquals("", store.snapshot().pendingVehicleCommand)
        assertEquals(-1, store.snapshot().featureLevel("glove_box"))
    }

    private fun connectedStore(service: VehicleCommandBinder = VehicleCommandBinder()): Fixture {
        val app = RuntimeEnvironment.getApplication()
        ensureVehicleServiceInstalled()
        val adapter = attachedVehicleCommandAdapter(service)
        val store = ContentStore(app, adapter, ContentPorts.PreviewMediaPort(), ContentPorts.AndroidSystemPort(app))
        stores += store
        // The constructor installs the real listener on the already attached Adapter.
        pollVehicleCommandAdapter(adapter)
        return Fixture(store, adapter, service)
    }

    private fun pendingRequestId(store: ContentStore) = ContentStore::class.java.getDeclaredField("pendingVehicleRequestId")
        .apply { isAccessible = true }.getLong(store)

    private data class Fixture(val store: ContentStore, val adapter: ContentVehicleAdapter, val service: VehicleCommandBinder)
}
