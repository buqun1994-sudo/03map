package com.icar03.content.ui

import com.icar03.content.model.LyricPreferenceRules

/** A single projection for the fixed settings sample and the actual lyric renderer. */
internal data class LyricRenderStyle(
    val normalSizeSp: Float,
    val currentSizeSp: Float,
    val lineGapDp: Float,
    val alignment: String,
    val normalColor: Int,
    val currentColor: Int,
    val immersive: Boolean = false,
)

internal fun lyricRenderStyle(state: ContentUiState, immersive: Boolean = false): LyricRenderStyle {
    val ordinaryNormal = LyricPreferenceRules.fontSize(state.lyricsFontSizeSp)
    val ordinaryCurrent = if (state.lyricsHighlight)
        LyricPreferenceRules.currentFontSize(state.lyricsCurrentFontSizeSp, ordinaryNormal) else ordinaryNormal
    val normal = if (immersive) LyricPreferenceRules.immersiveFontSize(state.lyricsImmersiveFontSizeSp) else ordinaryNormal
    val current = if (immersive) normal * ordinaryCurrent / ordinaryNormal else ordinaryCurrent
    val theme = if (state.dark) 0xFFFFFFFF.toInt() else 0xFF27303B.toInt()
    fun color(mode: String, custom: Int): Int = when (LyricPreferenceRules.colorMode(mode)) {
        "system" -> LyricPreferenceRules.opaqueColor(state.lyricsSystemAccentColor)
        "custom" -> LyricPreferenceRules.opaqueColor(custom)
        else -> theme
    }
    return LyricRenderStyle(
        normal, current, if (immersive) LyricPreferenceRules.immersiveLineGap(state.lyricsImmersiveLineGapDp)
            else LyricPreferenceRules.lineGap(state.lyricsLineGapDp),
        LyricPreferenceRules.alignment(state.lyricsAlignment),
        color(state.lyricsColorMode, state.lyricsCustomColor),
        color(state.lyricsCurrentColorMode, state.lyricsCurrentCustomColor), immersive,
    )
}
