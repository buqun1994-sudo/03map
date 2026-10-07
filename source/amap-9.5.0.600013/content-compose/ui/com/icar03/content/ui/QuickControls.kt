package com.icar03.content.ui

import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.drawWithCache
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.Layout
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.*
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.constrainHeight
import androidx.compose.ui.unit.constrainWidth
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import kotlin.math.abs
import kotlin.math.roundToInt

internal val QuickControlKind = SemanticsPropertyKey<QuickControlType>("QuickControlKind")
internal val ControlDraft = SemanticsPropertyKey<Float>("ControlDraft")
internal val ControlDragging = SemanticsPropertyKey<Boolean>("ControlDragging")
internal val ControlLabelBand = SemanticsPropertyKey<androidx.compose.ui.geometry.Rect>("ControlLabelBand")
internal val ControlFill = SemanticsPropertyKey<Long>("ControlFill")

@Composable
internal fun quickControlLabelStyle(): TextStyle =
    MaterialTheme.typography.titleLarge.copy(fontSize = 20.sp, lineHeight = 24.sp)

internal data class QuickControlLabelGeometry(val size: IntSize, val iconBounds: Rect, val textBounds: Rect)

/** One measured label arrangement for all four types. Vertical callers anchor the whole group. */
@Composable
internal fun QuickControlLabel(label: String, tag: String, modifier: Modifier = Modifier,
    horizontalInset: Dp = 0.dp, onMeasured: ((QuickControlLabelGeometry) -> Unit)? = null,
    icon: @Composable (Modifier) -> Unit) {
    Layout(modifier = modifier, content = {
        Box(Modifier.size(52.dp), contentAlignment = Alignment.Center) { icon(Modifier.fillMaxSize()) }
        Text(label, Modifier.padding(horizontal = 2.dp).testTag(
            if (tag.startsWith("control-") || tag.startsWith("shortcut-")) "shortcut-label-${tag.substringAfter('-')}" else "$tag-label"),
            style = quickControlLabelStyle(), maxLines = 2, textAlign = TextAlign.Center)
    }) { measurables, constraints ->
        val inset = horizontalInset.roundToPx().coerceIn(0, constraints.maxWidth / 2)
        val childConstraints = constraints.copy(minWidth = 0, minHeight = 0, maxWidth = constraints.maxWidth - inset * 2)
        val iconPlaceable = measurables[0].measure(childConstraints)
        val gap = 8.dp.roundToPx().coerceAtMost((constraints.maxHeight - iconPlaceable.height).coerceAtLeast(0))
        val textConstraints = childConstraints.copy(
            maxHeight = (constraints.maxHeight - iconPlaceable.height - gap).coerceAtLeast(0))
        val textWidth = textConstraints.constrainWidth(measurables[1].maxIntrinsicWidth(textConstraints.maxHeight))
        val textPlaceable = measurables[1].measure(textConstraints.copy(minWidth = textWidth, maxWidth = textWidth))
        val width = constraints.constrainWidth(maxOf(iconPlaceable.width, textPlaceable.width) + inset * 2)
        val contentHeight = iconPlaceable.height + gap + textPlaceable.height
        val height = constraints.constrainHeight(contentHeight)
        val iconX = (width - iconPlaceable.width) / 2
        val textX = (width - textPlaceable.width) / 2
        val iconY = (height - contentHeight) / 2
        val textY = iconY + iconPlaceable.height + gap
        onMeasured?.invoke(QuickControlLabelGeometry(IntSize(width, height),
            Rect(iconX.toFloat(), iconY.toFloat(), (iconX + iconPlaceable.width).toFloat(), (iconY + iconPlaceable.height).toFloat()),
            Rect(textX.toFloat(), textY.toFloat(), (textX + textPlaceable.width).toFloat(), (textY + textPlaceable.height).toFloat())))
        layout(width, height) {
            iconPlaceable.place(iconX, iconY)
            textPlaceable.place(textX, textY)
        }
    }
}

/** Dynamic switches retain their configurable cycle, with no persistent grid fill. */
@Composable
internal fun DynamicIconSwitch(label: String, status: String, selected: Boolean, enabled: Boolean,
    rippleEnabled: Boolean, tag: String, modifier: Modifier = Modifier, onClick: () -> Unit,
    icon: @Composable (Modifier) -> Unit) {
    QuickControlButton(label, status, selected, enabled, rippleEnabled, false,
        QuickControlType.DynamicIconSwitch, tag, modifier, onClick, icon)
}

/** A normal toggle differs only by retaining the selected surface after its Ripple. */
@Composable
internal fun OrdinaryToggle(label: String, status: String, selected: Boolean, enabled: Boolean,
    rippleEnabled: Boolean, tag: String, modifier: Modifier = Modifier, onClick: () -> Unit, icon: @Composable (Modifier) -> Unit) {
    QuickControlButton(label, status, selected, enabled, rippleEnabled, true,
        QuickControlType.OrdinaryToggle, tag, modifier, onClick, icon)
}

@Composable
private fun QuickControlButton(label: String, status: String, selected: Boolean, enabled: Boolean,
    rippleEnabled: Boolean, retainSelection: Boolean, type: QuickControlType, tag: String,
    modifier: Modifier, onClick: () -> Unit, icon: @Composable (Modifier) -> Unit) {
    val colors = LocalContentColors.current
    val interactions = remember { MutableInteractionSource() }
    val pressed by interactions.collectIsPressedAsState()
    var action by remember { mutableIntStateOf(0) }
    val base = colors.shortcutBase
    val idle = if (retainSelection && selected) colors.selectedSurface else base
    val feedback = rememberBoundaryPressFeedback(interactions, enabled && rippleEnabled, idle,
        if (selected && retainSelection) base else colors.selectedSurface)
    Box(modifier.fillMaxWidth().sizeIn(minWidth = 48.dp, minHeight = 48.dp).testTag(tag)
        .downwardSoftShadow(base, MaterialTheme.colorScheme.background.luminance() < .2f)
        .clip(RoundedCornerShape(12.dp)).then(feedback.touchCoordinates).then(feedback.pointerDownLatch)
        .then(feedback.area(idle))
        .clickable(interactionSource = interactions, indication = null, enabled = enabled, role = Role.Button) {
            action++; onClick()
        }.semantics {
            contentDescription = label; stateDescription = status; this.selected = selected
            this[QuickControlKind] = type; this[PressActive] = pressed && enabled
            this[PressFeedback] = if (rippleEnabled) "touch-ripple" else "none"
            this[ControlFill] = idle.value.toLong()
        }, contentAlignment = Alignment.Center) {
        CompositionLocalProvider(LocalIconPressed provides (pressed && enabled), LocalIconAction provides action) {
            QuickControlLabel(label, tag, icon = icon)
        }
    }
}

internal val LocalQuickControlInteractionEnabled = androidx.compose.runtime.staticCompositionLocalOf { true }

/** Immediately invalidated from pause/focus callbacks, even without a recomposer frame. */
internal class QuickControlGestureGate {
    var enabled by mutableStateOf(false)
        private set
    var revision by mutableIntStateOf(0)
        private set
    fun update(value: Boolean) { if (enabled != value) { enabled = value; revision++ } }
}

@Composable
internal fun rememberQuickControlGestureGate(available: Boolean, onLifecycleCancel: (() -> Unit)? = null,
    onCancel: () -> Unit): QuickControlGestureGate {
    val gate = remember { QuickControlGestureGate() }
    val owner = LocalLifecycleOwner.current
    val view = LocalView.current
    val cancel by rememberUpdatedState(onCancel)
    val lifecycleCancel by rememberUpdatedState(onLifecycleCancel ?: onCancel)
    val availableNow by rememberUpdatedState(available && LocalQuickControlInteractionEnabled.current)
    val pageVisible by rememberUpdatedState(LocalIconVisible.current)
    var resumed by remember(owner) { mutableStateOf(owner.lifecycle.currentState.isAtLeast(Lifecycle.State.RESUMED)) }
    var focused by remember(view) { mutableStateOf(view.hasWindowFocus()) }
    fun update() {
        gate.update(availableNow && pageVisible && resumed && focused)
        if (!pageVisible || !resumed || !focused) lifecycleCancel()
        else if (!gate.enabled) cancel()
    }
    SideEffect { update() }
    DisposableEffect(owner, view) {
        val observer = LifecycleEventObserver { _, _ ->
            resumed = owner.lifecycle.currentState.isAtLeast(Lifecycle.State.RESUMED); update()
        }
        val tree = view.viewTreeObserver
        val listener = android.view.ViewTreeObserver.OnWindowFocusChangeListener { focused = it; update() }
        owner.lifecycle.addObserver(observer); tree.addOnWindowFocusChangeListener(listener)
        onDispose {
            gate.update(false); cancel(); owner.lifecycle.removeObserver(observer)
            if (tree.isAlive) tree.removeOnWindowFocusChangeListener(listener)
        }
    }
    return gate
}

internal fun verticalFraction(y: Float, height: Float): Float =
    if (!height.isFinite() || height <= 0f || !y.isFinite()) 0f else (1f - y / height).coerceIn(0f, 1f)

/** Vertical ownership wins only after vertical slop; horizontal parents keep their gesture. */
private fun Modifier.verticalControlGesture(gate: QuickControlGestureGate, tap: ((Offset) -> Unit)?,
    onStart: () -> Unit, onDrag: (Offset) -> Unit, onCommit: () -> Unit, onCancel: () -> Unit,
    geometryKey: Any? = null): Modifier =
    pointerInput(gate, geometryKey) {
        awaitEachGesture {
            val down = awaitFirstDown(requireUnconsumed = false)
            val revision = gate.revision
            var dragging = false
            var completed = false
            var rejected = !gate.enabled
            try {
                while (!rejected) {
                    val event = awaitPointerEvent(PointerEventPass.Main)
                    val change = event.changes.firstOrNull { it.id == down.id } ?: break
                    if (!gate.enabled || gate.revision != revision || event.changes.count { it.pressed } > 1) break
                    if (!change.pressed) {
                        if (!change.isConsumed) {
                            if (dragging) onCommit() else tap?.invoke(change.position)
                            change.consume(); completed = true
                        }
                        break
                    }
                    if (change.isConsumed) break
                    val distance = change.position - down.position
                    if (!dragging) {
                        if (abs(distance.x) > viewConfiguration.touchSlop && abs(distance.x) >= abs(distance.y)) rejected = true
                        else if (abs(distance.y) > viewConfiguration.touchSlop && abs(distance.y) > abs(distance.x)) {
                            dragging = true; onStart()
                        }
                    }
                    if (dragging) { change.consume(); onDrag(change.position) }
                }
            } finally { if (!completed) onCancel() }
        }
    }

@Composable
internal fun ContinuousVerticalControl(label: String, icon: Int, level: LevelState, tag: String,
    modifier: Modifier = Modifier, height: Dp = 290.dp, onCommit: (Float) -> Unit) {
    var draft by remember { mutableStateOf<Float?>(null) }
    val current by rememberUpdatedState(level)
    val commit by rememberUpdatedState(onCommit)
    val enabled = level.available && level.target == null
    val gate = rememberQuickControlGestureGate(enabled) { draft = null }
    var trackSize by remember { mutableStateOf(IntSize.Zero) }
    val view = LocalView.current
    val sliderTick = LocalContentSliderTickSound.current
    var lastTick by remember { mutableIntStateOf(Int.MIN_VALUE) }
    fun emitTick(value: Float) {
        val bucket = (value.coerceIn(0f, 1f) * 32f).roundToInt()
        if (bucket != lastTick) {
            lastTick = bucket
            sliderTick(view)
        }
    }
    val shown = draft ?: level.displayed
    VerticalControlSurface(label, tag, QuickControlType.ContinuousVertical, shown, draft != null,
        modifier.height(height).onSizeChanged { trackSize = it }
            .semantics {
                progressBarRangeInfo = ProgressBarRangeInfo(shown, 0f..1f)
                if (enabled) setProgress { value ->
                    if (gate.enabled && value.isFinite()) {
                        val next = value.coerceIn(0f, 1f)
                        emitTick(next)
                        commit(next)
                        true
                    } else false
                } else disabled()
            }.verticalControlGesture(gate, tap = { point ->
                val next = verticalFraction(point.y, trackSize.height.toFloat())
                emitTick(next)
                commit(next); draft = null
            }, onStart = {
                val initial = current.displayed.takeIf { it.isFinite() } ?: 0f
                draft = initial
                lastTick = (initial.coerceIn(0f, 1f) * 32f).roundToInt()
            }, onDrag = {
                val next = verticalFraction(it.y, trackSize.height.toFloat())
                emitTick(next)
                draft = next
            }, onCommit = { draft?.let(commit); draft = null }, onCancel = { draft = null }, geometryKey = trackSize),
        icon = { OemIcon(icon, it.testTag("$tag-icon"), motionKey = shown) })
}

@Composable
internal fun SteppedVerticalControl(label: String, levelCount: Int, level: Int?, tag: String,
    modifier: Modifier = Modifier, height: Dp = 290.dp, enabled: Boolean = true, status: String? = null,
    onPower: () -> Unit, onCommit: (Int) -> Unit, icon: @Composable (Int?, Modifier) -> Unit) {
    val scale = remember(levelCount) { SteppedControlScale(levelCount) }
    var draft by remember(levelCount) { mutableStateOf<Int?>(null) }
    val current by rememberUpdatedState(level)
    val commit by rememberUpdatedState(onCommit)
    val power by rememberUpdatedState(onPower)
    val gate = rememberQuickControlGestureGate(enabled) { draft = null }
    var trackSize by remember { mutableStateOf(IntSize.Zero) }
    val view = LocalView.current
    val sliderTick = LocalContentSliderTickSound.current
    var lastTick by remember(levelCount) { mutableIntStateOf(Int.MIN_VALUE) }
    fun emitTick(value: Int) {
        val next = value.coerceIn(0, levelCount)
        if (next != lastTick) {
            lastTick = next
            sliderTick(view)
        }
    }
    val displayed = (draft ?: level)?.takeIf { it in 0..levelCount }
    val fraction = displayed?.let(scale::fraction) ?: 0f
    val levelDescription = when (displayed) {
        null -> "状态未知"
        0 -> "关闭"
        else -> "${displayed}档"
    }
    VerticalControlSurface(label, tag, QuickControlType.SteppedVertical, fraction, draft != null,
        modifier.height(height).onSizeChanged { trackSize = it }.semantics {
            selected = displayed?.let { it > 0 } ?: false
            stateDescription = if (draft != null) levelDescription else status ?: levelDescription
            progressBarRangeInfo = displayed?.let {
                ProgressBarRangeInfo(it.toFloat(), 0f..levelCount.toFloat(), levelCount - 1)
            } ?: ProgressBarRangeInfo.Indeterminate
            if (enabled) {
                onClick { if (gate.enabled) { power(); true } else false }
                setProgress { value ->
                    if (gate.enabled && value.isFinite()) {
                        val next = value.roundToInt().coerceIn(0, levelCount)
                        emitTick(next)
                        commit(next)
                        true
                    } else false
                }
            } else disabled()
        }.verticalControlGesture(gate, tap = { power() },
            onStart = {
                draft = current?.takeIf { it in 0..levelCount } ?: 0
                lastTick = draft ?: 0
            },
            onDrag = {
                val next = scale.levelAt(it.y, trackSize.height.toFloat())
                emitTick(next)
                draft = next
            },
            onCommit = { draft?.let(commit); draft = null }, onCancel = { draft = null },
            geometryKey = trackSize to levelCount),
        scale = scale, icon = { icon(displayed, it) })
}

/** Both layout and dividers use the clamped position of the measured label group. */
private fun verticalControlLabelTop(height: Int, labelHeight: Int, anchorFromBottom: Int): Int =
    (height - anchorFromBottom - labelHeight / 2).coerceIn(0, (height - labelHeight).coerceAtLeast(0))

private fun horizontalDividerSegments(y: Float, left: Float, right: Float,
    protectedBounds: List<Rect>): List<Pair<Offset, Offset>> {
    if (right <= left) return emptyList()
    val intersections = protectedBounds.filter {
        y >= it.top && y <= it.bottom && it.right > left && it.left < right
    }.sortedBy { it.left }
    val segments = mutableListOf<Pair<Offset, Offset>>()
    var cursor = left
    for (bounds in intersections) {
        val end = bounds.left.coerceIn(left, right)
        if (end > cursor) segments += Offset(cursor, y) to Offset(end, y)
        cursor = maxOf(cursor, bounds.right.coerceIn(left, right))
    }
    if (cursor < right) segments += Offset(cursor, y) to Offset(right, y)
    return segments
}

/** Shared vertical geometry for continuous, stepped and Dock overlay presentations. */
@Composable
internal fun VerticalControlSurface(label: String, tag: String, type: QuickControlType, fraction: Float,
    dragging: Boolean, modifier: Modifier = Modifier, scale: SteppedControlScale? = null,
    icon: @Composable (Modifier) -> Unit) {
    val colors = LocalContentColors.current
    val labelGeometry = remember { mutableStateOf<QuickControlLabelGeometry?>(null) }
    val animatedFill = animateFloatAsState(fraction.coerceIn(0f, 1f),
        tween(if (dragging) 70 else 220), label = "vertical-fill")
    val fillValue = if (dragging) fraction.coerceIn(0f, 1f) else animatedFill.value
    Box(modifier.fillMaxWidth().testTag(tag).downwardSoftShadow(colors.sliderBase,
        MaterialTheme.colorScheme.background.luminance() < .2f).clip(RoundedCornerShape(12.dp))
        .drawWithCache {
            val inset = 4.dp.toPx()
            val lineWidth = 1.dp.toPx()
            // Endpoint breathing room is horizontal; a smaller vertical guard
            // keeps the measured 8dp icon/text gap open for intersecting dividers.
            val horizontalClearance = 6.dp.toPx()
            val verticalClearance = 2.dp.toPx()
            val protectedBounds = labelGeometry.value?.let { geometry ->
                val top = verticalControlLabelTop(size.height.roundToInt(), geometry.size.height, 81.dp.roundToPx()).toFloat()
                listOf(geometry.iconBounds, geometry.textBounds).filter { it.width > 0f && it.height > 0f }.map {
                    Rect(it.left - horizontalClearance, it.top + top - verticalClearance,
                        it.right + horizontalClearance, it.bottom + top + verticalClearance)
                }
            }.orEmpty()
            val dividerSegments = scale?.let { value ->
                (1 until value.maximum).flatMap { level ->
                    horizontalDividerSegments(value.boundary(level, size.height), inset, size.width - inset, protectedBounds)
                }
            }.orEmpty()
            onDrawBehind {
                drawRect(colors.sliderBase)
                // The animated state is read only in draw, without resizing a child.
                val filledHeight = size.height * fillValue
                drawRect(colors.sliderFill, Offset(0f, size.height - filledHeight), Size(size.width, filledHeight))
                for ((start, end) in dividerSegments) drawLine(colors.sliderDivider, start, end, lineWidth)
            }
        }.semantics {
            contentDescription = label; this[QuickControlKind] = type
            this[ControlDraft] = fraction; this[ControlDragging] = dragging; this[PressFeedback] = "none"
        }, contentAlignment = Alignment.Center) {
        Layout(modifier = Modifier.fillMaxSize(), content = {
            QuickControlLabel(label, tag, Modifier.fillMaxWidth().testTag("$tag-label-group"),
                horizontalInset = 12.dp, onMeasured = { labelGeometry.value = it }, icon = icon)
        }) { measurables, constraints ->
            val group = measurables.single().measure(constraints.copy(minHeight = 0))
            val top = verticalControlLabelTop(constraints.maxHeight, group.height, 81.dp.roundToPx())
            layout(constraints.maxWidth, constraints.maxHeight) { group.place(0, top) }
        }
    }
}
