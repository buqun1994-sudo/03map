package com.icar03.content.ui

import android.view.View
import android.view.WindowManager
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.size
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import com.icar03.content.model.GestureCommand
import kotlinx.coroutines.Dispatchers
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w1920dp-h1080dp-mdpi")
class MultiFingerGesturePanelTest {
    @get:Rule val compose = createComposeRule()
    private val presentation = ContentPresentation().apply {
        updateGeometry(640f, 640f, 1280f, 1080); updatePhase(0); updateGestureWidth(60)
    }
    private var state by mutableStateOf(previewState().copy(previewMode = false, page = PanelPage.Lyrics,
        dockButtonCount = DockShortcuts.MAX_BUTTONS,
        lyrics = LyricsState(recordingKey = "multi-finger-panel", timelineReady = true,
            durationMs = 60_000L, positionMs = 2_000L, scrollIndex = 1, activeIndex = 1,
            lines = (0..8).map { LyricLine(it * 2_000L, "内容区手势原生验证第${it + 1}行") })))
    private val events = mutableListOf<ContentEvent>()
    private var sounds = 0

    private fun mount(canDispatch: (ContentEvent) -> Boolean = { event ->
        event !is ContentEvent.GesturePerformed ||
            MultiFingerGestureRouting.resolve(event.command, state, presentation) != null
    }) {
        compose.setContent {
            val view = LocalView.current
            SideEffect {
                var context = view.context
                while (context is android.content.ContextWrapper && context !is android.app.Activity) context = context.baseContext
                val window = (context as android.app.Activity).window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                @Suppress("DEPRECATION")
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            CompositionLocalProvider(LocalContentClickSound provides { sounds++ },
                LocalLyricGeometryDispatcher provides Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined) {
                ContentTheme(state.dark) {
                    Box(Modifier.size(if (presentation.collapsed) 1920.dp else 640.dp, 1080.dp)) {
                        ContentPanel(state, { event ->
                            events += event
                            if (event is ContentEvent.PageSelected) state = state.copy(page = event.page)
                        }, presentation = presentation, canDispatch = canDispatch)
                    }
                }
            }
        }
        compose.waitForIdle()
        events.clear(); sounds = 0
    }

    private fun region() = compose.onNodeWithTag("content-gesture-region", useUnmergedTree = true)
    private fun startPair(first: Offset = Offset(180f, 350f), second: Offset = Offset(350f, 450f)) {
        region().performTouchInput { down(0, first); advanceEventTime(30); down(1, second) }
    }
    private fun movePair(delta: Offset = Offset(100f, 0f)) {
        region().performTouchInput {
            updatePointerBy(0, delta); updatePointerBy(1, delta); move(delayMillis = 200)
        }
    }
    private fun releasePair() { region().performTouchInput { up(0); up(1) } }

    @Test fun rightSwipeSubmitsOnlyAfterLastUpAndDoesNotFlipPageOrPlayClick() {
        mount(); startPair(); movePair()
        assertFalse(presentation.pagerMotion)
        assertTrue(events.isEmpty())
        region().performTouchInput { up(0) }
        assertFalse(presentation.pagerMotion)
        assertTrue(events.isEmpty())
        region().performTouchInput { up(1) }
        assertEquals(listOf(ContentEvent.GesturePerformed(GestureCommand.TwoRight)), events)
        assertEquals(0, sounds)
        assertEquals(PanelPage.Lyrics, state.page)
        compose.onNodeWithTag("page-action-enter").assertDoesNotExist()
    }

    @Test fun fullscreenLeftSwipeUsesTheSameIntentWithoutLyricsScroll() {
        presentation.updateGeometry(1920f, 640f, 1280f, 1080); presentation.updatePhase(1)
        mount(); startPair(Offset(600f, 350f), Offset(850f, 450f)); movePair(Offset(-100f, 0f)); releasePair()
        assertEquals(listOf(ContentEvent.GesturePerformed(GestureCommand.TwoLeft)), events)
        assertEquals(0, sounds)
        assertEquals(PanelPage.Lyrics, state.page)
    }

    @Test fun verticalMultiFingerAcrossLyricsDoesNotChangeScrollOffsetOrContinueWithTheRemainingFinger() {
        mount()
        val lyric = compose.onNode(SemanticsMatcher.keyIsDefined(LyricScrollOffset), useUnmergedTree = true)
        val before = lyric.fetchSemanticsNode().config[LyricScrollOffset]
        val bounds = lyric.fetchSemanticsNode().boundsInRoot
        val origin = region().fetchSemanticsNode().boundsInRoot.topLeft
        val center = bounds.center - origin
        startPair(center - Offset(70f, 0f), center + Offset(70f, 40f))
        movePair(Offset(0f, -100f))
        assertEquals(before, lyric.fetchSemanticsNode().config[LyricScrollOffset], .01f)
        assertFalse(presentation.pagerMotion)
        region().performTouchInput { up(0); moveBy(1, Offset(0f, -80f)); up(1) }
        compose.mainClock.advanceTimeBy(600); compose.waitForIdle()
        assertEquals(before, lyric.fetchSemanticsNode().config[LyricScrollOffset], .01f)
        assertTrue(events.isEmpty()); assertEquals(0, sounds)
    }

    @Test fun unboundDirectionConsumesMultiTouchWithoutAnyBusinessOrBlankTap() {
        mount(); startPair(); movePair(Offset(0f, -100f)); releasePair()
        assertTrue(events.isEmpty()); assertEquals(0, sounds)
        compose.onNodeWithTag("page-action-enter").assertDoesNotExist()
    }

    @Test fun unsupportedPageDoesNotEnterFullscreenAndOrdinarySingleTapStillWorks() {
        state = state.copy(page = PanelPage.Shortcuts)
        mount(); startPair(); movePair(); releasePair()
        assertTrue(events.none { it is ContentEvent.GesturePerformed })
        assertEquals(0, sounds)
        events.clear()
        compose.onNodeWithTag("dock-Heating").performTouchInput { click(center) }
        assertEquals(listOf(ContentEvent.ControlTapped(ControlId.Heating)), events)
        assertEquals(1, sounds)
    }

    @Test fun fingersAcrossTwoDockButtonsCancelBothClicksAndRipple() {
        mount()
        val bounds = region().fetchSemanticsNode().boundsInRoot
        val heating = compose.onNodeWithTag("dock-Heating")
        val ventilation = compose.onNodeWithTag("dock-Ventilation")
        val first = heating.fetchSemanticsNode().boundsInRoot.center - bounds.topLeft
        val second = ventilation.fetchSemanticsNode().boundsInRoot.center - bounds.topLeft
        startPair(first, second)
        heating.assert(SemanticsMatcher.expectValue(RippleRunning, false))
        ventilation.assert(SemanticsMatcher.expectValue(RippleRunning, false))
        movePair(Offset(50f, 0f)); releasePair()
        assertEquals(listOf(ContentEvent.GesturePerformed(GestureCommand.TwoRight)), events)
        assertEquals(0, sounds)
        compose.onNodeWithTag("dock-overlay-host").assert(SemanticsMatcher.expectValue(DockOverlayVisible, false))
    }

    @Test fun settingsOpeningAndClosingBeforeReleaseCannotReviveFrozenResult() {
        mount(); startPair(); movePair()
        region().performTouchInput { up(0) }
        compose.runOnIdle { state = state.copy(settingsOpen = true) }
        compose.waitForIdle()
        compose.runOnIdle { state = state.copy(settingsOpen = false) }
        compose.waitForIdle()
        region().performTouchInput { up(1) }
        assertTrue(events.isEmpty()); assertEquals(0, sounds)
    }

    @Test fun inputGenerationChangeCancelsEvenWhenGeometryAndEnabledReturnToSameValues() {
        mount(); startPair(); movePair()
        compose.runOnIdle { presentation.invalidateInput() }
        releasePair()
        assertTrue(events.isEmpty()); assertEquals(0, sounds)
        startPair(); movePair(); releasePair()
        assertEquals(listOf(ContentEvent.GesturePerformed(GestureCommand.TwoRight)), events)
    }

    @Test fun staleUnboundUiProjectionCannotDiscardACommandAcceptedByTheLatestBindingGate() {
        state = state.copy(gestureActions = com.icar03.content.model.GesturePreferences.withAction(
            state.gestureActions, GestureCommand.TwoRight, com.icar03.content.model.GestureAction.None))
        mount(canDispatch = { event ->
            event !is ContentEvent.GesturePerformed || MultiFingerGestureRouting.resolve(event.command,
                state.copy(gestureActions = com.icar03.content.model.GesturePreferences.defaultActions()), presentation) != null
        })
        startPair(); movePair(); releasePair()
        assertEquals(listOf(ContentEvent.GesturePerformed(GestureCommand.TwoRight)), events)
        assertEquals(0, sounds)
    }

    @Test fun currentPreferencesAreReadAtFinalReleaseAndCancelNeverExecutes() {
        mount(); startPair(); movePair()
        compose.runOnIdle { state = state.copy(gestureActions = com.icar03.content.model.GesturePreferences.withAction(
            state.gestureActions, GestureCommand.TwoRight, com.icar03.content.model.GestureAction.None)) }
        releasePair()
        assertTrue(events.isEmpty()); assertEquals(0, sounds)
        compose.runOnIdle { state = state.copy(gestureActions = com.icar03.content.model.GesturePreferences.withAction(
            state.gestureActions, GestureCommand.TwoRight, com.icar03.content.model.GestureAction.EnterImmersive)) }
        startPair(); movePair()
        region().performTouchInput { up(0); cancel() }
        assertTrue(events.isEmpty()); assertEquals(0, sounds)
    }
}
