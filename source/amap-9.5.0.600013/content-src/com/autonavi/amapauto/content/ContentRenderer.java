package com.autonavi.amapauto.content;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
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

public final class ContentRenderer implements ContentStore.Listener {
    private static final String ROLE_BACKGROUND = "background";
    private static final String ROLE_SURFACE = "surface";
    private static final String ROLE_ELEVATED = "elevated";
    private static final String ROLE_SELECTED = "selected";
    private static final String ROLE_PRIMARY = "primary";
    private static final String ROLE_SECONDARY = "secondary";
    private static final String ROLE_MUTED = "muted";
    private static final String ROLE_ACCENT = "accent";
    private static final String ROLE_LYRICS_BACKGROUND = "lyrics_background";

    private final Context context;
    private final ViewGroup host;
    private final ContentStore store;
    private final Map<String, TileBinding> tileBindings = new HashMap<>();
    private final List<View> pageViews = new ArrayList<>();
    private final List<View> controlCards = new ArrayList<>();
    private final List<ContentIconView> dockIconViews = new ArrayList<>();
    private final List<View> dockButtons = new ArrayList<>();
    private final HandlerClock clock = new HandlerClock();
    private ContentTheme theme;
    private int displayedThemeMode;
    private ValueAnimator themeAnimator;
    private FrameLayout panel;
    private LinearLayout verticalRoot;
    private FrameLayout topBar;
    private LinearLayout leftTopCluster;
    private LinearLayout rightTopCluster;
    private TextView temperatureText;
    private TextView timeText;
    private TextView chargingText;
    private TextView rangeText;
    private boolean timeInLeftCluster;
    private ContentIconView batteryIcon;
    private HorizontalScrollView pageScroller;
    private LinearLayout pageRow;
    private HorizontalScrollView controlScroller;
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
    private ContentIconView lockDockIcon;
    private int panelWidth;
    private int pageWidth;
    private float dividerX = Float.NaN;
    private float expandedDividerX;
    private float mapWidth;
    private int lastDockSignature = Integer.MIN_VALUE;
    private long lastCommandSequence = -1L;
    private boolean built;
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

        verticalRoot = new LinearLayout(context);
        verticalRoot.setOrientation(LinearLayout.VERTICAL);
        verticalRoot.setClipChildren(true);
        panel.addView(verticalRoot, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        buildTopBar();
        buildPages();
        buildControls();
        buildDock();
        applyThemeTree(panel);
        store.addListener(this);
        clock.start();
    }

    public void destroy() {
        built = false;
        clock.stop();
        dismissPopup();
        if (themeAnimator != null) {
            themeAnimator.cancel();
            themeAnimator = null;
        }
        store.removeListener(this);
        store.destroy();
        host.removeOnLayoutChangeListener(hostLayoutListener);
        host.removeAllViews();
    }

    private void buildTopBar() {
        topBar = new FrameLayout(context);
        topBar.setTag(ROLE_BACKGROUND);
        topBar.setPadding(dp(16), dp(8), dp(16), dp(8));
        verticalRoot.addView(topBar, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(72)));

        leftTopCluster = new LinearLayout(context);
        leftTopCluster.setOrientation(LinearLayout.HORIZONTAL);
        leftTopCluster.setGravity(Gravity.CENTER_VERTICAL);
        topBar.addView(leftTopCluster, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT,
                Gravity.LEFT | Gravity.CENTER_VERTICAL));

        rightTopCluster = new LinearLayout(context);
        rightTopCluster.setOrientation(LinearLayout.HORIZONTAL);
        rightTopCluster.setGravity(Gravity.CENTER_VERTICAL);
        topBar.addView(rightTopCluster, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT,
                Gravity.RIGHT | Gravity.CENTER_VERTICAL));

        temperatureText = makeText(18.0f, Typeface.BOLD, ROLE_PRIMARY);
        temperatureText.setGravity(Gravity.CENTER_VERTICAL | Gravity.LEFT);
        leftTopCluster.addView(temperatureText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT));

        chargingText = makeText(14.0f, Typeface.BOLD, ROLE_ACCENT);
        chargingText.setGravity(Gravity.CENTER_VERTICAL | Gravity.LEFT);
        chargingText.setSingleLine(true);
        chargingText.setEllipsize(TextUtils.TruncateAt.END);
        chargingText.setVisibility(View.GONE);
        LinearLayout.LayoutParams chargingParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT);
        chargingParams.leftMargin = dp(12);
        leftTopCluster.addView(chargingText, chargingParams);

        timeText = makeText(19.0f, Typeface.BOLD, ROLE_PRIMARY);
        timeText.setGravity(Gravity.CENTER);
        timeText.setSingleLine(true);
        attachTimeToCenter();

        rangeText = makeText(16.0f, Typeface.BOLD, ROLE_PRIMARY);
        rangeText.setGravity(Gravity.CENTER_VERTICAL | Gravity.RIGHT);
        rangeText.setSingleLine(true);
        rightTopCluster.addView(rangeText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT));

        batteryIcon = new ContentIconView(context);
        batteryIcon.setIcon("battery");
        LinearLayout.LayoutParams batteryParams = new LinearLayout.LayoutParams(dp(46), dp(32));
        batteryParams.leftMargin = dp(8);
        rightTopCluster.addView(batteryIcon, batteryParams);
    }

    private void buildPages() {
        pageScroller = new HorizontalScrollView(context);
        pageScroller.setHorizontalScrollBarEnabled(false);
        pageScroller.setOverScrollMode(View.OVER_SCROLL_NEVER);
        pageScroller.setFillViewport(false);
        pageScroller.setClipChildren(true);
        pageScroller.setClipToPadding(false);
        pageScroller.setTag(ROLE_BACKGROUND);
        verticalRoot.addView(pageScroller, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1.0f));

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
        bindPagerTouch(pageScroller, false);
    }

    private View buildShortcutsPage() {
        ScrollView scrollView = new ScrollView(context);
        scrollView.setFillViewport(true);
        scrollView.setClipChildren(true);
        scrollView.setBackgroundColor(Color.TRANSPARENT);

        LinearLayout page = new LinearLayout(context);
        page.setOrientation(LinearLayout.VERTICAL);
        page.setPadding(dp(14), dp(12), dp(14), dp(12));
        page.setBackgroundColor(Color.TRANSPARENT);

        TextView title = makeText(22.0f, Typeface.BOLD, ROLE_PRIMARY);
        title.setText("快捷功能");
        page.addView(title, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(32)));

        TextView subtitle = makeText(13.0f, Typeface.NORMAL, ROLE_SECONDARY);
        subtitle.setText("常用车控，一触即达");
        page.addView(subtitle, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(26)));

        LinearLayout firstRow = new LinearLayout(context);
        firstRow.setOrientation(LinearLayout.HORIZONTAL);
        firstRow.addView(createShortcutTile(ContentRegistry.Shortcuts.SEAT_VENTILATION,
                "座椅通风", "ventilation"), gridTileParams());
        firstRow.addView(createShortcutTile(ContentRegistry.Shortcuts.SEAT_HEATING,
                "座椅加热", "heating"), gridTileParams());
        page.addView(firstRow, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(92)));

        LinearLayout secondRow = new LinearLayout(context);
        secondRow.setOrientation(LinearLayout.HORIZONTAL);
        secondRow.addView(createShortcutTile(ContentRegistry.Shortcuts.SEAT_MASSAGE,
                "座椅按摩", "massage"), gridTileParams());
        secondRow.addView(createShortcutTile(ContentRegistry.Shortcuts.LOCK,
                "车锁", "lock"), gridTileParams());
        LinearLayout.LayoutParams secondRowParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(92));
        secondRowParams.topMargin = dp(8);
        page.addView(secondRow, secondRowParams);

        LinearLayout settingsBar = new LinearLayout(context);
        settingsBar.setOrientation(LinearLayout.HORIZONTAL);
        settingsBar.setGravity(Gravity.CENTER_VERTICAL);
        settingsBar.setPadding(dp(12), 0, dp(12), 0);
        settingsBar.setTag(ROLE_SURFACE);
        ContentIconView settingsIcon = new ContentIconView(context);
        settingsIcon.setIcon("settings");
        settingsBar.addView(settingsIcon, new LinearLayout.LayoutParams(dp(36), dp(36)));
        LinearLayout settingsText = new LinearLayout(context);
        settingsText.setOrientation(LinearLayout.VERTICAL);
        settingsText.setGravity(Gravity.CENTER_VERTICAL);
        TextView settingsTitle = makeText(15.0f, Typeface.BOLD, ROLE_PRIMARY);
        settingsTitle.setText("设置与 Dock 编辑");
        TextView settingsDetail = makeText(12.0f, Typeface.NORMAL, ROLE_SECONDARY);
        settingsDetail.setText("长按 Dock 按钮替换入口");
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
                ViewGroup.LayoutParams.MATCH_PARENT, dp(64));
        settingsParams.topMargin = dp(12);
        page.addView(settingsBar, settingsParams);
        bindPressEffect(settingsBar);
        settingsBar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(context, "设置入口将在后续施工中接入", Toast.LENGTH_SHORT).show();
            }
        });

        scrollView.addView(page, new ScrollView.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        return scrollView;
    }

    private View buildLyricsPage() {
        FrameLayout page = new FrameLayout(context);
        page.setClipChildren(true);
        page.setBackgroundColor(Color.TRANSPARENT);

        View lyricsBackground = new View(context);
        lyricsBackground.setTag(ROLE_LYRICS_BACKGROUND);
        page.addView(lyricsBackground, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));

        LinearLayout content = new LinearLayout(context);
        content.setOrientation(LinearLayout.VERTICAL);
        content.setGravity(Gravity.CENTER_HORIZONTAL);
        content.setPadding(dp(20), dp(24), dp(20), dp(24));
        ContentIconView musicIcon = new ContentIconView(context);
        musicIcon.setIcon("source");
        content.addView(musicIcon, new LinearLayout.LayoutParams(dp(72), dp(72)));
        TextView heading = makeText(24.0f, Typeface.BOLD, ROLE_PRIMARY);
        heading.setText("歌词页面");
        heading.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams headingParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(40));
        headingParams.topMargin = dp(14);
        content.addView(heading, headingParams);
        TextView placeholder = makeText(16.0f, Typeface.NORMAL, ROLE_SECONDARY);
        placeholder.setText("歌词功能将在下一轮接入");
        placeholder.setGravity(Gravity.CENTER);
        content.addView(placeholder, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(34)));
        TextView detail = makeText(13.0f, Typeface.NORMAL, ROLE_MUTED);
        detail.setText("当前页用于验证页面切换、主题和独立背景层");
        detail.setGravity(Gravity.CENTER);
        content.addView(detail, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(42)));
        page.addView(content, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT,
                Gravity.CENTER));
        return page;
    }

    private void buildControls() {
        controlScroller = new HorizontalScrollView(context);
        controlScroller.setHorizontalScrollBarEnabled(false);
        controlScroller.setOverScrollMode(View.OVER_SCROLL_NEVER);
        controlScroller.setFillViewport(false);
        controlScroller.setClipChildren(true);
        controlScroller.setTag(ROLE_BACKGROUND);
        LinearLayout.LayoutParams controlParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(126));
        controlParams.leftMargin = dp(18);
        controlParams.rightMargin = dp(18);
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
        bindPagerTouch(controlScroller, true);
    }

    private View buildMediaCard() {
        LinearLayout card = new LinearLayout(context);
        card.setOrientation(LinearLayout.HORIZONTAL);
        card.setGravity(Gravity.CENTER_VERTICAL);
        card.setPadding(dp(10), dp(10), dp(10), dp(10));
        card.setTag(ROLE_SURFACE);

        FrameLayout artwork = new FrameLayout(context);
        artwork.setTag(ROLE_ELEVATED);
        ContentIconView artworkIcon = new ContentIconView(context);
        artworkIcon.setIcon("source");
        artwork.addView(artworkIcon, new FrameLayout.LayoutParams(dp(38), dp(38), Gravity.CENTER));
        card.addView(artwork, new LinearLayout.LayoutParams(dp(68), dp(68)));

        LinearLayout songInfo = new LinearLayout(context);
        songInfo.setOrientation(LinearLayout.VERTICAL);
        songInfo.setGravity(Gravity.CENTER_VERTICAL);
        songInfo.setPadding(dp(12), 0, dp(8), 0);
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
        card.addView(songInfo, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));

        LinearLayout actions = new LinearLayout(context);
        actions.setOrientation(LinearLayout.HORIZONTAL);
        actions.setGravity(Gravity.CENTER_VERTICAL);
        mediaPlayButton = createControlButton("play", "播放");
        mediaPlayIcon = (ContentIconView) ((FrameLayout) mediaPlayButton).getChildAt(0);
        mediaPlayButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                store.toggleMediaPlayback();
            }
        });
        actions.addView(mediaPlayButton, actionParams(dp(46)));

        mediaNextButton = createControlButton("next", "下一首");
        mediaNextButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                store.nextMediaTrack();
            }
        });
        actions.addView(mediaNextButton, actionParams(dp(46)));

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
        actions.addView(sourceButton, actionParams(dp(78)));
        card.addView(actions, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT));
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
        card.addView(climateIcon, new LinearLayout.LayoutParams(dp(52), dp(70)));

        LinearLayout textColumn = new LinearLayout(context);
        textColumn.setOrientation(LinearLayout.VERTICAL);
        textColumn.setGravity(Gravity.CENTER_VERTICAL);
        TextView title = makeText(17.0f, Typeface.BOLD, ROLE_PRIMARY);
        title.setText("空调控制");
        TextView detail = makeText(13.0f, Typeface.NORMAL, ROLE_SECONDARY);
        detail.setText("滑动切换控制组件");
        textColumn.addView(title, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(26)));
        textColumn.addView(detail, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(22)));
        card.addView(textColumn, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));

        TextView placeholder = makeText(12.0f, Typeface.BOLD, ROLE_MUTED);
        placeholder.setText("占位");
        placeholder.setGravity(Gravity.CENTER);
        placeholder.setTag(ROLE_ELEVATED);
        card.addView(placeholder, new LinearLayout.LayoutParams(dp(50), dp(34)));
        bindPressEffect(card);
        card.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(context, "空调控制组件将在后续接入", Toast.LENGTH_SHORT).show();
            }
        });
        return card;
    }

    private void buildDock() {
        dockContainer = new LinearLayout(context);
        ((LinearLayout) dockContainer).setOrientation(LinearLayout.HORIZONTAL);
        ((LinearLayout) dockContainer).setGravity(Gravity.CENTER_VERTICAL);
        ((LinearLayout) dockContainer).setPadding(dp(5), dp(5), dp(5), dp(5));
        dockContainer.setTag(ROLE_ELEVATED);
        LinearLayout.LayoutParams dockParams = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(88));
        dockParams.leftMargin = dp(8);
        dockParams.rightMargin = dp(8);
        dockParams.bottomMargin = dp(12);
        verticalRoot.addView(dockContainer, dockParams);

        LinearLayout lockButton = createDockButton("lock", "车锁");
        lockDockIcon = (ContentIconView) lockButton.getChildAt(0);
        lockButton.setContentDescription("车锁");
        lockButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                ContentState state = store.snapshot();
                if (!state.lockKnown) {
                    Toast.makeText(context, "车锁状态尚未回流", Toast.LENGTH_SHORT).show();
                    return;
                }
                store.toggleLock();
            }
        });
        ((LinearLayout) dockContainer).addView(lockButton,
                new LinearLayout.LayoutParams(dp(66), ViewGroup.LayoutParams.MATCH_PARENT));
        bindPressEffect(lockButton);

        View divider = new View(context);
        divider.setBackgroundColor(theme.divider);
        LinearLayout.LayoutParams dividerParams = new LinearLayout.LayoutParams(dp(1), dp(48));
        dividerParams.leftMargin = dp(4);
        dividerParams.rightMargin = dp(4);
        ((LinearLayout) dockContainer).addView(divider, dividerParams);

        dockSlots = new LinearLayout(context);
        dockSlots.setOrientation(LinearLayout.HORIZONTAL);
        dockSlots.setGravity(Gravity.CENTER_VERTICAL);
        ((LinearLayout) dockContainer).addView(dockSlots,
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));
        rebuildDock(store.snapshot());
    }

    private LinearLayout createShortcutTile(final String itemId, String label, String iconKey) {
        LinearLayout tile = new LinearLayout(context);
        tile.setOrientation(LinearLayout.HORIZONTAL);
        tile.setGravity(Gravity.CENTER_VERTICAL);
        tile.setPadding(dp(10), dp(8), dp(8), dp(8));
        tile.setTag(ROLE_SURFACE);
        ContentIconView icon = new ContentIconView(context);
        icon.setIcon(iconKey);
        tile.addView(icon, new LinearLayout.LayoutParams(dp(42), dp(42)));
        LinearLayout textColumn = new LinearLayout(context);
        textColumn.setOrientation(LinearLayout.VERTICAL);
        textColumn.setGravity(Gravity.CENTER_VERTICAL);
        textColumn.setPadding(dp(9), 0, 0, 0);
        TextView labelText = makeText(15.0f, Typeface.BOLD, ROLE_PRIMARY);
        labelText.setText(label);
        labelText.setSingleLine(true);
        labelText.setEllipsize(TextUtils.TruncateAt.END);
        TextView valueText = makeText(12.0f, Typeface.NORMAL, ROLE_SECONDARY);
        valueText.setGravity(Gravity.LEFT);
        textColumn.addView(labelText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(23)));
        textColumn.addView(valueText, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(20)));
        textColumn.addView(new View(context), new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(1)));
        tile.addView(textColumn, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1.0f));
        TileBinding binding = new TileBinding(itemId, tile, icon, labelText, valueText);
        tileBindings.put(itemId, binding);
        bindPressEffect(tile);
        tile.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (ContentRegistry.Shortcuts.LOCK.equals(itemId)) {
                    ContentState state = store.snapshot();
                    if (!state.lockKnown) {
                        Toast.makeText(context, "车锁状态尚未回流", Toast.LENGTH_SHORT).show();
                    } else {
                        store.toggleLock();
                    }
                } else if (ContentRegistry.Shortcuts.SETTINGS.equals(itemId)) {
                    Toast.makeText(context, "设置入口将在后续施工中接入", Toast.LENGTH_SHORT).show();
                } else if (!store.snapshot().seatControlsKnown) {
                    Toast.makeText(context, "座椅车控状态尚未回流", Toast.LENGTH_SHORT).show();
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
            if (!store.snapshot().seatControlsKnown) {
                Toast.makeText(context, "座椅车控状态尚未回流", Toast.LENGTH_SHORT).show();
                return;
            }
            store.cycleSeatLevel(itemId);
        } else if (ContentRegistry.Shortcuts.SETTINGS.equals(itemId)) {
            Toast.makeText(context, "设置入口将在后续施工中接入", Toast.LENGTH_SHORT).show();
        }
    }

    private void renderTopBar(ContentState state) {
        boolean charging = state.chargeState != ContentState.CHARGE_DEFAULT;
        temperatureText.setText(Float.isNaN(state.temperatureC)
                ? "--.-°C" : String.format(Locale.CHINA, "%.1f°C", state.temperatureC));
        setAnimatedVisibility(temperatureText, charging ? View.GONE : View.VISIBLE);
        setAnimatedVisibility(chargingText, charging ? View.VISIBLE : View.GONE);
        if (charging) {
            if (state.chargeState == ContentState.CHARGE_PLUGGED) {
                chargingText.setText("已插枪·等待充电");
            } else if (state.chargeState == ContentState.CHARGE_SCHEDULED) {
                chargingText.setText("预约等待中");
            } else {
                String power = Float.isNaN(state.chargePowerKw)
                        ? "--" : String.format(Locale.CHINA, "%.1f", state.chargePowerKw);
                String remaining = state.chargeRemainingMinutes < 0
                        ? "--" : Integer.toString(state.chargeRemainingMinutes);
                chargingText.setText("功率 " + power + "kW · 剩余 " + remaining + "分钟");
            }
            attachTimeToLeft();
        } else {
            attachTimeToCenter();
        }
        timeText.setText(formatTime(state));
        rangeText.setText(state.rangeKm >= 0 ? state.rangeKm + " km" : "-- km");
        batteryIcon.setBattery(state.batteryPercent,
                state.chargeState == ContentState.CHARGE_CHARGING);
        batteryIcon.setColors(batteryColor(state.batteryPercent), theme.accent);
    }

    private void renderMediaState(ContentState state) {
        mediaTitleText.setText(state.mediaTitle);
        mediaArtistText.setText(state.mediaArtist);
        sourceLabel.setText(state.mediaSource);
        sourceButton.setContentDescription("媒体来源：" + state.mediaSource);
        mediaPlayIcon.setIcon(state.mediaPlaying ? "pause" : "play");
        setButtonAvailability(mediaPlayButton, state.mediaPlaybackAvailable);
        setButtonAvailability(mediaNextButton, state.mediaNextAvailable);
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
        binding.tile.setBackground(roundColor(isItemActive(state, itemId)
                ? theme.selected : theme.surface, dp(16)));
        binding.valueText.setText(valueForItem(state, itemId));
    }

    private void renderDockState(ContentState state) {
        if (lockDockIcon != null) {
            lockDockIcon.setIcon("lock");
            lockDockIcon.setLocked(state.locked);
            lockDockIcon.setColors(state.lockKnown ? theme.accent : theme.mutedText, theme.accent);
        }
        for (int childIndex = 0; childIndex < dockIconViews.size(); childIndex++) {
            String itemId = state.dockItems[childIndex];
            ContentIconView icon = dockIconViews.get(childIndex);
            icon.setIcon(iconForItem(itemId));
            icon.setLevel(Math.max(0, levelForItem(state, itemId)));
            icon.setLocked(state.locked);
            icon.setColors(iconColorForItem(state, itemId), theme.accent);
            dockButtons.get(childIndex).setBackground(roundColor(
                    isItemActive(state, itemId) ? theme.selected : theme.elevated, dp(12)));
        }
    }

    private void setButtonAvailability(View button, boolean available) {
        button.setEnabled(available);
        button.setAlpha(available ? 1.0f : 0.42f);
    }

    private void attachTimeToCenter() {
        if (!timeInLeftCluster && timeText.getParent() == topBar) {
            return;
        }
        ViewParent parent = timeText.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(timeText);
        }
        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT,
                Gravity.CENTER);
        topBar.addView(timeText, params);
        timeInLeftCluster = false;
        timeText.setTranslationX(0.0f);
        timeText.setAlpha(0.0f);
        timeText.animate().alpha(1.0f).setDuration(180L)
                .setInterpolator(new AccelerateDecelerateInterpolator()).start();
    }

    private void attachTimeToLeft() {
        if (timeInLeftCluster && timeText.getParent() == leftTopCluster) {
            return;
        }
        ViewParent parent = timeText.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(timeText);
        }
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT);
        leftTopCluster.addView(timeText, 0, params);
        timeInLeftCluster = true;
        timeText.setTranslationX(-dp(8));
        timeText.setAlpha(0.0f);
        timeText.animate().alpha(1.0f).translationX(0.0f).setDuration(220L)
                .setInterpolator(new AccelerateDecelerateInterpolator()).start();
    }

    private void setAnimatedVisibility(final View view, final int visibility) {
        if (view.getVisibility() == visibility) {
            return;
        }
        view.animate().cancel();
        if (visibility == View.VISIBLE) {
            view.setAlpha(0.0f);
            view.setVisibility(View.VISIBLE);
            view.animate().alpha(1.0f).setDuration(180L)
                    .setInterpolator(new AccelerateDecelerateInterpolator()).start();
            return;
        }
        view.animate().alpha(0.0f).setDuration(160L)
                .setInterpolator(new AccelerateDecelerateInterpolator())
                .withEndAction(new Runnable() {
                    @Override
                    public void run() {
                        view.setVisibility(visibility);
                        view.setAlpha(1.0f);
                    }
                }).start();
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
        if (pageScroller == null) {
            return;
        }
        int targetX = state.pageIndex * pageWidth;
        if (Math.abs(pageScroller.getScrollX() - targetX) > dp(2)) {
            pageScroller.smoothScrollTo(targetX, 0);
        }
    }

    private void renderControl(ContentState state) {
        if (controlScroller == null) {
            return;
        }
        int targetX = state.controlIndex * pageWidth;
        if (Math.abs(controlScroller.getScrollX() - targetX) > dp(2)) {
            controlScroller.smoothScrollTo(targetX, 0);
        }
    }

    private void bindPagerTouch(final HorizontalScrollView scroller, final boolean control) {
        scroller.setOnTouchListener(new View.OnTouchListener() {
            private float downX;
            private long downTime;

            @Override
            public boolean onTouch(View view, MotionEvent event) {
                if (event.getActionMasked() == MotionEvent.ACTION_DOWN) {
                    downX = event.getX();
                    downTime = event.getEventTime();
                    return false;
                }
                if (event.getActionMasked() == MotionEvent.ACTION_UP) {
                    float deltaX = event.getX() - downX;
                    long duration = Math.max(1L, event.getEventTime() - downTime);
                    float velocity = Math.abs(deltaX) / duration;
                    int currentIndex = control ? store.snapshot().controlIndex : store.snapshot().pageIndex;
                    int maxIndex = (control ? ContentRegistry.controlIds().length
                            : ContentRegistry.visiblePageIds().length) - 1;
                    int targetIndex = currentIndex;
                    if (deltaX < -dp(28) || velocity > 0.7f && deltaX < 0) {
                        targetIndex = Math.min(maxIndex, currentIndex + 1);
                    } else if (deltaX > dp(28) || velocity > 0.7f && deltaX > 0) {
                        targetIndex = Math.max(0, currentIndex - 1);
                    }
                    if (control) {
                        store.setControlIndex(targetIndex);
                    } else {
                        store.setPageIndex(targetIndex);
                    }
                }
                return false;
            }
        });
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
        renderTopBar(state);
        renderMediaState(state);
        renderShortcutState(state);
        renderPage(state);
        renderControl(state);
        rebuildDock(state);
        renderDockState(state);
    }

    private void animateTheme(final ContentTheme targetTheme, final int targetMode) {
        if (themeAnimator != null) {
            themeAnimator.cancel();
        }
        final ContentTheme startTheme = theme;
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
                displayedThemeMode = targetMode;
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
        } else if (ROLE_LYRICS_BACKGROUND.equals(tag)) {
            GradientDrawable gradient = new GradientDrawable(
                    GradientDrawable.Orientation.TL_BR,
                    new int[]{theme.elevated, theme.background});
            gradient.setCornerRadius(dp(18));
            view.setBackground(gradient);
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
        if (panel == null) {
            return;
        }
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
        return Math.max(dp(1), panelWidth - dp(28));
    }

    private LinearLayout.LayoutParams pageLayoutParams() {
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(pageWidth,
                ViewGroup.LayoutParams.MATCH_PARENT);
        params.rightMargin = dp(10);
        return params;
    }

    private LinearLayout.LayoutParams cardLayoutParams() {
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(pageWidth,
                ViewGroup.LayoutParams.MATCH_PARENT);
        params.rightMargin = dp(10);
        return params;
    }

    private LinearLayout.LayoutParams gridTileParams() {
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1.0f);
        params.rightMargin = dp(4);
        return params;
    }

    private LinearLayout.LayoutParams actionParams(int width) {
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(width, dp(64));
        params.leftMargin = dp(5);
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
        return drawable;
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

    private String valueForItem(ContentState state, String itemId) {
        if (ContentRegistry.Shortcuts.LOCK.equals(itemId)) {
            return state.lockKnown ? (state.locked ? "已闭锁" : "已解锁") : "不可用";
        }
        int level = levelForItem(state, itemId);
        return level < 0 ? "不可用" : level == 0 ? "关闭" : level + "档";
    }

    private boolean isItemActive(ContentState state, String itemId) {
        if (ContentRegistry.Shortcuts.LOCK.equals(itemId)) {
            return state.lockKnown && state.locked;
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
