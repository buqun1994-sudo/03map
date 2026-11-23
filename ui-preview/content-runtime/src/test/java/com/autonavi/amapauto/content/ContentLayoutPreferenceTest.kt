package com.autonavi.amapauto.content

import android.content.Context
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class ContentLayoutPreferenceTest {
    private val context: Context get() = RuntimeEnvironment.getApplication()
    private fun declared() = ContentState().apply {
        configuredControlCenterIds = listOf("lock", "front_wiper", "brightness")
        availableControlCenterIds = configuredControlCenterIds.toSet()
        configuredControlCardIds = listOf("media", "brightness")
        availableControlCardIds = configuredControlCardIds.toSet()
        configuredDockIds = listOf("lock", "front_wiper", "settings")
        availableDockIds = configuredDockIds.toSet()
    }
    @Before fun clear() { context.getSharedPreferences("content_preferences_v1", 0).edit().clear().commit() }

    @Test fun emptyAndInvalidPagePreferencesUseVehicleInfoWhileSavedLyricsStillRestores() {
        val preferences = context.getSharedPreferences("content_preferences_v1", 0)
        for (page in listOf(null, "invented", "shortcuts", "control_center_page")) {
            val edit = preferences.edit().clear()
            if (page != null) edit.putString("current_page_id", page)
            assertTrue(edit.commit())
            val before = preferences.all.toMap()
            assertEquals(0, declared().also { ContentPreferenceStore(context).load(it) }.pageIndex)
            assertEquals(before, preferences.all)
        }
        assertTrue(preferences.edit().putString("current_page_id", "lyrics").commit())
        assertEquals(1, declared().also { ContentPreferenceStore(context).load(it) }.pageIndex)
    }

    @Test fun firstLoadUsesInitialLayoutAndSavedEmptyListsStayEmpty() {
        val prefs = ContentPreferenceStore(context)
        val initial = declared().also(prefs::load)
        assertEquals(listOf("lock", "front_wiper", "brightness"), initial.controlCenterLayoutIds)
        initial.controlCenterLayoutIds = emptyList()
        initial.dockLayoutIds = emptyList()
        initial.dockShowNames = true
        prefs.save(initial)
        val restored = declared().also(prefs::load)
        assertTrue(restored.controlCenterLayoutIds.isEmpty())
        assertTrue(restored.dockLayoutIds.isEmpty())
        assertTrue(restored.dockShowNames)
    }

    @Test fun reorderedCardsKeepSelectedIdAcrossColdLoadAndDeclarationFiltering() {
        val prefs = ContentPreferenceStore(context)
        val saved = declared().also(prefs::load)
        saved.controlCardLayoutIds = listOf("brightness", "media")
        saved.controlCardLayoutIndex = 1
        prefs.save(saved)
        val restored = declared().also(prefs::load)
        assertEquals(listOf("brightness", "media"), restored.controlCardLayoutIds)
        assertEquals("media", restored.controlCardLayoutIds[restored.controlCardLayoutIndex])
        val changed = declared().apply { availableControlCardIds = linkedSetOf("media") }.also(prefs::load)
        assertEquals(listOf("media"), changed.controlCardLayoutIds)
        assertEquals(0, changed.controlCardLayoutIndex)
    }

    @Test fun legacyControlCenterPagePreferenceFallsBackToVehicleInfoWithoutRewritingOnRead() {
        val preferences = context.getSharedPreferences("content_preferences_v1", 0)
        preferences.edit().putString("current_page_id", "control_center_page").commit()
        val before = preferences.all.toMap()
        val restored = declared().also { ContentPreferenceStore(context).load(it) }
        assertEquals(0, restored.pageIndex)
        assertEquals(before, preferences.all)
    }

    @Test fun loadDropsUnknownDuplicateAndUndeclaredItemsWithoutRestoringRemovedDefaults() {
        val preferences = context.getSharedPreferences("content_preferences_v1", 0)
        preferences.edit().putString("control_center_order", "brightness\u001flock\u001finvented\u001flock")
            .putString("dock_order", "settings").commit()
        val restored = declared().also { ContentPreferenceStore(context).load(it) }
        assertEquals(listOf("brightness", "lock"), restored.controlCenterLayoutIds)
        assertEquals(listOf("settings"), restored.dockLayoutIds)
    }
}
