package com.icar03.content.preview

import com.icar03.content.ui.*
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/** Preview only. All calls are serialized on the UI dispatcher; no real adapters exist. */
class PreviewController(private val scope: CoroutineScope, initial: ContentUiState = previewState()) {
    private val mutableState = MutableStateFlow(initial)
    val state: StateFlow<ContentUiState> = mutableState.asStateFlow()
    private val jobs = mutableMapOf<String, Job>()
    private var generation = 0L
    private var active = true
    private fun update(transform: (ContentUiState) -> ContentUiState) { mutableState.value = transform(mutableState.value) }

    fun dispatch(event: ContentEvent) {
        if (state.value.settingsOpen && !event.isSettingsInteraction()) return
        when (event) {
            is ContentEvent.ScenarioSelected -> {
                cancelPending()
                val old = state.value
                mutableState.value = previewState(event.scenario).copy(dark = old.dark, page = old.page)
            }
            ContentEvent.ToggleTheme -> update { it.copy(dark = !it.dark) }
            is ContentEvent.PageSelected -> update { it.copy(page = event.page) }
            ContentEvent.OpenSources -> update { it.copy(sourcesOpen = true, scenariosOpen = false) }
            ContentEvent.SettingsTapped -> update {
                it.copy(
                    settingsOpen = !it.settingsOpen,
                    settingsSection = SettingsSection.TopBar,
                    sourcesOpen = false,
                    scenariosOpen = false,
                    message = null,
                )
            }
            ContentEvent.OpenLyricsSettings -> update { it.copy(settingsOpen = true, settingsSection = SettingsSection.Lyrics, sourcesOpen = false, scenariosOpen = false, message = null) }
            ContentEvent.EnterLyricsImmersive, ContentEvent.ExitLyricsImmersive -> Unit
            is ContentEvent.ImmersiveShowTopBarChanged -> update { it.copy(immersiveShowTopBar = event.value) }
            is ContentEvent.ImmersiveShowDockChanged -> update { it.copy(immersiveShowDock = event.value) }
            ContentEvent.SettingsDismissed -> update { it.copy(settingsOpen = false, message = null) }
            is ContentEvent.SettingsSectionSelected -> update { if (it.settingsOpen) it.copy(settingsSection = event.section) else it }
            is ContentEvent.ShowWeekdayChanged -> update { it.copy(showWeekday = event.value) }
            is ContentEvent.ShowSecondsChanged -> update { it.copy(showSeconds = event.value) }
            is ContentEvent.ShowIndoorTemperatureChanged -> update { it.copy(showIndoorTemperature = event.value) }
            is ContentEvent.ShowBatteryChanged -> update { it.copy(showBattery = event.value) }
            is ContentEvent.ShowChargingStatusChanged -> update { it.copy(showChargingStatus = event.value) }
            is ContentEvent.LyricsFontScaleChanged -> update { it.copy(lyricsFontScale = if (event.value.isFinite()) event.value.coerceIn(.85f, 1.15f) else 1f) }
            is ContentEvent.LyricsLineSpacingChanged -> update { it.copy(lyricsLineSpacing = event.value.coerceIn(0, 2)) }
            is ContentEvent.LyricsSpeakerLayoutChanged -> update { it.copy(lyricsSpeakerLayout = event.value) }
            is ContentEvent.LyricsHighlightChanged -> update { it.copy(lyricsHighlight = event.value) }
            is ContentEvent.ShowAmbientArtworkChanged -> update { it.copy(showAmbientArtwork = event.value) }
            is ContentEvent.ShowMediaSourceSwitcherChanged -> update { it.copy(showMediaSourceSwitcher = event.value) }
            is ContentEvent.DockButtonCountChanged -> update { it.copy(dockButtonCount = event.value.coerceIn(3, 6)) }
            is ContentEvent.ShowActionFeedbackChanged -> update { it.copy(showActionFeedback = event.value, message = if (event.value) it.message else null) }
             is ContentEvent.UiOpacityChanged -> update { it.copy(uiOpacity = if (event.value.isFinite()) event.value.coerceIn(.20f, 1.0f) else 1.0f) }
            ContentEvent.OpenScenarios -> update { it.copy(scenariosOpen = true, sourcesOpen = false) }
            ContentEvent.DismissSheet -> update { it.copy(sourcesOpen = false, scenariosOpen = false, settingsOpen = false) }
            is ContentEvent.ControlTapped -> if (event.id != ControlId.RearWash) requestControl(event.id) { control -> event.id.nextLevel(control.actual) }
            is ContentEvent.ControlPowerTapped -> if (event.id != ControlId.RearWash) requestControl(event.id) { control -> event.id.powerToggleLevel(control.actual, control.rememberedLevel) }
            is ContentEvent.ControlAutomaticTapped -> if (event.id != ControlId.RearWash) requestControl(event.id) { control -> event.id.automaticToggleLevel(control.actual) }
            is ContentEvent.ControlLevelChanged -> {
                if (event.id != ControlId.RearWash && event.level in 0..event.id.maxManualLevel) requestControl(event.id) { event.level }
            }
            ContentEvent.RearWashTapped -> {
                if (active) update { it.copy(message = "预览洗涤脉冲已触发 · 未执行真实操作") }
            }
            is ContentEvent.PlaceholderToggled -> {
                if (active && event.id in listOf(ShortcutId.RearWiper, ShortcutId.RearWash)) update {
                    it.copy(placeholderSwitches = it.placeholderSwitches + (event.id to (it.placeholderSwitches[event.id] != true)))
                }
            }
            is ContentEvent.BrightnessChanged -> changeLevel(true, event.value)
            is ContentEvent.VolumeChanged -> changeLevel(false, event.value)
            ContentEvent.PlayPause -> {
                val media = state.value.media
                if (!media.available || media.title == null || media.pending || !active) return
                update { it.copy(media = media.copy(targetPlaying = !media.playing), message = null) }
                simulate("media") { success -> update { it.copy(media = media.copy(playing = if (success) !media.playing else media.playing)) } }
            }
            is ContentEvent.SourceSelected -> {
                val media = state.value.media
                if (!media.available || media.pending || !active) return
                if (media.source == event.source) { dispatch(ContentEvent.DismissSheet); return }
                update { it.copy(sourcesOpen = false, media = media.copy(targetSource = event.source), message = null) }
                simulate("media") { success -> update { it.copy(media = media.copy(source = if (success) event.source else media.source)) } }
            }
            ContentEvent.NextTrack -> {
                val media = state.value.media
                if (!media.available || media.title == null || media.pending || !active) return
                update { it.copy(media = media.copy(targetPlaying = media.playing), message = null) }
                simulate("media") { success -> update { it.copy(media = media.copy(title = if (success) if (media.title == "沿途的风") "下一段旅程" else "沿途的风" else media.title)) } }
            }
        }
    }

    private fun requestControl(id: ControlId, target: (ControlState) -> Int) {
        val control = state.value.controls.getValue(id)
        if (!active || !control.available || !control.known || control.pending || !id.isLevel(control.actual)) return
        val next = target(control)
        if (!id.isLevel(next) || next == control.actual) return
        update { it.copy(controls = it.controls + (id to control.copy(target = next)), message = null) }
        simulate("control-$id") { success ->
            val actual = if (success) next else control.actual
            val remembered = if (success && id.isManualLevel(actual)) actual else control.rememberedLevel
            update { s -> s.copy(controls = s.controls + (id to control.copy(actual = actual, rememberedLevel = remembered))) }
        }
    }

    private fun changeLevel(brightness: Boolean, value: Float) {
        if (!value.isFinite() || !active) return
        val level = if (brightness) state.value.brightness else state.value.volume
        if (!level.available || level.target != null) return
        val target = value.coerceIn(0f, 1f)
        if (target == level.actual) return
        update { if (brightness) it.copy(brightness = level.copy(target = target), message = null) else it.copy(volume = level.copy(target = target), message = null) }
        simulate(if (brightness) "brightness" else "volume") { success ->
            val result = level.copy(actual = if (success) target else level.actual)
            update { if (brightness) it.copy(brightness = result) else it.copy(volume = result) }
        }
    }

    private fun simulate(key: String, finish: (Boolean) -> Unit) {
        val token = generation
        val failure = state.value.scenario == PreviewScenario.Failure
        jobs[key]?.cancel()
        jobs[key] = scope.launch {
            // CancellationException is intentionally not caught: cancel is never success/failure.
            delay(900)
            if (generation != token || !active) return@launch
            finish(!failure)
            update { it.copy(message = if (!it.showActionFeedback) null else if (failure) "模拟失败 · 已恢复确认值" else "模拟回流已确认 · 未执行真实操作") }
            jobs.remove(key)
        }
    }

    /** ON_STOP and disposal cancel work and restore actual values, without late callbacks. */
    fun pause() { active = false; cancelPending() }
    fun resume() { active = true }
    fun close() = pause()
    private fun cancelPending() {
        generation++
        jobs.values.forEach { it.cancel() }; jobs.clear()
        update { s -> s.copy(controls = s.controls.mapValues { it.value.copy(target = null) }, brightness = s.brightness.copy(target = null), volume = s.volume.copy(target = null), media = s.media.copy(targetPlaying = null, targetSource = null), sourcesOpen = false, scenariosOpen = false, settingsOpen = false, message = null) }
    }
}
