package com.autonavi.amapauto.content;

import com.icar03.content.model.VehicleControl;

import android.content.Context;
import android.content.SharedPreferences;

public final class ContentPreferenceStore {
    private static final String PREFERENCES_NAME = "content_preferences_v1";
    private static final int PREFERENCES_VERSION = 3;
    private static final String KEY_PREFERENCES_VERSION = "preferences_version";
    private static final String KEY_SHOW_WEEKDAY = "top_bar_show_weekday";
    private static final String KEY_SHOW_SECONDS = "top_bar_show_seconds";
    private static final String KEY_SHOW_INDOOR_TEMPERATURE = "top_bar_show_indoor_temperature";
    private static final String KEY_SHOW_BATTERY = "top_bar_show_battery";
    private static final String KEY_SHOW_CHARGING_STATUS = "top_bar_show_charging_status";
    private static final String KEY_LYRICS_FONT_SCALE = "lyrics_font_scale";
    private static final String KEY_LYRICS_LINE_SPACING = "lyrics_line_spacing";
    private static final String KEY_LYRICS_SPEAKER_LAYOUT = "lyrics_speaker_layout";
    private static final String KEY_LYRICS_HIGHLIGHT = "lyrics_highlight";
    private static final String KEY_SHOW_AMBIENT_ARTWORK = "ambient_show_artwork";
    private static final String KEY_SHOW_MEDIA_SOURCE_SWITCHER = "media_show_source_switcher";
    private static final String KEY_DOCK_BUTTON_COUNT = "dock_button_count";
    private static final String KEY_SHOW_ACTION_FEEDBACK = "interaction_show_action_feedback";
    private static final String KEY_UI_OPACITY = "ui_opacity";
    private static final String KEY_PAGE_ID = "current_page_id";
    private static final String KEY_CONTROL_ID = "current_control_id";
    private static final String KEY_DOCK_SLOT_PREFIX = "dock_slot_";
    private static final String KEY_MANUAL_LEVEL_PREFIX = "control_manual_level_";

    private final SharedPreferences preferences;

    public ContentPreferenceStore(Context context) {
        preferences = context.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE);
    }

    public void load(ContentState state) {
        int version = readInt(KEY_PREFERENCES_VERSION, 1);
        state.showWeekday = readBoolean(KEY_SHOW_WEEKDAY, true);
        state.showSeconds = readBoolean(KEY_SHOW_SECONDS, false);
        state.showIndoorTemperature = readBoolean(KEY_SHOW_INDOOR_TEMPERATURE, true);
        state.showBattery = readBoolean(KEY_SHOW_BATTERY, true);
        state.showChargingStatus = readBoolean(KEY_SHOW_CHARGING_STATUS, true);
        state.lyricsFontScale = clampFontScale(readFloat(KEY_LYRICS_FONT_SCALE, 1.0f));
        state.lyricsLineSpacing = clampLineSpacing(readInt(KEY_LYRICS_LINE_SPACING, 1));
        state.lyricsSpeakerLayout = readBoolean(KEY_LYRICS_SPEAKER_LAYOUT, true);
        state.lyricsHighlight = readBoolean(KEY_LYRICS_HIGHLIGHT, true);
        state.showAmbientArtwork = readBoolean(KEY_SHOW_AMBIENT_ARTWORK, true);
        state.showMediaSourceSwitcher = readBoolean(KEY_SHOW_MEDIA_SOURCE_SWITCHER, true);
        state.dockButtonCount = clampDockButtonCount(readInt(KEY_DOCK_BUTTON_COUNT, 6));
        state.showActionFeedback = readBoolean(KEY_SHOW_ACTION_FEEDBACK, true);
        state.uiOpacity = clampUiOpacity(readFloat(KEY_UI_OPACITY, 1.0f));
        // Version 1 only knew the weekday/seconds fields; all new fields have safe defaults.
        // Writing the version on the next preference change completes the migration lazily.
        if (version > PREFERENCES_VERSION) {
            state.lyricsFontScale = 1.0f;
            state.lyricsLineSpacing = 1;
            state.dockButtonCount = 6;
            state.uiOpacity = 1.0f;
        }
        String savedPageId = readString(KEY_PAGE_ID, ContentRegistry.Pages.LYRICS);
        state.pageIndex = indexOf(ContentRegistry.visiblePageIds(), savedPageId, 1);
        String savedControlId = readString(KEY_CONTROL_ID, ContentRegistry.Controls.MEDIA);
        state.controlIndex = indexOf(ContentRegistry.controlIds(), savedControlId, 0);
        state.setRememberedControlLevels(loadManualLevels());
        for (int slot = 0; slot < state.dockItems.length; slot++) {
            String savedItem = readString(KEY_DOCK_SLOT_PREFIX + slot, state.dockItems[slot]);
            state.dockItems[slot] = isValidDockItem(savedItem) ? savedItem : state.dockItems[slot];
        }
    }

    public void save(ContentState state) {
        SharedPreferences.Editor editor = preferences.edit();
        editor.putInt(KEY_PREFERENCES_VERSION, PREFERENCES_VERSION);
        editor.putBoolean(KEY_SHOW_WEEKDAY, state.showWeekday);
        editor.putBoolean(KEY_SHOW_SECONDS, state.showSeconds);
        editor.putBoolean(KEY_SHOW_INDOOR_TEMPERATURE, state.showIndoorTemperature);
        editor.putBoolean(KEY_SHOW_BATTERY, state.showBattery);
        editor.putBoolean(KEY_SHOW_CHARGING_STATUS, state.showChargingStatus);
        editor.putFloat(KEY_LYRICS_FONT_SCALE, clampFontScale(state.lyricsFontScale));
        editor.putInt(KEY_LYRICS_LINE_SPACING, clampLineSpacing(state.lyricsLineSpacing));
        editor.putBoolean(KEY_LYRICS_SPEAKER_LAYOUT, state.lyricsSpeakerLayout);
        editor.putBoolean(KEY_LYRICS_HIGHLIGHT, state.lyricsHighlight);
        editor.putBoolean(KEY_SHOW_AMBIENT_ARTWORK, state.showAmbientArtwork);
        editor.putBoolean(KEY_SHOW_MEDIA_SOURCE_SWITCHER, state.showMediaSourceSwitcher);
        editor.putInt(KEY_DOCK_BUTTON_COUNT, clampDockButtonCount(state.dockButtonCount));
        editor.putBoolean(KEY_SHOW_ACTION_FEEDBACK, state.showActionFeedback);
        editor.putFloat(KEY_UI_OPACITY, clampUiOpacity(state.uiOpacity));
        String[] pageIds = ContentRegistry.visiblePageIds();
        if (state.pageIndex >= 0 && state.pageIndex < pageIds.length) {
            editor.putString(KEY_PAGE_ID, pageIds[state.pageIndex]);
        }
        String[] controlIds = ContentRegistry.controlIds();
        if (state.controlIndex >= 0 && state.controlIndex < controlIds.length) {
            editor.putString(KEY_CONTROL_ID, controlIds[state.controlIndex]);
        }
        for (int slot = 0; slot < state.dockItems.length; slot++) {
            editor.putString(KEY_DOCK_SLOT_PREFIX + slot, state.dockItems[slot]);
        }
        editor.apply();
    }

    private String readString(String key, String fallback) {
        try {
            return preferences.getString(key, fallback);
        } catch (ClassCastException invalidStoredValue) {
            return fallback;
        }
    }

    private boolean readBoolean(String key, boolean fallback) {
        try {
            return preferences.getBoolean(key, fallback);
        } catch (ClassCastException invalidStoredValue) {
            return fallback;
        }
    }

    private int readInt(String key, int fallback) {
        try {
            return preferences.getInt(key, fallback);
        } catch (ClassCastException invalidStoredValue) {
            return fallback;
        }
    }

    private float readFloat(String key, float fallback) {
        try {
            return preferences.getFloat(key, fallback);
        } catch (ClassCastException invalidStoredValue) {
            return fallback;
        }
    }

    private float clampFontScale(float value) {
        return Float.isFinite(value) && value >= 0.85f && value <= 1.15f ? value : 1.0f;
    }

    private float clampUiOpacity(float value) {
        return Float.isFinite(value) && value >= 0.20f && value <= 1.0f ? value : 1.0f;
    }

    private int clampLineSpacing(int value) {
        return value >= 0 && value <= 2 ? value : 1;
    }

    private int clampDockButtonCount(int value) {
        return value >= 3 && value <= 6 ? value : 6;
    }

    private java.util.Map<String, Integer> loadManualLevels() {
        java.util.Map<String, Integer> levels = new java.util.HashMap<>();
        for (VehicleControl control : VehicleControl.values()) {
            if (control == VehicleControl.Lock) continue;
            int saved = control.getDefaultManualLevel();
            try {
                saved = preferences.getInt(KEY_MANUAL_LEVEL_PREFIX + control.getId(), saved);
            } catch (ClassCastException invalidStoredValue) {
                // A malformed old value never becomes an executable vehicle target.
            }
            levels.put(control.getId(), control.rememberedManualLevel(saved));
        }
        return levels;
    }

    /** Called only after the Store has accepted real, valid manual readback. */
    public void saveManualLevel(VehicleControl control, int level) {
        if (control != VehicleControl.Lock && control.isManualLevel(level)) {
            preferences.edit().putInt(KEY_MANUAL_LEVEL_PREFIX + control.getId(), level).apply();
        }
    }

    public boolean isValidDockItem(String itemId) {
        return ContentRegistry.isDockItem(itemId);
    }

    private int indexOf(String[] ids, String savedId, int fallbackIndex) {
        if (ids != null && savedId != null) {
            for (int index = 0; index < ids.length; index++) {
                if (savedId.equals(ids[index])) {
                    return index;
                }
            }
        }
        return fallbackIndex >= 0 && ids != null && fallbackIndex < ids.length ? fallbackIndex : 0;
    }
}
