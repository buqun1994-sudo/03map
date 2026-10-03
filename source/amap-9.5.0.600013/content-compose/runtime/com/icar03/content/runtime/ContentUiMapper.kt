package com.icar03.content.runtime

import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentRegistry
import com.autonavi.amapauto.content.ContentState
import com.icar03.content.ui.*
import com.icar03.content.runtime.lyrics.ContentLyricsCursor
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/** Connection, known readback and a permitted next write are independent capabilities. */
data class RuntimeCapabilities(
    val vehicle: Boolean = false,
    val lock: Boolean = false,
    val source: Boolean = false,
    // Explicit Store-approved cycle targets. A connected Binder alone enables no seat writes.
    val writableSeatControls: Set<String> = emptySet(),
)

class ContentUiMapper(private val locale: Locale = Locale.SIMPLIFIED_CHINESE) {
    private var waitRowLines: List<ContentPorts.LyricsLine>? = null
    private var waitRowDurationMs = -1L
    private var waitRowTimed = false
    private var projectedWaitRows: List<LyricWaitRow> = emptyList()
    private var projectedLineSource: List<ContentPorts.LyricsLine>? = null
    private var projectedLines: List<LyricLine> = emptyList()

    /** Snapshot copies share immutable rows; playback/clock changes never rebuild the song. */
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

    private fun waitRows(state: ContentState): List<LyricWaitRow> {
        if (waitRowLines !== state.lyricsLines || waitRowDurationMs != state.mediaDurationMs || waitRowTimed != state.lyricsTimed) {
            waitRowLines = state.lyricsLines
            waitRowDurationMs = state.mediaDurationMs
            waitRowTimed = state.lyricsTimed
            projectedWaitRows = if (!state.lyricsTimed) emptyList() else {
                ContentLyricsCursor.waitRows(state.lyricsLines, state.mediaDurationMs)
                    .map { LyricWaitRow(it.afterIndex, it.startMs, it.endMs) }
            }
        }
        return projectedWaitRows
    }

    fun map(
        state: ContentState,
        brightness: ContentPorts.SystemSnapshot = ContentPorts.SystemSnapshot(false, 0),
        volume: ContentPorts.SystemSnapshot = ContentPorts.SystemSnapshot(false, 0),
        capabilities: RuntimeCapabilities = RuntimeCapabilities(),
    ): ContentUiState {
        val realVehicle = state.vehicleDataAvailable && !state.vehiclePreview
        val vehicleIdle = state.pendingVehicleCommand.isEmpty()
        val realMedia = state.mediaDataAvailable && !state.mediaPreview
        fun seat(id: String, actual: Int, maxLevel: Int = 3, known: Boolean = actual in 0..maxLevel): ControlState {
            return ControlState(actual = if (realVehicle && known) actual else -1,
                target = state.pendingSeatLevel.takeIf { state.pendingVehicleCommand == id && it in 0..maxLevel },
                available = vehicleIdle && realVehicle && state.seatControlsKnown
                    && id in capabilities.writableSeatControls && known,
                known = realVehicle && known && actual in 0..maxLevel)
        }
        val massage = if (state.massageSwitchKnown && !state.massageActive) 0 else state.massageLevel
        val heating = ContentPorts.VehicleSnapshot.consistentHeatingLevel(
            state.heatingLevel, state.heatingAutoKnown, state.heatingAutoActive)
        val heatingKnown = heating in 0..4
        val steering = state.steeringHeatLevel
        val steeringKnown = steering in 0..3
        val controls = mapOf(
            ControlId.Lock to ControlState(
                actual = if (realVehicle && state.lockKnown) if (state.locked) 1 else 0 else -1,
                target = if (state.pendingVehicleCommand == ContentRegistry.Shortcuts.LOCK) if (state.pendingLocked) 1 else 0 else null,
                available = vehicleIdle && realVehicle && state.lockKnown && capabilities.lock,
                known = realVehicle && state.lockKnown),
            ControlId.Ventilation to seat(ContentRegistry.Shortcuts.SEAT_VENTILATION, state.ventilationLevel),
            ControlId.Heating to seat(ContentRegistry.Shortcuts.SEAT_HEATING, heating, maxLevel = 4, known = heatingKnown),
            ControlId.SteeringHeat to seat(ContentRegistry.Shortcuts.STEERING_HEATING, steering, maxLevel = 3, known = steeringKnown),
            ControlId.Massage to seat(ContentRegistry.Shortcuts.SEAT_MASSAGE, massage,
                known = state.massageSwitchKnown && (massage in 0..3 || state.massageActive)),
        )
        val source = MediaSource.entries.firstOrNull { it.label == ContentRegistry.normalizeMediaSource(state.mediaSource) } ?: MediaSource.Local
        val isSong = realMedia && state.mediaSongIdentity == ContentPorts.MediaSongIdentity.SONG
        val metadataReady = isSong && state.pendingSource.isEmpty()
            && state.mediaRecordingKey.isNotBlank()
            && state.mediaTitle.isNotBlank() && state.mediaTitle != "暂无媒体"
        return ContentUiState(
            previewMode = false, dark = state.themeMode == ContentState.THEME_DARK,
            page = if (ContentRegistry.visiblePageIds().getOrNull(state.pageIndex) == ContentRegistry.Pages.LYRICS) PanelPage.Lyrics else PanelPage.Shortcuts,
            temperature = if (realVehicle && state.temperatureC.isFinite()) "${format(state.temperatureC)}°C" else "--",
            time = if (state.nowMillis > 0) SimpleDateFormat(if (state.showSeconds) "HH:mm:ss" else "HH:mm", locale).format(Date(state.nowMillis)) else "--:--",
            weekday = if (state.showWeekday && state.nowMillis > 0) SimpleDateFormat("EEEE", locale).format(Date(state.nowMillis)) else "",
            range = if (realVehicle && state.rangeRaw >= 0) state.rangeRaw.toString() else "--", rangeUnit = "km",
            batteryPercent = state.batteryPercent.takeIf { realVehicle && it in 0..100 },
            charging = realVehicle && state.chargeState == ContentState.CHARGE_CHARGING,
            batteryDescription = if (realVehicle && state.batteryPercent in 0..100) "电量 ${state.batteryPercent}%" else "电量未知",
            chargeStatus = if (!realVehicle) "充电状态待确认" else when (state.chargeState) {
                ContentState.CHARGE_DEFAULT -> null
                ContentState.CHARGE_PLUGGED -> "已插枪"
                ContentState.CHARGE_SCHEDULED -> "预约充电中"
                ContentState.CHARGE_COMPLETE -> "充电完成"
                ContentState.CHARGE_CHARGING -> buildList {
                    if (state.chargeRemainingMinutes >= 0) add("剩余${state.chargeRemainingMinutes}分钟")
                    if (state.chargePowerKw.isFinite() && state.chargePowerKw > 0) add("${String.format(locale, "%.1f", state.chargePowerKw)}kW")
                }.joinToString("·").ifEmpty { "充电中" }
                else -> "充电状态待确认"
            },
            controls = controls,
            brightness = LevelState(brightness.percent / 100f, available = brightness.available),
            volume = LevelState(volume.percent / 100f, available = volume.available),
            media = MediaState(title = state.mediaTitle.takeIf { metadataReady && it.isNotBlank() },
                artist = state.mediaArtist.takeIf { metadataReady && it.isNotBlank() },
                isSong = isSong,
                playing = realMedia && state.mediaPlaying,
                targetPlaying = when (state.mediaPlaybackTarget) { 0 -> false; 1 -> true; else -> null },
                source = source, targetSource = MediaSource.entries.firstOrNull { it.label == state.pendingSource }, available = realMedia,
                playbackAvailable = realMedia && state.mediaPlaybackAvailable,
                nextAvailable = realMedia && state.mediaNextAvailable, sourceAvailable = capabilities.source),
            lyrics = if (metadataReady) LyricsState(
                recordingKey = state.mediaRecordingKey,
                lines = lines(state),
                activeIndex = state.lyricsActiveIndex,
                // Loading is a song-only state; a stale lyrics callback must not leak into no-media UI.
                loading = isSong && state.lyricsStatus == ContentPorts.LyricsSnapshot.LOADING,
                timelineReady = state.lyricsTimelineReady,
                positionMs = state.lyricsPositionMs, playbackSpeed = state.lyricsPlaybackSpeed,
                capturedAtMs = state.lyricsPositionCapturedAtMs, durationMs = state.mediaDurationMs,
                timed = state.lyricsTimed, scrollIndex = state.lyricsScrollIndex,
                activeIndices = state.lyricsActiveIndices.toList(),
                gapStartMs = state.lyricsGapStartMs, gapEndMs = state.lyricsGapEndMs,
                waitRows = waitRows(state),
                emptyState = when (state.lyricsStatus) {
                    ContentPorts.LyricsSnapshot.NETWORK_ERROR -> LyricsEmptyState.NetworkError
                    ContentPorts.LyricsSnapshot.INSTRUMENTAL -> LyricsEmptyState.Instrumental
                    else -> LyricsEmptyState.NoLyrics
                },
            ) else LyricsState(),
            message = state.commandMessage.takeIf { state.commandStatus == ContentState.COMMAND_FAILED && it.isNotBlank() },
        )
    }

    private fun format(value: Float): String = if (value % 1f == 0f) value.toInt().toString() else String.format(locale, "%.1f", value)
}
