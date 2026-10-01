package com.autonavi.amapauto.content;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Binder;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import android.util.LruCache;
import com.icar03.content.runtime.media.ContentMediaArtwork;
import com.icar03.content.runtime.media.ContentPublicMediaBrowsers;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public final class ContentMediaAdapter implements ContentPorts.MediaPort {
    private static final String TAG = "ContentMediaAdapter";
    private static final String MEDIA_CENTER_PACKAGE = "com.tencent.wecarflow";
    private static final String MEDIA_CENTER_CLASS = "com.mengbo.service.MediaCenterPlayService";
    private static final String MEDIA_SOURCE_ACTION = "com.mengbo.multimedia.local.switch.mediasource";
    private static final String SOURCE_STATUS_ACTION = "mengbo.com.mediaservice.PlayControlCheryAction";
    private static final String SOURCE_DESCRIPTOR = "com.mengbo.mediaservice.IPlayControlsInterface";
    private static final String CALLBACK_DESCRIPTOR = "com.mengbo.mediaservice.IPlayInfoCallBack";
    private static final long REFRESH_DELAY_MS = 800L;
    private static final java.util.regex.Pattern LRC_TIMESTAMPS = java.util.regex.Pattern.compile("\\[\\d{1,3}:\\d{2}(?:[.:]\\d{1,3})?\\]");

    private final Context context;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private ContentPorts.MediaSnapshotListener listener;
    private MediaSessionManager sessionManager;
    private MediaSessionManager.OnActiveSessionsChangedListener sessionListener;
    private MediaController controller;
    private List<MediaController> systemControllers = new ArrayList<>();
    private final Map<MediaSession.Token, ObservedController> observed = new LinkedHashMap<>();
    private final Set<String> quarantinedRecordings = new HashSet<>();
    private ContentPublicMediaBrowsers browsers;
    private Runnable discovery;
    private long sourceEpoch;
    private long sourceChangedAt;
    private boolean hasReadbackSource;
    private boolean initialSourceCorrelation;
    private boolean sourceInventoryReady;
    private String publishedRecording = "";
    private ExecutorService artworkExecutor;
    private Future<?> artworkTask;
    private CancellationSignal artworkCancellation;
    private Runnable artworkTimeout;
    private long artworkSequence;
    private String artworkRequestKey;
    private final LruCache<String, Bitmap> artworkCache = new LruCache<String, Bitmap>(3 * 1024 * 1024) {
        @Override protected int sizeOf(String key, Bitmap bitmap) { return bitmap.getAllocationByteCount(); }
    };
    private final Set<String> failedArtwork = new HashSet<>();
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
        artworkExecutor = Executors.newSingleThreadExecutor(runnable -> new Thread(runnable, "content-media-artwork"));
        browsers = new ContentPublicMediaBrowsers(context, handler, new ContentPublicMediaBrowsers.Listener() {
            @Override public void onSessionsChanged(List<ContentPublicMediaBrowsers.Session> sessions) {
                if (isCurrent(epoch)) reconcileControllers(epoch);
            }
        });
        discovery = new Runnable() {
            @Override public void run() {
                if (!isCurrent(epoch)) return;
                refreshSessions(epoch);
                synchronized (ContentMediaAdapter.this) {
                    // Bounded service discovery covers players that start after the map. No progress polling.
                    if (isCurrent(epoch)) handler.postDelayed(this, controller == null ? 5000L : 30000L);
                }
            }
        };
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
        handler.postDelayed(discovery, 5000L);
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
        if (browsers != null) browsers.close();
        browsers = null;
        discovery = null;
        systemControllers.clear();
        quarantinedRecordings.clear();
        sourceEpoch++;
        sourceChangedAt = 0L;
        hasReadbackSource = false;
        initialSourceCorrelation = false;
        sourceInventoryReady = false;
        publishedRecording = "";
        cancelArtwork();
        if (artworkExecutor != null) artworkExecutor.shutdownNow();
        artworkExecutor = null;
        artworkCache.evictAll();
        failedArtwork.clear();
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
                            if (sourceService != service) sourceInventoryReady = false;
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
                    changeActualSource(null);
                }
                reconcileControllers(epoch);
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
        final String readback = source;
        handler.post(new Runnable() {
            @Override public void run() {
                synchronized (ContentMediaAdapter.this) {
                    if (!isCurrent(epoch) || sourceService != service) return;
                    boolean inventoryChanged = !sourceInventoryReady || !java.util.Objects.equals(actualSource, readback);
                    sourceInventoryReady = true;
                    changeActualSource(readback);
                    if (inventoryChanged) refreshSessions(epoch); else reconcileSelection(epoch);
                }
            }
        });
    }

    private void refreshSessions(long epoch) {
        MediaSessionManager manager;
        synchronized (this) {
            if (!isCurrent(epoch)) return;
            manager = sessionManager;
        }
        List<MediaController> active = new ArrayList<>();
        if (manager != null) {
            try { active = manager.getActiveSessions(new ComponentName(context, ContentMediaListener.class)); }
            catch (RuntimeException error) { Log.w(TAG, "active media sessions unavailable", error); }
        }
        updateController(active, epoch);
    }

    private synchronized void unregisterController() {
        for (ObservedController item : observed.values()) {
            try { item.controller.unregisterCallback(item.callback); }
            catch (RuntimeException ignored) { }
        }
        observed.clear();
        controller = null;
    }

    private synchronized void updateController(List<MediaController> controllers, final long epoch) {
        if (!isCurrent(epoch)) return;
        systemControllers = controllers == null ? new ArrayList<MediaController>() : new ArrayList<>(controllers);
        Set<String> packages = new HashSet<>();
        for (MediaController item : systemControllers) if (item != null) packages.add(item.getPackageName());
        if (actualSource != null || sourceService != null) packages.add(MEDIA_CENTER_PACKAGE);
        String marker = "网易云音乐".equals(actualSource) ? "cloudmusic"
                : "USB音乐".equals(actualSource) ? "usbplayer"
                : "本机音乐".equals(actualSource) ? "hddplayer"
                : "蓝牙音乐".equals(actualSource) ? "bluetooth" : null;
        if (browsers != null) browsers.refresh(packages, marker);
        reconcileControllers(epoch);
    }

    private synchronized void reconcileControllers(final long epoch) {
        if (!isCurrent(epoch)) return;
        Map<MediaSession.Token, MediaController> merged = new LinkedHashMap<>();
        for (MediaController item : systemControllers) if (item != null) merged.put(item.getSessionToken(), item);
        if (browsers != null) for (ContentPublicMediaBrowsers.Session session : browsers.getSessions()) {
            MediaController item = session.getController();
            if (!merged.containsKey(item.getSessionToken())) merged.put(item.getSessionToken(), item);
        }
        for (MediaSession.Token token : new ArrayList<>(observed.keySet())) {
            if (merged.containsKey(token)) continue;
            ObservedController item = observed.remove(token);
            try { item.controller.unregisterCallback(item.callback); } catch (RuntimeException ignored) { }
        }
        for (Map.Entry<MediaSession.Token, MediaController> candidate : merged.entrySet()) {
            final MediaSession.Token token = candidate.getKey();
            if (observed.containsKey(token)) continue;
            final ObservedController item = new ObservedController(candidate.getValue());
            item.identity = recordingIdentity(safeMetadata(item.controller));
            item.identityObservedAt = SystemClock.elapsedRealtime();
            PlaybackState initialPlayback = safePlayback(item.controller);
            item.lastPosition = initialPlayback == null ? -1L : initialPlayback.getPosition();
            item.lastPositionUpdate = initialPlayback == null ? 0L : initialPlayback.getLastPositionUpdateTime();
            item.callback = new MediaController.Callback() {
                private void changed(boolean metadata) {
                    synchronized (ContentMediaAdapter.this) {
                        if (!isCurrent(epoch) || observed.get(token) != item) return;
                        if (metadata) {
                            String next = recordingIdentity(safeMetadata(item.controller));
                            if (!next.equals(item.identity)) item.identityObservedAt = SystemClock.elapsedRealtime();
                            item.identity = next;
                            generation++;
                        }
                        PlaybackState position = safePlayback(item.controller);
                        if (position != null) {
                            if (!metadata && item.lastPosition >= 0L && position.getPosition() - item.lastPosition >= 250L
                                    && position.getLastPositionUpdateTime() > item.lastPositionUpdate
                                    && freshPlaybackEvidence(safeMetadata(item.controller), position, sourceChangedAt)) {
                                item.progressSourceEpoch = sourceEpoch;
                            }
                            item.lastPosition = position.getPosition();
                            item.lastPositionUpdate = position.getLastPositionUpdateTime();
                        }
                        reconcileSelection(epoch);
                    }
                    refreshSource(epoch);
                }
                @Override public void onPlaybackStateChanged(PlaybackState state) { changed(false); }
                @Override public void onMetadataChanged(MediaMetadata metadata) { changed(true); }
                @Override public void onSessionDestroyed() {
                    synchronized (ContentMediaAdapter.this) {
                        if (!isCurrent(epoch) || observed.get(token) != item) return;
                        item.destroyed = true;
                        observed.remove(token);
                        try { item.controller.unregisterCallback(item.callback); } catch (RuntimeException ignored) { }
                        for (int index = systemControllers.size() - 1; index >= 0; index--) {
                            MediaController previous = systemControllers.get(index);
                            if (previous != null && previous.getSessionToken().equals(token)) systemControllers.remove(index);
                        }
                        if (browsers != null) browsers.onSessionDestroyed(token);
                        reconcileSelection(epoch);
                    }
                    handler.post(() -> { if (isCurrent(epoch)) refreshSessions(epoch); });
                }
            };
            observed.put(token, item);
            try { item.controller.registerCallback(item.callback, handler); }
            catch (RuntimeException error) { Log.w(TAG, "media callback unavailable", error); }
        }
        reconcileSelection(epoch);
    }

    private void reconcileSelection(long epoch) {
        MediaController selected = selectController();
        if (!sameToken(controller, selected)) {
            controller = selected;
            generation++;
            cancelArtwork();
        }
        publishSnapshot(epoch);
    }

    private MediaController selectController() {
        MediaController selected = null;
        int best = -1;
        for (ObservedController item : observed.values()) {
            if (item.destroyed || !matchesActualSource(item)) continue;
            MediaMetadata metadata = safeMetadata(item.controller);
            if (mediaFields(metadata).title.isEmpty()) continue;
            PlaybackState state = safePlayback(item.controller);
            int score = state != null && state.getState() == PlaybackState.STATE_PLAYING ? 3
                    : state != null && state.getState() == PlaybackState.STATE_BUFFERING ? 2 : 1;
            // Keep the current paused controller on equal evidence, avoiding enumeration-order churn.
            if (score > best || (score == best && sameToken(controller, item.controller))) {
                selected = item.controller;
                best = score;
            }
        }
        return selected;
    }

    private void changeActualSource(String source) {
        if (java.util.Objects.equals(actualSource, source)) return;
        initialSourceCorrelation = !hasReadbackSource && source != null && publishedRecording.isEmpty();
        if (source != null) hasReadbackSource = true;
        sourceEpoch++;
        sourceChangedAt = SystemClock.elapsedRealtime();
        quarantinedRecordings.clear();
        for (ObservedController item : observed.values()) {
            if (!item.identity.isEmpty()) quarantinedRecordings.add(item.identity);
            item.confirmedSourceEpoch = -1L;
        }
        if (!publishedRecording.isEmpty()) quarantinedRecordings.add(publishedRecording);
        actualSource = source;
        generation++;
        cancelArtwork();
    }

    private boolean matchesActualSource(ObservedController item) {
        String precise = sourceForController(item.controller);
        if (actualSource == null) return precise != null;
        if (precise != null) return actualSource.equals(precise);
        if (!MEDIA_CENTER_PACKAGE.equals(item.controller.getPackageName())) return false;
        if (item.confirmedSourceEpoch == sourceEpoch) return true;
        MediaMetadata metadata = safeMetadata(item.controller);
        String identity = recordingIdentity(metadata);
        PlaybackState playback = safePlayback(item.controller);
        // A shared proxy needs post-readback identity plus fresh non-placeholder playback evidence.
        // Initial cold selection may use observed position advancement; later switches need a new identity.
        // A callback, a refreshed timestamp, or position=0 alone remains insufficient.
        boolean newIdentity = !quarantinedRecordings.contains(identity) && item.identityObservedAt >= sourceChangedAt;
        boolean initialProgress = initialSourceCorrelation && item.progressSourceEpoch == sourceEpoch;
        if (!identity.isEmpty() && (newIdentity || initialProgress)
                && freshPlaybackEvidence(metadata, playback, sourceChangedAt)) {
            item.confirmedSourceEpoch = sourceEpoch;
            return true;
        }
        return false;
    }

    private static boolean freshPlaybackEvidence(MediaMetadata metadata, PlaybackState state, long after) {
        if (state == null || state.getPosition() < 0L || state.getLastPositionUpdateTime() <= 0L
                || state.getLastPositionUpdateTime() < after
                || state.getLastPositionUpdateTime() > SystemClock.elapsedRealtime()) return false;
        if (state.getState() != PlaybackState.STATE_PLAYING && state.getState() != PlaybackState.STATE_BUFFERING) return false;
        return state.getPosition() > 0L || mediaFields(metadata).durationMs >= 1000L;
    }

    private String sourceForController(MediaController candidate) {
        if (candidate == null) return null;
        Set<String> preciseSources = new HashSet<>();
        if (browsers != null) for (ContentPublicMediaBrowsers.Session session : browsers.getSessions()) {
            if (!sameToken(candidate, session.getController())) continue;
            String source = sourceForComponent(session.getComponent());
            if (source != null) preciseSources.add(source);
        }
        if (preciseSources.size() > 1) return null;
        if (!preciseSources.isEmpty()) return preciseSources.iterator().next();
        return sourceForPackage(candidate.getPackageName());
    }

    private static String sourceForComponent(ComponentName component) {
        String name = component.getClassName().toLowerCase(java.util.Locale.ROOT);
        if (name.contains("cloudmusic") || name.contains("netease")) return "网易云音乐";
        if (name.contains("usbplayer")) return "USB音乐";
        if (name.contains("hddplayer") || name.contains("localmusic")) return "本机音乐";
        if (component.getPackageName().equals("com.android.bluetooth")) return "蓝牙音乐";
        if (MEDIA_CENTER_PACKAGE.equals(component.getPackageName()) && name.endsWith(".musicservice")) return "爱趣听";
        // MediaPlaybackService is shared by online providers; its package/name cannot identify one.
        return null;
    }

    private synchronized void publishSnapshot(long epoch) {
        if (!isCurrent(epoch) || listener == null) return;
        MediaController current = controller;
        ObservedController item = current == null ? null : observed.get(current.getSessionToken());
        boolean correlated = item != null && !item.destroyed && matchesActualSource(item);
        String source = actualSource != null ? actualSource : correlated ? sourceForController(current) : null;
        if (source == null) {
            cancelArtwork();
            publishedRecording = "";
            listener.onMediaSnapshot(ContentPorts.MediaSnapshot.unavailable());
            return;
        }
        MediaMetadata metadata = correlated ? safeMetadata(current) : null;
        PlaybackState playback = correlated ? safePlayback(current) : null;
        MediaFields fields = mediaFields(metadata);
        String identity = metadata == null ? "" : recordingIdentity(metadata);
        publishedRecording = identity;
        long actions = playback == null ? 0L : playback.getActions();
        Bitmap artwork = bitmapArtwork(metadata);
        if (artwork == null && metadata != null) {
            String uri = artworkUri(metadata);
            if (!uri.isEmpty() && !identity.isEmpty()) artwork = uriArtwork(epoch, source + '\u001f' + identity, uri);
            else cancelArtwork();
        } else cancelArtwork();
        long position = playback == null || playback.getPosition() < 0L ? -1L : playback.getPosition();
        long updateTime = playback == null ? 0L : playback.getLastPositionUpdateTime();
        if (position < 0L || updateTime <= 0L || updateTime > SystemClock.elapsedRealtime()) updateTime = 0L;
        float speed = playback == null ? 0f : playback.getPlaybackSpeed();
        if (!Float.isFinite(speed) || speed < 0f) speed = 0f;
        boolean playing = playback != null && playback.getState() == PlaybackState.STATE_PLAYING;
        listener.onMediaSnapshot(new ContentPorts.MediaSnapshot(true, false, source, playing, generation,
                fields.title.isEmpty() ? "暂无媒体" : fields.title,
                fields.artist.isEmpty() ? "未连接" : fields.artist,
                (actions & (PlaybackState.ACTION_PLAY | PlaybackState.ACTION_PAUSE | PlaybackState.ACTION_PLAY_PAUSE)) != 0L,
                (actions & PlaybackState.ACTION_SKIP_TO_NEXT) != 0L, artwork,
                fields.mediaId, fields.album, fields.durationMs, position, updateTime, playing ? speed : 0f, fields.embeddedLyrics));
    }

    private Bitmap uriArtwork(final long epoch, String identity, final String uri) {
        final String key = sourceEpoch + "\u001f" + identity + "\u001f" + uri;
        Bitmap cached = artworkCache.get(key);
        if (cached != null && !cached.isRecycled()) {
            if (artworkRequestKey != null && !key.equals(artworkRequestKey)) cancelArtwork();
            return cached;
        }
        if (key.equals(artworkRequestKey) || failedArtwork.contains(key) || artworkExecutor == null) return null;
        cancelArtwork();
        artworkRequestKey = key;
        final long sequence = ++artworkSequence;
        final long sourceVersion = sourceEpoch;
        final CancellationSignal cancellation = new CancellationSignal();
        artworkCancellation = cancellation;
        artworkTimeout = () -> {
            synchronized (ContentMediaAdapter.this) {
                if (!isCurrent(epoch) || sequence != artworkSequence || !key.equals(artworkRequestKey)) return;
                rememberArtworkFailure(key);
                cancelArtwork();
                publishSnapshot(epoch);
            }
        };
        handler.postDelayed(artworkTimeout, 3000L);
        artworkTask = artworkExecutor.submit(() -> {
            final Bitmap loaded = ContentMediaArtwork.decode(context, uri, cancellation);
            handler.post(() -> {
                synchronized (ContentMediaAdapter.this) {
                    boolean currentRequest = isCurrent(epoch) && sourceEpoch == sourceVersion
                            && sequence == artworkSequence && key.equals(artworkRequestKey)
                            && !cancellation.isCanceled();
                    if (!currentRequest) {
                        if (loaded != null && !loaded.isRecycled()) loaded.recycle();
                        return;
                    }
                    artworkTask = null;
                    artworkCancellation = null;
                    if (artworkTimeout != null) handler.removeCallbacks(artworkTimeout);
                    artworkTimeout = null;
                    if (loaded != null && !loaded.isRecycled()) {
                        artworkCache.put(key, loaded);
                        generation++;
                    } else {
                        rememberArtworkFailure(key);
                    }
                    artworkRequestKey = null;
                    publishSnapshot(epoch);
                }
            });
        });
        return null;
    }

    private void rememberArtworkFailure(String key) {
        // A bounded negative cache prevents clock/snapshot reads from retrying one bad URI.
        if (failedArtwork.size() >= 8) failedArtwork.clear();
        failedArtwork.add(key);
    }

    private void cancelArtwork() {
        artworkSequence++;
        if (artworkTimeout != null) handler.removeCallbacks(artworkTimeout);
        artworkTimeout = null;
        if (artworkCancellation != null) artworkCancellation.cancel();
        if (artworkTask != null) artworkTask.cancel(true);
        artworkCancellation = null;
        artworkTask = null;
        artworkRequestKey = null;
    }

    private static Bitmap bitmapArtwork(MediaMetadata metadata) {
        if (metadata == null) return null;
        for (String key : new String[] { MediaMetadata.METADATA_KEY_ALBUM_ART,
                MediaMetadata.METADATA_KEY_ART, MediaMetadata.METADATA_KEY_DISPLAY_ICON }) {
            try {
                Bitmap bitmap = metadata.getBitmap(key);
                if (bitmap != null && !bitmap.isRecycled()) return bitmap;
            } catch (RuntimeException ignored) { }
        }
        return null;
    }

    private static String artworkUri(MediaMetadata metadata) {
        if (metadata == null) return "";
        for (String key : new String[] { MediaMetadata.METADATA_KEY_ALBUM_ART_URI,
                MediaMetadata.METADATA_KEY_ART_URI, MediaMetadata.METADATA_KEY_DISPLAY_ICON_URI }) {
            String uri = text(metadata, key);
            if (!uri.isEmpty()) return uri;
        }
        try {
            MediaDescription description = metadata.getDescription();
            return description.getIconUri() == null ? "" : description.getIconUri().toString();
        } catch (RuntimeException ignored) { return ""; }
    }

    private static String firstEmbeddedLyrics(CharSequence... values) {
        for (CharSequence value : values) {
            if (value == null) continue;
            String text = value.toString().trim();
            if (text.isEmpty() || text.length() > 512 * 1024) continue;
            java.util.regex.Matcher matches = LRC_TIMESTAMPS.matcher(text);
            if (matches.find() && matches.find()) return text;
        }
        return "";
    }

    private static MediaFields mediaFields(MediaMetadata metadata) {
        if (metadata == null) return new MediaFields("", "", "", "", 0L, "");
        MediaDescription description = null;
        try { description = metadata.getDescription(); } catch (RuntimeException ignored) { }
        String title = firstText(text(metadata, MediaMetadata.METADATA_KEY_DISPLAY_TITLE),
                description == null ? "" : description.getTitle(), text(metadata, MediaMetadata.METADATA_KEY_TITLE));
        String artist = firstText(text(metadata, MediaMetadata.METADATA_KEY_DISPLAY_SUBTITLE),
                description == null ? "" : description.getSubtitle(), text(metadata, MediaMetadata.METADATA_KEY_ARTIST),
                text(metadata, MediaMetadata.METADATA_KEY_ALBUM_ARTIST), text(metadata, MediaMetadata.METADATA_KEY_AUTHOR));
        String mediaId = firstText(text(metadata, MediaMetadata.METADATA_KEY_MEDIA_ID),
                description == null ? "" : description.getMediaId());
        long duration;
        try { duration = metadata.getLong(MediaMetadata.METADATA_KEY_DURATION); } catch (RuntimeException ignored) { duration = 0L; }
        duration = Math.max(0L, Math.min(duration, 86_400_000L));
        String rawAlbum = text(metadata, MediaMetadata.METADATA_KEY_ALBUM);
        String embedded = firstEmbeddedLyrics(description == null ? "" : description.getDescription(),
                text(metadata, MediaMetadata.METADATA_KEY_DISPLAY_DESCRIPTION), rawAlbum);
        String album = firstEmbeddedLyrics(rawAlbum).isEmpty() ? rawAlbum : "";
        return new MediaFields(title, artist, mediaId, album, duration, embedded);
    }

    private static String recordingIdentity(MediaMetadata metadata) {
        MediaFields fields = mediaFields(metadata);
        if (fields.title.isEmpty()) return "";
        if (!fields.mediaId.isEmpty()) return "id:" + fields.mediaId;
        return (fields.title + '\u001f' + fields.artist + '\u001f' + fields.album).trim().toLowerCase(java.util.Locale.ROOT);
    }

    private static String text(MediaMetadata metadata, String key) {
        try { String value = metadata.getString(key); return value == null ? "" : value.trim(); }
        catch (RuntimeException ignored) { return ""; }
    }

    private static String firstText(CharSequence... values) {
        for (CharSequence value : values) if (value != null && !value.toString().trim().isEmpty()) return value.toString().trim();
        return "";
    }

    private static MediaMetadata safeMetadata(MediaController candidate) {
        try { return candidate == null ? null : candidate.getMetadata(); } catch (RuntimeException ignored) { return null; }
    }

    private static PlaybackState safePlayback(MediaController candidate) {
        try { return candidate == null ? null : candidate.getPlaybackState(); } catch (RuntimeException ignored) { return null; }
    }

    private static boolean sameToken(MediaController first, MediaController second) {
        return first == second || first != null && second != null && first.getSessionToken().equals(second.getSessionToken());
    }

    private String sourceForPackage(String packageName) {
        if (packageName == null) return null;
        String lower = packageName.toLowerCase(java.util.Locale.ROOT);
        if (lower.contains("bluetooth") || lower.contains("btmusic")) return "蓝牙音乐";
        if (lower.contains("netease") || lower.contains("cloudmusic")) return "网易云音乐";
        if (lower.contains("usb")) return "USB音乐";
        // The shared media-center package cannot distinguish online/HDD/USB providers.
        return null;
    }

    private static final class ObservedController {
        final MediaController controller;
        MediaController.Callback callback;
        String identity = "";
        long identityObservedAt;
        long lastPosition = -1L;
        long lastPositionUpdate;
        long progressSourceEpoch = -1L;
        long confirmedSourceEpoch = -1L;
        boolean destroyed;
        ObservedController(MediaController controller) { this.controller = controller; }
    }

    private static final class MediaFields {
        final String title;
        final String artist;
        final String mediaId;
        final String album;
        final long durationMs;
        final String embeddedLyrics;
        MediaFields(String title, String artist, String mediaId, String album, long durationMs, String embeddedLyrics) {
            this.title = title; this.artist = artist; this.mediaId = mediaId; this.album = album; this.durationMs = durationMs;
            this.embeddedLyrics = embeddedLyrics;
        }
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
