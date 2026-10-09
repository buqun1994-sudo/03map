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
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.drawscope.drawIntoCanvas
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.IntSize
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.withContext
import kotlin.math.max
import kotlin.math.sin
import kotlin.math.roundToInt

/** Immutable published textures. Android/GC owns their lifetime while frames reference them. */
class AmbientArtwork(
    val base: Bitmap, val glow: Bitmap, val poses: List<AmbientGlowPose>,
    val darkVeil: Float = .15f, val lightVeil: Float = .60f,
)
data class AmbientGlowPose(
    val angle: Float, val pivotX: Float, val pivotY: Float, val scale: Float,
)
internal val AmbientOpacity = SemanticsPropertyKey<Float>("AmbientOpacity")
internal val AmbientFraction = SemanticsPropertyKey<Float>("AmbientFraction")
internal val AmbientHasContent = SemanticsPropertyKey<Boolean>("AmbientHasContent")
internal val AmbientPreparedSize = SemanticsPropertyKey<IntSize>("AmbientPreparedSize")
internal val AmbientPreparedGeneration = SemanticsPropertyKey<Int>("AmbientPreparedGeneration")
internal val AmbientPresentationPrepared = SemanticsPropertyKey<Boolean>("AmbientPresentationPrepared")
internal const val AMBIENT_TRANSITION_MS = 500
internal const val AMBIENT_MAX_FRAME_EDGE = 192
private val AmbientEasing = CubicBezierEasing(.42f, 0f, .58f, 1f)
// Host tests can prepare synchronously while keeping the production worker boundary explicit.
internal val LocalAmbientPreparationDispatcher = staticCompositionLocalOf<CoroutineDispatcher> { Dispatchers.Default }

/**
 * One persistent renderer. A static field is prepared on a worker when its inputs change;
 * the screen draws one texture in steady state, or two during the 500ms transition.
 * Frame progress is read only by draw/semantics, never by composition or layout.
 */
@Composable
fun MediaAmbientBackground(
    texture: AmbientArtwork?, dark: Boolean, modifier: Modifier = Modifier,
    active: Boolean = true,
    presentation: ContentPresentation? = null,
) {
    val renderer = remember { AmbientRenderState() }
    // Readiness changes only when an artwork target is prepared or withdrawn.
    val preparedTarget by remember(renderer) { derivedStateOf(structuralEqualityPolicy()) { renderer.hasPreparedTarget } }
    val painter = remember { AmbientPainter() }
    val presentationState = remember { AmbientPresentationState() }
    val presentationPainter = remember { AmbientPresentationPainter() }
    val preparationDispatcher = LocalAmbientPreparationDispatcher.current
    val background = MaterialTheme.colorScheme.background.toArgb()
    var viewport by remember { mutableStateOf(IntSize.Zero) }
    val latestViewport = rememberUpdatedState(viewport)
    val viewportReady = viewport.width > 0 && viewport.height > 0
    val preparedGeometry = if (viewportReady) ambientFrameSize(viewport) else IntSize.Zero
    LaunchedEffect(texture, dark, active, viewportReady, preparationDispatcher) {
        if (!active) {
            renderer.clear()
            return@LaunchedEffect
        }
        if (!viewportReady) return@LaunchedEffect
        // Pixel-size changes belong to geometry, never another colour/opacity transition.
        val requestViewport = latestViewport.value
        // Cancelled arrivals retain precisely the currently visible mixture while baking.
        val request = renderer.beginRequest(painter, requestViewport)
        var prepared: Bitmap? = null
        var published = false
        try {
            if (texture != null) {
                withContext(preparationDispatcher) {
                    ensureActive()
                    prepared = AmbientSceneBaker().prepare(texture, dark, requestViewport)
                }
                // A failed replacement never withdraws the last valid background.
                if (prepared == null) return@LaunchedEffect
            }
            ensureActive()
            if (!renderer.retarget(request, prepared, painter, latestViewport.value)) return@LaunchedEffect
            published = prepared != null
            if (!renderer.transition.hasContent) { renderer.finish(request); return@LaunchedEffect }
            animate(0f, 1f, animationSpec = tween(AMBIENT_TRANSITION_MS, easing = AmbientEasing)) { value, _ ->
                renderer.fraction = value
            }
            renderer.finish(request)
        } finally {
            // Only a never-published result may be explicitly recycled.
            if (!published) prepared?.takeUnless { it.isRecycled }?.recycle()
        }
    }
    LaunchedEffect(texture, dark, active, preparedGeometry, preparedTarget, preparationDispatcher) {
        if (!active || !preparedTarget || !renderer.hasPreparedTarget || texture == null || preparedGeometry == IntSize.Zero) return@LaunchedEffect
        if (renderer.transition.target?.let { IntSize(it.width, it.height) } == preparedGeometry) return@LaunchedEffect
        val request = renderer.request
        // Geometry changes prepare one static endpoint without restarting the artwork fade.
        val resizeViewport = latestViewport.value
        if (ambientFrameSize(resizeViewport) != preparedGeometry) return@LaunchedEffect
        var prepared: Bitmap? = null
        var published = false
        try {
            withContext(preparationDispatcher) {
                ensureActive()
                prepared = AmbientSceneBaker().prepare(texture, dark, resizeViewport)
            }
            ensureActive()
            prepared?.let {
                published = renderer.updateTarget(request, it, ambientFrameSize(latestViewport.value))
            }
        } finally {
            if (!published) prepared?.takeUnless { it.isRecycled }?.recycle()
        }
    }
    LaunchedEffect(texture, dark, active, presentation?.fullSize, presentation?.splitWidthPx,
        presentation?.phase, presentation?.pendingEnter, presentation?.sessionGeneration,
        presentation?.buttonTransitionActive, preparationDispatcher, background) {
        val targetPresentation = presentation
        if (!active || targetPresentation == null || !targetPresentation.geometryReady) {
            if (!active) {
                presentationState.clear()
                presentationPainter.clear()
            }
            return@LaunchedEffect
        }
        val fullSize = targetPresentation.fullSize
        val compactSize = IntSize(targetPresentation.splitWidthPx, fullSize.height)
        if (compactSize.width <= 0 || compactSize.height <= 0) return@LaunchedEffect
        val key = AmbientPresentationKey(texture, dark, fullSize, compactSize, targetPresentation.sessionGeneration)
        val entryToken = targetPresentation.pendingEnter
        if (presentationState.isPrepared(key) ||
            presentationState.reusePrepared(key, targetPresentation.progress)) {
            targetPresentation.entryPrepared(entryToken)
            return@LaunchedEffect
        }
        val captured = if (presentationState.canCaptureFor(texture, dark))
            presentationPainter.captureCurrent(painter) else null
        val visibleSize = captured?.second ?: latestViewport.value.takeIf {
            it.width > 0 && it.height > 0
        } ?: compactSize
        val visible = captured?.first ?: renderer.captureCurrent(painter, visibleSize, background)!!
        val capturedSize = captured?.second
        val capturedTransition = AmbientTransition(target = visible, startOpacity = 1f, endOpacity = 1f)
        val request = presentationState.begin(key, capturedTransition, visibleSize,
            preserveVisible = captured != null)
        var compact: Bitmap? = null
        var wide: Bitmap? = null
        var installed = false
        fun themeFrame(size: IntSize): Bitmap {
            val output = ambientFrameSize(size)
            return Bitmap.createBitmap(output.width, output.height, Bitmap.Config.ARGB_8888).also {
                it.eraseColor(background)
            }
        }
        try {
            withContext(preparationDispatcher) {
                ensureActive()
                val baker = AmbientSceneBaker()
                compact = if (capturedSize == compactSize) captured!!.first else
                    texture?.let { baker.prepare(it, dark, compactSize) } ?: themeFrame(compactSize)
                ensureActive()
                wide = if (capturedSize == fullSize && targetPresentation.progress >= PRESENTATION_COMPACT_FADE_END)
                    captured!!.first else texture?.let { baker.prepare(it, dark, fullSize) } ?: themeFrame(fullSize)
            }
            ensureActive()
            if (!presentationState.isCurrent(request)) return@LaunchedEffect
            presentationState.install(request, key,
                AmbientPresentationScene(compact, wide, fullSize, compactSize), targetPresentation.progress)
            installed = true
            targetPresentation.entryPrepared(entryToken)
        } finally {
            if (!installed) {
                compact?.takeUnless { it === visible || it.isRecycled }?.recycle()
                wide?.takeUnless { it === visible || it.isRecycled }?.recycle()
            }
        }
    }

    DisposableEffect(presentation) {
        onDispose { presentationState.clear(); presentationPainter.clear() }
    }

    val presentationKey = presentation?.takeIf { it.geometryReady }?.let { target ->
        remember(texture, dark, target.fullSize, target.splitWidthPx, target.sessionGeneration) {
            AmbientPresentationKey(texture, dark, target.fullSize,
                IntSize(target.splitWidthPx, target.fullSize.height), target.sessionGeneration)
        }
    }
    Canvas(modifier.fillMaxSize().onSizeChanged { viewport = it }.testTag("media-ambient").semantics {
        this[AmbientOpacity] = renderer.transition.opacity(renderer.fraction)
        this[AmbientFraction] = renderer.fraction
        this[AmbientHasContent] = renderer.transition.hasContent
        this[AmbientPreparedSize] = renderer.transition.target?.let { IntSize(it.width, it.height) } ?: IntSize.Zero
        this[AmbientPreparedGeneration] = renderer.transition.target?.generationId ?: 0
        this[AmbientPresentationPrepared] = presentationKey?.let(presentationState::isPrepared) == true
    }) {
        val targetPresentation = presentation
        val travelInProgress = targetPresentation?.progress?.let { it > .001f && it < .999f } == true
        val inPresentation = active && targetPresentation != null && presentationKey != null &&
            (targetPresentation.pendingEnter != 0L || targetPresentation.buttonTransitionActive || travelInProgress)
        if (inPresentation) {
            drawIntoCanvas { canvas ->
                presentationPainter.drawFrame(canvas.nativeCanvas, size.width, size.height,
                    presentationState, presentationKey!!, renderer.transition, renderer.fraction,
                    painter, targetPresentation!!.progress, background, latestViewport.value)
            }
        } else {
            presentationPainter.clear()
            if (active && renderer.transition.hasContent) drawIntoCanvas { canvas ->
                painter.drawTransition(canvas.nativeCanvas, size.width, size.height, renderer.transition, renderer.fraction)
            }
        }
    }
}

/** All mutation is on the UI dispatcher; published bitmap pixels are never mutated/reused. */
internal class AmbientRenderState {
    var transition by mutableStateOf(AmbientTransition())
    var fraction by mutableFloatStateOf(1f)
    var request = 0L
        private set
    private var targetRequest = -1L
    var hasPreparedTarget by mutableStateOf(false)
        private set

    fun beginRequest(painter: AmbientPainter, viewport: IntSize): Long {
        val colours = transition.capture(painter, viewport, fraction)
        val opacity = transition.opacity(fraction)
        transition = if (colours == null) AmbientTransition() else
            AmbientTransition(target = colours, startOpacity = opacity, endOpacity = opacity)
        fraction = 1f
        targetRequest = -1L
        hasPreparedTarget = false
        return ++request
    }

    fun retarget(token: Long, frame: Bitmap?, painter: AmbientPainter, viewport: IntSize): Boolean {
        if (request != token) return false
        val previous = transition.capture(painter, viewport, fraction)
        val opacity = transition.opacity(fraction)
        transition = AmbientTransition(previous, frame, opacity, if (frame == null) 0f else 1f)
        fraction = 0f
        targetRequest = token
        hasPreparedTarget = frame != null
        return true
    }

    fun updateTarget(token: Long, frame: Bitmap, requiredSize: IntSize? = null): Boolean {
        if (request != token || targetRequest != token || transition.target == null) return false
        if (requiredSize != null && requiredSize != IntSize(frame.width, frame.height)) return false
        transition = transition.withTarget(frame)
        return true
    }

    fun finish(token: Long) {
        if (request != token) return
        transition = transition.target?.let { AmbientTransition(target = it, startOpacity = 1f, endOpacity = 1f) }
            ?: AmbientTransition()
        fraction = 1f
    }

    fun captureCurrent(painter: AmbientPainter, viewport: IntSize, background: Int): Bitmap? {
        val size = ambientFrameSize(viewport)
        if (!transition.hasContent || transition.opacity(fraction) <= 0f) {
            return Bitmap.createBitmap(size.width, size.height, Bitmap.Config.ARGB_8888).also {
                it.eraseColor(background)
            }
        }
        return Bitmap.createBitmap(size.width, size.height, Bitmap.Config.ARGB_8888).also { frame ->
            val canvas = AndroidCanvas(frame)
            canvas.drawColor(background)
            painter.drawTransition(canvas, size.width.toFloat(), size.height.toFloat(), transition, fraction)
        }
    }

    fun clear() {
        request++
        targetRequest = -1L
        hasPreparedTarget = false
        transition = AmbientTransition()
        fraction = 1f
        // Release every prepared/displayed reference on host stop.
    }
}

/** Bounded state: one outgoing flattened frame and one incoming prepared scene. */
internal class AmbientTransition(
    val previous: Bitmap? = null, val target: Bitmap? = null,
    private val startOpacity: Float = 0f, private val endOpacity: Float = 0f,
) {
    val hasContent: Boolean get() = previous != null || target != null
    fun opacity(fraction: Float) = (startOpacity + (endOpacity - startOpacity) * fraction).coerceIn(0f, 1f)
    fun withTarget(frame: Bitmap) = AmbientTransition(previous, frame, startOpacity, endOpacity)

    fun capture(painter: AmbientPainter, viewport: IntSize, fraction: Float): Bitmap? {
        if (!hasContent || opacity(fraction) <= 0f) return null
        // These are immutable opaque colour fields; retain them without allocating at endpoints.
        if (previous == null || fraction >= 1f) return target ?: previous
        if (target == null || fraction <= 0f) return previous
        val size = ambientFrameSize(viewport)
        return Bitmap.createBitmap(size.width, size.height, Bitmap.Config.ARGB_8888).also {
            // Opacity is independent, so interrupted disappear→appear preserves its strength.
            painter.drawColours(AndroidCanvas(it), size.width.toFloat(), size.height.toFloat(), this, fraction)
        }
    }
}

internal fun ambientFrameSize(viewport: IntSize): IntSize {
    val width = max(1, viewport.width)
    val height = max(1, viewport.height)
    val ratio = minOf(1f, AMBIENT_MAX_FRAME_EDGE.toFloat() / max(width, height))
    return IntSize(max(1, (width * ratio).roundToInt()), max(1, (height * ratio).roundToInt()))
}

internal data class AmbientTransform(val x: Float, val y: Float, val angle: Float, val scale: Float)

/** Retain the original initial composition; this pose has no time input or motion driver. */
private fun ambientTransform(pose: AmbientGlowPose, base: Boolean = false): AmbientTransform {
    val seed = pose.angle * .071f + pose.pivotX * 7.3f + pose.pivotY * 11.1f
    val x = (sin(seed) + .30f * sin(seed * 1.7f)) / 1.30f
    val y = (sin(seed * 1.3f) + .25f * sin(seed)) / 1.25f
    val swing = sin(seed * .7f)
    return if (base) AmbientTransform(x * .016f, y * .012f, swing * 1.8f, 1.12f)
        else AmbientTransform(x * .05f, y * .04f, swing * 10f, 1f + .035f * sin(seed))
}

/** Worker-owned scratch paint; the fresh, small bitmap itself isolates the LIGHTEN scene. */
internal class AmbientSceneBaker {
    private val paint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG)
    private val glowPaint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG).apply {
        alpha = 64
        xfermode = PorterDuffXfermode(PorterDuff.Mode.LIGHTEN)
    }
    private val veilPaint = Paint()
    private val cover = RectF()

    fun prepare(artwork: AmbientArtwork, dark: Boolean, viewport: IntSize): Bitmap? {
        if (artwork.base.isRecycled || artwork.glow.isRecycled) return null
        val size = ambientFrameSize(viewport)
        val frame = Bitmap.createBitmap(size.width, size.height, Bitmap.Config.ARGB_8888)
        try {
            val canvas = AndroidCanvas(frame)
            val width = size.width.toFloat()
            val height = size.height.toFloat()
            val side = max(width, height)
            cover.set((width - side) / 2, (height - side) / 2, (width + side) / 2, (height + side) / 2)
            val baseTransform = canvas.save()
            artwork.poses.firstOrNull()?.let { pose ->
                val transform = ambientTransform(pose, base = true)
                canvas.translate(side * transform.x, side * transform.y)
                canvas.rotate(transform.angle, width / 2f, height / 2f)
                canvas.scale(transform.scale, transform.scale, width / 2f, height / 2f)
            }
            canvas.drawBitmap(artwork.base, null, cover, paint)
            canvas.restoreToCount(baseTransform)
            for (pose in artwork.poses) {
                val transform = ambientTransform(pose)
                val saved = canvas.save()
                canvas.translate(side * transform.x, side * transform.y)
                canvas.rotate(pose.angle + transform.angle, width * pose.pivotX, height * pose.pivotY)
                canvas.scale(pose.scale * transform.scale, pose.scale * transform.scale, width / 2f, height / 2f)
                canvas.drawBitmap(artwork.glow, null, cover, glowPaint)
                canvas.restoreToCount(saved)
            }
            veilPaint.color = if (dark) android.graphics.Color.BLACK else android.graphics.Color.WHITE
            veilPaint.alpha = ((if (dark) artwork.darkVeil else artwork.lightVeil) * 255).roundToInt()
            if (veilPaint.alpha > 0) canvas.drawRect(0f, 0f, width, height, veilPaint)
            return frame
        } catch (_: RuntimeException) {
            frame.recycle() // It has never been published.
            return null
        }
    }
}

/** Screen-only painter: no scene transforms, LIGHTEN, masks, or full-size saveLayer. */
internal class AmbientPainter {
    private val paint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG)
    private val bounds = RectF()

    fun drawTransition(canvas: AndroidCanvas, width: Float, height: Float, scene: AmbientTransition, fraction: Float): Int {
        val opacity = scene.opacity(fraction)
        if (opacity <= 0f) return 0
        bounds.set(0f, 0f, width, height)
        val previous = scene.previous?.takeUnless { it.isRecycled }
        val target = scene.target?.takeUnless { it.isRecycled }
        if (previous != null && target != null) {
            val incoming = opacity * fraction.coerceIn(0f, 1f)
            // Source-over without a group layer: new=opacity*f, old=opacity*(1-f).
            // Compensate the old draw for the subsequent incoming occlusion.
            val outgoing = if (incoming >= 1f) 0f else opacity * (1f - fraction.coerceIn(0f, 1f)) / (1f - incoming)
            return draw(canvas, previous, outgoing) + draw(canvas, target, incoming)
        } else {
            return (target ?: previous)?.let { draw(canvas, it, opacity) } ?: 0
        }
    }

    fun drawColours(canvas: AndroidCanvas, width: Float, height: Float, scene: AmbientTransition, fraction: Float) {
        bounds.set(0f, 0f, width, height)
        scene.previous?.takeUnless { it.isRecycled }?.let { draw(canvas, it, 1f) }
        scene.target?.takeUnless { it.isRecycled }?.let { draw(canvas, it, if (scene.previous == null) 1f else fraction) }
    }

    private fun draw(canvas: AndroidCanvas, bitmap: Bitmap, alpha: Float): Int {
        paint.alpha = (alpha.coerceIn(0f, 1f) * 255).roundToInt()
        if (paint.alpha == 0) return 0
        canvas.drawBitmap(bitmap, null, bounds, paint)
        return 1
    }
}
