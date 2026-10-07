package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Rect
import android.graphics.RectF
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.drawWithCache
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.drawscope.drawIntoCanvas
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import java.util.LinkedHashMap
import kotlin.math.ceil

/** Explicit dx=0/dy=3dp keeps the accepted lighting independent of the Window's light source. */
internal fun Modifier.downwardSoftShadow(
    fill: Color,
    dark: Boolean,
    cornerRadius: Dp = 12.dp,
    cache: DownwardShadowTextureCache = sharedDownwardShadowTextures,
): Modifier = drawWithCache {
    val frame = cache.texture(size, density, cornerRadius.toPx(), fill.toArgb(), dark)?.frame(size)
    onDrawBehind {
        if (frame != null) drawIntoCanvas { frame.draw(it.nativeCanvas) }
    }
}

private val sharedDownwardShadowTextures = DownwardShadowTextureCache()

/**
 * The blurred corners and straight edges are independent of a large surface's width and height.
 * Rasterize a small rounded rectangle once; stretch only its flat central row and column.
 * A translating settings sheet or changing press/content frame then draws bitmap patches only.
 */
internal class DownwardShadowTextureCache(
    private val maximumBytes: Int = 4 * 1024 * 1024,
    private val maximumEntries: Int = 48,
) {
    private val entries = LinkedHashMap<ShadowTextureKey, DownwardShadowTexture>(16, .75f, true)
    var rasterizationCount: Long = 0L
        private set
    var cachedBytes: Int = 0
        private set
    val cachedEntryCount: Int get() = entries.size

    @Synchronized
    fun texture(size: Size, density: Float, cornerRadius: Float, fill: Int, dark: Boolean): DownwardShadowTexture? {
        if (!size.width.isFinite() || !size.height.isFinite() || size.width <= 0f || size.height <= 0f ||
            !density.isFinite() || density <= 0f || !cornerRadius.isFinite()) return null
        val blur = 5f * density
        val offsetY = 3f * density
        val radius = cornerRadius.coerceIn(0f, minOf(size.width, size.height) / 2f)
        // Three blur radii put every stretch seam beyond the curved edge's blur footprint.
        val cap = ceil(radius + blur * 3f).toInt()
        val padding = ceil(blur * 3f + offsetY).toInt() + 1
        fun rasterExtent(value: Float): Int {
            val pixels = ceil(value).toInt()
            val minimum = cap * 2 + 1
            return if (pixels <= minimum) pixels else minimum + ((pixels - minimum) and 1)
        }
        val width = rasterExtent(size.width)
        val height = rasterExtent(size.height)
        // Skia's fractional RRect blur quantizes a tiny mask differently from the real outline.
        // Preserve that outline only while baking; the published texture is still the small one.
        val fractionalMask = blur != blur.toInt().toFloat() || offsetY != offsetY.toInt().toFloat() ||
            radius != radius.toInt().toFloat()
        val key = ShadowTextureKey(
            width, height,
            if (fractionalMask) ceil(size.width).toInt() else width,
            if (fractionalMask) ceil(size.height).toInt() else height,
            radius, blur, offsetY, cap, padding, fill,
            if (dark) 0xA0000000.toInt() else 0x30000000,
        )
        entries[key]?.let { return it }
        val texture = rasterize(key)
        rasterizationCount++
        if (texture.byteCount <= maximumBytes && maximumEntries > 0) {
            entries[key] = texture
            cachedBytes += texture.byteCount
            val iterator = entries.entries.iterator()
            while (cachedBytes > maximumBytes || entries.size > maximumEntries) {
                cachedBytes -= iterator.next().value.byteCount
                // Active draw caches can still reference an evicted bitmap; never recycle it here.
                iterator.remove()
            }
        }
        return texture
    }

    private fun rasterize(key: ShadowTextureKey): DownwardShadowTexture {
        val reference = Bitmap.createBitmap(key.referenceWidth + key.padding * 2,
            key.referenceHeight + key.padding * 2, Bitmap.Config.ARGB_8888)
        val paint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = key.fill
            setShadowLayer(key.blur, 0f, key.offsetY, key.shadow)
        }
        Canvas(reference).drawRoundRect(key.padding.toFloat(), key.padding.toFloat(),
            (key.padding + key.referenceWidth).toFloat(), (key.padding + key.referenceHeight).toFloat(),
            key.radius, key.radius, paint)
        val bitmap = if (key.width == key.referenceWidth && key.height == key.referenceHeight) reference
            else compact(reference, key)
        return DownwardShadowTexture(bitmap, key.width, key.height, key.cap, key.padding)
    }

    /** Copy the real four corners and center edge samples without resampling the native mask. */
    private fun compact(reference: Bitmap, key: ShadowTextureKey): Bitmap {
        val bitmap = Bitmap.createBitmap(key.width + key.padding * 2,
            key.height + key.padding * 2, Bitmap.Config.ARGB_8888)
        fun samples(referenceExtent: Int, contentExtent: Int): IntArray {
            val edge = key.padding + minOf(key.cap, contentExtent / 2)
            val center = contentExtent - minOf(key.cap, contentExtent / 2) * 2
            val middle = (referenceExtent - center) / 2
            return intArrayOf(0, edge, middle, middle + center, referenceExtent - edge, referenceExtent)
        }
        fun destinations(contentExtent: Int): IntArray {
            val edge = key.padding + minOf(key.cap, contentExtent / 2)
            return intArrayOf(0, edge, key.padding * 2 + contentExtent - edge, key.padding * 2 + contentExtent)
        }
        val xSource = samples(reference.width, key.width)
        val ySource = samples(reference.height, key.height)
        val xTarget = destinations(key.width)
        val yTarget = destinations(key.height)
        val canvas = Canvas(bitmap)
        for (y in 0..2) for (x in 0..2) {
            if (xTarget[x] >= xTarget[x + 1] || yTarget[y] >= yTarget[y + 1]) continue
            canvas.drawBitmap(reference,
                Rect(xSource[x * 2], ySource[y * 2], xSource[x * 2 + 1], ySource[y * 2 + 1]),
                Rect(xTarget[x], yTarget[y], xTarget[x + 1], yTarget[y + 1]), null)
        }
        // The full outline was never published; only the compact texture survives the cold bake.
        reference.recycle()
        return bitmap
    }
}

private data class ShadowTextureKey(
    val width: Int, val height: Int, val referenceWidth: Int, val referenceHeight: Int,
    val radius: Float, val blur: Float, val offsetY: Float,
    val cap: Int, val padding: Int, val fill: Int, val shadow: Int,
)

internal class DownwardShadowTexture(
    private val bitmap: Bitmap,
    private val contentWidth: Int,
    private val contentHeight: Int,
    private val cap: Int,
    private val padding: Int,
) {
    val byteCount: Int get() = bitmap.allocationByteCount

    fun frame(size: Size): DownwardShadowFrame {
        val left = minOf(cap, contentWidth / 2)
        val top = minOf(cap, contentHeight / 2)
        val xSource = intArrayOf(0, padding + left, padding + contentWidth - left, bitmap.width)
        val ySource = intArrayOf(0, padding + top, padding + contentHeight - top, bitmap.height)
        val xTarget = floatArrayOf(-padding.toFloat(), left.toFloat(), size.width - left, size.width + padding)
        val yTarget = floatArrayOf(-padding.toFloat(), top.toFloat(), size.height - top, size.height + padding)
        val source = ArrayList<Rect>(9)
        val target = ArrayList<RectF>(9)
        for (y in 0..2) for (x in 0..2) {
            if (xSource[x] >= xSource[x + 1] || ySource[y] >= ySource[y + 1]) continue
            source += Rect(xSource[x], ySource[y], xSource[x + 1], ySource[y + 1])
            target += RectF(xTarget[x], yTarget[y], xTarget[x + 1], yTarget[y + 1])
        }
        return DownwardShadowFrame(bitmap, source.toTypedArray(), target.toTypedArray())
    }
}

/** Patch rectangles and Paint are retained with drawWithCache, with no warm-draw allocations. */
internal class DownwardShadowFrame(
    private val bitmap: Bitmap,
    private val source: Array<Rect>,
    private val target: Array<RectF>,
) {
    private val paint = Paint(Paint.FILTER_BITMAP_FLAG)
    fun draw(canvas: Canvas) {
        for (index in source.indices) canvas.drawBitmap(bitmap, source[index], target[index], paint)
    }
}
