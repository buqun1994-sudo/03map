package com.icar03.fullscreenprobe;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.view.Display;
import android.view.Gravity;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/**
 * Standalone targetSdk=24 probe for Android 9/11 fullscreen and dual-Surface behavior.
 * It deliberately observes only its own window and the public package metadata of the map.
 */
public final class ProbeActivity extends Activity {
    private static final String MAP_PACKAGE = "com.autonavi.amapautolite";
    private static final int REQUEST_PHOTO = 4101;
    private static final int REQUEST_EXPORT = 4102;
    private static final int UI_FLAGS = 0x1706;
    private static final long SESSION_MS = 60_000L;
    private static final long SAMPLE_MS = 750L;
    private static final int MAX_EVENTS = 320;
    private static final long MAX_PHOTO_BYTES = 12L * 1024L * 1024L;
    private static final Charset UTF8 = Charset.forName("UTF-8");

    private final Handler main = new Handler(Looper.getMainLooper());
    private final ArrayList<String> events = new ArrayList<>();
    private final ArrayList<String> gaps = new ArrayList<>();

    private FrameLayout root;
    private FrameLayout splitPanel;
    private ProbeSurfaceView mapSurface;
    private ProbeSurfaceView uiSurface;
    private TextView status;
    private TextView lastEvent;
    private boolean compact = true;
    private boolean sessionActive;
    private long sessionStartedAt;
    private long sessionDeadline;
    private int droppedEvents;
    private String mode = "legacy";
    private File photoFile;
    private String photoMime = "";
    private String photoName = "";

    private final Runnable sampler = new Runnable() {
        @Override public void run() {
            if (!sessionActive) return;
            capture("periodic");
            if (System.currentTimeMillis() >= sessionDeadline) {
                stopSession("timeout");
            } else {
                main.postDelayed(this, SAMPLE_MS);
            }
        }
    };

    @Override protected void onCreate(Bundle state) {
        super.onCreate(state);
        configureWindowForMode("legacy");
        buildUi();
        capture("onCreate");
    }

    @Override protected void onResume() {
        super.onResume();
        configureWindowForMode(mode);
        capture("onResume");
    }

    @Override protected void onPause() {
        capture("onPause");
        super.onPause();
    }

    private void configureWindowForMode(String requested) {
        mode = requested == null ? "legacy" : requested;
        Window window = getWindow();
        window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
        View decor = window.getDecorView();
        if (Build.VERSION.SDK_INT >= 30) {
            if ("fits_false".equals(mode)) {
                window.setDecorFitsSystemWindows(false);
            } else {
                // targetSdk 24 uses the legacy decor-fitting behavior on API 30.
                window.setDecorFitsSystemWindows(true);
            }
        }
        decor.setSystemUiVisibility(UI_FLAGS);
        if (root != null) {
            root.post(new Runnable() {
                @Override public void run() {
                    updateSplitGeometry();
                    capture("mode:" + mode);
                }
            });
        }
    }

    private void buildUi() {
        root = new FrameLayout(this);
        root.setBackgroundColor(Color.rgb(13, 16, 20));
        root.setClipChildren(true);

        splitPanel = new FrameLayout(this);
        splitPanel.setClipChildren(true);
        splitPanel.setBackgroundColor(Color.BLACK);
        FrameLayout.LayoutParams panelParams = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
        root.addView(splitPanel, panelParams);

        mapSurface = new ProbeSurfaceView(this, "map_surface", Color.rgb(22, 70, 92));
        uiSurface = new ProbeSurfaceView(this, "ui_surface", Color.TRANSPARENT);
        uiSurface.setZOrderMediaOverlay(true);
        splitPanel.addView(mapSurface, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        splitPanel.addView(uiSurface, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        root.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override public void onLayoutChange(View view, int left, int top, int right, int bottom,
                                                 int oldLeft, int oldTop, int oldRight, int oldBottom) {
                main.post(new Runnable() {
                    @Override public void run() {
                        updateSplitGeometry();
                        capture("root_layout");
                    }
                });
            }
        });
        splitPanel.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override public void onLayoutChange(View view, int left, int top, int right, int bottom,
                                                 int oldLeft, int oldTop, int oldRight, int oldBottom) {
                capture("panel_layout");
            }
        });

        ScrollView overlayScroll = new ScrollView(this);
        overlayScroll.setFillViewport(false);
        LinearLayout overlay = new LinearLayout(this);
        overlay.setOrientation(LinearLayout.VERTICAL);
        overlay.setPadding(dp(12), dp(10), dp(12), dp(10));
        GradientDrawable overlayBackground = new GradientDrawable();
        overlayBackground.setColor(0xE61A1E24);
        overlayBackground.setCornerRadius(dp(10));
        overlay.setBackground(overlayBackground);
        overlayScroll.addView(overlay, new ScrollView.LayoutParams(dp(720), ViewGroup.LayoutParams.WRAP_CONTENT));
        FrameLayout.LayoutParams overlayParams = new FrameLayout.LayoutParams(dp(744), dp(650));
        overlayParams.gravity = Gravity.TOP | Gravity.LEFT;
        overlayParams.leftMargin = dp(18);
        overlayParams.topMargin = dp(18);
        root.addView(overlayScroll, overlayParams);

        TextView title = new TextView(this);
        title.setText("03T 全屏兼容探针（targetSdk 24）");
        title.setTextColor(Color.WHITE);
        title.setTextSize(22);
        overlay.addView(title, wrapParams(0, 0, 0, 8));

        TextView hint = new TextView(this);
        hint.setText("先点开始检测，再依次切换三种模式；需要时打开地图复现，最后导出 ZIP。探针只读取自身窗口和地图包公开信息。\n当前模式：" + mode);
        hint.setTextColor(0xFFD7E1E8);
        hint.setTextSize(15);
        overlay.addView(hint, wrapParams(0, 0, 0, 8));

        LinearLayout row1 = row();
        addButton(row1, "开始 60 秒检测", new View.OnClickListener() {
            @Override public void onClick(View view) { startSession(); }
        });
        addButton(row1, "停止检测", new View.OnClickListener() {
            @Override public void onClick(View view) { stopSession("manual"); }
        });
        addButton(row1, "双 Surface 收放", new View.OnClickListener() {
            @Override public void onClick(View view) {
                compact = !compact;
                updateSplitGeometry();
                capture("split_toggle");
            }
        });
        overlay.addView(row1, wrapParams(0, 0, 0, 6));

        LinearLayout row2 = row();
        addButton(row2, "旧 flags", new View.OnClickListener() {
            @Override public void onClick(View view) { configureWindowForMode("legacy"); }
        });
        addButton(row2, "decorFits=true", new View.OnClickListener() {
            @Override public void onClick(View view) { configureWindowForMode("fits_true"); }
        });
        addButton(row2, "decorFits=false", new View.OnClickListener() {
            @Override public void onClick(View view) { configureWindowForMode("fits_false"); }
        });
        overlay.addView(row2, wrapParams(0, 0, 0, 6));

        LinearLayout row3 = row();
        addButton(row3, "打开基线地图", new View.OnClickListener() {
            @Override public void onClick(View view) { openMap(); }
        });
        addButton(row3, "附加失败照片", new View.OnClickListener() {
            @Override public void onClick(View view) { choosePhoto(); }
        });
        addButton(row3, "导出 ZIP", new View.OnClickListener() {
            @Override public void onClick(View view) { requestExport(); }
        });
        overlay.addView(row3, wrapParams(0, 0, 0, 6));

        status = new TextView(this);
        status.setTextColor(0xFFB9F6CA);
        status.setTextSize(15);
        status.setText("尚未开始检测");
        overlay.addView(status, wrapParams(0, 0, 0, 6));

        lastEvent = new TextView(this);
        lastEvent.setTextColor(0xFFB9C4CC);
        lastEvent.setTextSize(12);
        lastEvent.setMaxLines(4);
        lastEvent.setText("等待窗口采样…");
        overlay.addView(lastEvent, wrapParams(0, 0, 0, 0));

        setContentView(root);
        root.post(new Runnable() {
            @Override public void run() { updateSplitGeometry(); capture("first_layout"); }
        });
    }

    private LinearLayout row() {
        LinearLayout result = new LinearLayout(this);
        result.setOrientation(LinearLayout.HORIZONTAL);
        return result;
    }

    private void addButton(LinearLayout parent, String text, View.OnClickListener listener) {
        Button button = new Button(this);
        button.setText(text);
        button.setTextSize(13);
        button.setAllCaps(false);
        button.setOnClickListener(listener);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(0, dp(48), 1f);
        params.rightMargin = dp(5);
        parent.addView(button, params);
    }

    private LinearLayout.LayoutParams wrapParams(int left, int top, int right, int bottom) {
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        params.leftMargin = dp(left);
        params.topMargin = dp(top);
        params.rightMargin = dp(right);
        params.bottomMargin = dp(bottom);
        return params;
    }

    private void updateSplitGeometry() {
        if (root == null || splitPanel == null) return;
        int width = root.getWidth();
        if (width <= 0) {
            Display display = getWindowManager().getDefaultDisplay();
            android.util.DisplayMetrics metrics = new android.util.DisplayMetrics();
            display.getRealMetrics(metrics);
            width = metrics.widthPixels;
        }
        int panelWidth = compact ? Math.max(1, (width * 2) / 3) : width;
        FrameLayout.LayoutParams params = (FrameLayout.LayoutParams) splitPanel.getLayoutParams();
        if (params == null) params = new FrameLayout.LayoutParams(panelWidth, ViewGroup.LayoutParams.MATCH_PARENT);
        int leftMargin = compact ? width - panelWidth : 0;
        boolean changed = params.width != panelWidth
                || params.height != ViewGroup.LayoutParams.MATCH_PARENT
                || params.leftMargin != leftMargin
                || params.topMargin != 0;
        params.width = panelWidth;
        params.height = ViewGroup.LayoutParams.MATCH_PARENT;
        params.leftMargin = leftMargin;
        params.topMargin = 0;
        if (changed) splitPanel.setLayoutParams(params);
        if (splitPanel.getTranslationX() != 0f) splitPanel.setTranslationX(0f);
        capture("split_geometry");
    }

    private void startSession() {
        events.clear();
        gaps.clear();
        droppedEvents = 0;
        sessionActive = true;
        sessionStartedAt = System.currentTimeMillis();
        sessionDeadline = sessionStartedAt + SESSION_MS;
        recordEvent("session_start", "mode", mode);
        updateStatus("检测进行中，剩余约 60 秒；请切换模式并复现地图画面");
        main.removeCallbacks(sampler);
        main.post(sampler);
    }

    private void stopSession(String reason) {
        if (!sessionActive && !"manual".equals(reason)) return;
        sessionActive = false;
        main.removeCallbacks(sampler);
        capture("session_end");
        recordEvent("session_stop", "reason", reason);
        updateStatus("检测结束：" + reason + "；可以附照片并导出 ZIP");
    }

    private void updateStatus(final String text) {
        if (status != null) status.setText(text);
    }

    private void capture(String reason) {
        if (root == null) return;
        Rect visible = new Rect();
        root.getWindowVisibleDisplayFrame(visible);
        int[] location = new int[2];
        root.getLocationOnScreen(location);
        recordEvent("sample", "reason", reason,
                "mode", mode,
                "root_w", Integer.toString(root.getWidth()),
                "root_h", Integer.toString(root.getHeight()),
                "root_left", Integer.toString(root.getLeft()),
                "root_top", Integer.toString(root.getTop()),
                "screen_x", Integer.toString(location[0]),
                "screen_y", Integer.toString(location[1]),
                "visible", visible.left + "," + visible.top + "," + visible.right + "," + visible.bottom,
                "panel", geometry(splitPanel),
                "map_surface", geometry(mapSurface),
                "ui_surface", geometry(uiSurface),
                "map_surface_frame", surfaceFrame(mapSurface),
                "ui_surface_frame", surfaceFrame(uiSurface),
                "surface_valid", Boolean.toString(mapSurface != null && mapSurface.getHolder().getSurface().isValid())
        );
        if (lastEvent != null) {
            lastEvent.setText("最近采样：" + reason + "\n" + windowSummary() + "\n" + insetsSummary());
        }
    }

    private String windowSummary() {
        WindowManager.LayoutParams attrs = getWindow().getAttributes();
        int flags = attrs == null ? 0 : attrs.flags;
        return "flags=0x" + Integer.toHexString(flags)
                + " sysUi=0x" + Integer.toHexString(getWindow().getDecorView().getSystemUiVisibility())
                + " focus=" + getWindow().getDecorView().hasWindowFocus()
                + " multiWindow=" + (Build.VERSION.SDK_INT >= 24 && isInMultiWindowMode());
    }

    private String insetsSummary() {
        if (root == null || Build.VERSION.SDK_INT < 23) return "insets=unsupported(<23)";
        WindowInsets insets = root.getRootWindowInsets();
        if (insets == null) return "insets=null";
        return "insets=" + insets.getSystemWindowInsetLeft() + ","
                + insets.getSystemWindowInsetTop() + ","
                + insets.getSystemWindowInsetRight() + ","
                + insets.getSystemWindowInsetBottom();
    }

    private String geometry(View view) {
        if (view == null) return "null";
        return view.getLeft() + "," + view.getTop() + "," + view.getWidth() + "x" + view.getHeight()
                + ",tx=" + view.getTranslationX() + ",ty=" + view.getTranslationY()
                + ",visibility=" + view.getVisibility();
    }

    private String surfaceFrame(SurfaceView view) {
        if (view == null) return "null";
        Rect rect = view.getHolder().getSurfaceFrame();
        return rect == null ? "null" : rect.left + "," + rect.top + "," + rect.right + "," + rect.bottom;
    }

    private void recordEvent(String type, String... values) {
        if (events.size() >= MAX_EVENTS) {
            droppedEvents++;
            return;
        }
        StringBuilder event = new StringBuilder("{\"at\":");
        event.append(System.currentTimeMillis());
        event.append(",\"type\":").append(json(type));
        for (int i = 0; i + 1 < values.length; i += 2) {
            event.append(',').append(json(values[i])).append(':').append(json(values[i + 1]));
        }
        event.append('}');
        events.add(event.toString());
    }

    private void surfaceEvent(String role, String event, int format, int width, int height) {
        recordEvent("surface", "role", role, "event", event,
                "format", Integer.toString(format), "width", Integer.toString(width),
                "height", Integer.toString(height));
        if (lastEvent != null) lastEvent.setText("最近 Surface：" + role + " " + event + " " + width + "x" + height);
    }

    private void openMap() {
        recordEvent("open_map_click", "package", MAP_PACKAGE);
        Intent intent = getPackageManager().getLaunchIntentForPackage(MAP_PACKAGE);
        if (intent == null) {
            gaps.add("map_package_not_launchable");
            toast("未找到基线地图包：" + MAP_PACKAGE);
            return;
        }
        try {
            startActivity(intent);
            updateStatus("已打开基线地图；复现后按返回键回到探针");
        } catch (ActivityNotFoundException error) {
            gaps.add("map_launch_failed");
            toast("无法打开基线地图");
        }
    }

    private void choosePhoto() {
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        intent.setType("image/*");
        try {
            startActivityForResult(intent, REQUEST_PHOTO);
        } catch (ActivityNotFoundException error) {
            gaps.add("photo_picker_unavailable");
            toast("车机没有可用的图片选择器；照片可以单独发回");
        }
    }

    private void requestExport() {
        Intent intent = new Intent(Intent.ACTION_CREATE_DOCUMENT);
        intent.addCategory(Intent.CATEGORY_OPENABLE);
        intent.setType("application/zip");
        intent.putExtra(Intent.EXTRA_TITLE, "03T全屏兼容诊断-" + timestamp() + ".zip");
        try {
            startActivityForResult(intent, REQUEST_EXPORT);
        } catch (ActivityNotFoundException error) {
            gaps.add("document_provider_unavailable");
            toast("车机没有可用的文件保存器");
        }
    }

    @Override protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode != RESULT_OK || data == null || data.getData() == null) {
            recordEvent("activity_result", "request", Integer.toString(requestCode), "result", "cancelled");
            return;
        }
        if (requestCode == REQUEST_PHOTO) {
            importPhoto(data.getData());
        } else if (requestCode == REQUEST_EXPORT) {
            final Uri destination = data.getData();
            new Thread(new Runnable() {
                @Override public void run() { exportZip(destination); }
            }, "probe-export").start();
        }
    }

    private void importPhoto(Uri uri) {
        File dir = new File(getFilesDir(), "probe-session");
        if (!dir.exists() && !dir.mkdirs()) {
            toast("无法创建诊断目录");
            return;
        }
        File target = new File(dir, "map-failure-photo.bin");
        long total = 0;
        try (InputStream input = new BufferedInputStream(getContentResolver().openInputStream(uri));
             OutputStream output = new BufferedOutputStream(new FileOutputStream(target, false))) {
            if (input == null) throw new IOException("null input");
            byte[] buffer = new byte[8192];
            int count;
            while ((count = input.read(buffer)) != -1) {
                total += count;
                if (total > MAX_PHOTO_BYTES) throw new IOException("photo too large");
                output.write(buffer, 0, count);
            }
        } catch (Exception error) {
            target.delete();
            photoFile = null;
            gaps.add("photo_import_failed");
            toast("照片读取失败或超过 12MB");
            return;
        }
        photoFile = target;
        photoMime = getContentResolver().getType(uri);
        if (photoMime == null) photoMime = "image/*";
        photoName = "map-failure-photo" + extensionFor(photoMime);
        recordEvent("photo_attached", "bytes", Long.toString(total), "mime", photoMime);
        toast("已附加失败画面");
    }

    private void exportZip(Uri destination) {
        String report = reportJson();
        byte[] reportBytes = report.getBytes(UTF8);
        String photoHash = photoFile == null ? "" : sha256(photoFile);
        String reportHash = sha256(reportBytes);
        String integrity = "{\"report_json_sha256\":\"" + jsonValue(reportHash)
                + "\",\"photo_sha256\":\"" + jsonValue(photoHash)
                + "\",\"photo_name\":\"" + jsonValue(photoName)
                + "\"}\n";
        try (OutputStream raw = getContentResolver().openOutputStream(destination);
             ZipOutputStream zip = new ZipOutputStream(new BufferedOutputStream(raw))) {
            if (raw == null) throw new IOException("null destination");
            putBytes(zip, "report.json", reportBytes);
            putBytes(zip, "integrity.json", integrity.getBytes(UTF8));
            if (photoFile != null && photoFile.isFile()) putFile(zip, "evidence/" + photoName, photoFile);
            recordEvent("export_finished", "photo", Boolean.toString(photoFile != null));
            runOnUiThread(new Runnable() {
                @Override public void run() { toast("诊断 ZIP 已导出"); updateStatus("已导出；可以把 ZIP 和照片发回"); }
            });
        } catch (Exception error) {
            gaps.add("export_failed");
            runOnUiThread(new Runnable() {
                @Override public void run() { toast("ZIP 导出失败，请换一个保存位置重试"); }
            });
        }
    }

    private void putBytes(ZipOutputStream zip, String name, byte[] bytes) throws IOException {
        zip.putNextEntry(new ZipEntry(name));
        zip.write(bytes);
        zip.closeEntry();
    }

    private void putFile(ZipOutputStream zip, String name, File file) throws IOException {
        zip.putNextEntry(new ZipEntry(name));
        try (InputStream input = new BufferedInputStream(new FileInputStream(file))) {
            byte[] buffer = new byte[8192];
            int count;
            while ((count = input.read(buffer)) != -1) zip.write(buffer, 0, count);
        }
        zip.closeEntry();
    }

    private String reportJson() {
        capture("report_build");
        PackageSnapshot map = packageSnapshot(MAP_PACKAGE);
        StringBuilder out = new StringBuilder();
        out.append("{\n");
        out.append("  \"schema\":1,\n");
        out.append("  \"generated_at\":").append(System.currentTimeMillis()).append(",\n");
        out.append("  \"probe\":").append(probeSnapshot()).append(",\n");
        out.append("  \"device\":").append(deviceSnapshot()).append(",\n");
        out.append("  \"map_package\":").append(map.json).append(",\n");
        out.append("  \"session\":{\"active\":").append(sessionActive)
                .append(",\"started_at\":").append(sessionStartedAt)
                .append(",\"deadline\":").append(sessionDeadline)
                .append(",\"dropped_events\":").append(droppedEvents).append("},\n");
        out.append("  \"events\":[");
        for (int i = 0; i < events.size(); i++) {
            if (i > 0) out.append(',');
            out.append(events.get(i));
        }
        out.append("],\n  \"gaps\":[");
        for (int i = 0; i < gaps.size(); i++) {
            if (i > 0) out.append(',');
            out.append(json(gaps.get(i)));
        }
        out.append("],\n  \"photo\":{\"attached\":").append(photoFile != null)
                .append(",\"mime\":").append(json(photoMime))
                .append(",\"name\":").append(json(photoName)).append("}\n");
        out.append("}\n");
        return out.toString();
    }

    private String probeSnapshot() {
        WindowManager.LayoutParams attrs = getWindow().getAttributes();
        int flags = attrs == null ? 0 : attrs.flags;
        return "{\"package\":\"com.icar03.fullscreenprobe\",\"target_sdk\":24"
                + ",\"mode\":" + json(mode)
                + ",\"requested_ui_flags\":\"0x" + Integer.toHexString(UI_FLAGS) + "\""
                + ",\"actual_window_flags\":\"0x" + Integer.toHexString(flags) + "\""
                + ",\"actual_system_ui_visibility\":\"0x" + Integer.toHexString(getWindow().getDecorView().getSystemUiVisibility()) + "\""
                + ",\"soft_input_mode\":" + (attrs == null ? 0 : attrs.softInputMode)
                + ",\"window_summary\":" + json(windowSummary())
                + ",\"insets_summary\":" + json(insetsSummary()) + "}";
    }

    private String deviceSnapshot() {
        Display display = getWindowManager().getDefaultDisplay();
        android.util.DisplayMetrics real = new android.util.DisplayMetrics();
        android.util.DisplayMetrics resources = getResources().getDisplayMetrics();
        display.getRealMetrics(real);
        return "{\"manufacturer\":" + json(Build.MANUFACTURER)
                + ",\"model\":" + json(Build.MODEL)
                + ",\"device\":" + json(Build.DEVICE)
                + ",\"release\":" + json(Build.VERSION.RELEASE)
                + ",\"sdk\":" + Build.VERSION.SDK_INT
                + ",\"build_display\":" + json(Build.DISPLAY)
                + ",\"display_id\":" + display.getDisplayId()
                + ",\"real_metrics\":{\"width\":" + real.widthPixels + ",\"height\":" + real.heightPixels
                + ",\"density\":" + real.density + ",\"density_dpi\":" + real.densityDpi + "}"
                + ",\"resource_metrics\":{\"width\":" + resources.widthPixels + ",\"height\":" + resources.heightPixels
                + ",\"density\":" + resources.density + ",\"density_dpi\":" + resources.densityDpi + "}"
                + ",\"secure_android_id_present\":" + (Settings.Secure.getString(getContentResolver(), Settings.Secure.ANDROID_ID) != null)
                + "}";
    }

    private PackageSnapshot packageSnapshot(String packageName) {
        PackageSnapshot result = new PackageSnapshot();
        try {
            PackageManager pm = getPackageManager();
            int flags = Build.VERSION.SDK_INT >= 28 ? PackageManager.GET_SIGNING_CERTIFICATES : PackageManager.GET_SIGNATURES;
            PackageInfo info = pm.getPackageInfo(packageName, flags);
            ApplicationInfo app = info.applicationInfo;
            String versionCode = Build.VERSION.SDK_INT >= 28 ? Long.toString(info.getLongVersionCode()) : Integer.toString(info.versionCode);
            String signature = "";
            if (Build.VERSION.SDK_INT >= 28 && info.signingInfo != null) {
                Signature[] values = info.signingInfo.hasMultipleSigners()
                        ? info.signingInfo.getApkContentsSigners() : info.signingInfo.getSigningCertificateHistory();
                if (values != null && values.length > 0) signature = sha256(values[0].toByteArray());
            } else if (info.signatures != null && info.signatures.length > 0) {
                signature = sha256(info.signatures[0].toByteArray());
            }
            String apkHash = "";
            String apkHashStatus = "unavailable";
            if (app != null && app.sourceDir != null) {
                File source = new File(app.sourceDir);
                if (source.isFile() && source.canRead()) {
                    apkHash = sha256(source);
                    apkHashStatus = apkHash.isEmpty() ? "failed" : "ok";
                } else {
                    apkHashStatus = "denied";
                }
            }
            String maxAspect = "unavailable";
            if (app != null && app.metaData != null && app.metaData.containsKey("android.max_aspect")) {
                maxAspect = String.valueOf(app.metaData.get("android.max_aspect"));
            }
            Intent launch = pm.getLaunchIntentForPackage(packageName);
            String launcher = "unavailable";
            if (launch != null) {
                ResolveInfo resolved = pm.resolveActivity(launch, PackageManager.MATCH_DEFAULT_ONLY);
                if (resolved != null && resolved.activityInfo != null) launcher = resolved.activityInfo.name;
            }
            result.json = "{\"status\":\"installed\",\"package\":" + json(packageName)
                    + ",\"version_name\":" + json(info.versionName)
                    + ",\"version_code\":" + json(versionCode)
                    + ",\"target_sdk\":" + (app == null ? -1 : app.targetSdkVersion)
                    + ",\"application_flags\":\"0x" + Integer.toHexString(app == null ? 0 : app.flags) + "\""
                    + ",\"signature_sha256\":" + json(signature)
                    + ",\"apk_sha256\":" + json(apkHash)
                    + ",\"apk_sha256_status\":" + json(apkHashStatus)
                    + ",\"max_aspect_metadata\":" + json(maxAspect)
                    + ",\"launcher_activity\":" + json(launcher) + "}";
        } catch (PackageManager.NameNotFoundException error) {
            result.json = "{\"status\":\"not_installed\",\"package\":" + json(packageName) + "}";
        } catch (Exception error) {
            result.json = "{\"status\":\"error\",\"package\":" + json(packageName)
                    + ",\"error\":" + json(error.getClass().getSimpleName()) + "}";
        }
        return result;
    }

    private static final class PackageSnapshot {
        String json;
    }

    private String timestamp() {
        return new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.US).format(new Date());
    }

    private String extensionFor(String mime) {
        if (mime == null) return ".bin";
        if (mime.contains("png")) return ".png";
        if (mime.contains("jpeg") || mime.contains("jpg")) return ".jpg";
        if (mime.contains("webp")) return ".webp";
        return ".bin";
    }

    private void toast(final String text) {
        runOnUiThread(new Runnable() {
            @Override public void run() { Toast.makeText(ProbeActivity.this, text, Toast.LENGTH_LONG).show(); }
        });
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    private String json(String value) {
        if (value == null) return "null";
        return "\"" + jsonValue(value) + "\"";
    }

    private String jsonValue(String value) {
        if (value == null) return "";
        StringBuilder out = new StringBuilder(value.length() + 8);
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            switch (c) {
                case '\\': out.append("\\\\"); break;
                case '"': out.append("\\\""); break;
                case '\n': out.append("\\n"); break;
                case '\r': out.append("\\r"); break;
                case '\t': out.append("\\t"); break;
                default:
                    if (c < 0x20) out.append('?'); else out.append(c);
            }
        }
        return out.toString();
    }

    private String sha256(byte[] bytes) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            return hex(digest.digest(bytes));
        } catch (Exception error) {
            return "";
        }
    }

    private String sha256(File file) {
        if (file == null || !file.isFile()) return "";
        try (InputStream input = new BufferedInputStream(new FileInputStream(file))) {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] buffer = new byte[64 * 1024];
            int count;
            while ((count = input.read(buffer)) != -1) digest.update(buffer, 0, count);
            return hex(digest.digest());
        } catch (Exception error) {
            return "";
        }
    }

    private String hex(byte[] bytes) {
        StringBuilder result = new StringBuilder(bytes.length * 2);
        for (byte value : bytes) result.append(String.format(Locale.US, "%02x", value & 0xff));
        return result.toString();
    }

    private static final class ProbeSurfaceView extends SurfaceView implements SurfaceHolder.Callback {
        private final ProbeActivity owner;
        private final String role;
        private final int color;
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);

        ProbeSurfaceView(ProbeActivity owner, String role, int color) {
            super(owner);
            this.owner = owner;
            this.role = role;
            this.color = color;
            getHolder().addCallback(this);
            setFocusable(false);
        }

        @Override public void surfaceCreated(SurfaceHolder holder) {
            owner.surfaceEvent(role, "created", 0, getWidth(), getHeight());
            drawSurface(holder, getWidth(), getHeight());
        }

        @Override public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
            owner.surfaceEvent(role, "changed", format, width, height);
            drawSurface(holder, width, height);
        }

        @Override public void surfaceDestroyed(SurfaceHolder holder) {
            owner.surfaceEvent(role, "destroyed", 0, getWidth(), getHeight());
        }

        private void drawSurface(SurfaceHolder holder, int width, int height) {
            Canvas canvas = null;
            try {
                canvas = holder.lockCanvas();
                if (canvas == null) return;
                canvas.drawColor(color);
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(Math.max(2f, width / 360f));
                paint.setColor(role.equals("map_surface") ? 0xFF74D8F1 : 0xFFFFD166);
                canvas.drawRect(paint.getStrokeWidth(), paint.getStrokeWidth(),
                        Math.max(1, width) - paint.getStrokeWidth(), Math.max(1, height) - paint.getStrokeWidth(), paint);
                paint.setStyle(Paint.Style.FILL);
                paint.setTextSize(Math.max(18f, width / 42f));
                String label = role + "  " + width + "x" + height;
                canvas.drawText(label, Math.max(12f, width / 36f), Math.max(30f, height / 12f), paint);
            } finally {
                if (canvas != null) holder.unlockCanvasAndPost(canvas);
            }
        }
    }
}
