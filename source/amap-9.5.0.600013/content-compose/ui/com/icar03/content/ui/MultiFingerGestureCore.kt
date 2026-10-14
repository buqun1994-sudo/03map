package com.icar03.content.ui

import com.icar03.content.model.GestureDirection

/** Immutable classification only; routing owns action mapping and its final business gate. */
data class MultiFingerGestureResult(val fingerCount: Int, val direction: GestureDirection)

enum class MultiFingerGestureState { Idle, ObserveSingle, Assemble, Track, Frozen, Drain }
enum class MultiFingerGestureFrameType { Down, Move, Up, Cancel, Other }
enum class MultiFingerGesturePointerType { Touch, Other }

data class MultiFingerGesturePointer(
    val id: Long,
    val previousPressed: Boolean,
    val pressed: Boolean,
    val position: MultiFingerGesturePoint,
    val previousPosition: MultiFingerGesturePoint = position,
    val type: MultiFingerGesturePointerType = MultiFingerGesturePointerType.Touch,
)

/** Supplied by the official Foundation helpers, never recomputed by the pure core. */
data class MultiFingerGestureMetrics(
    val pan: MultiFingerGesturePoint,
    val zoom: Double,
    val rotationDegrees: Double,
    val previousCentroidSizePx: Double,
    val centroidSizePx: Double,
) {
    val isValid: Boolean get() = pan.isFinite && zoom.isFinite() && zoom > 0.0 && rotationDegrees.isFinite() &&
        previousCentroidSizePx.isFinite() && previousCentroidSizePx > 0.0 &&
        centroidSizePx.isFinite() && centroidSizePx > 0.0
}

data class MultiFingerGestureFrame(
    val uptimeMillis: Long,
    val pointers: List<MultiFingerGesturePointer>,
    val type: MultiFingerGestureFrameType,
    val metrics: MultiFingerGestureMetrics? = null,
    /** Official centroid size after setting every current pointer's previous state to its current state. */
    val joinedCentroidSizePx: Double? = null,
)

data class MultiFingerGestureEnvironment(
    val enabled: Boolean,
    val bounds: MultiFingerGestureBounds,
    val sessionKey: Any? = null,
    val geometryKey: Any? = bounds,
    val singlePointerOwned: Boolean = false,
)

/** consume remains true on the last UP even though the session has already been cleared. */
data class MultiFingerGestureStep(val consume: Boolean, val result: MultiFingerGestureResult? = null)

/**
 * ID-based finite state machine. No input index, centroid formula, timer, coroutine or business call.
 * A frame is processed Initial-first; report child position consumption via [observeSingleOwnership]
 * at Final, then [recheck] the latest environment. Cancellation preserves an acquired Drain owner.
 */
class MultiFingerGestureCore(policy: MultiFingerGesturePolicy) {
    var policy: MultiFingerGesturePolicy = policy
        private set
    var state: MultiFingerGestureState = MultiFingerGestureState.Idle
        private set
    var hasOwnership: Boolean = false
        private set

    private var firstDownMillis = 0L
    private var lastUptimeMillis: Long? = null
    private var sessionKey: Any? = null
    private var geometryKey: Any? = null
    private var bounds: MultiFingerGestureBounds? = null
    private var activeIds: Set<Long> = emptySet()
    private var groupIds: Set<Long> = emptySet()
    private var origins: Map<Long, MultiFingerGesturePoint> = emptyMap()
    private var lastCompletePositions: Map<Long, MultiFingerGesturePoint> = emptyMap()
    private var pan = MultiFingerGesturePoint.Zero
    private var zoom = 1.0
    private var rotationDegrees = 0.0
    private var transformExceeded = false
    private var hasCompleteMove = false
    private var frozenResult: MultiFingerGestureResult? = null

    fun updatePolicy(value: MultiFingerGesturePolicy) {
        if (policy != value) {
            cancel()
            policy = value
        }
    }

    /** A single drag / long press owner is irrevocable until every pointer in this sequence is up. */
    fun observeSingleOwnership(positionConsumed: Boolean) {
        if (state == MultiFingerGestureState.ObserveSingle && positionConsumed) cancel()
    }

    fun recheck(environment: MultiFingerGestureEnvironment) {
        if (state != MultiFingerGestureState.Idle && state != MultiFingerGestureState.Drain &&
            (!sameEnvironment(environment) ||
                (state == MultiFingerGestureState.ObserveSingle && environment.singlePointerOwned))) cancel()
    }

    fun cancel() {
        if (state == MultiFingerGestureState.Idle) return
        state = MultiFingerGestureState.Drain
        frozenResult = null
        lastCompletePositions = emptyMap()
        hasCompleteMove = false
    }

    /** Adapter teardown / block finally only. A live cancelled input should use cancel and drain. */
    fun reset() {
        state = MultiFingerGestureState.Idle
        hasOwnership = false
        firstDownMillis = 0L
        lastUptimeMillis = null
        sessionKey = null
        geometryKey = null
        bounds = null
        activeIds = emptySet()
        groupIds = emptySet()
        origins = emptyMap()
        lastCompletePositions = emptyMap()
        pan = MultiFingerGesturePoint.Zero
        zoom = 1.0
        rotationDegrees = 0.0
        transformExceeded = false
        hasCompleteMove = false
        frozenResult = null
    }

    fun onFrame(frame: MultiFingerGestureFrame, environment: MultiFingerGestureEnvironment): MultiFingerGestureStep {
        val ownedBeforeFrame = hasOwnership
        val result = process(frame, environment)
        return MultiFingerGestureStep(ownedBeforeFrame || hasOwnership, result)
    }

    private fun process(frame: MultiFingerGestureFrame, environment: MultiFingerGestureEnvironment): MultiFingerGestureResult? {
        val pressed = frame.pointers.filter { it.pressed }
        if (state == MultiFingerGestureState.Drain) {
            if (isTerminalRelease(frame)) reset()
            return null
        }
        val previousIds = frame.pointers.filter { it.previousPressed }.map { it.id }.toSet()
        val down = frame.pointers.filter { !it.previousPressed && it.pressed }
        val up = frame.pointers.filter { it.previousPressed && !it.pressed }
        val ids = frame.pointers.map { it.id }
        val invalid = frame.type == MultiFingerGestureFrameType.Cancel ||
            frame.type == MultiFingerGestureFrameType.Other || frame.uptimeMillis < 0L ||
            lastUptimeMillis?.let { frame.uptimeMillis < it } == true || ids.size != ids.toSet().size ||
            frame.pointers.any { (!it.previousPressed && !it.pressed) || it.type != MultiFingerGesturePointerType.Touch } ||
            // Replacement takes priority over UP, even if the old group's motion was valid.
            (down.isNotEmpty() && up.isNotEmpty()) ||
            (frame.type == MultiFingerGestureFrameType.Down && down.isEmpty()) ||
            (frame.type == MultiFingerGestureFrameType.Up && up.isEmpty()) ||
            (frame.type == MultiFingerGestureFrameType.Move && (down.isNotEmpty() || up.isNotEmpty()))
        if (invalid) return reject(frame)

        if (state == MultiFingerGestureState.Idle) {
            // Enabling/restarting while a pointer is already held must never create a new DOWN.
            if (!environment.enabled || !environment.bounds.isReady || environment.singlePointerOwned ||
                previousIds.isNotEmpty() || down.size != 1 || frame.type != MultiFingerGestureFrameType.Down ||
                frame.pointers.size != 1 || !environment.bounds.contains(down.single().position)) return reject(frame)
            state = MultiFingerGestureState.ObserveSingle
            firstDownMillis = frame.uptimeMillis
            lastUptimeMillis = frame.uptimeMillis
            sessionKey = environment.sessionKey
            geometryKey = environment.geometryKey
            bounds = environment.bounds
            activeIds = setOf(down.single().id)
            origins = mapOf(down.single().id to down.single().position)
            return null
        }
        if (!sameEnvironment(environment) || previousIds != activeIds || pressed.size > 4) return reject(frame)
        lastUptimeMillis = frame.uptimeMillis

        // Release processing never reads ANY coordinate or transform metric from the frame.
        if (up.isNotEmpty()) {
            if (frame.type != MultiFingerGestureFrameType.Up) return reject(frame)
            if (state == MultiFingerGestureState.ObserveSingle) {
                reset()
                return null
            }
            if (state == MultiFingerGestureState.Assemble || state == MultiFingerGestureState.Track) {
                frozenResult = if (hasCompleteMove && !transformExceeded) {
                    val displacement = groupIds.map { id -> lastCompletePositions.getValue(id) - origins.getValue(id) }
                    policy.classify(pan, displacement)?.let { MultiFingerGestureResult(groupIds.size, it) }
                } else null
                state = MultiFingerGestureState.Frozen
            }
            activeIds = pressed.map { it.id }.toSet()
            if (activeIds.isEmpty()) {
                val result = frozenResult
                reset() // Clear before the caller can route the one immutable result.
                return result
            }
            return null
        }

        if (state == MultiFingerGestureState.Frozen) {
            if (down.isNotEmpty()) return reject(frame)
            return null // Remaining MOVE coordinates are deliberately not sampled.
        }

        if (state == MultiFingerGestureState.ObserveSingle) {
            if (environment.singlePointerOwned || !validCurrentPositions(frame, environment.bounds) ||
                (frame.pointers.first { it.id in activeIds }.position - origins.values.single()).distance > policy.touchSlopPx)
                return reject(frame)
            if (down.isEmpty()) return null
            if (frame.uptimeMillis - firstDownMillis > MultiFingerGesturePolicy.ASSEMBLY_WINDOW_MILLIS)
                return reject(frame)
            if (!canJoin(frame) || !rebuildGroup(frame)) return reject(frame)
            hasOwnership = true // Only a fully legal second-pointer baseline acquires the sequence.
            state = MultiFingerGestureState.Assemble
            return null
        }

        // Expiry locks the OLD group before handling another DOWN, without resetting its trajectory.
        if (state == MultiFingerGestureState.Assemble &&
            frame.uptimeMillis - firstDownMillis > MultiFingerGesturePolicy.ASSEMBLY_WINDOW_MILLIS) {
            state = MultiFingerGestureState.Track
            if (transformExceeded) return reject(frame)
        }
        if (down.isNotEmpty()) {
            if (state == MultiFingerGestureState.Track || !validCurrentPositions(frame, environment.bounds) ||
                !canJoin(frame) || !rebuildGroup(frame)) return reject(frame)
            return null
        }
        if (frame.type != MultiFingerGestureFrameType.Move || pressed.map { it.id }.toSet() != groupIds ||
            !validCurrentPositions(frame, environment.bounds) || frame.pointers.any { !it.previousPosition.isFinite })
            return reject(frame)
        val metrics = frame.metrics?.takeIf { it.isValid } ?: return reject(frame)
        pan += metrics.pan
        zoom *= metrics.zoom
        rotationDegrees += metrics.rotationDegrees
        if (!pan.isFinite || !zoom.isFinite() || !rotationDegrees.isFinite()) return reject(frame)
        hasCompleteMove = true
        lastCompletePositions = pressed.associate { it.id to it.position }
        transformExceeded = transformExceeded || !policy.acceptsTransform(zoom, rotationDegrees)
        if (state == MultiFingerGestureState.Track && transformExceeded) return reject(frame)
        return null
    }

    private fun sameEnvironment(environment: MultiFingerGestureEnvironment): Boolean = environment.enabled &&
        environment.bounds.isReady && environment.bounds == bounds && environment.sessionKey == sessionKey &&
        environment.geometryKey == geometryKey

    private fun validCurrentPositions(frame: MultiFingerGestureFrame, bounds: MultiFingerGestureBounds): Boolean =
        frame.pointers.all { bounds.contains(it.position) }

    private fun canJoin(frame: MultiFingerGestureFrame): Boolean = frame.pointers.size in 2..4 &&
        frame.pointers.filter { it.id in activeIds }.all {
            (it.position - origins.getValue(it.id)).distance <= policy.joinDistancePx
        }

    private fun rebuildGroup(frame: MultiFingerGestureFrame): Boolean {
        val radius = frame.joinedCentroidSizePx ?: return false
        if (!radius.isFinite() || radius <= 0.0) return false
        activeIds = frame.pointers.map { it.id }.toSet()
        groupIds = activeIds
        origins = frame.pointers.associate { it.id to it.position }
        lastCompletePositions = emptyMap()
        pan = MultiFingerGesturePoint.Zero
        zoom = 1.0
        rotationDegrees = 0.0
        transformExceeded = false
        hasCompleteMove = false
        return true
    }

    private fun isTerminalRelease(frame: MultiFingerGestureFrame): Boolean =
        frame.pointers.none { it.pressed } && (frame.type == MultiFingerGestureFrameType.Up ||
            frame.type == MultiFingerGestureFrameType.Cancel)

    private fun reject(frame: MultiFingerGestureFrame): MultiFingerGestureResult? {
        frozenResult = null
        if (isTerminalRelease(frame) || (state == MultiFingerGestureState.Idle && frame.pointers.none { it.pressed })) reset() else {
            state = MultiFingerGestureState.Drain
            lastCompletePositions = emptyMap()
            hasCompleteMove = false
        }
        return null
    }
}
