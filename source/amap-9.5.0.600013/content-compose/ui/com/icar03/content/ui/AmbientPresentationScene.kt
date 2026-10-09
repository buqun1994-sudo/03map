package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas as AndroidCanvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.RectF
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.unit.IntSize
import kotlin.math.abs
import kotlin.math.min
import kotlin.math.roundToInt

/** Original compact crop and final full-screen crop of the same static artwork field. */
internal class AmbientPresentationScene(
    val compact: Bitmap?,
    val wide: Bitmap?,
    val fullSize: IntSize,
    val compactSize: IntSize,
)

/** A request retains the actual visible frame until its matching endpoint pair is ready. */
internal class AmbientPresentationState {
    var scene by mutableStateOf<AmbientPresentationScene?>(null)
        private set
    private var requestId = 0L
    private var requestedKey by mutableStateOf<AmbientPresentationKey?>(null)
    private var preparedKey by mutableStateOf<AmbientPresentationKey?>(null)
    private var pendingTransition by mutableStateOf<AmbientTransition?>(null)
    private var pendingSize = IntSize.Zero
    private var lastProgress = 0f
    private var handoffDistance = 0f

    fun begin(key: AmbientPresentationKey, visible: AmbientTransition, size: IntSize = key.compactSize): Long {
        requestId += 1L
        requestedKey = key
        pendingTransition = visible
        pendingSize = size
        return requestId
    }

    fun isCurrent(id: Long): Boolean = id == requestId
    fun isPrepared(key: AmbientPresentationKey): Boolean = preparedKey == key && scene != null

    /**
     * A gesture session changes its generation token, but the artwork/geometry
     * endpoint pair remains the same truth. Adopt that already prepared pair
     * synchronously so the first drag frame never waits for a new wide bake.
     */
    fun reusePrepared(key: AmbientPresentationKey, progress: Float): Boolean {
        val prepared = preparedKey ?: return false
        if (scene == null || prepared.texture !== key.texture || prepared.dark != key.dark ||
            prepared.fullSize != key.fullSize || prepared.compactSize != key.compactSize) return false
        preparedKey = key
        requestedKey = key
        pendingTransition = null
        pendingSize = IntSize.Zero
        lastProgress = progress.coerceIn(0f, 1f)
        handoffDistance = .04f
        return true
    }

    fun install(id: Long, key: AmbientPresentationKey, value: AmbientPresentationScene, progress: Float = 0f) {
        if (id != requestId || requestedKey != key) return
        scene = value
        preparedKey = key
        lastProgress = progress.coerceIn(0f, 1f)
        handoffDistance = 0f
    }

    // A late worker hands off over actual travel in either direction. The background's own
    // compact/wide blend still uses the absolute map progress, never a restarted progress.
    fun handoffBlend(progress: Float): Float {
        if (scene == null || pendingTransition == null) return 1f
        val current = progress.coerceIn(0f, 1f)
        handoffDistance += abs(current - lastProgress)
        lastProgress = current
        if (current <= .001f || current >= .999f) handoffDistance = .04f
        return (handoffDistance / .04f).coerceIn(0f, 1f)
    }

    fun committedScene(key: AmbientPresentationKey): AmbientPresentationScene? =
        scene.takeIf { preparedKey == key }

    fun retainedScene(key: AmbientPresentationKey): AmbientPresentationScene? = scene.takeIf {
        requestedKey != key && preparedKey?.let {
            it.texture === key.texture && it.dark == key.dark && it.sessionGeneration == key.sessionGeneration
        } == true
    }

    fun pendingFrame(key: AmbientPresentationKey, live: AmbientTransition): AmbientTransition =
        if (requestedKey == key) pendingTransition ?: live else live

    fun frameSize(key: AmbientPresentationKey, liveSize: IntSize): IntSize =
        if (requestedKey == key) pendingSize else liveSize

    fun clear() {
        requestId += 1L
        scene = null
        pendingTransition = null
        requestedKey = null
        preparedKey = null
        pendingSize = IntSize.Zero
        lastProgress = 0f
        handoffDistance = 0f
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

/** Canonical endpoint crops only: no edge sampling, gradient extension or bridge bitmap. */
internal class AmbientPresentationPainter {
    private val paint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG)
    private val backgroundPaint = Paint()
    private val bounds = RectF()
    private var paintedScene: AmbientPresentationScene? = null
    private var paintedPending: AmbientTransition? = null
    private var paintedPendingFraction = 1f
    private var paintedPendingSize = IntSize.Zero
    private var paintedPendingOnTop = false
    private var paintedSize = IntSize.Zero
    private var paintedBlend = 0f
    private var paintedAlpha = 1f
    private var paintedBackground = Color.BLACK

    fun clear() {
        paintedScene = null
        paintedPending = null
        paintedPendingOnTop = false
        paintedSize = IntSize.Zero
    }

    /** Capture the actual presentation recipe, including a late scene's partial handoff. */
    fun captureCurrent(painter: AmbientPainter): Pair<Bitmap, IntSize>? {
        if (paintedSize.width <= 0 || paintedSize.height <= 0) return null
        val output = ambientFrameSize(paintedSize)
        val image = Bitmap.createBitmap(output.width, output.height, Bitmap.Config.ARGB_8888)
        val canvas = AndroidCanvas(image)
        canvas.scale(output.width.toFloat() / paintedSize.width, output.height.toFloat() / paintedSize.height)
        canvas.drawColor(paintedBackground)
        if (paintedPendingOnTop) {
            paintedScene?.let { drawScene(canvas, paintedSize.width.toFloat(), paintedSize.height.toFloat(),
                it, paintedBlend, paintedAlpha, paintedBackground) }
            paintedPending?.let { drawPending(canvas, paintedSize.width.toFloat(), paintedSize.height.toFloat(),
                it, paintedPendingFraction, paintedPendingSize, painter) }
        } else {
            paintedPending?.let { drawPending(canvas, paintedSize.width.toFloat(), paintedSize.height.toFloat(),
                it, paintedPendingFraction, paintedPendingSize, painter) }
            paintedScene?.let { drawScene(canvas, paintedSize.width.toFloat(), paintedSize.height.toFloat(),
                it, paintedBlend, paintedAlpha, paintedBackground) }
        }
        return image to paintedSize
    }

    fun drawFrame(
        canvas: AndroidCanvas, width: Float, height: Float,
        owner: AmbientPresentationState, key: AmbientPresentationKey,
        live: AmbientTransition, liveFraction: Float, compactPainter: AmbientPainter,
        progress: Float, background: Int, liveSize: IntSize = key.compactSize,
    ): Int {
        paintedSize = IntSize(width.roundToInt(), height.roundToInt())
        paintedBackground = background
        paintedScene = owner.committedScene(key) ?: owner.retainedScene(key)
        paintedBlend = presentationAmbientBlend(progress)
        paintedAlpha = 1f
        paintedPending = null
        paintedPendingOnTop = false
        val committed = paintedScene
        if (committed != null) {
            val handoff = owner.handoffBlend(progress)
            if (handoff >= 1f) return drawScene(canvas, width, height, committed, paintedBlend, 1f, background)
            val pending = owner.pendingFrame(key, live)
            if (pending.previous == null && pending.target === committed.compact &&
                owner.frameSize(key, liveSize) == committed.compactSize) {
                paintedPending = pending
                paintedPendingFraction = if (pending === live) liveFraction else 1f
                paintedPendingSize = owner.frameSize(key, liveSize)
                paintedPendingOnTop = true
                paintedAlpha = handoff
                canvas.drawColor(background)
                val sceneDrawn = drawScene(canvas, width, height, committed, paintedBlend, handoff, background)
                val pendingDrawn = drawPending(canvas, width, height, pending,
                    paintedPendingFraction, paintedPendingSize, compactPainter)
                return sceneDrawn + pendingDrawn
            }
            paintedAlpha = handoff
        }
        val pending = owner.pendingFrame(key, live)
        paintedPending = pending
        paintedPendingFraction = if (pending === live) liveFraction else 1f
        paintedPendingSize = owner.frameSize(key, liveSize)
        canvas.drawColor(background)
        val captured = drawPending(canvas, width, height, pending,
            paintedPendingFraction, paintedPendingSize, compactPainter)
        return captured + (committed?.let {
            drawScene(canvas, width, height, it, paintedBlend, paintedAlpha, background)
        } ?: 0)
    }

    private fun drawPending(
        canvas: AndroidCanvas, width: Float, height: Float,
        pending: AmbientTransition, fraction: Float, canonicalSize: IntSize, painter: AmbientPainter,
    ): Int {
        val saved = canvas.save()
        canvas.clipRect(0f, 0f, width, height)
        // Preserve the captured viewport's coordinates when the map clips its right edge.
        val drawn = painter.drawTransition(canvas, canonicalSize.width.toFloat().coerceAtLeast(1f),
            height, pending, fraction)
        canvas.restoreToCount(saved)
        return drawn
    }

    fun draw(
        canvas: AndroidCanvas, width: Float, height: Float,
        scene: AmbientPresentationScene, progress: Float,
        background: Int = Color.BLACK, sceneAlpha: Float = 1f,
    ): Int = drawScene(canvas, width, height, scene,
        presentationAmbientBlend(progress), sceneAlpha, background)

    private fun drawScene(
        canvas: AndroidCanvas, width: Float, height: Float,
        scene: AmbientPresentationScene, blend: Float, sceneAlpha: Float, background: Int,
    ): Int {
        val alpha = sceneAlpha.coerceIn(0f, 1f)
        val compactAlpha = alpha * (1f - blend.coerceIn(0f, 1f))
        val compactWidth = min(width, scene.compactSize.width.toFloat().coerceAtLeast(1f))
        var drawn = 0
        // The wide crop is the opaque presentation base from the first transition
        // frame. The compact crop is painted over its original viewport and fades
        // away during the first 45%; this keeps newly exposed pixels out of the
        // theme-black fallback while preserving the compact composition.
        val wide = scene.wide?.takeUnless { it.isRecycled }
        if (wide != null) drawn += drawCanonical(canvas, width, height, scene.fullSize, wide, alpha)
        else drawBackground(canvas, 0f, width, height, background, alpha)

        if (compactAlpha > 0f) {
            val compact = scene.compact?.takeUnless { it.isRecycled }
            if (compact != null) drawn += drawCanonical(canvas, compactWidth, height,
                scene.compactSize, compact, compactAlpha)
            else drawBackground(canvas, 0f, compactWidth, height, background, compactAlpha)
        }
        return drawn
    }

    private fun drawBackground(canvas: AndroidCanvas, left: Float, right: Float,
        height: Float, background: Int, alpha: Float) {
        backgroundPaint.color = background
        backgroundPaint.alpha = (alpha.coerceIn(0f, 1f) * 255).roundToInt()
        if (backgroundPaint.alpha > 0) canvas.drawRect(left, 0f, right, height, backgroundPaint)
    }

    private fun drawCanonical(
        canvas: AndroidCanvas, width: Float, height: Float,
        fullSize: IntSize, bitmap: Bitmap, alpha: Float,
    ): Int {
        paint.alpha = (alpha.coerceIn(0f, 1f) * 255).roundToInt()
        if (paint.alpha == 0) return 0
        bounds.set(0f, 0f, fullSize.width.toFloat().coerceAtLeast(1f), fullSize.height.toFloat().coerceAtLeast(1f))
        val saved = canvas.save()
        canvas.clipRect(0f, 0f, width, height)
        canvas.drawBitmap(bitmap, null, bounds, paint)
        canvas.restoreToCount(saved)
        return 1
    }
}
