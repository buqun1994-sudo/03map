package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Paint
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.drawscope.drawIntoCanvas
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.semantics.semantics
import kotlinx.coroutines.isActive
import kotlin.math.PI
import kotlin.math.sin

internal val AmbientPhase = SemanticsPropertyKey<Float>("AmbientPhase")

/** A cached colour field is gently warped by Canvas's hardware bitmap mesh on API 28.
 * Only vertices move per frame: there is no full-size CPU blur, extra Surface or GL context.
 */
@Composable
fun MediaAmbientBackground(texture: Bitmap, dark: Boolean, modifier: Modifier = Modifier) {
    var phase by remember(texture) { mutableFloatStateOf(0f) }
    LaunchedEffect(texture) {
        var origin = 0L
        while (isActive) withFrameNanos { now ->
            if (origin == 0L) origin = now
            phase = ((now - origin) / 1_000_000_000.0).toFloat()
        }
    }
    val vertices = remember(texture) { FloatArray((MESH + 1) * (MESH + 1) * 2) }
    val paint = remember { Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG) }
    Canvas(modifier.fillMaxSize().testTag("media-ambient").semantics { this[AmbientPhase] = phase }) {
        val time = phase
        var offset = 0
        for (row in 0..MESH) for (column in 0..MESH) {
            val u = column.toFloat() / MESH
            val v = row.toFloat() / MESH
            // Boundary vertices stay fixed; the content viewport is always fully covered.
            val envelope = sin(PI * u).toFloat() * sin(PI * v).toFloat()
            vertices[offset++] = (u + .15f * envelope * sin(time * .19f + v * 5.7f + u * 2.1f)) * size.width
            vertices[offset++] = (v + .13f * envelope * sin(time * .16f + u * 5.2f - v * 1.9f)) * size.height
        }
        if (!texture.isRecycled) drawIntoCanvas {
            it.nativeCanvas.drawBitmapMesh(texture, MESH, MESH, vertices, 0, null, 0, paint)
        }
        // The map's existing theme remains the sole theme owner; this veil protects text.
        drawRect(if (dark) Color.Black.copy(alpha = .28f) else Color.White.copy(alpha = .60f))
    }
}

private const val MESH = 12
