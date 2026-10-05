package com.autonavi.amapauto.content;

import com.icar03.content.model.VehicleControl;

import android.graphics.Bitmap;
import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.provider.Settings;
public final class ContentPorts {
    private ContentPorts() {
    }

    /** Classification shared by media presentation, lyrics and artwork policy. */
    public enum MediaSongIdentity {
        UNKNOWN,
        SONG,
        NON_SONG
    }

    public interface SystemPort {
        SystemSnapshot read(int kind);

        boolean write(int kind, int percent);
    }

    public static final class SystemSnapshot {
        public final boolean available;
        public final int percent;

        public SystemSnapshot(boolean available, int percent) {
            this.available = available;
            this.percent = Math.max(0, Math.min(100, percent));
        }
    }

    public static final class AndroidSystemPort implements SystemPort {
        private final Context context;

        public AndroidSystemPort(Context context) {
            this.context = context.getApplicationContext();
        }

        @Override public SystemSnapshot read(int kind) {
            try {
                if (kind == 0) {
                    int raw = Settings.System.getInt(context.getContentResolver(),
                            Settings.System.SCREEN_BRIGHTNESS, -1);
                    boolean available = raw >= 0 && (Build.VERSION.SDK_INT < 23
                            || Settings.System.canWrite(context));
                    return new SystemSnapshot(available, raw < 0 ? 0 : Math.round(raw * 100f / 255f));
                }
                AudioManager audio = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
                int max = audio == null ? 0 : audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC);
                boolean writable = context.checkCallingOrSelfPermission(
                        android.Manifest.permission.MODIFY_AUDIO_SETTINGS)
                        == android.content.pm.PackageManager.PERMISSION_GRANTED;
                return new SystemSnapshot(max > 0 && writable,
                        max > 0 ? Math.round(audio.getStreamVolume(AudioManager.STREAM_MUSIC) * 100f / max) : 0);
            } catch (SecurityException | IllegalArgumentException exception) {
                return new SystemSnapshot(false, 0);
            }
        }

        @Override public boolean write(int kind, int percent) {
            int target = Math.max(0, Math.min(100, percent));
            try {
                if (kind == 0) {
                    if (Build.VERSION.SDK_INT >= 23 && !Settings.System.canWrite(context)) return false;
                    if (!Settings.System.putInt(context.getContentResolver(),
                            Settings.System.SCREEN_BRIGHTNESS, Math.round(target * 255f / 100f))) return false;
                } else {
                    AudioManager audio = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
                    if (audio == null || audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC) <= 0) return false;
                    audio.setStreamVolume(AudioManager.STREAM_MUSIC,
                            Math.round(audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC) * target / 100f), 0);
                }
                return read(kind).available && Math.abs(read(kind).percent - target) <= 1;
            } catch (SecurityException | IllegalArgumentException exception) {
                return false;
            }
        }
    }

    public interface VehicleSnapshotListener {
        void onVehicleSnapshot(VehicleSnapshot snapshot);

        void onVehicleCommandFailed(long requestId, String message);
    }

    public interface VehiclePort {
        /** Transport only; a valid readback and an executable target remain separate. */
        boolean isAvailable();

        boolean isLockAvailable();

        /** Implemented control family; adapters can narrow this for actual firmware support. */
        default boolean isSeatControlAvailable(String seatId) {
            VehicleControl control = VehicleControl.fromId(seatId);
            return isAvailable() && control != null && control != VehicleControl.Lock;
        }

        default boolean isSeatLevelAvailable(String seatId, int level) {
            VehicleControl control = VehicleControl.fromId(seatId);
            return control != null && control.isLevel(level) && isSeatControlAvailable(seatId);
        }

        /** A transition uses the same target contract, including entry to and exit from AUTO. */
        default boolean isSeatLevelAvailable(String seatId, int currentLevel, int targetLevel) {
            return isSeatLevelAvailable(seatId, targetLevel);
        }

        /** Generic level contract. Defaults bridge existing injected seat ports. */
        default boolean isControlAvailable(String controlId) {
            return isSeatControlAvailable(controlId);
        }

        default boolean isControlLevelAvailable(String controlId, int level) {
            return isSeatLevelAvailable(controlId, level);
        }

        default boolean isControlLevelAvailable(String controlId, int currentLevel, int targetLevel) {
            return isSeatLevelAvailable(controlId, currentLevel, targetLevel);
        }

        default boolean requestControlLevel(String controlId, int level, long requestId) {
            return requestSeatLevel(controlId, level, requestId);
        }

        /** Non-idempotent rear-window actions never use the legacy level request path. */
        default boolean isRearWindowControlAvailable(String controlId) {
            return false;
        }

        /** Deadline uses SystemClock.uptimeMillis. expectedLevel is an actual-state precondition.
         * RearWiper permits only the opposite target; RearWash permits only idle0 -> trigger1. */
        default boolean requestRearWindow(String controlId, int expectedLevel, int targetLevel,
                long requestId, long deadlineUptimeMs) {
            return false;
        }

        /** Local cancellation only: invalidate unsent work and scoped reads, never write a restore.
         * An already executing synchronous Binder call cannot be physically cancelled. */
        default void cancelRearWindowRequest(long requestId) {
        }

        boolean requestLock(boolean locked, long requestId);

        boolean requestSeatLevel(String seatId, int level, long requestId);

        void start(VehicleSnapshotListener listener);

        void stop();
    }

    public interface MediaSnapshotListener {
        void onMediaSnapshot(MediaSnapshot snapshot);
    }

    public interface MediaPort {
        boolean isAvailable();

        default boolean isSourceAvailable() {
            return false;
        }

        boolean requestPlayback(boolean playing);

        boolean requestNext();

        boolean requestSource(String source);

        void start(MediaSnapshotListener listener);

        void stop();
    }

    public static final class VehicleSnapshot {
        public final boolean dataAvailable;
        public final boolean preview;
        public final float temperatureC;
        public final int batteryPercent;
        public final int rangeRaw;
        public final int chargeState;
        public final int chargeConnectionRaw;
        public final int chargeBmsRaw;
        public final int chargeScheduleRaw;
        public final float chargePowerKw;
        public final int chargeRemainingMinutes;
        public final int ventilationLevel;
        public final int heatingLevel;
        public final boolean heatingAutoKnown;
        public final boolean heatingAutoActive;
        public final int passengerHeatingLevel;
        public final boolean passengerHeatingAutoKnown;
        public final boolean passengerHeatingAutoActive;
        public final int steeringHeatLevel;
        public final int massageLevel;
        public final int massageModeRaw;
        public final boolean massageSwitchKnown;
        public final boolean massageActive;
        public final boolean seatControlsKnown;
        public final boolean lockKnown;
        public final boolean locked;
        public final int wiperLevel;
        public final boolean wiperKnown;
        public final int rearWiperLevel;
        public final boolean rearWiperKnown;
        public final int rearWashLevel;
        public final boolean rearWashKnown;
        /** Nonzero only for a fresh scoped read performed after this request's single write. */
        public final String rearReadbackControlId;
        public final long rearReadbackRequestId;
        public final boolean rearWashActivationObserved;

        /**
         * Legacy 20-argument contract: levels are already normalized OFF/1/2/3 (0..3),
         * never raw Binder values. A valid historical heating mode implies non-AUTO;
         * -1 or an out-of-range value stays unknown. AUTO requires the companion-aware overload.
         */
        public VehicleSnapshot(boolean dataAvailable, boolean preview, float temperatureC,
                int batteryPercent, int rangeRaw, int chargeState, int chargeConnectionRaw,
                int chargeBmsRaw, int chargeScheduleRaw, float chargePowerKw,
                int chargeRemainingMinutes, int ventilationLevel, int heatingLevel,
                int massageLevel, int massageModeRaw, boolean massageSwitchKnown,
                boolean massageActive, boolean seatControlsKnown, boolean lockKnown, boolean locked) {
            this(dataAvailable, preview, temperatureC, batteryPercent, rangeRaw, chargeState,
                    chargeConnectionRaw, chargeBmsRaw, chargeScheduleRaw, chargePowerKw,
                    chargeRemainingMinutes, ventilationLevel, heatingLevel,
                    heatingLevel >= 0 && heatingLevel <= 3, false, -1,
                    massageLevel, massageModeRaw, massageSwitchKnown, massageActive,
                    seatControlsKnown, lockKnown, locked);
        }

        public VehicleSnapshot(boolean dataAvailable, boolean preview, float temperatureC,
                int batteryPercent, int rangeRaw, int chargeState, int chargeConnectionRaw,
                int chargeBmsRaw, int chargeScheduleRaw, float chargePowerKw,
                int chargeRemainingMinutes, int ventilationLevel, int heatingLevel,
                boolean heatingAutoKnown, boolean heatingAutoActive, int steeringHeatLevel,
                int massageLevel, int massageModeRaw, boolean massageSwitchKnown,
                boolean massageActive, boolean seatControlsKnown, boolean lockKnown, boolean locked) {
            this(dataAvailable, preview, temperatureC, batteryPercent, rangeRaw, chargeState,
                    chargeConnectionRaw, chargeBmsRaw, chargeScheduleRaw, chargePowerKw,
                    chargeRemainingMinutes, ventilationLevel, heatingLevel, heatingAutoKnown, heatingAutoActive,
                    -1, false, false, steeringHeatLevel, massageLevel, massageModeRaw,
                    massageSwitchKnown, massageActive, seatControlsKnown, lockKnown, locked);
        }

        /** Both seats carry independent actual modes and independent AUTO readback evidence. */
        public VehicleSnapshot(boolean dataAvailable, boolean preview, float temperatureC,
                int batteryPercent, int rangeRaw, int chargeState, int chargeConnectionRaw,
                int chargeBmsRaw, int chargeScheduleRaw, float chargePowerKw,
                int chargeRemainingMinutes, int ventilationLevel, int heatingLevel,
                boolean heatingAutoKnown, boolean heatingAutoActive,
                int passengerHeatingLevel, boolean passengerHeatingAutoKnown, boolean passengerHeatingAutoActive,
                int steeringHeatLevel, int massageLevel, int massageModeRaw, boolean massageSwitchKnown,
                boolean massageActive, boolean seatControlsKnown, boolean lockKnown, boolean locked) {
            this(dataAvailable, preview, temperatureC, batteryPercent, rangeRaw, chargeState,
                    chargeConnectionRaw, chargeBmsRaw, chargeScheduleRaw, chargePowerKw,
                    chargeRemainingMinutes, ventilationLevel, heatingLevel, heatingAutoKnown, heatingAutoActive,
                    passengerHeatingLevel, passengerHeatingAutoKnown, passengerHeatingAutoActive,
                    steeringHeatLevel, massageLevel, massageModeRaw, massageSwitchKnown,
                    massageActive, seatControlsKnown, lockKnown, locked, -1, false);
        }

        /** Tail-compatible extension; wiper is a normalized0..5 domain mode, not OEM RX. */
        public VehicleSnapshot(boolean dataAvailable, boolean preview, float temperatureC,
                int batteryPercent, int rangeRaw, int chargeState, int chargeConnectionRaw,
                int chargeBmsRaw, int chargeScheduleRaw, float chargePowerKw,
                int chargeRemainingMinutes, int ventilationLevel, int heatingLevel,
                boolean heatingAutoKnown, boolean heatingAutoActive,
                int passengerHeatingLevel, boolean passengerHeatingAutoKnown, boolean passengerHeatingAutoActive,
                int steeringHeatLevel, int massageLevel, int massageModeRaw, boolean massageSwitchKnown,
                boolean massageActive, boolean seatControlsKnown, boolean lockKnown, boolean locked,
                int wiperLevel, boolean wiperKnown) {
            this(dataAvailable, preview, temperatureC, batteryPercent, rangeRaw, chargeState,
                    chargeConnectionRaw, chargeBmsRaw, chargeScheduleRaw, chargePowerKw,
                    chargeRemainingMinutes, ventilationLevel, heatingLevel, heatingAutoKnown, heatingAutoActive,
                    passengerHeatingLevel, passengerHeatingAutoKnown, passengerHeatingAutoActive,
                    steeringHeatLevel, massageLevel, massageModeRaw, massageSwitchKnown, massageActive,
                    seatControlsKnown, lockKnown, locked, wiperLevel, wiperKnown,
                    -1, false, -1, false, "", 0L, false);
        }

        /** Rear-window actuals and scoped post-write proof are independent from every seat/front-wiper. */
        public VehicleSnapshot(boolean dataAvailable, boolean preview, float temperatureC,
                int batteryPercent, int rangeRaw, int chargeState, int chargeConnectionRaw,
                int chargeBmsRaw, int chargeScheduleRaw, float chargePowerKw,
                int chargeRemainingMinutes, int ventilationLevel, int heatingLevel,
                boolean heatingAutoKnown, boolean heatingAutoActive,
                int passengerHeatingLevel, boolean passengerHeatingAutoKnown, boolean passengerHeatingAutoActive,
                int steeringHeatLevel, int massageLevel, int massageModeRaw, boolean massageSwitchKnown,
                boolean massageActive, boolean seatControlsKnown, boolean lockKnown, boolean locked,
                int wiperLevel, boolean wiperKnown, int rearWiperLevel, boolean rearWiperKnown,
                int rearWashLevel, boolean rearWashKnown, String rearReadbackControlId,
                long rearReadbackRequestId, boolean rearWashActivationObserved) {
            this.dataAvailable = dataAvailable;
            this.preview = preview;
            this.temperatureC = temperatureC;
            this.batteryPercent = batteryPercent;
            this.rangeRaw = rangeRaw;
            this.chargeState = chargeState;
            this.chargeConnectionRaw = chargeConnectionRaw;
            this.chargeBmsRaw = chargeBmsRaw;
            this.chargeScheduleRaw = chargeScheduleRaw;
            this.chargePowerKw = chargePowerKw;
            this.chargeRemainingMinutes = chargeRemainingMinutes;
            this.ventilationLevel = VehicleControl.Ventilation.normalizeLevel(ventilationLevel);
            this.heatingLevel = consistentHeatingLevel(heatingLevel, heatingAutoKnown, heatingAutoActive);
            this.heatingAutoKnown = heatingAutoKnown;
            this.heatingAutoActive = heatingAutoKnown && heatingAutoActive;
            this.passengerHeatingLevel = consistentHeatingLevel(VehicleControl.PassengerHeating,
                    passengerHeatingLevel, passengerHeatingAutoKnown, passengerHeatingAutoActive);
            this.passengerHeatingAutoKnown = passengerHeatingAutoKnown;
            this.passengerHeatingAutoActive = passengerHeatingAutoKnown && passengerHeatingAutoActive;
            this.steeringHeatLevel = VehicleControl.SteeringHeat.normalizeLevel(steeringHeatLevel);
            this.massageLevel = consistentMassageLevel(massageLevel, massageSwitchKnown, massageActive);
            this.massageModeRaw = massageModeRaw;
            this.massageSwitchKnown = massageSwitchKnown;
            this.massageActive = massageActive;
            this.seatControlsKnown = seatControlsKnown;
            this.lockKnown = lockKnown;
            this.locked = locked;
            this.wiperLevel = wiperKnown ? VehicleControl.Wiper.normalizeLevel(wiperLevel) : -1;
            this.wiperKnown = this.wiperLevel >= 0;
            this.rearWiperLevel = rearWiperKnown ? VehicleControl.RearWiper.normalizeLevel(rearWiperLevel) : -1;
            this.rearWiperKnown = this.rearWiperLevel >= 0;
            this.rearWashLevel = rearWashKnown ? VehicleControl.RearWash.normalizeLevel(rearWashLevel) : -1;
            this.rearWashKnown = this.rearWashLevel >= 0;
            VehicleControl rearControl = VehicleControl.fromId(rearReadbackControlId);
            this.rearReadbackControlId = rearReadbackRequestId > 0L && rearControl != null && rearControl.isRearWindow()
                    ? rearReadbackControlId : "";
            this.rearReadbackRequestId = this.rearReadbackControlId.length() == 0 ? 0L : rearReadbackRequestId;
            this.rearWashActivationObserved = rearControl == VehicleControl.RearWash
                    && this.rearReadbackRequestId > 0L && rearWashActivationObserved;
        }

        /** Copy cached unrelated facts while replacing one actually read rear property. */
        public VehicleSnapshot withRearWindowReadback(String controlId, int level,
                long requestId, boolean washActivationObserved) {
            VehicleControl control = VehicleControl.fromId(controlId);
            if (control == null || !control.isRearWindow()) throw new IllegalArgumentException("not a rear control");
            boolean known = control.isLevel(level);
            return new VehicleSnapshot(dataAvailable || known, preview, temperatureC, batteryPercent,
                    rangeRaw, chargeState, chargeConnectionRaw, chargeBmsRaw, chargeScheduleRaw,
                    chargePowerKw, chargeRemainingMinutes, ventilationLevel, heatingLevel,
                    heatingAutoKnown, heatingAutoActive, passengerHeatingLevel, passengerHeatingAutoKnown,
                    passengerHeatingAutoActive, steeringHeatLevel, massageLevel, massageModeRaw,
                    massageSwitchKnown, massageActive, seatControlsKnown, lockKnown, locked, wiperLevel, wiperKnown,
                    control == VehicleControl.RearWiper ? level : rearWiperLevel,
                    control == VehicleControl.RearWiper ? known : rearWiperKnown,
                    control == VehicleControl.RearWash ? level : rearWashLevel,
                    control == VehicleControl.RearWash ? known : rearWashKnown,
                    controlId, requestId, washActivationObserved);
        }

        /** Normalized-mode invariant, shared by Snapshot, Store, State copies and Mapper. */
        public static int consistentHeatingLevel(int level, boolean autoKnown, boolean autoActive) {
            return consistentHeatingLevel(VehicleControl.Heating, level, autoKnown, autoActive);
        }

        public static int consistentHeatingLevel(VehicleControl control, int level, boolean autoKnown, boolean autoActive) {
            if (control != VehicleControl.Heating && control != VehicleControl.PassengerHeating) return -1;
            return autoKnown && control.isLevel(level) && control.isAutomatic(level) == autoActive ? level : -1;
        }

        /** Switch evidence defines OFF; an active massage requires a known positive strength. */
        public static int consistentMassageLevel(int level, boolean switchKnown, boolean active) {
            if (!switchKnown) return -1;
            if (!active) return 0;
            return level > 0 && VehicleControl.Massage.isLevel(level) ? level : -1;
        }

        public static int normalizedLevel(int level, int maxLevel) {
            return level >= 0 && level <= maxLevel ? level : -1;
        }

        public static VehicleSnapshot unavailable() {
            return new VehicleSnapshot(false, false, Float.NaN, -1, -1,
                    ContentState.CHARGE_UNKNOWN, -1, -1, -1, Float.NaN, -1, -1, -1, -1,
                    -1, false, false, false, false, true);
        }
    }

    public static final class MediaSnapshot {
        public final boolean dataAvailable;
        public final boolean preview;
        public final String source;
        public final boolean playing;
        public final int generation;
        public final String title;
        public final String artist;
        public final boolean playbackAvailable;
        public final boolean nextAvailable;
        public final Bitmap artwork;
        public final String mediaId;
        public final String album;
        public final long durationMs;
        public final long positionMs;
        /** Publisher's monotonic lastPositionUpdateTime; zero means unavailable. */
        public final long positionElapsedRealtimeMs;
        public final float playbackSpeed;
        public final String embeddedLyrics;
        public final MediaSongIdentity songIdentity;
        public final int playbackState;
        /** Zero sequence means no AVRCP event; duplicate envelopes retain the original event time. */
        public final long avrcpEventSequence;
        public final long avrcpPositionMs;
        public final int avrcpPlaybackState;
        public final long avrcpElapsedRealtimeMs;

        public MediaSnapshot(boolean dataAvailable, boolean preview, String source,
                boolean playing, int generation, String title, String artist,
                boolean playbackAvailable, boolean nextAvailable) {
            this(dataAvailable, preview, source, playing, generation, title, artist,
                    playbackAvailable, nextAvailable, null);
        }

        public MediaSnapshot(boolean dataAvailable, boolean preview, String source,
                boolean playing, int generation, String title, String artist,
                boolean playbackAvailable, boolean nextAvailable, Bitmap artwork) {
            this(dataAvailable, preview, source, playing, generation, title, artist,
                    playbackAvailable, nextAvailable, artwork, "", "", 0L, -1L, 0L, 0f);
        }

        public MediaSnapshot(boolean dataAvailable, boolean preview, String source,
                boolean playing, int generation, String title, String artist,
                boolean playbackAvailable, boolean nextAvailable, Bitmap artwork,
                String mediaId, String album, long durationMs, long positionMs,
                long positionElapsedRealtimeMs, float playbackSpeed) {
            this(dataAvailable, preview, source, playing, generation, title, artist,
                    playbackAvailable, nextAvailable, artwork, mediaId, album, durationMs,
                    positionMs, positionElapsedRealtimeMs, playbackSpeed, "");
        }

        public MediaSnapshot(boolean dataAvailable, boolean preview, String source,
                boolean playing, int generation, String title, String artist,
                boolean playbackAvailable, boolean nextAvailable, Bitmap artwork,
                String mediaId, String album, long durationMs, long positionMs,
                long positionElapsedRealtimeMs, float playbackSpeed,
                MediaSongIdentity songIdentity) {
            this(dataAvailable, preview, source, playing, generation, title, artist,
                    playbackAvailable, nextAvailable, artwork, mediaId, album, durationMs,
                    positionMs, positionElapsedRealtimeMs, playbackSpeed, "", songIdentity);
        }
        public MediaSnapshot(boolean dataAvailable, boolean preview, String source,
                boolean playing, int generation, String title, String artist,
                boolean playbackAvailable, boolean nextAvailable, Bitmap artwork,
                String mediaId, String album, long durationMs, long positionMs,
                long positionElapsedRealtimeMs, float playbackSpeed, String embeddedLyrics) {
            this(dataAvailable, preview, source, playing, generation, title, artist,
                    playbackAvailable, nextAvailable, artwork, mediaId, album, durationMs,
                    positionMs, positionElapsedRealtimeMs, playbackSpeed, embeddedLyrics,
                    MediaSongIdentity.UNKNOWN);
        }

        public MediaSnapshot(boolean dataAvailable, boolean preview, String source,
                boolean playing, int generation, String title, String artist,
                boolean playbackAvailable, boolean nextAvailable, Bitmap artwork,
                String mediaId, String album, long durationMs, long positionMs,
                long positionElapsedRealtimeMs, float playbackSpeed, String embeddedLyrics,
                MediaSongIdentity songIdentity) {
            this(dataAvailable, preview, source, playing, generation, title, artist,
                    playbackAvailable, nextAvailable, artwork, mediaId, album, durationMs,
                    positionMs, positionElapsedRealtimeMs, playbackSpeed, embeddedLyrics, songIdentity,
                    playing ? android.media.session.PlaybackState.STATE_PLAYING
                            : android.media.session.PlaybackState.STATE_PAUSED,
                    0L, -1L, -1, 0L);
        }

        public MediaSnapshot(boolean dataAvailable, boolean preview, String source,
                boolean playing, int generation, String title, String artist,
                boolean playbackAvailable, boolean nextAvailable, Bitmap artwork,
                String mediaId, String album, long durationMs, long positionMs,
                long positionElapsedRealtimeMs, float playbackSpeed, String embeddedLyrics,
                MediaSongIdentity songIdentity, int playbackState, long avrcpEventSequence,
                long avrcpPositionMs, int avrcpPlaybackState, long avrcpElapsedRealtimeMs) {
            this.dataAvailable = dataAvailable;
            this.preview = preview;
            this.source = source;
            this.playing = playing;
            this.generation = generation;
            this.title = title;
            this.artist = artist;
            this.playbackAvailable = playbackAvailable;
            this.nextAvailable = nextAvailable;
            this.artwork = artwork;
            this.mediaId = mediaId == null ? "" : mediaId;
            this.album = album == null ? "" : album;
            this.durationMs = Math.max(0L, durationMs);
            this.positionMs = Math.max(-1L, positionMs);
            this.positionElapsedRealtimeMs = Math.max(0L, positionElapsedRealtimeMs);
            this.playbackSpeed = Float.isNaN(playbackSpeed) || Float.isInfinite(playbackSpeed)
                    ? 0f : playbackSpeed;
            this.embeddedLyrics = embeddedLyrics == null ? "" : embeddedLyrics;
            this.songIdentity = songIdentity == null ? MediaSongIdentity.UNKNOWN : songIdentity;
            this.playbackState = playbackState;
            this.avrcpEventSequence = Math.max(0L, avrcpEventSequence);
            this.avrcpPositionMs = avrcpPositionMs >= 0L && avrcpPositionMs <= 86_400_000L
                    ? avrcpPositionMs : -1L;
            this.avrcpPlaybackState = avrcpPlaybackState >= 0
                    && avrcpPlaybackState <= android.media.session.PlaybackState.STATE_SKIPPING_TO_QUEUE_ITEM
                    ? avrcpPlaybackState : -1;
            this.avrcpElapsedRealtimeMs = Math.max(0L, avrcpElapsedRealtimeMs);
        }

        /** True only for a classified song with usable current metadata. */
        public boolean hasSongMetadata() {
            return songIdentity == MediaSongIdentity.SONG && dataAvailable && !preview
                    && title != null && !title.trim().isEmpty()
                    && !"暂无媒体".equals(title.trim());
        }

        /** Transport correlation only; matching/cache identity belongs to the lyrics core. */
        public String recordingKey() {
            return String.valueOf(source) + '\u001f' + mediaId + '\u001f'
                    + String.valueOf(title) + '\u001f' + String.valueOf(artist) + '\u001f'
                    + album + '\u001f' + durationMs;
        }

        public static MediaSnapshot unavailable() {
            return new MediaSnapshot(false, false, "本机", false, 0,
                    "暂无媒体", "未连接", false, false);
        }
    }

    /**
     * Canonical MediaSession/AVRCP fact, not a sampled render position. The timeline
     * retains this exact instance until a real event changes the trajectory.
     */
    public static final class LyricsPlaybackAnchor {
        private static final LyricsPlaybackAnchor UNKNOWN =
                new LyricsPlaybackAnchor(0L, 0L, 0f, 0L, false, 0L);
        public final long basePositionMs;
        public final long capturedAtMs;
        public final float speed;
        public final long durationMs;
        public final boolean timelineReady;
        public final long revision;

        public LyricsPlaybackAnchor(long basePositionMs, long capturedAtMs, float speed,
                long durationMs, boolean timelineReady, long revision) {
            this.basePositionMs = Math.max(0L, basePositionMs);
            this.capturedAtMs = Math.max(0L, capturedAtMs);
            this.speed = Float.isNaN(speed) || Float.isInfinite(speed) ? 0f : speed;
            this.durationMs = Math.max(0L, durationMs);
            this.timelineReady = timelineReady;
            this.revision = revision;
        }

        /** Pure local sampling. Unknown is distinct from a verified seek to zero. */
        public long sampleAt(long elapsedRealtimeMs) {
            if (!timelineReady) return -1L;
            if (speed == 0f) return durationMs > 0L ? Math.min(basePositionMs, durationMs) : basePositionMs;
            long elapsed = elapsedRealtimeMs > capturedAtMs ? elapsedRealtimeMs - capturedAtMs : 0L;
            double position = Math.max(0.0, basePositionMs + elapsed * (double) speed);
            long sampled = (long) position;
            return durationMs > 0L ? Math.min(sampled, durationMs) : sampled;
        }

        public static LyricsPlaybackAnchor unknown() {
            return UNKNOWN;
        }
    }

    public interface LyricsSnapshotListener {
        void onLyricsSnapshot(LyricsSnapshot snapshot);
    }

    public interface LyricsPort {
        void start(LyricsSnapshotListener listener);
        void update(MediaSnapshot snapshot);
        void stop();
    }

    public static final class LyricsWord {
        public final long startTimeMs;
        public final long endTimeMs;
        public final String text;

        public LyricsWord(long startTimeMs, long endTimeMs, String text) {
            this.startTimeMs = Math.max(0L, startTimeMs);
            this.endTimeMs = Math.max(this.startTimeMs, endTimeMs);
            this.text = text == null ? "" : text;
        }
    }

    public static final class LyricsLine {
        public final long timeMs;
        public final String text;
        public final String translation;
        public final String romanization;
        public final java.util.List<LyricsWord> words;
        public final long endTimeMs;
        public final java.util.List<LyricsWord> backgroundWords;
        public final int speakerSide;

        public LyricsLine(long timeMs, String text, String translation) {
            this(timeMs, text, translation, "", java.util.Collections.<LyricsWord>emptyList());
        }

        public LyricsLine(long timeMs, String text, String translation, String romanization,
                java.util.List<LyricsWord> words) {
            this(timeMs, text, translation, romanization, words, -1L,
                    java.util.Collections.<LyricsWord>emptyList(), 0);
        }

        public LyricsLine(long timeMs, String text, String translation, String romanization,
                java.util.List<LyricsWord> words, long endTimeMs,
                java.util.List<LyricsWord> backgroundWords, int speakerSide) {
            this.timeMs = Math.max(0L, timeMs);
            this.text = text == null ? "" : text;
            this.translation = translation == null ? "" : translation;
            this.romanization = romanization == null ? "" : romanization;
            this.words = java.util.Collections.unmodifiableList(new java.util.ArrayList<>(
                    words == null ? java.util.Collections.<LyricsWord>emptyList() : words));
            this.endTimeMs = endTimeMs >= this.timeMs ? endTimeMs : -1L;
            this.backgroundWords = java.util.Collections.unmodifiableList(new java.util.ArrayList<>(
                    backgroundWords == null ? java.util.Collections.<LyricsWord>emptyList() : backgroundWords));
            this.speakerSide = speakerSide >= 0 && speakerSide <= 3 ? speakerSide : 0;
        }
    }

    public static final class LyricsSnapshot {
        public static final int EMPTY = 0;
        public static final int LOADING = 1;
        public static final int READY = 2;
        public static final int UNAVAILABLE = 3;
        /** A completed lookup with no admitted lyrics; not a transport failure. */
        public static final int NO_MATCH = 4;
        public static final int NETWORK_ERROR = 5;
        /** Explicit provider/lyric evidence for this recording; never a synthetic timeline. */
        public static final int INSTRUMENTAL = 6;
        public final String recordingKey;
        public final int mediaGeneration;
        public final int status;
        public final java.util.List<LyricsLine> lines;
        public final Bitmap artwork;
        public final boolean timed;

        public LyricsSnapshot(String recordingKey, int mediaGeneration, int status,
                java.util.List<LyricsLine> lines, Bitmap artwork) {
            this(recordingKey, mediaGeneration, status, lines, artwork, true);
        }

        public LyricsSnapshot(String recordingKey, int mediaGeneration, int status,
                java.util.List<LyricsLine> lines, Bitmap artwork, boolean timed) {
            this.recordingKey = recordingKey == null ? "" : recordingKey;
            this.mediaGeneration = mediaGeneration;
            this.status = status;
            this.timed = timed;
            this.lines = java.util.Collections.unmodifiableList(new java.util.ArrayList<>(
                    lines == null ? java.util.Collections.<LyricsLine>emptyList() : lines));
            this.artwork = artwork;
        }
    }

    public static final class PreviewVehiclePort implements VehiclePort {
        @Override
        public boolean isAvailable() {
            return false;
        }

        @Override
        public boolean isLockAvailable() {
            return false;
        }

        @Override
        public boolean requestLock(boolean locked, long requestId) {
            return false;
        }

        @Override
        public boolean requestSeatLevel(String seatId, int level, long requestId) {
            return false;
        }

        @Override
        public void start(VehicleSnapshotListener listener) {
            if (listener != null) {
                listener.onVehicleSnapshot(VehicleSnapshot.unavailable());
            }
        }

        @Override
        public void stop() {
        }
    }

    public static final class PreviewMediaPort implements MediaPort {
        @Override
        public boolean isAvailable() {
            return false;
        }

        @Override
        public boolean requestPlayback(boolean playing) {
            return false;
        }

        @Override
        public boolean requestNext() {
            return false;
        }

        @Override
        public boolean requestSource(String source) {
            return false;
        }

        @Override
        public void start(MediaSnapshotListener listener) {
            if (listener != null) {
                listener.onMediaSnapshot(MediaSnapshot.unavailable());
            }
        }

        @Override
        public void stop() {
        }
    }
}
