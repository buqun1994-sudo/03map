package com.autonavi.amapauto.content;

public final class ContentPorts {
    private ContentPorts() {
    }

    public interface VehicleSnapshotListener {
        void onVehicleSnapshot(VehicleSnapshot snapshot);
    }

    public interface VehiclePort {
        boolean isAvailable();

        boolean isLockAvailable();

        boolean requestLock(boolean locked);

        boolean requestSeatLevel(String seatId, int level);

        void start(VehicleSnapshotListener listener);

        void stop();
    }

    public interface MediaSnapshotListener {
        void onMediaSnapshot(MediaSnapshot snapshot);
    }

    public interface MediaPort {
        boolean isAvailable();

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
        public final int rangeKm;
        public final int chargeState;
        public final float chargePowerKw;
        public final int chargeRemainingMinutes;
        public final int ventilationLevel;
        public final int heatingLevel;
        public final int massageLevel;
        public final boolean seatControlsKnown;
        public final boolean lockKnown;
        public final boolean locked;

        public VehicleSnapshot(boolean dataAvailable, boolean preview, float temperatureC,
                int batteryPercent, int rangeKm, int chargeState, float chargePowerKw,
                int chargeRemainingMinutes, int ventilationLevel, int heatingLevel,
                int massageLevel, boolean seatControlsKnown, boolean lockKnown, boolean locked) {
            this.dataAvailable = dataAvailable;
            this.preview = preview;
            this.temperatureC = temperatureC;
            this.batteryPercent = batteryPercent;
            this.rangeKm = rangeKm;
            this.chargeState = chargeState;
            this.chargePowerKw = chargePowerKw;
            this.chargeRemainingMinutes = chargeRemainingMinutes;
            this.ventilationLevel = ventilationLevel;
            this.heatingLevel = heatingLevel;
            this.massageLevel = massageLevel;
            this.seatControlsKnown = seatControlsKnown;
            this.lockKnown = lockKnown;
            this.locked = locked;
        }

        public static VehicleSnapshot unavailable() {
            return new VehicleSnapshot(false, false, Float.NaN, -1, -1,
                    ContentState.CHARGE_DEFAULT, Float.NaN, -1, -1, -1, -1,
                    false, false, true);
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

        public MediaSnapshot(boolean dataAvailable, boolean preview, String source,
                boolean playing, int generation, String title, String artist,
                boolean playbackAvailable, boolean nextAvailable) {
            this.dataAvailable = dataAvailable;
            this.preview = preview;
            this.source = source;
            this.playing = playing;
            this.generation = generation;
            this.title = title;
            this.artist = artist;
            this.playbackAvailable = playbackAvailable;
            this.nextAvailable = nextAvailable;
        }

        public static MediaSnapshot unavailable() {
            return new MediaSnapshot(false, false, "本机", false, 0,
                    "暂无媒体", "未连接", false, false);
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
        public boolean requestLock(boolean locked) {
            return false;
        }

        @Override
        public boolean requestSeatLevel(String seatId, int level) {
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
