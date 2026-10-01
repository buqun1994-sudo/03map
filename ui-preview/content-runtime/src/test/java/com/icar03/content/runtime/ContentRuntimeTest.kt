package com.icar03.content.runtime

import android.content.Context
import android.os.Looper
import com.autonavi.amapauto.content.*
import com.icar03.content.ui.*
import org.junit.Assert.*
import org.junit.After
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.time.Duration
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [35])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentRuntimeTest {
    private val stores = mutableListOf<ContentStore>()
    private val bindings = mutableListOf<ContentBinding>()
    private fun store(v: Vehicle = Vehicle(), m: Media = Media(), s: System = System()): ContentStore =
        ContentStore(RuntimeEnvironment.getApplication(), v, m, s).also(stores::add)
    private fun binding(store: ContentStore, ownership: StoreOwnership = StoreOwnership.Shared) =
        ContentBinding(store, ownership).also(bindings::add)
    @After fun cleanup() { bindings.forEach { it.close() }; stores.forEach { it.destroy() } }

    @Test fun mapperNeverUsesPreviewDefaultsForMissingData() {
        val ui = ContentUiMapper().map(ContentState())
        assertFalse(ui.previewMode)
        assertEquals("--", ui.temperature)
        assertEquals("--", ui.range)
        assertEquals("km", ui.rangeUnit)
        assertEquals("--:--", ui.time)
        assertEquals("充电状态待确认", ui.chargeStatus)
        assertNull(ui.media.title)
        assertNull(ui.media.artist)
        assertFalse(ui.media.playbackAvailable)
        assertFalse(ui.media.nextAvailable)
        assertTrue(ui.controls.values.all { !it.available && !it.known && it.actual == -1 })
    }

    @Test fun completedChargingSnapshotSurvivesStoreWhileUnknownEnumDoesNot() {
        val store = store()
        fun chargeSnapshot(state: Int) = ContentPorts.VehicleSnapshot(
            true, false, 25f, 100, 366, state, 2, 0, 0, Float.NaN, 0,
            0, 0, 0, 0, true, false, true, true, true)
        try {
            store.acceptVehicleSnapshot(chargeSnapshot(ContentState.CHARGE_COMPLETE))
            assertEquals(ContentState.CHARGE_COMPLETE, store.snapshot().chargeState)
            assertEquals("充电完成", ContentUiMapper().map(store.snapshot()).chargeStatus)
            assertFalse(ContentUiMapper().map(store.snapshot()).charging)
            for (unknown in listOf(-2, 4, 6, Int.MAX_VALUE)) {
                store.acceptVehicleSnapshot(chargeSnapshot(unknown))
                assertEquals(ContentState.CHARGE_UNKNOWN, store.snapshot().chargeState)
            }
        } finally { store.destroy() }
    }

    @Test fun mapperOnlyPublishesValidRealBatteryAndCharging() {
        val state = ContentState().apply {
            vehicleDataAvailable = true; batteryPercent = 60; chargeState = ContentState.CHARGE_CHARGING
            chargePowerKw = 12.5f; chargeRemainingMinutes = 40
        }
        val mapper = ContentUiMapper()
        val valid = mapper.map(state)
        assertEquals(60, valid.batteryPercent)
        assertTrue(valid.charging)
        assertEquals("剩余40分钟·12.5kW", valid.chargeStatus)
        for (percent in listOf(0, 100)) { state.batteryPercent = percent; assertEquals(percent, mapper.map(state).batteryPercent) }
        state.batteryPercent = 101; state.chargePowerKw = Float.NaN; state.chargeRemainingMinutes = -1
        assertNull(mapper.map(state).batteryPercent)
        assertEquals("充电中", mapper.map(state).chargeStatus)
        state.vehiclePreview = true
        assertNull(mapper.map(state).batteryPercent)
        assertFalse(mapper.map(state).charging)
        state.vehiclePreview = false; state.chargeState = ContentState.CHARGE_DEFAULT
        assertNull(mapper.map(state).chargeStatus)
    }

    @Test fun mapperUsesPerFieldValidityAndStorePendingOnly() {
        val state = ContentState().apply {
            vehicleDataAvailable = true; seatControlsKnown = true; lockKnown = true
            temperatureC = Float.POSITIVE_INFINITY; batteryPercent = 150; rangeRaw = -1
            ventilationLevel = 2; heatingLevel = -1; massageSwitchKnown = true; massageActive = false
            pendingVehicleCommand = ContentRegistry.Shortcuts.SEAT_VENTILATION; pendingSeatLevel = 3
            mediaDataAvailable = true; mediaTitle = "真实歌曲"; mediaArtist = "真实作者"
            mediaPlaybackAvailable = true; mediaNextAvailable = false; mediaPlaybackTarget = 1
            nowMillis = 1_700_000_000_000L; showSeconds = true; showWeekday = false
        }
        val ui = ContentUiMapper().map(state, capabilities = RuntimeCapabilities(true, true, true))
        assertEquals("--", ui.temperature)
        assertEquals("电量未知", ui.batteryDescription)
        assertFalse(ui.controls.getValue(ControlId.Heating).available)
        assertEquals(2, ui.controls.getValue(ControlId.Ventilation).actual)
        assertEquals(3, ui.controls.getValue(ControlId.Ventilation).target)
        assertEquals(0, ui.controls.getValue(ControlId.Massage).actual)
        assertEquals("真实歌曲", ui.media.title)
        assertTrue(ui.media.playbackAvailable)
        assertFalse(ui.media.nextAvailable)
        assertEquals(true, ui.media.targetPlaying)
        assertNull(ui.media.targetSource)
        assertEquals(8, ui.time.length)
        assertEquals("", ui.weekday)
        state.massageSwitchKnown = false; state.massageLevel = 2
        val unknownMassage = ContentUiMapper().map(state, capabilities = RuntimeCapabilities(true, true)).controls.getValue(ControlId.Massage)
        assertEquals(-1, unknownMassage.actual)
        assertFalse(unknownMassage.known)
        assertFalse(unknownMassage.available)
        state.vehiclePreview = true; state.mediaPreview = true
        val preview = ContentUiMapper().map(state, capabilities = RuntimeCapabilities(true, true))
        assertFalse(preview.controls.getValue(ControlId.Lock).available)
        assertNull(preview.media.title)
    }

    @Test fun mapperHidesOldMediaMetadataWhileSourceSwitchIsPending() {
        val state = ContentState().apply {
            mediaDataAvailable = true
            mediaSource = MediaSource.Bluetooth.label
            pendingSource = MediaSource.AiMusic.label
            mediaTitle = "蓝牙旧歌曲"
            mediaArtist = "蓝牙旧作者"
            mediaPlaybackAvailable = true
            mediaNextAvailable = true
        }
        val ui = ContentUiMapper().map(state)
        assertEquals(MediaSource.Bluetooth, ui.media.source)
        assertEquals(MediaSource.AiMusic, ui.media.targetSource)
        assertNull(ui.media.title)
        assertNull(ui.media.artist)
        state.pendingSource = ""
        state.mediaSource = MediaSource.AiMusic.label
        state.mediaTitle = "爱趣听新歌曲"
        state.mediaArtist = "爱趣听新作者"
        val confirmed = ContentUiMapper().map(state)
        assertEquals(MediaSource.AiMusic, confirmed.media.source)
        assertNull(confirmed.media.targetSource)
        assertEquals("爱趣听新歌曲", confirmed.media.title)
        assertEquals("爱趣听新作者", confirmed.media.artist)
    }


    @Test fun vehicleEventsUseStorePendingAndReadbackWithoutChangingActual() {
        val vehicle = Vehicle(); val store = store(v = vehicle)
        store.acceptVehicleSnapshot(vehicleSnapshot())
        val binding = binding(store); binding.start()
        binding.dispatch(ContentEvent.ControlTapped(ControlId.Ventilation))
        assertEquals(ContentRegistry.Shortcuts.SEAT_VENTILATION, vehicle.seat)
        assertEquals(3, vehicle.level)
        assertEquals(0, binding.state.value.controls.getValue(ControlId.Ventilation).actual)
        assertEquals(3, binding.state.value.controls.getValue(ControlId.Ventilation).target)
        store.acceptVehicleSnapshot(vehicleSnapshot(ventilation = 3))
        assertEquals(3, binding.state.value.controls.getValue(ControlId.Ventilation).actual)
        assertNull(binding.state.value.controls.getValue(ControlId.Ventilation).target)
        binding.dispatch(ContentEvent.ControlTapped(ControlId.Lock))
        assertEquals(false, vehicle.lockTarget)
        assertEquals(1, binding.state.value.controls.getValue(ControlId.Lock).actual)
    }

    @Test fun vehicleCommandsUsePendingAndAwaitReadback() {
        val vehicle = Vehicle(); val store = store(v = vehicle)
        store.acceptVehicleSnapshot(vehicleSnapshot())
        val binding = binding(store); binding.start()

        binding.dispatch(ContentEvent.ControlTapped(ControlId.Ventilation))
        assertEquals(ContentRegistry.Shortcuts.SEAT_VENTILATION, vehicle.seat)
        assertEquals(3, vehicle.level)
        assertEquals(0, binding.state.value.controls.getValue(ControlId.Ventilation).actual)
        assertEquals(3, binding.state.value.controls.getValue(ControlId.Ventilation).target)
        store.acceptVehicleSnapshot(vehicleSnapshot(ventilation = 3))

        binding.dispatch(ContentEvent.ControlTapped(ControlId.Heating))
        assertEquals(ContentRegistry.Shortcuts.SEAT_HEATING, vehicle.seat)
        assertEquals(3, vehicle.level)
        assertEquals(0, binding.state.value.controls.getValue(ControlId.Heating).actual)
        assertEquals(3, binding.state.value.controls.getValue(ControlId.Heating).target)
        store.acceptVehicleSnapshot(vehicleSnapshot(ventilation = 3, heating = 3))

        binding.dispatch(ContentEvent.ControlTapped(ControlId.Massage))
        assertEquals(ContentRegistry.Shortcuts.SEAT_MASSAGE, vehicle.seat)
        assertEquals(3, vehicle.level)
        assertEquals(0, binding.state.value.controls.getValue(ControlId.Massage).actual)
        assertEquals(3, binding.state.value.controls.getValue(ControlId.Massage).target)
        store.acceptVehicleSnapshot(vehicleSnapshot(ventilation = 3, heating = 3, massageLevel = 3, massageActive = true))

        binding.dispatch(ContentEvent.ControlTapped(ControlId.Lock))
        assertEquals(false, vehicle.lockTarget)
        assertEquals(1, binding.state.value.controls.getValue(ControlId.Lock).actual)
        assertEquals(0, binding.state.value.controls.getValue(ControlId.Lock).target)
        store.acceptVehicleSnapshot(vehicleSnapshot(ventilation = 3, heating = 3, massageLevel = 3, massageActive = true, locked = false))
        assertEquals(0, binding.state.value.controls.getValue(ControlId.Lock).actual)
        assertNull(binding.state.value.controls.getValue(ControlId.Lock).target)
    }

    @Test fun vehicleRejectAndTimeoutRollbackPendingWithoutChangingActual() {
        val vehicle = Vehicle(); val store = store(v = vehicle)
        store.acceptVehicleSnapshot(vehicleSnapshot())
        val binding = binding(store); binding.start()
        vehicle.accept = false
        binding.dispatch(ContentEvent.ControlTapped(ControlId.Ventilation))
        assertEquals(0, binding.state.value.controls.getValue(ControlId.Ventilation).actual)
        assertNull(binding.state.value.controls.getValue(ControlId.Ventilation).target)
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
        assertEquals("座椅车控命令未发送，请检查车机状态", binding.state.value.message)

        vehicle.accept = true
        binding.dispatch(ContentEvent.ControlTapped(ControlId.Ventilation))
        assertEquals(0, binding.state.value.controls.getValue(ControlId.Ventilation).actual)
        assertEquals(3, binding.state.value.controls.getValue(ControlId.Ventilation).target)
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6))
        assertEquals(0, binding.state.value.controls.getValue(ControlId.Ventilation).actual)
        assertNull(binding.state.value.controls.getValue(ControlId.Ventilation).target)
        assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
        assertEquals("车辆状态未确认，请查看车机状态", binding.state.value.message)
    }
    @Test fun sourceDispatchIsNotOptimisticAndRequiresCapability() {
        val media = Media(); val store = store(m = media)
        store.acceptMediaSnapshot(mediaSnapshot())
        val binding = binding(store); binding.start()
        binding.dispatch(ContentEvent.SourceSelected(MediaSource.Usb))
        assertTrue(media.called.await(2, TimeUnit.SECONDS))
        assertEquals(MediaSource.Usb.label, media.source)
        assertEquals(MediaSource.Bluetooth, binding.state.value.media.source)
        assertEquals(MediaSource.Usb, binding.state.value.media.targetSource)
        drainMediaCommands(store)
        assertEquals(MediaSource.Bluetooth, binding.state.value.media.source)
        assertEquals(MediaSource.Usb, binding.state.value.media.targetSource)
        assertEquals(ContentState.COMMAND_PENDING, store.snapshot().commandStatus)
        store.acceptMediaSnapshot(mediaSnapshot(source = MediaSource.Usb.label))
        assertEquals(MediaSource.Usb, binding.state.value.media.source)
        assertNull(binding.state.value.media.targetSource)
        media.sourceAvailable = false
        binding.dispatch(ContentEvent.SourceSelected(MediaSource.CloudMusic))
        assertEquals(MediaSource.Usb.label, media.source)
    }

    @Test fun mediaPlaybackRoutesAndProjectsPendingUntilSnapshot() {
        val media = Media(); val store = store(m = media)
        store.acceptMediaSnapshot(mediaSnapshot())
        val binding = binding(store); binding.start(); binding.dispatch(ContentEvent.PlayPause)
        assertTrue(media.called.await(2, TimeUnit.SECONDS))
        assertEquals(true, media.playing)
        assertFalse(binding.state.value.media.playing)
        assertEquals(true, binding.state.value.media.targetPlaying)
        store.acceptMediaSnapshot(mediaSnapshot(playing = true))
        assertTrue(binding.state.value.media.playing)
        assertNull(binding.state.value.media.targetPlaying)
        media.called = CountDownLatch(1)
        binding.dispatch(ContentEvent.NextTrack)
        assertTrue(media.called.await(2, TimeUnit.SECONDS))
        assertEquals(1, media.nextCalls)
    }

    @Test fun systemReadbackDoesNotPretendAcceptedWriteWasConfirmed() {
        val system = System(); val binding = binding(store(s = system)); binding.start()
        binding.dispatch(ContentEvent.BrightnessChanged(.9f))
        assertEquals(90, system.target)
        assertEquals(.25f, binding.state.value.brightness.actual)
        assertNull(binding.state.value.brightness.target)
        assertEquals("系统状态未确认", binding.state.value.message)
        system.percent = 90
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(250))
        assertEquals(.9f, binding.state.value.brightness.actual)
        system.available = false
        binding.dispatch(ContentEvent.VolumeChanged(.5f))
        assertEquals(1, system.writes)
        assertFalse(binding.state.value.volume.available)
    }

    @Test fun staleSystemReadbackCannotClearNewerFailureFeedback() {
        val system = System(); val binding = binding(store(s = system)); binding.start()
        binding.dispatch(ContentEvent.BrightnessChanged(.9f))
        system.percent = 90
        system.accept = false
        binding.dispatch(ContentEvent.BrightnessChanged(.6f))
        assertEquals(2, system.writes)
        assertEquals("系统状态未确认", binding.state.value.message)
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(250))
        assertEquals("系统状态未确认", binding.state.value.message)
        assertEquals(.9f, binding.state.value.brightness.actual)
        binding.dispatch(ContentEvent.BrightnessChanged(.9f))
        assertEquals(2, system.writes)
    }

    @Test fun stopCancelsQueuedCallbacksClockAndSystemReadbackWithoutReplayingCommands() {
        val system = System(); val store = store(s = system); val binding = binding(store); binding.start()
        binding.dispatch(ContentEvent.BrightnessChanged(.8f))
        val snapshot = binding.state.value
        Thread { store.acceptMediaSnapshot(mediaSnapshot(source = MediaSource.Usb.label)) }.apply { start(); join() }
        binding.stop()
        val stopped = binding.state.value
        assertFalse(stopped.sourcesOpen)
        assertTrue(stopped.controls.values.none { it.available })
        assertFalse(stopped.brightness.available)
        assertFalse(stopped.media.sourceAvailable)
        val reads = system.reads; val clock = store.snapshot().nowMillis
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(3))
        assertEquals(reads, system.reads)
        assertEquals(clock, store.snapshot().nowMillis)
        assertEquals(stopped, binding.state.value)
        binding.dispatch(ContentEvent.BrightnessChanged(.6f))
        assertEquals(1, system.writes)
        binding.start()
        assertEquals(MediaSource.Usb, binding.state.value.media.source)
        assertEquals(1, system.writes)
        binding.close(); binding.start(); binding.dispatch(ContentEvent.BrightnessChanged(.1f))
        assertEquals(1, system.writes)
    }

    @Test fun closeRespectsSharedAndOwnedStoreLifetime() {
        val sharedVehicle = Vehicle(); val sharedMedia = Media(); val shared = store(sharedVehicle, sharedMedia)
        val first = binding(shared); first.start(); first.close()
        assertEquals(0, sharedVehicle.stops); assertEquals(0, sharedMedia.stops)
        val second = binding(shared); second.start()
        shared.acceptVehicleSnapshot(vehicleSnapshot())
        second.dispatch(ContentEvent.ControlTapped(ControlId.Lock))
        assertEquals(false, sharedVehicle.lockTarget)
        val ownedVehicle = Vehicle(); val ownedMedia = Media()
        val owned = binding(store(ownedVehicle, ownedMedia), StoreOwnership.Owned)
        owned.start(); owned.close(); owned.close()
        assertEquals(1, ownedVehicle.stops); assertEquals(1, ownedMedia.stops)
    }

    @Test fun previewEventsAreIgnoredButPagesRouteToStore() {
        val store = store(); val binding = binding(store); binding.start()
        val theme = store.snapshot().themeMode
        binding.dispatch(ContentEvent.ToggleTheme)
        binding.dispatch(ContentEvent.ScenarioSelected(PreviewScenario.Playing))
        binding.dispatch(ContentEvent.OpenScenarios)
        assertEquals(theme, store.snapshot().themeMode)
        assertFalse(binding.state.value.scenariosOpen)
        assertNull(binding.state.value.media.title)
        binding.dispatch(ContentEvent.PageSelected(PanelPage.Shortcuts))
        assertEquals(0, store.snapshot().pageIndex)
        binding.dispatch(ContentEvent.SettingsTapped)
        assertNotNull(binding.state.value.message)
    }

    @Test fun pendingBlocksOtherControlsAndFailedCommandSupersedesSettingsFeedback() {
        val vehicle = Vehicle(); val store = store(v = vehicle)
        store.acceptVehicleSnapshot(vehicleSnapshot())
        val binding = binding(store); binding.start()
        binding.dispatch(ContentEvent.ControlTapped(ControlId.Ventilation))
        assertTrue(binding.state.value.controls.values.none { it.available })
        binding.dispatch(ContentEvent.ControlTapped(ControlId.Lock))
        assertNull(vehicle.lockTarget)
        store.acceptVehicleSnapshot(vehicleSnapshot(ventilation = 3))
        binding.dispatch(ContentEvent.SettingsTapped)
        vehicle.accept = false
        binding.dispatch(ContentEvent.ControlTapped(ControlId.Lock))
        assertEquals("车锁命令未发送，请检查车机状态", binding.state.value.message)
    }

    @Test fun unknownActiveMassageCanBeTurnedOffWithoutClaimingKnownLevel() {
        val state = ContentState().apply {
            vehicleDataAvailable = true; seatControlsKnown = true; massageSwitchKnown = true
            massageActive = true; massageLevel = -1
        }
        val control = ContentUiMapper().map(state, capabilities = RuntimeCapabilities(true)).controls.getValue(ControlId.Massage)
        assertTrue(control.available)
        assertFalse(control.known)
        assertEquals(-1, control.actual)
    }

    @Test fun stoppingDropsArtworkReferencesWithoutRecyclingStoreBitmap() {
        val store = store(); val binding = binding(store); binding.start()
        val source = android.graphics.Bitmap.createBitmap(64, 64, android.graphics.Bitmap.Config.ARGB_8888)
        store.acceptMediaSnapshot(ContentPorts.MediaSnapshot(true, false, "蓝牙音乐", true, 1, "真实", "真实", true, true, source))
        assertSame(source, binding.artwork.value)
        assertNotNull(binding.ambientArtwork.value)
        binding.dispatch(ContentEvent.OpenSources)
        binding.stop()
        assertNull(binding.artwork.value)
        assertNull(binding.ambientArtwork.value)
        assertFalse(binding.state.value.sourcesOpen)
        assertFalse(source.isRecycled)
        binding.start()
        assertSame(source, binding.artwork.value)
    }

    @Test fun mapperUnitsChargeWaitingAndWeekdayFollowExistingPreference() {
        val state = ContentState().apply {
            vehicleDataAvailable = true; temperatureC = 25f; rangeRaw = 123
            chargeState = ContentState.CHARGE_PLUGGED; nowMillis = 1_700_000_000_000L
        }
        val mapper = ContentUiMapper()
        assertEquals("25°C", mapper.map(state).temperature)
        assertEquals("km", mapper.map(state).rangeUnit)
        assertEquals("已插枪", mapper.map(state).chargeStatus)
        assertTrue(mapper.map(state).weekday.isNotEmpty())
        state.showWeekday = false
        assertEquals("", mapper.map(state).weekday)
        state.chargeState = ContentState.CHARGE_CHARGING
        state.chargePowerKw = Float.POSITIVE_INFINITY; state.chargeRemainingMinutes = -1
        assertEquals("充电中", mapper.map(state).chargeStatus)
    }

    @Test fun sourceFailureAndTimeoutRestoreActualWithoutClaimingSuccess() {
        val media = Media(); val store = store(m = media)
        store.acceptMediaSnapshot(mediaSnapshot())
        val binding = binding(store); binding.start()
        media.sourceResult = { false }
        binding.dispatch(ContentEvent.SourceSelected(MediaSource.Usb))
        assertEquals(MediaSource.Usb, binding.state.value.media.targetSource)
        drainMediaCommands(store)
        assertNull(binding.state.value.media.targetSource)
        assertEquals(MediaSource.Bluetooth, binding.state.value.media.source)
        assertEquals("媒体来源切换未发送，请检查车机媒体服务", binding.state.value.message)
        media.sourceResult = { true }
        binding.dispatch(ContentEvent.SourceSelected(MediaSource.CloudMusic))
        drainMediaCommands(store)
        assertEquals(MediaSource.CloudMusic, binding.state.value.media.targetSource)
        store.acceptMediaSnapshot(ContentPorts.MediaSnapshot.unavailable())
        assertEquals(MediaSource.CloudMusic, binding.state.value.media.targetSource)
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6))
        assertNull(binding.state.value.media.targetSource)
        assertEquals(MediaSource.Bluetooth, binding.state.value.media.source)
        assertEquals("媒体来源未确认，请检查车机当前来源", binding.state.value.message)
    }

    @Test fun sourceServiceCapabilityIsIndependentOfPlaybackAndStoreAlsoGates() {
        val media = Media(); val store = store(m = media)
        val binding = binding(store); binding.start()
        assertFalse(binding.state.value.media.playbackAvailable)
        binding.dispatch(ContentEvent.SourceSelected(MediaSource.Usb))
        drainMediaCommands(store)
        assertEquals(MediaSource.Usb.label, media.source)
        assertEquals(MediaSource.Usb, binding.state.value.media.targetSource)
        media.sourceAvailable = false
        store.selectMediaSource(MediaSource.CloudMusic.label)
        assertEquals(MediaSource.Usb.label, store.snapshot().pendingSource)
        assertEquals(MediaSource.Usb.label, media.source)
    }

    @Test fun staleSourceResultAndOldGenerationCannotClearNewTarget() {
        val entered = CountDownLatch(1); val release = CountDownLatch(1)
        val media = Media().apply { sourceResult = { source ->
            if (source == MediaSource.Usb.label) {
                entered.countDown(); check(release.await(2, TimeUnit.SECONDS)); false
            } else true
        } }
        val store = store(m = media)
        store.acceptMediaSnapshot(ContentPorts.MediaSnapshot(true, false, MediaSource.Bluetooth.label,
            false, 10, "真实歌曲", "真实作者", true, true))
        val binding = binding(store); binding.start()
        binding.dispatch(ContentEvent.SourceSelected(MediaSource.Usb))
        assertTrue(entered.await(2, TimeUnit.SECONDS))
        binding.dispatch(ContentEvent.SourceSelected(MediaSource.CloudMusic))
        release.countDown(); drainMediaCommands(store)
        assertEquals(MediaSource.CloudMusic, binding.state.value.media.targetSource)
        assertNull(binding.state.value.message)
        store.acceptMediaSnapshot(ContentPorts.MediaSnapshot(true, false, MediaSource.CloudMusic.label,
            false, 9, "旧回流", "旧作者", false, false))
        assertEquals(MediaSource.Bluetooth, binding.state.value.media.source)
        assertEquals(MediaSource.CloudMusic, binding.state.value.media.targetSource)
        store.acceptMediaSnapshot(ContentPorts.MediaSnapshot(true, false, MediaSource.CloudMusic.label,
            false, 11, "新回流", "新作者", false, false))
        assertEquals(MediaSource.CloudMusic, binding.state.value.media.source)
        assertNull(binding.state.value.media.targetSource)
        assertFalse(binding.state.value.media.playbackAvailable)
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6))
        assertNull(binding.state.value.message)
    }

    @Test fun queuedOldProjectionCannotOverwriteNewPendingAndStopDoesNotReplay() {
        val media = Media(); val store = store(m = media)
        store.acceptMediaSnapshot(mediaSnapshot())
        val binding = binding(store); binding.start()
        Thread { store.acceptMediaSnapshot(mediaSnapshot()) }.apply { start(); join() }
        binding.dispatch(ContentEvent.SourceSelected(MediaSource.Usb))
        drainMediaCommands(store)
        assertEquals(MediaSource.Usb, binding.state.value.media.targetSource)
        binding.stop()
        store.acceptMediaSnapshot(mediaSnapshot(source = MediaSource.Usb.label))
        shadowOf(Looper.getMainLooper()).idle()
        binding.start()
        assertEquals(MediaSource.Usb, binding.state.value.media.source)
        assertNull(binding.state.value.media.targetSource)
        assertEquals(1, media.sourceCalls)
        store.destroy()
        val before = store.snapshot()
        store.acceptMediaSnapshot(mediaSnapshot(source = MediaSource.CloudMusic.label))
        assertEquals(before.mediaSource, store.snapshot().mediaSource)
    }

    private fun drainMediaCommands(store: ContentStore) {
        val executor = ContentStore::class.java.getDeclaredField("mediaCommandExecutor").apply { isAccessible = true }
            .get(store) as java.util.concurrent.ExecutorService
        executor.submit {}.get(2, TimeUnit.SECONDS)
        shadowOf(Looper.getMainLooper()).idle()
    }

    private fun vehicleSnapshot(
        ventilation: Int = 0,
        heating: Int = 0,
        massageLevel: Int = 0,
        massageActive: Boolean = false,
        locked: Boolean = true,
    ) = ContentPorts.VehicleSnapshot(
        true, false, 25f, 60, 123, ContentState.CHARGE_DEFAULT, 0, 0, 0, Float.NaN, -1,
        ventilation, heating, massageLevel, 0, true, massageActive, true, true, locked)
    private fun mediaSnapshot(source: String = MediaSource.Bluetooth.label, playing: Boolean = false) =
        ContentPorts.MediaSnapshot(true, false, source, playing, 1, "真实歌曲", "真实作者", true, true)

    private class Vehicle : ContentPorts.VehiclePort {
        var accept = true
        var stops = 0; var seat: String? = null; var level = -1; var lockTarget: Boolean? = null
        override fun isAvailable() = true
        override fun isLockAvailable() = true
        override fun requestLock(locked: Boolean, requestId: Long): Boolean { lockTarget = locked; return accept }
        override fun requestSeatLevel(seatId: String, level: Int, requestId: Long): Boolean { seat = seatId; this.level = level; return accept }
        override fun start(listener: ContentPorts.VehicleSnapshotListener) { listener.onVehicleSnapshot(ContentPorts.VehicleSnapshot.unavailable()) }
        override fun stop() { stops++ }
    }
    private class Media : ContentPorts.MediaPort {
        var stops = 0; var sourceAvailable = true; var source: String? = null; var playing: Boolean? = null; var nextCalls = 0
        @Volatile var called = CountDownLatch(1)
        override fun isAvailable() = true
        override fun isSourceAvailable() = sourceAvailable
        override fun requestPlayback(playing: Boolean): Boolean { this.playing = playing; called.countDown(); return true }
        override fun requestNext(): Boolean { nextCalls++; called.countDown(); return true }
        var sourceCalls = 0
        var sourceResult: (String) -> Boolean = { true }
        override fun requestSource(source: String): Boolean {
            sourceCalls++; this.source = source; called.countDown(); return sourceResult(source)
        }
        override fun start(listener: ContentPorts.MediaSnapshotListener) { listener.onMediaSnapshot(ContentPorts.MediaSnapshot.unavailable()) }
        override fun stop() { stops++ }
    }
    private class System : ContentPorts.SystemPort {
        var accept = true
        var reads = 0; var writes = 0; var target = -1; var percent = 25; var available = true
        override fun read(kind: Int): ContentPorts.SystemSnapshot { reads++; return ContentPorts.SystemSnapshot(available, percent) }
        override fun write(kind: Int, percent: Int): Boolean { writes++; target = percent; return accept }
    }
}
