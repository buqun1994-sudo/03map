package com.icar03.content.ui

import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.MarqueeSpacing
import androidx.compose.foundation.basicMarquee
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.key
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.style.TextOverflow

internal val MarqueeEligible = SemanticsPropertyKey<Boolean>("MarqueeEligible")

/** Foundation measures real overflow; the scene owner stops work when metadata is occluded. */
@OptIn(ExperimentalFoundationApi::class)
@Composable
internal fun MarqueeText(
    text: String,
    modifier: Modifier = Modifier,
    style: TextStyle,
    color: Color = Color.Unspecified,
) {
    val geometry = LocalContentGeometry.current
    val visible = contentDrawingVisible()
    key(text) {
        Text(
            text,
            modifier.semantics { this[MarqueeEligible] = visible }.basicMarquee(
                iterations = if (visible) Int.MAX_VALUE else 0,
                initialDelayMillis = 700,
                repeatDelayMillis = 0,
                spacing = MarqueeSpacing(geometry.dp(24f)),
                velocity = geometry.dp(28f),
            ),
            style = style,
            color = color,
            maxLines = 1,
            softWrap = false,
            overflow = TextOverflow.Clip,
        )
    }
}
