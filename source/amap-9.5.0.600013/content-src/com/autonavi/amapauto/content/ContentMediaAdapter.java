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
import com.icar03.content.runtime.media.ContentMediaSourcePolicy;
import com.icar03.content.runtime.media.ContentPublicMediaBrowsers;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

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
    private volatile MediaController controller;
    private List<MediaController> systemControllers = new ArrayList<>();
    private final Map<MediaSession.Token, ObservedController> observed = new LinkedHashMap<>();
    private final ContentMediaSessionArbiter sessionArbiter = new ContentMediaSessionArbiter();
    private final Set<String> quarantinedRecordings = new HashSet<>();
    private ContentPublicMediaBrowsers browsers;
    private List<ContentPublicMediaBrowsers.Session> browserSessions = Collections.emptyList();
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
    private volatile boolean running;
    private volatile long lifecycle;
    private volatile boolean sourceWriteAvailable;
    private final ExternalReads externalReads;
    private final Executor injectedSourceExecutor;
    // Facts and immutable deliveries are copied under this monitor. The FIFO is drained
    // on main after every outer producer has released it; reentrant listeners only append.
    private final ArrayDeque<Runnable> deliveries = new ArrayDeque<>();
    private boolean drainingDeliveries;
    private ContentPorts.MediaSnapshot lastPublishedSnapshot;
    private String publicFieldLogSignature = "";
    private boolean lastPublishedSourceAvailable;
    private Bitmap snapshotArtwork;
    private int snapshotArtworkGeneration;
    private SourceRequest sourceRequest;
    private long nextSourceRequestSequence;
    private long acceptedSourceRequestSequence;
    private long sourceServiceVersion;
    private boolean sourceDirty;
    private boolean audioDirty;
    private boolean capabilityDirty;
    private boolean endpointDirty;
    private boolean sourceReadFailed;
    private Runnable sourceRetry;
    private long lastSourceReadSequence;
    private long nextSourceCommandSequence;
    private long pendingSourceCommandSequence;
    private long pendingSourceCommandServiceVersion;
    private IBinder pendingSourceCommandService;
    private String pendingSourceCommandTarget;
    private int cachedAudioMode = AudioManager.MODE_NORMAL;
    private long sessionListSequence;
    private BroadcastReceiver environmentReceiver;
    private BroadcastReceiver packageReceiver;
    private Runnable selectionRecheck;
    private long selectionEvaluations;
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
    private long avrcpPositionElapsedRealtimeMs;
    private long avrcpSourceEpoch = -1L;
    private MediaSession.Token avrcpToken;
    private String avrcpRecordingKey = "";

    public ContentMediaAdapter(Context context) {
        this(context, new ExternalReads(), null);
    }

    ContentMediaAdapter(Context context, ExternalReads externalReads, Executor sourceExecutor) {
        this.context = context.getApplicationContext();
        this.audioManager = (AudioManager) this.context.getSystemService(Context.AUDIO_SERVICE);
        this.externalReads = externalReads;
        this.injectedSourceExecutor = sourceExecutor;
    }

    @Override public boolean isAvailable() { return controller != null; }

    /** No Binder, PackageManager or adapter monitor on a Store/UI projection. */
    @Override public boolean isSourceAvailable() { return sourceWriteAvailable; }

    private void onMain(Runnable action) {
        if (Looper.myLooper() == handler.getLooper() && !Thread.holdsLock(this)) action.run();
        else handler.post(action);
    }

    private void effectLocked(Runnable effect) { deliveries.addLast(effect); }

    private void currentEffectLocked(long epoch, Runnable effect) {
        effectLocked(() -> { if (isCurrent(epoch)) effect.run(); });
    }

    private void drainDeliveries() {
        if (Thread.holdsLock(this)) throw new IllegalStateException("media delivery under adapter monitor");
        synchronized (this) {
            if (drainingDeliveries) return;
            drainingDeliveries = true;
        }
        try {
            while (true) {
                Runnable next;
                synchronized (this) {
                    next = deliveries.pollFirst();
                    if (next == null) return;
                }
                try { next.run(); }
                catch (RuntimeException error) { Log.w(TAG, "media delivery failed", error); }
            }
        } finally {
            final boolean pending;
            synchronized (this) {
                drainingDeliveries = false;
                pending = !deliveries.isEmpty();
            }
            if (pending) handler.post(this::drainDeliveries);
        }
    }

    private void executeSource(Handler worker, Runnable action) {
        if (injectedSourceExecutor != null) injectedSourceExecutor.execute(action);
        else if (worker != null) worker.post(action);
    }

    @Override public boolean requestPlayback(boolean playing) {
        MediaController current;
        synchronized (this) {
            current = commandControllerLocked(PlaybackState.ACTION_PLAY_PAUSE
                    | (playing ? PlaybackState.ACTION_PLAY : PlaybackState.ACTION_PAUSE));
        }
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

    private MediaController commandControllerLocked(long requiredActions) {
        ObservedController item = controller == null ? null : observed.get(controller.getSessionToken());
        if (!running || item == null || item.destroyed || !matchesActualSource(item)
                || !item.playbackMatchesMetadata || item.facts.playback == null
                || (item.facts.playback.getActions() & requiredActions) == 0L) return null;
        return item.controller;
    }

    @Override public boolean requestNext() {
        MediaController current;
        synchronized (this) { current = commandControllerLocked(PlaybackState.ACTION_SKIP_TO_NEXT); }
        if (current == null) return false;
        try {
            current.getTransportControls().skipToNext();
            return true;
        } catch (RuntimeException error) {
            Log.w(TAG, "media next command failed", error);
            return false;
        }
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
            if (context.startService(intent) == null) {
                invalidateSource(epoch, false, false, true, false);
                return false;
            }
            onMain(() -> {
                synchronized (ContentMediaAdapter.this) {
                    if (!isCurrent(epoch)) return;
                    pendingSourceCommandSequence = ++nextSourceCommandSequence;
                    pendingSourceCommandTarget = ContentRegistry.normalizeMediaSource(source);
                    pendingSourceCommandService = sourceService;
                    pendingSourceCommandServiceVersion = sourceServiceVersion;
                }
            });
            handler.postDelayed(new Runnable() {
                @Override public void run() {
                    if (!isCurrent(epoch)) return;
                    invalidateSource(epoch, true, true, true, sourceConnection == null);
                }
            }, REFRESH_DELAY_MS);
            return true;
        } catch (RuntimeException error) {
            Log.w(TAG, "media source command failed", error);
            invalidateSource(epoch, false, false, true, false);
            return false;
        }
    }

    @Override public void start(ContentPorts.MediaSnapshotListener nextListener) {
        onMain(() -> startOnMain(nextListener));
    }

    private void startOnMain(ContentPorts.MediaSnapshotListener nextListener) {
        synchronized (this) { if (running) return; }
        HandlerThread workerThread = new HandlerThread("content-media-source");
        workerThread.start();
        Handler worker = new Handler(workerThread.getLooper());
        MediaSessionManager manager = (MediaSessionManager) context.getSystemService(Context.MEDIA_SESSION_SERVICE);
        final long epoch;
        synchronized (this) {
            listener = nextListener;
            running = true;
            epoch = ++lifecycle;
            sourceThread = workerThread;
            sourceHandler = worker;
            sessionManager = manager;
            lastPublishedSnapshot = null;
            publicFieldLogSignature = "";
            cachedAudioMode = AudioManager.MODE_NORMAL;
            artworkExecutor = Executors.newSingleThreadExecutor(runnable -> new Thread(runnable, "content-media-artwork"));
            browsers = new ContentPublicMediaBrowsers(context, handler,
                    sessions -> { if (isCurrent(epoch)) reconcileControllers(epoch); },
                    (Executor) runnable -> executeSource(worker, runnable));
            discovery = new Runnable() {
                @Override public void run() {
                    if (!isCurrent(epoch)) return;
                    refreshSessions(epoch);
                    invalidateSource(epoch, sourceReadFailed, true, true, sourceConnection == null);
                    // Bounded discovery, never a media position poll.
                    if (isCurrent(epoch)) handler.postDelayed(this, controller == null ? 5000L : 30000L);
                }
            };
            sessionListener = controllers -> updateController(controllers, epoch);
            final MediaSessionManager.OnActiveSessionsChangedListener activeListener = sessionListener;
            currentEffectLocked(epoch, () -> {
                try {
                    if (manager != null) manager.addOnActiveSessionsChangedListener(activeListener,
                            new ComponentName(context, ContentMediaListener.class), handler);
                } catch (RuntimeException error) { Log.w(TAG, "media session access unavailable", error); }
                startAvrcpMonitor(epoch);
                startEnvironmentMonitor(epoch);
                refreshSessions(epoch);
                bindSourceStatus(epoch);
                if (isCurrent(epoch)) handler.postDelayed(discovery, 5000L);
            });
            queueSnapshotLocked(epoch);
        }
        drainDeliveries();
    }

    @Override public void stop() { onMain(this::stopOnMain); }

    private void stopOnMain() {
        synchronized (this) {
            if (!running) return;
            running = false;
            lifecycle++;
            sourceWriteAvailable = false;
            final BroadcastReceiver avrcp = avrcpReceiver;
            final BroadcastReceiver environment = environmentReceiver;
            final BroadcastReceiver packages = packageReceiver;
            avrcpReceiver = environmentReceiver = packageReceiver = null;
            final Runnable oldDiscovery = discovery;
            final Runnable oldRecheck = selectionRecheck;
            discovery = selectionRecheck = null;
            final MediaSessionManager manager = sessionManager;
            final MediaSessionManager.OnActiveSessionsChangedListener activeListener = sessionListener;
            final ContentPublicMediaBrowsers registry = browsers;
            final ExecutorService artworkWorker = artworkExecutor;
            final HandlerThread oldThread = sourceThread;
            final Handler oldWorker = sourceHandler;
            final IBinder service = sourceService;
            final Binder callback = sourceCallback;
            final boolean legacy = sourceLegacyContract;
            final ServiceConnection connection = sourceConnection;
            final List<ObservedController> previous = new ArrayList<>(observed.values());
            observed.clear();
            controller = null;
            browsers = null;
            browserSessions = Collections.emptyList();
            artworkExecutor = null;
            systemControllers.clear();
            quarantinedRecordings.clear();
            sourceEpoch++;
            sourceServiceVersion++;
            sourceChangedAt = 0L;
            sessionArbiter.reset();
            hasReadbackSource = initialSourceCorrelation = sourceInventoryReady = false;
            sourceDirty = audioDirty = capabilityDirty = endpointDirty = false;
            sourceReadFailed = false;
            pendingSourceCommandSequence = 0L;
            pendingSourceCommandService = null;
            pendingSourceCommandTarget = null;
            cancelSourceRetryLocked();
            // An old physical read remains in flight until its completion retires it.
            // A restart marks dirty and waits, so there cannot be two concurrent source reads.
            publishedRecording = "";
            clearConfirmedSong();
            cancelArtwork();
            artworkCache.evictAll();
            failedArtwork.clear();
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
            lastPublishedSnapshot = null;
            publicFieldLogSignature = "";
            effectLocked(() -> {
                unregisterReceiver(avrcp); unregisterReceiver(environment); unregisterReceiver(packages);
                if (oldDiscovery != null) handler.removeCallbacks(oldDiscovery);
                if (oldRecheck != null) handler.removeCallbacks(oldRecheck);
                if (manager != null && activeListener != null) {
                    try { manager.removeOnActiveSessionsChangedListener(activeListener); }
                    catch (RuntimeException ignored) { }
                }
                for (ObservedController item : previous) unregisterCallback(item);
                if (registry != null) registry.close();
                if (artworkWorker != null) artworkWorker.shutdownNow();
                executeSource(oldWorker, () -> unregisterSourceCallback(service, callback, legacy));
                if (connection != null) {
                    try { context.unbindService(connection); } catch (RuntimeException ignored) { }
                }
                if (oldThread != null) oldThread.quitSafely();
            });
        }
        drainDeliveries();
    }

    private void unregisterReceiver(BroadcastReceiver receiver) {
        if (receiver != null) {
            try { context.unregisterReceiver(receiver); } catch (RuntimeException ignored) { }
        }
    }

    private void startEnvironmentMonitor(final long epoch) {
        BroadcastReceiver audio = new BroadcastReceiver() {
            @Override public void onReceive(Context ignored, Intent intent) {
                invalidateSource(epoch, false, true, false, false);
            }
        };
        IntentFilter audioFilter = new IntentFilter(AudioManager.ACTION_SCO_AUDIO_STATE_UPDATED);
        audioFilter.addAction(AudioManager.ACTION_AUDIO_BECOMING_NOISY);
        audioFilter.addAction("android.media.AUDIO_MODE_CHANGED");
        BroadcastReceiver packages = new BroadcastReceiver() {
            @Override public void onReceive(Context ignored, Intent intent) {
                if (!isCurrent(epoch)) return;
                if (browsers != null) browsers.invalidateInventory(intent == null || intent.getData() == null
                        ? null : intent.getData().getSchemeSpecificPart());
                if (intent != null && intent.getData() != null
                        && MEDIA_CENTER_PACKAGE.equals(intent.getData().getSchemeSpecificPart())) {
                    onMain(() -> {
                        synchronized (ContentMediaAdapter.this) {
                            if (!isCurrent(epoch)) return;
                            detachSourceLocked();
                            changeActualSourceLocked(null);
                            queueSnapshotLocked(epoch);
                        }
                        drainDeliveries();
                        invalidateSource(epoch, false, true, true, true);
                    });
                }
                refreshSessions(epoch);
            }
        };
        IntentFilter packageFilter = new IntentFilter(Intent.ACTION_PACKAGE_ADDED);
        packageFilter.addAction(Intent.ACTION_PACKAGE_REMOVED);
        packageFilter.addAction(Intent.ACTION_PACKAGE_CHANGED);
        packageFilter.addAction(Intent.ACTION_PACKAGE_REPLACED);
        packageFilter.addDataScheme("package");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(audio, audioFilter, null, handler, Context.RECEIVER_EXPORTED);
                context.registerReceiver(packages, packageFilter, null, handler, Context.RECEIVER_EXPORTED);
            } else {
                context.registerReceiver(audio, audioFilter, null, handler);
                context.registerReceiver(packages, packageFilter, null, handler);
            }
            synchronized (this) {
                if (isCurrent(epoch)) { environmentReceiver = audio; packageReceiver = packages; return; }
            }
            unregisterReceiver(audio); unregisterReceiver(packages);
        } catch (RuntimeException error) {
            unregisterReceiver(audio); unregisterReceiver(packages);
            Log.w(TAG, "media environment monitor unavailable", error);
        }
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

    private void acceptAvrcpEvent(Intent intent, long epoch) {
        onMain(() -> {
            synchronized (ContentMediaAdapter.this) { acceptAvrcpEventLocked(intent, epoch); }
            drainDeliveries();
        });
    }

    private void acceptAvrcpEventLocked(Intent intent, long epoch) {
        if (!isCurrent(epoch) || intent == null || controller == null) return;
        ObservedController selected = observed.get(controller.getSessionToken());
        if (!isBluetooth(controller) || selected == null || selected.destroyed
                || !matchesActualSource(selected)) return;
        String selectedSource = actualSource != null ? actualSource : sourceForController(controller);
        if (!"蓝牙音乐".equals(selectedSource)) return;
        String action = intent.getAction();
        if (!java.util.Arrays.asList(AVRCP_ACTIONS).contains(action)) return;
        MediaFields fields = selected.facts.metadata.fields;
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
        avrcpPositionElapsedRealtimeMs = avrcpElapsedRealtimeMs;
        if (position != null && playback instanceof PlaybackState) {
            PlaybackState sample = (PlaybackState) playback;
            if (sample.getPosition() == position && sample.getLastPositionUpdateTime() > 0L) {
                // Keep even an expired/future sample time: the timeline rejects it,
                // rather than laundering an old position through a fresh receipt.
                avrcpPositionElapsedRealtimeMs = sample.getLastPositionUpdateTime();
            }
        }
        sessionArbiter.observeBluetoothActivity(new ContentMediaSessionBluetoothActivity(
                position, playbackState, avrcpElapsedRealtimeMs));
        avrcpEventSequence = ++nextAvrcpEventSequence;
        Log.i(TAG, "AVRCP accepted sequence=" + avrcpEventSequence
                + " position=" + avrcpPositionMs + " state=" + avrcpPlaybackState);
        queueSnapshotLocked(epoch);
        markSourceDirtyLocked(epoch, false, true, false, false);
    }

    private void clearAvrcpEvent() {
        avrcpEventSequence = 0L;
        avrcpPositionMs = -1L;
        avrcpDurationMs = 0L;
        avrcpPlaybackState = -1;
        avrcpElapsedRealtimeMs = 0L;
        avrcpPositionElapsedRealtimeMs = 0L;
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

    private boolean isCurrent(long epoch) { return running && lifecycle == epoch; }

    private void bindSourceStatus(long epoch) { invalidateSource(epoch, false, true, true, true); }

    private void installSourceConnection(final long epoch, final SourceEndpoint endpoint) {
        if (endpoint == null) return;
        final boolean legacy = endpoint.legacy;
        final String descriptor = legacy ? SOURCE_DESCRIPTOR : CURRENT_SOURCE_DESCRIPTOR;
        final ServiceConnection connection = new ServiceConnection() {
            @Override public void onServiceConnected(ComponentName name, final IBinder service) {
                final ServiceConnection owner = this;
                onMain(() -> {
                    final Handler worker;
                    final long version;
                    synchronized (ContentMediaAdapter.this) {
                        if (!isCurrent(epoch) || sourceConnection != owner) return;
                        final IBinder previousService = sourceService;
                        final Binder previousCallback = sourceCallback;
                        final boolean previousLegacy = sourceLegacyContract;
                        worker = sourceHandler;
                        if (previousService != null && previousCallback != null) effectLocked(() ->
                                executeSource(worker, () -> unregisterSourceCallback(
                                        previousService, previousCallback, previousLegacy)));
                        version = ++sourceServiceVersion;
                        sourceService = service;
                        sourceCallback = null;
                        sourceLegacyContract = legacy;
                        sourceInventoryReady = false;
                        sourceReadFailed = false;
                        cancelSourceRetryLocked();
                        // Block retained public sessions while this connection has no readback.
                        reconcileSelectionLocked(epoch);
                        currentEffectLocked(epoch, () -> executeSource(worker, () -> {
                            boolean valid = false;
                            try { valid = descriptor.equals(service.getInterfaceDescriptor()); }
                            catch (RemoteException | RuntimeException error) {
                                Log.w(TAG, "media source descriptor unavailable", error);
                            }
                            final boolean verified = valid;
                            handler.post(() -> acceptSourceConnection(epoch, owner, service, legacy, version, verified));
                        }));
                    }
                    drainDeliveries();
                });
            }
            @Override public void onServiceDisconnected(ComponentName name) {
                final ServiceConnection owner = this;
                onMain(() -> {
                    synchronized (ContentMediaAdapter.this) {
                        if (!isCurrent(epoch) || sourceConnection != owner) return;
                        sourceServiceVersion++;
                        sourceService = null;
                        sourceCallback = null;
                        sourceLegacyContract = false;
                        sourceInventoryReady = true;
                        changeActualSourceLocked(null);
                        reconcileSelectionLocked(epoch);
                        markSourceDirtyLocked(epoch, false, true, true, false);
                    }
                    drainDeliveries();
                });
            }
        };
        synchronized (this) {
            if (!isCurrent(epoch) || sourceConnection != null) return;
            sourceConnection = connection;
        }
        boolean bound = false;
        try { bound = context.bindService(endpoint.intent(), connection, Context.BIND_AUTO_CREATE); }
        catch (RuntimeException error) { Log.w(TAG, "media source status unavailable", error); }
        if (!bound) {
            synchronized (this) { if (sourceConnection == connection) sourceConnection = null; }
        }
    }

    private void acceptSourceConnection(long epoch, ServiceConnection connection, IBinder service,
            boolean legacy, long version, boolean verified) {
        synchronized (this) {
            if (!isCurrent(epoch) || sourceConnection != connection || sourceService != service
                    || sourceServiceVersion != version) return;
            if (verified) {
                final Binder callback = sourceBinderCallback(epoch, service, legacy, version);
                sourceCallback = callback;
                final Handler worker = sourceHandler;
                currentEffectLocked(epoch, () -> executeSource(worker, () -> registerSourceCallback(service, callback, legacy)));
                markSourceDirtyLocked(epoch, true, true, true, false);
            } else {
                sourceInventoryReady = true;
                changeActualSourceLocked(null);
                reconcileSelectionLocked(epoch);
                markSourceDirtyLocked(epoch, false, true, true, false);
            }
        }
        drainDeliveries();
    }

    private Binder sourceBinderCallback(final long epoch, final IBinder service,
            final boolean legacy, final long version) {
        final String callbackDescriptor = legacy ? CALLBACK_DESCRIPTOR : CURRENT_CALLBACK_DESCRIPTOR;
        return new Binder() {
            @Override protected boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
                if (code == INTERFACE_TRANSACTION) {
                    if (reply != null) reply.writeString(callbackDescriptor);
                    return true;
                }
                if (code < 1 || code > (legacy ? 7 : 5)) return super.onTransact(code, data, reply, flags);
                data.enforceInterface(callbackDescriptor);
                if (!legacy) {
                    if (code == 3) data.createStringArrayList();
                    else if (code == 4 || code == 5) data.readString();
                    if (code == 5) return true;
                }
                if (code == 1 || code == 2 || code == 4) {
                    // Binder threads acknowledge only the invalidation. They never enter
                    // the adapter monitor or perform a read/reconcile/notification.
                    handler.post(() -> {
                        synchronized (ContentMediaAdapter.this) {
                            if (!isCurrent(epoch) || sourceService != service || sourceServiceVersion != version) return;
                            markSourceDirtyLocked(epoch, true, true, false, false);
                        }
                        drainDeliveries();
                    });
                }
                if (reply != null) {
                    reply.writeNoException();
                    if (!legacy && code == 4) reply.writeInt(0);
                }
                return true;
            }
        };
    }

    private void detachSourceLocked() {
        final Handler worker = sourceHandler;
        final IBinder service = sourceService;
        final Binder callback = sourceCallback;
        final boolean legacy = sourceLegacyContract;
        final ServiceConnection connection = sourceConnection;
        sourceServiceVersion++;
        sourceConnection = null;
        sourceService = null;
        sourceCallback = null;
        sourceLegacyContract = false;
        sourceInventoryReady = true;
        sourceReadFailed = false;
        cancelSourceRetryLocked();
        effectLocked(() -> {
            executeSource(worker, () -> unregisterSourceCallback(service, callback, legacy));
            if (connection != null) {
                try { context.unbindService(connection); } catch (RuntimeException ignored) { }
            }
        });
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

    private void refreshSource(long epoch) { invalidateSource(epoch, true, true, false, false); }

    private void invalidateSource(long epoch, boolean source, boolean audio, boolean capability, boolean endpoint) {
        onMain(() -> {
            synchronized (ContentMediaAdapter.this) {
                if (!isCurrent(epoch)) return;
                markSourceDirtyLocked(epoch, source, audio, capability, endpoint);
            }
            drainDeliveries();
        });
    }

    private void markSourceDirtyLocked(long epoch, boolean source, boolean audio, boolean capability, boolean endpoint) {
        if (!isCurrent(epoch)) return;
        sourceDirty |= source;
        audioDirty |= audio;
        capabilityDirty |= capability;
        endpointDirty |= endpoint;
        kickSourceReadLocked();
    }

    private void kickSourceReadLocked() {
        if (!running || sourceHandler == null || sourceRequest != null) return;
        boolean readSource = sourceDirty && sourceService != null && sourceCallback != null;
        if (!readSource && !audioDirty && !capabilityDirty && !endpointDirty) { sourceDirty = false; return; }
        final SourceRequest request = new SourceRequest(lifecycle, sourceService, sourceLegacyContract,
                sourceServiceVersion, ++nextSourceRequestSequence, readSource,
                audioDirty, capabilityDirty, endpointDirty && sourceConnection == null,
                readSource && sourceService == pendingSourceCommandService
                        && sourceServiceVersion == pendingSourceCommandServiceVersion ? pendingSourceCommandSequence : 0L);
        sourceRequest = request;
        sourceDirty = audioDirty = capabilityDirty = endpointDirty = false;
        final Handler worker = sourceHandler;
        effectLocked(() -> executeSource(worker, () -> readSourceStatus(request)));
    }

    private void readSourceStatus(SourceRequest request) {
        Integer raw = null;
        Integer mode = null;
        Boolean available = null;
        SourceEndpoint endpoint = null;
        if (request.readSource) {
            try { raw = externalReads.sourceStatus(request.service, request.legacy); }
            catch (RuntimeException error) { Log.w(TAG, "media source readback unavailable", error); }
        }
        if (request.readAudio) {
            try { mode = externalReads.audioMode(audioManager); } catch (RuntimeException ignored) { }
        }
        if (request.readCapability) {
            try { available = externalReads.sourceWriteAvailable(context); }
            catch (RuntimeException ignored) { available = false; }
        }
        if (request.readEndpoint) {
            try { endpoint = externalReads.sourceEndpoint(context); } catch (RuntimeException ignored) { }
        }
        final SourceResult result = new SourceResult(request, raw, mode, available, endpoint);
        // Completion must retire an old in-flight request even after stop/restart.
        handler.post(() -> acceptSourceResult(result));
    }

    private void acceptSourceResult(SourceResult result) {
        SourceRequest request = result.request;
        synchronized (this) {
            if (sourceRequest != request) return;
            sourceRequest = null;
            boolean admissible = isCurrent(request.epoch) && sourceService == request.service
                    && sourceServiceVersion == request.serviceVersion
                    && request.sequence > acceptedSourceRequestSequence;
            if (admissible) {
                acceptedSourceRequestSequence = request.sequence;
                boolean selectionChanged = false;
                boolean commandConfirmed = false;
                if (request.readSource) {
                    lastSourceReadSequence = request.sequence;
                    boolean previouslyFailed = sourceReadFailed;
                    sourceReadFailed = result.rawCode == null;
                    cancelSourceRetryLocked();
                    if (sourceReadFailed && !previouslyFailed) scheduleSourceRetryLocked(request);
                    String readback = result.rawCode == null ? null : sourceForStatus(result.rawCode);
                    commandConfirmed = readback != null && request.commandSequence != 0L
                            && request.commandSequence == pendingSourceCommandSequence
                            && readback.equals(pendingSourceCommandTarget);
                    if (commandConfirmed) pendingSourceCommandSequence = 0L;
                    boolean inventoryChanged = !sourceInventoryReady || !java.util.Objects.equals(actualSource, readback);
                    if (!sourceInventoryReady || !java.util.Objects.equals(lastSourceReadbackCode, result.rawCode)) {
                        Log.i(TAG, "media source readback raw=" + result.rawCode + " mapped=" + readback);
                    }
                    lastSourceReadbackCode = result.rawCode;
                    sourceInventoryReady = true;
                    changeActualSourceLocked(readback);
                    selectionChanged = inventoryChanged;
                    if (inventoryChanged) currentEffectLocked(request.epoch, () -> refreshSessions(request.epoch));
                    if (result.rawCode == null) { capabilityDirty = true; endpointDirty |= sourceConnection == null; }
                }
                if (result.audioMode != null && cachedAudioMode != result.audioMode) {
                    cachedAudioMode = result.audioMode;
                    selectionChanged = true;
                }
                boolean capabilityChanged = result.writeAvailable != null && sourceWriteAvailable != result.writeAvailable;
                if (result.writeAvailable != null) sourceWriteAvailable = result.writeAvailable;
                if (result.endpoint != null) currentEffectLocked(request.epoch,
                        () -> installSourceConnection(request.epoch, result.endpoint));
                // A duplicate source notification has no arbitration or publication work.
                if (selectionChanged) reconcileSelectionLocked(request.epoch, commandConfirmed);
                else if (capabilityChanged || commandConfirmed) queueSnapshotLocked(request.epoch, commandConfirmed);
            }
            kickSourceReadLocked();
        }
        drainDeliveries();
    }

    private void cancelSourceRetryLocked() {
        final Runnable retry = sourceRetry;
        sourceRetry = null;
        if (retry != null) effectLocked(() -> handler.removeCallbacks(retry));
    }

    private void scheduleSourceRetryLocked(final SourceRequest request) {
        final Runnable retry = new Runnable() {
            @Override public void run() {
                synchronized (ContentMediaAdapter.this) {
                    if (sourceRetry != this) return;
                    sourceRetry = null;
                    if (!isCurrent(request.epoch) || sourceService != request.service
                            || sourceServiceVersion != request.serviceVersion
                            || lastSourceReadSequence != request.sequence || !sourceReadFailed) return;
                    markSourceDirtyLocked(request.epoch, true, true, true, false);
                }
                drainDeliveries();
            }
        };
        sourceRetry = retry;
        currentEffectLocked(request.epoch, () -> handler.postDelayed(retry, 1_000L));
    }

    private void refreshSessions(long epoch) {
        onMain(() -> {
            final MediaSessionManager manager;
            final Handler worker;
            final long sequence;
            synchronized (ContentMediaAdapter.this) {
                if (!isCurrent(epoch)) return;
                manager = sessionManager;
                worker = sourceHandler;
                sequence = ++sessionListSequence;
            }
            executeSource(worker, () -> {
                List<MediaController> active = new ArrayList<>();
                if (manager != null) {
                    try { active = manager.getActiveSessions(new ComponentName(context, ContentMediaListener.class)); }
                    catch (RuntimeException error) { Log.w(TAG, "active media sessions unavailable", error); }
                }
                final List<MediaController> inventory = active == null ? Collections.emptyList() : new ArrayList<>(active);
                handler.post(() -> {
                    synchronized (ContentMediaAdapter.this) {
                        if (!isCurrent(epoch) || sessionListSequence != sequence) return;
                    }
                    updateController(inventory, epoch);
                });
            });
        });
    }

    private static void unregisterCallback(ObservedController item) {
        try { item.controller.unregisterCallback(item.callback); } catch (RuntimeException ignored) { }
    }

    private void updateController(List<MediaController> controllers, final long epoch) {
        final List<MediaController> inventory = controllers == null ? Collections.emptyList() : new ArrayList<>(controllers);
        onMain(() -> {
            // Package/token identity is cold inventory work, outside the adapter monitor.
            Set<String> packages = new HashSet<>();
            for (MediaController item : inventory) if (item != null) packages.add(item.getPackageName());
            final ContentPublicMediaBrowsers registry;
            final ComponentName preferred;
            synchronized (ContentMediaAdapter.this) {
                if (!isCurrent(epoch)) return;
                sessionListSequence++;
                systemControllers = new ArrayList<>(inventory);
                if (sourceService != null) packages.add(MEDIA_CENTER_PACKAGE);
                preferred = ContentMediaSourcePolicy.componentForSource(actualSource);
                if (preferred != null) packages.add(preferred.getPackageName());
                registry = browsers;
            }
            if (registry != null) registry.refresh(packages, preferred);
            reconcileControllers(epoch);
        });
    }

    private void reconcileControllers(final long epoch) {
        onMain(() -> {
            Map<MediaSession.Token, MediaController> merged = new LinkedHashMap<>();
            List<MediaController> active;
            ContentPublicMediaBrowsers registry;
            synchronized (ContentMediaAdapter.this) {
                if (!isCurrent(epoch)) return;
                active = new ArrayList<>(systemControllers);
                registry = browsers;
            }
            for (MediaController candidate : active) if (candidate != null) merged.put(candidate.getSessionToken(), candidate);
            List<ContentPublicMediaBrowsers.Session> sessions = registry == null
                    ? Collections.emptyList() : new ArrayList<>(registry.getSessions());
            for (ContentPublicMediaBrowsers.Session session : sessions) {
                MediaController candidate = session.getController();
                merged.putIfAbsent(candidate.getSessionToken(), candidate);
            }
            List<ObservedController> additions = new ArrayList<>();
            for (Map.Entry<MediaSession.Token, MediaController> candidate : merged.entrySet()) {
                synchronized (ContentMediaAdapter.this) { if (observed.containsKey(candidate.getKey())) continue; }
                ObservedController item = new ObservedController(candidate.getValue());
                item.callback = controllerCallback(item, epoch);
                additions.add(item);
            }
            synchronized (ContentMediaAdapter.this) {
                if (!isCurrent(epoch)) return;
                browserSessions = Collections.unmodifiableList(sessions);
                for (MediaSession.Token token : new ArrayList<>(observed.keySet())) {
                    if (merged.containsKey(token)) continue;
                    ObservedController item = observed.remove(token);
                    item.destroyed = true;
                    effectLocked(() -> unregisterCallback(item));
                }
                for (ObservedController item : additions) {
                    observed.put(item.token, item);
                    currentEffectLocked(epoch, () -> {
                        try { item.controller.registerCallback(item.callback, handler); }
                        catch (RuntimeException error) { Log.w(TAG, "media callback unavailable", error); }
                    });
                }
                for (ObservedController item : observed.values()) queueBootstrapLocked(item, epoch);
                reconcileSelectionLocked(epoch);
            }
            drainDeliveries();
        });
    }

    private MediaController.Callback controllerCallback(final ObservedController item, final long epoch) {
        return new MediaController.Callback() {
            @Override public void onPlaybackStateChanged(PlaybackState state) {
                // No latest merge: each real pause/seek/resume and publisher timestamp
                // is admitted and snapshotted in the callback's FIFO order.
                onMain(() -> {
                    synchronized (ContentMediaAdapter.this) {
                        if (!isCurrent(epoch) || observed.get(item.token) != item) return;
                        item.playbackSequence++;
                        item.playbackKnown = true;
                        boolean changed = updatePlaybackLocked(item, state, true);
                        if (changed) {
                            reconcileSelectionLocked(epoch);
                            if (item.bluetooth) markSourceDirtyLocked(epoch, false, true, false, false);
                        } else queueSnapshotLocked(epoch);
                    }
                    drainDeliveries();
                });
            }
            @Override public void onMetadataChanged(MediaMetadata metadata) {
                onMain(() -> {
                    synchronized (ContentMediaAdapter.this) {
                        if (!isCurrent(epoch) || observed.get(item.token) != item) return;
                        item.metadataSequence++;
                        item.metadataKnown = true;
                        if (updateMetadataLocked(item, metadata)) {
                            generation++;
                            reconcileSelectionLocked(epoch);
                            if (item.bluetooth) markSourceDirtyLocked(epoch, false, true, false, false);
                        } else queueSnapshotLocked(epoch);
                    }
                    drainDeliveries();
                });
            }
            @Override public void onAudioInfoChanged(MediaController.PlaybackInfo info) {
                onMain(() -> {
                    synchronized (ContentMediaAdapter.this) {
                        if (!isCurrent(epoch) || observed.get(item.token) != item) return;
                        item.audioSequence++;
                        item.audioKnown = true;
                        if (updateAudioLocked(item, info)) reconcileSelectionLocked(epoch);
                        if (item.bluetooth) markSourceDirtyLocked(epoch, false, true, false, false);
                    }
                    drainDeliveries();
                });
            }
            @Override public void onSessionDestroyed() {
                onMain(() -> {
                    synchronized (ContentMediaAdapter.this) {
                        if (!isCurrent(epoch) || observed.get(item.token) != item) return;
                        item.destroyed = true;
                        observed.remove(item.token);
                        sessionListSequence++;
                        systemControllers.removeIf(previous -> previous != null && previous.getSessionToken().equals(item.token));
                        final ContentPublicMediaBrowsers registry = browsers;
                        effectLocked(() -> unregisterCallback(item));
                        if (registry != null) currentEffectLocked(epoch, () -> registry.onSessionDestroyed(item.token));
                        reconcileSelectionLocked(epoch);
                        currentEffectLocked(epoch, () -> refreshSessions(epoch));
                    }
                    drainDeliveries();
                });
            }
        };
    }

    private void queueBootstrapLocked(ObservedController item, long epoch) {
        if (item.bootstrapInFlight || item.destroyed || item.metadataKnown && item.playbackKnown && item.audioKnown) return;
        item.bootstrapInFlight = true;
        final BootstrapRequest request = new BootstrapRequest(epoch, item);
        final Handler worker = sourceHandler;
        currentEffectLocked(epoch, () -> executeSource(worker, () -> {
            MediaMetadata metadata = null;
            PlaybackState playback = null;
            MediaController.PlaybackInfo audio = null;
            boolean metadataRead = false, playbackRead = false, audioRead = false;
            if (request.readMetadata) {
                try { metadata = externalReads.metadata(item.controller); metadataRead = true; } catch (RuntimeException ignored) { }
            }
            if (request.readPlayback) {
                try { playback = externalReads.playback(item.controller); playbackRead = true; } catch (RuntimeException ignored) { }
            }
            if (request.readAudio) {
                try { audio = externalReads.audioInfo(item.controller); audioRead = true; } catch (RuntimeException ignored) { }
            }
            final BootstrapResult result = new BootstrapResult(request, metadata, playback, audio,
                    metadataRead, playbackRead, audioRead);
            handler.post(() -> acceptBootstrap(result));
        }));
    }

    private void acceptBootstrap(BootstrapResult result) {
        BootstrapRequest request = result.request;
        ObservedController item = request.item;
        synchronized (this) {
            if (!isCurrent(request.epoch) || observed.get(item.token) != item || item.destroyed) return;
            item.bootstrapInFlight = false;
            boolean changed = false;
            // Callback arguments, including an explicit null, always beat an old pull.
            if (result.metadataRead && !item.metadataKnown && item.metadataSequence == request.metadataSequence) {
                item.metadataKnown = true;
                changed |= updateMetadataLocked(item, result.metadata);
            }
            if (result.playbackRead && !item.playbackKnown && item.playbackSequence == request.playbackSequence) {
                item.playbackKnown = true;
                changed |= updatePlaybackLocked(item, result.playback, false);
                if (item.metadataSequence != request.metadataSequence) item.playbackMatchesMetadata = false;
            }
            if (result.audioRead && !item.audioKnown && item.audioSequence == request.audioSequence) {
                item.audioKnown = true;
                changed |= updateAudioLocked(item, result.audio);
            }
            if (changed) reconcileSelectionLocked(request.epoch);
        }
        drainDeliveries();
    }

    private boolean updateMetadataLocked(ObservedController item, MediaMetadata metadata) {
        if (item.facts.metadata.metadata == metadata) return false;
        MetadataFacts next = new MetadataFacts(metadata);
        boolean changed = !sameMetadata(item.facts.metadata, next);
        item.facts = new ControllerFacts(next, item.facts.playback, item.facts.audio);
        if (!next.identity.equals(item.identity)) {
            item.identityObservedAt = SystemClock.elapsedRealtime();
            item.playbackMatchesMetadata = false;
        }
        item.identity = next.identity;
        return changed;
    }

    private boolean updatePlaybackLocked(ObservedController item, PlaybackState state, boolean callback) {
        boolean changed = !samePlayback(item.facts.playback, state) || !item.playbackMatchesMetadata;
        item.playbackMatchesMetadata = true;
        item.facts = new ControllerFacts(item.facts.metadata, state, item.facts.audio);
        if (state != null) {
            if (callback && state.getState() != item.lastPlaybackState && sameToken(avrcpToken, item.controller)) avrcpPlaybackState = -1;
            if (callback && item.lastPosition >= 0L && state.getPosition() - item.lastPosition >= 250L
                    && state.getLastPositionUpdateTime() > item.lastPositionUpdate
                    && freshPlaybackEvidence(item.facts.metadata.fields, state, sourceChangedAt)) item.progressSourceEpoch = sourceEpoch;
            item.lastPosition = state.getPosition();
            item.lastPositionUpdate = state.getLastPositionUpdateTime();
            item.lastPlaybackState = state.getState();
        } else {
            item.lastPosition = -1L; item.lastPositionUpdate = 0L; item.lastPlaybackState = PlaybackState.STATE_NONE;
        }
        return changed;
    }

    private boolean updateAudioLocked(ObservedController item, MediaController.PlaybackInfo info) {
        AudioAttributes next = info == null ? null : info.getAudioAttributes();
        AudioAttributes previous = item.facts.audio;
        item.facts = new ControllerFacts(item.facts.metadata, item.facts.playback, next);
        return previous != next && (previous == null || next == null
                || previous.getUsage() != next.getUsage() || previous.getContentType() != next.getContentType());
    }

    private void reconcileSelectionLocked(long epoch) { reconcileSelectionLocked(epoch, false); }

    private void reconcileSelectionLocked(long epoch, boolean commandConfirmed) {
        selectionEvaluations++;
        MediaController selected = selectController();
        if (!sameToken(controller, selected)) {
            if (!sameToken(confirmedSongToken, selected)) clearConfirmedSong();
            controller = selected;
            generation++;
            cancelArtwork();
        }
        queueSnapshotLocked(epoch, commandConfirmed);
    }

    private MediaController selectController() {
        if (actualSource == null && !sourceInventoryReady && sourceService == null) {
            ContentMediaSessionArbitrationDecision decision = selectWithoutSourceReadback();
            MediaController selected = null;
            int best = -1;
            if (decision.getSessionId() != null) {
                for (ObservedController item : observed.values()) {
                    if (!item.destroyed && item.sessionId.equals(decision.getSessionId())) {
                        selected = item.controller;
                        best = playbackTier(item.facts.playback);
                        break;
                    }
                }
            }
            // The arbiter exclusively owns song selection, including CLEAR and a
            // KEEP_CURRENT(null) wait. An ended retained title cannot resurrect it.
            // Explicit non-song public media retains presentation precedence over
            // a paused song, without becoming a song candidate in the arbiter.
            for (ObservedController item : observed.values()) {
                PlaybackState state = item.facts.playback;
                if (item.destroyed || !matchesActualSource(item) || state == null
                        || state.getState() == PlaybackState.STATE_STOPPED || state.getState() == PlaybackState.STATE_NONE
                        || state.getState() == PlaybackState.STATE_ERROR
                        || songIdentityFor(item.controller, item.facts.metadata.fields) != ContentPorts.MediaSongIdentity.NON_SONG) continue;
                int tier = playbackTier(state);
                if (tier > best || tier == best && sameToken(controller, item.controller)) {
                    selected = item.controller;
                    best = tier;
                }
            }
            return selected;
        }
        MediaController selected = null;
        int best = -1;
        for (ObservedController item : observed.values()) {
            if (item.destroyed || !matchesActualSource(item)) continue;
            MediaFields fields = item.facts.metadata.fields;
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

    private static int playbackTier(PlaybackState state) {
        if (state == null) return 1;
        int value = state.getState();
        if (value == PlaybackState.STATE_PLAYING || value == PlaybackState.STATE_FAST_FORWARDING
                || value == PlaybackState.STATE_REWINDING) return 3;
        return value == PlaybackState.STATE_BUFFERING || value == PlaybackState.STATE_CONNECTING ? 2 : 1;
    }

    private ContentMediaSessionArbitrationDecision selectWithoutSourceReadback() {
        ArrayList<ContentMediaSessionCandidate> candidates = new ArrayList<>();
        int index = 0;
        for (ObservedController item : observed.values()) {
            if (item.destroyed || !matchesActualSource(item)) continue;
            MediaFields fields = item.facts.metadata.fields;
            PlaybackState state = safePlayback(item.controller);
            AudioAttributes audio = safeAudioAttributes(item.controller);
            String packageName = item.packageName;
            String sessionId = item.sessionId;
            String sourceId = publicSourceIdentity(item);
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
        }
        ContentMediaSessionArbitrationDecision decision = sessionArbiter.evaluate(
                candidates, SystemClock.elapsedRealtime(), context.getPackageName(),
                browsers != null && browserSessions.isEmpty());
        scheduleSelectionRecheckLocked(decision.getRecheckAfterMs());
        return decision;
    }

    private boolean isSystemController(MediaController candidate) {
        if (candidate == null) return false;
        for (MediaController item : systemControllers) if (sameToken(item, candidate)) return true;
        return false;
    }

    private void scheduleSelectionRecheckLocked(Long delayMs) {
        if (delayMs == null || selectionRecheck != null) return;
        final long epoch = lifecycle;
        final Runnable recheck = () -> {
            synchronized (ContentMediaAdapter.this) {
                selectionRecheck = null;
                if (!isCurrent(epoch)) return;
                reconcileSelectionLocked(epoch);
            }
            drainDeliveries();
        };
        selectionRecheck = recheck;
        currentEffectLocked(epoch, () -> handler.postDelayed(recheck, Math.max(1L, delayMs)));
    }

    private void changeActualSource(String source) {
        onMain(() -> {
            synchronized (ContentMediaAdapter.this) { changeActualSourceLocked(source); }
            drainDeliveries();
        });
    }

    private void changeActualSourceLocked(String source) {
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
        if (ambiguousPublicSource(item)) return false;
        String precise = sourceForController(item.controller);
        // No source service is different from an observed but unresolved readback.
        // The latter cannot authorize a retained session (e.g. Bluetooth after switching
        // to an unrecognised source). Never turn unknown SDK codes into a source guess.
        if (actualSource == null) return !sourceInventoryReady && sourceService == null && precise != null;
        if (precise != null) return actualSource.equals(precise);
        if (!MEDIA_CENTER_PACKAGE.equals(item.packageName)) return false;
        if (item.confirmedSourceEpoch == sourceEpoch) return true;
        MediaFields fields = item.facts.metadata.fields;
        String identity = item.identity;
        PlaybackState playback = item.facts.playback;
        // A shared proxy needs post-readback identity plus fresh non-placeholder playback evidence.
        // Initial cold selection may use observed position advancement; later switches need a new identity.
        // A callback, a refreshed timestamp, or position=0 alone remains insufficient.
        boolean newIdentity = !quarantinedRecordings.contains(identity) && item.identityObservedAt >= sourceChangedAt;
        boolean initialProgress = initialSourceCorrelation && item.progressSourceEpoch == sourceEpoch;
        if (!identity.isEmpty() && item.playbackMatchesMetadata && (newIdentity || initialProgress)
                && freshPlaybackEvidence(fields, playback, sourceChangedAt)) {
            item.confirmedSourceEpoch = sourceEpoch;
            return true;
        }
        return false;
    }

    private static boolean freshPlaybackEvidence(MediaFields fields, PlaybackState state, long after) {
        if (state == null || state.getPosition() < 0L || state.getLastPositionUpdateTime() <= 0L
                || state.getLastPositionUpdateTime() < after
                || state.getLastPositionUpdateTime() > SystemClock.elapsedRealtime()) return false;
        int playbackState = state.getState();
        if (playbackState != PlaybackState.STATE_PLAYING
                && playbackState != PlaybackState.STATE_BUFFERING
                && playbackState != PlaybackState.STATE_CONNECTING
                && playbackState != PlaybackState.STATE_PAUSED) return false;
        return state.getPosition() > 0L || fields.durationMs >= 1000L;
    }

    private String publicSourceIdentity(ObservedController item) {
        Set<ComponentName> components = new HashSet<>();
        for (ContentPublicMediaBrowsers.Session session : browserSessions) {
            if (sameToken(item.token, session.getController())) components.add(session.getComponent());
        }
        return components.size() == 1 ? components.iterator().next().flattenToString() : item.sessionId;
    }

    private boolean ambiguousPublicSource(ObservedController item) {
        Set<String> sources = new HashSet<>();
        for (ContentPublicMediaBrowsers.Session session : browserSessions) {
            if (!sameToken(item.token, session.getController())) continue;
            String source = sourceForComponent(session.getComponent());
            if (source != null) sources.add(source);
        }
        return sources.size() > 1;
    }

    private String sourceForController(MediaController candidate) {
        if (candidate == null) return null;
        Set<String> preciseSources = new HashSet<>();
        for (ContentPublicMediaBrowsers.Session session : browserSessions) {
            if (!sameToken(candidate, session.getController())) continue;
            String source = sourceForComponent(session.getComponent());
            if (source != null) preciseSources.add(source);
        }
        if (preciseSources.size() > 1) return null;
        if (!preciseSources.isEmpty()) return preciseSources.iterator().next();
        ObservedController item = observed.get(candidate.getSessionToken());
        // This exact platform AVRCP transport is a public protocol identity, not a package-name heuristic.
        return item != null && item.bluetooth ? "蓝牙音乐" : null;
    }

    private static String sourceForComponent(ComponentName component) {
        return ContentMediaSourcePolicy.sourceForComponent(component);
    }

    private void publishSnapshot(long epoch) {
        onMain(() -> {
            synchronized (ContentMediaAdapter.this) { queueSnapshotLocked(epoch); }
            drainDeliveries();
        });
    }

    private void queueSnapshotLocked(long epoch) { queueSnapshotLocked(epoch, false); }

    private void queueSnapshotLocked(long epoch, boolean commandConfirmed) {
        if (!isCurrent(epoch) || listener == null) return;
        ContentPorts.MediaSnapshot snapshot = snapshotLocked(epoch);
        boolean capability = sourceWriteAvailable;
        if (!commandConfirmed && sameSnapshot(lastPublishedSnapshot, snapshot)
                && capability == lastPublishedSourceAvailable) return;
        lastPublishedSnapshot = snapshot;
        lastPublishedSourceAvailable = capability;
        final Publication publication = new Publication(epoch, listener, snapshot);
        effectLocked(() -> {
            synchronized (ContentMediaAdapter.this) {
                if (!isCurrent(publication.epoch) || listener != publication.listener) return;
            }
            publication.listener.onMediaSnapshot(publication.snapshot);
        });
    }

    private ContentPorts.MediaSnapshot snapshotLocked(long epoch) {
        MediaController current = controller;
        ObservedController item = current == null ? null : observed.get(current.getSessionToken());
        boolean correlated = item != null && !item.destroyed && matchesActualSource(item);
        String source = actualSource != null ? actualSource : correlated ? sourceForController(current) : null;
        if (source == null) {
            clearConfirmedSong();
            cancelArtwork();
            publishedRecording = "";
            return ContentPorts.MediaSnapshot.unavailable();
        }
        MetadataFacts metadata = correlated ? item.facts.metadata : MetadataFacts.EMPTY;
        PlaybackState playback = correlated ? item.facts.playback : null;
        MediaFields fields = metadata.fields;
        String identity = metadata.identity;
        if (!correlated) clearConfirmedSong();
        ContentPorts.MediaSongIdentity songIdentity = correlated
                ? resolveSongIdentity(current, fields, songIdentityFor(current, fields), epoch)
                : ContentPorts.MediaSongIdentity.UNKNOWN;
        publishedRecording = identity;
        long actions = playback == null ? 0L : playback.getActions();
        if (correlated && item.metadataKnown && item.playbackKnown && item.audioKnown) {
            logPublicFieldsLocked(epoch, item, source, metadata, actions);
        }
        Bitmap artwork = metadata.artwork;
        if (artwork != null && artwork.isRecycled()) artwork = null;
        if (songIdentity == ContentPorts.MediaSongIdentity.SONG && artwork == null && metadata.metadata != null) {
            List<String> uris = metadata.artworkUris;
            if (!uris.isEmpty() && !identity.isEmpty()) {
                artwork = uriArtwork(epoch, source + '\u001f' + item.sessionId + '\u001f'
                        + artworkRecordingKey(fields), uris);
            } else cancelArtwork();
        } else cancelArtwork();
        boolean recordingPlayback = correlated && item.playbackMatchesMetadata;
        long position = !recordingPlayback || playback == null || playback.getPosition() < 0L ? -1L : playback.getPosition();
        long updateTime = !recordingPlayback || playback == null ? 0L : playback.getLastPositionUpdateTime();
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
        int bitmapGeneration = artwork == null ? 0 : artwork.getGenerationId();
        if (snapshotArtwork == artwork && bitmapGeneration != snapshotArtworkGeneration) generation++;
        snapshotArtwork = artwork;
        snapshotArtworkGeneration = bitmapGeneration;
        return new ContentPorts.MediaSnapshot(true, false, source, playing, generation,
                fields.title.isEmpty() ? "暂无媒体" : fields.title,
                fields.artist.isEmpty() ? "未连接" : fields.artist,
                recordingPlayback && (actions & (PlaybackState.ACTION_PLAY_PAUSE
                        | (playing ? PlaybackState.ACTION_PAUSE : PlaybackState.ACTION_PLAY))) != 0L,
                recordingPlayback && (actions & PlaybackState.ACTION_SKIP_TO_NEXT) != 0L, artwork,
                fields.mediaId, fields.album, duration, position, updateTime,
                playing ? speed : 0f, fields.embeddedLyrics, songIdentity, playbackState,
                avrcpEventSequence, avrcpPositionMs, avrcpPlaybackState, avrcpElapsedRealtimeMs,
                avrcpPositionElapsedRealtimeMs, artwork == null && artworkRequestKey != null);
    }

    private void logPublicFieldsLocked(long epoch, ObservedController item, String source,
            MetadataFacts metadata, long actions) {
        String signature = item.sessionId + '\u001f' + source + '\u001f'
                + artworkRecordingKey(metadata.fields) + '\u001f' + metadata.artworkKeys
                + '\u001f' + metadata.artworkUris;
        if (signature.equals(publicFieldLogSignature)) return;
        publicFieldLogSignature = signature;
        String message = "public media fields source=" + source
                + " hasTitle=" + !metadata.fields.title.isEmpty()
                + " hasArtist=" + !metadata.fields.artist.isEmpty()
                + " durationMs=" + metadata.fields.durationMs
                + " actions=" + actions + " artworkKeys=" + metadata.artworkKeys;
        currentEffectLocked(epoch, () -> Log.i(TAG, message));
    }

    private static boolean sameSnapshot(ContentPorts.MediaSnapshot first, ContentPorts.MediaSnapshot second) {
        return first != null && first.dataAvailable == second.dataAvailable && first.preview == second.preview
                && java.util.Objects.equals(first.source, second.source) && first.playing == second.playing
                && first.generation == second.generation && java.util.Objects.equals(first.title, second.title)
                && java.util.Objects.equals(first.artist, second.artist) && first.playbackAvailable == second.playbackAvailable
                && first.nextAvailable == second.nextAvailable && first.artwork == second.artwork
                && first.publicArtworkPending == second.publicArtworkPending
                && first.mediaId.equals(second.mediaId) && first.album.equals(second.album)
                && first.durationMs == second.durationMs && first.positionMs == second.positionMs
                && first.positionElapsedRealtimeMs == second.positionElapsedRealtimeMs
                && Float.compare(first.playbackSpeed, second.playbackSpeed) == 0
                && first.embeddedLyrics.equals(second.embeddedLyrics) && first.songIdentity == second.songIdentity
                && first.playbackState == second.playbackState && first.avrcpEventSequence == second.avrcpEventSequence
                && first.avrcpPositionMs == second.avrcpPositionMs && first.avrcpPlaybackState == second.avrcpPlaybackState
                && first.avrcpElapsedRealtimeMs == second.avrcpElapsedRealtimeMs
                && first.avrcpPositionElapsedRealtimeMs == second.avrcpPositionElapsedRealtimeMs;
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
        final Runnable timeout = () -> {
            synchronized (ContentMediaAdapter.this) {
                if (!isCurrent(epoch)) return;
                metadataGraceTimeout = null;
                queueSnapshotLocked(epoch);
            }
            drainDeliveries();
        };
        metadataGraceTimeout = timeout;
        currentEffectLocked(epoch, () -> handler.postDelayed(timeout, Math.max(1L, delayMs)));
    }

    private void cancelMetadataGrace() {
        final Runnable timeout = metadataGraceTimeout;
        metadataGraceTimeout = null;
        if (timeout != null) effectLocked(() -> handler.removeCallbacks(timeout));
    }

    private void clearConfirmedSong() {
        cancelMetadataGrace();
        clearAvrcpEvent();
        confirmedSongToken = null;
        metadataMissingSince = -1L;
    }

    private AudioAttributes safeAudioAttributes(MediaController candidate) {
        ObservedController item = candidate == null ? null : observed.get(candidate.getSessionToken());
        return item == null ? null : item.facts.audio;
    }

    private boolean bluetoothCommunicationActive(MediaController candidate) {
        return isBluetooth(candidate) && (cachedAudioMode == AudioManager.MODE_IN_CALL
                || cachedAudioMode == AudioManager.MODE_IN_COMMUNICATION);
    }

    private boolean isBluetooth(MediaController candidate) {
        ObservedController item = candidate == null ? null : observed.get(candidate.getSessionToken());
        return item != null && item.bluetooth;
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
        final String recording = artworkRecordingKey(observed.get(token).facts.metadata.fields);
        final CancellationSignal cancellation = new CancellationSignal();
        artworkCancellation = cancellation;
        artworkTimeout = () -> {
            synchronized (ContentMediaAdapter.this) {
                if (!isCurrent(epoch) || sequence != artworkSequence || !requestKey.equals(artworkRequestKey)) return;
                for (String uri : candidates) rememberArtworkFailure(identity + '\u001f' + uri);
                cancelArtwork();
                queueSnapshotLocked(epoch);
            }
            drainDeliveries();
        };
        final Runnable timeout = artworkTimeout;
        currentEffectLocked(epoch, () -> handler.postDelayed(timeout, Math.min(13_000L, 3_000L * candidates.size() + 1_000L)));
        final ExecutorService executor = artworkExecutor;
        FutureTask<Void> task = new FutureTask<>(() -> {
            Bitmap result = null;
            String resultUri = null;
            List<String> failures = new ArrayList<>();
            for (String uri : candidates) {
                if (cancellation.isCanceled() || Thread.currentThread().isInterrupted()) break;
                result = externalReads.artwork(context, uri, cancellation);
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
                    ObservedController selected = controller == null ? null : observed.get(controller.getSessionToken());
                    MetadataFacts currentMetadata = selected == null ? MetadataFacts.EMPTY : selected.facts.metadata;
                    MediaFields currentFields = currentMetadata.fields;
                    boolean currentRequest = isCurrent(epoch) && sourceEpoch == sourceVersion
                            && sequence == artworkSequence && requestKey.equals(artworkRequestKey)
                            && sameToken(token, controller) && selected != null && !selected.destroyed
                            && matchesActualSource(selected)
                            && recording.equals(artworkRecordingKey(currentFields))
                            && uris.equals(currentMetadata.artworkUris)
                            && songIdentityFor(controller, currentFields) == ContentPorts.MediaSongIdentity.SONG
                            && !cancellation.isCanceled();
                    if (!currentRequest) {
                        if (loaded != null) effectLocked(() -> { if (!loaded.isRecycled()) loaded.recycle(); });
                        if (isCurrent(epoch) && sequence == artworkSequence && requestKey.equals(artworkRequestKey)) {
                            cancelArtwork();
                            queueSnapshotLocked(epoch);
                        }
                    } else {
                        artworkTask = null;
                        artworkCancellation = null;
                        final Runnable previousTimeout = artworkTimeout;
                        if (previousTimeout != null) effectLocked(() -> handler.removeCallbacks(previousTimeout));
                        artworkTimeout = null;
                        for (String uri : failures) rememberArtworkFailure(identity + '\u001f' + uri);
                        if (loaded != null && !loaded.isRecycled()) {
                            String cacheKey = identity + '\u001f' + loadedUri;
                            artworkCache.put(cacheKey, loaded);
                            failedArtwork.remove(cacheKey);
                            generation++;
                        }
                        artworkRequestKey = null;
                        queueSnapshotLocked(epoch);
                    }
                }
                drainDeliveries();
            });
        }, null);
        artworkTask = task;
        currentEffectLocked(epoch, () -> executor.execute(task));
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
        final Runnable timeout = artworkTimeout;
        final CancellationSignal cancellation = artworkCancellation;
        final Future<?> task = artworkTask;
        artworkTimeout = null;
        artworkCancellation = null;
        artworkTask = null;
        artworkRequestKey = null;
        if (timeout != null || cancellation != null || task != null) effectLocked(() -> {
            if (timeout != null) handler.removeCallbacks(timeout);
            if (cancellation != null) cancellation.cancel();
            if (task != null) task.cancel(true);
        });
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

    private static String publicArtworkKeys(MediaMetadata metadata) {
        List<String> keys = new ArrayList<>();
        if (metadata == null) return keys.toString();
        for (String key : new String[] { MediaMetadata.METADATA_KEY_ALBUM_ART,
                MediaMetadata.METADATA_KEY_ART, MediaMetadata.METADATA_KEY_DISPLAY_ICON }) {
            try { if (metadata.getBitmap(key) != null) keys.add(key); } catch (RuntimeException ignored) { }
        }
        for (String key : new String[] { MediaMetadata.METADATA_KEY_ALBUM_ART_URI,
                MediaMetadata.METADATA_KEY_ART_URI, MediaMetadata.METADATA_KEY_DISPLAY_ICON_URI }) {
            if (!text(metadata, key).isEmpty()) keys.add(key);
        }
        try {
            MediaDescription description = metadata.getDescription();
            if (description.getIconBitmap() != null) keys.add("MediaDescription.iconBitmap");
            if (description.getIconUri() != null) keys.add("MediaDescription.iconUri");
        } catch (RuntimeException ignored) { }
        return keys.toString();
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
                text(metadata, MediaMetadata.METADATA_KEY_DISPLAY_DESCRIPTION),
                text(metadata, MediaMetadata.METADATA_KEY_COMPOSER), rawAlbum);
        String album = firstEmbeddedLyrics(rawAlbum).isEmpty() ? rawAlbum : "";
        return new MediaFields(title, artist, mediaId, album, duration, embedded);
    }

    private static String artworkRecordingKey(MediaFields fields) {
        return fields.mediaId + '\u001f' + fields.title + '\u001f' + fields.artist
                + '\u001f' + fields.album + '\u001f' + fields.durationMs;
    }

    private static String recordingIdentity(MediaFields fields) {
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

    private PlaybackState safePlayback(MediaController candidate) {
        ObservedController item = candidate == null ? null : observed.get(candidate.getSessionToken());
        return item == null ? null : item.facts.playback;
    }

    private static boolean sameToken(MediaSession.Token token, MediaController candidate) {
        return token == null ? candidate == null
                : candidate != null && token.equals(candidate.getSessionToken());
    }

    private static boolean sameToken(MediaController first, MediaController second) {
        return first == second || first != null && second != null && first.getSessionToken().equals(second.getSessionToken());
    }

    private static final class ObservedController {
        final MediaController controller;
        final MediaSession.Token token;
        final String packageName;
        final String sessionId;
        final boolean bluetooth;
        MediaController.Callback callback;
        ControllerFacts facts = ControllerFacts.EMPTY;
        boolean metadataKnown, playbackKnown, audioKnown, bootstrapInFlight;
        boolean playbackMatchesMetadata;
        long metadataSequence, playbackSequence, audioSequence;
        String identity = "";
        long identityObservedAt;
        long lastPosition = -1L;
        long lastPositionUpdate;
        int lastPlaybackState = PlaybackState.STATE_NONE;
        long progressSourceEpoch = -1L;
        long confirmedSourceEpoch = -1L;
        boolean destroyed;
        ObservedController(MediaController controller) {
            this.controller = controller;
            token = controller.getSessionToken();
            packageName = controller.getPackageName();
            sessionId = token.toString();
            bluetooth = "com.android.bluetooth".equals(packageName);
        }
    }

    private static final class MetadataFacts {
        static final MetadataFacts EMPTY = new MetadataFacts(null);
        final MediaMetadata metadata;
        final MediaFields fields;
        final String identity;
        final Bitmap artwork;
        final List<String> artworkUris;
        final String artworkKeys;
        MetadataFacts(MediaMetadata metadata) {
            this.metadata = metadata;
            fields = mediaFields(metadata);
            identity = recordingIdentity(fields);
            artwork = bitmapArtwork(metadata);
            artworkUris = Collections.unmodifiableList(ContentMediaAdapter.artworkUris(metadata));
            artworkKeys = publicArtworkKeys(metadata);
        }
    }

    private static final class ControllerFacts {
        static final ControllerFacts EMPTY = new ControllerFacts(MetadataFacts.EMPTY, null, null);
        final MetadataFacts metadata;
        final PlaybackState playback;
        final AudioAttributes audio;
        ControllerFacts(MetadataFacts metadata, PlaybackState playback, AudioAttributes audio) {
            this.metadata = metadata; this.playback = playback; this.audio = audio;
        }
    }

    private static boolean sameMetadata(MetadataFacts first, MetadataFacts second) {
        MediaFields a = first.fields, b = second.fields;
        return a.title.equals(b.title) && a.artist.equals(b.artist) && a.mediaId.equals(b.mediaId)
                && a.album.equals(b.album) && a.durationMs == b.durationMs && a.embeddedLyrics.equals(b.embeddedLyrics)
                && first.artwork == second.artwork && first.artworkUris.equals(second.artworkUris);
    }

    private static boolean samePlayback(PlaybackState first, PlaybackState second) {
        return first == second || first != null && second != null && first.getState() == second.getState()
                && first.getActions() == second.getActions() && first.getPosition() == second.getPosition()
                && first.getLastPositionUpdateTime() == second.getLastPositionUpdateTime()
                && Float.compare(first.getPlaybackSpeed(), second.getPlaybackSpeed()) == 0;
    }

    private static final class Publication {
        final long epoch;
        final ContentPorts.MediaSnapshotListener listener;
        final ContentPorts.MediaSnapshot snapshot;
        Publication(long epoch, ContentPorts.MediaSnapshotListener listener, ContentPorts.MediaSnapshot snapshot) {
            this.epoch = epoch; this.listener = listener; this.snapshot = snapshot;
        }
    }

    private static final class BootstrapRequest {
        final long epoch;
        final ObservedController item;
        final boolean readMetadata, readPlayback, readAudio;
        final long metadataSequence, playbackSequence, audioSequence;
        BootstrapRequest(long epoch, ObservedController item) {
            this.epoch = epoch; this.item = item;
            readMetadata = !item.metadataKnown; readPlayback = !item.playbackKnown; readAudio = !item.audioKnown;
            metadataSequence = item.metadataSequence; playbackSequence = item.playbackSequence; audioSequence = item.audioSequence;
        }
    }

    private static final class BootstrapResult {
        final BootstrapRequest request;
        final MediaMetadata metadata;
        final PlaybackState playback;
        final MediaController.PlaybackInfo audio;
        final boolean metadataRead, playbackRead, audioRead;
        BootstrapResult(BootstrapRequest request, MediaMetadata metadata, PlaybackState playback,
                MediaController.PlaybackInfo audio, boolean metadataRead, boolean playbackRead, boolean audioRead) {
            this.request = request; this.metadata = metadata; this.playback = playback; this.audio = audio;
            this.metadataRead = metadataRead; this.playbackRead = playbackRead; this.audioRead = audioRead;
        }
    }

    private static final class SourceRequest {
        final long epoch, serviceVersion, sequence, commandSequence;
        final IBinder service;
        final boolean legacy, readSource, readAudio, readCapability, readEndpoint;
        SourceRequest(long epoch, IBinder service, boolean legacy, long serviceVersion, long sequence,
                boolean readSource, boolean readAudio, boolean readCapability, boolean readEndpoint, long commandSequence) {
            this.epoch = epoch; this.service = service; this.legacy = legacy;
            this.serviceVersion = serviceVersion; this.sequence = sequence; this.commandSequence = commandSequence;
            this.readSource = readSource; this.readAudio = readAudio;
            this.readCapability = readCapability; this.readEndpoint = readEndpoint;
        }
    }

    private static final class SourceResult {
        final SourceRequest request;
        final Integer rawCode, audioMode;
        final Boolean writeAvailable;
        final SourceEndpoint endpoint;
        SourceResult(SourceRequest request, Integer rawCode, Integer audioMode, Boolean writeAvailable, SourceEndpoint endpoint) {
            this.request = request; this.rawCode = rawCode; this.audioMode = audioMode;
            this.writeAvailable = writeAvailable; this.endpoint = endpoint;
        }
    }

    static final class SourceEndpoint {
        final ComponentName component;
        final boolean legacy;
        SourceEndpoint(ComponentName component, boolean legacy) { this.component = component; this.legacy = legacy; }
        Intent intent() {
            return new Intent(legacy ? SOURCE_STATUS_ACTION : CURRENT_SOURCE_STATUS_ACTION)
                    .setPackage(MEDIA_CENTER_PACKAGE).setComponent(component);
        }
    }

    /** Package-private seam for deterministic worker/argument tests; no second state machine. */
    static class ExternalReads {
        MediaMetadata metadata(MediaController controller) { return controller.getMetadata(); }
        PlaybackState playback(MediaController controller) { return controller.getPlaybackState(); }
        MediaController.PlaybackInfo audioInfo(MediaController controller) { return controller.getPlaybackInfo(); }
        int audioMode(AudioManager manager) { return manager == null ? AudioManager.MODE_NORMAL : manager.getMode(); }
        Bitmap artwork(Context context, String uri, CancellationSignal cancellation) {
            return ContentMediaArtwork.decode(context, uri, cancellation);
        }
        boolean sourceWriteAvailable(Context context) {
            Intent intent = new Intent(MEDIA_SOURCE_ACTION).setComponent(new ComponentName(MEDIA_CENTER_PACKAGE, MEDIA_CENTER_CLASS));
            return accessible(context, context.getPackageManager().resolveService(intent, 0));
        }
        SourceEndpoint sourceEndpoint(Context context) {
            Intent intent = new Intent(CURRENT_SOURCE_STATUS_ACTION).setPackage(MEDIA_CENTER_PACKAGE);
            android.content.pm.ResolveInfo resolved = context.getPackageManager().resolveService(intent, 0);
            boolean legacy = resolved == null || resolved.serviceInfo == null;
            if (legacy) resolved = context.getPackageManager().resolveService(
                    new Intent(SOURCE_STATUS_ACTION).setPackage(MEDIA_CENTER_PACKAGE), 0);
            if (!accessible(context, resolved)) return null;
            return new SourceEndpoint(new ComponentName(resolved.serviceInfo.packageName, resolved.serviceInfo.name), legacy);
        }
        private static boolean accessible(Context context, android.content.pm.ResolveInfo resolved) {
            if (resolved == null || resolved.serviceInfo == null) return false;
            android.content.pm.ServiceInfo service = resolved.serviceInfo;
            return service.enabled && service.applicationInfo != null && service.applicationInfo.enabled
                    && (context.getPackageName().equals(service.packageName) || service.exported)
                    && (service.permission == null || context.checkSelfPermission(service.permission)
                        == android.content.pm.PackageManager.PERMISSION_GRANTED);
        }
        Integer sourceStatus(IBinder service, boolean legacy) {
            Parcel data = Parcel.obtain(), reply = Parcel.obtain();
            try {
                data.writeInterfaceToken(legacy ? SOURCE_DESCRIPTOR : CURRENT_SOURCE_DESCRIPTOR);
                if (!service.transact(legacy ? 6 : 38, data, reply, 0)) return null;
                reply.readException();
                return reply.readInt();
            } catch (RemoteException | RuntimeException error) {
                Log.w(TAG, "media source readback unavailable", error);
                return null;
            } finally { reply.recycle(); data.recycle(); }
        }
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
            // IMB getMediaDataSoure()/player mSource uses 14; PlayableMedia.source=10 is a different domain.
            case 14: return "网易云音乐";
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
