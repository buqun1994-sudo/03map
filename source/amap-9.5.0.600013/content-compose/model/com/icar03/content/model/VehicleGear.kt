package com.icar03.content.model

/** Confirmed vehicle transmission state; Unknown never implies a driving gear. */
enum class VehicleGear { Unknown, Park, Reverse, Neutral, Drive }

/** Automotive's single-value bit enum, plus the target selector-only P compatibility. */
object DrivingGearMapper {
    @JvmStatic
    fun fromCurrentGear(raw: Int?, parkGear: Int = 4): VehicleGear = when (raw) {
        1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096 -> when (raw) {
            parkGear -> VehicleGear.Park
            1 -> VehicleGear.Neutral
            2 -> VehicleGear.Reverse
            else -> VehicleGear.Drive
        }
        else -> VehicleGear.Unknown
    }

    @JvmStatic
    fun fromGearSelection(raw: Int?, parkGear: Int = 4): VehicleGear =
        if (raw == 11) VehicleGear.Park else fromCurrentGear(raw, parkGear)
}
