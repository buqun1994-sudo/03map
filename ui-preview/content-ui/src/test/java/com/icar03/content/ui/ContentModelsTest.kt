package com.icar03.content.ui

import org.junit.Assert.*
import org.junit.Test

class ContentModelsTest {
    @Test fun noDataDoesNotInventReadings() {
        val state = previewState(PreviewScenario.NoData)
        assertEquals("--", state.temperature)
        assertEquals("--", state.range)
        assertNull(state.media.title)
        assertTrue(state.controls.values.none { it.available || it.known || it.pending })
        assertTrue(state.controls.values.all { it.actual == -1 && it.displayed == -1 })
        val unavailable = previewState(PreviewScenario.Unavailable)
        assertTrue(unavailable.controls.values.all { !it.known && !it.available && it.displayed == -1 })
    }
    @Test fun targetDoesNotChangeConfirmedValue() {
        val control = ControlState(actual = 0, target = 3)
        assertEquals(0, control.actual)
        assertEquals(3, control.displayed)
        assertTrue(control.pending)
    }
    @Test fun scenarioCatalogHasExplicitRequiredStates() {
        assertEquals(7, PreviewScenario.entries.size)
        assertTrue(previewState(PreviewScenario.SourceMenu).sourcesOpen)
        assertTrue(previewState(PreviewScenario.Playing).media.playing)
        assertTrue(previewState(PreviewScenario.Pending).controls.values.any { it.pending })
    }
    @Test fun boundaryRipplePolicyCoversEveryGearAndRejectsUnknownPendingOrUnavailable() {
        val state = ContentUiState()
        val edges = mapOf(ShortcutId.Lock to setOf(0, 1), ShortcutId.Ventilation to setOf(0, 1),
            ShortcutId.Massage to setOf(0, 1), ShortcutId.Heating to setOf(0, 4), ShortcutId.PassengerHeating to setOf(0, 4), ShortcutId.SteeringHeat to setOf(0, 3))
        edges.forEach { (shortcut, accepted) ->
            val id = requireNotNull(shortcut.control)
            val max = id.maxLevel
            for (level in -1..max) {
                val control = ControlState(actual = level, known = level >= 0)
                val current = state.copy(controls = state.controls + (id to control))
                assertEquals("$id/$level", level in accepted, shortcutRippleEnabled(shortcut, current))
                assertFalse(shortcutRippleEnabled(shortcut, current.copy(controls = current.controls + (id to control.copy(available = false)))))
                assertFalse(shortcutRippleEnabled(shortcut, current.copy(controls = current.controls + (id to control.copy(target = 0)))))
                assertFalse(shortcutRippleEnabled(shortcut, current.copy(controls = current.controls + (id to control.copy(known = false)))))
            }
        }
    }

    @Test fun sevenShortcutsShareSixVehicleControlsInProductOrder() {
        assertEquals(listOf("Lock", "SteeringHeat", "Ventilation", "Heating", "PassengerHeating", "Massage", "Settings"), ShortcutId.entries.map { it.name })
        assertEquals(ControlId.entries.toSet(), ShortcutId.entries.mapNotNull { it.control }.toSet())
        assertEquals(ControlId.SteeringHeat, ShortcutId.SteeringHeat.control)
        assertNull(ShortcutId.Settings.control)
    }

    @Test fun lyricsEmptyReasonsDefaultToNoLyricsAndDoNotPretendToHaveATimeline() {
        assertEquals(LyricsEmptyState.NoLyrics, LyricsState().emptyState)
        assertEquals(listOf("NoLyrics", "NetworkError", "Instrumental"), LyricsEmptyState.entries.map { it.name })
        val instrumental = LyricsState(timed = false, emptyState = LyricsEmptyState.Instrumental)
        assertTrue(instrumental.lines.isEmpty())
        assertEquals(-1, instrumental.activeIndex)
        assertEquals(-1L, instrumental.positionMs)
        assertFalse(instrumental.timelineReady)
        assertFalse(instrumental.loading)
    }

    @Test fun sixControlsAndFiveStableSourcesAreUnique() {
        assertEquals(6, ControlId.entries.size)
        assertEquals(5, MediaSource.entries.size)
        assertEquals(5, MediaSource.entries.map { it.label }.toSet().size)
    }
}
