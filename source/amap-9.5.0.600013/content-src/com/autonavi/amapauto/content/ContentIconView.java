package com.autonavi.amapauto.content;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieListener;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.LottieTask;
import com.airbnb.lottie.RenderMode;
import com.airbnb.lottie.SimpleColorFilter;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.value.LottieValueCallback;

public final class ContentIconView extends View {
    private String iconKey = "settings";
    private int iconColor;
    private int level;
    private int batteryPercent = -1;
    private int themeMode = ContentState.THEME_LIGHT;
    private boolean locked = true;
    private boolean charging;
    private boolean available = true;
    private boolean active;
    private boolean animationVisible = true;
    private boolean attached;
    private boolean drawingAnimation;
    private String resourceName = "";
    private Drawable stableDrawable;
    private LottieDrawable animatedDrawable;
    private LottieTask<LottieComposition> loadingTask;
    private LottieListener<LottieComposition> loadedListener;
    private LottieListener<Throwable> failedListener;
    private int loadSequence;

    public ContentIconView(Context context) {
        super(context);
        setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
    }

    public void setIcon(String nextIconKey) {
        if (nextIconKey == null || nextIconKey.equals(iconKey)) {
            return;
        }
        boolean playbackTransition = ("play".equals(iconKey) || "pause".equals(iconKey))
                && ("play".equals(nextIconKey) || "pause".equals(nextIconKey));
        iconKey = nextIconKey;
        stopAnimation();
        refresh(playbackTransition);
    }

    public void setColors(int nextIconColor, int accentColor) {
        if (iconColor == nextIconColor && stableDrawable != null) {
            return;
        }
        iconColor = nextIconColor;
        refresh(false);
        if (animatedDrawable != null) {
            animatedDrawable.addValueCallback(new KeyPath("**"), LottieProperty.COLOR_FILTER,
                    new LottieValueCallback<ColorFilter>(new SimpleColorFilter(iconColor)));
        }
    }

    public void setLevel(int nextLevel) {
        nextLevel = Math.max(0, Math.min(3, nextLevel));
        if (level != nextLevel) {
            level = nextLevel;
            refresh(false);
        }
    }

    public void setBattery(int nextPercent, boolean nextCharging) {
        boolean transition = charging != nextCharging && nextCharging && batteryPercent >= 0;
        if (batteryPercent != nextPercent || charging != nextCharging) {
            batteryPercent = nextPercent;
            charging = nextCharging;
            stopAnimation();
            refresh(transition);
        }
    }

    public void setLocked(boolean nextLocked) {
        if (locked != nextLocked) {
            locked = nextLocked;
            stopAnimation();
            refresh("lock".equals(iconKey));
        }
    }

    public void setThemeMode(int nextThemeMode) {
        if (themeMode != nextThemeMode) {
            themeMode = nextThemeMode;
            refresh(false);
        }
    }

    public void setAvailable(boolean nextAvailable) {
        if (available != nextAvailable) {
            available = nextAvailable;
            stopAnimation();
            refresh(false);
        }
    }

    public void setActive(boolean nextActive) {
        if (active != nextActive) {
            active = nextActive;
            refresh("map".equals(iconKey) && nextActive);
        }
    }

    public void setAnimationVisible(boolean visible) {
        if (animationVisible == visible) {
            return;
        }
        animationVisible = visible;
        if (!visible) {
            stopAnimation();
        }
    }

    public void playAction() {
        startTransition();
    }

    private void refresh(boolean animate) {
        String nextResource = stableResourceName();
        if (!nextResource.equals(resourceName) || stableDrawable == null) {
            resourceName = nextResource;
            int resourceId = getResources().getIdentifier(resourceName, "drawable",
                    getContext().getPackageName());
            if (stableDrawable != null) {
                stableDrawable.setCallback(null);
            }
            stableDrawable = resourceId == 0 ? null
                    : getResources().getDrawable(resourceId, getContext().getTheme()).mutate();
            if (stableDrawable != null) {
                stableDrawable.setCallback(this);
            }
        }
        if (stableDrawable != null) {
            if (available && level > 0 && isSeatIcon()) {
                stableDrawable.clearColorFilter();
            } else {
                stableDrawable.setColorFilter(new SimpleColorFilter(iconColor));
            }
        }
        invalidate();
        if (animate) {
            startTransition();
        }
    }

    private boolean isSeatIcon() {
        return "ventilation".equals(iconKey) || "heating".equals(iconKey)
                || "massage".equals(iconKey);
    }

    private String stableResourceName() {
        if (isSeatIcon()) {
            String seatKind = "ventilation".equals(iconKey) ? "ventilate"
                    : "heating".equals(iconKey) ? "heat" : "massage";
            String seatLevel = available && level > 0 ? Integer.toString(level) : "off";
            return "content_oem_ico_skin_seat_" + seatKind + "_l_" + seatLevel
                    + (themeMode == ContentState.THEME_DARK ? "_night" : "_day");
        }
        if ("lock".equals(iconKey)) {
            return "content_oem_ico_lock_" + (available && !locked ? "open" : "close");
        }
        if ("battery".equals(iconKey)) {
            int bucket = Math.max(0, Math.min(5, (batteryPercent + 19) / 20));
            return "content_oem_ico_battery_" + (available && charging ? "charging" : bucket);
        }
        if ("play".equals(iconKey) || "pause".equals(iconKey) || "next".equals(iconKey)) {
            return "content_oem_ico_media_" + iconKey;
        }
        if ("source".equals(iconKey)) {
            return "content_oem_ico_media_music";
        }
        if ("climate".equals(iconKey)) {
            return "content_oem_ico_ac_ac";
        }
        if ("map".equals(iconKey)) {
            return "content_oem_ico_home_applist";
        }
        return "content_oem_ic_settings";
    }

    private String transitionAsset() {
        if ("lock".equals(iconKey)) {
            return locked ? "ico_lock_close_f.json" : "ico_lock_open_f.json";
        }
        if ("play".equals(iconKey) || "pause".equals(iconKey)) {
            return "ico_media_" + iconKey + "_02_f.json";
        }
        if ("next".equals(iconKey)) {
            return "ico_media_next.json";
        }
        if ("battery".equals(iconKey) && charging) {
            return "ico_battery_charging.json";
        }
        if ("map".equals(iconKey) && active) {
            return "ico_home_applist.json";
        }
        return null;
    }

    private boolean canAnimate() {
        return attached && animationVisible && available && isShown()
                && getWindowVisibility() == View.VISIBLE && hasWindowFocus();
    }

    private void startTransition() {
        final String asset = transitionAsset();
        if (asset == null || !canAnimate()) {
            return;
        }
        stopAnimation();
        final int sequence = loadSequence;
        loadedListener = new LottieListener<LottieComposition>() {
            @Override
            public void onResult(LottieComposition composition) {
                if (sequence != loadSequence || !canAnimate()) {
                    return;
                }
                for (String warning : composition.getWarnings()) {
                    if (!warning.startsWith("Animation contains merge paths.")) {
                        android.util.Log.w("ContentIconView", "Unsupported OEM animation: " + asset);
                        stopAnimation();
                        return;
                    }
                }
                if (animatedDrawable == null) {
                    animatedDrawable = new LottieDrawable();
                    animatedDrawable.setCallback(ContentIconView.this);
                    animatedDrawable.enableMergePathsForKitKatAndAbove(true);
                    animatedDrawable.setRenderMode(RenderMode.SOFTWARE);
                    animatedDrawable.setUseCompositionFrameRate(true);
                    animatedDrawable.setRepeatCount(0);
                    animatedDrawable.addAnimatorListener(new AnimatorListenerAdapter() {
                        @Override
                        public void onAnimationEnd(Animator animation) {
                            drawingAnimation = false;
                            invalidate();
                        }
                    });
                }
                animatedDrawable.setComposition(composition);
                animatedDrawable.addValueCallback(new KeyPath("**"), LottieProperty.COLOR_FILTER,
                        new LottieValueCallback<ColorFilter>(new SimpleColorFilter(iconColor)));
                drawingAnimation = true;
                animatedDrawable.playAnimation();
                invalidate();
            }
        };
        failedListener = new LottieListener<Throwable>() {
            @Override
            public void onResult(Throwable failure) {
                if (sequence == loadSequence) {
                    android.util.Log.w("ContentIconView", "OEM animation unavailable: " + asset, failure);
                    stopAnimation();
                }
            }
        };
        loadingTask = LottieCompositionFactory.fromAsset(getContext().getApplicationContext(),
                "content-oem/" + asset, "content-oem/" + asset);
        loadingTask.addListener(loadedListener).addFailureListener(failedListener);
    }

    private void stopAnimation() {
        loadSequence++;
        if (loadingTask != null) {
            loadingTask.removeListener(loadedListener);
            loadingTask.removeFailureListener(failedListener);
            loadingTask = null;
        }
        loadedListener = null;
        failedListener = null;
        if (animatedDrawable != null) {
            animatedDrawable.cancelAnimation();
        }
        drawingAnimation = false;
        invalidate();
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Drawable drawable = drawingAnimation ? animatedDrawable : stableDrawable;
        if (drawable != null) {
            int size = Math.min(getWidth(), getHeight());
            int left = (getWidth() - size) / 2;
            int top = (getHeight() - size) / 2;
            drawable.setBounds(left, top, left + size, top + size);
            drawable.draw(canvas);
        }
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == stableDrawable || drawable == animatedDrawable || super.verifyDrawable(drawable);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        attached = true;
        refresh(false);
    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (!hasFocus) {
            stopAnimation();
        }
    }

    @Override
    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        if (visibility != View.VISIBLE) {
            stopAnimation();
        }
    }

    @Override
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        if (visibility != View.VISIBLE) {
            stopAnimation();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        attached = false;
        stopAnimation();
        if (animatedDrawable != null) {
            animatedDrawable.removeAllAnimatorListeners();
            animatedDrawable.clearComposition();
            animatedDrawable.setCallback(null);
            animatedDrawable = null;
        }
        if (stableDrawable != null) {
            stableDrawable.setCallback(null);
        }
        super.onDetachedFromWindow();
    }
}
