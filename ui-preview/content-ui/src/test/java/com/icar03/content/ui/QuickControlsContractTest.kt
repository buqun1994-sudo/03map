package com.icar03.content.ui

import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.unit.IntSize
import org.junit.Assert.*
import org.junit.Test

/** Owner behavior only: no composition, Android runner, rendering or vehicle actions. */
class QuickControlsContractTest {
    @Test fun fourEqualManualBandsRunFromOneAtTheBottomToFourAtTheTopWithOffAtTheBottomEdge() {
        val scale = SteppedControlScale(4)
        // Four manual bands occupy all 400px. OFF is selected by power toggle
        // or by a vertical drag to/below the edge, rather than a fifth band.
        val samples = listOf(440f to 0, 400f to 0, 399f to 1, 350f to 1,
            301f to 1, 300f to 1, 299f to 2, 250f to 2,
            201f to 2, 200f to 2, 199f to 3, 150f to 3,
            101f to 3, 100f to 3, 99f to 4, 50f to 4, 0f to 4, -120f to 4)
        samples.forEach { (y, expected) ->
            assertEquals("manual band at y=$y on a 400px track", expected, scale.levelAt(y, 400f))
        }
        assertEquals(0f, verticalFraction(400f, 400f), .0001f)
        assertEquals(.5f, verticalFraction(200f, 400f), .0001f)
        assertEquals(1f, verticalFraction(0f, 400f), .0001f)
    }

    @Test fun fillAndInternalBoundariesUseTheSameFourEqualManualBands() {
        val scale = SteppedControlScale(4)
        val expectedFractions = listOf(0f, .25f, .5f, .75f, 1f)
        val expectedEdges = listOf(400f, 300f, 200f, 100f, 0f)
        for (level in 0..4) {
            assertEquals("level $level fills complete manual bands", expectedFractions[level], scale.fraction(level), .0001f)
            assertEquals("level $level fill edge", expectedEdges[level], scale.boundary(level, 400f), .0001f)
        }
        assertEquals("OFF is empty rather than a filled fifth band", 0f, scale.fraction(0), 0f)
        assertEquals("highest manual level fills the complete track", 1f, scale.fraction(4), 0f)
        assertEquals(0f, scale.fraction(Int.MIN_VALUE), 0f)
        assertEquals(1f, scale.fraction(Int.MAX_VALUE), 0f)
    }

    @Test fun manualBandCentresAndBoundariesFollowDifferentActualHeightsAndLevelCounts() {
        // Explicit oracles catch a hard-coded height, a fifth OFF band, endpoint
        // half bands and cumulative rounding of fractional band heights.
        val examples = listOf(
            ScaleExample(2, 240f, listOf(180f to 1, 60f to 2), listOf(240f, 120f, 0f)),
            ScaleExample(3, 300f, listOf(250f to 1, 150f to 2, 50f to 3), listOf(300f, 200f, 100f, 0f)),
            ScaleExample(4, 173f, listOf(151.375f to 1, 108.125f to 2, 64.875f to 3, 21.625f to 4),
                listOf(173f, 129.75f, 86.5f, 43.25f, 0f)),
        )
        examples.forEach { example ->
            val scale = SteppedControlScale(example.maximum)
            example.samples.forEach { (y, expected) -> assertEquals(expected, scale.levelAt(y, example.height)) }
            example.edges.forEachIndexed { level, expected ->
                assertEquals("${example.maximum} levels / height ${example.height} / edge $level", expected,
                    scale.boundary(level, example.height), .0001f)
            }
        }
    }

    @Test fun oneSevenAndTenManualLevelsUseTheirOwnWholeHeightScale() {
        val examples = listOf(
            ScaleExample(1, 173f, listOf(172f to 1, 86.5f to 1, 1f to 1), listOf(173f, 0f)),
            ScaleExample(7, 420f, listOf(390f to 1, 330f to 2, 270f to 3, 210f to 4, 150f to 5, 90f to 6, 30f to 7),
                listOf(420f, 360f, 300f, 240f, 180f, 120f, 60f, 0f)),
            ScaleExample(10, 173f, listOf(164.35f to 1, 147.05f to 2, 129.75f to 3, 112.45f to 4, 95.15f to 5,
                77.85f to 6, 60.55f to 7, 43.25f to 8, 25.95f to 9, 8.65f to 10),
                listOf(173f, 155.7f, 138.4f, 121.1f, 103.8f, 86.5f, 69.2f, 51.9f, 34.6f, 17.3f, 0f)),
        )
        examples.forEach { example ->
            val scale = SteppedControlScale(example.maximum)
            example.samples.forEach { (y, expected) -> assertEquals(expected, scale.levelAt(y, example.height)) }
            example.edges.forEachIndexed { level, expected ->
                assertEquals("${example.maximum} levels / boundary $level", expected, scale.boundary(level, example.height), .0001f)
            }
            assertEquals("OFF always has empty fill", 0f, scale.fraction(0), 0f)
            assertEquals("highest configured level always fills the track", 1f, scale.fraction(example.maximum), 0f)
            assertEquals(0, scale.levelAt(example.height, example.height))
        }
        val ten = SteppedControlScale(10)
        listOf(0f, .1f, .2f, .3f, .4f, .5f, .6f, .7f, .8f, .9f, 1f).forEachIndexed { level, expected ->
            assertEquals(expected, ten.fraction(level), .0001f)
        }
    }

    @Test fun aLargeConfiguredCountIsNotSilentlyTruncatedToTheWiperRange() {
        val scale = SteppedControlScale(100)
        listOf(398f to 1, 202f to 50, 2f to 100).forEach { (y, expected) ->
            assertEquals(expected, scale.levelAt(y, 400f))
        }
        assertEquals(396f, scale.boundary(1, 400f), 0f)
        assertEquals(200f, scale.boundary(50, 400f), 0f)
        assertEquals(4f, scale.boundary(99, 400f), 0f)
        assertEquals(.01f, scale.fraction(1), .0001f)
        assertEquals(.5f, scale.fraction(50), .0001f)
    }

    @Test fun invalidTouchCoordinatesOrAnUnmeasuredTrackNeverProduceAnExecutableHigherLevel() {
        val scale = SteppedControlScale(4)
        for (y in listOf(Float.NaN, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY)) {
            assertEquals(0f, verticalFraction(y, 400f), .0001f)
            assertEquals(0, scale.levelAt(y, 400f))
        }
        for (height in listOf(0f, -100f, Float.NaN, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY)) {
            assertEquals("no valid track height=$height", 0f, verticalFraction(100f, height), .0001f)
            assertEquals("invalid height cannot select a higher level", 0, scale.levelAt(100f, height))
        }
    }

    @Test fun dockRevealPreservesOpeningLevelUntilAbsoluteTrackEntryThenUsesRealBands() {
        val overlay = measuredOverlay()
        assertTrue(overlay.open(ControlId.Wiper, slot, 3, actualLevel = 3))
        val bounds = overlay.draft!!.bounds
        val rootPoint: (Float, Float) -> Offset = { x, fraction ->
            Offset(initialPanelOrigin.x + x, initialPanelOrigin.y + bounds.top + bounds.height * fraction)
        }
        overlay.move(finger)
        assertEquals(3, overlay.draft!!.level)
        assertFalse(overlay.draft!!.selectionStarted)
        overlay.move(rootPoint(bounds.center.x, .625f))
        assertEquals("the same physical band selects level 2", 2, overlay.draft!!.level)
        assertTrue(overlay.draft!!.selectionStarted)
        overlay.move(rootPoint(bounds.right + 40f, .875f))
        assertEquals("horizontal drift after entry does not stop tracking", 1, overlay.draft!!.level)
        overlay.move(rootPoint(bounds.right + 40f, 1.1f))
        assertEquals(0, overlay.draft!!.level)
        overlay.move(rootPoint(bounds.right + 40f, -.1f))
        assertEquals(4, overlay.draft!!.level)
    }

    @Test fun dockAbsoluteBandIsIndependentOfOpeningLevelSamplingAndAUTOUsesActualLevel() {
        val targetPoint: (DockLevelOverlayState) -> Offset = { state ->
            val bounds = state.draft!!.bounds
            Offset(initialPanelOrigin.x + bounds.center.x,
                initialPanelOrigin.y + bounds.top + bounds.height * .625f)
        }
        for (opening in 0..4) {
            val overlay = measuredOverlay()
            assertTrue(overlay.open(ControlId.Wiper, slot, opening, actualLevel = opening))
            overlay.move(finger)
            overlay.move(targetPoint(overlay))
            assertEquals("opening=$opening", 2, overlay.draft!!.level)
            assertTrue(overlay.draft!!.selectionStarted)
        }
        val automatic = measuredOverlay()
        assertTrue(automatic.open(ControlId.Wiper, slot, 3, actualLevel = ControlId.Wiper.automaticLevel))
        automatic.move(targetPoint(automatic))
        assertEquals(2, automatic.draft!!.level)
        assertEquals("AUTO remains distinct from its remembered preview level",
            ControlId.Wiper.automaticLevel, automatic.draft!!.actualLevel)
    }

    @Test fun dockEntryUsesHorizontalToleranceOnlyBeforeSelectionStarts() {
        val overlay = measuredOverlay()
        assertTrue(overlay.open(ControlId.Wiper, slot, 3, actualLevel = 3))
        val bounds = overlay.draft!!.bounds
        overlay.entryHorizontalTolerancePx = 6f
        val below = Offset(initialPanelOrigin.x + bounds.right + 7f,
            initialPanelOrigin.y + bounds.top + bounds.height * .625f)
        overlay.move(below)
        assertFalse(overlay.draft!!.selectionStarted)
        assertEquals(3, overlay.draft!!.level)
        overlay.move(Offset(initialPanelOrigin.x + bounds.center.x,
            initialPanelOrigin.y + bounds.top + bounds.height * .625f))
        assertTrue(overlay.draft!!.selectionStarted)
        assertEquals(2, overlay.draft!!.level)
        overlay.move(Offset(initialPanelOrigin.x + bounds.right + 100f,
            initialPanelOrigin.y + bounds.top + bounds.height * .875f))
        assertEquals(1, overlay.draft!!.level)
    }

    @Test fun hideKeepsTheLastDraftForFadeAndOnlyItsOwnCompletionRemovesIt() {
        val overlay = measuredOverlay()
        assertTrue(overlay.open(ControlId.Wiper, slot, 3, actualLevel = 3))
        val opened = overlay.draft!!.bounds
        overlay.move(Offset(initialPanelOrigin.x + opened.center.x,
            initialPanelOrigin.y + opened.top + opened.height * .625f))
        val fading = overlay.draft
        overlay.hide()
        assertFalse(overlay.visible)
        assertEquals("fade paints the final dragged level", 2, overlay.draft!!.level)
        assertEquals(3, overlay.draft!!.initialLevel)
        overlay.clearHidden(null)
        assertEquals("an unrelated completion cannot erase the fading draft", 2, overlay.draft!!.level)
        overlay.clearHidden(fading)
        assertNull(overlay.draft)
        assertFalse(overlay.visible)
    }

    @Test fun anOldFadeCompletionCannotEraseAReopenedOverlayEvenAfterTheNewOneHides() {
        val overlay = measuredOverlay()
        assertTrue(overlay.open(ControlId.Wiper, slot, 3, actualLevel = 3))
        val firstFade = overlay.draft
        overlay.hide()
        // Reopen at the same level and geometry, so both gestures have equal
        // visible values. A delayed completion still belongs to the old gesture.
        assertTrue(overlay.open(ControlId.Wiper, slot, 3, actualLevel = 3))
        overlay.clearHidden(firstFade)
        assertTrue(overlay.visible)
        assertEquals(3, overlay.draft!!.level)
        val secondFade = overlay.draft
        overlay.hide()
        overlay.clearHidden(firstFade)
        assertEquals("old fade cannot erase the newer hidden gesture", 3, overlay.draft!!.level)
        overlay.clearHidden(secondFade)
        assertNull(overlay.draft)
    }

    @Test fun movingOrResizingThePanelCancelsTheDraftAndInvalidatesCoordinatesCapturedBeforeTheChange() {
        val newLayouts = listOf(
            Offset(90f, 100f) to IntSize(600, 800),
            Offset(50f, 140f) to IntSize(600, 800),
            initialPanelOrigin to IntSize(500, 800),
            initialPanelOrigin to IntSize(600, 700),
        )
        for ((newOrigin, newSize) in newLayouts) {
            val overlay = measuredOverlay()
            assertTrue(overlay.open(ControlId.Wiper, slot, 3, actualLevel = 3))
            val oldRevision = overlay.coordinateRevision
            overlay.updatePanelBounds(newOrigin, newSize)
            assertFalse(overlay.visible)
            assertNull(overlay.draft)
            assertNotEquals("the active gesture must reject its captured coordinate revision", oldRevision,
                overlay.coordinateRevision)
            overlay.move(Offset(finger.x, finger.y - 100f))
            assertNull("a late position from the canceled gesture cannot recreate its draft", overlay.draft)
            assertTrue("the next gesture can use the new panel bounds", overlay.open(ControlId.Wiper, slot, 2, actualLevel = 2))
            assertEquals(2, overlay.draft!!.level)
        }
    }

    @Test fun theFirstRealLayoutAndRepeatedIdenticalBoundsDoNotInvalidateTheGesture() {
        val overlay = DockLevelOverlayState()
        val beforeLayout = overlay.coordinateRevision
        overlay.updatePanelBounds(Offset(900f, 1200f), IntSize.Zero)
        assertFalse("an unmeasured panel cannot open a track", overlay.open(ControlId.Wiper, slot, 3, actualLevel = 3))
        assertNull(overlay.draft)
        overlay.updatePanelBounds(initialPanelOrigin, initialPanelSize)
        assertEquals("first real measurement is not a resize of an existing gesture", beforeLayout,
            overlay.coordinateRevision)
        assertTrue(overlay.open(ControlId.Wiper, slot, 3, actualLevel = 3))
        val measuredRevision = overlay.coordinateRevision
        overlay.updatePanelBounds(initialPanelOrigin, initialPanelSize)
        assertEquals(measuredRevision, overlay.coordinateRevision)
        assertTrue(overlay.visible)
        assertEquals(3, overlay.draft!!.level)
    }

    private fun measuredOverlay() = DockLevelOverlayState().apply {
        widthPx = 100f
        heightPx = 400f // Four manual steps, each spanning 100px of relative movement.
        gapPx = 8f
        updatePanelBounds(initialPanelOrigin, initialPanelSize)
    }

    private data class ScaleExample(val maximum: Int, val height: Float,
        val samples: List<Pair<Float, Int>>, val edges: List<Float>)

    private companion object {
        val initialPanelOrigin = Offset(50f, 100f)
        val initialPanelSize = IntSize(600, 800)
        val slot = Rect(250f, 760f, 310f, 808f)
        val finger = Offset(280f, 784f)
    }
}
