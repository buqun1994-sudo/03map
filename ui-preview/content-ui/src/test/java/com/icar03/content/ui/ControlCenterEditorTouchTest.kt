package com.icar03.content.ui

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.size
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.unit.dp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.icar03.content.model.ControlCatalog
import com.icar03.content.model.ControlSurface
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/**
 * Real Compose input coverage for the modal editors. The state callback is deliberately updated
 * synchronously on BeginEdit so the first long press is also the drag session that the editor uses.
 */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [34], qualifiers = "w480dp-h800dp-mdpi")
class ControlCenterEditorTouchTest {
    @get:Rule val compose = createComposeRule()

    private val events = mutableListOf<ContentEvent>()
    private val lifecycleOwner = object : LifecycleOwner {
        override val lifecycle = LifecycleRegistry.createUnsafe(this).apply {
            currentState = Lifecycle.State.RESUMED
        }
    }

    private fun catalogIds(surface: ControlSurface): List<String> =
        ControlCatalog.forSurface(surface).map { it.id }

    private fun editorState(
        items: List<String> = listOf("lock", "seat_ventilation", "seat_heating", "seat_massage"),
        editing: Boolean = false,
    ): ContentUiState = ContentUiState(
        enabledControlIds = setOf("lock", "seat_ventilation", "seat_heating", "seat_massage"),
        enabledSystemIds = setOf("brightness", "volume", "call_volume", "navigation_volume", "voice_volume"),
        page = PanelPage.VehicleInfo,
        enabledContentIds = setOf(ControlCatalog.MEDIA, ControlCatalog.SETTINGS, ControlCatalog.CONTROL_CENTER_PAGE),
        controlCenterAvailable = true,
        controlCenterOpen = true,
        controlCenterEditing = editing,
        controlCenterItems = items,
        controlCenterAvailableItems = catalogIds(ControlSurface.ControlCenter),
        dockItems = listOf("lock", "seat_ventilation"),
        dockAvailableItems = catalogIds(ControlSurface.Dock),
        brightness = LevelState(.5f, available = true),
        volume = LevelState(.5f, available = true),
    )

    private fun mountSurface(state: androidx.compose.runtime.MutableState<ContentUiState>) {
        compose.setContent {
            val current = state.value
            ContentTheme(false) {
                CompositionLocalProvider(
                    LocalLifecycleOwner provides lifecycleOwner,
                    LocalContentWindowActive provides true,
                    LocalQuickControlClickAcceptance provides { true },
                    LocalQuickControlDispatch provides { event -> events += event; true },
                ) {
                    Box(Modifier.size(480.dp, 800.dp)) {
                        ControlCenterSurface(
                            state = current,
                            onEvent = { event ->
                                events += event
                                if (event is LayoutAction && event.action == ControlCenterEditAction.BeginEdit) {
                                    state.value = state.value.copy(controlCenterEditing = true)
                                }
                            },
                            fullEditor = current.controlCenterEditing && current.controlCenterAddPanelOpen,
                            enabled = true,
                            showClose = true,
                        )
                    }
                }
            }
        }
        compose.waitForIdle()
    }

    private fun mountContentPanel(
        state: androidx.compose.runtime.MutableState<ContentUiState>,
        sounds: MutableList<Unit>,
    ) {
        compose.setContent {
            val current = state.value
            ContentTheme(false) {
                CompositionLocalProvider(
                    LocalLifecycleOwner provides lifecycleOwner,
                    LocalContentWindowActive provides true,
                    LocalQuickControlClickAcceptance provides { true },
                    LocalQuickControlDispatch provides { event -> events += event; true },
                    LocalContentClickSound provides { sounds += Unit },
                ) {
                    Box(Modifier.size(480.dp, 800.dp)) {
                        ContentPanel(
                            state = current,
                            onEvent = { event ->
                                events += event
                                if (event is LayoutAction) {
                                    state.value = LayoutEditor.reduce(state.value, event)
                                }
                            },
                            modifier = Modifier.fillMaxSize(),
                        )
                    }
                }
            }
        }
        compose.waitForIdle()
    }

    @Test
    fun ordinaryBusinessTapDispatchesOnceOutsideEdit() {
        val state = mutableStateOf(editorState())
        mountSurface(state)

        compose.onNodeWithTag("control-Lock").performTouchInput { click() }

        assertEquals(listOf(ContentEvent.ControlTapped(ControlId.Lock)), events)
    }

    @Test
    fun firstLongPressEntersEditAndContinuesSameGestureToOneMove() {
        val state = mutableStateOf(editorState(editing = false).copy(layoutPreferencesLoaded = true))
        val sounds = mutableListOf<Unit>()
        mountContentPanel(state, sounds)
        val tile = compose.onNodeWithTag("control-center-item-lock")

        tile.performTouchInput {
            down(center)
            advanceEventTime(700)
            moveBy(Offset.Zero)
        }
        compose.waitForIdle()
        assertTrue("BeginEdit must be accepted before the same finger moves", state.value.controlCenterEditing)
        tile.performTouchInput {
            moveBy(Offset(130f, 0f), delayMillis = 120)
            up()
        }
        compose.waitForIdle()

        assertTrue(events.any {
            it == LayoutAction(ControlCenterEditAction.BeginEdit, input = LayoutInput.LongPress)
        })
        assertEquals(1, events.count { it is LayoutAction && it.action == ControlCenterEditAction.MoveItem })
        assertTrue(state.value.controlCenterEditing)
        assertFalse(events.any { it is ContentEvent.ControlTapped })
    }

    @Test
    fun candidateDragWorksThroughContentPanelWhileBusinessIsDisabled() {
        val state = mutableStateOf(LayoutSession.CenterAdding.project(
            editorState(items = listOf("lock"), editing = true).copy(
                layoutPreferencesLoaded = true,
                controlCenterAvailableItems = listOf("lock", ControlCatalog.MEDIA),
            ),
        ))
        val sounds = mutableListOf<Unit>()
        mountContentPanel(state, sounds)
        val source = compose.onNodeWithTag("add-control-media").fetchSemanticsNode().boundsInRoot
        val viewport = compose.onNodeWithTag("control-center-item-viewport").fetchSemanticsNode().boundsInRoot
        val target = Offset(viewport.left + viewport.width * .75f, viewport.top + 60f)
        val root = compose.onRoot()
        root.performTouchInput {
            down(source.center)
            advanceEventTime(700)
            moveBy(Offset.Zero)
        }
        compose.waitForIdle()
        root.performTouchInput {
            moveTo(target, delayMillis = 160)
            up()
        }
        compose.waitForIdle()

        assertEquals(listOf("lock", ControlCatalog.MEDIA), state.value.controlCenterItems)
        assertEquals(1, events.count { it is LayoutAction && it.action == ControlCenterEditAction.AddItem })
        assertTrue(events.filterIsInstance<LayoutAction>().all { it.input == LayoutInput.Drag })
        assertTrue(events.none { it is ContentEvent.ControlTapped })
        assertTrue(sounds.isEmpty())
        assertTrue(state.value.controlCenterEditing)
        assertTrue(state.value.controlCenterAddPanelOpen)
    }

    @Test
    fun releasingDragBeforeNextAnimationFrameDoesNotResumeAnEndedSession() {
        compose.mainClock.autoAdvance = false
        val state = mutableStateOf(editorState(editing = true))
        mountSurface(state)
        val tile = compose.onNodeWithTag("control-center-item-lock")
        tile.performTouchInput {
            down(center)
            advanceEventTime(700)
            moveBy(Offset.Zero)
        }
        compose.mainClock.advanceTimeBy(64)
        compose.onNodeWithTag("control-center-item-drop-slot").assertExists()
        tile.performTouchInput { up() }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        compose.onNodeWithTag("control-center-item-drop-slot").assertDoesNotExist()
        assertFalse(events.any { it is ContentEvent.ControlTapped })
        compose.mainClock.autoAdvance = true
    }

    @Test
    fun candidateCannotBeginWhenRootAlreadyOwnsMultiplePointers() {
        val session = DragSession()
        val arbitration = MultiFingerGestureArbitration().apply {
            beginSequence()
            setOwned(true)
        }
        var starts = 0
        compose.setContent {
            ContentTheme(false) {
                CompositionLocalProvider(
                    LocalLifecycleOwner provides lifecycleOwner,
                    LocalContentWindowActive provides true,
                    LocalQuickControlInteractionEnabled provides false,
                    LocalMultiFingerGestureArbitration provides arbitration,
                ) {
                    DragRoot(session, enabled = true, sessionKey = "owned") {
                        Box(Modifier.size(160.dp)
                            .editDragSource(ControlCatalog.MEDIA, onDragStart = { starts++ })
                            .testTag("owned-candidate"))
                    }
                }
            }
        }
        compose.waitForIdle()
        val candidate = compose.onNodeWithTag("owned-candidate")
        candidate.performTouchInput {
            down(center)
            advanceEventTime(700)
            moveBy(Offset.Zero)
        }
        compose.waitForIdle()
        assertEquals(0, starts)
        assertNull(session.activeDrag)
        candidate.performTouchInput { up() }
    }

    @Test
    fun endingEditImmediatelyClearsLivePreviewWithoutWaitingForOldUp() {
        val initialIds = listOf("lock", "seat_ventilation")
        val state = mutableStateOf(LayoutSession.CenterEditing.project(
            editorState(items = initialIds, editing = true).copy(layoutPreferencesLoaded = true),
        ))
        val sounds = mutableListOf<Unit>()
        mountContentPanel(state, sounds)
        val tile = compose.onNodeWithTag("control-center-item-lock")
        tile.performTouchInput {
            down(center)
            advanceEventTime(700)
            moveBy(Offset.Zero)
        }
        compose.waitForIdle()
        compose.onNodeWithTag("control-center-item-drop-slot").assertExists()
        compose.onNodeWithText("完成").performSemanticsAction(androidx.compose.ui.semantics.SemanticsActions.OnClick) {
            assertTrue(it())
        }
        compose.waitForIdle()
        assertFalse(state.value.controlCenterEditing)
        compose.onNodeWithTag("control-center-item-drop-slot").assertDoesNotExist()
        tile.performTouchInput { up() }
        compose.waitForIdle()
        assertEquals(initialIds, state.value.controlCenterItems)
        assertFalse(events.any { it is LayoutAction && it.action == ControlCenterEditAction.MoveItem })
        assertFalse(events.any { it is ContentEvent.ControlTapped })
        assertEquals(1, sounds.size)
    }

    @Test
    fun cancelAfterFirstLongPressLeavesNoMoveAndNoBusinessEvent() {
        val state = mutableStateOf(editorState(editing = false))
        mountSurface(state)
        val tile = compose.onNodeWithTag("control-center-item-lock")

        tile.performTouchInput {
            down(center)
            advanceEventTime(700)
            moveBy(Offset.Zero)
        }
        compose.waitForIdle()
        assertTrue(state.value.controlCenterEditing)
        tile.performTouchInput {
            moveBy(Offset(150f, 0f), delayMillis = 120)
            cancel()
        }
        compose.waitForIdle()

        assertTrue(events.any {
            it == LayoutAction(ControlCenterEditAction.BeginEdit, input = LayoutInput.LongPress)
        })
        assertTrue(events.none { it is LayoutAction && it.action == ControlCenterEditAction.MoveItem })
        assertTrue(events.none { it is ContentEvent.ControlTapped })
    }

    @Test
    fun editingSuppressesBusinessTileClicks() {
        val state = mutableStateOf(editorState(editing = true))
        mountSurface(state)

        compose.onNodeWithTag("control-Lock").performTouchInput { click() }

        assertTrue(events.isEmpty())
    }

    @Test
    fun unimplementedClimateIsNotOfferedAsAnAddCandidate() {
        val state = mutableStateOf(editorState(items = listOf("climate"), editing = true)
            .copy(controlCenterAvailableItems = listOf(ControlCatalog.CLIMATE)))
        mountSurface(state)
        compose.onNodeWithTag("control-unavailable-climate").assertIsNotEnabled()
        compose.onNodeWithText("当前未配置空调控制").assertExists()

        compose.runOnIdle {
            state.value = state.value.copy(controlCenterItems = emptyList(), controlCenterAddPanelOpen = true)
        }
        compose.waitForIdle()
        compose.onNodeWithTag("control-center-add-panel").assertExists()
        compose.onNodeWithTag("add-control-climate").assertDoesNotExist()
        assertTrue(events.none {
            it is LayoutAction && it.action == ControlCenterEditAction.AddItem && it.id == ControlCatalog.CLIMATE
        })
    }

    @Test
    fun dockRestoreUsesDeclaredAvailableItemsAndNeverOffersClimate() {
        val state = mutableStateOf(editorState(editing = false).copy(controlCenterOpen = false, dockEditing = true,
            dockAvailableItems = catalogIds(ControlSurface.Dock) + ControlCatalog.CLIMATE))
        compose.setContent {
            val current = state.value
            ContentTheme(false) {
                CompositionLocalProvider(LocalLifecycleOwner provides lifecycleOwner,
                    LocalContentWindowActive provides true) {
                    Box(Modifier.size(480.dp, 800.dp)) {
                        ControlCenterOverlay(
                            state = current,
                            onEvent = { events += it },
                            splitWidth = 480.dp,
                            fullWidth = 480.dp,
                            topBarHeight = 0.dp,
                            dockHeight = 160.dp,
                        )
                    }
                }
            }
        }
        compose.waitForIdle()

        compose.onNodeWithTag("add-dock-seat_massage").performTouchInput { click() }
        compose.onNodeWithTag("add-dock-climate").assertDoesNotExist()
        assertTrue(events.any { it == LayoutAction(ControlCenterEditAction.AddDockItem, id = "seat_massage") })
    }

    @Test
    fun centerOverlayOnOrdinaryPageEndsEditingThenClosesOnce() {
        val state = mutableStateOf(
            LayoutSession.CenterEditing.project(
                editorState(items = emptyList(), editing = true).copy(
                    page = PanelPage.VehicleInfo,
                    layoutPreferencesLoaded = true,
                ),
            ),
        )
        val sounds = mutableListOf<Unit>()
        mountContentPanel(state, sounds)

        compose.onNodeWithTag("content-modal-surface").assertExists()
        compose.onNodeWithTag("control-center-overlay").assertExists()
        compose.onNodeWithTag("control-center-overlay").performTouchInput { click(center) }
        compose.waitForIdle()

        assertEquals(PanelPage.VehicleInfo, state.value.page)
        assertTrue(state.value.controlCenterOpen)
        assertFalse(state.value.controlCenterEditing)
        assertEquals(
            listOf(LayoutAction(ControlCenterEditAction.EndEdit, input = LayoutInput.Tap)),
            events.filterIsInstance<LayoutAction>(),
        )
        assertEquals(1, sounds.size)

        compose.onNodeWithTag("control-center-overlay").performTouchInput { click(center) }
        compose.waitForIdle()
        assertFalse(state.value.controlCenterOpen)
        assertEquals(
            listOf(
                LayoutAction(ControlCenterEditAction.EndEdit, input = LayoutInput.Tap),
                LayoutAction(ControlCenterEditAction.Close, input = LayoutInput.Tap),
            ),
            events.filterIsInstance<LayoutAction>(),
        )
        assertEquals(2, sounds.size)
    }

    @Test
    fun centerOverlayLongPressAndCancelStaySilent() {
        val state = mutableStateOf(
            LayoutSession.CenterEditing.project(
                editorState(items = emptyList(), editing = true).copy(
                    page = PanelPage.VehicleInfo,
                    layoutPreferencesLoaded = true,
                ),
            ),
        )
        val sounds = mutableListOf<Unit>()
        mountContentPanel(state, sounds)
        val overlay = compose.onNodeWithTag("control-center-overlay")

        overlay.performTouchInput {
            down(center)
            advanceEventTime(700)
            moveBy(Offset.Zero)
            up()
        }
        overlay.performTouchInput {
            down(center)
            advanceEventTime(100)
            cancel()
        }
        compose.waitForIdle()

        assertTrue(events.none { it is LayoutAction })
        assertTrue(sounds.isEmpty())
        assertTrue(state.value.controlCenterOpen)
        assertTrue(state.value.controlCenterEditing)
    }

    @Test
    fun closingModalRetainsBackdropButRejectsBusinessTapDuringExit() {
        val state = mutableStateOf(editorState().copy(controlCenterOpen = true))
        val visibility = mutableListOf<Boolean>()
        compose.setContent {
            val current = state.value
            ContentTheme(false) {
                CompositionLocalProvider(LocalLifecycleOwner provides lifecycleOwner,
                    LocalContentWindowActive provides true,
                    LocalQuickControlClickAcceptance provides { true },
                    LocalQuickControlDispatch provides { event -> events += event; true }) {
                    Box(Modifier.size(480.dp, 800.dp)) {
                        ControlCenterOverlay(
                            state = current,
                            onEvent = { event ->
                                events += event
                                if (event == LayoutAction(ControlCenterEditAction.Close)) {
                                    state.value = state.value.copy(controlCenterOpen = false)
                                }
                            },
                            splitWidth = 480.dp,
                            fullWidth = 480.dp,
                            topBarHeight = 0.dp,
                            dockHeight = 160.dp,
                            onVisibilityChanged = { visibility += it },
                        )
                    }
                }
            }
        }
        compose.waitForIdle()
        compose.mainClock.autoAdvance = false
        compose.onNodeWithContentDescription("关闭控制中心").performTouchInput { click() }
        compose.mainClock.advanceTimeBy(32)
        compose.onNodeWithTag("content-modal-surface").assertExists()
        compose.onNodeWithTag("control-Lock").performTouchInput { click() }
        compose.waitForIdle()

        assertTrue(visibility.contains(true))
        assertTrue(events.contains(LayoutAction(ControlCenterEditAction.Close)))
        assertFalse(events.any { it is ContentEvent.ControlTapped })
        assertFalse(events.any { it is LayoutAction && it.action == ControlCenterEditAction.BeginEdit })
        compose.mainClock.advanceTimeBy(320)
        compose.waitForIdle()
        compose.onNodeWithTag("content-modal-surface").assertDoesNotExist()
        assertFalse(visibility.last())
        compose.mainClock.autoAdvance = true
    }
}
