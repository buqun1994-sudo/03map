package com.icar03.content.ui

import android.os.SystemClock
import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.CubicBezierEasing
import androidx.compose.animation.core.tween
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalView
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import kotlinx.coroutines.flow.first
import kotlin.math.roundToInt

internal object LyricBodyVisuals {
    const val FADE_OUT_MS = 180
    const val FADE_IN_MS = 260
    const val WAIT_RADIUS_DP = 6f
    const val WAIT_STEP_DP = 22f
}

private class LyricSourceHolder(var value: LyricsState? = null)

/** One document/cache at a time. A recording change retires the old viewport before mounting the next. */
@Composable
internal fun LyricsBodyTransition(lyrics: LyricsState, dark: Boolean, modifier: Modifier = Modifier,
    emptyContent: @Composable () -> Unit = {}) {
    val visible = rememberLyricVisibility()
    val incoming = lyrics.takeIf { it.lines.isNotEmpty() && !lyricBodyAtEnd(it) && !it.changingTrack }
    val targetKey = if (lyricBodyAtEnd(lyrics) || lyrics.changingTrack) null
        else lyricPresentationKey(lyrics).takeIf { it.isNotEmpty() || incoming != null }
    var displayedKey by remember { mutableStateOf(targetKey) }
    var lastMountedKey by remember { mutableStateOf(targetKey) }
    val held = remember { LyricSourceHolder(incoming) }
    var ready by remember { mutableStateOf(false) }
    var entering by remember { mutableStateOf(targetKey != null) }
    var fromStart by remember { mutableStateOf(false) }
    val opacity = remember { Animatable(if (targetKey == null) 1f else 0f) }
    val alpha = remember(opacity) { { opacity.value } }
    val exiting = displayedKey != null && displayedKey != targetKey
    val source = incoming?.takeIf { lyricPresentationKey(it) == displayedKey }
        ?: held.value?.takeIf { lyricPresentationKey(it) == displayedKey }
    val awaitingBody = !exiting && incoming == null && source != null
    val frozenMotion = exiting || awaitingBody
    // Freeze the old matching source, including its highlight, once at the boundary.
    val frozen = remember(displayedKey, frozenMotion) {
        source?.let { it.copy(positionMs = lyricPositionAt(it, SystemClock.elapsedRealtime()),
            playbackSpeed = 0f, playbackTrajectory = null) }
    }
    SideEffect { if (!frozenMotion && source != null) held.value = source }

    LaunchedEffect(targetKey, visible) {
        if (!visible) {
            displayedKey = targetKey
            lastMountedKey = targetKey
            held.value = null
            fromStart = false
            entering = false
            opacity.snapTo(1f)
            return@LaunchedEffect
        }
        val easing = CubicBezierEasing(.32f, .72f, 0f, 1f)
        if (displayedKey != targetKey) {
            if (displayedKey != null && opacity.value > 0f) {
                opacity.animateTo(0f, tween((LyricBodyVisuals.FADE_OUT_MS * opacity.value).roundToInt().coerceAtLeast(1), easing = easing))
            }
            // The effect is keyed only by identity/visibility: body upgrades cannot restart a fade.
            ready = false
            fromStart = targetKey != lastMountedKey
            if (targetKey != null) lastMountedKey = targetKey
            entering = targetKey != null
            displayedKey = targetKey
            held.value = null
            opacity.snapTo(if (targetKey == null) 1f else 0f)
        }
        if (targetKey != null) {
            snapshotFlow { ready }.first { it }
            if (opacity.value < 1f) opacity.animateTo(1f, tween(
                (LyricBodyVisuals.FADE_IN_MS * (1f - opacity.value)).roundToInt().coerceAtLeast(1), easing = easing))
            entering = false
        }
    }
    Box(modifier.fillMaxSize()) {
        val displayed = if (frozenMotion) frozen else source
        if (displayedKey != null && displayed != null) key(displayedKey) {
            WallpaperLyrics(displayed, dark, opacity = alpha, freezeMotion = frozenMotion,
                holdFollow = entering, startAtFirstRow = fromStart, visibility = visible,
                onLayoutReady = { ready = true })
        } else emptyContent()
    }
}

internal fun lyricPresentationKey(lyrics: LyricsState): String =
    if (lyrics.recordingGeneration > 0L) "recording:${lyrics.recordingGeneration}" else lyrics.recordingKey

/** Store supplies semantic end; no new duration ticker or second cursor in the viewport. */
internal fun lyricBodyAtEnd(lyrics: LyricsState): Boolean = lyrics.atEnd ||
    (lyrics.timelineReady && lyrics.durationMs > 0L && lyrics.positionMs >= lyrics.durationMs)

@Composable
internal fun rememberLyricVisibility(): Boolean {
    val owner = LocalLifecycleOwner.current
    val view = LocalView.current
    var started by remember(owner) { mutableStateOf(owner.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)) }
    var focused by remember(view) { mutableStateOf(view.hasWindowFocus()) }
    DisposableEffect(owner, view) {
        val observer = LifecycleEventObserver { _, _ -> started = owner.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED) }
        val tree = view.viewTreeObserver
        val listener = android.view.ViewTreeObserver.OnWindowFocusChangeListener { focused = it }
        owner.lifecycle.addObserver(observer)
        tree.addOnWindowFocusChangeListener(listener)
        onDispose {
            owner.lifecycle.removeObserver(observer)
            if (tree.isAlive) tree.removeOnWindowFocusChangeListener(listener)
        }
    }
    return started && focused && LocalIconVisible.current
}
