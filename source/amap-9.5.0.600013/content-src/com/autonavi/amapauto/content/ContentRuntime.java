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
    private static final int THEME_UNKNOWN = -1;
    private static volatile int lastAmapThemeMode = THEME_UNKNOWN;
    private static boolean hasAmapThemeCallback;
    private static WeakReference<ViewGroup> pendingContentRoot = new WeakReference<>(null);
    private static boolean pendingHostPaused;
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static volatile float lastDividerX = Float.NaN;
    private static volatile float lastExpandedDividerX;
    private static volatile float lastMapWidth;
    private static ContentRuntime activeRuntime;

    private final WeakReference<Activity> ownerActivity;
    private final ViewGroup host;
    private final ContentStore store;
    private long consumedBackDownTime = -1L;
    private final com.icar03.content.host.ContentComposeHost renderer;

    private ContentRuntime(Activity activity, ViewGroup host) {
        ownerActivity = new WeakReference<>(activity);
        this.host = host;
        store = new ContentStore(host.getContext());
        store.setThemeMode(lastAmapThemeMode);
        renderer = new com.icar03.content.host.ContentComposeHost(host.getContext(), host, store);
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
        readInitialAmapTheme();
        Activity activity = findActivity(host.getContext());
        synchronized (LOCK) {
            if (lastAmapThemeMode == THEME_UNKNOWN
                    || (pendingHostPaused && pendingContentRoot.get() == contentRoot)) {
                if (pendingContentRoot.get() != contentRoot) pendingHostPaused = false;
                pendingContentRoot = new WeakReference<>(contentRoot);
                onAmapReady();
                return;
            }
            pendingContentRoot.clear();
            pendingHostPaused = false;
            if (activeRuntime != null && activeRuntime.host == host) {
                activeRuntime.store.setThemeMode(lastAmapThemeMode);
                return;
            }
            if (activeRuntime != null) {
                activeRuntime.destroy();
            }
            activeRuntime = new ContentRuntime(activity, host);
            if (!Float.isNaN(lastDividerX)) {
                activeRuntime.renderer.updateDivider(
                        lastDividerX, lastExpandedDividerX, lastMapWidth);
            }
        }
    }

    public static void detach(Activity activity) {
        synchronized (LOCK) {
            ViewGroup pending = pendingContentRoot.get();
            if (pending != null && (activity == null
                    || findActivity(pending.getContext()) == activity)) {
                pendingContentRoot.clear();
                pendingHostPaused = false;
            }
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

    public static boolean onBackPressed(Activity activity) {
        synchronized (LOCK) {
            return activeRuntime != null && activeRuntime.ownerActivity.get() == activity
                    && activeRuntime.renderer.handleBack();
        }
    }

    public static boolean onBackKeyDown(Activity activity, android.view.KeyEvent event) {
        synchronized (LOCK) {
            if (activeRuntime == null || activeRuntime.ownerActivity.get() != activity) return false;
            if (activeRuntime.consumedBackDownTime == event.getDownTime()) {
                if (event.isCanceled()) activeRuntime.consumedBackDownTime = -1L;
                return true;
            }
            if (event.isCanceled() || !activeRuntime.renderer.handleBack()) return false;
            activeRuntime.consumedBackDownTime = event.getDownTime();
            return true;
        }
    }

    public static boolean onBackKeyUp(Activity activity, android.view.KeyEvent event) {
        synchronized (LOCK) {
            if (activeRuntime == null || activeRuntime.ownerActivity.get() != activity
                    || activeRuntime.consumedBackDownTime != event.getDownTime()) return false;
            activeRuntime.consumedBackDownTime = -1L;
            return true;
        }
    }

    public static void onHostPaused(Activity activity) {
        synchronized (LOCK) {
            ViewGroup pending = pendingContentRoot.get();
            if (pending != null && findActivity(pending.getContext()) == activity) {
                pendingHostPaused = true;
            }
            if (activeRuntime != null && activeRuntime.ownerActivity.get() == activity) {
                activeRuntime.consumedBackDownTime = -1L;
                activeRuntime.renderer.pause();
            }
        }
    }

    public static void onHostResumed(Activity activity) {
        readInitialAmapTheme();
        ViewGroup pending;
        synchronized (LOCK) {
            pending = pendingContentRoot.get();
            if (pending != null && findActivity(pending.getContext()) == activity) {
                pendingHostPaused = false;
            } else {
                pending = null;
            }
        }
        if (pending != null) attach(pending);
        synchronized (LOCK) {
            if (activeRuntime != null && activeRuntime.ownerActivity.get() == activity) {
                activeRuntime.store.setThemeMode(lastAmapThemeMode);
                activeRuntime.renderer.resume();
            }
        }
    }

    public static void onAmapThemeChanged(int mode) {
        // GAdaAndroid reports resolved day/night as 1/2. Unknown/automatic values
        // are not a resolved light theme and must not erase the last known state.
        if (mode != 1 && mode != 2) return;
        final int resolvedMode = mode == 2 ? ContentState.THEME_DARK : ContentState.THEME_LIGHT;
        synchronized (LOCK) {
            hasAmapThemeCallback = true;
            lastAmapThemeMode = resolvedMode;
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            MAIN.post(new Runnable() {
                @Override public void run() { applyAmapTheme(resolvedMode); }
            });
        } else {
            applyAmapTheme(resolvedMode);
        }
    }

    private static void applyAmapTheme(int mode) {
        ViewGroup pending;
        synchronized (LOCK) {
            if (lastAmapThemeMode != mode) return;
            if (activeRuntime != null) {
                activeRuntime.store.setThemeMode(mode);
            }
            pending = pendingHostPaused ? null : pendingContentRoot.get();
        }
        if (pending != null) attach(pending);
    }

    public static void onAmapReady() {
        // The existing native request emits resolved day/night through sendAutoStatus
        // (0x25/0x26). Run outside LOCK; native callbacks may arrive on another thread.
        MAIN.post(new Runnable() {
            @Override public void run() { requestInitialAmapTheme(); }
        });
    }

    private static void requestInitialAmapTheme() {
        synchronized (LOCK) {
            if (lastAmapThemeMode != THEME_UNKNOWN) return;
        }
        try {
            Class.forName("com.autonavi.amapauto.jni.protocol.AndroidProtocolExe")
                    .getMethod("nativeRequestDayNightMode", int.class).invoke(null, -1);
        } catch (ReflectiveOperationException | LinkageError unavailable) {
            // Retry via the existing Amap-ready event or a later host resume.
        }
    }

    private static void readInitialAmapTheme() {
        synchronized (LOCK) {
            // Bootstrap only: a lifecycle/native query can lag the actual theme
            // callback when the map engine is starting or moving to background.
            if (hasAmapThemeCallback) return;
        }
        try {
            Method query = Class.forName("com.autonavi.amapauto.jni.GAdaAndroid")
                    .getMethod("nativeIsNightMode");
            Object nightMode = query.invoke(null); // nativeIsNightMode()Z boxes Boolean.
            if (!(nightMode instanceof Boolean)) return;
            synchronized (LOCK) {
                // A callback may arrive during the native call; it remains authoritative.
                if (!hasAmapThemeCallback && Boolean.TRUE.equals(nightMode)) {
                    lastAmapThemeMode = ContentState.THEME_DARK;
                }
            }
        } catch (ReflectiveOperationException | LinkageError unavailable) {
            // Engine unavailable: preserve the last known Amap state.
        }
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

    private static Activity findActivity(Context context) {
        while (context instanceof android.content.ContextWrapper
                && !(context instanceof Activity)) {
            Context base = ((android.content.ContextWrapper) context).getBaseContext();
            if (base == context) break;
            context = base;
        }
        return context instanceof Activity ? (Activity) context : null;
    }

    private static View findContentHost(ViewGroup contentRoot) {
        int hostId = contentRoot.getResources().getIdentifier(
                "content_host", "id", contentRoot.getContext().getPackageName());
        return hostId == 0 ? null : contentRoot.findViewById(hostId);
    }

    private void destroy() {
        renderer.destroy();
        store.destroy();
    }
}
