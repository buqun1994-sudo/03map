package com.autonavi.amapauto.content

import android.content.Context
import com.icar03.content.model.GestureAction
import com.icar03.content.model.GestureCommand
import com.icar03.content.model.GesturePreferences
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class GesturePreferenceContractTest {
    private val app: Context get() = RuntimeEnvironment.getApplication()
    private val preferences get() = app.getSharedPreferences("content_preferences_v1", Context.MODE_PRIVATE)
    @Before fun reset() { assertTrue(preferences.edit().clear().commit()) }
    @After fun cleanup() { assertTrue(preferences.edit().clear().commit()) }
    private fun freshLoad() = ContentState().also { ContentPreferenceStore(app).load(it) }
    private fun key(command: GestureCommand) = "gesture_action_${command.key}"
    private fun customActions() = GestureCommand.entries.associateWith { command ->
        GestureAction.entries[(command.ordinal + 1) % GestureAction.entries.size]
    }
    private fun store() = ContentStore(app, ContentPorts.PreviewVehiclePort(), ContentPorts.PreviewMediaPort(),
        object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
            override fun write(kind: Int, percent: Int) = false
        })

    @Test fun emptyPreferencesAndNewStateShareCompleteDefaultsWithoutWritingOnLoad() {
        val defaults = GesturePreferences.defaultActions()
        assertSame(defaults, ContentState().gestureActions)
        val state = ContentState().apply { gestureActions = customActions() }
        ContentPreferenceStore(app).load(state)
        assertSame(defaults, state.gestureActions)
        assertTrue(preferences.all.isEmpty())
    }

    @Test fun allTwelveCommandsRoundTripEveryOfferedActionUsingStableValues() {
        for (command in GestureCommand.entries) for (action in GestureAction.entries) {
            val state = ContentState().apply { gestureActions = customActions() + (command to action) }
            ContentPreferenceStore(app).save(state)
            assertEquals(11, preferences.getInt("preferences_version", -1))
            GestureCommand.entries.forEach { savedCommand ->
                assertEquals(state.gestureActions.getValue(savedCommand).value,
                    preferences.getString(key(savedCommand), null))
            }
            assertEquals(state.gestureActions, freshLoad().gestureActions)
        }
    }

    @Test fun everyPriorSchemaAndUnversionedPreferencesMigrateLazilyAndPreserveUnrelatedChoices() {
        for (schema in listOf<Int?>(null) + (1..10).toList()) {
            val editor = preferences.edit().clear().putBoolean("top_bar_show_weekday", false)
                .putFloat("ui_opacity", .6f).putString("current_page_id", ContentRegistry.Pages.SHORTCUTS)
            if (schema != null) editor.putInt("preferences_version", schema)
            assertTrue(editor.commit())
            val before = preferences.all.toMap()
            val state = freshLoad()
            assertEquals(GesturePreferences.defaultActions(), state.gestureActions)
            assertFalse(state.showWeekday)
            assertEquals(.6f, state.uiOpacity, 0f)
            assertEquals("removed shortcuts page falls back to vehicle info", 0, state.pageIndex)
            assertEquals(before, preferences.all)
            ContentPreferenceStore(app).save(state)
            assertEquals(11, preferences.getInt("preferences_version", -1))
            assertEquals(state.gestureActions, freshLoad().gestureActions)
            assertFalse(freshLoad().showWeekday)
        }
    }

    @Test fun missingCorruptAndUnknownValuesRestoreOnlyTheAffectedCommandWithoutWritingOnRead() {
        val invalid = listOf<Any?>(null, true, 2, 3L, .5f, setOf("none"), "unsupported", "EnterImmersive")
        for (command in GestureCommand.entries) for (value in invalid) {
            val state = ContentState().apply { gestureActions = customActions(); showSeconds = true }
            ContentPreferenceStore(app).save(state)
            val editor = preferences.edit()
            when (value) {
                null -> editor.remove(key(command))
                is Boolean -> editor.putBoolean(key(command), value)
                is Int -> editor.putInt(key(command), value)
                is Long -> editor.putLong(key(command), value)
                is Float -> editor.putFloat(key(command), value)
                is String -> editor.putString(key(command), value)
                is Set<*> -> editor.putStringSet(key(command), value.filterIsInstance<String>().toSet())
            }
            assertTrue(editor.commit())
            val before = preferences.all.toMap()
            val loaded = freshLoad()
            assertEquals(customActions() + (command to GesturePreferences.defaultAction(command)), loaded.gestureActions)
            assertTrue(loaded.showSeconds)
            assertEquals(before, preferences.all)
        }
    }

    @Test fun malformedSchemaAndExplicitNoneNeverDiscardValidGestureChoices() {
        val state = ContentState().apply { gestureActions = customActions() + (GestureCommand.TwoRight to GestureAction.None) }
        ContentPreferenceStore(app).save(state)
        preferences.edit().putString("preferences_version", "bad-schema").commit()
        assertEquals(state.gestureActions, freshLoad().gestureActions)
        assertSame(GestureAction.None, freshLoad().gestureActions[GestureCommand.TwoRight])
        preferences.edit().putInt("preferences_version", 9).commit()
        assertEquals(state.gestureActions, freshLoad().gestureActions)
    }

    @Test fun assignmentFreezesSourceCopySharesTheValueAndLaterAssignmentsDoNotAlterOldSnapshots() {
        val source = customActions().toMutableMap()
        val state = ContentState().apply { gestureActions = source }
        val original = state.gestureActions
        val copy = state.copy()
        assertSame(original, copy.gestureActions)
        state.gestureActions = source
        assertSame("equivalent assignment keeps the immutable value", original, state.gestureActions)
        source.clear()
        assertEquals(customActions(), state.gestureActions)
        assertThrows(UnsupportedOperationException::class.java) { (copy.gestureActions as MutableMap).clear() }
        state.gestureActions = GesturePreferences.defaultActions()
        assertEquals(customActions(), copy.gestureActions)
        assertSame(GesturePreferences.defaultActions(), state.gestureActions)
    }

    @Test fun storePersistsOneAcceptedChangeAndRestartRestoresItWithoutExtraWritesOrPublications() {
        val first = store()
        val snapshots = mutableListOf<ContentState>()
        try {
            first.addListener { snapshots += it }
            val before = first.snapshot()
            first.setGestureAction(GestureCommand.ThreeUp, GestureAction.EnterImmersive)
            assertEquals(2, snapshots.size)
            assertSame(GestureAction.None, before.gestureActions[GestureCommand.ThreeUp])
            assertSame(GestureAction.EnterImmersive, first.snapshot().gestureActions[GestureCommand.ThreeUp])
            val saved = preferences.all.toMap()
            repeat(3) { first.setGestureAction(GestureCommand.ThreeUp, GestureAction.EnterImmersive) }
            first.setGestureAction(null, GestureAction.None)
            first.setGestureAction(GestureCommand.ThreeUp, null)
            assertEquals(2, snapshots.size)
            assertEquals(saved, preferences.all)
            val restarted = store()
            try { assertEquals(first.snapshot().gestureActions, restarted.snapshot().gestureActions) }
            finally { restarted.destroy() }
            first.destroy()
            first.setGestureAction(GestureCommand.ThreeUp, GestureAction.ExitImmersive)
            assertEquals(saved, preferences.all)
        } finally { first.destroy() }
    }
}
