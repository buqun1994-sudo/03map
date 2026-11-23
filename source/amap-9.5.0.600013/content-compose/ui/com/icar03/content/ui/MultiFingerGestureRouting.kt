package com.icar03.content.ui

import com.icar03.content.model.GestureAction
import com.icar03.content.model.GestureCommand

/** Page capability shared by all content gesture and map-presentation entry gates. */
val PanelPage.supportsImmersive: Boolean get() = this == PanelPage.Lyrics

/** Resolves an input intent against the latest Store projection and actual map endpoint.
 * It never owns geometry, an animation, a preference copy or an external command port.
 */
object MultiFingerGestureRouting {
    fun command(result: MultiFingerGestureResult): GestureCommand? =
        GestureCommand.from(result.fingerCount, result.direction)

    fun resolve(command: GestureCommand, state: ContentUiState, presentation: ContentPresentation?,
        interactive: Boolean = true): ContentEvent? {
        if (!interactive || state.settingsOpen || state.settingsCollapsed ||
            state.sourcesOpen || state.scenariosOpen || state.lyricsProviderSettings.appleLoginOpen) return null
        val actual = presentation ?: return null
        val action = state.gestureActions[command] ?: GestureAction.None
        if (!actual.geometryReady || actual.moving || actual.pagerMotion || actual.buttonTransitionActive ||
            (actual.modalActive && action != GestureAction.CloseControlCenter)) return null
        if ((state.controlCenterOpen || state.controlCenterEditing || state.controlCardListOpen || state.dockEditing) &&
            action != GestureAction.CloseControlCenter) return null
        return when (action) {
            GestureAction.None -> null
            GestureAction.OpenControlCenter -> LayoutAction(ControlCenterEditAction.Open, input = LayoutInput.Gesture).takeIf { LayoutEditor.accepts(state, it) }
            GestureAction.CloseControlCenter -> LayoutAction(ControlCenterEditAction.Close, input = LayoutInput.Gesture).takeIf { state.controlCenterOpen || state.controlCenterEditing }
            GestureAction.EnterImmersive -> ContentEvent.EnterLyricsImmersive.takeIf {
                state.page.supportsImmersive && actual.phase == 0 && actual.progress <= .001f
            }
            GestureAction.ExitImmersive -> ContentEvent.ExitLyricsImmersive.takeIf { state.page.supportsImmersive && actual.collapsed }
        }
    }
}
