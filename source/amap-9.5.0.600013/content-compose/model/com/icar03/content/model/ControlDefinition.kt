package com.icar03.content.model

/** A surface is a projection target, never a second owner of a vehicle state. */
enum class ControlSurface {
    Page,
    ControlCenter,
    ControlCard,
    Dock,
    Gesture,
}

enum class ControlRenderer {
    Toggle,
    Action,
    Continuous,
    Stepped,
    Media,
    Climate,
    Settings,
    SystemAction,
}

enum class ControlSection {
    Control,
    Feature,
    System,
    Content,
}

data class ControlGridSpan(val columns: Int = 1, val rows: Int = 1) {
    init {
        require(columns > 0 && rows > 0) { "Control grid span must be positive" }
    }
}

/**
 * Stable product semantics and standard presentation. Vehicle addresses and raw
 * encodings belong to the validated profile, never to this catalog.
 */
data class ControlDefinition(
    val id: String,
    val label: String,
    val renderer: ControlRenderer,
    val surfaces: Set<ControlSurface>,
    val span: ControlGridSpan = ControlGridSpan(),
    val targetId: String? = null,
    val implemented: Boolean = true,
    @Deprecated("Vehicle mapping belongs to ContentVehicleConfig")
    val bindingId: String? = null,
    val section: ControlSection = ControlSection.Control,
    val allowedModes: Set<Int> = emptySet(),
)

/** Stable semantic IDs, renderers, mode ranges and allowed projection surfaces. */
object ControlCatalog {
    const val SYSTEM_CONTROL_CENTER = "system_control_center"
    const val CONTROL_CENTER_PAGE = "control_center_page"
    const val CLIMATE = "climate"
    const val MEDIA = "media"
    const val SETTINGS = "settings"

    const val BACKEND_ID = "chery_virtualcarservice_s56"
    const val BACKEND_CONTRACT_REVISION = 2
    const val VEHICLE_SERVICE_PACKAGE = "com.chery.virtualcarservice"
    const val VEHICLE_SERVICE_DESCRIPTOR = "com.chery.canmanager.interfaces.IVirturalCarProperty"

    private val definitions = listOf(
        ControlDefinition("lock", "车锁", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter, ControlSurface.Dock), targetId = "lock", bindingId = "door_lock", allowedModes = setOf(0, 1)),
        ControlDefinition("steering_heating", "方向盘加热", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter), targetId = "steering_heating", bindingId = "steering_heat_joint", allowedModes = setOf(0, 1, 2, 3)),
        ControlDefinition("seat_ventilation", "座椅通风", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter, ControlSurface.Dock), targetId = "seat_ventilation", bindingId = "driver_ventilation", allowedModes = setOf(0, 1, 2, 3)),
        ControlDefinition("seat_heating", "主驾座椅加热", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter, ControlSurface.Dock), targetId = "seat_heating", bindingId = "driver_heat_joint", allowedModes = setOf(0, 1, 2, 3, 4)),
        ControlDefinition("passenger_seat_heating", "副驾座椅加热", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter), targetId = "passenger_seat_heating", bindingId = "passenger_heat_joint", allowedModes = setOf(0, 1, 2, 3, 4)),
        ControlDefinition("seat_massage", "座椅按摩", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter, ControlSurface.Dock), targetId = "seat_massage", bindingId = "driver_massage", allowedModes = setOf(0, 1, 2, 3)),
        ControlDefinition("front_wiper", "雨刮器", ControlRenderer.Stepped, setOf(ControlSurface.ControlCenter, ControlSurface.ControlCard, ControlSurface.Dock), span = ControlGridSpan(1, 2), targetId = "front_wiper", bindingId = "front_wiper", allowedModes = setOf(0, 1, 2, 3, 4, 5)),
        ControlDefinition("auto_wiper", "自动雨刮器", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter, ControlSurface.Dock), targetId = "front_wiper", bindingId = "front_wiper", allowedModes = setOf(0, 5)),
        ControlDefinition("rear_wiper", "后窗雨刮器", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter), targetId = "rear_wiper", bindingId = "rear_wiper_toggle", allowedModes = setOf(0, 1)),
        ControlDefinition("rear_wash", "后窗洗涤", ControlRenderer.Action, setOf(ControlSurface.ControlCenter), targetId = "rear_wash", bindingId = "rear_wash_pulse", allowedModes = setOf(0, 1)),
        ControlDefinition("rear_fog", "后雾灯", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter), targetId = "rear_fog", bindingId = "rear_fog_toggle", section = ControlSection.Feature, allowedModes = setOf(0, 1)),
        ControlDefinition("passenger_window_lock", "乘客车窗禁用", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter), targetId = "passenger_window_lock", bindingId = "passenger_window_lock", section = ControlSection.Feature, allowedModes = setOf(0, 1)),
        ControlDefinition("wiper_maintenance", "前雨刮维护", ControlRenderer.Action, setOf(ControlSurface.ControlCenter), targetId = "wiper_maintenance", bindingId = "wiper_maintenance_entry", section = ControlSection.Feature, allowedModes = setOf(1)),
        ControlDefinition("glove_box", "手套箱", ControlRenderer.Action, setOf(ControlSurface.ControlCenter, ControlSurface.Dock), targetId = "glove_box", bindingId = "glove_box_delivery", section = ControlSection.Feature, allowedModes = setOf(1)),
        ControlDefinition("left_child_lock", "左后排儿童锁", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter), targetId = "left_child_lock", bindingId = "left_child_lock", section = ControlSection.Feature, allowedModes = setOf(0, 1)),
        ControlDefinition("right_child_lock", "右后排儿童锁", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter), targetId = "right_child_lock", bindingId = "right_child_lock", section = ControlSection.Feature, allowedModes = setOf(0, 1)),
        ControlDefinition("wireless_charging", "手机无线充电", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter), targetId = "wireless_charging", bindingId = "wireless_charging_switch", section = ControlSection.Feature, allowedModes = setOf(0, 1)),
        ControlDefinition("window_vent", "车窗透气／车窗全关", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter, ControlSurface.Dock), targetId = "window_vent", bindingId = "all_window_vent", section = ControlSection.Feature, allowedModes = setOf(0, 1)),
        ControlDefinition("external_discharge", "对外放电", ControlRenderer.Toggle, setOf(ControlSurface.ControlCenter), targetId = "external_discharge", bindingId = "external_discharge_switch", section = ControlSection.Feature, allowedModes = setOf(0, 1)),
        ControlDefinition("passenger_seat_adjust", "副驾电动调节", ControlRenderer.Action, setOf(ControlSurface.ControlCenter), targetId = "passenger_seat_adjust", implemented = false, section = ControlSection.Feature),
        ControlDefinition("brightness", "屏幕亮度", ControlRenderer.Continuous, setOf(ControlSurface.ControlCenter, ControlSurface.ControlCard), span = ControlGridSpan(1, 2), targetId = "brightness", bindingId = "center_brightness", section = ControlSection.System),
        ControlDefinition("volume", "媒体音量", ControlRenderer.Continuous, setOf(ControlSurface.ControlCenter, ControlSurface.ControlCard), span = ControlGridSpan(1, 2), targetId = "volume", bindingId = "media_volume", section = ControlSection.System),
        ControlDefinition("call_volume", "通话音量", ControlRenderer.Continuous, setOf(ControlSurface.ControlCenter, ControlSurface.ControlCard), span = ControlGridSpan(1, 2), targetId = "call_volume", bindingId = "call_volume", section = ControlSection.System),
        ControlDefinition("navigation_volume", "导航音量", ControlRenderer.Continuous, setOf(ControlSurface.ControlCenter, ControlSurface.ControlCard), span = ControlGridSpan(1, 2), targetId = "navigation_volume", bindingId = "navigation_volume", section = ControlSection.System),
        ControlDefinition("voice_volume", "语音音量", ControlRenderer.Continuous, setOf(ControlSurface.ControlCenter, ControlSurface.ControlCard), span = ControlGridSpan(1, 2), targetId = "voice_volume", bindingId = "voice_volume", section = ControlSection.System),
        ControlDefinition("screen_clean", "清洁屏幕", ControlRenderer.SystemAction, setOf(ControlSurface.ControlCenter), targetId = "screen_clean", bindingId = "oem_screen_clean", section = ControlSection.System),
        ControlDefinition(SYSTEM_CONTROL_CENTER, "系统控制中心", ControlRenderer.SystemAction, setOf(ControlSurface.ControlCenter, ControlSurface.Dock), targetId = SYSTEM_CONTROL_CENTER, bindingId = "oem_system_control_center", section = ControlSection.System),
        ControlDefinition(CLIMATE, "空调", ControlRenderer.Climate, setOf(ControlSurface.ControlCard, ControlSurface.Gesture), span = ControlGridSpan(2, 1), targetId = CLIMATE, implemented = false),
        ControlDefinition(MEDIA, "媒体", ControlRenderer.Media, setOf(ControlSurface.ControlCard, ControlSurface.ControlCenter), targetId = MEDIA, bindingId = "media_panel", section = ControlSection.Content),
        ControlDefinition(SETTINGS, "设置", ControlRenderer.Settings, setOf(ControlSurface.Dock), targetId = SETTINGS, bindingId = "settings_entry", section = ControlSection.Content),
        ControlDefinition(CONTROL_CENTER_PAGE, "控制中心", ControlRenderer.SystemAction, setOf(ControlSurface.Gesture), targetId = CONTROL_CENTER_PAGE, bindingId = "control_center_page", section = ControlSection.Content),
    ).map { definition ->
        definition.copy(
            surfaces = java.util.Collections.unmodifiableSet(LinkedHashSet(definition.surfaces)),
            allowedModes = java.util.Collections.unmodifiableSet(LinkedHashSet(definition.allowedModes)),
        )
    }.let { java.util.Collections.unmodifiableList(it) }

    val all: List<ControlDefinition> get() = definitions
    val ids: Set<String> get() = definitions.mapTo(linkedSetOf()) { it.id }

    fun find(id: String?): ControlDefinition? = definitions.firstOrNull { it.id == id }
    fun forSurface(surface: ControlSurface): List<ControlDefinition> = definitions.filter { surface in it.surfaces }
    fun forSection(section: ControlSection): List<ControlDefinition> = definitions.filter { it.section == section }
}
