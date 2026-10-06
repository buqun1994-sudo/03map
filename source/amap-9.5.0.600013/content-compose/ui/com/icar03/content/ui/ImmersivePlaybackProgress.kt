package com.icar03.content.ui

import android.os.SystemClock
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.lifecycle.repeatOnLifecycle
import kotlinx.coroutines.delay
import kotlinx.coroutines.isActive

/**
 * A presentation-only progress sample. The timeline remains owned by the Store;
 * this surface only samples its immutable trajectory while the immersive page is visible.
 */
@Composable
internal fun ImmersivePlaybackProgress(
    lyrics: LyricsState,
    compact: Boolean,
    modifier: Modifier = Modifier,
) {
    val visible = rememberLyricVisibility()
    val owner = LocalLifecycleOwner.current
    var positionMs by remember(lyrics.recordingKey, lyrics.anchorRevision, lyrics.positionMs, lyrics.durationMs) {
        mutableLongStateOf(sampleImmersivePosition(lyrics))
    }
    LaunchedEffect(
        owner,
        visible,
        lyrics.recordingKey,
        lyrics.anchorRevision,
        lyrics.positionMs,
        lyrics.playbackSpeed,
        lyrics.durationMs,
        lyrics.timelineReady,
        lyrics.playbackTrajectory,
    ) {
        if (!visible) return@LaunchedEffect
        // Lifecycle cancellation also stops delay sampling when the host's frame clock is paused.
        owner.lifecycle.repeatOnLifecycle(Lifecycle.State.STARTED) {
            positionMs = sampleImmersivePosition(lyrics)
            val speed = lyrics.playbackTrajectory?.speed ?: lyrics.playbackSpeed
            val ready = lyrics.playbackTrajectory != null || lyrics.timelineReady
            if (ready && positionMs >= 0L && speed.isFinite() && speed != 0f) {
                while (isActive && if (speed > 0f) {
                    lyrics.durationMs <= 0L || positionMs < lyrics.durationMs
                } else {
                    positionMs > 0L
                }) {
                    delay(33L)
                    positionMs = sampleImmersivePosition(lyrics)
                }
            }
        }
    }

    val durationMs = lyrics.durationMs.coerceAtLeast(0L)
    val fraction = if (durationMs > 0L && positionMs >= 0L) {
        (positionMs.toDouble() / durationMs.toDouble()).toFloat().coerceIn(0f, 1f)
    } else {
        0f
    }
    val trackColor = MaterialTheme.colorScheme.onSurface.copy(alpha = if (compact) .20f else .24f)
    val fillColor = MaterialTheme.colorScheme.onSurface.copy(alpha = .88f)
    val labelStyle = MaterialTheme.typography.labelLarge.copy(
        fontSize = if (compact) 18.sp else 20.sp, lineHeight = if (compact) 22.sp else 24.sp)

    Column(modifier.fillMaxWidth().testTag("immersive-progress"), verticalArrangement = Arrangement.spacedBy(0.dp)) {
        Box(
            Modifier.fillMaxWidth().height(if (compact) 4.dp else 6.dp)
                .clip(RoundedCornerShape(6.dp)).background(trackColor),
        ) {
            if (fraction > 0f) {
                Box(
                    Modifier.fillMaxWidth(fraction).height(if (compact) 4.dp else 6.dp)
                        .clip(RoundedCornerShape(6.dp)).background(fillColor)
                        .testTag("immersive-progress-fill"),
                )
            }
        }
        Row(
            Modifier.fillMaxWidth().padding(top = if (compact) 6.dp else 8.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
        ) {
            Text(
                immersiveTimeLabel(positionMs),
                Modifier.testTag("immersive-progress-elapsed"),
                style = labelStyle,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
            )
            Text(
                if (durationMs > 0L) immersiveTimeLabel(durationMs) else "--:--",
                Modifier.testTag("immersive-progress-duration"),
                style = labelStyle,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                textAlign = TextAlign.End,
            )
        }
    }
}

private fun sampleImmersivePosition(lyrics: LyricsState): Long {
    val now = SystemClock.elapsedRealtime()
    // Canonical media progress stays available even when lyrics are plain text.
    return lyrics.playbackTrajectory?.sampleAt(now) ?: lyricPositionAt(lyrics, now)
}

private fun immersiveTimeLabel(milliseconds: Long): String {
    if (milliseconds < 0L) return "--:--"
    val totalSeconds = milliseconds / 1_000L
    val seconds = (totalSeconds % 60L).toString().padStart(2, '0')
    val minutes = totalSeconds / 60L
    return if (minutes >= 60L) {
        val hours = minutes / 60L
        val remainingMinutes = (minutes % 60L).toString().padStart(2, '0')
        "$hours:$remainingMinutes:$seconds"
    } else {
        "$minutes:$seconds"
    }
}
