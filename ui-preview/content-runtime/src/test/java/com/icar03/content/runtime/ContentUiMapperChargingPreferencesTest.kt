package com.icar03.content.runtime

import com.autonavi.amapauto.content.ContentState
import com.icar03.content.ui.ContentUiState
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotSame
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ContentUiMapperChargingPreferencesTest {
    private val off = com.autonavi.amapauto.content.ContentPorts.SystemSnapshot(false, 0)
    private val capabilities = RuntimeCapabilities()

    private fun vehicle(state: ContentState.() -> Unit): ContentState = ContentState().apply {
        vehicleDataAvailable = true
        vehiclePreview = false
        state()
    }

    private fun map(state: ContentState): ContentUiState =
        ContentUiMapper().mapShell(state, off, off, capabilities)

    @Test fun chargingDetailsAreFilteredIndependentlyAndDoNotInventChargingFallback() {
        val noDetails = map(vehicle {
            chargeState = ContentState.CHARGE_CHARGING
            chargeRemainingMinutes = 32
            chargePowerKw = 7.2f
            showChargingRemainingTime = false
            showChargingPower = false
        })
        assertNull(noDetails.chargeStatus)

        val remainingOnly = map(vehicle {
            chargeState = ContentState.CHARGE_CHARGING
            chargeRemainingMinutes = 32
            chargePowerKw = 7.2f
            showChargingRemainingTime = true
            showChargingPower = false
        })
        assertEquals("剩余32分钟", remainingOnly.chargeStatus)

        val powerOnly = map(vehicle {
            chargeState = ContentState.CHARGE_CHARGING
            chargeRemainingMinutes = 32
            chargePowerKw = 7.2f
            showChargingRemainingTime = false
            showChargingPower = true
        })
        assertEquals("充电功率 7.2kW", powerOnly.chargeStatus)
    }

    @Test fun pluggedSwitchControlsPluggedAndCompletedStatesWhileScheduledHasItsOwnSwitch() {
        assertNull(map(vehicle {
            chargeState = ContentState.CHARGE_PLUGGED
            showPluggedStatus = false
        }).chargeStatus)
        assertEquals("已插枪", map(vehicle {
            chargeState = ContentState.CHARGE_PLUGGED
            showPluggedStatus = true
        }).chargeStatus)
        assertNull(map(vehicle {
            chargeState = ContentState.CHARGE_COMPLETE
            showPluggedStatus = false
        }).chargeStatus)
        assertEquals("充电完成", map(vehicle {
            chargeState = ContentState.CHARGE_COMPLETE
            showPluggedStatus = true
        }).chargeStatus)
        assertNull(map(vehicle {
            chargeState = ContentState.CHARGE_SCHEDULED
            showScheduledCharging = false
        }).chargeStatus)
        assertEquals("预约充电中", map(vehicle {
            chargeState = ContentState.CHARGE_SCHEDULED
            showScheduledCharging = true
        }).chargeStatus)
    }

    @Test fun unknownAndUnavailableVehicleSemanticsRemainVisibleOnlyWhenPrimaryStatusIsEnabled() {
        val unknownHidden = map(vehicle {
            chargeState = ContentState.CHARGE_UNKNOWN
            showPluggedStatus = false
            showScheduledCharging = false
            showChargingRemainingTime = false
            showChargingPower = false
        })
        assertNull(unknownHidden.chargeStatus)
        val unknown = map(vehicle {
            chargeState = ContentState.CHARGE_UNKNOWN
            showPluggedStatus = true
            showScheduledCharging = false
            showChargingRemainingTime = false
            showChargingPower = false
        })
        assertEquals("充电状态待确认", unknown.chargeStatus)
        val unavailable = map(ContentState().apply {
            showPluggedStatus = false
            showScheduledCharging = false
            showChargingRemainingTime = false
            showChargingPower = false
        })
        assertNull(unavailable.chargeStatus)
    }

    @Test fun newProjectionPreferencesInvalidateShellCacheAndRemainVisibleInProjection() {
        val mapper = ContentUiMapper()
        val initial = vehicle {
            showRange = true
            showPluggedStatus = true
            showScheduledCharging = true
            showChargingRemainingTime = true
            showChargingPower = true
            lyricsShowTranslation = true
            immersiveTopBarKeepSplit = true
            lyricsImmersiveCurrentFontSizeSp = 160f
        }
        val first = mapper.mapShell(initial, off, off, capabilities)
        val changed = initial.copy().apply {
            showRange = false
            showPluggedStatus = false
            showScheduledCharging = false
            showChargingRemainingTime = false
            showChargingPower = false
            lyricsShowTranslation = false
            immersiveTopBarKeepSplit = false
            lyricsImmersiveCurrentFontSizeSp = 180f
        }
        val second = mapper.mapShell(changed, off, off, capabilities)
        assertNotSame(first, second)
        assertFalse(second.showRange)
        assertFalse(second.showPluggedStatus)
        assertFalse(second.showScheduledCharging)
        assertFalse(second.showChargingRemainingTime)
        assertFalse(second.showChargingPower)
        assertFalse(second.lyricsShowTranslation)
        assertFalse(second.immersiveTopBarKeepSplit)
        assertEquals(180f, second.lyricsImmersiveCurrentFontSizeSp, 0f)
        assertTrue(first.showRange)
        assertTrue(first.lyricsShowTranslation)
    }
}
