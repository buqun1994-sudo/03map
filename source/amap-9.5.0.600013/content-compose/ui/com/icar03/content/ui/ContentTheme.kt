package com.icar03.content.ui

import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.graphics.Color

/**
 * Semantic surfaces owned by the content panel.
 *
 * Fields intentionally remain independent even when two roles currently share an
 * RGB value. This keeps a later visual adjustment local to its owning surface and
 * prevents a Material color token from silently changing another role.
 */
internal data class ContentThemeColors(
    val shortcutBase: Color,
    val shortcutSelected: Color,
    val sliderBase: Color,
    val sliderFill: Color,
    val sliderDivider: Color,
    val dockBase: Color,
    val dockSelected: Color,
    val mediaBase: Color,
    val mediaArtworkBase: Color,
    val mediaPressed: Color,
    val sourceBase: Color,
    val sourceSelected: Color,
    val sheetBase: Color,
)

private val LightContentColors = ContentThemeColors(
    shortcutBase = Color(0xFFE9E9E9),
    shortcutSelected = Color(0xFFE4E4E4),
    sliderBase = Color(0xFFE9E9E9),
    sliderFill = Color.White,
    sliderDivider = Color(0xFFD8D8D8),
    dockBase = Color.White,
    dockSelected = Color(0xFFE9E9E9),
    mediaBase = Color.White,
    mediaArtworkBase = Color(0xFFE9E9E9),
    mediaPressed = Color(0xFFE9E9E9),
    sourceBase = Color.White,
    sourceSelected = Color(0xFFE9E9E9),
    sheetBase = Color.White,
)

private val DarkContentColors = ContentThemeColors(
    shortcutBase = Color(0xFF1A1A1A),
    shortcutSelected = Color(0xFF303030),
    sliderBase = Color(0xFF1A1A1A),
    sliderFill = Color(0xFF484848),
    sliderDivider = Color(0xFF5C5C5C),
    dockBase = Color(0xFF1A1A1A),
    dockSelected = Color(0xFF303030),
    mediaBase = Color(0xFF1A1A1A),
    mediaArtworkBase = Color(0xFF1A1A1A),
    mediaPressed = Color(0xFF303030),
    sourceBase = Color(0xFF1A1A1A),
    sourceSelected = Color(0xFF484848),
    sheetBase = Color(0xFF1A1A1A),
)

/** Semantic content colors are kept separate from Material's generic surface roles. */
internal val LocalContentColors = staticCompositionLocalOf { LightContentColors }

private val LightColors = lightColorScheme(
    primary = Color(0xFF27303B),
    onPrimary = Color.White,
    primaryContainer = Color(0xFFE4E4E4),
    onPrimaryContainer = Color(0xFF27303B),
    secondary = Color(0xFF666666),
    onSecondary = Color.White,
    secondaryContainer = Color(0xFFE9E9E9),
    onSecondaryContainer = Color(0xFF27303B),
    background = Color(0xFFEFF0F7),
    onBackground = Color(0xFF27303B),
    surface = Color.White,
    onSurface = Color(0xFF27303B),
    surfaceVariant = Color(0xFFE9E9E9),
    onSurfaceVariant = Color(0xFF666666),
    surfaceContainer = Color(0xFFE9E9E9),
    surfaceContainerLow = Color(0xFFF4F4F4),
    surfaceContainerHigh = Color(0xFFE2E2E2),
    outline = Color(0xFFD8D8D8),
)

private val DarkColors = darkColorScheme(
    primary = Color(0xFFE8E8E8),
    onPrimary = Color(0xFF0F0F0F),
    primaryContainer = Color(0xFF484848),
    onPrimaryContainer = Color(0xFFF5F5F5),
    secondary = Color(0xFFB9B9B9),
    onSecondary = Color(0xFF0F0F0F),
    secondaryContainer = Color(0xFF303030),
    onSecondaryContainer = Color(0xFFF2F2F2),
    background = Color(0xFF0F0F0F),
    onBackground = Color(0xFFF2F2F2),
    surface = Color(0xFF232323),
    onSurface = Color(0xFFF2F2F2),
    surfaceVariant = Color(0xFF1A1A1A),
    onSurfaceVariant = Color(0xFFB9B9B9),
    surfaceContainer = Color(0xFF232323),
    surfaceContainerLow = Color(0xFF1A1A1A),
    surfaceContainerHigh = Color(0xFF5C5C5C),
    outline = Color(0xFF464646),
)

/** System sans-serif fallback is used; this preview does not claim OEM font embedding. */
@Composable
fun ContentTheme(dark: Boolean, content: @Composable () -> Unit) {
    MaterialTheme(colorScheme = if (dark) DarkColors else LightColors) {
        CompositionLocalProvider(
            LocalContentColors provides if (dark) DarkContentColors else LightContentColors,
            content = content,
        )
    }
}
