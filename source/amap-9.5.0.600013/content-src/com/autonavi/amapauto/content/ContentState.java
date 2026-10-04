package com.autonavi.amapauto.content;

import com.icar03.content.model.VehicleControl;

import android.graphics.Bitmap;

public final class ContentState {
    public static final int THEME_LIGHT = 0;
    public static final int THEME_DARK = 1;
    public static final int CHARGE_DEFAULT = 0;
    public static final int CHARGE_UNKNOWN = -1;
    public static final int CHARGE_PLUGGED = 1;
    public static final int CHARGE_SCHEDULED = 2;
    public static final int CHARGE_CHARGING = 3;
    public static final int CHARGE_COMPLETE = 5;
    public static final int COMMAND_NONE = 0;
    public static final int COMMAND_FAILED = 1;
    public static final int COMMAND_PENDING = 2;

    public int themeMode = THEME_LIGHT;
    public boolean showWeekday = true;
    public boolean showSeconds;
    public long nowMillis;
    public boolean vehicleDataAvailable;
    public boolean vehiclePreview;
    // Derived only by ContentStore when publishing a snapshot, never a second policy owner.
    public boolean vehicleWriteAvailable;
    public boolean lockWriteAvailable;
    public java.util.Set<String> writableSeatControls = java.util.Collections.emptySet();
    public float temperatureC = Float.NaN;
    public int batteryPercent = -1;
    public int rangeRaw = -1;
    public int chargeState = CHARGE_UNKNOWN;
    public int chargeConnectionRaw = -1;
    public int chargeBmsRaw = -1;
    public int chargeScheduleRaw = -1;
    public float chargePowerKw = Float.NaN;
    public int chargeRemainingMinutes = -1;
    public int pageIndex = 1;
    public int controlIndex;
    public boolean mediaDataAvailable;
    public boolean mediaPreview;
    public boolean mediaSourceWriteAvailable;
    public String mediaSource = "本机音乐";
    public String pendingSource = "";
    public boolean mediaPlaying;
    public ContentPorts.MediaSongIdentity mediaSongIdentity = ContentPorts.MediaSongIdentity.UNKNOWN;
    public int mediaGeneration;
    public String mediaTitle = "暂无媒体";
    public String mediaArtist = "未连接";
    public boolean mediaPlaybackAvailable;
    public boolean mediaNextAvailable;
    public boolean mediaNextPending;
    public int mediaPlaybackTarget = -1;
    public Bitmap mediaArtwork;
    public String mediaRecordingKey = "";
    // Stable identity projected from the sole lyrics timeline recording tracker.
    public long mediaRecordingGeneration;
    public String mediaId = "";
    public String mediaAlbum = "";
    public long mediaDurationMs;
    public int lyricsStatus = ContentPorts.LyricsSnapshot.EMPTY;
    public java.util.List<ContentPorts.LyricsLine> lyricsLines = java.util.Collections.emptyList();
    public int lyricsActiveIndex = -1;
    public int lyricsScrollIndex = -1;
    public int[] lyricsActiveIndices = new int[0];
    public long lyricsGapStartMs = -1L;
    public long lyricsGapEndMs = -1L;
    public boolean lyricsTimed = true;
    public boolean lyricsTimelineReady;
    public ContentPorts.LyricsPlaybackAnchor lyricsAnchor = ContentPorts.LyricsPlaybackAnchor.unknown();
    // Low-frequency semantic event sample; continuous render time comes only from lyricsAnchor.
    public long lyricsPositionMs = -1L;
    public float lyricsPlaybackSpeed;
    public long lyricsPositionCapturedAtMs;
    public int ventilationLevel = -1;
    public int heatingLevel = -1;
    public boolean heatingAutoKnown;
    public boolean heatingAutoActive;
    public int passengerHeatingLevel = -1;
    public boolean passengerHeatingAutoKnown;
    public boolean passengerHeatingAutoActive;
    public int steeringHeatLevel = -1;
    public int massageLevel = -1;
    public int massageModeRaw = -1;
    public boolean massageSwitchKnown;
    public boolean massageActive;
    public boolean seatControlsKnown;
    public boolean lockKnown;
    public boolean locked = true;
    public int commandStatus = COMMAND_NONE;
    public long commandSequence;
    public String commandMessage = "";
    public String pendingVehicleCommand = "";
    public int pendingSeatLevel = -1;
    public boolean pendingLocked;
    public String[] dockItems = ContentRegistry.defaultDockItems();

    /** Canonical actual mode; raw companion evidence stays in this snapshot only. */
    public int controlLevel(VehicleControl control) {
        switch (control) {
            case Lock: return lockKnown ? (locked ? 1 : 0) : -1;
            case Ventilation: return control.normalizeLevel(ventilationLevel);
            case Heating: return ContentPorts.VehicleSnapshot.consistentHeatingLevel(
                    control, heatingLevel, heatingAutoKnown, heatingAutoActive);
            case PassengerHeating: return ContentPorts.VehicleSnapshot.consistentHeatingLevel(
                    control, passengerHeatingLevel, passengerHeatingAutoKnown, passengerHeatingAutoActive);
            case SteeringHeat: return control.normalizeLevel(steeringHeatLevel);
            case Massage: return ContentPorts.VehicleSnapshot.consistentMassageLevel(
                    massageLevel, massageSwitchKnown, massageActive);
            default: return -1;
        }
    }

    public ContentState copy() {
        ContentState copy = new ContentState();
        copy.themeMode = themeMode;
        copy.showWeekday = showWeekday;
        copy.showSeconds = showSeconds;
        copy.nowMillis = nowMillis;
        copy.vehicleDataAvailable = vehicleDataAvailable;
        copy.vehiclePreview = vehiclePreview;
        copy.vehicleWriteAvailable = vehicleWriteAvailable;
        copy.lockWriteAvailable = lockWriteAvailable;
        copy.writableSeatControls = writableSeatControls;
        copy.temperatureC = temperatureC;
        copy.batteryPercent = batteryPercent;
        copy.rangeRaw = rangeRaw;
        copy.chargeState = chargeState;
        copy.chargeConnectionRaw = chargeConnectionRaw;
        copy.chargeBmsRaw = chargeBmsRaw;
        copy.chargeScheduleRaw = chargeScheduleRaw;
        copy.chargePowerKw = chargePowerKw;
        copy.chargeRemainingMinutes = chargeRemainingMinutes;
        copy.pageIndex = pageIndex;
        copy.controlIndex = controlIndex;
        copy.mediaDataAvailable = mediaDataAvailable;
        copy.mediaPreview = mediaPreview;
        copy.mediaSourceWriteAvailable = mediaSourceWriteAvailable;
        copy.mediaSource = mediaSource;
        copy.pendingSource = pendingSource;
        copy.mediaPlaying = mediaPlaying;
        copy.mediaSongIdentity = mediaSongIdentity;
        copy.mediaGeneration = mediaGeneration;
        copy.mediaTitle = mediaTitle;
        copy.mediaArtist = mediaArtist;
        copy.mediaPlaybackAvailable = mediaPlaybackAvailable;
        copy.mediaNextAvailable = mediaNextAvailable;
        copy.mediaNextPending = mediaNextPending;
        copy.mediaPlaybackTarget = mediaPlaybackTarget;
        copy.mediaArtwork = mediaArtwork;
        copy.mediaRecordingKey = mediaRecordingKey;
        copy.mediaRecordingGeneration = mediaRecordingGeneration;
        copy.mediaId = mediaId;
        copy.mediaAlbum = mediaAlbum;
        copy.mediaDurationMs = mediaDurationMs;
        copy.lyricsStatus = lyricsStatus;
        copy.lyricsLines = lyricsLines;
        copy.lyricsActiveIndex = lyricsActiveIndex;
        copy.lyricsScrollIndex = lyricsScrollIndex;
        copy.lyricsActiveIndices = lyricsActiveIndices.clone();
        copy.lyricsGapStartMs = lyricsGapStartMs;
        copy.lyricsGapEndMs = lyricsGapEndMs;
        copy.lyricsTimed = lyricsTimed;
        copy.lyricsTimelineReady = lyricsTimelineReady;
        copy.lyricsAnchor = lyricsAnchor;
        copy.lyricsPositionMs = lyricsPositionMs;
        copy.lyricsPlaybackSpeed = lyricsPlaybackSpeed;
        copy.lyricsPositionCapturedAtMs = lyricsPositionCapturedAtMs;
        copy.ventilationLevel = ventilationLevel;
        copy.heatingLevel = ContentPorts.VehicleSnapshot.consistentHeatingLevel(
                heatingLevel, heatingAutoKnown, heatingAutoActive);
        copy.heatingAutoKnown = heatingAutoKnown;
        copy.heatingAutoActive = heatingAutoKnown && heatingAutoActive;
        copy.passengerHeatingLevel = ContentPorts.VehicleSnapshot.consistentHeatingLevel(VehicleControl.PassengerHeating,
                passengerHeatingLevel, passengerHeatingAutoKnown, passengerHeatingAutoActive);
        copy.passengerHeatingAutoKnown = passengerHeatingAutoKnown;
        copy.passengerHeatingAutoActive = passengerHeatingAutoKnown && passengerHeatingAutoActive;
        copy.steeringHeatLevel = steeringHeatLevel;
        copy.massageLevel = ContentPorts.VehicleSnapshot.consistentMassageLevel(
                massageLevel, massageSwitchKnown, massageActive);
        copy.massageModeRaw = massageModeRaw;
        copy.massageSwitchKnown = massageSwitchKnown;
        copy.massageActive = massageActive;
        copy.seatControlsKnown = seatControlsKnown;
        copy.lockKnown = lockKnown;
        copy.locked = locked;
        copy.commandStatus = commandStatus;
        copy.commandSequence = commandSequence;
        copy.commandMessage = commandMessage;
        copy.pendingVehicleCommand = pendingVehicleCommand;
        copy.pendingSeatLevel = pendingSeatLevel;
        copy.pendingLocked = pendingLocked;
        copy.dockItems = dockItems.clone();
        return copy;
    }
}
