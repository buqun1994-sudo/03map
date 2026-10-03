package com.icar03.content.ui

import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.LinearEasing
import androidx.compose.animation.core.tween
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.foundation.interaction.InteractionSource
import androidx.compose.foundation.interaction.PressInteraction
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.draw.drawWithContent
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.layout.positionInRoot
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.semantics.semantics
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.launch
import kotlin.math.hypot

internal val RippleRunning = SemanticsPropertyKey<Boolean>("RippleRunning")
internal val RippleOrigin = SemanticsPropertyKey<Offset>("RippleOrigin")
internal val RippleProgress = SemanticsPropertyKey<Float>("RippleProgress")
internal val RippleOpacity = SemanticsPropertyKey<Float>("RippleOpacity")

/** Presentation only. A DOWN owns its eligibility until its matching UP/CANCEL.
 * Pending/readback recomposition must not detach an accepted boundary Ripple.
 * A solid OEM-colour wash expands from the touch, then fades uniformly over the
 * full rounded rectangle; no second rectangular press layer is stacked on it.
 */
internal class BoundaryPressFeedback {
    internal class Pulse(val press: PressInteraction.Press, val origin: Offset,
        val startColor: Color, val color: Color) {
        val radius = Animatable(0f)
        val opacity = Animatable(1f)
        val released = CompletableDeferred<Unit>()
        var expanded by mutableStateOf(false)
        var job: kotlinx.coroutines.Job? = null
    }

    internal val pulses = mutableStateListOf<Pulse>()
    internal var acceptsPress = false
    private var currentEligible = false
    private var currentBase = Color.Transparent
    private var currentColor = Color.Transparent

    internal fun updateCurrent(eligible: Boolean, base: Color, color: Color) {
        currentEligible = eligible
        currentBase = base
        currentColor = color
    }

    private fun launchPulse(press: PressInteraction.Press, base: Color, color: Color,
        scope: kotlinx.coroutines.CoroutineScope) {
        val pulse = start(press, base, color)
        pulse.job = scope.launch {
            try {
                pulse.radius.animateTo(1f, tween(225, easing = LinearEasing))
                pulse.expanded = true
                pulse.released.await()
                pulse.opacity.animateTo(0f, tween(240, easing = LinearEasing))
            } finally { pulses.remove(pulse) }
        }
    }

    /** Observe the real pointer DOWN before a scroll parent can delay Press. */
    val pointerDownLatch: Modifier
        get() = Modifier.pointerInput(this) {
            coroutineScope {
                awaitEachGesture {
                    val down = awaitFirstDown(requireUnconsumed = false, pass = PointerEventPass.Initial)
                    val press = if (acceptsPress && currentEligible) {
                        PressInteraction.Press(down.position).also {
                            launchPulse(it, currentBase, currentColor, this@coroutineScope)
                        }
                    } else null
                    while (true) {
                        val event = awaitPointerEvent(PointerEventPass.Initial)
                        val change = event.changes.firstOrNull { it.id == down.id }
                        if (change == null || !change.pressed) break
                    }
                    press?.let(::release)
                }
            }
        }

    // A paused window recomposer may not deliver a frame at all. Stop directly
    // from the lifecycle/focus observer, including pause→resume within one frame.
    internal fun clear() {
        pulses.toList().forEach { it.job?.cancel() }
        pulses.clear()
    }
    private var touchOrigin = Offset.Zero
    private var areaOrigin = Offset.Zero
    private var areaSize = Size.Zero
    val touchCoordinates: Modifier get() = Modifier.onGloballyPositioned { touchOrigin = it.positionInRoot() }

    internal fun start(press: PressInteraction.Press, base: Color, color: Color): Pulse {
        val position = press.pressPosition + touchOrigin - areaOrigin
        val local = if (position.x.isFinite() && position.y.isFinite()) Offset(position.x.coerceIn(0f, areaSize.width),
            position.y.coerceIn(0f, areaSize.height)) else Offset(areaSize.width / 2, areaSize.height / 2)
        return Pulse(press, local, base, color).also { pulses += it }
    }

    internal fun release(press: PressInteraction.Press) {
        pulses.firstOrNull { it.press === press }?.released?.complete(Unit)
    }

    fun area(base: Color): Modifier = Modifier
        .onGloballyPositioned { areaOrigin = it.positionInRoot(); areaSize = Size(it.size.width.toFloat(), it.size.height.toFloat()) }
        .drawWithContent {
            // While a quick tap is still expanding, retain the old base beneath
            // it. Once coverage is complete, the latest target/actual base can
            // replace it invisibly and the uniform fade reveals that base.
            val expanding = pulses.firstOrNull { !it.expanded }
            drawRect(expanding?.startColor ?: base)
            pulses.forEach { pulse ->
                val x = maxOf(pulse.origin.x, size.width - pulse.origin.x)
                val y = maxOf(pulse.origin.y, size.height - pulse.origin.y)
                drawCircle(pulse.color, hypot(x, y) * pulse.radius.value,
                    pulse.origin, alpha = pulse.opacity.value)
            }
            drawContent()
        }
        .semantics {
            val pulse = pulses.lastOrNull()
            this[RippleRunning] = pulse != null
            this[RippleOrigin] = pulse?.origin ?: Offset.Unspecified
            this[RippleProgress] = pulse?.radius?.value ?: 0f
            this[RippleOpacity] = pulse?.opacity?.value ?: 0f
        }
}

@Composable
internal fun rememberBoundaryPressFeedback(source: InteractionSource, eligible: Boolean,
    baseColor: Color, rippleColor: Color): BoundaryPressFeedback {
    val feedback = remember(source) { BoundaryPressFeedback() }
    val owner = LocalLifecycleOwner.current
    val view = LocalView.current
    var started by remember(owner) { mutableStateOf(owner.lifecycle.currentState.isAtLeast(Lifecycle.State.RESUMED)) }
    var focused by remember(view) { mutableStateOf(view.hasWindowFocus()) }
    val iconVisible by rememberUpdatedState(LocalIconVisible.current)
    val visible = started && focused && iconVisible
    SideEffect {
        feedback.updateCurrent(eligible, baseColor, rippleColor)
        feedback.acceptsPress = visible
        if (!visible) feedback.clear()
    }
    DisposableEffect(owner, view) {
        val observer = LifecycleEventObserver { _, _ ->
            started = owner.lifecycle.currentState.isAtLeast(Lifecycle.State.RESUMED)
            feedback.acceptsPress = started && focused && iconVisible
            if (!feedback.acceptsPress) feedback.clear()
        }
        val tree = view.viewTreeObserver
        val focus = android.view.ViewTreeObserver.OnWindowFocusChangeListener {
            focused = it
            feedback.acceptsPress = it && owner.lifecycle.currentState.isAtLeast(Lifecycle.State.RESUMED) && iconVisible
            if (!feedback.acceptsPress) feedback.clear()
        }
        owner.lifecycle.addObserver(observer)
        tree.addOnWindowFocusChangeListener(focus)
        onDispose {
            feedback.acceptsPress = false
            feedback.clear()
            owner.lifecycle.removeObserver(observer)
            if (tree.isAlive) tree.removeOnWindowFocusChangeListener(focus)
        }
    }
    return feedback
}
