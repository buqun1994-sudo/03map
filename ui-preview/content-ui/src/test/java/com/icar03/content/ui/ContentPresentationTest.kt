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
        assertTrue(state.moving)
        state.updatePhase(0)
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
    @Test fun crossfadeHasAnInvisibleGeometrySwitchAndReversesAlongSameProgress() {
        assertEquals(1f, lyricsTransitionAlpha(0f), 0f)
        assertEquals(0f, lyricsTransitionAlpha(.5f), 0f)
        assertEquals(1f, lyricsTransitionAlpha(1f), 0f)
        listOf(.1f, .2f, .3f, .4f).forEach { p ->
            assertEquals(lyricsTransitionAlpha(p), lyricsTransitionAlpha(1f - p), .0001f)
        }
    }
}
