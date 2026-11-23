package com.icar03.content.runtime

import android.content.ComponentName
import android.content.ServiceConnection
import android.os.Binder
import android.os.Handler
import android.os.Looper
import android.os.Parcel
import android.os.SystemClock
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentState
import com.autonavi.amapauto.content.ContentStore
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
import org.robolectric.shadows.ShadowSystemClock
import java.time.Duration

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class RearWindowVehicleContractTest {
    private val stores = mutableListOf<ContentStore>()
    private val adapters = mutableListOf<ContentVehicleAdapter>()
    private val rearWiper = VehicleControl.RearWiper
    private val rearWash = VehicleControl.RearWash

    @After fun close() {
        stores.forEach { it.destroy() }
        adapters.forEach { it.stop() }
        shadowOf(Looper.getMainLooper()).idle()
    }

    @Test fun protocolKeepsBinaryReadbackSeparateFromBothConstantTriggerPackets() {
        assertEquals(listOf(-1, 0, 1, -1, -1), listOf(0, 1, 2, 3, -1000).map(ContentVehicleProtocol::normalizeRearWindowLevel))
        for (target in listOf(0, 1)) {
            val packet = ContentVehicleProtocol.controlLevelWrite(rearWiper.id, target)!!
            assertEquals(609, packet.functionId); assertEquals(2, packet.value)
        }
        assertNull(ContentVehicleProtocol.controlLevelWrite(rearWash.id, 0))
        assertNull(ContentVehicleProtocol.controlLevelWrite(rearWash.id, 1))
        assertEquals(610, ContentVehicleProtocol.rearWindowWrite(rearWash.id)!!.functionId)
        assertEquals(2, ContentVehicleProtocol.rearWindowWrite(rearWash.id)!!.value)
        assertTrue(rearWash.isTrigger); assertFalse(rearWiper.isTrigger)
        assertFalse(rearWash.isManualLevel(1)); assertFalse(rearWiper.isManualLevel(1))
    }

    @Test fun legacySnapshotsDefaultBothRearControlsToUnknownAndStateCopiesRetainOnlyValidActuals() {
        val legacy = ContentPorts.VehicleSnapshot.unavailable()
        assertEquals(-1, legacy.rearWiperLevel); assertFalse(legacy.rearWiperKnown)
        assertEquals(-1, legacy.rearWashLevel); assertFalse(legacy.rearWashKnown)
        assertEquals(0L, legacy.rearReadbackRequestId)
        val state = ContentState().apply {
            rearWiperKnown = true; rearWiperLevel = 1
            rearWashKnown = true; rearWashLevel = 7
        }.copy()
        assertEquals(1, state.controlLevel(rearWiper))
        assertEquals(-1, state.controlLevel(rearWash)); assertFalse(state.rearWashKnown)
    }

    @Test fun rearReadbackAloneEnablesItsOwnCapabilitiesWithoutSeatOrFrontWiperEvidence() {
        val f = fixture()
        val state = f.store.snapshot()
        assertTrue(state.vehicleDataAvailable); assertFalse(state.seatControlsKnown); assertFalse(state.wiperKnown)
        assertFalse(state.rememberedControlLevels.containsKey(rearWiper.id))
        assertFalse(state.rememberedControlLevels.containsKey(rearWash.id))
        assertEquals(setOf(rearWiper.id, rearWash.id), state.writableSeatControls)
        f.binder.raw[609] = 0
        f.store.acceptVehicleSnapshot(readVehicleCommandSnapshot(f.adapter, f.binder))
        assertFalse(f.store.snapshot().rearWiperKnown)
        assertFalse(f.store.isControlAvailable(rearWiper.id))
        assertTrue(f.store.isControlAvailable(rearWash.id))
    }

    @Test fun rearWiperOnAndOffEachWriteTheSameValueExactlyOnceAndWaitForOwnDelayedReadback() {
        val f = fixture()
        for (target in listOf(1, 0)) {
            val actual = f.store.snapshot().rearWiperLevel
            val before = f.binder.writes.size
            f.store.setControlLevel(rearWiper.id, target)
            assertEquals(actual, f.store.snapshot().rearWiperLevel)
            idle()
            assertEquals(listOf(Packet(609, 0, 2)), f.binder.writes.drop(before))
            assertEquals(ContentState.COMMAND_PENDING, f.store.snapshot().commandStatus)
            advance(250)
            assertEquals(target, f.store.snapshot().rearWiperLevel)
            assertEquals("", f.store.snapshot().pendingVehicleCommand)
            assertEquals(ContentState.COMMAND_NONE, f.store.snapshot().commandStatus)
        }
        val preferences = RuntimeEnvironment.getApplication().getSharedPreferences("content_preferences_v1", 0)
        assertFalse(preferences.contains("control_manual_level_rear_wiper"))
        assertFalse(preferences.contains("control_manual_level_rear_wash"))
        assertFalse(f.binder.writes.any { it.function != 609 })
        val reads = f.binder.rearReads
        advance(10_000)
        assertEquals("completed commands leave no fast polling", reads, f.binder.rearReads)
    }

    @Test fun washRejectsEveryPersistentLevelPowerAndCycleIntentAndOnlyTriggerWrites610() {
        val f = fixture()
        for (target in listOf(0, 1, 2)) f.store.setControlLevel(rearWash.id, target)
        f.store.toggleControlPower(rearWash.id)
        f.store.cycleControlLevel(rearWash.id)
        f.store.toggleControlAutomatic(rearWash.id)
        f.store.triggerControl(rearWiper.id)
        idle()
        assertTrue(f.binder.writes.isEmpty())
        f.store.triggerControl(rearWash.id)
        idle()
        assertEquals(listOf(Packet(610, 0, 2)), f.binder.writes)
        assertEquals("initial idle read is not a pulse ACK", ContentState.COMMAND_PENDING, f.store.snapshot().commandStatus)
        assertEquals(0, f.store.snapshot().rearWashLevel)
        advance(250)
        assertEquals(1, f.store.snapshot().rearWashLevel)
        assertEquals(ContentState.COMMAND_PENDING, f.store.snapshot().commandStatus)
        f.store.triggerControl(rearWash.id)
        assertEquals(1, f.binder.writes.size)
        advance(3_250)
        assertEquals(0, f.store.snapshot().rearWashLevel)
        assertEquals(ContentState.COMMAND_NONE, f.store.snapshot().commandStatus)
        assertEquals(0, f.store.snapshot().rearWiperLevel)
        assertEquals(listOf(Packet(610, 0, 2)), f.binder.writes)
        val reads = f.binder.rearReads
        advance(10_000)
        assertEquals(reads, f.binder.rearReads)
    }

    @Test fun singlePendingBlocksRearAndLegacyControlsBeforeTheFirstPacketRuns() {
        val f = fixture()
        f.store.toggleControlPower(rearWiper.id)
        val id = pendingId(f.store)
        f.store.toggleControlPower(rearWiper.id)
        f.store.setControlLevel(rearWiper.id, 0)
        f.store.triggerControl(rearWash.id)
        f.store.toggleLock()
        f.store.cycleControlLevel(VehicleControl.Heating.id)
        assertEquals(id, pendingId(f.store))
        idle()
        assertEquals(listOf(Packet(609, 0, 2)), f.binder.writes)
    }

    @Test fun sameTargetAndInvalidOrLegacyAdapterRequestsNeverProduceAToggle() {
        val f = fixture()
        f.store.setControlLevel(rearWiper.id, 0)
        f.store.setControlLevel(rearWiper.id, 2)
        assertFalse(f.adapter.requestControlLevel(rearWiper.id, 1, 90))
        assertFalse(f.adapter.requestSeatLevel(rearWash.id, 1, 91))
        assertFalse(f.adapter.requestRearWindow(rearWiper.id, 0, 0, 92, deadline()))
        assertFalse(f.adapter.requestRearWindow(rearWash.id, 1, 0, 93, deadline()))
        assertFalse(f.adapter.requestRearWindow(rearWiper.id, -1, 1, 94, deadline()))
        idle()
        assertTrue(f.binder.writes.isEmpty())
    }

    @Test fun duplicateExecutionOfTheSameScopeCannotSendASecondNonIdempotentPacket() {
        val f = fixture()
        f.store.toggleControlPower(rearWiper.id)
        idle()
        val request = vehicleAdapterField(f.adapter, "rearRequest")!!
        ContentVehicleAdapter::class.java.getDeclaredMethod("executeRearRequest", request.javaClass)
            .apply { isAccessible = true }.invoke(f.adapter, request)
        assertEquals(listOf(Packet(609, 0, 2)), f.binder.writes)
        advance(250)
        assertEquals(ContentState.COMMAND_NONE, f.store.snapshot().commandStatus)
        assertEquals(1, f.binder.writes.size)
    }

    @Test fun expiredRequestsAreRejectedBeforeQueueing() {
        val f = fixture()
        assertFalse(f.adapter.requestRearWindow(rearWiper.id, 0, 1, 20, SystemClock.uptimeMillis()))
        idle()
        assertTrue(f.binder.writes.isEmpty())
    }

    @Test fun queuedRequestCannotWriteAfterItsDeadlineEvenBeforeTheUiTimerRuns() {
        val f = fixture()
        assertTrue(f.adapter.requestRearWindow(rearWiper.id, 0, 1, 20, SystemClock.uptimeMillis() + 10))
        ShadowSystemClock.advanceBy(Duration.ofMillis(11))
        idle()
        assertTrue(f.binder.writes.isEmpty())
    }

    @Test fun requestExpiringDuringItsFreshPreReadCannotWrite() {
        val f = fixture()
        f.binder.advanceDuringNextRead = 6_001
        f.store.toggleControlPower(rearWiper.id)
        idle()
        assertTrue(f.binder.writes.isEmpty())
        assertEquals(ContentState.COMMAND_FAILED, f.store.snapshot().commandStatus)
    }

    @Test fun externalStateReachingTheTargetWhileQueuedNeverCausesAReverseCompensation() {
        val f = fixture()
        f.store.setControlLevel(rearWiper.id, 1)
        f.binder.raw[609] = 2
        idle()
        assertTrue(f.binder.writes.isEmpty())
        assertEquals(1, f.store.snapshot().rearWiperLevel)
        assertEquals(ContentState.COMMAND_FAILED, f.store.snapshot().commandStatus)
        advance(7_000)
        assertTrue(f.binder.writes.isEmpty())
    }

    @Test fun externalWashStartingWhileQueuedIsReportedWithoutAnotherTrigger() {
        val f = fixture()
        f.store.triggerControl(rearWash.id)
        f.binder.raw[610] = 2
        idle()
        assertTrue(f.binder.writes.isEmpty())
        assertEquals(1, f.store.snapshot().rearWashLevel)
        assertEquals(ContentState.COMMAND_FAILED, f.store.snapshot().commandStatus)
    }

    @Test fun binderRejectionAndPermissionErrorsNeverRetryAndKeepReadbackIndependent() {
        for (permission in listOf(false, true)) {
            val f = fixture()
            f.binder.refuseWrite = true; f.binder.permissionFailure = permission
            f.store.toggleControlPower(rearWiper.id)
            idle()
            assertEquals(1, f.binder.writes.size)
            assertEquals(ContentState.COMMAND_FAILED, f.store.snapshot().commandStatus)
            assertEquals(0, f.store.snapshot().rearWiperLevel)
            advance(7_000)
            assertEquals(1, f.binder.writes.size)
        }
    }

    @Test fun readPermissionAndIllegalRawNeverBorrowAnotherControlsValidReadback() {
        val f = fixture()
        f.binder.denyRead = 609
        f.store.toggleControlPower(rearWiper.id)
        idle()
        assertTrue(f.binder.writes.isEmpty())
        assertFalse(f.store.snapshot().rearWiperKnown)
        assertTrue(f.store.snapshot().rearWashKnown)
        assertEquals(ContentState.COMMAND_FAILED, f.store.snapshot().commandStatus)
    }

    @Test fun oldBinderWorkerAndStopInvalidateUnsentCommands() {
        for (mode in listOf("binder", "worker", "stop")) {
            val f = fixture()
            f.store.toggleControlPower(rearWiper.id)
            when (mode) {
                "binder" -> setVehicleAdapterField(f.adapter, "binder", RearBinder())
                "worker" -> setVehicleAdapterField(f.adapter, "workerHandler", Handler(Looper.getMainLooper()))
                else -> f.adapter.stop()
            }
            idle()
            assertTrue(f.binder.writes.isEmpty())
            advance(7_000)
            assertTrue(f.binder.writes.isEmpty())
        }
    }

    @Test fun disconnectDropsPendingAndAConnectionResumeDoesNotReplayRearWrites() {
        val f = fixture()
        f.store.triggerControl(rearWash.id)
        val connection = vehicleAdapterField(f.adapter, "serviceConnection") as ServiceConnection
        connection.onServiceDisconnected(ComponentName("com.chery.virtualcarservice", "com.chery.virtualcarservice.virtualcar.VirtualCarService"))
        idle()
        assertEquals(ContentState.COMMAND_FAILED, f.store.snapshot().commandStatus)
        assertFalse(f.store.snapshot().rearWashKnown)
        setVehicleAdapterField(f.adapter, "binder", f.binder)
        f.store.acceptVehicleSnapshot(readVehicleCommandSnapshot(f.adapter, f.binder))
        advance(7_000)
        assertTrue(f.binder.writes.isEmpty())
    }

    @Test fun washWithoutAnObservedActivePhaseTimesOutAndNeverRetriesOrWritesRestore() {
        val f = fixture()
        f.binder.moveAfterWrite = false
        f.store.triggerControl(rearWash.id)
        idle(); advance(5_999)
        assertEquals(ContentState.COMMAND_PENDING, f.store.snapshot().commandStatus)
        advance(1)
        assertEquals(ContentState.COMMAND_FAILED, f.store.snapshot().commandStatus)
        assertEquals(0, f.store.snapshot().rearWashLevel)
        assertEquals(listOf(Packet(610, 0, 2)), f.binder.writes)
        val reads = f.binder.rearReads
        advance(10_000)
        assertEquals("no fast reads remain after timeout", reads, f.binder.rearReads)
    }

    @Test fun onlyOwnPostWriteRequestIdentityCanAcknowledgeAndOldFailureCannotClearANewerRequest() {
        val port = FakeRearPort()
        val store = store(port)
        val base = rearBase()
        port.emit(base)
        store.setControlLevel(rearWiper.id, 1)
        val first = port.requests.last()
        port.emit(base.withRearWindowReadback(rearWiper.id, 1, 0, false))
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        port.emit(base.withRearWindowReadback(rearWiper.id, 1, first.id + 99, false))
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        port.emit(base.withRearWindowReadback(rearWash.id, 1, first.id, true))
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        advance(6_000)
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
        assertEquals(listOf(first.id), port.cancelled)
        port.emit(base)
        store.setControlLevel(rearWiper.id, 1)
        val second = port.requests.last()
        assertTrue(second.id > first.id)
        port.listener.onVehicleCommandFailed(first.id, "old failure")
        port.emit(base.withRearWindowReadback(rearWiper.id, 1, first.id, false))
        assertEquals(second.id, pendingId(store))
        port.emit(base.withRearWindowReadback(rearWiper.id, 1, second.id, false))
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
    }

    @Test fun washInitialIdleUnrelatedAckAndHealthyActiveCannotCompleteButOwnActiveThenIdleCan() {
        val port = FakeRearPort()
        val store = store(port)
        val base = rearBase()
        port.emit(base)
        store.triggerControl(rearWash.id)
        val request = port.requests.last()
        port.emit(base.withRearWindowReadback(rearWash.id, 0, request.id, false))
        port.emit(base.withRearWindowReadback(rearWiper.id, 1, request.id, false))
        port.emit(base.withRearWindowReadback(rearWash.id, 1, 0, false))
        port.emit(base.withRearWindowReadback(rearWash.id, 0, request.id, false))
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        port.emit(base.withRearWindowReadback(rearWash.id, 1, request.id, true))
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        port.emit(base.withRearWindowReadback(rearWash.id, 0, request.id, true))
        assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        assertEquals(1, port.requests.size)
    }

    @Test fun stoppedScopeCannotPublishAnAlreadyQueuedAckAfterTheSameBinderAndWorkerResume() {
        val f = fixture()
        f.store.toggleControlPower(rearWiper.id)
        idle()
        val request = vehicleAdapterField(f.adapter, "rearRequest")!!
        f.binder.raw[609] = 2
        ContentVehicleAdapter::class.java.getDeclaredMethod("readRearRequest", request.javaClass)
            .apply { isAccessible = true }.invoke(f.adapter, request)
        val worker = vehicleAdapterField(f.adapter, "workerHandler")!!
        f.adapter.stop()
        setVehicleAdapterField(f.adapter, "running", true)
        setVehicleAdapterField(f.adapter, "binder", f.binder)
        setVehicleAdapterField(f.adapter, "workerHandler", worker)
        f.binder.raw[609] = 1
        f.store.acceptVehicleSnapshot(readVehicleCommandSnapshot(f.adapter, f.binder))
        idle()
        assertEquals("old queued ACK cannot replace the later actual", 0, f.store.snapshot().rearWiperLevel)
        assertEquals(ContentState.COMMAND_PENDING, f.store.snapshot().commandStatus)
    }

    @Test fun localCancellationDropsQueuedWorkWithoutIssuingARestorePacket() {
        val f = fixture()
        assertTrue(f.adapter.requestRearWindow(rearWiper.id, 0, 1, 120, deadline()))
        f.adapter.cancelRearWindowRequest(119)
        f.adapter.cancelRearWindowRequest(120)
        idle(); advance(7_000)
        assertTrue(f.binder.writes.isEmpty())
        assertTrue(f.adapter.isRearWindowControlAvailable(rearWiper.id))
    }

    private fun fixture(): Fixture {
        val binder = RearBinder()
        ensureVehicleServiceInstalled()
        val adapter = ContentVehicleAdapter(RuntimeEnvironment.getApplication()).also(adapters::add)
        setVehicleAdapterField(adapter, "running", true)
        setVehicleAdapterField(adapter, "binder", binder)
        setVehicleAdapterField(adapter, "workerHandler", Handler(Looper.getMainLooper()))
        val initial = readVehicleCommandSnapshot(adapter, binder)
        val store = store(adapter)
        store.acceptVehicleSnapshot(initial)
        return Fixture(store, adapter, binder)
    }

    private fun store(port: ContentPorts.VehiclePort) = ContentStore(RuntimeEnvironment.getApplication(), port,
        object : ContentPorts.MediaPort {
            override fun isAvailable() = false
            override fun requestPlayback(playing: Boolean) = false
            override fun requestNext() = false
            override fun requestSource(source: String) = false
            override fun start(listener: ContentPorts.MediaSnapshotListener) = Unit
            override fun stop() = Unit
        }, object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
            override fun write(kind: Int, percent: Int) = false
        }).also(stores::add)

    private fun rearBase() = ContentPorts.VehicleSnapshot.unavailable()
        .withRearWindowReadback(rearWiper.id, 0, 0, false)
        .withRearWindowReadback(rearWash.id, 0, 0, false)
    private fun pendingId(store: ContentStore) = ContentStore::class.java.getDeclaredField("pendingVehicleRequestId")
        .apply { isAccessible = true }.getLong(store)
    private fun idle() = shadowOf(Looper.getMainLooper()).idle()
    private fun advance(ms: Long) = shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(ms))
    private fun deadline() = SystemClock.uptimeMillis() + 6_000
    private data class Fixture(val store: ContentStore, val adapter: ContentVehicleAdapter, val binder: RearBinder)
    private data class Packet(val function: Int, val area: Int, val value: Int)

    /** Independent firmware oracle: one2 toggles609; one2 causes a delayed610 pulse. */
    private class RearBinder : Binder() {
        val raw = mutableMapOf(609 to 1, 610 to 1)
        val writes = mutableListOf<Packet>()
        var rearReads = 0
        var moveAfterWrite = true
        var refuseWrite = false
        var permissionFailure = false
        var denyRead: Int? = null
        var advanceDuringNextRead = 0L
        private var wiperDue: Long? = null
        private var wiperTarget = 1
        private var washStart: Long? = null
        init { attachInterface(null, "com.chery.canmanager.interfaces.IVirturalCarProperty") }
        override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
            data.enforceInterface("com.chery.canmanager.interfaces.IVirturalCarProperty")
            val function = data.readInt(); val area = data.readInt()
            val value = if (code == 5) data.readInt() else null
            assertEquals(0, flags); assertEquals(0, data.dataAvail())
            if (function in listOf(609, 610)) assertEquals(0, area)
            if (code == 5) {
                assertTrue(function in listOf(609, 610)); assertEquals(2, value)
                writes += Packet(function, area, value!!)
                if (refuseWrite) {
                    if (!permissionFailure) return false
                    reply!!.writeException(SecurityException("denied")); return true
                }
                if (moveAfterWrite) {
                    if (function == 609) {
                        wiperTarget = if (raw[609] == 1) 2 else 1
                        wiperDue = SystemClock.uptimeMillis() + 240
                    } else washStart = SystemClock.uptimeMillis()
                }
            }
            if (code == 7 && function == denyRead) {
                reply!!.writeException(SecurityException("read denied")); return true
            }
            if (code == 7 && function in listOf(609, 610)) {
                rearReads++
                if (advanceDuringNextRead > 0) {
                    ShadowSystemClock.advanceBy(Duration.ofMillis(advanceDuringNextRead))
                    advanceDuringNextRead = 0
                }
                val now = SystemClock.uptimeMillis()
                wiperDue?.let { if (now >= it) { raw[609] = wiperTarget; wiperDue = null } }
                washStart?.let { raw[610] = if (now - it in 200 until 3_300) 2 else 1 }
            }
            reply!!.writeNoException()
            when (code) { 7 -> reply.writeInt(raw[function] ?: -1); 13 -> reply.writeFloat(Float.NaN); 5 -> Unit
                else -> error("unexpected transaction $code") }
            return true
        }
    }

    private data class Request(val control: String, val expected: Int, val target: Int, val id: Long, val deadline: Long)
    private class FakeRearPort : ContentPorts.VehiclePort {
        lateinit var listener: ContentPorts.VehicleSnapshotListener
        val requests = mutableListOf<Request>()
        val cancelled = mutableListOf<Long>()
        override fun isAvailable() = true
        override fun isLockAvailable() = false
        override fun isControlAvailable(controlId: String) = controlId in listOf("rear_wiper", "rear_wash")
        override fun isControlLevelAvailable(controlId: String, level: Int) = controlId == "rear_wiper" && level in 0..1
        override fun isRearWindowControlAvailable(controlId: String) = isControlAvailable(controlId)
        override fun requestRearWindow(controlId: String, expectedLevel: Int, targetLevel: Int, requestId: Long, deadlineUptimeMs: Long): Boolean {
            requests += Request(controlId, expectedLevel, targetLevel, requestId, deadlineUptimeMs); return true
        }
        override fun cancelRearWindowRequest(requestId: Long) { cancelled += requestId }
        override fun requestLock(locked: Boolean, requestId: Long) = false
        override fun requestSeatLevel(seatId: String, level: Int, requestId: Long) = false
        override fun start(listener: ContentPorts.VehicleSnapshotListener) { this.listener = listener }
        override fun stop() = Unit
        fun emit(snapshot: ContentPorts.VehicleSnapshot) = listener.onVehicleSnapshot(snapshot)
    }
}
