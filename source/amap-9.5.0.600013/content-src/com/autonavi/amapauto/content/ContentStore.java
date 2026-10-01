package com.autonavi.amapauto.content;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ContentStore {
    private static final long VEHICLE_COMMAND_TIMEOUT_MS = 6000L;
    private static final long MEDIA_FEEDBACK_TIMEOUT_MS = 6000L;

    public interface Listener {
        void onContentStateChanged(ContentState state);
    }

    private final ContentState state = new ContentState();
    private final ContentPreferenceStore preferenceStore;
    private final ContentPorts.VehiclePort vehiclePort;
    private final ContentPorts.MediaPort mediaPort;
    private final ContentPorts.SystemPort systemPort;
    private final List<Listener> listeners = new ArrayList<>();
    private final Handler commandHandler = new Handler(Looper.getMainLooper());
    private final ExecutorService mediaCommandExecutor = Executors.newSingleThreadExecutor();
    private final Runnable commandTimeout = new Runnable() {
        @Override
        public void run() {
            synchronized (ContentStore.this) {
                if (state.pendingVehicleCommand.length() == 0) {
                    return;
                }
                finishVehicleCommandLocked(false, "车辆状态未确认，请查看车机状态");
            }
            publish();
        }
    };
    private final Runnable mediaFeedbackTimeout = new Runnable() {
        @Override
        public void run() {
            synchronized (ContentStore.this) {
                if (state.mediaPlaybackTarget < 0) {
                    return;
                }
                state.mediaPlaybackTarget = -1;
                pendingMediaRequestId = 0L;
                recordCommandResultLocked(false, "媒体播放状态未确认，请检查媒体会话");
            }
            publish();
        }
    };
    private long nextVehicleRequestId;
    private long pendingVehicleRequestId;
    private long nextMediaRequestId;
    private long pendingMediaRequestId;
    private long nextSourceRequestId;
    private long pendingSourceRequestId;
    private Runnable sourceTimeout;
    private boolean destroyed;
    private final ContentPorts.LyricsPort lyricsPort;
    private final com.icar03.content.runtime.lyrics.ContentLyricsTimeline lyricsTimeline =
            new com.icar03.content.runtime.lyrics.ContentLyricsTimeline();
    private ContentPorts.MediaSnapshot latestMedia = ContentPorts.MediaSnapshot.unavailable();
    private int lyricsConsumers;
    private android.graphics.Bitmap fallbackArtwork;
    private final Runnable advanceLyrics = new Runnable() {
        @Override public void run() {
            boolean changed;
            synchronized (ContentStore.this) {
                if (destroyed || lyricsConsumers == 0) return;
                changed = alignLyricsLocked();
            }
            if (changed) publish();
        }
    };

    public ContentStore(Context context) {
        this(context, new ContentVehicleAdapter(context), new ContentMediaAdapter(context),
                new ContentPorts.AndroidSystemPort(context),
                new com.icar03.content.runtime.lyrics.ContentLyricsEngine(context));
    }

    /** The store owns injected ports and stops them when destroyed. */
    public ContentStore(Context context, ContentPorts.VehiclePort vehiclePort,
            ContentPorts.MediaPort mediaPort, ContentPorts.SystemPort systemPort) {
        this(context, vehiclePort, mediaPort, systemPort, null);
    }

    public ContentStore(Context context, ContentPorts.VehiclePort vehiclePort,
            ContentPorts.MediaPort mediaPort, ContentPorts.SystemPort systemPort,
            ContentPorts.LyricsPort lyricsPort) {
        if (vehiclePort == null || mediaPort == null || systemPort == null) {
            throw new IllegalArgumentException("Content ports must not be null");
        }
        preferenceStore = new ContentPreferenceStore(context);
        this.vehiclePort = vehiclePort;
        this.mediaPort = mediaPort;
        this.systemPort = systemPort;
        this.lyricsPort = lyricsPort;
        preferenceStore.load(state);
        acceptVehicleSnapshot(ContentPorts.VehicleSnapshot.unavailable());
        acceptMediaSnapshot(ContentPorts.MediaSnapshot.unavailable());
        vehiclePort.start(new ContentPorts.VehicleSnapshotListener() {
            @Override
            public void onVehicleSnapshot(ContentPorts.VehicleSnapshot snapshot) {
                acceptVehicleSnapshot(snapshot);
            }

            @Override
            public void onVehicleCommandFailed(long requestId, String message) {
                failVehicleCommand(requestId, message);
            }
        });
        mediaPort.start(new ContentPorts.MediaSnapshotListener() {
            @Override
            public void onMediaSnapshot(ContentPorts.MediaSnapshot snapshot) {
                acceptMediaSnapshot(snapshot);
            }
        });
    }

    public synchronized ContentState snapshot() {
        return state.copy();
    }

    public ContentPorts.SystemPort systemPort() {
        return systemPort;
    }

    public synchronized boolean isVehicleControlAvailable() {
        return !destroyed && vehiclePort.isAvailable();
    }

    public synchronized boolean isLockControlAvailable() {
        return !destroyed && vehiclePort.isLockAvailable();
    }

    public synchronized boolean isMediaSourceAvailable() {
        return !destroyed && mediaPort.isSourceAvailable();
    }

    public void addListener(Listener listener) {
        if (listener == null) {
            return;
        }
        ContentState stateSnapshot;
        synchronized (this) {
            if (listeners.contains(listener)) {
                return;
            }
            listeners.add(listener);
            stateSnapshot = state.copy();
        }
        listener.onContentStateChanged(stateSnapshot);
    }

    public synchronized void removeListener(Listener listener) {
        listeners.remove(listener);
    }

    public void destroy() {
        synchronized (this) {
            destroyed = true;
        }
        commandHandler.removeCallbacks(advanceLyrics);
        if (lyricsPort != null) lyricsPort.stop();
        commandHandler.removeCallbacks(commandTimeout);
        commandHandler.removeCallbacks(mediaFeedbackTimeout);
        if (sourceTimeout != null) commandHandler.removeCallbacks(sourceTimeout);
        mediaCommandExecutor.shutdownNow();
        vehiclePort.stop();
        mediaPort.stop();
        synchronized (this) {
            listeners.clear();
        }
    }

    public void updateClock(long nowMillis) {
        synchronized (this) {
            state.nowMillis = nowMillis;
        }
        publish();
    }

    public void setThemeMode(int themeMode) {
        int resolvedMode = themeMode == ContentState.THEME_DARK
                ? ContentState.THEME_DARK : ContentState.THEME_LIGHT;
        synchronized (this) {
            if (state.themeMode == resolvedMode) {
                return;
            }
            state.themeMode = resolvedMode;
        }
        publish();
    }

    public void setPageIndex(int pageIndex) {
        int boundedPage = Math.max(0, Math.min(ContentRegistry.visiblePageIds().length - 1, pageIndex));
        synchronized (this) {
            if (state.pageIndex == boundedPage) {
                return;
            }
            state.pageIndex = boundedPage;
            preferenceStore.save(state);
        }
        publish();
    }

    public void setControlIndex(int controlIndex) {
        int boundedControl = Math.max(0, Math.min(ContentRegistry.controlIds().length - 1, controlIndex));
        synchronized (this) {
            if (state.controlIndex == boundedControl) {
                return;
            }
            state.controlIndex = boundedControl;
            preferenceStore.save(state);
        }
        publish();
    }

    public void setShowWeekday(boolean showWeekday) {
        synchronized (this) {
            state.showWeekday = showWeekday;
            preferenceStore.save(state);
        }
        publish();
    }

    public void setShowSeconds(boolean showSeconds) {
        synchronized (this) {
            state.showSeconds = showSeconds;
            preferenceStore.save(state);
        }
        publish();
    }

    public void acceptVehicleSnapshot(ContentPorts.VehicleSnapshot snapshot) {
        if (snapshot == null) {
            return;
        }
        synchronized (this) {
            state.vehicleDataAvailable = snapshot.dataAvailable;
            state.vehiclePreview = snapshot.preview;
            state.temperatureC = snapshot.temperatureC;
            state.batteryPercent = snapshot.batteryPercent;
            state.rangeRaw = snapshot.rangeRaw;
            state.chargeState = normalizeChargeState(snapshot.chargeState);
            state.chargeConnectionRaw = snapshot.chargeConnectionRaw;
            state.chargeBmsRaw = snapshot.chargeBmsRaw;
            state.chargeScheduleRaw = snapshot.chargeScheduleRaw;
            state.chargePowerKw = snapshot.chargePowerKw;
            state.chargeRemainingMinutes = snapshot.chargeRemainingMinutes;
            state.ventilationLevel = snapshot.ventilationLevel;
            state.heatingLevel = snapshot.heatingLevel;
            state.massageLevel = snapshot.massageLevel;
            state.massageModeRaw = snapshot.massageModeRaw;
            state.massageSwitchKnown = snapshot.massageSwitchKnown;
            state.massageActive = snapshot.massageActive;
            state.seatControlsKnown = snapshot.seatControlsKnown;
            state.lockKnown = snapshot.lockKnown;
            state.locked = snapshot.locked;
            if (state.pendingVehicleCommand.length() != 0) {
                if (!snapshot.dataAvailable) {
                    finishVehicleCommandLocked(false, "车控连接中断，命令未确认");
                } else if (vehicleCommandConfirmedLocked(snapshot)) {
                    finishVehicleCommandLocked(true, "");
                }
            }
        }
        publish();
    }

    public void acceptMediaSnapshot(ContentPorts.MediaSnapshot snapshot) {
        if (snapshot == null) {
            return;
        }
        synchronized (this) {
            if (destroyed || snapshot.dataAvailable && snapshot.generation < state.mediaGeneration) return;
            boolean newRecording = !snapshot.recordingKey().equals(state.mediaRecordingKey);
            latestMedia = snapshot;
            if (newRecording || !snapshot.dataAvailable || snapshot.preview) {
                state.lyricsLines = java.util.Collections.emptyList();
                state.lyricsStatus = ContentPorts.LyricsSnapshot.EMPTY;
                state.lyricsActiveIndex = -1;
                state.lyricsTimelineReady = false;
                fallbackArtwork = null;
            }
            state.mediaRecordingKey = snapshot.recordingKey();
            state.mediaId = snapshot.mediaId;
            state.mediaAlbum = snapshot.album;
            state.mediaDurationMs = snapshot.durationMs;
            if (snapshot.dataAvailable && !snapshot.preview) lyricsTimeline.update(snapshot);
            else lyricsTimeline.reset();
            state.mediaDataAvailable = snapshot.dataAvailable;
            state.mediaPreview = snapshot.preview;
            String mediaSource = snapshot.source == null || snapshot.source.isEmpty()
                    ? null : ContentRegistry.normalizeMediaSource(snapshot.source);
            if (snapshot.dataAvailable && mediaSource != null) state.mediaSource = mediaSource;
            state.mediaPlaying = snapshot.playing;
            state.mediaGeneration = Math.max(state.mediaGeneration, Math.max(0, snapshot.generation));
            state.mediaTitle = snapshot.title == null || snapshot.title.length() == 0
                    ? "暂无媒体" : snapshot.title;
            state.mediaArtist = snapshot.artist == null || snapshot.artist.length() == 0
                    ? "未连接" : snapshot.artist;
            state.mediaPlaybackAvailable = snapshot.playbackAvailable;
            state.mediaNextAvailable = snapshot.nextAvailable;
            state.mediaArtwork = snapshot.artwork != null && !snapshot.artwork.isRecycled()
                    ? snapshot.artwork : fallbackArtwork;
            if (!state.pendingSource.isEmpty() && snapshot.dataAvailable && !snapshot.preview
                    && state.pendingSource.equals(mediaSource)) {
                finishSourceCommandLocked(true, "");
            }
            if (state.mediaPlaybackTarget >= 0) {
                if (!snapshot.playbackAvailable) {
                    state.mediaPlaybackTarget = -1;
                    pendingMediaRequestId = 0L;
                    commandHandler.removeCallbacks(mediaFeedbackTimeout);
                    recordCommandResultLocked(false, "媒体会话不可用，请稍后重试");
                } else if (snapshot.playing == (state.mediaPlaybackTarget == 1)) {
                    state.mediaPlaybackTarget = -1;
                    pendingMediaRequestId = 0L;
                    commandHandler.removeCallbacks(mediaFeedbackTimeout);
                }
            }
            alignLyricsLocked();
        }
        publish();
        synchronized (this) {
            if (!destroyed && lyricsConsumers > 0 && lyricsPort != null && latestMedia == snapshot) {
                lyricsPort.update(snapshot);
            }
        }
    }

    /** Binding leases suspend requests/timeline work while the content host is stopped. */
    public synchronized void startLyrics() {
        if (destroyed || ++lyricsConsumers != 1) return;
        if (lyricsPort != null) {
            lyricsPort.start(new ContentPorts.LyricsSnapshotListener() {
                @Override public void onLyricsSnapshot(ContentPorts.LyricsSnapshot snapshot) {
                    acceptLyricsSnapshot(snapshot);
                }
            });
            lyricsPort.update(latestMedia);
        }
        alignLyricsLocked();
    }

    public synchronized void stopLyrics() {
        if (lyricsConsumers == 0 || --lyricsConsumers != 0) return;
        commandHandler.removeCallbacks(advanceLyrics);
        if (lyricsPort != null) lyricsPort.stop();
    }

    public void acceptLyricsSnapshot(ContentPorts.LyricsSnapshot snapshot) {
        synchronized (this) {
            if (destroyed || lyricsConsumers == 0 || snapshot == null
                    || !state.mediaDataAvailable || state.mediaPreview
                    || snapshot.mediaGeneration != state.mediaGeneration
                    || !snapshot.recordingKey.equals(state.mediaRecordingKey)) return;
            state.lyricsStatus = snapshot.status;
            state.lyricsLines = snapshot.lines;
            if (snapshot.artwork != null && !snapshot.artwork.isRecycled()) {
                fallbackArtwork = snapshot.artwork;
                if (latestMedia.artwork == null || latestMedia.artwork.isRecycled())
                    state.mediaArtwork = fallbackArtwork;
            }
            alignLyricsLocked();
        }
        publish();
    }

    private boolean alignLyricsLocked() {
        commandHandler.removeCallbacks(advanceLyrics);
        int previous = state.lyricsActiveIndex;
        boolean previouslyReady = state.lyricsTimelineReady;
        state.lyricsTimelineReady = lyricsTimeline.ready();
        int index = -1;
        long position = lyricsTimeline.positionMs();
        for (int i = 0; i < state.lyricsLines.size(); i++) {
            if (state.lyricsLines.get(i).timeMs > position) break;
            index = i;
        }
        // Unknown progress may preview the first matched line while playing, but pause keeps the
        // currently displayed line; neither case advances the timeline.
        if (!state.lyricsTimelineReady) {
            index = state.mediaPlaying && !state.lyricsLines.isEmpty() ? 0
                    : previous >= 0 && previous < state.lyricsLines.size() ? previous : -1;
        }
        state.lyricsActiveIndex = index;
        if (!destroyed && lyricsConsumers > 0 && state.mediaPlaying && state.lyricsTimelineReady
                && lyricsTimeline.speed() > 0f && index + 1 < state.lyricsLines.size()) {
            long remaining = state.lyricsLines.get(index + 1).timeMs - position;
            long delay = Math.max(16L, (long) Math.ceil(remaining / lyricsTimeline.speed()));
            commandHandler.postDelayed(advanceLyrics, delay);
        }
        return previous != index || previouslyReady != state.lyricsTimelineReady;
    }

    public void cycleSeatLevel(String seatId) {
        int nextLevel;
        synchronized (this) {
            if (!vehiclePort.isAvailable()) {
                return;
            }
            if (ContentRegistry.Shortcuts.SEAT_VENTILATION.equals(seatId)) {
                int currentLevel = pendingLevelLocked(seatId, state.ventilationLevel);
                if (currentLevel < 0) {
                    return;
                }
                nextLevel = nextLevel(currentLevel);
            } else if (ContentRegistry.Shortcuts.SEAT_HEATING.equals(seatId)) {
                int currentLevel = pendingLevelLocked(seatId, state.heatingLevel);
                if (currentLevel < 0) {
                    return;
                }
                nextLevel = nextLevel(currentLevel);
            } else if (ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(seatId)) {
                if (!state.massageSwitchKnown) {
                    return;
                }
                int currentLevel = pendingLevelLocked(seatId,
                        state.massageActive ? state.massageLevel : 0);
                nextLevel = state.massageActive && currentLevel < 0
                        ? 0 : nextLevel(currentLevel);
            } else {
                return;
            }
        }
        setSeatLevel(seatId, nextLevel);
    }

    public void setSeatLevel(String seatId, int targetLevel) {
        long requestId;
        synchronized (this) {
            if (destroyed || targetLevel < 0 || targetLevel > 3
                    || !state.vehicleDataAvailable || state.vehiclePreview
                    || !state.seatControlsKnown || !vehiclePort.isAvailable()) {
                return;
            }
            int actualLevel;
            if (ContentRegistry.Shortcuts.SEAT_VENTILATION.equals(seatId)) {
                actualLevel = state.ventilationLevel;
            } else if (ContentRegistry.Shortcuts.SEAT_HEATING.equals(seatId)) {
                actualLevel = state.heatingLevel;
            } else if (ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(seatId)
                    && state.massageSwitchKnown) {
                actualLevel = state.massageActive ? state.massageLevel : 0;
                if (state.massageActive && actualLevel < 0 && targetLevel != 0) {
                    return;
                }
            } else {
                return;
            }
            int currentLevel = pendingLevelLocked(seatId, actualLevel);
            if (currentLevel == targetLevel || currentLevel < 0
                    && !(ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(seatId)
                            && state.massageActive && targetLevel == 0)) {
                return;
            }
            requestId = ++nextVehicleRequestId;
            beginVehicleCommandLocked(seatId, targetLevel, false, requestId);
        }
        publish();
        boolean accepted;
        try {
            accepted = vehiclePort.requestSeatLevel(seatId, targetLevel, requestId);
        } catch (RuntimeException failure) {
            accepted = false;
        }
        if (!accepted) {
            synchronized (this) {
                if (pendingVehicleRequestId != requestId) {
                    return;
                }
                finishVehicleCommandLocked(false, "座椅车控命令未发送，请检查车机状态");
            }
            publish();
        }
    }

    public void toggleLock() {
        boolean nextLocked;
        long requestId;
        synchronized (this) {
            if (destroyed || state.pendingVehicleCommand.length() != 0
                    || !state.lockKnown || !state.vehicleDataAvailable || state.vehiclePreview
                    || !vehiclePort.isLockAvailable()) {
                return;
            }
            nextLocked = !state.locked;
            requestId = ++nextVehicleRequestId;
            beginVehicleCommandLocked(ContentRegistry.Shortcuts.LOCK, -1, nextLocked, requestId);
        }
        publish();
        boolean accepted;
        try {
            accepted = vehiclePort.requestLock(nextLocked, requestId);
        } catch (RuntimeException failure) {
            accepted = false;
        }
        if (!accepted) {
            synchronized (this) {
                if (pendingVehicleRequestId != requestId) {
                    return;
                }
                finishVehicleCommandLocked(false, "车锁命令未发送，请检查车机状态");
            }
            publish();
        }
    }

    public void toggleMediaPlayback() {
        final boolean nextPlaying;
        final long requestId;
        synchronized (this) {
            if (destroyed || !state.mediaPlaybackAvailable) {
                return;
            }
            nextPlaying = state.mediaPlaybackTarget < 0
                    ? !state.mediaPlaying : state.mediaPlaybackTarget == 0;
            state.mediaPlaybackTarget = nextPlaying ? 1 : 0;
            requestId = ++nextMediaRequestId;
            pendingMediaRequestId = requestId;
            commandHandler.removeCallbacks(mediaFeedbackTimeout);
            commandHandler.postDelayed(mediaFeedbackTimeout, MEDIA_FEEDBACK_TIMEOUT_MS);
        }
        publish();
        mediaCommandExecutor.execute(new Runnable() {
            @Override
            public void run() {
                boolean accepted;
                try {
                    accepted = mediaPort.requestPlayback(nextPlaying);
                } catch (RuntimeException error) {
                    accepted = false;
                }
                if (accepted) {
                    return;
                }
                commandHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        synchronized (ContentStore.this) {
                            if (destroyed || pendingMediaRequestId != requestId) {
                                return;
                            }
                            state.mediaPlaybackTarget = -1;
                            pendingMediaRequestId = 0L;
                            commandHandler.removeCallbacks(mediaFeedbackTimeout);
                            recordCommandResultLocked(false, "媒体播放命令未发送，请检查媒体会话");
                        }
                        publish();
                    }
                });
            }
        });
    }

    public void nextMediaTrack() {
        synchronized (this) {
            if (!state.mediaNextAvailable) {
                return;
            }
        }
        queueMediaCommand(new Callable<Boolean>() {
            @Override
            public Boolean call() {
                return mediaPort.requestNext();
            }
        }, "下一首命令未发送，请检查媒体会话");
    }

    public void selectMediaSource(String source) {
        if (source == null || source.isEmpty()) return;
        final String selectedSource = ContentRegistry.normalizeMediaSource(source);
        final long requestId;
        synchronized (this) {
            if (destroyed || selectedSource == null || !mediaPort.isSourceAvailable()
                    || selectedSource.equals(state.pendingSource)) return;
            requestId = ++nextSourceRequestId;
            pendingSourceRequestId = requestId;
            state.pendingSource = selectedSource;
            state.commandStatus = ContentState.COMMAND_PENDING;
            state.commandMessage = "";
            if (sourceTimeout != null) commandHandler.removeCallbacks(sourceTimeout);
            sourceTimeout = new Runnable() {
                @Override public void run() {
                    synchronized (ContentStore.this) {
                        if (destroyed || pendingSourceRequestId != requestId) return;
                        finishSourceCommandLocked(false, "媒体来源未确认，请检查车机当前来源");
                    }
                    publish();
                }
            };
            commandHandler.postDelayed(sourceTimeout, MEDIA_FEEDBACK_TIMEOUT_MS);
        }
        publish();
        mediaCommandExecutor.execute(new Runnable() {
            @Override public void run() {
                synchronized (ContentStore.this) {
                    if (destroyed || pendingSourceRequestId != requestId) return;
                }
                boolean accepted;
                try { accepted = mediaPort.requestSource(selectedSource); }
                catch (RuntimeException error) { accepted = false; }
                if (accepted) return;
                commandHandler.post(new Runnable() {
                    @Override public void run() {
                        synchronized (ContentStore.this) {
                            if (destroyed || pendingSourceRequestId != requestId) return;
                            finishSourceCommandLocked(false, "媒体来源切换未发送，请检查车机媒体服务");
                        }
                        publish();
                    }
                });
            }
        });
    }

    private void finishSourceCommandLocked(boolean confirmed, String message) {
        if (sourceTimeout != null) commandHandler.removeCallbacks(sourceTimeout);
        sourceTimeout = null;
        state.pendingSource = "";
        pendingSourceRequestId = 0L;
        recordCommandResultLocked(confirmed, message);
    }

    public void replaceDockItem(int slot, String itemId) {
        if (slot < 0 || slot >= state.dockItems.length || !preferenceStore.isValidDockItem(itemId)) {
            return;
        }
        synchronized (this) {
            for (int existingSlot = 0; existingSlot < state.dockItems.length; existingSlot++) {
                if (existingSlot != slot && itemId.equals(state.dockItems[existingSlot])) {
                    state.dockItems[existingSlot] = state.dockItems[slot];
                    break;
                }
            }
            state.dockItems[slot] = itemId;
            preferenceStore.save(state);
        }
        publish();
    }

    private int nextLevel(int currentLevel) {
        if (currentLevel < 0) {
            return 0;
        }
        return currentLevel == 0 ? 3 : currentLevel == 3 ? 2 : currentLevel == 2 ? 1 : 0;
    }

    private int pendingLevelLocked(String seatId, int actualLevel) {
        return seatId.equals(state.pendingVehicleCommand) && state.pendingSeatLevel >= 0
                ? state.pendingSeatLevel : actualLevel;
    }

    private int normalizeChargeState(int chargeState) {
        return chargeState == ContentState.CHARGE_COMPLETE
                || (chargeState >= ContentState.CHARGE_UNKNOWN
                    && chargeState <= ContentState.CHARGE_CHARGING)
                ? chargeState : ContentState.CHARGE_UNKNOWN;
    }

    private void queueMediaCommand(final Callable<Boolean> command, final String failureMessage) {
        mediaCommandExecutor.execute(new Runnable() {
            @Override
            public void run() {
                boolean accepted;
                try {
                    accepted = command.call();
                } catch (Exception error) {
                    accepted = false;
                }
                final boolean result = accepted;
                commandHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        synchronized (ContentStore.this) {
                            if (destroyed) {
                                return;
                            }
                            recordCommandResultLocked(result, failureMessage);
                        }
                        publish();
                    }
                });
            }
        });
    }

    private void recordCommandResultLocked(boolean accepted, String failureMessage) {
        state.commandStatus = accepted ? ContentState.COMMAND_NONE : ContentState.COMMAND_FAILED;
        state.commandSequence++;
        state.commandMessage = accepted ? "" : failureMessage;
    }

    private void beginVehicleCommandLocked(String command, int seatLevel, boolean locked,
            long requestId) {
        state.pendingVehicleCommand = command;
        state.pendingSeatLevel = seatLevel;
        state.pendingLocked = locked;
        state.commandStatus = ContentState.COMMAND_PENDING;
        state.commandMessage = "";
        pendingVehicleRequestId = requestId;
        commandHandler.removeCallbacks(commandTimeout);
        commandHandler.postDelayed(commandTimeout, VEHICLE_COMMAND_TIMEOUT_MS);
    }

    private boolean vehicleCommandConfirmedLocked(ContentPorts.VehicleSnapshot snapshot) {
        if (ContentRegistry.Shortcuts.LOCK.equals(state.pendingVehicleCommand)) {
            return snapshot.lockKnown && snapshot.locked == state.pendingLocked;
        }
        if (ContentRegistry.Shortcuts.SEAT_VENTILATION.equals(state.pendingVehicleCommand)) {
            return snapshot.ventilationLevel == state.pendingSeatLevel;
        }
        if (ContentRegistry.Shortcuts.SEAT_HEATING.equals(state.pendingVehicleCommand)) {
            return snapshot.heatingLevel == state.pendingSeatLevel;
        }
        return ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(state.pendingVehicleCommand)
                && snapshot.massageSwitchKnown
                && snapshot.massageActive == (state.pendingSeatLevel > 0)
                && snapshot.massageLevel == state.pendingSeatLevel;
    }

    private void finishVehicleCommandLocked(boolean confirmed, String failureMessage) {
        commandHandler.removeCallbacks(commandTimeout);
        state.pendingVehicleCommand = "";
        state.pendingSeatLevel = -1;
        state.pendingLocked = false;
        pendingVehicleRequestId = 0L;
        recordCommandResultLocked(confirmed, failureMessage);
    }

    private void failVehicleCommand(long requestId, String message) {
        synchronized (this) {
            if (state.pendingVehicleCommand.length() == 0
                    || pendingVehicleRequestId != requestId) {
                return;
            }
            finishVehicleCommandLocked(false, message);
        }
        publish();
    }

    private void publish() {
        List<Listener> listenerSnapshot;
        ContentState stateSnapshot;
        synchronized (this) {
            stateSnapshot = state.copy();
            listenerSnapshot = new ArrayList<>(listeners);
        }
        for (Listener listener : listenerSnapshot) {
            listener.onContentStateChanged(stateSnapshot.copy());
        }
    }
}
