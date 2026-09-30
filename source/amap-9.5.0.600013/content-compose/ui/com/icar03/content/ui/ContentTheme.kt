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
    background = Color(0xFFF4F4F4),
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
    primary = Color(0xFFE8EDF2),
    onPrimary = Color(0xFF101214),
    primaryContainer = Color(0xFF353B43),
    onPrimaryContainer = Color(0xFFF5F7F9),
    secondary = Color(0xFFB9C2CA),
    onSecondary = Color(0xFF101214),
    background = Color(0xFF101214),
    onBackground = Color(0xFFF2F4F6),
    surface = Color(0xFF23272D),
    onSurface = Color(0xFFF2F4F6),
    surfaceVariant = Color(0xFF1B1F24),
    onSurfaceVariant = Color(0xFFB9C2CA),
    surfaceContainer = Color(0xFF2B3037),
    surfaceContainerLow = Color(0xFF191D22),
    surfaceContainerHigh = Color(0xFF353B43),
    outline = Color(0xFF46505B),
)

/** System sans-serif fallback is used; this preview does not claim OEM font embedding. */
@Composable
fun ContentTheme(dark: Boolean, content: @Composable () -> Unit) {
    MaterialTheme(colorScheme = if (dark) DarkColors else LightColors, content = content)
}
