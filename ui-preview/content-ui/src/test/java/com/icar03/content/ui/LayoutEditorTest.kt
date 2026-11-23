package com.icar03.content.ui

import com.icar03.content.model.ControlCatalog
import org.junit.Assert.*
import org.junit.Test

class LayoutEditorTest {
    private fun fixture() = previewState().copy(page = PanelPage.VehicleInfo,
        controlCenterItems = listOf("lock", "front_wiper", "climate"),
        dockItems = listOf("lock", "settings"), controlCardIds = listOf("media", "climate"))

    @Test fun mutationNeedsCurrentEditorSessionAndMatchingId() {
        val state = fixture()
        val move = LayoutAction(ControlCenterEditAction.MoveItem, "lock", 0, 2)
        assertSame(state, LayoutEditor.reduce(state, move))
        val opened = LayoutEditor.reduce(state, LayoutAction(ControlCenterEditAction.Open))
        assertEquals(LayoutSession.Center, LayoutSession.from(opened))
        assertSame(opened, LayoutEditor.reduce(opened, move))
        val editing = LayoutEditor.reduce(opened, LayoutAction(ControlCenterEditAction.BeginEdit))
        assertSame(editing, LayoutEditor.reduce(editing, move.copy(id = "front_wiper")))
        assertSame(editing, LayoutEditor.reduce(editing, move.copy(to = 8)))
        assertEquals(listOf("front_wiper", "climate", "lock"), LayoutEditor.reduce(editing, move).controlCenterItems)
        val closed = LayoutEditor.reduce(editing, LayoutAction(ControlCenterEditAction.EndEdit))
        assertSame(closed, LayoutEditor.reduce(closed, move))
    }

    @Test fun unimplementedClimateCannotBeAddedToControlCenterOrDock() {
        var state = fixture().copy(
            controlCenterItems = listOf("lock"),
            controlCenterAvailableItems = listOf("lock", ControlCatalog.CLIMATE),
        )
        state = LayoutEditor.reduce(state, LayoutAction(ControlCenterEditAction.Open))
        state = LayoutEditor.reduce(state, LayoutAction(ControlCenterEditAction.BeginEdit))
        state = LayoutEditor.reduce(state, LayoutAction(ControlCenterEditAction.ToggleAddPanel))
        val climate = LayoutAction(ControlCenterEditAction.AddItem, ControlCatalog.CLIMATE)
        assertEquals(LayoutSession.CenterAdding, LayoutSession.from(state))
        assertFalse(LayoutEditor.accepts(state, climate))
        assertSame(state, LayoutEditor.reduce(state, climate))
        assertSame(state, LayoutEditor.reduce(state, climate.copy(id = "invented")))

        val dock = fixture().copy(
            dockEditing = true,
            dockAvailableItems = listOf("lock", "settings", ControlCatalog.CLIMATE),
        )
        assertFalse(LayoutEditor.accepts(dock, LayoutAction(ControlCenterEditAction.AddDockItem, ControlCatalog.CLIMATE)))
    }

    @Test fun cardReorderKeepsSelectedIdAndRequiresValidSource() {
        val state = fixture().copy(controlCardIndex = 1, controlCardListOpen = false)
        val opened = LayoutEditor.reduce(state, LayoutAction(ControlCenterEditAction.OpenCardList))
        val editing = LayoutEditor.reduce(opened, LayoutAction(ControlCenterEditAction.BeginCardEdit))
        val move = LayoutAction(ControlCenterEditAction.MoveCard, "media", 0, 1)
        val next = LayoutEditor.reduce(editing, move)
        assertEquals(listOf("climate", "media"), next.controlCardIds)
        assertEquals("climate", next.controlCardIds[next.controlCardIndex])
        assertSame(editing, LayoutEditor.reduce(editing, move.copy(id = "climate")))
    }

    @Test fun centerEditingAndAddingRequireAnOpenCenterSession() {
        val closed = fixture()
        assertFalse(LayoutEditor.accepts(closed, LayoutAction(ControlCenterEditAction.BeginEdit)))
        assertFalse(LayoutEditor.accepts(closed, LayoutAction(ControlCenterEditAction.ToggleAddPanel)))

        val opened = LayoutEditor.reduce(closed, LayoutAction(ControlCenterEditAction.Open))
        val editing = LayoutEditor.reduce(opened, LayoutAction(ControlCenterEditAction.BeginEdit))
        val adding = LayoutEditor.reduce(editing, LayoutAction(ControlCenterEditAction.ToggleAddPanel))
        assertEquals(LayoutSession.CenterEditing, LayoutSession.from(editing))
        assertEquals(LayoutSession.CenterAdding, LayoutSession.from(adding))
        assertTrue(adding.controlCenterEditing)
        assertTrue(LayoutEditor.accepts(adding, LayoutAction(ControlCenterEditAction.MoveItem, "lock", 0, 1)))
    }

    @Test fun cardsAddingIsEditingAndRemovePreservesSelectionAndRecoversFromEmpty() {
        val closed = fixture().copy(
            controlCardIds = listOf("media", "front_wiper", "seat_heating"),
            controlCardAvailableItems = listOf("front_wiper"),
            controlCardIndex = 1,
        )
        val cards = LayoutEditor.reduce(closed, LayoutAction(ControlCenterEditAction.OpenCardList))
        val editing = LayoutEditor.reduce(cards, LayoutAction(ControlCenterEditAction.BeginCardEdit))
        val adding = LayoutEditor.reduce(editing, LayoutAction(ControlCenterEditAction.ToggleCardAddPanel))
        assertEquals(LayoutSession.CardsAdding, LayoutSession.from(adding))
        assertTrue(adding.controlCardEditing)
        assertTrue(LayoutEditor.accepts(adding,
            LayoutAction(ControlCenterEditAction.RemoveCard, "seat_heating", from = 2)))

        val afterOther = LayoutEditor.reduce(adding,
            LayoutAction(ControlCenterEditAction.RemoveCard, "seat_heating", from = 2))
        assertEquals("front_wiper", afterOther.controlCardIds[afterOther.controlCardIndex])
        val afterCurrent = LayoutEditor.reduce(afterOther,
            LayoutAction(ControlCenterEditAction.RemoveCard, "front_wiper", from = 1))
        assertEquals(listOf("media"), afterCurrent.controlCardIds)
        assertEquals(0, afterCurrent.controlCardIndex)
        val empty = LayoutEditor.reduce(afterCurrent,
            LayoutAction(ControlCenterEditAction.RemoveCard, "media", from = 0))
        assertTrue(empty.controlCardIds.isEmpty())
        assertEquals(0, empty.controlCardIndex)
        assertEquals(LayoutSession.CardsAdding, LayoutSession.from(empty))

        val restored = LayoutEditor.reduce(empty,
            LayoutAction(ControlCenterEditAction.AddCard, "front_wiper", to = 0))
        assertEquals(listOf("front_wiper"), restored.controlCardIds)
        assertTrue(restored.controlCardEditing)
    }

    @Test fun emptyDockRemainsEditableAndOnlyDeclaredSurfaceCanBeRestored() {
        var state = fixture()
        state = LayoutEditor.reduce(state, LayoutAction(ControlCenterEditAction.BeginDockEdit))
        state = LayoutEditor.reduce(state, LayoutAction(ControlCenterEditAction.RemoveDockItem, "lock", 0))
        state = LayoutEditor.reduce(state, LayoutAction(ControlCenterEditAction.RemoveDockItem, "settings", 0))
        assertTrue(state.dockItems.isEmpty())
        state = LayoutEditor.reduce(state, LayoutAction(ControlCenterEditAction.AddDockItem, "settings"))
        assertEquals(listOf("settings"), state.dockItems)
        val ended = LayoutEditor.reduce(state, LayoutAction(ControlCenterEditAction.EndDockEdit))
        assertSame(ended, LayoutEditor.reduce(ended, LayoutAction(ControlCenterEditAction.RemoveDockItem, "settings", 0)))
    }

    @Test fun settingsLoginAndUndeclaredAppCenterRejectLayoutCommands() {
        val open = LayoutAction(ControlCenterEditAction.Open)
        val state = fixture().copy(page = PanelPage.Lyrics)
        assertTrue(LayoutEditor.accepts(state, open))
        assertFalse(LayoutEditor.accepts(state.copy(enabledContentIds = emptySet()), open))
        assertFalse(LayoutEditor.accepts(state.copy(settingsOpen = true), open))
        assertFalse(LayoutEditor.accepts(state.copy(lyricsProviderSettings = LyricsProviderUiState(appleLoginOpen = true)), open))
        assertFalse(LayoutEditor.accepts(state.copy(sourcesOpen = true), open))
        assertFalse(LayoutEditor.accepts(state.copy(appControlCenterAvailable = false), open))
    }
}
