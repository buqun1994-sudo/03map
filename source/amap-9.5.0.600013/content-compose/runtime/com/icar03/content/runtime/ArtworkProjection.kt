package com.icar03.content.runtime

import android.graphics.Bitmap
import android.graphics.Color
import kotlin.math.max
import kotlin.math.roundToInt
import kotlin.math.exp

/** Sample album colours once and bake a smooth field; the UI only warps its vertices. */
internal fun createAmbientField(source: Bitmap): Bitmap? = try {
    val sampled = Bitmap.createScaledBitmap(source, 32, 32, true)
    val pixels = IntArray(1024)
    sampled.getPixels(pixels, 0, 32, 0, 0, 32, 32)
    if (sampled !== source) sampled.recycle()
    val palette = IntArray(4)
    for (region in 0..3) {
        var r = 0L; var g = 0L; var b = 0L; var count = 0L
        for (y in 0..31) for (x in 0..31) {
            if ((if (x >= 16) 1 else 0) + (if (y >= 16) 2 else 0) != region) continue
            val pixel = pixels[y * 32 + x]
            val weight = Color.alpha(pixel).toLong()
            r += Color.red(pixel) * weight; g += Color.green(pixel) * weight; b += Color.blue(pixel) * weight
            count += weight
        }
        palette[region] = if (count == 0L) Color.TRANSPARENT else Color.rgb((r / count).toInt(), (g / count).toInt(), (b / count).toInt())
    }
    if (palette.all { Color.alpha(it) == 0 }) null else {
        val width = 80
        val output = IntArray(width * width)
        val centers = arrayOf(.08f to .12f, .92f to .28f, .16f to .92f, .86f to .84f)
        for (y in 0 until width) for (x in 0 until width) {
            var r = 0.0; var g = 0.0; var b = 0.0; var total = 0.0
            for (i in 0..3) {
                val dx = x.toDouble() / (width - 1) - centers[i].first
                val dy = y.toDouble() / (width - 1) - centers[i].second
                val weight = exp(-(dx * dx + dy * dy) * 3.5) * Color.alpha(palette[i])
                r += Color.red(palette[i]) * weight; g += Color.green(palette[i]) * weight; b += Color.blue(palette[i]) * weight; total += weight
            }
            output[y * width + x] = Color.rgb((r / total).roundToInt().coerceIn(0, 255), (g / total).roundToInt().coerceIn(0, 255), (b / total).roundToInt().coerceIn(0, 255))
        }
        Bitmap.createBitmap(output, width, width, Bitmap.Config.ARGB_8888)
    }
} catch (_: RuntimeException) { null }

/** Tiny CPU box blur works on API 28; the adapter-owned input is never recycled. */
internal fun softenArtwork(source: Bitmap): Bitmap? = try {
    val ratio = 32f / max(source.width, source.height)
    val width = max(1, (source.width * ratio).roundToInt())
    val height = max(1, (source.height * ratio).roundToInt())
    val small = Bitmap.createScaledBitmap(source, width, height, true)
    val input = IntArray(width * height)
    small.getPixels(input, 0, width, 0, 0, width, height)
    if (small !== source) small.recycle()
    val output = IntArray(input.size)
    for (y in 0 until height) for (x in 0 until width) {
        var alpha = 0; var red = 0; var green = 0; var blue = 0; var count = 0
        for (dy in -3..3) for (dx in -3..3) {
            val pixel = input[(y + dy).coerceIn(0, height - 1) * width + (x + dx).coerceIn(0, width - 1)]
            alpha += Color.alpha(pixel); red += Color.red(pixel); green += Color.green(pixel); blue += Color.blue(pixel); count++
        }
        output[y * width + x] = Color.argb(alpha / count, red / count, green / count, blue / count)
    }
    Bitmap.createBitmap(output, width, height, Bitmap.Config.ARGB_8888)
} catch (_: RuntimeException) { null }
