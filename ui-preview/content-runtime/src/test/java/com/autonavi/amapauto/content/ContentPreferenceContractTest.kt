package com.autonavi.amapauto.content

import android.content.Context
import android.content.SharedPreferences
import com.icar03.content.model.VehicleControl
import com.icar03.content.model.LyricPreferenceRules
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode

/** Persisted display preferences have defaults and recover independently from corrupt values. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentPreferenceContractTest {
    private val app: Context get() = RuntimeEnvironment.getApplication()
    private val preferences get() = app.getSharedPreferences("content_preferences_v1", Context.MODE_PRIVATE)

    @Before fun clearPreferences() { assertTrue(preferences.edit().clear().commit()) }
    @After fun cleanup() { assertTrue(preferences.edit().clear().commit()) }

    @Test fun newStateAndEmptyPreferencesUseTheSameDefaultsWithoutWritingOnLoad() {
        assertValues(DEFAULTS, ContentState(), "new state")
        val loaded = customizedState()
        ContentPreferenceStore(app).load(loaded)
        assertValues(DEFAULTS, loaded, "empty preferences override stale in-memory values")
        assertTrue("a read does not create a schema version or preference values", preferences.all.isEmpty())
    }

    @Test fun allDisplayPreferencesRoundTripThroughFreshStoreAndStateInstances() {
        val cases = listOf(customizedState(), ContentState().apply {
            lyricsFontScale = .85f
            lyricsLineSpacing = 0
            dockButtonCount = 5
        })
        for ((index, original) in cases.withIndex()) {
            assertTrue(preferences.edit().clear().commit())
            val expected = valuesOf(original)
            ContentPreferenceStore(app).save(original)
            assertStoredValues(expected, "round trip $index")
            assertEquals(6, preferences.getInt(VERSION, -1))
            val loaded = freshLoad()
            assertValues(expected, loaded, "round trip $index")
            assertLegacyValues(original, loaded, "round trip $index")
        }
    }

    @Test fun everyOfferedNumericValueIncludingBothBoundsSurvivesSaveAndReload() {
        for (field in numericPreferences) {
            for (value in field.validValues) {
                val original = customizedState().also { field.assign(it, value) }
                val expected = valuesOf(original)
                ContentPreferenceStore(app).save(original)
                assertStoredValues(expected, "valid ${field.key}=$value")
                assertValues(expected, freshLoad(), "valid ${field.key}=$value")
            }
        }
    }

    @Test fun unversionedAndV1PreferencesMigrateLazilyWithoutLosingLegacyChoicesOrManualMemory() {
        for (hasExplicitVersion in listOf(false, true)) {
            val legacy = customizedState()
            val editor = preferences.edit().clear()
                .putBoolean("top_bar_show_weekday", false)
                .putBoolean("top_bar_show_seconds", true)
                .putString(PAGE, ContentRegistry.Pages.SHORTCUTS)
                .putString(CONTROL, ContentRegistry.Controls.CLIMATE)
                .putInt("control_manual_level_front_wiper", 4)
            legacy.dockItems.forEachIndexed { slot, item -> editor.putString("$DOCK_SLOT_PREFIX$slot", item) }
            if (hasExplicitVersion) editor.putInt(VERSION, 1)
            assertTrue(editor.commit())
            val before = preferences.all.toMap()

            val migrated = freshLoad()
            val expected = DEFAULTS + mapOf("top_bar_show_weekday" to false, "top_bar_show_seconds" to true)
            assertValues(expected, migrated, "v1 explicit=$hasExplicitVersion")
            assertLegacyValues(legacy, migrated, "v1 explicit=$hasExplicitVersion")
            assertEquals(4, migrated.rememberedLevel(VehicleControl.Wiper))
            assertEquals("load must not eagerly rewrite v1", before, preferences.all)

            ContentPreferenceStore(app).save(migrated)
            assertEquals(6, preferences.getInt(VERSION, -1))
            assertStoredValues(expected, "v1 saved as v5")
            val reloaded = freshLoad()
            assertValues(expected, reloaded, "v1 after migration save")
            assertLegacyValues(legacy, reloaded, "v1 after migration save")
            assertTrue(reloaded.gestureBarReminder)
            assertEquals(4, reloaded.rememberedLevel(VehicleControl.Wiper))
        }
    }

    @Test fun v2ToV4PreferencesKeepExistingValuesAndDefaultNewImmersiveAndGesturePreferencesOnLazyMigration() {
        for (version in listOf(2, 3, 4)) {
            assertTrue(preferences.edit().clear().putInt(VERSION, version)
                .putBoolean("top_bar_show_weekday", false)
                .putFloat(OPACITY, .6f)
                .putString(PAGE, ContentRegistry.Pages.SHORTCUTS)
                .putInt("control_manual_level_front_wiper", 4).commit())
            val before = preferences.all.toMap()
            val loaded = freshLoad()
            assertTrue(loaded.immersiveShowTopBar)
            assertTrue(loaded.immersiveShowDock)
            assertTrue(loaded.gestureBarReminder)
            assertFalse(loaded.showWeekday)
            assertEquals(.6f, loaded.uiOpacity, 0f)
            assertEquals(0, loaded.pageIndex)
            assertEquals(4, loaded.rememberedLevel(VehicleControl.Wiper))
            assertEquals(before, preferences.all)
            loaded.immersiveShowTopBar = false
            ContentPreferenceStore(app).save(loaded)
            assertEquals(6, preferences.getInt(VERSION, -1))
            val reloaded = freshLoad()
            assertFalse(reloaded.immersiveShowTopBar)
            assertTrue(reloaded.immersiveShowDock)
            assertTrue(reloaded.gestureBarReminder)
            assertEquals(4, reloaded.rememberedLevel(VehicleControl.Wiper))
        }
    }

    @Test fun v5MigratesLegacyScaleAndSpacingIntoIndependentNormalCurrentAndImmersiveFields() {
        assertTrue(preferences.edit().clear()
            .putInt(VERSION, 5)
            .putFloat(FONT_SCALE, 1.15f)
            .putInt(LINE_SPACING, 2)
            .commit())
        val loaded = freshLoad()
        assertEquals(46f, loaded.lyricsFontSizeSp, 0f)
        assertEquals(55f, loaded.lyricsCurrentFontSizeSp, 0f)
        assertEquals(38f, loaded.lyricsLineGapDp, 0f)
        assertEquals(138f, loaded.lyricsImmersiveFontSizeSp, 0f)
        assertEquals(114f, loaded.lyricsImmersiveLineGapDp, 0f)
        assertEquals("left", loaded.lyricsAlignment)
        assertEquals("theme", loaded.lyricsColorMode)
        assertEquals(0xFF5C66BF.toInt(), loaded.lyricsCustomColor)
        ContentPreferenceStore(app).save(loaded)
        assertEquals(6, preferences.getInt(VERSION, -1))
        assertValues(valuesOf(loaded), freshLoad(), "v5 migration after save")
    }
    @Test fun everyMissingPreferenceFallsBackAloneAndKeepsOtherSavedValues() {
        for ((key, fallback) in DEFAULTS) {
            val original = seedCustomizedPreferences()
            assertTrue(preferences.edit().remove(key).commit())
            val expected = valuesOf(original) + (key to fallback)
            val loaded = freshLoad()
            assertValues(expected, loaded, "missing $key")
            assertLegacyValues(original, loaded, "missing $key")
        }
    }

    @Test fun everyDisplayPreferenceRejectsEachWrongStoredTypeWithoutResettingTheRest() {
        for ((key, fallback) in DEFAULTS) {
            for (wrongValue in storedValues.filter { it.javaClass != fallback.javaClass }) {
                val original = seedCustomizedPreferences()
                assertTrue(preferences.edit().putValue(key, wrongValue).commit())
                val before = preferences.all.toMap()
                val loaded = freshLoad()
                assertValues(valuesOf(original) + (key to fallback), loaded,
                    "wrong type $key=${wrongValue.javaClass.simpleName}")
                assertLegacyValues(original, loaded, "wrong type $key")
                assertEquals("recovery on read does not overwrite the saved file", before, preferences.all)
            }
        }
    }

    @Test fun malformedVersionDoesNotDiscardOtherwiseValidPreferences() {
        for (wrongValue in storedValues.filter { it !is Int }) {
            val original = seedCustomizedPreferences()
            assertTrue(preferences.edit().putValue(VERSION, wrongValue).commit())
            val loaded = freshLoad()
            assertValues(valuesOf(original), loaded, "malformed schema version")
            assertLegacyValues(original, loaded, "malformed schema version")
        }
    }

    @Test fun nanInfinityAndOutOfRangeStoredNumbersRestoreOnlyTheirOwnDefault() {
        for (field in numericPreferences) {
            for (invalidValue in field.invalidValues) {
                val original = seedCustomizedPreferences()
                assertTrue(preferences.edit().putValue(field.key, invalidValue).commit())
                val expected = valuesOf(original) + (field.key to DEFAULTS.getValue(field.key))
                val loaded = freshLoad()
                assertValues(expected, loaded, "stored invalid ${field.key}=$invalidValue")
                assertLegacyValues(original, loaded, "stored invalid ${field.key}")
            }
        }
    }

    @Test fun saveAlsoReplacesInvalidNumericValuesWithTheirDefaultsIndependently() {
        for (field in numericPreferences) {
            for (invalidValue in field.invalidValues) {
                val original = customizedState()
                val expected = valuesOf(original) + (field.key to DEFAULTS.getValue(field.key))
                field.assign(original, invalidValue)
                ContentPreferenceStore(app).save(original)
                assertStoredValues(expected, "save invalid ${field.key}=$invalidValue")
                val loaded = freshLoad()
                assertValues(expected, loaded, "save invalid ${field.key}=$invalidValue")
                assertLegacyValues(original, loaded, "save invalid ${field.key}")
            }
        }
    }

    @Test fun malformedLegacyIdsAndDockSlotsCannotPreventOtherPreferencesFromLoading() {
        val keys = listOf(PAGE, CONTROL) + ContentRegistry.defaultDockItems().indices.map { "$DOCK_SLOT_PREFIX$it" }
        for (key in keys) {
            // A correctly typed but unknown ID and every non-string SharedPreferences type.
            for (invalidValue in storedValues) {
                val original = seedCustomizedPreferences()
                assertTrue(preferences.edit().putValue(key, invalidValue).commit())
                val loaded = freshLoad()
                assertValues(valuesOf(original), loaded, "invalid legacy $key=$invalidValue")
                assertEquals("page for $key", if (key == PAGE) 1 else original.pageIndex, loaded.pageIndex)
                assertEquals("control for $key", if (key == CONTROL) 0 else original.controlIndex, loaded.controlIndex)
                val expectedDock = original.dockItems.clone()
                if (key.startsWith(DOCK_SLOT_PREFIX)) {
                    val slot = key.removePrefix(DOCK_SLOT_PREFIX).toInt()
                    expectedDock[slot] = ContentRegistry.defaultDockItems()[slot]
                }
                assertArrayEquals("dock for $key", expectedDock, loaded.dockItems)
            }
        }
    }

    @Test fun copyPreservesAllPreferencesAndRemainsIndependentOfLaterChanges() {
        val original = customizedState()
        val expected = valuesOf(original)
        val expectedDock = original.dockItems.clone()
        val copied = original.copy()
        assertNotSame(original, copied)
        assertValues(expected, copied, "copy")
        assertLegacyValues(original, copied, "copy")
        assertNotSame(original.dockItems, copied.dockItems)

        ContentPreferenceStore(app).load(original)
        original.dockItems[0] = ContentRegistry.Pages.SHORTCUTS
        assertValues(DEFAULTS, original, "original reloaded with defaults")
        assertValues(expected, copied, "copy after original preferences change")
        assertArrayEquals(expectedDock, copied.dockItems)

        copied.lyricsFontScale = .85f
        copied.lyricsLineSpacing = 0
        copied.dockButtonCount = 4
        assertValues(DEFAULTS, original, "original after copy preferences change")
    }

    private fun customizedState() = ContentState().apply {
        showWeekday = false
        showSeconds = true
        showIndoorTemperature = false
        showBattery = false
        showChargingStatus = false
        lyricsFontScale = 1.15f
        lyricsLineSpacing = 2
        lyricsFontSizeSp = 44f
        lyricsCurrentFontSizeSp = 52f
        lyricsLineGapDp = 37f
        lyricsAlignment = "right"
        lyricsColorMode = "custom"
        lyricsCustomColor = 0x00123456
        lyricsCurrentColorMode = "system"
        lyricsCurrentCustomColor = 0x00112233
        lyricsImmersiveFontSizeSp = 160f
        lyricsImmersiveLineGapDp = 114f
        lyricsSpeakerLayout = false
        lyricsHighlight = false
        immersiveShowTopBar = false
        immersiveShowDock = false
        showAmbientArtwork = false
        showMediaSourceSwitcher = false
        dockButtonCount = 3
        showActionFeedback = false
        gestureBarReminder = false
        uiOpacity = .2f
        pageIndex = 0
        controlIndex = 1
        val dockDefaults = ContentRegistry.defaultDockItems()
        dockItems = Array(dockDefaults.size) { slot -> dockDefaults[(slot + 1) % dockDefaults.size] }
    }

    private fun seedCustomizedPreferences() = customizedState().also { ContentPreferenceStore(app).save(it) }
    private fun freshLoad() = ContentState().also { ContentPreferenceStore(app).load(it) }

    private fun valuesOf(state: ContentState): Map<String, Any> = linkedMapOf(
        "top_bar_show_weekday" to state.showWeekday,
        "top_bar_show_seconds" to state.showSeconds,
        "top_bar_show_indoor_temperature" to state.showIndoorTemperature,
        "top_bar_show_battery" to state.showBattery,
        "top_bar_show_charging_status" to state.showChargingStatus,
        FONT_SCALE to state.lyricsFontScale,
        LINE_SPACING to state.lyricsLineSpacing,
         FONT_SIZE to LyricPreferenceRules.fontSize(state.lyricsFontSizeSp),
         CURRENT_FONT_SIZE to LyricPreferenceRules.currentFontSize(state.lyricsCurrentFontSizeSp, state.lyricsFontSizeSp),
         LINE_GAP to LyricPreferenceRules.lineGap(state.lyricsLineGapDp),
         ALIGNMENT to LyricPreferenceRules.alignment(state.lyricsAlignment),
         COLOR_MODE to LyricPreferenceRules.colorMode(state.lyricsColorMode),
         CUSTOM_COLOR to LyricPreferenceRules.opaqueColor(state.lyricsCustomColor),
         CURRENT_COLOR_MODE to LyricPreferenceRules.colorMode(state.lyricsCurrentColorMode),
         CURRENT_CUSTOM_COLOR to LyricPreferenceRules.opaqueColor(state.lyricsCurrentCustomColor),
         IMMERSIVE_FONT_SIZE to LyricPreferenceRules.immersiveFontSize(state.lyricsImmersiveFontSizeSp),
         IMMERSIVE_LINE_GAP to LyricPreferenceRules.immersiveLineGap(state.lyricsImmersiveLineGapDp),
        "lyrics_speaker_layout" to state.lyricsSpeakerLayout,
        "lyrics_highlight" to state.lyricsHighlight,
        "lyrics_immersive_show_top_bar" to state.immersiveShowTopBar,
        "lyrics_immersive_show_dock" to state.immersiveShowDock,
        "ambient_show_artwork" to state.showAmbientArtwork,
        "media_show_source_switcher" to state.showMediaSourceSwitcher,
        DOCK_COUNT to state.dockButtonCount,
        "interaction_show_action_feedback" to state.showActionFeedback,
        "interaction_gesture_bar_reminder" to state.gestureBarReminder,
        OPACITY to state.uiOpacity,
    )

    private fun assertValues(expected: Map<String, Any>, actual: ContentState, context: String) {
        val actualValues = valuesOf(actual)
        for ((key, value) in expected) assertEquals("$context: $key", value, actualValues.getValue(key))
    }

    private fun assertStoredValues(expected: Map<String, Any>, context: String) {
        assertEquals("$context: serialized keys, types and values", expected,
            preferences.all.filterKeys { it in DEFAULTS })
    }

    private fun assertLegacyValues(expected: ContentState, actual: ContentState, context: String) {
        assertEquals("$context: current page", expected.pageIndex, actual.pageIndex)
        assertEquals("$context: current control", expected.controlIndex, actual.controlIndex)
        assertArrayEquals("$context: legacy dock slots", expected.dockItems, actual.dockItems)
    }

    private fun SharedPreferences.Editor.putValue(key: String, value: Any): SharedPreferences.Editor = when (value) {
        is Boolean -> putBoolean(key, value)
        is Int -> putInt(key, value)
        is Long -> putLong(key, value)
        is Float -> putFloat(key, value)
        is String -> putString(key, value)
        is Set<*> -> putStringSet(key, value.map { it as String }.toSet())
        else -> error("Unsupported fixture value: $value")
    }

    private data class NumericPreference(
        val key: String,
        val validValues: List<Any>,
        val invalidValues: List<Any>,
        val assign: (ContentState, Any) -> Unit,
    )

    private val numericPreferences = listOf(
        NumericPreference(FONT_SCALE, listOf(.85f, 1.0f, 1.15f),
            listOf(Float.NaN, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY,
                -Float.MAX_VALUE, -1f, 0f, Float.MIN_VALUE, .84f, 1.16f, Float.MAX_VALUE),
            { state, value -> state.lyricsFontScale = value as Float }),
        NumericPreference(LINE_SPACING, listOf(0, 1, 2), listOf(Int.MIN_VALUE, -1, 3, Int.MAX_VALUE),
            { state, value -> state.lyricsLineSpacing = value as Int }),
         NumericPreference(FONT_SIZE, listOf(24f, 40f, 64f),
             listOf(Float.NaN, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY),
             { state, value -> state.lyricsFontSizeSp = value as Float }),
         NumericPreference(CURRENT_FONT_SIZE, listOf(24f, 48f, 80f),
             listOf(Float.NaN, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY),
             { state, value -> state.lyricsCurrentFontSizeSp = value as Float }),
         NumericPreference(LINE_GAP, listOf(0f, 28f, 64f),
             listOf(Float.NaN, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY),
             { state, value -> state.lyricsLineGapDp = value as Float }),
         NumericPreference(IMMERSIVE_FONT_SIZE, listOf(64f, 120f, 192f),
             listOf(Float.NaN, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY),
             { state, value -> state.lyricsImmersiveFontSizeSp = value as Float }),
         NumericPreference(IMMERSIVE_LINE_GAP, listOf(0f, 84f, 192f),
             listOf(Float.NaN, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY),
             { state, value -> state.lyricsImmersiveLineGapDp = value as Float }),
        NumericPreference(DOCK_COUNT, listOf(3, 4, 5, 6), listOf(Int.MIN_VALUE, -1, 0, 2, 7, Int.MAX_VALUE),
            { state, value -> state.dockButtonCount = value as Int }),
        NumericPreference(OPACITY, listOf(.20f, .5f, 1.0f),
            listOf(Float.NaN, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, -Float.MAX_VALUE, -1f, 0f, .19f, 1.01f, Float.MAX_VALUE),
            { state, value -> state.uiOpacity = value as Float }),
    )

    private val storedValues = listOf<Any>("unknown-id", true, 7, 7L, 7f, setOf("unknown-id"))

    private companion object {
        const val VERSION = "preferences_version"
        const val PAGE = "current_page_id"
        const val CONTROL = "current_control_id"
        const val DOCK_SLOT_PREFIX = "dock_slot_"
        const val FONT_SCALE = "lyrics_font_scale"
        const val LINE_SPACING = "lyrics_line_spacing"
         const val FONT_SIZE = "lyrics_font_size_sp"
         const val CURRENT_FONT_SIZE = "lyrics_current_font_size_sp"
         const val LINE_GAP = "lyrics_line_gap_dp"
         const val ALIGNMENT = "lyrics_alignment"
         const val COLOR_MODE = "lyrics_color_mode"
         const val CUSTOM_COLOR = "lyrics_custom_color"
         const val CURRENT_COLOR_MODE = "lyrics_current_color_mode"
         const val CURRENT_CUSTOM_COLOR = "lyrics_current_custom_color"
         const val IMMERSIVE_FONT_SIZE = "lyrics_immersive_font_size_sp"
         const val IMMERSIVE_LINE_GAP = "lyrics_immersive_line_gap_dp"
        const val DOCK_COUNT = "dock_button_count"
        const val OPACITY = "ui_opacity"

        val DEFAULTS: Map<String, Any> = linkedMapOf(
            "top_bar_show_weekday" to true,
            "top_bar_show_seconds" to false,
            "top_bar_show_indoor_temperature" to true,
            "top_bar_show_battery" to true,
            "top_bar_show_charging_status" to true,
            FONT_SCALE to 1.0f,
            LINE_SPACING to 1,
             FONT_SIZE to 40f,
             CURRENT_FONT_SIZE to 48f,
             LINE_GAP to 28f,
             ALIGNMENT to "left",
             COLOR_MODE to "theme",
             CUSTOM_COLOR to 0xFF5C66BF.toInt(),
             CURRENT_COLOR_MODE to "theme",
             CURRENT_CUSTOM_COLOR to 0xFF5C66BF.toInt(),
             IMMERSIVE_FONT_SIZE to 120f,
             IMMERSIVE_LINE_GAP to 84f,
            "lyrics_speaker_layout" to true,
            "lyrics_highlight" to true,
            "lyrics_immersive_show_top_bar" to true,
            "lyrics_immersive_show_dock" to true,
            "ambient_show_artwork" to true,
            "media_show_source_switcher" to true,
            DOCK_COUNT to 6,
            "interaction_show_action_feedback" to true,
            "interaction_gesture_bar_reminder" to true,
             OPACITY to 1.0f,
        )
    }
}
