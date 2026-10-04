package com.autonavi.amapauto.content;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;

import com.icar03.content.model.VehicleControl;

import static com.autonavi.amapauto.content.ContentVehicleProtocol.*;

public final class ContentVehicleAdapter implements ContentPorts.VehiclePort {
    private static final String TAG = "ContentVehicleAdapter";
    private static final long POLL_INTERVAL_MS = 1500L;
    private static final long REBIND_INTERVAL_MS = 3000L;
    private static final long BIND_TIMEOUT_MS = 5000L;
    private static final long MASSAGE_START_TIMEOUT_MS = 2000L;

    private final Context context;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final Runnable pollRunnable = new Runnable() {
        @Override
        public void run() {
            IBinder currentBinder;
            Handler worker;
            synchronized (ContentVehicleAdapter.this) {
                if (!running || binder == null) {
                    return;
                }
                currentBinder = binder;
                worker = workerHandler;
            }
            publish(readSnapshot(currentBinder), currentBinder);
            synchronized (ContentVehicleAdapter.this) {
                if (running && binder == currentBinder && worker == workerHandler) {
                    worker.postDelayed(this, POLL_INTERVAL_MS);
                }
            }
        }
    };
    private final Runnable bindTimeout = new Runnable() {
        @Override
        public void run() {
            synchronized (ContentVehicleAdapter.this) {
                if (!running || binder != null) {
                    return;
                }
            }
            reconnect();
        }
    };
    private final Runnable retryBind = new Runnable() {
        @Override
        public void run() {
            bindVehicleService();
        }
    };
    private final ServiceConnection serviceConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, final IBinder service) {
            final Handler worker;
            synchronized (ContentVehicleAdapter.this) {
                if (!running) {
                    return;
                }
                worker = workerHandler;
            }
            worker.post(new Runnable() {
                @Override
                public void run() {
                    try {
                        if (!VEHICLE_DESCRIPTOR.equals(service.getInterfaceDescriptor())) {
                            throw new RemoteException("unexpected vehicle service descriptor");
                        }
                        synchronized (ContentVehicleAdapter.this) {
                            if (!running || worker != workerHandler) {
                                return;
                            }
                            binder = service;
                            latestSnapshot = ContentPorts.VehicleSnapshot.unavailable();
                        }
                        mainHandler.removeCallbacks(bindTimeout);
                        worker.removeCallbacks(pollRunnable);
                        worker.post(pollRunnable);
                    } catch (RemoteException | RuntimeException error) {
                        Log.w(TAG, "vehicle service rejected", error);
                        mainHandler.post(new Runnable() {
                            @Override
                            public void run() {
                                reconnect();
                            }
                        });
                    }
                }
            });
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
            synchronized (ContentVehicleAdapter.this) {
                binder = null;
                latestSnapshot = ContentPorts.VehicleSnapshot.unavailable();
                if (workerHandler != null) {
                    workerHandler.removeCallbacks(pollRunnable);
                }
            }
            publish(ContentPorts.VehicleSnapshot.unavailable(), null);
            mainHandler.removeCallbacks(bindTimeout);
            mainHandler.postDelayed(bindTimeout, BIND_TIMEOUT_MS);
        }

        @Override
        public void onBindingDied(ComponentName name) {
            reconnect();
        }

        @Override
        public void onNullBinding(ComponentName name) {
            reconnect();
        }
    };

    private ContentPorts.VehicleSnapshotListener listener;
    private HandlerThread workerThread;
    private Handler workerHandler;
    private IBinder binder;
    private boolean serviceBound;
    private boolean running;
    private ContentPorts.VehicleSnapshot latestSnapshot = ContentPorts.VehicleSnapshot.unavailable();
    private int lastChargeConnection = Integer.MIN_VALUE;
    private int lastChargeBms = Integer.MIN_VALUE;
    private int lastChargeSchedule = Integer.MIN_VALUE;

    public ContentVehicleAdapter(Context context) {
        this.context = context.getApplicationContext();
    }

    @Override
    public synchronized boolean isAvailable() {
        return binder != null;
    }

    @Override
    public synchronized boolean isLockAvailable() {
        return binder != null;
    }

    @Override
    public synchronized boolean isControlAvailable(String controlId) {
        return running && binder != null && workerHandler != null
                && ContentVehicleProtocol.supportsLevelControl(controlId);
    }

    @Override
    public synchronized boolean isControlLevelAvailable(String controlId, int level) {
        if (!isControlAvailable(controlId)
                || ContentVehicleProtocol.controlLevelWrite(controlId, level) == null) return false;
        VehicleControl control = VehicleControl.fromId(controlId);
        switch (control) {
            case Ventilation:
                return latestSnapshot.ventilationLevel >= 0;
            case Heating:
                return latestSnapshot.heatingLevel >= 0;
            case PassengerHeating:
                return latestSnapshot.passengerHeatingLevel >= 0;
            case SteeringHeat:
                return latestSnapshot.steeringHeatLevel >= 0;
            case Wiper:
                return latestSnapshot.wiperKnown && latestSnapshot.wiperLevel >= 0;
            case Massage:
                return latestSnapshot.massageLevel >= 0
                        || level == 0 && latestSnapshot.massageSwitchKnown && latestSnapshot.massageActive;
            default:
                return false;
        }
    }

    @Override
    public boolean requestLock(boolean locked, long requestId) {
        return queueCommand(ContentVehicleProtocol.lockWrite(locked), requestId);
    }

    @Override
    public synchronized boolean isControlLevelAvailable(String controlId, int currentLevel, int targetLevel) {
        return isControlLevelAvailable(controlId, targetLevel);
    }

    @Override
    public boolean requestControlLevel(String controlId, int level, long requestId) {
        if (!isControlLevelAvailable(controlId, level)) return false;
        return queueCommand(ContentVehicleProtocol.controlLevelWrite(controlId, level), requestId);
    }

    @Override
    public boolean isSeatControlAvailable(String seatId) {
        return isControlAvailable(seatId);
    }

    @Override
    public boolean isSeatLevelAvailable(String seatId, int level) {
        return isControlLevelAvailable(seatId, level);
    }

    @Override
    public boolean isSeatLevelAvailable(String seatId, int currentLevel, int targetLevel) {
        return isControlLevelAvailable(seatId, currentLevel, targetLevel);
    }

    @Override
    public boolean requestSeatLevel(String seatId, int level, long requestId) {
        return requestControlLevel(seatId, level, requestId);
    }

    @Override
    public synchronized void start(ContentPorts.VehicleSnapshotListener listener) {
        if (running) {
            this.listener = listener;
            return;
        }
        this.listener = listener;
        running = true;
        workerThread = new HandlerThread("ContentVehicleReader");
        workerThread.start();
        workerHandler = new Handler(workerThread.getLooper());
        publish(ContentPorts.VehicleSnapshot.unavailable(), null);
        bindVehicleService();
    }

    @Override
    public synchronized void stop() {
        running = false;
        mainHandler.removeCallbacksAndMessages(null);
        if (serviceBound) {
            try {
                context.unbindService(serviceConnection);
            } catch (RuntimeException error) {
                Log.w(TAG, "vehicle service unbind failed", error);
            }
            serviceBound = false;
        }
        binder = null;
        latestSnapshot = ContentPorts.VehicleSnapshot.unavailable();
        if (workerHandler != null) {
            workerHandler.removeCallbacksAndMessages(null);
            workerHandler = null;
        }
        if (workerThread != null) {
            workerThread.quitSafely();
            workerThread = null;
        }
        listener = null;
    }

    private void bindVehicleService() {
        synchronized (this) {
            if (!running || serviceBound) {
                return;
            }
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(VEHICLE_SERVICE_PACKAGE, VEHICLE_SERVICE_CLASS));
        boolean bound = false;
        try {
            bound = context.bindService(intent, serviceConnection, Context.BIND_AUTO_CREATE);
        } catch (RuntimeException error) {
            Log.w(TAG, "vehicle service bind failed", error);
        }
        synchronized (this) {
            serviceBound = bound;
        }
        mainHandler.removeCallbacks(bindTimeout);
        mainHandler.removeCallbacks(retryBind);
        if (bound) {
            mainHandler.postDelayed(bindTimeout, BIND_TIMEOUT_MS);
        } else {
            publish(ContentPorts.VehicleSnapshot.unavailable(), null);
            mainHandler.postDelayed(retryBind, REBIND_INTERVAL_MS);
        }
    }

    private void reconnect() {
        synchronized (this) {
            if (!running) {
                return;
            }
            binder = null;
            latestSnapshot = ContentPorts.VehicleSnapshot.unavailable();
            if (workerHandler != null) {
                workerHandler.removeCallbacks(pollRunnable);
            }
            if (serviceBound) {
                try {
                    context.unbindService(serviceConnection);
                } catch (RuntimeException error) {
                    Log.w(TAG, "vehicle service unbind failed", error);
                }
                serviceBound = false;
            }
        }
        publish(ContentPorts.VehicleSnapshot.unavailable(), null);
        mainHandler.removeCallbacks(bindTimeout);
        mainHandler.removeCallbacks(retryBind);
        mainHandler.postDelayed(retryBind, REBIND_INTERVAL_MS);
    }

    private synchronized void requestReadback(Handler worker, IBinder sourceBinder) {
        if (running && binder == sourceBinder && workerHandler == worker) {
            worker.removeCallbacks(pollRunnable);
            worker.post(pollRunnable);
        }
    }

    private boolean queueCommand(final ContentVehicleProtocol.Write write, final long requestId) {
        if (write == null) return false;
        final IBinder currentBinder;
        final Handler worker;
        synchronized (this) {
            if (!running || binder == null || workerHandler == null) {
                return false;
            }
            currentBinder = binder;
            worker = workerHandler;
        }
        return worker.post(new Runnable() {
            @Override
            public void run() {
                try {
                    synchronized (ContentVehicleAdapter.this) {
                        if (!running || binder != currentBinder || worker != workerHandler) {
                            reportCommandFailure(requestId, "车控连接中断，请稍后重试");
                            return;
                        }
                    }
                    if (write.ensureMassageOn) {
                        sendMassageStrength(currentBinder, write.value);
                    } else {
                        sendData(currentBinder, write.functionId, AREA_DRIVER, write.value);
                    }
                } catch (RemoteException | RuntimeException error) {
                    Log.w(TAG, "vehicle command failed", error);
                    reportCommandFailure(requestId, "车辆控制请求失败，请查看车机状态");
                } finally {
                    // Even a rejected transaction can follow an external state change.
                    // Read actual state; queue acceptance and packet values never confirm it.
                    requestReadback(worker, currentBinder);
                }
            }
        });
    }

    static void ensureMassageReady(IBinder currentBinder) throws RemoteException {
        int switchState = getData(currentBinder, MASSAGE_SWITCH, AREA_DRIVER);
        if (switchState == SWITCH_OFF) {
            sendData(currentBinder, MASSAGE_SWITCH, AREA_DRIVER, SWITCH_ON);
        } else if (switchState != SWITCH_ON) {
            throw new RemoteException("massage switch unavailable");
        }
        long deadline = android.os.SystemClock.uptimeMillis() + MASSAGE_START_TIMEOUT_MS;
        do {
            switchState = getData(currentBinder, MASSAGE_SWITCH, AREA_DRIVER);
            int mode = getData(currentBinder, MASSAGE_MODE, AREA_DRIVER);
            int strength = getData(currentBinder, MASSAGE_STRENGTH, AREA_DRIVER);
            if (switchState == SWITCH_ON && mode >= 1 && mode <= 5
                    && strength >= 1 && strength <= 3) {
                return;
            }
            if (switchState != SWITCH_OFF && switchState != SWITCH_ON
                    || android.os.SystemClock.uptimeMillis() >= deadline) {
                throw new RemoteException("massage did not initialize");
            }
            android.os.SystemClock.sleep(100L);
        } while (true);
    }

    static void sendMassageStrength(IBinder currentBinder, int value) throws RemoteException {
        ensureMassageReady(currentBinder);
        sendData(currentBinder, MASSAGE_STRENGTH, AREA_DRIVER, value);
    }

    private void reportCommandFailure(final long requestId, final String message) {
        mainHandler.post(new Runnable() {
            @Override
            public void run() {
                ContentPorts.VehicleSnapshotListener currentListener;
                synchronized (ContentVehicleAdapter.this) {
                    currentListener = running ? listener : null;
                }
                if (currentListener != null) {
                    currentListener.onVehicleCommandFailed(requestId, message);
                }
            }
        });
    }

    private void publish(final ContentPorts.VehicleSnapshot snapshot, final IBinder sourceBinder) {
        mainHandler.post(new Runnable() {
            @Override
            public void run() {
                ContentPorts.VehicleSnapshotListener currentListener;
                synchronized (ContentVehicleAdapter.this) {
                    currentListener = running && binder == sourceBinder ? listener : null;
                }
                if (currentListener != null) {
                    currentListener.onVehicleSnapshot(snapshot);
                }
            }
        });
    }

    private ContentPorts.VehicleSnapshot readSnapshot(IBinder currentBinder) {
        float temperature = readFloat(currentBinder, CABIN_TEMPERATURE, 1);
        float soc = readFloat(currentBinder, BATTERY_SOC, AREA_DRIVER);
        int battery = Float.isNaN(soc) || soc < 0.0f || soc > 100.0f ? -1 : Math.round(soc);
        int range = readInt(currentBinder, RANGE_REMAINING, AREA_DRIVER);
        int connection = readInt(currentBinder, CHARGE_CONNECTION, AREA_DRIVER);
        int bms = readInt(currentBinder, CHARGE_BMS, AREA_DRIVER);
        int schedule = readInt(currentBinder, CHARGE_SCHEDULE, AREA_DRIVER);
        // S56 CSV: voltage 0x344 is INT32 (40); current 0x345 is FLOAT (60).
        // getDataFloat rejects INT32 properties with the OEM -1000 sentinel.
        float hvVoltage = readInt(currentBinder, CHARGE_HV_VOLTAGE, AREA_DRIVER);
        float hvCurrent = readFloat(currentBinder, CHARGE_HV_CURRENT, AREA_DRIVER);
        int remainingRaw = readInt(currentBinder, CHARGE_REMAINING_TIME, AREA_DRIVER);
        if (connection != lastChargeConnection || bms != lastChargeBms
                || schedule != lastChargeSchedule) {
            Log.i(TAG, "charge raw connection=" + connection + " bms=" + bms
                    + " schedule=" + schedule);
            lastChargeConnection = connection;
            lastChargeBms = bms;
            lastChargeSchedule = schedule;
        }
        int seatRaw = readInt(currentBinder, SEAT_HEAT_VENT, AREA_DRIVER);
        int heatingAutoRaw = readInt(currentBinder, SEAT_DRIVER_AUTO_HEAT, AREA_DRIVER);
        // Passenger is a dedicated function pair at area0, not the driver function at another seat area.
        int passengerSeatRaw = readInt(currentBinder, SEAT_PASSENGER_HEAT_VENT, AREA_DRIVER);
        int passengerHeatingAutoRaw = readInt(currentBinder, SEAT_PASSENGER_AUTO_HEAT, AREA_DRIVER);
        int steeringRaw = readInt(currentBinder, STEERING_HEAT, AREA_DRIVER);
        int steeringActiveRaw = readInt(currentBinder, STEERING_HEAT_ACTIVE, AREA_DRIVER);
        int massageSwitchRaw = readInt(currentBinder, MASSAGE_SWITCH, AREA_DRIVER);
        int massageStrengthRaw = readInt(currentBinder, MASSAGE_STRENGTH, AREA_DRIVER);
        int massageModeRaw = readInt(currentBinder, MASSAGE_MODE, AREA_DRIVER);
        int lockRaw = readInt(currentBinder, LOCK_STATE, AREA_DRIVER);
        int wiperRaw = readInt(currentBinder, FRONT_WIPER, AREA_DRIVER);
        int wiper = ContentVehicleProtocol.normalizeWiperLevel(wiperRaw);
        boolean wiperKnown = wiper >= 0;
        int chargeState = resolveChargeState(connection, bms, schedule);
        // Completion is a product projection of exact full SOC + connected +
        // known idle BMS, not a newly guessed vendor enum or rounded battery value.
        if ((connection == 1 || connection == 2) && bms == 0 && soc == 100.0f) {
            chargeState = ContentState.CHARGE_COMPLETE;
        }
        int remainingMinutes = normalizeChargeRemainingMinutes(remainingRaw);
        float chargePowerKw = computeChargePowerKw(chargeState, hvVoltage, hvCurrent);
        boolean heatingAutoKnown = ContentVehicleProtocol.isKnownHeatingAuto(heatingAutoRaw);
        boolean heatingAutoActive = ContentVehicleProtocol.isHeatingAutoActive(heatingAutoRaw);
        int ventilation = ContentVehicleProtocol.normalizeVentilationLevel(seatRaw);
        int heating = ContentVehicleProtocol.normalizeHeatingLevel(seatRaw, heatingAutoRaw);
        boolean passengerHeatingAutoKnown = ContentVehicleProtocol.isKnownHeatingAuto(passengerHeatingAutoRaw);
        boolean passengerHeatingAutoActive = ContentVehicleProtocol.isHeatingAutoActive(passengerHeatingAutoRaw);
        int passengerHeating = ContentVehicleProtocol.normalizeHeatingLevel(VehicleControl.PassengerHeating,
                passengerSeatRaw, passengerHeatingAutoRaw);
        int steering = ContentVehicleProtocol.normalizeSteeringLevel(steeringRaw, steeringActiveRaw);
        boolean massageSwitchKnown = ContentVehicleProtocol.isKnownMassageSwitch(massageSwitchRaw);
        boolean massageActive = ContentVehicleProtocol.isMassageActive(massageSwitchRaw);
        int massage = ContentVehicleProtocol.normalizeMassageLevel(massageSwitchRaw, massageStrengthRaw);
        boolean seatKnown = ventilation >= 0 || heating >= 0 || passengerHeating >= 0
                || steering >= 0 || massageSwitchKnown;
        boolean lockKnown = ContentVehicleProtocol.isKnownLockState(lockRaw);
        boolean available = !Float.isNaN(temperature) || battery >= 0 || range >= 0
                || connection >= 0 || bms >= 0 || schedule >= 0
                || !Float.isNaN(chargePowerKw) || remainingMinutes >= 0
                || seatKnown || lockKnown || wiperKnown;
        ContentPorts.VehicleSnapshot snapshot = new ContentPorts.VehicleSnapshot(available, false,
                temperature, battery, range, chargeState, connection, bms, schedule, chargePowerKw,
                remainingMinutes, ventilation, heating, heatingAutoKnown, heatingAutoActive,
                passengerHeating, passengerHeatingAutoKnown, passengerHeatingAutoActive, steering,
                massage, massageModeRaw, massageSwitchKnown,
                massageActive, seatKnown, lockKnown, ContentVehicleProtocol.isLocked(lockRaw), wiper, wiperKnown);
        synchronized (this) {
            if (running && binder == currentBinder) latestSnapshot = snapshot;
        }
        return snapshot;
    }

    public static boolean isKnownHeatingAuto(int raw) {
        return ContentVehicleProtocol.isKnownHeatingAuto(raw);
    }

    public static int normalizeHeatingLevel(int seatRaw, int heatingAutoRaw) {
        return ContentVehicleProtocol.normalizeHeatingLevel(seatRaw, heatingAutoRaw);
    }

    public static int normalizeSteeringLevel(int steeringRaw, int activeRaw) {
        return ContentVehicleProtocol.normalizeSteeringLevel(steeringRaw, activeRaw);
    }

    static int normalizeChargeRemainingMinutes(int raw) {
        return raw >= 0 && raw < CHARGE_REMAINING_TIME_INVALID ? raw : -1;
    }

    static float computeChargePowerKw(int chargeState, float voltage, float current) {
        if (chargeState != ContentState.CHARGE_CHARGING
                || Float.isNaN(voltage) || Float.isInfinite(voltage) || voltage <= 0.0f
                || Float.isNaN(current) || Float.isInfinite(current) || current <= 0.0f) {
            return Float.NaN;
        }
        float powerKw = voltage * current / 1000.0f;
        return Float.isNaN(powerKw) || Float.isInfinite(powerKw) || powerKw <= 0.0f
                ? Float.NaN : powerKw;
    }

    static int resolveChargeState(int connection, int bms, int schedule) {
        if (connection == 0 && bms == 0 && schedule == 0) {
            return ContentState.CHARGE_DEFAULT;
        }
        if (bms == 3 && (connection == 1 || connection == 2)) {
            return ContentState.CHARGE_CHARGING;
        }
        if (connection != 1 && connection != 2) {
            return ContentState.CHARGE_UNKNOWN;
        }
        if (bms == 6 && schedule == 1) {
            return ContentState.CHARGE_SCHEDULED;
        }
        return ContentState.CHARGE_PLUGGED;
    }

    private int readInt(IBinder currentBinder, int functionId, int area) {
        try {
            return getData(currentBinder, functionId, area);
        } catch (RemoteException | RuntimeException error) {
            return -1;
        }
    }

    private float readFloat(IBinder currentBinder, int functionId, int area) {
        try {
            float result = getDataFloat(currentBinder, functionId, area);
            return Float.isInfinite(result) ? Float.NaN : result;
        } catch (RemoteException | RuntimeException error) {
            return Float.NaN;
        }
    }

    private static int getData(IBinder currentBinder, int functionId, int area) throws RemoteException {
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            request.writeInterfaceToken(VEHICLE_DESCRIPTOR);
            request.writeInt(functionId);
            request.writeInt(area);
            if (!currentBinder.transact(TRANSACTION_GET_DATA, request, reply, 0)) {
                throw new RemoteException("getData transaction unavailable");
            }
            reply.readException();
            return reply.readInt();
        } finally {
            reply.recycle();
            request.recycle();
        }
    }

    private static float getDataFloat(IBinder currentBinder, int functionId, int area)
            throws RemoteException {
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            request.writeInterfaceToken(VEHICLE_DESCRIPTOR);
            request.writeInt(functionId);
            request.writeInt(area);
            if (!currentBinder.transact(TRANSACTION_GET_DATA_FLOAT, request, reply, 0)) {
                throw new RemoteException("getDataFloat transaction unavailable");
            }
            reply.readException();
            return reply.readFloat();
        } finally {
            reply.recycle();
            request.recycle();
        }
    }

    private static void sendData(IBinder currentBinder, int functionId, int area, int value)
            throws RemoteException {
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            request.writeInterfaceToken(VEHICLE_DESCRIPTOR);
            request.writeInt(functionId);
            request.writeInt(area);
            request.writeInt(value);
            if (!currentBinder.transact(TRANSACTION_SEND_DATA, request, reply, 0)) {
                throw new RemoteException("sendData transaction unavailable");
            }
            reply.readException();
        } finally {
            reply.recycle();
            request.recycle();
        }
    }
}
