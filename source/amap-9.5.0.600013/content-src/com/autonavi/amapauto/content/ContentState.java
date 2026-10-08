package com.autonavi.amapauto.content;

import com.icar03.content.model.VehicleControl;
import com.icar03.content.model.VehicleGear;
import com.icar03.content.model.LyricPreferenceRules;

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
    public boolean showIndoorTemperature = true;
    public boolean showBattery = true;
    public boolean showRange = true;
    public boolean showChargingStatus = true;
    public boolean showPluggedStatus = true;
    public boolean showScheduledCharging = true;
    public boolean showChargingRemainingTime = true;
    public boolean showChargingPower = true;
    public float lyricsFontScale = 1.0f;
    public int lyricsLineSpacing = 1;
    // New independent lyric preferences. The legacy scale/spacing fields above remain for API compatibility.
    public float lyricsFontSizeSp = LyricPreferenceRules.DEFAULT_FONT_SP;
    public float lyricsCurrentFontSizeSp = LyricPreferenceRules.DEFAULT_CURRENT_SP;
    public float lyricsLineGapDp = 28.0f;
    public String lyricsAlignment = "left";
    public String lyricsColorMode = "theme";
    public int lyricsCustomColor = 0xFF5C66BF;
    public String lyricsCurrentColorMode = "theme";
    public int lyricsCurrentCustomColor = 0xFF5C66BF;
    public float lyricsImmersiveFontSizeSp = 120.0f;
    public float lyricsImmersiveCurrentFontSizeSp = 144.0f;
    public float lyricsImmersiveLineGapDp = 84.0f;
    public boolean lyricsShowTranslation = true;
    public boolean lyricsSpeakerLayout = true;
    public boolean lyricsHighlight = LyricPreferenceRules.DEFAULT_HIGHLIGHT;
    public boolean immersiveShowTopBar = true;
    public boolean immersiveTopBarKeepSplit = true;
    public boolean immersiveShowDock = true;
    public boolean showAmbientArtwork = true;
    public boolean showMediaSourceSwitcher = true;
    public int dockButtonCount = 6;
    public boolean showActionFeedback = true;
    public boolean autoCloseSettingsOnDrive = true;
    public boolean gestureBarReminder = true;
    public float uiOpacity = 1.0f;
    public long nowMillis;
    public boolean vehicleDataAvailable;
    public boolean vehiclePreview;
    public VehicleGear gear = VehicleGear.Unknown;
    // A reducer event cursor, never persisted or inferred from a UI frame.
    public long settingsAutoCloseSequence;
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
    // Tail extensions: normalized domain modes, independent of seat readback.
    public int wiperLevel = -1;
    public boolean wiperKnown;
    public int rearWiperLevel = -1;
    public boolean rearWiperKnown;
    public int rearWashLevel = -1;
    public boolean rearWashKnown;
    // New shortcut-page feature actuals: normalized 0/1, -1 means unknown.
    public int rearFogLevel = -1;
    public boolean rearFogKnown;
    public int passengerWindowLockLevel = -1;
    public boolean passengerWindowLockKnown;
    public int wiperMaintenanceLevel = -1;
    public boolean wiperMaintenanceKnown;
    public int leftChildLockLevel = -1;
    public boolean leftChildLockKnown;
    public int rightChildLockLevel = -1;
    public boolean rightChildLockKnown;
    public int wirelessChargingLevel = -1;
    public boolean wirelessChargingKnown;
    public int windowVentLevel = -1;
    public boolean windowVentKnown;
    public int externalDischargeLevel = -1;
    public boolean externalDischargeKnown;
    public int passengerSeatAdjustLevel = -1;
    public boolean passengerSeatAdjustKnown;
    public int centerBrightnessLevel = -1;
    public boolean centerBrightnessKnown;
    public int wirelessChargingActualLevel = -1;
    public boolean wirelessChargingActualKnown;
    public int[] windowPositions = new int[] {-1, -1, -1, -1};
    public boolean windowPositionsKnown;
    public float[] externalDischargeStatus = new float[0];
    public boolean externalDischargeStatusKnown;
    public int externalConnectionRaw = -1;
    public int screenGearRaw = -1;
    public boolean screenGearKnown;
    public int pendingFeatureTarget = -1;
    private java.util.Map<String, Integer> rememberedControlLevels = java.util.Collections.emptyMap();

    public java.util.Map<String, Integer> getRememberedControlLevels() {
        return rememberedControlLevels;
    }

    /** Freeze only on assignment; all snapshots can safely share this immutable value. */
    public void setRememberedControlLevels(java.util.Map<String, Integer> levels) {
        if (levels == null || levels.isEmpty()) {
            rememberedControlLevels = java.util.Collections.emptyMap();
        } else {
            java.util.Map<String, Integer> manualLevels = new java.util.HashMap<>(levels);
            manualLevels.remove(VehicleControl.RearWiper.getId());
            manualLevels.remove(VehicleControl.RearWash.getId());
            if (!rememberedControlLevels.equals(manualLevels)) {
                rememberedControlLevels = java.util.Collections.unmodifiableMap(manualLevels);
            }
        }
    }

    public int rememberedLevel(VehicleControl control) {
        Integer level = rememberedControlLevels.get(control.getId());
        return control.rememberedManualLevel(level == null ? -1 : level);
    }

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
            case Wiper: return wiperKnown ? control.normalizeLevel(wiperLevel) : -1;
            case RearWiper: return rearWiperKnown ? control.normalizeLevel(rearWiperLevel) : -1;
            case RearWash: return rearWashKnown ? control.normalizeLevel(rearWashLevel) : -1;
            case Massage: return ContentPorts.VehicleSnapshot.consistentMassageLevel(
                    massageLevel, massageSwitchKnown, massageActive);
            default: return -1;
        }
    }

    public int featureLevel(String featureId) {
        if (featureId == null) return -1;
        switch (featureId) {
            case "rear_fog": return rearFogKnown ? rearFogLevel : -1;
            case "passenger_window_lock": return passengerWindowLockKnown ? passengerWindowLockLevel : -1;
            case "wiper_maintenance": return wiperMaintenanceKnown ? wiperMaintenanceLevel : -1;
            case "glove_box": return -1;
            case "left_child_lock": return leftChildLockKnown ? leftChildLockLevel : -1;
            case "right_child_lock": return rightChildLockKnown ? rightChildLockLevel : -1;
            case "wireless_charging": return wirelessChargingKnown ? wirelessChargingLevel : -1;
            case "window_vent": return windowVentKnown ? windowVentLevel : -1;
            case "external_discharge": return externalDischargeKnown ? externalDischargeLevel : -1;
            case "passenger_seat_adjust": return -1;
            default: return -1;
        }
    }

    public ContentState copy() {
        ContentState copy = new ContentState();
        copy.themeMode = themeMode;
        copy.showWeekday = showWeekday;
        copy.showSeconds = showSeconds;
        copy.showIndoorTemperature = showIndoorTemperature;
        copy.showBattery = showBattery;
        copy.showRange = showRange;
        copy.showChargingStatus = showChargingStatus;
        copy.showPluggedStatus = showPluggedStatus;
        copy.showScheduledCharging = showScheduledCharging;
        copy.showChargingRemainingTime = showChargingRemainingTime;
        copy.showChargingPower = showChargingPower;
        copy.lyricsFontScale = lyricsFontScale;
        copy.lyricsLineSpacing = lyricsLineSpacing;
        copy.lyricsFontSizeSp = lyricsFontSizeSp;
        copy.lyricsCurrentFontSizeSp = lyricsCurrentFontSizeSp;
        copy.lyricsLineGapDp = lyricsLineGapDp;
        copy.lyricsAlignment = lyricsAlignment;
        copy.lyricsColorMode = lyricsColorMode;
        copy.lyricsCustomColor = lyricsCustomColor;
        copy.lyricsCurrentColorMode = lyricsCurrentColorMode;
        copy.lyricsCurrentCustomColor = lyricsCurrentCustomColor;
        copy.lyricsImmersiveFontSizeSp = lyricsImmersiveFontSizeSp;
        copy.lyricsImmersiveCurrentFontSizeSp = lyricsImmersiveCurrentFontSizeSp;
        copy.lyricsImmersiveLineGapDp = lyricsImmersiveLineGapDp;
        copy.lyricsShowTranslation = lyricsShowTranslation;
        copy.lyricsSpeakerLayout = lyricsSpeakerLayout;
        copy.lyricsHighlight = lyricsHighlight;
        copy.immersiveShowTopBar = immersiveShowTopBar;
        copy.immersiveTopBarKeepSplit = immersiveTopBarKeepSplit;
        copy.immersiveShowDock = immersiveShowDock;
        copy.showAmbientArtwork = showAmbientArtwork;
        copy.showMediaSourceSwitcher = showMediaSourceSwitcher;
        copy.dockButtonCount = dockButtonCount;
        copy.showActionFeedback = showActionFeedback;
        copy.autoCloseSettingsOnDrive = autoCloseSettingsOnDrive;
        copy.gestureBarReminder = gestureBarReminder;
        copy.uiOpacity = uiOpacity;
        copy.nowMillis = nowMillis;
        copy.vehicleDataAvailable = vehicleDataAvailable;
        copy.vehiclePreview = vehiclePreview;
        copy.gear = gear;
        copy.settingsAutoCloseSequence = settingsAutoCloseSequence;
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
        copy.wiperLevel = wiperKnown ? VehicleControl.Wiper.normalizeLevel(wiperLevel) : -1;
        copy.wiperKnown = copy.wiperLevel >= 0;
        copy.rearWiperLevel = rearWiperKnown ? VehicleControl.RearWiper.normalizeLevel(rearWiperLevel) : -1;
        copy.rearWiperKnown = copy.rearWiperLevel >= 0;
        copy.rearWashLevel = rearWashKnown ? VehicleControl.RearWash.normalizeLevel(rearWashLevel) : -1;
        copy.rearWashKnown = copy.rearWashLevel >= 0;
        copy.rearFogLevel = rearFogLevel;
         copy.rearFogKnown = rearFogKnown;
         copy.passengerWindowLockLevel = passengerWindowLockLevel;
         copy.passengerWindowLockKnown = passengerWindowLockKnown;
         copy.wiperMaintenanceLevel = wiperMaintenanceLevel;
         copy.wiperMaintenanceKnown = wiperMaintenanceKnown;
         copy.leftChildLockLevel = leftChildLockLevel;
         copy.leftChildLockKnown = leftChildLockKnown;
         copy.rightChildLockLevel = rightChildLockLevel;
         copy.rightChildLockKnown = rightChildLockKnown;
         copy.wirelessChargingLevel = wirelessChargingLevel;
         copy.wirelessChargingKnown = wirelessChargingKnown;
         copy.windowVentLevel = windowVentLevel;
         copy.windowVentKnown = windowVentKnown;
         copy.externalDischargeLevel = externalDischargeLevel;
         copy.externalDischargeKnown = externalDischargeKnown;
         copy.passengerSeatAdjustLevel = passengerSeatAdjustLevel;
         copy.passengerSeatAdjustKnown = passengerSeatAdjustKnown;
         copy.centerBrightnessLevel = centerBrightnessLevel;
         copy.centerBrightnessKnown = centerBrightnessKnown;
         copy.wirelessChargingActualLevel = wirelessChargingActualLevel;
         copy.wirelessChargingActualKnown = wirelessChargingActualKnown;
         copy.windowPositions = windowPositions == null ? new int[] {-1, -1, -1, -1} : windowPositions.clone();
         copy.windowPositionsKnown = windowPositionsKnown;
         copy.externalDischargeStatus = externalDischargeStatus == null ? new float[0] : externalDischargeStatus.clone();
         copy.externalDischargeStatusKnown = externalDischargeStatusKnown;
         copy.externalConnectionRaw = externalConnectionRaw;
         copy.screenGearRaw = screenGearRaw;
         copy.screenGearKnown = screenGearKnown;
         copy.pendingFeatureTarget = pendingFeatureTarget;
         copy.rememberedControlLevels = rememberedControlLevels;

        return copy;
    }
}
