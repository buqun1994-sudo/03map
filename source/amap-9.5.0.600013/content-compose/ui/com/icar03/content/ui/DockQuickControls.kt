package com.icar03.content.ui

import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.LayoutCoordinates
import androidx.compose.ui.layout.boundsInRoot
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.layout.positionInRoot
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.dp
import androidx.compose.ui.zIndex
import kotlinx.coroutines.delay
import kotlin.math.abs
import kotlin.math.roundToInt

internal val DockOverlayVisible = SemanticsPropertyKey<Boolean>("DockOverlayVisible")
internal val DockOverlayOpacity = SemanticsPropertyKey<Float>("DockOverlayOpacity")
internal val DockOverlayLevel = SemanticsPropertyKey<Int>("DockOverlayLevel")
internal val DockOverlaySelecting = SemanticsPropertyKey<Boolean>("DockOverlaySelecting")

internal data class DockLevelDraft(val control: ControlId, val bounds: Rect, val level: Int,
    val initialLevel: Int, val actualLevel: Int,
    val selectionStarted: Boolean = false,
    val scale: SteppedControlScale = SteppedControlScale(control.maxManualLevel))

/** Presentation-only draft; never a second confirmed manual memory or vehicle state. */
internal class DockLevelOverlayState {
    // Equal values can belong to separate gestures. A previous fade cannot
    // clear a reopened overlay with the same level and coordinates.
    var draft by mutableStateOf<DockLevelDraft?>(null, referentialEqualityPolicy())
        private set
    var visible by mutableStateOf(false)
        private set
    var panelOrigin = Offset.Zero
    var panelSize = IntSize.Zero
    var coordinateRevision = 0
        private set
    fun updatePanelBounds(origin: Offset, size: IntSize) {
        if (panelSize != IntSize.Zero && (origin != panelOrigin || size != panelSize)) {
            coordinateRevision++; cancel()
        }
        panelOrigin = origin; panelSize = size
    }
    var widthPx = 140f
    var heightPx = 290f
    var gapPx = 8f
    var entryHorizontalTolerancePx = 6f

    fun open(control: ControlId, slot: Rect, openingLevel: Int, actualLevel: Int = openingLevel,
        scale: SteppedControlScale = SteppedControlScale(control.maxManualLevel)): Boolean {
        require(scale.maximum == control.maxManualLevel)
        if (panelSize.width <= 0 || panelSize.height <= 0 || !widthPx.isFinite() || !heightPx.isFinite() ||
            !gapPx.isFinite() || widthPx <= 0f || heightPx <= 0f) return false
        val width = widthPx.roundToInt().coerceIn(1, panelSize.width)
        val height = heightPx.roundToInt().coerceIn(1, panelSize.height)
        val x = (slot.center.x - panelOrigin.x - width / 2f).roundToInt()
            .coerceIn(0, panelSize.width - width).toFloat()
        val y = (slot.top - panelOrigin.y - gapPx - height).roundToInt()
            .coerceIn(0, panelSize.height - height).toFloat()
        val bounds = Rect(x, y, x + width, y + height)
        draft = DockLevelDraft(control, bounds, openingLevel.coerceIn(0, scale.maximum),
            initialLevel = openingLevel.coerceIn(0, scale.maximum),
            actualLevel = actualLevel, scale = scale)
        visible = true
        return true
    }
    fun move(pointInRoot: Offset) {
        val current = draft ?: return
        if (!pointInRoot.x.isFinite() || !pointInRoot.y.isFinite()) return
        val point = pointInRoot - panelOrigin
        val entryTolerance = entryHorizontalTolerancePx.coerceAtLeast(0f)
        if (!current.selectionStarted && (point.x < current.bounds.left - entryTolerance ||
            point.x > current.bounds.right + entryTolerance || point.y > current.bounds.bottom)) return
        val level = current.scale.levelAt(point.y - current.bounds.top, current.bounds.height)
        if (!current.selectionStarted || level != current.level) {
            draft = current.copy(level = level, selectionStarted = true)
        }
    }
    fun hide() { visible = false }
    fun cancel() { visible = false; draft = null }
    fun clearHidden(expected: DockLevelDraft?) { if (!visible && draft === expected) draft = null }
}

/** Same pointer stays in its Dock slot; the sibling overlay has no pointer input. */
@Composable
internal fun dockLevelGesture(control: ControlId, state: ControlState, overlay: DockLevelOverlayState,
    onCommit: (Int) -> Unit): Modifier {
    val enabled = state.available && state.known && !state.pending && control.isLevel(state.actual)
    val gate = rememberQuickControlGestureGate(enabled, onLifecycleCancel = { overlay.cancel() }) {
        if (overlay.visible) overlay.cancel()
    }
    val current by rememberUpdatedState(state)
    val commit by rememberUpdatedState(onCommit)
    val scale = remember(control.maxManualLevel) { SteppedControlScale(control.maxManualLevel) }
    var slot by remember { mutableStateOf(Rect.Zero) }
    var slotCoordinates by remember { mutableStateOf<LayoutCoordinates?>(null) }
    return Modifier.onGloballyPositioned { coordinates ->
        slotCoordinates = coordinates
        val next = coordinates.boundsInRoot()
        if (slot != Rect.Zero && next != slot && overlay.visible) overlay.cancel()
        slot = next
    }.pointerInput(control, gate, overlay) {
        awaitEachGesture {
            val down = awaitFirstDown(requireUnconsumed = false)
            val revision = gate.revision
            val coordinateRevision = overlay.coordinateRevision
            var accepted = false
            var finished = false
            fun pointInRoot(position: Offset): Offset =
                slotCoordinates?.localToRoot(position) ?: (slot.topLeft + position)
            try {
                while (gate.enabled && gate.revision == revision) {
                    val event = awaitPointerEvent(PointerEventPass.Main)
                    val change = event.changes.firstOrNull { it.id == down.id } ?: break
                    val anotherPointerPressed = event.changes.any { it.id != down.id && it.pressed }
                    if (overlay.coordinateRevision != coordinateRevision || !gate.enabled ||
                        gate.revision != revision || anotherPointerPressed) break
                    if (!change.pressed) {
                        if (accepted && !change.isConsumed) {
                            // The UP position is a real sample; do not commit the
                            // preceding MOVE when the finger moved between frames.
                            overlay.move(pointInRoot(change.position))
                            val value = overlay.draft
                            overlay.hide(); change.consume(); finished = true
                            if (gate.enabled && gate.revision == revision && value?.control == control &&
                                value.selectionStarted && value.level != value.actualLevel) commit(value.level)
                        }
                        break
                    }
                    if (change.isConsumed) break
                    val movement = change.position - down.position
                    if (!accepted) {
                        // No long-press popup, downward takeover or horizontal-scroll theft.
                        if (change.uptimeMillis - down.uptimeMillis >= viewConfiguration.longPressTimeoutMillis ||
                            abs(movement.x) > viewConfiguration.touchSlop && abs(movement.x) >= abs(movement.y) ||
                            movement.y > viewConfiguration.touchSlop) break
                        if (movement.y < -viewConfiguration.touchSlop && abs(movement.y) > abs(movement.x)) {
                            val opening = if (control.isManualLevel(current.displayed)) current.displayed
                                else if (current.displayed == 0) 0 else control.rememberedManualLevel(current.rememberedLevel)
                            accepted = overlay.open(control, slot, opening, current.actual, scale)
                        }
                    }
                    if (accepted) {
                        change.consume(); overlay.move(pointInRoot(change.position))
                    }
                }
            } finally {
                // A cancelled or stolen pointer must restore the confirmed state;
                // only a normal UP retains the draft for its release fade.
                if (accepted && !finished) overlay.cancel()
            }
        }
    }
}

/** Kept above the entire Panel, outside Dock Surface/pager clipping. */
@Composable
internal fun DockLevelOverlayHost(overlay: DockLevelOverlayState,
    icon: @Composable (ControlId, Int, Modifier) -> Unit) {
    val density = LocalDensity.current
    SideEffect {
        overlay.widthPx = with(density) { 140.dp.roundToPx().toFloat() }
        overlay.heightPx = with(density) { 290.dp.roundToPx().toFloat() }
        overlay.gapPx = with(density) { 8.dp.toPx() }
        overlay.entryHorizontalTolerancePx = with(density) { 6.dp.toPx() }
    }
    val current = overlay.draft
    val opacity by animateFloatAsState(if (overlay.visible && current != null) 1f else 0f,
        tween(if (overlay.visible) 150 else 180), label = "dock-level-overlay-opacity")
    LaunchedEffect(overlay.visible, current) {
        if (!overlay.visible && current != null) {
            delay(190); overlay.clearHidden(current)
        }
    }
    Box(Modifier.fillMaxSize().zIndex(5f).onGloballyPositioned {
        overlay.updatePanelBounds(it.positionInRoot(), it.size)
    }.semantics {
        this[DockOverlayVisible] = overlay.visible; this[DockOverlayOpacity] = opacity
        this[DockOverlaySelecting] = current?.selectionStarted == true
    }.testTag("dock-overlay-host")) {
        if (current != null) {
            val bounds = current.bounds
            val scale = current.scale
            VerticalControlSurface(current.control.label, "dock-level-overlay", QuickControlType.SteppedVertical,
                scale.fraction(current.level), overlay.visible,
                Modifier.offset { IntOffset(bounds.left.roundToInt(), bounds.top.roundToInt()) }
                    .width(with(density) { bounds.width.toDp() }).height(with(density) { bounds.height.toDp() })
                    .graphicsLayer { alpha = opacity }.semantics {
                        this[DockOverlayLevel] = current.level
                        this[DockOverlaySelecting] = current.selectionStarted
                    },
                scale = scale, icon = { icon(current.control, current.level, it) })
        }
    }
}
