package com.icar03.content.ui

import androidx.compose.animation.core.CubicBezierEasing
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.runtime.withFrameNanos
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min

internal object LyricScrollVisuals {
    const val TRAVEL_MS = 450
    const val ROW_DELAY_MS = 18
    val easing = CubicBezierEasing(.32f, .72f, 0f, 1f)
}

/** Sparse, immutable row offsets. Gaps and offscreen rows extend the nearest plateau. */
internal class LyricRowPose private constructor(val rows: IntArray, private val offsets: FloatArray) {
    val minimum = offsets.minOrNull() ?: 0f
    val maximum = offsets.maxOrNull() ?: 0f
    val base: Float get() = offsets[0]
    fun offsetAt(row: Int): Float {
        if (rows.size == 1) return offsets[0]
        val found = rows.binarySearch(row)
        return offsets[if (found >= 0) found else (-found - 2).coerceAtLeast(0)]
    }
    companion object {
        fun uniform(offset: Float) = LyricRowPose(intArrayOf(0), floatArrayOf(offset))
        fun sampled(rows: IntArray, offset: (Int) -> Float): LyricRowPose {
            if (rows.isEmpty()) return uniform(offset(0))
            val values = FloatArray(rows.size) { offset(rows[it]) }
            if (values.all { it == values[0] }) return uniform(values[0])
            return LyricRowPose(rows, values)
        }
    }
}

/** One source-independent scroll segment; each source sentence and its tracks move together. */
internal class LyricScrollSegment(
    val start: LyricRowPose,
    val target: Float,
    val firstRow: Int = 0,
    val lastRow: Int = firstRow,
    val stagger: Boolean = false,
    val frozen: Boolean = false,
) {
    val maximumDelayMs = if (stagger) (lastRow - firstRow).coerceAtLeast(0) * LyricScrollVisuals.ROW_DELAY_MS else 0
    val durationMs = if (frozen) 0 else LyricScrollVisuals.TRAVEL_MS + maximumDelayMs
    fun delayAt(row: Int): Int = if (stagger)
        (row - firstRow).coerceIn(0, (lastRow - firstRow).coerceAtLeast(0)) * LyricScrollVisuals.ROW_DELAY_MS else 0
    private fun progress(phaseMs: Float, delayMs: Int): Float = LyricScrollVisuals.easing.transform(
        ((phaseMs - delayMs) / LyricScrollVisuals.TRAVEL_MS).coerceIn(0f, 1f))
    fun offsetAt(row: Int, phaseMs: Float): Float {
        val from = start.offsetAt(row)
        if (frozen) return from
        val fraction = progress(phaseMs, delayAt(row))
        return from + (target - from) * fraction
    }
    fun minimumAt(phaseMs: Float): Float {
        if (frozen) return start.minimum
        val early = progress(phaseMs, 0)
        val late = progress(phaseMs, maximumDelayMs)
        return min(start.minimum + (target - start.minimum) * early,
            start.minimum + (target - start.minimum) * late)
    }
    fun maximumAt(phaseMs: Float): Float {
        if (frozen) return start.maximum
        val early = progress(phaseMs, 0)
        val late = progress(phaseMs, maximumDelayMs)
        return max(start.maximum + (target - start.maximum) * early,
            start.maximum + (target - start.maximum) * late)
    }
    /** Capture only old knots and this visible delay range, never the corridor of a seek. */
    fun poseAt(phaseMs: Float, translation: Float = 0f, visibleRows: IntRange? = null): LyricRowPose {
        val knots = if (visibleRows != null) (listOf(0) + visibleRows).distinct().sorted().toIntArray()
            else if (stagger) (start.rows.asList() + (firstRow..lastRow)).distinct().sorted().toIntArray()
            else start.rows
        return LyricRowPose.sampled(knots) { offsetAt(it, phaseMs) + translation }
    }
    companion object {
        fun stationary(pose: LyricRowPose) = LyricScrollSegment(pose, pose.base, frozen = true)
    }
}

/** Reused in draw and window queries. A painted frame retains its description and phase, not pixels. */
internal class LyricScrollSample {
    var segment = LyricScrollSegment.stationary(LyricRowPose.uniform(0f))
    var phaseMs = 0f
    var translation = 0f
    val base: Float get() = segment.offsetAt(0, phaseMs) + translation
    val minimum: Float get() = segment.minimumAt(phaseMs) + translation
    val maximum: Float get() = segment.maximumAt(phaseMs) + translation
    fun offsetAt(row: Int): Float = segment.offsetAt(row, phaseMs) + translation
    fun set(segment: LyricScrollSegment, phaseMs: Float, translation: Float) {
        this.segment = segment; this.phaseMs = phaseMs; this.translation = translation
    }
    fun copyFrom(other: LyricScrollSample) = set(other.segment, other.phaseMs, other.translation)
    fun pose(relativeTo: Float = 0f): LyricRowPose = segment.poseAt(phaseMs, translation - relativeTo)
}

/** Only one scroll job writes phase. Touch stops it synchronously before vertical slop. */
internal class LyricScrollState(initialOffset: Float) {
    var segment by mutableStateOf(LyricScrollSegment.stationary(LyricRowPose.uniform(initialOffset)))
        private set
    var phaseMs by mutableFloatStateOf(0f)
        private set
    var translation by mutableFloatStateOf(0f)
        private set
    var running by mutableStateOf(false)
        private set
    var layoutKey by mutableStateOf<Any?>(null)
    private var generation = 0L
    val value: Float get() = segment.offsetAt(0, phaseMs) + translation
    fun sampleInto(sample: LyricScrollSample, origin: Float) = sample.set(segment, phaseMs, origin + translation)
    fun stop(sample: LyricScrollSample? = null, origin: Float = 0f) {
        val pose = sample?.pose(origin) ?: segment.poseAt(phaseMs, translation)
        generation++
        segment = LyricScrollSegment.stationary(pose)
        phaseMs = 0f; translation = 0f; running = false
    }
    fun reset(offset: Float) {
        generation++
        segment = LyricScrollSegment.stationary(LyricRowPose.uniform(offset))
        phaseMs = 0f; translation = 0f; running = false
    }
    fun dragTo(offset: Float) { translation = offset - segment.offsetAt(0, phaseMs) }
    suspend fun moveTo(target: Float, firstRow: Int, lastRow: Int, stagger: Boolean) {
        val pose = segment.poseAt(phaseMs, translation, firstRow..lastRow)
        val token = ++generation
        if (abs(pose.minimum - target) < .001f && abs(pose.maximum - target) < .001f) {
            reset(target)
            return
        }
        val next = LyricScrollSegment(pose, target, firstRow, lastRow, stagger)
        phaseMs = 0f; translation = 0f; segment = next; running = true
        val startNanos = withFrameNanos { it }
        while (generation == token && phaseMs < next.durationMs) {
            withFrameNanos { frame ->
                if (generation == token) phaseMs = ((frame - startNanos) / 1_000_000f).coerceIn(0f, next.durationMs.toFloat())
            }
        }
        if (generation == token) reset(target)
    }
}
