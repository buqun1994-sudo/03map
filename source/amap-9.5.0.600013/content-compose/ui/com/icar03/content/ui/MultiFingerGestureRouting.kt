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
        if (!interactive || !state.page.supportsImmersive || state.settingsOpen || state.settingsCollapsed ||
            state.sourcesOpen || state.scenariosOpen || state.lyricsProviderSettings.appleLoginOpen) return null
        val actual = presentation ?: return null
        if (!actual.geometryReady || actual.moving || actual.modalActive || actual.pagerMotion ||
            actual.buttonTransitionActive) return null
        return when (state.gestureActions[command] ?: GestureAction.None) {
            GestureAction.None -> null
            GestureAction.EnterImmersive -> ContentEvent.EnterLyricsImmersive.takeIf {
                actual.phase == 0 && actual.progress <= .001f
            }
            GestureAction.ExitImmersive -> ContentEvent.ExitLyricsImmersive.takeIf { actual.collapsed }
        }
    }
}
