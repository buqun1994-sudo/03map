package com.icar03.content.runtime

import android.graphics.Bitmap
import android.graphics.Color
import kotlin.math.max
import kotlin.math.roundToInt

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
