package com.icar03.content.model

import org.junit.Assert.*
import org.junit.Test

class ContentGestureTest {
    @Test fun allTwelveCommandsHaveStableKeysAndResolveExactlyOneDirectionPerFingerCount() {
        val expectedKeys = listOf("two", "three", "four").flatMap { fingers ->
            listOf("up", "down", "left", "right").map { "${fingers}_$it" }
        }
        assertEquals(expectedKeys, GestureCommand.entries.map { it.key })
        assertEquals(12, GestureCommand.entries.map { it.fingers to it.direction }.distinct().size)
        for (fingers in 2..4) {
            GestureDirection.entries.forEach { direction ->
                val command = checkNotNull(GestureCommand.from(fingers, direction))
                assertEquals(fingers, command.fingers)
                assertEquals(direction, command.direction)
                assertTrue(command.label.isNotBlank())
            }
        }
        listOf(0, 1, 5, 10).forEach { fingers ->
            GestureDirection.entries.forEach { assertNull(GestureCommand.from(fingers, it)) }
        }
    }

    @Test fun actionsUseStableStringsAndExactChineseLabels() {
        assertEquals(listOf("none", "enter_immersive", "exit_immersive", "open_control_center", "close_control_center"), GestureAction.entries.map { it.value })
        assertEquals(listOf("无", "进入沉浸式全屏", "退出沉浸式全屏", "打开控制中心", "关闭控制中心"), GestureAction.entries.map { it.label })
        GestureAction.entries.forEach { assertSame(it, GestureAction.fromValue(it.value)) }
        listOf(null, "", "EnterImmersive", "0", "unknown").forEach { assertNull(GestureAction.fromValue(it)) }
    }

    @Test fun defaultsAreCompleteAndImmutableAndOnlyTheTwoHorizontalGesturesHaveActions() {
        val defaults = GesturePreferences.defaultActions()
        assertEquals(GestureCommand.entries.toSet(), defaults.keys)
        GestureCommand.entries.forEach { command ->
            val expected = when (command) {
                GestureCommand.TwoDown -> GestureAction.OpenControlCenter
                GestureCommand.TwoUp -> GestureAction.CloseControlCenter
                GestureCommand.TwoRight -> GestureAction.EnterImmersive
                GestureCommand.TwoLeft -> GestureAction.ExitImmersive
                else -> GestureAction.None
            }
            assertSame(expected, defaults[command])
        }
        assertThrows(UnsupportedOperationException::class.java) {
            (defaults as MutableMap)[GestureCommand.TwoRight] = GestureAction.None
        }
        assertSame(defaults, GesturePreferences.normalize(null))
    }

    @Test fun normalizationFillsMissingOrNullEntriesAndFreezesTheSuppliedMap() {
        val source = mutableMapOf<GestureCommand, GestureAction?>(
            GestureCommand.TwoRight to GestureAction.None,
            GestureCommand.FourUp to GestureAction.EnterImmersive,
            GestureCommand.ThreeLeft to null,
        )
        val normalized = GesturePreferences.normalize(source)
        assertEquals(12, normalized.size)
        assertSame(GestureAction.None, normalized[GestureCommand.TwoRight])
        assertSame(GestureAction.ExitImmersive, normalized[GestureCommand.TwoLeft])
        assertSame(GestureAction.None, normalized[GestureCommand.ThreeLeft])
        source[GestureCommand.FourUp] = GestureAction.ExitImmersive
        assertSame(GestureAction.EnterImmersive, normalized[GestureCommand.FourUp])
        assertThrows(UnsupportedOperationException::class.java) {
            (normalized as MutableMap).clear()
        }
    }

    @Test fun updatingOneCommandDoesNotMutateTheOriginalOrTheOtherElevenEntries() {
        val defaults = GesturePreferences.defaultActions()
        val updated = GesturePreferences.withAction(defaults, GestureCommand.ThreeDown, GestureAction.EnterImmersive)
        assertSame(GestureAction.None, defaults[GestureCommand.ThreeDown])
        assertSame(GestureAction.EnterImmersive, updated[GestureCommand.ThreeDown])
        GestureCommand.entries.filter { it != GestureCommand.ThreeDown }.forEach { assertSame(defaults[it], updated[it]) }
        assertThrows(UnsupportedOperationException::class.java) {
            (updated as MutableMap).remove(GestureCommand.TwoUp)
        }
        assertSame(defaults, GesturePreferences.withAction(updated, GestureCommand.ThreeDown, GestureAction.None))
    }
}
