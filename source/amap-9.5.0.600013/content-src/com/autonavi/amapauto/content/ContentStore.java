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
    private static final int COMMAND_DOMAIN_NONE = 0;
    private static final int COMMAND_DOMAIN_MEDIA_PLAYBACK = 1;
    private static final int COMMAND_DOMAIN_MEDIA_NEXT = 2;
    private static final int COMMAND_DOMAIN_MEDIA_SOURCE = 3;
    private static final int COMMAND_DOMAIN_VEHICLE = 4;

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
    private Runnable mediaFeedbackTimeout;
    private long nextVehicleRequestId;
    private long pendingVehicleRequestId;
    private int pendingRearExpectedLevel = -1;
    private long pendingRearDeadlineUptimeMs;
    private boolean pendingRearWashActivationObserved;
    private long nextMediaRequestId;
    private long pendingMediaRequestId;
    private long lateMediaRequestId;
    private int lateMediaPlaybackTarget = -1;
    private int lateMediaGeneration = -1;
    private String lateMediaRecordingKey = "";
    private boolean mediaPlaybackRetriedAfterTimeout;
    private int commandResultDomain = COMMAND_DOMAIN_NONE;
    private int pendingCommandDomain = COMMAND_DOMAIN_NONE;
    private long nextTrackRequestId;
    private long pendingNextTrackRequestId;
    private Runnable nextTrackTimeout;
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
    private com.icar03.content.runtime.lyrics.CanonicalSemanticIndex lyricsSemanticIndex;
    private List<ContentPorts.LyricsLine> indexedLyricsLines;
    private long indexedLyricsDurationMs = Long.MIN_VALUE;
    private final Runnable advanceLyrics = new Runnable() {
        @Override public void run() {
            boolean changed;
            synchronized (ContentStore.this) {
                if (destroyed || lyricsConsumers == 0) return;
                changed = alignLyricsLocked(false);
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
        snapshot.mediaSourceWriteAvailable = !destroyed && mediaPort.isSourceAvailable();
        snapshot.vehicleWriteAvailable = !destroyed && vehiclePort.isAvailable();
        snapshot.lockWriteAvailable = !destroyed && vehiclePort.isLockAvailable();
        java.util.Set<String> writable = new java.util.HashSet<>();
        for (VehicleControl control : VehicleControl.values()) {
            if (control != VehicleControl.Lock && isControlAvailable(control.getId())) {
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
        Runnable mediaTimeout;
        synchronized (this) {
            destroyed = true;
            clearNextTrackPendingLocked();
            mediaTimeout = mediaFeedbackTimeout;
            mediaFeedbackTimeout = null;
        }
        commandHandler.removeCallbacks(advanceLyrics);
        if (lyricsPort != null) lyricsPort.stop();
        if (commandTimeout != null) commandHandler.removeCallbacks(commandTimeout);
        if (mediaTimeout != null) commandHandler.removeCallbacks(mediaTimeout);
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

    public void setShowIndoorTemperature(boolean value) {
        setBooleanPreference(PreferenceField.SHOW_INDOOR_TEMPERATURE, value);
    }

    public void setShowBattery(boolean value) {
        setBooleanPreference(PreferenceField.SHOW_BATTERY, value);
    }

    public void setShowChargingStatus(boolean value) {
        setBooleanPreference(PreferenceField.SHOW_CHARGING_STATUS, value);
    }

    public void setLyricsFontScale(float value) {
        synchronized (this) {
            state.lyricsFontScale = Float.isFinite(value) ? Math.max(0.85f, Math.min(1.15f, value)) : 1.0f;
            preferenceStore.save(state);
        }
        publish();
    }

    public void setLyricsLineSpacing(int value) {
        synchronized (this) {
            state.lyricsLineSpacing = Math.max(0, Math.min(2, value));
            preferenceStore.save(state);
        }
        publish();
    }

    public void setLyricsSpeakerLayout(boolean value) {
        setBooleanPreference(PreferenceField.LYRICS_SPEAKER_LAYOUT, value);
    }

    public void setLyricsHighlight(boolean value) {
        setBooleanPreference(PreferenceField.LYRICS_HIGHLIGHT, value);
    }

    public void setShowAmbientArtwork(boolean value) {
        setBooleanPreference(PreferenceField.SHOW_AMBIENT_ARTWORK, value);
    }

    public void setShowMediaSourceSwitcher(boolean value) {
        setBooleanPreference(PreferenceField.SHOW_MEDIA_SOURCE_SWITCHER, value);
    }

    public void setDockButtonCount(int value) {
        synchronized (this) {
            state.dockButtonCount = Math.max(3, Math.min(6, value));
            preferenceStore.save(state);
        }
        publish();
    }

    public void setShowActionFeedback(boolean value) {
        setBooleanPreference(PreferenceField.SHOW_ACTION_FEEDBACK, value);
    }

    public void setUiOpacity(float value) {
        synchronized (this) {
            state.uiOpacity = Float.isFinite(value) ? Math.max(0.20f, Math.min(1.0f, value)) : 1.0f;
            preferenceStore.save(state);
        }
        publish();
    }

    private enum PreferenceField {
        SHOW_INDOOR_TEMPERATURE, SHOW_BATTERY, SHOW_CHARGING_STATUS,
        LYRICS_SPEAKER_LAYOUT, LYRICS_HIGHLIGHT, SHOW_AMBIENT_ARTWORK,
        SHOW_MEDIA_SOURCE_SWITCHER, SHOW_ACTION_FEEDBACK
    }

    private void setBooleanPreference(PreferenceField field, boolean value) {
        synchronized (this) {
            switch (field) {
                case SHOW_INDOOR_TEMPERATURE: state.showIndoorTemperature = value; break;
                case SHOW_BATTERY: state.showBattery = value; break;
                case SHOW_CHARGING_STATUS: state.showChargingStatus = value; break;
                case LYRICS_SPEAKER_LAYOUT: state.lyricsSpeakerLayout = value; break;
                case LYRICS_HIGHLIGHT: state.lyricsHighlight = value; break;
                case SHOW_AMBIENT_ARTWORK: state.showAmbientArtwork = value; break;
                case SHOW_MEDIA_SOURCE_SWITCHER: state.showMediaSourceSwitcher = value; break;
                case SHOW_ACTION_FEEDBACK: state.showActionFeedback = value; break;
            }
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
            state.wiperLevel = snapshot.wiperKnown ? VehicleControl.Wiper.normalizeLevel(snapshot.wiperLevel) : -1;
            state.wiperKnown = state.wiperLevel >= 0;
            state.rearWiperLevel = snapshot.rearWiperKnown
                    ? VehicleControl.RearWiper.normalizeLevel(snapshot.rearWiperLevel) : -1;
            state.rearWiperKnown = state.rearWiperLevel >= 0;
            state.rearWashLevel = snapshot.rearWashKnown
                    ? VehicleControl.RearWash.normalizeLevel(snapshot.rearWashLevel) : -1;
            state.rearWashKnown = state.rearWashLevel >= 0;
            rememberManualReadbackLocked();
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
        boolean changed;
        synchronized (this) {
            if (destroyed || snapshot.dataAvailable && snapshot.generation < state.mediaGeneration) return;
            ContentState previous = state.copy();
            state.mediaSourceWriteAvailable = !destroyed && mediaPort.isSourceAvailable();
            boolean newRecording = !snapshot.recordingKey().equals(state.mediaRecordingKey);
            if (newRecording) {
                clearLateMediaPlaybackLocked();
                mediaPlaybackRetriedAfterTimeout = false;
            }
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
            state.mediaRecordingGeneration = lyricsTimeline.recordingGeneration();
            if (state.mediaNextPending && (!snapshot.dataAvailable || snapshot.preview
                    || !snapshot.hasSongMetadata()
                    || state.mediaRecordingGeneration != previous.mediaRecordingGeneration)) {
                clearNextTrackPendingLocked();
            }
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
            handleMediaPlaybackSnapshotLocked(snapshot, previous);
            changed = mediaFactsChangedLocked(previous);
            changed = alignLyricsLocked(changed) || changed;
        }
        if (changed) publish();
        synchronized (this) {
            if (!destroyed && lyricsConsumers > 0 && lyricsPort != null && latestMedia == snapshot) {
                lyricsPort.update(snapshot);
            }
        }
    }

    private void handleMediaPlaybackSnapshotLocked(ContentPorts.MediaSnapshot snapshot,
            ContentState previous) {
        if (pendingMediaRequestId != 0L && state.mediaPlaybackTarget >= 0) {
            final long requestId = pendingMediaRequestId;
            final boolean targetPlaying = state.mediaPlaybackTarget == 1;
            if (!snapshot.playbackAvailable) {
                finishMediaPlaybackLocked(requestId, false, "媒体会话不可用，请稍后重试", false);
            } else if (!snapshot.preview && snapshot.playing == targetPlaying) {
                finishMediaPlaybackLocked(requestId, true, "", false);
            }
            return;
        }
        if (lateMediaRequestId == 0L || !snapshot.dataAvailable || snapshot.preview
                || !snapshot.playbackAvailable || snapshot.playing != (lateMediaPlaybackTarget == 1)
                || !snapshot.recordingKey().equals(lateMediaRecordingKey)
                || previous.mediaPlaying == snapshot.playing
                || snapshot.generation < lateMediaGeneration) {
            return;
        }
        lateMediaRequestId = 0L;
        lateMediaPlaybackTarget = -1;
        lateMediaGeneration = -1;
        lateMediaRecordingKey = "";
        recordCommandResultLocked(true, "", COMMAND_DOMAIN_MEDIA_PLAYBACK);
    }

    private void finishMediaPlaybackLocked(long requestId, boolean accepted, String message,
            boolean retainLateConfirmation) {
        if (pendingMediaRequestId != requestId || state.mediaPlaybackTarget < 0) return;
        final int target = state.mediaPlaybackTarget;
        cancelMediaFeedbackTimeoutLocked();
        state.mediaPlaybackTarget = -1;
        pendingMediaRequestId = 0L;
        if (retainLateConfirmation && !mediaPlaybackRetriedAfterTimeout) {
            lateMediaRequestId = requestId;
            lateMediaPlaybackTarget = target;
            lateMediaGeneration = state.mediaGeneration;
            lateMediaRecordingKey = state.mediaRecordingKey;
        } else {
            clearLateMediaPlaybackLocked();
        }
        mediaPlaybackRetriedAfterTimeout = false;
        recordCommandResultLocked(accepted, message, COMMAND_DOMAIN_MEDIA_PLAYBACK);
    }

    private void cancelMediaFeedbackTimeoutLocked() {
        if (mediaFeedbackTimeout != null) {
            commandHandler.removeCallbacks(mediaFeedbackTimeout);
            mediaFeedbackTimeout = null;
        }
    }

    private void clearLateMediaPlaybackLocked() {
        lateMediaRequestId = 0L;
        lateMediaPlaybackTarget = -1;
        lateMediaGeneration = -1;
        lateMediaRecordingKey = "";
    }

    public void startLyrics() {
        boolean changed;
        synchronized (this) {
            if (destroyed || ++lyricsConsumers != 1) return;
            if (lyricsPort != null) {
                lyricsPort.start(new ContentPorts.LyricsSnapshotListener() {
                    @Override public void onLyricsSnapshot(ContentPorts.LyricsSnapshot snapshot) {
                        acceptLyricsSnapshot(snapshot);
                    }
                });
                lyricsPort.update(latestMedia);
            }
            changed = alignLyricsLocked(true);
        }
        if (changed) publish();
    }

    public synchronized void stopLyrics() {
        if (lyricsConsumers == 0 || --lyricsConsumers != 0) return;
        commandHandler.removeCallbacks(advanceLyrics);
        if (lyricsPort != null) lyricsPort.stop();
    }

    public void acceptLyricsSnapshot(ContentPorts.LyricsSnapshot snapshot) {
        boolean changed;
        synchronized (this) {
            if (destroyed || lyricsConsumers == 0 || snapshot == null
                    || !state.mediaDataAvailable || state.mediaPreview
                    || !latestMedia.hasSongMetadata()
                    || snapshot.mediaGeneration != state.mediaGeneration
                    || !snapshot.recordingKey.equals(state.mediaRecordingKey)) return;
            boolean bodyChanged = !state.lyricsLines.equals(snapshot.lines);
            changed = state.lyricsStatus != snapshot.status || state.lyricsTimed != snapshot.timed
                    || bodyChanged;
            state.lyricsStatus = snapshot.status;
            if (bodyChanged) state.lyricsLines = snapshot.lines;
            state.lyricsTimed = snapshot.timed;
            android.graphics.Bitmap previousArtwork = state.mediaArtwork;
            if (snapshot.artwork != null && !snapshot.artwork.isRecycled()) {
                fallbackArtwork = snapshot.artwork;
                if (latestMedia.artwork == null || latestMedia.artwork.isRecycled())
                    state.mediaArtwork = fallbackArtwork;
            }
            changed = state.mediaArtwork != previousArtwork || changed;
            changed = alignLyricsLocked(changed) || changed;
        }
        if (changed) publish();
    }

    /** Only facts changed by a media event participate; sampled time is never a publish reason. */
    private boolean mediaFactsChangedLocked(ContentState previous) {
        return previous.mediaDataAvailable != state.mediaDataAvailable
                || previous.mediaPreview != state.mediaPreview
                || previous.mediaSourceWriteAvailable != state.mediaSourceWriteAvailable
                || !java.util.Objects.equals(previous.mediaSource, state.mediaSource)
                || previous.mediaPlaying != state.mediaPlaying
                || previous.mediaSongIdentity != state.mediaSongIdentity
                || previous.mediaGeneration != state.mediaGeneration
                || !java.util.Objects.equals(previous.mediaTitle, state.mediaTitle)
                || !java.util.Objects.equals(previous.mediaArtist, state.mediaArtist)
                || previous.mediaPlaybackAvailable != state.mediaPlaybackAvailable
                || previous.mediaNextAvailable != state.mediaNextAvailable
                || previous.mediaNextPending != state.mediaNextPending
                || previous.mediaArtwork != state.mediaArtwork
                || !java.util.Objects.equals(previous.mediaRecordingKey, state.mediaRecordingKey)
                || previous.mediaRecordingGeneration != state.mediaRecordingGeneration
                || !java.util.Objects.equals(previous.mediaId, state.mediaId)
                || !java.util.Objects.equals(previous.mediaAlbum, state.mediaAlbum)
                || previous.mediaDurationMs != state.mediaDurationMs
                || previous.lyricsLines != state.lyricsLines
                || previous.lyricsStatus != state.lyricsStatus || previous.lyricsTimed != state.lyricsTimed
                || previous.mediaPlaybackTarget != state.mediaPlaybackTarget
                || !java.util.Objects.equals(previous.pendingSource, state.pendingSource)
                || previous.commandStatus != state.commandStatus || previous.commandSequence != state.commandSequence
                || !java.util.Objects.equals(previous.commandMessage, state.commandMessage);
    }

    /** Timer wakes sample the existing anchor; they never publish a new clock fact. */
    private boolean alignLyricsLocked(boolean semanticEvent) {
        commandHandler.removeCallbacks(advanceLyrics);
        final long now = android.os.SystemClock.elapsedRealtime();
        final ContentPorts.LyricsPlaybackAnchor anchor = lyricsTimeline.anchor();
        final boolean ready = state.lyricsTimed && anchor.timelineReady;
        final long position = ready ? anchor.sampleAt(now) : -1L;
        final long duration = lyricsTimeline.durationMs();
        if (lyricsSemanticIndex == null || indexedLyricsLines != state.lyricsLines
                || indexedLyricsDurationMs != duration) {
            lyricsSemanticIndex = new com.icar03.content.runtime.lyrics.CanonicalSemanticIndex(
                    state.lyricsLines, duration);
            indexedLyricsLines = state.lyricsLines;
            indexedLyricsDurationMs = duration;
        }
        com.icar03.content.runtime.lyrics.ContentLyricsCursor.Cursor cursor =
                lyricsSemanticIndex.resolve(position);
        final boolean atEnd = ready && duration > 0L && position >= duration;
        final boolean previouslyAtEnd = state.lyricsTimelineReady && state.lyricsAnchor.durationMs > 0L
                && state.lyricsPositionMs >= state.lyricsAnchor.durationMs;
        final boolean changed = atEnd != previouslyAtEnd
                || state.lyricsAnchor != anchor || state.lyricsTimelineReady != ready
                || state.lyricsActiveIndex != cursor.getActiveIndex()
                || state.lyricsScrollIndex != cursor.getScrollIndex()
                || !java.util.Arrays.equals(state.lyricsActiveIndices, cursor.getActiveIndices())
                || state.lyricsGapStartMs != cursor.getGapStartMs()
                || state.lyricsGapEndMs != cursor.getGapEndMs();
        state.lyricsAnchor = anchor;
        state.lyricsTimelineReady = ready;
        state.lyricsActiveIndex = cursor.getActiveIndex();
        state.lyricsScrollIndex = cursor.getScrollIndex();
        state.lyricsActiveIndices = cursor.getActiveIndices();
        state.lyricsGapStartMs = cursor.getGapStartMs();
        state.lyricsGapEndMs = cursor.getGapEndMs();
        state.lyricsPlaybackSpeed = ready ? anchor.speed : 0f;
        if (changed || semanticEvent) {
            // Legacy event position is paired with its own capture, never anchor.capturedAtMs.
            state.lyricsPositionMs = position;
            state.lyricsPositionCapturedAtMs = ready ? now : 0L;
        }
        if (!destroyed && lyricsConsumers > 0 && ready && anchor.speed != 0f
                && !state.lyricsLines.isEmpty()) {
            final long next = anchor.speed > 0f ? lyricsSemanticIndex.nextChangePosition(position)
                    : lyricsSemanticIndex.previousChangePosition(position);
            if (next >= 0L) {
                final Long delay = anchor.trajectory.delayUntilSample(next, now);
                if (delay != null) commandHandler.postDelayed(advanceLyrics, delay);
            }
        }
        return changed;
    }

    private boolean controlReadbackKnownLocked(VehicleControl control) {
        if (control == VehicleControl.Wiper) return state.wiperKnown;
        if (control == VehicleControl.RearWiper) return state.rearWiperKnown;
        if (control == VehicleControl.RearWash) return state.rearWashKnown;
        return state.seatControlsKnown;
    }

    private void rememberManualReadbackLocked() {
        if (!state.vehicleDataAvailable || state.vehiclePreview || !vehiclePort.isAvailable()) return;
        java.util.Map<String, Integer> updated = null;
        for (VehicleControl control : VehicleControl.values()) {
            if (control == VehicleControl.Lock || control.isRearWindow() || !controlReadbackKnownLocked(control)) continue;
            int actual = state.controlLevel(control);
            if (!control.isManualLevel(actual) || state.rememberedLevel(control) == actual) continue;
            if (updated == null) updated = new java.util.HashMap<>(state.getRememberedControlLevels());
            updated.put(control.getId(), actual);
            preferenceStore.saveManualLevel(control, actual);
        }
        if (updated != null) state.setRememberedControlLevels(updated);
    }

    /** Seat click availability retains its existing cycle policy. Wiper has explicit intents. */
    public synchronized boolean isControlAvailable(String controlId) {
        VehicleControl control = VehicleControl.fromId(controlId);
        if (control == VehicleControl.RearWash) return canTriggerRearWashLocked();
        if (control != VehicleControl.Wiper) return isControlCycleAvailable(controlId);
        if (canSetControlLevelLocked(controlId,
                control.powerToggleLevel(state.controlLevel(control), state.rememberedLevel(control)))
                || canSetControlLevelLocked(controlId, control.automaticToggleLevel(state.controlLevel(control)))) return true;
        for (int manual = 0; manual <= control.getMaxManualLevel(); manual++) {
            if (canSetControlLevelLocked(controlId, manual)) return true;
        }
        return false;
    }

    public synchronized boolean isControlCycleAvailable(String controlId) {
        return canSetControlLevelLocked(controlId, nextControlLevelLocked(controlId));
    }

    public boolean isSeatCycleControlAvailable(String seatId) {
        return isControlCycleAvailable(seatId);
    }

    public void cycleControlLevel(String controlId) {
        dispatchControlLevel(controlId, null, LevelIntent.Select);
    }

    public void cycleSeatLevel(String seatId) {
        cycleControlLevel(seatId);
    }

    private int actualControlLevelLocked(String controlId) {
        VehicleControl control = VehicleControl.fromId(controlId);
        return control == null ? -1 : state.controlLevel(control);
    }

    private int nextControlLevelLocked(String controlId) {
        VehicleControl control = VehicleControl.fromId(controlId);
        if (control == null || control == VehicleControl.Lock) return -1;
        int actualLevel = state.controlLevel(control);
        if (control.isLevel(actualLevel)) return control.nextLevel(actualLevel);
        // Known ON with unknown massage strength still permits the explicit OFF intent.
        return control == VehicleControl.Massage
                && state.massageSwitchKnown && state.massageActive ? 0 : -1;
    }

    private boolean canSetControlLevelLocked(String controlId, int targetLevel) {
        VehicleControl control = VehicleControl.fromId(controlId);
        if (control == null || control == VehicleControl.Lock || control == VehicleControl.RearWash
                || destroyed || state.pendingVehicleCommand.length() != 0
                || !control.isLevel(targetLevel)
                || !state.vehicleDataAvailable || state.vehiclePreview || !controlReadbackKnownLocked(control)
                || !vehiclePort.isAvailable() || !vehiclePort.isControlAvailable(controlId)
                || control.isRearWindow() && !vehiclePort.isRearWindowControlAvailable(controlId)) return false;
        int actualLevel = state.controlLevel(control);
        if (actualLevel == targetLevel) return false;
        if (actualLevel < 0 && !(control == VehicleControl.Massage
                && state.massageSwitchKnown && state.massageActive && targetLevel == 0)) return false;
        return vehiclePort.isControlLevelAvailable(controlId, actualLevel, targetLevel);
    }

    private enum LevelIntent { Select, Power, Automatic }

    public void setSeatLevel(String seatId, int targetLevel) {
        setControlLevel(seatId, targetLevel);
    }

    public void setControlLevel(String controlId, int targetLevel) {
        dispatchControlLevel(controlId, targetLevel, LevelIntent.Select);
    }

    public void toggleControlPower(String controlId) {
        if (VehicleControl.Lock.getId().equals(controlId)) toggleLock();
        else dispatchControlLevel(controlId, null, LevelIntent.Power);
    }

    public void toggleControlAutomatic(String controlId) {
        dispatchControlLevel(controlId, null, LevelIntent.Automatic);
    }

    private int controlTargetLocked(String controlId, Integer explicitTarget, LevelIntent intent) {
        VehicleControl control = VehicleControl.fromId(controlId);
        if (control == null || control == VehicleControl.Lock) return -1;
        int actual = state.controlLevel(control);
        if (intent == LevelIntent.Power) {
            if (control == VehicleControl.Massage && state.massageSwitchKnown && state.massageActive) return 0;
            return control.powerToggleLevel(actual, state.rememberedLevel(control));
        }
        if (intent == LevelIntent.Automatic) return control.automaticToggleLevel(actual);
        return explicitTarget == null ? nextControlLevelLocked(controlId) : explicitTarget;
    }

    private void dispatchControlLevel(String controlId, Integer explicitTarget, LevelIntent intent) {
        long requestId;
        int targetLevel;
        synchronized (this) {
            // Resolve the intent and reserve the sole request in one state transaction.
            targetLevel = controlTargetLocked(controlId, explicitTarget, intent);
            if (!canSetControlLevelLocked(controlId, targetLevel)) return;
            requestId = ++nextVehicleRequestId;
            beginVehicleCommandLocked(controlId, targetLevel, false, requestId);
        }
        publish();
        synchronized (this) {
            if (destroyed || pendingVehicleRequestId != requestId) return;
        }
        boolean accepted;
        try {
            VehicleControl control = VehicleControl.fromId(controlId);
            if (control == VehicleControl.RearWiper) {
                int expected;
                long deadline;
                synchronized (this) {
                    if (destroyed || pendingVehicleRequestId != requestId) return;
                    expected = pendingRearExpectedLevel;
                    deadline = pendingRearDeadlineUptimeMs;
                }
                accepted = vehiclePort.requestRearWindow(controlId, expected, targetLevel, requestId, deadline);
            } else {
                accepted = vehiclePort.requestControlLevel(controlId, targetLevel, requestId);
            }
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

    private boolean canTriggerRearWashLocked() {
        return !destroyed && state.pendingVehicleCommand.length() == 0
                && state.vehicleDataAvailable && !state.vehiclePreview && state.rearWashKnown
                && state.rearWashLevel == 0 && vehiclePort.isAvailable()
                && vehiclePort.isRearWindowControlAvailable(VehicleControl.RearWash.getId());
    }

    /** Rear wash is an action, never a persistent on/off level or a remembered mode. */
    public void triggerControl(String controlId) {
        if (!VehicleControl.RearWash.getId().equals(controlId)) return;
        long requestId;
        long deadline;
        synchronized (this) {
            if (!canTriggerRearWashLocked()) return;
            requestId = ++nextVehicleRequestId;
            beginVehicleCommandLocked(controlId, 1, false, requestId);
            deadline = pendingRearDeadlineUptimeMs;
        }
        publish();
        synchronized (this) {
            if (destroyed || pendingVehicleRequestId != requestId) return;
        }
        boolean accepted;
        try {
            accepted = vehiclePort.requestRearWindow(controlId, 0, 1, requestId, deadline);
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
        final Runnable timeout;
        synchronized (this) {
            if (destroyed || !state.mediaPlaybackAvailable) {
                return;
            }
            nextPlaying = state.mediaPlaybackTarget < 0
                    ? !state.mediaPlaying : state.mediaPlaybackTarget == 0;
            requestId = ++nextMediaRequestId;
            cancelMediaFeedbackTimeoutLocked();
            mediaPlaybackRetriedAfterTimeout = mediaPlaybackRetriedAfterTimeout
                    || lateMediaRequestId != 0L;
            clearLateMediaPlaybackLocked();
            clearCommandResultIfOwnedLocked(COMMAND_DOMAIN_MEDIA_PLAYBACK);
            state.mediaPlaybackTarget = nextPlaying ? 1 : 0;
            pendingMediaRequestId = requestId;
            timeout = new Runnable() {
                @Override public void run() {
                    synchronized (ContentStore.this) {
                        if (destroyed || pendingMediaRequestId != requestId
                                || state.mediaPlaybackTarget != (nextPlaying ? 1 : 0)) return;
                        finishMediaPlaybackLocked(requestId, false,
                                "媒体播放状态未确认，请检查媒体会话", true);
                    }
                    publish();
                }
            };
            mediaFeedbackTimeout = timeout;
            commandHandler.postDelayed(timeout, MEDIA_FEEDBACK_TIMEOUT_MS);
        }
        publish();
        try {
            mediaCommandExecutor.execute(new Runnable() {
                @Override public void run() {
                    synchronized (ContentStore.this) {
                        if (destroyed || pendingMediaRequestId != requestId
                                || state.mediaPlaybackTarget != (nextPlaying ? 1 : 0)) return;
                    }
                    boolean accepted;
                    try {
                        accepted = mediaPort.requestPlayback(nextPlaying);
                    } catch (RuntimeException error) {
                        accepted = false;
                    }
                    if (accepted) return;
                    commandHandler.post(new Runnable() {
                        @Override public void run() {
                            synchronized (ContentStore.this) {
                                if (destroyed || pendingMediaRequestId != requestId
                                        || state.mediaPlaybackTarget != (nextPlaying ? 1 : 0)) {
                                    return;
                                }
                                finishMediaPlaybackLocked(requestId, false,
                                        "媒体播放命令未发送，请检查媒体会话", false);
                            }
                            publish();
                        }
                    });
                }
            });
        } catch (RuntimeException rejected) {
            synchronized (this) {
                if (destroyed || pendingMediaRequestId != requestId
                        || state.mediaPlaybackTarget != (nextPlaying ? 1 : 0)) return;
                finishMediaPlaybackLocked(requestId, false,
                        "媒体播放命令未发送，请检查媒体会话", false);
            }
            publish();
        }
    }

    public void nextMediaTrack() {
        final long requestId;
        synchronized (this) {
            if (destroyed || !state.mediaNextAvailable) {
                return;
            }
            requestId = ++nextTrackRequestId;
            pendingNextTrackRequestId = requestId;
            clearCommandResultIfOwnedLocked(COMMAND_DOMAIN_MEDIA_NEXT);
            state.mediaNextPending = true;
            if (nextTrackTimeout != null) commandHandler.removeCallbacks(nextTrackTimeout);
            nextTrackTimeout = new Runnable() {
                @Override public void run() {
                    synchronized (ContentStore.this) {
                        if (destroyed || pendingNextTrackRequestId != requestId) return;
                        clearNextTrackPendingLocked();
                        recordCommandResultLocked(false, "下一首状态未确认，请检查媒体会话",
                                COMMAND_DOMAIN_MEDIA_NEXT);
                    }
                    publish();
                }
            };
            commandHandler.postDelayed(nextTrackTimeout, MEDIA_FEEDBACK_TIMEOUT_MS);
        }
        publish();
        queueMediaCommand(new Callable<Boolean>() {
            @Override
            public Boolean call() {
                return mediaPort.requestNext();
            }
        }, "下一首命令未发送，请检查媒体会话", requestId);
    }

    private void clearNextTrackPendingLocked() {
        if (nextTrackTimeout != null) commandHandler.removeCallbacks(nextTrackTimeout);
        nextTrackTimeout = null;
        state.mediaNextPending = false;
        pendingNextTrackRequestId = 0L;
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
            clearCommandResultIfOwnedLocked(COMMAND_DOMAIN_MEDIA_SOURCE);
            pendingCommandDomain = COMMAND_DOMAIN_MEDIA_SOURCE;
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
        recordCommandResultLocked(confirmed, message, COMMAND_DOMAIN_MEDIA_SOURCE);
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

    private void queueMediaCommand(final Callable<Boolean> command, final String failureMessage,
            final long requestId) {
        try {
            mediaCommandExecutor.execute(new Runnable() {
                @Override
                public void run() {
                    synchronized (ContentStore.this) {
                        if (destroyed || pendingNextTrackRequestId != requestId) return;
                    }
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
                            completeNextTrackCommand(requestId, result, failureMessage);
                        }
                    });
                }
            });
        } catch (RuntimeException rejected) {
            completeNextTrackCommand(requestId, false, failureMessage);
        }
    }

    private void completeNextTrackCommand(long requestId, boolean accepted, String failureMessage) {
        synchronized (this) {
            if (destroyed || pendingNextTrackRequestId != requestId) return;
            // Sending is not recording confirmation; retain the intent until actual readback.
            if (!accepted) clearNextTrackPendingLocked();
            recordCommandResultLocked(accepted, failureMessage, COMMAND_DOMAIN_MEDIA_NEXT);
        }
        publish();
    }

    private void clearCommandResultIfOwnedLocked(int domain) {
        if (commandResultDomain != domain) return;
        state.commandStatus = ContentState.COMMAND_NONE;
        state.commandSequence++;
        state.commandMessage = "";
        commandResultDomain = COMMAND_DOMAIN_NONE;
    }

    private void recordCommandResultLocked(boolean accepted, String failureMessage, int domain) {
        if (accepted) {
            if (domain == COMMAND_DOMAIN_MEDIA_PLAYBACK) {
                clearCommandResultIfOwnedLocked(domain);
                return;
            }
            if (commandResultDomain != domain && pendingCommandDomain == domain) {
                state.commandStatus = ContentState.COMMAND_NONE;
                state.commandMessage = "";
                pendingCommandDomain = COMMAND_DOMAIN_NONE;
                return;
            }
            if (commandResultDomain != domain && pendingCommandDomain != domain) return;
            state.commandStatus = ContentState.COMMAND_NONE;
            state.commandSequence++;
            state.commandMessage = "";
            if (commandResultDomain == domain) commandResultDomain = COMMAND_DOMAIN_NONE;
            if (pendingCommandDomain == domain) pendingCommandDomain = COMMAND_DOMAIN_NONE;
            return;
        }
        state.commandStatus = ContentState.COMMAND_FAILED;
        state.commandSequence++;
        state.commandMessage = failureMessage;
        commandResultDomain = domain;
        if (pendingCommandDomain == domain) pendingCommandDomain = COMMAND_DOMAIN_NONE;
        if (domain != COMMAND_DOMAIN_MEDIA_PLAYBACK) clearLateMediaPlaybackLocked();
    }

    private void beginVehicleCommandLocked(String command, int seatLevel, boolean locked,
            long requestId) {
        clearCommandResultIfOwnedLocked(COMMAND_DOMAIN_VEHICLE);
        pendingCommandDomain = COMMAND_DOMAIN_VEHICLE;
        state.pendingVehicleCommand = command;
        state.pendingSeatLevel = seatLevel;
        state.pendingLocked = locked;
        state.commandStatus = ContentState.COMMAND_PENDING;
        state.commandMessage = "";
        pendingVehicleRequestId = requestId;
        VehicleControl control = VehicleControl.fromId(command);
        pendingRearExpectedLevel = control != null && control.isRearWindow() ? state.controlLevel(control) : -1;
        pendingRearDeadlineUptimeMs = android.os.SystemClock.uptimeMillis() + VEHICLE_COMMAND_TIMEOUT_MS;
        pendingRearWashActivationObserved = false;
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
        VehicleControl control = VehicleControl.fromId(state.pendingVehicleCommand);
        if (control != null && control.isRearWindow()) {
            if (snapshot.rearReadbackRequestId != pendingVehicleRequestId
                    || !state.pendingVehicleCommand.equals(snapshot.rearReadbackControlId)
                    || android.os.SystemClock.uptimeMillis() >= pendingRearDeadlineUptimeMs
                    || !controlReadbackKnownLocked(control)) return false;
            if (control == VehicleControl.RearWiper) return state.rearWiperLevel == state.pendingSeatLevel;
            if (snapshot.rearWashLevel == 1 || snapshot.rearWashActivationObserved) {
                pendingRearWashActivationObserved = true;
            }
            return pendingRearWashActivationObserved && state.rearWashLevel == 0;
        }
        if (control == null || !controlReadbackKnownLocked(control)
                || actualControlLevelLocked(state.pendingVehicleCommand) != state.pendingSeatLevel) return false;
        return control != VehicleControl.Massage
                || snapshot.massageSwitchKnown && snapshot.massageActive == (state.pendingSeatLevel > 0);
    }

    private void finishVehicleCommandLocked(boolean confirmed, String failureMessage) {
        if (commandTimeout != null) commandHandler.removeCallbacks(commandTimeout);
        commandTimeout = null;
        VehicleControl control = VehicleControl.fromId(state.pendingVehicleCommand);
        if (control != null && control.isRearWindow()) {
            try {
                vehiclePort.cancelRearWindowRequest(pendingVehicleRequestId);
            } catch (RuntimeException ignored) {
                // Cancellation is local best effort; it must not erase the actual readback or result.
            }
        }
        pendingRearExpectedLevel = -1;
        pendingRearDeadlineUptimeMs = 0L;
        pendingRearWashActivationObserved = false;
        state.pendingVehicleCommand = "";
        state.pendingSeatLevel = -1;
        state.pendingLocked = false;
        pendingVehicleRequestId = 0L;
        recordCommandResultLocked(confirmed, failureMessage, COMMAND_DOMAIN_VEHICLE);
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
