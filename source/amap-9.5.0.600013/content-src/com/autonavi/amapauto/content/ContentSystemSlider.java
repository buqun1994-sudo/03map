package com.autonavi.amapauto.content;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.media.AudioManager;
import android.os.Build;
import android.provider.Settings;
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
    private final View fill;
    private final TextView value;
    private final ImageView icon;
    private int percent;
    private int originalPercent;
    private boolean available;
    private boolean dragging;
    private ContentTheme theme;

    ContentSystemSlider(Context context, int kind) {
        super(context);
        this.kind = kind;
        setClipToOutline(true);
        fill = new View(context);
        addView(fill, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, Gravity.BOTTOM));
        value = new TextView(context);
        value.setTextSize(TypedValue.COMPLEX_UNIT_PX, 20f);
        value.setGravity(Gravity.CENTER);
        value.setMaxLines(2);
        value.setIncludeFontPadding(false);
        addView(value, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(50), Gravity.TOP));
        icon = new ImageView(context);
        int resource = context.getResources().getIdentifier(kind == BRIGHTNESS
                ? "content_oem_ico_brightness_mid" : "content_oem_ico_volume_2",
                "drawable", context.getPackageName());
        if (resource != 0) icon.setImageResource(resource);
        icon.setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
        addView(icon, new FrameLayout.LayoutParams(dp(32), dp(32), Gravity.CENTER));
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
        setBackground(shape(theme.surface, dp(7)));
        fill.setBackgroundColor(theme.selected);
        value.setTextColor(theme.text);
        icon.setColorFilter(theme.secondaryText);
    }

    void refresh() {
        try {
            if (kind == BRIGHTNESS) {
                int raw = Settings.System.getInt(getContext().getContentResolver(),
                        Settings.System.SCREEN_BRIGHTNESS, -1);
                available = raw >= 0 && (Build.VERSION.SDK_INT < 23
                        || Settings.System.canWrite(getContext()));
                percent = raw < 0 ? 0 : Math.round(raw * 100f / 255f);
            } else {
                AudioManager audio = (AudioManager) getContext().getSystemService(Context.AUDIO_SERVICE);
                int max = audio == null ? 0 : audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC);
                available = max > 0;
                percent = available ? Math.round(audio.getStreamVolume(AudioManager.STREAM_MUSIC)
                        * 100f / max) : 0;
            }
        } catch (SecurityException | IllegalArgumentException exception) {
            available = false;
            percent = 0;
        }
        showPercent();
    }

    private void writePercent(int target) {
        try {
            if (kind == BRIGHTNESS) {
                if (Build.VERSION.SDK_INT >= 23 && !Settings.System.canWrite(getContext())) return;
                Settings.System.putInt(getContext().getContentResolver(),
                        Settings.System.SCREEN_BRIGHTNESS, Math.round(target * 255f / 100f));
            } else {
                AudioManager audio = (AudioManager) getContext().getSystemService(Context.AUDIO_SERVICE);
                if (audio != null) audio.setStreamVolume(AudioManager.STREAM_MUSIC,
                        Math.round(audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC)
                                * target / 100f), 0);
            }
        } catch (SecurityException | IllegalArgumentException exception) {
            available = false;
        }
    }

    private void preview(float y) {
        int usable = Math.max(1, getHeight() - dp(50));
        percent = Math.max(0, Math.min(100, Math.round((getHeight() - y) * 100f / usable)));
        showPercent();
    }

    private void showPercent() {
        int usable = Math.max(0, getHeight() - dp(50));
        ViewGroup.LayoutParams params = fill.getLayoutParams();
        int height = Math.round(usable * percent / 100f);
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
