package com.icar03.content.ui

/** Pure presentation contract: no Android, vendor IDs, permissions or business ports. */
enum class ControlId(val label: String) { Lock("车锁"), Ventilation("通风"), Heating("加热"), Massage("按摩") }
enum class ShortcutId(val label: String, val control: ControlId? = null) {
    Lock("车锁", ControlId.Lock), SteeringHeat("方向盘加热"),
    Ventilation("通风", ControlId.Ventilation), Heating("加热", ControlId.Heating),
    Massage("按摩", ControlId.Massage), Settings("设置")
}
enum class PanelPage { Shortcuts, Lyrics }
enum class PreviewScenario(val label: String) {
    Ready("日常预览"), NoData("无数据"), Unavailable("能力不可用"), Failure("失败回弹"), Pending("待确认"), Playing("正在播放"), SourceMenu("来源菜单")
}
enum class MediaSource(val label: String) {
    Bluetooth("蓝牙音乐"), AiMusic("爱趣听"), CloudMusic("网易云音乐"), Usb("USB音乐"), Local("本机音乐")
}
data class ControlState(val actual: Int = 0, val target: Int? = null, val available: Boolean = true, val known: Boolean = true) {
    val displayed: Int get() = target ?: actual
    val pending: Boolean get() = target != null
}
data class LevelState(val actual: Float, val target: Float? = null, val available: Boolean = true) {
    val displayed: Float get() = target ?: actual
}
data class MediaState(
    val title: String? = "沿途的风", val artist: String? = "独立预览 · 示例音轨",
    val playing: Boolean = false, val isSong: Boolean = false, val targetPlaying: Boolean? = null,
    val source: MediaSource = MediaSource.Bluetooth, val targetSource: MediaSource? = null,
    val available: Boolean = true,
    val playbackAvailable: Boolean = available, val nextAvailable: Boolean = available,
    val sourceAvailable: Boolean = available,
) { val pending: Boolean get() = targetPlaying != null || targetSource != null }
data class LyricLine(val timeMs: Long, val text: String, val translation: String = "")
data class LyricsState(
    val recordingKey: String = "", val lines: List<LyricLine> = emptyList(),
    val activeIndex: Int = -1, val loading: Boolean = false, val timelineReady: Boolean = false,
)
data class ContentUiState(
    val dark: Boolean = false, val page: PanelPage = PanelPage.Shortcuts,
    val scenario: PreviewScenario = PreviewScenario.Ready,
    val temperature: String = "25°", val time: String = "12:24", val range: String = "366",
    val controls: Map<ControlId, ControlState> = ControlId.entries.associateWith { ControlState(if (it == ControlId.Lock) 1 else 0) },
    val brightness: LevelState = LevelState(.65f), val volume: LevelState = LevelState(.38f),
    val media: MediaState = MediaState(), val lyrics: LyricsState = LyricsState(), val sourcesOpen: Boolean = false,
    val scenariosOpen: Boolean = false, val message: String? = null,
    val previewMode: Boolean = true, val weekday: String = "星期三", val rangeUnit: String = "km",
    val chargeStatus: String? = null, val batteryDescription: String = "电量未知", val batteryPercent: Int? = null, val charging: Boolean = false,
)
sealed interface ContentEvent {
    data class ControlTapped(val id: ControlId) : ContentEvent
    data class BrightnessChanged(val value: Float) : ContentEvent
    data class VolumeChanged(val value: Float) : ContentEvent
    data object PlayPause : ContentEvent
    data object NextTrack : ContentEvent
    data class SourceSelected(val source: MediaSource) : ContentEvent
    data class PageSelected(val page: PanelPage) : ContentEvent
    data class ScenarioSelected(val scenario: PreviewScenario) : ContentEvent
    data object ToggleTheme : ContentEvent
    data object OpenSources : ContentEvent
    data object OpenScenarios : ContentEvent
    data object SettingsTapped : ContentEvent
    data object DismissSheet : ContentEvent
}

/** Fixtures are labeled preview data, never inferred vehicle state. */
fun previewState(scenario: PreviewScenario = PreviewScenario.Ready): ContentUiState {
    val base = ContentUiState(scenario = scenario)
    return when (scenario) {
        PreviewScenario.NoData -> base.copy(temperature = "--", range = "--", media = MediaState(title = null, artist = null, available = false), controls = base.controls.mapValues { it.value.copy(available = false) }, brightness = base.brightness.copy(available = false), volume = base.volume.copy(available = false))
        PreviewScenario.Unavailable -> base.copy(controls = base.controls.mapValues { it.value.copy(available = false) }, brightness = base.brightness.copy(available = false), volume = base.volume.copy(available = false), media = base.media.copy(available = false), message = "能力不可用 · 未连接任何车辆或媒体服务")
        PreviewScenario.Failure -> base.copy(message = "失败演练 · 下一次操作将在 900ms 后回弹")
        PreviewScenario.Pending -> base.copy(controls = base.controls + (ControlId.Ventilation to ControlState(actual = 0, target = 2)), message = "冻结待确认样本 · 切换场景可取消")
        PreviewScenario.Playing -> base.copy(media = base.media.copy(playing = true))
        PreviewScenario.SourceMenu -> base.copy(sourcesOpen = true)
        PreviewScenario.Ready -> base
    }
}
