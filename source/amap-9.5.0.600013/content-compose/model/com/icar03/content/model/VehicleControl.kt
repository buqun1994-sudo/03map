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
    Massage("seat_massage", "座椅按摩", listOf(0, 3, 2, 1));

    val maxLevel: Int = cycle.max()
    val maxManualLevel: Int = cycle.filter { it != automaticLevel }.max()
    fun isLevel(level: Int): Boolean = level in cycle
    fun normalizeLevel(level: Int): Int = if (isLevel(level)) level else -1
    fun isAutomatic(level: Int): Boolean = automaticLevel >= 0 && level == automaticLevel

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
