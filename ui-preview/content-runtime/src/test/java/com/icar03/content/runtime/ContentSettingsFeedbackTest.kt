package com.icar03.content.runtime

import android.os.Looper
import android.os.SystemClock
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentPreferenceStore
import com.autonavi.amapauto.content.ContentState
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.ui.ContentEvent
import com.icar03.content.ui.ControlId
import com.icar03.content.ui.MediaSource
import com.icar03.content.ui.PanelPage
import com.icar03.content.ui.SettingsSection
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.CoroutineStart
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.cancel
import kotlinx.coroutines.flow.collect
import kotlinx.coroutines.launch
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.time.Duration
import java.util.concurrent.ExecutorService
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentSettingsFeedbackTest {
    @Test fun settingsReplacesSourcesSelectsItsSectionAndDismissesWithoutOpeningAnotherSheet() = withFixture { fixture ->
        val binding = fixture.binding
        binding.dispatch(ContentEvent.OpenSources)
        assertTrue(binding.state.value.sourcesOpen)

        binding.dispatch(ContentEvent.SettingsTapped)
        assertTrue(binding.state.value.settingsOpen)
        assertFalse(binding.state.value.sourcesOpen)
        assertEquals(SettingsSection.Home, binding.state.value.settingsSection)

        binding.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.Lyrics))
        assertEquals(SettingsSection.Lyrics, binding.state.value.settingsSection)
        binding.dispatch(ContentEvent.SettingsDismissed)
        assertFalse(binding.state.value.settingsOpen)
        assertFalse(binding.state.value.sourcesOpen)

        binding.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.Media))
        assertEquals("a closed sheet ignores menu selections", SettingsSection.Lyrics, binding.state.value.settingsSection)
        binding.dispatch(ContentEvent.SettingsTapped)
        assertEquals(SettingsSection.Home, binding.state.value.settingsSection)
    }

    @Test fun lyricsSettingsDeepLinkPublishesOnlyTheFinalLyricsSectionAndNeverTogglesItClosed() = withFixture { fixture ->
        val binding = fixture.binding
        binding.dispatch(ContentEvent.OpenSources)
        assertTrue(binding.state.value.sourcesOpen)
        val observed = mutableListOf<Pair<Boolean, SettingsSection>>()
        val scope = CoroutineScope(Dispatchers.Unconfined)
        try {
            scope.launch(start = CoroutineStart.UNDISPATCHED) {
                binding.state.collect { observed += it.settingsOpen to it.settingsSection }
            }
            observed.clear()
            binding.dispatch(ContentEvent.OpenLyricsSettings)
            assertEquals(listOf(true to SettingsSection.Lyrics), observed)
            assertFalse(binding.state.value.sourcesOpen)

            binding.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.TopBar))
            observed.clear()
            binding.dispatch(ContentEvent.OpenLyricsSettings)
            assertEquals(listOf(true to SettingsSection.Lyrics), observed)
            assertTrue(binding.state.value.settingsOpen)
            binding.dispatch(ContentEvent.OpenLyricsSettings)
            assertTrue("a deep link is not a toggle", binding.state.value.settingsOpen)
        } finally {
            scope.cancel()
        }
    }

    @Test fun immersivePreferencesInvalidateOnlyTheShellCacheAndPreserveIndependentLyricsProjection() {
        val input = ContentState()
        val mapper = ContentUiMapper()
        val unavailable = ContentPorts.SystemSnapshot(false, 0)
        val capabilities = RuntimeCapabilities()
        val initial = mapper.mapShell(input, unavailable, unavailable, capabilities)
        assertTrue(initial.immersiveShowTopBar)
        assertTrue(initial.immersiveShowDock)
        assertTrue(initial.gestureBarReminder)
        input.gestureBarReminder = false
        val noReminder = mapper.mapShell(input, unavailable, unavailable, capabilities)
        assertFalse(noReminder.gestureBarReminder)
        assertNotSame(initial, noReminder)
        val lyrics = mapper.mapLyrics(input)
        input.immersiveShowTopBar = false
        val noTopBar = mapper.mapShell(input, unavailable, unavailable, capabilities)
        assertFalse(noTopBar.immersiveShowTopBar)
        assertTrue(noTopBar.immersiveShowDock)
        assertNotSame(initial, noTopBar)
        input.immersiveShowDock = false
        val hidden = mapper.mapShell(input, unavailable, unavailable, capabilities)
        assertFalse(hidden.immersiveShowDock)
        assertSame(hidden, mapper.mapShell(input.copy(), unavailable, unavailable, capabilities))
        assertSame(lyrics, mapper.mapLyrics(input))
    }

    @Test fun openSettingsRejectsPageMediaControlAndSystemIntentsButPersistsDisplayPreferences() = withFixture { fixture ->
        val binding = fixture.binding
        assertTrue(binding.state.value.media.playbackAvailable)
        assertTrue(binding.state.value.media.nextAvailable)
        assertTrue(binding.state.value.media.sourceAvailable)
        assertTrue(binding.state.value.brightness.available)
        assertTrue(binding.state.value.volume.available)
        for (control in listOf(ControlId.Lock, ControlId.Ventilation, ControlId.Heating, ControlId.RearWash)) {
            assertTrue("the blocked $control intent would otherwise be available", binding.state.value.controls.getValue(control).available)
        }
        assertEquals(PanelPage.Lyrics, binding.state.value.page)
        binding.dispatch(ContentEvent.SettingsTapped)
        val originalUi = binding.state.value
        val originalStore = fixture.store.snapshot()
        val blocked = listOf(
            ContentEvent.PageSelected(PanelPage.Shortcuts), ContentEvent.OpenSources,
            ContentEvent.PlayPause, ContentEvent.NextTrack, ContentEvent.SourceSelected(MediaSource.Usb),
            ContentEvent.ControlTapped(ControlId.Lock), ContentEvent.ControlTapped(ControlId.Ventilation),
            ContentEvent.ControlPowerTapped(ControlId.Ventilation), ContentEvent.ControlAutomaticTapped(ControlId.Heating),
            ContentEvent.ControlLevelChanged(ControlId.Ventilation, 2), ContentEvent.RearWashTapped,
            ContentEvent.BrightnessChanged(.9f), ContentEvent.VolumeChanged(.8f),
        )
        blocked.forEach(binding::dispatch)
        fixture.drain()

        assertEquals(originalUi, binding.state.value)
        val unchanged = fixture.store.snapshot()
        assertEquals(originalStore.pageIndex, unchanged.pageIndex)
        assertEquals(originalStore.locked, unchanged.locked)
        assertEquals(originalStore.ventilationLevel, unchanged.ventilationLevel)
        assertEquals(originalStore.heatingLevel, unchanged.heatingLevel)
        assertEquals(originalStore.pendingVehicleCommand, unchanged.pendingVehicleCommand)
        assertEquals(originalStore.mediaPlaying, unchanged.mediaPlaying)
        assertEquals(originalStore.mediaPlaybackTarget, unchanged.mediaPlaybackTarget)
        assertEquals(originalStore.mediaNextPending, unchanged.mediaNextPending)
        assertEquals(originalStore.mediaSource, unchanged.mediaSource)
        assertEquals(originalStore.pendingSource, unchanged.pendingSource)
        assertEquals(0, fixture.vehicle.requests.get())
        assertEquals(0, fixture.media.playbackRequests.get())
        assertEquals(0, fixture.media.nextRequests.get())
        assertEquals(0, fixture.media.sourceRequests.get())
        assertEquals(0, fixture.system.writes.get())

        val showWeekday = !originalStore.showWeekday
        val showSeconds = !originalStore.showSeconds
        val showTemperature = !originalStore.showIndoorTemperature
        val showBattery = !originalStore.showBattery
        val showCharging = !originalStore.showChargingStatus
        val gestureBarReminder = !originalStore.gestureBarReminder
        binding.dispatch(ContentEvent.ShowWeekdayChanged(showWeekday))
        binding.dispatch(ContentEvent.ShowSecondsChanged(showSeconds))
        binding.dispatch(ContentEvent.ShowIndoorTemperatureChanged(showTemperature))
        binding.dispatch(ContentEvent.ShowBatteryChanged(showBattery))
        binding.dispatch(ContentEvent.ShowChargingStatusChanged(showCharging))
        binding.dispatch(ContentEvent.LyricsFontScaleChanged(1.15f))
        binding.dispatch(ContentEvent.LyricsLineSpacingChanged(2))
        binding.dispatch(ContentEvent.LyricsSpeakerLayoutChanged(false))
        binding.dispatch(ContentEvent.LyricsHighlightChanged(false))
        binding.dispatch(ContentEvent.ImmersiveShowTopBarChanged(false))
        binding.dispatch(ContentEvent.ImmersiveShowDockChanged(false))
        binding.dispatch(ContentEvent.ShowAmbientArtworkChanged(false))
        binding.dispatch(ContentEvent.ShowMediaSourceSwitcherChanged(false))
        binding.dispatch(ContentEvent.DockButtonCountChanged(3))
        binding.dispatch(ContentEvent.UiOpacityChanged(.6f))
        binding.dispatch(ContentEvent.ShowActionFeedbackChanged(false))
        binding.dispatch(ContentEvent.GestureBarReminderChanged(gestureBarReminder))
         binding.dispatch(ContentEvent.LyricsFontSizeChanged(60f))
         binding.dispatch(ContentEvent.LyricsCurrentFontSizeChanged(48f))
         binding.dispatch(ContentEvent.LyricsLineGapChanged(63.6f))
         binding.dispatch(ContentEvent.LyricsAlignmentChanged("center"))
         binding.dispatch(ContentEvent.LyricsColorModeChanged("custom"))
         binding.dispatch(ContentEvent.LyricsCustomColorChanged(0x00112233))
         binding.dispatch(ContentEvent.LyricsCurrentColorModeChanged("system"))
         binding.dispatch(ContentEvent.LyricsCurrentCustomColorChanged(0x00445566))
         binding.dispatch(ContentEvent.LyricsImmersiveFontSizeChanged(191f))
         binding.dispatch(ContentEvent.LyricsImmersiveLineGapChanged(191f))
         assertEquals(60f, binding.state.value.lyricsFontSizeSp, 0f)
         assertEquals(60f, binding.state.value.lyricsCurrentFontSizeSp, 0f)
         assertEquals(64f, binding.state.value.lyricsLineGapDp, 0f)
         assertEquals("center", binding.state.value.lyricsAlignment)
         assertEquals("custom", binding.state.value.lyricsColorMode)
         assertEquals(0xFF112233.toInt(), binding.state.value.lyricsCustomColor)
         assertEquals("system", binding.state.value.lyricsCurrentColorMode)
         assertEquals(0xFF445566.toInt(), binding.state.value.lyricsCurrentCustomColor)
         assertEquals(192f, binding.state.value.lyricsImmersiveFontSizeSp, 0f)
         assertEquals(192f, binding.state.value.lyricsImmersiveLineGapDp, 0f)
        assertTrue(binding.state.value.settingsOpen)
        assertEquals(showWeekday, binding.state.value.showWeekday)
        assertEquals(showSeconds, binding.state.value.showSeconds)
        assertEquals(showTemperature, binding.state.value.showIndoorTemperature)
        assertEquals(showBattery, binding.state.value.showBattery)
        assertEquals(showCharging, binding.state.value.showChargingStatus)
        assertEquals(1.15f, binding.state.value.lyricsFontScale, .001f)
        assertEquals(2, binding.state.value.lyricsLineSpacing)
        assertFalse(binding.state.value.lyricsSpeakerLayout)
        assertFalse(binding.state.value.lyricsHighlight)
        assertFalse(binding.state.value.immersiveShowTopBar)
        assertFalse(binding.state.value.immersiveShowDock)
        assertFalse(binding.state.value.showAmbientArtwork)
        assertFalse(binding.state.value.showMediaSourceSwitcher)
        assertEquals(3, binding.state.value.dockButtonCount)
        assertEquals(.6f, binding.state.value.uiOpacity, .001f)
        assertFalse(binding.state.value.showActionFeedback)
        assertEquals(gestureBarReminder, binding.state.value.gestureBarReminder)
        assertEquals(showWeekday, fixture.store.snapshot().showWeekday)
        assertEquals(showSeconds, fixture.store.snapshot().showSeconds)
        assertEquals(.6f, fixture.store.snapshot().uiOpacity, .001f)
        assertEquals(gestureBarReminder, fixture.store.snapshot().gestureBarReminder)
        val persisted = ContentState()
        ContentPreferenceStore(RuntimeEnvironment.getApplication()).load(persisted)
        assertEquals(showWeekday, persisted.showWeekday)
        assertEquals(showSeconds, persisted.showSeconds)
        assertEquals(showTemperature, persisted.showIndoorTemperature)
        assertEquals(showBattery, persisted.showBattery)
        assertEquals(showCharging, persisted.showChargingStatus)
        assertEquals(1.15f, persisted.lyricsFontScale, .001f)
        assertEquals(2, persisted.lyricsLineSpacing)
        assertFalse(persisted.lyricsSpeakerLayout)
        assertFalse(persisted.lyricsHighlight)
        assertFalse(persisted.immersiveShowTopBar)
        assertFalse(persisted.immersiveShowDock)
        assertFalse(persisted.showAmbientArtwork)
        assertFalse(persisted.showMediaSourceSwitcher)
        assertEquals(3, persisted.dockButtonCount)
        assertEquals(.6f, persisted.uiOpacity, .001f)
        assertFalse(persisted.showActionFeedback)
        assertEquals(gestureBarReminder, persisted.gestureBarReminder)
    }

    @Test fun playbackFailureExpiresAtThreeSecondsAndOrdinaryObservationsDoNotExtendIt() = withFixture { fixture ->
        fixture.rejectPlayback()
        val revision = fixture.binding.state.value.messageRevision
        assertFalse(fixture.binding.state.value.previewMode)
        assertNull(fixture.binding.state.value.media.targetPlaying)
        assertFalse(fixture.binding.state.value.media.playing)

        repeat(2) { index ->
            advance(1_000L)
            fixture.store.updateClock(java.lang.System.currentTimeMillis() + (index + 1L) * 60_000L)
            fixture.store.acceptMediaSnapshot(mediaSnapshot(positionMs = (index + 1L) * 5_000L))
            fixture.drain()
            assertEquals(PLAYBACK_FAILURE, fixture.binding.state.value.message)
            assertEquals("ordinary facts keep the same feedback event", revision, fixture.binding.state.value.messageRevision)
        }
        advance(999L)
        fixture.drain()
        assertEquals(PLAYBACK_FAILURE, fixture.binding.state.value.message)
        advance(1L)
        fixture.drain()
        assertNull(fixture.binding.state.value.message)
        assertEquals("the UI expiry does not rewrite the command result", ContentState.COMMAND_FAILED, fixture.store.snapshot().commandStatus)
        fixture.store.acceptMediaSnapshot(mediaSnapshot(positionMs = 15_000L))
        fixture.drain()
        assertNull("later snapshots do not resurrect the expired result", fixture.binding.state.value.message)
    }

    @Test fun repeatedIdenticalFailureHasANewEventAndAFullNewThreeSecondLifetime() = withFixture { fixture ->
        fixture.rejectPlayback()
        val firstRevision = fixture.binding.state.value.messageRevision
        advance(2_000L)
        fixture.rejectPlayback()
        assertEquals(2, fixture.media.playbackRequests.get())
        assertEquals(PLAYBACK_FAILURE, fixture.binding.state.value.message)
        assertNotEquals(firstRevision, fixture.binding.state.value.messageRevision)

        advance(1_000L)
        fixture.drain()
        assertEquals("the first feedback deadline cannot clear the replacement", PLAYBACK_FAILURE, fixture.binding.state.value.message)
        advance(1_999L)
        fixture.drain()
        assertEquals(PLAYBACK_FAILURE, fixture.binding.state.value.message)
        advance(1L)
        fixture.drain()
        assertNull(fixture.binding.state.value.message)
    }

    @Test fun stopAndRestartClearSettingsAndFeedbackAndRejectAQueuedOldObservation() = withFixture { fixture ->
        // The accepted intent predates Settings; its asynchronous rejection can arrive while the sheet is open.
        fixture.binding.dispatch(ContentEvent.PlayPause)
        fixture.binding.dispatch(ContentEvent.SettingsTapped)
        fixture.binding.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.Lyrics))
        fixture.drain()
        assertTrue(fixture.binding.state.value.settingsOpen)
        assertEquals(PLAYBACK_FAILURE, fixture.binding.state.value.message)

        val producer = Thread { fixture.store.acceptMediaSnapshot(mediaSnapshot(positionMs = 5_000L)) }
        producer.start()
        producer.join(2_000L)
        assertFalse("the old observation was queued before stop", producer.isAlive)
        fixture.binding.stop()
        val stopped = fixture.binding.state.value
        assertFalse(stopped.settingsOpen)
        assertFalse(stopped.sourcesOpen)
        assertNull(stopped.message)
        fixture.binding.dispatch(ContentEvent.SettingsTapped)
        advance(3_100L)
        fixture.drain()
        assertEquals("queued work and the old TTL cannot reactivate a stopped binding", stopped, fixture.binding.state.value)

        fixture.binding.start()
        fixture.drain()
        assertTrue(fixture.binding.active.value)
        assertFalse(fixture.binding.state.value.settingsOpen)
        assertFalse(fixture.binding.state.value.sourcesOpen)
        assertEquals(SettingsSection.Home, fixture.binding.state.value.settingsSection)
        assertNull(fixture.binding.state.value.message)
        assertEquals(1, fixture.media.playbackRequests.get())
        advance(3_100L)
        fixture.store.updateClock(java.lang.System.currentTimeMillis())
        fixture.store.acceptMediaSnapshot(mediaSnapshot(positionMs = 10_000L))
        fixture.drain()
        assertNull(fixture.binding.state.value.message)
        assertFalse(fixture.binding.state.value.settingsOpen)
        assertEquals(1, fixture.media.playbackRequests.get())
    }

    @Test fun repeatedSettingsButtonClicksToggleAndReopenAtHomeWithTwoStepBack() = withFixture { fixture ->
        fixture.binding.dispatch(ContentEvent.SettingsTapped)
        assertTrue(fixture.binding.state.value.settingsOpen)
        assertEquals(SettingsSection.Home, fixture.binding.state.value.settingsSection)
        fixture.binding.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.Lyrics))
        assertEquals(SettingsSection.Lyrics, fixture.binding.state.value.settingsSection)
        fixture.binding.dispatch(ContentEvent.SettingsTapped)
        assertFalse(fixture.binding.state.value.settingsOpen)
        fixture.binding.dispatch(ContentEvent.SettingsTapped)
        assertTrue(fixture.binding.state.value.settingsOpen)
        assertEquals(SettingsSection.Home, fixture.binding.state.value.settingsSection)
        fixture.binding.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.Lyrics))
        fixture.binding.dispatch(ContentEvent.SettingsBack)
        assertTrue(fixture.binding.state.value.settingsOpen)
        assertEquals(SettingsSection.Home, fixture.binding.state.value.settingsSection)
        fixture.binding.dispatch(ContentEvent.SettingsBack)
        assertFalse(fixture.binding.state.value.settingsOpen)
        assertFalse(fixture.binding.state.value.sourcesOpen)
        assertEquals(0, fixture.vehicle.requests.get())
        assertEquals(0, fixture.media.sourceRequests.get())
    }

    @Test fun feedbackDisabledDropsExistingAndNewFailuresWithoutReplayingThemOnEnable() = withFixture { fixture ->
        fixture.rejectPlayback()
        // A programmatic preference change uses the same owner as the Settings event.
        fixture.store.setShowActionFeedback(false)
        assertNull(fixture.binding.state.value.message)
        fixture.binding.dispatch(ContentEvent.PlayPause)
        fixture.drain()
        assertEquals(2, fixture.media.playbackRequests.get())
        assertEquals(ContentState.COMMAND_FAILED, fixture.store.snapshot().commandStatus)
        assertNull(fixture.binding.state.value.message)
        fixture.binding.dispatch(ContentEvent.SettingsTapped)
        fixture.binding.dispatch(ContentEvent.ShowActionFeedbackChanged(true))
        fixture.binding.dispatch(ContentEvent.SettingsDismissed)
        fixture.drain()
        assertTrue(fixture.store.snapshot().showActionFeedback)
        assertNull("enabling feedback must not replay the hidden failure", fixture.binding.state.value.message)
        fixture.rejectPlayback()
        assertEquals(3, fixture.media.playbackRequests.get())
    }

    private fun withFixture(test: (Fixture) -> Unit) {
        val fixture = Fixture()
        try { test(fixture) } finally { fixture.close() }
    }

    private fun advance(milliseconds: Long) = shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(milliseconds))

    private inner class Fixture : AutoCloseable {
        val vehicle = Vehicle()
        val media = Media()
        val system = SystemPort()
        val store = ContentStore(RuntimeEnvironment.getApplication(), vehicle, media, system)
        val binding = ContentBinding(store)

        init {
            store.setPageIndex(1)
            store.acceptVehicleSnapshot(vehicleSnapshot())
            store.acceptMediaSnapshot(mediaSnapshot())
            binding.start()
            drain()
        }

        fun rejectPlayback() {
            binding.dispatch(ContentEvent.PlayPause)
            drain()
            assertEquals(PLAYBACK_FAILURE, binding.state.value.message)
        }

        fun drain() {
            // Executor barriers match the existing runtime tests; feedback timers are exercised only through the main looper.
            val mediaWorker = executor(store, "mediaCommandExecutor")
            val systemWorker = executor(binding, "systemWorker")
            repeat(2) {
                mediaWorker.submit {}.get(2, TimeUnit.SECONDS)
                systemWorker.submit {}.get(2, TimeUnit.SECONDS)
                shadowOf(Looper.getMainLooper()).idle()
            }
        }

        override fun close() {
            binding.close()
            store.destroy()
        }
    }

    private fun executor(owner: Any, name: String) = owner.javaClass.getDeclaredField(name)
        .apply { isAccessible = true }.get(owner) as ExecutorService

    private fun vehicleSnapshot() = ContentPorts.VehicleSnapshot(
        true, false, 25f, 60, 123, ContentState.CHARGE_DEFAULT, 0, 0, 0, Float.NaN, -1,
        0, 0, 0, 0, true, false, true, true, true,
    ).withRearWindowReadback(ControlId.RearWash.id, 0, 1L, false)

    private fun mediaSnapshot(positionMs: Long = 0L) = ContentPorts.MediaSnapshot(
        true, false, MediaSource.Bluetooth.label, false, 1, "设置反馈测试歌曲", "测试作者", true, true,
        null, "settings-feedback-track", "测试专辑", 180_000L, positionMs, SystemClock.elapsedRealtime(),
        0f, "", ContentPorts.MediaSongIdentity.SONG,
    )

    private class Vehicle : ContentPorts.VehiclePort {
        val requests = AtomicInteger()
        override fun isAvailable() = true
        override fun isLockAvailable() = true
        override fun isRearWindowControlAvailable(controlId: String) = controlId == ControlId.RearWash.id
        override fun requestLock(locked: Boolean, requestId: Long): Boolean { requests.incrementAndGet(); return false }
        override fun requestSeatLevel(seatId: String, level: Int, requestId: Long): Boolean { requests.incrementAndGet(); return false }
        override fun requestRearWindow(controlId: String, expectedLevel: Int, targetLevel: Int, requestId: Long, deadlineUptimeMs: Long): Boolean {
            requests.incrementAndGet(); return false
        }
        override fun start(listener: ContentPorts.VehicleSnapshotListener) {}
        override fun stop() {}
    }

    private class Media : ContentPorts.MediaPort {
        val playbackRequests = AtomicInteger()
        val nextRequests = AtomicInteger()
        val sourceRequests = AtomicInteger()
        override fun isAvailable() = true
        override fun isSourceAvailable() = true
        override fun requestPlayback(playing: Boolean): Boolean { playbackRequests.incrementAndGet(); return false }
        override fun requestNext(): Boolean { nextRequests.incrementAndGet(); return false }
        override fun requestSource(source: String): Boolean { sourceRequests.incrementAndGet(); return false }
        override fun start(listener: ContentPorts.MediaSnapshotListener) {}
        override fun stop() {}
    }

    private class SystemPort : ContentPorts.SystemPort {
        val writes = AtomicInteger()
        override fun read(kind: Int) = ContentPorts.SystemSnapshot(true, 25)
        override fun write(kind: Int, percent: Int): Boolean { writes.incrementAndGet(); return false }
    }

    private companion object {
        const val PLAYBACK_FAILURE = "媒体播放命令未发送，请检查媒体会话"
    }
}
