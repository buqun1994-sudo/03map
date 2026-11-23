package com.icar03.content.model

import java.util.Collections
import java.util.EnumMap

/** Shared recognition and preference contract; persisted values never depend on enum ordinals. */
enum class GestureDirection { Up, Down, Left, Right }

enum class GestureCommand(val fingers: Int, val direction: GestureDirection, val key: String, val label: String) {
    TwoUp(2, GestureDirection.Up, "two_up", "二指上滑"),
    TwoDown(2, GestureDirection.Down, "two_down", "二指下滑"),
    TwoLeft(2, GestureDirection.Left, "two_left", "二指左滑"),
    TwoRight(2, GestureDirection.Right, "two_right", "二指右滑"),
    ThreeUp(3, GestureDirection.Up, "three_up", "三指上滑"),
    ThreeDown(3, GestureDirection.Down, "three_down", "三指下滑"),
    ThreeLeft(3, GestureDirection.Left, "three_left", "三指左滑"),
    ThreeRight(3, GestureDirection.Right, "three_right", "三指右滑"),
    FourUp(4, GestureDirection.Up, "four_up", "四指上滑"),
    FourDown(4, GestureDirection.Down, "four_down", "四指下滑"),
    FourLeft(4, GestureDirection.Left, "four_left", "四指左滑"),
    FourRight(4, GestureDirection.Right, "four_right", "四指右滑");

    companion object {
        @JvmStatic
        fun from(fingers: Int, direction: GestureDirection): GestureCommand? =
            entries.firstOrNull { it.fingers == fingers && it.direction == direction }
    }
}

enum class GestureAction(val value: String, val label: String) {
    None("none", "无"),
    EnterImmersive("enter_immersive", "进入沉浸式全屏"),
    ExitImmersive("exit_immersive", "退出沉浸式全屏"),
    OpenControlCenter("open_control_center", "打开控制中心"),
    CloseControlCenter("close_control_center", "关闭控制中心");

    companion object {
        @JvmStatic
        fun fromValue(value: String?): GestureAction? = entries.firstOrNull { it.value == value }
    }
}

/** Normalization creates a complete immutable value only when preferences are assigned. */
object GesturePreferences {
    private val defaults: Map<GestureCommand, GestureAction> = Collections.unmodifiableMap(
        EnumMap<GestureCommand, GestureAction>(GestureCommand::class.java).apply {
            GestureCommand.entries.forEach { put(it, defaultAction(it)) }
        },
    )

    @JvmStatic
    fun defaultAction(command: GestureCommand): GestureAction = when (command) {
        GestureCommand.TwoRight -> GestureAction.EnterImmersive
        GestureCommand.TwoLeft -> GestureAction.ExitImmersive
        GestureCommand.TwoDown -> GestureAction.OpenControlCenter
        GestureCommand.TwoUp -> GestureAction.CloseControlCenter
        else -> GestureAction.None
    }

    @JvmStatic
    fun defaultActions(): Map<GestureCommand, GestureAction> = defaults

    @JvmStatic
    fun normalize(actions: Map<GestureCommand, GestureAction?>?): Map<GestureCommand, GestureAction> {
        if (actions.isNullOrEmpty()) return defaults
        val normalized = EnumMap<GestureCommand, GestureAction>(GestureCommand::class.java)
        GestureCommand.entries.forEach { command ->
            normalized[command] = actions[command] ?: defaultAction(command)
        }
        return if (normalized == defaults) defaults else Collections.unmodifiableMap(normalized)
    }

    @JvmStatic
    fun withAction(
        actions: Map<GestureCommand, GestureAction?>?,
        command: GestureCommand,
        action: GestureAction,
    ): Map<GestureCommand, GestureAction> {
        val normalized = normalize(actions)
        if (normalized[command] == action) return normalized
        val updated = EnumMap<GestureCommand, GestureAction>(GestureCommand::class.java)
        updated.putAll(normalized)
        updated[command] = action
        return if (updated == defaults) defaults else Collections.unmodifiableMap(updated)
    }
}
