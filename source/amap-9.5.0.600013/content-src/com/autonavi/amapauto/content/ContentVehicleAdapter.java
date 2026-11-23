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
        final ContentVehicleProtocol.Mapping mapping;
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
            this.mapping = mapping(control.getId());
            this.write = this.mapping == null ? null : this.mapping.write(targetLevel);
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

    private ContentVehicleConfig profile;
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
        this.profile = ContentVehicleConfig.mappingProfile(this.context);
    }

    @Override public synchronized void configure(ContentVehicleConfig config) {
        if (config == null) throw new IllegalArgumentException("vehicle config required");
        if (running && (profile == null || !profile.hash().equals(config.hash())))
            throw new IllegalStateException("Vehicle mappings must be installed before start");
        profile = config;
    }

    @Override public String capabilityContract() { return "s56_binder_v2"; }

    @Override public ContentPorts.CapabilityCheck inspectCapability(String id, ContentVehicleProtocol.Mapping mapping) {
        if (mapping == null || !mapping.isVehicle()) return new ContentPorts.CapabilityCheck(ContentPorts.Capability.MISSING, "车辆适配器未实现该映射");
        try {
            context.getPackageManager().getPackageInfo(VEHICLE_SERVICE_PACKAGE, 0);
            return ContentPorts.CapabilityCheck.unknown("适配器合同有效，硬件属性支持待真实回读确认");
        } catch (android.content.pm.PackageManager.NameNotFoundException missing) {
            return new ContentPorts.CapabilityCheck(ContentPorts.Capability.MISSING, "设备未安装所需车辆服务");
        } catch (RuntimeException unavailable) {
            return ContentPorts.CapabilityCheck.unknown("车辆服务身份暂不可读");
        }
    }

    private synchronized ContentVehicleProtocol.Mapping mapping(String id) {
        return profile == null ? null : profile.mapping(id);
    }
    private ContentVehicleProtocol.Write writeFor(String id, int mode) {
        ContentVehicleProtocol.Mapping mapped = mapping(id);
        if ("front_wiper".equals(id) && (mode == 5 || mapped == null)) {
            ContentVehicleProtocol.Mapping automatic = mapping("auto_wiper");
            return automatic == null ? null : automatic.write(mode);
        }
        return mapped == null ? null : mapped.write(mode);
    }
    private ContentVehicleProtocol.Mapping readMapping(String id) {
        ContentVehicleProtocol.Mapping result = mapping(id);
        if (result == null && "front_wiper".equals(id)) result = mapping("auto_wiper");
        return result;
    }
    private synchronized ContentVehicleProtocol.Signal signal(String id) { return profile == null ? null : profile.signal(id); }
    private int readIntSignal(IBinder source, String id) {
        ContentVehicleProtocol.Signal signal = signal(id);
        return signal == null ? -1 : signal.normalize(readInt(source, signal.property.functionId, signal.property.area));
    }
    private float readFloatSignal(IBinder source, String id) {
        ContentVehicleProtocol.Signal signal = signal(id);
        return signal == null ? Float.NaN : signal.normalize(readFloat(source, signal.property.functionId, signal.property.area));
    }
    private List<Float> readFloatArraySignal(IBinder source, String id) {
        ContentVehicleProtocol.Signal signal = signal(id);
        List<Float> values = signal == null ? new ArrayList<Float>() : readFloatArray(source, signal.property.functionId, signal.property.area);
        for (int i = 0; i < values.size(); i++) values.set(i, signal.normalize(values.get(i)));
        return values;
    }
    private int[] readMappedRaw(IBinder source, ContentVehicleProtocol.Mapping mapping) {
        if (mapping == null || !mapping.isVehicle()) return new int[0];
        if ("brightness_array".equals(mapping.kind)) {
            ContentVehicleProtocol.Property address = mapping.reads.get(0);
            List<Integer> values = readIntArray(source, address.functionId, address.area);
            if (values.size() != 2) return new int[0];
            return new int[] { values.get(0), values.get(1) };
        }
        int[] values = new int[mapping.reads.size()];
        for (int i = 0; i < values.length; i++) {
            ContentVehicleProtocol.Property address = mapping.reads.get(i);
            values[i] = readInt(source, address.functionId, address.area);
        }
        return values;
    }
    private int readSemantic(IBinder source, String id) { return readSemantic(source, readMapping(id)); }
    private int readSemantic(IBinder source, ContentVehicleProtocol.Mapping mapping) {
        return mapping == null ? -1 : mapping.normalize(readMappedRaw(source, mapping));
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
                || target < 0 || target > 1 || writeFor(featureId, target) == null) return false;
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
        ContentVehicleProtocol.Write write = writeFor(featureId, target);
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
                && writeFor("brightness", level) != null;
    }

    @Override
    public boolean requestCenterBrightness(final int level, final long requestId, long deadlineUptimeMs) {
        if (!isCenterBrightnessAvailable(level) || requestId <= 0L
                || deadlineUptimeMs <= android.os.SystemClock.uptimeMillis()) return false;
        final ContentVehicleProtocol.Mapping mapped = mapping("brightness");
        final ContentVehicleProtocol.Write write = writeFor("brightness", level);
        if (mapped == null || write == null) return false;
        final int[] values = new int[] { mapped.arrayPrefix, write.value };
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
                    sendDataArray(currentBinder, write.functionId, write.area, values);
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
                && readMapping(controlId) != null;
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
                || writeFor(controlId, level) == null) return false;
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
        return isLockAvailable() && queueCommand(writeFor("lock", locked ? 1 : 0), requestId);
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
        return queueCommand(writeFor(controlId, level), requestId);
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
                || writeFor(controlId, targetLevel) == null || !isRearWindowControlAvailable(controlId)) return false;
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
            int level = readSemantic(request.sourceBinder, request.mapping);
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
            sendData(request.sourceBinder, request.write.functionId, request.write.area, request.write.value);
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
            int level = readSemantic(request.sourceBinder, request.mapping);
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
        } catch (RuntimeException error) {
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
    public synchronized boolean isSeatControlAvailable(String seatId) {
        VehicleControl control = VehicleControl.fromId(seatId);
        if (control == null || control == VehicleControl.Lock || control.isRearWindow()) return false;
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
                    int actual = readSemantic(currentBinder, featureId);
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
                        sendMappedMassageStrength(currentBinder, write);
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

    private void sendMappedMassageStrength(IBinder source, ContentVehicleProtocol.Write write) throws RemoteException {
        ContentVehicleProtocol.Mapping mapping = mapping("seat_massage");
        ContentVehicleProtocol.MassagePreparation p = mapping == null ? null : mapping.preparation;
        if (p == null) throw new RemoteException("massage mapping unavailable");
        int state = getData(source, p.switchProperty.functionId, p.switchProperty.area);
        if (state == p.off) sendData(source, p.switchProperty.functionId, p.switchProperty.area, p.on);
        else if (state != p.on) throw new RemoteException("massage switch unavailable");
        long deadline = android.os.SystemClock.uptimeMillis() + MASSAGE_START_TIMEOUT_MS;
        do {
            state = getData(source, p.switchProperty.functionId, p.switchProperty.area);
            int mode = getData(source, p.modeProperty.functionId, p.modeProperty.area);
            int strength = getData(source, p.strengthProperty.functionId, p.strengthProperty.area);
            if (state == p.on && mode >= p.modeMin && mode <= p.modeMax && strength >= p.strengthMin && strength <= p.strengthMax) break;
            if (state != p.off && state != p.on || android.os.SystemClock.uptimeMillis() >= deadline)
                throw new RemoteException("massage did not initialize");
            android.os.SystemClock.sleep(100L);
        } while (true);
        sendData(source, write.functionId, write.area, write.value);
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
        float temperature = readFloatSignal(currentBinder, "cabin_temperature");
        float soc = readFloatSignal(currentBinder, "battery_soc");
        int battery = Float.isNaN(soc) || soc < 0.0f || soc > 100.0f ? -1 : Math.round(soc);
        int range = readIntSignal(currentBinder, "range_remaining");
        int connection = readIntSignal(currentBinder, "charge_connection");
        int bms = readIntSignal(currentBinder, "charge_bms");
        int schedule = readIntSignal(currentBinder, "charge_schedule");
        // S56 CSV: voltage 0x344 is INT32 (40); current 0x345 is FLOAT (60).
        // getDataFloat rejects INT32 properties with the OEM -1000 sentinel.
        float hvVoltage = readIntSignal(currentBinder, "charge_hv_voltage");
        float hvCurrent = readFloatSignal(currentBinder, "charge_hv_current");
        int remainingRaw = readIntSignal(currentBinder, "charge_remaining_time");
        if (connection != lastChargeConnection || bms != lastChargeBms
                || schedule != lastChargeSchedule) {
            Log.i(TAG, "charge raw connection=" + connection + " bms=" + bms
                    + " schedule=" + schedule);
            lastChargeConnection = connection;
            lastChargeBms = bms;
            lastChargeSchedule = schedule;
        }
        int ventilation = readSemantic(currentBinder, "seat_ventilation");
        ContentVehicleProtocol.Mapping heatingMapping = mapping("seat_heating"), passengerMapping = mapping("passenger_seat_heating");
        int[] heatingRaw = readMappedRaw(currentBinder, heatingMapping), passengerRaw = readMappedRaw(currentBinder, passengerMapping);
        int heating = heatingMapping == null ? -1 : heatingMapping.normalize(heatingRaw);
        int passengerHeating = passengerMapping == null ? -1 : passengerMapping.normalize(passengerRaw);
        int steering = readSemantic(currentBinder, "steering_heating");
        int massage = readSemantic(currentBinder, "seat_massage");
        ContentVehicleProtocol.Mapping massageMapping = mapping("seat_massage");
        ContentVehicleProtocol.MassagePreparation massagePreparation = massageMapping == null ? null : massageMapping.preparation;
        int massageSwitch = massagePreparation == null ? -1 : readInt(currentBinder,
                massagePreparation.switchProperty.functionId, massagePreparation.switchProperty.area);
        int massageModeRaw = massagePreparation == null ? -1 : readInt(currentBinder,
                massagePreparation.modeProperty.functionId, massagePreparation.modeProperty.area);
        boolean massageSwitchKnown = massagePreparation != null && (massageSwitch == massagePreparation.on || massageSwitch == massagePreparation.off);
        boolean massageActive = massagePreparation != null && massageSwitch == massagePreparation.on;
        int lock = readSemantic(currentBinder, "lock");
        boolean lockKnown = lock >= 0;
        int wiper = readSemantic(currentBinder, "front_wiper");
        boolean wiperKnown = wiper >= 0;
        int rearWiper = readSemantic(currentBinder, "rear_wiper"), rearWash = readSemantic(currentBinder, "rear_wash");
        int rearFog = readSemantic(currentBinder, "rear_fog");
        int passengerWindowLock = readSemantic(currentBinder, "passenger_window_lock");
        int maintenance = readSemantic(currentBinder, "wiper_maintenance");
        int leftChild = readSemantic(currentBinder, "left_child_lock"), rightChild = readSemantic(currentBinder, "right_child_lock");
        int wireless = readSemantic(currentBinder, "wireless_charging");
        int wirelessActual = readIntSignal(currentBinder, "wireless_charging_actual");
        int[] windowPositions = readMappedRaw(currentBinder, mapping("window_vent"));
        boolean windowPositionsKnown = allKnownWindowPositions(windowPositions);
        ContentVehicleProtocol.Mapping windowMapping = mapping("window_vent");
        int windowVent = windowMapping == null ? -1 : windowMapping.normalize(windowPositions);
        int external = readSemantic(currentBinder, "external_discharge");
        int centerBrightness = readSemantic(currentBinder, "brightness");
        List<Float> externalStatus = readFloatArraySignal(currentBinder, "external_discharge_status");
        boolean externalStatusKnown = ContentVehicleProtocol.isKnownExternalStatus(externalStatus);
        float[] externalStatusValues = toFloatArray(externalStatus);
        int screenGear = readIntSignal(currentBinder, "screen_gear");
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
        int heatingAuto = heatingMapping == null ? -1 : heatingMapping.automaticCompanionState(heatingRaw, VehicleControl.Heating.getAutomaticLevel());
        int passengerAuto = passengerMapping == null ? -1 : passengerMapping.automaticCompanionState(passengerRaw, VehicleControl.PassengerHeating.getAutomaticLevel());
        boolean heatingAutoKnown = heatingAuto >= 0, heatingAutoActive = heatingAuto == 1;
        boolean passengerHeatingAutoKnown = passengerAuto >= 0, passengerHeatingAutoActive = passengerAuto == 1;
        boolean seatKnown = ventilation >= 0 || heating >= 0 || passengerHeating >= 0 || steering >= 0 || massageSwitchKnown;
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
                massageActive, seatKnown, lockKnown, lock == 1, wiper, wiperKnown,
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
            for (Object value : values) {
                if (!(value instanceof Integer)) return new ArrayList<>();
                result.add((Integer) value);
            }
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
