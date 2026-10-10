package com.autonavi.amapauto.content;

import com.icar03.content.model.VehicleControl;
import com.icar03.content.model.LyricPreferenceRules;

import android.content.Context;
import android.content.SharedPreferences;

public final class ContentPreferenceStore {
    private static final String PREFERENCES_NAME = "content_preferences_v1";
    private static final int PREFERENCES_VERSION = 8;
    private static final String KEY_PREFERENCES_VERSION = "preferences_version";
    private static final String KEY_SHOW_WEEKDAY = "top_bar_show_weekday";
    private static final String KEY_SHOW_SECONDS = "top_bar_show_seconds";
    private static final String KEY_SHOW_INDOOR_TEMPERATURE = "top_bar_show_indoor_temperature";
    private static final String KEY_SHOW_BATTERY = "top_bar_show_battery";
    private static final String KEY_SHOW_RANGE = "top_bar_show_range";
    private static final String KEY_SHOW_CHARGING_STATUS = "top_bar_show_charging_status";
    private static final String KEY_SHOW_PLUGGED_STATUS = "top_bar_show_plugged_status";
    private static final String KEY_SHOW_SCHEDULED_CHARGING = "top_bar_show_scheduled_charging";
    private static final String KEY_SHOW_CHARGING_REMAINING_TIME = "top_bar_show_charging_remaining_time";
    private static final String KEY_SHOW_CHARGING_POWER = "top_bar_show_charging_power";
    private static final String KEY_LYRICS_FONT_SCALE = "lyrics_font_scale";
    private static final String KEY_LYRICS_LINE_SPACING = "lyrics_line_spacing";
    private static final String KEY_LYRICS_FONT_SIZE_SP = "lyrics_font_size_sp";
    private static final String KEY_LYRICS_CURRENT_FONT_SIZE_SP = "lyrics_current_font_size_sp";
    private static final String KEY_LYRICS_LINE_GAP_DP = "lyrics_line_gap_dp";
    private static final String KEY_LYRICS_ALIGNMENT = "lyrics_alignment";
    private static final String KEY_LYRICS_COLOR_MODE = "lyrics_color_mode";
    private static final String KEY_LYRICS_CUSTOM_COLOR = "lyrics_custom_color";
    private static final String KEY_LYRICS_CURRENT_COLOR_MODE = "lyrics_current_color_mode";
    private static final String KEY_LYRICS_CURRENT_CUSTOM_COLOR = "lyrics_current_custom_color";
    private static final String KEY_LYRICS_IMMERSIVE_FONT_SIZE_SP = "lyrics_immersive_font_size_sp";
    private static final String KEY_LYRICS_IMMERSIVE_CURRENT_FONT_SIZE_SP = "lyrics_immersive_current_font_size_sp";
    private static final String KEY_LYRICS_IMMERSIVE_LINE_GAP_DP = "lyrics_immersive_line_gap_dp";
    private static final String KEY_LYRICS_SHOW_TRANSLATION = "lyrics_show_translation";
    private static final String KEY_LYRICS_SPEAKER_LAYOUT = "lyrics_speaker_layout";
    private static final String KEY_LYRICS_HIGHLIGHT = "lyrics_highlight";
    private static final String KEY_IMMERSIVE_SHOW_TOP_BAR = "lyrics_immersive_show_top_bar";
    private static final String KEY_IMMERSIVE_TOP_BAR_KEEP_SPLIT = "lyrics_immersive_top_bar_keep_split";
    private static final String KEY_IMMERSIVE_SHOW_DOCK = "lyrics_immersive_show_dock";
    private static final String KEY_SHOW_AMBIENT_ARTWORK = "ambient_show_artwork";
    private static final String KEY_SHOW_MEDIA_SOURCE_SWITCHER = "media_show_source_switcher";
    private static final String KEY_DOCK_BUTTON_COUNT = "dock_button_count";
    private static final String KEY_SHOW_ACTION_FEEDBACK = "interaction_show_action_feedback";
    private static final String KEY_AUTO_CLOSE_SETTINGS_ON_DRIVE = "interaction_auto_close_settings_on_drive";
    private static final String KEY_GESTURE_BAR_REMINDER = "interaction_gesture_bar_reminder";
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
        int version = readSchemaVersion();
        state.showWeekday = readBoolean(KEY_SHOW_WEEKDAY, true);
        state.showSeconds = readBoolean(KEY_SHOW_SECONDS, false);
        state.showIndoorTemperature = readBoolean(KEY_SHOW_INDOOR_TEMPERATURE, true);
        state.showBattery = readBoolean(KEY_SHOW_BATTERY, true);
        state.showRange = readBoolean(KEY_SHOW_RANGE, true);
        state.showChargingStatus = readBoolean(KEY_SHOW_CHARGING_STATUS, true);
        if (version <= 6) {
            // The legacy aggregate was the only charging visibility choice before schema 7.
            // Preserve an explicit false as four independent false choices so migration never reopens them.
            boolean legacyChargingVisible = state.showChargingStatus;
            state.showPluggedStatus = legacyChargingVisible;
            state.showScheduledCharging = legacyChargingVisible;
            state.showChargingRemainingTime = legacyChargingVisible;
            state.showChargingPower = legacyChargingVisible;
        } else {
            state.showPluggedStatus = readBoolean(KEY_SHOW_PLUGGED_STATUS, true);
            state.showScheduledCharging = readBoolean(KEY_SHOW_SCHEDULED_CHARGING, true);
            state.showChargingRemainingTime = readBoolean(KEY_SHOW_CHARGING_REMAINING_TIME, true);
            state.showChargingPower = readBoolean(KEY_SHOW_CHARGING_POWER, true);
        }
        float legacyFontScale = clampFontScale(readFloat(KEY_LYRICS_FONT_SCALE, 1.0f));
        int legacyLineSpacing = clampLineSpacing(readInt(KEY_LYRICS_LINE_SPACING, 1));
        state.lyricsFontScale = legacyFontScale;
        state.lyricsLineSpacing = legacyLineSpacing;
        if (version <= 5) {
            // Versions 1..5 had only scale/spacing. Keep those choices while introducing
            // independent normal/current/full-screen fields in the same migration transaction.
            state.lyricsFontSizeSp = LyricPreferenceRules.fontSize(preferences.contains(KEY_LYRICS_FONT_SCALE)
                    ? 40.0f * legacyFontScale : LyricPreferenceRules.DEFAULT_FONT_SP);
            state.lyricsCurrentFontSizeSp = LyricPreferenceRules.currentFontSize(
                    preferences.contains(KEY_LYRICS_FONT_SCALE) ? 48.0f * legacyFontScale
                            : LyricPreferenceRules.DEFAULT_CURRENT_SP, state.lyricsFontSizeSp);
            state.lyricsLineGapDp = LyricPreferenceRules.lineGap(legacyLineGapDp(legacyLineSpacing));
            state.lyricsImmersiveFontSizeSp = LyricPreferenceRules.immersiveFontSize(
                    40.0f * legacyFontScale * 3.0f);
            state.lyricsImmersiveLineGapDp = LyricPreferenceRules.immersiveLineGap(
                    legacyLineGapDp(legacyLineSpacing) * 3.0f);
            state.lyricsAlignment = LyricPreferenceRules.DEFAULT_ALIGNMENT;
            state.lyricsColorMode = LyricPreferenceRules.DEFAULT_COLOR_MODE;
            state.lyricsCustomColor = LyricPreferenceRules.DEFAULT_CUSTOM_COLOR;
            state.lyricsCurrentColorMode = LyricPreferenceRules.DEFAULT_COLOR_MODE;
            state.lyricsCurrentCustomColor = LyricPreferenceRules.DEFAULT_CUSTOM_COLOR;
        } else {
            state.lyricsFontSizeSp = LyricPreferenceRules.fontSize(
                    readFloat(KEY_LYRICS_FONT_SIZE_SP, LyricPreferenceRules.DEFAULT_FONT_SP));
            state.lyricsCurrentFontSizeSp = LyricPreferenceRules.currentFontSize(
                    readFloat(KEY_LYRICS_CURRENT_FONT_SIZE_SP, LyricPreferenceRules.DEFAULT_CURRENT_SP),
                    state.lyricsFontSizeSp);
            state.lyricsLineGapDp = LyricPreferenceRules.lineGap(
                    readFloat(KEY_LYRICS_LINE_GAP_DP, LyricPreferenceRules.DEFAULT_GAP_DP));
            state.lyricsAlignment = LyricPreferenceRules.alignment(
                    readString(KEY_LYRICS_ALIGNMENT, LyricPreferenceRules.DEFAULT_ALIGNMENT));
            state.lyricsColorMode = LyricPreferenceRules.colorMode(
                    readString(KEY_LYRICS_COLOR_MODE, LyricPreferenceRules.DEFAULT_COLOR_MODE));
            state.lyricsCustomColor = LyricPreferenceRules.opaqueColor(
                    readInt(KEY_LYRICS_CUSTOM_COLOR, LyricPreferenceRules.DEFAULT_CUSTOM_COLOR));
            state.lyricsCurrentColorMode = LyricPreferenceRules.colorMode(
                    readString(KEY_LYRICS_CURRENT_COLOR_MODE, LyricPreferenceRules.DEFAULT_COLOR_MODE));
            state.lyricsCurrentCustomColor = LyricPreferenceRules.opaqueColor(
                    readInt(KEY_LYRICS_CURRENT_CUSTOM_COLOR, LyricPreferenceRules.DEFAULT_CUSTOM_COLOR));
            state.lyricsImmersiveFontSizeSp = LyricPreferenceRules.immersiveFontSize(
                    readFloat(KEY_LYRICS_IMMERSIVE_FONT_SIZE_SP,
                            LyricPreferenceRules.DEFAULT_IMMERSIVE_FONT_SP));
            state.lyricsImmersiveLineGapDp = LyricPreferenceRules.immersiveLineGap(
                    readFloat(KEY_LYRICS_IMMERSIVE_LINE_GAP_DP,
                            LyricPreferenceRules.DEFAULT_IMMERSIVE_GAP_DP));
        }
        float immersiveNormal = LyricPreferenceRules.immersiveFontSize(state.lyricsImmersiveFontSizeSp);
        if (version <= 6 && (preferences.contains(KEY_LYRICS_FONT_SCALE)
                || preferences.contains(KEY_LYRICS_CURRENT_FONT_SIZE_SP))) {
            float ordinaryNormal = LyricPreferenceRules.fontSize(state.lyricsFontSizeSp);
            float ordinaryCurrent = LyricPreferenceRules.currentFontSize(
                    state.lyricsCurrentFontSizeSp, ordinaryNormal);
            // Keep the saved ordinary-current/full-screen-normal ratio, clamped
            // to the current normal..normal+60 range.
            state.lyricsImmersiveCurrentFontSizeSp = LyricPreferenceRules.immersiveCurrentFontSize(
                    immersiveNormal * ordinaryCurrent / ordinaryNormal, immersiveNormal);
        } else {
            state.lyricsImmersiveCurrentFontSizeSp = LyricPreferenceRules.immersiveCurrentFontSize(
                    readFloat(KEY_LYRICS_IMMERSIVE_CURRENT_FONT_SIZE_SP,
                            LyricPreferenceRules.DEFAULT_IMMERSIVE_CURRENT_SP), immersiveNormal);
        }
        state.lyricsShowTranslation = readBoolean(KEY_LYRICS_SHOW_TRANSLATION, true);
        state.lyricsSpeakerLayout = readBoolean(KEY_LYRICS_SPEAKER_LAYOUT, true);
        state.lyricsHighlight = readBoolean(KEY_LYRICS_HIGHLIGHT, LyricPreferenceRules.DEFAULT_HIGHLIGHT);
        state.immersiveShowTopBar = readBoolean(KEY_IMMERSIVE_SHOW_TOP_BAR, true);
        state.immersiveTopBarKeepSplit = readBoolean(KEY_IMMERSIVE_TOP_BAR_KEEP_SPLIT, true);
        state.immersiveShowDock = readBoolean(KEY_IMMERSIVE_SHOW_DOCK, true);
        state.showAmbientArtwork = readBoolean(KEY_SHOW_AMBIENT_ARTWORK, true);
        state.showMediaSourceSwitcher = readBoolean(KEY_SHOW_MEDIA_SOURCE_SWITCHER, true);
        state.dockButtonCount = clampDockButtonCount(readInt(KEY_DOCK_BUTTON_COUNT, 5));
        state.showActionFeedback = readBoolean(KEY_SHOW_ACTION_FEEDBACK, true);
        state.autoCloseSettingsOnDrive = readBoolean(KEY_AUTO_CLOSE_SETTINGS_ON_DRIVE, true);
        // Versions 1..4 predate this preference; migrate them to the default-on behavior without rewriting old entries.
        state.gestureBarReminder = version <= 4 ? true : readBoolean(KEY_GESTURE_BAR_REMINDER, true);
        state.uiOpacity = clampUiOpacity(readFloat(KEY_UI_OPACITY, 1.0f));
        // Version 1 only knew the weekday/seconds fields; all new fields have safe defaults.
        // Writing the version on the next preference change completes the migration lazily.
        if (version > PREFERENCES_VERSION) {
            state.lyricsFontScale = 1.0f;
            state.lyricsLineSpacing = 1;
            state.dockButtonCount = 5;
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
        editor.putBoolean(KEY_SHOW_RANGE, state.showRange);
        editor.putBoolean(KEY_SHOW_CHARGING_STATUS, state.showChargingStatus);
        editor.putBoolean(KEY_SHOW_PLUGGED_STATUS, state.showPluggedStatus);
        editor.putBoolean(KEY_SHOW_SCHEDULED_CHARGING, state.showScheduledCharging);
        editor.putBoolean(KEY_SHOW_CHARGING_REMAINING_TIME, state.showChargingRemainingTime);
        editor.putBoolean(KEY_SHOW_CHARGING_POWER, state.showChargingPower);
        editor.putFloat(KEY_LYRICS_FONT_SCALE, clampFontScale(state.lyricsFontScale));
        editor.putInt(KEY_LYRICS_LINE_SPACING, clampLineSpacing(state.lyricsLineSpacing));
        float normalFontSize = LyricPreferenceRules.fontSize(state.lyricsFontSizeSp);
        editor.putFloat(KEY_LYRICS_FONT_SIZE_SP, normalFontSize);
        editor.putFloat(KEY_LYRICS_CURRENT_FONT_SIZE_SP,
                LyricPreferenceRules.currentFontSize(state.lyricsCurrentFontSizeSp, normalFontSize));
        editor.putFloat(KEY_LYRICS_LINE_GAP_DP, LyricPreferenceRules.lineGap(state.lyricsLineGapDp));
        editor.putString(KEY_LYRICS_ALIGNMENT, LyricPreferenceRules.alignment(state.lyricsAlignment));
        editor.putString(KEY_LYRICS_COLOR_MODE, LyricPreferenceRules.colorMode(state.lyricsColorMode));
        editor.putInt(KEY_LYRICS_CUSTOM_COLOR, LyricPreferenceRules.opaqueColor(state.lyricsCustomColor));
        editor.putString(KEY_LYRICS_CURRENT_COLOR_MODE,
                LyricPreferenceRules.colorMode(state.lyricsCurrentColorMode));
        editor.putInt(KEY_LYRICS_CURRENT_CUSTOM_COLOR,
                LyricPreferenceRules.opaqueColor(state.lyricsCurrentCustomColor));
        editor.putFloat(KEY_LYRICS_IMMERSIVE_FONT_SIZE_SP,
                LyricPreferenceRules.immersiveFontSize(state.lyricsImmersiveFontSizeSp));
        float immersiveNormalFontSize = LyricPreferenceRules.immersiveFontSize(state.lyricsImmersiveFontSizeSp);
        editor.putFloat(KEY_LYRICS_IMMERSIVE_CURRENT_FONT_SIZE_SP,
                LyricPreferenceRules.immersiveCurrentFontSize(
                        state.lyricsImmersiveCurrentFontSizeSp, immersiveNormalFontSize));
        editor.putFloat(KEY_LYRICS_IMMERSIVE_LINE_GAP_DP,
                LyricPreferenceRules.immersiveLineGap(state.lyricsImmersiveLineGapDp));
        editor.putBoolean(KEY_LYRICS_SHOW_TRANSLATION, state.lyricsShowTranslation);
        editor.putBoolean(KEY_LYRICS_SPEAKER_LAYOUT, state.lyricsSpeakerLayout);
        editor.putBoolean(KEY_LYRICS_HIGHLIGHT, state.lyricsHighlight);
        editor.putBoolean(KEY_IMMERSIVE_SHOW_TOP_BAR, state.immersiveShowTopBar);
        editor.putBoolean(KEY_IMMERSIVE_TOP_BAR_KEEP_SPLIT, state.immersiveTopBarKeepSplit);
        editor.putBoolean(KEY_IMMERSIVE_SHOW_DOCK, state.immersiveShowDock);
        editor.putBoolean(KEY_SHOW_AMBIENT_ARTWORK, state.showAmbientArtwork);
        editor.putBoolean(KEY_SHOW_MEDIA_SOURCE_SWITCHER, state.showMediaSourceSwitcher);
        editor.putInt(KEY_DOCK_BUTTON_COUNT, clampDockButtonCount(state.dockButtonCount));
        editor.putBoolean(KEY_SHOW_ACTION_FEEDBACK, state.showActionFeedback);
        editor.putBoolean(KEY_AUTO_CLOSE_SETTINGS_ON_DRIVE, state.autoCloseSettingsOnDrive);
        editor.putBoolean(KEY_GESTURE_BAR_REMINDER, state.gestureBarReminder);
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

    private int readSchemaVersion() {
        if (!preferences.contains(KEY_PREFERENCES_VERSION)) {
            return 1;
        }
        Object stored = preferences.getAll().get(KEY_PREFERENCES_VERSION);
        return stored instanceof Integer ? ((Integer) stored).intValue() : PREFERENCES_VERSION;
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

    private float legacyLineGapDp(int value) {
        switch (value) {
            case 0: return 28.0f * 0.75f;
            case 2: return 28.0f * 1.35f;
            case 1:
            default: return 28.0f;
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
        return value >= 3 && value <= 6 ? value : 5;
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
