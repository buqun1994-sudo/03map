package com.icar03.content.ui

import androidx.compose.runtime.*
import androidx.compose.runtime.snapshots.Snapshot
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.airbnb.lottie.LottieCompositionFactory
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class QuickControlAcceptanceTest {
    @get:Rule val compose = createComposeRule()
    private val state = mutableStateOf(ContentUiState(previewMode = false))
    private val events = mutableListOf<ContentEvent>()
    private var sounds = 0
    private var allowed = true
    private val owner = object : LifecycleOwner {
        override val lifecycle = LifecycleRegistry.createUnsafe(this).apply { currentState = Lifecycle.State.RESUMED }
    }

    private fun mount(onEvent: (ContentEvent) -> Unit = {}) {
        val assets = listOf("ico_lock_close_f.json", "ico_lock_open_f.json") +
            (0..4).map { vehicleControlIconRecipe(ControlId.Wiper, it, false).asset }
        assets.distinct().forEach {
            assertNotNull(LottieCompositionFactory.fromAssetSync(RuntimeEnvironment.getApplication(), "content-oem/$it").value)
        }
        compose.setContent {
            CompositionLocalProvider(LocalLifecycleOwner provides owner,
                LocalContentClickSound provides { sounds++ }) {
                ContentTheme(false) {
                    ContentPanel(state.value, { events += it; onEvent(it) }, canDispatch = { allowed })
                }
            }
        }
        compose.waitForIdle()
        compose.mainClock.autoAdvance = false
    }

    private fun idleIcon(tag: String) = compose.onNodeWithTag(tag, useUnmergedTree = true)
        .assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        .assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))

    private fun project(value: ContentUiState) {
        compose.runOnIdle { state.value = value; Snapshot.sendApplyNotifications() }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
    }

    @Test fun aGateChangedAfterDownRejectsReleaseWithoutSoundOrPlayback() {
        mount()
        val button = compose.onNodeWithTag("dock-Lock")
        button.performTouchInput { down(center) }
        compose.mainClock.advanceTimeBy(64)
        // This is deliberately not Compose state: the old enabled handler must recheck the owner.
        compose.runOnIdle { allowed = false }
        button.performTouchInput { up() }
        compose.mainClock.advanceTimeBy(320)
        compose.waitForIdle()
        assertTrue(events.isEmpty())
        assertEquals(0, sounds)
        idleIcon("dock-icon-Lock")
        idleIcon("shortcut-icon-Lock")
        compose.mainClock.autoAdvance = true
    }

    @Test fun aRetainedSemanticHandlerCannotAnimateOrSoundAfterPendingDisablesItsControl() {
        mount()
        val staleClick = compose.onNodeWithTag("control-Lock").fetchSemanticsNode()
            .config[SemanticsActions.OnClick].action!!
        project(state.value.copy(controls = state.value.controls +
            (ControlId.Lock to ControlState(actual = 1, target = 0, available = false))))
        compose.runOnIdle { staleClick() }
        compose.mainClock.advanceTimeBy(320)
        compose.waitForIdle()
        assertTrue(events.isEmpty())
        assertEquals(0, sounds)
        idleIcon("dock-icon-Lock")
        idleIcon("shortcut-icon-Lock")
        compose.mainClock.autoAdvance = true
    }

    @Test fun wiperReadbackDoesNotPlayAndOnlyTheAcceptedEntranceOwnsItsAnimation() {
        state.value = state.value.copy(controls = state.value.controls + (ControlId.Wiper to ControlState(actual = 1)))
        mount { event ->
            if (event == ContentEvent.ControlPowerTapped(ControlId.Wiper)) {
                val current = state.value.controls.getValue(ControlId.Wiper)
                state.value = state.value.copy(controls = state.value.controls +
                    (ControlId.Wiper to current.copy(target = if (current.actual == 0) 2 else 0, available = false)))
                Snapshot.sendApplyNotifications()
            }
        }
        project(state.value.copy(controls = state.value.controls + (ControlId.Wiper to ControlState(actual = 2))))
        idleIcon("shortcut-icon-Wiper")
        idleIcon("dock-icon-Wiper")
        for ((button, clicked, other) in listOf(
            Triple("control-Wiper", "shortcut-icon-Wiper", "dock-icon-Wiper"),
            Triple("dock-Wiper", "dock-icon-Wiper", "shortcut-icon-Wiper"),
        )) {
            compose.onNodeWithTag(button).performClick()
            compose.runOnIdle { Snapshot.sendApplyNotifications() }
            assertEquals("the clicked entrance accepts exactly one intent", if (button == "control-Wiper") 1 else 2, events.size)
            val target = state.value.controls.getValue(ControlId.Wiper).target!!
            val recipe = vehicleControlIconRecipe(ControlId.Wiper, target, false)
            compose.waitUntil(timeoutMillis = 5_000) {
                compose.mainClock.advanceTimeByFrame()
                compose.waitForIdle()
                idleIcon(other)
                val frame = compose.onNodeWithTag(clicked, useUnmergedTree = true).fetchSemanticsNode().config
                frame[OemResource] == recipe.resource && frame[IconAnimationReady] &&
                    frame[IconAnimationPlaying] && frame[IconAnimationProgress] > 0f && frame[IconAnimationProgress] < 1f
            }
            val pending = state.value.controls.getValue(ControlId.Wiper)
            project(state.value.copy(controls = state.value.controls +
                (ControlId.Wiper to ControlState(actual = pending.target!!))))
            compose.mainClock.advanceTimeBy(1400)
            compose.waitForIdle()
            idleIcon(clicked)
            idleIcon(other)
        }
        assertEquals(2, events.size)
        assertEquals(2, sounds)
        compose.mainClock.autoAdvance = true
    }
}
