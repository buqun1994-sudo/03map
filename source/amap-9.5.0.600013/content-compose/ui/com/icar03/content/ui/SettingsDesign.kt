package com.icar03.content.ui

import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.runtime.Immutable
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

/** Settings-only tokens. The page owner supplies the already resolved Amap theme. */
@Immutable
data class SettingsDesign(
    val dark: Boolean,
    val page: Color,
    val card: Color,
    val track: Color,
    val selected: Color,
    val text: Color,
    val secondaryText: Color,
    val divider: Color,
    val offSwitchTrack: Color,
    val onSwitchTrack: Color = Color(0xFF27303B),
    val switchThumb: Color = Color.White,
    val offSwitchThumb: Color = Color.White,
    val rainbowThumbOutline: Color = Color.White,
    val swatchLightInk: Color = Color.White,
    val swatchDarkInk: Color = Color(0xFF27303B),
    val rainbowThumbWidth: Dp = 20.dp,
    val rainbowThumbShape: RoundedCornerShape = RoundedCornerShape(8.dp),
    val pagePadding: Dp = 24.dp,
    val narrowPagePadding: Dp = 16.dp,
    val sectionGap: Dp = 28.dp,
    val itemGap: Dp = 12.dp,
    val controlHeight: Dp = 48.dp,
    val navigationHeight: Dp = 76.dp,
    val segmentMinimumWidth: Dp = 64.dp,
    val cardShape: RoundedCornerShape = RoundedCornerShape(10.dp),
    val previewShape: RoundedCornerShape = RoundedCornerShape(10.dp),
    val controlShape: RoundedCornerShape = RoundedCornerShape(50),
    val hueTrackShape: RoundedCornerShape = RoundedCornerShape(8.dp),
    val swatchShape: RoundedCornerShape = RoundedCornerShape(4.dp),
    val shadowElevation: Dp = 1.dp,
    val labelStyle: TextStyle = TextStyle(
        fontSize = 22.sp, lineHeight = 28.sp, fontWeight = FontWeight.Bold,
    ),
    val valueStyle: TextStyle = TextStyle(
        fontSize = 22.sp, lineHeight = 28.sp, fontWeight = FontWeight.Normal,
    ),
    val navigationTitleStyle: TextStyle = TextStyle(
        fontSize = 24.sp, lineHeight = 30.sp, fontWeight = FontWeight.Bold,
    ),
    val pageTitleStyle: TextStyle = TextStyle(
        fontSize = 26.sp, lineHeight = 32.sp, fontWeight = FontWeight.Normal,
    ),
    val supportingStyle: TextStyle = TextStyle(
        fontSize = 14.sp, lineHeight = 20.sp, fontWeight = FontWeight.Normal,
    ),
    val optionStyle: TextStyle = TextStyle(
        fontSize = 18.sp, lineHeight = 24.sp, fontWeight = FontWeight.Medium,
    ),
) {
    fun paddingFor(viewportWidth: Dp): Dp =
        if (viewportWidth < 400.dp) narrowPagePadding else pagePadding
}

private val LightSettingsDesign = SettingsDesign(
    dark = false,
    page = Color(0xFFF4F4F4),
    card = Color.White,
    track = Color(0xFFE9E9E9),
    selected = Color.White,
    text = Color(0xFF27303B),
    secondaryText = Color(0xFF6B7078),
    divider = Color(0xFFD8D8D8),
    offSwitchTrack = Color(0xFFE1E1E1),
)

private val DarkSettingsDesign = SettingsDesign(
    dark = true,
    page = Color(0xFF0F0F0F),
    card = Color(0xFF1A1A1A),
    track = Color(0xFF303030),
    selected = Color(0xFF484848),
    text = Color(0xFFF2F2F2),
    secondaryText = Color(0xFFB9B9B9),
    divider = Color(0xFF3A3A3A),
    offSwitchTrack = Color(0xFF454545),
    onSwitchTrack = Color(0xFFE8E8E8),
    switchThumb = Color(0xFF1A1A1A),
    offSwitchThumb = Color(0xFFE8E8E8),
)

/** Does not inspect uiMode or change ContentThemeColors and its vehicle selected surfaces. */
fun settingsDesign(dark: Boolean): SettingsDesign =
    if (dark) DarkSettingsDesign else LightSettingsDesign

/** Provide this at the settings page root, alongside the existing ContentTheme. */
val LocalSettingsDesign = staticCompositionLocalOf { settingsDesign(dark = false) }
