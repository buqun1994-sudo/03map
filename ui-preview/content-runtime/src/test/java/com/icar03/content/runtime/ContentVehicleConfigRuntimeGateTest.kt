package com.icar03.content.runtime

import android.content.Context
import android.os.Looper
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentRegistry
import com.autonavi.amapauto.content.ContentState
import com.autonavi.amapauto.content.ContentStore
import com.autonavi.amapauto.content.ContentVehicleConfig
import com.autonavi.amapauto.content.ContentVehicleProtocol
import com.icar03.content.model.VehicleControl
import com.icar03.content.model.VehicleFeature
import com.icar03.content.ui.PanelPage
import com.icar03.content.ui.SystemQuickControl
import org.json.JSONArray
import org.json.JSONObject
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
import java.io.File
import java.time.Duration

/** Real imported configurations, Store reducers and Mapper; ports only record actual requests. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], shadows = [ContentVehicleConfigAtomicOsShadow::class])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentVehicleConfigRuntimeGateTest {
    private val app: Context get() = RuntimeEnvironment.getApplication()
    private val imported get() = File(app.filesDir, "vehicle-config.json")
    private val stores = mutableListOf<ContentStore>()
    private val off = ContentPorts.SystemSnapshot(false, 0)

    @Before fun prepare() {
        check(imported.canonicalFile.parentFile == app.filesDir.canonicalFile)
        check(!imported.exists())
        app.getSharedPreferences("content_preferences_v1", 0).edit().clear().commit()
        app.getSharedPreferences("vehicle_config_self_check_v2", 0).edit().clear().commit()
        ContentVehicleConfigAtomicOsShadow.reset()
    }

    @After fun cleanup() {
        stores.forEach(ContentStore::destroy)
        check(imported.canonicalFile.parentFile == app.filesDir.canonicalFile)
        imported.delete()
        ContentVehicleConfigAtomicOsShadow.reset()
    }

    @Test fun disabledLockStaysDeclaredButNeitherCapabilityNorKnownReadbackMakesItWritable() {
        profile { enabled("controls", "lock", false) }
        val f = fixture()
        val state = f.store.snapshot()
        assertTrue(state.vehicleConfigValid)
        assertFalse("lock" in state.availableDockIds)
        assertFalse("lock" in state.enabledControlIds)
        assertFalse(state.lockWriteAvailable)
        assertFalse(f.store.isLockControlAvailable())
        assertFalse(project(state).controls.getValue(VehicleControl.Lock).available)
        f.store.toggleLock()
        assertTrue(f.vehicle.commands.isEmpty())
        assertEquals("", f.store.snapshot().pendingVehicleCommand)
        assertTrue(f.store.snapshot().locked)
    }

    @Test fun formalLayoutIdsOwnSelectionAndLegacyDockMutatorsCannotReplaceThem() {
        val f = fixture()
        val center = listOf("lock", "brightness", "front_wiper")
        val cards = listOf("brightness", "volume", "front_wiper", "media")
        val dock = listOf("settings", "lock", "front_wiper")
        f.store.setLayoutPreferences(center, cards, dock, 0)
        f.store.setControlIndex(2)
        f.store.setDockButtonCount(3)
        f.store.replaceDockItem(0, ContentRegistry.Shortcuts.SEAT_HEATING)
        val saved = f.store.snapshot()
        assertEquals(center, saved.controlCenterLayoutIds)
        assertEquals(cards, saved.controlCardLayoutIds)
        assertEquals(2, saved.controlCardLayoutIndex)
        assertEquals(dock, saved.dockLayoutIds)
        assertEquals(5, saved.dockButtonCount)
        val restored = fixture().store.snapshot()
        assertEquals(center, restored.controlCenterLayoutIds)
        assertEquals(cards, restored.controlCardLayoutIds)
        assertEquals("front_wiper", restored.controlCardLayoutIds[restored.controlCardLayoutIndex])
        assertEquals(dock, restored.dockLayoutIds)
    }

    @Test fun disabledAutomaticWiperCannotBeEnteredThroughToggleExplicitLevelOrCycle() {
        profile { enabled("controls", "auto_wiper", false) }
        val f = fixture(wiper = 4)
        assertTrue(f.store.isControlAvailable(VehicleControl.Wiper.id))
        assertFalse(f.store.isControlAutomaticAvailable(VehicleControl.Wiper.id))
        assertFalse(f.store.isControlLevelAvailable(VehicleControl.Wiper.id, 5))
        f.store.toggleControlAutomatic(VehicleControl.Wiper.id)
        f.store.setControlLevel(VehicleControl.Wiper.id, 5)
        f.store.cycleControlLevel(VehicleControl.Wiper.id)
        assertTrue(f.vehicle.commands.isEmpty())
        f.store.setControlLevel(VehicleControl.Wiper.id, 2)
        assertEquals(listOf(Command(VehicleControl.Wiper.id, 2)), f.vehicle.commands)
        assertEquals(4, f.store.snapshot().wiperLevel)
        assertEquals(2, f.store.snapshot().pendingSeatLevel)
    }

    @Test fun automaticOnlyConfigurationUsesTheSharedPhysicalWiperWithoutEnablingManualCommands() {
        profile { enabled("controls", "front_wiper", false) }
        val f = fixture(wiper = 0)
        assertTrue(f.store.isControlAutomaticAvailable(VehicleControl.Wiper.id))
        assertFalse(f.store.isControlLevelAvailable(VehicleControl.Wiper.id, 2))
        val ui = project(f.store.snapshot())
        assertTrue(ui.controls.getValue(VehicleControl.Wiper).available)
        assertTrue("auto_wiper" in ui.enabledControlIds)
        assertFalse("front_wiper" in ui.enabledControlIds)
        f.store.toggleControlPower(VehicleControl.Wiper.id)
        f.store.setControlLevel(VehicleControl.Wiper.id, 2)
        assertTrue(f.vehicle.commands.isEmpty())
        f.store.toggleControlAutomatic(VehicleControl.Wiper.id)
        assertEquals(listOf(Command(VehicleControl.Wiper.id, 5)), f.vehicle.commands)
        f.store.acceptVehicleSnapshot(snapshot(wiper = 5))
        f.store.toggleControlAutomatic(VehicleControl.Wiper.id)
        assertEquals(listOf(Command(VehicleControl.Wiper.id, 5), Command(VehicleControl.Wiper.id, 0)), f.vehicle.commands)
    }

    @Test fun actionFeatureRejectsAnInventedOffModeEvenWhenThePortClaimsItCanWriteAnything() {
        val f = fixture()
        assertFalse(f.store.isFeatureAvailable("wiper_maintenance", 0))
        f.store.requestFeature("wiper_maintenance", 0)
        f.store.requestFeature("glove_box", 0)
        assertTrue(f.vehicle.commands.isEmpty())
        assertTrue(f.store.isFeatureAvailable("wiper_maintenance", 1))
        f.store.requestFeature("wiper_maintenance", 1)
        assertEquals(listOf(Command("wiper_maintenance", 1)), f.vehicle.commands)
        assertEquals(0, f.store.snapshot().wiperMaintenanceLevel)
        val glove = fixture()
        assertTrue(glove.store.isFeatureAvailable("glove_box", 1))
        glove.store.requestFeature("glove_box", 1)
        assertEquals(listOf(Command("glove_box", 1)), glove.vehicle.commands)
    }

    @Test fun anUndeclaredFeatureCannotBorrowAWritableCapabilityAndDisabledPlaceholdersStayUnavailable() {
        profile {
            getJSONObject("features").remove("rear_fog")
            val presentation = getJSONObject("presentation")
            val before = presentation.getJSONArray("controlCenter")
            presentation.put("controlCenter", JSONArray((0 until before.length()).map { before.getString(it) }.filter { it != "rear_fog" }))
        }
        val f = fixture()
        val state = f.store.snapshot()
        assertTrue(state.vehicleConfigValid)
        assertFalse("rear_fog" in state.availableControlCenterIds)
        assertFalse("climate" in state.availableControlCenterIds)
        assertFalse("passenger_seat_adjust" in state.availableControlCenterIds)
        assertFalse(f.store.isFeatureAvailable("rear_fog", 1))
        f.store.requestFeature("rear_fog", 1)
        f.store.requestFeature("passenger_seat_adjust", 1)
        assertTrue(f.vehicle.commands.isEmpty())
        val ui = project(state)
        assertFalse(ui.features.getValue(VehicleFeature.RearFog).available)
        assertFalse(ui.features.getValue(VehicleFeature.PassengerSeatAdjust).available)
        assertFalse("rear_fog" in ui.controlCenterAvailableItems)
        assertFalse("climate" in ui.controlCenterAvailableItems)
    }

    @Test fun systemAndAppControlCentersUseDifferentDeclarationsAndNeverEnableEachOther() {
        profile { enabled("system", "system_control_center", false) }
        val appCenter = fixture()
        assertTrue(appCenter.store.isContentAvailable("control_center_page"))
        assertFalse(appCenter.store.isSystemAvailable("system_control_center"))
        assertArrayEquals(arrayOf("lyrics"), ContentRegistry.visiblePageIds())
        val appUi = project(appCenter.store.snapshot().apply { pageIndex = 3 })
        assertEquals(PanelPage.Lyrics, appUi.page)
        assertFalse(appUi.controlCenterAvailable)

        profile { enabled("content", "control_center_page", false) }
        val oemCenter = fixture()
        assertFalse(oemCenter.store.isContentAvailable("control_center_page"))
        assertTrue(oemCenter.store.isSystemAvailable("system_control_center"))
        oemCenter.store.setPageIndex(0)
        oemCenter.store.setPageIndex(ContentRegistry.visiblePageIds().indexOf("control_center_page"))
        assertEquals(0, oemCenter.store.snapshot().pageIndex)
        assertTrue(project(oemCenter.store.snapshot()).controlCenterAvailable)
        val stale = oemCenter.store.snapshot().apply { pageIndex = ContentRegistry.visiblePageIds().indexOf("control_center_page") }
        assertEquals(PanelPage.Lyrics, project(stale).page)
    }

    @Test fun disabledMediaContentRejectsPlaybackNextAndSourceEvenWithRealMediaAndLivePorts() {
        profile { enabled("content", "media", false) }
        val f = fixture()
        f.store.acceptMediaSnapshot(ContentPorts.MediaSnapshot(true, false, "本机音乐", false, 1,
            "歌曲", "歌手", true, true))
        assertFalse(f.store.isContentAvailable("media"))
        assertFalse(f.store.isMediaSourceAvailable())
        assertFalse(f.store.snapshot().mediaSourceWriteAvailable)
        val ui = project(f.store.snapshot())
        assertFalse(ui.media.available)
        assertFalse(ui.media.playbackAvailable)
        assertFalse(ui.media.nextAvailable)
        assertFalse(ui.media.sourceAvailable)
        f.store.toggleMediaPlayback()
        f.store.nextMediaTrack()
        f.store.selectMediaSource("蓝牙音乐")
        assertTrue(f.media.commands.isEmpty())
        assertEquals(-1, f.store.snapshot().mediaPlaybackTarget)
        assertFalse(f.store.snapshot().mediaNextPending)
        assertEquals("", f.store.snapshot().pendingSource)
    }

    @Test fun changingCapabilityWhileThePendingStateIsPublishedCancelsEveryVehicleWriteWithoutRetry() {
        val actions: List<Pair<String, (ContentStore) -> Unit>> = listOf(
            "seat_ventilation" to { it.setControlLevel("seat_ventilation", 2) },
            "lock" to { it.toggleLock() },
            "rear_fog" to { it.requestFeature("rear_fog", 1) },
            "center_brightness" to { it.setCenterBrightness(7) },
            "rear_wash" to { it.triggerControl("rear_wash") },
        )
        for ((id, action) in actions) {
            val f = fixture()
            f.store.addListener { state -> if (state.pendingVehicleCommand == id) f.vehicle.connected = false }
            action(f.store)
            assertEquals("$id must not dispatch after its capability was revoked", emptyList<Command>(), f.vehicle.commands)
            val result = f.store.snapshot()
            assertEquals("$id pending is cleared", "", result.pendingVehicleCommand)
            assertEquals("$id reports the failed preflight", ContentState.COMMAND_FAILED, result.commandStatus)
            assertEquals(0, result.ventilationLevel)
            assertEquals(0, result.rearFogLevel)
            assertEquals(5, result.centerBrightnessLevel)
            assertTrue(result.locked)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(7_000))
            assertTrue("$id never retries", f.vehicle.commands.isEmpty())
        }
    }

    @Test fun knownReadbackWithoutLiveTransportAndUnknownOrPreviewFactsCannotOpenVehicleWrites() {
        val f = fixture()
        f.vehicle.connected = false
        assertFalse(f.store.isFeatureAvailable("rear_fog", 1))
        f.store.setControlLevel("seat_ventilation", 2)
        f.store.toggleLock()
        f.store.requestFeature("rear_fog", 1)
        assertTrue(f.vehicle.commands.isEmpty())
        f.vehicle.connected = true
        f.store.acceptVehicleSnapshot(snapshot(preview = true))
        f.store.setControlLevel("seat_ventilation", 2)
        f.store.toggleLock()
        f.store.requestFeature("rear_fog", 1)
        assertTrue(f.vehicle.commands.isEmpty())
        f.store.acceptVehicleSnapshot(snapshot().withFeatureSnapshot(ContentPorts.FeatureSnapshot.unknown()))
        assertFalse(f.store.isFeatureAvailable("rear_fog", 1))
        f.store.requestFeature("rear_fog", 1)
        assertTrue(f.vehicle.commands.isEmpty())
        f.store.destroy()
        assertFalse(f.store.isContentAvailable("settings"))
        assertFalse(f.store.isSystemAvailable("volume"))
    }

    @Test fun brightnessRequiresItsOwnLiveCapabilityAndInvalidConfigurationFailsClosedInMapper() {
        val f = fixture()
        val mapper = ContentUiMapper()
        val before = f.store.snapshot()
        assertTrue(before.centerBrightnessWriteAvailable)
        assertTrue(mapper.mapShell(before, off, off, allCapabilities(before)).brightness.available)
        f.vehicle.brightnessCapable = false
        val unavailable = f.store.snapshot()
        assertFalse(unavailable.centerBrightnessWriteAvailable)
        val after = mapper.mapShell(unavailable, off, off, allCapabilities(unavailable))
        assertFalse(after.brightness.available)
        assertEquals(2, mapper.shellProjectionCount.toInt())
        f.store.setCenterBrightness(7)
        assertTrue(f.vehicle.commands.isEmpty())
        val invalid = before.copy().apply { vehicleConfigValid = false }
        val projected = project(invalid)
        assertTrue(projected.controls.values.none { it.available })
        assertTrue(projected.features.values.none { it.available })
        assertTrue(projected.systemLevels.values.none { it.available })
        assertFalse(projected.controlCenterAvailable)
        assertFalse(projected.appControlCenterAvailable)
        assertFalse(projected.media.available)
        assertTrue(projected.controlCenterItems.isEmpty())
        assertTrue(projected.controlCardIds.isEmpty())
        assertTrue(projected.dockItems.isEmpty())
    }

    private fun JSONObject.enabled(section: String, id: String, enabled: Boolean) {
        getJSONObject(section).getJSONObject(id).put("enabled", enabled)
    }

    private fun profile(change: JSONObject.() -> Unit) {
        val json = app.assets.open("content-vehicle/icar03.json").use { JSONObject(it.readBytes().toString(Charsets.UTF_8)) }
        json.change()
        val bytes = json.toString().toByteArray()
        val validation = ContentVehicleConfig.validate(bytes)
        assertTrue(validation.message(), validation.isValid)
        assertTrue(ContentVehicleConfig.saveImported(app, bytes))
    }

    private fun fixture(wiper: Int = 0): Fixture {
        val vehicle = Vehicle()
        val media = Media()
        val store = ContentStore(app, vehicle, media, ConfigSystemPort()).also(stores::add)
        store.acceptVehicleSnapshot(snapshot(wiper))
        return Fixture(store, vehicle, media)
    }

    private fun snapshot(wiper: Int = 0, preview: Boolean = false): ContentPorts.VehicleSnapshot =
        ContentPorts.VehicleSnapshot(true, preview, 25f, 60, 123, ContentState.CHARGE_DEFAULT,
            0, 0, 0, Float.NaN, -1, 0, 0, true, false, 0, true, false,
            0, 0, 1, true, false, true, true, true, wiper, true)
            .withRearWindowReadback("rear_wiper", 0, 0L, false)
            .withRearWindowReadback("rear_wash", 0, 0L, false)
            .withFeatureSnapshot(ContentPorts.FeatureSnapshot(0, 0, 0, -1, 0, 0, 0, 0, 0, -1,
                5, true, 0, true, intArrayOf(0, 0, 0, 0), true, FloatArray(7), true, 0, 0, true))

    private fun allCapabilities(state: ContentState) = RuntimeCapabilities(vehicle = true, lock = true, source = true,
        writableSeatControls = state.writableSeatControls,
        writableFeatures = VehicleFeature.entries.map { it.id }.toSet(), controlCenter = true, screenClean = true)

    private fun project(state: ContentState) = ContentUiMapper().mapShell(state, off,
        ContentPorts.SystemSnapshot(true, 50), allCapabilities(state), systemLevels =
            SystemQuickControl.entries.associateWith { ContentPorts.SystemSnapshot(true, 50) })

    private data class Fixture(val store: ContentStore, val vehicle: Vehicle, val media: Media)
    private data class Command(val id: String, val target: Int)
    private class ConfigSystemPort : ContentPorts.SystemPort {
        override fun capabilityContract() = "config-test-system-v1"
        override fun inspectCapability(id: String, mapping: ContentVehicleProtocol.Mapping) =
            ContentPorts.CapabilityCheck.unknown("测试端口未提供硬件支持结论")
        override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
        override fun write(kind: Int, percent: Int) = false
    }

    private class Vehicle : ContentPorts.VehiclePort {
        var connected = true
        var brightnessCapable = true
        val commands = mutableListOf<Command>()
        override fun isAvailable() = connected
        override fun isLockAvailable() = connected
        override fun isFeatureAvailable(featureId: String, target: Int) = connected
        override fun isRearWindowControlAvailable(controlId: String) = connected
        override fun isCenterBrightnessAvailable(level: Int) = connected && brightnessCapable
        override fun requestLock(locked: Boolean, requestId: Long): Boolean {
            commands += Command("lock", if (locked) 1 else 0); return true
        }
        override fun requestSeatLevel(seatId: String, level: Int, requestId: Long): Boolean {
            commands += Command(seatId, level); return true
        }
        override fun requestFeature(featureId: String, target: Int, requestId: Long, deadlineUptimeMs: Long): Boolean {
            commands += Command(featureId, target); return true
        }
        override fun requestRearWindow(controlId: String, expectedLevel: Int, targetLevel: Int,
            requestId: Long, deadlineUptimeMs: Long): Boolean {
            commands += Command(controlId, targetLevel); return true
        }
        override fun requestCenterBrightness(level: Int, requestId: Long, deadlineUptimeMs: Long): Boolean {
            commands += Command("center_brightness", level); return true
        }
        override fun start(listener: ContentPorts.VehicleSnapshotListener) = Unit
        override fun stop() = Unit
    }
    private class Media : ContentPorts.MediaPort {
        val commands = mutableListOf<String>()
        override fun isAvailable() = true
        override fun isSourceAvailable() = true
        override fun requestPlayback(playing: Boolean): Boolean { commands += "playback"; return true }
        override fun requestNext(): Boolean { commands += "next"; return true }
        override fun requestSource(source: String): Boolean { commands += source; return true }
        override fun start(listener: ContentPorts.MediaSnapshotListener) = Unit
        override fun stop() = Unit
    }
}
