package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas as NativeCanvas
import android.graphics.Paint
import android.graphics.RectF
import android.os.Build
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.composed
import androidx.compose.ui.draw.blur
import androidx.compose.ui.draw.drawWithContent
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Canvas as ComposeCanvas
import androidx.compose.ui.graphics.drawscope.DrawContext
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.Dp
import kotlin.math.ceil
import kotlin.math.roundToInt

/** Only Compose content is captured; the map's SurfaceView is outside this drawing subtree. */
internal fun Modifier.controlBackdropBlur(enabled: Boolean, radius: Dp): Modifier = composed {
    val active = enabled && radius.value.isFinite() && radius.value > 0f
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
        if (active) blur(radius) else this
    } else {
        val capture = remember { LegacyBackdropBlurCapture() }
        val radiusPx = with(LocalDensity.current) { radius.toPx() }
        DisposableEffect(capture) { onDispose { capture.release() } }
        if (!active) {
            SideEffect { capture.release() }
            this
        } else {
            drawWithContent {
                capture.draw(drawContext, size, radiusPx) { drawContent() }
            }
        }
    }
}

/** One capture per modal opening and geometry. Failed captures fall back until that key changes. */
private class LegacyBackdropBlurCapture {
    private var bitmap: Bitmap? = null
    private var contentWidth = 0
    private var contentHeight = 0
    private var contentRadius = 0
    private val destination = RectF()
    private val paint = Paint(Paint.FILTER_BITMAP_FLAG)

    fun draw(context: DrawContext, size: Size, radiusPx: Float, drawContent: () -> Unit) {
        if (!size.width.isFinite() || !size.height.isFinite() || size.width < 1f || size.height < 1f) {
            drawContent()
            return
        }
        val width = size.width.roundToInt()
        val height = size.height.roundToInt()
        val radius = (radiusPx * CAPTURE_SCALE).roundToInt().coerceAtLeast(1)
        try {
            if (contentWidth != width || contentHeight != height || contentRadius != radius) {
                // Mark the attempted key first, so a failed software draw is never retried per frame.
                bitmap = null
                contentWidth = width
                contentHeight = height
                contentRadius = radius
                bitmap = captureAndBlur(context, width, height, radius, drawContent)
            }
            val cached = bitmap
            if (cached == null) {
                drawContent()
            } else {
                destination.set(0f, 0f, size.width, size.height)
                context.canvas.nativeCanvas.drawBitmap(cached, null, destination, paint)
            }
        } catch (_: RuntimeException) {
            bitmap = null
            drawContent()
        }
    }

    private fun captureAndBlur(
        context: DrawContext,
        width: Int,
        height: Int,
        radius: Int,
        drawContent: () -> Unit,
    ): Bitmap {
        val lowWidth = ceil(width * CAPTURE_SCALE).toInt().coerceAtLeast(1)
        val lowHeight = ceil(height * CAPTURE_SCALE).toInt().coerceAtLeast(1)
        val captured = Bitmap.createBitmap(lowWidth, lowHeight, Bitmap.Config.ARGB_8888)
        val canvas = NativeCanvas(captured)
        val previousCanvas = context.canvas
        try {
            val saveCount = canvas.save()
            try {
                canvas.scale(CAPTURE_SCALE, CAPTURE_SCALE)
                context.canvas = ComposeCanvas(canvas)
                drawContent()
            } finally {
                context.canvas = previousCanvas
                canvas.restoreToCount(saveCount)
            }
            cpuBoxBlur(captured, radius)
            return captured
        } catch (failure: RuntimeException) {
            // This unpublished image has never been referenced by the screen's display list.
            captured.recycle()
            throw failure
        }
    }

    fun release() {
        // Published bitmaps can still be retained by a display list; release our reference safely.
        bitmap = null
        contentWidth = 0
        contentHeight = 0
        contentRadius = 0
    }

    private companion object {
        const val CAPTURE_SCALE = .25f
    }
}

/** Three separable box passes, with premultiplied channels to preserve transparent text edges. */
private fun cpuBoxBlur(bitmap: Bitmap, radius: Int) {
    val width = bitmap.width
    val height = bitmap.height
    var source = IntArray(width * height)
    bitmap.getPixels(source, 0, width, 0, 0, width, height)
    for (index in source.indices) {
        val pixel = source[index]
        val alpha = pixel ushr 24
        source[index] = (alpha shl 24) or
            ((((pixel ushr 16 and 0xff) * alpha / 255)) shl 16) or
            ((((pixel ushr 8 and 0xff) * alpha / 255)) shl 8) or
            ((pixel and 0xff) * alpha / 255)
    }
    var destination = IntArray(source.size)
    val horizontal = IntArray(source.size)
    repeat(3) {
        boxBlurPass(source, horizontal, width, height, radius, horizontal = true)
        boxBlurPass(horizontal, destination, width, height, radius, horizontal = false)
        val swap = source
        source = destination
        destination = swap
    }
    for (index in source.indices) {
        val pixel = source[index]
        val alpha = pixel ushr 24
        source[index] = if (alpha == 0) 0 else (alpha shl 24) or
            (((((pixel ushr 16 and 0xff) * 255 + alpha / 2) / alpha).coerceAtMost(255)) shl 16) or
            (((((pixel ushr 8 and 0xff) * 255 + alpha / 2) / alpha).coerceAtMost(255)) shl 8) or
            (((pixel and 0xff) * 255 + alpha / 2) / alpha).coerceAtMost(255)
    }
    bitmap.setPixels(source, 0, width, 0, 0, width, height)
}

private fun boxBlurPass(
    source: IntArray,
    destination: IntArray,
    width: Int,
    height: Int,
    radius: Int,
    horizontal: Boolean,
) {
    val lineLength = if (horizontal) width else height
    val lineCount = if (horizontal) height else width
    val step = if (horizontal) 1 else width
    val diameter = radius * 2 + 1
    for (line in 0 until lineCount) {
        val start = if (horizontal) line * width else line
        var alpha = 0
        var red = 0
        var green = 0
        var blue = 0
        for (offset in -radius..radius) {
            val pixel = source[start + offset.coerceIn(0, lineLength - 1) * step]
            alpha += pixel ushr 24
            red += pixel ushr 16 and 0xff
            green += pixel ushr 8 and 0xff
            blue += pixel and 0xff
        }
        for (position in 0 until lineLength) {
            destination[start + position * step] = ((alpha / diameter) shl 24) or
                ((red / diameter) shl 16) or ((green / diameter) shl 8) or (blue / diameter)
            val remove = source[start + (position - radius).coerceIn(0, lineLength - 1) * step]
            val add = source[start + (position + radius + 1).coerceIn(0, lineLength - 1) * step]
            alpha += (add ushr 24) - (remove ushr 24)
            red += (add ushr 16 and 0xff) - (remove ushr 16 and 0xff)
            green += (add ushr 8 and 0xff) - (remove ushr 8 and 0xff)
            blue += (add and 0xff) - (remove and 0xff)
        }
    }
}
