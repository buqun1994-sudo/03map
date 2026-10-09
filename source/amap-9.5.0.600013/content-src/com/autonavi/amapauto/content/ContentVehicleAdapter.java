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

import java.util.ArrayList;
import java.util.List;

import com.icar03.content.model.VehicleControl;
import com.icar03.content.model.VehicleGear;
import com.icar03.content.runtime.AutomotiveGearReader;

import static com.autonavi.amapauto.content.ContentVehicleProtocol.*;

public final class ContentVehicleAdapter implements ContentPorts.VehiclePort {
    private static final String TAG = "ContentVehicleAdapter";
    private static final long POLL_INTERVAL_MS = 1500L;
    private static final long REBIND_INTERVAL_MS = 3000L;
    private static final long BIND_TIMEOUT_MS = 5000L;
    private static final long MASSAGE_START_TIMEOUT_MS = 2000L;
    private static final long REAR_READBACK_INTERVAL_MS = 250L;

    private final class RearRequest {
        final VehicleControl control;
        final ContentVehicleProtocol.Write write;
        final int expectedLevel;
        final int targetLevel;
        final long requestId;
        final long deadlineUptimeMs;
        final IBinder sourceBinder;
        final Handler worker;
        final long generation;
        boolean washActivationObserved;
        boolean writeAttempted;
        boolean writeReturned;
        final Runnable send = new Runnable() {
            @Override public void run() { executeRearRequest(RearRequest.this); }
        };
        final Runnable readback = new Runnable() {
            @Override public void run() { readRearRequest(RearRequest.this); }
        };

        RearRequest(VehicleControl control, int expectedLevel, int targetLevel, long requestId,
                long deadlineUptimeMs, IBinder sourceBinder, Handler worker) {
            this.control = control;
            this.write = ContentVehicleProtocol.rearWindowWrite(control.getId());
            this.expectedLevel = expectedLevel;
            this.targetLevel = targetLevel;
            this.requestId = requestId;
            this.deadlineUptimeMs = deadlineUptimeMs;
            this.sourceBinder = sourceBinder;
            this.worker = worker;
            this.generation = ++rearGeneration;
        }
    }

    private final Context context;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final Runnable pollRunnable = new Runnable() {
        @Override
        public void run() {
            IBinder currentBinder;
            Handler worker;
            synchronized (ContentVehicleAdapter.this) {
                if (!running || workerHandler == null) {
                    return;
                }
                currentBinder = binder;
                worker = workerHandler;
            }
            ContentPorts.VehicleSnapshot snapshot;
            if (currentBinder != null) {
                snapshot = readSnapshot(currentBinder);
            } else {
                AutomotiveGearReader reader;
                synchronized (ContentVehicleAdapter.this) { reader = gearReader; }
                snapshot = ContentPorts.VehicleSnapshot.unavailable().withGear(
                        reader == null ? VehicleGear.Unknown : reader.readGear());
            }
            synchronized (ContentVehicleAdapter.this) {
                if (!running || binder != currentBinder || worker != workerHandler) return;
                latestSnapshot = snapshot;
            }
            publish(snapshot, currentBinder, worker);
            synchronized (ContentVehicleAdapter.this) {
                if (running && worker == workerHandler) {
                    worker.removeCallbacks(this);
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
                            clearRearRequestLocked();
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
                clearRearRequestLocked();
                binder = null;
                latestSnapshot = ContentPorts.VehicleSnapshot.unavailable();
                if (workerHandler != null) {
                    workerHandler.removeCallbacks(pollRunnable);
                    workerHandler.post(pollRunnable);
                }
            }
            publishOemUnavailable();
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
    private AutomotiveGearReader gearReader;
    private IBinder binder;
    private boolean serviceBound;
    private boolean running;
    private RearRequest rearRequest;
    private long rearGeneration;
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
        return running && binder != null && workerHandler != null && latestSnapshot.lockKnown;
    }


    @Override
    public synchronized boolean isFeatureAvailable(String featureId, int target) {
        if (!running || binder == null || workerHandler == null || featureId == null
                || target < 0 || target > 1) return false;
        ContentPorts.FeatureSnapshot features = latestSnapshot.featureSnapshot;
        if (features == null) return false;
        if ("glove_box".equals(featureId)) return target == 1;
        if ("passenger_seat_adjust".equals(featureId)) return false;
        if ("wiper_maintenance".equals(featureId)) return target == 1 && features.wiperMaintenance >= 0;
        if ("window_vent".equals(featureId)) return features.windowPositionsKnown && features.windowVent >= 0;
        return featuresFor(featureId, features) >= 0;
    }

    private static int featuresFor(String featureId, ContentPorts.FeatureSnapshot features) {
        if ("rear_fog".equals(featureId)) return features.rearFog;
        if ("passenger_window_lock".equals(featureId)) return features.passengerWindowLock;
        if ("left_child_lock".equals(featureId)) return features.leftChildLock;
        if ("right_child_lock".equals(featureId)) return features.rightChildLock;
        if ("wireless_charging".equals(featureId)) return features.wirelessCharging;
        if ("external_discharge".equals(featureId)) return features.externalDischarge;
        return -1;
    }

    @Override
    public boolean requestFeature(String featureId, int target, long requestId, long deadlineUptimeMs) {
        if (!isFeatureAvailable(featureId, target) || requestId <= 0L
                || deadlineUptimeMs <= android.os.SystemClock.uptimeMillis()) return false;
        ContentVehicleProtocol.Write write = ContentVehicleProtocol.featureWrite(featureId, target);
        if (write == null) return false;
        if ("rear_fog".equals(featureId) || "wiper_maintenance".equals(featureId)) {
            return queueFreshFeatureCommand(featureId, target, write, requestId, deadlineUptimeMs);
        }
        return queueCommand(write, requestId);
    }

    @Override
    public synchronized boolean isCenterBrightnessAvailable(int level) {
        return running && binder != null && workerHandler != null
                && latestSnapshot.featureSnapshot != null
                && latestSnapshot.featureSnapshot.centerBrightnessKnown
                && level >= 1 && level <= 10;
    }

    @Override
    public boolean requestCenterBrightness(final int level, final long requestId, long deadlineUptimeMs) {
        if (!isCenterBrightnessAvailable(level) || requestId <= 0L
                || deadlineUptimeMs <= android.os.SystemClock.uptimeMillis()) return false;
        final int[] values = ContentVehicleProtocol.centerBrightnessWrite(level);
        if (values == null) return false;
        final IBinder currentBinder;
        final Handler worker;
        synchronized (this) {
            currentBinder = binder;
            worker = workerHandler;
        }
        return worker != null && worker.post(new Runnable() {
            @Override public void run() {
                try {
                    synchronized (ContentVehicleAdapter.this) {
                        if (!running || binder != currentBinder || worker != workerHandler) {
                            reportCommandFailure(requestId, "车控连接中断，请稍后重试");
                            return;
                        }
                    }
                    sendDataArray(currentBinder, CENTER_BRIGHTNESS, AREA_DRIVER, values);
                    reportCommandSent(requestId);
                } catch (RemoteException | RuntimeException error) {
                    reportCommandFailure(requestId, "中控亮度请求失败，请查看车机状态");
                } finally {
                    requestReadback(worker, currentBinder);
                }
            }
        });
    }

    @Override
    public synchronized boolean isControlAvailable(String controlId) {
        VehicleControl control = VehicleControl.fromId(controlId);
        if (control != null && control.isRearWindow()) return isRearWindowControlAvailable(controlId);
        return running && binder != null && workerHandler != null
                && ContentVehicleProtocol.supportsLevelControl(controlId);
    }

    @Override
    public synchronized boolean isRearWindowControlAvailable(String controlId) {
        if (!running || binder == null || workerHandler == null || rearRequest != null) return false;
        VehicleControl control = VehicleControl.fromId(controlId);
        return control == VehicleControl.RearWiper ? latestSnapshot.rearWiperKnown
                : control == VehicleControl.RearWash && latestSnapshot.rearWashKnown && latestSnapshot.rearWashLevel == 0;
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
            case RearWiper:
                return latestSnapshot.rearWiperKnown && latestSnapshot.rearWiperLevel != level;
            case RearWash:
                return false;
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
        VehicleControl control = VehicleControl.fromId(controlId);
        if (control != null && control.isRearWindow()) return false;
        if (!isControlLevelAvailable(controlId, level)) return false;
        return queueCommand(ContentVehicleProtocol.controlLevelWrite(controlId, level), requestId);
    }

    @Override
    public synchronized boolean requestRearWindow(String controlId, int expectedLevel, int targetLevel,
            long requestId, long deadlineUptimeMs) {
        VehicleControl control = VehicleControl.fromId(controlId);
        if (control == null || !control.isRearWindow() || !control.isLevel(expectedLevel)
                || !control.isLevel(targetLevel) || requestId <= 0L
                || deadlineUptimeMs <= android.os.SystemClock.uptimeMillis()
                || expectedLevel == targetLevel
                || control == VehicleControl.RearWash && (expectedLevel != 0 || targetLevel != 1)
                || !isRearWindowControlAvailable(controlId)) return false;
        RearRequest request = new RearRequest(control, expectedLevel, targetLevel, requestId,
                deadlineUptimeMs, binder, workerHandler);
        rearRequest = request;
        if (request.worker.post(request.send)) return true;
        rearRequest = null;
        return false;
    }

    @Override
    public synchronized void cancelRearWindowRequest(long requestId) {
        if (rearRequest != null && rearRequest.requestId == requestId) clearRearRequestLocked();
    }

    private void clearRearRequestLocked() {
        rearGeneration++;
        if (rearRequest == null) return;
        rearRequest.worker.removeCallbacks(rearRequest.send);
        rearRequest.worker.removeCallbacks(rearRequest.readback);
        rearRequest = null;
    }

    private boolean admitRearWork(RearRequest request) {
        String failure = null;
        synchronized (this) {
            if (rearRequest != request) return false;
            if (!running || binder != request.sourceBinder || workerHandler != request.worker) {
                failure = "后窗车控连接中断，命令未确认";
            } else if (android.os.SystemClock.uptimeMillis() >= request.deadlineUptimeMs) {
                failure = "后窗请求已超时，请查看车机状态";
            }
        }
        if (failure != null) failRearRequest(request, failure);
        return failure == null;
    }

    private void failRearRequest(RearRequest request, String message) {
        synchronized (this) {
            if (rearRequest != request) return;
            clearRearRequestLocked();
        }
        reportCommandFailure(request.requestId, message);
        requestReadback(request.worker, request.sourceBinder);
    }

    private void executeRearRequest(RearRequest request) {
        synchronized (this) {
            if (request.writeAttempted) return;
        }
        if (!admitRearWork(request)) return;
        try {
            // Re-read immediately before the non-idempotent write. A changed or already reached
            // target never causes a compensating toggle; the caller can inspect the new actual.
            int level = ContentVehicleProtocol.normalizeRearWindowLevel(
                    getData(request.sourceBinder, request.write.functionId, AREA_DRIVER));
            if (!admitRearWork(request)) return;
            publishRearState(request, level, 0L);
            if (level != request.expectedLevel) {
                failRearRequest(request, level < 0 ? "后窗状态未知，命令未发送" : "后窗状态已变化，命令未发送");
                return;
            }
            if (!admitRearWork(request)) return;
            synchronized (this) {
                if (rearRequest != request || !running || binder != request.sourceBinder
                        || workerHandler != request.worker || request.writeAttempted
                        || android.os.SystemClock.uptimeMillis() >= request.deadlineUptimeMs) return;
                // The write is now committed for this scope. Cancellation remains nonblocking;
                // it cannot retract a synchronous transaction once admitted here.
                request.writeAttempted = true;
            }
            sendData(request.sourceBinder, request.write.functionId, AREA_DRIVER, request.write.value);
            synchronized (this) { request.writeReturned = true; }
            if (admitRearWork(request)) request.worker.post(request.readback);
        } catch (RemoteException | RuntimeException error) {
            Log.w(TAG, "rear-window command failed", error);
            failRearRequest(request, "后窗请求未确认，请查看车机状态");
        }
    }

    private void readRearRequest(RearRequest request) {
        synchronized (this) {
            if (!request.writeReturned) return;
        }
        if (!admitRearWork(request)) return;
        try {
            int level = ContentVehicleProtocol.normalizeRearWindowLevel(
                    getData(request.sourceBinder, request.write.functionId, AREA_DRIVER));
            if (!admitRearWork(request)) return;
            if (level < 0) {
                publishRearState(request, -1, 0L);
                failRearRequest(request, "后窗状态读取失败，请查看车机状态");
                return;
            }
            if (request.control == VehicleControl.RearWash && level == 1) request.washActivationObserved = true;
            publishRearState(request, level, request.requestId);
            boolean complete = request.control == VehicleControl.RearWiper ? level == request.targetLevel
                    : request.washActivationObserved && level == 0;
            synchronized (this) {
                if (rearRequest != request) return;
                if (complete) {
                    request.worker.removeCallbacks(request.readback);
                    rearRequest = null;
                } else request.worker.postDelayed(request.readback, Math.min(REAR_READBACK_INTERVAL_MS,
                        Math.max(1L, request.deadlineUptimeMs - android.os.SystemClock.uptimeMillis())));
            }
        } catch (RemoteException | RuntimeException error) {
            Log.w(TAG, "rear-window readback failed", error);
            publishRearState(request, -1, 0L);
            failRearRequest(request, "后窗状态读取失败，请查看车机状态");
        }
    }

    private void publishRearState(RearRequest request, int level, long readbackRequestId) {
        ContentPorts.VehicleSnapshot snapshot;
        synchronized (this) {
            if (rearRequest != request || !running || binder != request.sourceBinder
                    || workerHandler != request.worker) return;
            snapshot = latestSnapshot.withRearWindowReadback(request.control.getId(), level,
                    readbackRequestId, request.washActivationObserved);
            latestSnapshot = snapshot;
        }
        final ContentPorts.VehicleSnapshot posted = snapshot;
        mainHandler.post(new Runnable() {
            @Override public void run() {
                ContentPorts.VehicleSnapshotListener currentListener;
                synchronized (ContentVehicleAdapter.this) {
                    currentListener = running && binder == request.sourceBinder && workerHandler == request.worker
                            && rearGeneration == request.generation
                            && (readbackRequestId == 0L || android.os.SystemClock.uptimeMillis() < request.deadlineUptimeMs)
                            ? listener : null;
                }
                if (currentListener != null) currentListener.onVehicleSnapshot(posted);
            }
        });
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
        final Handler gearWorker = workerHandler;
        gearReader = new AutomotiveGearReader(context, gearWorker, new Runnable() {
            @Override public void run() { invalidateGear(gearWorker); }
        });
        publish(ContentPorts.VehicleSnapshot.unavailable(), null);
        gearReader.start();
        workerHandler.post(pollRunnable);
        bindVehicleService();
    }

    @Override
    public synchronized void stop() {
        clearRearRequestLocked();
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
            if (gearReader != null) gearReader.stop();
            gearReader = null;
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
            publishOemUnavailable();
            mainHandler.postDelayed(retryBind, REBIND_INTERVAL_MS);
        }
    }

    private void reconnect() {
        synchronized (this) {
            if (!running) {
                return;
            }
            clearRearRequestLocked();
            binder = null;
            latestSnapshot = ContentPorts.VehicleSnapshot.unavailable();
            if (workerHandler != null) {
                workerHandler.removeCallbacks(pollRunnable);
                workerHandler.post(pollRunnable);
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
        publishOemUnavailable();
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

    private boolean queueFreshFeatureCommand(final String featureId, final int target,
            final ContentVehicleProtocol.Write write, final long requestId, final long deadlineUptimeMs) {
        final IBinder currentBinder;
        final Handler worker;
        synchronized (this) {
            if (!running || binder == null || workerHandler == null) return false;
            currentBinder = binder;
            worker = workerHandler;
        }
        return worker.post(new Runnable() {
            @Override public void run() {
                try {
                    synchronized (ContentVehicleAdapter.this) {
                        if (!running || binder != currentBinder || worker != workerHandler) {
                            reportCommandFailure(requestId, "车控连接中断，命令未发送");
                            return;
                        }
                    }
                    if (android.os.SystemClock.uptimeMillis() >= deadlineUptimeMs) {
                        reportCommandFailure(requestId, "车控请求已超时，命令未发送");
                        return;
                    }
                    int raw = getData(currentBinder, write.functionId, write.area);
                    int actual = "rear_fog".equals(featureId)
                            ? ContentVehicleProtocol.normalizeBinarySwitch(raw)
                            : ContentVehicleProtocol.normalizeWiperMaintenance(raw);
                    if (actual < 0) {
                        reportCommandFailure(requestId, "车控状态未知，命令未发送");
                        return;
                    }
                    if (actual != target) {
                        synchronized (ContentVehicleAdapter.this) {
                            if (!running || binder != currentBinder || worker != workerHandler) {
                                reportCommandFailure(requestId, "车控连接中断，命令未发送");
                                return;
                            }
                        }
                        if (android.os.SystemClock.uptimeMillis() >= deadlineUptimeMs) {
                            reportCommandFailure(requestId, "车控请求已超时，命令未发送");
                            return;
                        }
                        sendData(currentBinder, write.functionId, write.area, write.value);
                        reportCommandSent(requestId);
                    }
                } catch (RemoteException | RuntimeException error) {
                    Log.w(TAG, "fresh feature command failed", error);
                    reportCommandFailure(requestId, "车辆控制请求失败，请查看车机状态");
                } finally {
                    requestReadback(worker, currentBinder);
                }
            }
        });
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
                        sendData(currentBinder, write.functionId, write.area, write.value);
                    }
                    reportCommandSent(requestId);
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

    private void reportCommandSent(final long requestId) {
        mainHandler.post(new Runnable() {
            @Override public void run() {
                ContentPorts.VehicleSnapshotListener currentListener;
                synchronized (ContentVehicleAdapter.this) {
                    currentListener = running ? listener : null;
                }
                if (currentListener != null) {
                    currentListener.onVehicleCommandSent(requestId);
                }
            }
        });
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

    private void invalidateGear(Handler gearWorker) {
        final ContentPorts.VehicleSnapshot snapshot;
        synchronized (this) {
            if (!running || workerHandler != gearWorker) return;
            // A Car disconnect invalidates the independent gear fact even if the OEM Binder has
            // already rebound. Do not carry OEM facts across that service boundary.
            snapshot = ContentPorts.VehicleSnapshot.unavailable();
            latestSnapshot = snapshot;
        }
        publishGearInvalidation(snapshot, gearWorker);
    }

    private void publishGearInvalidation(final ContentPorts.VehicleSnapshot snapshot,
            final Handler sourceWorker) {
        mainHandler.post(new Runnable() {
            @Override
            public void run() {
                ContentPorts.VehicleSnapshotListener currentListener;
                synchronized (ContentVehicleAdapter.this) {
                    // This event belongs to the vehicle reader generation, not to the OEM Binder
                    // generation. A Binder reconnect must not resurrect the previous Park fact.
                    currentListener = running && workerHandler == sourceWorker ? listener : null;
                }
                if (currentListener != null) {
                    currentListener.onVehicleSnapshot(snapshot);
                }
            }
        });
    }

    private void publishOemUnavailable() {
        final Handler worker;
        synchronized (this) {
            if (!running || workerHandler == null) return;
            worker = workerHandler;
            worker.removeCallbacks(pollRunnable);
            worker.post(pollRunnable);
        }
    }

    private void publish(final ContentPorts.VehicleSnapshot snapshot, final IBinder sourceBinder) {
        final Handler sourceWorker;
        synchronized (this) { sourceWorker = workerHandler; }
        publish(snapshot, sourceBinder, sourceWorker);
    }

    private void publish(final ContentPorts.VehicleSnapshot snapshot, final IBinder sourceBinder, final Handler sourceWorker) {
        mainHandler.post(new Runnable() {
            @Override
            public void run() {
                ContentPorts.VehicleSnapshotListener currentListener;
                synchronized (ContentVehicleAdapter.this) {
                    currentListener = running && binder == sourceBinder && workerHandler == sourceWorker ? listener : null;
                }
                if (currentListener != null) {
                    currentListener.onVehicleSnapshot(snapshot);
                }
            }
        });
    }

    private ContentPorts.VehicleSnapshot readSnapshot(IBinder currentBinder) {
        final Handler readWorker;
        final AutomotiveGearReader reader;
        synchronized (this) { readWorker = workerHandler; reader = gearReader; }
        VehicleGear gear = reader == null ? VehicleGear.Unknown : reader.readGear();
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
        int rearWiper = ContentVehicleProtocol.normalizeRearWindowLevel(readInt(currentBinder, REAR_WIPER, AREA_DRIVER));
        int rearWash = ContentVehicleProtocol.normalizeRearWindowLevel(readInt(currentBinder, REAR_WASH, AREA_DRIVER));
        int rearFog = ContentVehicleProtocol.normalizeBinarySwitch(readInt(currentBinder, REAR_FOG, AREA_DRIVER));
        int passengerWindowLock = normalizePassengerWindowLock(readInt(currentBinder, REAR_WINDOW_DISABLE, AREA_DRIVER));
        int maintenance = ContentVehicleProtocol.normalizeWiperMaintenance(
                readInt(currentBinder, FRONT_WIPER_MAINTENANCE, AREA_DRIVER));
        int leftChild = ContentVehicleProtocol.normalizeChildLock(readInt(currentBinder, REAR_CHILD_LOCK_STATE, AREA_REAR_LEFT));
        int rightChild = ContentVehicleProtocol.normalizeChildLock(readInt(currentBinder, REAR_CHILD_LOCK_STATE, AREA_REAR_RIGHT));
        int wireless = ContentVehicleProtocol.normalizeBinarySwitch(readInt(currentBinder, WIRELESS_CHARGING_SWITCH, AREA_DRIVER));
        int wirelessActual = ContentVehicleProtocol.normalizeBinarySwitch(readInt(currentBinder, WIRELESS_CHARGING_STATE, AREA_DRIVER));
        int[] windowPositions = new int[] {
                readInt(currentBinder, WINDOW_POSITION, WINDOW_POS_LEFT_FRONT),
                readInt(currentBinder, WINDOW_POSITION, WINDOW_POS_RIGHT_FRONT),
                readInt(currentBinder, WINDOW_POSITION, WINDOW_POS_LEFT_REAR),
                readInt(currentBinder, WINDOW_POSITION, WINDOW_POS_RIGHT_REAR),
        };
        boolean windowPositionsKnown = allKnownWindowPositions(windowPositions);
        int windowVent = windowPositionsKnown ? ContentVehicleProtocol.normalizeWindowMode(windowPositions) : -1;
        int external = ContentVehicleProtocol.normalizeBinarySwitch(readInt(currentBinder, EXTERNAL_DISCHARGE_SWITCH, AREA_DRIVER));
        List<Integer> brightnessValues = readIntArray(currentBinder, CENTER_BRIGHTNESS, AREA_DRIVER);
        int centerBrightness = ContentVehicleProtocol.normalizeCenterBrightness(brightnessValues);
        List<Float> externalStatus = readFloatArray(currentBinder, EXTERNAL_DISCHARGE_STATUS, AREA_DRIVER);
        boolean externalStatusKnown = ContentVehicleProtocol.isKnownExternalStatus(externalStatus);
        float[] externalStatusValues = toFloatArray(externalStatus);
        int screenGear = readInt(currentBinder, SCREEN_CLEAN_GEAR, AREA_DRIVER);
        ContentPorts.FeatureSnapshot featureSnapshot = new ContentPorts.FeatureSnapshot(
                rearFog, passengerWindowLock, maintenance, -1, leftChild, rightChild, wireless,
                windowVent, external, -1, centerBrightness, centerBrightness >= 0,
                wirelessActual, wirelessActual >= 0, windowPositions, windowPositionsKnown,
                externalStatusValues, externalStatusKnown, connection, screenGear, screenGear >= 0);
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
                || seatKnown || lockKnown || wiperKnown || rearWiper >= 0 || rearWash >= 0
                || rearFog >= 0 || passengerWindowLock >= 0 || maintenance >= 0
                || leftChild >= 0 || rightChild >= 0 || wireless >= 0 || windowVent >= 0
                || external >= 0 || centerBrightness >= 0 || externalStatusKnown;
        ContentPorts.VehicleSnapshot snapshot = new ContentPorts.VehicleSnapshot(available, false,
                temperature, battery, range, chargeState, connection, bms, schedule, chargePowerKw,
                remainingMinutes, ventilation, heating, heatingAutoKnown, heatingAutoActive,
                passengerHeating, passengerHeatingAutoKnown, passengerHeatingAutoActive, steering,
                massage, massageModeRaw, massageSwitchKnown,
                massageActive, seatKnown, lockKnown, ContentVehicleProtocol.isLocked(lockRaw), wiper, wiperKnown,
                rearWiper, rearWiper >= 0, rearWash, rearWash >= 0, "", 0L, false)
                .withFeatureSnapshot(featureSnapshot).withGear(gear);
        synchronized (this) {
            if (running && binder == currentBinder && workerHandler == readWorker) latestSnapshot = snapshot;
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

    private static boolean allKnownWindowPositions(int[] positions) {
        if (positions == null || positions.length != 4) return false;
        for (int position : positions) {
            if (position < 1 || position > 5) return false;
        }
        return true;
    }

    private List<Integer> readIntArray(IBinder currentBinder, int functionId, int area) {
        try {
            List<?> values = getDataArray(currentBinder, functionId, area);
            List<Integer> result = new ArrayList<>();
            for (Object value : values) if (value instanceof Number) result.add(((Number) value).intValue());
            return result;
        } catch (RemoteException | RuntimeException error) {
            return new ArrayList<>();
        }
    }

    private List<Float> readFloatArray(IBinder currentBinder, int functionId, int area) {
        try {
            List<?> values = getDataArray(currentBinder, functionId, area);
            if (values.size() != 7) return new ArrayList<>();
            List<Float> result = new ArrayList<>(values.size());
            for (Object value : values) {
                if (!(value instanceof Number)) return new ArrayList<>();
                result.add(((Number) value).floatValue());
            }
            return result;
        } catch (RemoteException | RuntimeException error) {
            return new ArrayList<>();
        }
    }

    private static float[] toFloatArray(List<Float> values) {
        if (values == null || values.isEmpty()) return new float[0];
        float[] result = new float[values.size()];
        for (int index = 0; index < values.size(); index++) {
            Float value = values.get(index);
            result[index] = value == null ? Float.NaN : value;
        }
        return result;
    }

    private static List<?> getDataArray(IBinder currentBinder, int functionId, int area)
            throws RemoteException {
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            request.writeInterfaceToken(VEHICLE_DESCRIPTOR);
            request.writeInt(functionId);
            request.writeInt(area);
            if (!currentBinder.transact(TRANSACTION_GET_DATA_ARRAY, request, reply, 0)) {
                throw new RemoteException("getDataArray transaction unavailable");
            }
            reply.readException();
            ArrayList<?> values = reply.readArrayList(ContentVehicleAdapter.class.getClassLoader());
            return values == null ? new ArrayList<Object>() : values;
        } finally {
            reply.recycle();
            request.recycle();
        }
    }

    private static void sendDataArray(IBinder currentBinder, int functionId, int area, int[] values)
            throws RemoteException {
        Parcel request = Parcel.obtain();
        Parcel reply = Parcel.obtain();
        try {
            request.writeInterfaceToken(VEHICLE_DESCRIPTOR);
            request.writeInt(functionId);
            request.writeInt(area);
            ArrayList<Integer> list = new ArrayList<>();
            if (values != null) for (int value : values) list.add(value);
            request.writeList(list);
            if (!currentBinder.transact(TRANSACTION_SEND_DATA_ARRAY, request, reply, 0)) {
                throw new RemoteException("sendDataArray transaction unavailable");
            }
            reply.readException();
        } finally {
            reply.recycle();
            request.recycle();
        }
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
