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
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.IntSize
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.isActive
import kotlinx.coroutines.withContext
import kotlin.math.max
import kotlin.math.sin
import kotlin.math.PI
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
internal val AmbientHasContent = SemanticsPropertyKey<Boolean>("AmbientHasContent")
internal val AmbientPreparedSize = SemanticsPropertyKey<IntSize>("AmbientPreparedSize")
internal val AmbientPreparedGeneration = SemanticsPropertyKey<Int>("AmbientPreparedGeneration")
internal const val AMBIENT_TRANSITION_MS = 500
internal const val AMBIENT_MAX_FRAME_EDGE = 192
// The baked field has no sharp detail and its shortest motion period is >34 seconds.
// Sample that field, not playback or transition progress; transitions still use frame time.
internal const val AMBIENT_SCENE_INTERVAL_NS = 100_000_000L
private val AmbientEasing = CubicBezierEasing(.42f, 0f, .58f, 1f)
// Host tests can prepare synchronously while keeping the production worker boundary explicit.
internal val LocalAmbientMotionAllowed = staticCompositionLocalOf { true }
internal val LocalAmbientPreparationDispatcher = staticCompositionLocalOf<CoroutineDispatcher> { Dispatchers.Default }

/**
 * One persistent renderer. Motion is precomposed on a worker at bounded resolution;
 * the screen draws one texture in steady state, or two during the 500ms transition.
 * Frame progress is read only by draw/semantics, never by composition or layout.
 */
@Composable
fun MediaAmbientBackground(
    texture: AmbientArtwork?, dark: Boolean, modifier: Modifier = Modifier,
    active: Boolean = true, animating: Boolean = true,
    presentation: ContentPresentation? = null,
) {
    val renderer = remember { AmbientRenderState() }
    // Readiness changes only on arrival/withdrawal, not when motion publishes another frame.
    val preparedTarget by remember(renderer) { derivedStateOf(structuralEqualityPolicy()) { renderer.hasPreparedTarget } }
    val painter = remember { AmbientPainter() }
    val presentationState = remember { AmbientPresentationState() }
    val presentationPainter = remember { AmbientPresentationPainter() }
    val preparationDispatcher = LocalAmbientPreparationDispatcher.current
    val background = MaterialTheme.colorScheme.background.toArgb()
    var viewport by remember { mutableStateOf(IntSize.Zero) }
    val view = LocalView.current
    var focused by remember(view) { mutableStateOf(view.hasWindowFocus()) }
    val latestViewport = rememberUpdatedState(viewport)
    val viewportReady = viewport.width > 0 && viewport.height > 0
    val motionEnabled = animating && focused && LocalAmbientMotionAllowed.current
    val frozenGeometry = if (viewportReady && !motionEnabled) ambientFrameSize(viewport) else IntSize.Zero
    DisposableEffect(view) {
        val tree = view.viewTreeObserver
        val listener = android.view.ViewTreeObserver.OnWindowFocusChangeListener { focused = it }
        tree.addOnWindowFocusChangeListener(listener)
        onDispose { if (tree.isAlive) tree.removeOnWindowFocusChangeListener(listener) }
    }
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
            val phase = renderer.phase
            if (texture != null) {
                withContext(preparationDispatcher) {
                    ensureActive()
                    prepared = AmbientSceneBaker().prepare(texture, dark, phase, requestViewport)
                }
                // A failed replacement never withdraws the last valid background.
                if (prepared == null) return@LaunchedEffect
            }
            ensureActive()
            if (!renderer.retarget(request, prepared, phase, painter, latestViewport.value)) return@LaunchedEffect
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
    LaunchedEffect(texture, dark, active, motionEnabled, viewportReady, preparedTarget, preparationDispatcher) {
        if (!active || !motionEnabled || !viewportReady || !preparedTarget || !renderer.hasPreparedTarget || texture == null) return@LaunchedEffect
        val baker = AmbientSceneBaker()
        var previous = 0L
        var lastSample = 0L
        while (isActive) {
            val now = withFrameNanos { now ->
                // Plain presentation clock: advancing it does not invalidate composition/draw.
                if (previous != 0L) renderer.phase += ((now - previous) / 1_000_000_000.0).toFloat().coerceIn(0f, .05f)
                previous = now
                now
            }
            if (!renderer.hasPreparedTarget) return@LaunchedEffect
            if (lastSample == 0L) { lastSample = now; continue }
            if (now - lastSample < AMBIENT_SCENE_INTERVAL_NS) continue
            lastSample = now
            val request = renderer.request
            val phase = renderer.phase
            val sampleViewport = latestViewport.value
            var prepared: Bitmap? = null
            var published = false
            try {
                withContext(preparationDispatcher) {
                    ensureActive()
                    prepared = baker.prepare(texture, dark, phase, sampleViewport)
                }
                ensureActive()
                if (prepared == null) return@LaunchedEffect
                prepared?.let {
                    published = renderer.updateTarget(request, it, phase, ambientFrameSize(latestViewport.value))
                }
            } finally {
                if (!published) prepared?.takeUnless { it.isRecycled }?.recycle()
            }
        }
    }
    LaunchedEffect(texture, dark, active, motionEnabled, frozenGeometry, preparedTarget, preparationDispatcher) {
        if (!active || motionEnabled || !preparedTarget || !renderer.hasPreparedTarget || texture == null || frozenGeometry == IntSize.Zero) return@LaunchedEffect
        if (renderer.transition.target?.let { IntSize(it.width, it.height) } == frozenGeometry) return@LaunchedEffect
        val request = renderer.request
        // A paused/focus-frozen resize changes geometry, never the displayed motion phase.
        val phase = renderer.publishedPhase
        val resizeViewport = latestViewport.value
        if (ambientFrameSize(resizeViewport) != frozenGeometry) return@LaunchedEffect
        var prepared: Bitmap? = null
        var published = false
        try {
            withContext(preparationDispatcher) {
                ensureActive()
                prepared = AmbientSceneBaker().prepare(texture, dark, phase, resizeViewport)
            }
            ensureActive()
            prepared?.let {
                published = renderer.updateTarget(request, it, phase, ambientFrameSize(latestViewport.value))
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
            if (!active) presentationState.clear()
            return@LaunchedEffect
        }
        if (!targetPresentation.moving && targetPresentation.pendingEnter == 0L &&
            !targetPresentation.buttonTransitionActive) {
            presentationState.clear()
            return@LaunchedEffect
        }
        val fullSize = targetPresentation.fullSize
        val compactSize = IntSize(targetPresentation.splitWidthPx, fullSize.height)
        if (compactSize.width <= 0 || compactSize.height <= 0) return@LaunchedEffect
        val key = AmbientPresentationKey(texture, dark, fullSize, compactSize, targetPresentation.sessionGeneration)
        val entryToken = targetPresentation.pendingEnter
        if (presentationState.isPrepared(key)) {
            targetPresentation.entryPrepared(entryToken)
            return@LaunchedEffect
        }
        val fallback = if (texture == null) null else renderer.captureCurrent(painter, compactSize, background)
        val request = presentationState.begin(key, fallback)
        val phase = renderer.publishedPhase
        var bridge: Bitmap? = null
        var wide: Bitmap? = null
        var installed = false
        try {
            withContext(preparationDispatcher) {
                ensureActive()
                bridge = AmbientBridgeBaker().prepare(fallback, dark, fullSize, compactSize)
                if (texture != null) {
                    ensureActive()
                    wide = AmbientSceneBaker().prepare(texture, dark, phase, fullSize)
                }
            }
            ensureActive()
            if (!presentationState.isCurrent(request)) return@LaunchedEffect
            presentationState.install(request, key,
                AmbientPresentationScene(bridge, wide, fullSize, compactSize, phase))
            installed = true
            targetPresentation.entryPrepared(entryToken)
        } finally {
            if (!installed) {
                bridge?.takeUnless { it.isRecycled }?.recycle()
                wide?.takeUnless { it.isRecycled }?.recycle()
            }
        }
    }

    DisposableEffect(presentation) {
        onDispose { presentationState.clear() }
    }

    Canvas(modifier.fillMaxSize().onSizeChanged { viewport = it }.testTag("media-ambient").semantics {
        this[AmbientPhase] = renderer.publishedPhase
        this[AmbientOpacity] = renderer.transition.opacity(renderer.fraction)
        this[AmbientFraction] = renderer.fraction
        this[AmbientHasContent] = renderer.transition.hasContent
        this[AmbientPreparedSize] = renderer.transition.target?.let { IntSize(it.width, it.height) } ?: IntSize.Zero
        this[AmbientPreparedGeneration] = renderer.transition.target?.generationId ?: 0
    }) {
        val targetPresentation = presentation
        val scene = presentationState.scene
        val inPresentation = active && targetPresentation != null && targetPresentation.geometryReady &&
            (targetPresentation.moving || targetPresentation.pendingEnter != 0L ||
                targetPresentation.buttonTransitionActive)
        if (inPresentation) {
            targetPresentation?.let { target ->
                drawIntoCanvas { canvas ->
                    if (scene != null) {
                        val drawn = presentationPainter.draw(canvas.nativeCanvas, size.width, size.height, scene,
                            target.progress)
                        if (drawn == 0) canvas.nativeCanvas.drawColor(if (dark) android.graphics.Color.BLACK else android.graphics.Color.WHITE)
                    } else {
                        presentationPainter.drawCompactFallback(canvas.nativeCanvas, size.width, size.height,
                            presentationState.fallbackCompact, target.fullSize, viewport, dark)
                    }
                }
            }
        } else if (active && renderer.transition.hasContent) {
            drawIntoCanvas { canvas ->
                painter.drawTransition(canvas.nativeCanvas, size.width, size.height, renderer.transition, renderer.fraction)
            }
        }
    }
}

/** All mutation is on the UI dispatcher; published bitmap pixels are never mutated/reused. */
internal class AmbientRenderState {
    var transition by mutableStateOf(AmbientTransition())
    var fraction by mutableFloatStateOf(1f)
    var publishedPhase by mutableFloatStateOf(0f)
    var phase = 0f
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

    fun retarget(token: Long, frame: Bitmap?, phase: Float, painter: AmbientPainter, viewport: IntSize): Boolean {
        if (request != token) return false
        val previous = transition.capture(painter, viewport, fraction)
        val opacity = transition.opacity(fraction)
        transition = AmbientTransition(previous, frame, opacity, if (frame == null) 0f else 1f)
        fraction = 0f
        publishedPhase = phase
        targetRequest = token
        hasPreparedTarget = frame != null
        return true
    }

    fun updateTarget(token: Long, frame: Bitmap, phase: Float, requiredSize: IntSize? = null): Boolean {
        if (request != token || targetRequest != token || transition.target == null) return false
        if (requiredSize != null && requiredSize != IntSize(frame.width, frame.height)) return false
        transition = transition.withTarget(frame)
        publishedPhase = phase
        return true
    }

    fun finish(token: Long) {
        if (request != token) return
        transition = transition.target?.let { AmbientTransition(target = it, startOpacity = 1f, endOpacity = 1f) }
            ?: AmbientTransition()
        fraction = 1f
    }

    fun captureCurrent(painter: AmbientPainter, viewport: IntSize, background: Int): Bitmap? {
        if (!transition.hasContent || transition.opacity(fraction) <= 0f) return null
        if (transition.opacity(fraction) >= 1f) return transition.capture(painter, viewport, fraction)
        val size = ambientFrameSize(viewport)
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
        // Keep the clock phase, but release every prepared/displayed reference on host stop.
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

internal data class AmbientMotion(val x: Float, val y: Float, val angle: Float, val scale: Float)

/** Stable baked pose is the seed; all motion comes from the single pausable UI phase. */
internal fun ambientMotion(pose: AmbientGlowPose, phase: Float, base: Boolean = false): AmbientMotion {
    val seed = pose.angle * .071f + pose.pivotX * 7.3f + pose.pivotY * 11.1f
    val period = pose.periodSeconds.coerceAtLeast(1f) * if (base) 1.15f else .62f
    val t = phase / period * (2f * PI.toFloat())
    val x = (sin(t + seed) + .30f * sin(t * .73f + seed * 1.7f)) / 1.30f
    val y = (sin(t * .81f + seed * 1.3f) + .25f * sin(t * 1.31f + seed)) / 1.25f
    val swing = sin(t * .93f + seed * .7f)
    return if (base) AmbientMotion(x * .016f, y * .012f, swing * 1.8f, 1.12f)
        else AmbientMotion(x * .05f, y * .04f, swing * 10f, 1f + .035f * sin(t * .67f + seed))
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

    fun prepare(artwork: AmbientArtwork, dark: Boolean, phase: Float, viewport: IntSize): Bitmap? {
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
                val motion = ambientMotion(pose, phase, base = true)
                canvas.translate(side * motion.x, side * motion.y)
                canvas.rotate(motion.angle, width / 2f, height / 2f)
                canvas.scale(motion.scale, motion.scale, width / 2f, height / 2f)
            }
            canvas.drawBitmap(artwork.base, null, cover, paint)
            canvas.restoreToCount(baseTransform)
            for (pose in artwork.poses) {
                val motion = ambientMotion(pose, phase)
                val transform = canvas.save()
                canvas.translate(side * motion.x, side * motion.y)
                canvas.rotate(pose.angle + motion.angle, width * pose.pivotX, height * pose.pivotY)
                canvas.scale(pose.scale * motion.scale, pose.scale * motion.scale, width / 2f, height / 2f)
                canvas.drawBitmap(artwork.glow, null, cover, glowPaint)
                canvas.restoreToCount(transform)
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
