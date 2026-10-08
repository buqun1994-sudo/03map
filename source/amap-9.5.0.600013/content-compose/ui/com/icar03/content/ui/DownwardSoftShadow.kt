package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.BlurMaskFilter
import android.graphics.Canvas
import android.graphics.NinePatch
import android.graphics.Paint
import android.graphics.PorterDuff
import android.graphics.PorterDuffColorFilter
import android.graphics.PorterDuffXfermode
import android.graphics.Rect
import android.graphics.RectF
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.drawWithCache
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.drawscope.drawIntoCanvas
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.LinkedHashMap
import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt

private const val SHADOW_BLUR_DP = 5f
private const val SHADOW_OFFSET_Y_DP = 3f
private const val LIGHT_SHADOW = 0x30000000
private const val DARK_SHADOW = 0xA0000000.toInt()

/** Explicit dx=0/dy=3dp keeps the accepted lighting independent of the Window's light source. */
internal fun Modifier.downwardSoftShadow(
    fill: Color,
    dark: Boolean,
    cornerRadius: Dp = 12.dp,
    cache: DownwardShadowTextureCache = sharedDownwardShadowTextures,
): Modifier = drawWithCache {
    // The surface is deliberately not part of the mask. The caller still paints its fill below,
    // while this layer only draws a tinted alpha mask. A press/theme fill therefore never bakes.
    val texture = cache.texture(size, density, cornerRadius.toPx(), fill.toArgbForShadowCompatibility(), dark)
    val frame = texture?.frame(size, if (dark) DARK_SHADOW else LIGHT_SHADOW)
    onDrawBehind {
        if (frame != null) drawIntoCanvas { frame.draw(it.nativeCanvas) }
    }
}

/**
 * Kept as a source-compatible call-site adapter. The mask has no surface RGB, so this conversion
 * is intentionally constant and cannot become part of the cache key.
 */
private fun Color.toArgbForShadowCompatibility(): Int = 0

private val sharedDownwardShadowTextures = DownwardShadowTextureCache()

/**
 * A bounded cache of small, fixed-style alpha masks.
 *
 * The old implementation rasterized a complete target-sized ARGB surface, especially for
 * fractional densities, before compacting it. This cache only rasterizes one corner/edge sample.
 * Target width and height are used for the destination rectangle; they are not texture identity
 * except when a very small target forces the fixed corner span to shrink.
 */
internal class DownwardShadowTextureCache(
    private val maximumBytes: Int = 4 * 1024 * 1024,
    private val maximumEntries: Int = 48,
) {
    private val entries = LinkedHashMap<ShadowTextureKey, DownwardShadowTexture>(16, .75f, true)

    /** Number of cold mask generations, useful for local performance probes. */
    var rasterizationCount: Long = 0L
        private set

    /** Number of mask bytes retained by this cache (not native NinePatch bookkeeping). */
    var cachedBytes: Int = 0
        private set

    /** Largest one-shot bitmap allocation made by this cache. */
    var largestAllocationBytes: Int = 0
        private set

    val cachedEntryCount: Int get() = entries.size

    @Synchronized
    fun texture(size: Size, density: Float, cornerRadius: Float, fill: Int, dark: Boolean): DownwardShadowTexture? {
        if (!size.width.isFinite() || !size.height.isFinite() || size.width <= 0f || size.height <= 0f ||
            !density.isFinite() || density <= 0f || !cornerRadius.isFinite()) return null

        // Quantizing at 1/16 px keeps fractional-density keys stable without rounding away the
        // accepted 141/212/320dpi geometry. Neither fill nor theme is a mask property.
        val blur = quantize(density * SHADOW_BLUR_DP)
        val offsetY = quantize(density * SHADOW_OFFSET_Y_DP)
        val requestedRadius = cornerRadius.coerceAtLeast(0f)
        val effectiveRadius = quantize(min(requestedRadius, min(size.width, size.height) / 2f))
        val blurPx = blur / 16f
        val offsetPx = offsetY / 16f
        val radiusPx = effectiveRadius / 16f
        val padding = (ceil(blurPx * 3f + abs(offsetPx)).toInt() + 1).coerceAtMost(MAX_PADDING)
        val idealFixed = ceil(radiusPx + blurPx * 3f).toInt().coerceAtLeast(1)
        val availableFixedX = (ceil(size.width / 2f).toInt() - 1).coerceAtLeast(1)
        val availableFixedY = (ceil(size.height / 2f).toInt() - 1).coerceAtLeast(1)
        val fixedX = minOf(idealFixed, availableFixedX, MAX_FIXED_EXTENT)
        val fixedY = minOf(idealFixed, availableFixedY, MAX_FIXED_EXTENT)
        val key = ShadowTextureKey(effectiveRadius, blur, offsetY, fixedX, fixedY, padding)
        entries[key]?.let { return it }

        // Keep the public compatibility parameters intentionally out of key construction.
        val texture = rasterize(key)
        rasterizationCount++
        largestAllocationBytes = max(largestAllocationBytes, texture.byteCount)
        if (texture.byteCount <= maximumBytes && maximumEntries > 0) {
            entries[key] = texture
            cachedBytes += texture.byteCount
            val iterator = entries.entries.iterator()
            while (cachedBytes > maximumBytes || entries.size > maximumEntries) {
                if (!iterator.hasNext()) break
                cachedBytes -= iterator.next().value.byteCount
                // Active draw caches may still reference an evicted bitmap; never recycle it here.
                iterator.remove()
            }
        }
        return texture
    }

    private fun rasterize(key: ShadowTextureKey): DownwardShadowTexture {
        val radius = key.radius16 / 16f
        val contentWidth = max(key.fixedX * 2 + 1, ceil(radius * 2f).toInt().coerceAtLeast(1))
        val contentHeight = max(key.fixedY * 2 + 1, ceil(radius * 2f).toInt().coerceAtLeast(1))
        val stretchX = contentWidth - key.fixedX * 2
        val stretchY = contentHeight - key.fixedY * 2
        val bitmapWidth = contentWidth + key.padding * 2
        val bitmapHeight = contentHeight + key.padding * 2
        val bitmap = Bitmap.createBitmap(bitmapWidth, bitmapHeight, Bitmap.Config.ARGB_8888)
        val shape = RectF(
            key.padding.toFloat(),
            key.padding.toFloat(),
            (key.padding + contentWidth).toFloat(),
            (key.padding + contentHeight).toFloat(),
        )
        val boundedRadius = radius.coerceIn(0f, min(contentWidth, contentHeight) / 2f)
        val blur = max(.1f, key.blur16 / 16f)
        val offsetY = key.offsetY16 / 16f
        val canvas = Canvas(bitmap)
        val maskPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = 0xFFFFFFFF.toInt()
            maskFilter = BlurMaskFilter(blur, BlurMaskFilter.Blur.NORMAL)
        }
        val shadowShape = RectF(shape).apply { offset(0f, offsetY) }
        canvas.drawRoundRect(shadowShape, boundedRadius, boundedRadius, maskPaint)
        maskPaint.maskFilter = null
        // Preserve the blurred alpha beneath the caller's antialiased edge, without baking its fill.
        val inset = min(1f, blur * .25f)
        val center = RectF(shape).apply { inset(inset, inset) }
        val innerRadius = (boundedRadius - inset).coerceAtLeast(0f)
        maskPaint.xfermode = PorterDuffXfermode(PorterDuff.Mode.CLEAR)
        canvas.drawRoundRect(center, innerRadius, innerRadius, maskPaint)
        maskPaint.xfermode = null

        val ninePatch = runCatching {
            NinePatch(bitmap, ninePatchChunk(
                key.padding + key.fixedX, stretchX,
                key.padding + key.fixedY, stretchY,
                0, 0,
            ), "downward-soft-shadow")
        }.getOrNull()
        return DownwardShadowTexture(bitmap, ninePatch, contentWidth, contentHeight,
            key.fixedX, key.fixedY, key.padding)
    }

    private fun quantize(value: Float): Int = (value * 16f).roundToInt().coerceAtLeast(0)

    private companion object {
        const val MAX_FIXED_EXTENT = 160
        const val MAX_PADDING = 64

        /**
         * Runtime Res_png_9patch form consumed by NinePatch(Bitmap, chunk, ...).
         * BitmapFactory normally converts the file-order npTc payload before exposing it from
         * Bitmap.getNinePatchChunk(); a runtime-created chunk must therefore mark itself as
         * deserialized and keep every 32-bit field in native order.
         */
        fun ninePatchChunk(
            stretchStartX: Int,
            stretchExtentX: Int,
            stretchStartY: Int,
            stretchExtentY: Int,
            paddingX: Int,
            paddingY: Int,
        ): ByteArray {
            val buffer = ByteBuffer.allocate(84).order(ByteOrder.nativeOrder())
            buffer.put(0, 1.toByte()) // wasDeserialized
            buffer.put(1, 2.toByte()) // numXDivs
            buffer.put(2, 2.toByte()) // numYDivs
            buffer.put(3, 9.toByte()) // numColors
            buffer.putInt(4, 32) // xDivsOffset
            buffer.putInt(8, 40) // yDivsOffset
            buffer.putInt(12, paddingX)
            buffer.putInt(16, paddingX)
            buffer.putInt(20, paddingY)
            buffer.putInt(24, paddingY)
            buffer.putInt(28, 48) // colorsOffset
            buffer.putInt(32, stretchStartX)
            buffer.putInt(36, stretchStartX + stretchExtentX)
            buffer.putInt(40, stretchStartY)
            buffer.putInt(44, stretchStartY + stretchExtentY)
            for (index in 0 until 9) {
                // Center is intentionally transparent; all surrounding cells are sampled masks.
                buffer.putInt(48 + index * 4, if (index == 4) 0 else 1)
            }
            return buffer.array()
        }
    }
}

private data class ShadowTextureKey(
    val radius16: Int,
    val blur16: Int,
    val offsetY16: Int,
    val fixedX: Int,
    val fixedY: Int,
    val padding: Int,
)

internal class DownwardShadowTexture(
    private val bitmap: Bitmap,
    private val ninePatch: NinePatch?,
    private val contentWidth: Int,
    private val contentHeight: Int,
    private val fixedX: Int,
    private val fixedY: Int,
    private val padding: Int,
) {
    val byteCount: Int get() = bitmap.allocationByteCount
    val usesNativeNinePatch: Boolean get() = ninePatch != null
    var warmDrawCount: Long = 0L
        private set

    /** Compatibility overload: light-theme tint matches the historical call contract. */
    fun frame(size: Size): DownwardShadowFrame = frame(size, LIGHT_SHADOW)

    fun frame(size: Size, shadowColor: Int): DownwardShadowFrame {
        val target = RectF(
            -padding.toFloat(),
            -padding.toFloat(),
            size.width + padding,
            size.height + padding,
        )
        if (ninePatch != null) return DownwardShadowFrame(this, ninePatch, target, shadowColor)

        // Robolectric/API implementations that cannot deserialize a runtime chunk still get the
        // same nine-patch geometry. The fallback rectangles are made once per draw cache frame.
        val sourceX = intArrayOf(0, padding + fixedX, padding + contentWidth - fixedX, bitmap.width)
        val sourceY = intArrayOf(0, padding + fixedY, padding + contentHeight - fixedY, bitmap.height)
        val targetX = floatArrayOf(target.left.toFloat(), fixedX.toFloat(), size.width - fixedX, target.right.toFloat())
        val targetY = floatArrayOf(target.top.toFloat(), fixedY.toFloat(), size.height - fixedY, target.bottom.toFloat())
        val sources = ArrayList<Rect>(9)
        val destinations = ArrayList<RectF>(9)
        for (y in 0..2) for (x in 0..2) {
            if (sourceX[x] >= sourceX[x + 1] || sourceY[y] >= sourceY[y + 1]) continue
            sources += Rect(sourceX[x], sourceY[y], sourceX[x + 1], sourceY[y + 1])
            destinations += RectF(targetX[x], targetY[y], targetX[x + 1], targetY[y + 1])
        }
        return DownwardShadowFrame(this, bitmap, sources.toTypedArray(), destinations.toTypedArray(), shadowColor)
    }

    internal fun recordWarmDraw() {
        warmDrawCount++
    }
}

/** A prebuilt Paint/Rect frame; draw() performs one native NinePatch call when available. */
internal class DownwardShadowFrame private constructor(
    private val owner: DownwardShadowTexture,
    private val ninePatch: NinePatch?,
    private val target: RectF?,
    shadowColor: Int,
    private val bitmap: Bitmap? = null,
    private val source: Array<Rect>? = null,
    private val destination: Array<RectF>? = null,
) {
    internal constructor(owner: DownwardShadowTexture, ninePatch: NinePatch, target: RectF, shadowColor: Int) :
        this(owner, ninePatch, target, shadowColor, null, null, null)

    internal constructor(owner: DownwardShadowTexture, bitmap: Bitmap, source: Array<Rect>, destination: Array<RectF>, shadowColor: Int) :
        this(owner, null, null, shadowColor, bitmap, source, destination)

    private val paint = Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG).apply {
        colorFilter = PorterDuffColorFilter(shadowColor, PorterDuff.Mode.SRC_IN)
    }

    fun draw(canvas: Canvas) {
        owner.recordWarmDraw()
        if (ninePatch != null) {
            ninePatch.setPaint(paint)
            ninePatch.draw(canvas, requireNotNull(target))
            return
        }
        val image = requireNotNull(bitmap)
        val sources = requireNotNull(source)
        val destinations = requireNotNull(destination)
        for (index in sources.indices) canvas.drawBitmap(image, sources[index], destinations[index], paint)
    }
}
