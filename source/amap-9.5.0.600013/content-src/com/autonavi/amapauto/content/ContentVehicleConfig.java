package com.autonavi.amapauto.content;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.system.Os;

import com.icar03.content.model.ControlCatalog;
import com.icar03.content.model.ControlDefinition;
import com.icar03.content.model.ControlSection;
import com.icar03.content.model.ControlSurface;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.ArrayList;
import java.util.List;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/** Strict semantic declarations and bounded read/write mappings for implemented transports. */
public final class ContentVehicleConfig {
    public static final int MAX_CONFIG_BYTES = 128 * 1024;
    /** Bump when the compiled adapter contract changes, including non-catalog routing changes. */
    public static final String ADAPTER_VERSION = "s56-mapping-2/catalog-4";
    private static final String PREFS = "vehicle_config_self_check_v2";
    private static final String KEY_FINGERPRINT = "fingerprint";
    private static final String KEY_CONFIG_HASH = "config_hash";
    private static final String KEY_ADAPTER_VERSION = "adapter_version";
    private static final String KEY_ENVIRONMENT_FINGERPRINT = "environment_fingerprint";
    private static final String KEY_CAPABILITIES = "capabilities";
    private static final String KEY_VALID = "self_check_valid";
    private static final String KEY_MESSAGE = "self_check_message";
    private static final int SCHEMA_VERSION = 2;
    private static final String REUSE_POLICY = "config_adapter_hardware";
    private static final String IMPORT_FILE = "vehicle-config.json";
    private static final String ASSET_FILE = "icar03.json";
    private static final String[] SECTIONS = {"controls", "features", "system", "content"};

    private final Parsed parsed;
    private final String fileName;
    private final String hash;
    private final String environmentFingerprint;
    private final String selfCheckFingerprint;
    private final boolean valid;
    private final boolean selfCheckRan;
    private final String message;
    private volatile Map<String, ContentPorts.CapabilityCheck> capabilities;
    private SharedPreferences resultCache;

    private ContentVehicleConfig(Parsed parsed, String fileName, String hash, boolean valid, boolean selfCheckRan,
            String message, String environmentFingerprint, String selfCheckFingerprint,
            Map<String, ContentPorts.CapabilityCheck> capabilities) {
        this.parsed = parsed;
        this.fileName = fileName;
        this.hash = hash;
        this.valid = valid;
        this.selfCheckRan = selfCheckRan;
        this.message = message;
        this.environmentFingerprint = environmentFingerprint;
        this.selfCheckFingerprint = selfCheckFingerprint;
        this.capabilities = Collections.unmodifiableMap(new LinkedHashMap<>(capabilities));
    }

    /** Read declarations for Adapter construction without populating the hardware self-check cache. */
    static ContentVehicleConfig mappingProfile(Context context) {
        try {
            File imported = new File(context.getFilesDir(), IMPORT_FILE);
            return validate(read(imported.exists() ? new FileInputStream(imported)
                    : context.getAssets().open("content-vehicle/" + ASSET_FILE)));
        } catch (Exception error) { return invalid("", "车控配置读取失败"); }
    }

    /**
     * Normal accepted vehicle feedback can upgrade UNKNOWN support evidence. A disconnection,
     * preview, command return or timeout never downgrades evidence or marks a function missing.
     */
    public synchronized Map<String, ContentPorts.CapabilityCheck> acceptReadbackSupport(ContentState actual) {
        if (!valid || actual == null || !actual.vehicleDataAvailable || actual.vehiclePreview) return capabilities;
        Map<String, ContentPorts.CapabilityCheck> next = null;
        for (Declaration entry : parsed.declarations.values()) {
            String id = entry.definition.getId();
            if (!entry.enabled || entry.mapping == null || !entry.mapping.isVehicle()
                    || capability(id).status != ContentPorts.Capability.UNKNOWN) continue;
            int mode = -1;
            if (entry.definition.getSection() == ControlSection.Control) {
                com.icar03.content.model.VehicleControl control = com.icar03.content.model.VehicleControl.fromId(entry.definition.getTargetId());
                if (control != null) mode = actual.controlLevel(control);
            } else if (entry.definition.getSection() == ControlSection.Feature) mode = actual.featureLevel(id);
            else if ("brightness".equals(id) && actual.centerBrightnessKnown) mode = actual.centerBrightnessLevel;
            if (mode < 0) continue;
            if (next == null) next = new LinkedHashMap<>(capabilities);
            next.put(id, new ContentPorts.CapabilityCheck(ContentPorts.Capability.SUPPORTED, "已收到有效硬件状态"));
        }
        if (next == null) return capabilities;
        capabilities = Collections.unmodifiableMap(next);
        try {
            if (resultCache != null && selfCheckFingerprint.equals(resultCache.getString(KEY_FINGERPRINT, "")))
                resultCache.edit().putString(KEY_CAPABILITIES, encodeChecks(capabilities)).apply();
        } catch (RuntimeException ignored) { }
        return capabilities;
    }

    /** Called only after the concrete system adapter has obtained a valid read-only group value. */
    public synchronized void acceptSystemReadback(String id) {
        Declaration entry = parsed.declarations.get(id);
        if (!valid || entry == null || !entry.enabled || entry.mapping == null || !"system_port".equals(entry.mapping.adapter)
                || capability(id).status != ContentPorts.Capability.UNKNOWN) return;
        Map<String, ContentPorts.CapabilityCheck> next = new LinkedHashMap<>(capabilities);
        next.put(id, new ContentPorts.CapabilityCheck(ContentPorts.Capability.SUPPORTED, "已收到有效系统状态"));
        capabilities = Collections.unmodifiableMap(next);
        try {
            if (resultCache != null && selfCheckFingerprint.equals(resultCache.getString(KEY_FINGERPRINT, "")))
                resultCache.edit().putString(KEY_CAPABILITIES, encodeChecks(capabilities)).apply();
        } catch (RuntimeException ignored) { }
    }

    public static ContentVehicleConfig load(Context context) { return load(context, null); }

    /**
     * Read-only, per-item support inspection. Only profile, adapter contract and the necessary
     * vehicle hardware/service identity invalidate the cache. Transient disconnection is not
     * persisted as missing, and unrelated host/SystemUI/Android updates do not rerun the check.
     */
    public static ContentVehicleConfig load(Context context, ContentPorts.VehiclePort vehiclePort) {
        return load(context, vehiclePort, null);
    }

    public static ContentVehicleConfig load(Context context, ContentPorts.VehiclePort vehiclePort, ContentPorts.SystemPort systemPort) {
        final byte[] bytes;
        String fileName = ASSET_FILE;
        try {
            File imported = new File(context.getFilesDir(), IMPORT_FILE);
            if (imported.exists()) { fileName = IMPORT_FILE; bytes = read(new FileInputStream(imported)); }
            else bytes = read(context.getAssets().open("content-vehicle/" + ASSET_FILE));
        } catch (Exception error) { return invalid("", fileName, "车控配置读取失败或超过大小限制"); }
        String hash = sha256(bytes);
        Parsed parsed = parse(bytes);
        if (!parsed.valid) return invalid(hash, fileName, parsed.message);
        EnvironmentFacts environment = readEnvironment(context, vehiclePort, systemPort, parsed);
        String fingerprint = sha256((hash + "\n" + ADAPTER_VERSION + "\n" + catalogFingerprint()
                + "\n" + environment.fingerprint).getBytes(StandardCharsets.UTF_8));
        SharedPreferences cache = null;
        Map<String, ContentPorts.CapabilityCheck> checks = null;
        try {
            cache = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            if (fingerprint.equals(cache.getString(KEY_FINGERPRINT, ""))
                    && hash.equals(cache.getString(KEY_CONFIG_HASH, ""))
                    && ADAPTER_VERSION.equals(cache.getString(KEY_ADAPTER_VERSION, ""))
                    && environment.fingerprint.equals(cache.getString(KEY_ENVIRONMENT_FINGERPRINT, ""))
                    && cache.getBoolean(KEY_VALID, false))
                checks = decodeChecks(cache.getString(KEY_CAPABILITIES, ""), parsed);
        } catch (RuntimeException ignored) { checks = null; }
        boolean cacheHit = checks != null;
        if (!cacheHit) {
            checks = inspect(parsed, vehiclePort, systemPort);
            if (cache != null) try {
                cache.edit().putString(KEY_FINGERPRINT, fingerprint).putString(KEY_CONFIG_HASH, hash)
                        .putString(KEY_ADAPTER_VERSION, ADAPTER_VERSION)
                        .putString(KEY_ENVIRONMENT_FINGERPRINT, environment.fingerprint)
                        .putBoolean(KEY_VALID, true).putString(KEY_MESSAGE, "配置只读自检通过")
                        .putString(KEY_CAPABILITIES, encodeChecks(checks)).remove("app_version").commit();
            } catch (RuntimeException ignored) { }
        }
        String diagnostic = "配置只读自检通过" + environment.message;
        if (vehiclePort != null) try {
            if (!vehiclePort.isAvailable()) diagnostic += "；车辆服务离线，已声明功能暂不可用";
        } catch (RuntimeException ignored) { diagnostic += "；车辆服务状态未知，已声明功能暂不可用"; }
        ContentVehicleConfig result = new ContentVehicleConfig(parsed, fileName, hash, true, !cacheHit, diagnostic,
                environment.fingerprint, fingerprint, checks);
        result.resultCache = cache;
        return result;
    }

    /** Validates structure/codecs without touching any service or sending an action. */
    public static ContentVehicleConfig validate(byte[] bytes) {
        if (bytes == null || bytes.length == 0 || bytes.length > MAX_CONFIG_BYTES)
            return invalid("", "车控配置大小无效");
        byte[] snapshot = bytes.clone();
        Parsed parsed = parse(snapshot);
        return new ContentVehicleConfig(parsed, null, sha256(snapshot), parsed.valid, true,
                parsed.valid ? "配置声明有效，硬件能力尚未自检" : parsed.message, "", "", inspect(parsed, null, null));
    }

    /**
     * Validates before creating a temporary file, syncs its contents, then uses a same-directory
     * POSIX atomic replace. Any validation/write/rename failure leaves the previous import intact.
     * The new profile is consumed by the next cold start, without clearing its prior self-check.
     */
    public static synchronized boolean saveImported(Context context, byte[] bytes) {
        if (bytes == null || bytes.length == 0 || bytes.length > MAX_CONFIG_BYTES) return false;
        byte[] snapshot = bytes.clone();
        if (!validate(snapshot).isValid()) return false;
        File temporary = null;
        try {
            File directory = context.getFilesDir();
            File target = new File(directory, IMPORT_FILE);
            temporary = File.createTempFile("vehicle-config-", ".tmp", directory);
            try (FileOutputStream output = new FileOutputStream(temporary)) {
                output.write(snapshot);
                output.flush();
                output.getFD().sync();
            }
            Os.rename(temporary.getAbsolutePath(), target.getAbsolutePath());
            return true;
        } catch (Exception error) {
            return false;
        } finally {
            if (temporary != null && temporary.exists()) temporary.delete();
        }
    }

    public String profileId() { return parsed.profileId; }
    /** Asset or fixed imported filename used by load; null for validate(byte[]). */
    public String fileName() { return fileName; }
    public String displayName() { return parsed.displayName; }
    public String hash() { return hash; }
    public boolean isValid() { return valid; }
    /** True only when this load actually ran the compiled-contract self-check. */
    public boolean selfCheckRan() { return selfCheckRan; }
    public boolean selfCheckCacheHit() { return !selfCheckRan; }
    public String selfCheckFingerprint() { return selfCheckFingerprint; }
    public String environmentFingerprint() { return environmentFingerprint; }
    public String message() { return message; }

    /** Initial layout only. Editors validate their contents against available*Items instead. */
    public List<String> controlCenterItems() { return initial(ControlSurface.ControlCenter); }
    public List<String> controlCardItems() { return initial(ControlSurface.ControlCard); }
    public List<String> dockItems() { return initial(ControlSurface.Dock); }
    public List<String> gestureItems() { return initial(ControlSurface.Gesture); }
    public Set<String> availableControlCenterItems() { return availableItems(ControlSurface.ControlCenter); }
    public Set<String> availableControlCardItems() { return availableItems(ControlSurface.ControlCard); }
    public Set<String> availableDockItems() { return availableItems(ControlSurface.Dock); }
    public Set<String> availableGestureItems() { return availableItems(ControlSurface.Gesture); }
    public Set<String> availablePageItems() { return availableItems(ControlSurface.Page); }

    /** Missing/disabled/unimplemented items are hidden; unknown support stays visible and uses runtime gates. */
    public Set<String> availableItems(ControlSurface surface) {
        if (!valid || surface == null) return Collections.emptySet();
        Set<String> result = new LinkedHashSet<>();
        for (Declaration declaration : parsed.declarations.values()) {
            if (visible(declaration) && declaration.definition.getSurfaces().contains(surface) && declaration.surfaces.contains(surface))
                result.add(declaration.definition.getId());
        }
        return immutable(result);
    }

    public boolean isDeclared(String id) { return valid && parsed.declarations.containsKey(id); }
    public boolean allowsSurface(String id, ControlSurface surface) {
        Declaration declaration = valid ? parsed.declarations.get(id) : null;
        return declaration != null && visible(declaration) && declaration.definition.getSurfaces().contains(surface)
                && declaration.surfaces.contains(surface);
    }
    public boolean allowsControl(String id) { return allows(id, ControlSection.Control); }
    public boolean allowsFeature(String id) { return allows(id, ControlSection.Feature); }
    public boolean allowsSystem(String id) { return allows(id, ControlSection.System); }
    public boolean allowsContent(String id) { return allows(id, ControlSection.Content); }
    public boolean allowsControlMode(String id, int mode) {
        Declaration declaration = valid ? parsed.declarations.get(id) : null;
        return allowsControl(id) && declaration.definition.getAllowedModes().contains(mode);
    }
    public boolean allowsFeatureMode(String id, int mode) {
        Declaration declaration = valid ? parsed.declarations.get(id) : null;
        return allowsFeature(id) && declaration.definition.getAllowedModes().contains(mode);
    }
    private boolean allows(String id, ControlSection section) {
        Declaration declaration = valid ? parsed.declarations.get(id) : null;
        return declaration != null && visible(declaration) && declaration.mapping != null
                && declaration.definition.getSection() == section;
    }
    private List<String> initial(ControlSurface surface) {
        List<String> values = valid ? parsed.initial.get(surface) : null;
        if (values == null) return Collections.emptyList();
        Set<String> available = availableItems(surface);
        List<String> visible = new ArrayList<>();
        for (String id : values) if (available.contains(id)) visible.add(id);
        return Collections.unmodifiableList(visible);
    }

    public ContentVehicleProtocol.Signal signal(String id) { return valid ? parsed.signals.get(id) : null; }

    public Map<String, ContentPorts.CapabilityCheck> capabilities() { return capabilities; }
    public ContentPorts.CapabilityCheck capability(String id) {
        ContentPorts.CapabilityCheck value = capabilities.get(id);
        return value == null ? new ContentPorts.CapabilityCheck(ContentPorts.Capability.MISSING, "配置未声明") : value;
    }
    public ContentVehicleProtocol.Mapping mapping(String id) {
        Declaration declaration = valid ? parsed.declarations.get(id) : null;
        return declaration == null || !declaration.enabled ? null : declaration.mapping;
    }
    private boolean visible(Declaration declaration) {
        return declaration.enabled && declaration.definition.getImplemented() && declaration.mapping != null
                && capability(declaration.definition.getId()).status != ContentPorts.Capability.MISSING;
    }

    private static Parsed parse(byte[] bytes) {
        try {
            if (bytes.length == 0 || bytes.length > MAX_CONFIG_BYTES) throw bad("配置大小无效");
            String text = StandardCharsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT)
                    .onUnmappableCharacter(CodingErrorAction.REPORT).decode(ByteBuffer.wrap(bytes)).toString();
            JSONObject root = new StrictJson(text).object();
            exactKeys(root, "root", "schemaVersion", "profileId", "profileRevision", "displayName", "backend",
                    "compatibility", "controls", "features", "system", "content", "signals", "presentation", "selfCheck");
            if (integer(root.get("schemaVersion"), "schemaVersion") != SCHEMA_VERSION) throw bad("配置版本无效");
            String profile = string(root.get("profileId"), "profileId", 80);
            if (!profile.matches("[a-z0-9][a-z0-9._-]*")) throw bad("车型标识无效");
            String name = string(root.get("displayName"), "displayName", 120);
            if (integer(root.get("profileRevision"), "profileRevision") < 1) throw bad("配置修订无效");
            JSONObject backend = object(root.get("backend"), "backend");
            exactKeys(backend, "backend", "id", "contractRevision");
            if (!ControlCatalog.BACKEND_ID.equals(backend.get("id"))
                    || integer(backend.get("contractRevision"), "backend.contractRevision") != ControlCatalog.BACKEND_CONTRACT_REVISION)
                throw bad("车型后端合同未编译");
            JSONObject compatibility = object(root.get("compatibility"), "compatibility");
            exactKeys(compatibility, "compatibility", "modelHints", "requiredServices");
            Set<String> models = strings(array(compatibility.get("modelHints"), "modelHints"), "modelHints", 80);
            JSONArray services = array(compatibility.get("requiredServices"), "requiredServices");
            if (services.length() != 1) throw bad("车辆服务依赖与后端合同不一致");
            JSONObject service = object(services.get(0), "requiredServices[0]");
            exactKeys(service, "requiredServices[0]", "package", "descriptor");
            if (!ControlCatalog.VEHICLE_SERVICE_PACKAGE.equals(service.get("package"))
                    || !ControlCatalog.VEHICLE_SERVICE_DESCRIPTOR.equals(service.get("descriptor")))
                throw bad("车辆服务依赖与后端合同不一致");
            JSONObject selfCheck = object(root.get("selfCheck"), "selfCheck");
            exactKeys(selfCheck, "selfCheck", "mode", "reuse");
            if (!"read_only".equals(selfCheck.get("mode")) || !REUSE_POLICY.equals(selfCheck.get("reuse")))
                throw bad("自检策略必须只读且按配置、适配器和必要硬件身份复用");

            Map<String, ContentVehicleProtocol.Signal> signals = parseSignals(object(root.get("signals"), "signals"));
            Map<String, Declaration> declarations = new LinkedHashMap<>();
            for (String section : SECTIONS) parseDeclarations(object(root.get(section), section), section, declarations);
            Declaration wiper = declarations.get("front_wiper"), automaticWiper = declarations.get("auto_wiper");
            if (wiper != null && automaticWiper != null && wiper.enabled && automaticWiper.enabled
                    && !sameWiperMapping(wiper.mapping, automaticWiper.mapping)) throw bad("自动雨刮与前雨刮必须共享实际状态及OFF/AUTO写入");
            JSONObject presentation = object(root.get("presentation"), "presentation");
            exactKeys(presentation, "presentation", "controlCenter", "controlCards", "dock", "gestures");
            Map<ControlSurface, List<String>> initial = new LinkedHashMap<>();
            initial.put(ControlSurface.ControlCenter, placement(presentation, "controlCenter", ControlSurface.ControlCenter, declarations));
            initial.put(ControlSurface.ControlCard, placement(presentation, "controlCards", ControlSurface.ControlCard, declarations));
            initial.put(ControlSurface.Dock, placement(presentation, "dock", ControlSurface.Dock, declarations));
            initial.put(ControlSurface.Gesture, placement(presentation, "gestures", ControlSurface.Gesture, declarations));
            return new Parsed(profile, name, declarations, initial, models, signals, true, "配置声明有效");
        } catch (Exception error) {
            return Parsed.invalid(error instanceof InvalidConfig ? error.getMessage() : "配置JSON或字段类型无效");
        }
    }

    private static void parseDeclarations(JSONObject entries, String section, Map<String, Declaration> declarations) throws Exception {
        Iterator<String> keys = entries.keys();
        while (keys.hasNext()) {
            String id = keys.next();
            ControlDefinition definition = ControlCatalog.INSTANCE.find(id);
            if (definition == null || !section.equals(sectionName(definition.getSection()))) throw bad("未知功能或错误分区：" + id);
            if (declarations.containsKey(id)) throw bad("重复功能：" + id);
            JSONObject entry = object(entries.get(id), id);
            exactKeys(entry, id, "enabled", "mapping", "renderer", "surfaces", "span", "allowedModes");
            Object enabled = entry.get("enabled");
            if (!(enabled instanceof Boolean)) throw bad(id + ".enabled必须是布尔值");
            Object mappingValue = entry.get("mapping");
            if ((Boolean) enabled && (!definition.getImplemented() || mappingValue == JSONObject.NULL))
                throw bad(id + "尚无已实现映射，不能启用");
            if (!definition.getImplemented() && mappingValue != JSONObject.NULL) throw bad(id + "尚未实现适配器");
            ContentVehicleProtocol.Mapping mapping = mappingValue == JSONObject.NULL ? null
                    : parseMapping(object(mappingValue, id + ".mapping"), definition);
            if (!rendererName(definition).equals(entry.get("renderer"))) throw bad(id + "渲染类型与目录不一致");
            JSONObject span = object(entry.get("span"), id + ".span");
            exactKeys(span, id + ".span", "columns", "rows");
            if (integer(span.get("columns"), id + ".span.columns") != definition.getSpan().getColumns()
                    || integer(span.get("rows"), id + ".span.rows") != definition.getSpan().getRows())
                throw bad(id + "网格跨度与目录不一致");
            JSONArray modeArray = array(entry.get("allowedModes"), id + ".allowedModes");
            Set<Integer> modes = new LinkedHashSet<>();
            for (int index = 0; index < modeArray.length(); index++) {
                if (!modes.add(integer(modeArray.get(index), id + ".allowedModes"))) throw bad(id + "模式重复");
            }
            if (!definition.getAllowedModes().equals(modes)) throw bad(id + "模式与编译合同不一致");
            Set<String> surfaceNames = strings(array(entry.get("surfaces"), id + ".surfaces"), id + ".surfaces", 32);
            if (surfaceNames.isEmpty()) throw bad(id + "展示面不能为空");
            Set<ControlSurface> surfaces = new LinkedHashSet<>();
            for (String value : surfaceNames) {
                ControlSurface surface = surface(value);
                if (surface == null || !definition.getSurfaces().contains(surface)) throw bad(id + "展示面未获目录允许");
                surfaces.add(surface);
            }
            declarations.put(id, new Declaration(definition, (Boolean) enabled, surfaces, mapping));
        }
    }

    private static boolean sameWiperMapping(ContentVehicleProtocol.Mapping left, ContentVehicleProtocol.Mapping right) {
        if (left == null || right == null || left.reads.size() != right.reads.size() || left.readModes.size() != right.readModes.size()) return false;
        for (int i = 0; i < left.reads.size(); i++) {
            ContentVehicleProtocol.Property a = left.reads.get(i), b = right.reads.get(i);
            if (a.functionId != b.functionId || a.area != b.area) return false;
        }
        for (ContentVehicleProtocol.ReadMode row : left.readModes) {
            boolean found = false;
            for (ContentVehicleProtocol.ReadMode candidate : right.readModes)
                if (row.mode == candidate.mode && java.util.Arrays.equals(row.raw(), candidate.raw())) { found = true; break; }
            if (!found) return false;
        }
        for (int mode : new int[] {0, 5}) {
            ContentVehicleProtocol.Write a = left.write(mode), b = right.write(mode);
            if (a == null || b == null || a.functionId != b.functionId || a.area != b.area || a.value != b.value) return false;
        }
        return true;
    }

    private static Map<String, ContentVehicleProtocol.Signal> parseSignals(JSONObject source) throws Exception {
        Map<String, ContentVehicleProtocol.Signal> result = new LinkedHashMap<>();
        Set<String> floats = new HashSet<>(java.util.Arrays.asList("cabin_temperature", "battery_soc", "charge_hv_current"));
        Set<String> integers = new HashSet<>(java.util.Arrays.asList("range_remaining", "charge_hv_voltage", "charge_connection", "charge_bms", "charge_schedule", "charge_remaining_time", "wireless_charging_actual", "screen_gear"));
        Iterator<String> names = source.keys();
        while (names.hasNext()) {
            String id = names.next();
            String kind = floats.contains(id) ? "float" : integers.contains(id) ? "int" : "external_discharge_status".equals(id) ? "float_array" : null;
            if (kind == null) throw bad("未知只读信号：" + id);
            JSONObject signal = object(source.get(id), id);
            exactKeys(signal, id, "adapter", "kind", "functionId", "area", "scale", "offset", "values", "length");
            if (!"s56_binder".equals(signal.get("adapter")) || !kind.equals(signal.get("kind"))) throw bad(id + "只读适配器未实现");
            int function = integer(signal.get("functionId"), id + ".functionId"), area = integer(signal.get("area"), id + ".area");
            Object scaleValue = signal.get("scale"), offsetValue = signal.get("offset");
            if (!(scaleValue instanceof Number) || !(offsetValue instanceof Number)) throw bad(id + "数值变换无效");
            double scale = ((Number) scaleValue).doubleValue(), offset = ((Number) offsetValue).doubleValue();
            if (function <= 0 || area < 0 || Double.isInfinite(scale) || Double.isNaN(scale) || scale == 0
                    || Math.abs(scale) > 1000000 || Double.isInfinite(offset) || Double.isNaN(offset) || Math.abs(offset) > 1000000)
                throw bad(id + "数值变换越界");
            int length = integer(signal.get("length"), id + ".length");
            if (length != ("float_array".equals(kind) ? 7 : 1)) throw bad(id + "数组合同无效");
            JSONObject modes = object(signal.get("values"), id + ".values");
            if (modes.length() > 128 || !"int".equals(kind) && modes.length() != 0 || "int".equals(kind) && (scale != 1 || offset != 0))
                throw bad(id + "整数值表合同无效");
            Map<Integer, Integer> values = new LinkedHashMap<>();
            Iterator<String> keys = modes.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                if (!key.matches("0|[1-9][0-9]{0,9}")) throw bad(id + "原始模式键无效");
                long raw = Long.parseLong(key);
                int mode = integer(modes.get(key), id + ".values");
                if (raw > Integer.MAX_VALUE || mode < 0) throw bad(id + "模式值越界");
                values.put((int) raw, mode);
            }
            result.put(id, new ContentVehicleProtocol.Signal(new ContentVehicleProtocol.Property(function, area), kind, scale, offset, length, values));
        }
        return result;
    }

    private static ContentVehicleProtocol.Property property(JSONObject value, String field) throws Exception {
        exactKeys(value, field, "functionId", "area");
        int function = integer(value.get("functionId"), field + ".functionId");
        int area = integer(value.get("area"), field + ".area");
        if (function <= 0 || area < 0) throw bad(field + "地址无效");
        return new ContentVehicleProtocol.Property(function, area);
    }

    private static ContentVehicleProtocol.Mapping parseMapping(JSONObject value, ControlDefinition definition) throws Exception {
        String id = definition.getId(), adapter = string(value.get("adapter"), id + ".adapter", 40);
        String kind = string(value.get("kind"), id + ".kind", 40);
        List<ContentVehicleProtocol.Property> reads = new ArrayList<>();
        List<ContentVehicleProtocol.ReadMode> readModes = new ArrayList<>();
        Map<Integer, ContentVehicleProtocol.Write> writes = new LinkedHashMap<>();
        ContentVehicleProtocol.MassagePreparation preparation = null;
        int channel = -1, prefix = 0;
        if ("content".equals(adapter)) {
            exactKeys(value, id + ".mapping", "adapter", "kind");
            String expected = "control_center_page".equals(id) ? "control_center_overlay" : id;
            if (definition.getSection() != ControlSection.Content || !expected.equals(kind)) throw bad(id + "内容适配器合同不匹配");
        } else if ("system_port".equals(adapter)) {
            if ("volume".equals(kind)) {
                exactKeys(value, id + ".mapping", "adapter", "kind", "channel");
                channel = integer(value.get("channel"), id + ".channel");
                if (!("volume".equals(id) || "call_volume".equals(id) || "navigation_volume".equals(id) || "voice_volume".equals(id))
                        || channel < 1 || channel > 4) throw bad(id + "音量通道不受支持");
            } else {
                exactKeys(value, id + ".mapping", "adapter", "kind");
                if (!("system_control_center".equals(id) && "control_center".equals(kind)
                        || "screen_clean".equals(id) && "screen_clean".equals(kind))) throw bad(id + "系统适配器合同不匹配");
            }
        } else if ("s56_binder".equals(adapter)) {
            String expectedKind = "seat_massage".equals(id) ? "massage"
                    : "rear_wiper".equals(id) ? "rear_toggle" : "rear_wash".equals(id) ? "rear_pulse"
                    : "rear_fog".equals(id) ? "fresh_toggle" : "wiper_maintenance".equals(id) ? "fresh_set"
                    : "window_vent".equals(id) ? "window_group" : "brightness".equals(id) ? "brightness_array"
                    : "glove_box".equals(id) ? "delivery" : "modes";
            if (!expectedKind.equals(kind) || definition.getSection() == ControlSection.Content
                    || definition.getSection() == ControlSection.System && !"brightness".equals(id)) throw bad(id + "传输类型未实现");
            if ("massage".equals(kind)) exactKeys(value, id + ".mapping", "adapter", "kind", "reads", "readModes", "writes", "prepare");
            else if ("brightness_array".equals(kind)) exactKeys(value, id + ".mapping", "adapter", "kind", "reads", "readModes", "writes", "arrayPrefix");
            else exactKeys(value, id + ".mapping", "adapter", "kind", "reads", "readModes", "writes");
            JSONArray input = array(value.get("reads"), id + ".reads");
            int expectedReads = "delivery".equals(kind) ? 0 : "window_group".equals(kind) ? 4
                    : "massage".equals(kind) || "seat_heating".equals(id) || "passenger_seat_heating".equals(id)
                    || "steering_heating".equals(id) ? 2 : 1;
            if (input.length() != expectedReads) throw bad(id + "读回属性数量无效");
            for (int i = 0; i < input.length(); i++) reads.add(property(object(input.get(i), id + ".reads"), id + ".reads"));
            Set<Integer> semanticModes = new LinkedHashSet<>(definition.getAllowedModes());
            if ("brightness_array".equals(kind)) for (int i = 1; i <= 10; i++) semanticModes.add(i);
            if ("wiper_maintenance".equals(id)) semanticModes.add(0);
            JSONArray rows = array(value.get("readModes"), id + ".readModes");
            if (rows.length() > 128 || expectedReads > 0 && rows.length() == 0 || expectedReads == 0 && rows.length() != 0)
                throw bad(id + "读回模式表大小无效");
            int arity = "brightness_array".equals(kind) ? 2 : expectedReads;
            for (int i = 0; i < rows.length(); i++) {
                JSONObject row = object(rows.get(i), id + ".readModes");
                exactKeys(row, id + ".readModes", "raw", "mode");
                int mode = integer(row.get("mode"), id + ".readModes.mode");
                if (!semanticModes.contains(mode) && !("auto_wiper".equals(id) && mode >= 0 && mode <= 5)) throw bad(id + "读回语义模式越界");
                JSONArray tuple = array(row.get("raw"), id + ".readModes.raw");
                if (tuple.length() != arity || arity == 0) throw bad(id + "读回元组长度无效");
                Integer[] raw = new Integer[arity];
                boolean constrained = false;
                for (int cell = 0; cell < arity; cell++) if (tuple.get(cell) != JSONObject.NULL) {
                    raw[cell] = integer(tuple.get(cell), id + ".raw");
                    if (raw[cell] < 0) throw bad(id + "不能把错误哨兵映射为有效状态");
                    constrained = true;
                }
                if (!constrained) throw bad(id + "读回元组必须有有效条件");
                for (ContentVehicleProtocol.ReadMode previous : readModes) {
                    Integer[] prior = previous.raw();
                    boolean overlap = true, same = true;
                    for (int cell = 0; cell < arity; cell++) {
                        if (prior[cell] != null && raw[cell] != null && !prior[cell].equals(raw[cell])) overlap = false;
                        if (prior[cell] == null ? raw[cell] != null : !prior[cell].equals(raw[cell])) same = false;
                    }
                    if (same || overlap && previous.mode != mode) throw bad(id + "读回模式存在重复或歧义");
                }
                readModes.add(new ContentVehicleProtocol.ReadMode(mode, raw));
            }
            JSONArray outputs = array(value.get("writes"), id + ".writes");
            Set<Integer> writeModes = new LinkedHashSet<>(definition.getAllowedModes());
            if ("brightness_array".equals(kind)) { writeModes.clear(); for (int i = 1; i <= 10; i++) writeModes.add(i); }
            if ("rear_pulse".equals(kind)) writeModes.remove(0);
            if (outputs.length() != writeModes.size()) throw bad(id + "写入模式未完整覆盖语义合同");
            for (int i = 0; i < outputs.length(); i++) {
                JSONObject row = object(outputs.get(i), id + ".writes");
                exactKeys(row, id + ".writes", "mode", "functionId", "area", "value");
                int mode = integer(row.get("mode"), id + ".writes.mode");
                int function = integer(row.get("functionId"), id + ".writes.functionId");
                int area = integer(row.get("area"), id + ".writes.area");
                int raw = integer(row.get("value"), id + ".writes.value");
                if (!writeModes.contains(mode) || function <= 0 || area < 0 || raw < 0 || writes.containsKey(mode)) throw bad(id + "写入映射无效");
                writes.put(mode, ContentVehicleProtocol.mappedWrite(function, area, raw, "massage".equals(kind) && mode != 0));
            }
            if ("brightness_array".equals(kind)) {
                prefix = integer(value.get("arrayPrefix"), id + ".arrayPrefix");
                if (prefix < 0) throw bad(id + "数组前缀无效");
            }
            if ("massage".equals(kind)) {
                JSONObject init = object(value.get("prepare"), id + ".prepare");
                exactKeys(init, id + ".prepare", "switch", "mode", "strength", "off", "on", "modeMin", "modeMax", "strengthMin", "strengthMax");
                int off = integer(init.get("off"), id + ".off"), on = integer(init.get("on"), id + ".on");
                int modeMin = integer(init.get("modeMin"), id + ".modeMin"), modeMax = integer(init.get("modeMax"), id + ".modeMax");
                int strengthMin = integer(init.get("strengthMin"), id + ".strengthMin"), strengthMax = integer(init.get("strengthMax"), id + ".strengthMax");
                if (off < 0 || on < 0 || off == on || modeMin < 0 || modeMax < modeMin || strengthMin < 0 || strengthMax < strengthMin)
                    throw bad(id + "按摩初始化条件无效");
                preparation = new ContentVehicleProtocol.MassagePreparation(property(object(init.get("switch"), id), id),
                        property(object(init.get("mode"), id), id), property(object(init.get("strength"), id), id),
                        off, on, modeMin, modeMax, strengthMin, strengthMax);
                for (ContentVehicleProtocol.Write write : writes.values()) {
                    ContentVehicleProtocol.Property expected = write.ensureMassageOn ? preparation.strengthProperty : preparation.switchProperty;
                    if (write.functionId != expected.functionId || write.area != expected.area
                            || write.ensureMassageOn && (write.value < strengthMin || write.value > strengthMax)
                            || !write.ensureMassageOn && write.value != off) throw bad(id + "按摩写入与初始化属性不一致");
                }
            }
        } else throw bad(id + "未知适配器：" + adapter);
        return new ContentVehicleProtocol.Mapping(adapter, kind, channel, prefix, reads, readModes, writes, preparation);
    }

    private static List<String> placement(JSONObject presentation, String name, ControlSurface surface,
            Map<String, Declaration> declarations) throws Exception {
        Set<String> ids = strings(array(presentation.get(name), name), name, 80);
        for (String id : ids) {
            Declaration declaration = declarations.get(id);
            if (declaration == null || !declaration.surfaces.contains(surface)
                    || !declaration.definition.getSurfaces().contains(surface)) throw bad(name + "包含未声明或非法展示项：" + id);
        }
        return Collections.unmodifiableList(new ArrayList<>(ids));
    }

    private static Map<String, ContentPorts.CapabilityCheck> inspect(Parsed parsed, ContentPorts.VehiclePort port, ContentPorts.SystemPort systemPort) {
        Map<String, ContentPorts.CapabilityCheck> checks = new LinkedHashMap<>();
        for (ControlDefinition definition : ControlCatalog.INSTANCE.getAll()) {
            Declaration entry = parsed.declarations.get(definition.getId());
            ContentPorts.CapabilityCheck check;
            if (entry == null || !entry.enabled || !definition.getImplemented() || entry.mapping == null) {
                check = new ContentPorts.CapabilityCheck(ContentPorts.Capability.MISSING,
                        entry == null ? "配置未声明" : !definition.getImplemented() ? "功能尚未实现" : "车型未启用");
            } else if ("content".equals(entry.mapping.adapter)) {
                check = new ContentPorts.CapabilityCheck(ContentPorts.Capability.SUPPORTED, "已实现内容功能");
            } else if ("system_port".equals(entry.mapping.adapter)) {
                try { check = systemPort == null ? null : systemPort.inspectCapability(definition.getId(), entry.mapping); }
                catch (RuntimeException ignored) { check = null; }
                if (check == null) check = ContentPorts.CapabilityCheck.unknown("系统硬件支持尚未确认");
            } else if (port == null) {
                check = ContentPorts.CapabilityCheck.unknown("硬件支持尚未确认");
            } else {
                try { check = port.inspectCapability(definition.getId(), entry.mapping); }
                catch (RuntimeException ignored) { check = null; }
                if (check == null) check = ContentPorts.CapabilityCheck.unknown("只读检查未取得支持证据");
            }
            checks.put(definition.getId(), check);
        }
        return checks;
    }

    private static String encodeChecks(Map<String, ContentPorts.CapabilityCheck> checks) {
        JSONObject result = new JSONObject();
        try {
            for (Map.Entry<String, ContentPorts.CapabilityCheck> item : checks.entrySet())
                result.put(item.getKey(), new JSONObject().put("status", item.getValue().status.name())
                        .put("reason", item.getValue().reason));
        } catch (Exception error) { return ""; }
        return result.toString();
    }
    private static Map<String, ContentPorts.CapabilityCheck> decodeChecks(String value, Parsed parsed) {
        try {
            JSONObject result = new StrictJson(value).object();
            if (result.length() != ControlCatalog.INSTANCE.getAll().size()) return null;
            Map<String, ContentPorts.CapabilityCheck> checks = new LinkedHashMap<>();
            for (ControlDefinition definition : ControlCatalog.INSTANCE.getAll()) {
                JSONObject item = result.getJSONObject(definition.getId());
                exactKeys(item, "capability", "status", "reason");
                ContentPorts.Capability status = ContentPorts.Capability.valueOf(item.getString("status"));
                String reason = string(item.get("reason"), "reason", 240);
                Declaration declaration = parsed.declarations.get(definition.getId());
                if ((declaration == null || !declaration.enabled || !definition.getImplemented())
                        && status != ContentPorts.Capability.MISSING) return null;
                checks.put(definition.getId(), new ContentPorts.CapabilityCheck(status, reason));
            }
            return checks;
        } catch (Exception ignored) { return null; }
    }

    private static EnvironmentFacts readEnvironment(Context context, ContentPorts.VehiclePort port, ContentPorts.SystemPort systemPort, Parsed parsed) {
        StringBuilder facts = new StringBuilder();
        append(facts, "hardware", Build.MODEL, Build.HARDWARE);
        append(facts, "adapter", ADAPTER_VERSION, port == null ? "unbound-profile" : port.capabilityContract());
        append(facts, "system_adapter", systemPort == null ? "unbound-system" : systemPort.capabilityContract());
        PackageManager manager = context.getPackageManager();
        boolean audioDeclared = false;
        for (Declaration entry : parsed.declarations.values()) if (entry.enabled && entry.mapping != null && "volume".equals(entry.mapping.kind)) audioDeclared = true;
        if (audioDeclared) {
            try {
                PackageInfo info = manager.getPackageInfo("com.mengbo.media", 0);
                append(facts, "audio_service", info.packageName, info.versionName,
                        String.valueOf(Build.VERSION.SDK_INT >= 28 ? info.getLongVersionCode() : info.versionCode));
            } catch (PackageManager.NameNotFoundException | RuntimeException error) { append(facts, "audio_service", "not_installed"); }
        }
        Declaration screenClean = parsed.declarations.get("screen_clean");
        if (screenClean != null && screenClean.enabled) try {
            PackageInfo info = manager.getPackageInfo("com.mengbo.smartscene", 0);
            append(facts, "screen_clean_service", info.packageName, info.versionName,
                    String.valueOf(Build.VERSION.SDK_INT >= 28 ? info.getLongVersionCode() : info.versionCode));
        } catch (PackageManager.NameNotFoundException | RuntimeException error) { append(facts, "screen_clean_service", "not_installed"); }
        boolean vehicleInstalled = false;
        try {
            PackageInfo info = manager.getPackageInfo(ContentVehicleProtocol.VEHICLE_SERVICE_PACKAGE, 0);
            append(facts, "vehicle_service", info.packageName, info.versionName,
                    String.valueOf(Build.VERSION.SDK_INT >= 28 ? info.getLongVersionCode() : info.versionCode));
            vehicleInstalled = true;
        } catch (PackageManager.NameNotFoundException | RuntimeException error) { append(facts, "vehicle_service", "not_installed"); }
        try {
            ServiceInfo service = manager.getServiceInfo(new ComponentName(ContentVehicleProtocol.VEHICLE_SERVICE_PACKAGE,
                    ContentVehicleProtocol.VEHICLE_SERVICE_CLASS), PackageManager.MATCH_DISABLED_COMPONENTS);
            append(facts, "service_contract", service.packageName, service.name, service.permission, String.valueOf(service.exported));
        } catch (PackageManager.NameNotFoundException | RuntimeException error) { append(facts, "service_contract", "not_resolved"); }
        String message = vehicleInstalled ? "" : "；未发现车辆服务安装信息";
        if (!parsed.models.isEmpty() && !parsed.models.contains(Build.MODEL)) message += "；设备型号未匹配配置提示";
        return new EnvironmentFacts(sha256(facts.toString().getBytes(StandardCharsets.UTF_8)), message);
    }

    private static String catalogFingerprint() {
        StringBuilder facts = new StringBuilder();
        for (ControlDefinition definition : ControlCatalog.INSTANCE.getAll()) {
            append(facts, definition.getId(), definition.getTargetId(), definition.getSection().name(),
                    String.valueOf(definition.getImplemented()), definition.getAllowedModes().toString());
        }
        return sha256(facts.toString().getBytes(StandardCharsets.UTF_8));
    }
    private static void append(StringBuilder target, String... values) {
        for (String value : values) target.append(value == null ? -1 : value.length()).append(':').append(value).append('|');
    }
    private static String sectionName(ControlSection section) {
        switch (section) {
            case Control: return "controls";
            case Feature: return "features";
            case System: return "system";
            case Content: return "content";
            default: throw new IllegalArgumentException("unknown section");
        }
    }
    private static String rendererName(ControlDefinition definition) {
        switch (definition.getRenderer()) {
            case SystemAction: return "system_action";
            default: return definition.getRenderer().name().toLowerCase(java.util.Locale.ROOT);
        }
    }
    private static ControlSurface surface(String name) {
        switch (name) {
            case "control_center": return ControlSurface.ControlCenter;
            case "control_card": return ControlSurface.ControlCard;
            case "dock": return ControlSurface.Dock;
            case "gesture": return ControlSurface.Gesture;
            case "page": return ControlSurface.Page;
            default: return null;
        }
    }
    private static JSONObject object(Object value, String field) throws InvalidConfig {
        if (!(value instanceof JSONObject)) throw bad(field + "必须是对象");
        return (JSONObject) value;
    }
    private static JSONArray array(Object value, String field) throws InvalidConfig {
        if (!(value instanceof JSONArray)) throw bad(field + "必须是数组");
        return (JSONArray) value;
    }
    private static String string(Object value, String field, int maxLength) throws InvalidConfig {
        if (!(value instanceof String) || ((String) value).trim().isEmpty() || ((String) value).length() > maxLength)
            throw bad(field + "必须是有效字符串");
        return (String) value;
    }
    private static int integer(Object value, String field) throws InvalidConfig {
        if (!(value instanceof Integer || value instanceof Long) || ((Number) value).longValue() < Integer.MIN_VALUE
                || ((Number) value).longValue() > Integer.MAX_VALUE) throw bad(field + "必须是32位整数");
        return ((Number) value).intValue();
    }
    private static Set<String> strings(JSONArray array, String field, int maxLength) throws Exception {
        Set<String> values = new LinkedHashSet<>();
        if (array.length() > 128) throw bad(field + "项目过多");
        for (int index = 0; index < array.length(); index++) {
            if (!values.add(string(array.get(index), field, maxLength))) throw bad(field + "包含重复项");
        }
        return values;
    }
    private static void exactKeys(JSONObject object, String field, String... names) throws InvalidConfig {
        Set<String> expected = new HashSet<>();
        Collections.addAll(expected, names);
        Iterator<String> keys = object.keys();
        while (keys.hasNext()) if (!expected.remove(keys.next())) throw bad(field + "包含未知字段");
        if (!expected.isEmpty()) throw bad(field + "缺少必需字段：" + expected.iterator().next());
    }
    private static String last(Set<String> values) {
        String last = "";
        for (String value : values) last = value;
        return last;
    }
    private static <T> Set<T> immutable(Set<T> source) { return Collections.unmodifiableSet(new LinkedHashSet<>(source)); }
    private static InvalidConfig bad(String message) { return new InvalidConfig(message); }
    private static ContentVehicleConfig invalid(String hash, String message) {
        return invalid(hash, null, message);
    }
    private static ContentVehicleConfig invalid(String hash, String fileName, String message) {
        return new ContentVehicleConfig(Parsed.invalid(message), fileName, hash, false, true, message, "", "", Collections.<String, ContentPorts.CapabilityCheck>emptyMap());
    }
    private static byte[] read(InputStream input) throws Exception {
        try (InputStream stream = input; ByteArrayOutputStream output = new ByteArrayOutputStream()) {
            byte[] buffer = new byte[4096];
            int count;
            while ((count = stream.read(buffer)) != -1) {
                if (output.size() + count > MAX_CONFIG_BYTES) throw bad("配置超过大小限制");
                output.write(buffer, 0, count);
            }
            return output.toByteArray();
        }
    }
    private static String sha256(byte[] bytes) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(bytes);
            char[] result = new char[digest.length * 2];
            char[] hex = "0123456789abcdef".toCharArray();
            for (int index = 0; index < digest.length; index++) {
                result[index * 2] = hex[(digest[index] & 0xff) >>> 4];
                result[index * 2 + 1] = hex[digest[index] & 15];
            }
            return new String(result);
        } catch (Exception error) { throw new IllegalStateException("SHA-256 unavailable", error); }
    }

    private static final class InvalidConfig extends Exception {
        InvalidConfig(String message) { super(message); }
    }
    private static final class EnvironmentFacts {
        final String fingerprint, message;
        EnvironmentFacts(String fingerprint, String message) { this.fingerprint = fingerprint; this.message = message; }
    }
    private static final class Declaration {
        final ControlDefinition definition;
        final boolean enabled;
        final Set<ControlSurface> surfaces;
        final ContentVehicleProtocol.Mapping mapping;
        Declaration(ControlDefinition definition, boolean enabled, Set<ControlSurface> surfaces, ContentVehicleProtocol.Mapping mapping) {
            this.definition = definition; this.enabled = enabled; this.surfaces = immutable(surfaces); this.mapping = mapping;
        }
    }
    private static final class Parsed {
        final String profileId, displayName, message;
        final boolean valid;
        final Map<String, Declaration> declarations;
        final Map<ControlSurface, List<String>> initial;
        final Set<String> models;
        final Map<String, ContentVehicleProtocol.Signal> signals;
        Parsed(String profileId, String displayName, Map<String, Declaration> declarations,
                Map<ControlSurface, List<String>> initial, Set<String> models, Map<String, ContentVehicleProtocol.Signal> signals, boolean valid, String message) {
            this.profileId = profileId; this.displayName = displayName; this.valid = valid; this.message = message;
            this.declarations = Collections.unmodifiableMap(new LinkedHashMap<>(declarations));
            this.initial = Collections.unmodifiableMap(new LinkedHashMap<>(initial));
            this.models = immutable(models);
            this.signals = Collections.unmodifiableMap(new LinkedHashMap<>(signals));
        }
        static Parsed invalid(String message) {
            return new Parsed("", "", Collections.<String, Declaration>emptyMap(),
                    Collections.<ControlSurface, List<String>>emptyMap(), Collections.<String>emptySet(), Collections.<String, ContentVehicleProtocol.Signal>emptyMap(), false, message);
        }
    }

    /** Android JSONObject accepts duplicate keys, comments and coercions; profiles accept strict JSON. */
    private static final class StrictJson {
        private final String source;
        private int position;
        StrictJson(String source) { this.source = source; }
        JSONObject object() throws Exception {
            Object value = value(0);
            whitespace();
            if (!(value instanceof JSONObject) || position != source.length()) throw bad("配置JSON根对象或尾部无效");
            return (JSONObject) value;
        }
        private Object value(int depth) throws Exception {
            if (depth > 32) throw bad("配置JSON嵌套过深");
            whitespace();
            char next = peek();
            if (next == '{') {
                position++;
                JSONObject result = new JSONObject();
                Set<String> keys = new HashSet<>();
                whitespace();
                if (consume('}')) return result;
                do {
                    whitespace();
                    if (peek() != '"') throw bad("配置JSON对象键无效");
                    String key = text();
                    if (!keys.add(key)) throw bad("配置JSON包含重复字段：" + key);
                    whitespace();
                    require(':');
                    result.put(key, value(depth + 1));
                    whitespace();
                    if (consume('}')) return result;
                    require(',');
                } while (true);
            }
            if (next == '[') {
                position++;
                JSONArray result = new JSONArray();
                whitespace();
                if (consume(']')) return result;
                do {
                    result.put(value(depth + 1));
                    whitespace();
                    if (consume(']')) return result;
                    require(',');
                } while (true);
            }
            if (next == '"') return text();
            if (next == 't') { literal("true"); return Boolean.TRUE; }
            if (next == 'f') { literal("false"); return Boolean.FALSE; }
            if (next == 'n') { literal("null"); return JSONObject.NULL; }
            return number();
        }
        private String text() throws Exception {
            require('"');
            StringBuilder result = new StringBuilder();
            while (position < source.length()) {
                char next = source.charAt(position++);
                if (next == '"') return result.toString();
                if (next < 0x20) throw bad("配置JSON字符串含控制字符");
                if (next != '\\') { result.append(next); continue; }
                if (position >= source.length()) throw bad("配置JSON转义未结束");
                switch (source.charAt(position++)) {
                    case '"': result.append('"'); break;
                    case '\\': result.append('\\'); break;
                    case '/': result.append('/'); break;
                    case 'b': result.append('\b'); break;
                    case 'f': result.append('\f'); break;
                    case 'n': result.append('\n'); break;
                    case 'r': result.append('\r'); break;
                    case 't': result.append('\t'); break;
                    case 'u':
                        if (position + 4 > source.length()) throw bad("配置JSON Unicode转义无效");
                        int code = 0;
                        for (int index = 0; index < 4; index++) {
                            int digit = Character.digit(source.charAt(position++), 16);
                            if (digit < 0) throw bad("配置JSON Unicode转义无效");
                            code = code * 16 + digit;
                        }
                        result.append((char) code);
                        break;
                    default: throw bad("配置JSON转义无效");
                }
            }
            throw bad("配置JSON字符串未结束");
        }
        private Number number() throws Exception {
            int start = position;
            consume('-');
            if (!consume('0')) {
                if (peek() < '1' || peek() > '9') throw bad("配置JSON值无效");
                while (digit(peek())) position++;
            }
            boolean integral = true;
            if (consume('.')) {
                integral = false;
                if (!digit(peek())) throw bad("配置JSON小数无效");
                while (digit(peek())) position++;
            }
            if (peek() == 'e' || peek() == 'E') {
                integral = false;
                position++;
                if (peek() == '+' || peek() == '-') position++;
                if (!digit(peek())) throw bad("配置JSON指数无效");
                while (digit(peek())) position++;
            }
            String token = source.substring(start, position);
            if (integral) return Long.valueOf(token);
            double value = Double.parseDouble(token);
            if (Double.isNaN(value) || Double.isInfinite(value)) throw bad("配置JSON数值溢出");
            return value;
        }
        private void literal(String text) throws Exception {
            if (!source.startsWith(text, position)) throw bad("配置JSON字面值无效");
            position += text.length();
        }
        private void whitespace() {
            while (position < source.length() && " \t\n\r".indexOf(source.charAt(position)) >= 0) position++;
        }
        private char peek() { return position < source.length() ? source.charAt(position) : '\0'; }
        private boolean consume(char expected) {
            if (peek() != expected) return false;
            position++;
            return true;
        }
        private void require(char expected) throws Exception { if (!consume(expected)) throw bad("配置JSON分隔符无效"); }
        private boolean digit(char value) { return value >= '0' && value <= '9'; }
    }
}
