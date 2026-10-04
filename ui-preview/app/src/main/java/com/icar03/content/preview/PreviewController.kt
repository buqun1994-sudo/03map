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
        when (event) {
            is ContentEvent.ScenarioSelected -> {
                cancelPending()
                val old = state.value
                mutableState.value = previewState(event.scenario).copy(dark = old.dark, page = old.page)
            }
            ContentEvent.ToggleTheme -> update { it.copy(dark = !it.dark) }
            is ContentEvent.PageSelected -> update { it.copy(page = event.page) }
            ContentEvent.OpenSources -> update { it.copy(sourcesOpen = true, scenariosOpen = false) }
            ContentEvent.SettingsTapped -> update { it.copy(message = "设置暂不可用") }
            ContentEvent.OpenScenarios -> update { it.copy(scenariosOpen = true, sourcesOpen = false) }
            ContentEvent.DismissSheet -> update { it.copy(sourcesOpen = false, scenariosOpen = false) }
            is ContentEvent.ControlTapped -> requestControl(event.id) { control -> event.id.nextLevel(control.actual) }
            is ContentEvent.ControlPowerTapped -> requestControl(event.id) { control -> event.id.powerToggleLevel(control.actual, control.rememberedLevel) }
            is ContentEvent.ControlAutomaticTapped -> requestControl(event.id) { control -> event.id.automaticToggleLevel(control.actual) }
            is ContentEvent.ControlLevelChanged -> {
                if (event.level in 0..event.id.maxManualLevel) requestControl(event.id) { event.level }
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
            update { it.copy(message = if (failure) "模拟失败 · 已恢复确认值" else "模拟回流已确认 · 未执行真实操作") }
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
        update { s -> s.copy(controls = s.controls.mapValues { it.value.copy(target = null) }, brightness = s.brightness.copy(target = null), volume = s.volume.copy(target = null), media = s.media.copy(targetPlaying = null, targetSource = null), sourcesOpen = false, scenariosOpen = false) }
    }
}
