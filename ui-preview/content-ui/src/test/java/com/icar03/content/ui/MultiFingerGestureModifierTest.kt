package com.icar03.content.ui

import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.icar03.content.model.GestureDirection
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Real ancestor Initial/Final dispatch, MotionEvent injection and disjoint child hit paths. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w480dp-h800dp-mdpi")
open class MultiFingerGestureModifierTest {
    @get:Rule val compose = createComposeRule()
    private val arbitration = MultiFingerGestureArbitration()
    private val results = mutableListOf<MultiFingerGestureResult>()
    private val ownership = mutableListOf<Boolean>()
    private val owner = object : LifecycleOwner {
        override val lifecycle = LifecycleRegistry.createUnsafe(this).apply { currentState = Lifecycle.State.RESUMED }
    }
    private val width = mutableStateOf(400.dp)
    private val session = mutableStateOf("lyrics-host-1")
    private val mediaTick = mutableStateOf(0)
    private val mounted = mutableStateOf(true)
    private var allowed = true
    private var lateMainDeny = false
    private var childGateClosures = 0
    private var closedGateMoveFrames = 0
    private var clicks = 0
    private var pageTaps = 0
    private var singleDragFrames = 0
    private var singleDragCommits = 0
    private var callbackVersion = -1

    private fun mount() {
        compose.setContent {
            val tick = mediaTick.value
            SideEffect { /* Reading tick deliberately recreates callbacks without input identity changes. */ tick.hashCode() }
            CompositionLocalProvider(LocalMultiFingerGestureArbitration provides arbitration,
                LocalLifecycleOwner provides owner) {
                if (mounted.value) Box(Modifier.width(width.value).height(600.dp)
                    .multiFingerGestures(session.value, { allowed }, { ownership += it }, { result ->
                        assertFalse("routing must see a cleared owner", arbitration.owned)
                        callbackVersion = tick
                        results += result
                    }, arbitration)
                    .pointerInput(Unit) {
                        awaitPointerEventScope {
                            while (true) {
                                // Foundation 1.7.6 dispatches Final ancestor-first. A child
                                // must change the gate in Main to precede this root's Final.
                                val event = awaitPointerEvent(PointerEventPass.Main)
                                if (lateMainDeny && event.changes.none { it.pressed }) {
                                    allowed = false
                                    childGateClosures++
                                }
                                if (!allowed && event.changes.any { it.previousPressed && it.pressed &&
                                        it.position != it.previousPosition }) closedGateMoveFrames++
                            }
                        }
                    }
                    .observeUnconsumedPageTap(true) { pageTaps++ }
                    .testTag("multi-root")) {
                    Box(Modifier.align(Alignment.TopStart).size(120.dp).clickable { clicks++ }.testTag("left-button"))
                    Box(Modifier.align(Alignment.TopEnd).size(120.dp).clickable { clicks++ }.testTag("right-button"))
                    Box(Modifier.align(Alignment.BottomStart).width(400.dp).height(180.dp)
                        .pointerInput(arbitration) {
                            awaitEachGesture {
                                val down = awaitFirstDown(requireUnconsumed = false)
                                var dragging = false
                                try {
                                    while (true) {
                                        val event = awaitPointerEvent(PointerEventPass.Main)
                                        if (arbitration.owned) break
                                        val change = event.changes.firstOrNull { it.id == down.id } ?: break
                                        if (!dragging && (change.position - down.position).getDistance() > viewConfiguration.touchSlop) {
                                            if (!arbitration.claimSingle()) break
                                            dragging = true
                                        }
                                        if (!change.pressed) {
                                            if (dragging) singleDragCommits++
                                            break
                                        }
                                        if (dragging) { singleDragFrames++; change.consume() }
                                    }
                                } finally { dragging = false }
                            }
                        }.testTag("single-drag"))
                }
            }
        }
        compose.waitForIdle()
    }

    private fun root() = compose.onNodeWithTag("multi-root")
    private fun pairMove(distance: Float = 48f, durationMillis: Long = 160L) {
        root().performTouchInput {
            down(0, Offset(60f, 60f))
            advanceEventTime(10)
            down(1, Offset(340f, 60f))
            updatePointerTo(0, Offset(60f + distance, 60f))
            updatePointerTo(1, Offset(340f + distance, 60f))
            move(durationMillis)
        }
    }
    private fun releasePair() { root().performTouchInput { up(0); up(1) } }

    @Test fun crossControlDownsCancelBothClicksAndCommitOnlyOnTheFinalUp() {
        mount()
        pairMove()
        compose.runOnIdle { assertTrue(arbitration.owned); assertTrue(results.isEmpty()); assertEquals(0, clicks) }
        root().performTouchInput { up(0) }
        compose.runOnIdle { assertTrue(arbitration.owned); assertTrue(results.isEmpty()) }
        root().performTouchInput { up(1) }
        assertEquals(listOf(MultiFingerGestureResult(2, GestureDirection.Right)), results)
        assertEquals(listOf(true, false), ownership)
        assertEquals(0, clicks)
        assertEquals(0, pageTaps)
        assertFalse(arbitration.owned)
    }

    @Test fun everyCoordinateInTheFirstUpFrameIsExcludedIncludingTheRemainingPointer() {
        mount()
        pairMove()
        root().performTouchInput {
            updatePointerTo(0, Offset(9000f, 9000f))
            updatePointerTo(1, Offset(-9000f, -9000f))
            up(0)
            up(1)
        }
        assertEquals(listOf(MultiFingerGestureResult(2, GestureDirection.Right)), results)
        assertEquals(0, clicks)
    }

    @Test fun aSlowSwipeRetainsTheSameCoreThroughMediaRecompositionsAndUsesTheLatestCallback() {
        mount()
        pairMove(distance = 24f, durationMillis = 1000L)
        compose.runOnIdle { mediaTick.value = 7 }
        compose.waitForIdle()
        root().performTouchInput {
            updatePointerTo(0, Offset(108f, 60f)); updatePointerTo(1, Offset(388f, 60f)); move(10_000L)
        }
        releasePair()
        assertEquals(listOf(MultiFingerGestureResult(2, GestureDirection.Right)), results)
        assertEquals(7, callbackVersion)
        assertEquals(listOf(true, false), ownership)
    }

    @Test fun aNonComposeLatestGateMutationOnFinalUpRejectsTheFrozenResult() {
        mount()
        pairMove()
        root().performTouchInput { up(0) }
        compose.runOnIdle { allowed = false }
        root().performTouchInput { up(1) }
        assertTrue(results.isEmpty())
        assertFalse(arbitration.owned)
        assertEquals(0, clicks)
    }

    @Test fun aGateClosedByAChildInMainIsRecheckedBeforeFinalRouting() {
        mount()
        pairMove()
        compose.runOnIdle { lateMainDeny = true }
        releasePair()
        assertEquals("the child closed the gate after Initial and before ancestor Final", 1, childGateClosures)
        assertTrue(results.isEmpty())
        assertFalse(arbitration.owned)
    }

    @Test fun gateDisableThenRestoreKeepsAnOwnedDrainUntilAllPointersLeave() {
        mount()
        pairMove()
        compose.runOnIdle { allowed = false }
        root().performTouchInput {
            // Node.buildCache suppresses a MOVE with unchanged positions. Move the
            // complete group so the non-Compose false gate is actually observed.
            updatePointerBy(0, Offset(1f, 0f)); updatePointerBy(1, Offset(1f, 0f)); move(10)
        }
        assertEquals("a real input frame reached the subtree while the gate was false", 1, closedGateMoveFrames)
        compose.runOnIdle { allowed = true; assertTrue(arbitration.owned) }
        releasePair()
        assertTrue(results.isEmpty())
        assertEquals(listOf(true, false), ownership)
        pairMove(); releasePair()
        assertEquals(1, results.size)
    }

    @Test fun sessionChangesAfterFreezingCancelWithoutRestartingTheHeldSequence() {
        mount()
        pairMove()
        root().performTouchInput { up(0) }
        compose.runOnIdle { session.value = "lyrics-host-2" }
        compose.waitForIdle()
        compose.runOnIdle { assertTrue(arbitration.owned) }
        root().performTouchInput { up(1) }
        assertTrue(results.isEmpty())
        pairMove(); releasePair()
        assertEquals(1, results.size)
    }

    @Test fun visibleRootGeometryChangesCancelTheFrozenResultAndDrainTheOldOwner() {
        mount()
        pairMove()
        root().performTouchInput { up(0) }
        compose.runOnIdle { width.value = 380.dp }
        compose.waitForIdle()
        compose.runOnIdle { assertTrue(arbitration.owned) }
        root().performTouchInput { up(1) }
        assertTrue(results.isEmpty())
        assertFalse(arbitration.owned)
        assertEquals(0, clicks)
    }

    @Test fun pauseThenResumeBeforeUpDoesNotResurrectTheFrozenCommand() {
        mount()
        pairMove()
        root().performTouchInput { up(0) }
        compose.runOnIdle {
            owner.lifecycle.currentState = Lifecycle.State.CREATED
            owner.lifecycle.currentState = Lifecycle.State.RESUMED
        }
        root().performTouchInput { up(1) }
        assertTrue(results.isEmpty())
        assertFalse(arbitration.owned)
    }

    @Test fun androidCancelAfterFreezingNeverBecomesANormalFinalUpAndNextDownStartsCleanly() {
        mount()
        pairMove()
        root().performTouchInput { up(0); cancel() }
        assertTrue(results.isEmpty())
        assertFalse(arbitration.owned)
        assertEquals(listOf(true, false), ownership)
        pairMove(); releasePair()
        assertEquals(1, results.size)
    }

    @Test fun pointerInputRemovalFinallyClearsOwnershipWithoutPublishingTheFrozenResult() {
        mount()
        pairMove()
        root().performTouchInput { up(0) }
        compose.runOnIdle { mounted.value = false }
        compose.waitForIdle()
        assertTrue(results.isEmpty())
        assertFalse(arbitration.owned)
        assertEquals(listOf(true, false), ownership)
    }

    @Test fun anExplicitSingleOwnerBlocksUpgradeEvenBeforeAnyPositionChange() {
        mount()
        root().performTouchInput { down(0, Offset(60f, 60f)) }
        compose.runOnIdle { assertTrue(arbitration.claimSingle()) }
        root().performTouchInput {
            advanceEventTime(10); down(1, Offset(340f, 60f))
            updatePointerTo(0, Offset(108f, 60f)); updatePointerTo(1, Offset(388f, 60f)); move(160)
            up(0); up(1)
        }
        assertTrue(results.isEmpty())
        assertTrue(ownership.isEmpty())
        assertFalse(arbitration.owned)
    }

    @Test fun ordinarySingleClicksBlankTapsAndAlreadyStartedDragsKeepTheirContracts() {
        mount()
        compose.onNodeWithTag("left-button").performTouchInput { click(center) }
        assertEquals(1, clicks)
        assertEquals(0, pageTaps)
        root().performTouchInput { click(Offset(200f, 250f)) }
        assertEquals(1, pageTaps)
        compose.onNodeWithTag("single-drag").performTouchInput { down(center); moveBy(Offset(0f, -48f)); up() }
        assertTrue(singleDragFrames > 0)
        assertEquals(1, singleDragCommits)
        assertTrue(results.isEmpty())
        assertTrue(ownership.isEmpty())
    }
}

@Config(sdk = [34], qualifiers = "w480dp-h800dp-mdpi")
class MultiFingerGestureModifierApi34Test : MultiFingerGestureModifierTest()
