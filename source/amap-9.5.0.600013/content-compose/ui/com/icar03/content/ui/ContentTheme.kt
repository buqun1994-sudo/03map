package com.icar03.content.ui

import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

private val LightColors = lightColorScheme(
    primary = Color(0xFF27303B),
    onPrimary = Color.White,
    primaryContainer = Color(0xFFE4E4E4),
    onPrimaryContainer = Color(0xFF27303B),
    secondary = Color(0xFF666666),
    onSecondary = Color.White,
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
    MaterialTheme(colorScheme = if (dark) DarkColors else LightColors, content = content)
}
