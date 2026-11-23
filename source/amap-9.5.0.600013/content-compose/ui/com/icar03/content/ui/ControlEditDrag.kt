package com.icar03.content.ui

import androidx.compose.foundation.layout.BoxScope
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.Stable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.composed
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.layout.LayoutCoordinates
import androidx.compose.ui.layout.boundsInWindow
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.semantics.onLongClick
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.ui.input.pointer.pointerInput
import kotlinx.coroutines.withTimeoutOrNull
import com.icar03.content.model.EditDragAxis
import com.icar03.content.model.EditDragContract
import com.icar03.content.model.EditDragDraft
import com.icar03.content.model.EditDragDrop
import com.icar03.content.model.EditDragGeometry
import com.icar03.content.model.EditDragItem
import com.icar03.content.model.EditDragOrigin
import com.icar03.content.model.EditDragSpan

/** Public axis alias keeps the layout API readable while the pure contract stays generic. */
typealias EditableControlAxis = EditDragAxis

@Stable
class DragSession internal constructor() {
    private val targets = LinkedHashMap<Any, EditDragTargetSnapshot>()
    private var activeState by mutableStateOf<ActiveEditDrag?>(null)
    private var generationState by mutableStateOf(0L)

    val generation: Long get() = generationState
    internal val activeDrag: ActiveEditDrag? get() = activeState

    internal fun registerTarget(target: EditDragTargetSnapshot) {
        targets[target.key] = target
    }

    internal fun unregisterTarget(key: Any) {
        targets.remove(key)
        if (activeState?.draft?.targetKey == key) cancel()
    }

    internal fun cancelIfStale(key: Any, ids: List<String>, geometryKey: Any?, enabled: Boolean) {
        if (!enabled) {
            cancel()
            return
        }
        val active = activeState ?: return
        val ownsTarget = active.draft?.targetKey == key || active.sourceTargetKey == key
        if (ownsTarget && active.targetGeometryKey != null && active.targetGeometryKey != geometryKey) cancel()
        else if (active.draft?.targetKey == key && active.draft?.originalIds != ids) cancel()
    }

    internal fun beginCandidate(
        id: String,
        targetKey: Any?,
        pointerWindow: Offset,
        sourceBoundsWindow: Rect,
        sourceToken: Any,
    ): Boolean {
        if (activeState != null || !pointerWindow.isFinite() || sourceBoundsWindow.isEmpty) return false
        activeState = ActiveEditDrag(
            id = id,
            origin = EditDragOrigin.Candidate,
            sourceTargetKey = targetKey,
            sourceToken = sourceToken,
            sourceIndex = -1,
            pointerWindow = pointerWindow,
            sourceBoundsWindow = sourceBoundsWindow,
            grabOffset = pointerWindow - sourceBoundsWindow.topLeft,
            draft = null,
            targetGeometryKey = targetKey?.let { targets[it]?.geometryKey },
        )
        generationState++
        return true
    }

    internal fun beginLayout(
        id: String,
        targetKey: Any,
        from: Int,
        pointerWindow: Offset,
        sourceBoundsWindow: Rect,
        sourceToken: Any,
    ): Boolean {
        if (activeState != null || !pointerWindow.isFinite() || sourceBoundsWindow.isEmpty) return false
        val target = targets[targetKey] ?: return false
        val initialDraft = EditDragDraft.begin(
            targetIds = target.ids,
            id = id,
            origin = EditDragOrigin.Layout,
            targetKey = targetKey,
        ) ?: return false
        if (initialDraft.from != from) return false
        activeState = ActiveEditDrag(
            id = id,
            origin = EditDragOrigin.Layout,
            sourceTargetKey = targetKey,
            sourceToken = sourceToken,
            sourceIndex = from,
            pointerWindow = pointerWindow,
            sourceBoundsWindow = sourceBoundsWindow,
            grabOffset = pointerWindow - sourceBoundsWindow.topLeft,
            draft = initialDraft,
            targetGeometryKey = target.geometryKey,
        )
        generationState++
        // Capture the authoritative order before BeginEdit can synchronously recompose. The pointer
        // remains owned by this session while the visible editing state changes.
        return true
    }

    internal fun move(pointerWindow: Offset) {
        val active = activeState ?: return
        if (!pointerWindow.isFinite()) return
        activeState = active.copy(pointerWindow = pointerWindow)
        val target = targetFor(active, pointerWindow)
        if (target == null) {
            activeState = activeState!!.copy(draft = null)
            return
        }
        val current = activeState!!
        val draft = current.draft?.takeIf { it.targetKey == target.key }
            ?: EditDragDraft.begin(
                targetIds = target.ids,
                id = current.id,
                origin = current.origin,
                targetKey = target.key,
            )
        if (draft == null) {
            activeState = current.copy(draft = null, targetGeometryKey = target.geometryKey)
            return
        }
        val targetPoint = target.windowToContent(pointerWindow)
        val dragged = target.itemFor(current.id)
        val topLeft = targetPoint - current.grabOffset
        val center = when (target.axis) {
            EditDragAxis.Grid -> {
                val draggedBounds = target.geometry.bounds(
                    com.icar03.content.model.EditDragPlacement(current.id, 0, 0, dragged.span),
                )
                topLeft + Offset(draggedBounds.width / 2f, draggedBounds.height / 2f)
            }
            EditDragAxis.Vertical -> topLeft + Offset(target.itemWidthPx / 2f, target.itemHeightPx / 2f)
            EditDragAxis.Horizontal -> topLeft + Offset(target.itemWidthPx / 2f, target.itemHeightPx / 2f)
        }
        val targetIndex = if (target.axis == EditDragAxis.Grid) {
            EditDragContract.nearestGridIndex(
                existing = target.items,
                dragged = dragged,
                origin = current.origin,
                from = draft.from,
                centerXPx = center.x,
                centerYPx = center.y,
                geometry = target.geometry,
            )
        } else {
            val axisCenter = if (target.axis == EditDragAxis.Vertical) center.y else center.x
            val axisOrigin = if (target.axis == EditDragAxis.Vertical) target.geometry.originY else target.geometry.originX
            val count = if (current.origin == EditDragOrigin.Candidate) target.ids.size + 1 else target.ids.size
            EditDragContract.nearestLinearIndex(
                centerPx = axisCenter - axisOrigin,
                itemSizePx = if (target.axis == EditDragAxis.Vertical) target.itemHeightPx else target.itemWidthPx,
                count = count,
                gapPx = target.geometry.gapPx,
            )
        }
        if (targetIndex < 0) {
            activeState = current.copy(draft = null, targetGeometryKey = target.geometryKey)
        } else {
            activeState = current.copy(
                draft = draft.moveTo(targetIndex),
                targetGeometryKey = target.geometryKey,
            )
        }
    }

    /** Samples the latest pointer pose, then routes exactly one accepted drop callback. */
    internal fun finish(cancelled: Boolean): EditDragDrop<String>? {
        val active = activeState ?: return null
        val draft = active.draft
        val target = draft?.targetKey?.let(targets::get)
        val result = if (draft != null && target != null) {
            draft.finish(target.ids, currentTargetKey = target.key, cancelled = cancelled)
        } else null
        activeState = null
        generationState++
        if (result != null && target != null) {
            when (result.origin) {
                EditDragOrigin.Layout -> target.onMove(result.id, result.from, result.to)
                EditDragOrigin.Candidate -> target.onAdd(result.id, result.to)
            }
        }
        return result
    }

    internal fun cancelOwnedBy(sourceToken: Any) {
        if (activeState?.sourceToken === sourceToken) cancel()
    }

    fun cancel() {
        if (activeState != null) {
            activeState = null
            generationState++
        }
    }

    private fun targetFor(active: ActiveEditDrag, pointerWindow: Offset): EditDragTargetSnapshot? {
        val candidates = targets.values.asSequence()
            .filter { it.boundsInWindow.contains(pointerWindow) }
            .filter { target ->
                when (active.origin) {
                    EditDragOrigin.Layout -> target.key == active.sourceTargetKey
                    EditDragOrigin.Candidate -> active.sourceTargetKey == null || target.key == active.sourceTargetKey
                }
            }
            .filter { it.enabled }
            .toList()
        return candidates.firstOrNull()
    }
}

@Stable
internal data class ActiveEditDrag(
    val id: String,
    val origin: EditDragOrigin,
    val sourceTargetKey: Any?,
    val sourceToken: Any,
    val sourceIndex: Int,
    val pointerWindow: Offset,
    val sourceBoundsWindow: Rect,
    val grabOffset: Offset,
    val draft: EditDragDraft<String>?,
    val targetGeometryKey: Any?,
)

internal data class EditDragTargetSnapshot(
    val key: Any,
    val axis: EditDragAxis,
    val ids: List<String>,
    val items: List<EditDragItem<String>>,
    val geometry: EditDragGeometry,
    val boundsInWindow: Rect,
    val scrollX: Float,
    val scrollY: Float,
    val itemWidthPx: Float,
    val itemHeightPx: Float,
    val geometryKey: Any?,
    val enabled: Boolean,
    val spanFor: (String) -> EditDragSpan,
    val onMove: (String, Int, Int) -> Unit,
    val onAdd: (String, Int) -> Unit,
) {
    fun itemFor(id: String): EditDragItem<String> =
        items.firstOrNull { it.id == id } ?: EditDragItem(id, spanFor(id))

    fun windowToContent(point: Offset): Offset = Offset(
        point.x - boundsInWindow.left + scrollX,
        point.y - boundsInWindow.top + scrollY,
    )
}

internal val LocalEditDragSession = androidx.compose.runtime.staticCompositionLocalOf<DragSession?> { null }

@Composable
fun rememberDragSession(): DragSession = remember { DragSession() }

/**
 * One session root for a control editor and all of its candidate sources. A root owns cancellation
 * on modal close, lifecycle/focus loss and session-key changes; it never owns persisted layout.
 */
@Composable
fun DragRoot(
    session: DragSession = rememberDragSession(),
    enabled: Boolean = true,
    sessionKey: Any? = Unit,
    modifier: Modifier = Modifier,
    content: @Composable BoxScope.() -> Unit,
) {
    LaunchedEffect(session, enabled, sessionKey) {
        if (!enabled) session.cancel()
    }
    DisposableEffect(session, sessionKey) {
        onDispose { session.cancel() }
    }
    androidx.compose.foundation.layout.Box(modifier) {
        androidx.compose.runtime.CompositionLocalProvider(LocalEditDragSession provides session) {
            content()
        }
    }
}

/**
 * Candidate source modifier. A candidate may be placed in any pane under the same DragRoot and
 * dropped into a matching target. [source] is an optional target key; null accepts any target.
 */
fun Modifier.editDragSource(
    id: String,
    source: Any? = null,
    targetKey: Any? = source,
    enabled: Boolean = true,
    onDragStart: () -> Unit = {},
): Modifier = composed {
    val session = LocalEditDragSession.current ?: return@composed this
    val currentEnabled by rememberUpdatedState(enabled)
    val currentDragStart by rememberUpdatedState(onDragStart)
    val sourceToken = remember(id, source, targetKey) { Any() }
    var coordinates by remember { mutableStateOf<LayoutCoordinates?>(null) }
    val gate = rememberQuickControlGestureGate(
        available = enabled,
        businessInteractionRequired = false,
        onLifecycleCancel = { session.cancel() },
        onCancel = { session.cancelOwnedBy(sourceToken) },
    )
    val arbitration = LocalMultiFingerGestureArbitration.current
    val active = session.activeDrag
    val dragging = active?.sourceToken === sourceToken
    return@composed this
        .graphicsLayer {
            val drag = session.activeDrag
            if (drag != null && drag.sourceToken === sourceToken) {
                translationX = drag.pointerWindow.x - drag.sourceBoundsWindow.left - drag.grabOffset.x
                translationY = drag.pointerWindow.y - drag.sourceBoundsWindow.top - drag.grabOffset.y
            } else {
                translationX = 0f
                translationY = 0f
            }
        }
        .onGloballyPositioned { coordinates = it }
        .semantics {
            onLongClick("长按拖入") {
                if (!currentEnabled || !gate.enabled) false else {
                    // Semantics long press has no pointer stream to drop. It still enters edit via
                    // the same callback and returns true, so TalkBack does not fall through to tap.
                    currentDragStart()
                    true
                }
            }
        }
        .pointerInput(session, id, targetKey, gate, arbitration) {
            awaitEachGesture {
                val down = awaitFirstDown(
                    requireUnconsumed = false,
                    pass = PointerEventPass.Initial,
                )
                val revision = gate.revision
                if (!gate.enabled || !currentEnabled || arbitration?.owned == true) return@awaitEachGesture
                val originalSize = size
                val endedEarly = withTimeoutOrNull(viewConfiguration.longPressTimeoutMillis) {
                    var waiting = true
                    while (waiting) {
                        val event = awaitPointerEvent(PointerEventPass.Initial)
                        val change = event.changes.firstOrNull { it.id == down.id }
                        waiting = gate.enabled && gate.revision == revision && arbitration?.owned != true &&
                            size == originalSize && event.changes.size == 1 && change != null &&
                            change.pressed && !change.isConsumed &&
                            (change.position - down.position).getDistance() <= viewConfiguration.touchSlop
                    }
                    true
                }
                if (endedEarly != null || !gate.enabled || gate.revision != revision ||
                    size != originalSize || arbitration?.owned == true) {
                    return@awaitEachGesture
                }
                if (arbitration != null && !arbitration.claimSingle()) return@awaitEachGesture
                val itemCoordinates = coordinates?.takeIf { it.isAttached } ?: return@awaitEachGesture
                val startPoint = itemCoordinates.localToWindow(down.position)
                val sourceBounds = itemCoordinates.boundsInWindow()
                if (!session.beginCandidate(id, targetKey, startPoint, sourceBounds, sourceToken)) {
                    return@awaitEachGesture
                }
                currentDragStart()
                var finished = false
                try {
                    while (true) {
                        val event = awaitPointerEvent(PointerEventPass.Initial)
                        val change = event.changes.firstOrNull { it.id == down.id } ?: break
                        if (!gate.enabled || gate.revision != revision || arbitration?.owned == true ||
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

private fun Offset.isFinite(): Boolean = x.isFinite() && y.isFinite()
