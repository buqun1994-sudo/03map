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
    fun updateGestureWidth(width: Int) { reservedGestureWidthPx = width.coerceAtLeast(0) }
    private var requestGeneration = 0L
    var onEntryReady: ((Long) -> Unit)? = null

    val geometryReady: Boolean get() = fullSize.width > 0 && fullSize.height > 0 && splitWidthPx > 0
    val moving: Boolean get() = pendingEnter != 0L || phase >= 2 || progress > .001f && progress < .999f
    val collapsed: Boolean get() = phase == 1 && progress >= .999f

    fun updateGeometry(dividerX: Float, expandedDivider: Float, mapWidth: Float, height: Int) {
        if (!dividerX.isFinite() || !expandedDivider.isFinite() || !mapWidth.isFinite() || mapWidth <= 0f) return
        val width = (expandedDivider + mapWidth).toInt().coerceAtLeast(1)
        splitWidthPx = expandedDivider.toInt().coerceIn(1, width)
        fullSize = IntSize(width, height.coerceAtLeast(0))
        progress = ((dividerX - expandedDivider) / mapWidth).coerceIn(0f, 1f)
    }

    fun updatePhase(value: Int) { phase = value.coerceIn(0, 6) }
    fun requestEnter(): Long {
        val token = ++requestGeneration
        pendingEnter = token
        return token
    }
    fun entryPrepared(token: Long) {
        if (token == 0L || token != pendingEnter) return
        pendingEnter = 0L
        onEntryReady?.invoke(token)
    }
    fun cancelEntry() { requestGeneration++; pendingEnter = 0L }
    fun stop() { cancelEntry(); onEntryReady = null }
}

internal fun lyricsTransitionAlpha(progress: Float): Float {
    val p = progress.coerceIn(0f, 1f)
    return when {
        p < .35f -> 1f - p / .35f
        p > .65f -> (p - .65f) / .35f
        else -> 0f
    }.coerceIn(0f, 1f)
}
