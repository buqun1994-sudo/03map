package com.autonavi.amapauto.content;

import com.icar03.content.model.VehicleControl;

import android.content.Context;
import android.content.SharedPreferences;

public final class ContentPreferenceStore {
    private static final String PREFERENCES_NAME = "content_preferences_v1";
    private static final String KEY_SHOW_WEEKDAY = "top_bar_show_weekday";
    private static final String KEY_SHOW_SECONDS = "top_bar_show_seconds";
    private static final String KEY_PAGE_ID = "current_page_id";
    private static final String KEY_CONTROL_ID = "current_control_id";
    private static final String KEY_DOCK_SLOT_PREFIX = "dock_slot_";
    private static final String KEY_MANUAL_LEVEL_PREFIX = "control_manual_level_";

    private final SharedPreferences preferences;

    public ContentPreferenceStore(Context context) {
        preferences = context.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE);
    }

    public void load(ContentState state) {
        state.showWeekday = preferences.getBoolean(KEY_SHOW_WEEKDAY, true);
        state.showSeconds = preferences.getBoolean(KEY_SHOW_SECONDS, false);
        String savedPageId = preferences.getString(KEY_PAGE_ID, ContentRegistry.Pages.LYRICS);
        state.pageIndex = indexOf(ContentRegistry.visiblePageIds(), savedPageId, 1);
        String savedControlId = preferences.getString(KEY_CONTROL_ID, ContentRegistry.Controls.MEDIA);
        state.controlIndex = indexOf(ContentRegistry.controlIds(), savedControlId, 0);
        state.setRememberedControlLevels(loadManualLevels());
        for (int slot = 0; slot < state.dockItems.length; slot++) {
            String savedItem = preferences.getString(KEY_DOCK_SLOT_PREFIX + slot, state.dockItems[slot]);
            state.dockItems[slot] = isValidDockItem(savedItem) ? savedItem : state.dockItems[slot];
        }
    }

    public void save(ContentState state) {
        SharedPreferences.Editor editor = preferences.edit();
        editor.putBoolean(KEY_SHOW_WEEKDAY, state.showWeekday);
        editor.putBoolean(KEY_SHOW_SECONDS, state.showSeconds);
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
