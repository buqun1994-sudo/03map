package com.icar03.content.runtime

import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentRegistry
import com.autonavi.amapauto.content.ContentState
import com.icar03.content.ui.*
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/** Read from existing ports; a media session does not imply source switching. */
data class RuntimeCapabilities(val vehicle: Boolean = false, val lock: Boolean = false, val source: Boolean = false)

class ContentUiMapper(private val locale: Locale = Locale.SIMPLIFIED_CHINESE) {
    fun map(
        state: ContentState,
        brightness: ContentPorts.SystemSnapshot = ContentPorts.SystemSnapshot(false, 0),
        volume: ContentPorts.SystemSnapshot = ContentPorts.SystemSnapshot(false, 0),
        capabilities: RuntimeCapabilities = RuntimeCapabilities(),
    ): ContentUiState {
        val realVehicle = state.vehicleDataAvailable && !state.vehiclePreview
        val vehicleIdle = state.pendingVehicleCommand.isEmpty()
        val realMedia = state.mediaDataAvailable && !state.mediaPreview
        fun seat(id: String, actual: Int, known: Boolean = actual in 0..3): ControlState {
            return ControlState(actual = if (realVehicle && known) actual else -1,
                target = state.pendingSeatLevel.takeIf { state.pendingVehicleCommand == id && it in 0..3 },
                available = vehicleIdle && realVehicle && state.seatControlsKnown && capabilities.vehicle && known,
                known = realVehicle && known && actual in 0..3)
        }
        val massage = if (state.massageSwitchKnown && !state.massageActive) 0 else state.massageLevel
        val controls = mapOf(
            ControlId.Lock to ControlState(
                actual = if (realVehicle && state.lockKnown) if (state.locked) 1 else 0 else -1,
                target = if (state.pendingVehicleCommand == ContentRegistry.Shortcuts.LOCK) if (state.pendingLocked) 1 else 0 else null,
                available = vehicleIdle && realVehicle && state.lockKnown && capabilities.lock,
                known = realVehicle && state.lockKnown),
            ControlId.Ventilation to seat(ContentRegistry.Shortcuts.SEAT_VENTILATION, state.ventilationLevel),
            ControlId.Heating to seat(ContentRegistry.Shortcuts.SEAT_HEATING, state.heatingLevel),
            ControlId.Massage to seat(ContentRegistry.Shortcuts.SEAT_MASSAGE, massage,
                state.massageSwitchKnown && (massage in 0..3 || state.massageActive)),
        )
        val source = MediaSource.entries.firstOrNull { it.label == ContentRegistry.normalizeMediaSource(state.mediaSource) } ?: MediaSource.Local
        val metadataReady = realMedia && state.pendingSource.isEmpty()
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
                playing = realMedia && state.mediaPlaying,
                targetPlaying = when (state.mediaPlaybackTarget) { 0 -> false; 1 -> true; else -> null },
                source = source, targetSource = MediaSource.entries.firstOrNull { it.label == state.pendingSource }, available = realMedia,
                playbackAvailable = realMedia && state.mediaPlaybackAvailable,
                nextAvailable = realMedia && state.mediaNextAvailable, sourceAvailable = capabilities.source),
            message = state.commandMessage.takeIf { state.commandStatus == ContentState.COMMAND_FAILED && it.isNotBlank() },
        )
    }

    private fun format(value: Float): String = if (value % 1f == 0f) value.toInt().toString() else String.format(locale, "%.1f", value)
}
