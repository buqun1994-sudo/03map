package com.autonavi.amapauto.content;

import com.icar03.content.model.VehicleControl;

/**
 * OEM Binder protocol owner. Product modes belong to VehicleControl; raw readback
 * values and command values are deliberately separate here. A Write describes a
 * request packet only, never a successful vehicle state.
 */
public final class ContentVehicleProtocol {
    public static final String VEHICLE_SERVICE_PACKAGE = "com.chery.virtualcarservice";
    public static final String VEHICLE_SERVICE_CLASS = "com.chery.virtualcarservice.virtualcar.VirtualCarService";
    public static final String VEHICLE_DESCRIPTOR = "com.chery.canmanager.interfaces.IVirturalCarProperty";
    public static final int TRANSACTION_SEND_DATA = 5;
    public static final int TRANSACTION_SEND_DATA_ARRAY = 6;
    public static final int TRANSACTION_GET_DATA = 7;
    public static final int TRANSACTION_GET_DATA_ARRAY = 8;
    public static final int TRANSACTION_GET_DATA_FLOAT = 13;
    public static final int TRANSACTION_SEND_SEAT_DATA = 37;
    public static final int AREA_DRIVER = 0;
    public static final int AREA_REAR_LEFT = 0x10;
    public static final int AREA_REAR_RIGHT = 0x40;
    public static final int AREA_WINDOW_GROUP = 0x550;
    public static final int LOCK_REQUEST = 1045;
    public static final int LOCK_STATE = 1047;
    public static final int CABIN_TEMPERATURE = 0x110;
    public static final int BATTERY_SOC = 0x306;
    public static final int RANGE_REMAINING = 0x303;
    public static final int CHARGE_CONNECTION = 0x305;
    public static final int CHARGE_BMS = 0x29d;
    public static final int CHARGE_SCHEDULE = 0x308;
    public static final int CHARGE_HV_VOLTAGE = 0x344;
    public static final int CHARGE_HV_CURRENT = 0x345;
    public static final int CHARGE_REMAINING_TIME = 0x43d;
    public static final int CHARGE_REMAINING_TIME_INVALID = 2047;
    public static final int SEAT_HEAT_VENT = 0x212;
    /** Companion readback; this is not an AUTO command function. */
    public static final int SEAT_DRIVER_AUTO_HEAT = 0x282;
    public static final int SEAT_PASSENGER_HEAT_VENT = 0x213;
    /** Passenger companion readback; AUTO is requested through 0x213, never this field. */
    public static final int SEAT_PASSENGER_AUTO_HEAT = 0x34a;
    public static final int STEERING_HEAT = 0x21c;
    /** Companion readback; this is not an AUTO command function. */
    public static final int STEERING_HEAT_ACTIVE = 0x2a5;
    public static final int MASSAGE_SWITCH = 0x241;
    public static final int MASSAGE_STRENGTH = 0x243;
    public static final int MASSAGE_MODE = 0x245;
    public static final int FRONT_WIPER = 608;
    public static final int REAR_WIPER = 609;
    public static final int REAR_WASH = 610;
    public static final int REAR_FOG = 0x21e;
    public static final int REAR_WINDOW_DISABLE = 0x411;
    public static final int REAR_CHILD_LOCK_WRITE = 0x412;
    public static final int REAR_CHILD_LOCK_STATE = 0x418;
    public static final int CENTER_BRIGHTNESS = 0x31a;
    public static final int WIRELESS_CHARGING_SWITCH = 0x238;
    public static final int WIRELESS_CHARGING_STATE = 0x275;
    public static final int WINDOW_COMMAND = 0x217;
    public static final int WINDOW_POSITION = 535;
    public static final int FRONT_WIPER_MAINTENANCE = 0x29f;
    public static final int GLOVE_BOX_REQUEST = 1046;
    public static final int SCREEN_CLEAN_GEAR = 0x255;
    public static final int EXTERNAL_DISCHARGE_SWITCH = 0x25a;
    public static final int EXTERNAL_DISCHARGE_SOC = 0x259;
    public static final int EXTERNAL_DISCHARGE_STATUS = 0x25c;
    public static final int PASSENGER_SEAT_DIRECTION = 0x330;
    public static final int WINDOW_POS_LEFT_FRONT = 0x10;
    public static final int WINDOW_POS_RIGHT_FRONT = 0x40;
    public static final int WINDOW_POS_LEFT_REAR = 0x100;
    public static final int WINDOW_POS_RIGHT_REAR = 0x400;
    private static final int WRITE_REAR_TRIGGER = 2;
    private static final int WRITE_WIPER_OFF = 1;
    private static final int WRITE_WIPER_AUTO = 2;
    public static final int SWITCH_OFF = 1;
    public static final int SWITCH_ON = 2;
    private static final int READ_AUTO_INACTIVE = 1;
    private static final int READ_AUTO_ACTIVE = 2;
    private static final int WRITE_SEAT_AUTO = 8;
    private static final int WRITE_STEERING_AUTO = 4;

    /** A transport property address supplied by a validated profile. */
    public static final class Property {
        public final int functionId;
        public final int area;
        public Property(int functionId, int area) { this.functionId = functionId; this.area = area; }
    }

    /** A finite raw tuple; null cells are explicit don't-care inputs, never executable code. */
    public static final class ReadMode {
        public final int mode;
        private final Integer[] raw;
        public ReadMode(int mode, Integer[] raw) { this.mode = mode; this.raw = raw.clone(); }
        public Integer[] raw() { return raw.clone(); }
        boolean matches(int[] values) {
            if (values.length != raw.length) return false;
            for (int i = 0; i < raw.length; i++) if (raw[i] != null && raw[i] != values[i]) return false;
            return true;
        }
    }

    /** The existing massage initialization sequence, with profile-owned addresses and encodings. */
    public static final class MassagePreparation {
        public final Property switchProperty, modeProperty, strengthProperty;
        public final int off, on, modeMin, modeMax, strengthMin, strengthMax;
        public MassagePreparation(Property switchProperty, Property modeProperty, Property strengthProperty,
                int off, int on, int modeMin, int modeMax, int strengthMin, int strengthMax) {
            this.switchProperty = switchProperty; this.modeProperty = modeProperty; this.strengthProperty = strengthProperty;
            this.off = off; this.on = on; this.modeMin = modeMin; this.modeMax = modeMax;
            this.strengthMin = strengthMin; this.strengthMax = strengthMax;
        }
    }

    /**
     * Validated declarative mapping. The adapter/kind select code already implemented in this APK;
     * profiles can change addresses and finite codecs, but cannot add transactions or scripts.
     */
    public static final class Mapping {
        public final String adapter, kind;
        public final int channel, arrayPrefix;
        public final java.util.List<Property> reads;
        public final java.util.List<ReadMode> readModes;
        public final java.util.Map<Integer, Write> writes;
        public final MassagePreparation preparation;
        public Mapping(String adapter, String kind, int channel, int arrayPrefix, java.util.List<Property> reads,
                java.util.List<ReadMode> readModes, java.util.Map<Integer, Write> writes, MassagePreparation preparation) {
            this.adapter = adapter; this.kind = kind; this.channel = channel; this.arrayPrefix = arrayPrefix;
            this.reads = java.util.Collections.unmodifiableList(new java.util.ArrayList<>(reads));
            this.readModes = java.util.Collections.unmodifiableList(new java.util.ArrayList<>(readModes));
            this.writes = java.util.Collections.unmodifiableMap(new java.util.LinkedHashMap<>(writes));
            this.preparation = preparation;
        }
        public int normalize(int... raw) {
            for (ReadMode row : readModes) if (row.matches(raw)) return row.mode;
            return -1;
        }
        /** Derive independent AUTO evidence from a codec column that separates both semantic classes. */
        public int automaticCompanionState(int[] raw, int automaticMode) {
            if (raw == null) return -1;
            int state = -1;
            for (int column = 0; column < raw.length; column++) {
                java.util.Map<Integer, Integer> classes = new java.util.HashMap<>();
                boolean valid = true, automatic = false, manual = false;
                for (ReadMode row : readModes) {
                    Integer[] inputs = row.raw();
                    if (inputs.length != raw.length || inputs[column] == null) { valid = false; break; }
                    int candidate = row.mode == automaticMode ? 1 : 0;
                    Integer previous = classes.put(inputs[column], candidate);
                    if (previous != null && previous != candidate) { valid = false; break; }
                    automatic |= candidate == 1;
                    manual |= candidate == 0;
                }
                if (!valid || !automatic || !manual) continue;
                Integer candidate = classes.get(raw[column]);
                if (candidate == null) continue;
                if (state >= 0 && state != candidate) return -1;
                state = candidate;
            }
            if (state >= 0) return state;
            int mode = normalize(raw);
            return mode < 0 ? -1 : mode == automaticMode ? 1 : 0;
        }
        public Write write(int semanticMode) { return writes.get(semanticMode); }
        public boolean isVehicle() { return "s56_binder".equals(adapter); }
    }

    /** Fixed numeric/array codecs for existing read-only vehicle facts. */
    public static final class Signal {
        public final Property property;
        public final String kind;
        public final double scale, offset;
        public final int length;
        public final java.util.Map<Integer, Integer> values;
        public Signal(Property property, String kind, double scale, double offset, int length, java.util.Map<Integer, Integer> values) {
            this.property = property; this.kind = kind; this.scale = scale; this.offset = offset; this.length = length;
            this.values = java.util.Collections.unmodifiableMap(new java.util.LinkedHashMap<>(values));
        }
        public int normalize(int raw) {
            if (raw < 0) return -1;
            Integer result = values.get(raw);
            return values.isEmpty() ? raw : result == null ? -1 : result;
        }
        public float normalize(float raw) {
            if (Float.isNaN(raw) || Float.isInfinite(raw) || raw == -1000f) return Float.NaN;
            double result = raw * scale + offset;
            return Double.isNaN(result) || Double.isInfinite(result) || Math.abs(result) > Float.MAX_VALUE ? Float.NaN : (float) result;
        }
    }

    public static Write mappedWrite(int functionId, int area, int value, boolean ensureMassageOn) {
        return new Write(functionId, area, value, ensureMassageOn);
    }

    private ContentVehicleProtocol() {
    }

    /** Immutable target packet; massage initialization is executed by the Adapter. */
    public static final class Write {
        public final int functionId;
        public final int area;
        public final int value;
        public final boolean ensureMassageOn;

        private Write(int functionId, int area, int value, boolean ensureMassageOn) {
            this.functionId = functionId;
            this.area = area;
            this.value = value;
            this.ensureMassageOn = ensureMassageOn;
        }

        private Write(int functionId, int value, boolean ensureMassageOn) {
            this(functionId, AREA_DRIVER, value, ensureMassageOn);
        }
    }

    public static Write lockWrite(boolean locked) {
        return new Write(LOCK_REQUEST, locked ? 1 : 2, false);
    }

    public static boolean supportsLevelControl(String controlId) {
        return controlLevelWrite(controlId, 0) != null;
    }

    public static boolean supportsSeatControl(String controlId) {
        return supportsLevelControl(controlId);
    }

    public static Write seatLevelWrite(String controlId, int level) {
        return controlLevelWrite(controlId, level);
    }

    /**
     * SeatSettingsFragment.lambda$initHotLayout$4 sends 1/4/3/2/8 for
     * OFF/L3/L2/L1/AUTO through AcSignalManager.setLeftSeatHeatVent (0x212/area0).
     * The sibling lambda$initHotLayout$3 uses the same values through the dedicated
     * setRightSeatHeatVent (0x213/area0); its 0x34a companion is read-only as well.
     * HeatWheelControllerImpl.setSteeringWheelHeatModel sends 1/3/2/4 for
     * OFF/L2/L1/AUTO through 0x21c/area0. Neither route writes its companion.
     * The CSV does not list seat command 8; CsvUtils passes unmatched values through.
     */
    public static Write controlLevelWrite(String controlId, int level) {
        VehicleControl control = VehicleControl.fromId(controlId);
        if (control == null || control == VehicleControl.Lock || !control.isLevel(level)) return null;
        switch (control) {
            case Ventilation:
                return new Write(SEAT_HEAT_VENT, level == 0 ? SWITCH_OFF : level + 4, false);
            case Heating:
            case PassengerHeating:
                return new Write(control == VehicleControl.Heating ? SEAT_HEAT_VENT : SEAT_PASSENGER_HEAT_VENT,
                        control.isAutomatic(level) ? WRITE_SEAT_AUTO : level + 1, false);
            case SteeringHeat:
                return new Write(STEERING_HEAT,
                        control.isAutomatic(level) ? WRITE_STEERING_AUTO : level + 1, false);
            case Wiper:
                return new Write(FRONT_WIPER, level == 0 ? WRITE_WIPER_OFF
                        : control.isAutomatic(level) ? WRITE_WIPER_AUTO : level + 2, false);
            case RearWiper:
                return rearWindowWrite(controlId);
            case RearWash:
                return null; // A wash accepts only the explicit one-shot trigger contract.
            case Massage:
                return level == 0 ? new Write(MASSAGE_SWITCH, SWITCH_OFF, false)
                        : new Write(MASSAGE_STRENGTH, level, true);
            default:
                return null;
        }
    }

    /** Section22: both requests always send2. Rear wiper toggles; wash self-resets.
     * RX1/RX2 are actual OFF/active, never a choice between write1 and write2. */
    public static Write rearWindowWrite(String controlId) {
        VehicleControl control = VehicleControl.fromId(controlId);
        if (control == VehicleControl.RearWiper) return new Write(REAR_WIPER, WRITE_REAR_TRIGGER, false);
        if (control == VehicleControl.RearWash) return new Write(REAR_WASH, WRITE_REAR_TRIGGER, false);
        return null;
    }

    /** Feature requests use normalized target 0/1; the adapter owns readback confirmation. */
    public static Write featureWrite(String featureId, int target) {
        com.icar03.content.model.VehicleFeature feature =
                com.icar03.content.model.VehicleFeature.fromId(featureId);
        if (feature == null || target < 0 || target > 1) return null;
        switch (feature) {
            case RearFog:
                // OEM rear-fog setter is a toggle trigger, not an absolute 1/2 setter.
                return new Write(REAR_FOG, WRITE_REAR_TRIGGER, false);
            case PassengerWindowLock:
                return new Write(REAR_WINDOW_DISABLE, target == 1 ? 1 : 2, false);
            case WiperMaintenance:
                return target == 1 ? new Write(FRONT_WIPER_MAINTENANCE, 2, false) : null;
            case GloveBox:
                return target == 1 ? new Write(GLOVE_BOX_REQUEST, 2, false) : null;
            case LeftChildLock:
                // OEM setter: left child lock uses TX3=locked and TX2=unlocked.
                return new Write(REAR_CHILD_LOCK_WRITE, AREA_REAR_LEFT, target == 1 ? 3 : 2, false);
            case RightChildLock:
                // OEM setter: right child lock uses TX3=locked and TX2=unlocked.
                return new Write(REAR_CHILD_LOCK_WRITE, AREA_REAR_RIGHT, target == 1 ? 3 : 2, false);
            case WirelessCharging:
                return new Write(WIRELESS_CHARGING_SWITCH, target == 1 ? SWITCH_ON : SWITCH_OFF, false);
            case WindowVent:
                return new Write(WINDOW_COMMAND, AREA_WINDOW_GROUP, target == 1 ? 1 : 5, false);
            case ExternalDischarge:
                return new Write(EXTERNAL_DISCHARGE_SWITCH, target == 1 ? SWITCH_ON : SWITCH_OFF, false);
            case PassengerSeatAdjust:
                return null; // Direction/stop values remain deliberately unguessed.
            default:
                return null;
        }
    }

    public static int[] centerBrightnessWrite(int level) {
        // TX uses [1, level]; the OEM readback uses [255, level].
        return level >= 1 && level <= 10 ? new int[] {1, level} : null;
    }

    public static int normalizeBinarySwitch(int raw) {
        return raw == SWITCH_OFF ? 0 : raw == SWITCH_ON ? 1 : -1;
    }

    public static int normalizePassengerWindowLock(int raw) {
        return raw == 1 ? 1 : raw == 2 ? 0 : -1;
    }

    public static int normalizeChildLock(int raw) {
        return raw == 1 ? 0 : raw == 2 ? 1 : -1;
    }

    public static int normalizeWiperMaintenance(int raw) {
        return raw == 1 ? 0 : raw == 2 ? 1 : -1;
    }

    public static int normalizeWindowMode(int[] positions) {
        if (positions == null || positions.length != 4) return -1;
        boolean vent = true;
        boolean closed = true;
        for (int position : positions) {
            vent &= position == 1;
            closed &= position == 5;
        }
        return vent ? 1 : closed ? 0 : -1;
    }

    public static int normalizeCenterBrightness(java.util.List<Integer> values) {
        if (values == null || values.size() != 2 || values.get(0) == null || values.get(1) == null
                || values.get(0) != 255 || values.get(1) < 1 || values.get(1) > 10) return -1;
        return values.get(1);
    }

    public static boolean isKnownExternalStatus(java.util.List<Float> values) {
        return values != null && values.size() == 7;
    }

    /** Research section19: RX0=OFF, RX1=AUTO, RX2..5=manual1..4.
     * The first OFF sample returning1 remains a runtime verification boundary;
     * it is never reinterpreted as a different encoding or a successful request. */
    public static int normalizeWiperLevel(int raw) {
        if (raw == 0) return 0;
        if (raw == 1) return VehicleControl.Wiper.getAutomaticLevel();
        return raw >= 2 && raw <= 5 ? raw - 1 : -1;
    }

    public static int normalizeRearWindowLevel(int raw) {
        return raw == 1 ? 0 : raw == 2 ? 1 : -1;
    }


    public static boolean isKnownHeatingAuto(int raw) {
        return raw == READ_AUTO_INACTIVE || raw == READ_AUTO_ACTIVE;
    }

    public static boolean isHeatingAutoActive(int raw) {
        return raw == READ_AUTO_ACTIVE;
    }

    public static int normalizeVentilationLevel(int seatRaw) {
        if (seatRaw >= 1 && seatRaw <= 4) return 0;
        return seatRaw >= 5 && seatRaw <= 7 ? seatRaw - 4 : -1;
    }

    /**
     * updateSeatHot uses AUTO positions 5..7 while main 2..4 is actively heating,
     * and position4 when AUTO has no active heating level. Valid AUTO readback is
     * main1..4/auto2, not the command value8 echoed as a state.
     */
    public static int normalizeHeatingLevel(int seatRaw, int heatingAutoRaw) {
        return normalizeHeatingLevel(VehicleControl.Heating, seatRaw, heatingAutoRaw);
    }

    /** The raw encoding is shared; each seat consumes only its own two fields. */
    public static int normalizeHeatingLevel(VehicleControl control, int seatRaw, int heatingAutoRaw) {
        if (control != VehicleControl.Heating && control != VehicleControl.PassengerHeating) return -1;
        if (heatingAutoRaw == READ_AUTO_INACTIVE) {
            if (seatRaw >= 1 && seatRaw <= 4) return seatRaw - 1;
            // The composite reports ventilation 1..3, so manual heating is OFF.
            // updateSeatHot selects position0 for these valid non-heating states.
            return seatRaw >= 5 && seatRaw <= 7 ? 0 : -1;
        }
        return heatingAutoRaw == READ_AUTO_ACTIVE && seatRaw >= 1 && seatRaw <= 4
                ? control.getAutomaticLevel() : -1;
    }

    /** setNowBackground preserves AUTO for every known live heat level (main1..3). */
    public static int normalizeSteeringLevel(int steeringRaw, int activeRaw) {
        if (steeringRaw < 1 || steeringRaw > 3) return -1;
        if (activeRaw == READ_AUTO_ACTIVE) return VehicleControl.SteeringHeat.getAutomaticLevel();
        return activeRaw == READ_AUTO_INACTIVE ? steeringRaw - 1 : -1;
    }

    public static boolean isKnownMassageSwitch(int raw) {
        return raw == SWITCH_OFF || raw == SWITCH_ON;
    }

    public static boolean isMassageActive(int raw) {
        return raw == SWITCH_ON;
    }

    public static int normalizeMassageLevel(int switchRaw, int strengthRaw) {
        if (switchRaw == SWITCH_OFF) return 0;
        return switchRaw == SWITCH_ON && strengthRaw >= 1 && strengthRaw <= 3 ? strengthRaw : -1;
    }

    public static boolean isKnownLockState(int raw) {
        return raw == 1 || raw == 2;
    }

    public static boolean isLocked(int raw) {
        return raw == 1;
    }
}
