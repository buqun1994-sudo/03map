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

/**
 * Requested geometry never withdraws the drawable frame. A prepared scene is committed atomically
 * for its artwork/geometry/session key; until then the canonical compact transition remains the
 * render source. This also covers a draw that precedes the preparation effect's first execution.
 */
internal class AmbientPresentationState {
    var scene by mutableStateOf<AmbientPresentationScene?>(null)
        private set
    private var requestId = 0L
    private var requestedKey by mutableStateOf<AmbientPresentationKey?>(null)
    private var preparedKey by mutableStateOf<AmbientPresentationKey?>(null)
    private var compactTransition by mutableStateOf<AmbientTransition?>(null)
    private var committedProgress = 0f

    fun begin(key: AmbientPresentationKey, compact: AmbientTransition): Long {
        requestId += 1L
        requestedKey = key
        compactTransition = compact
        return requestId
    }

    fun isCurrent(id: Long): Boolean = id == requestId
    fun isPrepared(key: AmbientPresentationKey): Boolean = preparedKey == key && scene != null

    fun install(id: Long, key: AmbientPresentationKey, value: AmbientPresentationScene, progress: Float = 0f) {
        if (id != requestId || requestedKey != key) return
        scene = value
        preparedKey = key
        committedProgress = progress.coerceIn(0f, 1f)
    }

    fun handoffBlend(progress: Float): Float {
        if (scene == null || compactTransition == null) return 1f
        if (committedProgress >= .999f) return 1f
        return ((progress.coerceIn(0f, 1f) - committedProgress) / .04f).coerceIn(0f, 1f)
    }

    fun sceneProgress(progress: Float): Float {
        val current = progress.coerceIn(0f, 1f)
        if (committedProgress >= .999f) return 0f
        return ((current - committedProgress) / (1f - committedProgress)).coerceIn(0f, 1f)
    }

    fun committedScene(key: AmbientPresentationKey): AmbientPresentationScene? =
        scene.takeIf { preparedKey == key }

    fun compactFrame(key: AmbientPresentationKey, live: AmbientTransition): AmbientTransition =
        if (requestedKey == key) compactTransition ?: live else live

    fun clear() {
        requestId += 1L
        scene = null
        compactTransition = null
        requestedKey = null
        preparedKey = null
        committedProgress = 0f
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
        background: Int = if (dark) Color.BLACK else Color.WHITE,
    ): Bitmap? {
        val output = ambientFrameSize(fullSize)
        val frame = Bitmap.createBitmap(output.width, output.height, Bitmap.Config.ARGB_8888)
        try {
            val canvas = AndroidCanvas(frame)
            val theme = background
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
    private val source = Rect()
    private val bounds = RectF()
    private val extensionBounds = RectF()
    private val edgePaint = Paint(Paint.ANTI_ALIAS_FLAG)
    private var edgeSource: Bitmap? = null
    private var secondEdgeSource: Bitmap? = null
    private var cachedEdge = Color.BLACK
    private var secondCachedEdge = Color.BLACK
    private var gradientWidth = -1f
    private var gradientCompactWidth = -1f
    private var gradientColour = 0
    private var gradientBackground = 0

    /** One rendering contract for live, requested and committed presentation frames. */
    fun drawFrame(
        canvas: AndroidCanvas, width: Float, height: Float,
        owner: AmbientPresentationState, key: AmbientPresentationKey,
        live: AmbientTransition, liveFraction: Float, compactPainter: AmbientPainter,
        progress: Float, background: Int,
    ): Int {
        val committed = owner.committedScene(key)
        if (committed != null) {
            val handoff = owner.handoffBlend(progress)
            if (handoff >= 1f) {
                val drawn = draw(canvas, width, height, committed, owner.sceneProgress(progress))
                if (drawn > 0) return drawn
            } else {
                val fallbackDrawn = drawCompactFrame(canvas, width, height, owner, key, live, liveFraction,
                    compactPainter, background)
                val sceneDrawn = if (handoff > 0f) draw(canvas, width, height, committed,
                    owner.sceneProgress(progress), handoff) else 0
                if (fallbackDrawn > 0 || sceneDrawn > 0) return fallbackDrawn + sceneDrawn
            }
        }
        return drawCompactFrame(canvas, width, height, owner, key, live, liveFraction,
            compactPainter, background)
    }

    private fun drawCompactFrame(
        canvas: AndroidCanvas, width: Float, height: Float,
        owner: AmbientPresentationState, key: AmbientPresentationKey,
        live: AmbientTransition, liveFraction: Float, compactPainter: AmbientPainter,
        background: Int,
    ): Int {
        val compact = owner.compactFrame(key, live)
        val fraction = if (compact === live) liveFraction else 1f
        val compactWidth = key.compactSize.width.toFloat().coerceAtLeast(1f)
        val drawn = compactPainter.drawTransition(canvas, compactWidth, height, compact, fraction)
        if (drawn == 0) return 0
        val previous = compact.previous?.takeUnless { it.isRecycled }
        val target = compact.target?.takeUnless { it.isRecycled }
        val colour = when {
            previous != null && target != null -> blend(edgeColour(previous), edgeColour(target), fraction)
            target != null -> edgeColour(target)
            previous != null -> edgeColour(previous)
            else -> background
        }
        val visibleColour = blend(background, colour, compact.opacity(fraction))
        drawExtension(canvas, width, height, compactWidth, visibleColour, background)
        return drawn
    }

    private fun drawExtension(canvas: AndroidCanvas, width: Float, height: Float,
        compactWidth: Float, colour: Int, background: Int) {
        if (width <= compactWidth) return
        if (gradientWidth != width || gradientCompactWidth != compactWidth ||
            gradientColour != colour || gradientBackground != background) {
            edgePaint.shader = LinearGradient(compactWidth, 0f, width, 0f,
                colour, blend(colour, background, .72f), Shader.TileMode.CLAMP)
            gradientWidth = width
            gradientCompactWidth = compactWidth
            gradientColour = colour
            gradientBackground = background
        }
        extensionBounds.set(compactWidth, 0f, width, height)
        canvas.drawRect(extensionBounds, edgePaint)
    }

    fun draw(
        canvas: AndroidCanvas,
        width: Float,
        height: Float,
        scene: AmbientPresentationScene,
        progress: Float,
        sceneAlpha: Float = 1f,
    ): Int {
        val fraction = progress.coerceIn(0f, 1f)
        val previous = scene.bridge?.takeUnless { it.isRecycled }
        val target = scene.wide?.takeUnless { it.isRecycled }
        if (previous != null && target != null) {
            val incoming = fraction
            val outgoing = if (incoming >= 1f) 0f else (1f - fraction) / (1f - incoming).coerceAtLeast(.0001f)
            return drawCanonical(canvas, width, height, scene.fullSize, previous, outgoing * sceneAlpha) +
                drawCanonical(canvas, width, height, scene.fullSize, target, incoming * sceneAlpha)
        }
        return (target ?: previous)?.let { drawCanonical(canvas, width, height, scene.fullSize, it, sceneAlpha) } ?: 0
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
        if (bitmap === edgeSource) return cachedEdge
        if (bitmap === secondEdgeSource) return secondCachedEdge
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
        val colour = Color.argb(
            (alpha / count).toInt().coerceIn(0, 255),
            (red / count).toInt().coerceIn(0, 255),
            (green / count).toInt().coerceIn(0, 255),
            (blue / count).toInt().coerceIn(0, 255),
        )
        secondEdgeSource = edgeSource
        secondCachedEdge = cachedEdge
        edgeSource = bitmap
        cachedEdge = colour
        return colour
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
