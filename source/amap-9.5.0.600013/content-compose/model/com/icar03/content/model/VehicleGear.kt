package com.icar03.content.model

/** Confirmed vehicle transmission state; Unknown never implies a driving gear. */
enum class VehicleGear {
    Unknown, Park, Reverse, Neutral, Drive;

    fun isNonPark(): Boolean = this == Reverse || this == Neutral || this == Drive
}

/** The public CURRENT_GEAR bit enum and the S56 selector are different wire contracts. */
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

    /** S56_HQX GEAR_SELECTION, validated against Vehicle HAL and SmartScene. */
    @JvmStatic
    fun fromGearSelection(raw: Int?): VehicleGear = when (raw) {
        1 -> VehicleGear.Drive
        9 -> VehicleGear.Reverse
        10 -> VehicleGear.Neutral
        11 -> VehicleGear.Park
        else -> VehicleGear.Unknown
    }
}
