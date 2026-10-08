package com.icar03.content.preview

import com.icar03.content.ui.*
import com.icar03.content.model.LyricPreferenceRules
import com.icar03.content.model.ContentMediaControlPolicy
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
        if (!state.value.settingsOpen && event.isSettingsInteraction() && event !in setOf(
                ContentEvent.SettingsTapped, ContentEvent.OpenLyricsSettings,
                ContentEvent.SettingsBack, ContentEvent.SettingsDismissed, ContentEvent.DismissSheet)) return
        if (state.value.settingsOpen && !event.isSettingsInteraction()) return
        if (state.value.settingsCollapsed && event !in setOf(ContentEvent.SettingsCollapseTapped,
                ContentEvent.SettingsRestored, ContentEvent.SettingsTapped, ContentEvent.SettingsBack,
                ContentEvent.SettingsDismissed, ContentEvent.OpenLyricsSettings, ContentEvent.DismissSheet)) return
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
                    settingsCollapsed = false,
                    settingsSection = SettingsSection.Home,
                    sourcesOpen = false,
                    scenariosOpen = false,
                    message = null,
                )
            }
            ContentEvent.SettingsBack -> update {
                if (!it.settingsOpen) it
                else if (it.settingsSection == SettingsSection.Home) it.copy(settingsOpen = false, settingsCollapsed = false, message = null)
                else it.copy(settingsSection = SettingsSection.Home, settingsCollapsed = false, message = null)
            }
            ContentEvent.OpenLyricsSettings -> update { it.copy(settingsOpen = true, settingsCollapsed = false, settingsSection = SettingsSection.Lyrics, sourcesOpen = false, scenariosOpen = false, message = null) }
            ContentEvent.EnterLyricsImmersive, ContentEvent.ExitLyricsImmersive -> Unit
            is ContentEvent.ImmersiveShowTopBarChanged -> update { it.copy(immersiveShowTopBar = event.value) }
            is ContentEvent.ImmersiveTopBarKeepSplitChanged -> update { it.copy(immersiveTopBarKeepSplit = event.value) }
            is ContentEvent.ImmersiveShowDockChanged -> update { it.copy(immersiveShowDock = event.value) }
            ContentEvent.SettingsDismissed -> update { it.copy(settingsOpen = false, settingsCollapsed = false, message = null) }
            ContentEvent.SettingsCollapseTapped -> update {
                if (it.settingsOpen && it.page == PanelPage.Lyrics) it.copy(settingsCollapsed = !it.settingsCollapsed) else it
            }
            ContentEvent.SettingsRestored -> update { it.copy(settingsCollapsed = false) }
            is ContentEvent.SettingsSectionSelected -> update { if (it.settingsOpen) it.copy(settingsSection = event.section) else it }
            is ContentEvent.ShowWeekdayChanged -> update { it.copy(showWeekday = event.value) }
            is ContentEvent.ShowSecondsChanged -> update { it.copy(showSeconds = event.value) }
            is ContentEvent.ShowIndoorTemperatureChanged -> update { it.copy(showIndoorTemperature = event.value) }
            is ContentEvent.ShowBatteryChanged -> update { it.copy(showBattery = event.value) }
            is ContentEvent.ShowRangeChanged -> update { it.copy(showRange = event.value) }
            is ContentEvent.ShowChargingStatusChanged -> update {
                it.copy(
                    showChargingStatus = event.value,
                    showPluggedStatus = event.value,
                    showScheduledCharging = event.value,
                    showChargingRemainingTime = event.value,
                    showChargingPower = event.value,
                )
            }
            is ContentEvent.ShowPluggedStatusChanged -> update { it.copy(showPluggedStatus = event.value) }
            is ContentEvent.ShowScheduledChargingChanged -> update { it.copy(showScheduledCharging = event.value) }
            is ContentEvent.ShowChargingRemainingTimeChanged -> update { it.copy(showChargingRemainingTime = event.value) }
            is ContentEvent.ShowChargingPowerChanged -> update { it.copy(showChargingPower = event.value) }
            is ContentEvent.LyricsFontScaleChanged -> update {
                val scale = if (event.value.isFinite()) event.value.coerceIn(.85f, 1.15f) else 1f
                val normal = LyricPreferenceRules.fontSize(40f * scale)
                val immersiveNormal = LyricPreferenceRules.immersiveFontSize(40f * scale * 3f)
                it.copy(
                    lyricsFontScale = scale,
                    lyricsFontSizeSp = normal,
                    lyricsCurrentFontSizeSp = LyricPreferenceRules.currentFontSize(48f * scale, normal),
                    lyricsImmersiveFontSizeSp = immersiveNormal,
                    lyricsImmersiveCurrentFontSizeSp = LyricPreferenceRules.immersiveCurrentFontSize(
                        it.lyricsImmersiveCurrentFontSizeSp, immersiveNormal),
                )
            }
            is ContentEvent.LyricsFontSizeChanged -> update {
                val normal = LyricPreferenceRules.fontSize(event.value)
                it.copy(
                    lyricsFontSizeSp = normal,
                    lyricsCurrentFontSizeSp = LyricPreferenceRules.currentFontSize(it.lyricsCurrentFontSizeSp, normal),
                )
            }
            is ContentEvent.LyricsCurrentFontSizeChanged -> update {
                it.copy(lyricsCurrentFontSizeSp = LyricPreferenceRules.currentFontSize(event.value, it.lyricsFontSizeSp))
            }
            is ContentEvent.LyricsLineGapChanged -> update {
                it.copy(lyricsLineGapDp = LyricPreferenceRules.lineGap(event.value))
            }
            is ContentEvent.LyricsAlignmentChanged -> update {
                it.copy(lyricsAlignment = LyricPreferenceRules.alignment(event.value))
            }
            is ContentEvent.LyricsColorModeChanged -> update {
                it.copy(lyricsColorMode = LyricPreferenceRules.colorMode(event.value))
            }
            is ContentEvent.LyricsCustomColorChanged -> update {
                it.copy(lyricsCustomColor = LyricPreferenceRules.opaqueColor(event.value))
            }
            is ContentEvent.LyricsCurrentColorModeChanged -> update {
                it.copy(lyricsCurrentColorMode = LyricPreferenceRules.colorMode(event.value))
            }
            is ContentEvent.LyricsCurrentCustomColorChanged -> update {
                it.copy(lyricsCurrentCustomColor = LyricPreferenceRules.opaqueColor(event.value))
            }
            is ContentEvent.LyricsImmersiveFontSizeChanged -> update {
                val immersiveNormal = LyricPreferenceRules.immersiveFontSize(event.value)
                it.copy(
                    lyricsImmersiveFontSizeSp = immersiveNormal,
                    lyricsImmersiveCurrentFontSizeSp = LyricPreferenceRules.immersiveCurrentFontSize(
                        it.lyricsImmersiveCurrentFontSizeSp, immersiveNormal),
                )
            }
            is ContentEvent.LyricsImmersiveCurrentFontSizeChanged -> update {
                it.copy(lyricsImmersiveCurrentFontSizeSp = LyricPreferenceRules.immersiveCurrentFontSize(
                    event.value, it.lyricsImmersiveFontSizeSp))
            }
            is ContentEvent.LyricsImmersiveLineGapChanged -> update {
                it.copy(lyricsImmersiveLineGapDp = LyricPreferenceRules.immersiveLineGap(event.value))
            }
            is ContentEvent.LyricsLineSpacingChanged -> update {
                val spacing = event.value.coerceIn(0, 2)
                val gap = when (spacing) { 0 -> 28f * .75f; 2 -> 28f * 1.35f; else -> 28f }
                it.copy(
                    lyricsLineSpacing = spacing,
                    lyricsLineGapDp = LyricPreferenceRules.lineGap(gap),
                    lyricsImmersiveLineGapDp = LyricPreferenceRules.immersiveLineGap(gap * 3f),
                )
            }
            is ContentEvent.LyricsSpeakerLayoutChanged -> update { it.copy(lyricsSpeakerLayout = event.value) }
            is ContentEvent.LyricsShowTranslationChanged -> update { it.copy(lyricsShowTranslation = event.value) }
            is ContentEvent.LyricsHighlightChanged -> update { it.copy(lyricsHighlight = event.value) }
            ContentEvent.LyricsDefaultsRequested -> update {
                val defaults = ContentUiState()
                it.copy(
                    lyricsFontScale = defaults.lyricsFontScale,
                    lyricsLineSpacing = defaults.lyricsLineSpacing,
                    lyricsFontSizeSp = defaults.lyricsFontSizeSp,
                    lyricsCurrentFontSizeSp = defaults.lyricsCurrentFontSizeSp,
                    lyricsLineGapDp = defaults.lyricsLineGapDp,
                    lyricsAlignment = defaults.lyricsAlignment,
                    lyricsColorMode = defaults.lyricsColorMode,
                    lyricsCustomColor = defaults.lyricsCustomColor,
                    lyricsCurrentColorMode = defaults.lyricsCurrentColorMode,
                    lyricsCurrentCustomColor = defaults.lyricsCurrentCustomColor,
                    lyricsImmersiveFontSizeSp = defaults.lyricsImmersiveFontSizeSp,
                    lyricsImmersiveCurrentFontSizeSp = defaults.lyricsImmersiveCurrentFontSizeSp,
                    lyricsImmersiveLineGapDp = defaults.lyricsImmersiveLineGapDp,
                    lyricsSpeakerLayout = defaults.lyricsSpeakerLayout,
                    lyricsShowTranslation = defaults.lyricsShowTranslation,
                    lyricsHighlight = defaults.lyricsHighlight,
                    lyricsProviderSettings = it.lyricsProviderSettings.copy(preferredPlatform = "auto"),
                )
            }
            is ContentEvent.ShowAmbientArtworkChanged -> update { it.copy(showAmbientArtwork = event.value) }
            is ContentEvent.ShowMediaSourceSwitcherChanged -> update { it.copy(showMediaSourceSwitcher = event.value) }
            is ContentEvent.DockButtonCountChanged -> update { it.copy(dockButtonCount = event.value.coerceIn(3, 6)) }
            is ContentEvent.ShowActionFeedbackChanged -> update { it.copy(showActionFeedback = event.value, message = if (event.value) it.message else null) }
            is ContentEvent.AutoCloseSettingsOnDriveChanged -> update { it.copy(autoCloseSettingsOnDrive = event.value) }
            is ContentEvent.GestureBarReminderChanged -> update { it.copy(gestureBarReminder = event.value) }
              is ContentEvent.UiOpacityChanged -> update { it.copy(uiOpacity = if (event.value.isFinite()) event.value.coerceIn(.20f, 1.0f) else 1.0f) }
            ContentEvent.OpenScenarios -> update { it.copy(scenariosOpen = true, sourcesOpen = false) }
            is LyricsPlatformSelected -> if (active && state.value.lyricsProviderSettings.available) update {
                it.copy(lyricsProviderSettings = it.lyricsProviderSettings.copy(preferredPlatform = event.id))
            }
            AppleMusicConnectRequested, AppleMusicDisconnectRequested -> if (active) update {
                it.copy(message = "预览不连接 Apple Music 账号 · 请使用正式地图设置")
            }
            AppleMusicLoginDismissed -> Unit
            ContentEvent.DismissSheet -> update { it.copy(sourcesOpen = false, scenariosOpen = false, settingsOpen = false, settingsCollapsed = false) }
            is ContentEvent.ControlTapped -> if (event.id != ControlId.RearWash) requestControl(event.id) { control -> event.id.nextLevel(control.actual) }
            is ContentEvent.ControlPowerTapped -> if (event.id != ControlId.RearWash) requestControl(event.id) { control -> event.id.powerToggleLevel(control.actual, control.rememberedLevel) }
            is ContentEvent.ControlAutomaticTapped -> if (event.id != ControlId.RearWash) requestControl(event.id) { control -> event.id.automaticToggleLevel(control.actual) }
            is ContentEvent.ControlLevelChanged -> {
                if (event.id != ControlId.RearWash && event.level in 0..event.id.maxManualLevel) requestControl(event.id) { event.level }
            }
            is ContentEvent.FeatureTapped -> {
                 val feature = event.id.feature ?: return
                 val current = state.value.features[feature] ?: return
                 if (!active || !current.available || current.pending) return
                 val target = if (feature.action) 1 else if (current.actual == 1) 0 else 1
                 update { it.copy(features = it.features + (feature to current.copy(target = target)), message = null) }
                 simulate("feature-${feature.id}") { success ->
                     update { snapshot ->
                         snapshot.copy(features = snapshot.features + (feature to current.copy(
                             actual = if (success) target else current.actual,
                             target = null, known = !feature.action || success,
                         )))
                     }
                 }
             }
             ContentEvent.ScreenCleanTapped -> {
                 if (active && (state.value.screenCleanAvailable)) {
                     update { it.copy(message = "预览清洁屏幕已触发 · 未执行真实操作") }
                 }
             }
             ContentEvent.RearWashTapped -> {
                if (active) update { it.copy(message = "预览洗涤脉冲已触发 · 未执行真实操作") }
            }
            is ContentEvent.PlaceholderToggled -> {
                if (active && event.id in listOf(ShortcutId.RearWiper, ShortcutId.RearWash)) update {
                    it.copy(placeholderSwitches = it.placeholderSwitches + (event.id to (it.placeholderSwitches[event.id] != true)))
                }
            }
            is ContentEvent.SystemVolumeChanged -> changeSystemLevel(event.id, event.value)
             is ContentEvent.BrightnessChanged -> changeLevel(true, event.value)
            is ContentEvent.VolumeChanged -> changeLevel(false, event.value)
            ContentEvent.PlayPause -> {
                val media = state.value.media
                if (!media.available || !media.playbackAvailable || media.title == null || media.pending || !active) return
                update { it.copy(media = media.copy(targetPlaying = !media.playing), message = null) }
                simulate("media") { success -> update { it.copy(media = media.copy(playing = if (success) !media.playing else media.playing)) } }
            }
            is ContentEvent.SourceSelected -> {
                val media = state.value.media
                if (!media.available || media.pending || !active) return
                if (media.source == event.source) { dispatch(ContentEvent.DismissSheet); return }
                update { it.copy(sourcesOpen = false, media = media.copy(targetSource = event.source), message = null) }
                simulate("media") { success ->
                    val confirmed = if (success) event.source else media.source
                    val canControl = ContentMediaControlPolicy.acceptsCommands(confirmed.label)
                    update { it.copy(media = if (success) media.copy(source = confirmed,
                        playbackAvailable = media.available && canControl, nextAvailable = media.available && canControl) else media) }
                }
            }
            ContentEvent.NextTrack -> {
                val media = state.value.media
                if (!media.available || !media.nextAvailable || media.title == null || media.pending || !active) return
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

    private fun changeSystemLevel(id: SystemQuickControl, value: Float) {
        if (!value.isFinite() || !active) return
        val level = state.value.systemLevels[id] ?: return
        if (!level.available || level.target != null) return
        val target = value.coerceIn(0f, 1f)
        if (target == level.actual) return
        update { it.copy(systemLevels = it.systemLevels + (id to level.copy(target = target)), message = null) }
        simulate("system-${id.name}") { success ->
            update { snapshot -> snapshot.copy(systemLevels = snapshot.systemLevels + (id to level.copy(actual = if (success) target else level.actual))) }
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
        update { s -> s.copy(controls = s.controls.mapValues { it.value.copy(target = null) }, brightness = s.brightness.copy(target = null), volume = s.volume.copy(target = null), media = s.media.copy(targetPlaying = null, targetSource = null), sourcesOpen = false, scenariosOpen = false, settingsOpen = false, settingsCollapsed = false, settingsSection = SettingsSection.Home, message = null) }
    }
}
