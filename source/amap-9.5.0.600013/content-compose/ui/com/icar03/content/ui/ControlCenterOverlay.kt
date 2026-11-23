package com.icar03.content.ui

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.core.MutableTransitionState
import androidx.compose.animation.core.animateDpAsState
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.animation.expandHorizontally
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.shrinkHorizontally
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Close
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.onClick
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.selected
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.zIndex
import com.icar03.content.model.ControlCatalog
import com.icar03.content.model.ControlDefinition
import kotlin.math.max

private enum class EditorPane { Center, Cards, Dock }

/** Retain both the modal hit surface and its last contents through the final exit frame. */
@Composable
internal fun ControlCenterOverlay(
    state: ContentUiState,
    onEvent: (ContentEvent) -> Unit,
    splitWidth: Dp,
    fullWidth: Dp,
    topBarHeight: Dp,
    dockHeight: Dp,
    artwork: @Composable (() -> Unit)? = null,
    onVisibilityChanged: (Boolean) -> Unit = {},
) {
    val pane = when {
        state.controlCenterOpen -> EditorPane.Center
        state.controlCardListOpen -> EditorPane.Cards
        state.dockEditing -> EditorPane.Dock
        else -> null
    }
    val shown = pane != null
    var retainedState by remember { mutableStateOf(state) }
    var retainedPane by remember { mutableStateOf(EditorPane.Center) }
    val visible = remember { MutableTransitionState(false) }
    visible.targetState = shown
    val visibilityCallback by rememberUpdatedState(onVisibilityChanged)
    SideEffect {
        if (shown) {
            retainedState = state
            retainedPane = requireNotNull(pane)
        }
    }
    LaunchedEffect(visible) {
        snapshotFlow { visible.targetState || visible.currentState || !visible.isIdle }
            .collect { visibilityCallback(it) }
    }
    DisposableEffect(Unit) { onDispose { visibilityCallback(false) } }
    val displayed = if (shown) state else retainedState
    val displayedPane = pane ?: retainedPane
    val fullEditor = (displayedPane == EditorPane.Center && displayed.controlCenterEditing && displayed.controlCenterAddPanelOpen) ||
         (displayedPane == EditorPane.Cards && displayed.controlCardAddPanelOpen)
            val width by animateDpAsState(
        if (fullEditor) fullWidth else splitWidth,
        tween(320), label = "control-editor-width",
    )
    val surfaceReveal by animateFloatAsState(if (shown) 1f else 0f,
        tween(240), label = "control-editor-surface-motion")
    val currentEvent by rememberUpdatedState(onEvent)
    val enabled = shown && (LocalContentWindowActive.current ?: rememberContentWindowActive())
    val dispatch: (ContentEvent) -> Unit = { if (enabled) currentEvent(it) }
    val dismiss = when (displayedPane) {
        EditorPane.Center -> ControlCenterEditAction.Close
        EditorPane.Cards -> ControlCenterEditAction.CloseCardList
        EditorPane.Dock -> ControlCenterEditAction.EndDockEdit
    }
    Box(Modifier.fillMaxSize().zIndex(6f)) {
        AnimatedVisibility(
            visibleState = visible,
            enter = fadeIn(tween(240)), exit = fadeOut(tween(240)),
        ) {
            Box(Modifier.fillMaxSize().testTag("content-modal-surface")) {
                Box(Modifier.fillMaxSize()
                    .background(Color.Black.copy(alpha = .32f))
                    .clickable(
                        interactionSource = remember { MutableInteractionSource() }, indication = null,
                        onClickLabel = "关闭编辑面板",
                    ) { dispatch(LayoutAction(dismiss)) })
                val surfaceModifier = if (displayedPane == EditorPane.Dock) {
                    Modifier.align(Alignment.BottomStart).width(splitWidth)
                        .padding(horizontal = 12.dp, vertical = 12.dp)
                } else {
                    Modifier.align(Alignment.TopStart).width(width).fillMaxHeight()
                        .padding(top = topBarHeight, start = 12.dp, end = 12.dp, bottom = 12.dp)
                }
                Surface(
                    modifier = surfaceModifier.graphicsLayer {
                        val direction = if (displayedPane == EditorPane.Dock) 1f else -1f
                        translationX = if (displayedPane == EditorPane.Dock) 0f
                        else direction * (1f - surfaceReveal) * 26.dp.toPx()
                        translationY = if (displayedPane == EditorPane.Dock)
                            (1f - surfaceReveal) * 26.dp.toPx() else 0f
                        alpha = surfaceReveal
                    }.testTag(if (displayedPane == EditorPane.Center) "control-center-overlay" else "surface-list-overlay"),
                    shape = RoundedCornerShape(24.dp),
                    color = interfaceSurfaceColor(LocalContentColors.current.sheetBase),
                ) {
                    Box((if (displayedPane == EditorPane.Dock) Modifier.fillMaxWidth() else Modifier.fillMaxSize())
                         .observeUnconsumedPageTap(enabled) { dispatch(LayoutAction(LayoutEditor.blankAction(displayed), input = LayoutInput.Tap)) }
                         .semantics {
                             onClick("关闭编辑面板") {
                                 dispatch(LayoutAction(LayoutEditor.blankAction(displayed), input = LayoutInput.Tap))
                                 true
                             }
                         }) {
                        when (displayedPane) {
                            EditorPane.Center -> ControlCenterSurface(displayed, dispatch, fullEditor,
                                enabled = enabled, showClose = true)
                            EditorPane.Cards -> ControlCardListSurface(displayed, dispatch, enabled, artwork)
                            EditorPane.Dock -> DockEditSurface(displayed, dispatch, dockHeight, enabled)
                        }
                    }
                }
            }
        }
    }
}

@Composable
internal fun ControlCenterPage(state: ContentUiState, onEvent: (ContentEvent) -> Unit) {
    ControlCenterSurface(state, onEvent,
        fullEditor = state.controlCenterEditing && state.controlCenterAddPanelOpen)
}

@Composable
internal fun ControlCenterSurface(
    state: ContentUiState,
    onEvent: (ContentEvent) -> Unit,
    fullEditor: Boolean,
    enabled: Boolean = true,
    showClose: Boolean = false,
) {
    val active = enabled && (LocalContentWindowActive.current ?: rememberContentWindowActive())
    val available = state.controlCenterAvailableItems.distinct().mapNotNull(ControlCatalog::find)
        .filter { it.implemented && it.id !in state.controlCenterItems && it.id != ControlCatalog.CONTROL_CENTER_PAGE }
    BoxWithConstraints(Modifier.fillMaxSize()) {
        val edge = if (maxWidth < 400.dp) 12.dp else 20.dp
        val editorWidth = maxWidth
        val dragSession = rememberDragSession()
        LaunchedEffect(dragSession, state.controlCenterEditing) {
            if (!state.controlCenterEditing) dragSession.cancel()
        }
     DragRoot(
         session = dragSession,
         enabled = active,
         sessionKey = state.controlCenterItems,
         modifier = Modifier.fillMaxSize(),
     ) {
         Column(Modifier.fillMaxSize().padding(edge)) {
            Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                Text("控制中心", Modifier.weight(1f), style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.SemiBold)
                if (!state.controlCenterEditing) {
                    TextButton(enabled = active, onClick = { onEvent(LayoutAction(ControlCenterEditAction.BeginEdit)) }) {
                        Text("编辑")
                    }
                } else {
                    TextButton(enabled = active,
                        onClick = { onEvent(LayoutAction(ControlCenterEditAction.ToggleAddPanel)) }) {
                        Icon(Icons.Default.Add, null, Modifier.size(18.dp))
                        Spacer(Modifier.width(4.dp))
                        Text("添加")
                    }
                    TextButton(enabled = active, onClick = { onEvent(LayoutAction(ControlCenterEditAction.EndEdit)) }) {
                        Text("完成")
                    }
                }
                if (showClose) IconButton(enabled = active,
                    onClick = { onEvent(LayoutAction(ControlCenterEditAction.Close)) }) {
                    Icon(Icons.Default.Close, "关闭控制中心")
                }
            }
            Text(if (state.controlCenterEditing) "长按拖动调整位置，点按减号移除" else "长按任一组件调整布局",
                style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
            Spacer(Modifier.height(12.dp))
            if (editorWidth < 560.dp) {
                // A side sheet would leave four cells below the touch target width on narrow panels.
                // Stack it under the full-width grid instead; the grid remains four responsive columns.
                Column(Modifier.weight(1f).fillMaxWidth()) {
                    ControlCenterGrid(state, onEvent, active,
                        Modifier.weight(1f).fillMaxWidth())
                    AnimatedAddControlPanel(
                        visible = fullEditor,
                        available = available,
                        enabled = active && fullEditor,
                        onEvent = onEvent,
                        modifier = Modifier.fillMaxWidth().heightIn(max = 260.dp).padding(top = 12.dp),
                    )
                }
            } else {
                Row(Modifier.weight(1f).fillMaxWidth()) {
                    ControlCenterGrid(state, onEvent, active,
                        Modifier.weight(1f).fillMaxHeight())
                    AnimatedAddControlPanel(
                        visible = fullEditor,
                        available = available,
                        enabled = active && fullEditor,
                        onEvent = onEvent,
                        modifier = Modifier.width((editorWidth * .34f).coerceIn(180.dp, 380.dp))
                            .fillMaxHeight().padding(start = 16.dp),
                    )
                }
            }
        }
      }
    }
}

@Composable
private fun AnimatedAddControlPanel(
    visible: Boolean,
    available: List<ControlDefinition>,
    enabled: Boolean,
    onEvent: (ContentEvent) -> Unit,
    modifier: Modifier,
) {
    AnimatedVisibility(
        visible = visible,
        enter = expandHorizontally(tween(320), expandFrom = Alignment.End) +
            slideInHorizontally(tween(320)) { it / 3 } + fadeIn(tween(200)),
        exit = shrinkHorizontally(tween(280), shrinkTowards = Alignment.End) +
            slideOutHorizontally(tween(280)) { it / 3 } + fadeOut(tween(180)),
    ) {
        AddControlPanel(available, enabled, onEvent, modifier)
    }
}

@Composable
private fun AddControlPanel(
    available: List<ControlDefinition>,
    enabled: Boolean,
    onEvent: (ContentEvent) -> Unit,
    modifier: Modifier,
) {
    Column(modifier.clip(RoundedCornerShape(18.dp))
        .background(interfaceSurfaceColor(MaterialTheme.colorScheme.surfaceVariant))
        .padding(12.dp).testTag("control-center-add-panel")) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Text("添加组件", Modifier.weight(1f), style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold)
            IconButton(enabled = enabled,
                onClick = { onEvent(LayoutAction(ControlCenterEditAction.ToggleAddPanel)) }) {
                Icon(Icons.Default.Close, "关闭添加组件面板")
            }
        }
        Text("选择要加入控制中心的组件", style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant)
        Spacer(Modifier.height(12.dp))
        Column(Modifier.weight(1f).verticalScroll(rememberScrollState())) {
            available.forEach { definition ->
                key(definition.id) {
                    Surface(shape = RoundedCornerShape(14.dp),
                        color = interfaceSurfaceColor(LocalContentColors.current.sheetBase),
                        modifier = Modifier.fillMaxWidth().padding(bottom = 10.dp)
                            .editDragSource(id = definition.id, source = "control-center-grid", enabled = enabled)
                             .testTag("add-control-${definition.id}")) {
                        Column(Modifier.padding(12.dp)) {
                            Text(definition.label, style = MaterialTheme.typography.titleSmall)
                            if (!definition.implemented) {
                                Text(if (definition.id == ControlCatalog.CLIMATE) "当前未配置空调控制 · 拖动添加" else "此组件尚未接入控制协议 · 拖动添加",
                                    style = MaterialTheme.typography.bodySmall,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                                    modifier = Modifier.padding(top = 6.dp))
                            }
                            TextButton(enabled = enabled,
                                modifier = Modifier.align(Alignment.End),
                                onClick = {
                                    onEvent(LayoutAction(ControlCenterEditAction.AddItem, id = definition.id))
                                }) {
                                Icon(Icons.Default.Add, null, Modifier.size(16.dp))
                                Spacer(Modifier.width(4.dp))
                                Text(if (definition.implemented) "添加" else "添加占位")
                            }
                        }
                    }
                }
            }
            if (available.isEmpty()) Text("可添加的组件已全部加入", style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant)
        }
    }
}

@Composable
private fun ControlCenterGrid(
    state: ContentUiState,
    onEvent: (ContentEvent) -> Unit,
    enabled: Boolean,
    modifier: Modifier,
) {
    BoxWithConstraints(modifier) {
        val gap = (maxWidth / 32f).coerceAtLeast(1.dp)
        EditableControlLayout(
            ids = state.controlCenterItems,
            axis = EditableControlAxis.Grid,
            columns = 4,
            gap = gap,
            editing = state.controlCenterEditing,
            enabled = enabled,
            modifier = Modifier.fillMaxSize(),
            contentPadding = PaddingValues(20.dp),
            targetKey = "control-center-grid",
            tagPrefix = "control-center-item",
            onBeginEdit = { onEvent(LayoutAction(ControlCenterEditAction.BeginEdit, input = LayoutInput.LongPress)) },
            onMove = { id, from, to ->
                onEvent(LayoutAction(ControlCenterEditAction.MoveItem, id = id, from = from, to = to, input = LayoutInput.Drag))
            },
            onAdd = { id, index ->
                onEvent(LayoutAction(ControlCenterEditAction.AddItem, id = id, to = index, input = LayoutInput.Drag))
            },
            onRemove = { id ->
                onEvent(LayoutAction(ControlCenterEditAction.RemoveItem, id = id,
                    from = state.controlCenterItems.indexOf(id)))
            },
            emptyContent = {
                Text("还没有组件，点击添加开始布局", color = MaterialTheme.colorScheme.onSurfaceVariant)
            },
        ) { id, _, editing, dragging ->
            CatalogEditorTile(id, state, onEvent, editing, enabled, Modifier.fillMaxSize())
        }
    }
}

/** Editing and suspended/closing surfaces cannot dispatch even a semantic business click. */
@Composable
private fun CatalogEditorTile(
    id: String,
    state: ContentUiState,
    onEvent: (ContentEvent) -> Unit,
    editing: Boolean,
    enabled: Boolean,
    modifier: Modifier,
) {
    val currentBusinessEnabled by rememberUpdatedState(enabled && !editing)
    val inheritedAcceptance = LocalQuickControlClickAcceptance.current
    CompositionLocalProvider(
        LocalQuickControlInteractionEnabled provides currentBusinessEnabled,
        LocalQuickControlClickAcceptance provides { currentBusinessEnabled && inheritedAcceptance(it) },
        LocalQuickControlDispatch provides { event ->
            if (currentBusinessEnabled && inheritedAcceptance(event)) {
                onEvent(event)
                true
            } else false
        },
        LocalIconVisible provides enabled,
    ) {
        CatalogControlTile(id, state, { if (currentBusinessEnabled) onEvent(it) }, modifier,
            editing = editing || !enabled)
    }
}

@Composable
private fun ControlCardListSurface(state: ContentUiState, onEvent: (ContentEvent) -> Unit, enabled: Boolean, artwork: @Composable (() -> Unit)?) {
    val activeId = state.controlCardIds.getOrNull(state.controlCardIndex)
    val available = state.controlCardAvailableItems.distinct().mapNotNull(ControlCatalog::find)
        .filter { it.implemented && it.id !in state.controlCardIds && com.icar03.content.model.ControlSurface.ControlCard in it.surfaces }
    val dragSession = rememberDragSession()
    LaunchedEffect(dragSession, state.controlCardEditing) {
        if (!state.controlCardEditing) dragSession.cancel()
    }
    val inheritedAcceptance = LocalQuickControlClickAcceptance.current
    DragRoot(
        session = dragSession,
        enabled = enabled,
        sessionKey = state.controlCardIds,
        modifier = Modifier.fillMaxSize(),
    ) {
        Column(Modifier.fillMaxSize().padding(18.dp)) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text("控制卡片", Modifier.weight(1f), style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.SemiBold)
                if (state.controlCardEditing) {
                    TextButton(enabled = enabled,
                        onClick = { onEvent(LayoutAction(ControlCenterEditAction.EndCardEdit)) }) { Text("完成") }
                } else {
                    TextButton(enabled = enabled,
                        onClick = { onEvent(LayoutAction(ControlCenterEditAction.CloseCardList)) }) { Text("完成") }
                }
            }
            Text(if (state.controlCardAddPanelOpen) "长按右侧组件拖入左侧，或点按添加"
                else "点按切换当前卡片，长按进入排序；添加项固定在列表首行",
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant)
            Spacer(Modifier.height(12.dp))
            Surface(
                modifier = Modifier.fillMaxWidth().height(64.dp).testTag("control-card-add-entry")
                    .clickable(enabled = enabled && !state.controlCardAddPanelOpen) {
                        onEvent(LayoutAction(ControlCenterEditAction.ToggleCardAddPanel))
                    },
                shape = RoundedCornerShape(16.dp),
                color = interfaceSurfaceColor(MaterialTheme.colorScheme.surfaceVariant),
                border = BorderStroke(1.dp, ContentFunctionalBlue.copy(alpha = .55f)),
            ) {
                Row(Modifier.padding(horizontal = 16.dp), verticalAlignment = Alignment.CenterVertically) {
                    Icon(Icons.Default.Add, "添加控制卡", Modifier.size(24.dp), tint = ContentFunctionalBlue)
                    Spacer(Modifier.width(12.dp))
                    Text("添加控制卡", style = MaterialTheme.typography.titleMedium,
                        color = ContentFunctionalBlue)
                }
            }
            Spacer(Modifier.height(12.dp))
            Row(Modifier.weight(1f).fillMaxWidth()) {
                EditableControlLayout(
                    ids = state.controlCardIds,
                    axis = EditableControlAxis.Vertical,
                    editing = state.controlCardEditing,
                    enabled = enabled,
                    modifier = Modifier.weight(1f).fillMaxHeight(),
                    contentPadding = PaddingValues(vertical = 4.dp),
                    targetKey = "control-card-list",
                    tagPrefix = "control-card",
                    onBeginEdit = {
                        onEvent(LayoutAction(ControlCenterEditAction.BeginCardEdit, input = LayoutInput.LongPress))
                    },
                    onMove = { id, from, to ->
                        onEvent(LayoutAction(ControlCenterEditAction.MoveCard, id = id, from = from, to = to, input = LayoutInput.Drag))
                    },
                    onAdd = { id, index ->
                        onEvent(LayoutAction(ControlCenterEditAction.AddCard, id = id, to = index, input = LayoutInput.Drag))
                    },
                    onRemove = { id ->
                        onEvent(LayoutAction(ControlCenterEditAction.RemoveCard, id = id,
                            from = state.controlCardIds.indexOf(id)))
                    },
                    emptyContent = { Text("暂无控制卡片", color = MaterialTheme.colorScheme.onSurfaceVariant) },
                ) { id, _, _, dragging ->
                    val selected = id == activeId
                    Surface(
                        modifier = Modifier.fillMaxSize().semantics { this.selected = selected }
                            .clickable(enabled = enabled && !state.controlCardEditing && !dragging) {
                                onEvent(LayoutAction(ControlCenterEditAction.SelectCard, id = id,
                                    from = state.controlCardIds.indexOf(id)))
                            },
                        shape = RoundedCornerShape(18.dp),
                        border = if (selected) BorderStroke(2.dp, ContentFunctionalBlue) else null,
                        color = interfaceSurfaceColor(MaterialTheme.colorScheme.surfaceVariant),
                    ) {
                        val businessEnabled by rememberUpdatedState(enabled && !state.controlCardEditing && !dragging)
                        CompositionLocalProvider(
                            LocalQuickControlInteractionEnabled provides businessEnabled,
                            LocalQuickControlClickAcceptance provides { businessEnabled && inheritedAcceptance(it) },
                            LocalQuickControlDispatch provides { event ->
                                if (businessEnabled && inheritedAcceptance(event)) {
                                    onEvent(event)
                                    true
                                } else false
                            },
                        ) {
                            BoxWithConstraints(Modifier.fillMaxSize()) {
                                val cardGeometry = contentGeometry(
                                    maxHeight * (CONTENT_REFERENCE_WIDTH_PX / CONTENT_REFERENCE_MEDIA_SURFACE_HEIGHT_PX),
                                    androidx.compose.ui.platform.LocalDensity.current.density,
                                )
                                CompositionLocalProvider(LocalContentGeometry provides cardGeometry) {
                                    ControlCardContent(id, state, onEvent, artwork = artwork,
                                        sourcesEnabled = state.media.sourceAvailable)
                                }
                            }
                        }
                    }
                }
                if (state.controlCardAddPanelOpen) {
                    ControlCardAddPanel(available, enabled, onEvent,
                        Modifier.widthIn(min = 220.dp, max = 360.dp).fillMaxHeight().padding(start = 16.dp))
                }
            }
        }
    }
}

@Composable
private fun ControlCardAddPanel(
    available: List<ControlDefinition>,
    enabled: Boolean,
    onEvent: (ContentEvent) -> Unit,
    modifier: Modifier,
) {
    Column(modifier.clip(RoundedCornerShape(18.dp))
        .background(interfaceSurfaceColor(MaterialTheme.colorScheme.surfaceVariant))
        .padding(12.dp).testTag("control-card-add-panel")) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Text("添加控制卡", Modifier.weight(1f), style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold)
            IconButton(enabled = enabled,
                onClick = { onEvent(LayoutAction(ControlCenterEditAction.ToggleCardAddPanel)) }) {
                Icon(Icons.Default.Close, "关闭添加控制卡")
            }
        }
        Text("长按组件拖入左侧卡片列表", style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant)
        Spacer(Modifier.height(10.dp))
        Column(Modifier.weight(1f).verticalScroll(rememberScrollState())) {
            available.forEach { definition ->
                key(definition.id) {
                    Surface(
                        shape = RoundedCornerShape(14.dp),
                        color = interfaceSurfaceColor(LocalContentColors.current.sheetBase),
                        modifier = Modifier.fillMaxWidth().padding(bottom = 10.dp)
                            .editDragSource(id = definition.id, source = "control-card-list", enabled = enabled)
                            .testTag("add-card-${definition.id}"),
                    ) {
                        Row(Modifier.padding(12.dp), verticalAlignment = Alignment.CenterVertically) {
                            Text(definition.label, Modifier.weight(1f), style = MaterialTheme.typography.titleSmall)
                            TextButton(enabled = enabled,
                                onClick = { onEvent(LayoutAction(ControlCenterEditAction.AddCard, id = definition.id)) }) {
                                Icon(Icons.Default.Add, null, Modifier.size(16.dp))
                                Spacer(Modifier.width(4.dp))
                                Text("添加")
                            }
                        }
                    }
                }
            }
            if (available.isEmpty()) Text("可添加的控制卡已全部加入",
                color = MaterialTheme.colorScheme.onSurfaceVariant)
        }
    }
}

@Composable
private fun DockEditSurface(state: ContentUiState, onEvent: (ContentEvent) -> Unit, dockHeight: Dp, enabled: Boolean) {
    val dockIds = state.dockItems.filter { it != ControlCatalog.CLIMATE }
    val available = state.dockAvailableItems.distinct().mapNotNull(ControlCatalog::find).filter {
        it.id != ControlCatalog.CLIMATE && it.id !in dockIds &&
            com.icar03.content.model.ControlSurface.Dock in it.surfaces
    }
    val dragSession = rememberDragSession()
    DragRoot(session = dragSession, enabled = enabled, sessionKey = dockIds, modifier = Modifier.fillMaxWidth()) {
        Column(Modifier.fillMaxWidth().heightIn(min = dockHeight).padding(18.dp)) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text("编辑 Dock", Modifier.weight(1f), style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.SemiBold)
                TextButton(enabled = enabled,
                    onClick = { onEvent(LayoutAction(ControlCenterEditAction.EndDockEdit)) }) { Text("完成") }
            }
            Text("长按后左右拖动排序，点按减号移除；从添加目录长按拖入",
                style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
            Spacer(Modifier.height(12.dp))
            EditableControlLayout(
                ids = dockIds,
                axis = EditableControlAxis.Horizontal,
                editing = true,
                enabled = enabled,
                modifier = Modifier.fillMaxWidth().height(160.dp),
                contentPadding = PaddingValues(horizontal = 4.dp),
                gap = 8.dp,
                targetKey = "dock-list",
                tagPrefix = "dock-edit-item",
                onMove = { id, from, to ->
                    onEvent(LayoutAction(ControlCenterEditAction.MoveDockItem, id = id, from = from, to = to, input = LayoutInput.Drag))
                },
                onAdd = { id, index ->
                    onEvent(LayoutAction(ControlCenterEditAction.AddDockItem, id = id, to = index, input = LayoutInput.Drag))
                },
                onRemove = { id ->
                    onEvent(LayoutAction(ControlCenterEditAction.RemoveDockItem, id = id,
                        from = state.dockItems.indexOf(id)))
                },
                emptyContent = { Text("Dock 暂无入口", color = MaterialTheme.colorScheme.onSurfaceVariant) },
            ) { id, _, _, _ ->
                CatalogEditorTile(id, state, onEvent, editing = true, enabled = enabled,
                    modifier = Modifier.fillMaxSize())
            }
            if (available.isNotEmpty()) {
                Text("添加已移除的组件", style = MaterialTheme.typography.titleSmall,
                    modifier = Modifier.padding(top = 10.dp, bottom = 6.dp))
                Row(Modifier.fillMaxWidth().horizontalScroll(rememberScrollState())
                    .testTag("dock-add-panel"), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    available.forEach { definition ->
                        key(definition.id) {
                            OutlinedButton(
                                enabled = enabled,
                                modifier = Modifier.editDragSource(id = definition.id, source = "dock-list", enabled = enabled)
                                    .testTag("add-dock-${definition.id}"),
                                onClick = {
                                    onEvent(LayoutAction(ControlCenterEditAction.AddDockItem, id = definition.id))
                                },
                            ) {
                                Icon(Icons.Default.Add, null, Modifier.size(16.dp))
                                Spacer(Modifier.width(6.dp))
                                Text(definition.label)
                            }
                        }
                    }
                }
            }
            Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                Text("显示 Dock 名称", Modifier.weight(1f), style = MaterialTheme.typography.bodyMedium)
                Switch(checked = state.dockShowNames, enabled = enabled,
                    onCheckedChange = { onEvent(LayoutAction(ControlCenterEditAction.DockShowNamesChanged, value = it)) })
            }
        }
    }
}
