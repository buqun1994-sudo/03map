package com.icar03.content.host

import android.animation.ValueAnimator
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.RectF
import android.view.Gravity
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import kotlin.math.max
import kotlin.math.roundToInt

/** The original gesture node still owns input; this small View only paints its handle. */
class MapGestureBar private constructor(private val touchOwner: ViewGroup) : View(touchOwner.context) {
    private data class Ink(val red: Float, val green: Float, val blue: Float, val alpha: Float) {
        fun towards(other: Ink, fraction: Float) = Ink(
            red + (other.red - red) * fraction,
            green + (other.green - green) * fraction,
            blue + (other.blue - blue) * fraction,
            alpha + (other.alpha - alpha) * fraction,
        )
    }

    private val paint = Paint(Paint.ANTI_ALIAS_FLAG)
    private val rect = RectF()
    private var target = normalInk(false, false)
    private var from = target
    private var base = target
    private var stateProgress = 1f
    private var stateStartProgress = 1f
    private var stateWindowMs = 0L
    private var frameElapsedMs = 0L
    private var animationWindowMs = 0L
    private var animator: ValueAnimator? = null
    private val frameRunner = Runnable { advanceFrame() }

    init {
        isClickable = false
        isFocusable = false
        importantForAccessibility = IMPORTANT_FOR_ACCESSIBILITY_NO
        // Keep the compact 22 x 272px host region around the original handle geometry.
        setWillNotDraw(false)
    }

    private var stateActive = false

    /**
     * The last two parameters are retained for the SplitPanelController ABI and legacy
     * preference callers. The gesture bar no longer has a reminder visual or scheduler.
     */
    @Suppress("UNUSED_PARAMETER")
    fun updateGestureState(enabled: Boolean, dark: Boolean, reminderEnabled: Boolean, remind: Boolean) {
        val next = normalInk(enabled, dark)
        touchOwner.isClickable = false
        if (next == target) {
            if (!isAttachedToWindow) stopWork()
            return
        }
        from = base
        target = next
        stateProgress = 0f
        stateActive = true
        // The controller consumes admitted DOWN itself; rejected DOWN must pass through.
        if (!isAttachedToWindow) {
            stopWork()
            return
        }
        invalidate()
        schedule()
    }

    private fun sample(playTimeMs: Long) {
        if (!stateActive) return
        val t = (playTimeMs.toFloat() / stateWindowMs.coerceAtLeast(1L)).coerceIn(0f, 1f)
        stateProgress = stateStartProgress + (1f - stateStartProgress) * t
        val eased = stateProgress * stateProgress * (3f - 2f * stateProgress)
        base = from.towards(target, eased)
        if (t >= 1f) {
            stateProgress = 1f
            base = target
            stateActive = false
        }
    }

    private fun schedule() {
        stopAnimator()
        val remaining = if (stateActive) {
            max(1L, (STATE_DURATION_MS * (1f - stateProgress)).roundToInt().toLong())
        } else 0L
        if (remaining == 0L || !isAttachedToWindow) return
        stateStartProgress = stateProgress
        stateWindowMs = remaining
        frameElapsedMs = 0L
        animationWindowMs = remaining
        val next = ValueAnimator.ofFloat(0f, 1f).apply {
            duration = remaining
        }
        animator = next
        next.start()
        next.pause()
        postDelayed(frameRunner, FRAME_STEP_MS)
    }

    private fun advanceFrame() {
        if (animator == null) return
        frameElapsedMs = (frameElapsedMs + FRAME_STEP_MS).coerceAtMost(animationWindowMs)
        sample(frameElapsedMs)
        invalidate()
        if (frameElapsedMs >= animationWindowMs) {
            finishAnimator()
        } else {
            postDelayed(frameRunner, FRAME_STEP_MS)
        }
    }

    private fun finishAnimator() {
        val previous = animator ?: return
        removeCallbacks(frameRunner)
        animator = null
        previous.removeAllUpdateListeners()
        previous.removeAllListeners()
        previous.cancel()
        sample(animationWindowMs)
        base = target
        stateProgress = 1f
        stateActive = false
        animationWindowMs = 0L
        invalidate()
    }

    private fun stopAnimator() {
        removeCallbacks(frameRunner)
        val previous = animator
        animator = null
        previous?.removeAllUpdateListeners()
        previous?.removeAllListeners()
        previous?.cancel()
        animationWindowMs = 0L
    }

    private fun stopWork() {
        stopAnimator()
        base = target
        from = target
        stateProgress = 1f
        stateActive = false
        invalidate()
    }

    override fun onDetachedFromWindow() {
        stopWork()
        super.onDetachedFromWindow()
    }

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        val top = (height - HANDLE_HEIGHT_PX) / 2f
        val left = (width - HANDLE_WIDTH_PX) / 2f
        paint.color = Color.rgb(base.red.roundToInt(), base.green.roundToInt(), base.blue.roundToInt())
        paint.alpha = (base.alpha * 255f).roundToInt().coerceIn(0, 255)
        rect.set(left, top, left + HANDLE_WIDTH_PX, top + HANDLE_HEIGHT_PX)
        canvas.drawRoundRect(rect, HANDLE_WIDTH_PX / 2f, HANDLE_WIDTH_PX / 2f, paint)
    }

    companion object {
        private const val STATE_DURATION_MS = 240L
        private const val FRAME_STEP_MS = 16L
        private const val HANDLE_WIDTH_PX = 6
        private const val HANDLE_HEIGHT_PX = 256
        private const val INK_PADDING_PX = 8
        private const val EDGE_INSET_PX = 2

        private fun normalInk(enabled: Boolean, dark: Boolean): Ink = when {
            enabled && dark -> Ink(228f, 237f, 247f, .88f)
            enabled -> Ink(76f, 93f, 115f, .78f)
            dark -> Ink(135f, 147f, 161f, .35f)
            else -> Ink(113f, 128f, 147f, .30f)
        }

        @JvmStatic
        fun attachTo(node: ViewGroup): MapGestureBar {
            var existing: MapGestureBar? = null
            for (index in 0 until node.childCount) {
                val child = node.getChildAt(index)
                if (child is MapGestureBar) existing = child else child.visibility = GONE
            }
            node.background = null
            node.isFocusable = false
            node.clipChildren = false
            node.clipToPadding = false
            if (existing != null) return existing
            node.isClickable = false
            return MapGestureBar(node).also { bar ->
                node.addView(bar, FrameLayout.LayoutParams(
                    HANDLE_WIDTH_PX + INK_PADDING_PX * 2,
                    HANDLE_HEIGHT_PX + INK_PADDING_PX * 2,
                    Gravity.RIGHT or Gravity.CENTER_VERTICAL,
                ).apply {
                    // The paint has 8px padding; only that transparent padding extends
                    // past the original touch owner. The visible edge stays 2px inside it.
                    rightMargin = EDGE_INSET_PX - INK_PADDING_PX
                })
            }
        }
    }
}

/** Geometry for the original layer after it moves beside the content and map containers. */
object MapGestureBarHost {
    private const val LAYER_TAG = "com.icar03.content.host.mapGestureLayer"

    @JvmStatic
    fun findGestureLayer(panelHost: ViewGroup): ViewGroup? =
        (panelHost.getChildAt(1) as? ViewGroup)
            ?: ((panelHost.parent as? FrameLayout)?.findViewWithTag<View>(LAYER_TAG) as? ViewGroup)

    @JvmStatic
    fun ensureOnTop(panelHost: ViewGroup, layer: ViewGroup, node: ViewGroup, dividerX: Float) {
        val root = panelHost.parent as? FrameLayout ?: return
        if (!dividerX.isFinite()) return
        val width = node.layoutParams?.width?.takeIf { it > 0 } ?: return
        layer.tag = LAYER_TAG
        layer.background = null
        layer.isClickable = false
        layer.isLongClickable = false
        layer.isFocusable = false
        layer.clipChildren = false
        layer.clipToPadding = false
        // A translated full-width parent would not hit the node at negative x. This
        // narrow parent covers exactly [divider-width, divider], while the padding
        // preserves the node's existing -width margin and its original coordinates.
        if (layer.paddingLeft != width || layer.paddingTop != 0 || layer.paddingRight != 0 || layer.paddingBottom != 0) {
            layer.setPadding(width, 0, 0, 0)
        }
        val params = layer.layoutParams as? FrameLayout.LayoutParams
        val needsParams = params == null || params.width != width || params.height != ViewGroup.LayoutParams.MATCH_PARENT ||
            params.leftMargin != -width || params.topMargin != 0 || params.rightMargin != 0 || params.bottomMargin != 0 ||
            params.gravity != (Gravity.LEFT or Gravity.TOP)
        if (layer.parent !== root) {
            (layer.parent as? ViewGroup)?.removeView(layer)
            root.addView(layer, layerParams(width))
        } else if (needsParams) {
            layer.layoutParams = layerParams(width)
        }
        val nodeParams = node.layoutParams as? FrameLayout.LayoutParams
        if (nodeParams != null && (nodeParams.leftMargin != -width || nodeParams.gravity != (Gravity.LEFT or Gravity.CENTER_VERTICAL))) {
            nodeParams.leftMargin = -width
            nodeParams.gravity = Gravity.LEFT or Gravity.CENTER_VERTICAL
            node.layoutParams = nodeParams
        }
        if (root.indexOfChild(layer) != root.childCount - 1) root.bringChildToFront(layer)
        var highestSiblingZ = 0f
        for (index in 0 until root.childCount) {
            val sibling = root.getChildAt(index)
            if (sibling !== layer && sibling.z.isFinite()) highestSiblingZ = max(highestSiblingZ, sibling.z)
        }
        layer.outlineProvider = null
        layer.stateListAnimator = null
        layer.translationZ = 0f
        layer.elevation = highestSiblingZ + 1f
        layer.translationX = dividerX
        layer.translationY = 0f
    }

    private fun layerParams(width: Int) = FrameLayout.LayoutParams(width, ViewGroup.LayoutParams.MATCH_PARENT, Gravity.LEFT or Gravity.TOP).apply {
        leftMargin = -width
    }
}
