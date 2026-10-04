package com.icar03.content.ui

import androidx.compose.ui.graphics.Color

/** Pure, shared grid/Dock recipe. Source bytes, geometry and level opacity stay OEM. */
internal data class VehicleControlIconRecipe(
    val resource: Int,
    val asset: String,
    val frames: IntRange,
    val pathColors: Map<Int, Color>,
    val animationColors: Map<List<String>, Color>,
    val animationStrokePathColors: Map<List<String>, Color> = emptyMap(),
    val animationPathOpacities: Map<List<String>, Int> = emptyMap(),
    val playbackSpeed: Float = 1f,
)

/**
 * Launcher DockAcButton -> BaseDockAcButton.setSkinSrc owns these 30fps segments.
 * AUTO here represents the selected automatic mode/A, not a guessed actual heat level:
 * OEM automatic signal1 selects seat gear3 (91..120), wheel gear2 (61..90).
 * Default ThemeLight spells the driver AUTO asset ico_skin_heat_l_auto_bk (no seat).
 * ThemeDark selects ico_skin_seat_heat_l_auto_wh; neither is a guessed bk2 skin.
 */
internal fun vehicleControlIconRecipe(
    control: ControlId, displayed: Int, dark: Boolean,
    base: Color = if (dark) Color.White else Color.Black,
): VehicleControlIconRecipe {
    require(control != ControlId.Lock)
    if (control == ControlId.Wiper) return frontWiperIconRecipe(displayed, dark, base)
    val level = displayed.coerceIn(0, control.maxLevel)
    val automatic = control.isAutomatic(level)
    val active = level > 0
    val passenger = control == ControlId.PassengerHeating
    val side = if (passenger) "r" else "l"
    val suffix = if (dark) "wh" else "bk"
    val accent = when (control) {
        ControlId.Ventilation -> Color(0xFF3FA9FF)
        ControlId.Massage -> Color(0xFFA14FEC)
        else -> Color(0xFFFF6400)
    }
    val body = if (active) accent else base
    val fill = { layer: String -> listOf(layer, "**", "填充 1") }

    if (control == ControlId.SteeringHeat) {
        val gear = if (automatic) 2 else when (level) { 2 -> 0; 1 -> 1; else -> 3 }
        val resource = if (dark) when (level) {
            1 -> R.drawable.content_oem_ico_skin_stwh_heat_1_night
            2 -> R.drawable.content_oem_ico_skin_stwh_heat_2_night
            3 -> R.drawable.content_oem_ico_skin_stwh_heat_auto_0_night
            else -> R.drawable.content_oem_ico_skin_stwh_heat_off_night
        } else when (level) {
            1 -> R.drawable.content_oem_ico_skin_stwh_heat_1_day
            2 -> R.drawable.content_oem_ico_skin_stwh_heat_2_day
            3 -> R.drawable.content_oem_ico_skin_stwh_heat_auto_0_day
            else -> R.drawable.content_oem_ico_skin_stwh_heat_off_day
        }
        val paths = if (automatic) mapOf(0 to accent, 1 to base, 2 to base, 3 to base, 4 to base)
            else mapOf(0 to base, 1 to base, 2 to if (active) accent else base,
                3 to if (level == 2) accent else base, 4 to base)
        return VehicleControlIconRecipe(resource,
            "ico_skin_stwh_heat${if (automatic) "_auto" else ""}_$suffix.json",
            oemGearFrames(gear), paths,
            mapOf(fill("color1") to base, fill("color2") to base,
                fill("color3") to if (active) accent else base,
                // Original wheel variants also name neutral/dim waves this way.
                fill("color9") to base, fill("color12") to base, fill("color13") to base))
    }

    if (automatic) {
        val resource = if (passenger) {
            if (dark) R.drawable.content_oem_ico_skin_seat_heat_r_auto_off_night
            else R.drawable.content_oem_ico_skin_seat_heat_r_auto_off_day
        } else {
            if (dark) R.drawable.content_oem_ico_skin_seat_heat_l_auto_off_night
            else R.drawable.content_oem_ico_skin_seat_heat_l_auto_off_day
        }
        val asset = if (!passenger && !dark) "ico_skin_heat_l_auto_bk.json"
            else "ico_skin_seat_heat_${side}_auto_$suffix.json"
        return VehicleControlIconRecipe(resource, asset, oemGearFrames(3),
            mapOf(0 to base, 1 to base, 2 to base, 3 to body, 4 to body, 5 to accent),
            mapOf(fill("color1") to body, fill("color2") to base, fill("color3") to accent))
    }

    val family = when (control) {
        ControlId.Ventilation -> "ventilate"
        ControlId.Massage -> "massage"
        else -> "heat"
    }
    val gear = when {
        level == 0 -> if (control == ControlId.Heating || passenger) 4 else 3
        control == ControlId.Massage -> level - 1
        else -> control.maxManualLevel - level
    }
    val resource = manualSeatIcon(control, level, dark)
    val colors = when (control) {
        ControlId.Ventilation -> mapOf(
            listOf("**", "组 4", "填充 1") to body,
            listOf("**", "组 5", "填充 1") to body,
            listOf("**", "组 6", "组 1", "填充 1") to if (level == 3) accent else base,
            listOf("**", "组 6", "组 2", "填充 1") to if (level >= 2) accent else base,
            listOf("**", "组 6", "组 3", "填充 1") to if (level >= 1) accent else base)
        ControlId.Massage -> mapOf(fill("color1") to body)
        else -> mapOf(fill("color1") to body, fill("color2") to base,
            fill("color3") to if (active) accent else base)
    }
    // All original wave strokes, including the white transfer stroke in the
    // second wave of gears 2/3, use color2..11 / 描边 1. Preserve opacity, width,
    // trim, transform and path; OFF stays neutral. Do not globally tint fills.
    val strokes = if (control == ControlId.Massage) (2..11).associate {
        listOf("color$it", "**", "描边 1") to body
    } else emptyMap()
    return VehicleControlIconRecipe(resource, "ico_skin_seat_${family}_${side}_$suffix.json",
        oemGearFrames(gear), mapOf(0 to body), colors, strokes)
}

internal fun frontWiperIconRecipe(displayed: Int, dark: Boolean, base: Color): VehicleControlIconRecipe {
    val level = displayed.coerceIn(0, 5)
    val color = if (level > 0) Color(0xFF3FA9FF) else base
    val resource = if (dark) when (level) {
        1 -> R.drawable.content_oem_ico_wiper_1_night
        2 -> R.drawable.content_oem_ico_wiper_2_night
        3 -> R.drawable.content_oem_ico_wiper_3_night
        4 -> R.drawable.content_oem_ico_wiper_4_night
        5 -> R.drawable.content_oem_ico_wiper_auto_night
        else -> R.drawable.content_oem_ico_wiper_0_night
    } else when (level) {
        1 -> R.drawable.content_oem_ico_wiper_1_day
        2 -> R.drawable.content_oem_ico_wiper_2_day
        3 -> R.drawable.content_oem_ico_wiper_3_day
        4 -> R.drawable.content_oem_ico_wiper_4_day
        5 -> R.drawable.content_oem_ico_wiper_auto_day
        else -> R.drawable.content_oem_ico_wiper_0_day
    }
    // No independent original OFF/AUTO Lottie was found. OFF honestly adapts
    // gear1 by suppressing only its Lv1 stroke; AUTO is the registered derived Vector.
    return VehicleControlIconRecipe(resource, if (level == 5) "" else "ico_wiper_${level.coerceIn(1, 4)}.json",
        0..29, (0..8).associateWith { color },
        if (level == 5) emptyMap() else mapOf(listOf("color1", "**", "填充 1") to color),
        if (level == 5) emptyMap() else mapOf(listOf("color1", "**", "描边 1") to color),
        if (level == 0) mapOf(listOf("color1", "**", "Lv1", "描边 1") to 0) else emptyMap())
}

internal fun rearWiperIconRecipe(selected: Boolean, dark: Boolean,
    base: Color = if (dark) Color.White else Color.Black): VehicleControlIconRecipe {
    val color = if (selected) Color(0xFF3FA9FF) else base
    return VehicleControlIconRecipe(
        if (dark) R.drawable.content_oem_ico_rear_wiper_night else R.drawable.content_oem_ico_rear_wiper_day,
        "ico_rear_wiper.json", 0..29, (0..2).associateWith { color },
        mapOf(listOf("color1", "**", "填充 1") to color),
        mapOf(listOf("color1", "**", "描边 1") to color))
}

internal fun rearWashIconRecipe(selected: Boolean, dark: Boolean,
    base: Color = if (dark) Color.White else Color.Black): VehicleControlIconRecipe {
    val color = if (selected) Color(0xFF3FA9FF) else base
    return VehicleControlIconRecipe(R.drawable.content_oem_ico_wash_rear,
        "ico_wash_rear_derived.json", 0..59, (0..9).associateWith { color },
        mapOf(listOf("color1", "**", "填充 1") to color), playbackSpeed = 2f)
}

private fun oemGearFrames(gear: Int): IntRange = (gear * 30 + 1)..(gear * 30 + 30)

private fun manualSeatIcon(control: ControlId, level: Int, dark: Boolean): Int = when (control) {
    ControlId.Ventilation -> if (dark) when (level) {
        1 -> R.drawable.content_oem_ico_skin_seat_ventilate_l_1_color_night
        2 -> R.drawable.content_oem_ico_skin_seat_ventilate_l_2_color_night
        3 -> R.drawable.content_oem_ico_skin_seat_ventilate_l_3_color_night
        else -> R.drawable.content_oem_ico_skin_seat_ventilate_l_off_night
    } else when (level) {
        1 -> R.drawable.content_oem_ico_skin_seat_ventilate_l_1_color_day
        2 -> R.drawable.content_oem_ico_skin_seat_ventilate_l_2_color_day
        3 -> R.drawable.content_oem_ico_skin_seat_ventilate_l_3_color_day
        else -> R.drawable.content_oem_ico_skin_seat_ventilate_l_off_day
    }
    ControlId.Massage -> if (dark) when (level) {
        1 -> R.drawable.content_oem_ico_skin_seat_massage_l_1_night
        2 -> R.drawable.content_oem_ico_skin_seat_massage_l_2_night
        3 -> R.drawable.content_oem_ico_skin_seat_massage_l_3_night
        else -> R.drawable.content_oem_ico_skin_seat_massage_l_off_night
    } else when (level) {
        1 -> R.drawable.content_oem_ico_skin_seat_massage_l_1_day
        2 -> R.drawable.content_oem_ico_skin_seat_massage_l_2_day
        3 -> R.drawable.content_oem_ico_skin_seat_massage_l_3_day
        else -> R.drawable.content_oem_ico_skin_seat_massage_l_off_day
    }
    ControlId.PassengerHeating -> if (dark) when (level) {
        1 -> R.drawable.content_oem_ico_skin_seat_heat_r_1_night
        2 -> R.drawable.content_oem_ico_skin_seat_heat_r_2_night
        3 -> R.drawable.content_oem_ico_skin_seat_heat_r_3_night
        else -> R.drawable.content_oem_ico_skin_seat_heat_r_off_night
    } else when (level) {
        1 -> R.drawable.content_oem_ico_skin_seat_heat_r_1_day
        2 -> R.drawable.content_oem_ico_skin_seat_heat_r_2_day
        3 -> R.drawable.content_oem_ico_skin_seat_heat_r_3_day
        else -> R.drawable.content_oem_ico_skin_seat_heat_r_off_day
    }
    else -> if (dark) when (level) {
        1 -> R.drawable.content_oem_ico_skin_seat_heat_l_1_night
        2 -> R.drawable.content_oem_ico_skin_seat_heat_l_2_night
        3 -> R.drawable.content_oem_ico_skin_seat_heat_l_3_night
        else -> R.drawable.content_oem_ico_skin_seat_heat_l_off_night
    } else when (level) {
        1 -> R.drawable.content_oem_ico_skin_seat_heat_l_1_day
        2 -> R.drawable.content_oem_ico_skin_seat_heat_l_2_day
        3 -> R.drawable.content_oem_ico_skin_seat_heat_l_3_day
        else -> R.drawable.content_oem_ico_skin_seat_heat_l_off_day
    }
}
