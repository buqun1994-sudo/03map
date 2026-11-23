package com.icar03.content.ui

import com.icar03.content.model.ControlCatalog
import com.icar03.content.model.ControlGridLayout
import com.icar03.content.model.ControlSurface

/** Exactly one presentation session; layout order itself belongs to ContentStore. */
enum class LayoutSession {
    Closed, Center, CenterEditing, CenterAdding, Cards, CardsEditing, CardsAdding, Dock;

    fun project(state: ContentUiState): ContentUiState = state.copy(
        controlCenterOpen = this in setOf(Center, CenterEditing, CenterAdding),
        controlCenterEditing = this == CenterEditing || this == CenterAdding,
        controlCenterAddPanelOpen = this == CenterAdding,
        controlCardListOpen = this == Cards || this == CardsEditing || this == CardsAdding,
        controlCardEditing = this == CardsEditing || this == CardsAdding,
        controlCardAddPanelOpen = this == CardsAdding,
        dockEditing = this == Dock,
    )

    companion object {
        fun from(state: ContentUiState): LayoutSession = when {
            state.controlCenterOpen && state.controlCenterAddPanelOpen -> CenterAdding
            state.controlCenterOpen && state.controlCenterEditing -> CenterEditing
            state.controlCenterOpen -> Center
            state.controlCardListOpen && state.controlCardAddPanelOpen -> CardsAdding
            state.controlCardListOpen && state.controlCardEditing -> CardsEditing
            state.controlCardListOpen -> Cards
            state.dockEditing -> Dock
            else -> Closed
        }
    }
}

/** Shared acceptance/reducer contract. Inputs may preview locally; only accepted drops reach here. */
object LayoutEditor {
    fun accepts(state: ContentUiState, event: LayoutAction): Boolean {
        if (state.settingsCollapsed || state.sourcesOpen || state.scenariosOpen || state.lyricsProviderSettings.appleLoginOpen) return false
        if (event.action == ControlCenterEditAction.DockShowNamesChanged) return state.dockEditing ||
            state.settingsOpen && state.settingsSection == SettingsSection.Layout
        if (event.action == ControlCenterEditAction.ImportVehicleConfig) return state.settingsOpen &&
            state.settingsSection == SettingsSection.VehicleConfig
        if (state.settingsOpen) return false
        val session = LayoutSession.from(state)
        fun move(ids: List<String>) = event.from in ids.indices && event.to in ids.indices &&
            event.from != event.to && event.id == ids[event.from]
        fun remove(ids: List<String>) = event.from in ids.indices && event.id == ids[event.from]
        fun add(ids: List<String>, allowed: List<String>, surface: ControlSurface) = event.id in allowed &&
            event.id !in ids && ControlCatalog.find(event.id)?.let { it.implemented && surface in it.surfaces } == true &&
            (event.to == -1 || event.to in 0..ids.size)
        return when (event.action) {
            ControlCenterEditAction.Open -> session == LayoutSession.Closed && state.appControlCenterAvailable &&
                ControlCatalog.CONTROL_CENTER_PAGE in state.enabledContentIds
            ControlCenterEditAction.Close -> session != LayoutSession.Closed
            ControlCenterEditAction.BeginEdit -> session == LayoutSession.Center
            ControlCenterEditAction.EndEdit -> session == LayoutSession.CenterEditing || session == LayoutSession.CenterAdding
            ControlCenterEditAction.ToggleAddPanel -> session == LayoutSession.CenterEditing || session == LayoutSession.CenterAdding
            ControlCenterEditAction.MoveItem -> session in setOf(LayoutSession.CenterEditing, LayoutSession.CenterAdding) && move(state.controlCenterItems)
            ControlCenterEditAction.RemoveItem -> session in setOf(LayoutSession.CenterEditing, LayoutSession.CenterAdding) && remove(state.controlCenterItems)
            ControlCenterEditAction.AddItem -> session == LayoutSession.CenterAdding && add(state.controlCenterItems, state.controlCenterAvailableItems, ControlSurface.ControlCenter)
            ControlCenterEditAction.OpenCardList -> session == LayoutSession.Closed &&
                (state.controlCardAvailableItems.isNotEmpty() || state.controlCardIds.isEmpty())
            ControlCenterEditAction.CloseCardList -> session in setOf(LayoutSession.Cards, LayoutSession.CardsEditing, LayoutSession.CardsAdding)
            ControlCenterEditAction.BeginCardEdit -> session == LayoutSession.Cards
            ControlCenterEditAction.EndCardEdit -> session == LayoutSession.CardsEditing || session == LayoutSession.CardsAdding
            ControlCenterEditAction.ToggleCardAddPanel -> session in setOf(LayoutSession.Cards, LayoutSession.CardsEditing, LayoutSession.CardsAdding)
            ControlCenterEditAction.AddCard -> session == LayoutSession.CardsAdding && add(state.controlCardIds, state.controlCardAvailableItems, ControlSurface.ControlCard)
            ControlCenterEditAction.RemoveCard -> session in setOf(LayoutSession.CardsEditing, LayoutSession.CardsAdding) && remove(state.controlCardIds)
            ControlCenterEditAction.MoveCard -> session in setOf(LayoutSession.CardsEditing, LayoutSession.CardsAdding) && move(state.controlCardIds)
            ControlCenterEditAction.SelectCard -> session in setOf(LayoutSession.Closed, LayoutSession.Cards) && event.from in state.controlCardIds.indices &&
                event.id == state.controlCardIds[event.from] && event.from != state.controlCardIndex
            ControlCenterEditAction.BeginDockEdit -> session == LayoutSession.Closed
            ControlCenterEditAction.EndDockEdit -> session == LayoutSession.Dock
            ControlCenterEditAction.MoveDockItem -> session == LayoutSession.Dock && move(state.dockItems)
            ControlCenterEditAction.RemoveDockItem -> session == LayoutSession.Dock && remove(state.dockItems)
            ControlCenterEditAction.AddDockItem -> session == LayoutSession.Dock && add(state.dockItems, state.dockAvailableItems, ControlSurface.Dock)
            ControlCenterEditAction.DockShowNamesChanged, ControlCenterEditAction.ImportVehicleConfig -> false
        }
    }

    fun blankAction(state: ContentUiState): ControlCenterEditAction = when (LayoutSession.from(state)) {
        LayoutSession.CenterEditing, LayoutSession.CenterAdding -> ControlCenterEditAction.EndEdit
        LayoutSession.CardsEditing, LayoutSession.CardsAdding -> ControlCenterEditAction.EndCardEdit
        LayoutSession.Cards -> ControlCenterEditAction.CloseCardList
        LayoutSession.Dock -> ControlCenterEditAction.EndDockEdit
        else -> ControlCenterEditAction.Close
    }

    fun reduce(state: ContentUiState, event: LayoutAction): ContentUiState {
        if (!accepts(state, event)) return state
        fun inserted(ids: List<String>) = ids.toMutableList().also { it.add(if (event.to < 0) it.size else event.to, event.id) }.toList()
        return when (event.action) {
            ControlCenterEditAction.Open -> LayoutSession.Center.project(state)
            ControlCenterEditAction.Close -> LayoutSession.Closed.project(state)
            ControlCenterEditAction.BeginEdit -> LayoutSession.CenterEditing.project(state)
            ControlCenterEditAction.EndEdit -> LayoutSession.Center.project(state)
            ControlCenterEditAction.ToggleAddPanel -> (if (state.controlCenterAddPanelOpen) LayoutSession.CenterEditing else LayoutSession.CenterAdding).project(state)
            ControlCenterEditAction.MoveItem -> state.copy(controlCenterItems = ControlGridLayout.reorder(state.controlCenterItems, event.from, event.to))
            ControlCenterEditAction.RemoveItem -> state.copy(controlCenterItems = state.controlCenterItems.filterIndexed { index, _ -> index != event.from })
            ControlCenterEditAction.AddItem -> state.copy(controlCenterItems = inserted(state.controlCenterItems))
            ControlCenterEditAction.OpenCardList -> LayoutSession.Cards.project(state)
            ControlCenterEditAction.CloseCardList -> LayoutSession.Closed.project(state)
            ControlCenterEditAction.BeginCardEdit -> LayoutSession.CardsEditing.project(state)
            ControlCenterEditAction.EndCardEdit -> LayoutSession.Cards.project(state)
            ControlCenterEditAction.ToggleCardAddPanel -> (if (state.controlCardAddPanelOpen) LayoutSession.Cards else LayoutSession.CardsAdding).project(state)
            ControlCenterEditAction.AddCard -> state.copy(controlCardIds = inserted(state.controlCardIds),
                controlCardIndex = inserted(state.controlCardIds).indexOf(state.controlCardIds.getOrNull(state.controlCardIndex)).coerceAtLeast(0))
            ControlCenterEditAction.MoveCard -> {
                val selected = state.controlCardIds.getOrNull(state.controlCardIndex)
                val reordered = ControlGridLayout.reorder(state.controlCardIds, event.from, event.to)
                state.copy(controlCardIds = reordered, controlCardIndex = reordered.indexOf(selected).coerceAtLeast(0))
            }
            ControlCenterEditAction.RemoveCard -> {
                val selected = state.controlCardIds.getOrNull(state.controlCardIndex)
                val remaining = state.controlCardIds.filterIndexed { index, _ -> index != event.from }
                val selectedIndex = remaining.indexOf(selected)
                state.copy(controlCardIds = remaining, controlCardIndex = if (selectedIndex >= 0) selectedIndex
                    else event.from.coerceIn(0, (remaining.size - 1).coerceAtLeast(0)))
            }
            ControlCenterEditAction.SelectCard -> state.copy(controlCardIndex = event.from)
            ControlCenterEditAction.BeginDockEdit -> LayoutSession.Dock.project(state)
            ControlCenterEditAction.EndDockEdit -> LayoutSession.Closed.project(state)
            ControlCenterEditAction.MoveDockItem -> state.copy(dockItems = ControlGridLayout.reorder(state.dockItems, event.from, event.to))
            ControlCenterEditAction.RemoveDockItem -> state.copy(dockItems = state.dockItems.filterIndexed { index, _ -> index != event.from })
            ControlCenterEditAction.AddDockItem -> state.copy(dockItems = inserted(state.dockItems))
            ControlCenterEditAction.DockShowNamesChanged -> state.copy(dockShowNames = event.value)
            ControlCenterEditAction.ImportVehicleConfig -> state
        }
    }
}
