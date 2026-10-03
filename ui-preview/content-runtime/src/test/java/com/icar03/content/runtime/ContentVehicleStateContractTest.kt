package com.icar03.content.runtime

import android.content.Context
import android.os.Looper
import com.autonavi.amapauto.content.*
import com.icar03.content.ui.*
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

    @Test fun validAutoAndSteeringFieldsAreCopiedAndDockArraysAreIndependent() {
        val state = ContentState().apply {
            vehicleDataAvailable = true; seatControlsKnown = true
            heatingLevel = 4; heatingAutoKnown = true; heatingAutoActive = true
            steeringHeatLevel = 3; pendingVehicleCommand = STEER; pendingSeatLevel = 0
        }
        val copy = state.copy()
        assertEquals(4, copy.heatingLevel)
        assertTrue(copy.heatingAutoKnown)
        assertTrue(copy.heatingAutoActive)
        assertEquals(3, copy.steeringHeatLevel)
        assertEquals(STEER, copy.pendingVehicleCommand)
        assertEquals(0, copy.pendingSeatLevel)
        assertNotSame(state.dockItems, copy.dockItems)
        copy.dockItems[0] = HEAT
        assertEquals(ContentRegistry.Pages.SHORTCUTS, state.dockItems[0])
    }

    @Test fun allControlCyclesFollowReadbackAndKeepActualSeparateFromTarget() {
        val cycles = listOf(
            VENT to listOf(0, 3, 2, 1, 0),
            HEAT to listOf(0, 3, 2, 1, 4, 0),
            STEER to listOf(0, 2, 1, 3, 0),
            MASSAGE to listOf(0, 3, 2, 1, 0),
        )
        for ((id, levels) in cycles) {
            val vehicle = CandidateVehicle()
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

    @Test fun ordinaryPortKeepsManualWritesButDoesNotSkipUnverifiedAutoCycle() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        store.acceptVehicleSnapshot(jointSnapshot())
        val binding = binding(store)
        for (target in listOf(3, 2, 1)) {
            assertTrue(binding.state.value.controls.getValue(ControlId.Heating).available)
            binding.dispatch(ContentEvent.ControlTapped(ControlId.Heating))
            assertEquals(target, vehicle.commands.last().level)
            store.acceptVehicleSnapshot(jointSnapshot(heating = target))
        }
        val manualOne = binding.state.value.controls.getValue(ControlId.Heating)
        assertEquals(1, manualOne.actual)
        assertTrue(manualOne.known)
        assertFalse("L1's next target is candidate AUTO, not an invented OFF shortcut", manualOne.available)
        binding.dispatch(ContentEvent.ControlTapped(ControlId.Heating))
        store.cycleSeatLevel(HEAT)
        store.setSeatLevel(HEAT, 4)
        assertEquals(listOf(3, 2, 1), vehicle.commands.map { it.level })
        assertEquals("", store.snapshot().pendingVehicleCommand)
        // Direct manual setting is still supported; the cycle itself was not silently reordered.
        store.setSeatLevel(HEAT, 0)
        assertEquals(0, vehicle.commands.last().level)
        store.acceptVehicleSnapshot(jointSnapshot())
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
    }

    @Test fun readableCandidatesAndConnectedBinderNeverImplyFormalWrites() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        store.acceptVehicleSnapshot(jointSnapshot(heating = 4, steering = 3))
        val binding = binding(store)
        for (id in listOf(ControlId.Heating, ControlId.SteeringHeat)) {
            assertTrue(binding.state.value.controls.getValue(id).known)
            assertFalse(binding.state.value.controls.getValue(id).available)
            binding.dispatch(ContentEvent.ControlTapped(id))
        }
        store.setSeatLevel(HEAT, 0) // Exiting AUTO needs the candidate companion write too.
        store.setSeatLevel(STEER, 0)
        assertTrue(vehicle.commands.isEmpty())
        assertTrue(binding.state.value.controls.getValue(ControlId.Ventilation).available)
        assertTrue(binding.state.value.controls.getValue(ControlId.Massage).available)
        assertTrue(binding.state.value.controls.getValue(ControlId.Lock).available)
        val connectedOnly = ContentUiMapper().map(store.snapshot(), capabilities = RuntimeCapabilities(vehicle = true))
        assertTrue(connectedOnly.controls.getValue(ControlId.Heating).known)
        assertTrue(connectedOnly.controls.filterKeys { it != ControlId.Lock }.values.none { it.available })
        binding.dispatch(ContentEvent.ControlTapped(ControlId.Ventilation))
        assertEquals(VENT, vehicle.commands.single().id)
    }

    @Test fun autoConfirmationRequiresValidJointModeAndKnownCompanion() {
        val vehicle = CandidateVehicle()
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
            jointSnapshot(heating = ContentVehicleAdapter.normalizeHeatingLevel(4, 2), autoActive = true),
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
        val vehicle = CandidateVehicle()
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
        for ((main, active) in listOf(2 to 2, 3 to 2, 4 to 1, 1 to -1, 1 to 0)) {
            store.acceptVehicleSnapshot(jointSnapshot(steering = ContentVehicleAdapter.normalizeSteeringLevel(main, active)))
            assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        }
        store.acceptVehicleSnapshot(jointSnapshot(steering = ContentVehicleAdapter.normalizeSteeringLevel(1, 2)))
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
    }

    @Test fun everyPendingControlHardRejectsCycleSetAndLockWithoutReplacingIdOrDeadline() {
        for (first in listOf(VENT, HEAT, STEER, MASSAGE, LOCK)) {
            val vehicle = CandidateVehicle()
            val store = store(vehicle)
            store.acceptVehicleSnapshot(jointSnapshot())
            if (first == LOCK) store.toggleLock() else store.cycleSeatLevel(first)
            val pending = store.snapshot()
            val firstCommand = vehicle.commands.single()
            val timeout = timeout(store)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(2))
            for (id in listOf(VENT, HEAT, STEER, MASSAGE)) {
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
        val vehicle = CandidateVehicle()
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

    @Test fun registryRetainsFiveRightSlotPreferenceContractWithoutDuplicatingFixedLock() {
        val expected = arrayOf(ContentRegistry.Pages.SHORTCUTS, VENT, HEAT, MASSAGE, ContentRegistry.Shortcuts.SETTINGS)
        assertArrayEquals(expected, ContentRegistry.defaultDockItems())
        assertArrayEquals(expected, ContentRegistry.dockChoices())
        assertFalse(ContentRegistry.isDockItem(LOCK))
        assertFalse(ContentRegistry.isDockItem(STEER))
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

    private fun timeout(store: ContentStore) = ContentStore::class.java.getDeclaredField("commandTimeout")
        .apply { isAccessible = true }.get(store) as Runnable

    private fun legacySnapshot(heating: Int) = ContentPorts.VehicleSnapshot(true, false,
        25f, 60, 123, ContentState.CHARGE_DEFAULT, 0, 0, 0, Float.NaN, -1,
        0, heating, 0, 0, true, false, true, true, true)

    private fun jointSnapshot(
        ventilation: Int = 0, heating: Int = 0, autoKnown: Boolean = true,
        autoActive: Boolean = heating == 4, steering: Int = 0, massage: Int = 0,
        massageActive: Boolean = massage > 0, locked: Boolean = true, preview: Boolean = false,
    ) = ContentPorts.VehicleSnapshot(true, preview, 25f, 60, 123, ContentState.CHARGE_DEFAULT,
        0, 0, 0, Float.NaN, -1, ventilation, heating, autoKnown, autoActive, steering,
        massage, if (massageActive) 1 else 0, true, massageActive, true, true, locked)

    private fun snapshotFor(id: String, level: Int) = when (id) {
        VENT -> jointSnapshot(ventilation = level)
        HEAT -> jointSnapshot(heating = level)
        STEER -> jointSnapshot(steering = level)
        MASSAGE -> jointSnapshot(massage = level)
        else -> error("Unknown substitute control $id")
    }

    private fun controlId(id: String) = when (id) {
        VENT -> ControlId.Ventilation
        HEAT -> ControlId.Heating
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
        override fun start(listener: ContentPorts.VehicleSnapshotListener) {
            this.listener = listener
            listener.onVehicleSnapshot(ContentPorts.VehicleSnapshot.unavailable())
        }
        override fun stop() = Unit
        fun fail(requestId: Long) = listener.onVehicleCommandFailed(requestId, "替身拒绝请求")
    }

    /** Explicit opt-in in this substitute only, not an upgrade of formal adapter evidence. */
    private class CandidateVehicle : Vehicle() {
        override fun isSeatControlAvailable(seatId: String) = connected && seatId in setOf(VENT, HEAT, STEER, MASSAGE)
        override fun isSeatLevelAvailable(seatId: String, level: Int) = isSeatControlAvailable(seatId)
            && level in 0..(if (seatId == HEAT) 4 else 3)
        override fun isSeatLevelAvailable(seatId: String, currentLevel: Int, targetLevel: Int) =
            isSeatLevelAvailable(seatId, targetLevel)
    }

    companion object {
        private const val VENT = "seat_ventilation"
        private const val HEAT = "seat_heating"
        private const val STEER = "steering_heating"
        private const val MASSAGE = "seat_massage"
        private const val LOCK = "lock"
    }
}
