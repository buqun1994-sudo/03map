package com.autonavi.amapauto.content;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public final class ContentRenderer implements ContentStore.Listener {
    private static final String CONTENT_FONT_ASSET = "content-fonts/Manrope[wght].ttf";
    private static final float TEXT_REFERENCE_PIXEL_SCALE = 1.4f;
    private static final TimeInterpolator HEAVY_INTERPOLATOR =
            new PathInterpolator(0.32f, 0.72f, 0.0f, 1.0f);
    private static final long PAGE_MOTION_DURATION_MS = 700L;
    private static final long THEME_MOTION_DURATION_MS = 700L;
    private static final long STATUS_MOTION_DURATION_MS = 320L;
    private static final long PRESS_DOWN_DURATION_MS = 200L;
    private static final long PRESS_UP_DURATION_MS = 240L;
    private static final long SELECTION_MOTION_DURATION_MS = 260L;
    private static final long POPUP_OPEN_DURATION_MS = 240L;
    private static final long POPUP_CLOSE_DURATION_MS = 200L;
    private static final String ROLE_BACKGROUND = "background";
    private static final String ROLE_SURFACE = "surface";
    private static final String ROLE_ELEVATED = "elevated";
    private static final String ROLE_SELECTED = "selected";
    private static final String ROLE_PRIMARY = "primary";
    private static final String ROLE_SECONDARY = "secondary";
    private static final String ROLE_MUTED = "muted";
    private static final String ROLE_ACCENT = "accent";
    private static final String ROLE_DIVIDER = "divider";
    private static final String ROLE_CARD = "card";
    private static final String ROLE_ARTWORK = "artwork";
    private static final String ROLE_MEDIA = "media";
    private static final String ROLE_DOCK_BASE = "dock_base";
    private static final String ROLE_DOCK_BUTTON = "dock_button";
    private static final String ROLE_SOURCE_BUTTON = "source_button";
    private static final String ROLE_PRESS_CONTAINER = "press_container";

    private final Context context;
    private final ViewGroup host;
    private final ContentStore store;
    private final Typeface contentTypeface;
    private final Map<String, TileBinding> tileBindings = new HashMap<>();
    private final Map<View, ValueAnimator> pressAnimators = new HashMap<>();
    private final List<View> pageViews = new ArrayList<>();
    private final List<View> controlCards = new ArrayList<>();
    private final List<ContentIconView> dockIconViews = new ArrayList<>();
    private final List<View> dockButtons = new ArrayList<>();
    private final HandlerClock clock = new HandlerClock();
    private final Handler artworkHandler = new Handler(Looper.getMainLooper());
    private final ExecutorService artworkExecutor = Executors.newSingleThreadExecutor();
    private Future<?> artworkTask;
    private Bitmap softenedArtwork;
    private String softenedArtworkKey = "";
    private String requestedArtworkKey = "";
    private String failedArtworkKey = "";
    private ImageView atmosphereBackground;
    private ImageView mediaArtworkView;
    private ContentIconView mediaArtworkFallback;
    private Bitmap displayedArtwork;
    private ContentTheme theme;
    private int displayedThemeMode;
    private ValueAnimator themeAnimator;
    private ValueAnimator pageSnapAnimator;
    private ValueAnimator controlSnapAnimator;
    private ValueAnimator topTransitionAnimator;
    private ValueAnimator popupAnimator;
    private int pageSnapTarget = -1;
    private int controlSnapTarget = -1;
    private FrameLayout panel;
    private LinearLayout verticalRoot;
    private FrameLayout topBar;
    private LinearLayout leftTopCluster;
    private LinearLayout rightTopCluster;
    private TextView temperatureText;
    private TextView timeText;
    private TextView chargingText;
    private TextView rangeText;
    private ContentIconView batteryIcon;
    private ContentPager pageScroller;
    private LinearLayout pageRow;
    private LinearLayout shortcutsRow;
    private LinearLayout shortcutOverflowRow;
    private LinearLayout shortcutLastRow;
    private FrameLayout shortcutLowerContainer;
    private final List<View> shortcutTiles = new ArrayList<>();
    private ContentPager controlScroller;
    private LinearLayout controlRow;
    private TextView mediaTitleText;
    private TextView mediaArtistText;
    private ContentIconView mediaPlayIcon;
    private View mediaPlayButton;
    private View mediaNextButton;
    private FrameLayout sourceButton;
    private ContentIconView sourceIcon;
    private ContentSystemSlider brightnessSlider;
    private ContentSystemSlider volumeSlider;
    private int lastChargeState = Integer.MIN_VALUE;
    private boolean lastDetailedStatus;
    private LinearLayout dockSlots;
    private View dockContainer;
    private HorizontalScrollView dockViewport;
    private ContentIconView lockDockIcon;
    private int panelWidth;
    private int pageWidth;
    private float dividerX = Float.NaN;
    private float expandedDividerX;
    private float mapWidth;
    private int lastDockSignature = Integer.MIN_VALUE;
    private long lastCommandSequence = -1L;
    private boolean built;
    private boolean activityActive = true;
    private PopupWindow activePopup;
    private final View.OnLayoutChangeListener hostLayoutListener = new View.OnLayoutChangeListener() {
        @Override
        public void onLayoutChange(View view, int left, int top, int right, int bottom,
                int oldLeft, int oldTop, int oldRight, int oldBottom) {
            if (built && !Float.isNaN(dividerX)) {
                applyDividerGeometry(dividerX, expandedDividerX, mapWidth);
            }
        }
    };

    public ContentRenderer(Context context, ViewGroup host, ContentStore store, int initialThemeMode) {
        this.context = context;
        this.host = host;
        this.store = store;
        contentTypeface = loadContentTypeface(context);
        theme = initialThemeMode == ContentState.THEME_DARK
                ? ContentTheme.dark() : ContentTheme.light();
        displayedThemeMode = initialThemeMode == ContentState.THEME_DARK
                ? ContentState.THEME_DARK : ContentState.THEME_LIGHT;
    }

    public void build() {
        if (built) {
            return;
        }
        built = true;
        panelWidth = initialPanelWidth();
        pageWidth = pageWidth();
        host.removeAllViews();
        host.setClipChildren(true);
        host.setBackgroundColor(Color.TRANSPARENT);
        host.addOnLayoutChangeListener(hostLayoutListener);

        panel = new FrameLayout(context);
        panel.setTag(ROLE_BACKGROUND);
        panel.setClipChildren(true);
        host.addView(panel, new FrameLayout.LayoutParams(panelWidth,
                ViewGroup.LayoutParams.MATCH_PARENT, Gravity.LEFT | Gravity.TOP));

        atmosphereBackground = new ImageView(context);
        atmosphereBackground.setScaleType(ImageView.ScaleType.CENTER_CROP);
        atmosphereBackground.setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
        atmosphereBackground.setVisibility(View.GONE);
        panel.addView(atmosphereBackground, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        verticalRoot = new LinearLayout(context);
        verticalRoot.setOrientation(LinearLayout.VERTICAL);
        verticalRoot.setClipChildren(false);
        panel.addView(verticalRoot, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        buildTopBar();
        buildPages();
        buildControls();
        buildDock();
        View boundary = new View(context);
        boundary.setTag(ROLE_DIVIDER);
        panel.addView(boundary, new FrameLayout.LayoutParams(dp(1),
                ViewGroup.LayoutParams.MATCH_PARENT, Gravity.RIGHT));
        applyThemeTree(panel);
        brightnessSlider.setTheme(theme);
        volumeSlider.setTheme(theme);
        updateIconVisibility();
        store.addListener(this);
        clock.start();
    }

    public void destroy() {
        built = false;
        clock.stop();
        dismissPopup();
        if (themeAnimator != null) {
            ValueAnimator previous = themeAnimator;
            themeAnimator = null;
            previous.cancel();
        }
        cancelPagerAnimation(false);
        cancelPagerAnimation(true);
        cancelInteractionAnimations();
        if (artworkTask != null) {
            artworkTask.cancel(true);
            artworkTask = null;
        }
        artworkExecutor.shutdownNow();
        artworkHandler.removeCallbacksAndMessages(null);
        atmosphereBackground.setImageDrawable(null);
        mediaArtworkView.setImageDrawable(null);
        if (softenedArtwork != null) {
            softenedArtwork.recycle();
            softenedArtwork = null;
        }
        store.removeListener(this);
        store.destroy();
        host.removeOnLayoutChangeListener(hostLayoutListener);
        host.removeAllViews();
    }

    public void pause() {
        if (!built || !activityActive) {
            return;
        }
        activityActive = false;
        clock.stop();
        dismissPopup();
        if (themeAnimator != null) {
            ValueAnimator previous = themeAnimator;
            themeAnimator = null;
            previous.cancel();
            applyTheme(store.snapshot().themeMode == ContentState.THEME_DARK
                    ? ContentTheme.dark() : ContentTheme.light());
        }
        cancelPagerAnimation(false);
        cancelPagerAnimation(true);
        cancelInteractionAnimations();
        if (artworkTask != null) {
            artworkTask.cancel(true);
            artworkTask = null;
        }
        requestedArtworkKey = "";
        atmosphereBackground.setVisibility(View.GONE);
        updateIconVisibility();
    }

    public void resume() {
        if (!built || activityActive) {
            return;
        }
        activityActive = true;
        brightnessSlider.refresh();
        volumeSlider.refresh();
        ContentState state = store.snapshot();
        alignPager(pageScroller, state.pageIndex);
        alignPager(controlScroller, state.controlIndex);
        renderArtwork(state);
        updateIconVisibility();
        clock.start();
    }

    private void buildTopBar() {
        topBar = new FrameLayout(context);
        topBar.setPadding(dp(8), dp(1), dp(8), dp(1));
        verticalRoot.addView(topBar, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 40));

        LinearLayout row = new LinearLayout(context);
        row.setGravity(Gravity.CENTER_VERTICAL);
        topBar.addView(row, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        leftTopCluster = new LinearLayout(context);
        leftTopCluster.setGravity(Gravity.CENTER_VERTICAL);
        row.addView(leftTopCluster, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));

        temperatureText = makeText(16.0f, Typeface.BOLD, ROLE_PRIMARY);
        temperatureText.setGravity(Gravity.CENTER_VERTICAL);
        temperatureText.setSingleLine(true);
        leftTopCluster.addView(temperatureText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT));

        timeText = makeText(17.0f, Typeface.BOLD, ROLE_PRIMARY);
        timeText.setGravity(Gravity.CENTER_VERTICAL);
        timeText.setSingleLine(true);
        timeText.setEllipsize(TextUtils.TruncateAt.END);
        topBar.addView(timeText, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT,
                Gravity.CENTER_HORIZONTAL | Gravity.CENTER_VERTICAL));

        chargingText = makeText(12.0f, Typeface.NORMAL, ROLE_ACCENT);
        chargingText.setLineSpacing(-dp(1), 1.0f);
        chargingText.setGravity(Gravity.CENTER_VERTICAL | Gravity.RIGHT);
        chargingText.setSingleLine(true);
        chargingText.setEllipsize(TextUtils.TruncateAt.END);
        chargingText.setVisibility(View.GONE);
        chargingText.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public void onLayoutChange(View view, int left, int top, int right, int bottom,
                    int oldLeft, int oldTop, int oldRight, int oldBottom) {
                if (right - left != oldRight - oldLeft) {
                    fitChargingStatusText();
                }
            }
        });
        rightTopCluster = new LinearLayout(context);
        rightTopCluster.setGravity(Gravity.CENTER_VERTICAL);
        row.addView(rightTopCluster, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT));

        rightTopCluster.addView(chargingText, new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT));

        rangeText = makeText(16.0f, Typeface.BOLD, ROLE_PRIMARY);
        rangeText.setGravity(Gravity.CENTER_VERTICAL | Gravity.RIGHT);
        rangeText.setSingleLine(true);
        rightTopCluster.addView(rangeText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT));
        batteryIcon = new ContentIconView(context);
        batteryIcon.setIcon("battery");
        LinearLayout.LayoutParams batteryParams = new LinearLayout.LayoutParams(dp(28), dp(28));
        batteryParams.leftMargin = dp(4);
        rightTopCluster.addView(batteryIcon, batteryParams);
        topBar.addOnLayoutChangeListener(new View.OnLayoutChangeListener() {
            @Override
            public void onLayoutChange(View view, int left, int top, int right, int bottom,
                    int oldLeft, int oldTop, int oldRight, int oldBottom) {
                if (right - left != oldRight - oldLeft) {
                    layoutTopBar();
                }
            }
        });
    }

    private void buildPages() {
        pageScroller = new ContentPager(false);
        pageScroller.setHorizontalScrollBarEnabled(false);
        pageScroller.setOverScrollMode(View.OVER_SCROLL_NEVER);
        pageScroller.setFillViewport(false);
        pageScroller.setClipChildren(true);
        pageScroller.setClipToPadding(true);
        LinearLayout.LayoutParams pageParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f);
        verticalRoot.addView(pageScroller, pageParams);

        pageRow = new LinearLayout(context);
        pageRow.setOrientation(LinearLayout.HORIZONTAL);
        pageScroller.addView(pageRow, new HorizontalScrollView.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT));

        View shortcutsPage = buildShortcutsPage();
        View lyricsPage = buildLyricsPage();
        pageViews.add(shortcutsPage);
        pageViews.add(lyricsPage);
        pageRow.addView(shortcutsPage, pageLayoutParams());
        pageRow.addView(lyricsPage, pageLayoutParams());
    }

    private View buildShortcutsPage() {
        ScrollView scrollView = new ScrollView(context);
        scrollView.setFillViewport(true);
        scrollView.setClipChildren(true);
        scrollView.setVerticalScrollBarEnabled(true);
        scrollView.setBackgroundColor(Color.TRANSPARENT);

        LinearLayout page = new LinearLayout(context);
        page.setOrientation(LinearLayout.VERTICAL);
        page.setClipChildren(false);
        page.setPadding(dp(23), dp(21), dp(23), dp(8));
        page.setBackgroundColor(Color.TRANSPARENT);

        shortcutsRow = new LinearLayout(context);
        shortcutsRow.setClipChildren(false);
        shortcutsRow.setOrientation(LinearLayout.HORIZONTAL);
        shortcutTiles.add(createShortcutTile(ContentRegistry.Shortcuts.SEAT_VENTILATION,
                "座椅通风", "ventilation"));
        shortcutTiles.add(createShortcutTile(ContentRegistry.Shortcuts.SEAT_HEATING,
                "座椅加热", "heating"));
        shortcutTiles.add(createShortcutTile(ContentRegistry.Shortcuts.SEAT_MASSAGE,
                "座椅按摩", "massage"));
        shortcutTiles.add(createShortcutTile(ContentRegistry.Shortcuts.LOCK,
                "车锁", "lock"));
        shortcutTiles.add(createShortcutTile(ContentRegistry.Shortcuts.SETTINGS,
                "设置", "settings"));
        page.addView(shortcutsRow, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, shortcutTileSize()));
        shortcutLowerContainer = new FrameLayout(context);
        shortcutLowerContainer.setClipChildren(false);
        LinearLayout.LayoutParams lowerParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, shortcutTileSize() * 2 + dp(23));
        lowerParams.topMargin = dp(23);
        page.addView(shortcutLowerContainer, lowerParams);
        shortcutOverflowRow = new LinearLayout(context);
        shortcutOverflowRow.setClipChildren(false);
        shortcutOverflowRow.setOrientation(LinearLayout.HORIZONTAL);
        shortcutLowerContainer.addView(shortcutOverflowRow, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, shortcutTileSize()));
        shortcutLastRow = new LinearLayout(context);
        shortcutLastRow.setClipChildren(false);
        shortcutLastRow.setOrientation(LinearLayout.HORIZONTAL);
        FrameLayout.LayoutParams lastParams = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, shortcutTileSize());
        lastParams.topMargin = shortcutTileSize() + dp(23);
        shortcutLowerContainer.addView(shortcutLastRow, lastParams);
        layoutShortcutTiles();

        LinearLayout sliderRow = new LinearLayout(context);
        sliderRow.setClipChildren(false);
        shortcutLowerContainer.addView(sliderRow, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, shortcutTileSize() * 2 + dp(23)));
        brightnessSlider = new ContentSystemSlider(context, store.systemPort(), contentTypeface,
                ContentSystemSlider.BRIGHTNESS);
        volumeSlider = new ContentSystemSlider(context, store.systemPort(), contentTypeface,
                ContentSystemSlider.VOLUME);
        LinearLayout.LayoutParams brightnessParams = new LinearLayout.LayoutParams(
                shortcutTileSize(), ViewGroup.LayoutParams.MATCH_PARENT);
        brightnessParams.leftMargin = 2 * (shortcutTileSize() + dp(23));
        sliderRow.addView(brightnessSlider, brightnessParams);
        LinearLayout.LayoutParams volumeParams = new LinearLayout.LayoutParams(
                shortcutTileSize(), ViewGroup.LayoutParams.MATCH_PARENT);
        volumeParams.leftMargin = dp(23);
        sliderRow.addView(volumeSlider, volumeParams);
        layoutSystemSliders();

        scrollView.addView(page, new ScrollView.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        return scrollView;
    }

    private View buildLyricsPage() {
        FrameLayout page = new FrameLayout(context);
        page.setClipChildren(true);
        page.setBackgroundColor(Color.TRANSPARENT);

        ScrollView scrollView = new ScrollView(context);
        scrollView.setFillViewport(true);
        LinearLayout content = new LinearLayout(context);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setGravity(Gravity.CENTER);
        content.setPadding(dp(12), dp(16), dp(12), dp(16));
        ContentIconView musicIcon = new ContentIconView(context);
        musicIcon.setIcon("source");
        content.addView(musicIcon, new LinearLayout.LayoutParams(dp(36), dp(36)));
        TextView heading = makeText(22.0f, Typeface.BOLD, ROLE_PRIMARY);
        heading.setText("暂无歌词");
        heading.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams headingParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        headingParams.topMargin = dp(14);
        content.addView(heading, headingParams);
        TextView placeholder = makeText(14.0f, Typeface.NORMAL, ROLE_SECONDARY);
        placeholder.setText("可在下方选择媒体来源并播放音乐");
        placeholder.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams placeholderParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        placeholderParams.topMargin = dp(10);
        content.addView(placeholder, placeholderParams);
        scrollView.addView(content, new ScrollView.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        page.addView(scrollView, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT,
                Gravity.CENTER));
        return page;
    }

    private void buildControls() {
        controlScroller = new ContentPager(true);
        controlScroller.setHorizontalScrollBarEnabled(false);
        controlScroller.setOverScrollMode(View.OVER_SCROLL_NEVER);
        controlScroller.setFillViewport(false);
        controlScroller.setClipChildren(false);
        controlScroller.setClipToPadding(false);
        LinearLayout.LayoutParams controlParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 120);
        controlParams.bottomMargin = 16;
        verticalRoot.addView(controlScroller, controlParams);

        controlRow = new LinearLayout(context);
        controlRow.setOrientation(LinearLayout.HORIZONTAL);
        controlRow.setClipChildren(false);
        controlScroller.addView(controlRow, new HorizontalScrollView.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT));

        View mediaCard = buildMediaCard();
        View climateCard = buildClimateCard();
        controlCards.add(mediaCard);
        controlCards.add(climateCard);
        controlRow.addView(mediaCard, cardLayoutParams());
        controlRow.addView(climateCard, cardLayoutParams());
    }

    private View buildMediaCard() {
        FrameLayout card = new FrameLayout(context);
        card.setClipChildren(false);
        LinearLayout content = new LinearLayout(context);
        content.setGravity(Gravity.CENTER_VERTICAL);
        content.setTag(ROLE_MEDIA);
        applySoftShadow(content);
        FrameLayout.LayoutParams contentParams = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
        contentParams.leftMargin = 20;
        contentParams.rightMargin = 20;
        card.addView(content, contentParams);

        FrameLayout artwork = new FrameLayout(context);
        artwork.setTag(ROLE_ARTWORK);
        artwork.setClipToOutline(true);
        mediaArtworkView = new ImageView(context);
        mediaArtworkView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        artwork.addView(mediaArtworkView, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        mediaArtworkFallback = new ContentIconView(context);
        mediaArtworkFallback.setIcon("source");
        artwork.addView(mediaArtworkFallback, new FrameLayout.LayoutParams(dp(32), dp(32), Gravity.CENTER));
        content.addView(artwork, new LinearLayout.LayoutParams(120,
                ViewGroup.LayoutParams.MATCH_PARENT));

        LinearLayout songInfo = new LinearLayout(context);
        songInfo.setOrientation(LinearLayout.VERTICAL);
        songInfo.setGravity(Gravity.CENTER_VERTICAL);
        songInfo.setPadding(dp(12), 0, 0, 0);
        mediaTitleText = makeText(16.0f, Typeface.NORMAL, ROLE_PRIMARY);
        mediaTitleText.setSingleLine(true);
        mediaTitleText.setEllipsize(TextUtils.TruncateAt.END);
        mediaArtistText = makeText(13.0f, Typeface.NORMAL, ROLE_SECONDARY);
        mediaArtistText.setSingleLine(true);
        mediaArtistText.setEllipsize(TextUtils.TruncateAt.END);
        songInfo.addView(mediaTitleText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(26)));
        songInfo.addView(mediaArtistText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(22)));
        content.addView(songInfo, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));
        mediaPlayButton = createControlButton("play", "播放");
        mediaPlayIcon = (ContentIconView) ((FrameLayout) mediaPlayButton).getChildAt(0);
        mediaPlayButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                store.toggleMediaPlayback();
            }
        });
        content.addView(mediaPlayButton, new LinearLayout.LayoutParams(dp(60),
                ViewGroup.LayoutParams.MATCH_PARENT));

        mediaNextButton = createControlButton("next", "下一首");
        mediaNextButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                ((ContentIconView) ((FrameLayout) mediaNextButton).getChildAt(0)).playAction();
                store.nextMediaTrack();
            }
        });
        content.addView(mediaNextButton, new LinearLayout.LayoutParams(dp(68),
                ViewGroup.LayoutParams.MATCH_PARENT));

        View separator = new View(context);
        separator.setTag(ROLE_DIVIDER);
        content.addView(separator, new LinearLayout.LayoutParams(dp(1), dp(40)));

        sourceButton = new FrameLayout(context);
        sourceButton.setTag(ROLE_SOURCE_BUTTON);
        FrameLayout sourceSurface = new FrameLayout(context);
        sourceSurface.setTag(ROLE_CARD);
        sourceSurface.setClipChildren(false);
        sourceIcon = new ContentIconView(context);
        sourceIcon.setIcon("source_local");
        sourceSurface.addView(sourceIcon, new FrameLayout.LayoutParams(36, 36, Gravity.CENTER));
        sourceButton.addView(sourceSurface, new FrameLayout.LayoutParams(72, 72, Gravity.CENTER));
        sourceButton.setContentDescription("媒体来源");
        sourceButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                showMediaSourcePopup();
            }
        });
        content.addView(sourceButton, new LinearLayout.LayoutParams(dp(64),
                ViewGroup.LayoutParams.MATCH_PARENT));
        bindPressEffect(mediaPlayButton);
        bindPressEffect(mediaNextButton);
        bindPressEffect(sourceButton);
        layoutMediaCard();
        return card;
    }

    private void layoutMediaCard() {
        if (mediaPlayButton == null || sourceButton == null) {
            return;
        }
        int contentWidth = Math.max(1, pageWidth - 40);
        LinearLayout content = (LinearLayout) mediaPlayButton.getParent();
        View artwork = content.getChildAt(0);
        LinearLayout songInfo = (LinearLayout) content.getChildAt(1);
        boolean compact = pageWidth < dp(350);
        songInfo.setPadding(compact ? 8 : 20, 0, 0, 0);
        mediaTitleText.setTextSize(TypedValue.COMPLEX_UNIT_SP,
                calibratedSp(compact ? 14.0f : 16.0f));
        int[] widths = contentWidth >= 520 ? new int[]{120, 88, 100, 97}
                : new int[]{Math.min(100, Math.round(contentWidth * 0.20f)),
                        Math.max(48, Math.round(contentWidth * 0.14f)),
                        Math.max(48, Math.round(contentWidth * 0.14f)),
                        Math.max(48, Math.round(contentWidth * 0.13f))};
        View[] views = new View[]{artwork, mediaPlayButton, mediaNextButton, sourceButton};
        for (int index = 0; index < views.length; index++) {
            LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) views[index].getLayoutParams();
            if (params.width != widths[index]) {
                params.width = widths[index];
                views[index].setLayoutParams(params);
            }
        }
    }

    private View buildClimateCard() {
        LinearLayout card = new LinearLayout(context);
        card.setOrientation(LinearLayout.HORIZONTAL);
        card.setGravity(Gravity.CENTER_VERTICAL);
        card.setPadding(dp(14), dp(10), dp(14), dp(10));
        card.setTag(ROLE_CARD);
        applySoftShadow(card);
        ContentIconView climateIcon = new ContentIconView(context);
        climateIcon.setIcon("climate");
        climateIcon.setAvailable(false);
        card.addView(climateIcon, new LinearLayout.LayoutParams(dp(52), dp(70)));

        LinearLayout textColumn = new LinearLayout(context);
        textColumn.setOrientation(LinearLayout.VERTICAL);
        textColumn.setGravity(Gravity.CENTER_VERTICAL);
        TextView title = makeText(17.0f, Typeface.BOLD, ROLE_PRIMARY);
        title.setText("空调控制");
        TextView detail = makeText(13.0f, Typeface.NORMAL, ROLE_SECONDARY);
        detail.setText("暂不可用");
        textColumn.addView(title, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(26)));
        textColumn.addView(detail, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(22)));
        card.addView(textColumn, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));

        TextView placeholder = makeText(12.0f, Typeface.BOLD, ROLE_MUTED);
        placeholder.setText("未连接");
        placeholder.setGravity(Gravity.CENTER);
        placeholder.setTag(ROLE_ELEVATED);
        card.addView(placeholder, new LinearLayout.LayoutParams(dp(50), dp(34)));
        bindPressEffect(card);
        card.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(context, "空调控制暂不可用", Toast.LENGTH_SHORT).show();
            }
        });
        return card;
    }

    private void buildDock() {
        dockViewport = new HorizontalScrollView(context);
        dockViewport.setFillViewport(true);
        dockViewport.setClipChildren(false);
        dockViewport.setClipToPadding(false);
        dockViewport.setHorizontalScrollBarEnabled(false);
        dockViewport.setOverScrollMode(View.OVER_SCROLL_NEVER);
        dockContainer = new LinearLayout(context);
        ((LinearLayout) dockContainer).setOrientation(LinearLayout.HORIZONTAL);
        ((LinearLayout) dockContainer).setGravity(Gravity.CENTER_VERTICAL);
        ((LinearLayout) dockContainer).setPadding(dp(3), dp(4), dp(3), dp(4));
        dockContainer.setTag(ROLE_DOCK_BASE);
        applySoftShadow(dockContainer);
        LinearLayout.LayoutParams dockParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 100);
        dockParams.leftMargin = 12;
        dockParams.rightMargin = 12;
        dockParams.bottomMargin = 12;
        verticalRoot.addView(dockViewport, dockParams);
        dockViewport.addView(dockContainer, new HorizontalScrollView.LayoutParams(
                Math.max(300, panelWidth - 24), ViewGroup.LayoutParams.MATCH_PARENT));

        LinearLayout lockButton = createDockButton("lock", "车锁");
        lockDockIcon = iconFromDockButton(lockButton);
        lockButton.setContentDescription("车锁");
        lockButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                ContentState state = store.snapshot();
                if (!state.lockKnown) {
                    Toast.makeText(context, "暂时无法读取车锁状态", Toast.LENGTH_SHORT).show();
                    return;
                }
                store.toggleLock();
            }
        });
        ((LinearLayout) dockContainer).addView(lockButton,
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));
        bindPressEffect(lockButton);

        View divider = new View(context);
        divider.setTag(ROLE_DIVIDER);
        LinearLayout.LayoutParams dividerParams = new LinearLayout.LayoutParams(dp(1), dp(48));
        dividerParams.leftMargin = dp(2);
        dividerParams.rightMargin = dp(2);
        ((LinearLayout) dockContainer).addView(divider, dividerParams);

        dockSlots = new LinearLayout(context);
        dockSlots.setOrientation(LinearLayout.HORIZONTAL);
        dockSlots.setGravity(Gravity.CENTER_VERTICAL);
        ((LinearLayout) dockContainer).addView(dockSlots,
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 5.0f));
        rebuildDock(store.snapshot());
    }

    private LinearLayout createShortcutTile(final String itemId, String label, String iconKey) {
        LinearLayout tile = new LinearLayout(context);
        tile.setOrientation(LinearLayout.VERTICAL);
        tile.setGravity(Gravity.CENTER);
        tile.setPadding(dp(2), dp(2), dp(2), dp(2));
        tile.setTag(ROLE_CARD);
        applySoftShadow(tile);
        tile.setLongClickable(false);
        ContentIconView icon = new ContentIconView(context);
        icon.setIcon(iconKey);
        tile.addView(icon, new LinearLayout.LayoutParams(dp(40), dp(40)));
        TextView labelText = makeText(14.0f, Typeface.NORMAL, ROLE_SECONDARY);
        labelText.setText(label);
        labelText.setGravity(Gravity.CENTER);
        labelText.setSingleLine(true);
        labelText.setEllipsize(TextUtils.TruncateAt.END);
        tile.addView(labelText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(28)));
        TileBinding binding = new TileBinding(tile, icon, labelText);
        tileBindings.put(itemId, binding);
        bindPressEffect(tile);
        tile.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (ContentRegistry.Shortcuts.LOCK.equals(itemId)) {
                    ContentState state = store.snapshot();
                    if (!state.lockKnown) {
                        Toast.makeText(context, "暂时无法读取车锁状态", Toast.LENGTH_SHORT).show();
                    } else {
                        store.toggleLock();
                    }
                } else if (ContentRegistry.Shortcuts.SETTINGS.equals(itemId)) {
                    Toast.makeText(context, "设置暂不可用", Toast.LENGTH_SHORT).show();
                } else if (!canControlSeat(store.snapshot(), itemId)) {
                    Toast.makeText(context, "座椅控制暂不可用", Toast.LENGTH_SHORT).show();
                } else {
                    store.cycleSeatLevel(itemId);
                }
            }
        });
        return tile;
    }

    private void rebuildDock(final ContentState state) {
        if (dockSlots == null) {
            return;
        }
        int signature = 17;
        for (String itemId : state.dockItems) {
            signature = signature * 31 + itemId.hashCode();
        }
        if (signature == lastDockSignature) {
            renderDockState(state);
            return;
        }
        lastDockSignature = signature;
        dockSlots.removeAllViews();
        dockButtons.clear();
        dockIconViews.clear();
        for (int slot = 0; slot < state.dockItems.length; slot++) {
            final String itemId = state.dockItems[slot];
            LinearLayout button = createDockButton(iconForItem(itemId), labelForItem(itemId));
            button.setContentDescription(labelForItem(itemId));
            button.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    onDockClick(itemId);
                }
            });
            button.setLongClickable(false);
            bindPressEffect(button);
            dockButtons.add(button);
            dockIconViews.add(iconFromDockButton(button));
            dockSlots.addView(button, new LinearLayout.LayoutParams(0,
                    ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));
        }
        renderDockState(state);
    }

    private LinearLayout createDockButton(String iconKey, String label) {
        LinearLayout button = new LinearLayout(context);
        button.setOrientation(LinearLayout.VERTICAL);
        button.setGravity(Gravity.CENTER);
        button.setTag(ROLE_DOCK_BUTTON);
        button.setPadding(dp(2), dp(2), dp(2), dp(2));
        FrameLayout pressSurface = new FrameLayout(context);
        pressSurface.setTag(ROLE_PRESS_CONTAINER);
        ContentIconView icon = new ContentIconView(context);
        icon.setIcon(iconKey);
        pressSurface.addView(icon, new FrameLayout.LayoutParams(36, 36, Gravity.CENTER));
        button.addView(pressSurface, new LinearLayout.LayoutParams(72, 72));
        button.setContentDescription(label);
        return button;
    }

    private ContentIconView iconFromDockButton(View button) {
        ViewGroup group = (ViewGroup) button;
        return (ContentIconView) ((ViewGroup) group.getChildAt(0)).getChildAt(0);
    }

    private void onDockClick(String itemId) {
        if (ContentRegistry.Pages.SHORTCUTS.equals(itemId)) {
            store.setPageIndex(0);
        } else if (ContentRegistry.Shortcuts.LOCK.equals(itemId)) {
            store.toggleLock();
        } else if (ContentRegistry.Shortcuts.SEAT_VENTILATION.equals(itemId)
                || ContentRegistry.Shortcuts.SEAT_HEATING.equals(itemId)
                || ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(itemId)) {
            if (!canControlSeat(store.snapshot(), itemId)) {
                Toast.makeText(context, "座椅控制暂不可用", Toast.LENGTH_SHORT).show();
                return;
            }
            store.cycleSeatLevel(itemId);
        } else if (ContentRegistry.Shortcuts.SETTINGS.equals(itemId)) {
            Toast.makeText(context, "设置暂不可用", Toast.LENGTH_SHORT).show();
        }
    }

    private void renderTopBar(ContentState state) {
        boolean detailedStatus = state.chargeState != ContentState.CHARGE_DEFAULT
                && state.vehicleDataAvailable;
        boolean modeChanged = lastChargeState != Integer.MIN_VALUE
                && detailedStatus != lastDetailedStatus;
        boolean statusChanged = lastChargeState != Integer.MIN_VALUE
                && (modeChanged || detailedStatus && state.chargeState != lastChargeState);
        String temperature = Float.isNaN(state.temperatureC)
                ? "--" : String.format(Locale.CHINA, "%.1f", state.temperatureC);
        temperatureText.setText(withMutedUnit(temperature, "°C"));
        CharSequence statusText = "";
        if (detailedStatus) {
            if (state.chargeState == ContentState.CHARGE_PLUGGED) {
                statusText = "已插枪·状态待确认";
            } else if (state.chargeState == ContentState.CHARGE_SCHEDULED) {
                statusText = "预约等待中";
            } else if (state.chargeState == ContentState.CHARGE_CHARGING) {
                boolean hasPower = !Float.isNaN(state.chargePowerKw)
                        && state.chargePowerKw >= 0.0f;
                boolean hasMinutes = state.chargeRemainingMinutes >= 0;
                SpannableStringBuilder status = new SpannableStringBuilder();
                if (hasPower) {
                    status.append("功率 ");
                    appendMutedUnit(status, String.format(Locale.CHINA, "%.1f", state.chargePowerKw), "kW");
                }
                if (hasPower && hasMinutes) {
                    status.append(" · ");
                }
                if (hasMinutes) {
                    status.append("剩余 ");
                    appendMutedUnit(status, String.valueOf(state.chargeRemainingMinutes), "分钟");
                }
                statusText = hasPower || hasMinutes ? status : "充电中";
            } else {
                statusText = "充电状态待确认";
            }
        }
        if (!TextUtils.equals(chargingText.getText(), statusText)) {
            chargingText.setTextScaleX(1.0f);
            chargingText.setText(statusText);
        }
        FrameLayout.LayoutParams timeParams = (FrameLayout.LayoutParams) timeText.getLayoutParams();
        int nextGravity = Gravity.CENTER_VERTICAL
                | (detailedStatus ? Gravity.LEFT : Gravity.CENTER_HORIZONTAL);
        if (timeParams.gravity != nextGravity) {
            timeParams.gravity = nextGravity;
            timeText.setLayoutParams(timeParams);
        }
        timeText.setGravity(Gravity.CENTER_VERTICAL);
        timeText.setText(formatTime(state, !detailedStatus));
        chargingText.setTextColor(state.chargeState == ContentState.CHARGE_UNKNOWN ? theme.mutedText
                : state.chargeState == ContentState.CHARGE_CHARGING ? theme.positive : theme.secondaryText);
        temperatureText.setVisibility(detailedStatus ? View.GONE : View.VISIBLE);
        chargingText.setVisibility(detailedStatus ? View.VISIBLE : View.GONE);
        rangeText.setText(withMutedUnit(state.rangeRaw >= 0
                ? String.valueOf(state.rangeRaw) : "--", "km"));
        layoutTopBar();
        if (statusChanged && activityActive) {
            animateTopStatus(detailedStatus, modeChanged);
        }
        lastChargeState = state.chargeState;
        lastDetailedStatus = detailedStatus;
        batteryIcon.setBattery(state.batteryPercent,
                state.chargeState == ContentState.CHARGE_CHARGING);
        batteryIcon.setColors(batteryColor(state.batteryPercent), theme.accent);
        batteryIcon.setAvailable(state.batteryPercent >= 0 && !state.vehiclePreview);
        batteryIcon.setContentDescription(state.batteryPercent < 0 ? "动力电池不可用"
                : "动力电池" + state.batteryPercent + "%"
                + (state.chargeState == ContentState.CHARGE_DEFAULT ? "，未插枪" : ""));
    }

    private CharSequence withMutedUnit(String value, String unit) {
        SpannableStringBuilder text = new SpannableStringBuilder(value);
        appendMutedUnit(text, "", unit);
        return text;
    }

    private void appendMutedUnit(SpannableStringBuilder text, String value, String unit) {
        text.append(value);
        int start = text.length();
        text.append(unit);
        int end = text.length();
        text.setSpan(new ForegroundColorSpan(theme.mutedText), start, end,
                Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        text.setSpan(new StyleSpan(Typeface.NORMAL), start, end,
                Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
    }

    private void layoutTopBar() {
        if (topBar == null || timeText == null || rangeText == null) {
            return;
        }
        int width = topBar.getWidth() > 0 ? topBar.getWidth() : panelWidth;
        int contentWidth = Math.max(0, width - topBar.getPaddingLeft()
                - topBar.getPaddingRight());
        int timeWidth = (int) Math.ceil(timeText.getPaint().measureText(
                timeText.getText().toString()));
        int rangeWidth = (int) Math.ceil(rangeText.getPaint().measureText(
                rangeText.getText().toString()));
        int batteryWidth = dp(32);
        boolean detailed = chargingText.getVisibility() == View.VISIBLE;
        int statusWidth = Math.max(0, contentWidth - timeWidth - rangeWidth
                - batteryWidth - dp(12));
        LinearLayout.LayoutParams statusParams =
                (LinearLayout.LayoutParams) chargingText.getLayoutParams();
        int nextStatusWidth = detailed ? Math.min(statusWidth, (int) Math.ceil(
                chargingText.getPaint().measureText(chargingText.getText().toString())) + dp(2)) : 0;
        if (statusParams.width != nextStatusWidth) {
            statusParams.width = nextStatusWidth;
            statusParams.rightMargin = detailed ? dp(4) : 0;
            chargingText.setLayoutParams(statusParams);
        }
        if (detailed) {
            timeText.setMaxWidth(Math.max(0, contentWidth - rangeWidth - batteryWidth
                    - nextStatusWidth - dp(12)));
            fitChargingStatusText();
        } else {
            int leftWidth = (int) Math.ceil(temperatureText.getPaint().measureText(
                    temperatureText.getText().toString()));
            int sideWidth = Math.max(leftWidth, rangeWidth + batteryWidth);
            timeText.setMaxWidth(Math.max(0, contentWidth - 2 * sideWidth - dp(8)));
        }
    }

    private void fitChargingStatusText() {
        if (chargingText == null || chargingText.getWidth() <= 0
                || chargingText.getVisibility() != View.VISIBLE) {
            return;
        }
        float existingScale = chargingText.getTextScaleX();
        float unscaledWidth = chargingText.getPaint().measureText(
                chargingText.getText().toString()) / Math.max(0.01f, existingScale);
        float availableWidth = chargingText.getWidth() - chargingText.getPaddingLeft()
                - chargingText.getPaddingRight() - dp(2);
        float nextScale = Math.min(1.0f, Math.max(0.01f, availableWidth)
                / Math.max(1.0f, unscaledWidth));
        if (Math.abs(nextScale - existingScale) > 0.005f) {
            chargingText.setTextScaleX(nextScale);
        }
    }

    private void renderMediaState(ContentState state) {
        mediaTitleText.setText(state.mediaTitle);
        mediaArtistText.setText(state.mediaArtist);
        sourceIcon.setIcon(ContentRegistry.mediaSourceIcon(state.mediaSource));
        sourceButton.setContentDescription("媒体来源：" + state.mediaSource);
        boolean displayedPlaying = state.mediaPlaybackTarget < 0
                ? state.mediaPlaying : state.mediaPlaybackTarget == 1;
        mediaPlayIcon.setIcon(displayedPlaying ? "pause" : "play");
        mediaPlayButton.setContentDescription((displayedPlaying ? "暂停" : "播放")
                + (state.mediaPlaybackTarget < 0 ? "" : "，正在确认…"));
        setButtonAvailability(mediaPlayButton, state.mediaPlaybackAvailable);
        setButtonAvailability(mediaNextButton, state.mediaNextAvailable);
        renderArtwork(state);
    }

    private void renderArtwork(ContentState state) {
        final Bitmap artwork = state.mediaArtwork;
        boolean valid = state.mediaDataAvailable && !state.mediaPreview
                && artwork != null && !artwork.isRecycled();
        Bitmap thumbnail = valid ? artwork : null;
        if (displayedArtwork != thumbnail) {
            displayedArtwork = thumbnail;
            mediaArtworkView.setImageBitmap(thumbnail);
        }
        mediaArtworkFallback.setVisibility(valid ? View.GONE : View.VISIBLE);
        if (!valid || !state.mediaPlaying || !activityActive) {
            requestedArtworkKey = "";
            if (artworkTask != null) {
                artworkTask.cancel(true);
                artworkTask = null;
            }
            atmosphereBackground.setVisibility(View.GONE);
            atmosphereBackground.setImageDrawable(null);
            return;
        }
        final String key = state.mediaSource + "\n" + state.mediaTitle + "\n"
                + state.mediaArtist + "\n" + artwork.getGenerationId();
        if (key.equals(softenedArtworkKey) && softenedArtwork != null) {
            requestedArtworkKey = "";
            if (artworkTask != null) {
                artworkTask.cancel(true);
                artworkTask = null;
            }
            atmosphereBackground.setImageBitmap(softenedArtwork);
            atmosphereBackground.setVisibility(View.VISIBLE);
            return;
        }
        if (key.equals(requestedArtworkKey) || key.equals(failedArtworkKey)) {
            return;
        }
        requestedArtworkKey = key;
        atmosphereBackground.setVisibility(View.GONE);
        atmosphereBackground.setImageDrawable(null);
        if (artworkTask != null) {
            artworkTask.cancel(true);
        }
        artworkTask = artworkExecutor.submit(new Runnable() {
            @Override
            public void run() {
                Bitmap result = null;
                try {
                    result = softenArtwork(artwork);
                } catch (RuntimeException failure) {
                    android.util.Log.w("ContentRenderer", "Media artwork unavailable", failure);
                }
                final Bitmap prepared = result;
                artworkHandler.post(new Runnable() {
                    @Override
                    public void run() {
                        if (!built || !key.equals(requestedArtworkKey)) {
                            if (prepared != null) {
                                prepared.recycle();
                            }
                            return;
                        }
                        artworkTask = null;
                        requestedArtworkKey = "";
                        if (prepared == null) {
                            failedArtworkKey = key;
                            return;
                        }
                        Bitmap previous = softenedArtwork;
                        softenedArtwork = prepared;
                        softenedArtworkKey = key;
                        renderArtwork(store.snapshot());
                        if (previous != null) {
                            previous.recycle();
                        }
                    }
                });
            }
        });
    }

    private static Bitmap softenArtwork(Bitmap artwork) {
        int size = 24;
        Bitmap sample = Bitmap.createScaledBitmap(artwork, size, size, true);
        int[] pixels = new int[size * size];
        sample.getPixels(pixels, 0, size, 0, 0, size, size);
        if (sample != artwork) {
            sample.recycle();
        }
        int[] blurred = new int[pixels.length];
        for (int row = 0; row < size; row++) {
            if (Thread.currentThread().isInterrupted()) {
                return null;
            }
            for (int column = 0; column < size; column++) {
                int alpha = 0;
                int red = 0;
                int green = 0;
                int blue = 0;
                int count = 0;
                for (int sampleRow = Math.max(0, row - 3);
                        sampleRow <= Math.min(size - 1, row + 3); sampleRow++) {
                    for (int sampleColumn = Math.max(0, column - 3);
                            sampleColumn <= Math.min(size - 1, column + 3); sampleColumn++) {
                        int color = pixels[sampleRow * size + sampleColumn];
                        alpha += Color.alpha(color);
                        red += Color.red(color);
                        green += Color.green(color);
                        blue += Color.blue(color);
                        count++;
                    }
                }
                blurred[row * size + column] = Color.argb(alpha / count,
                        red / count, green / count, blue / count);
            }
        }
        return Bitmap.createBitmap(blurred, size, size, Bitmap.Config.ARGB_8888);
    }

    private void renderShortcutState(ContentState state) {
        renderTile(state, ContentRegistry.Shortcuts.SEAT_VENTILATION);
        renderTile(state, ContentRegistry.Shortcuts.SEAT_HEATING);
        renderTile(state, ContentRegistry.Shortcuts.SEAT_MASSAGE);
        renderTile(state, ContentRegistry.Shortcuts.LOCK);
    }

    private void renderTile(ContentState state, String itemId) {
        TileBinding binding = tileBindings.get(itemId);
        if (binding == null) {
            return;
        }
        int level = levelForItem(state, itemId);
        binding.icon.setLevel(Math.max(0, level));
        binding.icon.setLocked(displayedLocked(state));
        binding.icon.setColors(iconColorForItem(state, itemId), theme.accent);
        binding.icon.setAvailable(isItemAvailable(state, itemId));
        boolean active = isItemActive(state, itemId);
        setSoftBackground(binding.tile, active ? theme.selected : theme.surface, dp(7));
        binding.labelText.setTextColor(active ? theme.text : theme.secondaryText);
        if (binding.lastActive != null && binding.lastActive.booleanValue() != active) {
            animateTileSelection(binding);
        }
        binding.lastActive = Boolean.valueOf(active);
        binding.tile.setContentDescription(binding.labelText.getText() + "，"
                + valueForItem(state, itemId));
    }

    private void renderDockState(ContentState state) {
        if (lockDockIcon != null) {
            lockDockIcon.setIcon("lock");
            lockDockIcon.setLocked(displayedLocked(state));
            lockDockIcon.setColors(state.lockKnown ? theme.accent : theme.mutedText, theme.accent);
            lockDockIcon.setAvailable(isItemAvailable(state, ContentRegistry.Shortcuts.LOCK));
            ((View) lockDockIcon.getParent()).setContentDescription(!state.lockKnown
                    ? "车锁状态不可用" : ContentRegistry.Shortcuts.LOCK.equals(state.pendingVehicleCommand)
                    ? "车锁正在确认…" : state.locked ? "车锁已锁定" : "车锁已解锁");
        }
        for (int childIndex = 0; childIndex < dockIconViews.size(); childIndex++) {
            String itemId = state.dockItems[childIndex];
            ContentIconView icon = dockIconViews.get(childIndex);
            icon.setIcon(iconForItem(itemId));
            icon.setLevel(Math.max(0, levelForItem(state, itemId)));
            icon.setLocked(displayedLocked(state));
            icon.setColors(iconColorForItem(state, itemId), theme.accent);
            icon.setAvailable(isItemAvailable(state, itemId));
            icon.setActive(isItemActive(state, itemId));
            dockButtons.get(childIndex).setContentDescription(labelForItem(itemId) + "，"
                    + (isItemAvailable(state, itemId) ? valueForItem(state, itemId) : "暂不可用"));
        }
    }

    private void setButtonAvailability(View button, boolean available) {
        button.setEnabled(available);
        button.setAlpha(1.0f);
        if (button instanceof FrameLayout) {
            View child = ((FrameLayout) button).getChildAt(0);
            if (child instanceof ContentIconView) {
                ((ContentIconView) child).setColors(available ? theme.text : theme.mutedText,
                        theme.accent);
                ((ContentIconView) child).setAvailable(available);
            }
        }
    }

    private void animateTopStatus(final boolean detailed, final boolean moveTime) {
        if (topTransitionAnimator != null) {
            topTransitionAnimator.cancel();
        }
        final TextView incoming = detailed ? chargingText : temperatureText;
        final TextView outgoing = detailed ? temperatureText : chargingText;
        outgoing.setAlpha(1.0f);
        outgoing.setTranslationX(0.0f);
        incoming.setAlpha(0.0f);
        incoming.setTranslationX(dp(8));
        if (moveTime) {
            timeText.setAlpha(0.0f);
            timeText.setTranslationX(detailed ? dp(12) : -dp(12));
        }
        final ValueAnimator animator = ValueAnimator.ofFloat(0.0f, 1.0f);
        topTransitionAnimator = animator;
        animator.setDuration(STATUS_MOTION_DURATION_MS);
        animator.setInterpolator(HEAVY_INTERPOLATOR);
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
                float progress = ((Float) animation.getAnimatedValue()).floatValue();
                incoming.setAlpha(progress);
                incoming.setTranslationX(dp(8) * (1.0f - progress));
                if (moveTime) {
                    timeText.setAlpha(progress);
                    timeText.setTranslationX((detailed ? dp(12) : -dp(12)) * (1.0f - progress));
                }
            }
        });
        animator.addListener(new AnimatorListenerAdapter() {
            @Override
            public void onAnimationEnd(Animator animation) {
                if (topTransitionAnimator == animator) {
                    topTransitionAnimator = null;
                }
            }
        });
        animator.start();
    }

    private String formatTime(ContentState state, boolean withWeekday) {
        long timeMillis = state.nowMillis == 0 ? System.currentTimeMillis() : state.nowMillis;
        String pattern = state.showSeconds ? "HH:mm:ss" : "HH:mm";
        String formatted = new SimpleDateFormat(pattern, Locale.CHINA).format(timeMillis);
        if (!withWeekday || !state.showWeekday) {
            return formatted;
        }
        Calendar calendar = Calendar.getInstance(Locale.CHINA);
        calendar.setTimeInMillis(timeMillis);
        String[] weekdays = new String[]{"", "日", "一", "二", "三", "四", "五", "六"};
        return formatted + "·星期" + weekdays[calendar.get(Calendar.DAY_OF_WEEK)];
    }

    private int batteryColor(int batteryPercent) {
        if (batteryPercent < 0) {
            return theme.mutedText;
        }
        if (batteryPercent < 20) {
            return theme.error;
        }
        if (batteryPercent <= 50) {
            return theme.warning;
        }
        return theme.positive;
    }

    private void renderPage(ContentState state) {
        pageScroller.setContentDescription("第 " + (state.pageIndex + 1) + " 页，共 " + pageViews.size() + " 页");
        snapPager(pageScroller, state.pageIndex, false);
    }

    private void renderControl(ContentState state) {
        snapPager(controlScroller, state.controlIndex, true);
    }

    private void snapPager(final ContentPager scroller, int index, final boolean control) {
        if (scroller == null || scroller.gestureActive || scroller.getWidth() == 0) {
            return;
        }
        final int targetX = index * pageWidth;
        ValueAnimator running = control ? controlSnapAnimator : pageSnapAnimator;
        if (running != null && (control ? controlSnapTarget : pageSnapTarget) == targetX) {
            return;
        }
        cancelPagerAnimation(control);
        if (Math.abs(scroller.getScrollX() - targetX) <= 1) {
            scroller.scrollTo(targetX, 0);
            return;
        }
        final ValueAnimator animator = ValueAnimator.ofInt(scroller.getScrollX(), targetX);
        animator.setDuration(PAGE_MOTION_DURATION_MS);
        animator.setInterpolator(HEAVY_INTERPOLATOR);
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
                scroller.scrollTo(((Integer) animation.getAnimatedValue()).intValue(), 0);
            }
        });
        animator.addListener(new AnimatorListenerAdapter() {
            private boolean cancelled;

            @Override
            public void onAnimationCancel(Animator animation) {
                cancelled = true;
            }

            @Override
            public void onAnimationEnd(Animator animation) {
                if ((control ? controlSnapAnimator : pageSnapAnimator) != animator) {
                    return;
                }
                if (!cancelled && built) {
                    scroller.scrollTo(targetX, 0);
                }
                if (control) {
                    controlSnapAnimator = null;
                    controlSnapTarget = -1;
                } else {
                    pageSnapAnimator = null;
                    pageSnapTarget = -1;
                }
                updateIconVisibility();
            }
        });
        if (control) {
            controlSnapAnimator = animator;
            controlSnapTarget = targetX;
        } else {
            pageSnapAnimator = animator;
            pageSnapTarget = targetX;
        }
        animator.start();
        updateIconVisibility();
    }

    private void cancelPagerAnimation(boolean control) {
        ValueAnimator animator = control ? controlSnapAnimator : pageSnapAnimator;
        if (animator != null) {
            animator.cancel();
        }
        if (control) {
            controlSnapAnimator = null;
            controlSnapTarget = -1;
        } else {
            pageSnapAnimator = null;
            pageSnapTarget = -1;
        }
    }

    private void cancelInteractionAnimations() {
        if (topTransitionAnimator != null) {
            topTransitionAnimator.cancel();
            topTransitionAnimator = null;
        }
        for (ValueAnimator animator : new ArrayList<>(pressAnimators.values())) {
            animator.cancel();
        }
        pressAnimators.clear();
        cancelViewAnimations(panel);
        for (TileBinding binding : tileBindings.values()) {
            if (binding.selectionAnimator != null) {
                binding.selectionAnimator.cancel();
                binding.selectionAnimator = null;
            }
            binding.tile.setAlpha(1.0f);
            binding.tile.setScaleX(1.0f);
            binding.tile.setScaleY(1.0f);
        }
        for (View view : new View[]{timeText, temperatureText, chargingText}) {
            if (view != null) {
                view.setAlpha(1.0f);
                view.setTranslationX(0.0f);
            }
        }
    }

    private void cancelViewAnimations(View view) {
        if (view == null) {
            return;
        }
        view.animate().cancel();
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int index = 0; index < group.getChildCount(); index++) {
                cancelViewAnimations(group.getChildAt(index));
            }
        }
    }

    @Override
    public void onContentStateChanged(ContentState state) {
        if (!built) {
            return;
        }
        if (state.commandSequence != lastCommandSequence) {
            lastCommandSequence = state.commandSequence;
            if (state.commandStatus == ContentState.COMMAND_FAILED
                    && !TextUtils.isEmpty(state.commandMessage)) {
                Toast.makeText(context, state.commandMessage, Toast.LENGTH_SHORT).show();
            }
        }
        if (state.themeMode != displayedThemeMode) {
            animateTheme(state.themeMode == ContentState.THEME_DARK
                    ? ContentTheme.dark() : ContentTheme.light(), state.themeMode);
        }
        updateIconVisibility();
        updateIconThemes(panel, state.themeMode);
        renderTopBar(state);
        renderMediaState(state);
        renderShortcutState(state);
        renderPage(state);
        renderControl(state);
        rebuildDock(state);
        updateIconVisibility();
    }

    private void animateTheme(final ContentTheme targetTheme, final int targetMode) {
        if (themeAnimator != null) {
            ValueAnimator previous = themeAnimator;
            themeAnimator = null;
            previous.cancel();
        }
        final ContentTheme startTheme = theme;
        displayedThemeMode = targetMode;
        themeAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
        themeAnimator.setDuration(THEME_MOTION_DURATION_MS);
        themeAnimator.setInterpolator(HEAVY_INTERPOLATOR);
        themeAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
                float fraction = ((Float) animation.getAnimatedValue()).floatValue();
                applyTheme(ContentTheme.interpolate(startTheme, targetTheme, fraction));
            }
        });
        themeAnimator.addListener(new Animator.AnimatorListener() {
            @Override
            public void onAnimationStart(Animator animation) {
            }

            @Override
            public void onAnimationEnd(Animator animation) {
                if (themeAnimator != animation || !built) {
                    return;
                }
                themeAnimator = null;
                applyTheme(targetTheme);
            }

            @Override
            public void onAnimationCancel(Animator animation) {
            }

            @Override
            public void onAnimationRepeat(Animator animation) {
            }
        });
        themeAnimator.start();
    }

    private void applyTheme(ContentTheme newTheme) {
        theme = newTheme;
        applyThemeTree(panel);
        brightnessSlider.setTheme(theme);
        volumeSlider.setTheme(theme);
        ContentState state = store.snapshot();
        renderTopBar(state);
        renderMediaState(state);
        renderShortcutState(state);
        renderDockState(state);
        renderPage(state);
    }

    private void applyThemeTree(View view) {
        if (view == null) {
            return;
        }
        applyThemeToView(view);
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup group = (ViewGroup) view;
        for (int childIndex = 0; childIndex < group.getChildCount(); childIndex++) {
            applyThemeTree(group.getChildAt(childIndex));
        }
    }

    private void applyThemeToView(View view) {
        Object tag = view.getTag();
        if (ROLE_BACKGROUND.equals(tag)) {
            view.setBackgroundColor(theme.background);
        } else if (ROLE_ARTWORK.equals(tag)) {
            view.setBackground(leftRoundColor(theme.surface, 12));
        } else if (ROLE_SURFACE.equals(tag)) {
            view.setBackground(roundColor(theme.surface, dp(7)));
        } else if (ROLE_ELEVATED.equals(tag)) {
            view.setBackground(roundColor(theme.elevated, dp(7)));
        } else if (ROLE_CARD.equals(tag)) {
            setSoftBackground(view, theme.surface, dp(7));
        } else if (ROLE_MEDIA.equals(tag) || ROLE_DOCK_BASE.equals(tag)) {
            setSoftBackground(view, theme.elevated, 12);
        } else if (ROLE_PRESS_CONTAINER.equals(tag)) {
            view.setBackground(null);
        } else if (ROLE_SELECTED.equals(tag)) {
            view.setBackground(roundColor(theme.selected, dp(7)));
        } else if (ROLE_DIVIDER.equals(tag)) {
            view.setBackgroundColor(theme.divider);
        }
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            if (ROLE_SECONDARY.equals(tag)) {
                textView.setTextColor(theme.secondaryText);
            } else if (ROLE_MUTED.equals(tag)) {
                textView.setTextColor(theme.mutedText);
            } else if (ROLE_ACCENT.equals(tag)) {
                textView.setTextColor(theme.accent);
            } else {
                textView.setTextColor(theme.text);
            }
        } else if (view instanceof ContentIconView) {
            ContentIconView iconView = (ContentIconView) view;
            iconView.setColors(theme.secondaryText, theme.accent);
        }
        if (view == atmosphereBackground) {
            view.setAlpha(Color.red(theme.background) < 100 ? 0.20f : 0.10f);
        }
    }

    public void updateDivider(float nextDividerX, float nextExpandedDividerX, float nextMapWidth) {
        if (!built) {
            return;
        }
        dividerX = nextDividerX;
        expandedDividerX = nextExpandedDividerX;
        mapWidth = nextMapWidth;
        applyDividerGeometry(nextDividerX, nextExpandedDividerX, nextMapWidth);
    }

    private void applyDividerGeometry(float nextDividerX, float nextExpandedDividerX,
            float nextMapWidth) {
        int widthLimit = screenWidth();
        int targetWidth = Math.max(dp(1), Math.min(widthLimit, Math.round(nextDividerX)));
        updateHostWidth(targetWidth);
        updatePanelWidth(targetWidth);
        if (host.getHeight() > 0) {
            host.setClipBounds(new Rect(0, 0, targetWidth, host.getHeight()));
        }
    }

    private void updatePanelWidth(int targetWidth) {
        if (panel == null || panelWidth == Math.max(dp(1), targetWidth)) {
            return;
        }
        cancelPagerAnimation(false);
        cancelPagerAnimation(true);
        panelWidth = Math.max(dp(1), targetWidth);
        ViewGroup.LayoutParams panelParams = panel.getLayoutParams();
        if (panelParams != null && panelParams.width != panelWidth) {
            panelParams.width = panelWidth;
            panel.setLayoutParams(panelParams);
        }
        pageWidth = pageWidth();
        for (View pageView : pageViews) {
            ViewGroup.LayoutParams params = pageView.getLayoutParams();
            if (params != null && params.width != pageWidth) {
                params.width = pageWidth;
                pageView.setLayoutParams(params);
            }
        }
        for (View controlCard : controlCards) {
            ViewGroup.LayoutParams params = controlCard.getLayoutParams();
            if (params != null && params.width != pageWidth) {
                params.width = pageWidth;
                controlCard.setLayoutParams(params);
            }
        }
        layoutShortcutTiles();
        layoutMediaCard();
        layoutTopBar();
        layoutSystemSliders();
        ViewGroup.LayoutParams dockParams = dockContainer.getLayoutParams();
        dockParams.width = Math.max(300, panelWidth - 24);
        dockContainer.setLayoutParams(dockParams);
        final ContentState state = store.snapshot();
        alignPager(pageScroller, state.pageIndex);
        alignPager(controlScroller, state.controlIndex);
        updateIconVisibility();
    }

    private void alignPager(final ContentPager scroller, final int index) {
        if (scroller == null) {
            return;
        }
        scroller.post(new Runnable() {
            @Override
            public void run() {
                if (built && !scroller.gestureActive) {
                    ContentState state = store.snapshot();
                    int currentIndex = scroller == controlScroller ? state.controlIndex : state.pageIndex;
                    scroller.scrollTo(currentIndex * pageWidth, 0);
                    updateIconVisibility();
                }
            }
        });
    }

    private void updateHostWidth(int targetWidth) {
        ViewGroup.LayoutParams hostParams = host.getLayoutParams();
        if (hostParams != null && hostParams.width != targetWidth) {
            hostParams.width = targetWidth;
            host.setLayoutParams(hostParams);
        }
    }

    private int initialPanelWidth() {
        return Math.max(dp(280), Math.round(screenWidth() / 3.0f));
    }

    private int pageWidth() {
        return Math.max(dp(1), panelWidth);
    }

    private LinearLayout.LayoutParams pageLayoutParams() {
        return new LinearLayout.LayoutParams(pageWidth, ViewGroup.LayoutParams.MATCH_PARENT);
    }

    private LinearLayout.LayoutParams cardLayoutParams() {
        return new LinearLayout.LayoutParams(pageWidth, ViewGroup.LayoutParams.MATCH_PARENT);
    }

    private int shortcutTileSize() {
        int columns = shortcutColumns();
        return Math.max(dp(64),
                (pageWidth - dp(46) - dp(23) * (columns - 1)) / columns);
    }

    private int shortcutColumns() {
        return pageWidth >= dp(371) ? 4 : pageWidth >= dp(284) ? 3 : 2;
    }

    private LinearLayout.LayoutParams gridTileParams(boolean last) {
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                shortcutTileSize(), shortcutTileSize());
        params.rightMargin = last ? 0 : dp(23);
        return params;
    }

    private void layoutShortcutTiles() {
        int columns = shortcutColumns();
        shortcutsRow.removeAllViews();
        shortcutOverflowRow.removeAllViews();
        shortcutLastRow.removeAllViews();
        for (int index = 0; index < shortcutTiles.size(); index++) {
            LinearLayout row = index < columns ? shortcutsRow
                    : index < 2 * columns ? shortcutOverflowRow : shortcutLastRow;
            int indexInRow = index % columns;
            row.addView(shortcutTiles.get(index), gridTileParams(indexInRow == columns - 1
                    || index == shortcutTiles.size() - 1));
        }
        ViewGroup.LayoutParams rowParams = shortcutsRow.getLayoutParams();
        rowParams.height = shortcutTileSize();
        shortcutsRow.setLayoutParams(rowParams);
        FrameLayout.LayoutParams overflowParams =
                (FrameLayout.LayoutParams) shortcutOverflowRow.getLayoutParams();
        overflowParams.height = shortcutTileSize();
        shortcutOverflowRow.setLayoutParams(overflowParams);
        FrameLayout.LayoutParams lastParams =
                (FrameLayout.LayoutParams) shortcutLastRow.getLayoutParams();
        lastParams.height = shortcutTileSize();
        lastParams.topMargin = shortcutTileSize() + dp(23);
        shortcutLastRow.setLayoutParams(lastParams);
        shortcutLastRow.setVisibility(shortcutLastRow.getChildCount() == 0
                ? View.GONE : View.VISIBLE);
    }

    private void layoutSystemSliders() {
        if (brightnessSlider == null || volumeSlider == null) return;
        int width = shortcutTileSize();
        int left = shortcutColumns() == 4 ? 2 * (width + dp(23)) : 0;
        LinearLayout.LayoutParams brightness =
                (LinearLayout.LayoutParams) brightnessSlider.getLayoutParams();
        brightness.width = width;
        brightness.leftMargin = left;
        brightnessSlider.setLayoutParams(brightness);
        LinearLayout.LayoutParams volume =
                (LinearLayout.LayoutParams) volumeSlider.getLayoutParams();
        volume.width = width;
        volume.leftMargin = dp(23);
        volumeSlider.setLayoutParams(volume);
        View row = (View) brightnessSlider.getParent();
        FrameLayout.LayoutParams params = (FrameLayout.LayoutParams) row.getLayoutParams();
        params.height = width * 2 + dp(23);
        params.topMargin = shortcutColumns() == 4 ? 0
                : shortcutColumns() == 3 ? width + dp(23) : 2 * (width + dp(23));
        row.setLayoutParams(params);
        LinearLayout.LayoutParams containerParams =
                (LinearLayout.LayoutParams) shortcutLowerContainer.getLayoutParams();
        containerParams.height = params.topMargin + params.height;
        shortcutLowerContainer.setLayoutParams(containerParams);
    }

    private static Typeface loadContentTypeface(Context context) {
        try {
            return Typeface.createFromAsset(context.getAssets(), CONTENT_FONT_ASSET);
        } catch (RuntimeException exception) {
            return Typeface.create("sans-serif", Typeface.NORMAL);
        }
    }

    private TextView makeText(float textSize, int typefaceStyle, String role) {
        TextView textView = new TextView(context);
        textView.setTextSize(TypedValue.COMPLEX_UNIT_SP, calibratedSp(textSize));
        textView.setTypeface(Typeface.create(contentTypeface, typefaceStyle));
        textView.setIncludeFontPadding(false);
        textView.setTag(role);
        return textView;
    }

    private float calibratedSp(float designSize) {
        int densityDpi = context.getResources().getDisplayMetrics().densityDpi;
        if (densityDpi <= 0) {
            densityDpi = 160;
        }
        return designSize * TEXT_REFERENCE_PIXEL_SCALE * 160.0f / densityDpi;
    }

    private FrameLayout createControlButton(String iconKey, String description) {
        FrameLayout button = new FrameLayout(context);
        ContentIconView icon = new ContentIconView(context);
        icon.setIcon(iconKey);
        button.addView(icon, new FrameLayout.LayoutParams(48, 48, Gravity.CENTER));
        button.setContentDescription(description);
        return button;
    }

    private void bindPressEffect(final View view) {
        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View touchedView, MotionEvent event) {
                if (!touchedView.isEnabled()) {
                    return false;
                }
                if (event.getActionMasked() == MotionEvent.ACTION_DOWN) {
                    setPressBackground(touchedView, true);
                    animatePress(touchedView, 0.96f, PRESS_DOWN_DURATION_MS);
                } else if (event.getActionMasked() == MotionEvent.ACTION_UP
                        || event.getActionMasked() == MotionEvent.ACTION_CANCEL) {
                    setPressBackground(touchedView, false);
                    animatePress(touchedView, 1.0f, PRESS_UP_DURATION_MS);
                }
                return false;
            }
        });
    }

    private void setPressBackground(View view, boolean pressed) {
        Object tag = view.getTag();
        if (!ROLE_DOCK_BUTTON.equals(tag) && !ROLE_SOURCE_BUTTON.equals(tag)) {
            return;
        }
        View target = view;
        if (view instanceof ViewGroup && ((ViewGroup) view).getChildCount() > 0) {
            target = ((ViewGroup) view).getChildAt(0);
        }
        if (pressed) {
            target.setBackground(roundColor(theme.surface, 36));
        } else if (ROLE_SOURCE_BUTTON.equals(tag)
                && !ROLE_PRESS_CONTAINER.equals(target.getTag())) {
            setSoftBackground(target, theme.surface, dp(7));
        } else {
            target.setBackground(null);
        }
    }

    private void animatePress(final View view, float targetScale, long duration) {
        ValueAnimator running = pressAnimators.remove(view);
        if (running != null) {
            running.cancel();
        }
        final ValueAnimator animator = ValueAnimator.ofFloat(view.getScaleX(), targetScale);
        pressAnimators.put(view, animator);
        animator.setDuration(duration);
        animator.setInterpolator(HEAVY_INTERPOLATOR);
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
                float scale = ((Float) animation.getAnimatedValue()).floatValue();
                view.setScaleX(scale);
                view.setScaleY(scale);
            }
        });
        animator.addListener(new AnimatorListenerAdapter() {
            @Override
            public void onAnimationEnd(Animator animation) {
                if (pressAnimators.get(view) == animator) {
                    pressAnimators.remove(view);
                }
            }
        });
        animator.start();
    }

    private void animateTileSelection(final TileBinding binding) {
        float startAlpha = binding.selectionAnimator == null ? 0.82f : binding.tile.getAlpha();
        if (binding.selectionAnimator != null) {
            binding.selectionAnimator.cancel();
        }
        final ValueAnimator animator = ValueAnimator.ofFloat(startAlpha, 1.0f);
        binding.selectionAnimator = animator;
        animator.setDuration(SELECTION_MOTION_DURATION_MS);
        animator.setInterpolator(HEAVY_INTERPOLATOR);
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
                binding.tile.setAlpha(((Float) animation.getAnimatedValue()).floatValue());
            }
        });
        animator.addListener(new AnimatorListenerAdapter() {
            @Override
            public void onAnimationEnd(Animator animation) {
                if (binding.selectionAnimator == animator) {
                    binding.selectionAnimator = null;
                }
            }
        });
        animator.start();
    }

    private GradientDrawable roundColor(int color, int radius) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(color);
        drawable.setCornerRadius(radius);
        return drawable;
    }

    private GradientDrawable leftRoundColor(int color, int radius) {
        GradientDrawable drawable = roundColor(color, radius);
        drawable.setCornerRadii(new float[]{radius, radius, 0, 0, 0, 0,
                radius, radius});
        return drawable;
    }

    private void setSoftBackground(View view, int color, int radius) {
        Drawable existing = view.getBackground();
        if (existing instanceof DownwardShadowDrawable
                && ((DownwardShadowDrawable) existing).radius == radius) {
            ((DownwardShadowDrawable) existing).setColor(color);
        } else {
            view.setBackground(new DownwardShadowDrawable(color, radius));
        }
    }

    private void applySoftShadow(View view) {
        // Window-light elevation can point left on the car display.
        view.setElevation(0);
        view.setTranslationZ(0);
    }

    static final class DownwardShadowDrawable extends GradientDrawable {
        private final int radius;
        private Bitmap shadow;
        private int cachedWidth;
        private int cachedHeight;
        private static final int MARGIN = 10;

        DownwardShadowDrawable(int color, int radius) {
            this.radius = radius;
            setColor(color);
            setCornerRadius(radius);
        }

        @Override public void draw(Canvas canvas) {
            Rect bounds = getBounds();
            int width = bounds.width();
            int height = bounds.height();
            if (width <= 0 || height <= 0) return;
            if (shadow == null || cachedWidth != width || cachedHeight != height) {
                if (shadow != null) shadow.recycle();
                cachedWidth = width;
                cachedHeight = height;
                shadow = Bitmap.createBitmap(width + 2 * MARGIN, height + 2 * MARGIN,
                        Bitmap.Config.ARGB_8888);
                Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
                paint.setColor(Color.argb(28, 0, 0, 0));
                // Software bitmap makes the blur deterministic on hardware View canvases too.
                paint.setShadowLayer(3f, 0f, 3f, Color.argb(28, 0, 0, 0));
                new Canvas(shadow).drawRoundRect(new RectF(MARGIN, MARGIN,
                        MARGIN + width, MARGIN + height), radius, radius, paint);
            }
            canvas.drawBitmap(shadow, bounds.left - MARGIN, bounds.top - MARGIN, null);
            super.draw(canvas);
        }
    }

    private boolean isItemAvailable(ContentState state, String itemId) {
        if (ContentRegistry.Pages.SHORTCUTS.equals(itemId)) {
            return true;
        }
        if (ContentRegistry.Shortcuts.SETTINGS.equals(itemId)) {
            return false;
        }
        if (ContentRegistry.Shortcuts.LOCK.equals(itemId)) {
            return state.lockKnown && state.vehicleDataAvailable && !state.vehiclePreview;
        }
        return state.vehicleDataAvailable && !state.vehiclePreview && canControlSeat(state, itemId);
    }

    private void updateIconThemes(View view, int mode) {
        if (view instanceof ContentIconView) {
            ((ContentIconView) view).setThemeMode(mode);
        } else if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int childIndex = 0; childIndex < group.getChildCount(); childIndex++) {
                updateIconThemes(group.getChildAt(childIndex), mode);
            }
        }
    }

    private void updateIconVisibility() {
        if (!built) {
            return;
        }
        ContentState state = store.snapshot();
        boolean expanded = activityActive && (Float.isNaN(dividerX) || mapWidth > dp(1));
        setIconVisibility(topBar, expanded);
        setIconVisibility(dockContainer, expanded);
        for (int index = 0; index < pageViews.size(); index++) {
            View page = pageViews.get(index);
            boolean visible = index == state.pageIndex && !pageScroller.gestureActive
                    && pageSnapAnimator == null && pageScroller.getScrollX() == index * pageWidth;
            page.setImportantForAccessibility(visible ? View.IMPORTANT_FOR_ACCESSIBILITY_AUTO
                    : View.IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS);
            setIconVisibility(page, expanded && visible);
        }
        for (int index = 0; index < controlCards.size(); index++) {
            View card = controlCards.get(index);
            boolean visible = index == state.controlIndex && !controlScroller.gestureActive
                    && controlSnapAnimator == null && controlScroller.getScrollX() == index * pageWidth;
            card.setImportantForAccessibility(visible ? View.IMPORTANT_FOR_ACCESSIBILITY_AUTO
                    : View.IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS);
            setIconVisibility(card, expanded && visible);
        }
    }

    private void setIconVisibility(View view, boolean visible) {
        if (view instanceof ContentIconView) {
            ((ContentIconView) view).setAnimationVisible(visible);
        } else if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int childIndex = 0; childIndex < group.getChildCount(); childIndex++) {
                setIconVisibility(group.getChildAt(childIndex), visible);
            }
        }
    }

    private int levelForItem(ContentState state, String itemId) {
        if (itemId.equals(state.pendingVehicleCommand)
                && !ContentRegistry.Shortcuts.LOCK.equals(itemId)) {
            return state.pendingSeatLevel;
        }
        if (ContentRegistry.Shortcuts.SEAT_VENTILATION.equals(itemId)) {
            return state.ventilationLevel;
        }
        if (ContentRegistry.Shortcuts.SEAT_HEATING.equals(itemId)) {
            return state.heatingLevel;
        }
        if (ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(itemId)) {
            return state.massageLevel;
        }
        if (ContentRegistry.Shortcuts.LOCK.equals(itemId)) {
            return displayedLocked(state) ? 1 : 0;
        }
        return 0;
    }

    private boolean canControlSeat(ContentState state, String itemId) {
        return ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(itemId)
                ? state.massageSwitchKnown : levelForItem(state, itemId) >= 0;
    }

    private boolean displayedLocked(ContentState state) {
        return ContentRegistry.Shortcuts.LOCK.equals(state.pendingVehicleCommand)
                ? state.pendingLocked : state.locked;
    }

    private String valueForItem(ContentState state, String itemId) {
        if (ContentRegistry.Pages.SHORTCUTS.equals(itemId)) {
            return state.pageIndex == 0 ? "已选中" : "切换到快捷功能";
        }
        if (itemId.equals(state.pendingVehicleCommand)) {
            return "正在确认…";
        }
        if (ContentRegistry.Shortcuts.LOCK.equals(itemId)) {
            return state.lockKnown ? (state.locked ? "已闭锁" : "已解锁") : "不可用";
        }
        int level = levelForItem(state, itemId);
        if (ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(itemId)) {
            if (!state.massageSwitchKnown) {
                return "不可用";
            }
            return !state.massageActive ? "关闭" : level < 0 ? "已开启·档位未知" : level + "档";
        }
        return level < 0 ? "不可用" : level == 0 ? "关闭" : level + "档";
    }

    private boolean isItemActive(ContentState state, String itemId) {
        if (ContentRegistry.Pages.SHORTCUTS.equals(itemId)) {
            return state.pageIndex == 0;
        }
        if (!isItemAvailable(state, itemId)) {
            return false;
        }
        if (ContentRegistry.Shortcuts.LOCK.equals(itemId)) {
            return state.lockKnown && displayedLocked(state);
        }
        if (ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(itemId)) {
            return state.massageSwitchKnown && levelForItem(state, itemId) > 0;
        }
        return levelForItem(state, itemId) > 0;
    }

    private int iconColorForItem(ContentState state, String itemId) {
        if (ContentRegistry.Shortcuts.LOCK.equals(itemId) && !state.lockKnown) {
            return theme.mutedText;
        }
        return isItemActive(state, itemId)
                ? ContentRegistry.Shortcuts.LOCK.equals(itemId) ? theme.accent : theme.text
                : theme.secondaryText;
    }

    private String iconForItem(String itemId) {
        if (ContentRegistry.Pages.SHORTCUTS.equals(itemId)) {
            return "map";
        }
        if (ContentRegistry.Shortcuts.SEAT_VENTILATION.equals(itemId)) {
            return "ventilation";
        }
        if (ContentRegistry.Shortcuts.SEAT_HEATING.equals(itemId)) {
            return "heating";
        }
        if (ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(itemId)) {
            return "massage";
        }
        if (ContentRegistry.Shortcuts.LOCK.equals(itemId)) {
            return "lock";
        }
        return "settings";
    }

    private String labelForItem(String itemId) {
        if (ContentRegistry.Pages.SHORTCUTS.equals(itemId)) {
            return "快捷";
        }
        if (ContentRegistry.Shortcuts.SEAT_VENTILATION.equals(itemId)) {
            return "通风";
        }
        if (ContentRegistry.Shortcuts.SEAT_HEATING.equals(itemId)) {
            return "加热";
        }
        if (ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(itemId)) {
            return "按摩";
        }
        if (ContentRegistry.Shortcuts.LOCK.equals(itemId)) {
            return "车锁";
        }
        return "设置";
    }

    private int dp(float value) {
        return Math.round(value * context.getResources().getDisplayMetrics().density);
    }

    private int screenWidth() {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    private int screenHeight() {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    private void showMediaSourcePopup() {
        LinearLayout menu = popupMenu();
        ContentState state = store.snapshot();
        for (final String source : ContentRegistry.mediaSources()) {
            if (source.equals(state.mediaSource)) {
                continue;
            }
            FrameLayout item = new FrameLayout(context);
            item.setBackground(null);
            item.setTag(ROLE_SOURCE_BUTTON);
            FrameLayout iconSurface = new FrameLayout(context);
            iconSurface.setTag(ROLE_PRESS_CONTAINER);
            ContentIconView icon = new ContentIconView(context);
            icon.setIcon(ContentRegistry.mediaSourceIcon(source));
            icon.setColors(theme.text, theme.accent);
            iconSurface.addView(icon, new FrameLayout.LayoutParams(dp(36), dp(36), Gravity.CENTER));
            item.addView(iconSurface, new FrameLayout.LayoutParams(dp(72), dp(72),
                    Gravity.TOP | Gravity.CENTER_HORIZONTAL));
            PopupLabelView label = new PopupLabelView(context, source);
            FrameLayout.LayoutParams labelParams = new FrameLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, dp(24), Gravity.BOTTOM);
            item.addView(label, labelParams);
            item.setContentDescription("切换到" + source);
            bindPressEffect(item);
            item.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    store.selectMediaSource(source);
                    closePopup(true);
                }
            });
            menu.addView(item, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, dp(96)));
        }
        showPopup(menu, dp(128), dp(96) * menu.getChildCount() + dp(8));
    }

    private LinearLayout popupMenu() {
        LinearLayout menu = new LinearLayout(context);
        menu.setOrientation(LinearLayout.VERTICAL);
        menu.setPadding(dp(4), dp(4), dp(4), dp(4));
        menu.setBackground(roundColor(theme.elevated, dp(7)));
        return menu;
    }

    private void showPopup(View popupContent, int width, int height) {
        dismissPopup();
        int safeHeight = Math.min(height, dp(480));
        int safeWidth = Math.min(width, Math.max(dp(1), panelWidth - dp(16)));
        View content = popupContent;
        if (height > safeHeight) {
            ScrollView scroll = new ScrollView(context);
            scroll.setFillViewport(false);
            scroll.addView(popupContent);
            content = scroll;
        }
        final View animatedContent = content;
        final PopupWindow popupWindow = new PopupWindow(animatedContent, safeWidth, safeHeight, true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setFocusable(true);
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            popupWindow.setElevation(dp(8));
        }
        popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public void onDismiss() {
                if (popupAnimator != null) {
                    popupAnimator.cancel();
                    popupAnimator = null;
                }
                if (activePopup == popupWindow) {
                    activePopup = null;
                }
            }
        });
        activePopup = popupWindow;
        int[] location = new int[2];
        int[] hostLocation = new int[2];
        host.getLocationOnScreen(hostLocation);
        View anchor = sourceButton == null ? panel : sourceButton;
        anchor.getLocationOnScreen(location);
        int anchorWidth = anchor.getWidth();
        int x = Math.max(hostLocation[0] + dp(8),
                Math.min(hostLocation[0] + panelWidth - safeWidth - dp(8),
                        location[0] + anchorWidth - safeWidth));
        int y = location[1] - safeHeight - dp(8);
        if (y < dp(8)) {
            y = location[1] + anchor.getHeight() + dp(8);
        }
        y = Math.max(dp(8), Math.min(screenHeight() - safeHeight - dp(8), y));
        popupWindow.showAtLocation(host, Gravity.TOP | Gravity.LEFT, x, y);
        animatePopup(animatedContent, 0.0f, 1.0f, dp(8), 0.0f,
                POPUP_OPEN_DURATION_MS, null);
    }

    private void dismissPopup() {
        if (activePopup != null) {
            if (popupAnimator != null) {
                popupAnimator.cancel();
                popupAnimator = null;
            }
            activePopup.dismiss();
            activePopup = null;
        }
    }

    private void closePopup(boolean animated) {
        if (!animated || activePopup == null) {
            dismissPopup();
            return;
        }
        final PopupWindow closing = activePopup;
        animatePopup(closing.getContentView(), closing.getContentView().getAlpha(), 0.0f,
                closing.getContentView().getTranslationY(), dp(8), POPUP_CLOSE_DURATION_MS,
                new Runnable() {
                    @Override
                    public void run() {
                        if (activePopup == closing) {
                            dismissPopup();
                        }
                    }
                });
    }

    private void animatePopup(final View content, final float startAlpha, final float endAlpha,
            final float startY, final float endY, long duration, final Runnable afterFinish) {
        if (popupAnimator != null) {
            popupAnimator.cancel();
        }
        content.setAlpha(startAlpha);
        content.setTranslationY(startY);
        final ValueAnimator animator = ValueAnimator.ofFloat(0.0f, 1.0f);
        popupAnimator = animator;
        animator.setDuration(duration);
        animator.setInterpolator(HEAVY_INTERPOLATOR);
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
                float progress = ((Float) animation.getAnimatedValue()).floatValue();
                content.setAlpha(startAlpha + (endAlpha - startAlpha) * progress);
                content.setTranslationY(startY + (endY - startY) * progress);
            }
        });
        animator.addListener(new AnimatorListenerAdapter() {
            private boolean cancelled;

            @Override
            public void onAnimationCancel(Animator animation) {
                cancelled = true;
            }

            @Override
            public void onAnimationEnd(Animator animation) {
                if (popupAnimator == animator) {
                    popupAnimator = null;
                    if (!cancelled && afterFinish != null) {
                        afterFinish.run();
                    }
                }
            }
        });
        animator.start();
    }

    private final class HandlerClock {
        private final Handler handler = new Handler(Looper.getMainLooper());
        private final Runnable tick = new Runnable() {
            @Override
            public void run() {
                if (!built) {
                    return;
                }
                store.updateClock(System.currentTimeMillis());
                handler.postDelayed(this, 1000L);
            }
        };

        private void start() {
            handler.removeCallbacks(tick);
            handler.post(tick);
        }

        private void stop() {
            handler.removeCallbacks(tick);
        }
    }

    private final class ContentPager extends HorizontalScrollView {
        private final boolean control;
        private final int touchSlop;
        private boolean gestureActive;
        private boolean dragging;
        private boolean verticalGesture;
        private float downX;
        private float downY;
        private VelocityTracker velocityTracker;

        private ContentPager(boolean control) {
            super(context);
            this.control = control;
            touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        }

        @Override
        public boolean dispatchTouchEvent(MotionEvent event) {
            int action = event.getActionMasked();
            if (action == MotionEvent.ACTION_DOWN) {
                cancelPagerAnimation(control);
                gestureActive = true;
                dragging = false;
                verticalGesture = false;
                downX = event.getX();
                downY = event.getY();
                releaseVelocityTracker();
                velocityTracker = VelocityTracker.obtain();
                updateIconVisibility();
            }
            if (velocityTracker != null) {
                velocityTracker.addMovement(event);
            }
            boolean handled = super.dispatchTouchEvent(event);
            if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
                gestureActive = false;
                ContentState state = store.snapshot();
                int index = control ? state.controlIndex : state.pageIndex;
                if (action == MotionEvent.ACTION_UP && dragging) {
                    float delta = event.getX() - downX;
                    velocityTracker.computeCurrentVelocity(1000);
                    float velocity = velocityTracker.getXVelocity();
                    if (Math.abs(delta) >= dp(28) || Math.abs(velocity) >= dp(700)) {
                        int maxIndex = (control ? controlCards.size() : pageViews.size()) - 1;
                        index = Math.max(0, Math.min(maxIndex,
                                index + (delta < 0 ? 1 : -1)));
                    }
                }
                releaseVelocityTracker();
                if (control) {
                    store.setControlIndex(index);
                } else {
                    store.setPageIndex(index);
                }
                snapPager(this, index, control);
            }
            return handled;
        }

        @Override
        public boolean onInterceptTouchEvent(MotionEvent event) {
            if (event.getActionMasked() == MotionEvent.ACTION_MOVE) {
                float distanceX = Math.abs(event.getX() - downX);
                float distanceY = Math.abs(event.getY() - downY);
                if (!dragging && distanceY > touchSlop && distanceY > distanceX) {
                    verticalGesture = true;
                }
                if (verticalGesture) {
                    return false;
                }
                if (distanceX > touchSlop && distanceX > distanceY) {
                    dragging = true;
                }
            }
            return super.onInterceptTouchEvent(event);
        }

        @Override
        protected void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
            super.onSizeChanged(width, height, oldWidth, oldHeight);
            ContentState state = store.snapshot();
            alignPager(this, control ? state.controlIndex : state.pageIndex);
        }

        @Override
        protected void onDetachedFromWindow() {
            gestureActive = false;
            releaseVelocityTracker();
            super.onDetachedFromWindow();
        }

        private void releaseVelocityTracker() {
            if (velocityTracker != null) {
                velocityTracker.recycle();
                velocityTracker = null;
            }
        }

        @Override
        public void fling(int velocityX) {
        }
    }

    private static final class TileBinding {
        private final View tile;
        private final ContentIconView icon;
        private final TextView labelText;
        private Boolean lastActive;
        private ValueAnimator selectionAnimator;

        private TileBinding(View tile, ContentIconView icon, TextView labelText) {
            this.tile = tile;
            this.icon = icon;
            this.labelText = labelText;
        }
    }

    private final class PopupLabelView extends View {
        private final Paint labelPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final String text;

        private PopupLabelView(Context context, String text) {
            super(context);
            this.text = text;
            labelPaint.setTypeface(Typeface.create(contentTypeface, Typeface.NORMAL));
            labelPaint.setTextSize(calibratedSp(13.0f)
                    * context.getResources().getDisplayMetrics().scaledDensity);
            setContentDescription(text);
        }

        @Override
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            labelPaint.setColor(theme.text);
            Paint.FontMetrics metrics = labelPaint.getFontMetrics();
            float x = (getWidth() - labelPaint.measureText(text)) / 2.0f;
            float y = (getHeight() - metrics.ascent - metrics.descent) / 2.0f;
            canvas.drawText(text, x, y, labelPaint);
        }
    }
}
