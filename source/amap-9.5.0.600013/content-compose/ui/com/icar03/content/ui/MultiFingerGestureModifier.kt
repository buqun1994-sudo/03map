package com.icar03.content.ui

import android.view.View
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.calculateCentroidSize
import androidx.compose.foundation.gestures.calculatePan
import androidx.compose.foundation.gestures.calculateRotation
import androidx.compose.foundation.gestures.calculateZoom
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.Stable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.composed
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.input.pointer.PointerEvent
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.PointerEventType
import androidx.compose.ui.input.pointer.PointerInputChange
import androidx.compose.ui.input.pointer.PointerType
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.LayoutCoordinates
import androidx.compose.ui.layout.boundsInWindow
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.LocalViewConfiguration
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.isActive

/**
 * One instance for the complete content subtree, including controls on different hit paths.
 * Claim only a real single-pointer drag / long press, never a button's DOWN/press candidate.
 * Custom controls read [owned] synchronously on each event and cancel drafts in their finally.
 */
@Stable
class MultiFingerGestureArbitration {
    var owned: Boolean by mutableStateOf(false)
        private set
    var sequence: Long by mutableLongStateOf(0L)
        private set
    private var active = false
    internal var singlePointerOwned = false
        private set

    fun claimSingle(): Boolean {
        if (!active || owned) return false
        singlePointerOwned = true
        return true
    }

    internal fun beginSequence() {
        active = true
        singlePointerOwned = false
        sequence++
    }

    internal fun setOwned(value: Boolean) { owned = value }
    internal fun finishSequence() {
        active = false
        singlePointerOwned = false
        owned = false
    }
}

val LocalMultiFingerGestureArbitration = staticCompositionLocalOf<MultiFingerGestureArbitration?> { null }

/**
 * Install on the visible content root ancestor, under the same arbitration provider as its children.
 * sessionKey denotes host/page input identity, not a media snapshot. All gates/callbacks are latest
 * values; session, density, slop and geometry changes cancel the live core without restarting input.
 */
fun Modifier.multiFingerGestures(
    sessionKey: Any?,
    enabled: () -> Boolean,
    onOwnershipChanged: (Boolean) -> Unit = {},
    onGesture: (MultiFingerGestureResult) -> Unit,
    arbitration: MultiFingerGestureArbitration? = null,
): Modifier = composed {
    val density = LocalDensity.current
    val viewConfiguration = LocalViewConfiguration.current
    val view = LocalView.current
    val lifecycle = LocalLifecycleOwner.current.lifecycle
    val shared = arbitration ?: LocalMultiFingerGestureArbitration.current
    val latestEnabled = rememberUpdatedState(enabled)
    val latestSession = rememberUpdatedState(sessionKey)
    val latestOwnership = rememberUpdatedState(onOwnershipChanged)
    val latestGesture = rememberUpdatedState(onGesture)
    val policy = MultiFingerGesturePolicy(density.density, viewConfiguration.touchSlop)
    val controller = remember(shared, view, lifecycle) {
        MultiFingerGestureInputController(policy, shared, view, lifecycle) { latestOwnership.value(it) }
    }
    fun environment(): MultiFingerGestureEnvironment {
        val geometry = controller.refreshGeometry()
        return MultiFingerGestureEnvironment(
            enabled = latestEnabled.value() && controller.hostReady,
            bounds = geometry?.bounds ?: EmptyMultiFingerBounds,
            sessionKey = latestSession.value,
            geometryKey = controller.geometryRevision,
            singlePointerOwned = shared?.singlePointerOwned == true,
        )
    }
    SideEffect {
        controller.observeConfiguration(policy, sessionKey, latestEnabled.value())
        controller.core.recheck(environment())
    }
    DisposableEffect(controller, lifecycle, view) {
        val observer = LifecycleEventObserver { _, _ ->
            if (!lifecycle.currentState.isAtLeast(Lifecycle.State.RESUMED)) controller.invalidate()
        }
        val attachment = object : View.OnAttachStateChangeListener {
            override fun onViewAttachedToWindow(v: View) = Unit
            override fun onViewDetachedFromWindow(v: View) { controller.invalidate() }
        }
        lifecycle.addObserver(observer)
        view.addOnAttachStateChangeListener(attachment)
        onDispose {
            lifecycle.removeObserver(observer)
            view.removeOnAttachStateChangeListener(attachment)
            controller.invalidate()
            controller.finishSequence()
        }
    }
    Modifier.onGloballyPositioned { controller.coordinates = it; controller.refreshGeometry() }
        .pointerInput(controller) {
            val inputContext = currentCoroutineContext()
            try {
                awaitEachGesture {
                    try {
                        var sequenceStarted = false
                        do {
                            val event = awaitPointerEvent(PointerEventPass.Initial)
                            if (!sequenceStarted) {
                                controller.beginSequence()
                                sequenceStarted = true
                            }
                            val initialEnvironment = environment()
                            val invalidation = controller.invalidationRevision
                            val step = controller.core.onFrame(event.multiFingerFrame(), initialEnvironment)
                            if (controller.core.hasOwnership) controller.publishOwnership(true)
                            if (step.consume) event.changes.forEach { it.consume() }

                            val finalEvent = awaitPointerEvent(PointerEventPass.Final)
                            // A button's consumed DOWN is not a drag owner. Only actual position
                            // consumption of an existing held pointer counts at Final.
                            controller.core.observeSingleOwnership(shared?.singlePointerOwned == true ||
                                finalEvent.changes.any { change -> change.previousPressed && change.pressed &&
                                    change.isConsumed && change.position != change.previousPosition })
                            val finalEnvironment = environment()
                            controller.core.recheck(finalEnvironment)
                            val result = step.result
                            if (result != null && finalEnvironment.enabled &&
                                initialEnvironment.sessionKey == finalEnvironment.sessionKey &&
                                initialEnvironment.geometryKey == finalEnvironment.geometryKey &&
                                initialEnvironment.bounds == finalEnvironment.bounds &&
                                invalidation == controller.invalidationRevision) {
                                // Core was cleared on final normal UP; release the arbiter before
                                // routing, which may synchronously change page / map presentation.
                                controller.publishOwnership(false)
                                latestGesture.value(result)
                            }
                            if (!controller.core.hasOwnership) controller.publishOwnership(false)
                        } while (controller.core.state != MultiFingerGestureState.Idle)
                    } catch (failure: Throwable) {
                        controller.invalidate()
                        // awaitEachGesture can catch an in-scope CancellationException itself.
                        // Drain here while its input channel is live, so a cancelled owner never
                        // exposes remaining pointers to clicks, draft commits or a leftover fling.
                        if (inputContext.isActive) {
                            while (currentEvent.changes.any { it.pressed }) {
                                val event = awaitPointerEvent(PointerEventPass.Initial)
                                val step = controller.core.onFrame(event.multiFingerFrame(), environment())
                                if (step.consume) event.changes.forEach { it.consume() }
                                awaitPointerEvent(PointerEventPass.Final)
                            }
                        }
                        throw failure
                    } finally {
                        // Per block, not merely the lifetime of pointerInput's coroutine.
                        controller.finishSequence()
                    }
                }
            } finally {
                controller.finishSequence()
            }
        }
}

/** A release frame does not even read position fields, including positions of remaining fingers. */
internal fun PointerEvent.multiFingerFrame(): MultiFingerGestureFrame {
    val hasUp = changes.any { it.previousPressed && !it.pressed }
    val hasDown = changes.any { !it.previousPressed && it.pressed }
    // Compose 1.7.6 onCancelPointerInput synthesizes an already-consumed Release,
    // rather than throwing or exposing a public CANCEL event type. This function
    // runs at ancestor Initial before our own consumption, so a preconsumed UP
    // must invalidate the frozen result instead of becoming a normal final UP.
    val cancelledRelease = hasUp && changes.any { it.previousPressed && it.isConsumed }
    val type = if (cancelledRelease) MultiFingerGestureFrameType.Cancel else when (this.type) {
        PointerEventType.Press -> MultiFingerGestureFrameType.Down
        PointerEventType.Release -> MultiFingerGestureFrameType.Up
        PointerEventType.Move -> MultiFingerGestureFrameType.Move
        else -> MultiFingerGestureFrameType.Other
    }
    val pointers = changes.map { change ->
        MultiFingerGesturePointer(
            id = change.id.value,
            previousPressed = change.previousPressed,
            pressed = change.pressed,
            position = if (hasUp) MultiFingerGesturePoint.Zero else change.position.gesturePoint(),
            previousPosition = if (hasUp) MultiFingerGesturePoint.Zero else change.previousPosition.gesturePoint(),
            type = if (change.type == PointerType.Touch) MultiFingerGesturePointerType.Touch else MultiFingerGesturePointerType.Other,
        )
    }
    val finiteCurrent = pointers.all { it.position.isFinite }
    val finiteMove = finiteCurrent && pointers.all { it.previousPosition.isFinite }
    val metrics = if (!hasUp && !hasDown && type == MultiFingerGestureFrameType.Move && changes.size in 2..4 && finiteMove) {
        MultiFingerGestureMetrics(calculatePan().gesturePoint(), calculateZoom().toDouble(), calculateRotation().toDouble(),
            calculateCentroidSize(useCurrent = false).toDouble(), calculateCentroidSize().toDouble())
    } else null
    val joinedSize = if (!hasUp && hasDown && changes.size in 2..4 && finiteCurrent && changes.all { it.pressed }) {
        // The public helpers ignore newly pressed points. Build a zero-motion baseline containing
        // every ID in the joined group, and still use the official size calculation.
        PointerEvent(changes.map { change ->
            PointerInputChange(change.id, change.uptimeMillis, change.position, true,
                change.uptimeMillis, change.position, true, false, type = change.type)
        }).calculateCentroidSize().toDouble()
    } else null
    return MultiFingerGestureFrame(changes.maxOfOrNull { it.uptimeMillis } ?: 0L, pointers, type, metrics, joinedSize)
}

private fun Offset.gesturePoint() = MultiFingerGesturePoint(x.toDouble(), y.toDouble())
private val EmptyMultiFingerBounds = MultiFingerGestureBounds(0.0, 0.0, 0.0, 0.0)

private data class MultiFingerRootGeometry(
    val bounds: MultiFingerGestureBounds,
    val origin: MultiFingerGesturePoint,
    val horizontal: MultiFingerGesturePoint,
    val vertical: MultiFingerGesturePoint,
)

private class MultiFingerGestureInputController(
    policy: MultiFingerGesturePolicy,
    private val arbitration: MultiFingerGestureArbitration?,
    private val view: View,
    private val lifecycle: Lifecycle,
    private val onOwnershipChanged: (Boolean) -> Unit,
) {
    val core = MultiFingerGestureCore(policy)
    var coordinates: LayoutCoordinates? = null
    var geometryRevision = 0L
        private set
    var invalidationRevision = 0L
        private set
    private var geometry: MultiFingerRootGeometry? = null
    private var publishedOwnership = false
    private var observedSession = false
    private var sessionKey: Any? = null
    private var enabled = false
    val hostReady: Boolean get() = lifecycle.currentState.isAtLeast(Lifecycle.State.RESUMED) &&
        view.isAttachedToWindow && view.isShown && view.windowVisibility == View.VISIBLE

    fun observeConfiguration(policy: MultiFingerGesturePolicy, key: Any?, currentEnabled: Boolean) {
        if ((observedSession && sessionKey != key) || (enabled && !currentEnabled) || core.policy != policy) invalidate()
        core.updatePolicy(policy)
        observedSession = true
        sessionKey = key
        enabled = currentEnabled
    }

    fun invalidate() { invalidationRevision++; core.cancel() }
    fun beginSequence() { arbitration?.beginSequence() }
    fun publishOwnership(value: Boolean) {
        arbitration?.setOwned(value)
        if (publishedOwnership != value) {
            publishedOwnership = value
            onOwnershipChanged(value)
        }
    }
    fun finishSequence() {
        core.reset()
        publishOwnership(false)
        arbitration?.finishSequence()
    }

    fun refreshGeometry(): MultiFingerRootGeometry? {
        val updated = readGeometry()
        if (updated != geometry) {
            geometry = updated
            geometryRevision++
            invalidate()
        }
        return geometry
    }

    private fun readGeometry(): MultiFingerRootGeometry? {
        val coordinates = coordinates?.takeIf { it.isAttached } ?: return null
        if (!hostReady || coordinates.size.width <= 0 || coordinates.size.height <= 0) return null
        val visibleView = android.graphics.Rect()
        if (!view.getLocalVisibleRect(visibleView)) return null
        val windowLocation = IntArray(2)
        view.getLocationInWindow(windowLocation)
        val viewBounds = Rect((windowLocation[0] + visibleView.left).toFloat(),
            (windowLocation[1] + visibleView.top).toFloat(), (windowLocation[0] + visibleView.right).toFloat(),
            (windowLocation[1] + visibleView.bottom).toFloat())
        val visibleWindow = coordinates.boundsInWindow().intersect(viewBounds)
        if (visibleWindow.isEmpty) return null
        val corners = listOf(visibleWindow.topLeft, visibleWindow.topRight, visibleWindow.bottomLeft, visibleWindow.bottomRight)
            .map(coordinates::windowToLocal)
        val bounds = MultiFingerGestureBounds(maxOf(0.0, corners.minOf { it.x }.toDouble()),
            maxOf(0.0, corners.minOf { it.y }.toDouble()),
            minOf(coordinates.size.width.toDouble(), corners.maxOf { it.x }.toDouble()),
            minOf(coordinates.size.height.toDouble(), corners.maxOf { it.y }.toDouble()))
        if (!bounds.isReady) return null
        return MultiFingerRootGeometry(bounds, coordinates.localToWindow(Offset.Zero).gesturePoint(),
            coordinates.localToWindow(Offset(coordinates.size.width.toFloat(), 0f)).gesturePoint(),
            coordinates.localToWindow(Offset(0f, coordinates.size.height.toFloat())).gesturePoint())
    }
}
