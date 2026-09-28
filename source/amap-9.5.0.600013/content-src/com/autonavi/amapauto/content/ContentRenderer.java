package com.autonavi.amapauto.content;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateDecelerateInterpolator;
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
    private static final String ROLE_BACKGROUND = "background";
    private static final String ROLE_SURFACE = "surface";
    private static final String ROLE_ELEVATED = "elevated";
    private static final String ROLE_SELECTED = "selected";
    private static final String ROLE_PRIMARY = "primary";
    private static final String ROLE_SECONDARY = "secondary";
    private static final String ROLE_MUTED = "muted";
    private static final String ROLE_ACCENT = "accent";
    private static final String ROLE_DIVIDER = "divider";

    private final Context context;
    private final ViewGroup host;
    private final ContentStore store;
    private final Map<String, TileBinding> tileBindings = new HashMap<>();
    private final List<View> pageViews = new ArrayList<>();
    private final List<View> pageIndicators = new ArrayList<>();
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
    private TextView batteryPercentText;
    private ContentIconView batteryIcon;
    private ContentPager pageScroller;
    private LinearLayout pageRow;
    private ContentPager controlScroller;
    private LinearLayout controlRow;
    private TextView mediaTitleText;
    private TextView mediaArtistText;
    private ContentIconView mediaPlayIcon;
    private View mediaPlayButton;
    private View mediaNextButton;
    private FrameLayout sourceButton;
    private TextView sourceLabel;
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
    private int lastIndicatorIndex = -1;
    private int lastIndicatorAccent = Color.TRANSPARENT;
    private int lastIndicatorMuted = Color.TRANSPARENT;
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
        verticalRoot.setClipChildren(true);
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
        if (themeAnimator != null) {
            ValueAnimator previous = themeAnimator;
            themeAnimator = null;
            previous.cancel();
            applyTheme(store.snapshot().themeMode == ContentState.THEME_DARK
                    ? ContentTheme.dark() : ContentTheme.light());
        }
        cancelPagerAnimation(false);
        cancelPagerAnimation(true);
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
        ContentState state = store.snapshot();
        alignPager(pageScroller, state.pageIndex);
        alignPager(controlScroller, state.controlIndex);
        renderArtwork(state);
        updateIconVisibility();
        clock.start();
    }

    private void buildTopBar() {
        topBar = new FrameLayout(context);
        topBar.setPadding(dp(16), dp(5), dp(16), dp(5));
        verticalRoot.addView(topBar, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(72)));

        LinearLayout column = new LinearLayout(context);
        column.setOrientation(LinearLayout.VERTICAL);
        topBar.addView(column, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        LinearLayout firstRow = new LinearLayout(context);
        firstRow.setGravity(Gravity.CENTER_VERTICAL);
        column.addView(firstRow, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f));

        timeText = makeText(17.0f, Typeface.BOLD, ROLE_PRIMARY);
        timeText.setGravity(Gravity.CENTER_VERTICAL);
        timeText.setSingleLine(true);
        timeText.setEllipsize(TextUtils.TruncateAt.END);
        firstRow.addView(timeText, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));

        batteryIcon = new ContentIconView(context);
        batteryIcon.setIcon("battery");
        firstRow.addView(batteryIcon, new LinearLayout.LayoutParams(dp(32), dp(32)));

        batteryPercentText = makeText(14.0f, Typeface.BOLD, ROLE_PRIMARY);
        batteryPercentText.setGravity(Gravity.CENTER_VERTICAL | Gravity.RIGHT);
        firstRow.addView(batteryPercentText, new LinearLayout.LayoutParams(
                dp(44), ViewGroup.LayoutParams.MATCH_PARENT));

        LinearLayout secondRow = new LinearLayout(context);
        secondRow.setGravity(Gravity.CENTER_VERTICAL);
        column.addView(secondRow, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f));

        leftTopCluster = new LinearLayout(context);
        leftTopCluster.setGravity(Gravity.CENTER_VERTICAL);
        secondRow.addView(leftTopCluster, new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));

        rightTopCluster = new LinearLayout(context);
        rightTopCluster.setGravity(Gravity.CENTER_VERTICAL);
        secondRow.addView(rightTopCluster, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT));

        temperatureText = makeText(16.0f, Typeface.BOLD, ROLE_PRIMARY);
        temperatureText.setGravity(Gravity.CENTER_VERTICAL | Gravity.LEFT);
        leftTopCluster.addView(temperatureText, new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));

        chargingText = makeText(12.0f, Typeface.BOLD, ROLE_ACCENT);
        chargingText.setGravity(Gravity.CENTER_VERTICAL | Gravity.LEFT);
        chargingText.setMaxLines(2);
        chargingText.setVisibility(View.GONE);
        leftTopCluster.addView(chargingText, new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));

        rangeText = makeText(13.0f, Typeface.NORMAL, ROLE_SECONDARY);
        rangeText.setGravity(Gravity.CENTER_VERTICAL | Gravity.RIGHT);
        rangeText.setSingleLine(true);
        rangeText.setEllipsize(TextUtils.TruncateAt.END);
        rangeText.setMaxWidth(dp(100));
        rightTopCluster.addView(rangeText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT));
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
        pageParams.leftMargin = dp(16);
        pageParams.rightMargin = dp(16);
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
        LinearLayout indicators = new LinearLayout(context);
        indicators.setGravity(Gravity.CENTER);
        verticalRoot.addView(indicators, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(20)));
        for (int index = 0; index < pageViews.size(); index++) {
            View indicator = new View(context);
            LinearLayout.LayoutParams indicatorParams = new LinearLayout.LayoutParams(dp(6), dp(6));
            indicatorParams.leftMargin = dp(4);
            indicatorParams.rightMargin = dp(4);
            indicators.addView(indicator, indicatorParams);
            pageIndicators.add(indicator);
        }
    }

    private View buildShortcutsPage() {
        ScrollView scrollView = new ScrollView(context);
        scrollView.setFillViewport(true);
        scrollView.setClipChildren(true);
        scrollView.setVerticalScrollBarEnabled(true);
        scrollView.setBackgroundColor(Color.TRANSPARENT);

        LinearLayout page = new LinearLayout(context);
        page.setOrientation(LinearLayout.VERTICAL);
        page.setPadding(0, dp(4), 0, dp(8));
        page.setBackgroundColor(Color.TRANSPARENT);

        TextView title = makeText(20.0f, Typeface.BOLD, ROLE_PRIMARY);
        title.setText("快捷功能");
        page.addView(title, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(28)));

        TextView subtitle = makeText(11.0f, Typeface.NORMAL, ROLE_SECONDARY);
        subtitle.setText("点按调整 · 上滑查看更多");
        page.addView(subtitle, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(16)));

        LinearLayout firstRow = new LinearLayout(context);
        firstRow.setOrientation(LinearLayout.HORIZONTAL);
        firstRow.addView(createShortcutTile(ContentRegistry.Shortcuts.SEAT_VENTILATION,
                "座椅通风", "ventilation"), gridTileParams());
        firstRow.addView(createShortcutTile(ContentRegistry.Shortcuts.SEAT_HEATING,
                "座椅加热", "heating"), gridTileParams());
        page.addView(firstRow, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(50)));

        LinearLayout secondRow = new LinearLayout(context);
        secondRow.setOrientation(LinearLayout.HORIZONTAL);
        secondRow.addView(createShortcutTile(ContentRegistry.Shortcuts.SEAT_MASSAGE,
                "座椅按摩", "massage"), gridTileParams());
        secondRow.addView(createShortcutTile(ContentRegistry.Shortcuts.LOCK,
                "车锁", "lock"), gridTileParams());
        LinearLayout.LayoutParams secondRowParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(50));
        secondRowParams.topMargin = dp(6);
        page.addView(secondRow, secondRowParams);

        LinearLayout settingsBar = new LinearLayout(context);
        settingsBar.setOrientation(LinearLayout.HORIZONTAL);
        settingsBar.setGravity(Gravity.CENTER_VERTICAL);
        settingsBar.setPadding(dp(12), 0, dp(12), 0);
        settingsBar.setTag(ROLE_SURFACE);
        ContentIconView settingsIcon = new ContentIconView(context);
        settingsIcon.setIcon("settings");
        settingsIcon.setAvailable(false);
        settingsBar.addView(settingsIcon, new LinearLayout.LayoutParams(dp(36), dp(36)));
        LinearLayout settingsText = new LinearLayout(context);
        settingsText.setOrientation(LinearLayout.VERTICAL);
        settingsText.setGravity(Gravity.CENTER_VERTICAL);
        TextView settingsTitle = makeText(15.0f, Typeface.BOLD, ROLE_PRIMARY);
        settingsTitle.setText("设置暂不可用");
        TextView settingsDetail = makeText(12.0f, Typeface.NORMAL, ROLE_SECONDARY);
        settingsDetail.setText("长按底部按钮可更换入口");
        settingsText.addView(settingsTitle, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(22)));
        settingsText.addView(settingsDetail, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(20)));
        LinearLayout.LayoutParams settingsTextParams = new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT, 1.0f);
        settingsTextParams.leftMargin = dp(10);
        settingsBar.addView(settingsText, settingsTextParams);
        TextView arrow = makeText(20.0f, Typeface.BOLD, ROLE_MUTED);
        arrow.setText("›");
        arrow.setGravity(Gravity.CENTER);
        settingsBar.addView(arrow, new LinearLayout.LayoutParams(dp(24), dp(40)));
        LinearLayout.LayoutParams settingsParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(56));
        settingsParams.topMargin = dp(20);
        page.addView(settingsBar, settingsParams);
        bindPressEffect(settingsBar);
        settingsBar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(context, "设置暂不可用；长按底部按钮可更换入口", Toast.LENGTH_SHORT).show();
            }
        });

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
        controlScroller.setClipChildren(true);
        LinearLayout.LayoutParams controlParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(126));
        controlParams.leftMargin = dp(16);
        controlParams.rightMargin = dp(16);
        controlParams.bottomMargin = dp(8);
        verticalRoot.addView(controlScroller, controlParams);

        controlRow = new LinearLayout(context);
        controlRow.setOrientation(LinearLayout.HORIZONTAL);
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
        LinearLayout card = new LinearLayout(context);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setPadding(dp(12), dp(8), dp(12), dp(8));
        card.setTag(ROLE_SURFACE);

        LinearLayout summary = new LinearLayout(context);
        summary.setGravity(Gravity.CENTER_VERTICAL);
        card.addView(summary, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f));

        FrameLayout artwork = new FrameLayout(context);
        artwork.setTag(ROLE_ELEVATED);
        artwork.setClipToOutline(true);
        mediaArtworkView = new ImageView(context);
        mediaArtworkView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        artwork.addView(mediaArtworkView, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        mediaArtworkFallback = new ContentIconView(context);
        mediaArtworkFallback.setIcon("source");
        artwork.addView(mediaArtworkFallback, new FrameLayout.LayoutParams(dp(32), dp(32), Gravity.CENTER));
        summary.addView(artwork, new LinearLayout.LayoutParams(dp(52), dp(52)));

        LinearLayout songInfo = new LinearLayout(context);
        songInfo.setOrientation(LinearLayout.VERTICAL);
        songInfo.setGravity(Gravity.CENTER_VERTICAL);
        songInfo.setPadding(dp(12), 0, 0, 0);
        mediaTitleText = makeText(16.0f, Typeface.BOLD, ROLE_PRIMARY);
        mediaTitleText.setSingleLine(true);
        mediaTitleText.setEllipsize(TextUtils.TruncateAt.END);
        mediaArtistText = makeText(13.0f, Typeface.NORMAL, ROLE_SECONDARY);
        mediaArtistText.setSingleLine(true);
        mediaArtistText.setEllipsize(TextUtils.TruncateAt.END);
        songInfo.addView(mediaTitleText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(26)));
        songInfo.addView(mediaArtistText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(22)));
        summary.addView(songInfo, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));

        LinearLayout actions = new LinearLayout(context);
        actions.setOrientation(LinearLayout.HORIZONTAL);
        actions.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout.LayoutParams actionsParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(48));
        actionsParams.topMargin = dp(4);
        card.addView(actions, actionsParams);
        mediaPlayButton = createControlButton("play", "播放");
        mediaPlayIcon = (ContentIconView) ((FrameLayout) mediaPlayButton).getChildAt(0);
        mediaPlayButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                store.toggleMediaPlayback();
            }
        });
        actions.addView(mediaPlayButton, new LinearLayout.LayoutParams(0, dp(48), 1.0f));

        mediaNextButton = createControlButton("next", "下一首");
        mediaNextButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                store.nextMediaTrack();
                ((ContentIconView) ((FrameLayout) mediaNextButton).getChildAt(0)).playAction();
            }
        });
        LinearLayout.LayoutParams nextParams = new LinearLayout.LayoutParams(0, dp(48), 1.0f);
        nextParams.leftMargin = dp(8);
        actions.addView(mediaNextButton, nextParams);

        sourceButton = new FrameLayout(context);
        sourceButton.setTag(ROLE_ELEVATED);
        LinearLayout sourceContent = new LinearLayout(context);
        sourceContent.setOrientation(LinearLayout.HORIZONTAL);
        sourceContent.setGravity(Gravity.CENTER);
        ContentIconView sourceIcon = new ContentIconView(context);
        sourceIcon.setIcon("source");
        sourceContent.addView(sourceIcon, new LinearLayout.LayoutParams(dp(22), dp(22)));
        sourceLabel = makeText(12.0f, Typeface.BOLD, ROLE_PRIMARY);
        sourceLabel.setGravity(Gravity.CENTER);
        sourceLabel.setSingleLine(true);
        sourceContent.addView(sourceLabel, new LinearLayout.LayoutParams(dp(44), dp(24)));
        sourceButton.addView(sourceContent, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        sourceButton.setContentDescription("媒体来源");
        sourceButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                showMediaSourcePopup();
            }
        });
        LinearLayout.LayoutParams sourceParams = new LinearLayout.LayoutParams(0, dp(48), 1.25f);
        sourceParams.leftMargin = dp(8);
        actions.addView(sourceButton, sourceParams);
        bindPressEffect(mediaPlayButton);
        bindPressEffect(mediaNextButton);
        bindPressEffect(sourceButton);
        return card;
    }

    private View buildClimateCard() {
        LinearLayout card = new LinearLayout(context);
        card.setOrientation(LinearLayout.HORIZONTAL);
        card.setGravity(Gravity.CENTER_VERTICAL);
        card.setPadding(dp(14), dp(10), dp(14), dp(10));
        card.setTag(ROLE_SURFACE);
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
        dockViewport.setHorizontalScrollBarEnabled(false);
        dockViewport.setOverScrollMode(View.OVER_SCROLL_NEVER);
        dockContainer = new LinearLayout(context);
        ((LinearLayout) dockContainer).setOrientation(LinearLayout.HORIZONTAL);
        ((LinearLayout) dockContainer).setGravity(Gravity.CENTER_VERTICAL);
        ((LinearLayout) dockContainer).setPadding(dp(3), dp(5), dp(3), dp(5));
        dockContainer.setTag(ROLE_ELEVATED);
        LinearLayout.LayoutParams dockParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(88));
        dockParams.leftMargin = dp(8);
        dockParams.rightMargin = dp(8);
        dockParams.bottomMargin = dp(12);
        verticalRoot.addView(dockViewport, dockParams);
        dockViewport.addView(dockContainer, new HorizontalScrollView.LayoutParams(
                Math.max(dp(300), panelWidth - dp(16)), ViewGroup.LayoutParams.MATCH_PARENT));

        LinearLayout lockButton = createDockButton("lock", "车锁");
        lockDockIcon = (ContentIconView) lockButton.getChildAt(0);
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
        tile.setOrientation(LinearLayout.HORIZONTAL);
        tile.setGravity(Gravity.CENTER_VERTICAL);
        tile.setPadding(dp(6), dp(4), dp(6), dp(4));
        tile.setTag(ROLE_SURFACE);
        ContentIconView icon = new ContentIconView(context);
        icon.setIcon(iconKey);
        tile.addView(icon, new LinearLayout.LayoutParams(dp(28), dp(28)));
        LinearLayout textColumn = new LinearLayout(context);
        textColumn.setOrientation(LinearLayout.VERTICAL);
        textColumn.setGravity(Gravity.CENTER_VERTICAL);
        textColumn.setPadding(dp(5), 0, 0, 0);
        TextView labelText = makeText(14.0f, Typeface.BOLD, ROLE_PRIMARY);
        labelText.setText(label);
        labelText.setGravity(Gravity.CENTER_VERTICAL);
        labelText.setSingleLine(true);
        labelText.setEllipsize(TextUtils.TruncateAt.END);
        TextView valueText = makeText(12.0f, Typeface.NORMAL, ROLE_SECONDARY);
        valueText.setGravity(Gravity.CENTER_VERTICAL);
        valueText.setSingleLine(true);
        valueText.setEllipsize(TextUtils.TruncateAt.END);
        textColumn.addView(labelText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(22)));
        textColumn.addView(valueText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(18)));
        tile.addView(textColumn, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1.0f));
        TileBinding binding = new TileBinding(itemId, tile, icon, labelText, valueText);
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
            final int dockSlot = slot;
            final String itemId = state.dockItems[slot];
            LinearLayout button = createDockButton(iconForItem(itemId), labelForItem(itemId));
            button.setContentDescription(labelForItem(itemId));
            button.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    onDockClick(itemId);
                }
            });
            button.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public boolean onLongClick(View view) {
                    showDockEditPopup(dockSlot);
                    return true;
                }
            });
            bindPressEffect(button);
            dockButtons.add(button);
            dockIconViews.add((ContentIconView) button.getChildAt(0));
            dockSlots.addView(button, new LinearLayout.LayoutParams(0,
                    ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));
        }
        renderDockState(state);
    }

    private LinearLayout createDockButton(String iconKey, String label) {
        LinearLayout button = new LinearLayout(context);
        button.setOrientation(LinearLayout.VERTICAL);
        button.setGravity(Gravity.CENTER);
        button.setPadding(dp(2), dp(2), dp(2), dp(2));
        ContentIconView icon = new ContentIconView(context);
        icon.setIcon(iconKey);
        button.addView(icon, new LinearLayout.LayoutParams(dp(30), dp(32)));
        TextView labelText = makeText(11.0f, Typeface.BOLD, ROLE_PRIMARY);
        labelText.setText(label);
        labelText.setGravity(Gravity.CENTER);
        labelText.setSingleLine(true);
        labelText.setEllipsize(TextUtils.TruncateAt.END);
        button.addView(labelText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(18)));
        return button;
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
        boolean charging = state.chargeState == ContentState.CHARGE_PLUGGED
                || state.chargeState == ContentState.CHARGE_SCHEDULED
                || state.chargeState == ContentState.CHARGE_CHARGING;
        boolean unplugged = state.chargeState == ContentState.CHARGE_DEFAULT;
        boolean unresolvedCharge = state.chargeState == ContentState.CHARGE_UNKNOWN
                && state.vehicleDataAvailable;
        temperatureText.setText(Float.isNaN(state.temperatureC)
                ? "--.-°C" : String.format(Locale.CHINA, "%.1f°C", state.temperatureC));
        setAnimatedVisibility(temperatureText, charging || unresolvedCharge ? View.GONE : View.VISIBLE);
        setAnimatedVisibility(chargingText,
                charging || unresolvedCharge || unplugged ? View.VISIBLE : View.GONE);
        if (unresolvedCharge) {
            chargingText.setText("充电状态\n待确认");
        } else if (charging) {
            if (state.chargeState == ContentState.CHARGE_PLUGGED) {
                chargingText.setText("已插枪\n等待充电");
            } else if (state.chargeState == ContentState.CHARGE_SCHEDULED) {
                chargingText.setText("预约等待中");
            } else {
                String power = Float.isNaN(state.chargePowerKw)
                        ? "--" : String.format(Locale.CHINA, "%.1f", state.chargePowerKw);
                String remaining = state.chargeRemainingMinutes < 0
                        ? "--" : Integer.toString(state.chargeRemainingMinutes);
                chargingText.setText(power + " kW\n剩余 " + remaining + " 分钟");
            }
        } else if (unplugged) {
            chargingText.setText("未插枪");
        }
        timeText.setText(formatTime(state));
        chargingText.setTextColor(unresolvedCharge ? theme.mutedText
                : state.chargeState == ContentState.CHARGE_CHARGING ? theme.positive : theme.secondaryText);
        timeText.setTextSize(panelWidth < dp(360) ? 14.0f : 17.0f);
        rangeText.setText(state.rangeRaw >= 0 ? "续航 " + state.rangeRaw : "续航 --");
        batteryIcon.setBattery(state.batteryPercent,
                state.chargeState == ContentState.CHARGE_CHARGING);
        batteryIcon.setColors(batteryColor(state.batteryPercent), theme.accent);
        batteryIcon.setAvailable(state.batteryPercent >= 0 && !state.vehiclePreview);
        batteryPercentText.setText(state.batteryPercent >= 0
                ? state.batteryPercent + "%" : "--%");
        batteryIcon.setContentDescription(state.batteryPercent < 0 ? "动力电池不可用"
                : "动力电池" + state.batteryPercent + "%"
                + (state.chargeState == ContentState.CHARGE_DEFAULT ? "，未插枪" : ""));
    }

    private void renderMediaState(ContentState state) {
        mediaTitleText.setText(state.mediaTitle);
        mediaArtistText.setText(state.mediaArtist);
        sourceLabel.setText(state.mediaSource);
        sourceButton.setContentDescription("媒体来源：" + state.mediaSource);
        mediaPlayIcon.setIcon(state.mediaPlaying ? "pause" : "play");
        mediaPlayButton.setContentDescription(state.mediaPlaying ? "暂停" : "播放");
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
        binding.icon.setLocked(state.locked);
        binding.icon.setColors(iconColorForItem(state, itemId), theme.accent);
        binding.icon.setAvailable(isItemAvailable(state, itemId));
        binding.tile.setBackground(roundColor(isItemActive(state, itemId)
                ? theme.selected : theme.surface, dp(16)));
        binding.valueText.setText(valueForItem(state, itemId));
    }

    private void renderDockState(ContentState state) {
        if (lockDockIcon != null) {
            lockDockIcon.setIcon("lock");
            lockDockIcon.setLocked(state.locked);
            lockDockIcon.setColors(state.lockKnown ? theme.accent : theme.mutedText, theme.accent);
            lockDockIcon.setAvailable(isItemAvailable(state, ContentRegistry.Shortcuts.LOCK));
            ((View) lockDockIcon.getParent()).setContentDescription(!state.lockKnown
                    ? "车锁状态不可用" : state.locked ? "车锁已锁定" : "车锁已解锁");
        }
        for (int childIndex = 0; childIndex < dockIconViews.size(); childIndex++) {
            String itemId = state.dockItems[childIndex];
            ContentIconView icon = dockIconViews.get(childIndex);
            icon.setIcon(iconForItem(itemId));
            icon.setLevel(Math.max(0, levelForItem(state, itemId)));
            icon.setLocked(state.locked);
            icon.setColors(iconColorForItem(state, itemId), theme.accent);
            icon.setAvailable(isItemAvailable(state, itemId));
            icon.setActive(isItemActive(state, itemId));
            dockButtons.get(childIndex).setBackground(roundColor(
                    isItemActive(state, itemId) ? theme.selected : theme.elevated, dp(12)));
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

    private void setAnimatedVisibility(final View view, final int visibility) {
        if (view.getVisibility() == visibility) {
            return;
        }
        view.animate().cancel();
        view.setVisibility(visibility);
        if (visibility == View.VISIBLE) {
            view.setAlpha(0.0f);
            view.setVisibility(View.VISIBLE);
            view.animate().alpha(1.0f).setDuration(180L)
                    .setInterpolator(new AccelerateDecelerateInterpolator()).start();
            return;
        }
        view.setAlpha(1.0f);
    }

    private String formatTime(ContentState state) {
        long timeMillis = state.nowMillis == 0 ? System.currentTimeMillis() : state.nowMillis;
        String pattern = state.showSeconds ? "MM-dd HH:mm:ss" : "MM-dd HH:mm";
        String formatted = new SimpleDateFormat(pattern, Locale.CHINA).format(timeMillis);
        if (!state.showWeekday) {
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
        if (lastIndicatorIndex != state.pageIndex || lastIndicatorAccent != theme.accent
                || lastIndicatorMuted != theme.mutedText) {
            lastIndicatorIndex = state.pageIndex;
            lastIndicatorAccent = theme.accent;
            lastIndicatorMuted = theme.mutedText;
            for (int index = 0; index < pageIndicators.size(); index++) {
                String name = "content_oem_dot_indicator_"
                        + (index == state.pageIndex ? "select" : "unselect");
                int resourceId = context.getResources().getIdentifier(
                        name, "drawable", context.getPackageName());
                if (resourceId == 0) {
                    continue;
                }
                Drawable drawable = context.getResources().getDrawable(resourceId, context.getTheme()).mutate();
                drawable.setTint(index == state.pageIndex ? theme.accent : theme.mutedText);
                pageIndicators.get(index).setBackground(drawable);
            }
        }
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
        animator.setDuration(220L);
        animator.setInterpolator(new AccelerateDecelerateInterpolator());
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
        themeAnimator.setDuration(240L);
        themeAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
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
        } else if (ROLE_SURFACE.equals(tag)) {
            view.setBackground(roundColor(theme.surface, dp(16)));
        } else if (ROLE_ELEVATED.equals(tag)) {
            view.setBackground(roundColor(theme.elevated, dp(14)));
        } else if (ROLE_SELECTED.equals(tag)) {
            view.setBackground(roundColor(theme.selected, dp(14)));
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
        ViewGroup.LayoutParams dockParams = dockContainer.getLayoutParams();
        dockParams.width = Math.max(dp(300), panelWidth - dp(16));
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
        return Math.max(dp(1), panelWidth - dp(32));
    }

    private LinearLayout.LayoutParams pageLayoutParams() {
        return new LinearLayout.LayoutParams(pageWidth, ViewGroup.LayoutParams.MATCH_PARENT);
    }

    private LinearLayout.LayoutParams cardLayoutParams() {
        return new LinearLayout.LayoutParams(pageWidth, ViewGroup.LayoutParams.MATCH_PARENT);
    }

    private LinearLayout.LayoutParams gridTileParams() {
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1.0f);
        params.rightMargin = dp(4);
        return params;
    }

    private TextView makeText(float textSize, int typefaceStyle, String role) {
        TextView textView = new TextView(context);
        textView.setTextSize(textSize);
        textView.setTypeface(Typeface.create("sans", typefaceStyle));
        textView.setIncludeFontPadding(false);
        textView.setTag(role);
        return textView;
    }

    private FrameLayout createControlButton(String iconKey, String description) {
        FrameLayout button = new FrameLayout(context);
        button.setTag(ROLE_ELEVATED);
        ContentIconView icon = new ContentIconView(context);
        icon.setIcon(iconKey);
        button.addView(icon, new FrameLayout.LayoutParams(dp(28), dp(28), Gravity.CENTER));
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
                    touchedView.animate().scaleX(0.96f).scaleY(0.96f).setDuration(90L).start();
                } else if (event.getActionMasked() == MotionEvent.ACTION_UP
                        || event.getActionMasked() == MotionEvent.ACTION_CANCEL) {
                    touchedView.animate().scaleX(1.0f).scaleY(1.0f).setDuration(170L)
                            .setInterpolator(new AccelerateDecelerateInterpolator()).start();
                }
                return false;
            }
        });
    }

    private GradientDrawable roundColor(int color, int radius) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(color);
        drawable.setCornerRadius(radius);
        drawable.setStroke(dp(1), color == theme.selected ? theme.accent : theme.divider);
        return drawable;
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
            return state.locked ? 1 : 0;
        }
        return 0;
    }

    private boolean canControlSeat(ContentState state, String itemId) {
        return ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(itemId)
                ? state.massageSwitchKnown : levelForItem(state, itemId) >= 0;
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
            return state.lockKnown && state.locked;
        }
        if (ContentRegistry.Shortcuts.SEAT_MASSAGE.equals(itemId)) {
            return state.massageSwitchKnown && state.massageActive;
        }
        return levelForItem(state, itemId) > 0;
    }

    private int iconColorForItem(ContentState state, String itemId) {
        if (ContentRegistry.Shortcuts.LOCK.equals(itemId) && !state.lockKnown) {
            return theme.mutedText;
        }
        return isItemActive(state, itemId) ? theme.accent : theme.secondaryText;
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
            TextView item = popupItem(source);
            item.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    store.selectMediaSource(source);
                    dismissPopup();
                }
            });
            menu.addView(item, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, dp(52)));
        }
        showPopup(menu, dp(180), dp(58) * menu.getChildCount());
    }

    private void showDockEditPopup(final int slot) {
        LinearLayout menu = popupMenu();
        for (final String itemId : ContentRegistry.dockChoices()) {
            TextView item = popupItem(labelForItem(itemId));
            item.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    store.replaceDockItem(slot, itemId);
                    dismissPopup();
                }
            });
            menu.addView(item, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, dp(52)));
        }
        showPopup(menu, dp(190), dp(58) * menu.getChildCount());
    }

    private LinearLayout popupMenu() {
        LinearLayout menu = new LinearLayout(context);
        menu.setOrientation(LinearLayout.VERTICAL);
        menu.setPadding(dp(6), dp(6), dp(6), dp(6));
        menu.setBackground(roundColor(theme.elevated, dp(16)));
        return menu;
    }

    private TextView popupItem(String text) {
        TextView item = makeText(15.0f, Typeface.BOLD, ROLE_PRIMARY);
        item.setText(text);
        item.setGravity(Gravity.CENTER_VERTICAL | Gravity.LEFT);
        item.setPadding(dp(14), 0, dp(12), 0);
        item.setBackground(roundColor(theme.surface, dp(12)));
        bindPressEffect(item);
        return item;
    }

    private void showPopup(View popupContent, int width, int height) {
        dismissPopup();
        int safeHeight = Math.min(height, dp(320));
        final PopupWindow popupWindow = new PopupWindow(popupContent, width, safeHeight, true);
        popupWindow.setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        popupWindow.setOutsideTouchable(true);
        popupWindow.setFocusable(true);
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            popupWindow.setElevation(dp(8));
        }
        popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public void onDismiss() {
                if (activePopup == popupWindow) {
                    activePopup = null;
                }
            }
        });
        activePopup = popupWindow;
        int[] location = new int[2];
        View anchor = sourceButton == null ? panel : sourceButton;
        anchor.getLocationOnScreen(location);
        int anchorWidth = anchor.getWidth();
        int x = Math.max(dp(8), Math.min(screenWidth() - width - dp(8),
                location[0] + anchorWidth - width));
        int y = location[1] - safeHeight - dp(8);
        if (y < dp(8)) {
            y = location[1] + anchor.getHeight() + dp(8);
        }
        y = Math.max(dp(8), Math.min(screenHeight() - safeHeight - dp(8), y));
        popupWindow.showAtLocation(host, Gravity.TOP | Gravity.LEFT, x, y);
        popupContent.setAlpha(0.0f);
        popupContent.setScaleX(0.94f);
        popupContent.setScaleY(0.94f);
        popupContent.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f)
                .setDuration(200L).setInterpolator(new AccelerateDecelerateInterpolator()).start();
    }

    private void dismissPopup() {
        if (activePopup != null) {
            activePopup.dismiss();
            activePopup = null;
        }
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
        private final String itemId;
        private final View tile;
        private final ContentIconView icon;
        private final TextView labelText;
        private final TextView valueText;

        private TileBinding(String itemId, View tile, ContentIconView icon,
                TextView labelText, TextView valueText) {
            this.itemId = itemId;
            this.tile = tile;
            this.icon = icon;
            this.labelText = labelText;
            this.valueText = valueText;
        }
    }
}
