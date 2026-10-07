package com.icar03.content.runtime

import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentRegistry
import com.autonavi.amapauto.content.ContentState
import com.icar03.content.model.LyricPreferenceRules
import com.icar03.content.model.VehicleFeature
import com.icar03.content.runtime.lyrics.ContentLyricsCursor
import com.icar03.content.ui.*
import java.util.Locale

/** Connection, known readback and a permitted next write are independent capabilities. */
data class RuntimeCapabilities(
    val vehicle: Boolean = false,
    val lock: Boolean = false,
    val source: Boolean = false,
    val writableSeatControls: Set<String> = emptySet(),
    val writableFeatures: Set<String> = emptySet(),
)

/** Each domain is projected before publication; a lyrics event never allocates the shell. */
class ContentUiMapper(private val locale: Locale = Locale.SIMPLIFIED_CHINESE) {
    private val clockPresenter = ContentClockPresenter(locale)
    private var waitRowLines: List<ContentPorts.LyricsLine>? = null
    private var waitRowDurationMs = -1L
    private var waitRowTimed = false
    private var projectedWaitRows: List<LyricWaitRow> = emptyList()
    private var projectedLineSource: List<ContentPorts.LyricsLine>? = null
    private var projectedLines: List<LyricLine> = emptyList()
    private var shellSource: ContentState? = null
    private var shellBrightness: ContentPorts.SystemSnapshot? = null
    private var shellVolume: ContentPorts.SystemSnapshot? = null
    private var shellCapabilities: RuntimeCapabilities? = null
    private var shellSystemLevels: Map<SystemQuickControl, ContentPorts.SystemSnapshot> = emptyMap()
    private var shellLyricsSystemAccentColor = LyricPreferenceRules.DEFAULT_SYSTEM_ACCENT_COLOR
     private var shell: ContentUiState? = null
    private var lyricsSource: ContentState? = null
    private var lyrics: LyricsState = LyricsState()
    internal var shellProjectionCount = 0L
        private set
    internal var lyricsProjectionCount = 0L
        private set

    private fun lines(state: ContentState): List<LyricLine> {
        if (projectedLineSource !== state.lyricsLines) {
            projectedLineSource = state.lyricsLines
            projectedLines = state.lyricsLines.map { line -> LyricLine(line.timeMs, line.text, line.translation,
                line.romanization, line.words.map { LyricWord(it.startTimeMs, it.endTimeMs, it.text) },
                line.endTimeMs, line.backgroundWords.map { LyricWord(it.startTimeMs, it.endTimeMs, it.text) },
                LyricSide.entries.getOrElse(line.speakerSide) { LyricSide.Unspecified }) }
        }
        return projectedLines
    }

    private fun duration(state: ContentState): Long =
        if (state.lyricsAnchor.timelineReady) state.lyricsAnchor.durationMs else state.mediaDurationMs

    private fun waitRows(state: ContentState): List<LyricWaitRow> {
        val duration = duration(state)
        if (waitRowLines !== state.lyricsLines || waitRowDurationMs != duration || waitRowTimed != state.lyricsTimed) {
            waitRowLines = state.lyricsLines
            waitRowDurationMs = duration
            waitRowTimed = state.lyricsTimed
            projectedWaitRows = if (!state.lyricsTimed) emptyList() else {
                ContentLyricsCursor.waitRows(state.lyricsLines, duration).map { LyricWaitRow(it.afterIndex, it.startMs, it.endMs) }
            }
        }
        return projectedWaitRows
    }

    private fun song(state: ContentState) = state.mediaDataAvailable && !state.mediaPreview &&
        state.mediaSongIdentity == ContentPorts.MediaSongIdentity.SONG

    private fun metadataReady(state: ContentState) = song(state) && state.pendingSource.isEmpty() &&
        state.mediaRecordingKey.isNotBlank() && state.mediaTitle.isNotBlank() && state.mediaTitle != "暂无媒体"

    fun clock(state: ContentState, nowMillis: Long = state.nowMillis): ClockText =
        clockPresenter.project(nowMillis, state.showSeconds, state.showWeekday)

    internal fun invalidateClock() = clockPresenter.invalidate()

    /** Convenience for previews and complete-snapshot callers. Production subscribes by domain. */
    fun map(
        state: ContentState,
        brightness: ContentPorts.SystemSnapshot = ContentPorts.SystemSnapshot(false, 0),
        volume: ContentPorts.SystemSnapshot = ContentPorts.SystemSnapshot(false, 0),
        capabilities: RuntimeCapabilities = RuntimeCapabilities(),
        lyricsSystemAccentColor: Int = LyricPreferenceRules.DEFAULT_SYSTEM_ACCENT_COLOR,
        systemLevels: Map<SystemQuickControl, ContentPorts.SystemSnapshot> = emptyMap(),
    ): ContentUiState {
        val text = clock(state)
        return mapShell(state, brightness, volume, capabilities, lyricsSystemAccentColor, systemLevels)
            .copy(time = text.time, weekday = text.weekday, lyrics = mapLyrics(state))
    }

    fun mapShell(
        state: ContentState,
        brightness: ContentPorts.SystemSnapshot,
        volume: ContentPorts.SystemSnapshot,
        capabilities: RuntimeCapabilities,
        lyricsSystemAccentColor: Int = LyricPreferenceRules.DEFAULT_SYSTEM_ACCENT_COLOR,
        systemLevels: Map<SystemQuickControl, ContentPorts.SystemSnapshot> = emptyMap(),
    ): ContentUiState {
        val previous = shellSource
        if (previous != null && sameShellFacts(previous, state) &&
            sameSystem(shellBrightness, brightness) && sameSystem(shellVolume, volume) &&
            sameSystemLevels(shellSystemLevels, systemLevels) &&
            shellCapabilities == capabilities && shellLyricsSystemAccentColor == lyricsSystemAccentColor) return shell!!
        shellSource = state.copy()
        shellBrightness = brightness
        shellVolume = volume
        shellCapabilities = capabilities.copy(
            writableSeatControls = capabilities.writableSeatControls.toSet(),
            writableFeatures = capabilities.writableFeatures.toSet(),
        )
        shellSystemLevels = systemLevels.toMap()
        shellLyricsSystemAccentColor = lyricsSystemAccentColor
        shellProjectionCount++
        val realVehicle = state.vehicleDataAvailable && !state.vehiclePreview
        val vehicleIdle = state.pendingVehicleCommand.isEmpty()
        val realMedia = state.mediaDataAvailable && !state.mediaPreview
        val controls = ControlId.entries.associateWith { id ->
            val actual = state.controlLevel(id)
            val readbackKnown = when (id) {
                ControlId.Wiper -> state.wiperKnown
                ControlId.RearWiper -> state.rearWiperKnown
                ControlId.RearWash -> state.rearWashKnown
                ControlId.Lock -> state.lockKnown
                else -> state.seatControlsKnown
            }
            val target = if (state.pendingVehicleCommand != id.id) null else {
                if (id == ControlId.Lock) if (state.pendingLocked) 1 else 0
                else state.pendingSeatLevel.takeIf(id::isLevel)
            }
            ControlState(
                actual = if (realVehicle) actual else -1,
                target = target,
                available = vehicleIdle && realVehicle && if (id == ControlId.Lock) {
                    state.lockKnown && capabilities.lock
                } else readbackKnown && id.id in capabilities.writableSeatControls &&
                    (id.isLevel(actual) || id == ControlId.Massage && state.massageSwitchKnown && state.massageActive),
                known = realVehicle && readbackKnown && id.isLevel(actual),
                rememberedLevel = state.rememberedLevel(id),
            )
        }
        val source = MediaSource.entries.firstOrNull { it.label == ContentRegistry.normalizeMediaSource(state.mediaSource) } ?: MediaSource.Local
        val ready = metadataReady(state)
        val featureStates = VehicleFeature.entries.associateWith { feature ->
            val actual = state.featureLevel(feature.id)
            val target = state.pendingFeatureTarget.takeIf { state.pendingVehicleCommand == feature.id }
            val known = realVehicle && actual >= 0
            val available = realVehicle && vehicleIdle && feature.id in capabilities.writableFeatures &&
                (feature.action || known)
            FeatureState(
                actual = if (realVehicle) actual else -1,
                target = target,
                available = available,
                known = known,
                detail = when {
                    target != null -> "待确认"
                    !known -> "状态未知"
                    feature == VehicleFeature.ExternalDischarge && state.externalDischargeStatusKnown -> "状态已读取"
                    actual == 1 -> "开启"
                    else -> "关闭"
                },
            )
        }
        val centerBrightness = if (realVehicle && state.centerBrightnessKnown) {
            LevelState(((state.centerBrightnessLevel - 1).coerceIn(0, 9)) / 9f, available = vehicleIdle)
        } else LevelState(0f, available = false)
        val projectedSystemLevels = SystemQuickControl.entries.associateWith { id ->
            val snapshot = systemLevels[id] ?: if (id == SystemQuickControl.Volume) volume else ContentPorts.SystemSnapshot(false, 0)
            LevelState(snapshot.percent / 100f, available = snapshot.available && vehicleIdle)
        }
        return ContentUiState(
            previewMode = false, dark = state.themeMode == ContentState.THEME_DARK,
            page = if (ContentRegistry.visiblePageIds().getOrNull(state.pageIndex) == ContentRegistry.Pages.LYRICS) PanelPage.Lyrics else PanelPage.Shortcuts,
            showWeekday = state.showWeekday, showSeconds = state.showSeconds,
            showIndoorTemperature = state.showIndoorTemperature, showBattery = state.showBattery,
            showRange = state.showRange,
             showChargingStatus = state.showChargingStatus,
             showPluggedStatus = state.showPluggedStatus, showScheduledCharging = state.showScheduledCharging,
             showChargingRemainingTime = state.showChargingRemainingTime, showChargingPower = state.showChargingPower,
             lyricsFontScale = state.lyricsFontScale,
                         lyricsLineSpacing = state.lyricsLineSpacing, lyricsFontSizeSp = LyricPreferenceRules.fontSize(state.lyricsFontSizeSp),
             lyricsCurrentFontSizeSp = LyricPreferenceRules.currentFontSize(state.lyricsCurrentFontSizeSp, state.lyricsFontSizeSp),
             lyricsLineGapDp = LyricPreferenceRules.lineGap(state.lyricsLineGapDp),
             lyricsAlignment = LyricPreferenceRules.alignment(state.lyricsAlignment),
             lyricsColorMode = LyricPreferenceRules.colorMode(state.lyricsColorMode),
             lyricsCustomColor = LyricPreferenceRules.opaqueColor(state.lyricsCustomColor),
             lyricsCurrentColorMode = LyricPreferenceRules.colorMode(state.lyricsCurrentColorMode),
             lyricsCurrentCustomColor = LyricPreferenceRules.opaqueColor(state.lyricsCurrentCustomColor),
             lyricsImmersiveFontSizeSp = LyricPreferenceRules.immersiveFontSize(state.lyricsImmersiveFontSizeSp),
              lyricsImmersiveCurrentFontSizeSp = LyricPreferenceRules.immersiveCurrentFontSize(
                  state.lyricsImmersiveCurrentFontSizeSp, state.lyricsImmersiveFontSizeSp),
             lyricsImmersiveLineGapDp = LyricPreferenceRules.immersiveLineGap(state.lyricsImmersiveLineGapDp),
              lyricsShowTranslation = state.lyricsShowTranslation,
             lyricsSystemAccentColor = LyricPreferenceRules.opaqueColor(lyricsSystemAccentColor),
             lyricsSpeakerLayout = state.lyricsSpeakerLayout,
            lyricsHighlight = state.lyricsHighlight,
            immersiveShowTopBar = state.immersiveShowTopBar,
             immersiveTopBarKeepSplit = state.immersiveTopBarKeepSplit,
             immersiveShowDock = state.immersiveShowDock,
            showAmbientArtwork = state.showAmbientArtwork,
            showMediaSourceSwitcher = state.showMediaSourceSwitcher, dockButtonCount = state.dockButtonCount,
            showActionFeedback = state.showActionFeedback,
            gestureBarReminder = state.gestureBarReminder,
             uiOpacity = state.uiOpacity.takeIf { it.isFinite() }?.coerceIn(.20f, 1.0f) ?: 1.0f,
            temperature = if (realVehicle && state.temperatureC.isFinite()) "${format(state.temperatureC)}°C" else "--",
            time = "--:--", weekday = "",
            range = if (realVehicle && state.rangeRaw >= 0) state.rangeRaw.toString() else "--", rangeUnit = "km",
            batteryPercent = state.batteryPercent.takeIf { realVehicle && it in 0..100 },
            charging = realVehicle && state.chargeState == ContentState.CHARGE_CHARGING,
            batteryDescription = if (realVehicle && state.batteryPercent in 0..100) "电量 ${state.batteryPercent}%" else "电量未知",
            chargeStatus = chargeStatus(state, realVehicle),

             controls = controls,
            brightness = centerBrightness,
            volume = projectedSystemLevels.getValue(SystemQuickControl.Volume),
             features = featureStates,
             systemLevels = projectedSystemLevels,
             screenCleanAvailable = realVehicle && state.screenGearKnown && state.screenGearRaw == 11,
            media = MediaState(title = state.mediaTitle.takeIf { ready && it.isNotBlank() },
                artist = state.mediaArtist.takeIf { ready && it.isNotBlank() },
                isSong = song(state), playing = realMedia && state.mediaPlaying,
                targetPlaying = when (state.mediaPlaybackTarget) { 0 -> false; 1 -> true; else -> null },
                source = source, targetSource = MediaSource.entries.firstOrNull { it.label == state.pendingSource }, available = realMedia,
                playbackAvailable = realMedia && state.mediaPlaybackAvailable,
                nextAvailable = realMedia && state.mediaNextAvailable, sourceAvailable = capabilities.source),
            message = state.commandMessage.takeIf { state.commandStatus == ContentState.COMMAND_FAILED && it.isNotBlank() },
        ).also { shell = it }
    }

    fun mapLyrics(state: ContentState): LyricsState {
        val previous = lyricsSource
        if (previous != null && sameLyricsFacts(previous, state)) return lyrics
        lyricsSource = state.copy()
        lyricsProjectionCount++
        val anchor = state.lyricsAnchor
        val canonical = anchor.timelineReady
        val duration = duration(state)
        lyrics = if (metadataReady(state)) LyricsState(
            recordingKey = state.mediaRecordingKey, lines = lines(state), activeIndex = state.lyricsActiveIndex,
            loading = state.lyricsStatus == ContentPorts.LyricsSnapshot.LOADING,
            timelineReady = state.lyricsTimelineReady && state.lyricsTimed,
            positionMs = if (canonical) anchor.basePositionMs else state.lyricsPositionMs,
            playbackSpeed = if (canonical) anchor.speed else state.lyricsPlaybackSpeed,
            capturedAtMs = if (canonical) anchor.capturedAtMs else state.lyricsPositionCapturedAtMs,
            durationMs = duration, timed = state.lyricsTimed, scrollIndex = state.lyricsScrollIndex,
            activeIndices = state.lyricsActiveIndices.toList(), gapStartMs = state.lyricsGapStartMs, gapEndMs = state.lyricsGapEndMs,
            waitRows = waitRows(state),
            emptyState = when (state.lyricsStatus) {
                ContentPorts.LyricsSnapshot.NETWORK_ERROR -> LyricsEmptyState.NetworkError
                ContentPorts.LyricsSnapshot.INSTRUMENTAL -> LyricsEmptyState.Instrumental
                else -> LyricsEmptyState.NoLyrics
            },
            anchorRevision = anchor.revision,
            atEnd = duration > 0L && state.lyricsPositionMs >= duration,
            recordingGeneration = state.mediaRecordingGeneration,
            changingTrack = state.mediaNextPending,
            playbackTrajectory = if (canonical) anchor.trajectory else null,
        ) else LyricsState()
        return lyrics
    }

    private fun sameSystem(a: ContentPorts.SystemSnapshot?, b: ContentPorts.SystemSnapshot) =
        a != null && a.available == b.available && a.percent == b.percent

    private fun sameSystemLevels(
        previous: Map<SystemQuickControl, ContentPorts.SystemSnapshot>,
        current: Map<SystemQuickControl, ContentPorts.SystemSnapshot>,
    ): Boolean = SystemQuickControl.entries.all { id ->
        val a = previous[id]
        val b = current[id]
        a?.available == b?.available && a?.percent == b?.percent
    }

    private fun sameLyricsFacts(a: ContentState, b: ContentState): Boolean =
        metadataReady(a) == metadataReady(b) && a.mediaRecordingKey == b.mediaRecordingKey &&
            a.mediaRecordingGeneration == b.mediaRecordingGeneration && a.mediaNextPending == b.mediaNextPending &&
            a.lyricsLines === b.lyricsLines && a.lyricsStatus == b.lyricsStatus && a.lyricsTimed == b.lyricsTimed &&
            a.lyricsTimelineReady == b.lyricsTimelineReady && a.lyricsAnchor === b.lyricsAnchor &&
            a.lyricsActiveIndex == b.lyricsActiveIndex && a.lyricsScrollIndex == b.lyricsScrollIndex &&
            a.lyricsActiveIndices.contentEquals(b.lyricsActiveIndices) && a.lyricsGapStartMs == b.lyricsGapStartMs &&
            a.lyricsGapEndMs == b.lyricsGapEndMs && duration(a) == duration(b) &&
            (duration(a) > 0L && a.lyricsPositionMs >= duration(a)) == (duration(b) > 0L && b.lyricsPositionMs >= duration(b)) &&
            (a.lyricsAnchor.timelineReady || a.lyricsPositionMs == b.lyricsPositionMs &&
                a.lyricsPlaybackSpeed == b.lyricsPlaybackSpeed && a.lyricsPositionCapturedAtMs == b.lyricsPositionCapturedAtMs)

    private fun sameShellFacts(a: ContentState, b: ContentState): Boolean =
        a.themeMode == b.themeMode && a.pageIndex == b.pageIndex &&
            a.showWeekday == b.showWeekday && a.showSeconds == b.showSeconds &&
            a.showIndoorTemperature == b.showIndoorTemperature && a.showBattery == b.showBattery &&
            a.showRange == b.showRange && a.showChargingStatus == b.showChargingStatus &&
             a.showPluggedStatus == b.showPluggedStatus && a.showScheduledCharging == b.showScheduledCharging &&
             a.showChargingRemainingTime == b.showChargingRemainingTime && a.showChargingPower == b.showChargingPower && a.lyricsFontScale.toBits() == b.lyricsFontScale.toBits() &&
            a.lyricsLineSpacing == b.lyricsLineSpacing &&
             a.lyricsFontSizeSp.toBits() == b.lyricsFontSizeSp.toBits() &&
             a.lyricsCurrentFontSizeSp.toBits() == b.lyricsCurrentFontSizeSp.toBits() &&
             a.lyricsLineGapDp.toBits() == b.lyricsLineGapDp.toBits() &&
             a.lyricsAlignment == b.lyricsAlignment && a.lyricsColorMode == b.lyricsColorMode &&
             a.lyricsCustomColor == b.lyricsCustomColor && a.lyricsCurrentColorMode == b.lyricsCurrentColorMode &&
             a.lyricsCurrentCustomColor == b.lyricsCurrentCustomColor &&
             a.lyricsImmersiveFontSizeSp.toBits() == b.lyricsImmersiveFontSizeSp.toBits() &&
             a.lyricsImmersiveCurrentFontSizeSp.toBits() == b.lyricsImmersiveCurrentFontSizeSp.toBits() &&
             a.lyricsImmersiveLineGapDp.toBits() == b.lyricsImmersiveLineGapDp.toBits() &&
             a.lyricsShowTranslation == b.lyricsShowTranslation &&
             a.lyricsSpeakerLayout == b.lyricsSpeakerLayout &&
            a.lyricsHighlight == b.lyricsHighlight &&
            a.immersiveShowTopBar == b.immersiveShowTopBar && a.immersiveTopBarKeepSplit == b.immersiveTopBarKeepSplit && a.immersiveShowDock == b.immersiveShowDock &&
            a.showAmbientArtwork == b.showAmbientArtwork &&
            a.showMediaSourceSwitcher == b.showMediaSourceSwitcher && a.dockButtonCount == b.dockButtonCount &&
            a.showActionFeedback == b.showActionFeedback && a.gestureBarReminder == b.gestureBarReminder && a.uiOpacity.toBits() == b.uiOpacity.toBits() &&
            a.vehicleDataAvailable == b.vehicleDataAvailable && a.vehiclePreview == b.vehiclePreview &&
            a.temperatureC.toBits() == b.temperatureC.toBits() && a.batteryPercent == b.batteryPercent && a.rangeRaw == b.rangeRaw &&
            a.chargeState == b.chargeState && a.chargeConnectionRaw == b.chargeConnectionRaw &&
             a.chargeBmsRaw == b.chargeBmsRaw && a.chargeScheduleRaw == b.chargeScheduleRaw &&
             a.chargePowerKw.toBits() == b.chargePowerKw.toBits() && a.chargeRemainingMinutes == b.chargeRemainingMinutes &&
            a.pendingVehicleCommand == b.pendingVehicleCommand && a.pendingSeatLevel == b.pendingSeatLevel && a.pendingLocked == b.pendingLocked &&
            a.seatControlsKnown == b.seatControlsKnown && a.lockKnown == b.lockKnown && a.locked == b.locked &&
            a.ventilationLevel == b.ventilationLevel && a.heatingLevel == b.heatingLevel &&
            a.heatingAutoKnown == b.heatingAutoKnown && a.heatingAutoActive == b.heatingAutoActive &&
            a.passengerHeatingLevel == b.passengerHeatingLevel && a.passengerHeatingAutoKnown == b.passengerHeatingAutoKnown &&
            a.passengerHeatingAutoActive == b.passengerHeatingAutoActive && a.steeringHeatLevel == b.steeringHeatLevel &&
            a.massageLevel == b.massageLevel && a.massageSwitchKnown == b.massageSwitchKnown && a.massageActive == b.massageActive &&
            a.wiperLevel == b.wiperLevel && a.wiperKnown == b.wiperKnown &&
             a.rearWiperLevel == b.rearWiperLevel && a.rearWiperKnown == b.rearWiperKnown &&
             a.rearWashLevel == b.rearWashLevel && a.rearWashKnown == b.rearWashKnown &&
             a.rearFogLevel == b.rearFogLevel && a.rearFogKnown == b.rearFogKnown &&
             a.passengerWindowLockLevel == b.passengerWindowLockLevel && a.passengerWindowLockKnown == b.passengerWindowLockKnown &&
             a.wiperMaintenanceLevel == b.wiperMaintenanceLevel && a.wiperMaintenanceKnown == b.wiperMaintenanceKnown &&
             a.leftChildLockLevel == b.leftChildLockLevel && a.leftChildLockKnown == b.leftChildLockKnown &&
             a.rightChildLockLevel == b.rightChildLockLevel && a.rightChildLockKnown == b.rightChildLockKnown &&
             a.wirelessChargingLevel == b.wirelessChargingLevel && a.wirelessChargingKnown == b.wirelessChargingKnown &&
             a.windowVentLevel == b.windowVentLevel && a.windowVentKnown == b.windowVentKnown &&
             a.externalDischargeLevel == b.externalDischargeLevel && a.externalDischargeKnown == b.externalDischargeKnown &&
             a.centerBrightnessLevel == b.centerBrightnessLevel && a.centerBrightnessKnown == b.centerBrightnessKnown &&
             a.wirelessChargingActualLevel == b.wirelessChargingActualLevel && a.wirelessChargingActualKnown == b.wirelessChargingActualKnown &&
             a.windowPositions.contentEquals(b.windowPositions) && a.windowPositionsKnown == b.windowPositionsKnown &&
             a.externalDischargeStatus.contentEquals(b.externalDischargeStatus) && a.externalDischargeStatusKnown == b.externalDischargeStatusKnown &&
             a.screenGearRaw == b.screenGearRaw && a.screenGearKnown == b.screenGearKnown &&
             a.pendingFeatureTarget == b.pendingFeatureTarget &&
             a.rememberedControlLevels == b.rememberedControlLevels &&
            a.mediaDataAvailable == b.mediaDataAvailable && a.mediaPreview == b.mediaPreview && a.mediaSource == b.mediaSource &&
            a.pendingSource == b.pendingSource && a.mediaPlaying == b.mediaPlaying && a.mediaSongIdentity == b.mediaSongIdentity &&
            a.mediaRecordingKey == b.mediaRecordingKey && a.mediaTitle == b.mediaTitle && a.mediaArtist == b.mediaArtist &&
            a.mediaPlaybackAvailable == b.mediaPlaybackAvailable && a.mediaNextAvailable == b.mediaNextAvailable &&
            a.mediaPlaybackTarget == b.mediaPlaybackTarget && a.commandStatus == b.commandStatus && a.commandMessage == b.commandMessage

    private fun chargeStatus(state: ContentState, realVehicle: Boolean): String? {
        if (!state.showPluggedStatus && !state.showScheduledCharging &&
            !state.showChargingRemainingTime && !state.showChargingPower) return null
        if (!realVehicle) return "充电状态待确认".takeIf { state.showPluggedStatus }
        return when (state.chargeState) {
            ContentState.CHARGE_DEFAULT -> null
            ContentState.CHARGE_PLUGGED -> "已插枪".takeIf { state.showPluggedStatus }
            ContentState.CHARGE_SCHEDULED -> "预约充电中".takeIf { state.showScheduledCharging }
            // Completion belongs to the plugged/status switch so it does not reopen a separate completion preference.
            ContentState.CHARGE_COMPLETE -> "充电完成".takeIf { state.showPluggedStatus }
            ContentState.CHARGE_CHARGING -> buildList {
                if (state.showChargingRemainingTime && state.chargeRemainingMinutes >= 0) {
                    add("剩余${state.chargeRemainingMinutes}分钟")
                }
                if (state.showChargingPower && state.chargePowerKw.isFinite() && state.chargePowerKw > 0) {
                    add("充电功率 ${String.format(locale, "%.1f", state.chargePowerKw)}kW")
                }
            }.joinToString("·").takeIf { it.isNotEmpty() }
                ?: "充电中".takeIf {
                    state.showPluggedStatus && (state.showChargingRemainingTime || state.showChargingPower)
                }
            else -> "充电状态待确认".takeIf { state.showPluggedStatus }
        }
    }

    private fun format(value: Float): String = if (value % 1f == 0f) value.toInt().toString() else String.format(locale, "%.1f", value)
}
