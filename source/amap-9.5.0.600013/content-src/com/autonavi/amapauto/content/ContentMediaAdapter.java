package com.autonavi.amapauto.content;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.List;

public final class ContentMediaAdapter implements ContentPorts.MediaPort {
    private static final String TAG = "ContentMediaAdapter";
    private static final String MEDIA_CENTER_PACKAGE = "com.tencent.wecarflow";
    private static final String MEDIA_CENTER_CLASS = "com.mengbo.service.MediaCenterPlayService";
    private static final String MEDIA_SOURCE_ACTION = "com.mengbo.multimedia.local.switch.mediasource";
    private static final long REFRESH_DELAY_MS = 800L;

    private final Context context;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final MediaSessionManager.OnActiveSessionsChangedListener sessionListener =
            new MediaSessionManager.OnActiveSessionsChangedListener() {
                @Override
                public void onActiveSessionsChanged(List<MediaController> controllers) {
                    updateController(controllers);
                }
            };
    private final MediaController.Callback controllerCallback = new MediaController.Callback() {
        @Override
        public void onPlaybackStateChanged(PlaybackState state) {
            publishSnapshot();
        }

        @Override
        public void onMetadataChanged(MediaMetadata metadata) {
            generation++;
            publishSnapshot();
        }
    };
    private final Runnable refreshRunnable = new Runnable() {
        @Override
        public void run() {
            refreshSessions();
        }
    };
    private ContentPorts.MediaSnapshotListener listener;
    private MediaSessionManager sessionManager;
    private MediaController controller;
    private boolean running;
    private int generation;

    public ContentMediaAdapter(Context context) {
        this.context = context.getApplicationContext();
    }

    @Override
    public synchronized boolean isAvailable() {
        return controller != null;
    }

    @Override
    public boolean requestPlayback(boolean playing) {
        MediaController currentController;
        synchronized (this) {
            currentController = controller;
        }
        if (currentController == null) {
            return false;
        }
        try {
            if (playing) {
                currentController.getTransportControls().play();
            } else {
                currentController.getTransportControls().pause();
            }
            return true;
        } catch (RuntimeException error) {
            Log.w(TAG, "media playback command failed", error);
            return false;
        }
    }

    @Override
    public boolean requestNext() {
        MediaController currentController;
        synchronized (this) {
            currentController = controller;
        }
        if (currentController == null) {
            return false;
        }
        try {
            currentController.getTransportControls().skipToNext();
            return true;
        } catch (RuntimeException error) {
            Log.w(TAG, "media next command failed", error);
            return false;
        }
    }

    @Override
    public boolean requestSource(String source) {
        int sourceCode = sourceCode(source);
        if (sourceCode < 0) {
            return false;
        }
        Intent intent = new Intent(MEDIA_SOURCE_ACTION);
        intent.setComponent(new ComponentName(MEDIA_CENTER_PACKAGE, MEDIA_CENTER_CLASS));
        intent.putExtra("audio_source", sourceCode);
        try {
            context.startService(intent);
            handler.removeCallbacks(refreshRunnable);
            handler.postDelayed(refreshRunnable, REFRESH_DELAY_MS);
            return true;
        } catch (RuntimeException error) {
            Log.w(TAG, "media source command failed", error);
            return false;
        }
    }

    @Override
    public synchronized void start(ContentPorts.MediaSnapshotListener listener) {
        this.listener = listener;
        running = true;
        try {
            sessionManager = (MediaSessionManager) context.getSystemService(Context.MEDIA_SESSION_SERVICE);
            if (sessionManager != null) {
                ComponentName notificationListener = new ComponentName(context, ContentMediaListener.class);
                sessionManager.addOnActiveSessionsChangedListener(sessionListener, notificationListener, handler);
            }
        } catch (SecurityException error) {
            Log.w(TAG, "media session access unavailable", error);
        } catch (RuntimeException error) {
            Log.w(TAG, "media session manager unavailable", error);
        }
        refreshSessions();
    }

    @Override
    public synchronized void stop() {
        running = false;
        handler.removeCallbacks(refreshRunnable);
        if (sessionManager != null) {
            try {
                sessionManager.removeOnActiveSessionsChangedListener(sessionListener);
            } catch (RuntimeException ignored) {
            }
        }
        if (controller != null) {
            try {
                controller.unregisterCallback(controllerCallback);
            } catch (RuntimeException ignored) {
            }
        }
        controller = null;
        sessionManager = null;
        listener = null;
    }

    private void refreshSessions() {
        MediaSessionManager manager;
        synchronized (this) {
            if (!running) {
                return;
            }
            manager = sessionManager;
        }
        if (manager == null) {
            publishSnapshot();
            return;
        }
        try {
            ComponentName notificationListener = new ComponentName(context, ContentMediaListener.class);
            updateController(manager.getActiveSessions(notificationListener));
        } catch (SecurityException error) {
            publishSnapshot();
        } catch (RuntimeException error) {
            Log.w(TAG, "active media sessions unavailable", error);
            publishSnapshot();
        }
    }

    private void updateController(List<MediaController> controllers) {
        MediaController selected = selectController(controllers);
        MediaController oldController;
        synchronized (this) {
            oldController = controller;
            if (oldController == selected) {
                publishSnapshot();
                return;
            }
            controller = selected;
        }
        if (oldController != null) {
            try {
                oldController.unregisterCallback(controllerCallback);
            } catch (RuntimeException ignored) {
            }
        }
        if (selected != null) {
            try {
                selected.registerCallback(controllerCallback, handler);
            } catch (RuntimeException error) {
                Log.w(TAG, "media callback unavailable", error);
            }
        }
        generation++;
        publishSnapshot();
    }

    private MediaController selectController(List<MediaController> controllers) {
        if (controllers == null || controllers.isEmpty()) {
            return null;
        }
        MediaController fallback = null;
        for (MediaController candidate : controllers) {
            if (candidate == null) {
                continue;
            }
            if (fallback == null) {
                fallback = candidate;
            }
            PlaybackState state = candidate.getPlaybackState();
            if (state != null && (state.getState() == PlaybackState.STATE_PLAYING
                    || state.getState() == PlaybackState.STATE_BUFFERING)) {
                return candidate;
            }
        }
        return fallback;
    }

    private void publishSnapshot() {
        ContentPorts.MediaSnapshotListener stateListener;
        MediaController currentController;
        int currentGeneration;
        synchronized (this) {
            if (!running) {
                return;
            }
            stateListener = listener;
            currentController = controller;
            currentGeneration = generation;
        }
        if (stateListener == null) {
            return;
        }
        if (currentController == null) {
            stateListener.onMediaSnapshot(ContentPorts.MediaSnapshot.unavailable());
            return;
        }
        MediaMetadata metadata = currentController.getMetadata();
        PlaybackState playbackState = currentController.getPlaybackState();
        String packageName = currentController.getPackageName();
        String title = metadata == null ? "暂无媒体"
                : stringMetadata(metadata, MediaMetadata.METADATA_KEY_TITLE, "暂无媒体");
        String artist = metadata == null ? "未连接"
                : stringMetadata(metadata, MediaMetadata.METADATA_KEY_ARTIST, "未连接");
        boolean playing = playbackState != null && playbackState.getState() == PlaybackState.STATE_PLAYING;
        long actions = playbackState == null ? 0L : playbackState.getActions();
        boolean playbackAvailable = (actions & (PlaybackState.ACTION_PLAY | PlaybackState.ACTION_PAUSE)) != 0L;
        boolean nextAvailable = (actions & PlaybackState.ACTION_SKIP_TO_NEXT) != 0L;
        stateListener.onMediaSnapshot(new ContentPorts.MediaSnapshot(true, false,
                sourceForPackage(packageName), playing, currentGeneration, title, artist,
                playbackAvailable, nextAvailable));
    }

    private String stringMetadata(MediaMetadata metadata, String key, String fallback) {
        String value = metadata.getString(key);
        return value == null || value.length() == 0 ? fallback : value;
    }

    private String sourceForPackage(String packageName) {
        if (packageName == null) {
            return "本机";
        }
        String lowerPackage = packageName.toLowerCase();
        if (lowerPackage.contains("bluetooth") || lowerPackage.contains("btmusic")) {
            return "蓝牙";
        }
        if (lowerPackage.contains("netease") || lowerPackage.contains("cloudmusic")) {
            return "网易云";
        }
        if (lowerPackage.contains("wecar") || lowerPackage.contains("mengbo")) {
            return "爱趣听";
        }
        if (lowerPackage.contains("usb")) {
            return "U盘";
        }
        return "本机";
    }

    private int sourceCode(String source) {
        if ("U盘".equals(source)) {
            return 1;
        }
        if ("蓝牙".equals(source)) {
            return 2;
        }
        if ("本机".equals(source)) {
            return 3;
        }
        if ("爱趣听".equals(source)) {
            return 4;
        }
        if ("网易云".equals(source)) {
            return 9;
        }
        return -1;
    }
}
