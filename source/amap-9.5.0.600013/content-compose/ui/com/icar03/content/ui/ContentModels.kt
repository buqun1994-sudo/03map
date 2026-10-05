package com.icar03.content.ui

/** Pure presentation contract: no Android, vendor IDs, permissions or business ports. */
/** The shared domain definition also supplies stable presentation labels. */
typealias ControlId = com.icar03.content.model.VehicleControl
/** Four reusable presentations. State and commands are supplied by the owner. */
enum class QuickControlType { DynamicIconSwitch, ContinuousVertical, OrdinaryToggle, SteppedVertical }
enum class QuickControlPlacement { ButtonRows, LowerToggles, Vertical }
enum class ShortcutId(
    val control: ControlId? = null,
    val type: QuickControlType = QuickControlType.DynamicIconSwitch,
    val placement: QuickControlPlacement = QuickControlPlacement.ButtonRows,
    private val title: String? = null,
) {
    Lock(ControlId.Lock), SteeringHeat(ControlId.SteeringHeat),
    Ventilation(ControlId.Ventilation), Heating(ControlId.Heating),
    PassengerHeating(ControlId.PassengerHeating), Massage(ControlId.Massage),
    Settings(type = QuickControlType.OrdinaryToggle, title = "设置"),
    AutoWiper(ControlId.Wiper, QuickControlType.OrdinaryToggle, title = "自动雨刮器"),
    RearWiper(ControlId.RearWiper, QuickControlType.OrdinaryToggle, placement = QuickControlPlacement.LowerToggles, title = "后窗雨刮器"),
    RearWash(ControlId.RearWash, QuickControlType.OrdinaryToggle, placement = QuickControlPlacement.LowerToggles, title = "后窗洗涤"),
    Wiper(ControlId.Wiper, QuickControlType.SteppedVertical, QuickControlPlacement.Vertical);
    val label: String get() = title ?: requireNotNull(control).label
}
enum class SystemQuickControl(val label: String) {
    Brightness("屏幕亮度"), Volume("媒体音量");
    val type: QuickControlType get() = QuickControlType.ContinuousVertical
}

/** Grid placement is metadata, independent of Dock membership. */
object ShortcutGrid {
    val buttons = ShortcutId.entries.filter { it.placement == QuickControlPlacement.ButtonRows }
    val lowerToggles = ShortcutId.entries.filter { it.placement == QuickControlPlacement.LowerToggles }
    val verticals = ShortcutId.entries.filter { it.placement == QuickControlPlacement.Vertical }
}

/** Dock membership is explicit; new shortcut-page entries never add Dock buttons. */
object DockShortcuts {
    const val MAX_BUTTONS = 6
    val items: List<ShortcutId> = checkedItems(listOf(
        ShortcutId.Lock, ShortcutId.Wiper, ShortcutId.Ventilation,
        ShortcutId.Heating, ShortcutId.Massage, ShortcutId.Settings,
    ))

    internal fun checkedItems(items: List<ShortcutId>): List<ShortcutId> {
        val copy = items.toList()
        require(copy.size in 1..MAX_BUTTONS) { "Dock must contain at most $MAX_BUTTONS buttons including the lock" }
        require(copy.distinct().size == copy.size) { "Dock buttons must be unique" }
        require(copy.first() == ShortcutId.Lock && copy.count { it.control == ControlId.Lock } == 1) {
            "Dock must start with its only lock button"
        }
        return java.util.Collections.unmodifiableList(copy)
    }
}

enum class PanelPage { Shortcuts, Lyrics }
enum class SettingsSection(val label: String, val description: String) {
    TopBar("顶栏", "时间、温度、电量和充电信息"),
    Lyrics("歌词", "字号、行距和声部呈现"),
    Artwork("封面氛围", "歌曲封面背景的显示方式"),
    Media("媒体", "媒体卡的附加入口"),
    Layout("Dock", "底部快捷按钮的显示数量"),
    Interaction("交互", "操作结果提示")
}
enum class PreviewScenario(val label: String) {
    Ready("日常预览"), NoData("无数据"), Unavailable("能力不可用"), Failure("失败回弹"), Pending("待确认"), Playing("正在播放"), SourceMenu("来源菜单")
}
enum class MediaSource(val label: String) {
    Bluetooth("蓝牙音乐"), AiMusic("爱趣听"), CloudMusic("网易云音乐"), Usb("USB音乐"), Local("本机音乐")
}
data class ControlState(val actual: Int = 0, val target: Int? = null, val available: Boolean = true, val known: Boolean = true, val rememberedLevel: Int = 1) {
    val displayed: Int get() = target ?: if (known) actual else -1
    val pending: Boolean get() = target != null
}

/** Manual grid/Dock icons share this view of the single front-wiper state.
 * AUTO is not manual power; unknown remains unknown and actual/target/memory stay untouched. */
internal val ControlState.manualWiperDisplayed: Int
    get() = displayed.let { if (ControlId.Wiper.isAutomatic(it)) 0 else it }

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
data class LyricWord(val startTimeMs: Long, val endTimeMs: Long, val text: String)
enum class LyricSide { Unspecified, Leading, Trailing, Center }
data class LyricLine(val timeMs: Long, val text: String, val translation: String = "",
    val romanization: String = "", val words: List<LyricWord> = emptyList(),
    val endTimeMs: Long = -1L, val backgroundWords: List<LyricWord> = emptyList(),
    val side: LyricSide = LyricSide.Unspecified)
data class LyricWaitRow(val afterIndex: Int, val startMs: Long, val endMs: Long)
data class LyricsState(
    val recordingKey: String = "", val lines: List<LyricLine> = emptyList(),
    val activeIndex: Int = -1, val loading: Boolean = false, val timelineReady: Boolean = false,
    val positionMs: Long = -1L, val playbackSpeed: Float = 0f, val capturedAtMs: Long = 0L,
    val durationMs: Long = 0L, val timed: Boolean = true,
    val scrollIndex: Int = -1, val activeIndices: List<Int> = emptyList(),
    val gapStartMs: Long = -1L, val gapEndMs: Long = -1L,
    val waitRows: List<LyricWaitRow> = emptyList(),
    val emptyState: LyricsEmptyState = LyricsEmptyState.NoLyrics,
    // A genuine media anchor revision, never a presentation-frame counter.
    val anchorRevision: Long = 0L,
    // Semantic endpoint owned by Store; the stable anchor's base can predate it.
    val atEnd: Boolean = false,
    // Stable identity from the existing recording tracker; transport metadata enrichment is not a new song.
    val recordingGeneration: Long = 0L,
    val changingTrack: Boolean = false,
    // Shared sampling expression; the timeline alone admits/corrects position facts.
    val playbackTrajectory: com.icar03.content.model.PlaybackTrajectory? = null,
)
/** Clock text is a separate presentation domain, not a media progress projection. */
data class ClockText(val time: String = "--:--", val weekday: String = "")
data class ContentUiState(
    val dark: Boolean = false, val page: PanelPage = PanelPage.Shortcuts,
    val scenario: PreviewScenario = PreviewScenario.Ready,
    val temperature: String = "25°", val time: String = "12:24", val range: String = "366",
    val controls: Map<ControlId, ControlState> = ControlId.entries.associateWith { ControlState(if (it == ControlId.Lock) 1 else 0) },
    val brightness: LevelState = LevelState(.65f), val volume: LevelState = LevelState(.38f),
    val media: MediaState = MediaState(), val lyrics: LyricsState = LyricsState(), val sourcesOpen: Boolean = false,
    val scenariosOpen: Boolean = false, val message: String? = null, val messageRevision: Long = 0L,
    val settingsOpen: Boolean = false, val settingsSection: SettingsSection = SettingsSection.TopBar,
    val showWeekday: Boolean = true, val showSeconds: Boolean = false,
    val showIndoorTemperature: Boolean = true, val showBattery: Boolean = true,
    val showChargingStatus: Boolean = true, val lyricsFontScale: Float = 1.0f,
    val lyricsLineSpacing: Int = 1, val lyricsSpeakerLayout: Boolean = true,
    val lyricsHighlight: Boolean = true, val showAmbientArtwork: Boolean = true,
    val showMediaSourceSwitcher: Boolean = true, val dockButtonCount: Int = 6,
    val showActionFeedback: Boolean = true,
    val previewMode: Boolean = true, val weekday: String = "星期三", val rangeUnit: String = "km",
    val chargeStatus: String? = null, val batteryDescription: String = "电量未知", val batteryPercent: Int? = null, val charging: Boolean = false,
    val placeholderSwitches: Map<ShortcutId, Boolean> = emptyMap(),
)
sealed interface ContentEvent {
    data class ControlTapped(val id: ControlId) : ContentEvent
    data class ControlPowerTapped(val id: ControlId) : ContentEvent
    data class ControlAutomaticTapped(val id: ControlId) : ContentEvent
    data class ControlLevelChanged(val id: ControlId, val level: Int) : ContentEvent
    data class PlaceholderToggled(val id: ShortcutId) : ContentEvent
    data object RearWashTapped : ContentEvent
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
    data class SettingsSectionSelected(val section: SettingsSection) : ContentEvent
    data object SettingsDismissed : ContentEvent
    data class ShowWeekdayChanged(val value: Boolean) : ContentEvent
    data class ShowSecondsChanged(val value: Boolean) : ContentEvent
    data class ShowIndoorTemperatureChanged(val value: Boolean) : ContentEvent
    data class ShowBatteryChanged(val value: Boolean) : ContentEvent
    data class ShowChargingStatusChanged(val value: Boolean) : ContentEvent
    data class LyricsFontScaleChanged(val value: Float) : ContentEvent
    data class LyricsLineSpacingChanged(val value: Int) : ContentEvent
    data class LyricsSpeakerLayoutChanged(val value: Boolean) : ContentEvent
    data class LyricsHighlightChanged(val value: Boolean) : ContentEvent
    data class ShowAmbientArtworkChanged(val value: Boolean) : ContentEvent
    data class ShowMediaSourceSwitcherChanged(val value: Boolean) : ContentEvent
    data class DockButtonCountChanged(val value: Int) : ContentEvent
    data class ShowActionFeedbackChanged(val value: Boolean) : ContentEvent
    data object DismissSheet : ContentEvent
}

/** Settings remains modal until its content-layer exit finishes. */
fun ContentEvent.isSettingsInteraction(): Boolean = when (this) {
    ContentEvent.SettingsTapped, ContentEvent.SettingsDismissed, ContentEvent.DismissSheet,
    is ContentEvent.SettingsSectionSelected, is ContentEvent.ShowWeekdayChanged, is ContentEvent.ShowSecondsChanged,
    is ContentEvent.ShowIndoorTemperatureChanged, is ContentEvent.ShowBatteryChanged,
    is ContentEvent.ShowChargingStatusChanged, is ContentEvent.LyricsFontScaleChanged,
    is ContentEvent.LyricsLineSpacingChanged, is ContentEvent.LyricsSpeakerLayoutChanged,
    is ContentEvent.LyricsHighlightChanged, is ContentEvent.ShowAmbientArtworkChanged,
    is ContentEvent.ShowMediaSourceSwitcherChanged, is ContentEvent.DockButtonCountChanged,
    is ContentEvent.ShowActionFeedbackChanged -> true
    else -> false
}

/** Fixtures are labeled preview data, never inferred vehicle state. */
fun previewState(scenario: PreviewScenario = PreviewScenario.Ready): ContentUiState {
    val base = ContentUiState(scenario = scenario)
    return when (scenario) {
        PreviewScenario.NoData -> base.copy(temperature = "--", range = "--", media = MediaState(title = null, artist = null, available = false), controls = base.controls.mapValues { it.value.copy(actual = -1, target = null, available = false, known = false) }, brightness = base.brightness.copy(available = false), volume = base.volume.copy(available = false))
        PreviewScenario.Unavailable -> base.copy(controls = base.controls.mapValues { it.value.copy(actual = -1, target = null, available = false, known = false) }, brightness = base.brightness.copy(available = false), volume = base.volume.copy(available = false), media = base.media.copy(available = false), message = "能力不可用 · 未连接任何车辆或媒体服务")
        PreviewScenario.Failure -> base.copy(message = "失败演练 · 下一次操作将在 900ms 后回弹")
        PreviewScenario.Pending -> base.copy(controls = base.controls + (ControlId.Ventilation to ControlState(actual = 0, target = 2)), message = "冻结待确认样本 · 切换场景可取消")
        PreviewScenario.Playing -> base.copy(media = base.media.copy(playing = true))
        PreviewScenario.SourceMenu -> base.copy(sourcesOpen = true)
        PreviewScenario.Ready -> base
    }
}

/** Terminal empty-body projection; loading and available lyrics keep their existing fields. */
enum class LyricsEmptyState { NoLyrics, NetworkError, Instrumental }
