package com.autonavi.amapauto.content

import android.content.Context
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode

/** Contract for the persisted top-bar next-intersection signal preference. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class CruiseSignalPreferenceTest {
    private val app: Context get() = RuntimeEnvironment.getApplication()
    private val preferences get() = app.getSharedPreferences("content_preferences_v1", Context.MODE_PRIVATE)

    @Before fun clearPreferences() { assertTrue(preferences.edit().clear().commit()) }
    @After fun cleanup() { assertTrue(preferences.edit().clear().commit()) }

    @Test fun missingPreferenceDefaultsOnAndKeepsTheCurrentSchema() {
        val state = ContentState().apply { showCruiseSignals = false }
        ContentPreferenceStore(app).load(state)
        assertTrue(state.showCruiseSignals)
        assertFalse(preferences.contains("top_bar_show_cruise_signals"))

        state.showCruiseSignals = false
        ContentPreferenceStore(app).save(state)
        assertEquals(10, preferences.getInt("preferences_version", -1))
        assertFalse(preferences.getBoolean("top_bar_show_cruise_signals", true))
        assertFalse(ContentState().also { ContentPreferenceStore(app).load(it) }.showCruiseSignals)
    }

    @Test fun wrongStoredTypeUsesDefaultWithoutOverwritingPreferences() {
        assertTrue(preferences.edit().putString("top_bar_show_cruise_signals", "false").commit())
        val before = preferences.all.toMap()
        val state = ContentState().apply { showCruiseSignals = false }
        ContentPreferenceStore(app).load(state)
        assertTrue(state.showCruiseSignals)
        assertEquals(before, preferences.all)
    }

    @Test fun uiStateCopyCarriesPreferenceButDoesNotContainCruiseFacts() {
        val original = com.icar03.content.ui.ContentUiState(showCruiseSignals = false)
        val copied = original.copy()
        assertFalse(copied.showCruiseSignals)
        assertEquals(original.showCruiseSignals, copied.showCruiseSignals)
    }
}
