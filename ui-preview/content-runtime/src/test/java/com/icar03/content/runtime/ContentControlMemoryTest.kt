package com.icar03.content.runtime

import android.content.Context
import android.os.Looper
import com.autonavi.amapauto.content.*
import com.icar03.content.model.VehicleControl
import com.icar03.content.ui.*
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.time.Duration

/** Real Store ownership and Binding projection; substitute requests never become success. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentControlMemoryTest {
    private val stores = mutableListOf<ContentStore>()
    private val bindings = mutableListOf<ContentBinding>()
    private val app: Context get() = RuntimeEnvironment.getApplication()
    private val preferences get() = app.getSharedPreferences("content_preferences_v1", Context.MODE_PRIVATE)
    private val wiper = VehicleControl.Wiper

    @Before fun clearPreferences() { preferences.edit().clear().commit() }
    @After fun cleanup() {
        bindings.forEach { it.close() }
        stores.forEach { it.destroy() }
    }

    private fun store(vehicle: Vehicle = Vehicle()) = ContentStore(app, vehicle,
        ContentPorts.PreviewMediaPort(), ContentPorts.AndroidSystemPort(app)).also(stores::add)
    private fun binding(store: ContentStore) = ContentBinding(store).also(bindings::add).also { it.start() }

    @Test fun legacySnapshotsKeepWiperUnknownAndNormalizedTailNeverTreatsRawOneAsAutomatic() {
        val legacy = ContentPorts.VehicleSnapshot(true, false, 25f, 60, 123, ContentState.CHARGE_DEFAULT,
            0, 0, 0, Float.NaN, -1, 0, 0, 0, 0, true, false, true, true, true)
        assertEquals(-1, legacy.wiperLevel)
        assertFalse(legacy.wiperKnown)
        val store = store()
        store.acceptVehicleSnapshot(legacy)
        assertEquals(-1, store.snapshot().controlLevel(wiper))
        for (mode in listOf(Int.MIN_VALUE, -1000, -1, 0, 1, 2, 3, 4, 5, 6, Int.MAX_VALUE)) {
            for (known in listOf(false, true)) {
                val expected = if (known && mode in 0..5) mode else -1
                val snapshot = snapshot(wiper = mode, wiperKnown = known)
                assertEquals(expected, snapshot.wiperLevel)
                assertEquals(expected >= 0, snapshot.wiperKnown)
                store.acceptVehicleSnapshot(snapshot)
                val state = store.snapshot()
                assertEquals(expected, state.controlLevel(wiper))
                assertEquals(expected, state.copy().wiperLevel)
                val control = ContentUiMapper().map(state).controls.getValue(wiper)
                assertEquals(expected, control.actual)
                assertEquals(expected >= 0, control.known)
                assertFalse(control.available)
                val direct = ContentState().apply { wiperLevel = mode; wiperKnown = known }
                assertEquals(expected, direct.controlLevel(wiper))
                assertEquals(expected, direct.copy().wiperLevel)
            }
        }
        assertEquals("Snapshot tails contain domain L1, never OEM AUTO RX1", 1, snapshot(wiper = 1).wiperLevel)
    }

    @Test fun onlyRealManualReadbackChangesMemoryAndOffAutoExternalChangesSurviveRestart() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        assertEquals(1, store.snapshot().rememberedLevel(wiper))
        store.acceptVehicleSnapshot(snapshot(wiper = 3))
        val published = store.snapshot()
        assertEquals(3, published.rememberedLevel(wiper))
        assertEquals(3, preferences.getInt("control_manual_level_front_wiper", -1))
        store.setControlLevel(wiper.id, 4)
        assertEquals(4, store.snapshot().pendingSeatLevel)
        assertEquals(3, store.snapshot().wiperLevel)
        assertEquals(3, store.snapshot().rememberedLevel(wiper))
        vehicle.fail(vehicle.commands.last().requestId)
        for (mode in listOf(0, 5, -1)) {
            store.acceptVehicleSnapshot(snapshot(wiper = mode))
            assertEquals(3, store.snapshot().rememberedLevel(wiper))
        }
        store.acceptVehicleSnapshot(snapshot(wiper = 2)) // External OEM or physical control.
        assertEquals(2, store.snapshot().rememberedLevel(wiper))
        assertEquals("old published memory cannot mutate", 3, published.rememberedLevel(wiper))
        store.acceptVehicleSnapshot(snapshot(wiper = 4, preview = true))
        assertEquals(2, store.snapshot().rememberedLevel(wiper))
        store.acceptVehicleSnapshot(snapshot(wiper = 4, dataAvailable = false))
        assertEquals(2, store.snapshot().rememberedLevel(wiper))
        store.acceptVehicleSnapshot(snapshot(wiper = 4, wiperKnown = false))
        assertEquals(2, store.snapshot().rememberedLevel(wiper))
        vehicle.connected = false
        store.acceptVehicleSnapshot(snapshot(wiper = 4))
        assertEquals(2, store.snapshot().rememberedLevel(wiper))
        store.destroy()
        val restartedVehicle = Vehicle()
        val restarted = store(restartedVehicle)
        assertEquals(2, restarted.snapshot().rememberedLevel(wiper))
        restarted.acceptVehicleSnapshot(snapshot(wiper = 0))
        restarted.toggleControlPower(wiper.id)
        assertEquals(2, restartedVehicle.commands.single().level)
        assertEquals(0, restarted.snapshot().wiperLevel)
        assertEquals(2, restarted.snapshot().rememberedLevel(wiper))
        restarted.acceptVehicleSnapshot(snapshot(wiper = 2))
        assertEquals(ContentState.COMMAND_NONE, restarted.snapshot().commandStatus)
        assertEquals(2, restarted.snapshot().rememberedLevel(wiper))
    }

    @Test fun genericPowerAndAutomaticIntentsUseEachControlsOwnConfirmedMemoryWithoutChangingCycles() {
        for (control in VehicleControl.entries.filter { it != VehicleControl.Lock && !it.isRearWindow }) {
            val vehicle = Vehicle()
            val store = store(vehicle)
            val level = control.maxManualLevel
            store.acceptVehicleSnapshot(snapshotFor(control, level))
            assertEquals(level, store.snapshot().rememberedLevel(control))
            store.toggleControlPower(control.id)
            assertEquals(0, vehicle.commands.last().level)
            assertEquals(level, store.snapshot().controlLevel(control))
            store.acceptVehicleSnapshot(snapshotFor(control, 0))
            store.toggleControlPower(control.id)
            assertEquals(level, vehicle.commands.last().level)
            assertEquals(0, store.snapshot().controlLevel(control))
            store.acceptVehicleSnapshot(snapshotFor(control, level))
            if (control.automaticLevel >= 0) {
                store.toggleControlAutomatic(control.id)
                assertEquals(control.automaticLevel, vehicle.commands.last().level)
                assertEquals(level, store.snapshot().rememberedLevel(control))
                store.acceptVehicleSnapshot(snapshotFor(control, control.automaticLevel))
                assertEquals(level, store.snapshot().rememberedLevel(control))
                store.toggleControlAutomatic(control.id)
                assertEquals(0, vehicle.commands.last().level)
                store.acceptVehicleSnapshot(snapshotFor(control, 0))
                store.toggleControlPower(control.id)
                assertEquals(level, vehicle.commands.last().level)
                store.acceptVehicleSnapshot(snapshotFor(control, level))
            } else {
                val count = vehicle.commands.size
                store.toggleControlAutomatic(control.id)
                assertEquals(count, vehicle.commands.size)
            }
            store.cycleSeatLevel(control.id)
            assertEquals(control.nextLevel(level), vehicle.commands.last().level)
            vehicle.fail(vehicle.commands.last().requestId)
        }
    }

    @Test fun failedUnconfirmedAndTimedOutManualTargetsNeverChangeRestartMemory() {
        for (failure in listOf("reject", "callback", "timeout", "disconnect", "restartPending")) {
            preferences.edit().clear().commit()
            val vehicle = Vehicle()
            val store = store(vehicle)
            store.acceptVehicleSnapshot(snapshot(wiper = 2))
            if (failure == "reject") vehicle.accept = false
            store.setControlLevel(wiper.id, 4)
            when (failure) {
                "callback" -> vehicle.fail(vehicle.commands.last().requestId)
                "timeout" -> shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6))
                "disconnect" -> { vehicle.connected = false; vehicle.listener.onVehicleSnapshot(ContentPorts.VehicleSnapshot.unavailable()) }
            }
            assertEquals(2, store.snapshot().rememberedLevel(wiper))
            assertEquals(2, preferences.getInt("control_manual_level_front_wiper", -1))
            if (failure != "restartPending") assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
            else assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
            store.destroy()
            val restarted = store()
            assertEquals(2, restarted.snapshot().rememberedLevel(wiper))
            assertEquals("", restarted.snapshot().pendingVehicleCommand)
        }
    }

    @Test fun oneStoreProjectsSharedAutomaticMemoryAndKeepsThemThroughBindingStopResume() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        store.acceptVehicleSnapshot(snapshot(wiper = 4))
        store.acceptVehicleSnapshot(snapshot(wiper = 0))
        val first = binding(store)
        val second = binding(store)
        first.dispatch(ContentEvent.ControlPowerTapped(wiper))
        for (binding in listOf(first, second)) {
            val control = binding.state.value.controls.getValue(wiper)
            assertEquals(0, control.actual)
            assertEquals(4, control.target)
            assertEquals(4, control.rememberedLevel)
            assertFalse(control.available)
        }
        first.dispatch(ContentEvent.ControlAutomaticTapped(wiper))
        second.dispatch(ContentEvent.ControlLevelChanged(wiper, 1))
        second.dispatch(ContentEvent.ControlTapped(ControlId.Heating))
        assertEquals(1, vehicle.commands.size)
        store.acceptVehicleSnapshot(snapshot(wiper = 4))
        second.dispatch(ContentEvent.ControlAutomaticTapped(wiper))
        assertEquals(5, vehicle.commands.last().level)
        assertEquals(4, first.state.value.controls.getValue(wiper).actual)
        store.acceptVehicleSnapshot(snapshot(wiper = 5))
        for (binding in listOf(first, second)) {
            assertEquals(5, binding.state.value.controls.getValue(wiper).actual)
            assertEquals(4, binding.state.value.controls.getValue(wiper).rememberedLevel)
        }
        first.stop()
        store.acceptVehicleSnapshot(snapshot(wiper = 3))
        assertEquals(4, first.state.value.controls.getValue(wiper).rememberedLevel)
        assertEquals(3, second.state.value.controls.getValue(wiper).rememberedLevel)
        val requests = vehicle.commands.size
        first.start()
        assertEquals(3, first.state.value.controls.getValue(wiper).actual)
        assertEquals(3, first.state.value.controls.getValue(wiper).rememberedLevel)
        assertEquals(requests, vehicle.commands.size)
        first.dispatch(ContentEvent.ControlLevelChanged(wiper, 0))
        store.acceptVehicleSnapshot(snapshot(wiper = 0))
        second.dispatch(ContentEvent.ControlPowerTapped(wiper))
        assertEquals(3, vehicle.commands.last().level)
    }

    @Test fun legacyRearPlaceholderEventDoesNotMutateRealState() {
        val vehicle = Vehicle()
        val store = store(vehicle)
        store.acceptVehicleSnapshot(snapshot(wiper = 0))
        val binding = binding(store)
        binding.dispatch(ContentEvent.PlaceholderToggled(ShortcutId.RearWiper))
        assertTrue("legacy placeholder events must not mutate the real shell", binding.state.value.placeholderSwitches.isEmpty())
        assertTrue(vehicle.commands.isEmpty())
        binding.close()
    }

    @Test fun memoryChangesInvalidateOnlyShellProjectionAndMalformedPreferencesNeverBecomeTargets() {
        val bad = preferences.edit()
        bad.putInt("control_manual_level_front_wiper", 5)
        bad.putInt("control_manual_level_seat_heating", 0)
        bad.putString("control_manual_level_steering_heating", "wrong-type")
        bad.commit()
        val store = store()
        assertEquals(1, store.snapshot().rememberedLevel(wiper))
        assertEquals(1, store.snapshot().rememberedLevel(VehicleControl.Heating))
        assertEquals(1, store.snapshot().rememberedLevel(VehicleControl.SteeringHeat))
        store.acceptVehicleSnapshot(snapshot(wiper = 0))
        val mapper = ContentUiMapper()
        val before = store.snapshot()
        val first = mapper.map(before)
        val lyricsCount = mapper.lyricsProjectionCount
        val memoryOnly = before.copy().apply { rememberedControlLevels = mapOf(wiper.id to 4) }
        val changed = mapper.map(memoryOnly)
        assertNotSame(first.controls, changed.controls)
        assertEquals(4, changed.controls.getValue(wiper).rememberedLevel)
        assertEquals(0, changed.controls.getValue(wiper).actual)
        assertEquals(lyricsCount, mapper.lyricsProjectionCount)
        assertEquals(1, before.rememberedLevel(wiper))
        val exported = store.snapshot()
        val immutable = exported.rememberedControlLevels
        try {
            immutable[wiper.id] = 4
            fail("published memory must be immutable")
        } catch (_: UnsupportedOperationException) { }
        exported.rememberedControlLevels = mapOf(wiper.id to 4)
        assertEquals(4, exported.rememberedLevel(wiper))
        assertEquals("replacing one snapshot's value never writes the Store", 1, store.snapshot().rememberedLevel(wiper))
        val input = mutableMapOf(wiper.id to 3)
        val external = ContentState().apply { rememberedControlLevels = input }
        val copied = external.copy()
        input[wiper.id] = 4
        assertEquals("input mutation never changes an assigned value", 3, external.rememberedLevel(wiper))
        assertEquals(3, copied.rememberedLevel(wiper))
        external.rememberedControlLevels = mapOf(wiper.id to 2)
        assertEquals(3, copied.rememberedLevel(wiper))
    }

    private fun snapshotFor(control: VehicleControl, level: Int) = snapshot(
        ventilation = if (control == VehicleControl.Ventilation) level else 0,
        heating = if (control == VehicleControl.Heating) level else 0,
        passenger = if (control == VehicleControl.PassengerHeating) level else 0,
        steering = if (control == VehicleControl.SteeringHeat) level else 0,
        massage = if (control == VehicleControl.Massage) level else 0,
        wiper = if (control == VehicleControl.Wiper) level else 0,
    )

    private fun snapshot(wiper: Int = 0, wiperKnown: Boolean = true, ventilation: Int = 0,
        heating: Int = 0, passenger: Int = 0, steering: Int = 0, massage: Int = 0,
        dataAvailable: Boolean = true, preview: Boolean = false) = ContentPorts.VehicleSnapshot(
        dataAvailable, preview, 25f, 60, 123, ContentState.CHARGE_DEFAULT,
        0, 0, 0, Float.NaN, -1, ventilation, heating, true, heating == 4,
        passenger, true, passenger == 4, steering, massage, 1, true, massage > 0,
        true, true, true, wiper, wiperKnown)

    private data class Command(val id: String, val level: Int, val requestId: Long)
    private class Vehicle : ContentPorts.VehiclePort {
        var connected = true
        var accept = true
        var capabilityCalls = 0
        lateinit var listener: ContentPorts.VehicleSnapshotListener
        val commands = mutableListOf<Command>()
        override fun isAvailable(): Boolean { capabilityCalls++; return connected }
        override fun isLockAvailable(): Boolean { capabilityCalls++; return connected }
        override fun requestLock(locked: Boolean, requestId: Long): Boolean {
            commands += Command("lock", if (locked) 1 else 0, requestId)
            return accept
        }
        override fun requestSeatLevel(seatId: String, level: Int, requestId: Long): Boolean {
            commands += Command(seatId, level, requestId)
            return accept
        }
        override fun start(listener: ContentPorts.VehicleSnapshotListener) { this.listener = listener }
        override fun stop() = Unit
        fun fail(requestId: Long) { listener.onVehicleCommandFailed(requestId, "替身拒绝请求") }
    }
}
