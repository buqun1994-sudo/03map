package com.icar03.content.ui

import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.VectorConverter
import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.RepeatMode
import androidx.compose.animation.core.animateFloat
import androidx.compose.animation.core.infiniteRepeatable
import androidx.compose.animation.core.rememberInfiniteTransition
import androidx.compose.animation.core.spring
import androidx.compose.animation.core.tween
import androidx.compose.animation.core.withInfiniteAnimationFrameNanos
import androidx.compose.foundation.ScrollState
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.scrollBy
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.requiredSize
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Remove
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.State
import androidx.compose.runtime.getValue
import androidx.compose.runtime.key
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.composed
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.LayoutCoordinates
import androidx.compose.ui.layout.boundsInWindow
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.CustomAccessibilityAction
import androidx.compose.ui.semantics.customActions
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.onLongClick
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.semantics.stateDescription
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.LayoutDirection
import androidx.compose.ui.unit.dp
import androidx.compose.ui.zIndex
import com.icar03.content.model.ControlCatalog
import com.icar03.content.model.ControlGridSpan
import com.icar03.content.model.ControlEditMotion
import com.icar03.content.model.EditDragAxis
import com.icar03.content.model.EditDragContract
import com.icar03.content.model.EditDragGeometry
import com.icar03.content.model.EditDragItem
import com.icar03.content.model.EditDragOrigin
import com.icar03.content.model.EditDragSpan
import kotlinx.coroutines.isActive
import kotlinx.coroutines.withTimeoutOrNull
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.roundToInt

private data class LayoutSlot(
    val left: Float,
    val top: Float,
    val right: Float,
    val bottom: Float,
) {
    val width: Float get() = right - left
    val height: Float get() = bottom - top
    val center: Offset get() = Offset((left + right) / 2f, (top + bottom) / 2f)
}

private data class LayoutMeasure(
    val viewportWidthPx: Float,
    val viewportHeightPx: Float,
    val geometry: EditDragGeometry,
    val itemWidthPx: Float,
    val itemHeightPx: Float,
    val slots: Map<String, LayoutSlot>,
    val canvasWidthPx: Float,
    val canvasHeightPx: Float,
    val topPaddingPx: Float,
    val bottomPaddingPx: Float,
    val leftPaddingPx: Float,
    val rightPaddingPx: Float,
)

/**
 * Shared target for control center, cards and Dock. It owns only measured geometry and local
 * preview; accepted changes leave through [onMove], [onAdd] and [onRemove].
 */
@Composable
fun EditableControlLayout(
    ids: List<String>,
    axis: EditableControlAxis = EditableControlAxis.Grid,
    columns: Int = 4,
    gap: Dp = 20.dp,
    cellHeight: Dp = Dp.Unspecified,
    editing: Boolean,
    enabled: Boolean,
    onBeginEdit: () -> Unit = {},
    onMove: (id: String, from: Int, to: Int) -> Unit = { _, _, _ -> },
    onAdd: (id: String, index: Int) -> Unit = { _, _ -> },
    onRemove: ((String) -> Unit)? = null,
    modifier: Modifier = Modifier,
    targetKey: Any? = null,
    contentPadding: PaddingValues = PaddingValues(20.dp),
    tagPrefix: String = "editable-control",
    spanFor: (String) -> EditDragSpan = { id -> catalogDragSpan(id) },
    emptyContent: @Composable BoxScope.() -> Unit = {},
    slot: @Composable BoxScope.(id: String, index: Int, editing: Boolean, dragging: Boolean) -> Unit,
) {
    val inheritedSession = LocalEditDragSession.current
    val session = inheritedSession ?: rememberDragSession()
    val effectiveTargetKey = remember(targetKey) { targetKey ?: Any() }
    val currentIds by rememberUpdatedState(ids)
    val currentMove by rememberUpdatedState(onMove)
    val currentAdd by rememberUpdatedState(onAdd)
    val currentRemove by rememberUpdatedState(onRemove)
    val currentBegin by rememberUpdatedState(onBeginEdit)
    val currentSpanFor by rememberUpdatedState(spanFor)
    val currentEnabled by rememberUpdatedState(enabled)
    val density = LocalDensity.current
    val scroll = rememberScrollState()
    var viewportCoordinates by remember { mutableStateOf<LayoutCoordinates?>(null) }
    val clock = rememberEditDragClock(enabled && editing)
    val active = session.activeDrag

    BoxWithConstraints(
        modifier = modifier.clipToBounds().onGloballyPositioned { viewportCoordinates = it }
            .testTag("$tagPrefix-viewport"),
    ) {
        val leftPaddingPx = with(density) {
            contentPadding.calculateLeftPadding(LayoutDirection.Ltr).toPx()
        }
        val rightPaddingPx = with(density) {
            contentPadding.calculateRightPadding(LayoutDirection.Ltr).toPx()
        }
        val topPaddingPx = with(density) { contentPadding.calculateTopPadding().toPx() }
        val bottomPaddingPx = with(density) { contentPadding.calculateBottomPadding().toPx() }
        val viewportWidthPx = with(density) { maxWidth.toPx() }.coerceAtLeast(1f)
        val viewportHeightPx = with(density) { maxHeight.toPx() }.coerceAtLeast(1f)
        val gapPx = with(density) { gap.toPx() }.coerceAtLeast(0f)
        val innerWidthPx = (viewportWidthPx - leftPaddingPx - rightPaddingPx).coerceAtLeast(1f)
        val safeColumns = columns.coerceAtLeast(1)
        val itemHeightPx = when {
            cellHeight != Dp.Unspecified -> with(density) { cellHeight.toPx() }.coerceAtLeast(1f)
            axis == EditableControlAxis.Grid -> ((innerWidthPx - gapPx * (safeColumns - 1)) / safeColumns).coerceAtLeast(1f)
            axis == EditableControlAxis.Horizontal -> with(density) { 120.dp.toPx() }
            else -> with(density) { 104.dp.toPx() }
        }
        val itemWidthPx = when (axis) {
            EditableControlAxis.Grid -> ((innerWidthPx - gapPx * (safeColumns - 1)) / safeColumns).coerceAtLeast(1f)
            EditableControlAxis.Vertical -> innerWidthPx
            EditableControlAxis.Horizontal -> itemHeightPx
        }
        val geometry = EditDragGeometry(
            widthPx = innerWidthPx,
            cellWidthPx = itemWidthPx,
            cellHeightPx = itemHeightPx,
            gapPx = gapPx,
            columns = if (axis == EditableControlAxis.Grid) safeColumns else 1,
            originX = leftPaddingPx,
            originY = topPaddingPx,
        )
        val targetItems = remember(currentIds, axis, safeColumns, currentSpanFor) {
            currentIds.map { id -> EditDragItem(id, if (axis == EditableControlAxis.Grid) currentSpanFor(id) else EditDragSpan()) }
        }
        val previewDraft = active?.draft?.takeIf { it.targetKey == effectiveTargetKey }
        val order = previewDraft?.previewIds ?: currentIds
        val placements = remember(order, targetItems, geometry) {
            if (axis == EditableControlAxis.Grid) {
                val byId = targetItems.associateBy { it.id }
                EditDragContract.place(order.map { id ->
                    byId[id] ?: EditDragItem(id, currentSpanFor(id))
                }, safeColumns)
            } else emptyList<com.icar03.content.model.EditDragPlacement<String>>()
        }
        val slots = remember(order, placements, geometry, axis, itemWidthPx, itemHeightPx) {
            if (axis == EditableControlAxis.Grid) {
                placements.associate { placement ->
                    placement.id to geometry.bounds(placement).let { LayoutSlot(it.left, it.top, it.right, it.bottom) }
                }
            } else {
                order.mapIndexed { index, id ->
                    val left = if (axis == EditableControlAxis.Horizontal) {
                        leftPaddingPx + index * (itemWidthPx + gapPx)
                    } else leftPaddingPx
                    val top = if (axis == EditableControlAxis.Vertical) {
                        topPaddingPx + index * (itemHeightPx + gapPx)
                    } else topPaddingPx
                    id to LayoutSlot(left, top, left + itemWidthPx, top + itemHeightPx)
                }.toMap()
            }
        }
        val contentRight = if (axis == EditableControlAxis.Horizontal) {
            leftPaddingPx + order.size * itemWidthPx + (order.size - 1).coerceAtLeast(0) * gapPx
        } else viewportWidthPx - rightPaddingPx
        val contentBottom = if (axis == EditableControlAxis.Grid) {
            (slots.values.maxOfOrNull { it.bottom } ?: topPaddingPx + itemHeightPx) + bottomPaddingPx
        } else if (axis == EditableControlAxis.Vertical) {
            topPaddingPx + order.size * itemHeightPx + (order.size - 1).coerceAtLeast(0) * gapPx + bottomPaddingPx
        } else viewportHeightPx
        val measure = LayoutMeasure(
            viewportWidthPx = viewportWidthPx,
            viewportHeightPx = viewportHeightPx,
            geometry = geometry,
            itemWidthPx = itemWidthPx,
            itemHeightPx = itemHeightPx,
            slots = slots,
            canvasWidthPx = max(viewportWidthPx, contentRight),
            canvasHeightPx = max(viewportHeightPx, contentBottom),
            topPaddingPx = topPaddingPx,
            bottomPaddingPx = bottomPaddingPx,
            leftPaddingPx = leftPaddingPx,
            rightPaddingPx = rightPaddingPx,
        )
        val geometryKey = remember(
            axis, safeColumns, viewportWidthPx, viewportHeightPx, gapPx, itemWidthPx, itemHeightPx,
            leftPaddingPx, rightPaddingPx, topPaddingPx, bottomPaddingPx,
        ) {
            listOf(axis, safeColumns, viewportWidthPx, viewportHeightPx, gapPx, itemWidthPx,
                itemHeightPx, leftPaddingPx, rightPaddingPx, topPaddingPx, bottomPaddingPx, targetItems)
        }
        val targetSnapshot = EditDragTargetSnapshot(
            key = effectiveTargetKey,
            axis = axis,
            ids = currentIds,
            items = targetItems,
            geometry = geometry,
            boundsInWindow = viewportCoordinates?.boundsInWindow() ?: Rect.Zero,
            scrollX = if (axis == EditableControlAxis.Horizontal) scroll.value.toFloat() else 0f,
            scrollY = if (axis != EditableControlAxis.Horizontal) scroll.value.toFloat() else 0f,
            itemWidthPx = itemWidthPx,
            itemHeightPx = itemHeightPx,
            geometryKey = geometryKey,
            enabled = currentEnabled && (editing || active?.origin == EditDragOrigin.Layout),
            spanFor = currentSpanFor,
            onMove = { id, from, to -> currentMove(id, from, to) },
            onAdd = { id, index -> currentAdd(id, index) },
        )
        session.registerTarget(targetSnapshot)
        LaunchedEffect(effectiveTargetKey, currentIds, geometryKey, currentEnabled) {
            session.cancelIfStale(effectiveTargetKey, currentIds, geometryKey, currentEnabled)
        }
        DisposableEffect(session, effectiveTargetKey) {
            onDispose { session.unregisterTarget(effectiveTargetKey) }
        }

        val scrollModifier = when (axis) {
            EditableControlAxis.Horizontal -> Modifier.horizontalScroll(scroll, enabled = currentEnabled && !session.isDragging())
            else -> Modifier.verticalScroll(scroll, enabled = currentEnabled && !session.isDragging())
        }
        Box(Modifier.fillMaxSize().then(scrollModifier)) {
            Box(Modifier.requiredSize(
                with(density) { measure.canvasWidthPx.toDp() },
                with(density) { measure.canvasHeightPx.toDp() },
            )) {
                if (currentIds.isEmpty() && active?.draft?.targetKey != effectiveTargetKey) {
                    Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) { emptyContent() }
                }
                val activeId = active?.id
                order.forEachIndexed { orderIndex, id ->
                    val slotBounds = slots[id] ?: return@forEachIndexed
                    val originalIndex = currentIds.indexOf(id)
                    if (originalIndex < 0 && id != activeId) return@forEachIndexed
                    key(id) {
                        EditableControlCell(
                            id = id,
                            index = if (originalIndex >= 0) originalIndex else orderIndex,
                            slot = slotBounds,
                            targetKey = effectiveTargetKey,
                            targetIds = currentIds,
                            session = session,
                            editing = editing || active != null,
                            enabled = currentEnabled,
                            remove = currentRemove,
                            tagPrefix = tagPrefix,
                            clock = clock,
                            onBeginEdit = currentBegin,
                            onMove = currentMove,
                            slotContent = slot,
                        )
                    }
                }
                if (active?.draft?.targetKey == effectiveTargetKey) {
                    val drop = slots[active.id]
                    if (drop != null) {
                        Box(Modifier.offsetPx(drop.left, drop.top)
                            .size(with(density) { drop.width.toDp() }, with(density) { drop.height.toDp() })
                            .clip(RoundedCornerShape(18.dp))
                            .background(ContentFunctionalBlue.copy(alpha = .08f))
                            .border(1.dp, ContentFunctionalBlue.copy(alpha = .5f), RoundedCornerShape(18.dp))
                            .testTag("$tagPrefix-drop-slot"))
                    }
                }
            }
        }
        EditDragAutoScroll(session, scroll, axis, currentEnabled, viewportCoordinates, density)
    }
}

@Composable
private fun EditableControlCell(
    id: String,
    index: Int,
    slot: LayoutSlot,
    targetKey: Any,
    targetIds: List<String>,
    session: DragSession,
    editing: Boolean,
    enabled: Boolean,
    remove: ((String) -> Unit)?,
    tagPrefix: String,
    clock: State<Float>,
    onBeginEdit: () -> Unit,
    onMove: (String, Int, Int) -> Unit,
    slotContent: @Composable BoxScope.(String, Int, Boolean, Boolean) -> Unit,
) {
    val density = LocalDensity.current
    val sourceToken = remember(id, targetKey) { Any() }
    var coordinates by remember { mutableStateOf<LayoutCoordinates?>(null) }
    val target = Offset(slot.left, slot.top)
    val pose = remember { Animatable(target, Offset.VectorConverter) }
    val active = session.activeDrag
    val isActiveDrag = active?.id == id
    val isActiveLayoutDrag = isActiveDrag && active?.origin == EditDragOrigin.Layout
    val releasedGeneration = session.generation
    LaunchedEffect(target, isActiveLayoutDrag, releasedGeneration) {
        if (isActiveLayoutDrag) pose.stop()
        else pose.animateTo(target, spring(dampingRatio = .84f, stiffness = 560f))
    }
    val label = ControlCatalog.find(id)?.label ?: id
    val canRemove = editing && remove != null && targetIds.contains(id)
    val pointerModifier = Modifier.editableLayoutDrag(
        session = session,
        id = id,
        targetKey = targetKey,
        sourceToken = sourceToken,
        sourceIndex = index,
        enabled = enabled,
        editing = editing,
        coordinates = { coordinates },
        onBeginEdit = onBeginEdit,
    )
    Box(
        Modifier.offset {
            val drag = session.activeDrag
            val point = if (isActiveLayoutDrag && drag != null) {
                val targetPoint = drag.pointerWindow
                val currentBounds = coordinates?.boundsInWindow()
                if (currentBounds != null) {
                    Offset(
                        targetPoint.x - currentBounds.left - drag.grabOffset.x + pose.value.x,
                        targetPoint.y - currentBounds.top - drag.grabOffset.y + pose.value.y,
                    )
                } else pose.value
            } else pose.value
            IntOffset(point.x.roundToInt(), point.y.roundToInt())
        }.size(with(density) { slot.width.toDp() }, with(density) { slot.height.toDp() })
            .zIndex(if (isActiveLayoutDrag) 3f else 1f)
            .graphicsLayer {
                if (editing && enabled && !isActiveDrag) {
                    val motion = ControlEditMotion.jitter(id.hashCode(), (clock.value * 1000f).toLong())
                    rotationZ = motion.rotationDegrees
                    translationX = motion.translationX * density.density
                    translationY = motion.translationY * density.density
                } else if (!isActiveDrag) {
                    rotationZ = 0f
                    translationX = 0f
                    translationY = 0f
                }
                scaleX = if (isActiveLayoutDrag) 1.035f else 1f
                scaleY = if (isActiveLayoutDrag) 1.035f else 1f
            }
            .onGloballyPositioned { coordinates = it }
            .testTag("$tagPrefix-$id")
            .semantics {
                if (editing) {
                    stateDescription = if (isActiveLayoutDrag) "正在移动，松手吸附" else "可拖动排序"
                    customActions = listOf(
                        CustomAccessibilityAction("向前移动") {
                            val from = targetIds.indexOf(id)
                            if (enabled && from > 0) { onMove(id, from, from - 1); true } else false
                        },
                        CustomAccessibilityAction("向后移动") {
                            val from = targetIds.indexOf(id)
                            if (enabled && from >= 0 && from + 1 < targetIds.size) {
                                onMove(id, from, from + 1); true
                            } else false
                        },
                    )
                }
                onLongClick("编辑并排序$label") {
                    if (!enabled) false else {
                        if (!editing) onBeginEdit()
                        true
                    }
                }
            }
            .then(pointerModifier),
    ) {
        slotContent(id, index, editing, isActiveDrag)
        if (canRemove) {
            RemoveEditBadge(
                label = label,
                enabled = enabled && !session.isDragging(),
                modifier = Modifier.align(Alignment.TopStart).offset(x = (-4).dp, y = (-4).dp)
                    .testTag("$tagPrefix-remove-$id"),
                onClick = { remove?.invoke(id) },
            )
        }
    }
}

@Composable
private fun RemoveEditBadge(label: String, enabled: Boolean, modifier: Modifier, onClick: () -> Unit) {
    Box(
        modifier.size(40.dp).clip(CircleShape).clickable(enabled = enabled, onClickLabel = "移除$label", onClick = onClick)
            .semantics { contentDescription = "移除$label" },
        contentAlignment = Alignment.Center,
    ) {
        Box(Modifier.size(24.dp).background(MaterialTheme.colorScheme.error, CircleShape), contentAlignment = Alignment.Center) {
            Icon(Icons.Default.Remove, contentDescription = null, modifier = Modifier.size(18.dp), tint = MaterialTheme.colorScheme.onError)
        }
    }
}

private fun Modifier.offsetPx(left: Float, top: Float): Modifier = offset {
    IntOffset(left.roundToInt(), top.roundToInt())
}

private fun catalogDragSpan(id: String): EditDragSpan {
    val span: ControlGridSpan = ControlCatalog.find(id)?.span ?: ControlGridSpan()
    return EditDragSpan(span.columns, span.rows)
}

private fun DragSession.isDragging(): Boolean = activeDrag != null

@Composable
private fun rememberEditDragClock(enabled: Boolean): State<Float> {
    if (!enabled) return remember { mutableStateOf(0f) }
    val transition = rememberInfiniteTransition(label = "edit-drag-jitter-clock")
    return transition.animateFloat(
        initialValue = 0f,
        targetValue = 20_000f,
        animationSpec = infiniteRepeatable(
            animation = tween(20_000, easing = LinearEasing),
            repeatMode = RepeatMode.Restart,
        ),
        label = "edit-drag-jitter-time",
    )
}

private fun Modifier.editableLayoutDrag(
    session: DragSession,
    id: String,
    targetKey: Any,
    sourceToken: Any,
    sourceIndex: Int,
    enabled: Boolean,
    editing: Boolean,
    coordinates: () -> LayoutCoordinates?,
    onBeginEdit: () -> Unit,
): Modifier = composed {
    val density = LocalDensity.current
    val currentEnabled by rememberUpdatedState(enabled)
    val currentEditing by rememberUpdatedState(editing)
    val currentCoordinates by rememberUpdatedState(coordinates)
    val currentSourceIndex by rememberUpdatedState(sourceIndex)
    val currentBegin by rememberUpdatedState(onBeginEdit)
    val gate = rememberQuickControlGestureGate(
        available = enabled,
        businessInteractionRequired = false,
        onLifecycleCancel = { session.cancel() },
        onCancel = { session.cancelOwnedBy(sourceToken) },
    )
    val arbitration = LocalMultiFingerGestureArbitration.current
    pointerInput(session, id, targetKey, sourceToken, gate) {
        awaitEachGesture {
            val down = awaitFirstDown(requireUnconsumed = false, pass = PointerEventPass.Initial)
            val revision = gate.revision
            if (!gate.enabled || !currentEnabled) return@awaitEachGesture
            val localX = down.position.x
            val localY = down.position.y
            if (currentEditing && localX < with(density) { 40.dp.toPx() } &&
                localY < with(density) { 40.dp.toPx() }) return@awaitEachGesture
            val originalSize = size
            val endedEarly = withTimeoutOrNull(viewConfiguration.longPressTimeoutMillis) {
                var waiting = true
                while (waiting) {
                    val event = awaitPointerEvent(PointerEventPass.Initial)
                    val change = event.changes.firstOrNull { it.id == down.id }
                    waiting = gate.enabled && gate.revision == revision && size == originalSize &&
                        arbitration?.owned != true && event.changes.size == 1 && change != null &&
                        change.pressed && !change.isConsumed &&
                        (change.position - down.position).getDistance() <= viewConfiguration.touchSlop
                }
                true
            }
            if (endedEarly != null || !gate.enabled || gate.revision != revision || size != originalSize || arbitration?.owned == true) {
                return@awaitEachGesture
            }
            if (arbitration != null && !arbitration.claimSingle()) return@awaitEachGesture
            val itemCoordinates = currentCoordinates()?.takeIf { it.isAttached } ?: return@awaitEachGesture
            val startPoint = itemCoordinates.localToWindow(down.position)
            val bounds = itemCoordinates.boundsInWindow()
            if (!session.beginLayout(id, targetKey, currentSourceIndex, startPoint, bounds, sourceToken)) {
                return@awaitEachGesture
            }
            if (!currentEditing) currentBegin()
            var finished = false
            try {
                while (true) {
                    val event = awaitPointerEvent(PointerEventPass.Initial)
                    val change = event.changes.firstOrNull { it.id == down.id } ?: break
                    if (!gate.enabled || gate.revision != revision ||
                        event.changes.any { it.id != down.id && (it.pressed || it.previousPressed) }) break
                    if (change.isConsumed) break
                    val point = itemCoordinates.localToWindow(change.position)
                    if (!point.x.isFinite() || !point.y.isFinite()) break
                    session.move(point)
                    change.consume()
                    if (!change.pressed) {
                        session.finish(cancelled = false)
                        finished = true
                        break
                    }
                }
            } finally {
                if (!finished) session.cancelOwnedBy(sourceToken)
            }
        }
    }
}

@Composable
private fun EditDragAutoScroll(
    session: DragSession,
    scroll: ScrollState,
    axis: EditableControlAxis,
    enabled: Boolean,
    viewport: LayoutCoordinates?,
    density: Density,
) {
    val currentViewport by rememberUpdatedState(viewport)
    LaunchedEffect(session, scroll, axis, enabled, session.generation) {
        val generation = session.generation
        if (!enabled || session.activeDrag == null) return@LaunchedEffect
        var previous = 0L
        while (isActive && session.generation == generation) {
            val now = withInfiniteAnimationFrameNanos { it }
            val active = session.activeDrag?.takeIf { session.generation == generation } ?: break
            if (previous == 0L) { previous = now; continue }
            val dt = ((now - previous) / 1_000_000_000f).coerceIn(0f, .04f)
            previous = now
            val coordinates = currentViewport?.takeIf { it.isAttached } ?: continue
            val pointer = coordinates.windowToLocal(active.pointerWindow)
            val horizontal = axis == EditableControlAxis.Horizontal
            val position = if (horizontal) pointer.x else pointer.y
            val extent = if (horizontal) coordinates.size.width else coordinates.size.height
            val band = with(density) { 48.dp.toPx() }.coerceAtMost(extent / 3f)
            if (band <= 0f) continue
            val edge = when {
                position < band -> -((band - position) / band).coerceIn(0f, 1f)
                position > extent - band -> ((position - extent + band) / band).coerceIn(0f, 1f)
                else -> 0f
            }
            val delta = edge * abs(edge) * with(density) { 640.dp.toPx() } * dt
            if (abs(delta) > .1f) {
                var consumed = 0f
                scroll.scroll {
                    if (session.generation == generation && session.activeDrag != null) {
                        consumed = scrollBy(delta)
                    }
                }
                val current = session.activeDrag?.takeIf { session.generation == generation } ?: break
                if (consumed != 0f) session.move(current.pointerWindow)
            }
        }
    }
}

private fun Offset.isFinite(): Boolean = x.isFinite() && y.isFinite()
