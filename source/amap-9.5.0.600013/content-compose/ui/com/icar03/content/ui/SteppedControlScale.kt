package com.icar03.content.ui

import kotlin.math.ceil

/** Full-height manual bands; zero is empty fill, outside the bands. */
internal class SteppedControlScale(val maximum: Int) {
    init { require(maximum > 0) { "A stepped control needs at least one manual level" } }

    fun fraction(level: Int): Float = level.coerceIn(0, maximum).toFloat() / maximum

    fun boundary(level: Int, height: Float): Float =
        if (!height.isFinite() || height <= 0f) 0f
        else (height.toDouble() * (maximum - level.coerceIn(0, maximum)) / maximum).toFloat()

    fun levelAt(y: Float, height: Float): Int {
        if (!y.isFinite() || !height.isFinite() || height <= 0f) return 0
        if (y <= 0f) return maximum
        if (y >= height) return 0
        return ceil((height.toDouble() - y) * maximum / height).toInt().coerceIn(1, maximum)
    }
}
