package com.autonavi.amapauto.content

import android.content.Context
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class LyricsRomanizationPreferenceTest {
    @Test fun defaultsOldSchemaAndCorruptValuesEnableRomanizationWithoutWritingOnLoad() {
        val app: Context = RuntimeEnvironment.getApplication()
        val preferences = app.getSharedPreferences("content_preferences_v1", Context.MODE_PRIVATE)
        try {
            assertTrue(ContentState().lyricsShowRomanization)
            for (value in listOf<Any?>(null, "false", 0, 1L, .5f)) {
                preferences.edit().clear().putInt("preferences_version", 8)
                    .putBoolean("lyrics_show_translation", false).apply {
                        when (value) {
                            is String -> putString("lyrics_show_romanization", value)
                            is Int -> putInt("lyrics_show_romanization", value)
                            is Long -> putLong("lyrics_show_romanization", value)
                            is Float -> putFloat("lyrics_show_romanization", value)
                        }
                    }.commit()
                val before = preferences.all.toMap()
                val state = ContentState().apply { lyricsShowRomanization = false }
                ContentPreferenceStore(app).load(state)
                assertTrue("missing or invalid value $value", state.lyricsShowRomanization)
                assertFalse(state.lyricsShowTranslation)
                assertEquals(before, preferences.all)
            }
        } finally {
            preferences.edit().clear().commit()
        }
    }

    @Test fun explicitFalsePersistsAndCopiesIndependentlyOfTranslation() {
        val app: Context = RuntimeEnvironment.getApplication()
        val preferences = app.getSharedPreferences("content_preferences_v1", Context.MODE_PRIVATE)
        try {
            preferences.edit().clear().commit()
            val original = ContentState().apply { lyricsShowRomanization = false }
            ContentPreferenceStore(app).save(original)
            val restored = ContentState().also { ContentPreferenceStore(app).load(it) }
            assertEquals(10, preferences.getInt("preferences_version", 0))
            assertFalse(restored.lyricsShowRomanization)
            assertTrue(restored.lyricsShowTranslation)
            val copy = restored.copy()
            restored.lyricsShowRomanization = true
            assertFalse(copy.lyricsShowRomanization)
        } finally {
            preferences.edit().clear().commit()
        }
    }
}
