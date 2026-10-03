package com.icar03.content.ui

import org.junit.Assert.*
import org.junit.Test

class ContentModelsTest {
    @Test fun noDataDoesNotInventReadings() {
        val state = previewState(PreviewScenario.NoData)
        assertEquals("--", state.temperature)
        assertEquals("--", state.range)
        assertNull(state.media.title)
        assertTrue(state.controls.values.none { it.available })
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
    @Test fun shortcutCatalogIsSharedWithoutAddingVehicleCommands() {
        assertEquals(listOf("Lock", "SteeringHeat", "Ventilation", "Heating", "Massage", "Settings"), ShortcutId.entries.map { it.name })
        assertEquals(ControlId.entries.toSet(), ShortcutId.entries.mapNotNull { it.control }.toSet())
        assertNull(ShortcutId.SteeringHeat.control)
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

    @Test fun fourControlsAndFiveStableSourcesAreUnique() {
        assertEquals(4, ControlId.entries.size)
        assertEquals(5, MediaSource.entries.size)
        assertEquals(5, MediaSource.entries.map { it.label }.toSet().size)
    }
}
