package com.icar03.content.runtime

import com.autonavi.amapauto.content.ContentState
import org.junit.Assert.assertEquals
import org.junit.Test

class IcarThemeAccentTest {
    @Test fun publicThemeKeysReuseTheVerifiedDayAndNightPalette() {
        assertEquals(0xFF92B5CD.toInt(), IcarThemeAccent.resolve(31, nightMode = false))
        assertEquals(0xFFB5D3E2.toInt(), IcarThemeAccent.resolve(31, nightMode = true))
        assertEquals(0xFF5C66BF.toInt(), IcarThemeAccent.resolve(32, nightMode = true))
        assertEquals(0xFFDE5185.toInt(), IcarThemeAccent.resolve(33, nightMode = true))
        assertEquals(0xFFFDFD54.toInt(), IcarThemeAccent.resolve(35, nightMode = false))
    }

    @Test fun unknownOrUnreadableThemeKeyFallsBackToVehicleBlue() {
        assertEquals(IcarThemeAccent.DEFAULT_ACCENT, IcarThemeAccent.resolve(null, nightMode = false))
        assertEquals(IcarThemeAccent.DEFAULT_ACCENT, IcarThemeAccent.resolve(999, nightMode = true))
    }

    @Test fun nightChoiceComesFromAmapThemeFactCaller() {
        assertEquals(0xFF92B5CD.toInt(), IcarThemeAccent.resolve(31, ContentState.THEME_LIGHT == ContentState.THEME_DARK))
        assertEquals(0xFFB5D3E2.toInt(), IcarThemeAccent.resolve(31, ContentState.THEME_DARK == ContentState.THEME_DARK))
    }
}
