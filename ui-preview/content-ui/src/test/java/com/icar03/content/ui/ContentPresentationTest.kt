package com.icar03.content.ui

import androidx.compose.ui.unit.IntSize
import org.junit.Assert.*
import org.junit.Test

class ContentPresentationTest {
    @Test fun geometryUsesControllerEndpointsAndRejectsInvalidUpdates() {
        val state = ContentPresentation()
        assertFalse(state.geometryReady)
        state.updateGeometry(640f, 640f, 1280f, 1080)
        assertEquals(IntSize(1920, 1080), state.fullSize)
        assertEquals(640, state.splitWidthPx)
        assertEquals(0f, state.progress, 0f)
        state.updateGeometry(1280f, 640f, 1280f, 1080)
        assertEquals(.5f, state.progress, 0f)
        state.updateGeometry(Float.NaN, 640f, 1280f, 1080)
        assertEquals(.5f, state.progress, 0f)
        state.updateGeometry(3000f, 640f, 1280f, 1080)
        assertEquals(1f, state.progress, 0f)
        state.updatePhase(1)
        assertTrue(state.collapsed)
    }
    @Test fun phaseAndPreparationGateInteractionsWithoutOwningASecondAnimator() {
        val state = ContentPresentation()
        state.updateGeometry(640f, 640f, 1280f, 1080)
        assertFalse(state.moving)
        state.updatePhase(2)
        assertFalse("a press phase must not prepare an ambient presentation", state.moving)
        assertEquals(0L, state.sessionGeneration)
        state.updatePhase(6)
        assertFalse("a blocked direction must not prepare an ambient presentation", state.moving)
        assertEquals(0L, state.sessionGeneration)
        state.updatePhase(3)
        assertTrue("a real horizontal drag remains moving", state.moving)
        assertTrue(state.sessionGeneration > 0L)
        state.updatePhase(4)
        assertTrue("expanded settling remains moving", state.moving)
        state.updatePhase(5)
        assertTrue("collapsed settling remains moving", state.moving)
        state.updatePhase(0)
        assertFalse(state.moving)
        assertEquals(0L, state.sessionGeneration)
        state.updateGeometry(1280f, 640f, 1280f, 1080)
        state.updatePhase(6)
        assertTrue("an existing mid-gesture geometry remains moving", state.moving)
        state.updateGeometry(640f, 640f, 1280f, 1080)
        assertFalse(state.moving)
        state.requestEnter()
        assertTrue(state.moving)
        state.cancelEntry()
        assertFalse(state.moving)
    }
    @Test fun replacementCancellationAndStopRejectObsoleteWorkers() {
        val state = ContentPresentation()
        var requests = 0
        state.onEntryReady = { requests++ }
        val obsolete = state.requestEnter()
        val current = state.requestEnter()
        state.entryPrepared(obsolete)
        assertEquals(0, requests)
        state.entryPrepared(current)
        state.entryPrepared(current)
        assertEquals(1, requests)
        val cancelled = state.requestEnter()
        state.cancelEntry()
        state.entryPrepared(cancelled)
        assertEquals(1, requests)
        val stopped = state.requestEnter()
        state.stop()
        state.entryPrepared(stopped)
        assertEquals(1, requests)
    }
    @Test fun contentUses45PercentFadesWithOnlyATenPercentInvisibleLayoutWindow() {
        assertEquals(.5f, presentationCompactAlpha(.225f), .0001f)
        assertTrue(presentationCompactAlpha(.44f) > 0f)
        for (p in listOf(.45f, .49f, .5f, .51f, .55f)) {
            assertEquals("compact is hidden at $p", 0f, presentationCompactAlpha(p), 0f)
            assertEquals("wide is hidden at $p", 0f, presentationWideAlpha(p), 0f)
        }
        assertTrue(presentationWideAlpha(.56f) > 0f)
        assertEquals(.5f, presentationWideAlpha(.775f), .0001f)
        assertEquals(0f, presentationAmbientBlend(0f), 0f)
        assertEquals(.5f, presentationAmbientBlend(.225f), .0001f)
        for (p in listOf(.45f, .5f, .55f, .8f, 1f)) assertEquals(1f, presentationAmbientBlend(p), 0f)
    }

    @Test fun crossfadeHasAnInvisibleGeometrySwitchAndReversesAlongSameProgress() {
        assertEquals(1f, lyricsTransitionAlpha(0f), 0f)
        assertEquals(0f, lyricsTransitionAlpha(.5f), 0f)
        assertEquals(1f, lyricsTransitionAlpha(1f), 0f)
        listOf(.1f, .2f, .3f, .4f).forEach { p ->
            assertEquals(lyricsTransitionAlpha(p), lyricsTransitionAlpha(1f - p), .0001f)
        }
    }
}
