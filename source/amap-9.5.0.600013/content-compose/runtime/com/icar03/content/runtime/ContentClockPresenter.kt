package com.icar03.content.runtime

import com.icar03.content.ui.ClockText
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.TimeZone

/** Thread-confined wall-clock projection. Media position never owns this clock. */
internal class ContentClockPresenter(private val locale: Locale) {
    private var zoneId: String? = null
    private var zone: TimeZone? = null
    private var minuteFormatter: SimpleDateFormat? = null
    private var secondFormatter: SimpleDateFormat? = null
    private var weekdayFormatter: SimpleDateFormat? = null
    private val date = Date(0L)
    private var lastBucket = Long.MIN_VALUE
    private var lastLocalDay = Long.MIN_VALUE
    private var lastSeconds = false
    private var lastWeekday = false
    private var text = ClockText()

    // Low-frequency counters, not per-frame logs or allocation probes.
    internal var timeFormatCount = 0L
        private set
    internal var weekdayFormatCount = 0L
        private set

    fun invalidate() {
        zoneId = null
        lastBucket = Long.MIN_VALUE
        lastLocalDay = Long.MIN_VALUE
    }

    fun project(nowMillis: Long, showSeconds: Boolean, showWeekday: Boolean): ClockText {
        if (nowMillis <= 0L) {
            lastBucket = Long.MIN_VALUE
            lastLocalDay = Long.MIN_VALUE
            if (text.time != "--:--" || text.weekday.isNotEmpty()) text = ClockText()
            return text
        }
        val currentZone = TimeZone.getDefault()
        val changedZone = zoneId != currentZone.id || zone?.hasSameRules(currentZone) != true
        if (changedZone) {
            zone = currentZone
            zoneId = currentZone.id
            minuteFormatter = SimpleDateFormat("HH:mm", locale).apply { timeZone = currentZone }
            secondFormatter = SimpleDateFormat("HH:mm:ss", locale).apply { timeZone = currentZone }
            weekdayFormatter = SimpleDateFormat("EEEE", locale).apply { timeZone = currentZone }
            lastBucket = Long.MIN_VALUE
            lastLocalDay = Long.MIN_VALUE
        }
        val bucket = nowMillis / if (showSeconds) 1_000L else 60_000L
        // Divide before adding the small UTC offset to avoid overflowing epoch milliseconds.
        val localDay = floorDivide(nowMillis % 86_400_000L + currentZone.getOffset(nowMillis), 86_400_000L) +
            nowMillis / 86_400_000L
        if (bucket == lastBucket && localDay == lastLocalDay && showSeconds == lastSeconds && showWeekday == lastWeekday) return text
        date.time = nowMillis
        var time = text.time
        if (bucket != lastBucket || showSeconds != lastSeconds) {
            time = (if (showSeconds) secondFormatter else minuteFormatter)!!.format(date)
            timeFormatCount++
        }
        var weekday = text.weekday
        if (!showWeekday) weekday = ""
        else if (localDay != lastLocalDay || !lastWeekday) {
            weekday = weekdayFormatter!!.format(date)
            weekdayFormatCount++
        }
        lastBucket = bucket
        lastLocalDay = localDay
        lastSeconds = showSeconds
        lastWeekday = showWeekday
        if (text.time != time || text.weekday != weekday) text = ClockText(time, weekday)
        return text
    }

    private fun floorDivide(value: Long, positiveDivisor: Long): Long =
        value / positiveDivisor - if (value % positiveDivisor < 0L) 1L else 0L
}
