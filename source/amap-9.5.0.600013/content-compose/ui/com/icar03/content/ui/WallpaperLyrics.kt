package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas as NativeCanvas
import android.graphics.Color as NativeColor
import android.graphics.Paint
import android.graphics.BlurMaskFilter
import android.graphics.LinearGradient
import android.graphics.PorterDuff
import android.graphics.PorterDuffXfermode
import android.graphics.Shader
import android.graphics.Typeface
import android.text.Layout
import android.text.StaticLayout
import android.text.TextPaint
import androidx.compose.animation.core.CubicBezierEasing
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.graphics.drawscope.drawIntoCanvas
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.*
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.unit.dp
import kotlin.math.max
import kotlin.math.roundToInt

internal val ActiveLyric = SemanticsPropertyKey<Int>("ActiveLyric")

/** Native projection of 03lyrics' transparent wallpaper viewport, including API28 blur.
 * Rasterized text is cached only for nearby lines. Scrolling never changes media progress.
 */
@Composable
internal fun WallpaperLyrics(lyrics: LyricsState, dark: Boolean, modifier: Modifier = Modifier) {
    BoxWithConstraints(modifier.fillMaxSize().clipToBounds().testTag("wallpaper-lyrics")) {
        val density = LocalDensity.current
        val width = with(density) { (maxWidth - 32.dp).toPx() }.roundToInt().coerceAtLeast(1)
        val height = with(density) { maxHeight.toPx() }
        val scale = (width / 608f).coerceIn(.65f, 1f) * density.fontScale.coerceIn(.85f, 1.3f)
        val active = lyrics.activeIndex.coerceIn(-1, lyrics.lines.lastIndex)
        val focus = max(0, active)
        val measured = remember(lyrics.lines, width, dark, scale) {
            lyrics.lines.map { prepareRow(it, width, scale, false, dark, 3, false) }
        }
        val rows = remember(measured, active) {
            measured.toMutableList().also { if (active >= 0) it[active] = prepareRow(lyrics.lines[active], width, scale, true, dark, 0, false) }
        }
        val tops = remember(rows) {
            FloatArray(rows.size + 1).also { positions -> rows.forEachIndexed { i, row -> positions[i + 1] = positions[i] + row.height } }
        }
        val target = if (rows.isEmpty()) 0f else height * .48f - tops[focus] - rows[focus].height / 2f
        val offset by animateFloatAsState(target, tween(220, easing = CubicBezierEasing(.22f, .75f, .18f, 1f)), label = "wallpaper-lyrics-position")
        // Rendering at most the current neighbourhood bounds cached bitmap memory.
        val rendered = remember(lyrics.lines, active, width, dark, scale) {
            if (rows.isEmpty()) emptyMap()
            else (max(0, focus - 5)..minOf(rows.lastIndex, focus + 5)).associateWith { index ->
                prepareRow(lyrics.lines[index], width, scale, index == active, dark,
                    kotlin.math.abs(index - focus), index < focus - 2).rasterize()
            }
        }
        val imagePaint = remember { Paint(Paint.ANTI_ALIAS_FLAG or Paint.FILTER_BITMAP_FLAG) }
        val mask = remember(height, scale) {
            val edge = (64f * scale / height.coerceAtLeast(1f)).coerceIn(0f, .25f)
            Paint().apply {
                shader = LinearGradient(0f, 0f, 0f, height.coerceAtLeast(1f),
                    intArrayOf(NativeColor.TRANSPARENT, NativeColor.BLACK, NativeColor.BLACK, NativeColor.TRANSPARENT),
                    floatArrayOf(0f, edge, 1f - edge, 1f), Shader.TileMode.CLAMP)
                xfermode = PorterDuffXfermode(PorterDuff.Mode.DST_IN)
            }
        }
        Canvas(Modifier.fillMaxSize().semantics {
            this[ActiveLyric] = active
            text = AnnotatedString(lyrics.lines.getOrNull(active)?.text.orEmpty())
            stateDescription = if (lyrics.timelineReady) "同步歌词" else "等待可信播放进度"
        }) {
            drawIntoCanvas { canvas ->
                val native = canvas.nativeCanvas
                val saved = native.saveLayer(0f, 0f, size.width, size.height, null)
                rendered.forEach { (index, bitmap) ->
                    val y = tops[index] + offset
                    if (y + bitmap.height >= 0 && y <= size.height) native.drawBitmap(bitmap, (size.width - width) / 2f, y, imagePaint)
                }
                native.drawRect(0f, 0f, size.width, size.height, mask)
                native.restoreToCount(saved)
            }
        }
    }
}

private data class NativeLyricRow(
    val original: StaticLayout, val translation: StaticLayout?, val padding: Int, val gap: Int,
) {
    val height: Int = padding * 2 + original.height + (translation?.let { gap + it.height } ?: 0)
    fun rasterize(): Bitmap = Bitmap.createBitmap(original.width, height, Bitmap.Config.ARGB_8888).also { bitmap ->
        val canvas = NativeCanvas(bitmap)
        canvas.translate(0f, padding.toFloat())
        original.draw(canvas)
        if (translation != null) { canvas.translate(0f, (original.height + gap).toFloat()); translation.draw(canvas) }
    }
}

private fun prepareRow(line: LyricLine, width: Int, scale: Float, active: Boolean, dark: Boolean, distance: Int, past: Boolean): NativeLyricRow {
    val color = if (dark) NativeColor.WHITE else NativeColor.rgb(39, 48, 59)
    val opacity = if (active) 1f else if (distance <= 2) .63f else if (past) .34f else .43f
    val blur = if (active) 0f else if (distance <= 2) 1.5f else if (past) 2.5f else 2.3f
    fun layout(text: String, fontSize: Float, bold: Boolean, alpha: Float): StaticLayout {
        val paint = TextPaint(Paint.ANTI_ALIAS_FLAG).apply {
            this.color = color
            this.alpha = (alpha * 255).roundToInt()
            textSize = fontSize * scale
            typeface = Typeface.create("sans-serif", if (bold) Typeface.BOLD else Typeface.NORMAL)
            if (blur > 0f) maskFilter = BlurMaskFilter(blur * scale, BlurMaskFilter.Blur.NORMAL)
            setShadowLayer((if (dark) 10f else 4f) * scale, 0f, 2f * scale,
                if (dark) 0xA0000000.toInt() else 0x22000000)
        }
        return StaticLayout.Builder.obtain(text, 0, text.length, paint, width)
            .setAlignment(Layout.Alignment.ALIGN_NORMAL).setIncludePad(false).setLineSpacing(0f, if (fontSize == 28f) 1.22f else 1.3f).build()
    }
    return NativeLyricRow(layout(line.text, if (active) 58f else 42f, active, opacity),
        line.translation.takeIf { it.isNotBlank() }?.let { layout(it, 28f, active, opacity * .8f) },
        (14f * scale).roundToInt(), (2f * scale).roundToInt())
}
