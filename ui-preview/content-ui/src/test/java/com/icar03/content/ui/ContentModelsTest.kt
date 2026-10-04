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

    @Test fun dockKeepsSixExplicitShortcutsIndependentOfTheExpandedPage() {
        assertEquals(6, DockShortcuts.MAX_BUTTONS)
        assertEquals(listOf("Lock", "Wiper", "Ventilation", "Heating", "Massage", "Settings"), DockShortcuts.items.map { it.name })
        assertNotSame(ShortcutId.entries, DockShortcuts.items)
        assertTrue(ShortcutId.entries.containsAll(DockShortcuts.items))
        assertEquals(listOf(ControlId.Lock, ControlId.Wiper, ControlId.Ventilation, ControlId.Heating,
            ControlId.Massage), DockShortcuts.items.mapNotNull { it.control })
        assertEquals(ControlId.SteeringHeat, ShortcutId.SteeringHeat.control)
        assertFalse(DockShortcuts.items.contains(ShortcutId.SteeringHeat))
        assertFalse(DockShortcuts.items.contains(ShortcutId.PassengerHeating))
        assertNull(ShortcutId.Settings.control)
    }

    @Test fun metadataDeclaresFourPresentationsWithoutDuplicatingVehicleState() {
        assertEquals(4, QuickControlType.entries.size)
        assertEquals(11, ShortcutId.entries.size)
        assertTrue(ShortcutGrid.buttons.take(4).all { it.type == QuickControlType.DynamicIconSwitch })
        assertEquals(listOf(ShortcutId.RearWiper, ShortcutId.RearWash), ShortcutGrid.lowerToggles)
        assertEquals(listOf(ShortcutId.Wiper), ShortcutGrid.verticals)
        assertEquals(ControlId.Wiper, ShortcutId.AutoWiper.control)
        assertEquals(QuickControlType.OrdinaryToggle, ShortcutId.AutoWiper.type)
        assertTrue(SystemQuickControl.entries.all { it.type == QuickControlType.ContinuousVertical })
        assertNull(ShortcutId.RearWiper.control); assertNull(ShortcutId.RearWash.control)
        assertTrue(ContentUiState().placeholderSwitches.isEmpty())
        assertEquals(1, ControlState().rememberedLevel)
    }

    @Test fun dockRejectsOverflowDuplicatesAndMissingOrMovedLock() {
        val overflow = assertThrows(IllegalArgumentException::class.java) {
            DockShortcuts.checkedItems(DockShortcuts.items + ShortcutId.Settings)
        }
        assertTrue("overflow must fail at the six-button limit", overflow.message?.contains("at most 6 buttons") == true)
        val invalid = listOf(
            emptyList(),
            listOf(ShortcutId.Lock, ShortcutId.Heating, ShortcutId.Heating),
            DockShortcuts.items.drop(1),
            DockShortcuts.items.drop(1) + ShortcutId.Lock,
        )
        invalid.forEach { items ->
            assertThrows("invalid Dock: $items", IllegalArgumentException::class.java) {
                DockShortcuts.checkedItems(items)
            }
        }
    }

    @Test fun dockDefinitionsCopyTheirInputAndCannotBeMutated() {
        val source = mutableListOf(ShortcutId.Lock, ShortcutId.Settings)
        val checked = DockShortcuts.checkedItems(source)
        source.clear()
        assertEquals(listOf(ShortcutId.Lock, ShortcutId.Settings), checked)
        assertThrows(UnsupportedOperationException::class.java) {
            (checked as MutableList<ShortcutId>).add(ShortcutId.Heating)
        }
        assertThrows(UnsupportedOperationException::class.java) {
            (DockShortcuts.items as MutableList<ShortcutId>).clear()
        }
        assertEquals(6, DockShortcuts.items.size)
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

    @Test fun sevenControlsAndFiveStableSourcesAreUnique() {
        assertEquals(7, ControlId.entries.size)
        assertEquals(5, MediaSource.entries.size)
        assertEquals(5, MediaSource.entries.map { it.label }.toSet().size)
    }
}
