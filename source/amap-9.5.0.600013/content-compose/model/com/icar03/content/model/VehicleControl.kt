package com.icar03.content.model

/** Product control contract shared by the real Store, UI and preview.
 * No vehicle protocol numbers, Android services, UI colors or simulation live here.
 * Snapshot mode integers remain stable across the existing Java/Kotlin boundary. */
enum class VehicleControl(
    val id: String,
    val label: String,
    private val cycle: List<Int>,
    val automaticLevel: Int = -1,
) {
    Lock("lock", "车锁", listOf(0, 1)),
    SteeringHeat("steering_heating", "方向盘加热", listOf(0, 2, 1, 3), automaticLevel = 3),
    Ventilation("seat_ventilation", "座椅通风", listOf(0, 3, 2, 1)),
    Heating("seat_heating", "主驾座椅加热", listOf(0, 3, 2, 1, 4), automaticLevel = 4),
    PassengerHeating("passenger_seat_heating", "副驾座椅加热", listOf(0, 3, 2, 1, 4), automaticLevel = 4),
    Massage("seat_massage", "座椅按摩", listOf(0, 3, 2, 1)),
    Wiper("front_wiper", "雨刮器", listOf(0, 1, 2, 3, 4, 5), automaticLevel = 5);

    val maxLevel: Int = cycle.max()
    val maxManualLevel: Int = cycle.filter { it != automaticLevel }.max()
    val defaultManualLevel: Int = 1
    fun isLevel(level: Int): Boolean = level in cycle
    fun normalizeLevel(level: Int): Int = if (isLevel(level)) level else -1
    fun isAutomatic(level: Int): Boolean = automaticLevel >= 0 && level == automaticLevel
    fun isManualLevel(level: Int): Boolean = level > 0 && isLevel(level) && !isAutomatic(level)
    fun rememberedManualLevel(level: Int): Int = if (isManualLevel(level)) level else defaultManualLevel

    /** Power restores only confirmed manual memory; AUTO and OFF never replace it. */
    fun powerToggleLevel(actual: Int, remembered: Int): Int =
        if (!isLevel(actual)) -1 else if (actual == 0) rememberedManualLevel(remembered) else 0

    /** Automatic is its own switch, including manual -> AUTO and AUTO -> OFF. */
    fun automaticToggleLevel(actual: Int): Int =
        if (!isLevel(actual) || automaticLevel < 0) -1 else if (isAutomatic(actual)) 0 else automaticLevel

    /** Unknown never fabricates an OFF or an executable next target. */
    fun nextLevel(level: Int): Int {
        val index = cycle.indexOf(level)
        return if (index < 0) -1 else cycle[(index + 1) % cycle.size]
    }

    fun crossesPowerBoundary(level: Int): Boolean {
        val next = nextLevel(level)
        return next >= 0 && (level == 0) != (next == 0)
    }

    companion object {
        @JvmStatic fun fromId(id: String?): VehicleControl? = entries.firstOrNull { it.id == id }
    }
}
