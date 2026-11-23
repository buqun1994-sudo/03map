package com.icar03.content.runtime

import android.app.Activity
import android.content.Context
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.ui.*
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.io.File

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentLayoutBindingTest {
    private val context: Context get() = RuntimeEnvironment.getApplication()
    @Before fun clear() { context.getSharedPreferences("content_preferences_v1", 0).edit().clear().commit() }
    private fun store(media: ContentPorts.MediaPort = ContentPorts.PreviewMediaPort()) = ContentStore(context,
        ContentPorts.PreviewVehiclePort(), media, object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
            override fun write(kind: Int, percent: Int) = false
        })
    private fun layout(binding: ContentBinding, action: ControlCenterEditAction, id: String = "", from: Int = -1, to: Int = -1) =
        binding.dispatch(LayoutAction(action, id, from, to))

    @Test fun editsPersistOnCompletionAndStaleIdsAreRejected() {
        val store = store()
        val binding = ContentBinding(store)
        try {
            binding.start()
            val original = binding.state.value.controlCenterItems
            assertTrue(original.isNotEmpty())
            layout(binding, ControlCenterEditAction.RemoveItem, original.first(), 0)
            assertEquals(original, binding.state.value.controlCenterItems)
            layout(binding, ControlCenterEditAction.Open)
            assertTrue(binding.state.value.controlCenterOpen)
            layout(binding, ControlCenterEditAction.BeginEdit)
            layout(binding, ControlCenterEditAction.RemoveItem, original[1], 0)
            assertEquals(original, binding.state.value.controlCenterItems)
            layout(binding, ControlCenterEditAction.RemoveItem, original.first(), 0)
            assertEquals(original.drop(1), binding.state.value.controlCenterItems)
            layout(binding, ControlCenterEditAction.Close)
            assertEquals(original.drop(1), store.snapshot().controlCenterLayoutIds)
            binding.stop(); binding.start()
            assertEquals(original.drop(1), binding.state.value.controlCenterItems)
            layout(binding, ControlCenterEditAction.RemoveItem, original[1], 0)
            assertEquals(original.drop(1), binding.state.value.controlCenterItems)
        } finally { binding.close(); store.destroy() }
    }

    @Test fun reorderedActiveCardAndEmptyDockSurviveASecondStore() {
        val store = store()
        val binding = ContentBinding(store)
        try {
            binding.start()
            layout(binding, ControlCenterEditAction.OpenCardList)
            layout(binding, ControlCenterEditAction.ToggleCardAddPanel)
            layout(binding, ControlCenterEditAction.AddCard, "volume", to = 1)
            layout(binding, ControlCenterEditAction.ToggleCardAddPanel)
            layout(binding, ControlCenterEditAction.SelectCard, "volume", 1)
            layout(binding, ControlCenterEditAction.BeginCardEdit)
            layout(binding, ControlCenterEditAction.MoveCard, "volume", 1, 0)
            assertEquals("volume", binding.state.value.controlCardIds[binding.state.value.controlCardIndex])
            layout(binding, ControlCenterEditAction.CloseCardList)
            layout(binding, ControlCenterEditAction.BeginDockEdit)
            while (binding.state.value.dockItems.isNotEmpty()) {
                layout(binding, ControlCenterEditAction.RemoveDockItem, binding.state.value.dockItems.first(), 0)
            }
            layout(binding, ControlCenterEditAction.EndDockEdit)
        } finally { binding.close(); store.destroy() }
        val restored = store()
        try {
            val snapshot = restored.snapshot()
            assertTrue(snapshot.dockLayoutIds.isEmpty())
            assertEquals(listOf("volume", "media"), snapshot.controlCardLayoutIds)
            assertEquals("volume", snapshot.controlCardLayoutIds[snapshot.controlCardLayoutIndex])
        } finally { restored.destroy() }
    }

    @Test fun editorRejectsAllBusinessIntentsAndPauseSavesCompletedDrop() {
        val store = store()
        val binding = ContentBinding(store)
        try {
            binding.start()
            layout(binding, ControlCenterEditAction.BeginDockEdit)
            assertFalse(binding.canDispatch(ContentEvent.PlayPause))
            assertFalse(binding.canDispatch(ContentEvent.VolumeChanged(.7f)))
            assertFalse(binding.canDispatch(ContentEvent.ControlTapped(ControlId.Lock)))
            val dock = binding.state.value.dockItems
            layout(binding, ControlCenterEditAction.MoveDockItem, dock[0], 0, 1)
            binding.stop(); binding.start()
            assertEquals(dock[0], binding.state.value.dockItems[1])
            assertFalse(binding.state.value.dockEditing)
        } finally { binding.close(); store.destroy() }
    }

    @Test fun openingMediaSourcesFromNormalCardListReplacesTheList() {
        val media = object : ContentPorts.MediaPort {
            override fun isAvailable() = false
            override fun isSourceAvailable() = true
            override fun requestPlayback(playing: Boolean) = false
            override fun requestNext() = false
            override fun requestSource(source: String) = false
            override fun start(listener: ContentPorts.MediaSnapshotListener) {
                listener.onMediaSnapshot(ContentPorts.MediaSnapshot.unavailable())
            }
            override fun stop() = Unit
        }
        val store = store(media)
        val binding = ContentBinding(store)
        try {
            binding.start()
            binding.dispatch(LayoutAction(ControlCenterEditAction.OpenCardList))
            assertEquals(LayoutSession.Cards, LayoutSession.from(binding.state.value))
            assertTrue(binding.canDispatch(ContentEvent.OpenSources))
            binding.dispatch(ContentEvent.OpenSources)
            assertTrue(binding.state.value.sourcesOpen)
            assertFalse(binding.state.value.controlCardListOpen)
            assertFalse(binding.state.value.controlCardEditing)
        } finally { binding.close(); store.destroy() }
    }

    @Test fun invalidProfileAndEmptyDockKeepLocalRepairSettingsReachable() {
        val profile = File(context.filesDir, "vehicle-config.json")
        check(profile.canonicalFile.parentFile == context.filesDir.canonicalFile)
        assertFalse(profile.exists())
        profile.writeText("{broken")
        val store = store()
        val binding = ContentBinding(store)
        val activity = Robolectric.buildActivity(Activity::class.java).setup()
        try {
            binding.observeEnvironment(activity.get())
            binding.start()
            assertFalse(binding.state.value.vehicleConfigValid)
            assertTrue(binding.state.value.dockItems.isEmpty())
            assertFalse(binding.canDispatch(ContentEvent.ControlTapped(ControlId.Lock)))
            assertTrue(binding.canDispatch(ContentEvent.OpenVehicleConfigSettings))
            binding.dispatch(ContentEvent.OpenVehicleConfigSettings)
            assertTrue(binding.state.value.settingsOpen)
            assertEquals(SettingsSection.VehicleConfig, binding.state.value.settingsSection)
            assertTrue(binding.canDispatch(LayoutAction(ControlCenterEditAction.ImportVehicleConfig)))
            assertFalse(binding.canDispatch(ContentEvent.ControlTapped(ControlId.Lock)))
        } finally {
            binding.close(); store.destroy(); activity.pause().stop().destroy()
            check(profile.canonicalFile.parentFile == context.filesDir.canonicalFile)
            check(profile.delete())
        }
    }

    @Test fun settingsAndStoppedHostRejectEditorCallbacks() {
        val store = store()
        val binding = ContentBinding(store)
        val activity = Robolectric.buildActivity(Activity::class.java).setup()
        try {
            binding.observeEnvironment(activity.get())
            binding.start()
            binding.dispatch(ContentEvent.SettingsTapped)
            assertFalse(binding.canDispatch(LayoutAction(ControlCenterEditAction.BeginDockEdit)))
            assertFalse(binding.canDispatch(LayoutAction(ControlCenterEditAction.ImportVehicleConfig)))
            binding.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.VehicleConfig))
            assertTrue(binding.canDispatch(LayoutAction(ControlCenterEditAction.ImportVehicleConfig)))
            binding.stop()
            assertFalse(binding.canDispatch(LayoutAction(ControlCenterEditAction.ImportVehicleConfig)))
            assertFalse(binding.canDispatch(LayoutAction(ControlCenterEditAction.Open)))
        } finally { binding.close(); store.destroy(); activity.pause().stop().destroy() }
    }
}
