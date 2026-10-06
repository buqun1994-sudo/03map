package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas as AndroidCanvas
import android.graphics.Color
import android.graphics.LinearGradient
import android.graphics.Paint
import android.graphics.Rect
import android.graphics.RectF
import android.graphics.Shader
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.unit.IntSize
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt

/**
 * The short-lived scene used while the map is being moved out of the way.
 *
 * [bridge] contains the actual compact scene at its left edge and a low-cost
 * colour extension to the right. [wide] is baked at the same phase for the
 * final immersive viewport. Neither bitmap is used by the normal compact
 * renderer, so the compact scene keeps its original aspect and crop until the
 * transition actually begins.
 */
internal class AmbientPresentationScene(
    val bridge: Bitmap?,
    val wide: Bitmap?,
    val fullSize: IntSize,
    val compactSize: IntSize,
    val phase: Float,
)

/** A small mutable owner for one map-presentation request. */
internal class AmbientPresentationState {
    var scene by mutableStateOf<AmbientPresentationScene?>(null)
        private set
    var fallbackCompact by mutableStateOf<Bitmap?>(null)
        private set
    private var requestId = 0L
    private var preparedKey: AmbientPresentationKey? = null

    fun begin(key: AmbientPresentationKey, fallback: Bitmap?): Long {
        requestId += 1L
        preparedKey = null
        scene = null
        fallbackCompact = fallback
        return requestId
    }

    fun isCurrent(id: Long): Boolean = id == requestId

    fun isPrepared(key: AmbientPresentationKey): Boolean = preparedKey == key && scene != null

    fun install(id: Long, key: AmbientPresentationKey, value: AmbientPresentationScene) {
        if (id != requestId) return
        scene = value
        preparedKey = key
        fallbackCompact = null
    }

    fun clear() {
        requestId += 1L
        scene = null
        fallbackCompact = null
        preparedKey = null
    }
}

internal data class AmbientPresentationKey(
    val texture: AmbientArtwork?,
    val dark: Boolean,
    val fullSize: IntSize,
    val compactSize: IntSize,
    val sessionGeneration: Long = 0L,
) {
    override fun equals(other: Any?): Boolean = other is AmbientPresentationKey &&
        texture === other.texture && dark == other.dark &&
        fullSize == other.fullSize && compactSize == other.compactSize &&
        sessionGeneration == other.sessionGeneration

    override fun hashCode(): Int {
        var result = System.identityHashCode(texture)
        result = 31 * result + dark.hashCode()
        result = 31 * result + fullSize.hashCode()
        result = 31 * result + compactSize.hashCode()
        return 31 * result + sessionGeneration.hashCode()
    }
}

/**
 * Builds the bridge at the same bounded resolution as the scene baker. The
 * compact pixels occupy their real left-hand destination; the rest is a
 * gradient sampled from the compact edge, so the fallback never stretches a
 * narrow scene across the new width or exposes the theme underneath.
 */
internal class AmbientBridgeBaker {
    private val paint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG)
    private val edgePaint = Paint(Paint.ANTI_ALIAS_FLAG)
    private val source = Rect()
    private val compactBounds = RectF()
    private val extensionBounds = RectF()

    fun prepare(
        compact: Bitmap?,
        dark: Boolean,
        fullSize: IntSize,
        compactSize: IntSize,
    ): Bitmap? {
        val output = ambientFrameSize(fullSize)
        val frame = Bitmap.createBitmap(output.width, output.height, Bitmap.Config.ARGB_8888)
        try {
            val canvas = AndroidCanvas(frame)
            val theme = if (dark) Color.BLACK else Color.WHITE
            if (compact == null || compact.isRecycled) {
                canvas.drawColor(theme)
                return frame
            }
            val compactWidth = compactDestinationWidth(output, fullSize, compactSize)
            val edge = edgeColour(compact)
            if (compactWidth > 0) {
                source.set(0, 0, compact.width, compact.height)
                compactBounds.set(0f, 0f, compactWidth.toFloat(), output.height.toFloat())
                canvas.drawBitmap(compact, source, compactBounds, paint)
            }
            if (compactWidth < output.width) {
                extensionBounds.set(compactWidth.toFloat(), 0f, output.width.toFloat(), output.height.toFloat())
                val end = blend(edge, theme, .72f)
                edgePaint.shader = LinearGradient(
                    compactWidth.toFloat(), 0f, output.width.toFloat(), 0f,
                    edge, end, Shader.TileMode.CLAMP,
                )
                canvas.drawRect(extensionBounds, edgePaint)
                edgePaint.shader = null
            }
            return frame
        } catch (_: RuntimeException) {
            frame.recycle()
            return null
        }
    }

    private fun compactDestinationWidth(fullFrame: IntSize, fullSize: IntSize, compactSize: IntSize): Int {
        if (fullSize.width <= 0 || compactSize.width <= 0) return 0
        return (fullFrame.width.toFloat() * compactSize.width / fullSize.width)
            .roundToInt().coerceIn(1, fullFrame.width)
    }

    private fun edgeColour(bitmap: Bitmap): Int {
        if (bitmap.width <= 0 || bitmap.height <= 0) return Color.BLACK
        var red = 0L
        var green = 0L
        var blue = 0L
        var alpha = 0L
        val x = bitmap.width - 1
        val step = max(1, bitmap.height / 24)
        var count = 0
        var y = 0
        while (y < bitmap.height) {
            val pixel = bitmap.getPixel(x, y)
            red += Color.red(pixel)
            green += Color.green(pixel)
            blue += Color.blue(pixel)
            alpha += Color.alpha(pixel)
            count++
            y += step
        }
        return Color.argb(
            (alpha / count).toInt().coerceIn(0, 255),
            (red / count).toInt().coerceIn(0, 255),
            (green / count).toInt().coerceIn(0, 255),
            (blue / count).toInt().coerceIn(0, 255),
        )
    }

    private fun blend(from: Int, to: Int, amount: Float): Int {
        val t = amount.coerceIn(0f, 1f)
        return Color.argb(
            lerp(Color.alpha(from), Color.alpha(to), t),
            lerp(Color.red(from), Color.red(to), t),
            lerp(Color.green(from), Color.green(to), t),
            lerp(Color.blue(from), Color.blue(to), t),
        )
    }

    private fun lerp(from: Int, to: Int, amount: Float): Int =
        (from + (to - from) * amount).roundToInt()
}

/**
 * Painter for the presentation scene. It crops the canonical full scene to
 * the currently visible virtual width instead of scaling a compact bitmap to
 * the new width. Source-over coefficients keep the midpoint opaque without a
 * full-screen offscreen layer.
 */
internal class AmbientPresentationPainter {
    private val paint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG)
    private val compactPaint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG)
    private val source = Rect()
    private val bounds = RectF()
    private val compactBounds = RectF()
    private val extensionBounds = RectF()
    private val edgePaint = Paint(Paint.ANTI_ALIAS_FLAG)

    fun draw(
        canvas: AndroidCanvas,
        width: Float,
        height: Float,
        scene: AmbientPresentationScene,
        progress: Float,
    ): Int {
        val fraction = progress.coerceIn(0f, 1f)
        val previous = scene.bridge?.takeUnless { it.isRecycled }
        val target = scene.wide?.takeUnless { it.isRecycled }
        if (previous != null && target != null) {
            val incoming = fraction
            val outgoing = if (incoming >= 1f) 0f else (1f - fraction) / (1f - incoming).coerceAtLeast(.0001f)
            return drawCanonical(canvas, width, height, scene.fullSize, previous, outgoing) +
                drawCanonical(canvas, width, height, scene.fullSize, target, incoming)
        }
        return (target ?: previous)?.let { drawCanonical(canvas, width, height, scene.fullSize, it, 1f) } ?: 0
    }

    /** Fallback while the bridge worker is running: compact pixels stay compact. */
    fun drawCompactFallback(
        canvas: AndroidCanvas,
        width: Float,
        height: Float,
        compact: Bitmap?,
        fullSize: IntSize,
        compactSize: IntSize,
        dark: Boolean,
    ): Int {
        val bitmap = compact?.takeUnless { it.isRecycled }
        val compactWidth = compactSize.width.toFloat().coerceAtLeast(1f)
        val visibleCompactWidth = min(width, compactWidth)
        if (bitmap != null) {
            val sourceRight = (bitmap.width * (visibleCompactWidth / compactWidth)).roundToInt().coerceIn(1, bitmap.width)
            source.set(0, 0, sourceRight, bitmap.height)
            compactBounds.set(0f, 0f, visibleCompactWidth, height)
            canvas.drawBitmap(bitmap, source, compactBounds, compactPaint)
        }
        if (bitmap == null) {
            canvas.drawColor(if (dark) Color.BLACK else Color.WHITE)
            return 0
        }
        val colour = edgeColour(bitmap)
        val theme = if (dark) Color.BLACK else Color.WHITE
        val end = blend(colour, theme, .72f)
        if (width > visibleCompactWidth) {
            extensionBounds.set(visibleCompactWidth, 0f, width, height)
            edgePaint.shader = LinearGradient(
                visibleCompactWidth, 0f, width, 0f, colour, end, Shader.TileMode.CLAMP,
            )
            canvas.drawRect(extensionBounds, edgePaint)
            edgePaint.shader = null
        }
        return 1
    }

    private fun drawCanonical(
        canvas: AndroidCanvas,
        width: Float,
        height: Float,
        fullSize: IntSize,
        bitmap: Bitmap,
        alpha: Float,
    ): Int {
        val visibleVirtualWidth = min(width, fullSize.width.toFloat().coerceAtLeast(1f))
        val visibleVirtualHeight = min(height, fullSize.height.toFloat().coerceAtLeast(1f))
        val sourceRight = (bitmap.width * visibleVirtualWidth / fullSize.width.coerceAtLeast(1)).roundToInt()
            .coerceIn(1, bitmap.width)
        val sourceBottom = (bitmap.height * visibleVirtualHeight / fullSize.height.coerceAtLeast(1)).roundToInt()
            .coerceIn(1, bitmap.height)
        source.set(0, 0, sourceRight, sourceBottom)
        bounds.set(0f, 0f, width, height)
        paint.alpha = (alpha.coerceIn(0f, 1f) * 255).roundToInt()
        if (paint.alpha == 0) return 0
        canvas.drawBitmap(bitmap, source, bounds, paint)
        return 1
    }

    private fun edgeColour(bitmap: Bitmap): Int {
        if (bitmap.width <= 0 || bitmap.height <= 0) return Color.BLACK
        val x = bitmap.width - 1
        var red = 0L
        var green = 0L
        var blue = 0L
        var alpha = 0L
        var count = 0
        val step = max(1, bitmap.height / 24)
        var y = 0
        while (y < bitmap.height) {
            val pixel = bitmap.getPixel(x, y)
            red += Color.red(pixel)
            green += Color.green(pixel)
            blue += Color.blue(pixel)
            alpha += Color.alpha(pixel)
            count++
            y += step
        }
        return Color.argb(
            (alpha / count).toInt().coerceIn(0, 255),
            (red / count).toInt().coerceIn(0, 255),
            (green / count).toInt().coerceIn(0, 255),
            (blue / count).toInt().coerceIn(0, 255),
        )
    }

    private fun blend(from: Int, to: Int, amount: Float): Int {
        val t = amount.coerceIn(0f, 1f)
        return Color.argb(
            lerp(Color.alpha(from), Color.alpha(to), t),
            lerp(Color.red(from), Color.red(to), t),
            lerp(Color.green(from), Color.green(to), t),
            lerp(Color.blue(from), Color.blue(to), t),
        )
    }

    private fun lerp(from: Int, to: Int, amount: Float): Int =
        (from + (to - from) * amount).roundToInt()
}
