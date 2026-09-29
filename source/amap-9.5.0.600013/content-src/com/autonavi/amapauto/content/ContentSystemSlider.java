package com.autonavi.amapauto.content;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.graphics.Typeface;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

/** A car-sized vertical control. Writes occur once, on release, and only through public APIs. */
final class ContentSystemSlider extends FrameLayout {
    static final int BRIGHTNESS = 0;
    static final int VOLUME = 1;
    private final int kind;
    private final ContentPorts.SystemPort systemPort;
    private final View fill;
    private final GradientDrawable fillBackground;
    private final TextView value;
    private final ImageView icon;
    private int percent;
    private int originalPercent;
    private boolean available;
    private boolean dragging;
    private ContentTheme theme;

    ContentSystemSlider(Context context, ContentPorts.SystemPort systemPort, Typeface typeface,
            int kind) {
        super(context);
        this.systemPort = systemPort;
        this.kind = kind;
        setClipToOutline(false);
        fill = new View(context);
        fillBackground = shape(0, 0);
        fill.setBackground(fillBackground);
        addView(fill, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, Gravity.BOTTOM));
        value = new TextView(context);
        value.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f);
        value.setTypeface(typeface);
        value.setGravity(Gravity.CENTER);
        value.setMaxLines(2);
        value.setIncludeFontPadding(false);
        FrameLayout.LayoutParams valueParams = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(48), Gravity.TOP);
        valueParams.topMargin = dp(42);
        addView(value, valueParams);
        icon = new ImageView(context);
        int resource = context.getResources().getIdentifier(kind == BRIGHTNESS
                ? "content_oem_ico_brightness_mid" : "content_oem_ico_volume_2",
                "drawable", context.getPackageName());
        if (resource != 0) icon.setImageResource(resource);
        icon.setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
        FrameLayout.LayoutParams iconParams = new FrameLayout.LayoutParams(dp(32), dp(32), Gravity.TOP);
        iconParams.gravity = Gravity.TOP | Gravity.CENTER_HORIZONTAL;
        iconParams.topMargin = dp(10);
        addView(icon, iconParams);
        setOnTouchListener(new OnTouchListener() {
            @Override public boolean onTouch(View view, MotionEvent event) {
                switch (event.getActionMasked()) {
                    case MotionEvent.ACTION_DOWN:
                        refresh();
                        if (!available) return true;
                        dragging = true;
                        originalPercent = percent;
                        getParent().requestDisallowInterceptTouchEvent(true);
                        preview(event.getY());
                        return true;
                    case MotionEvent.ACTION_MOVE:
                        if (dragging) preview(event.getY());
                        return true;
                    case MotionEvent.ACTION_UP:
                        if (dragging) {
                            preview(event.getY());
                            dragging = false;
                            if (percent != originalPercent) writePercent(percent);
                            refresh();
                        }
                        return true;
                    case MotionEvent.ACTION_CANCEL:
                        dragging = false;
                        percent = originalPercent;
                        refresh();
                        return true;
                    default: return true;
                }
            }
        });
        addOnLayoutChangeListener(new OnLayoutChangeListener() {
            @Override public void onLayoutChange(View view, int left, int top, int right, int bottom,
                    int oldLeft, int oldTop, int oldRight, int oldBottom) {
                if (bottom - top != oldBottom - oldTop) showPercent();
            }
        });
        refresh();
    }

    void setTheme(ContentTheme nextTheme) {
        theme = nextTheme;
        setBackground(new ContentRenderer.DownwardShadowDrawable(theme.surface, dp(7)));
        fillBackground.setColor(theme.elevated);
        value.setTextColor(theme.text);
        icon.setColorFilter(theme.secondaryText);
    }

    void refresh() {
        ContentPorts.SystemSnapshot snapshot = systemPort.read(kind);
        available = snapshot.available;
        percent = snapshot.percent;
        showPercent();
    }

    private void writePercent(int target) {
        if (!systemPort.write(kind, target)) {
            refresh();
            return;
        }
        refresh();
    }

    private void preview(float y) {
        int usable = Math.max(1, getHeight());
        percent = Math.max(0, Math.min(100, Math.round((getHeight() - y) * 100f / usable)));
        showPercent();
    }

    private void showPercent() {
        int usable = Math.max(0, getHeight());
        ViewGroup.LayoutParams params = fill.getLayoutParams();
        int height = Math.round(usable * percent / 100f);
        int radius = dp(7);
        float topRadius = height >= usable ? radius : 0;
        fillBackground.setCornerRadii(new float[]{topRadius, topRadius, topRadius, topRadius,
                radius, radius, radius, radius});
        if (height != params.height) {
            params.height = height;
            fill.setLayoutParams(params);
        }
        String name = kind == BRIGHTNESS ? "亮度" : "音量";
        value.setText(name + "\n" + (available ? percent + "%" : "不可调"));
        setContentDescription(name + (available ? "，" + percent + "%" : "，当前无法调整"));
    }

    private GradientDrawable shape(int color, int radius) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(color);
        drawable.setCornerRadius(radius);
        return drawable;
    }

    private int dp(float value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }
}
