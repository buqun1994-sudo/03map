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
    public static final int TRANSACTION_GET_DATA = 7;
    public static final int TRANSACTION_GET_DATA_FLOAT = 13;
    public static final int AREA_DRIVER = 0;
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
    public static final int SWITCH_OFF = 1;
    public static final int SWITCH_ON = 2;
    private static final int READ_AUTO_INACTIVE = 1;
    private static final int READ_AUTO_ACTIVE = 2;
    private static final int WRITE_SEAT_AUTO = 8;
    private static final int WRITE_STEERING_AUTO = 4;

    private ContentVehicleProtocol() {
    }

    /** Immutable target packet; massage initialization is executed by the Adapter. */
    public static final class Write {
        public final int functionId;
        public final int value;
        public final boolean ensureMassageOn;

        private Write(int functionId, int value, boolean ensureMassageOn) {
            this.functionId = functionId;
            this.value = value;
            this.ensureMassageOn = ensureMassageOn;
        }
    }

    public static Write lockWrite(boolean locked) {
        return new Write(LOCK_REQUEST, locked ? 1 : 2, false);
    }

    public static boolean supportsSeatControl(String controlId) {
        return seatLevelWrite(controlId, 0) != null;
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
    public static Write seatLevelWrite(String controlId, int level) {
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
            case Massage:
                return level == 0 ? new Write(MASSAGE_SWITCH, SWITCH_OFF, false)
                        : new Write(MASSAGE_STRENGTH, level, true);
            default:
                return null;
        }
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
