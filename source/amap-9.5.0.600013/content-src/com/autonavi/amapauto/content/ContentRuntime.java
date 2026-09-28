package com.autonavi.amapauto.content;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

public final class ContentRuntime {
    private static final Object LOCK = new Object();
    private static volatile int lastAmapThemeMode = ContentState.THEME_LIGHT;
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
        store.setThemeMode(lastAmapThemeMode);
        renderer = new ContentRenderer(host.getContext(), host, store, lastAmapThemeMode);
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
        Activity activity = host.getContext() instanceof Activity
                ? (Activity) host.getContext() : null;
        synchronized (LOCK) {
            if (activeRuntime != null && activeRuntime.host == host) {
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
        synchronized (LOCK) {
            if (activeRuntime != null && activeRuntime.ownerActivity.get() == activity) {
                activeRuntime.renderer.resume();
            }
        }
    }

    public static void onAmapThemeChanged(int mode) {
        int resolvedMode = mode == 2 ? ContentState.THEME_DARK : ContentState.THEME_LIGHT;
        lastAmapThemeMode = resolvedMode;
        synchronized (LOCK) {
            if (activeRuntime != null) {
                activeRuntime.store.setThemeMode(resolvedMode);
            }
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

    private static View findContentHost(ViewGroup contentRoot) {
        int hostId = contentRoot.getResources().getIdentifier(
                "content_host", "id", contentRoot.getContext().getPackageName());
        return hostId == 0 ? null : contentRoot.findViewById(hostId);
    }

    private void destroy() {
        renderer.destroy();
    }
}
