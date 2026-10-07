package com.icar03.content.model

import org.junit.Assert.assertEquals
import org.junit.Test

class LyricPreferenceRulesTest {
    @Test fun ordinaryAndCurrentFontRangesUseOneSpStepsAndCurrentNeverFallsBelowOrdinary() {
        assertEquals(24f, LyricPreferenceRules.fontSize(0f), 0f)
        assertEquals(64f, LyricPreferenceRules.fontSize(99f), 0f)
        assertEquals(40f, LyricPreferenceRules.fontSize(40.4f), 0f)
        assertEquals(41f, LyricPreferenceRules.fontSize(40.6f), 0f)
        assertEquals(64f, LyricPreferenceRules.currentFontSize(20f, 64f), 0f)
        assertEquals(80f, LyricPreferenceRules.currentFontSize(99f, 64f), 0f)
        assertEquals(48f, LyricPreferenceRules.currentFontSize(Float.NaN, 40f), 0f)
    }

    @Test fun immersiveCurrentFontUsesTwoSpStepsAndNeverFallsBelowImmersiveNormal() {
        assertEquals(64f, LyricPreferenceRules.immersiveCurrentFontSize(0f, 64f), 0f)
        assertEquals(640f, LyricPreferenceRules.immersiveCurrentFontSize(999f, 192f), 0f)
        assertEquals(144f, LyricPreferenceRules.immersiveCurrentFontSize(Float.NaN, 120f), 0f)
        assertEquals(122f, LyricPreferenceRules.immersiveCurrentFontSize(121f, 120f), 0f)
        assertEquals(192f, LyricPreferenceRules.immersiveCurrentFontSize(144f, 192f), 0f)
    }

    @Test fun gapAndImmersiveRulesClampToTheirDeclaredGrids() {
        assertEquals(0f, LyricPreferenceRules.lineGap(-4f), 0f)
        assertEquals(64f, LyricPreferenceRules.lineGap(65f), 0f)
        assertEquals(28f, LyricPreferenceRules.lineGap(27.6f), 0f)
        assertEquals(120f, LyricPreferenceRules.immersiveFontSize(119f), 0f)
        assertEquals(122f, LyricPreferenceRules.immersiveFontSize(121f), 0f)
        assertEquals(84f, LyricPreferenceRules.immersiveLineGap(83f), 0f)
    }

    @Test fun stableStringsAndCustomColorsRecoverIndependently() {
        assertEquals("left", LyricPreferenceRules.alignment("bad"))
        assertEquals("center", LyricPreferenceRules.alignment("center"))
        assertEquals("theme", LyricPreferenceRules.colorMode("bad"))
        assertEquals("custom", LyricPreferenceRules.colorMode("custom"))
        assertEquals(0xFF123456.toInt(), LyricPreferenceRules.opaqueColor(0x00123456))
    }
}
