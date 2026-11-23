package com.autonavi.amapauto.content;

import com.icar03.content.model.VehicleControl;
import com.icar03.content.model.VehicleGear;

import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.content.Context;
import android.os.Build;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.SystemClock;
import android.provider.Settings;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
public final class ContentPorts {
    private ContentPorts() {
    }

    /** A copied batch for the next intersection selected by Amap's cruise engine. */
    public static final class CruiseSignalSnapshot {
        public static final CruiseSignalSnapshot EMPTY = new CruiseSignalSnapshot(
                java.util.Collections.<CruiseSignal>emptyList(), -1L);
        public final java.util.List<CruiseSignal> lights;
        public final long receivedAtElapsedMs;

        private CruiseSignalSnapshot(java.util.List<CruiseSignal> lights, long receivedAtElapsedMs) {
            this.lights = java.util.Collections.unmodifiableList(new java.util.ArrayList<>(lights));
            this.receivedAtElapsedMs = receivedAtElapsedMs;
        }

        /** Flat waitNum/direction/status/countDown/showType values, copied before HMI mutation. */
        public static CruiseSignalSnapshot fromRaw(int[] raw, long receivedAtElapsedMs) {
            if (raw == null || raw.length == 0 || raw.length % 5 != 0 || receivedAtElapsedMs < 0L) return EMPTY;
            java.util.Map<Integer, CruiseSignal> byDirection = new java.util.TreeMap<>();
            java.util.Set<Integer> ambiguous = new java.util.HashSet<>();
            for (int i = 0; i < raw.length; i += 5) {
                int direction = raw[i + 1], color = raw[i + 2], seconds = raw[i + 3], showType = raw[i + 4];
                if (direction < 1 || direction > 3 || color < 0 || color > 1 || showType < 0) continue;
                if (showType > 0 && seconds < 0) continue;
                if (byDirection.containsKey(direction)) ambiguous.add(direction);
                byDirection.put(direction, new CruiseSignal(direction, color,
                        showType > 0 && seconds > 0 ? seconds : -1, raw[i]));
            }
            for (Integer direction : ambiguous) byDirection.remove(direction);
            return byDirection.isEmpty() ? EMPTY : new CruiseSignalSnapshot(
                    new java.util.ArrayList<>(byDirection.values()), receivedAtElapsedMs);
        }

        /**
         * Map display DTO values: showType/crossManeuverID/lightCountdown/status.
         *
         * This is a different contract from CameraLightInfoWrapper. The native
         * cruise layer emits showType 2/3, maneuver 1/2/8 and status 2/3/4/5/6/8.
         * The status values are raw map-layer states: 2/3 red, 4/5/6 green, 8
         * yellow. Unknown values are discarded instead of being guessed.
         */
        public static CruiseSignalSnapshot fromMapRaw(int[] raw, int lightCount, boolean sdType,
                long receivedAtElapsedMs) {
            if (raw == null || raw.length == 0 || raw.length % 4 != 0 || raw.length > 16 * 4
                    || lightCount < 1 || lightCount > 16 || receivedAtElapsedMs < 0L) return EMPTY;
            java.util.Map<Integer, CruiseSignal> byDirection = new java.util.TreeMap<>();
            java.util.Set<Integer> ambiguous = new java.util.HashSet<>();
            for (int i = 0; i < raw.length; i += 4) {
                int showType = raw[i], crossManeuver = raw[i + 1], seconds = raw[i + 2], status = raw[i + 3];
                int direction;
                if (crossManeuver == 1) {
                    direction = 1; // map layer: turn_left
                } else if (crossManeuver == 2) {
                    direction = 3; // map layer: turn_right
                } else if (crossManeuver == 8) {
                    direction = 2; // map layer: go_straight
                } else {
                    continue;
                }
                if (showType != 2 && showType != 3) continue;
                // Group markers only render main lights, never a secondary from another row.
                if (lightCount >= 2 && showType != 3) continue;
                // Native cruise only emits the secondary-light form for straight.
                if (showType == 2 && crossManeuver != 8) continue;
                int color;
                if (status == 2 || status == 3) {
                    color = 0; // raw map status: red
                } else if (status == 4 || status == 5 || status == 6) {
                    color = 1; // raw map status: green
                } else if (status == 8) {
                    color = 2; // raw map status: yellow
                } else {
                    continue;
                }
                int displaySeconds = seconds > 0 ? seconds : -1;
                // Main-light yellow is rendered as “注意” by the map and has no number.
                if (showType == 3 && (status == 8 || status == 6 && !sdType)) displaySeconds = -1;
                if (byDirection.containsKey(direction)) ambiguous.add(direction);
                byDirection.put(direction, new CruiseSignal(direction, color, displaySeconds, 0));
            }
            for (Integer direction : ambiguous) byDirection.remove(direction);
            return byDirection.isEmpty() ? EMPTY : new CruiseSignalSnapshot(
                    new java.util.ArrayList<>(byDirection.values()), receivedAtElapsedMs);
        }
    }


    public static final class CruiseSignal {
        public final int direction;
        public final int color;
        /** -1 means no qualified numeric countdown; zero never synthesizes a light transition. */
        public final int seconds;
        public final int waitNum;
        private CruiseSignal(int direction, int color, int seconds, int waitNum) {
            this.direction = direction;
            this.color = color;
            this.seconds = seconds;
            this.waitNum = waitNum;
        }
    }

    /** Classification shared by media presentation, lyrics and artwork policy. */
    public enum MediaSongIdentity {
        UNKNOWN,
        SONG,
        NON_SONG
    }

    public interface SystemPort {
        /** Pure configuration; concrete adapters may map semantic channels onto supported transports. */
        default void configure(ContentVehicleConfig config) { }
        default String capabilityContract() { return "system-port-v1"; }
        default CapabilityCheck inspectCapability(String semanticId, ContentVehicleProtocol.Mapping mapping) {
            return CapabilityCheck.unknown("尚无系统硬件支持证据");
        }

        SystemSnapshot read(int kind);

        boolean write(int kind, int percent);

        /** Whether the vehicle exposes its native full-screen screen-cleaning entry point. */
        default boolean screenCleaningAvailable() {
            return false;
        }

        /** Requests the vehicle's native screen-cleaning surface; no local overlay is created. */
        default boolean startScreenCleaning() {
            return false;
        }

        /** The OEM SystemUI control-center broadcast is available to the content host. */
        default boolean controlCenterAvailable() {
            return false;
        }

        /** Sends the verified registered-only SystemUI control-center action. */
        default boolean openControlCenter() {
            return false;
        }

        /** Releases a cached vendor Binder connection when the owning Store is destroyed. */
        default void close() {
        }
    }

    public static final class SystemSnapshot {
        public final boolean available;
        public final int percent;
        /** Discrete group volumes may round a continuous slider target to a nearby percentage. */
        public final int tolerancePercent;

        public SystemSnapshot(boolean available, int percent) {
            this(available, percent, 1);
        }

        public SystemSnapshot(boolean available, int percent, int tolerancePercent) {
            this.available = available;
            this.percent = Math.max(0, Math.min(100, percent));
            this.tolerancePercent = Math.max(0, tolerancePercent);
        }

        public boolean matches(int targetPercent) {
            return available && Math.abs(percent - Math.max(0, Math.min(100, targetPercent))) <= tolerancePercent;
        }
    }

    /** Android brightness plus the S56_HQX com.mengbo four-group car-audio service. */
    public static final class AndroidSystemPort implements SystemPort {
        private static final String AUDIO_ACTION = "com.mengbo.media.IAudio";
        private static final String AUDIO_PACKAGE = "com.mengbo.media";
        private static final String AUDIO_ROOT_DESCRIPTOR = "com.mengbo.media.client.IAudio";
        private static final String AUDIO_DESCRIPTOR = "com.mengbo.media.client.ICarAudio";
        private static final String AUDIO_SERVICE_NAME = "mb_audio_service";
        private static final int AUDIO_LOOKUP_TRANSACTION = 1;
        private static final int AUDIO_SET_GROUP_VOLUME_TRANSACTION = 1;
        private static final int AUDIO_GET_GROUP_MAX_TRANSACTION = 2;
        private static final int AUDIO_GET_GROUP_MIN_TRANSACTION = 3;
        private static final int AUDIO_GET_GROUP_VOLUME_TRANSACTION = 4;
        private static final int AUDIO_GET_GROUP_FOR_USAGE_TRANSACTION = 23;
        private static final long AUDIO_BIND_WAIT_MS = 300L;
        private static final long AUDIO_RETRY_INTERVAL_MS = 1000L;

        /* Confirmed by the OEM IAudio mapping: media 1→0, call 2→2, nav 12→1, voice 11/16→3. */
        private static final int[] AUDIO_USAGES = {1, 2, 12, 11};
        private static final int[] AUDIO_GROUPS = {0, 2, 1, 3};
        private final Context context;
        private final Object audioLock = new Object();
        private final ServiceConnection audioConnection = new ServiceConnection() {
            @Override public void onServiceConnected(ComponentName name, IBinder service) {
                CountDownLatch signal;
                synchronized (audioLock) {
                    if (closed) {
                        signal = audioConnectionLatch;
                        audioConnectionLatch = null;
                        audioBinding = false;
                    } else {
                        audioRoot = service;
                        audioBinder = null;
                        audioRanges = null;
                        signal = audioConnectionLatch;
                        audioConnectionLatch = null;
                        audioBinding = false;
                    }
                }
                if (signal != null) signal.countDown();
            }

            @Override public void onServiceDisconnected(ComponentName name) {
                disconnectAudio();
            }

            @Override public void onBindingDied(ComponentName name) {
                disconnectAudio();
            }

            @Override public void onNullBinding(ComponentName name) {
                disconnectAudio();
            }
        };
        private IBinder audioRoot;
        private IBinder audioBinder;
        private IBinder validatedRoot;
        private VolumeRange[] audioRanges;
        private CountDownLatch audioConnectionLatch;
        private boolean audioBinding;
        private boolean audioBound;
        private boolean closed;
        private long nextAudioBindUptimeMs;
        private volatile ContentVehicleConfig config;

        @Override public void configure(ContentVehicleConfig config) { this.config = config; }

        @Override public String capabilityContract() { return "s56-system-port-v2"; }
        @Override public CapabilityCheck inspectCapability(String id, ContentVehicleProtocol.Mapping mapping) {
            if (mapping == null || !"system_port".equals(mapping.adapter)) return new CapabilityCheck(Capability.MISSING, "系统适配器未实现该映射");
            if ("screen_clean".equals(mapping.kind)) {
                try {
                    ActivityInfo activity = context.getPackageManager().getActivityInfo(SCREEN_CLEAN_COMPONENT, PackageManager.MATCH_DISABLED_COMPONENTS);
                    if (!activity.exported) return new CapabilityCheck(Capability.MISSING, "清洁屏幕入口不允许外部启动");
                    if (!activity.enabled || activity.applicationInfo == null || !activity.applicationInfo.enabled
                            || activity.permission != null && !activity.permission.isEmpty()
                            && context.checkSelfPermission(activity.permission) != PackageManager.PERMISSION_GRANTED)
                        return CapabilityCheck.unknown("清洁屏幕入口暂不可用");
                    return new CapabilityCheck(Capability.SUPPORTED, "已确认清洁屏幕组件合同");
                } catch (PackageManager.NameNotFoundException missing) {
                    return new CapabilityCheck(Capability.MISSING, "设备未安装清洁屏幕入口");
                } catch (RuntimeException unknown) { return CapabilityCheck.unknown("清洁屏幕组件身份暂不可读"); }
            }
            if (!"volume".equals(mapping.kind)) return CapabilityCheck.unknown("系统入口接收方尚未确认");
            try {
                context.getPackageManager().getPackageInfo(AUDIO_PACKAGE, 0);
                return CapabilityCheck.unknown("音量适配器合同有效，硬件分组支持待真实回读");
            } catch (PackageManager.NameNotFoundException absent) {
                return new CapabilityCheck(Capability.MISSING, "设备未安装所需音频服务");
            } catch (RuntimeException unknown) {
                return CapabilityCheck.unknown("音频服务身份暂不可读");
            }
        }

        private int mappedSystemKind(int kind) {
            if (config == null || kind == 0) return kind;
            String[] ids = {"volume", "call_volume", "navigation_volume", "voice_volume"};
            if (kind < 1 || kind > ids.length || !config.allowsSystem(ids[kind - 1])) return -1;
            ContentVehicleProtocol.Mapping mapping = config.mapping(ids[kind - 1]);
            return mapping == null || !"system_port".equals(mapping.adapter) ? -1 : mapping.channel;
        }

        public AndroidSystemPort(Context context) {
            this.context = context.getApplicationContext();
        }

        private static final ComponentName SCREEN_CLEAN_COMPONENT = new ComponentName(
                "com.mengbo.smartscene", "com.chery.smartscene.UI.ScreenCleanActivity");

        /** Verified ordinary-app entry; availability does not infer a vehicle gear requirement. */
        @Override public boolean screenCleaningAvailable() {
            if (closed || Build.VERSION.SDK_INT < 28) return false;
            try {
                ActivityInfo activity = context.getPackageManager().getActivityInfo(SCREEN_CLEAN_COMPONENT, 0);
                return activity.enabled && activity.applicationInfo != null && activity.applicationInfo.enabled
                        && activity.exported
                        && (activity.permission == null || activity.permission.isEmpty()
                            || context.checkSelfPermission(activity.permission) == PackageManager.PERMISSION_GRANTED);
            } catch (PackageManager.NameNotFoundException | RuntimeException exception) {
                return false;
            }
        }

        /** The OEM long-press exit owns restoration; do not interrupt it or create a local overlay. */
        @Override public boolean startScreenCleaning() {
            if (!screenCleaningAvailable()) return false;
            try {
                ActivityOptions options = ActivityOptions.makeBasic();
                options.setLaunchDisplayId(0);
                ActivityOptions.class.getMethod("setLaunchWindowingMode", int.class).invoke(options, 5);
                options.setLaunchBounds(new android.graphics.Rect(0, 0, 1920, 1080));
                context.startActivity(new Intent().setComponent(SCREEN_CLEAN_COMPONENT)
                        .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK), options.toBundle());
                return true;
            } catch (ReflectiveOperationException | RuntimeException exception) {
                return false;
            }
        }

        @Override public boolean controlCenterAvailable() {
            return !closed;
        }

        @Override public boolean openControlCenter() {
            if (!controlCenterAvailable()) return false;
            try {
                Intent open = new Intent("action.plugin.test.open.ac");
                open.setPackage("com.android.systemui");
                open.addFlags(Intent.FLAG_RECEIVER_REGISTERED_ONLY);
                context.sendBroadcast(open);
                return true;
            } catch (RuntimeException exception) {
                return false;
            }
        }

        @Override public SystemSnapshot read(int kind) {
            final int semanticKind = kind;
            kind = mappedSystemKind(kind);
            if (kind == 0) return readScreenBrightness();
            if (kind < 1 || kind > AUDIO_GROUPS.length) return new SystemSnapshot(false, 0);
            VolumeRange range = ensureAudioRange(kind);
            if (range == null) return new SystemSnapshot(false, 0);
            try {
                int raw = transactInt(audioBinder, AUDIO_DESCRIPTOR,
                        AUDIO_GET_GROUP_VOLUME_TRANSACTION, range.group);
                if (raw < range.min || raw > range.max) return new SystemSnapshot(false, 0);
                ContentVehicleConfig currentConfig = config;
                if (currentConfig != null && semanticKind >= 1 && semanticKind <= 4)
                    currentConfig.acceptSystemReadback(new String[] {"volume", "call_volume", "navigation_volume", "voice_volume"}[semanticKind - 1]);
                return new SystemSnapshot(true, volumePercent(raw, range.min, range.max),
                        volumeTolerance(range.min, range.max));
            } catch (RemoteException | RuntimeException exception) {
                invalidateAudio(audioBinder);
                return new SystemSnapshot(false, 0);
            }
        }

        @Override public boolean write(int kind, int percent) {
            kind = mappedSystemKind(kind);
            if (kind == 0) return writeScreenBrightness(percent);
            if (kind < 1 || kind > AUDIO_GROUPS.length) return false;
            VolumeRange range = ensureAudioRange(kind);
            if (range == null) return false;
            int target = Math.max(0, Math.min(100, percent));
            try {
                transactVoid(audioBinder, AUDIO_DESCRIPTOR, AUDIO_SET_GROUP_VOLUME_TRANSACTION,
                        range.group, volumeRaw(target, range.min, range.max), 0);
                return true;
            } catch (RemoteException | RuntimeException exception) {
                invalidateAudio(audioBinder);
                return false;
            }
        }

        @Override public void close() {
            boolean shouldUnbind;
            synchronized (audioLock) {
                closed = true;
                shouldUnbind = audioBound;
                audioRoot = null;
                audioBinder = null;
                validatedRoot = null;
                audioRanges = null;
                audioBinding = false;
                audioBound = false;
                if (audioConnectionLatch != null) audioConnectionLatch.countDown();
                audioConnectionLatch = null;
            }
            if (shouldUnbind) {
                try { context.unbindService(audioConnection); } catch (IllegalArgumentException ignoredException) { }
            }
        }

        public static int volumePercent(int raw, int min, int max) {
            if (max <= min || raw < min || raw > max) return -1;
            return Math.max(0, Math.min(100, Math.round((raw - min) * 100f / (max - min))));
        }

        public static int volumeRaw(int percent, int min, int max) {
            if (max <= min) return min;
            int target = Math.max(0, Math.min(100, percent));
            return min + Math.round((max - min) * target / 100f);
        }

        public static int volumeTolerance(int min, int max) {
            if (max <= min) return 100;
            return Math.max(1, (int) Math.ceil(50f / (max - min)) + 1);
        }

        private SystemSnapshot readScreenBrightness() {
            try {
                int raw = Settings.System.getInt(context.getContentResolver(),
                        Settings.System.SCREEN_BRIGHTNESS, -1);
                boolean available = raw >= 0 && (Build.VERSION.SDK_INT < 23
                        || Settings.System.canWrite(context));
                return new SystemSnapshot(available, raw < 0 ? 0 : Math.round(raw * 100f / 255f));
            } catch (SecurityException | IllegalArgumentException exception) {
                return new SystemSnapshot(false, 0);
            }
        }

        private boolean writeScreenBrightness(int percent) {
            int target = Math.max(0, Math.min(100, percent));
            try {
                if (Build.VERSION.SDK_INT >= 23 && !Settings.System.canWrite(context)) return false;
                return Settings.System.putInt(context.getContentResolver(),
                        Settings.System.SCREEN_BRIGHTNESS, Math.round(target * 255f / 100f));
            } catch (SecurityException | IllegalArgumentException exception) {
                return false;
            }
        }

        private VolumeRange ensureAudioRange(int kind) {
            IBinder root = ensureAudioRoot();
            if (root == null) return null;
            synchronized (audioLock) {
                if (audioBinder != null && audioBinder.isBinderAlive() && validatedRoot == root
                        && audioRanges != null) return audioRanges[kind - 1];
            }
            try {
                if (!AUDIO_ROOT_DESCRIPTOR.equals(root.getInterfaceDescriptor())) throw new RemoteException("audio root descriptor");
                IBinder binder = lookupAudioBinder(root);
                if (binder == null || !binder.isBinderAlive()
                        || !AUDIO_DESCRIPTOR.equals(binder.getInterfaceDescriptor())) {
                    throw new RemoteException("car audio descriptor");
                }
                VolumeRange[] ranges = new VolumeRange[AUDIO_GROUPS.length];
                for (int i = 0; i < ranges.length; i++) {
                    int group = transactInt(binder, AUDIO_DESCRIPTOR,
                            AUDIO_GET_GROUP_FOR_USAGE_TRANSACTION, AUDIO_USAGES[i]);
                    if (group != AUDIO_GROUPS[i]) throw new RemoteException("audio group mapping");
                    int min = transactInt(binder, AUDIO_DESCRIPTOR,
                            AUDIO_GET_GROUP_MIN_TRANSACTION, group);
                    int max = transactInt(binder, AUDIO_DESCRIPTOR,
                            AUDIO_GET_GROUP_MAX_TRANSACTION, group);
                    if (min < 0 || max <= min) throw new RemoteException("audio group range");
                    ranges[i] = new VolumeRange(group, min, max);
                }
                synchronized (audioLock) {
                    if (closed) return null;
                    audioBinder = binder;
                    validatedRoot = root;
                    audioRanges = ranges;
                    return ranges[kind - 1];
                }
            } catch (RemoteException | RuntimeException exception) {
                invalidateAudio(null);
                return null;
            }
        }

        private IBinder ensureAudioRoot() {
            CountDownLatch wait;
            boolean startBinding = false;
            synchronized (audioLock) {
                if (closed) return null;
                if (audioRoot != null && audioRoot.isBinderAlive()) return audioRoot;
                long now = SystemClock.uptimeMillis();
                if (audioBinding) {
                    wait = audioConnectionLatch;
                } else if (now >= nextAudioBindUptimeMs) {
                    audioBinding = true;
                    audioConnectionLatch = new CountDownLatch(1);
                    wait = audioConnectionLatch;
                    nextAudioBindUptimeMs = now + AUDIO_RETRY_INTERVAL_MS;
                    startBinding = true;
                } else {
                    return null;
                }
            }
            if (startBinding) {
                boolean bound;
                try {
                    Intent intent = new Intent(AUDIO_ACTION).setPackage(AUDIO_PACKAGE);
                    bound = context.bindService(intent, audioConnection, Context.BIND_AUTO_CREATE);
                } catch (RuntimeException exception) {
                    bound = false;
                }
                synchronized (audioLock) {
                    audioBound = bound;
                    if (!bound) {
                        audioBinding = false;
                        if (audioConnectionLatch != null) audioConnectionLatch.countDown();
                        audioConnectionLatch = null;
                    }
                }
            }
            if (wait != null) {
                try { wait.await(AUDIO_BIND_WAIT_MS, TimeUnit.MILLISECONDS); }
                catch (InterruptedException exception) { Thread.currentThread().interrupt(); }
            }
            synchronized (audioLock) {
                return audioRoot != null && audioRoot.isBinderAlive() ? audioRoot : null;
            }
        }

        private IBinder lookupAudioBinder(IBinder root) throws RemoteException {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            try {
                data.writeInterfaceToken(AUDIO_ROOT_DESCRIPTOR);
                data.writeString(AUDIO_SERVICE_NAME);
                if (!root.transact(AUDIO_LOOKUP_TRANSACTION, data, reply, 0)) {
                    throw new RemoteException("audio lookup not handled");
                }
                reply.readException();
                return reply.readStrongBinder();
            } finally {
                reply.recycle();
                data.recycle();
            }
        }

        private static int transactInt(IBinder binder, String descriptor, int transaction, int... args)
                throws RemoteException {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            try {
                data.writeInterfaceToken(descriptor);
                for (int arg : args) data.writeInt(arg);
                if (!binder.transact(transaction, data, reply, 0)) {
                    throw new RemoteException("audio transaction not handled: " + transaction);
                }
                reply.readException();
                return reply.readInt();
            } finally {
                reply.recycle();
                data.recycle();
            }
        }

        private static void transactVoid(IBinder binder, String descriptor, int transaction, int... args)
                throws RemoteException {
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            try {
                data.writeInterfaceToken(descriptor);
                for (int arg : args) data.writeInt(arg);
                if (!binder.transact(transaction, data, reply, 0)) {
                    throw new RemoteException("audio transaction not handled: " + transaction);
                }
                reply.readException();
            } finally {
                reply.recycle();
                data.recycle();
            }
        }

        private void invalidateAudio(IBinder binder) {
            synchronized (audioLock) {
                if (binder == null || binder == audioBinder) {
                    audioBinder = null;
                    validatedRoot = null;
                    audioRanges = null;
                }
            }
        }

        private void disconnectAudio() {
            CountDownLatch signal;
            synchronized (audioLock) {
                audioRoot = null;
                audioBinder = null;
                validatedRoot = null;
                audioRanges = null;
                audioBinding = false;
                audioBound = false;
                signal = audioConnectionLatch;
                audioConnectionLatch = null;
            }
            if (signal != null) signal.countDown();
        }

        private static final class VolumeRange {
            final int group;
            final int min;
            final int max;

            VolumeRange(int group, int min, int max) {
                this.group = group;
                this.min = min;
                this.max = max;
            }
        }
    }

    public interface VehicleSnapshotListener {
        void onVehicleSnapshot(VehicleSnapshot snapshot);

        void onVehicleCommandFailed(long requestId, String message);

        /** Transport completed; this is not a vehicle-state confirmation. */
        default void onVehicleCommandSent(long requestId) {
        }
    }

    /** Persistent support evidence is separate from a temporary transport connection. */
    public enum Capability { SUPPORTED, MISSING, UNKNOWN }

    public static final class CapabilityCheck {
        public final Capability status;
        public final String reason;
        public CapabilityCheck(Capability status, String reason) {
            this.status = status == null ? Capability.UNKNOWN : status;
            this.reason = reason == null ? "" : reason;
        }
        public static CapabilityCheck unknown(String reason) { return new CapabilityCheck(Capability.UNKNOWN, reason); }
    }

    public interface VehiclePort {
        /** Installs validated addresses/codecs before start; never performs a vehicle action. */
        default void configure(ContentVehicleConfig config) { }

        /** Stable implemented contract, independent of class name, app version and connection. */
        default String capabilityContract() { return "vehicle-port-v1"; }

        /** Bounded read-only support inspection. An offline transport must report UNKNOWN. */
        default CapabilityCheck inspectCapability(String semanticId, ContentVehicleProtocol.Mapping mapping) {
            return CapabilityCheck.unknown("尚无该功能的硬件支持证据");
        }

        /** Transport only; a valid readback and an executable target remain separate. */
        boolean isAvailable();

        boolean isLockAvailable();

        /** Implemented control family; adapters can narrow this for actual firmware support. */
        default boolean isSeatControlAvailable(String seatId) {
            VehicleControl control = VehicleControl.fromId(seatId);
            return isAvailable() && control != null && control != VehicleControl.Lock;
        }

        default boolean isSeatLevelAvailable(String seatId, int level) {
            VehicleControl control = VehicleControl.fromId(seatId);
            return control != null && control.isLevel(level) && isSeatControlAvailable(seatId);
        }

        /** A transition uses the same target contract, including entry to and exit from AUTO. */
        default boolean isSeatLevelAvailable(String seatId, int currentLevel, int targetLevel) {
            return isSeatLevelAvailable(seatId, targetLevel);
        }

        /** Generic level contract. Defaults bridge existing injected seat ports. */
        default boolean isControlAvailable(String controlId) {
            return isSeatControlAvailable(controlId);
        }

        default boolean isControlLevelAvailable(String controlId, int level) {
            return isSeatLevelAvailable(controlId, level);
        }

        default boolean isControlLevelAvailable(String controlId, int currentLevel, int targetLevel) {
            return isSeatLevelAvailable(controlId, currentLevel, targetLevel);
        }

        default boolean requestControlLevel(String controlId, int level, long requestId) {
            return requestSeatLevel(controlId, level, requestId);
        }

        /** Non-idempotent rear-window actions never use the legacy level request path. */
        default boolean isRearWindowControlAvailable(String controlId) {
            return false;
        }

        /** Deadline uses SystemClock.uptimeMillis. expectedLevel is an actual-state precondition.
         * RearWiper permits only the opposite target; RearWash permits only idle0 -> trigger1. */
        default boolean requestRearWindow(String controlId, int expectedLevel, int targetLevel,
                long requestId, long deadlineUptimeMs) {
            return false;
        }

        /** Local cancellation only: invalidate unsent work and scoped reads, never write a restore.
         * An already executing synchronous Binder call cannot be physically cancelled. */
        default void cancelRearWindowRequest(long requestId) {
        }

        /** A feature owns its own raw-state predicate and request target. */
        default boolean isFeatureAvailable(String featureId, int target) {
            return isAvailable();
        }

        default boolean requestFeature(String featureId, int target, long requestId, long deadlineUptimeMs) {
            return false;
        }

        /** Center display brightness is an OEM array property, not Android Settings brightness. */
        default boolean isCenterBrightnessAvailable(int level) {
            return isAvailable() && level >= 1 && level <= 10;
        }

        default boolean requestCenterBrightness(int level, long requestId, long deadlineUptimeMs) {
            return false;
        }

        /** Local cancellation for typed feature requests; no compensating write is allowed. */
        default void cancelFeatureRequest(long requestId) {
        }

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

    public static final class FeatureSnapshot {
        public final int rearFog;
        public final int passengerWindowLock;
        public final int wiperMaintenance;
        public final int gloveBox;
        public final int leftChildLock;
        public final int rightChildLock;
        public final int wirelessCharging;
        public final int windowVent;
        public final int externalDischarge;
        public final int passengerSeatAdjust;
        public final int centerBrightnessLevel;
        public final boolean centerBrightnessKnown;
        public final int wirelessChargingActual;
        public final boolean wirelessChargingActualKnown;
        public final int[] windowPositions;
        public final boolean windowPositionsKnown;
        public final float[] externalDischargeStatus;
        public final boolean externalDischargeStatusKnown;
        public final int externalConnectionRaw;
        public final int screenGearRaw;
        public final boolean screenGearKnown;

        public FeatureSnapshot(int rearFog, int passengerWindowLock, int wiperMaintenance, int gloveBox,
                int leftChildLock, int rightChildLock, int wirelessCharging, int windowVent,
                int externalDischarge, int passengerSeatAdjust, int centerBrightnessLevel,
                boolean centerBrightnessKnown, int wirelessChargingActual, boolean wirelessChargingActualKnown,
                int[] windowPositions, boolean windowPositionsKnown, float[] externalDischargeStatus,
                boolean externalDischargeStatusKnown, int externalConnectionRaw, int screenGearRaw,
                boolean screenGearKnown) {
            this.rearFog = binary(rearFog);
            this.passengerWindowLock = binary(passengerWindowLock);
            this.wiperMaintenance = binary(wiperMaintenance);
            this.gloveBox = -1;
            this.leftChildLock = binary(leftChildLock);
            this.rightChildLock = binary(rightChildLock);
            this.wirelessCharging = binary(wirelessCharging);
            this.windowVent = binary(windowVent);
            this.externalDischarge = binary(externalDischarge);
            this.passengerSeatAdjust = -1;
            this.centerBrightnessLevel = centerBrightnessKnown && centerBrightnessLevel >= 1 && centerBrightnessLevel <= 10
                    ? centerBrightnessLevel : -1;
            this.centerBrightnessKnown = this.centerBrightnessLevel >= 0;
            this.wirelessChargingActual = binary(wirelessChargingActual);
            this.wirelessChargingActualKnown = this.wirelessChargingActual >= 0 && wirelessChargingActualKnown;
            this.windowPositions = windowPositions == null ? new int[] {-1, -1, -1, -1} : windowPositions.clone();
            this.windowPositionsKnown = windowPositionsKnown && this.windowPositions.length == 4;
            this.externalDischargeStatus = externalDischargeStatus == null ? new float[0] : externalDischargeStatus.clone();
            this.externalDischargeStatusKnown = externalDischargeStatusKnown && this.externalDischargeStatus.length == 7;
            this.externalConnectionRaw = externalConnectionRaw;
            this.screenGearRaw = screenGearRaw;
            this.screenGearKnown = screenGearKnown && screenGearRaw >= 0;
        }

        public static FeatureSnapshot unknown() {
            return new FeatureSnapshot(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
                    -1, false, -1, false, null, false, null, false, -1, -1, false);
        }

        private static int binary(int value) {
            return value == 0 || value == 1 ? value : -1;
        }
    }

    public static final class VehicleSnapshot {
        public final boolean dataAvailable;
        public final boolean preview;
        public final VehicleGear gear;
        // Keep non-gear availability independent so invalidating the gear cannot retain a stale connection.
        private final boolean propertyDataAvailable;
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
        public final boolean heatingAutoKnown;
        public final boolean heatingAutoActive;
        public final int passengerHeatingLevel;
        public final boolean passengerHeatingAutoKnown;
        public final boolean passengerHeatingAutoActive;
        public final int steeringHeatLevel;
        public final int massageLevel;
        public final int massageModeRaw;
        public final boolean massageSwitchKnown;
        public final boolean massageActive;
        public final boolean seatControlsKnown;
        public final boolean lockKnown;
        public final boolean locked;
        public final int wiperLevel;
        public final boolean wiperKnown;
        public final int rearWiperLevel;
        public final boolean rearWiperKnown;
        public final int rearWashLevel;
        public final boolean rearWashKnown;
        /** Nonzero only for a fresh scoped read performed after this request's single write. */
        public final String rearReadbackControlId;
        public final long rearReadbackRequestId;
        public final boolean rearWashActivationObserved;
        public FeatureSnapshot featureSnapshot;

        /**
         * Legacy 20-argument contract: levels are already normalized OFF/1/2/3 (0..3),
         * never raw Binder values. A valid historical heating mode implies non-AUTO;
         * -1 or an out-of-range value stays unknown. AUTO requires the companion-aware overload.
         */
        public VehicleSnapshot(boolean dataAvailable, boolean preview, float temperatureC,
                int batteryPercent, int rangeRaw, int chargeState, int chargeConnectionRaw,
                int chargeBmsRaw, int chargeScheduleRaw, float chargePowerKw,
                int chargeRemainingMinutes, int ventilationLevel, int heatingLevel,
                int massageLevel, int massageModeRaw, boolean massageSwitchKnown,
                boolean massageActive, boolean seatControlsKnown, boolean lockKnown, boolean locked) {
            this(dataAvailable, preview, temperatureC, batteryPercent, rangeRaw, chargeState,
                    chargeConnectionRaw, chargeBmsRaw, chargeScheduleRaw, chargePowerKw,
                    chargeRemainingMinutes, ventilationLevel, heatingLevel,
                    heatingLevel >= 0 && heatingLevel <= 3, false, -1,
                    massageLevel, massageModeRaw, massageSwitchKnown, massageActive,
                    seatControlsKnown, lockKnown, locked);
        }

        public VehicleSnapshot(boolean dataAvailable, boolean preview, float temperatureC,
                int batteryPercent, int rangeRaw, int chargeState, int chargeConnectionRaw,
                int chargeBmsRaw, int chargeScheduleRaw, float chargePowerKw,
                int chargeRemainingMinutes, int ventilationLevel, int heatingLevel,
                boolean heatingAutoKnown, boolean heatingAutoActive, int steeringHeatLevel,
                int massageLevel, int massageModeRaw, boolean massageSwitchKnown,
                boolean massageActive, boolean seatControlsKnown, boolean lockKnown, boolean locked) {
            this(dataAvailable, preview, temperatureC, batteryPercent, rangeRaw, chargeState,
                    chargeConnectionRaw, chargeBmsRaw, chargeScheduleRaw, chargePowerKw,
                    chargeRemainingMinutes, ventilationLevel, heatingLevel, heatingAutoKnown, heatingAutoActive,
                    -1, false, false, steeringHeatLevel, massageLevel, massageModeRaw,
                    massageSwitchKnown, massageActive, seatControlsKnown, lockKnown, locked);
        }

        /** Both seats carry independent actual modes and independent AUTO readback evidence. */
        public VehicleSnapshot(boolean dataAvailable, boolean preview, float temperatureC,
                int batteryPercent, int rangeRaw, int chargeState, int chargeConnectionRaw,
                int chargeBmsRaw, int chargeScheduleRaw, float chargePowerKw,
                int chargeRemainingMinutes, int ventilationLevel, int heatingLevel,
                boolean heatingAutoKnown, boolean heatingAutoActive,
                int passengerHeatingLevel, boolean passengerHeatingAutoKnown, boolean passengerHeatingAutoActive,
                int steeringHeatLevel, int massageLevel, int massageModeRaw, boolean massageSwitchKnown,
                boolean massageActive, boolean seatControlsKnown, boolean lockKnown, boolean locked) {
            this(dataAvailable, preview, temperatureC, batteryPercent, rangeRaw, chargeState,
                    chargeConnectionRaw, chargeBmsRaw, chargeScheduleRaw, chargePowerKw,
                    chargeRemainingMinutes, ventilationLevel, heatingLevel, heatingAutoKnown, heatingAutoActive,
                    passengerHeatingLevel, passengerHeatingAutoKnown, passengerHeatingAutoActive,
                    steeringHeatLevel, massageLevel, massageModeRaw, massageSwitchKnown,
                    massageActive, seatControlsKnown, lockKnown, locked, -1, false);
        }

        /** Tail-compatible extension; wiper is a normalized0..5 domain mode, not OEM RX. */
        public VehicleSnapshot(boolean dataAvailable, boolean preview, float temperatureC,
                int batteryPercent, int rangeRaw, int chargeState, int chargeConnectionRaw,
                int chargeBmsRaw, int chargeScheduleRaw, float chargePowerKw,
                int chargeRemainingMinutes, int ventilationLevel, int heatingLevel,
                boolean heatingAutoKnown, boolean heatingAutoActive,
                int passengerHeatingLevel, boolean passengerHeatingAutoKnown, boolean passengerHeatingAutoActive,
                int steeringHeatLevel, int massageLevel, int massageModeRaw, boolean massageSwitchKnown,
                boolean massageActive, boolean seatControlsKnown, boolean lockKnown, boolean locked,
                int wiperLevel, boolean wiperKnown) {
            this(dataAvailable, preview, temperatureC, batteryPercent, rangeRaw, chargeState,
                    chargeConnectionRaw, chargeBmsRaw, chargeScheduleRaw, chargePowerKw,
                    chargeRemainingMinutes, ventilationLevel, heatingLevel, heatingAutoKnown, heatingAutoActive,
                    passengerHeatingLevel, passengerHeatingAutoKnown, passengerHeatingAutoActive,
                    steeringHeatLevel, massageLevel, massageModeRaw, massageSwitchKnown, massageActive,
                    seatControlsKnown, lockKnown, locked, wiperLevel, wiperKnown,
                    -1, false, -1, false, "", 0L, false, VehicleGear.Unknown);
        }

        /** Rear-window actuals and scoped post-write proof are independent from every seat/front-wiper. */
        public VehicleSnapshot(boolean dataAvailable, boolean preview, float temperatureC,
                int batteryPercent, int rangeRaw, int chargeState, int chargeConnectionRaw,
                int chargeBmsRaw, int chargeScheduleRaw, float chargePowerKw,
                int chargeRemainingMinutes, int ventilationLevel, int heatingLevel,
                boolean heatingAutoKnown, boolean heatingAutoActive,
                int passengerHeatingLevel, boolean passengerHeatingAutoKnown, boolean passengerHeatingAutoActive,
                int steeringHeatLevel, int massageLevel, int massageModeRaw, boolean massageSwitchKnown,
                boolean massageActive, boolean seatControlsKnown, boolean lockKnown, boolean locked,
                int wiperLevel, boolean wiperKnown, int rearWiperLevel, boolean rearWiperKnown,
                int rearWashLevel, boolean rearWashKnown, String rearReadbackControlId,
                long rearReadbackRequestId, boolean rearWashActivationObserved) {
            this(dataAvailable, preview, temperatureC, batteryPercent, rangeRaw, chargeState,
                    chargeConnectionRaw, chargeBmsRaw, chargeScheduleRaw, chargePowerKw,
                    chargeRemainingMinutes, ventilationLevel, heatingLevel, heatingAutoKnown, heatingAutoActive,
                    passengerHeatingLevel, passengerHeatingAutoKnown, passengerHeatingAutoActive,
                    steeringHeatLevel, massageLevel, massageModeRaw, massageSwitchKnown, massageActive,
                    seatControlsKnown, lockKnown, locked, wiperLevel, wiperKnown,
                    rearWiperLevel, rearWiperKnown, rearWashLevel, rearWashKnown,
                    rearReadbackControlId, rearReadbackRequestId, rearWashActivationObserved, VehicleGear.Unknown);
        }

        private VehicleSnapshot(boolean dataAvailable, boolean preview, float temperatureC,
                int batteryPercent, int rangeRaw, int chargeState, int chargeConnectionRaw,
                int chargeBmsRaw, int chargeScheduleRaw, float chargePowerKw,
                int chargeRemainingMinutes, int ventilationLevel, int heatingLevel,
                boolean heatingAutoKnown, boolean heatingAutoActive,
                int passengerHeatingLevel, boolean passengerHeatingAutoKnown, boolean passengerHeatingAutoActive,
                int steeringHeatLevel, int massageLevel, int massageModeRaw, boolean massageSwitchKnown,
                boolean massageActive, boolean seatControlsKnown, boolean lockKnown, boolean locked,
                int wiperLevel, boolean wiperKnown, int rearWiperLevel, boolean rearWiperKnown,
                int rearWashLevel, boolean rearWashKnown, String rearReadbackControlId,
                long rearReadbackRequestId, boolean rearWashActivationObserved, VehicleGear gear) {
            this.gear = gear == null ? VehicleGear.Unknown : gear;
            this.propertyDataAvailable = dataAvailable;
            this.dataAvailable = dataAvailable || (!preview && this.gear != VehicleGear.Unknown);
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
            this.ventilationLevel = VehicleControl.Ventilation.normalizeLevel(ventilationLevel);
            this.heatingLevel = consistentHeatingLevel(heatingLevel, heatingAutoKnown, heatingAutoActive);
            this.heatingAutoKnown = heatingAutoKnown;
            this.heatingAutoActive = heatingAutoKnown && heatingAutoActive;
            this.passengerHeatingLevel = consistentHeatingLevel(VehicleControl.PassengerHeating,
                    passengerHeatingLevel, passengerHeatingAutoKnown, passengerHeatingAutoActive);
            this.passengerHeatingAutoKnown = passengerHeatingAutoKnown;
            this.passengerHeatingAutoActive = passengerHeatingAutoKnown && passengerHeatingAutoActive;
            this.steeringHeatLevel = VehicleControl.SteeringHeat.normalizeLevel(steeringHeatLevel);
            this.massageLevel = consistentMassageLevel(massageLevel, massageSwitchKnown, massageActive);
            this.massageModeRaw = massageModeRaw;
            this.massageSwitchKnown = massageSwitchKnown;
            this.massageActive = massageActive;
            this.seatControlsKnown = seatControlsKnown;
            this.lockKnown = lockKnown;
            this.locked = locked;
            this.wiperLevel = wiperKnown ? VehicleControl.Wiper.normalizeLevel(wiperLevel) : -1;
            this.wiperKnown = this.wiperLevel >= 0;
            this.rearWiperLevel = rearWiperKnown ? VehicleControl.RearWiper.normalizeLevel(rearWiperLevel) : -1;
            this.rearWiperKnown = this.rearWiperLevel >= 0;
            this.rearWashLevel = rearWashKnown ? VehicleControl.RearWash.normalizeLevel(rearWashLevel) : -1;
            this.rearWashKnown = this.rearWashLevel >= 0;
            VehicleControl rearControl = VehicleControl.fromId(rearReadbackControlId);
            this.rearReadbackControlId = rearReadbackRequestId > 0L && rearControl != null && rearControl.isRearWindow()
                    ? rearReadbackControlId : "";
            this.rearReadbackRequestId = this.rearReadbackControlId.length() == 0 ? 0L : rearReadbackRequestId;
            this.rearWashActivationObserved = rearControl == VehicleControl.RearWash
                    && this.rearReadbackRequestId > 0L && rearWashActivationObserved;
            this.featureSnapshot = FeatureSnapshot.unknown();
        }

        public VehicleSnapshot withFeatureSnapshot(FeatureSnapshot features) {
            this.featureSnapshot = features == null ? FeatureSnapshot.unknown() : features;
            return this;
        }

        /** A gear reading is immutable and survives unrelated scoped readback copies. */
        public VehicleSnapshot withGear(VehicleGear gear) {
            return new VehicleSnapshot(propertyDataAvailable, preview, temperatureC, batteryPercent,
                    rangeRaw, chargeState, chargeConnectionRaw, chargeBmsRaw, chargeScheduleRaw,
                    chargePowerKw, chargeRemainingMinutes, ventilationLevel, heatingLevel,
                    heatingAutoKnown, heatingAutoActive, passengerHeatingLevel, passengerHeatingAutoKnown,
                    passengerHeatingAutoActive, steeringHeatLevel, massageLevel, massageModeRaw,
                    massageSwitchKnown, massageActive, seatControlsKnown, lockKnown, locked, wiperLevel, wiperKnown,
                    rearWiperLevel, rearWiperKnown, rearWashLevel, rearWashKnown,
                    rearReadbackControlId, rearReadbackRequestId, rearWashActivationObserved, gear)
                    .withFeatureSnapshot(featureSnapshot);
        }

        /** Copy cached unrelated facts while replacing one actually read rear property. */
        public VehicleSnapshot withRearWindowReadback(String controlId, int level,
                long requestId, boolean washActivationObserved) {
            VehicleControl control = VehicleControl.fromId(controlId);
            if (control == null || !control.isRearWindow()) throw new IllegalArgumentException("not a rear control");
            boolean known = control.isLevel(level);
            return new VehicleSnapshot(propertyDataAvailable || known, preview, temperatureC, batteryPercent,
                    rangeRaw, chargeState, chargeConnectionRaw, chargeBmsRaw, chargeScheduleRaw,
                    chargePowerKw, chargeRemainingMinutes, ventilationLevel, heatingLevel,
                    heatingAutoKnown, heatingAutoActive, passengerHeatingLevel, passengerHeatingAutoKnown,
                    passengerHeatingAutoActive, steeringHeatLevel, massageLevel, massageModeRaw,
                    massageSwitchKnown, massageActive, seatControlsKnown, lockKnown, locked, wiperLevel, wiperKnown,
                    control == VehicleControl.RearWiper ? level : rearWiperLevel,
                    control == VehicleControl.RearWiper ? known : rearWiperKnown,
                    control == VehicleControl.RearWash ? level : rearWashLevel,
                    control == VehicleControl.RearWash ? known : rearWashKnown,
                    controlId, requestId, washActivationObserved, gear).withFeatureSnapshot(featureSnapshot);
        }

        /** Normalized-mode invariant, shared by Snapshot, Store, State copies and Mapper. */
        public static int consistentHeatingLevel(int level, boolean autoKnown, boolean autoActive) {
            return consistentHeatingLevel(VehicleControl.Heating, level, autoKnown, autoActive);
        }

        public static int consistentHeatingLevel(VehicleControl control, int level, boolean autoKnown, boolean autoActive) {
            if (control != VehicleControl.Heating && control != VehicleControl.PassengerHeating) return -1;
            return autoKnown && control.isLevel(level) && control.isAutomatic(level) == autoActive ? level : -1;
        }

        /** Switch evidence defines OFF; an active massage requires a known positive strength. */
        public static int consistentMassageLevel(int level, boolean switchKnown, boolean active) {
            if (!switchKnown) return -1;
            if (!active) return 0;
            return level > 0 && VehicleControl.Massage.isLevel(level) ? level : -1;
        }

        public static int normalizedLevel(int level, int maxLevel) {
            return level >= 0 && level <= maxLevel ? level : -1;
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
        /** A public session URI is being resolved; fallback cover search must wait for this attempt. */
        public final boolean publicArtworkPending;
        public final String mediaId;
        public final String album;
        public final long durationMs;
        public final long positionMs;
        /** Publisher's monotonic lastPositionUpdateTime; zero means unavailable. */
        public final long positionElapsedRealtimeMs;
        public final float playbackSpeed;
        public final String embeddedLyrics;
        public final MediaSongIdentity songIdentity;
        public final int playbackState;
        /** Zero sequence means no AVRCP event; duplicate envelopes retain the original event time. */
        public final long avrcpEventSequence;
        public final long avrcpPositionMs;
        public final int avrcpPlaybackState;
        public final long avrcpElapsedRealtimeMs;
        /** Sample time, distinct from receipt time; legacy position-only events use receipt time. */
        public final long avrcpPositionElapsedRealtimeMs;

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
            this(dataAvailable, preview, source, playing, generation, title, artist,
                    playbackAvailable, nextAvailable, artwork, mediaId, album, durationMs,
                    positionMs, positionElapsedRealtimeMs, playbackSpeed, embeddedLyrics, songIdentity,
                    playing ? android.media.session.PlaybackState.STATE_PLAYING
                            : android.media.session.PlaybackState.STATE_PAUSED,
                    0L, -1L, -1, 0L);
        }

        public MediaSnapshot(boolean dataAvailable, boolean preview, String source,
                boolean playing, int generation, String title, String artist,
                boolean playbackAvailable, boolean nextAvailable, Bitmap artwork,
                String mediaId, String album, long durationMs, long positionMs,
                long positionElapsedRealtimeMs, float playbackSpeed, String embeddedLyrics,
                MediaSongIdentity songIdentity, int playbackState, long avrcpEventSequence,
                long avrcpPositionMs, int avrcpPlaybackState, long avrcpElapsedRealtimeMs) {
            this(dataAvailable, preview, source, playing, generation, title, artist,
                    playbackAvailable, nextAvailable, artwork, mediaId, album, durationMs,
                    positionMs, positionElapsedRealtimeMs, playbackSpeed, embeddedLyrics,
                    songIdentity, playbackState, avrcpEventSequence, avrcpPositionMs,
                    avrcpPlaybackState, avrcpElapsedRealtimeMs, avrcpElapsedRealtimeMs);
        }

        public MediaSnapshot(boolean dataAvailable, boolean preview, String source,
                boolean playing, int generation, String title, String artist,
                boolean playbackAvailable, boolean nextAvailable, Bitmap artwork,
                String mediaId, String album, long durationMs, long positionMs,
                long positionElapsedRealtimeMs, float playbackSpeed, String embeddedLyrics,
                MediaSongIdentity songIdentity, int playbackState, long avrcpEventSequence,
                long avrcpPositionMs, int avrcpPlaybackState, long avrcpElapsedRealtimeMs,
                long avrcpPositionElapsedRealtimeMs) {
            this(dataAvailable, preview, source, playing, generation, title, artist,
                    playbackAvailable, nextAvailable, artwork, mediaId, album, durationMs,
                    positionMs, positionElapsedRealtimeMs, playbackSpeed, embeddedLyrics,
                    songIdentity, playbackState, avrcpEventSequence, avrcpPositionMs,
                    avrcpPlaybackState, avrcpElapsedRealtimeMs, avrcpPositionElapsedRealtimeMs, false);
        }

        public MediaSnapshot(boolean dataAvailable, boolean preview, String source,
                boolean playing, int generation, String title, String artist,
                boolean playbackAvailable, boolean nextAvailable, Bitmap artwork,
                String mediaId, String album, long durationMs, long positionMs,
                long positionElapsedRealtimeMs, float playbackSpeed, String embeddedLyrics,
                MediaSongIdentity songIdentity, int playbackState, long avrcpEventSequence,
                long avrcpPositionMs, int avrcpPlaybackState, long avrcpElapsedRealtimeMs,
                long avrcpPositionElapsedRealtimeMs, boolean publicArtworkPending) {
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
            this.publicArtworkPending = publicArtworkPending && dataAvailable && !preview
                    && songIdentity == MediaSongIdentity.SONG && (artwork == null || artwork.isRecycled());
            this.mediaId = mediaId == null ? "" : mediaId;
            this.album = album == null ? "" : album;
            this.durationMs = Math.max(0L, durationMs);
            this.positionMs = Math.max(-1L, positionMs);
            this.positionElapsedRealtimeMs = Math.max(0L, positionElapsedRealtimeMs);
            this.playbackSpeed = Float.isNaN(playbackSpeed) || Float.isInfinite(playbackSpeed)
                    ? 0f : playbackSpeed;
            this.embeddedLyrics = embeddedLyrics == null ? "" : embeddedLyrics;
            this.songIdentity = songIdentity == null ? MediaSongIdentity.UNKNOWN : songIdentity;
            this.playbackState = playbackState;
            this.avrcpEventSequence = Math.max(0L, avrcpEventSequence);
            this.avrcpPositionMs = avrcpPositionMs >= 0L && avrcpPositionMs <= 86_400_000L
                    ? avrcpPositionMs : -1L;
            this.avrcpPlaybackState = avrcpPlaybackState >= 0
                    && avrcpPlaybackState <= android.media.session.PlaybackState.STATE_SKIPPING_TO_QUEUE_ITEM
                    ? avrcpPlaybackState : -1;
            this.avrcpElapsedRealtimeMs = Math.max(0L, avrcpElapsedRealtimeMs);
            this.avrcpPositionElapsedRealtimeMs = avrcpPositionElapsedRealtimeMs;
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

    /**
     * Canonical MediaSession/AVRCP fact, not a sampled render position. The timeline
     * retains this exact instance until a real event changes the trajectory.
     */
    public static final class LyricsPlaybackAnchor {
        private static final LyricsPlaybackAnchor UNKNOWN =
                new LyricsPlaybackAnchor(0L, 0L, 0f, 0L, false, 0L);
        public final long basePositionMs;
        public final long capturedAtMs;
        public final float speed;
        public final long durationMs;
        public final boolean timelineReady;
        public final long revision;
        public final com.icar03.content.model.PlaybackTrajectory trajectory;

        public LyricsPlaybackAnchor(long basePositionMs, long capturedAtMs, float speed,
                long durationMs, boolean timelineReady, long revision) {
            this(basePositionMs, capturedAtMs, speed, durationMs, timelineReady, revision, 0.0, 0L);
        }

        public LyricsPlaybackAnchor(long basePositionMs, long capturedAtMs, float speed,
                long durationMs, boolean timelineReady, long revision,
                double correctionMs, long correctionDurationMs) {
            this.basePositionMs = Math.max(0L, basePositionMs);
            this.capturedAtMs = Math.max(0L, capturedAtMs);
            this.speed = Float.isNaN(speed) || Float.isInfinite(speed) ? 0f : speed;
            this.durationMs = Math.max(0L, durationMs);
            this.timelineReady = timelineReady;
            this.revision = revision;
            this.trajectory = new com.icar03.content.model.PlaybackTrajectory(
                    this.basePositionMs, this.capturedAtMs, this.speed, this.durationMs,
                    correctionMs, correctionDurationMs);
        }

        /** Pure local sampling. Unknown is distinct from a verified seek to zero. */
        public long sampleAt(long elapsedRealtimeMs) {
            return timelineReady ? trajectory.sampleAt(elapsedRealtimeMs) : -1L;
        }

        public static LyricsPlaybackAnchor unknown() {
            return UNKNOWN;
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

    public static final class LyricsWord {
        public final long startTimeMs;
        public final long endTimeMs;
        public final String text;

        public LyricsWord(long startTimeMs, long endTimeMs, String text) {
            this.startTimeMs = Math.max(0L, startTimeMs);
            this.endTimeMs = Math.max(this.startTimeMs, endTimeMs);
            this.text = text == null ? "" : text;
        }
    }

    public static final class LyricsLine {
        public final long timeMs;
        public final String text;
        public final String translation;
        public final String romanization;
        public final java.util.List<LyricsWord> words;
        public final long endTimeMs;
        public final java.util.List<LyricsWord> backgroundWords;
        public final int speakerSide;

        public LyricsLine(long timeMs, String text, String translation) {
            this(timeMs, text, translation, "", java.util.Collections.<LyricsWord>emptyList());
        }

        public LyricsLine(long timeMs, String text, String translation, String romanization,
                java.util.List<LyricsWord> words) {
            this(timeMs, text, translation, romanization, words, -1L,
                    java.util.Collections.<LyricsWord>emptyList(), 0);
        }

        public LyricsLine(long timeMs, String text, String translation, String romanization,
                java.util.List<LyricsWord> words, long endTimeMs,
                java.util.List<LyricsWord> backgroundWords, int speakerSide) {
            this.timeMs = Math.max(0L, timeMs);
            this.text = text == null ? "" : text;
            this.translation = translation == null ? "" : translation;
            this.romanization = romanization == null ? "" : romanization;
            this.words = java.util.Collections.unmodifiableList(new java.util.ArrayList<>(
                    words == null ? java.util.Collections.<LyricsWord>emptyList() : words));
            this.endTimeMs = endTimeMs >= this.timeMs ? endTimeMs : -1L;
            this.backgroundWords = java.util.Collections.unmodifiableList(new java.util.ArrayList<>(
                    backgroundWords == null ? java.util.Collections.<LyricsWord>emptyList() : backgroundWords));
            this.speakerSide = speakerSide >= 0 && speakerSide <= 3 ? speakerSide : 0;
        }
    }

    public static final class LyricsSnapshot {
        public static final int EMPTY = 0;
        public static final int LOADING = 1;
        public static final int READY = 2;
        public static final int UNAVAILABLE = 3;
        /** A completed lookup with no admitted lyrics; not a transport failure. */
        public static final int NO_MATCH = 4;
        public static final int NETWORK_ERROR = 5;
        /** Explicit provider/lyric evidence for this recording; never a synthetic timeline. */
        public static final int INSTRUMENTAL = 6;
        public final String recordingKey;
        public final int mediaGeneration;
        public final int status;
        public final java.util.List<LyricsLine> lines;
        public final Bitmap artwork;
        public final boolean timed;

        public LyricsSnapshot(String recordingKey, int mediaGeneration, int status,
                java.util.List<LyricsLine> lines, Bitmap artwork) {
            this(recordingKey, mediaGeneration, status, lines, artwork, true);
        }

        public LyricsSnapshot(String recordingKey, int mediaGeneration, int status,
                java.util.List<LyricsLine> lines, Bitmap artwork, boolean timed) {
            this.recordingKey = recordingKey == null ? "" : recordingKey;
            this.mediaGeneration = mediaGeneration;
            this.status = status;
            this.timed = timed;
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
