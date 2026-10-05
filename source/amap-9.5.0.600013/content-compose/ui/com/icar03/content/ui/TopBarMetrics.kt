package com.icar03.content.ui

import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

/** Shared top-bar dimensions; the caller decides which measured viewport is compact. */
object TopBarMetrics {
    fun height(compact: Boolean): Dp = if (compact) 60.dp else 72.dp
    fun textSize(extremelyNarrow: Boolean = false): TextUnit = if (extremelyNarrow) 22.sp else 26.sp
    fun batterySize(compact: Boolean): Dp = if (compact) 30.dp else 38.dp
}
