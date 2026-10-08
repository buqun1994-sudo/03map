package com.icar03.content.runtime

import android.content.Context
import android.os.Looper
import com.autonavi.amapauto.content.*
import com.icar03.content.ui.*
import com.icar03.content.model.VehicleFeature
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

/** All commands here use substitutes; none of these assertions is vehicle-write evidence. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentVehicleStateContractTest {
    private val stores = mutableListOf<ContentStore>()
    private val bindings = mutableListOf<ContentBinding>()
    private val app: Context get() = RuntimeEnvironment.getApplication()
    private fun store(vehicle: Vehicle = Vehicle()) = ContentStore(app, vehicle,
        ContentPorts.PreviewMediaPort(), ContentPorts.AndroidSystemPort(app)).also(stores::add)
    private fun binding(store: ContentStore) = ContentBinding(store).also(bindings::add).also { it.start() }

    @After fun cleanup() {
        bindings.forEach { it.close() }
        stores.forEach { it.destroy() }
    }

    @Test fun legacyConstructorAcceptsNormalizedManualModesAndNeverInventsAuto() {
        val mapper = ContentUiMapper()
        val store = store()
        for (level in listOf(Int.MIN_VALUE, -1000, -1, 0, 1, 2, 3, 4, 5, Int.MAX_VALUE)) {
            val snapshot = legacySnapshot(level)
            val known = level in 0..3
            val expected = if (known) level else -1
            assertEquals("legacy normalized mode=$level", expected, snapshot.heatingLevel)
            assertEquals(known, snapshot.heatingAutoKnown)
            assertFalse(snapshot.heatingAutoActive)
            assertEquals(-1, snapshot.steeringHeatLevel)
            store.acceptVehicleSnapshot(snapshot)
            val state = store.snapshot()
            assertEquals(expected, state.heatingLevel)
            val control = mapper.map(state).controls.getValue(ControlId.Heating)
            assertEquals(expected, control.actual)
            assertEquals(known, control.known)
        }
        // Legacy 1 is normalized manual L1, not raw main=1 (OFF/AUTO).
        assertEquals(1, legacySnapshot(1).heatingLevel)
    }

    @Test fun normalizedHeatingCompanionMatrixStaysConsistentThroughSnapshotStoreCopyAndMapper() {
        val store = store()
        val mapper = ContentUiMapper()
        val caps = RuntimeCapabilities(vehicle = true, writableSeatControls = setOf(HEAT))
        for (level in listOf(-1000, -1, 0, 1, 2, 3, 4, 5, Int.MAX_VALUE)) {
            for (known in listOf(false, true)) for (active in listOf(false, true)) {
                val expected = if (known && level in 0..4 && (level == 4) == active) level else -1
                val snapshot = jointSnapshot(heating = level, autoKnown = known, autoActive = active)
                assertEquals("mode=$level known=$known active=$active", expected, snapshot.heatingLevel)
                store.acceptVehicleSnapshot(snapshot)
                val state = store.snapshot()
                assertEquals(expected, state.heatingLevel)
                assertEquals(expected, state.copy().heatingLevel)
                val control = mapper.map(state, capabilities = caps).controls.getValue(ControlId.Heating)
                assertEquals(expected, control.actual)
                assertEquals(expected >= 0, control.known)
                assertEquals(expected >= 0, control.available)

                // Mapper and copy also defend against callers constructing a mutable State directly.
                val direct = ContentState().apply {
                    vehicleDataAvailable = true; seatControlsKnown = true
                    heatingLevel = level; heatingAutoKnown = known; heatingAutoActive = active
                }
                assertEquals(expected, direct.copy().heatingLevel)
                assertEquals(expected, mapper.map(direct, capabilities = caps).controls.getValue(ControlId.Heating).actual)
                assertEquals(level, direct.heatingLevel)
                assertEquals(active, direct.heatingAutoActive)
            }
        }
    }

    @Test fun legacyAndDriverOnlySnapshotsDoNotInventPassengerReadback() {
        val driverOnly = ContentPorts.VehicleSnapshot(true, false, 25f, 60, 123, ContentState.CHARGE_DEFAULT,
            0, 0, 0, Float.NaN, -1, 0, 4, true, true, 3, 0, 0, true, false, true, true, true)
        for (snapshot in listOf(legacySnapshot(3), driverOnly, ContentPorts.VehicleSnapshot.unavailable())) {
            assertEquals(-1, snapshot.passengerHeatingLevel)
            assertFalse(snapshot.passengerHeatingAutoKnown)
            assertFalse(snapshot.passengerHeatingAutoActive)
            val store = store()
            store.acceptVehicleSnapshot(snapshot)
            val state = store.snapshot()
            assertEquals(-1, state.copy().controlLevel(ControlId.PassengerHeating))
            assertFalse(PASSENGER_HEAT in state.writableSeatControls)
            val control = ContentUiMapper().map(state).controls.getValue(ControlId.PassengerHeating)
            assertEquals(-1, control.actual)
            assertFalse(control.known)
            assertFalse(control.available)
        }
        assertEquals(4, driverOnly.heatingLevel)
        assertEquals(3, driverOnly.steeringHeatLevel)
    }

    @Test fun passengerCompanionEvidenceRemainsIndependentThroughSnapshotStoreCopyAndMapper() {
        val store = store()
        val mapper = ContentUiMapper()
        val caps = RuntimeCapabilities(vehicle = true, writableSeatControls = setOf(HEAT, PASSENGER_HEAT))
        for (level in listOf(Int.MIN_VALUE, -1000, -1, 0, 1, 2, 3, 4, 5, Int.MAX_VALUE)) {
            for (known in listOf(false, true)) for (active in listOf(false, true)) {
                val expected = if (known && level in 0..4 && (level == 4) == active) level else -1
                val snapshot = jointSnapshot(heating = 4, passengerHeating = level,
                    passengerAutoKnown = known, passengerAutoActive = active)
                assertEquals(expected, snapshot.passengerHeatingLevel)
                assertEquals(known, snapshot.passengerHeatingAutoKnown)
                assertEquals(known && active, snapshot.passengerHeatingAutoActive)
                store.acceptVehicleSnapshot(snapshot)
                val state = store.snapshot()
                assertEquals(4, state.controlLevel(ControlId.Heating))
                assertEquals(expected, state.passengerHeatingLevel)
                assertEquals(expected, state.copy().controlLevel(ControlId.PassengerHeating))
                assertEquals(expected >= 0, PASSENGER_HEAT in state.writableSeatControls)
                val control = mapper.map(state, capabilities = caps).controls.getValue(ControlId.PassengerHeating)
                assertEquals(expected, control.actual)
                assertEquals(expected >= 0, control.known)
                assertEquals(expected >= 0, control.available)
                val direct = ContentState().apply {
                    vehicleDataAvailable = true; seatControlsKnown = true
                    heatingLevel = 4; heatingAutoKnown = true; heatingAutoActive = true
                    passengerHeatingLevel = level; passengerHeatingAutoKnown = known; passengerHeatingAutoActive = active
                }
                assertEquals(expected, direct.copy().passengerHeatingLevel)
                assertEquals(expected, mapper.map(direct, capabilities = caps).controls.getValue(ControlId.PassengerHeating).actual)
                assertEquals(level, direct.passengerHeatingLevel)
                assertEquals(active, direct.passengerHeatingAutoActive)
            }
        }
    }

    @Test fun validAutoAndSteeringFieldsAreCopiedAndDockArraysAreIndependent() {
        val state = ContentState().apply {
            vehicleDataAvailable = true; seatControlsKnown = true
            heatingLevel = 4; heatingAutoKnown = true; heatingAutoActive = true
            passengerHeatingLevel = 3; passengerHeatingAutoKnown = true; passengerHeatingAutoActive = false
            steeringHeatLevel = 3; pendingVehicleCommand = STEER; pendingSeatLevel = 0
        }
        val copy = state.copy()
        assertEquals(4, copy.heatingLevel)
        assertTrue(copy.heatingAutoKnown)
        assertTrue(copy.heatingAutoActive)
        assertEquals(3, copy.passengerHeatingLevel)
        assertTrue(copy.passengerHeatingAutoKnown)
        assertFalse(copy.passengerHeatingAutoActive)
        assertEquals(3, copy.steeringHeatLevel)
        assertEquals(STEER, copy.pendingVehicleCommand)
        assertEquals(0, copy.pendingSeatLevel)
        assertNotSame(state.dockItems, copy.dockItems)
        copy.dockItems[0] = HEAT
        assertEquals(ContentRegistry.Pages.SHORTCUTS, state.dockItems[0])
    }

    @Test fun passengerPreviewReadbackCannotConfirmOrExposeARealVehicleTarget() {
        val store = store()
        store.acceptVehicleSnapshot(jointSnapshot())
        val binding = binding(store)
        store.setSeatLevel(PASSENGER_HEAT, 4)
        assertEquals(0, binding.state.value.controls.getValue(ControlId.PassengerHeating).actual)
        assertEquals(4, binding.state.value.controls.getValue(ControlId.PassengerHeating).target)
        store.acceptVehicleSnapshot(jointSnapshot(passengerHeating = 4, preview = true))
        val control = binding.state.value.controls.getValue(ControlId.PassengerHeating)
        assertEquals(-1, control.actual)
        assertFalse(control.known)
        assertFalse(control.available)
        assertNull(control.target)
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
    }

    @Test fun allControlCyclesFollowReadbackAndKeepActualSeparateFromTarget() {
        val cycles = listOf(
            VENT to listOf(0, 3, 2, 1, 0),
            HEAT to listOf(0, 3, 2, 1, 4, 0),
            PASSENGER_HEAT to listOf(0, 3, 2, 1, 4, 0),
            STEER to listOf(0, 2, 1, 3, 0),
            MASSAGE to listOf(0, 3, 2, 1, 0),
        )
        for ((id, levels) in cycles) {
            val vehicle = Vehicle()
            val store = store(vehicle)
            store.acceptVehicleSnapshot(snapshotFor(id, levels.first()))
            val binding = binding(store)
            for ((actual, target) in levels.zipWithNext()) {
                binding.dispatch(ContentEvent.ControlTapped(controlId(id)))
                assertEquals(id, vehicle.commands.last().id)
                assertEquals(target, vehicle.commands.last().level)
                val pending = binding.state.value.controls.getValue(controlId(id))
                assertEquals(actual, pending.actual)
                assertEquals(target, pending.target)
                assertTrue(binding.state.value.controls.values.none { it.available })
                store.acceptVehicleSnapshot(snapshotFor(id, actual))
                assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
                store.acceptVehicleSnapshot(snapshotFor(id, target))
                val confirmed = binding.state.value.controls.getValue(controlId(id))
                assertEquals(target, confirmed.actual)
                assertNull(confirmed.target)
                assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
            }
            assertEquals(levels.drop(1), vehicle.commands.map { it.level })
        }
    }

    @Test fun defaultPortKeepsHeatingExecutableAtOneAndBothSidesOfAuto() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        store.acceptVehicleSnapshot(jointSnapshot())
        val binding = binding(store)
        for (target in listOf(3, 2, 1, 4, 0)) {
            val before = binding.state.value.controls.getValue(ControlId.Heating)
            assertTrue("heating at ${before.actual} must accept its actual next mode", before.available)
            binding.dispatch(ContentEvent.ControlTapped(ControlId.Heating))
            assertEquals(target, vehicle.commands.last().level)
            assertEquals(before.actual, binding.state.value.controls.getValue(ControlId.Heating).actual)
            assertEquals(target, binding.state.value.controls.getValue(ControlId.Heating).target)
            store.acceptVehicleSnapshot(jointSnapshot(heating = target))
        }
        assertEquals(listOf(3, 2, 1, 4, 0), vehicle.commands.map { it.level })
        assertTrue(binding.state.value.controls.getValue(ControlId.Heating).available)
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
    }

    @Test fun realCapabilityRestrictionsStillApplyWithoutHistoricalCandidateGates() {
        val vehicle = object : Vehicle() {
            override fun isSeatControlAvailable(seatId: String) = connected && seatId == VENT
        }
        val store = store(vehicle)
        store.acceptVehicleSnapshot(jointSnapshot(heating = 4, steering = 3))
        val binding = binding(store)
        for (id in listOf(ControlId.Heating, ControlId.SteeringHeat)) {
            assertTrue(binding.state.value.controls.getValue(id).known)
            assertFalse(binding.state.value.controls.getValue(id).available)
            binding.dispatch(ContentEvent.ControlTapped(id))
            store.setSeatLevel(id.id, 0)
        }
        assertTrue(vehicle.commands.isEmpty())
        val connectedOnly = ContentUiMapper().map(store.snapshot(), capabilities = RuntimeCapabilities(vehicle = true))
        assertTrue(connectedOnly.controls.getValue(ControlId.Heating).known)
        assertTrue(connectedOnly.controls.filterKeys { it != ControlId.Lock }.values.none { it.available })
        binding.dispatch(ContentEvent.ControlTapped(ControlId.Ventilation))
        assertEquals(VENT, vehicle.commands.single().id)
    }

    @Test fun autoConfirmationRequiresValidJointModeAndKnownCompanion() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        store.acceptVehicleSnapshot(jointSnapshot(heating = 1))
        val binding = binding(store)
        store.setSeatLevel(HEAT, 4)
        assertEquals(1, binding.state.value.controls.getValue(ControlId.Heating).actual)
        assertEquals(4, binding.state.value.controls.getValue(ControlId.Heating).target)
        val invalid = listOf(
            jointSnapshot(heating = 4, autoKnown = false, autoActive = false),
            jointSnapshot(heating = 4, autoKnown = false, autoActive = true),
            jointSnapshot(heating = 4, autoKnown = true, autoActive = false),
            jointSnapshot(heating = 3, autoKnown = true, autoActive = true),
            jointSnapshot(heating = ContentVehicleAdapter.normalizeHeatingLevel(7, 2), autoActive = true),
            legacySnapshot(4),
        )
        for (snapshot in invalid) {
            store.acceptVehicleSnapshot(snapshot)
            val control = binding.state.value.controls.getValue(ControlId.Heating)
            assertEquals(-1, store.snapshot().heatingLevel)
            assertEquals(-1, control.actual)
            assertFalse(control.known)
            assertEquals(4, control.target)
            assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        }
        store.acceptVehicleSnapshot(jointSnapshot(heating = 4))
        assertEquals(4, binding.state.value.controls.getValue(ControlId.Heating).actual)
        assertNull(binding.state.value.controls.getValue(ControlId.Heating).target)
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        assertEquals(1, vehicle.commands.size)
    }

    @Test fun manualAndSteeringConfirmationRejectUnknownOrConflictingReadback() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        store.acceptVehicleSnapshot(jointSnapshot())
        store.setSeatLevel(HEAT, 3)
        store.acceptVehicleSnapshot(jointSnapshot(heating = 3, autoActive = true))
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        store.acceptVehicleSnapshot(jointSnapshot(heating = 3, autoKnown = false))
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        store.acceptVehicleSnapshot(jointSnapshot(heating = 3))
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        store.setSeatLevel(STEER, 3)
        for ((main, active) in listOf(0 to 2, 4 to 2, 4 to 1, 1 to -1, 1 to 0)) {
            store.acceptVehicleSnapshot(jointSnapshot(steering = ContentVehicleAdapter.normalizeSteeringLevel(main, active)))
            assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        }
        store.acceptVehicleSnapshot(jointSnapshot(steering = ContentVehicleAdapter.normalizeSteeringLevel(1, 2)))
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
    }

    @Test fun automaticModeSurvivesActualHeatingLevelChanges() {
        val store = store()
        val binding = binding(store)
        for (main in 1..4) {
            store.acceptVehicleSnapshot(jointSnapshot(
                heating = ContentVehicleAdapter.normalizeHeatingLevel(main, 2), autoActive = true))
            val heat = binding.state.value.controls.getValue(ControlId.Heating)
            assertEquals("selected AUTO stays AUTO while main=$main heats", 4, heat.actual)
            assertTrue(heat.known)
            assertTrue(heat.available)
        }
        for (main in 1..3) {
            store.acceptVehicleSnapshot(jointSnapshot(steering = ContentVehicleAdapter.normalizeSteeringLevel(main, 2)))
            val wheel = binding.state.value.controls.getValue(ControlId.SteeringHeat)
            assertEquals("wheel AUTO stays AUTO while main=$main heats", 3, wheel.actual)
            assertTrue(wheel.known)
            assertTrue(wheel.available)
        }
    }

    @Test fun everyPendingControlHardRejectsCycleSetAndLockWithoutReplacingIdOrDeadline() {
        for (first in listOf(VENT, HEAT, PASSENGER_HEAT, STEER, MASSAGE, LOCK)) {
            val vehicle = Vehicle()
            val store = store(vehicle)
            store.acceptVehicleSnapshot(jointSnapshot())
            if (first == LOCK) store.toggleLock() else store.cycleSeatLevel(first)
            val pending = store.snapshot()
            val firstCommand = vehicle.commands.single()
            val timeout = timeout(store)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(2))
            for (id in listOf(VENT, HEAT, PASSENGER_HEAT, STEER, MASSAGE)) {
                store.cycleSeatLevel(id)
                store.setSeatLevel(id, 2)
                store.setSeatLevel(id, 0)
            }
            store.toggleLock()
            assertEquals(listOf(firstCommand), vehicle.commands)
            assertSame(timeout, timeout(store))
            assertEquals(pending.pendingVehicleCommand, store.snapshot().pendingVehicleCommand)
            assertEquals(pending.pendingSeatLevel, store.snapshot().pendingSeatLevel)
            assertEquals(pending.pendingLocked, store.snapshot().pendingLocked)
            assertEquals(pending.commandSequence, store.snapshot().commandSequence)
            assertEquals(0, store.snapshot().ventilationLevel)
            assertEquals(0, store.snapshot().heatingLevel)
            assertEquals(0, store.snapshot().steeringHeatLevel)
            assertEquals(0, store.snapshot().massageLevel)
            assertTrue(store.snapshot().locked)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(3999))
            assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1))
            assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
            assertEquals("", store.snapshot().pendingVehicleCommand)
            store.setSeatLevel(VENT, 3)
            assertEquals(firstCommand.requestId + 1, vehicle.commands.last().requestId)
            vehicle.fail(vehicle.commands.last().requestId)
        }
    }

    @Test fun listenerReentryCannotReplacePendingBeforeTheFirstPortCall() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        store.acceptVehicleSnapshot(jointSnapshot())
        var entered = false
        store.addListener { state ->
            if (!entered && state.pendingVehicleCommand.isNotEmpty()) {
                entered = true
                store.setSeatLevel(HEAT, 2)
                store.cycleSeatLevel(MASSAGE)
                store.toggleLock()
            }
        }
        store.setSeatLevel(VENT, 3)
        assertTrue(entered)
        assertEquals(VENT, vehicle.commands.single().id)
        assertEquals(3, store.snapshot().pendingSeatLevel)
    }

    @Test fun currentFailureRollsBackButStaleFailureAndTimeoutCannotClearANewerRequest() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        store.acceptVehicleSnapshot(jointSnapshot())
        val binding = binding(store)
        store.setSeatLevel(VENT, 3)
        val firstId = vehicle.commands.single().requestId
        val oldTimeout = timeout(store)
        vehicle.fail(firstId)
        assertEquals(0, binding.state.value.controls.getValue(ControlId.Ventilation).actual)
        assertNull(binding.state.value.controls.getValue(ControlId.Ventilation).target)
        store.setSeatLevel(HEAT, 3)
        val secondId = vehicle.commands.last().requestId
        vehicle.fail(firstId)
        oldTimeout.run()
        assertEquals(HEAT, store.snapshot().pendingVehicleCommand)
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        assertEquals(3, binding.state.value.controls.getValue(ControlId.Heating).target)
        vehicle.fail(secondId)
        assertEquals(0, binding.state.value.controls.getValue(ControlId.Heating).actual)
        assertNull(binding.state.value.controls.getValue(ControlId.Heating).target)
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
        // A later real read may change actual; it must not retroactively turn the failed request into success.
        store.acceptVehicleSnapshot(jointSnapshot(heating = 3))
        assertEquals(3, binding.state.value.controls.getValue(ControlId.Heating).actual)
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
    }

    @Test fun rejectedDisconnectedAndPreviewReadbacksDoNotOptimisticallyChangeActual() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        store.acceptVehicleSnapshot(jointSnapshot())
        val binding = binding(store)
        vehicle.accept = false
        store.setSeatLevel(VENT, 3)
        assertEquals(0, store.snapshot().ventilationLevel)
        assertNull(binding.state.value.controls.getValue(ControlId.Ventilation).target)
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
        vehicle.accept = true
        store.setSeatLevel(VENT, 3)
        vehicle.connected = false
        vehicle.listener.onVehicleSnapshot(ContentPorts.VehicleSnapshot.unavailable())
        assertEquals(-1, binding.state.value.controls.getValue(ControlId.Ventilation).actual)
        assertNull(binding.state.value.controls.getValue(ControlId.Ventilation).target)
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
        vehicle.connected = true
        store.acceptVehicleSnapshot(jointSnapshot())
        assertEquals(0, binding.state.value.controls.getValue(ControlId.Ventilation).actual)
        store.setSeatLevel(VENT, 3)
        store.acceptVehicleSnapshot(jointSnapshot(ventilation = 3, preview = true))
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
        assertNull(binding.state.value.controls.getValue(ControlId.Ventilation).target)
        assertFalse(binding.state.value.controls.getValue(ControlId.Ventilation).known)
    }

    @Test fun canonicalMassageMatrixKeepsOnWithZeroStrengthUnknownButAllowsOnlyOff() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        val mapper = ContentUiMapper()
        val caps = RuntimeCapabilities(vehicle = true, writableSeatControls = setOf(MASSAGE))
        for (strength in listOf(Int.MIN_VALUE, -1000, -1, 0, 1, 2, 3, 4, Int.MAX_VALUE)) {
            for (known in listOf(false, true)) for (active in listOf(false, true)) {
                val expected = when {
                    !known -> -1
                    !active -> 0
                    strength in 1..3 -> strength
                    else -> -1
                }
                val snapshot = jointSnapshot(massage = strength, massageActive = active, massageSwitchKnown = known)
                assertEquals("strength=$strength known=$known active=$active", expected, snapshot.massageLevel)
                store.acceptVehicleSnapshot(snapshot)
                val state = store.snapshot()
                assertEquals(expected, state.massageLevel)
                assertEquals(expected, state.controlLevel(ControlId.Massage))
                assertEquals(expected, state.copy().massageLevel)
                val projected = mapper.map(state, capabilities = caps).controls.getValue(ControlId.Massage)
                assertEquals(expected, projected.actual)
                assertEquals(expected >= 0, projected.known)
                assertEquals(known, projected.available)

                val direct = ContentState().apply {
                    vehicleDataAvailable = true; seatControlsKnown = true
                    massageLevel = strength; massageSwitchKnown = known; massageActive = active
                }
                assertEquals(expected, direct.controlLevel(ControlId.Massage))
                assertEquals(expected, direct.copy().massageLevel)
                assertEquals(expected, mapper.map(direct, capabilities = caps).controls.getValue(ControlId.Massage).actual)
                assertEquals(strength, direct.massageLevel)
            }
        }
        store.acceptVehicleSnapshot(jointSnapshot(massage = 0, massageActive = true))
        val binding = binding(store)
        val onWithUnknownStrength = binding.state.value.controls.getValue(ControlId.Massage)
        assertEquals(-1, onWithUnknownStrength.actual)
        assertFalse(onWithUnknownStrength.known)
        assertTrue(onWithUnknownStrength.available)
        store.setSeatLevel(MASSAGE, 3)
        assertTrue("unknown ON strength cannot select another strength", vehicle.commands.isEmpty())
        binding.dispatch(ContentEvent.ControlTapped(ControlId.Massage))
        assertEquals(MASSAGE, vehicle.commands.single().id)
        assertEquals(0, vehicle.commands.single().level)
        assertEquals(-1, store.snapshot().controlLevel(ControlId.Massage))
        assertEquals(0, store.snapshot().pendingSeatLevel)
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
    }

    @Test fun pendingMassageOffConfirmsKnownOffWithUnknownOrStaleStrength() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        val binding = binding(store)
        val staleStrengths = listOf(-1000, -1, 0, 1, 2, 3, 4, Int.MAX_VALUE)
        for (strength in staleStrengths) {
            store.acceptVehicleSnapshot(jointSnapshot(massage = -1, massageActive = true))
            store.setSeatLevel(MASSAGE, 0)
            assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
            assertEquals(0, binding.state.value.controls.getValue(ControlId.Massage).target)
            val oldTimeout = timeout(store)
            val knownOff = jointSnapshot(massage = strength, massageActive = false)
            assertEquals("OFF does not depend on strength=$strength", 0, knownOff.massageLevel)
            store.acceptVehicleSnapshot(knownOff)
            val confirmed = binding.state.value.controls.getValue(ControlId.Massage)
            assertEquals(0, confirmed.actual)
            assertTrue(confirmed.known)
            assertNull(confirmed.target)
            assertEquals("", store.snapshot().pendingVehicleCommand)
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
            oldTimeout.run()
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        }
        assertEquals(staleStrengths.size, vehicle.commands.size)
        assertTrue(vehicle.commands.all { it.id == MASSAGE && it.level == 0 })
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6))
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        assertEquals(0, store.snapshot().controlLevel(ControlId.Massage))
    }

    @Test fun unknownHeatingNeverCrossEnablesButKnownActiveMassageCanBeStopped() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        store.acceptVehicleSnapshot(jointSnapshot(heating = 3, autoKnown = false,
            steering = 99, massage = -1, massageActive = true))
        val binding = binding(store)
        assertFalse(binding.state.value.controls.getValue(ControlId.Heating).known)
        assertFalse(binding.state.value.controls.getValue(ControlId.SteeringHeat).known)
        store.setSeatLevel(HEAT, 0)
        store.cycleSeatLevel(HEAT)
        store.setSeatLevel(STEER, 0)
        assertTrue(vehicle.commands.isEmpty())
        val massage = binding.state.value.controls.getValue(ControlId.Massage)
        assertFalse(massage.known)
        assertTrue(massage.available)
        binding.dispatch(ContentEvent.ControlTapped(ControlId.Massage))
        assertEquals(MASSAGE, vehicle.commands.single().id)
        assertEquals(0, vehicle.commands.single().level)
        store.acceptVehicleSnapshot(jointSnapshot())
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
    }

    @Test fun publishedModesAndAdmissionStayInTheSameImmutableSnapshot() {
        val store = store()
        store.acceptVehicleSnapshot(jointSnapshot(heating = 1))
        val before = store.snapshot()
        assertTrue(HEAT in before.writableSeatControls)
        store.cycleSeatLevel(HEAT)
        val pending = store.snapshot()
        assertEquals(1, pending.heatingLevel)
        assertEquals(4, pending.pendingSeatLevel)
        assertTrue(pending.writableSeatControls.isEmpty())
        assertTrue("old published capability sets must not mutate", HEAT in before.writableSeatControls)
        assertTrue(HEAT in before.copy().writableSeatControls)
        store.acceptVehicleSnapshot(jointSnapshot(heating = 4))
        val confirmed = store.snapshot()
        assertEquals(4, confirmed.heatingLevel)
        assertEquals("", confirmed.pendingVehicleCommand)
        assertTrue("AUTO retains its next OFF admission", HEAT in confirmed.writableSeatControls)
        assertTrue(pending.writableSeatControls.isEmpty())
    }

    @Test fun registryRetainsFiveRightSlotPreferenceContractWithoutDuplicatingFixedLock() {
        val expected = arrayOf(ContentRegistry.Pages.SHORTCUTS, VENT, HEAT, MASSAGE, ContentRegistry.Shortcuts.SETTINGS)
        assertArrayEquals(expected, ContentRegistry.defaultDockItems())
        assertArrayEquals(expected, ContentRegistry.dockChoices())
        assertFalse(ContentRegistry.isDockItem(LOCK))
        assertFalse(ContentRegistry.isDockItem(STEER))
        assertFalse(ContentRegistry.isDockItem(PASSENGER_HEAT))
        assertEquals(PASSENGER_HEAT, ContentRegistry.Shortcuts.PASSENGER_SEAT_HEATING)
        assertTrue(ContentRegistry.isDockItem(ContentRegistry.Pages.SHORTCUTS))
        val preferences = app.getSharedPreferences("content_preferences_v1", Context.MODE_PRIVATE)
        preferences.edit().clear().commit()
        val saved = arrayOf(HEAT, ContentRegistry.Shortcuts.SETTINGS, VENT, ContentRegistry.Pages.SHORTCUTS, MASSAGE)
        val editor = preferences.edit()
        saved.forEachIndexed { index, id -> editor.putString("dock_slot_$index", id) }
        editor.commit()
        val store = store()
        assertArrayEquals(saved, store.snapshot().dockItems)
        store.replaceDockItem(0, LOCK)
        store.replaceDockItem(1, STEER)
        assertArrayEquals(saved, store.snapshot().dockItems)
        store.replaceDockItem(0, MASSAGE)
        val swapped = arrayOf(MASSAGE, ContentRegistry.Shortcuts.SETTINGS, VENT, ContentRegistry.Pages.SHORTCUTS, HEAT)
        assertArrayEquals(swapped, store.snapshot().dockItems)
        assertArrayEquals(swapped, this.store().snapshot().dockItems)
        assertFalse(preferences.contains("dock_slot_5"))
    }

    @Test fun featureSnapshotKeepsIndependentActualsAndProjectsOnlyKnownCapabilities() {
        val store = store()
        val featureSnapshot = featureSnapshot()
        store.acceptVehicleSnapshot(legacySnapshot(0).withFeatureSnapshot(featureSnapshot))
        val state = store.snapshot()
        assertEquals(1, state.rearFogLevel)
        assertEquals(1, state.passengerWindowLockLevel)
        assertEquals(0, state.leftChildLockLevel)
        assertEquals(1, state.rightChildLockLevel)
        assertEquals(1, state.wirelessChargingLevel)
        assertEquals(0, state.wirelessChargingActualLevel)
        assertEquals(1, state.windowVentLevel)
        assertEquals(1, state.externalDischargeLevel)
        assertEquals(6, state.centerBrightnessLevel)
        assertTrue(state.screenGearKnown)
        val mapped = ContentUiMapper().map(state, capabilities = RuntimeCapabilities(
            vehicle = true,
            writableFeatures = VehicleFeature.entries.filter { it != VehicleFeature.PassengerSeatAdjust }.map { it.id }.toSet(),
        ))
        assertTrue(mapped.features.getValue(VehicleFeature.RearFog).known)
        assertEquals(1, mapped.features.getValue(VehicleFeature.WirelessCharging).actual)
        assertFalse(mapped.screenCleanAvailable)
        val nativeCapabilities = RuntimeCapabilities(vehicle = true, screenClean = true)
        assertTrue(ContentUiMapper().map(state, capabilities = nativeCapabilities).screenCleanAvailable)
        val gearUnknown = state.copy().apply { screenGearKnown = false; screenGearRaw = -1 }
        assertTrue(ContentUiMapper().map(gearUnknown, capabilities = nativeCapabilities).screenCleanAvailable)
        assertEquals(5, mapped.systemLevels.size)
    }

    @Test fun clickAdmissionReadsTheLatestPendingAndCapabilityFacts() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        val binding = binding(store)
        store.acceptVehicleSnapshot(jointSnapshot().withFeatureSnapshot(featureSnapshot(rearFog = 0)))
        shadowOf(Looper.getMainLooper()).idle()
        val lock = ContentEvent.ControlTapped(ControlId.Lock)
        val fog = ContentEvent.FeatureTapped(ShortcutId.RearFog)
        val registered = binding.state.value.shortcutButtons
        assertEquals(ShortcutGrid.productionButtons, registered)
        assertEquals(SystemQuickControl.entries, binding.state.value.systemControls)
        assertTrue(binding.canDispatch(lock))
        assertTrue(binding.canDispatch(fog))
        store.requestFeature("rear_fog", 1)
        // Do not drain the UI handler: admission must not depend on a new collected frame.
        assertFalse(binding.canDispatch(lock))
        assertFalse(binding.canDispatch(fog))
        assertFalse(binding.canDispatch(ContentEvent.ControlLevelChanged(ControlId.Heating, 1)))
        store.acceptVehicleSnapshot(jointSnapshot().withFeatureSnapshot(featureSnapshot(rearFog = 1)))
        assertTrue(binding.canDispatch(lock))
        assertTrue(binding.canDispatch(fog))
        store.acceptVehicleSnapshot(ContentPorts.VehicleSnapshot.unavailable())
        assertFalse(binding.canDispatch(lock))
        assertFalse(binding.canDispatch(fog))
        assertFalse(binding.canDispatch(ContentEvent.ScreenCleanTapped))
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals("pending/readback/disconnection never change registered cells", registered, binding.state.value.shortcutButtons)
        assertEquals(SystemQuickControl.entries, binding.state.value.systemControls)
    }

    @Test fun featureRequestRemainsPendingUntilAChangedVehicleReadbackArrives() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        store.acceptVehicleSnapshot(legacySnapshot(0).withFeatureSnapshot(featureSnapshot(rearFog = 0)))
        store.requestFeature("rear_fog", 1)
        assertEquals(Command("rear_fog", 1, null, 1L), vehicle.commands.single())
        assertEquals("rear_fog", store.snapshot().pendingVehicleCommand)
        assertEquals(1, store.snapshot().pendingFeatureTarget)
        assertEquals(0, store.snapshot().rearFogLevel)
        store.acceptVehicleSnapshot(legacySnapshot(0).withFeatureSnapshot(featureSnapshot(rearFog = 1)))
        assertEquals(1, store.snapshot().rearFogLevel)
        assertEquals("", store.snapshot().pendingVehicleCommand)
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
    }

    private fun timeout(store: ContentStore) = ContentStore::class.java.getDeclaredField("commandTimeout")
        .apply { isAccessible = true }.get(store) as Runnable

    private fun legacySnapshot(heating: Int) = ContentPorts.VehicleSnapshot(true, false,
        25f, 60, 123, ContentState.CHARGE_DEFAULT, 0, 0, 0, Float.NaN, -1,
        0, heating, 0, 0, true, false, true, true, true)

    private fun featureSnapshot(rearFog: Int = 1, centerBrightness: Int = 6) = ContentPorts.FeatureSnapshot(
        rearFog, 1, -1, -1, 0, 1, 1, 1, 1, -1,
        centerBrightness, true, 0, true, intArrayOf(1, 1, 1, 1), true,
        FloatArray(7) { it.toFloat() }, true, 3, 11, true,
    )

    private fun jointSnapshot(
        ventilation: Int = 0, heating: Int = 0, autoKnown: Boolean = true,
        autoActive: Boolean = heating == 4, steering: Int = 0, massage: Int = 0,
        massageActive: Boolean = massage > 0, locked: Boolean = true, preview: Boolean = false,
        massageSwitchKnown: Boolean = true,
        passengerHeating: Int = 0, passengerAutoKnown: Boolean = true,
        passengerAutoActive: Boolean = passengerHeating == 4,
    ) = ContentPorts.VehicleSnapshot(true, preview, 25f, 60, 123, ContentState.CHARGE_DEFAULT,
        0, 0, 0, Float.NaN, -1, ventilation, heating, autoKnown, autoActive,
        passengerHeating, passengerAutoKnown, passengerAutoActive, steering,
        massage, if (massageActive) 1 else 0, massageSwitchKnown, massageActive, true, true, locked)

    private fun snapshotFor(id: String, level: Int) = when (id) {
        VENT -> jointSnapshot(ventilation = level)
        HEAT -> jointSnapshot(heating = level)
        PASSENGER_HEAT -> jointSnapshot(passengerHeating = level)
        STEER -> jointSnapshot(steering = level)
        MASSAGE -> jointSnapshot(massage = level)
        else -> error("Unknown substitute control $id")
    }

    private fun controlId(id: String) = when (id) {
        VENT -> ControlId.Ventilation
        HEAT -> ControlId.Heating
        PASSENGER_HEAT -> ControlId.PassengerHeating
        STEER -> ControlId.SteeringHeat
        MASSAGE -> ControlId.Massage
        else -> ControlId.Lock
    }

    private data class Command(val id: String, val level: Int?, val locked: Boolean?, val requestId: Long)

    private open class Vehicle : ContentPorts.VehiclePort {
        var connected = true
        var accept = true
        lateinit var listener: ContentPorts.VehicleSnapshotListener
        val commands = mutableListOf<Command>()
        override fun isAvailable() = connected
        override fun isLockAvailable() = connected
        override fun requestLock(locked: Boolean, requestId: Long): Boolean {
            commands += Command(LOCK, null, locked, requestId)
            return accept
        }
        override fun requestSeatLevel(seatId: String, level: Int, requestId: Long): Boolean {
            commands += Command(seatId, level, null, requestId)
            return accept
        }
        override fun isFeatureAvailable(featureId: String, target: Int) = connected && target in 0..1
        override fun requestFeature(featureId: String, target: Int, requestId: Long, deadlineUptimeMs: Long): Boolean {
            commands += Command(featureId, target, null, requestId)
            return accept
        }
        override fun isCenterBrightnessAvailable(level: Int) = connected && level in 1..10
        override fun requestCenterBrightness(level: Int, requestId: Long, deadlineUptimeMs: Long): Boolean {
            commands += Command("center_brightness", level, null, requestId)
            return accept
        }
        override fun start(listener: ContentPorts.VehicleSnapshotListener) {
            this.listener = listener
            listener.onVehicleSnapshot(ContentPorts.VehicleSnapshot.unavailable())
        }
        override fun stop() = Unit
        fun fail(requestId: Long) = listener.onVehicleCommandFailed(requestId, "替身拒绝请求")
    }

    companion object {
        private const val VENT = "seat_ventilation"
        private const val HEAT = "seat_heating"
        private const val PASSENGER_HEAT = "passenger_seat_heating"
        private const val STEER = "steering_heating"
        private const val MASSAGE = "seat_massage"
        private const val LOCK = "lock"
    }
}
