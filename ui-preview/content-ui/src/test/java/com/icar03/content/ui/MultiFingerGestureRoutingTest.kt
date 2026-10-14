package com.icar03.content.ui

import com.icar03.content.model.GestureAction
import com.icar03.content.model.GestureCommand
import com.icar03.content.model.GesturePreferences
import org.junit.Assert.*
import org.junit.Test

class MultiFingerGestureRoutingTest {
    private fun split() = ContentPresentation().apply {
        updateGeometry(640f, 640f, 1280f, 1080); updatePhase(0)
    }
    private fun full() = ContentPresentation().apply {
        updateGeometry(1920f, 640f, 1280f, 1080); updatePhase(1)
    }
    private val lyrics = previewState().copy(previewMode = false, page = PanelPage.Lyrics)

    @Test fun defaultsHaveExactlyTwoActionsAndOnlyRunAtTheirActualEndpoints() {
        assertEquals(12, lyrics.gestureActions.size)
        assertEquals(2, lyrics.gestureActions.values.count { it != GestureAction.None })
        assertEquals(ContentEvent.EnterLyricsImmersive,
            MultiFingerGestureRouting.resolve(GestureCommand.TwoRight, lyrics, split()))
        assertEquals(ContentEvent.ExitLyricsImmersive,
            MultiFingerGestureRouting.resolve(GestureCommand.TwoLeft, lyrics, full()))
        assertNull(MultiFingerGestureRouting.resolve(GestureCommand.TwoLeft, lyrics, split()))
        assertNull(MultiFingerGestureRouting.resolve(GestureCommand.TwoRight, lyrics, full()))
        GestureCommand.entries.filter { it !in listOf(GestureCommand.TwoLeft, GestureCommand.TwoRight) }.forEach {
            assertNull(MultiFingerGestureRouting.resolve(it, lyrics, split()))
            assertNull(MultiFingerGestureRouting.resolve(it, lyrics, full()))
        }
    }

    @Test fun everyIdentityUsesTheSameConfigurableRouteAndLatestMapping() {
        GestureCommand.entries.forEach { command ->
            assertEquals(command, MultiFingerGestureRouting.command(MultiFingerGestureResult(command.fingers, command.direction)))
            val enter = lyrics.copy(gestureActions = GesturePreferences.withAction(lyrics.gestureActions, command, GestureAction.EnterImmersive))
            val exit = enter.copy(gestureActions = GesturePreferences.withAction(enter.gestureActions, command, GestureAction.ExitImmersive))
            val none = exit.copy(gestureActions = GesturePreferences.withAction(exit.gestureActions, command, GestureAction.None))
            assertEquals(ContentEvent.EnterLyricsImmersive, MultiFingerGestureRouting.resolve(command, enter, split()))
            assertEquals(ContentEvent.ExitLyricsImmersive, MultiFingerGestureRouting.resolve(command, exit, full()))
            assertNull(MultiFingerGestureRouting.resolve(command, none, split()))
            assertNull(MultiFingerGestureRouting.resolve(command, none, full()))
        }
        assertNull(MultiFingerGestureRouting.command(MultiFingerGestureResult(5, com.icar03.content.model.GestureDirection.Right)))
    }

    @Test fun unsupportedPagesModalsAndLifecycleNeverRunAPresentationCommand() {
        listOf(lyrics.copy(page = PanelPage.Shortcuts), lyrics.copy(settingsOpen = true),
            lyrics.copy(settingsCollapsed = true), lyrics.copy(sourcesOpen = true),
            lyrics.copy(scenariosOpen = true), lyrics.copy(lyricsProviderSettings = lyrics.lyricsProviderSettings.copy(appleLoginOpen = true)))
            .forEach { state ->
                assertNull(MultiFingerGestureRouting.resolve(GestureCommand.TwoRight, state, split()))
                assertNull(MultiFingerGestureRouting.resolve(GestureCommand.TwoLeft, state, full()))
            }
        assertNull(MultiFingerGestureRouting.resolve(GestureCommand.TwoRight, lyrics, null))
        assertNull(MultiFingerGestureRouting.resolve(GestureCommand.TwoRight, lyrics, split(), interactive = false))
        assertNull(MultiFingerGestureRouting.resolve(GestureCommand.TwoRight, lyrics, ContentPresentation()))
    }

    @Test fun transitionalGeometryAndOutstandingPreparationAreNotStableEndpoints() {
        listOf(split().apply { updateGeometry(1000f, 640f, 1280f, 1080) },
            split().apply { updatePhase(2) }, split().apply { updatePhase(3) },
            split().apply { updatePagerMotion(true) }, split().apply { updateModalActive(true) },
            split().apply { requestEnter() }).forEach { actual ->
                assertNull(MultiFingerGestureRouting.resolve(GestureCommand.TwoRight, lyrics, actual))
                assertNull(MultiFingerGestureRouting.resolve(GestureCommand.TwoLeft, lyrics, actual))
            }
    }
}
