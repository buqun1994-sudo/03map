package com.icar03.content.ui

import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.awaitFirstDown
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.pointerInput

/** Observe the page ancestor; never introduce another hit target above lyrics or controls. */
internal fun Modifier.observeUnconsumedPageTap(enabled: Boolean, onTap: () -> Unit): Modifier =
    pointerInput(enabled, onTap) {
        if (!enabled) return@pointerInput
        awaitEachGesture {
            val down = awaitFirstDown(requireUnconsumed = false, pass = PointerEventPass.Initial)
            var consumed = false
            var moved = false
            var elapsed = 0L
            do {
                val event = awaitPointerEvent(PointerEventPass.Final)
                if (event.changes.size != 1) moved = true
                val change = event.changes.firstOrNull { it.id == down.id }
                if (change == null) { moved = true; break }
                consumed = consumed || change.isConsumed
                moved = moved || (change.position - down.position).getDistance() > viewConfiguration.touchSlop
                elapsed = change.uptimeMillis - down.uptimeMillis
            } while (event.changes.any { it.pressed })
            if (!consumed && !moved && elapsed <= viewConfiguration.longPressTimeoutMillis) onTap()
        }
    }
