package com.icar03.content.ui

import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Immutable
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.PlatformTextStyle
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.style.LineHeightStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

/** Exact sp line boxes without Android's legacy font padding; retain the system sans font. */
private fun settingsTextStyle(size: Int, line: Int, weight: FontWeight = FontWeight.Normal) = TextStyle(
    fontSize = size.sp, lineHeight = line.sp, fontWeight = weight, fontFamily = FontFamily.SansSerif,
    platformStyle = PlatformTextStyle(includeFontPadding = false),
    lineHeightStyle = LineHeightStyle(LineHeightStyle.Alignment.Center, LineHeightStyle.Trim.Both),
)

/** Settings-only Figma tokens; the host supplies the already resolved Amap theme. */
@Immutable
data class SettingsDesign(
    val dark: Boolean,
    val surfaceOpacity: Float = 1f,
    val page: Color,
    val card: Color,
    val track: Color,
    val pressed: Color,
    val text: Color,
    val secondaryText: Color,
    val divider: Color,
    val offSwitchTrack: Color,
    val onSwitchTrack: Color = Color(0xFF33C458),
    val sliderFill: Color = ContentFunctionalBlue,
    val switchThumb: Color = Color.White,
    val offSwitchThumb: Color = Color.White,
    val rainbowThumbOutline: Color = Color.White,
    val swatchLightInk: Color = Color.White,
    val swatchDarkInk: Color = Color(0xFF27303B),
    val pagePadding: Dp = 24.dp,
    val sectionGap: Dp = 48.dp,
    val itemGap: Dp = 24.dp,
    val smallGap: Dp = 12.dp,
    val controlHeight: Dp = 40.dp,
    val segmentHeight: Dp = 56.dp,
    val switchWidth: Dp = 60.dp,
    val switchHeight: Dp = 30.dp,
    val switchThumbWidth: Dp = 30.dp,
    val switchThumbHeight: Dp = 25.dp,
    val minimumTouchHeight: Dp = 48.dp,
    val colorHeight: Dp = 60.dp,
    val rainbowThumbWidth: Dp = 60.dp,
    val rainbowThumbShape: RoundedCornerShape = RoundedCornerShape(4.dp),
    val navigationHeight: Dp = 78.dp,
    val segmentMinimumWidth: Dp = 64.dp,
    val segmentInset: Dp = 2.dp,
    val segmentCornerRadius: Dp = 8.dp,
    val segmentShape: RoundedCornerShape = RoundedCornerShape(segmentCornerRadius),
    val segmentSelectedShape: RoundedCornerShape = RoundedCornerShape(segmentCornerRadius - segmentInset),
    val selectedText: Color = Color.White,
    val cardCornerRadius: Dp = 8.dp,
    val pageCornerRadius: Dp = 12.dp,
    val cardShape: RoundedCornerShape = RoundedCornerShape(cardCornerRadius),
    val pageShape: RoundedCornerShape = RoundedCornerShape(pageCornerRadius),
    val controlShape: RoundedCornerShape = RoundedCornerShape(50),
    val hueTrackCornerRadius: Dp = 8.dp,
    val hueTrackShape: RoundedCornerShape = RoundedCornerShape(hueTrackCornerRadius),
    val labelStyle: TextStyle = settingsTextStyle(24, 30),
    val valueStyle: TextStyle = settingsTextStyle(24, 30),
    val navigationTitleStyle: TextStyle = settingsTextStyle(24, 30),
    val sectionTitleStyle: TextStyle = settingsTextStyle(26, 33, FontWeight.Bold),
    val pageTitleStyle: TextStyle = settingsTextStyle(28, 36),
    val supportingStyle: TextStyle = settingsTextStyle(18, 24),
    val optionStyle: TextStyle = settingsTextStyle(22, 28),
    val providerIconSize: Dp = 32.dp,
    val providerOptionStyle: TextStyle = settingsTextStyle(24, 30),
) {
    /** All settings choices share the numeric slider's blue; presses keep their neutral wash. */
    val selected: Color get() = sliderFill

    fun paddingFor(@Suppress("UNUSED_PARAMETER") viewportWidth: Dp): Dp = pagePadding
}

private val LightSettingsDesign = SettingsDesign(
    dark = false, page = Color(0xFFF4F4F4), card = Color.White, track = Color(0xFFE9E9E9),
    pressed = Color(0xFFE4E4E4), text = Color(0xFF27303B), secondaryText = Color(0xFF6B7078),
    divider = Color(0xFFE7E7E7), offSwitchTrack = Color(0xFFE1E1E1),
)
private val DarkSettingsDesign = SettingsDesign(
    dark = true, page = Color(0xFF0F0F0F), card = Color(0xFF1A1A1A), track = Color(0xFF303030),
    pressed = Color(0xFF484848), text = Color(0xFFF2F2F2), secondaryText = Color(0xFFB9B9B9),
    divider = Color(0xFF353535), offSwitchTrack = Color(0xFF454545),
    switchThumb = Color.White, offSwitchThumb = Color(0xFFE8E8E8),
)

fun settingsDesign(dark: Boolean, surfaceOpacity: Float = 1f): SettingsDesign =
    (if (dark) DarkSettingsDesign else LightSettingsDesign).copy(
        surfaceOpacity = surfaceOpacity.takeIf { it.isFinite() }?.coerceIn(.20f, 1f) ?: 1f,
    )
val LocalSettingsDesign = staticCompositionLocalOf { settingsDesign(dark = false) }
