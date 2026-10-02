package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas as AndroidCanvas
import android.graphics.Paint
import android.graphics.PorterDuff
import android.graphics.PorterDuffXfermode
import android.graphics.RectF
import androidx.compose.animation.core.CubicBezierEasing
import androidx.compose.animation.core.animate
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.drawscope.drawIntoCanvas
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.IntSize
import kotlinx.coroutines.isActive
import kotlin.math.max
import kotlin.math.roundToInt

/** Immutable published textures. Android/GC owns their lifetime while frames reference them. */
class AmbientArtwork(
    val base: Bitmap, val glow: Bitmap, val poses: List<AmbientGlowPose>,
    val darkVeil: Float = .15f, val lightVeil: Float = .60f,
)
data class AmbientGlowPose(
    val angle: Float, val periodSeconds: Float, val pivotX: Float, val pivotY: Float, val scale: Float,
)
internal val AmbientPhase = SemanticsPropertyKey<Float>("AmbientPhase")
internal val AmbientOpacity = SemanticsPropertyKey<Float>("AmbientOpacity")
internal val AmbientFraction = SemanticsPropertyKey<Float>("AmbientFraction")
internal const val AMBIENT_TRANSITION_MS = 500
private val AmbientEasing = CubicBezierEasing(.42f, 0f, .58f, 1f)

/** One persistent renderer handles arrival, replacement and departure, including interruptions. */
@Composable
fun MediaAmbientBackground(
    texture: AmbientArtwork?, dark: Boolean, modifier: Modifier = Modifier,
    active: Boolean = true, animating: Boolean = true,
) {
    var transition by remember { mutableStateOf(AmbientTransition()) }
    var fraction by remember { mutableFloatStateOf(1f) }
    var phase by remember { mutableFloatStateOf(0f) }
    var viewport by remember { mutableStateOf(IntSize.Zero) }
    val painter = remember { AmbientPainter() }
    LaunchedEffect(texture, dark, active) {
        if (!active) {
            transition = AmbientTransition()
            fraction = 1f
            return@LaunchedEffect
        }
        // Capture precisely the visible colour mixture, not the previous song's endpoint.
        val previous = transition.capture(painter, viewport, fraction, phase)
        val opacity = transition.opacity(fraction)
        fraction = 0f
        transition = AmbientTransition(previous, texture, dark, opacity, if (texture == null) 0f else 1f)
        if (!transition.hasContent) { fraction = 1f; return@LaunchedEffect }
        animate(0f, 1f, animationSpec = tween(AMBIENT_TRANSITION_MS, easing = AmbientEasing)) { value, _ -> fraction = value }
        // Release outgoing snapshots only after the last frame; never recycle a displayed bitmap.
        transition = if (texture == null) AmbientTransition() else AmbientTransition(target = texture, dark = dark, startOpacity = 1f, endOpacity = 1f)
        fraction = 1f
    }
    LaunchedEffect(active && animating && transition.hasContent) {
        if (!active || !animating || !transition.hasContent) return@LaunchedEffect
        var previous = 0L
        while (isActive) withFrameNanos { now ->
            if (previous != 0L) phase += ((now - previous) / 1_000_000_000.0).toFloat().coerceAtMost(.05f)
            previous = now
        }
    }
    Canvas(modifier.fillMaxSize().onSizeChanged { viewport = it }.testTag("media-ambient").semantics {
        this[AmbientPhase] = phase
        this[AmbientOpacity] = transition.opacity(fraction)
        this[AmbientFraction] = fraction
    }) {
        if (active && transition.hasContent) drawIntoCanvas {
            painter.drawTransition(it.nativeCanvas, size.width, size.height, transition, fraction, phase)
        }
    }
}

/** Bounded state: at most one outgoing flattened frame and one incoming prepared scene. */
internal class AmbientTransition(
    val previous: Bitmap? = null, val target: AmbientArtwork? = null, val dark: Boolean = false,
    private val startOpacity: Float = 0f, private val endOpacity: Float = 0f,
) {
    val hasContent: Boolean get() = previous != null || target != null
    fun opacity(fraction: Float) = (startOpacity + (endOpacity - startOpacity) * fraction).coerceIn(0f, 1f)
    fun capture(painter: AmbientPainter, viewport: IntSize, fraction: Float, phase: Float): Bitmap? {
        if (!hasContent || opacity(fraction) <= 0f) return null
        val width = max(1, viewport.width); val height = max(1, viewport.height)
        val ratio = 192f / max(width, height)
        val frame = Bitmap.createBitmap(max(1, (width * ratio).roundToInt()), max(1, (height * ratio).roundToInt()), Bitmap.Config.ARGB_8888)
        // Opacity is interpolated separately so disappear→appear never flashes to full strength.
        painter.drawColours(AndroidCanvas(frame), frame.width.toFloat(), frame.height.toFloat(), this, fraction, phase)
        return frame
    }
}

/** API 28 Canvas composition. Per-frame work is four texture draws and small transforms. */
internal class AmbientPainter {
    private val paint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG)
    private val glowPaint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG).apply {
        alpha = 64
        xfermode = PorterDuffXfermode(PorterDuff.Mode.LIGHTEN)
    }
    private val veilPaint = Paint()
    private val bounds = RectF()
    private val cover = RectF()

    fun drawTransition(canvas: AndroidCanvas, width: Float, height: Float, scene: AmbientTransition, fraction: Float, phase: Float) {
        val alpha = (scene.opacity(fraction) * 255).roundToInt()
        if (alpha == 0) return
        val saved = if (alpha < 255) canvas.saveLayerAlpha(0f, 0f, width, height, alpha) else canvas.save()
        canvas.clipRect(0f, 0f, width, height)
        drawColours(canvas, width, height, scene, fraction, phase)
        canvas.restoreToCount(saved)
    }

    fun drawColours(canvas: AndroidCanvas, width: Float, height: Float, scene: AmbientTransition, fraction: Float, phase: Float) {
        bounds.set(0f, 0f, width, height)
        scene.previous?.takeUnless { it.isRecycled }?.let { canvas.drawBitmap(it, null, bounds, paint) }
        scene.target?.let { artwork ->
            // Old stays opaque; new entire scene covers it by p. No theme-coloured dip at 50%.
            val alpha = if (scene.previous == null) 255 else (fraction * 255).roundToInt()
            if (alpha > 0) drawScene(canvas, width, height, artwork, scene.dark, phase, alpha)
        }
    }

    private fun drawScene(canvas: AndroidCanvas, width: Float, height: Float, artwork: AmbientArtwork, dark: Boolean, phase: Float, alpha: Int) {
        if (artwork.base.isRecycled || artwork.glow.isRecycled) return
        // Lighten blends against this scene's base only, never the outgoing scene or controls.
        val saved = canvas.saveLayerAlpha(0f, 0f, width, height, alpha)
        val side = max(width, height)
        cover.set((width - side) / 2, (height - side) / 2, (width + side) / 2, (height + side) / 2)
        canvas.drawBitmap(artwork.base, null, cover, paint)
        for (pose in artwork.poses) {
            val cycle = (phase / pose.periodSeconds) % 2f
            val swing = AmbientEasing.transform(if (cycle <= 1f) cycle else 2f - cycle)
            val transform = canvas.save()
            canvas.rotate(pose.angle - 12f + 24f * swing, width * pose.pivotX, height * pose.pivotY)
            canvas.scale(pose.scale, pose.scale, width / 2, height / 2)
            canvas.drawBitmap(artwork.glow, null, cover, glowPaint)
            canvas.restoreToCount(transform)
        }
        veilPaint.color = if (dark) android.graphics.Color.BLACK else android.graphics.Color.WHITE
        veilPaint.alpha = ((if (dark) artwork.darkVeil else artwork.lightVeil) * 255).roundToInt()
        canvas.drawRect(0f, 0f, width, height, veilPaint)
        canvas.restoreToCount(saved)
    }
}
