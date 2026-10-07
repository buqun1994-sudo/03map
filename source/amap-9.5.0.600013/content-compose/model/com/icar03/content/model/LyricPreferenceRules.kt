package com.icar03.content.model

import kotlin.math.roundToInt

/**
 * One owner for the user-facing lyric preference ranges and stable string values.
 *
 * The UI may call these helpers directly; Store and preference migration use the
 * same normalizers so malformed input cannot create a second interpretation.
 */
object LyricPreferenceRules {
    const val DEFAULT_FONT_SP: Float = 50f
    const val DEFAULT_CURRENT_SP: Float = 50f
    const val DEFAULT_HIGHLIGHT: Boolean = false
    const val CURRENT_FONT_EXTRA_SP: Float = 60f
    const val DEFAULT_GAP_DP: Float = 28f
    const val DEFAULT_IMMERSIVE_FONT_SP: Float = 120f
    const val DEFAULT_IMMERSIVE_CURRENT_SP: Float = 144f
    const val DEFAULT_IMMERSIVE_GAP_DP: Float = 84f
    const val DEFAULT_ALIGNMENT: String = "left"
    const val DEFAULT_COLOR_MODE: String = "theme"
    const val DEFAULT_CUSTOM_COLOR: Int = -10721601
    const val DEFAULT_SYSTEM_ACCENT_COLOR: Int = -15037185

    val FONT_RANGE: ClosedFloatingPointRange<Float> = 28f..72f
    val CURRENT_FONT_RANGE: ClosedFloatingPointRange<Float> = 28f..132f
    val GAP_RANGE: ClosedFloatingPointRange<Float> = 0f..64f
    val IMMERSIVE_FONT_RANGE: ClosedFloatingPointRange<Float> = 64f..192f
    val IMMERSIVE_CURRENT_FONT_RANGE: ClosedFloatingPointRange<Float> = 64f..252f
    val IMMERSIVE_GAP_RANGE: ClosedFloatingPointRange<Float> = 0f..192f

    /** Normalize to the one-spaced slider grid, with non-finite values at the default. */
    @JvmStatic
    fun fontSize(value: Float): Float = normalizeStep(value, FONT_RANGE, DEFAULT_FONT_SP)

    /** Normalize current-line size and keep it at least as large as the ordinary size. */
    @JvmStatic
    fun currentFontSize(value: Float, normal: Float): Float {
        val safeNormal = fontSize(normal)
        return normalizeStep(value, CURRENT_FONT_RANGE, DEFAULT_CURRENT_SP)
            .coerceIn(safeNormal, safeNormal + CURRENT_FONT_EXTRA_SP)
    }

    /** Normalize to the one-dp slider grid. */
    @JvmStatic
    fun lineGap(value: Float): Float = normalizeStep(value, GAP_RANGE, DEFAULT_GAP_DP)

    /** Normalize the immersive/full-screen lyric font to a two-sp step grid. */
    @JvmStatic
    fun immersiveFontSize(value: Float): Float =
        normalizeStep(value, IMMERSIVE_FONT_RANGE, DEFAULT_IMMERSIVE_FONT_SP, 2)

    /** Normalize the immersive/current-line lyric font to a two-sp step grid and keep it at least as large as the immersive normal size. */
    @JvmStatic
    fun immersiveCurrentFontSize(value: Float, normal: Float): Float {
        val safeNormal = immersiveFontSize(normal)
        return normalizeStep(value, IMMERSIVE_CURRENT_FONT_RANGE, DEFAULT_IMMERSIVE_CURRENT_SP, 2)
            .coerceIn(safeNormal, safeNormal + CURRENT_FONT_EXTRA_SP)
    }

    /** Normalize the immersive/full-screen lyric gap to a two-dp step grid. */
    @JvmStatic
    fun immersiveLineGap(value: Float): Float =
        normalizeStep(value, IMMERSIVE_GAP_RANGE, DEFAULT_IMMERSIVE_GAP_DP, 2)

    @JvmStatic
    fun alignment(value: String?): String = when (value) {
        "left", "center", "right" -> value!!
        else -> DEFAULT_ALIGNMENT
    }

    @JvmStatic
    fun colorMode(value: String?): String = when (value) {
        "theme", "system", "custom" -> value!!
        else -> DEFAULT_COLOR_MODE
    }

    /** User colors are always stored and projected as opaque ARGB. */
    @JvmStatic
    fun opaqueColor(value: Int): Int = value or 0xFF000000.toInt()

    private fun normalizeStep(
        value: Float,
        range: ClosedFloatingPointRange<Float>,
        fallback: Float,
        step: Int = 1,
    ): Float {
        if (!value.isFinite()) return fallback
        return ((value / step).roundToInt().toFloat() * step)
            .coerceIn(range.start, range.endInclusive)
    }
}
