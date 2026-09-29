package com.autonavi.amapauto.content;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;

public final class ContentRuntime {
    private static final Object LOCK = new Object();
    private static final int THEME_SYNC_ATTEMPTS = 8;
    private static final long THEME_SYNC_DELAY_MS = 250L;
    private static volatile int lastAmapThemeMode = ContentState.THEME_LIGHT;
    private static volatile boolean hasAmapThemeMode;
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static volatile float lastDividerX = Float.NaN;
    private static volatile float lastExpandedDividerX;
    private static volatile float lastMapWidth;
    private static ContentRuntime activeRuntime;

    private final WeakReference<Activity> ownerActivity;
    private final ViewGroup host;
    private final ContentStore store;
    private final ContentRenderer renderer;

    private ContentRuntime(Activity activity, ViewGroup host) {
        ownerActivity = new WeakReference<>(activity);
        this.host = host;
        store = new ContentStore(host.getContext());
        int initialTheme = hasAmapThemeMode ? lastAmapThemeMode : store.snapshot().themeMode;
        store.setThemeMode(initialTheme);
        renderer = new ContentRenderer(contentContext(host.getContext()), host, store, initialTheme);
    }

    static Context contentContext(Context original) {
        int systemDpi = Resources.getSystem().getDisplayMetrics().densityDpi;
        if (systemDpi <= 0) {
            return original;
        }
        Configuration config = new Configuration(original.getResources().getConfiguration());
        config.densityDpi = systemDpi;
        return original.createConfigurationContext(config);
    }

    public static void attach(ViewGroup contentRoot) {
        if (contentRoot == null) {
            return;
        }
        View hostView = findContentHost(contentRoot);
        if (!(hostView instanceof ViewGroup)) {
            return;
        }
        ViewGroup host = (ViewGroup) hostView;
        Integer currentTheme = readAmapTheme();
        if (currentTheme != null) {
            lastAmapThemeMode = currentTheme;
            hasAmapThemeMode = true;
        }
        Activity activity = host.getContext() instanceof Activity
                ? (Activity) host.getContext() : null;
        synchronized (LOCK) {
            if (activeRuntime != null && activeRuntime.host == host) {
                if (currentTheme != null) activeRuntime.store.setThemeMode(currentTheme);
                return;
            }
            if (activeRuntime != null) {
                activeRuntime.destroy();
            }
            activeRuntime = new ContentRuntime(activity, host);
            activeRuntime.renderer.build();
            if (!Float.isNaN(lastDividerX)) {
                activeRuntime.renderer.updateDivider(
                        lastDividerX, lastExpandedDividerX, lastMapWidth);
            }
        }
        syncAmapTheme(activity, 0);
    }

    public static void detach(Activity activity) {
        synchronized (LOCK) {
            if (activeRuntime == null) {
                return;
            }
            Activity owner = activeRuntime.ownerActivity.get();
            if (activity == null || owner == null || owner == activity) {
                activeRuntime.destroy();
                activeRuntime = null;
            }
        }
    }

    public static void onHostPaused(Activity activity) {
        synchronized (LOCK) {
            if (activeRuntime != null && activeRuntime.ownerActivity.get() == activity) {
                activeRuntime.renderer.pause();
            }
        }
    }

    public static void onHostResumed(Activity activity) {
        Integer currentTheme = readAmapTheme();
        if (currentTheme != null) {
            lastAmapThemeMode = currentTheme;
            hasAmapThemeMode = true;
        }
        synchronized (LOCK) {
            if (activeRuntime != null && activeRuntime.ownerActivity.get() == activity) {
                if (currentTheme != null) activeRuntime.store.setThemeMode(currentTheme);
                activeRuntime.renderer.resume();
            }
        }
        syncAmapTheme(activity, 0);
    }

    public static void onAmapThemeChanged(int mode) {
        final int resolvedMode = mode == 2 ? ContentState.THEME_DARK : ContentState.THEME_LIGHT;
        lastAmapThemeMode = resolvedMode;
        hasAmapThemeMode = true;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            MAIN.post(new Runnable() {
                @Override public void run() { applyAmapTheme(resolvedMode); }
            });
        } else {
            applyAmapTheme(resolvedMode);
        }
    }

    private static void applyAmapTheme(int mode) {
        synchronized (LOCK) {
            if (activeRuntime != null && lastAmapThemeMode == mode) {
                activeRuntime.store.setThemeMode(mode);
            }
        }
    }

    private static Integer readAmapTheme() {
        try {
            // The existing GAdaAndroid.nativeIsNightMode() is already used by Amap widgets.
            Method query = Class.forName("com.autonavi.amapauto.jni.GAdaAndroid")
                    .getMethod("nativeIsNightMode");
            return Boolean.TRUE.equals(query.invoke(null))
                    ? ContentState.THEME_DARK : ContentState.THEME_LIGHT;
        } catch (ReflectiveOperationException | LinkageError unavailable) {
            // Native startup may lag behind the content View; the normal callback remains authoritative.
            return null;
        }
    }

    private static void syncAmapTheme(final Activity activity, final int attempt) {
        if (attempt >= THEME_SYNC_ATTEMPTS) {
            return;
        }
        MAIN.postDelayed(new Runnable() {
            @Override
            public void run() {
                Integer currentTheme = readAmapTheme();
                synchronized (LOCK) {
                    if (activeRuntime == null || activeRuntime.ownerActivity.get() != activity) {
                        return;
                    }
                    if (currentTheme != null) {
                        lastAmapThemeMode = currentTheme;
                        hasAmapThemeMode = true;
                        activeRuntime.store.setThemeMode(currentTheme);
                        return;
                    }
                }
                syncAmapTheme(activity, attempt + 1);
            }
        }, attempt == 0 ? 0L : THEME_SYNC_DELAY_MS);
    }

    public static void onDividerChanged(float dividerX, float expandedDivider, float mapWidth) {
        lastDividerX = dividerX;
        lastExpandedDividerX = expandedDivider;
        lastMapWidth = mapWidth;
        synchronized (LOCK) {
            if (activeRuntime != null) {
                activeRuntime.renderer.updateDivider(dividerX, expandedDivider, mapWidth);
            }
        }
    }

    public static void onVehicleSnapshot(ContentPorts.VehicleSnapshot snapshot) {
        synchronized (LOCK) {
            if (activeRuntime != null) {
                activeRuntime.store.acceptVehicleSnapshot(snapshot);
            }
        }
    }

    public static void onMediaSnapshot(ContentPorts.MediaSnapshot snapshot) {
        synchronized (LOCK) {
            if (activeRuntime != null) {
                activeRuntime.store.acceptMediaSnapshot(snapshot);
            }
        }
    }

    private static View findContentHost(ViewGroup contentRoot) {
        int hostId = contentRoot.getResources().getIdentifier(
                "content_host", "id", contentRoot.getContext().getPackageName());
        return hostId == 0 ? null : contentRoot.findViewById(hostId);
    }

    private void destroy() {
        renderer.destroy();
    }
}
