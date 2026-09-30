package com.autonavi.amapauto.content;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.util.List;

public final class ContentMediaAdapter implements ContentPorts.MediaPort {
    private static final String TAG = "ContentMediaAdapter";
    private static final String MEDIA_CENTER_PACKAGE = "com.tencent.wecarflow";
    private static final String MEDIA_CENTER_CLASS = "com.mengbo.service.MediaCenterPlayService";
    private static final String MEDIA_SOURCE_ACTION = "com.mengbo.multimedia.local.switch.mediasource";
    private static final String SOURCE_STATUS_ACTION = "mengbo.com.mediaservice.PlayControlCheryAction";
    private static final String SOURCE_DESCRIPTOR = "com.mengbo.mediaservice.IPlayControlsInterface";
    private static final String CALLBACK_DESCRIPTOR = "com.mengbo.mediaservice.IPlayInfoCallBack";
    private static final long REFRESH_DELAY_MS = 800L;

    private final Context context;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private ContentPorts.MediaSnapshotListener listener;
    private MediaSessionManager sessionManager;
    private MediaSessionManager.OnActiveSessionsChangedListener sessionListener;
    private MediaController controller;
    private MediaController.Callback controllerCallback;
    private ServiceConnection sourceConnection;
    private IBinder sourceService;
    private Binder sourceCallback;
    private HandlerThread sourceThread;
    private Handler sourceHandler;
    private String actualSource;
    private boolean running;
    private long lifecycle;
    private int generation;

    public ContentMediaAdapter(Context context) {
        this.context = context.getApplicationContext();
    }

    @Override public synchronized boolean isAvailable() { return controller != null; }

    @Override public boolean requestPlayback(boolean playing) {
        MediaController current;
        synchronized (this) { current = controller; }
        if (current == null) return false;
        try {
            if (playing) current.getTransportControls().play();
            else current.getTransportControls().pause();
            return true;
        } catch (RuntimeException error) {
            Log.w(TAG, "media playback command failed", error);
            return false;
        }
    }

    @Override public boolean requestNext() {
        MediaController current;
        synchronized (this) { current = controller; }
        if (current == null) return false;
        try {
            current.getTransportControls().skipToNext();
            return true;
        } catch (RuntimeException error) {
            Log.w(TAG, "media next command failed", error);
            return false;
        }
    }

    @Override public boolean isSourceAvailable() {
        Intent intent = new Intent(MEDIA_SOURCE_ACTION);
        intent.setComponent(new ComponentName(MEDIA_CENTER_PACKAGE, MEDIA_CENTER_CLASS));
        try {
            android.content.pm.ResolveInfo resolved = context.getPackageManager().resolveService(intent, 0);
            if (resolved == null || resolved.serviceInfo == null || !resolved.serviceInfo.enabled
                    || !resolved.serviceInfo.applicationInfo.enabled) return false;
            android.content.pm.ServiceInfo service = resolved.serviceInfo;
            boolean ownPackage = context.getPackageName().equals(service.packageName);
            return (ownPackage || service.exported) && (service.permission == null
                    || context.checkSelfPermission(service.permission)
                        == android.content.pm.PackageManager.PERMISSION_GRANTED);
        } catch (RuntimeException error) { return false; }
    }

    @Override public boolean requestSource(String source) {
        int code = sourceCode(source);
        final long epoch;
        synchronized (this) {
            if (!running || code < 0) return false;
            epoch = lifecycle;
        }
        Intent intent = new Intent(MEDIA_SOURCE_ACTION);
        intent.setComponent(new ComponentName(MEDIA_CENTER_PACKAGE, MEDIA_CENTER_CLASS));
        intent.putExtra("audio_source", code);
        try {
            if (context.startService(intent) == null) return false;
            handler.postDelayed(new Runnable() {
                @Override public void run() {
                    if (!isCurrent(epoch)) return;
                    refreshSessions(epoch);
                    refreshSource(epoch);
                }
            }, REFRESH_DELAY_MS);
            return true;
        } catch (RuntimeException error) {
            Log.w(TAG, "media source command failed", error);
            return false;
        }
    }

    @Override public synchronized void start(ContentPorts.MediaSnapshotListener listener) {
        if (running) return;
        this.listener = listener;
        running = true;
        final long epoch = ++lifecycle;
        sourceThread = new HandlerThread("content-media-source");
        sourceThread.start();
        sourceHandler = new Handler(sourceThread.getLooper());
        sessionListener = new MediaSessionManager.OnActiveSessionsChangedListener() {
            @Override public void onActiveSessionsChanged(List<MediaController> controllers) {
                if (isCurrent(epoch)) updateController(controllers, epoch);
            }
        };
        try {
            sessionManager = (MediaSessionManager) context.getSystemService(Context.MEDIA_SESSION_SERVICE);
            if (sessionManager != null) {
                sessionManager.addOnActiveSessionsChangedListener(sessionListener,
                        new ComponentName(context, ContentMediaListener.class), handler);
            }
        } catch (RuntimeException error) { Log.w(TAG, "media session access unavailable", error); }
        bindSourceStatus(epoch);
        refreshSessions(epoch);
    }

    @Override public synchronized void stop() {
        running = false;
        lifecycle++;
        handler.removeCallbacksAndMessages(null);
        if (sessionManager != null && sessionListener != null) {
            try { sessionManager.removeOnActiveSessionsChangedListener(sessionListener); }
            catch (RuntimeException ignored) { }
        }
        unregisterController();
        final IBinder service = sourceService;
        final Binder callback = sourceCallback;
        if (sourceHandler != null) {
            sourceHandler.removeCallbacksAndMessages(null);
            sourceHandler.post(new Runnable() {
                @Override public void run() { registerSourceCallback(service, callback, 2); }
            });
        }
        if (sourceConnection != null) {
            try { context.unbindService(sourceConnection); }
            catch (RuntimeException ignored) { }
        }
        if (sourceThread != null) sourceThread.quitSafely();
        sourceConnection = null;
        sourceService = null;
        sourceCallback = null;
        sourceHandler = null;
        sourceThread = null;
        actualSource = null;
        sessionManager = null;
        sessionListener = null;
        listener = null;
    }

    private synchronized boolean isCurrent(long epoch) { return running && lifecycle == epoch; }

    private void bindSourceStatus(final long epoch) {
        Intent intent = new Intent(SOURCE_STATUS_ACTION).setPackage(MEDIA_CENTER_PACKAGE);
        try {
            android.content.pm.ResolveInfo resolved = context.getPackageManager().resolveService(intent, 0);
            if (resolved == null || resolved.serviceInfo == null || !resolved.serviceInfo.enabled
                    || !resolved.serviceInfo.applicationInfo.enabled) return;
            android.content.pm.ServiceInfo info = resolved.serviceInfo;
            if (!context.getPackageName().equals(info.packageName) && !info.exported) return;
            if (info.permission != null && context.checkSelfPermission(info.permission)
                    != android.content.pm.PackageManager.PERMISSION_GRANTED) return;
            intent.setComponent(new ComponentName(info.packageName, info.name));
        } catch (RuntimeException error) { return; }
        final ServiceConnection connection = new ServiceConnection() {
            @Override public void onServiceConnected(ComponentName name, final IBinder service) {
                Handler worker;
                synchronized (ContentMediaAdapter.this) {
                    if (!isCurrent(epoch) || sourceConnection != this) return;
                    worker = sourceHandler;
                }
                worker.post(new Runnable() {
                    @Override public void run() {
                        try {
                            if (!SOURCE_DESCRIPTOR.equals(service.getInterfaceDescriptor())) return;
                        } catch (RemoteException | RuntimeException error) { return; }
                        final Binder callback = new Binder() {
                            @Override protected boolean onTransact(int code, Parcel data, Parcel reply, int flags)
                                    throws RemoteException {
                                if (code == INTERFACE_TRANSACTION) {
                                    if (reply != null) reply.writeString(CALLBACK_DESCRIPTOR);
                                    return true;
                                }
                                if (code < 1 || code > 7) return super.onTransact(code, data, reply, flags);
                                data.enforceInterface(CALLBACK_DESCRIPTOR);
                                // Callback is a change signal only. Read the current source from the service.
                                if (code == 1 || code == 2 || code == 4) refreshSource(epoch);
                                if (reply != null) reply.writeNoException();
                                return true;
                            }
                        };
                        synchronized (ContentMediaAdapter.this) {
                            if (!isCurrent(epoch)) return;
                            sourceService = service;
                            sourceCallback = callback;
                        }
                        registerSourceCallback(service, callback, 1);
                        readSourceStatus(epoch, service);
                    }
                });
            }
            @Override public void onServiceDisconnected(ComponentName name) {
                synchronized (ContentMediaAdapter.this) {
                    if (!isCurrent(epoch) || sourceConnection != this) return;
                    sourceService = null;
                    actualSource = null;
                    generation++;
                }
                publishSnapshot(epoch);
            }
        };
        synchronized (this) { sourceConnection = connection; }
        try {
            if (!context.bindService(intent, connection, Context.BIND_AUTO_CREATE)) {
                synchronized (this) { if (sourceConnection == connection) sourceConnection = null; }
            }
        } catch (RuntimeException error) {
            synchronized (this) { if (sourceConnection == connection) sourceConnection = null; }
            Log.w(TAG, "media source status unavailable", error);
        }
    }

    private void registerSourceCallback(IBinder service, Binder callback, int transaction) {
        if (service == null || callback == null) return;
        Parcel data = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            data.writeInterfaceToken(SOURCE_DESCRIPTOR);
            data.writeStrongBinder(callback);
            if (service.transact(transaction, data, reply, 0)) reply.readException();
        } catch (RemoteException | RuntimeException error) {
            Log.w(TAG, "media source callback unavailable", error);
        } finally { reply.recycle(); data.recycle(); }
    }

    private void refreshSource(final long epoch) {
        synchronized (this) {
            if (!isCurrent(epoch) || sourceHandler == null) return;
            final IBinder service = sourceService;
            if (service != null) sourceHandler.post(new Runnable() {
                @Override public void run() { readSourceStatus(epoch, service); }
            });
        }
    }

    private void readSourceStatus(final long epoch, final IBinder service) {
        if (!isCurrent(epoch)) return;
        String source = null;
        Parcel data = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            data.writeInterfaceToken(SOURCE_DESCRIPTOR);
            if (service.transact(6, data, reply, 0)) {
                reply.readException();
                source = sourceForStatus(reply.readInt());
            }
        } catch (RemoteException | RuntimeException error) {
            Log.w(TAG, "media source readback unavailable", error);
        } finally { reply.recycle(); data.recycle(); }
        synchronized (this) {
            if (!isCurrent(epoch) || sourceService != service) return;
            if (!java.util.Objects.equals(source, actualSource)) {
                actualSource = source;
                generation++;
            }
        }
        handler.post(new Runnable() {
            @Override public void run() { if (isCurrent(epoch)) publishSnapshot(epoch); }
        });
    }

    private void refreshSessions(long epoch) {
        MediaSessionManager manager;
        synchronized (this) {
            if (!isCurrent(epoch)) return;
            manager = sessionManager;
        }
        if (manager != null) {
            try {
                updateController(manager.getActiveSessions(new ComponentName(context, ContentMediaListener.class)), epoch);
                return;
            } catch (RuntimeException error) { Log.w(TAG, "active media sessions unavailable", error); }
        }
        publishSnapshot(epoch);
    }

    private synchronized void unregisterController() {
        if (controller != null && controllerCallback != null) {
            try { controller.unregisterCallback(controllerCallback); }
            catch (RuntimeException ignored) { }
        }
        controller = null;
        controllerCallback = null;
    }

    private synchronized void updateController(List<MediaController> controllers, final long epoch) {
        if (!isCurrent(epoch)) return;
        final MediaController selected = selectController(controllers);
        if (controller == selected) { publishSnapshot(epoch); return; }
        unregisterController();
        controller = selected;
        if (selected != null) {
            controllerCallback = new MediaController.Callback() {
                private void changed(boolean metadata) {
                    synchronized (ContentMediaAdapter.this) {
                        if (!isCurrent(epoch) || controller != selected) return;
                        if (metadata) generation++;
                    }
                    publishSnapshot(epoch);
                    refreshSource(epoch);
                }
                @Override public void onPlaybackStateChanged(PlaybackState state) { changed(false); }
                @Override public void onMetadataChanged(MediaMetadata metadata) { changed(true); }
            };
            try { selected.registerCallback(controllerCallback, handler); }
            catch (RuntimeException error) { Log.w(TAG, "media callback unavailable", error); }
        }
        generation++;
        publishSnapshot(epoch);
    }

    private MediaController selectController(List<MediaController> controllers) {
        if (controllers == null || controllers.isEmpty()) return null;
        MediaController fallback = null;
        for (MediaController candidate : controllers) {
            if (candidate == null) continue;
            if (fallback == null) fallback = candidate;
            PlaybackState state = candidate.getPlaybackState();
            if (state != null && (state.getState() == PlaybackState.STATE_PLAYING
                    || state.getState() == PlaybackState.STATE_BUFFERING)) return candidate;
        }
        return fallback;
    }

    private synchronized void publishSnapshot(long epoch) {
        if (!isCurrent(epoch) || listener == null) return;
        MediaController current = controller;
        String sessionSource = current == null ? null : sourceForPackage(current.getPackageName());
        if ("爱趣听".equals(sessionSource)) {
            PlaybackState state = current.getPlaybackState();
            if (current.getMetadata() == null || state == null || state.getActions() == 0L) sessionSource = null;
        }
        String source = actualSource != null ? actualSource : sessionSource;
        if (source == null) {
            listener.onMediaSnapshot(ContentPorts.MediaSnapshot.unavailable());
            return;
        }
        // A service-confirmed source must not inherit controls or artwork from an old session.
        boolean sameSource = source.equals(sessionSource);
        MediaMetadata metadata = sameSource && current != null ? current.getMetadata() : null;
        PlaybackState playback = sameSource && current != null ? current.getPlaybackState() : null;
        long actions = playback == null ? 0L : playback.getActions();
        Bitmap artwork = metadata == null ? null : metadata.getBitmap(MediaMetadata.METADATA_KEY_ALBUM_ART);
        if (artwork == null && metadata != null) artwork = metadata.getBitmap(MediaMetadata.METADATA_KEY_ART);
        if (artwork == null && metadata != null) artwork = metadata.getBitmap(MediaMetadata.METADATA_KEY_DISPLAY_ICON);
        listener.onMediaSnapshot(new ContentPorts.MediaSnapshot(true, false, source,
                playback != null && playback.getState() == PlaybackState.STATE_PLAYING, generation,
                metadata == null ? "暂无媒体" : stringMetadata(metadata, MediaMetadata.METADATA_KEY_TITLE, "暂无媒体"),
                metadata == null ? "未连接" : stringMetadata(metadata, MediaMetadata.METADATA_KEY_ARTIST, "未连接"),
                (actions & (PlaybackState.ACTION_PLAY | PlaybackState.ACTION_PAUSE)) != 0L,
                (actions & PlaybackState.ACTION_SKIP_TO_NEXT) != 0L, artwork));
    }

    private String stringMetadata(MediaMetadata metadata, String key, String fallback) {
        String value = metadata.getString(key);
        return value == null || value.length() == 0 ? fallback : value;
    }

    private String sourceForPackage(String packageName) {
        if (packageName == null) return "本机音乐";
        String lower = packageName.toLowerCase(java.util.Locale.ROOT);
        if (lower.contains("bluetooth") || lower.contains("btmusic")) return "蓝牙音乐";
        if (lower.contains("netease") || lower.contains("cloudmusic")) return "网易云音乐";
        if (lower.contains("wecar") || lower.contains("mengbo")) return "爱趣听";
        if (lower.contains("usb")) return "USB音乐";
        return "本机音乐";
    }

    // Readback uses internal SDK codes, not the audio_source command values below.
    private String sourceForStatus(int source) {
        switch (source) {
            case 4: return "USB音乐";
            case 6: return "蓝牙音乐";
            case 10: return "网易云音乐";
            case 11: return "本机音乐";
            default: return null;
        }
    }

    private int sourceCode(String source) {
        String normalized = ContentRegistry.normalizeMediaSource(source);
        if ("USB音乐".equals(normalized)) return 1;
        if ("蓝牙音乐".equals(normalized)) return 2;
        if ("本机音乐".equals(normalized)) return 3;
        if ("爱趣听".equals(normalized)) return 4;
        if ("网易云音乐".equals(normalized)) return 9;
        return -1;
    }
}
