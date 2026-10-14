package com.icar03.content.runtime

import android.content.Context
import android.os.Looper
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentState
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.model.GestureAction
import com.icar03.content.model.GestureCommand
import com.icar03.content.model.GesturePreferences
import com.icar03.content.model.VehicleGear
import com.icar03.content.runtime.lyrics.AppleMusicConnection
import com.icar03.content.ui.*
import kotlinx.coroutines.flow.MutableStateFlow
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
import java.util.concurrent.ExecutorService
import java.util.concurrent.TimeUnit

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class GestureSettingsBindingTest {
    private val app: Context get() = RuntimeEnvironment.getApplication()
    private val preferences get() = app.getSharedPreferences("content_preferences_v1", Context.MODE_PRIVATE)
    @Before fun reset() { preferences.edit().clear().commit() }
    @After fun cleanup() { preferences.edit().clear().commit() }
    private val change get() = ContentEvent.GestureActionChanged(GestureCommand.FourDown, GestureAction.EnterImmersive)
    private val performed get() = ContentEvent.GesturePerformed(GestureCommand.TwoRight)
    private fun store() = ContentStore(app, ContentPorts.PreviewVehiclePort(), object : ContentPorts.MediaPort {
        override fun isAvailable() = false
        override fun isSourceAvailable() = true
        override fun requestPlayback(playing: Boolean) = false
        override fun requestNext() = false
        override fun requestSource(source: String) = false
        override fun start(listener: ContentPorts.MediaSnapshotListener) {}
        override fun stop() {}
    },
        object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
            override fun write(kind: Int, percent: Int) = false
        })
    private fun drain(binding: ContentBinding) {
        val worker = field(binding, "systemWorker") as ExecutorService
        repeat(2) { worker.submit {}.get(2, TimeUnit.SECONDS); shadowOf(Looper.getMainLooper()).idle() }
    }
    private inline fun fixture(block: (ContentStore, ContentBinding) -> Unit) {
        val store = store()
        val binding = ContentBinding(store)
        try { binding.start(); drain(binding); block(store, binding) }
        finally { binding.close(); store.destroy() }
    }
    private fun openGestures(binding: ContentBinding) {
        if (!binding.state.value.settingsOpen) binding.dispatch(ContentEvent.SettingsTapped)
        binding.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.Gestures))
    }
    private fun rejected(store: ContentStore, binding: ContentBinding, event: ContentEvent = change) {
        val before = store.snapshot().gestureActions
        val saved = preferences.all.toMap()
        assertFalse("$event must be denied before the parent's click sound", binding.canDispatch(event))
        binding.dispatch(event)
        assertSame(before, store.snapshot().gestureActions)
        assertEquals(saved, preferences.all)
    }
    private fun field(owner: Any, name: String): Any? = owner.javaClass.getDeclaredField(name)
        .apply { isAccessible = true }.get(owner)
    private fun setField(owner: Any, name: String, value: Any?) {
        owner.javaClass.getDeclaredField(name).apply { isAccessible = true }.set(owner, value)
    }
    private fun openAppleModal(binding: ContentBinding) {
        binding.observeEnvironment(app)
        val owner = field(binding, "lyricsSettings") as LyricsSettingsBinding
        setField(owner, "activeAttempt", AppleMusicConnection.LoginAttempt("synthetic-gesture-gate", ""))
        setField(owner, "preparing", false)
        LyricsSettingsBinding::class.java.getDeclaredMethod("refreshState", java.lang.Boolean.TYPE)
            .apply { isAccessible = true }.invoke(owner, false)
        assertTrue(binding.state.value.lyricsProviderSettings.appleLoginOpen)
    }

    @Test fun onlyThePreferenceChangeIsASettingsInteraction() {
        assertTrue(change.isSettingsInteraction())
        assertFalse(performed.isSettingsInteraction())
    }

    @Test fun aPreferenceChoiceRequiresTheOpenGestureSectionAndAcceptsOneChange() = fixture { store, binding ->
        rejected(store, binding)
        binding.dispatch(ContentEvent.SettingsTapped)
        SettingsSection.entries.filter { it != SettingsSection.Gestures }.forEach { section ->
            binding.dispatch(ContentEvent.SettingsSectionSelected(section))
            rejected(store, binding)
        }
        openGestures(binding)
        assertTrue(binding.canDispatch(change))
        val before = binding.state.value.gestureActions
        binding.dispatch(change)
        assertSame(GestureAction.EnterImmersive, binding.state.value.gestureActions[GestureCommand.FourDown])
        assertSame(GestureAction.None, before[GestureCommand.FourDown])
        assertSame(store.snapshot().gestureActions, binding.state.value.gestureActions)
        assertEquals("enter_immersive", preferences.getString("gesture_action_four_down", null))
        rejected(store, binding)
    }

    @Test fun leavingClosingCollapsingStoppingAndDisposedOwnersRejectLateSelections() = fixture { store, binding ->
        openGestures(binding)
        binding.dispatch(ContentEvent.SettingsBack)
        rejected(store, binding)
        openGestures(binding)
        binding.dispatch(ContentEvent.SettingsDismissed)
        rejected(store, binding)
        openGestures(binding)
        setField(binding, "settingsCollapsed", true)
        rejected(store, binding)
        setField(binding, "settingsCollapsed", false)
        binding.stop()
        rejected(store, binding)
        binding.start(); drain(binding)
        rejected(store, binding)
        openGestures(binding)
        binding.close()
        rejected(store, binding)
    }

    @Test fun anAppleModalRejectsGesturePreferencesBeforeAnyEventOrClickSoundIsAccepted() = fixture { store, binding ->
        openGestures(binding)
        openAppleModal(binding)
        rejected(store, binding)
        rejected(store, binding, performed)
    }

    @Test fun queuedConfirmedDepartureRejectsTheMenuChoiceBeforeTheUiProcessesItsClosingFrame() = fixture { store, binding ->
        store.acceptVehicleSnapshot(ContentPorts.VehicleSnapshot.unavailable().withGear(VehicleGear.Park))
        openGestures(binding)
        val producer = Thread {
            store.acceptVehicleSnapshot(ContentPorts.VehicleSnapshot.unavailable().withGear(VehicleGear.Drive))
        }
        producer.start(); producer.join(2_000)
        assertFalse(producer.isAlive)
        assertTrue("the UI has not handled the queued departure", binding.state.value.settingsOpen)
        rejected(store, binding)
        shadowOf(Looper.getMainLooper()).idle()
        assertFalse(binding.state.value.settingsOpen)
    }

    @Test fun changingAGestureInvalidatesOnlyTheIncrementalShellAndCopiesKeepTheImmutableMap() {
        val mapper = ContentUiMapper()
        val state = ContentState()
        val system = ContentPorts.SystemSnapshot(false, 0)
        val shell = mapper.mapShell(state, system, system, RuntimeCapabilities())
        val lyrics = mapper.mapLyrics(state)
        val shellCount = mapper.shellProjectionCount
        val bodyCount = mapper.lyricsProjectionCount
        state.nowMillis = 1_700_000_000_000L
        assertSame(shell, mapper.mapShell(state, system, system, RuntimeCapabilities()))
        assertSame(state.gestureActions, state.copy().gestureActions)
        state.gestureActions = GesturePreferences.withAction(state.gestureActions,
            GestureCommand.ThreeRight, GestureAction.ExitImmersive)
        val changed = mapper.mapShell(state, system, system, RuntimeCapabilities())
        assertNotSame(shell, changed)
        assertSame(state.gestureActions, changed.gestureActions)
        assertSame(GestureAction.None, shell.gestureActions[GestureCommand.ThreeRight])
        assertSame(GestureAction.ExitImmersive, changed.gestureActions[GestureCommand.ThreeRight])
        assertEquals(shellCount + 1, mapper.shellProjectionCount)
        assertSame(lyrics, mapper.mapLyrics(state))
        assertEquals(bodyCount, mapper.lyricsProjectionCount)
        assertSame(changed, mapper.mapShell(state.copy(), system, system, RuntimeCapabilities()))
    }

    @Test fun performedGesturesRequireTheCurrentPageCapabilityAndNoModalButNeverReduceGeometryInBinding() = fixture { store, binding ->
        store.setPageIndex(0)
        rejected(store, binding, performed)
        store.setPageIndex(1)
        assertTrue(binding.canDispatch(performed))
        val before = store.snapshot()
        val saved = preferences.all.toMap()
        binding.dispatch(performed)
        assertEquals(before.pageIndex, store.snapshot().pageIndex)
        assertSame(before.gestureActions, store.snapshot().gestureActions)
        assertEquals(saved, preferences.all)
        openGestures(binding)
        rejected(store, binding, performed)
        binding.dispatch(ContentEvent.SettingsDismissed)
        binding.dispatch(ContentEvent.OpenSources)
        assertTrue(binding.state.value.sourcesOpen)
        rejected(store, binding, performed)
        binding.dispatch(ContentEvent.DismissSheet)
        @Suppress("UNCHECKED_CAST")
        val mutableState = field(binding, "mutableState") as MutableStateFlow<ContentUiState>
        mutableState.value = binding.state.value.copy(scenariosOpen = true)
        rejected(store, binding, performed)
        mutableState.value = binding.state.value.copy(scenariosOpen = false)
        binding.stop()
        rejected(store, binding, performed)
    }
}
