package com.autonavi.amapauto.content;

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
        boolean isAvailable();

        boolean isLockAvailable();

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
        public final int massageLevel;
        public final int massageModeRaw;
        public final boolean massageSwitchKnown;
        public final boolean massageActive;
        public final boolean seatControlsKnown;
        public final boolean lockKnown;
        public final boolean locked;

        public VehicleSnapshot(boolean dataAvailable, boolean preview, float temperatureC,
                int batteryPercent, int rangeRaw, int chargeState, int chargeConnectionRaw,
                int chargeBmsRaw, int chargeScheduleRaw, float chargePowerKw,
                int chargeRemainingMinutes, int ventilationLevel, int heatingLevel,
                int massageLevel, int massageModeRaw, boolean massageSwitchKnown,
                boolean massageActive, boolean seatControlsKnown, boolean lockKnown, boolean locked) {
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
            this.ventilationLevel = ventilationLevel;
            this.heatingLevel = heatingLevel;
            this.massageLevel = massageLevel;
            this.massageModeRaw = massageModeRaw;
            this.massageSwitchKnown = massageSwitchKnown;
            this.massageActive = massageActive;
            this.seatControlsKnown = seatControlsKnown;
            this.lockKnown = lockKnown;
            this.locked = locked;
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

    public interface LyricsSnapshotListener {
        void onLyricsSnapshot(LyricsSnapshot snapshot);
    }

    public interface LyricsPort {
        void start(LyricsSnapshotListener listener);
        void update(MediaSnapshot snapshot);
        void stop();
    }

    public static final class LyricsLine {
        public final long timeMs;
        public final String text;
        public final String translation;

        public LyricsLine(long timeMs, String text, String translation) {
            this.timeMs = Math.max(0L, timeMs);
            this.text = text == null ? "" : text;
            this.translation = translation == null ? "" : translation;
        }
    }

    public static final class LyricsSnapshot {
        public static final int EMPTY = 0;
        public static final int LOADING = 1;
        public static final int READY = 2;
        public static final int UNAVAILABLE = 3;
        public final String recordingKey;
        public final int mediaGeneration;
        public final int status;
        public final java.util.List<LyricsLine> lines;
        public final Bitmap artwork;

        public LyricsSnapshot(String recordingKey, int mediaGeneration, int status,
                java.util.List<LyricsLine> lines, Bitmap artwork) {
            this.recordingKey = recordingKey == null ? "" : recordingKey;
            this.mediaGeneration = mediaGeneration;
            this.status = status;
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
