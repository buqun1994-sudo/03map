package com.autonavi.amapauto.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.MediaDescription;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
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
import com.icar03.content.runtime.media.ContentMediaSessionArbiter;
import com.icar03.content.runtime.media.ContentMediaSessionArbitrationAction;
import com.icar03.content.runtime.media.ContentMediaSessionArbitrationDecision;
import com.icar03.content.runtime.media.ContentMediaSessionBluetoothActivity;
import com.icar03.content.runtime.media.ContentMediaSessionCandidate;
import com.icar03.content.runtime.media.ContentMediaSessionTransport;
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
    private static final String CURRENT_SOURCE_STATUS_ACTION = "mengbo.com.mediaservice.MediaCenterPlayAction";
    private static final String SOURCE_DESCRIPTOR = "com.mengbo.mediaservice.IPlayControlsInterface";
    private static final String CURRENT_SOURCE_DESCRIPTOR = "com.mengbo.mediaservice.IMBMediaCenterInterface";
    private static final String CALLBACK_DESCRIPTOR = "com.mengbo.mediaservice.IPlayInfoCallBack";
    private static final String CURRENT_CALLBACK_DESCRIPTOR = "com.mengbo.mediaservice.IMBMediaCenterEventListener";
    private static final long REFRESH_DELAY_MS = 800L;
    private static final long SONG_METADATA_GRACE_MS = 1500L;
    private static final long ARTWORK_FAILURE_TTL_MS = 10_000L;
    private static final int ARTWORK_FAILURE_LIMIT = 32;
    private static final String AVRCP_POSITION = "android.bluetooth.avrcp-controller.profile.action.PLAYBACK_POS_CHANGED";
    private static final String AVRCP_POSITION_LEGACY = "android.bluetooth.avrcp-controller.profile.action.PLAYBACK_POS_CHANGEDS";
    private static final String AVRCP_TRACK = "android.bluetooth.avrcp-controller.profile.action.TRACK_EVENT";
    private static final String AVRCP_PLAY_STATUS = "android.bluetooth.avrcp-controller.profile.action.PLAY_STATUS";
    private static final String AVRCP_STATUS = "android.bluetooth.avrcp-controller.profile.action.PLAYBACK_STATUS_CHANGED";
    private static final String[] AVRCP_ACTIONS = {
        AVRCP_POSITION, AVRCP_POSITION_LEGACY, AVRCP_TRACK, AVRCP_PLAY_STATUS, AVRCP_STATUS
    };
    private static final java.util.regex.Pattern LRC_TIMESTAMPS = java.util.regex.Pattern.compile("\\[\\d{1,3}:\\d{2}(?:[.:]\\d{1,3})?\\]");

    private final Context context;
    private final AudioManager audioManager;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private ContentPorts.MediaSnapshotListener listener;
    private MediaSessionManager sessionManager;
    private MediaSessionManager.OnActiveSessionsChangedListener sessionListener;
    private MediaController controller;
    private List<MediaController> systemControllers = new ArrayList<>();
    private final Map<MediaSession.Token, ObservedController> observed = new LinkedHashMap<>();
    private final ContentMediaSessionArbiter sessionArbiter = new ContentMediaSessionArbiter();
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
    private final Map<String, Long> failedArtwork = new LinkedHashMap<>();
    private ServiceConnection sourceConnection;
    private IBinder sourceService;
    private Binder sourceCallback;
    private boolean sourceLegacyContract;
    private HandlerThread sourceThread;
    private Handler sourceHandler;
    private String actualSource;
    private Integer lastSourceReadbackCode;
    private boolean running;
    private long lifecycle;
    private int generation;
    private MediaSession.Token confirmedSongToken;
    private long metadataMissingSince = -1L;
    private Runnable metadataGraceTimeout;
    private BroadcastReceiver avrcpReceiver;
    private long nextAvrcpEventSequence;
    private long avrcpEventSequence;
    private long avrcpPositionMs = -1L;
    private long avrcpDurationMs;
    private int avrcpPlaybackState = -1;
    private long avrcpElapsedRealtimeMs;
    private long avrcpSourceEpoch = -1L;
    private MediaSession.Token avrcpToken;
    private String avrcpRecordingKey = "";

    public ContentMediaAdapter(Context context) {
        this.context = context.getApplicationContext();
        this.audioManager = (AudioManager) this.context.getSystemService(Context.AUDIO_SERVICE);
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
        startAvrcpMonitor(epoch);
        handler.postDelayed(discovery, 5000L);
    }

    @Override public synchronized void stop() {
        running = false;
        lifecycle++;
        stopAvrcpMonitor();
        clearAvrcpEvent();
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
        sessionArbiter.reset();
        hasReadbackSource = false;
        initialSourceCorrelation = false;
        sourceInventoryReady = false;
        publishedRecording = "";
        clearConfirmedSong();
        cancelArtwork();
        if (artworkExecutor != null) artworkExecutor.shutdownNow();
        artworkExecutor = null;
        artworkCache.evictAll();
        failedArtwork.clear();
        final IBinder service = sourceService;
        final Binder callback = sourceCallback;
        final boolean legacySourceContract = sourceLegacyContract;
        if (sourceHandler != null) {
            sourceHandler.removeCallbacksAndMessages(null);
            sourceHandler.post(new Runnable() {
                @Override public void run() { unregisterSourceCallback(service, callback, legacySourceContract); }
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
        sourceLegacyContract = false;
        sourceHandler = null;
        sourceThread = null;
        actualSource = null;
        lastSourceReadbackCode = null;
        sessionManager = null;
        sessionListener = null;
        listener = null;
    }

    private void startAvrcpMonitor(final long epoch) {
        IntentFilter filter = new IntentFilter();
        for (String action : AVRCP_ACTIONS) filter.addAction(action);
        BroadcastReceiver receiver = new BroadcastReceiver() {
            @Override public void onReceive(Context context, Intent intent) {
                acceptAvrcpEvent(intent, epoch);
            }
        };
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(receiver, filter, null, handler, Context.RECEIVER_EXPORTED);
            } else {
                context.registerReceiver(receiver, filter, null, handler);
            }
            avrcpReceiver = receiver;
        } catch (RuntimeException error) {
            Log.w(TAG, "AVRCP event monitor unavailable", error);
        }
    }

    private void stopAvrcpMonitor() {
        if (avrcpReceiver != null) {
            try { context.unregisterReceiver(avrcpReceiver); } catch (RuntimeException ignored) { }
        }
        avrcpReceiver = null;
    }

    private synchronized void acceptAvrcpEvent(Intent intent, long epoch) {
        if (!isCurrent(epoch) || intent == null || controller == null) return;
        ObservedController selected = observed.get(controller.getSessionToken());
        if (!isBluetooth(controller) || selected == null || selected.destroyed
                || !matchesActualSource(selected)) return;
        String selectedSource = actualSource != null ? actualSource : sourceForController(controller);
        if (!"蓝牙音乐".equals(selectedSource)) return;
        String action = intent.getAction();
        if (!java.util.Arrays.asList(AVRCP_ACTIONS).contains(action)) return;
        MediaFields fields = mediaFields(safeMetadata(controller));
        if (songIdentityFor(controller, fields) != ContentPorts.MediaSongIdentity.SONG) return;
        Bundle extras;
        try { extras = intent.getExtras(); } catch (RuntimeException error) { return; }
        Object playback = avrcpExtra(extras, "android.bluetooth.avrcp-controller.profile.extra.PLAYBACK");
        boolean positionNotification = AVRCP_POSITION.equals(action) || AVRCP_POSITION_LEGACY.equals(action);
        Long position;
        if (AVRCP_PLAY_STATUS.equals(action) || AVRCP_STATUS.equals(action)) {
            position = avrcpInteger(avrcpExtra(extras,
                    "android.bluetooth.avrcp-controller.extra.SONG_POS"), 86_400_000L);
        } else {
            position = firstAvrcpInteger(extras, 86_400_000L,
                    "android.bluetooth.avrcp-controller.profile.extra.SONG_POS",
                    "android.bluetooth.avrcp-controller.extra.PLAY_SONG_POS");
            if (position == null && playback instanceof PlaybackState) {
                long value = ((PlaybackState) playback).getPosition();
                if (value >= 0L && value <= 86_400_000L) position = value;
            }
        }
        Integer playbackState = null;
        if (!positionNotification) {
            Long state = playback instanceof PlaybackState
                    ? avrcpInteger(((PlaybackState) playback).getState(), PlaybackState.STATE_SKIPPING_TO_QUEUE_ITEM)
                    : avrcpInteger(playback, PlaybackState.STATE_SKIPPING_TO_QUEUE_ITEM);
            if (state != null) playbackState = state.intValue();
            if (playbackState == null) playbackState = avrcpPlaybackState(avrcpExtra(extras,
                    "android.bluetooth.avrcp-controller.extra.PLAY_STATUS_ID"));
        }
        Long duration = AVRCP_PLAY_STATUS.equals(action)
                ? avrcpInteger(avrcpExtra(extras, "android.bluetooth.avrcp-controller.extra.SONG_LEN"),
                        86_400_000L) : null;
        if (duration != null && duration >= 1000L && fields.durationMs >= 1000L
                && Math.abs(duration - fields.durationMs) > 2000L) return;
        if (position == null && playbackState == null) return;
        String recordingKey = avrcpRecordingKey(fields);
        if (!sameToken(avrcpToken, controller) || avrcpSourceEpoch != sourceEpoch
                || !avrcpRecordingKey.equals(recordingKey)) clearAvrcpEvent();
        avrcpToken = controller.getSessionToken();
        avrcpSourceEpoch = sourceEpoch;
        avrcpRecordingKey = recordingKey;
        avrcpPositionMs = position == null ? -1L : position;
        if (duration != null && duration >= 1000L) avrcpDurationMs = duration;
        if (playbackState != null) avrcpPlaybackState = playbackState;
        avrcpElapsedRealtimeMs = SystemClock.elapsedRealtime();
        sessionArbiter.observeBluetoothActivity(new ContentMediaSessionBluetoothActivity(
                position, playbackState, avrcpElapsedRealtimeMs));
        avrcpEventSequence = ++nextAvrcpEventSequence;
        Log.i(TAG, "AVRCP accepted sequence=" + avrcpEventSequence
                + " position=" + avrcpPositionMs + " state=" + avrcpPlaybackState);
        publishSnapshot(epoch);
    }

    private void clearAvrcpEvent() {
        avrcpEventSequence = 0L;
        avrcpPositionMs = -1L;
        avrcpDurationMs = 0L;
        avrcpPlaybackState = -1;
        avrcpElapsedRealtimeMs = 0L;
        avrcpSourceEpoch = -1L;
        avrcpToken = null;
        avrcpRecordingKey = "";
    }

    private static String avrcpRecordingKey(MediaFields fields) {
        return (fields.mediaId + '\u001f' + fields.title + '\u001f' + fields.artist + '\u001f' + fields.album)
                .trim().toLowerCase(java.util.Locale.ROOT);
    }

    @SuppressWarnings("deprecation")
    private static Object avrcpExtra(Bundle extras, String key) {
        try { return extras == null ? null : extras.get(key); } catch (RuntimeException error) { return null; }
    }

    private static Long firstAvrcpInteger(Bundle extras, long maximum, String... keys) {
        for (String key : keys) {
            Long value = avrcpInteger(avrcpExtra(extras, key), maximum);
            if (value != null) return value;
        }
        return null;
    }

    private static Long avrcpInteger(Object value, long maximum) {
        if (!(value instanceof Number)) return null;
        double number = ((Number) value).doubleValue();
        if (Double.isNaN(number) || Double.isInfinite(number) || number < 0d || number > maximum) return null;
        long integer = (long) number;
        return integer == number ? integer : null;
    }

    private static Integer avrcpPlaybackState(Object value) {
        Long state = avrcpInteger(value, 4L);
        if (state == null) return null;
        switch (state.intValue()) {
            case 0: return PlaybackState.STATE_STOPPED;
            case 1: return PlaybackState.STATE_PLAYING;
            case 2: return PlaybackState.STATE_PAUSED;
            case 3: return PlaybackState.STATE_FAST_FORWARDING;
            case 4: return PlaybackState.STATE_REWINDING;
            default: return null;
        }
    }

    private synchronized boolean isCurrent(long epoch) { return running && lifecycle == epoch; }

    private void bindSourceStatus(final long epoch) {
        Intent sourceIntent;
        android.content.pm.ResolveInfo resolved;
        boolean legacyContract = false;
        try {
            sourceIntent = new Intent(CURRENT_SOURCE_STATUS_ACTION).setPackage(MEDIA_CENTER_PACKAGE);
            resolved = context.getPackageManager().resolveService(sourceIntent, 0);
            if (resolved == null || resolved.serviceInfo == null) {
                sourceIntent = new Intent(SOURCE_STATUS_ACTION).setPackage(MEDIA_CENTER_PACKAGE);
                resolved = context.getPackageManager().resolveService(sourceIntent, 0);
                legacyContract = true;
            }
            if (resolved == null || resolved.serviceInfo == null || !resolved.serviceInfo.enabled
                    || !resolved.serviceInfo.applicationInfo.enabled) return;
            android.content.pm.ServiceInfo info = resolved.serviceInfo;
            if (!context.getPackageName().equals(info.packageName) && !info.exported) return;
            if (info.permission != null && context.checkSelfPermission(info.permission)
                    != android.content.pm.PackageManager.PERMISSION_GRANTED) return;
            sourceIntent.setComponent(new ComponentName(info.packageName, info.name));
        } catch (RuntimeException error) {
            return;
        }
        final boolean useLegacyContract = legacyContract;
        final String descriptor = useLegacyContract ? SOURCE_DESCRIPTOR : CURRENT_SOURCE_DESCRIPTOR;
        final String callbackDescriptor = useLegacyContract ? CALLBACK_DESCRIPTOR : CURRENT_CALLBACK_DESCRIPTOR;
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
                            if (!descriptor.equals(service.getInterfaceDescriptor())) {
                                Log.w(TAG, "media source descriptor mismatch: " + service.getInterfaceDescriptor());
                                return;
                            }
                        } catch (RemoteException | RuntimeException error) {
                            Log.w(TAG, "media source descriptor unavailable", error);
                            return;
                        }
                        final Binder callback = new Binder() {
                            @Override protected boolean onTransact(int code, Parcel data, Parcel reply, int flags)
                                    throws RemoteException {
                                if (code == INTERFACE_TRANSACTION) {
                                    if (reply != null) reply.writeString(callbackDescriptor);
                                    return true;
                                }
                                if (useLegacyContract) {
                                    if (code < 1 || code > 7) return super.onTransact(code, data, reply, flags);
                                    data.enforceInterface(CALLBACK_DESCRIPTOR);
                                    if (code == 1 || code == 2 || code == 4) refreshSource(epoch);
                                    if (reply != null) reply.writeNoException();
                                    return true;
                                }
                                if (code < 1 || code > 5) return super.onTransact(code, data, reply, flags);
                                data.enforceInterface(CURRENT_CALLBACK_DESCRIPTOR);
                                if (code == 3) {
                                    data.createStringArrayList();
                                } else if (code == 4) {
                                    data.readString();
                                } else if (code == 5) {
                                    data.readString();
                                    return true;
                                }
                                if (code == 1 || code == 2 || code == 4) refreshSource(epoch);
                                if (reply != null) {
                                    reply.writeNoException();
                                    if (code == 4) reply.writeInt(0);
                                }
                                return true;
                            }
                        };
                        synchronized (ContentMediaAdapter.this) {
                            if (!isCurrent(epoch)) return;
                            if (sourceService != service) sourceInventoryReady = false;
                            sourceService = service;
                            sourceCallback = callback;
                            sourceLegacyContract = useLegacyContract;
                        }
                        registerSourceCallback(service, callback, useLegacyContract);
                        readSourceStatus(epoch, service, useLegacyContract);
                    }
                });
            }
            @Override public void onServiceDisconnected(ComponentName name) {
                synchronized (ContentMediaAdapter.this) {
                    if (!isCurrent(epoch) || sourceConnection != this) return;
                    sourceService = null;
                    sourceLegacyContract = false;
                    changeActualSource(null);
                }
                reconcileControllers(epoch);
            }
        };
        synchronized (this) { sourceConnection = connection; }
        try {
            if (!context.bindService(sourceIntent, connection, Context.BIND_AUTO_CREATE)) {
                synchronized (this) { if (sourceConnection == connection) sourceConnection = null; }
            }
        } catch (RuntimeException error) {
            synchronized (this) { if (sourceConnection == connection) sourceConnection = null; }
            Log.w(TAG, "media source status unavailable", error);
        }
    }

    private void registerSourceCallback(IBinder service, Binder callback, boolean legacyContract) {
        if (service == null || callback == null) return;
        Parcel data = Parcel.obtain();
        Parcel reply = legacyContract ? Parcel.obtain() : null;
        try {
            data.writeInterfaceToken(legacyContract ? SOURCE_DESCRIPTOR : CURRENT_SOURCE_DESCRIPTOR);
            data.writeStrongBinder(callback);
            if (legacyContract) {
                if (service.transact(1, data, reply, 0)) reply.readException();
            } else {
                service.transact(1, data, null, IBinder.FLAG_ONEWAY);
            }
        } catch (RemoteException | RuntimeException error) {
            Log.w(TAG, "media source callback unavailable", error);
        } finally {
            if (reply != null) reply.recycle();
            data.recycle();
        }
    }

    private void unregisterSourceCallback(IBinder service, Binder callback, boolean legacyContract) {
        if (service == null || callback == null) return;
        Parcel data = Parcel.obtain();
        Parcel reply = legacyContract ? Parcel.obtain() : null;
        try {
            data.writeInterfaceToken(legacyContract ? SOURCE_DESCRIPTOR : CURRENT_SOURCE_DESCRIPTOR);
            data.writeStrongBinder(callback);
            if (legacyContract) {
                if (service.transact(2, data, reply, 0)) reply.readException();
            } else {
                service.transact(2, data, null, IBinder.FLAG_ONEWAY);
            }
        } catch (RemoteException | RuntimeException error) {
            Log.w(TAG, "media source callback removal unavailable", error);
        } finally {
            if (reply != null) reply.recycle();
            data.recycle();
        }
    }

    private void refreshSource(final long epoch) {
        synchronized (this) {
            if (!isCurrent(epoch) || sourceHandler == null) return;
            final IBinder service = sourceService;
            final boolean legacyContract = sourceLegacyContract;
            if (service != null) sourceHandler.post(new Runnable() {
                @Override public void run() {
                    readSourceStatus(epoch, service, legacyContract);
                }
            });
        }
    }

    private void readSourceStatus(final long epoch, final IBinder service, final boolean legacyContract) {
        if (!isCurrent(epoch)) return;
        String source = null;
        Integer rawCode = null;
        Parcel data = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            data.writeInterfaceToken(legacyContract ? SOURCE_DESCRIPTOR : CURRENT_SOURCE_DESCRIPTOR);
            int transaction = legacyContract ? 6 : 38;
            if (service.transact(transaction, data, reply, 0)) {
                reply.readException();
                rawCode = reply.readInt();
                source = sourceForStatus(rawCode);
            }
        } catch (RemoteException | RuntimeException error) {
            Log.w(TAG, "media source readback unavailable", error);
        } finally { reply.recycle(); data.recycle(); }
        final String readback = source;
        final Integer observedCode = rawCode;
        handler.post(new Runnable() {
            @Override public void run() {
                synchronized (ContentMediaAdapter.this) {
                    if (!isCurrent(epoch) || sourceService != service) return;
                    boolean inventoryChanged = !sourceInventoryReady || !java.util.Objects.equals(actualSource, readback);
                    if (!sourceInventoryReady || !java.util.Objects.equals(lastSourceReadbackCode, observedCode)) {
                        Log.i(TAG, "media source readback raw=" + observedCode + " mapped=" + readback);
                    }
                    lastSourceReadbackCode = observedCode;
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
                : "爱趣听".equals(actualSource) ? ".musicservice"
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
            item.lastPlaybackState = initialPlayback == null ? PlaybackState.STATE_NONE : initialPlayback.getState();
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
                            if (!metadata && position.getState() != item.lastPlaybackState
                                    && sameToken(avrcpToken, item.controller)) avrcpPlaybackState = -1;
                            item.lastPlaybackState = position.getState();
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
                @Override public void onAudioInfoChanged(MediaController.PlaybackInfo info) { changed(true); }
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
            if (!sameToken(confirmedSongToken, selected)) clearConfirmedSong();
            controller = selected;
            generation++;
            cancelArtwork();
        }
        publishSnapshot(epoch);
    }

    private MediaController selectController() {
        if (actualSource == null && !sourceInventoryReady && sourceService == null) {
            MediaController arbitrated = selectWithoutSourceReadback();
            if (arbitrated != null) return arbitrated;
        }
        MediaController selected = null;
        int best = -1;
        for (ObservedController item : observed.values()) {
            if (item.destroyed || !matchesActualSource(item)) continue;
            MediaMetadata metadata = safeMetadata(item.controller);
            MediaFields fields = mediaFields(metadata);
            PlaybackState state = safePlayback(item.controller);
            boolean playing = state != null && (state.getState() == PlaybackState.STATE_PLAYING
                    || state.getState() == PlaybackState.STATE_FAST_FORWARDING || state.getState() == PlaybackState.STATE_REWINDING);
            boolean active = playing || state != null && (state.getState() == PlaybackState.STATE_BUFFERING
                    || state.getState() == PlaybackState.STATE_CONNECTING);
            boolean metadataGapForCurrent = sameToken(confirmedSongToken, item.controller)
                    && isMetadataGap(item.controller, fields);
            if (fields.title.isEmpty() && !active && !metadataGapForCurrent) continue;
            int score = playing ? 3
                    : state != null && (state.getState() == PlaybackState.STATE_BUFFERING
                    || state.getState() == PlaybackState.STATE_CONNECTING) ? 2 : 1;
            // Keep the current paused controller on equal evidence, avoiding enumeration-order churn.
            if (score > best || (score == best && sameToken(controller, item.controller))) {
                selected = item.controller;
                best = score;
            }
        }
        return selected;
    }

    private MediaController selectWithoutSourceReadback() {
        ArrayList<ContentMediaSessionCandidate> candidates = new ArrayList<>();
        Map<String, ObservedController> bySession = new LinkedHashMap<>();
        int index = 0;
        for (ObservedController item : observed.values()) {
            if (item.destroyed || !matchesActualSource(item)) continue;
            MediaMetadata metadata = safeMetadata(item.controller);
            MediaFields fields = mediaFields(metadata);
            PlaybackState state = safePlayback(item.controller);
            AudioAttributes audio = safeAudioAttributes(item.controller);
            String packageName = item.controller.getPackageName();
            String sessionId = item.controller.getSessionToken().toString();
            String sourceId = sourceForController(item.controller);
            if (sourceId == null) sourceId = packageName;
            Integer playbackState = state == null ? null : state.getState();
            Integer audioUsage = audio == null ? null : audio.getUsage();
            Integer audioContentType = audio == null ? null : audio.getContentType();
            long position = state == null ? PlaybackState.PLAYBACK_POSITION_UNKNOWN : state.getPosition();
            long updated = state == null ? 0L : state.getLastPositionUpdateTime();
            ContentMediaSessionCandidate candidate = new ContentMediaSessionCandidate(
                    index++, sessionId, sourceId, packageName, playbackState, audioUsage,
                    audioContentType, state == null ? 0L : state.getActions(), !fields.title.isEmpty(),
                    isSystemController(item.controller), position, updated,
                    isBluetooth(item.controller) ? ContentMediaSessionTransport.BLUETOOTH_AVRCP
                            : ContentMediaSessionTransport.STANDARD,
                    bluetoothCommunicationActive(item.controller),
                    !fields.artist.isEmpty() || !fields.album.isEmpty());
            candidates.add(candidate);
            bySession.put(sessionId, item);
        }
        ContentMediaSessionArbitrationDecision decision = sessionArbiter.evaluate(
                candidates, SystemClock.elapsedRealtime(), context.getPackageName(),
                browsers != null && browsers.getSessions().isEmpty());
        if (decision.getAction() == ContentMediaSessionArbitrationAction.CLEAR) return null;
        String selectedId = decision.getSessionId();
        if (selectedId == null) return null;
        ObservedController selected = bySession.get(selectedId);
        return selected == null ? null : selected.controller;
    }

    private boolean isSystemController(MediaController candidate) {
        if (candidate == null) return false;
        for (MediaController item : systemControllers) if (sameToken(item, candidate)) return true;
        return false;
    }

    private void changeActualSource(String source) {
        if (java.util.Objects.equals(actualSource, source)) return;
        initialSourceCorrelation = !hasReadbackSource && source != null && publishedRecording.isEmpty();
        if (source != null) hasReadbackSource = true;
        sourceEpoch++;
        sourceChangedAt = SystemClock.elapsedRealtime();
        sessionArbiter.reset();
        clearConfirmedSong();
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
        // No source service is different from an observed but unresolved readback.
        // The latter cannot authorize a retained session (e.g. Bluetooth after switching
        // to an unrecognised source). Never turn unknown SDK codes into a source guess.
        if (actualSource == null) return !sourceInventoryReady && sourceService == null && precise != null;
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
        int playbackState = state.getState();
        if (playbackState != PlaybackState.STATE_PLAYING
                && playbackState != PlaybackState.STATE_BUFFERING
                && playbackState != PlaybackState.STATE_CONNECTING
                && playbackState != PlaybackState.STATE_PAUSED) return false;
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
        if (MEDIA_CENTER_PACKAGE.equals(component.getPackageName()) &&
                (name.endsWith(".musicservice") || name.endsWith(".mediaplaybackservice"))) return "爱趣听";
        // The current car firmware exposes Aiquting through this shared public Browser endpoint.
        // The Binder readback remains the authority when it is available; this identity only keeps
        // a valid public session readable during the short no-readback window.
        return null;
    }

    private synchronized void publishSnapshot(long epoch) {
        if (!isCurrent(epoch) || listener == null) return;
        MediaController current = controller;
        ObservedController item = current == null ? null : observed.get(current.getSessionToken());
        boolean correlated = item != null && !item.destroyed && matchesActualSource(item);
        String source = actualSource != null ? actualSource : correlated ? sourceForController(current) : null;
        if (source == null) {
            clearConfirmedSong();
            cancelArtwork();
            publishedRecording = "";
            listener.onMediaSnapshot(ContentPorts.MediaSnapshot.unavailable());
            return;
        }
        MediaMetadata metadata = correlated ? safeMetadata(current) : null;
        PlaybackState playback = correlated ? safePlayback(current) : null;
        MediaFields fields = mediaFields(metadata);
        String identity = metadata == null ? "" : recordingIdentity(metadata);
        if (!correlated) clearConfirmedSong();
        ContentPorts.MediaSongIdentity songIdentity = correlated
                ? resolveSongIdentity(current, fields, songIdentityFor(current, fields), epoch)
                : ContentPorts.MediaSongIdentity.UNKNOWN;
        publishedRecording = identity;
        long actions = playback == null ? 0L : playback.getActions();
        Bitmap artwork = bitmapArtwork(metadata);
        if (songIdentity == ContentPorts.MediaSongIdentity.SONG && artwork == null && metadata != null) {
            List<String> uris = artworkUris(metadata);
            if (!uris.isEmpty() && !identity.isEmpty()) {
                artwork = uriArtwork(epoch, source + '\u001f' + avrcpRecordingKey(fields), uris);
            } else cancelArtwork();
        } else cancelArtwork();
        long position = playback == null || playback.getPosition() < 0L ? -1L : playback.getPosition();
        long updateTime = playback == null ? 0L : playback.getLastPositionUpdateTime();
        if (position < 0L || updateTime <= 0L || updateTime > SystemClock.elapsedRealtime()) updateTime = 0L;
        float speed = playback == null ? 0f : playback.getPlaybackSpeed();
        if (!Float.isFinite(speed)) speed = 0f;
        boolean matchingAvrcp = correlated && "蓝牙音乐".equals(source) && isBluetooth(current)
                && songIdentity == ContentPorts.MediaSongIdentity.SONG
                && avrcpSourceEpoch == sourceEpoch && sameToken(avrcpToken, current)
                && avrcpRecordingKey.equals(avrcpRecordingKey(fields))
                && (avrcpDurationMs < 1000L || fields.durationMs < 1000L
                        || Math.abs(avrcpDurationMs - fields.durationMs) <= 2000L);
        if (!matchingAvrcp) clearAvrcpEvent();
        long duration = fields.durationMs >= 1000L ? fields.durationMs
                : matchingAvrcp && avrcpDurationMs >= 1000L ? avrcpDurationMs : fields.durationMs;
        int playbackState = playback == null ? PlaybackState.STATE_NONE : playback.getState();
        int effectiveState = matchingAvrcp && avrcpPlaybackState >= 0 ? avrcpPlaybackState : playbackState;
        boolean playing = effectiveState == PlaybackState.STATE_PLAYING
                || effectiveState == PlaybackState.STATE_FAST_FORWARDING
                || effectiveState == PlaybackState.STATE_REWINDING;
        listener.onMediaSnapshot(new ContentPorts.MediaSnapshot(true, false, source, playing, generation,
                fields.title.isEmpty() ? "暂无媒体" : fields.title,
                fields.artist.isEmpty() ? "未连接" : fields.artist,
                (actions & (PlaybackState.ACTION_PLAY | PlaybackState.ACTION_PAUSE | PlaybackState.ACTION_PLAY_PAUSE)) != 0L,
                (actions & PlaybackState.ACTION_SKIP_TO_NEXT) != 0L, artwork,
                fields.mediaId, fields.album, duration, position, updateTime,
                playing ? speed : 0f, fields.embeddedLyrics, songIdentity, playbackState,
                avrcpEventSequence, avrcpPositionMs, avrcpPlaybackState, avrcpElapsedRealtimeMs));
    }

    private ContentPorts.MediaSongIdentity resolveSongIdentity(
            MediaController candidate, MediaFields fields,
            ContentPorts.MediaSongIdentity classified, long epoch) {
        if (classified == ContentPorts.MediaSongIdentity.SONG) {
            confirmedSongToken = candidate == null ? null : candidate.getSessionToken();
            metadataMissingSince = -1L;
            cancelMetadataGrace();
            return classified;
        }
        if (classified == ContentPorts.MediaSongIdentity.NON_SONG || candidate == null
                || !sameToken(confirmedSongToken, candidate) || !isMetadataGap(candidate, fields)) {
            clearConfirmedSong();
            return classified;
        }
        long now = SystemClock.elapsedRealtime();
        if (metadataMissingSince < 0L) metadataMissingSince = now;
        long elapsed = Math.max(0L, now - metadataMissingSince);
        if (elapsed < SONG_METADATA_GRACE_MS) {
            scheduleMetadataGrace(epoch, SONG_METADATA_GRACE_MS - elapsed);
            return ContentPorts.MediaSongIdentity.SONG;
        }
        clearConfirmedSong();
        return ContentPorts.MediaSongIdentity.UNKNOWN;
    }

    private ContentPorts.MediaSongIdentity songIdentityFor(
            MediaController candidate, MediaFields fields) {
        if (candidate == null) return ContentPorts.MediaSongIdentity.UNKNOWN;
        if (isBluetooth(candidate) && bluetoothCommunicationActive(candidate)) {
            return ContentPorts.MediaSongIdentity.NON_SONG;
        }
        AudioAttributes attributes = safeAudioAttributes(candidate);
        int usage = attributes == null ? AudioAttributes.USAGE_UNKNOWN : attributes.getUsage();
        int contentType = attributes == null ? AudioAttributes.CONTENT_TYPE_UNKNOWN : attributes.getContentType();
        PlaybackState state = safePlayback(candidate);
        long actions = state == null ? 0L : state.getActions();
        long mediaActions = PlaybackState.ACTION_PLAY | PlaybackState.ACTION_PLAY_PAUSE
                | PlaybackState.ACTION_PAUSE | PlaybackState.ACTION_STOP | PlaybackState.ACTION_SKIP_TO_NEXT
                | PlaybackState.ACTION_SKIP_TO_PREVIOUS | PlaybackState.ACTION_SEEK_TO;
        int playback = state == null ? PlaybackState.STATE_NONE : state.getState();
        boolean active = playback == PlaybackState.STATE_PLAYING || playback == PlaybackState.STATE_FAST_FORWARDING
                || playback == PlaybackState.STATE_REWINDING || playback == PlaybackState.STATE_BUFFERING
                || playback == PlaybackState.STATE_CONNECTING;
        return classifyAudioSemantics(usage, contentType, !fields.title.isEmpty(),
                !isBluetooth(candidate) || !fields.artist.isEmpty() || !fields.album.isEmpty(),
                false, (actions & mediaActions) != 0L, active);
    }

    /** Same eligibility evidence as 03lyrics, with an explicit MOVIE exclusion for the map. */
    static ContentPorts.MediaSongIdentity classifyAudioSemantics(
            int usage, int contentType, boolean hasTitle, boolean hasMusicMetadata,
            boolean bluetoothCommunicationActive, boolean hasTransportActions, boolean allowMissingTitle) {
        if (bluetoothCommunicationActive) return ContentPorts.MediaSongIdentity.NON_SONG;
        if (usage != AudioAttributes.USAGE_UNKNOWN && usage != AudioAttributes.USAGE_MEDIA) {
            return ContentPorts.MediaSongIdentity.NON_SONG;
        }
        if (contentType == AudioAttributes.CONTENT_TYPE_SPEECH
                || contentType == AudioAttributes.CONTENT_TYPE_SONIFICATION
                || contentType == AudioAttributes.CONTENT_TYPE_MOVIE) {
            return ContentPorts.MediaSongIdentity.NON_SONG;
        }
        if (!hasMusicMetadata) return ContentPorts.MediaSongIdentity.UNKNOWN;
        boolean explicitMusic = usage == AudioAttributes.USAGE_MEDIA || contentType == AudioAttributes.CONTENT_TYPE_MUSIC;
        if (allowMissingTitle && explicitMusic || hasTitle && (explicitMusic || hasTransportActions)) {
            return ContentPorts.MediaSongIdentity.SONG;
        }
        return ContentPorts.MediaSongIdentity.UNKNOWN;
    }

    private boolean isMetadataGap(MediaController candidate, MediaFields fields) {
        return fields.title.isEmpty()
                || isBluetooth(candidate) && fields.artist.isEmpty() && fields.album.isEmpty();
    }

    private void scheduleMetadataGrace(final long epoch, long delayMs) {
        if (metadataGraceTimeout != null) return;
        metadataGraceTimeout = new Runnable() {
            @Override public void run() {
                synchronized (ContentMediaAdapter.this) {
                    metadataGraceTimeout = null;
                    if (!isCurrent(epoch)) return;
                    publishSnapshot(epoch);
                }
            }
        };
        handler.postDelayed(metadataGraceTimeout, Math.max(1L, delayMs));
    }

    private void cancelMetadataGrace() {
        if (metadataGraceTimeout != null) handler.removeCallbacks(metadataGraceTimeout);
        metadataGraceTimeout = null;
    }

    private void clearConfirmedSong() {
        cancelMetadataGrace();
        clearAvrcpEvent();
        confirmedSongToken = null;
        metadataMissingSince = -1L;
    }

    private static AudioAttributes safeAudioAttributes(MediaController candidate) {
        try {
            MediaController.PlaybackInfo info = candidate == null ? null : candidate.getPlaybackInfo();
            return info == null ? null : info.getAudioAttributes();
        } catch (RuntimeException ignored) {
            return null;
        }
    }

    private boolean bluetoothCommunicationActive(MediaController candidate) {
        if (audioManager == null || !isBluetooth(candidate)) return false;
        int mode;
        try { mode = audioManager.getMode(); } catch (RuntimeException ignored) { return false; }
        return mode == AudioManager.MODE_IN_CALL || mode == AudioManager.MODE_IN_COMMUNICATION;
    }

    private static boolean isBluetooth(MediaController candidate) {
        return candidate != null && "com.android.bluetooth".equals(candidate.getPackageName());
    }

    private Bitmap uriArtwork(final long epoch, final String identity, final List<String> uris) {
        final String requestKey = sourceEpoch + "\u001f" + identity + "\u001f" + String.join("\u001f", uris);
        for (String uri : uris) {
            Bitmap cached = artworkCache.get(identity + '\u001f' + uri);
            if (cached != null && !cached.isRecycled()) {
                cancelArtwork();
                return cached;
            }
        }
        if (requestKey.equals(artworkRequestKey) || artworkExecutor == null) return null;
        List<String> candidates = new ArrayList<>();
        long now = SystemClock.elapsedRealtime();
        for (String uri : uris) {
            String cacheKey = identity + '\u001f' + uri;
            Long failedUntil = failedArtwork.get(cacheKey);
            if (failedUntil == null || now >= failedUntil) {
                failedArtwork.remove(cacheKey);
                candidates.add(uri);
            }
        }
        cancelArtwork();
        if (candidates.isEmpty()) return null;
        artworkRequestKey = requestKey;
        final long sequence = ++artworkSequence;
        final long sourceVersion = sourceEpoch;
        final MediaSession.Token token = controller.getSessionToken();
        final String recording = avrcpRecordingKey(mediaFields(safeMetadata(controller)));
        final CancellationSignal cancellation = new CancellationSignal();
        artworkCancellation = cancellation;
        artworkTimeout = () -> {
            synchronized (ContentMediaAdapter.this) {
                if (!isCurrent(epoch) || sequence != artworkSequence || !requestKey.equals(artworkRequestKey)) return;
                for (String uri : candidates) rememberArtworkFailure(identity + '\u001f' + uri);
                cancelArtwork();
                publishSnapshot(epoch);
            }
        };
        handler.postDelayed(artworkTimeout, Math.min(13_000L, 3_000L * candidates.size() + 1_000L));
        artworkTask = artworkExecutor.submit(() -> {
            Bitmap result = null;
            String resultUri = null;
            List<String> failures = new ArrayList<>();
            for (String uri : candidates) {
                if (cancellation.isCanceled() || Thread.currentThread().isInterrupted()) break;
                result = ContentMediaArtwork.decode(context, uri, cancellation);
                if (result != null && !result.isRecycled()) {
                    resultUri = uri;
                    break;
                }
                failures.add(uri);
            }
            final Bitmap loaded = result;
            final String loadedUri = resultUri;
            handler.post(() -> {
                synchronized (ContentMediaAdapter.this) {
                    MediaMetadata currentMetadata = safeMetadata(controller);
                    MediaFields currentFields = mediaFields(currentMetadata);
                    ObservedController selected = controller == null ? null : observed.get(controller.getSessionToken());
                    boolean currentRequest = isCurrent(epoch) && sourceEpoch == sourceVersion
                            && sequence == artworkSequence && requestKey.equals(artworkRequestKey)
                            && sameToken(token, controller) && selected != null && !selected.destroyed
                            && matchesActualSource(selected)
                            && recording.equals(avrcpRecordingKey(currentFields))
                            && uris.equals(artworkUris(currentMetadata))
                            && songIdentityFor(controller, currentFields) == ContentPorts.MediaSongIdentity.SONG
                            && !cancellation.isCanceled();
                    if (!currentRequest) {
                        if (loaded != null && !loaded.isRecycled()) loaded.recycle();
                        if (isCurrent(epoch) && sequence == artworkSequence && requestKey.equals(artworkRequestKey)) {
                            cancelArtwork();
                            publishSnapshot(epoch);
                        }
                        return;
                    }
                    artworkTask = null;
                    artworkCancellation = null;
                    if (artworkTimeout != null) handler.removeCallbacks(artworkTimeout);
                    artworkTimeout = null;
                    for (String uri : failures) rememberArtworkFailure(identity + '\u001f' + uri);
                    if (loaded != null && !loaded.isRecycled()) {
                        String cacheKey = identity + '\u001f' + loadedUri;
                        artworkCache.put(cacheKey, loaded);
                        failedArtwork.remove(cacheKey);
                        generation++;
                    }
                    artworkRequestKey = null;
                    publishSnapshot(epoch);
                }
            });
        });
        return null;
    }

    private void rememberArtworkFailure(String key) {
        failedArtwork.remove(key);
        while (failedArtwork.size() >= ARTWORK_FAILURE_LIMIT) {
            failedArtwork.remove(failedArtwork.keySet().iterator().next());
        }
        failedArtwork.put(key, SystemClock.elapsedRealtime() + ARTWORK_FAILURE_TTL_MS);
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

    private static List<String> artworkUris(MediaMetadata metadata) {
        java.util.LinkedHashSet<String> uris = new java.util.LinkedHashSet<>();
        if (metadata == null) return new ArrayList<>();
        for (String key : new String[] { MediaMetadata.METADATA_KEY_ALBUM_ART_URI,
                MediaMetadata.METADATA_KEY_ART_URI, MediaMetadata.METADATA_KEY_DISPLAY_ICON_URI }) {
            String uri = text(metadata, key);
            if (!uri.isEmpty() && uri.length() <= 8192) uris.add(uri);
        }
        try {
            MediaDescription description = metadata.getDescription();
            String uri = description.getIconUri() == null ? "" : description.getIconUri().toString().trim();
            if (!uri.isEmpty() && uri.length() <= 8192) uris.add(uri);
        } catch (RuntimeException ignored) { }
        return new ArrayList<>(uris);
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

    private static boolean sameToken(MediaSession.Token token, MediaController candidate) {
        return token == null ? candidate == null
                : candidate != null && token.equals(candidate.getSessionToken());
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
        int lastPlaybackState = PlaybackState.STATE_NONE;
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
            // OEM MediaConstant.LIVE_MUSIC_SOURCE (SDK domain); AQT_PROGRAM uses a different card-domain code.
            case 13: return "爱趣听";
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
