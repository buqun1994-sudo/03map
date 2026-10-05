package com.icar03.content.model

import kotlin.math.min

/**
 * An immutable, pure playback position trajectory anchored to elapsed realtime.
 *
 * [basePositionMs] is the position at [capturedAtMs].  A non-zero correction is
 * applied linearly for [correctionDurationMs], then remains as a fixed phase
 * offset while the normal [speed] continues.  All public operations are pure;
 * sampling never advances or otherwise changes this object.
 */
class PlaybackTrajectory @JvmOverloads constructor(
    val basePositionMs: Long,
    val capturedAtMs: Long,
    val speed: Float,
    val durationMs: Long,
    val correctionMs: Double = 0.0,
    val correctionDurationMs: Long = 0L,
) {
    init {
        require(speed.isFinite()) { "speed must be finite" }
        require(durationMs >= 0L) { "durationMs must be non-negative" }
        if (correctionMs != 0.0) {
            require(correctionMs.isFinite()) { "correctionMs must be finite" }
            require(correctionDurationMs > 0L) {
                "correctionDurationMs must be positive when correctionMs is non-zero"
            }
            // A correction is allowed to change the magnitude of motion, but
            // it must not reverse a playing trajectory while it is ramping in.
            if (speed > 0f || speed < 0f) {
                val initialSpeed =
                    speed.toDouble() + correctionMs / correctionDurationMs.toDouble()
                require(if (speed > 0f) initialSpeed > 0.0 else initialSpeed < 0.0) {
                    "correction must not reverse the initial trajectory direction"
                }
            }
        }
    }

    /**
     * Samples the clamped position at an absolute elapsed-realtime timestamp.
     * The result is always at least zero and, when known, at most [durationMs].
     */
    fun sampleAt(elapsedRealtimeMs: Long): Long {
        if (speed == 0f) return clampStaticPosition(basePositionMs)
        return clampPosition(rawPositionAt(elapsedRealtimeMs))
    }

    /**
     * Returns the unclamped double position at an absolute elapsed-realtime
     * timestamp.  This is public so callers that schedule fractional source
     * positions use the exact same arithmetic as [sampleAt].
     */
    fun rawPositionAt(now: Long): Double {
        val elapsed = elapsedAt(now)
        // A paused trajectory is deliberately static, even if a stale caller
        // supplies correction fields along with a zero speed.
        if (speed == 0f) return basePositionMs.toDouble()

        // Keep this expression in the same order as the old anchor arithmetic:
        // base + elapsed * speed.toDouble().  In particular, do not convert to
        // a Long before multiplying, since large timestamps rely on Double's
        // saturation/rounding behavior.
        val normal = basePositionMs.toDouble() +
            elapsed.toDouble() * speed.toDouble()
        if (correctionMs == 0.0) return normal

        val fraction = min(
            elapsed.toDouble() / correctionDurationMs.toDouble(),
            1.0,
        )
        return normal + correctionMs * fraction
    }

    /**
     * Returns the delay until a fractional source position is first crossed in
     * the direction of travel.  A past boundary is reported as one millisecond
     * so a scheduler cannot spin on an already-consumed boundary.
     */
    fun delayUntilPosition(targetPositionMs: Double, now: Long): Long? {
        if (!isReachableTarget(targetPositionMs)) return null

        val direction = direction()
        if (direction == 0) return pausedDelay(targetPositionMs, now, raw = true)

        val current = rawPositionAt(now)
        if (current.isNaN()) return null
        if (direction > 0) {
            if (current > targetPositionMs) return 1L
            if (current == targetPositionMs) return 0L
            return findFirstCrossing(now) { timestamp ->
                rawPositionAt(timestamp) >= targetPositionMs
            }
        }

        if (current < targetPositionMs) return 1L
        if (current == targetPositionMs) return 0L
        return findFirstCrossing(now) { timestamp ->
            rawPositionAt(timestamp) <= targetPositionMs
        }
    }

    /**
     * Returns the delay until the integer sample first reaches [targetPositionMs].
     * Forward motion uses >= and reverse motion uses <=, matching Store event
     * scheduling rather than fractional source-position scheduling.
     */
    fun delayUntilSample(targetPositionMs: Long, now: Long): Long? {
        if (!isReachableTarget(targetPositionMs.toDouble())) return null

        val direction = direction()
        if (direction == 0) {
            val current = sampleAt(now)
            return when {
                current == targetPositionMs -> 0L
                directionOf(current, targetPositionMs) > 0 -> 1L
                else -> null
            }
        }

        val current = sampleAt(now)
        if (direction > 0) {
            if (current > targetPositionMs) return 1L
            if (current == targetPositionMs) return 0L
            return findFirstCrossing(now) { timestamp ->
                sampleAt(timestamp) >= targetPositionMs
            }
        }

        if (current < targetPositionMs) return 1L
        if (current == targetPositionMs) return 0L
        return findFirstCrossing(now) { timestamp ->
            sampleAt(timestamp) <= targetPositionMs
        }
    }

    private fun direction(): Int = when {
        speed > 0f -> 1
        speed < 0f -> -1
        else -> 0
    }

    private fun pausedDelay(target: Double, now: Long, raw: Boolean): Long? {
        val current = if (raw) rawPositionAt(now) else sampleAt(now).toDouble()
        if (current.isNaN()) return null
        return when {
            current == target -> 0L
            current > target -> 1L
            else -> null
        }
    }

    private fun isReachableTarget(target: Double): Boolean {
        if (!target.isFinite() || target < 0.0) return false
        return durationMs == 0L || target <= durationMs.toDouble()
    }

    /**
     * Finds the first absolute timestamp at which a monotone crossing predicate
     * becomes true.  Searching elapsed time keeps subtraction overflow out of
     * the loop and bounds the work to at most 63 iterations.
     */
    private fun findFirstCrossing(now: Long, crossed: (Long) -> Boolean): Long? {
        val lastTimestamp = Long.MAX_VALUE
        if (!crossed(lastTimestamp)) return null

        val firstElapsed = elapsedAt(now)
        val lastElapsed = elapsedAt(lastTimestamp)
        if (firstElapsed > lastElapsed) return null

        var low = firstElapsed
        var high = lastElapsed
        while (low < high) {
            val middle = low + ((high - low) ushr 1)
            if (crossed(timestampAtElapsed(middle))) {
                high = middle
            } else {
                low = middle + 1L
            }
        }

        val crossingTimestamp = timestampAtElapsed(low)
        if (!crossed(crossingTimestamp)) return null
        return delayFrom(now, crossingTimestamp)
    }

    private fun elapsedAt(now: Long): Long {
        if (now <= capturedAtMs) return 0L
        val elapsed = now - capturedAtMs
        // The subtraction only wraps when a negative capture is combined with
        // a positive now.  Saturating keeps Long.MAX_VALUE sampling safe.
        return if (elapsed < 0L) Long.MAX_VALUE else elapsed
    }

    private fun timestampAtElapsed(elapsed: Long): Long {
        if (elapsed <= 0L) return capturedAtMs
        return if (capturedAtMs > Long.MAX_VALUE - elapsed) {
            Long.MAX_VALUE
        } else {
            capturedAtMs + elapsed
        }
    }

    private fun delayFrom(now: Long, timestamp: Long): Long {
        if (timestamp <= now) return 0L
        val delay = timestamp - now
        return if (delay < 0L) Long.MAX_VALUE else delay
    }

    private fun clampStaticPosition(position: Long): Long {
        val nonNegative = position.coerceAtLeast(0L)
        return if (durationMs > 0L) minOf(nonNegative, durationMs) else nonNegative
    }

    private fun clampPosition(raw: Double): Long {
        if (raw.isNaN() || raw <= 0.0) return 0L
        if (durationMs > 0L && raw >= durationMs.toDouble()) return durationMs
        return raw.toLong()
    }

    private fun directionOf(current: Long, target: Long): Int = when {
        current > target -> 1
        current < target -> -1
        else -> 0
    }
}
