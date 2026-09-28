package com.autonavi.amapauto.content;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import java.lang.reflect.Method;

public final class ContentVehicleAdapter implements ContentPorts.VehiclePort {
    private static final String TAG = "ContentVehicleAdapter";
    private static final String VEHICLE_SERVICE_PACKAGE = "com.chery.virtualcarservice";
    private static final String VEHICLE_SERVICE_CLASS = "com.chery.virtualcarservice.virtualcar.VirtualCarService";
    private static final String VEHICLE_DESCRIPTOR = "com.chery.canmanager.interfaces.IVirturalCarProperty";
    private static final int TRANSACTION_SEND_DATA = 5;
    private static final int TRANSACTION_GET_DATA = 7;
    private static final int LOCK_REQUEST_PROPERTY = 1045;
    private static final int LOCK_STATE_PROPERTY = 1047;
    private static final int AREA_DRIVER = 0;
    private static final int TEMP_PROPERTY = 0x110;
    private static final int BATTERY_LEVEL_PROPERTY = 0x11600309;
    private static final int CHARGE_PORT_PROPERTY = 0x2140f027;
    private static final int CHARGE_STATUS_PROPERTY = 0x2140f02a;
    private static final int BOOK_CHARGE_PROPERTY = 0x2140f024;
    private static final int REMAINING_TIME_PROPERTY = 0x2140f086;
    private static final int HIGH_VOLTAGE_PROPERTY = 0x21400a86;
    private static final int HIGH_CURRENT_PROPERTY = 0x21600a87;
    private static final int SEAT_HEAT_VENT_PROPERTY = 0x15400515;
    private static final int MASSAGE_SWITCH_PROPERTY = 0x214009ec;
    private static final int MASSAGE_MODE_PROPERTY = 0x214009ed;
    private static final int MASSAGE_LEVEL_PROPERTY = 0x214009ee;
    private static final long POLL_INTERVAL_MS = 1500L;

    private final Context context;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final Runnable pollRunnable = new Runnable() {
        @Override
        public void run() {
            pollState();
            if (running) {
                handler.postDelayed(this, POLL_INTERVAL_MS);
            }
        }
    };
    private final ServiceConnection serviceConnection = new ServiceConnection() {
        @Override
        public void onServiceConnected(ComponentName name, IBinder service) {
            synchronized (ContentVehicleAdapter.this) {
                binder = service;
            }
            pollState();
        }

        @Override
        public void onServiceDisconnected(ComponentName name) {
            synchronized (ContentVehicleAdapter.this) {
                binder = null;
            }
            pollState();
        }
    };
    private ContentPorts.VehicleSnapshotListener listener;
    private IBinder binder;
    private Object car;
    private Object vehicleManager;
    private boolean carConnectionAttempted;
    private boolean serviceBound;
    private boolean running;

    public ContentVehicleAdapter(Context context) {
        this.context = context.getApplicationContext();
    }

    @Override
    public synchronized boolean isAvailable() {
        return vehicleManager != null || binder != null;
    }

    @Override
    public synchronized boolean isLockAvailable() {
        return binder != null;
    }

    @Override
    public boolean requestLock(boolean locked) {
        synchronized (this) {
            if (binder == null) {
                return false;
            }
        }
        return transactWrite(LOCK_REQUEST_PROPERTY, locked ? 1 : 2);
    }

    @Override
    public boolean requestSeatLevel(String seatId, int level) {
        if (ContentRegistry.Shortcuts.SEAT_VENTILATION.equals(seatId)) {
            int rawValue = level == 0 ? 1 : level == 1 ? 5 : level == 2 ? 6 : 7;
            return writeCarInt(SEAT_HEAT_VENT_PROPERTY, AREA_DRIVER, rawValue);
        }
        if (ContentRegistry.Shortcuts.SEAT_HEATING.equals(seatId)) {
            int rawValue = level == 0 ? 1 : level == 1 ? 2 : level == 2 ? 3 : 4;
            return writeCarInt(SEAT_HEAT_VENT_PROPERTY, AREA_DRIVER, rawValue);
        }
        if (ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(seatId)) {
            boolean disabled = level <= 0;
            boolean switchWritten = writeCarInt(MASSAGE_SWITCH_PROPERTY, AREA_DRIVER, disabled ? 1 : 2);
            boolean modeWritten = writeCarInt(MASSAGE_MODE_PROPERTY, AREA_DRIVER, disabled ? 0 : 1);
            boolean levelWritten = writeCarInt(MASSAGE_LEVEL_PROPERTY, AREA_DRIVER,
                    disabled ? 0 : Math.min(3, Math.max(1, level)));
            return switchWritten && modeWritten && levelWritten;
        }
        return false;
    }

    @Override
    public synchronized void start(ContentPorts.VehicleSnapshotListener listener) {
        this.listener = listener;
        running = true;
        bindVehicleService();
        ensureCarManager();
        handler.removeCallbacks(pollRunnable);
        handler.post(pollRunnable);
    }

    @Override
    public synchronized void stop() {
        running = false;
        handler.removeCallbacks(pollRunnable);
        if (serviceBound) {
            try {
                context.unbindService(serviceConnection);
            } catch (RuntimeException ignored) {
            }
            serviceBound = false;
        }
        if (car != null) {
            try {
                Method disconnect = car.getClass().getMethod("disconnect");
                disconnect.invoke(car);
            } catch (Throwable ignored) {
            }
        }
        binder = null;
        vehicleManager = null;
        car = null;
        listener = null;
    }

    private void bindVehicleService() {
        if (serviceBound) {
            return;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(VEHICLE_SERVICE_PACKAGE, VEHICLE_SERVICE_CLASS));
        try {
            serviceBound = context.bindService(intent, serviceConnection, Context.BIND_AUTO_CREATE);
        } catch (Throwable error) {
            Log.w(TAG, "vehicle binder unavailable", error);
        }
    }

    private void ensureCarManager() {
        if (vehicleManager != null || carConnectionAttempted) {
            return;
        }
        carConnectionAttempted = true;
        try {
            Class<?> carClass = Class.forName("android.car.Car");
            Method factory = null;
            for (Method method : carClass.getMethods()) {
                if (!"createCar".equals(method.getName())) {
                    continue;
                }
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length >= 1 && Context.class.isAssignableFrom(parameterTypes[0])) {
                    factory = method;
                    break;
                }
            }
            if (factory == null) {
                return;
            }
            Object[] arguments = factory.getParameterTypes().length == 1
                    ? new Object[]{context} : new Object[]{context, handler};
            car = factory.invoke(null, arguments);
            Method connect = car.getClass().getMethod("connect");
            connect.invoke(car);
            Method getCarManager = car.getClass().getMethod("getCarManager", String.class);
            vehicleManager = getCarManager.invoke(car, "vehicle");
        } catch (Throwable error) {
            Log.w(TAG, "vehicle car manager unavailable", error);
            vehicleManager = null;
        }
    }

    private void pollState() {
        ContentPorts.VehicleSnapshotListener stateListener;
        synchronized (this) {
            if (!running) {
                return;
            }
            ensureCarManager();
            stateListener = listener;
        }
        if (stateListener != null) {
            stateListener.onVehicleSnapshot(readSnapshot());
        }
    }

    private ContentPorts.VehicleSnapshot readSnapshot() {
        float temperature = readFloatProperty(TEMP_PROPERTY, 1, Float.NaN);
        int battery = readIntProperty(BATTERY_LEVEL_PROPERTY, AREA_DRIVER, -1);
        int chargePort = readIntProperty(CHARGE_PORT_PROPERTY, AREA_DRIVER, -1);
        int chargeStatus = readIntProperty(CHARGE_STATUS_PROPERTY, AREA_DRIVER, -1);
        int bookCharge = readIntProperty(BOOK_CHARGE_PROPERTY, AREA_DRIVER, -1);
        int remainingTime = readIntProperty(REMAINING_TIME_PROPERTY, AREA_DRIVER, -1);
        float voltage = readFloatProperty(HIGH_VOLTAGE_PROPERTY, AREA_DRIVER, Float.NaN);
        float current = readFloatProperty(HIGH_CURRENT_PROPERTY, AREA_DRIVER, Float.NaN);
        int seatRaw = readIntProperty(SEAT_HEAT_VENT_PROPERTY, AREA_DRIVER, -1);
        int massageSwitch = readIntProperty(MASSAGE_SWITCH_PROPERTY, AREA_DRIVER, -1);
        int massageLevel = readIntProperty(MASSAGE_LEVEL_PROPERTY, AREA_DRIVER, -1);
        int lockState = readLockState();
        int chargeState = ContentState.CHARGE_DEFAULT;
        if (chargePort == 1) {
            if (chargeStatus == 3) {
                chargeState = ContentState.CHARGE_CHARGING;
            } else if (bookCharge == 1 || chargeStatus == 6) {
                chargeState = ContentState.CHARGE_SCHEDULED;
            } else {
                chargeState = ContentState.CHARGE_PLUGGED;
            }
        }
        float power = Float.NaN;
        if (!Float.isNaN(voltage) && !Float.isNaN(current)) {
            power = Math.abs(voltage * current) / 1000.0f;
        }
        if (remainingTime == 2047) {
            remainingTime = -1;
        }
        int boundedBattery = battery < 0 ? -1 : Math.max(0, Math.min(100, battery));
        int ventilationLevel = ventilationLevel(seatRaw);
        int heatingLevel = heatingLevel(seatRaw);
        int normalizedMassageLevel = massageSwitch == 2 && massageLevel >= 0
                ? Math.min(3, massageLevel) : massageSwitch == 1 ? 0 : -1;
        boolean seatKnown = ventilationLevel >= 0 || heatingLevel >= 0 || normalizedMassageLevel >= 0;
        boolean lockKnown = lockState == 1 || lockState == 2;
        boolean dataAvailable = !Float.isNaN(temperature) || boundedBattery >= 0
                || chargePort >= 0 || chargeStatus >= 0 || seatKnown;
        return new ContentPorts.VehicleSnapshot(dataAvailable, false, temperature, boundedBattery, -1,
                chargeState, power, remainingTime, ventilationLevel, heatingLevel,
                normalizedMassageLevel, seatKnown, lockKnown, lockState == 1);
    }

    private int ventilationLevel(int rawValue) {
        return rawValue == 1 ? 0 : rawValue == 5 ? 1 : rawValue == 6 ? 2 : rawValue == 7 ? 3 : -1;
    }

    private int heatingLevel(int rawValue) {
        return rawValue == 1 ? 0 : rawValue == 2 ? 1 : rawValue == 3 ? 2 : rawValue == 4 ? 3 : -1;
    }

    private int readLockState() {
        synchronized (this) {
            if (binder == null) {
                return -1;
            }
        }
        Parcel data = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            data.writeInterfaceToken(VEHICLE_DESCRIPTOR);
            data.writeInt(LOCK_STATE_PROPERTY);
            data.writeInt(AREA_DRIVER);
            if (!binder.transact(TRANSACTION_GET_DATA, data, reply, 0)) {
                return -1;
            }
            return readReplyInt(reply, -1);
        } catch (Throwable error) {
            Log.w(TAG, "lock state read failed", error);
            return -1;
        } finally {
            data.recycle();
            reply.recycle();
        }
    }

    private boolean transactWrite(int propertyId, int value) {
        IBinder currentBinder;
        synchronized (this) {
            currentBinder = binder;
        }
        if (currentBinder == null) {
            return false;
        }
        Parcel data = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            data.writeInterfaceToken(VEHICLE_DESCRIPTOR);
            data.writeInt(propertyId);
            data.writeInt(AREA_DRIVER);
            data.writeInt(value);
            return currentBinder.transact(TRANSACTION_SEND_DATA, data, reply, 0);
        } catch (RemoteException | RuntimeException error) {
            Log.w(TAG, "vehicle command failed", error);
            return false;
        } finally {
            data.recycle();
            reply.recycle();
        }
    }

    private boolean writeCarInt(int propertyId, int areaId, int value) {
        Object manager;
        synchronized (this) {
            ensureCarManager();
            manager = vehicleManager;
        }
        if (manager == null) {
            return false;
        }
        try {
            Method method = manager.getClass().getMethod("setIntProperty", int.class, int.class, int.class);
            method.invoke(manager, propertyId, areaId, value);
            return true;
        } catch (Throwable error) {
            Log.w(TAG, "vehicle property write failed", error);
            return false;
        }
    }

    private int readIntProperty(int propertyId, int areaId, int fallback) {
        Number value = readProperty(propertyId, areaId, false);
        return value == null ? fallback : value.intValue();
    }

    private float readFloatProperty(int propertyId, int areaId, float fallback) {
        Number value = readProperty(propertyId, areaId, true);
        return value == null ? fallback : value.floatValue();
    }

    private Number readProperty(int propertyId, int areaId, boolean preferFloat) {
        Object manager;
        synchronized (this) {
            ensureCarManager();
            manager = vehicleManager;
        }
        if (manager == null) {
            return null;
        }
        String preferredName = preferFloat ? "getFloatProperty" : "getIntProperty";
        try {
            Method preferred = manager.getClass().getMethod(preferredName, int.class, int.class);
            Object value = preferred.invoke(manager, propertyId, areaId);
            if (value instanceof Number) {
                return (Number) value;
            }
        } catch (Throwable ignored) {
        }
        try {
            for (Method method : manager.getClass().getMethods()) {
                if (!"getProperty".equals(method.getName()) || method.getParameterTypes().length != 2) {
                    continue;
                }
                Object value = method.invoke(manager, propertyId, areaId);
                if (value instanceof Number) {
                    return (Number) value;
                }
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private int readReplyInt(Parcel reply, int fallback) {
        if (reply.dataAvail() < 4) {
            return fallback;
        }
        int position = reply.dataPosition();
        try {
            reply.readException();
            if (reply.dataAvail() >= 4) {
                return reply.readInt();
            }
        } catch (Throwable ignored) {
        }
        reply.setDataPosition(position);
        try {
            return reply.readInt();
        } catch (RuntimeException ignored) {
            return fallback;
        }
    }
}
