package com.autonavi.amapauto.content;

import android.content.Context;
import android.content.SharedPreferences;

public final class ContentPreferenceStore {
    private static final String PREFERENCES_NAME = "content_preferences_v1";
    private static final String KEY_SHOW_WEEKDAY = "top_bar_show_weekday";
    private static final String KEY_SHOW_SECONDS = "top_bar_show_seconds";
    private static final String KEY_THEME_MODE = "theme_mode";
    private static final String KEY_PAGE_ID = "current_page_id";
    private static final String KEY_CONTROL_ID = "current_control_id";
    private static final String KEY_DOCK_SLOT_PREFIX = "dock_slot_";

    private final SharedPreferences preferences;

    public ContentPreferenceStore(Context context) {
        preferences = context.getSharedPreferences(PREFERENCES_NAME, Context.MODE_PRIVATE);
    }

    public void load(ContentState state) {
        state.showWeekday = preferences.getBoolean(KEY_SHOW_WEEKDAY, true);
        state.showSeconds = preferences.getBoolean(KEY_SHOW_SECONDS, false);
        state.themeMode = preferences.getInt(KEY_THEME_MODE, state.themeMode)
                == ContentState.THEME_DARK ? ContentState.THEME_DARK : ContentState.THEME_LIGHT;
        String savedPageId = preferences.getString(KEY_PAGE_ID, ContentRegistry.Pages.LYRICS);
        state.pageIndex = indexOf(ContentRegistry.visiblePageIds(), savedPageId, 1);
        String savedControlId = preferences.getString(KEY_CONTROL_ID, ContentRegistry.Controls.MEDIA);
        state.controlIndex = indexOf(ContentRegistry.controlIds(), savedControlId, 0);
        for (int slot = 0; slot < state.dockItems.length; slot++) {
            String savedItem = preferences.getString(KEY_DOCK_SLOT_PREFIX + slot, state.dockItems[slot]);
            state.dockItems[slot] = isValidDockItem(savedItem) ? savedItem : state.dockItems[slot];
        }
    }

    public void save(ContentState state) {
        SharedPreferences.Editor editor = preferences.edit();
        editor.putBoolean(KEY_SHOW_WEEKDAY, state.showWeekday);
        editor.putBoolean(KEY_SHOW_SECONDS, state.showSeconds);
        editor.putInt(KEY_THEME_MODE, state.themeMode);
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
