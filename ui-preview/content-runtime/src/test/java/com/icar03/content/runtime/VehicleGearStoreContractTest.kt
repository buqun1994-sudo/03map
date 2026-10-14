package com.icar03.content.runtime

import android.content.Context
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentPreferenceStore
import com.autonavi.amapauto.content.ContentState
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.model.VehicleControl
import com.icar03.content.model.VehicleGear
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class VehicleGearStoreContractTest {
    private val stores = mutableListOf<ContentStore>()
    private val nonParkGears = listOf(VehicleGear.Reverse, VehicleGear.Neutral, VehicleGear.Drive)
    private val app: Context get() = RuntimeEnvironment.getApplication()
    @After fun cleanup() { stores.forEach { it.destroy() } }
    private fun store() = ContentStore(app, ContentPorts.PreviewVehiclePort(), ContentPorts.PreviewMediaPort(),
        object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
            override fun write(kind: Int, percent: Int) = false
        }).also(stores::add)
    private fun gear(value: VehicleGear) = ContentPorts.VehicleSnapshot.unavailable().withGear(value)

    @Test fun legacyAndUnavailableSnapshotsHaveNoGearAndGearLossDoesNotRetainAvailability() {
        assertEquals(VehicleGear.Unknown, ContentPorts.VehicleSnapshot.unavailable().gear)
        val old = legacy()
        assertEquals(VehicleGear.Unknown, old.gear)
        val onlyGear = gear(VehicleGear.Park)
        assertTrue(onlyGear.dataAvailable)
        assertEquals(VehicleGear.Park, onlyGear.gear)
        val lost = onlyGear.withGear(VehicleGear.Unknown)
        assertFalse(lost.dataAvailable)
        assertEquals(VehicleGear.Unknown, lost.gear)
        assertTrue(old.withGear(VehicleGear.Unknown).dataAvailable)
    }

    @Test fun gearCopiesPreserveAllUnrelatedVehicleAndScopedRearProofFacts() {
        val feature = ContentPorts.FeatureSnapshot(1, 0, 1, -1, 1, 0, 1, 0, 1, -1,
            7, true, 1, true, intArrayOf(1, 2, 3, 4), true, FloatArray(7) { it.toFloat() }, true, 2, 11, true)
        val original = legacy().withFeatureSnapshot(feature)
            .withRearWindowReadback(VehicleControl.RearWash.id, 1, 42L, true).withGear(VehicleGear.Park)
        val rear = original.withRearWindowReadback(VehicleControl.RearWiper.id, 1, 43L, false)
        assertEquals(VehicleGear.Park, rear.gear)
        assertSame(feature, rear.featureSnapshot)
        assertEquals(original.temperatureC, rear.temperatureC, 0f)
        assertEquals(original.batteryPercent, rear.batteryPercent)
        assertEquals(original.rangeRaw, rear.rangeRaw)
        assertEquals(original.heatingLevel, rear.heatingLevel)
        assertEquals(original.massageLevel, rear.massageLevel)
        assertEquals(1, rear.rearWiperLevel)
        assertEquals(1, rear.rearWashLevel)
        assertEquals(43L, rear.rearReadbackRequestId)
        assertEquals(VehicleControl.RearWiper.id, rear.rearReadbackControlId)
        val drive = original.withGear(VehicleGear.Drive)
        assertNotSame(original, drive)
        assertEquals(VehicleGear.Park, original.gear)
        assertEquals(VehicleGear.Drive, drive.gear)
        assertEquals(42L, drive.rearReadbackRequestId)
        assertTrue(drive.rearWashActivationObserved)
        assertSame(feature, drive.featureSnapshot)
        assertEquals(11, drive.featureSnapshot.screenGearRaw)
    }

    @Test fun reducerClosesOnlyOnConfirmedParkDepartureAcrossAllNonParkGears() {
        for (nonPark in listOf(VehicleGear.Reverse, VehicleGear.Neutral, VehicleGear.Drive)) {
            val store = store()
            assertTrue(store.snapshot().autoCloseSettingsOnDrive)
            store.acceptVehicleSnapshot(gear(nonPark))
            assertEquals("unknown to $nonPark is not a confirmed departure", 0L,
                store.snapshot().settingsAutoCloseSequence)
            store.acceptVehicleSnapshot(gear(VehicleGear.Park))
            store.acceptVehicleSnapshot(gear(nonPark))
            assertEquals(1L, store.snapshot().settingsAutoCloseSequence)
            store.acceptVehicleSnapshot(gear(nonPark))
            assertEquals(1L, store.snapshot().settingsAutoCloseSequence)
        }
        val store = store()
        var expected = 0L
        for (departure in listOf(VehicleGear.Drive, VehicleGear.Reverse, VehicleGear.Neutral)) {
            store.acceptVehicleSnapshot(gear(VehicleGear.Park))
            store.acceptVehicleSnapshot(gear(departure))
            expected++
            assertEquals(expected, store.snapshot().settingsAutoCloseSequence)
            store.acceptVehicleSnapshot(gear(departure))
            assertEquals(expected, store.snapshot().settingsAutoCloseSequence)
            assertEquals(departure, store.snapshot().gear)
        }
    }

    @Test fun unavailableAndPreviewBreakTheParkBaselineWithoutInventingADeparture() {
        val store = store()
        var expectedSequence = 0L
        val gaps = listOf(gear(VehicleGear.Unknown), legacy().withGear(VehicleGear.Unknown),
            ContentPorts.VehicleSnapshot.unavailable(), previewGear(VehicleGear.Park)) +
            nonParkGears.map(::previewGear)
        for (nonPark in nonParkGears) {
            for (gap in gaps) {
                store.acceptVehicleSnapshot(gear(VehicleGear.Park))
                store.acceptVehicleSnapshot(gap)
                assertEquals(VehicleGear.Unknown, store.snapshot().gear)
                assertEquals(expectedSequence, store.snapshot().settingsAutoCloseSequence)
                store.acceptVehicleSnapshot(gear(nonPark))
                assertEquals("Unknown recovery to $nonPark is not P to non-P", expectedSequence,
                    store.snapshot().settingsAutoCloseSequence)
                store.acceptVehicleSnapshot(gear(VehicleGear.Park))
                store.acceptVehicleSnapshot(gear(nonPark))
                assertEquals("a fresh Park baseline may depart to $nonPark", ++expectedSequence,
                    store.snapshot().settingsAutoCloseSequence)
            }
        }
    }

    @Test fun previewParkDoesNotCreateAParkBaseline() {
        val store = store()
        for (nonPark in nonParkGears) {
            store.acceptVehicleSnapshot(previewGear(VehicleGear.Park))
            assertEquals(VehicleGear.Unknown, store.snapshot().gear)
            store.acceptVehicleSnapshot(gear(nonPark))
            assertEquals(0L, store.snapshot().settingsAutoCloseSequence)
        }
    }

    @Test fun disabledPreferenceConsumesTheEdgeAndEnablingLaterDoesNotReplayIt() {
        val store = store()
        var expectedSequence = 0L
        for (nonPark in nonParkGears) {
            store.setAutoCloseSettingsOnDrive(false)
            store.acceptVehicleSnapshot(gear(VehicleGear.Park))
            store.acceptVehicleSnapshot(gear(nonPark))
            assertEquals(expectedSequence, store.snapshot().settingsAutoCloseSequence)
            store.setAutoCloseSettingsOnDrive(true)
            assertEquals("enabling at $nonPark does not replay the disabled edge", expectedSequence,
                store.snapshot().settingsAutoCloseSequence)
            store.acceptVehicleSnapshot(gear(nonPark))
            for (nextNonPark in nonParkGears) store.acceptVehicleSnapshot(gear(nextNonPark))
            assertEquals(expectedSequence, store.snapshot().settingsAutoCloseSequence)
            store.acceptVehicleSnapshot(gear(VehicleGear.Park))
            store.acceptVehicleSnapshot(gear(nonPark))
            assertEquals(++expectedSequence, store.snapshot().settingsAutoCloseSequence)
            assertTrue(store.snapshot().copy().autoCloseSettingsOnDrive)
        }
    }

    @Test fun cleanScreenGearCannotContributeATransmissionFactAndEventsAreNotPreferences() {
        val store = store()
        val preferences = app.getSharedPreferences("content_preferences_v1", Context.MODE_PRIVATE)
        val before = preferences.all
        val feature = ContentPorts.FeatureSnapshot(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
            -1, false, -1, false, null, false, null, false, -1, 11, true)
        store.acceptVehicleSnapshot(ContentPorts.VehicleSnapshot.unavailable().withFeatureSnapshot(feature))
        assertEquals(VehicleGear.Unknown, store.snapshot().gear)
        assertEquals(0L, store.snapshot().settingsAutoCloseSequence)
        store.acceptVehicleSnapshot(gear(VehicleGear.Park))
        store.acceptVehicleSnapshot(gear(VehicleGear.Drive))
        assertEquals(before, preferences.all)
        assertEquals(1L, store.snapshot().settingsAutoCloseSequence)
    }

    private fun previewGear(value: VehicleGear) = ContentPorts.VehicleSnapshot(true, true, 25f, 60, 100,
        ContentState.CHARGE_DEFAULT, 0, 0, 0, Float.NaN, -1, 0, 0, 0, 0, true, false, true, true, true).withGear(value)
    private fun legacy() = ContentPorts.VehicleSnapshot(true, false, 26f, 73, 265, ContentState.CHARGE_DEFAULT,
        0, 0, 0, Float.NaN, -1, 1, 2, 3, 4, true, true, true, true, true)
}

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class VehicleGearPreferenceContractTest {
    private val app: Context get() = RuntimeEnvironment.getApplication()
    private val preferences get() = app.getSharedPreferences("content_preferences_v1", Context.MODE_PRIVATE)
    @Before fun reset() { preferences.edit().clear().commit() }

    @Test fun everyPriorSchemaDefaultsOnAndMigrationKeepsUnrelatedSettings() {
        for (schema in 1..7) {
            preferences.edit().clear().putInt("preferences_version", schema)
                .putBoolean("top_bar_show_seconds", true).putInt("dock_button_count", 3).commit()
            val state = ContentState()
            ContentPreferenceStore(app).load(state)
            assertTrue("schema=$schema", state.autoCloseSettingsOnDrive)
            assertTrue(state.showSeconds)
            assertEquals(3, state.dockButtonCount)
            assertEquals(schema, preferences.getInt("preferences_version", -1))
            ContentPreferenceStore(app).save(state)
            assertEquals(10, preferences.getInt("preferences_version", -1))
            assertTrue(preferences.getBoolean(KEY, false))
        }
    }

    @Test fun explicitFalseRoundTripsAndNeitherGearNorEventSequenceIsPersisted() {
        val source = ContentState().apply {
            autoCloseSettingsOnDrive = false
            showSeconds = true
            gear = VehicleGear.Drive
            settingsAutoCloseSequence = 99L
        }
        ContentPreferenceStore(app).save(source)
        val loaded = ContentState()
        ContentPreferenceStore(app).load(loaded)
        assertFalse(loaded.autoCloseSettingsOnDrive)
        assertFalse(loaded.copy().autoCloseSettingsOnDrive)
        assertTrue(loaded.showSeconds)
        assertEquals(VehicleGear.Unknown, loaded.gear)
        assertEquals(0L, loaded.settingsAutoCloseSequence)
        assertEquals(10, preferences.getInt("preferences_version", -1))
    }

    @Test fun malformedOrMissingFlagFallsBackIndividuallyWithoutResettingOtherPreferences() {
        preferences.edit().putInt("preferences_version", 8).putString(KEY, "false")
            .putBoolean("top_bar_show_seconds", true).commit()
        val state = ContentState()
        ContentPreferenceStore(app).load(state)
        assertTrue(state.autoCloseSettingsOnDrive)
        assertTrue(state.showSeconds)
        preferences.edit().remove(KEY).commit()
        state.autoCloseSettingsOnDrive = false
        ContentPreferenceStore(app).load(state)
        assertTrue(state.autoCloseSettingsOnDrive)
        assertTrue(state.showSeconds)
    }

    private companion object { const val KEY = "interaction_auto_close_settings_on_drive" }
}
