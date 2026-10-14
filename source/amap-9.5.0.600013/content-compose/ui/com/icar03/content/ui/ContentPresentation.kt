package com.icar03.content.ui

import androidx.compose.runtime.Stable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.unit.IntSize

/** Map geometry and progress are owned by the host, separately from playback. */
@Stable
class ContentPresentation {
    var fullSize by mutableStateOf(IntSize.Zero)
        private set
    var splitWidthPx by mutableIntStateOf(0)
        private set
    var progress by mutableFloatStateOf(0f)
        private set
    var phase by mutableIntStateOf(0)
        private set
    var pendingEnter by mutableLongStateOf(0L)
        private set
    var reservedGestureWidthPx by mutableIntStateOf(0)
        private set
    var pagerMotion by mutableStateOf(false)
        private set
    var modalActive by mutableStateOf(false)
        private set
    var inputGeneration by mutableLongStateOf(0L)
        private set
    fun invalidateInput() { inputGeneration++ }
    fun updateGestureWidth(width: Int) { reservedGestureWidthPx = width.coerceAtLeast(0) }
    fun updatePagerMotion(moving: Boolean) {
        if (pagerMotion == moving) return
        pagerMotion = moving
        if (moving) invalidateInput()
        onGestureStateChanged?.invoke()
    }
    fun updateModalActive(active: Boolean) {
        if (modalActive == active) return
        modalActive = active
        if (active) invalidateInput()
        onGestureStateChanged?.invoke()
    }
    private var requestGeneration = 0L
    private var sessionCounter = 0L
    var sessionGeneration by mutableLongStateOf(0L)
        private set
    var buttonTransitionActive by mutableStateOf(false)
        private set
    var onEntryReady: ((Long) -> Unit)? = null
    var onGestureStateChanged: (() -> Unit)? = null

    val geometryReady: Boolean get() = fullSize.width > 0 && fullSize.height > 0 && splitWidthPx > 0
    val moving: Boolean get() = pendingEnter != 0L || phase in 3..5 || progress > .001f && progress < .999f
    val collapsed: Boolean get() = phase == 1 && progress >= .999f

    fun updateGeometry(dividerX: Float, expandedDivider: Float, mapWidth: Float, height: Int) {
        if (!dividerX.isFinite() || !expandedDivider.isFinite() || !mapWidth.isFinite() || mapWidth <= 0f) return
        val width = (expandedDivider + mapWidth).toInt().coerceAtLeast(1)
        splitWidthPx = expandedDivider.toInt().coerceIn(1, width)
        fullSize = IntSize(width, height.coerceAtLeast(0))
        progress = ((dividerX - expandedDivider) / mapWidth).coerceIn(0f, 1f)
    }

    fun updatePhase(value: Int) {
        val next = value.coerceIn(0, 6)
        if (next in 3..5 && phase !in 3..5 && sessionGeneration == 0L) sessionGeneration = ++sessionCounter
        if (next in 2..5 && next != phase) invalidateInput()
        phase = next
        if (buttonTransitionActive && next == 1) buttonTransitionActive = false
        if (next !in 3..5 && pendingEnter == 0L && (progress <= .001f || progress >= .999f)) sessionGeneration = 0L
        onGestureStateChanged?.invoke()
    }
    fun requestEnter(): Long {
        if (sessionGeneration == 0L) sessionGeneration = ++sessionCounter
        buttonTransitionActive = true
        val token = ++requestGeneration
        pendingEnter = token
        onGestureStateChanged?.invoke()
        return token
    }
    fun entryPrepared(token: Long) {
        if (token == 0L || token != pendingEnter) return
        pendingEnter = 0L
        onEntryReady?.invoke(token)
    }
    fun cancelEntry() {
        requestGeneration++
        pendingEnter = 0L
        buttonTransitionActive = false
        if (phase < 2) sessionGeneration = 0L
        onGestureStateChanged?.invoke()
    }
    fun stop() { invalidateInput(); cancelEntry(); sessionGeneration = 0L; onEntryReady = null; onGestureStateChanged = null }
}

internal fun presentationSmoothStep(value: Float): Float {
    val x = value.coerceIn(0f, 1f)
    return x * x * (3f - 2f * x)
}

internal const val PRESENTATION_COMPACT_FADE_END = .45f
internal const val PRESENTATION_WIDE_FADE_START = .55f

internal fun presentationCompactAlpha(progress: Float): Float =
    1f - presentationSmoothStep(progress.coerceIn(0f, 1f) / PRESENTATION_COMPACT_FADE_END)
        .coerceIn(0f, 1f)

internal fun presentationWideAlpha(progress: Float): Float =
    presentationSmoothStep((progress.coerceIn(0f, 1f) - PRESENTATION_WIDE_FADE_START) /
        (1f - PRESENTATION_WIDE_FADE_START)).coerceIn(0f, 1f)

internal fun presentationAmbientBlend(progress: Float): Float = 1f - presentationCompactAlpha(progress)

internal fun lyricsTransitionAlpha(progress: Float): Float = when {
    progress.coerceIn(0f, 1f) < .5f -> presentationCompactAlpha(progress)
    else -> presentationWideAlpha(progress)
}
