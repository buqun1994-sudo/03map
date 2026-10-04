package com.autonavi.amapauto.content;

import com.icar03.content.model.VehicleControl;

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
    private Runnable commandTimeout;
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
        return snapshotLocked();
    }

    private ContentState snapshotLocked() {
        ContentState snapshot = state.copy();
        snapshot.vehicleWriteAvailable = !destroyed && vehiclePort.isAvailable();
        snapshot.lockWriteAvailable = !destroyed && vehiclePort.isLockAvailable();
        java.util.Set<String> writable = new java.util.HashSet<>();
        for (VehicleControl control : VehicleControl.values()) {
            if (control != VehicleControl.Lock && isSeatCycleControlAvailable(control.getId())) {
                writable.add(control.getId());
            }
        }
        snapshot.writableSeatControls = java.util.Collections.unmodifiableSet(writable);
        return snapshot;
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
            stateSnapshot = snapshotLocked();
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
        if (commandTimeout != null) commandHandler.removeCallbacks(commandTimeout);
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
            if (destroyed) return;
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
            state.heatingLevel = ContentPorts.VehicleSnapshot.consistentHeatingLevel(
                    snapshot.heatingLevel, snapshot.heatingAutoKnown, snapshot.heatingAutoActive);
            state.heatingAutoKnown = snapshot.heatingAutoKnown;
            state.heatingAutoActive = snapshot.heatingAutoKnown && snapshot.heatingAutoActive;
            state.passengerHeatingLevel = ContentPorts.VehicleSnapshot.consistentHeatingLevel(VehicleControl.PassengerHeating,
                    snapshot.passengerHeatingLevel, snapshot.passengerHeatingAutoKnown, snapshot.passengerHeatingAutoActive);
            state.passengerHeatingAutoKnown = snapshot.passengerHeatingAutoKnown;
            state.passengerHeatingAutoActive = snapshot.passengerHeatingAutoKnown && snapshot.passengerHeatingAutoActive;
            state.steeringHeatLevel = snapshot.steeringHeatLevel;
            state.massageLevel = ContentPorts.VehicleSnapshot.consistentMassageLevel(
                    snapshot.massageLevel, snapshot.massageSwitchKnown, snapshot.massageActive);
            state.massageModeRaw = snapshot.massageModeRaw;
            state.massageSwitchKnown = snapshot.massageSwitchKnown;
            state.massageActive = snapshot.massageActive;
            state.seatControlsKnown = snapshot.seatControlsKnown;
            state.lockKnown = snapshot.lockKnown;
            state.locked = snapshot.locked;
            if (state.pendingVehicleCommand.length() != 0) {
                if (!snapshot.dataAvailable || snapshot.preview || !vehiclePort.isAvailable()) {
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
            state.mediaSongIdentity = snapshot.songIdentity;
            if (newRecording || !snapshot.hasSongMetadata() || !snapshot.dataAvailable
                    || snapshot.preview) {
                state.lyricsLines = java.util.Collections.emptyList();
                state.lyricsStatus = ContentPorts.LyricsSnapshot.EMPTY;
                state.lyricsActiveIndex = -1;
                state.lyricsTimed = true;
                state.lyricsScrollIndex = -1;
                state.lyricsActiveIndices = new int[0];
                state.lyricsGapStartMs = state.lyricsGapEndMs = -1L;
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
            if (snapshot.hasSongMetadata()) {
                state.mediaArtwork = snapshot.artwork != null && !snapshot.artwork.isRecycled()
                        ? snapshot.artwork : fallbackArtwork;
            } else {
                state.mediaArtwork = null;
            }
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
                    || !latestMedia.hasSongMetadata()
                    || snapshot.mediaGeneration != state.mediaGeneration
                    || !snapshot.recordingKey.equals(state.mediaRecordingKey)) return;
            state.lyricsStatus = snapshot.status;
            state.lyricsLines = snapshot.lines;
            state.lyricsTimed = snapshot.timed;
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
        long previousPosition = state.lyricsPositionMs;
        float previousSpeed = state.lyricsPlaybackSpeed;
        state.lyricsTimelineReady = state.lyricsTimed && lyricsTimeline.ready();
        long position = state.lyricsTimelineReady ? lyricsTimeline.positionMs() : -1L;
        float speed = state.lyricsTimelineReady ? lyricsTimeline.speed() : 0f;
        state.lyricsPositionMs = position;
        state.lyricsPlaybackSpeed = speed;
        state.lyricsPositionCapturedAtMs = state.lyricsTimelineReady ? android.os.SystemClock.elapsedRealtime() : 0L;
        com.icar03.content.runtime.lyrics.ContentLyricsCursor.Cursor cursor =
                com.icar03.content.runtime.lyrics.ContentLyricsCursor.resolve(
                        state.lyricsLines, position, lyricsTimeline.durationMs());
        int index = cursor.getActiveIndex();
        state.lyricsScrollIndex = cursor.getScrollIndex();
        state.lyricsActiveIndices = cursor.getActiveIndices();
        state.lyricsGapStartMs = cursor.getGapStartMs();
        state.lyricsGapEndMs = cursor.getGapEndMs();
        // Unknown position has no timed cursor. Previewing text is a presentation choice,
        // never evidence that playback (or the scroll destination) is at the first row.
        state.lyricsActiveIndex = index;
        if (!destroyed && lyricsConsumers > 0 && state.mediaPlaying && state.lyricsTimelineReady
                && speed > 0f && !state.lyricsLines.isEmpty()) {
            long duration = lyricsTimeline.durationMs();
            long remaining = duration > 0L ? duration - position : Long.MAX_VALUE;
            int low = 0;
            int high = state.lyricsLines.size();
            while (low < high) {
                int middle = low + (high - low) / 2;
                if (state.lyricsLines.get(middle).timeMs <= position) low = middle + 1;
                else high = middle;
            }
            if (low < state.lyricsLines.size()) {
                remaining = Math.min(remaining, state.lyricsLines.get(low).timeMs - position);
            }
            if (remaining > 0L) {
                long delay = Math.max(16L, Math.min(100L, (long) Math.ceil(remaining / (double) speed)));
                commandHandler.postDelayed(advanceLyrics, delay);
            }
        }
        return previous != index || previouslyReady != state.lyricsTimelineReady
                || previousPosition != position || Float.compare(previousSpeed, speed) != 0;
    }

    /** The same admission rule serves rendering, cyclic taps and explicit targets. */
    public synchronized boolean isSeatCycleControlAvailable(String seatId) {
        return canSetSeatLevelLocked(seatId, nextSeatLevelLocked(seatId));
    }

    public void cycleSeatLevel(String seatId) {
        dispatchSeatLevel(seatId, null);
    }

    private int actualSeatLevelLocked(String seatId) {
        VehicleControl control = VehicleControl.fromId(seatId);
        return control == null ? -1 : state.controlLevel(control);
    }

    private int nextSeatLevelLocked(String seatId) {
        VehicleControl control = VehicleControl.fromId(seatId);
        if (control == null || control == VehicleControl.Lock) return -1;
        int actualLevel = state.controlLevel(control);
        if (control.isLevel(actualLevel)) return control.nextLevel(actualLevel);
        // Known ON with unknown massage strength still permits the explicit OFF intent.
        return control == VehicleControl.Massage
                && state.massageSwitchKnown && state.massageActive ? 0 : -1;
    }

    private boolean canSetSeatLevelLocked(String seatId, int targetLevel) {
        VehicleControl control = VehicleControl.fromId(seatId);
        if (control == null || control == VehicleControl.Lock
                || destroyed || state.pendingVehicleCommand.length() != 0
                || !control.isLevel(targetLevel)
                || !state.vehicleDataAvailable || state.vehiclePreview || !state.seatControlsKnown
                || !vehiclePort.isAvailable() || !vehiclePort.isSeatControlAvailable(seatId)) return false;
        int actualLevel = state.controlLevel(control);
        if (actualLevel == targetLevel) return false;
        if (actualLevel < 0 && !(control == VehicleControl.Massage
                && state.massageSwitchKnown && state.massageActive && targetLevel == 0)) return false;
        return vehiclePort.isSeatLevelAvailable(seatId, actualLevel, targetLevel);
    }

    public void setSeatLevel(String seatId, int targetLevel) {
        dispatchSeatLevel(seatId, targetLevel);
    }

    private void dispatchSeatLevel(String seatId, Integer explicitTarget) {
        long requestId;
        int targetLevel;
        synchronized (this) {
            // Resolve the next mode and reserve the sole request in one state transaction.
            targetLevel = explicitTarget == null ? nextSeatLevelLocked(seatId) : explicitTarget;
            if (!canSetSeatLevelLocked(seatId, targetLevel)) return;
            requestId = ++nextVehicleRequestId;
            beginVehicleCommandLocked(seatId, targetLevel, false, requestId);
        }
        publish();
        synchronized (this) {
            if (destroyed || pendingVehicleRequestId != requestId) return;
        }
        boolean accepted;
        try {
            accepted = vehiclePort.requestSeatLevel(seatId, targetLevel, requestId);
        } catch (RuntimeException failure) {
            accepted = false;
        }
        if (!accepted) {
            synchronized (this) {
                if (pendingVehicleRequestId != requestId) return;
                finishVehicleCommandLocked(false, "车控命令未发送，请检查车机状态");
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
        synchronized (this) {
            if (destroyed || pendingVehicleRequestId != requestId) return;
        }
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
        commandTimeout = new Runnable() {
            @Override public void run() {
                synchronized (ContentStore.this) {
                    if (destroyed || pendingVehicleRequestId != requestId
                            || state.pendingVehicleCommand.length() == 0) return;
                    finishVehicleCommandLocked(false, "车辆状态未确认，请查看车机状态");
                }
                publish();
            }
        };
        commandHandler.postDelayed(commandTimeout, VEHICLE_COMMAND_TIMEOUT_MS);
    }

    private boolean vehicleCommandConfirmedLocked(ContentPorts.VehicleSnapshot snapshot) {
        if (!snapshot.dataAvailable || snapshot.preview) return false;
        if (ContentRegistry.Shortcuts.LOCK.equals(state.pendingVehicleCommand)) {
            return snapshot.lockKnown && snapshot.locked == state.pendingLocked;
        }
        if (!snapshot.seatControlsKnown) return false;
        VehicleControl control = VehicleControl.fromId(state.pendingVehicleCommand);
        if (control == null || actualSeatLevelLocked(state.pendingVehicleCommand) != state.pendingSeatLevel) return false;
        return control != VehicleControl.Massage
                || snapshot.massageSwitchKnown && snapshot.massageActive == (state.pendingSeatLevel > 0);
    }

    private void finishVehicleCommandLocked(boolean confirmed, String failureMessage) {
        if (commandTimeout != null) commandHandler.removeCallbacks(commandTimeout);
        commandTimeout = null;
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
            stateSnapshot = snapshotLocked();
            listenerSnapshot = new ArrayList<>(listeners);
        }
        for (Listener listener : listenerSnapshot) {
            listener.onContentStateChanged(stateSnapshot.copy());
        }
    }
}
