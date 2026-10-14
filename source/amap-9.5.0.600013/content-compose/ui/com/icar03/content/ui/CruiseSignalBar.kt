package com.icar03.content.ui

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.ColorFilter
import androidx.compose.ui.graphics.ColorMatrix
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.TextUnit
import androidx.compose.ui.unit.sp

enum class CruiseSignalDirection { UTurn, Left, Straight, Right }
enum class CruiseSignalColor { Red, Green, Yellow }
// The original green lamp's intensity and alpha retain its ring/shading for yellow.
// Multiplying green pixels by yellow cannot add the missing red channel.
private val yellowLampFilter = ColorFilter.colorMatrix(ColorMatrix(floatArrayOf(
    0f, 1f, 0f, 0f, 0f,
    0f, 176f / 255f, 0f, 0f, 0f,
    0f, 32f / 255f, 0f, 0f, 0f,
    0f, 0f, 0f, 1f, 0f,
)))
data class CruiseSignalItem(
    val direction: CruiseSignalDirection,
    val color: CruiseSignalColor,
    val seconds: Int? = null,
)
data class CruiseSignalState(val lights: List<CruiseSignalItem> = emptyList())

/** Shared with top-bar text measurement. Natural image/text widths, never equal-width slots. */
object CruiseSignalMetrics {
    fun lampSize(compact: Boolean) = if (compact) 30.dp else 36.dp
    fun textSize(compact: Boolean) = if (compact) 20.sp else 24.sp
    fun numberGap(compact: Boolean) = if (compact) 2.dp else 4.dp
    fun itemGap(compact: Boolean) = if (compact) 4.dp else 6.dp
    fun height(compact: Boolean) = if (compact) 40.dp else 44.dp
}

/** Native cruise facts and original Android HMI image assets; no countdown clock or inferred phase. */
@Composable
fun CruiseSignalBar(
    state: CruiseSignalState,
    modifier: Modifier = Modifier,
    compact: Boolean = false,
    textSize: TextUnit = CruiseSignalMetrics.textSize(compact),
) {
    if (state.lights.isEmpty()) return
    val lights = remember(state.lights) {
        val order = listOf(CruiseSignalDirection.Left, CruiseSignalDirection.Straight,
            CruiseSignalDirection.Right, CruiseSignalDirection.UTurn)
        state.lights.distinctBy { it.direction }.sortedBy { order.indexOf(it.direction) }
    }
    Row(modifier.height(CruiseSignalMetrics.height(compact)).testTag("cruise-signal-bar")
        .semantics { contentDescription = "下个路口红绿灯" },
        horizontalArrangement = Arrangement.spacedBy(CruiseSignalMetrics.itemGap(compact)),
        verticalAlignment = Alignment.CenterVertically) {
        lights.forEach { light ->
            val seconds = light.seconds?.takeIf { it > 0 }
            val description = buildString {
                append(when (light.direction) {
                    CruiseSignalDirection.UTurn -> "调头"
                    CruiseSignalDirection.Left -> "左转"
                    CruiseSignalDirection.Straight -> "直行"
                    CruiseSignalDirection.Right -> "右转"
                })
                append(if (light.color == CruiseSignalColor.Red) "红灯"
                    else if (light.color == CruiseSignalColor.Yellow) "黄灯" else "绿灯")
                append(seconds?.let { "，${it}秒" } ?: "，暂无倒计时")
            }
            val color = when (light.color) {
                CruiseSignalColor.Red -> Color(0xFFF05151)
                CruiseSignalColor.Yellow -> Color(0xFFFFB020)
                CruiseSignalColor.Green -> Color(0xFF35C862)
            }
            Row(Modifier.height(CruiseSignalMetrics.height(compact))
                .testTag("cruise-signal-${light.direction.name}")
                .semantics(mergeDescendants = true) { contentDescription = description },
                horizontalArrangement = Arrangement.spacedBy(CruiseSignalMetrics.numberGap(compact)),
                verticalAlignment = Alignment.CenterVertically) {
                SignalLamp(light, compact)
                seconds?.let {
                    Text(it.toString(), color = color,
                        fontSize = textSize, fontWeight = FontWeight.Normal, maxLines = 1,
                        modifier = Modifier.testTag("cruise-signal-seconds-${light.direction.name}"))
                }
            }
        }
    }
}

@Composable
private fun SignalLamp(light: CruiseSignalItem, compact: Boolean) {
    val lampSize = CruiseSignalMetrics.lampSize(compact)
    val background = if (light.color == CruiseSignalColor.Red) R.drawable.content_oem_cruise_red
        else R.drawable.content_oem_cruise_green
    Box(Modifier.size(lampSize).testTag("cruise-signal-lamp-${light.direction.name}"),
        contentAlignment = Alignment.Center) {
        Image(painterResource(background), contentDescription = null,
            modifier = Modifier.matchParentSize(), contentScale = ContentScale.FillBounds,
            colorFilter = if (light.color == CruiseSignalColor.Yellow) yellowLampFilter else null)
        // FloatViewUtils.TYPE_DIRECTIONS[0] is 0: preserve its no-arrow treatment for UTurn.
        val arrow = when (light.direction) {
            CruiseSignalDirection.Left -> R.drawable.content_oem_cruise_left
            CruiseSignalDirection.Straight -> R.drawable.content_oem_cruise_straight
            CruiseSignalDirection.Right -> R.drawable.content_oem_cruise_right
            CruiseSignalDirection.UTurn -> null
        }
        arrow?.let {
            val straight = light.direction == CruiseSignalDirection.Straight
            Image(painterResource(it), contentDescription = null,
                modifier = Modifier.size(lampSize * (if (straight) 19f else 27f) / 60f,
                    lampSize * (if (straight) 27f else 19f) / 60f),
                contentScale = ContentScale.FillBounds)
        }
    }
}
