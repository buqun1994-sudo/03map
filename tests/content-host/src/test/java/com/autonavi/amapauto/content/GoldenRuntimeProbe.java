package com.autonavi.amapauto.content;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.time.Duration;
import java.util.List;
import java.util.Map;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.Shadows;
import org.robolectric.android.controller.ActivityController;
import org.robolectric.annotation.Config;
import org.robolectric.annotation.GraphicsMode;
import org.robolectric.annotation.LooperMode;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 29, qualifiers = "w960dp-h540dp-xhdpi", manifest = Config.NONE)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
public class GoldenRuntimeProbe {
    @Test
    public void chargingClassificationAndImmediateCommandFeedback() throws Exception {
        assertEquals(ContentState.CHARGE_DEFAULT, ContentVehicleAdapter.resolveChargeState(0, 0, 0));
        assertEquals(ContentState.CHARGE_PLUGGED, ContentVehicleAdapter.resolveChargeState(1, -1, -1));
        assertEquals(ContentState.CHARGE_PLUGGED, ContentVehicleAdapter.resolveChargeState(1, 0, 0));
        assertEquals(ContentState.CHARGE_SCHEDULED, ContentVehicleAdapter.resolveChargeState(1, 6, 1));
        assertEquals(ContentState.CHARGE_CHARGING, ContentVehicleAdapter.resolveChargeState(1, 3, 0));
        assertEquals(ContentState.CHARGE_CHARGING, ContentVehicleAdapter.resolveChargeState(2, 3, -1));
        assertEquals(ContentState.CHARGE_UNKNOWN, ContentVehicleAdapter.resolveChargeState(2, -1, -1));
        assertEquals(ContentState.CHARGE_UNKNOWN, ContentVehicleAdapter.resolveChargeState(-1, 3, 0));
        assertEquals(ContentState.CHARGE_UNKNOWN, ContentVehicleAdapter.resolveChargeState(0, 3, 0));

        Fixture fixture = new Fixture();
        try {
            fixture.layout(640);
            LinearLayout shortcuts = (LinearLayout) field(fixture.renderer, "shortcutsRow");
            assertEquals(3, shortcuts.getChildCount());
            assertEquals(5, ((List<View>) field(fixture.renderer, "shortcutTiles")).size());
            for (View tile : (List<View>) field(fixture.renderer, "shortcutTiles")) {
                assertEquals(tile.getWidth(), tile.getHeight());
                assertEquals(2, ((LinearLayout) tile).getChildCount());
                android.widget.TextView label = (android.widget.TextView) ((LinearLayout) tile).getChildAt(1);
                assertEquals(0, label.getLayout().getEllipsisCount(0));
            }
            LinearLayout dock = (LinearLayout) field(fixture.renderer, "dockSlots");
            for (int index = 0; index < dock.getChildCount(); index++) {
                assertEquals(1, ((LinearLayout) dock.getChildAt(index)).getChildCount());
            }
            ContentPorts.VehiclePort originalVehicle =
                    (ContentPorts.VehiclePort) field(fixture.store, "vehiclePort");
            originalVehicle.stop();
            replacePort(fixture.store, "vehiclePort", new AcceptVehiclePort());
            fixture.store.acceptVehicleSnapshot(vehicle(true, 0));
            android.widget.TextView chargingText =
                    (android.widget.TextView) field(fixture.renderer, "chargingText");
            assertTrue(chargingText.getText().toString().startsWith("已插枪"));
            fixture.store.acceptVehicleSnapshot(new ContentPorts.VehicleSnapshot(true, false,
                    25.0f, 70, 370, ContentState.CHARGE_CHARGING, 2, 3, -1,
                    Float.NaN, -1, 0, 0, 0, -1, true, false, true, true, true));
            assertEquals("充电中", chargingText.getText().toString());
            fixture.store.acceptVehicleSnapshot(vehicle(true, 0));
            ContentIconView tileLock = (ContentIconView) ((LinearLayout)
                    ((LinearLayout) field(fixture.renderer, "shortcutOverflowRow")).getChildAt(0))
                    .getChildAt(0);
            fixture.store.toggleLock();
            assertEquals(ContentRegistry.Shortcuts.LOCK, fixture.store.snapshot().pendingVehicleCommand);
            assertEquals("content_oem_ico_lock_open", field(tileLock, "resourceName"));
            fixture.store.acceptVehicleSnapshot(vehicle(true, 0));
            assertEquals("content_oem_ico_lock_open", field(tileLock, "resourceName"));
            fixture.store.acceptVehicleSnapshot(vehicle(false, 0));
            assertEquals("", fixture.store.snapshot().pendingVehicleCommand);
            fixture.store.cycleSeatLevel(ContentRegistry.Shortcuts.SEAT_VENTILATION);
            assertEquals(3, fixture.store.snapshot().pendingSeatLevel);
            ContentIconView ventilation =
                    (ContentIconView) ((LinearLayout) shortcuts.getChildAt(0)).getChildAt(0);
            assertEquals("content_oem_ico_skin_seat_ventilate_l_3_day", field(ventilation, "resourceName"));
            fixture.store.acceptVehicleSnapshot(ContentPorts.VehicleSnapshot.unavailable());
            assertEquals("", fixture.store.snapshot().pendingVehicleCommand);
            assertEquals("content_oem_ico_skin_seat_ventilate_l_off_day", field(ventilation, "resourceName"));

            ContentPorts.MediaPort originalMedia = (ContentPorts.MediaPort) field(fixture.store, "mediaPort");
            originalMedia.stop();
            AcceptMediaPort fakeMedia = new AcceptMediaPort();
            replacePort(fixture.store, "mediaPort", fakeMedia);
            fixture.store.acceptMediaSnapshot(media(false, null));
            fixture.store.toggleMediaPlayback();
            assertEquals(1, fixture.store.snapshot().mediaPlaybackTarget);
            ContentIconView playIcon = (ContentIconView) field(fixture.renderer, "mediaPlayIcon");
            assertEquals("pause", field(playIcon, "iconKey"));
            ((ExecutorService) field(fixture.store, "mediaCommandExecutor"))
                    .submit(() -> { }).get(5, TimeUnit.SECONDS);
            fixture.store.acceptMediaSnapshot(media(false, null));
            assertEquals("pause", field(playIcon, "iconKey"));
            fixture.store.acceptMediaSnapshot(media(true, null));
            assertEquals(-1, fixture.store.snapshot().mediaPlaybackTarget);
            fakeMedia.accept = false;
            fixture.store.toggleMediaPlayback();
            ((ExecutorService) field(fixture.store, "mediaCommandExecutor"))
                    .submit(() -> { }).get(5, TimeUnit.SECONDS);
            idle(16);
            assertEquals(-1, fixture.store.snapshot().mediaPlaybackTarget);
            assertEquals("pause", field(playIcon, "iconKey"));
            fakeMedia.accept = true;
            fixture.store.toggleMediaPlayback();
            assertEquals("play", field(playIcon, "iconKey"));
            idle(6001);
            assertEquals(-1, fixture.store.snapshot().mediaPlaybackTarget);
            assertEquals(ContentState.COMMAND_FAILED, fixture.store.snapshot().commandStatus);
            assertEquals("pause", field(playIcon, "iconKey"));
        } finally {
            fixture.close();
        }
    }

    @Test
    public void viewportsGesturesAndResize() throws Exception {
        Fixture fixture = new Fixture();
        fixture.layout(640);
        HorizontalScrollView pages = (HorizontalScrollView) field(fixture.renderer, "pageScroller");
        HorizontalScrollView controls = (HorizontalScrollView) field(fixture.renderer, "controlScroller");
        System.out.println("LAYOUT diagnostics panel=" + field(fixture.renderer, "panelWidth")
                + " page=" + field(fixture.renderer, "pageWidth") + " host=" + fixture.host.getWidth()
                + " viewport=" + pages.getWidth() + " density=" + fixture.host.getResources().getDisplayMetrics().density);
        assertEquals(640, pages.getWidth());
        assertEquals(pages.getWidth(), pages.getScrollX());
        assertEquals(0, controls.getScrollX());
        fixture.store.setPageIndex(0);
        idle(280);
        assertEquals(0, pages.getScrollX());
        touch(pages, MotionEvent.ACTION_DOWN, 200, 70, 0);
        touch(pages, MotionEvent.ACTION_MOVE, 130, 70, 50);
        touch(pages, MotionEvent.ACTION_MOVE, 50, 70, 100);
        int dragged = pages.getScrollX();
        assertTrue("horizontal child gesture did not reach pager", dragged > 0);
        fixture.store.updateClock(System.currentTimeMillis());
        idle(16);
        assertEquals("clock update interrupted gesture", dragged, pages.getScrollX());
        touch(pages, MotionEvent.ACTION_UP, 50, 70, 150);
        idle(280);
        assertEquals(1, fixture.store.snapshot().pageIndex);
        assertEquals(pages.getWidth(), pages.getScrollX());
        touch(pages, MotionEvent.ACTION_DOWN, 100, 50, 500);
        touch(pages, MotionEvent.ACTION_MOVE, 105, 150, 600);
        touch(pages, MotionEvent.ACTION_UP, 105, 150, 700);
        idle(280);
        assertEquals("vertical scrolling changed page", 1, fixture.store.snapshot().pageIndex);
        fixture.store.setControlIndex(1);
        idle(280);
        for (int width : new int[]{960, 1280, 640}) {
            fixture.layout(width);
            assertEquals(width, pages.getWidth());
            assertEquals(pages.getWidth(), pages.getScrollX());
            assertEquals(controls.getWidth(), controls.getScrollX());
            for (View page : (List<View>) field(fixture.renderer, "pageViews")) {
                assertEquals("page/viewport step mismatch", pages.getWidth(), page.getWidth());
                assertEquals(0, ((android.widget.LinearLayout.LayoutParams) page.getLayoutParams()).rightMargin);
            }
            for (View card : (List<View>) field(fixture.renderer, "controlCards")) {
                assertEquals("card/viewport step mismatch", controls.getWidth(), card.getWidth());
            }
        }
        View dock = (View) field(fixture.renderer, "dockContainer");
        android.view.ViewGroup dockSlots = (android.view.ViewGroup) field(fixture.renderer, "dockSlots");
        assertEquals(5, dockSlots.getChildCount());
        for (int index = 0; index < dockSlots.getChildCount(); index++) {
            assertTrue("dock touch area below 48dp", dockSlots.getChildAt(index).getWidth() >= 96);
            assertTrue(dockSlots.getChildAt(index).isLongClickable());
        }
        assertTrue(dock.getHeight() >= 96);
        fixture.store.setShowSeconds(true);
        fixture.store.setShowWeekday(true);
        idle(16);
        android.widget.TextView time = (android.widget.TextView) field(fixture.renderer, "timeText");
        assertTrue("weekday+seconds time clipped", time.getPaint().measureText(time.getText().toString())
                <= time.getWidth());
        fixture.store.acceptVehicleSnapshot(new ContentPorts.VehicleSnapshot(true, false,
                25.0f, 100, 999, ContentState.CHARGE_CHARGING, 2, 3, -1,
                999.9f, 999, 0, 0, 0, -1, true, false, true, true, true));
        idle(16);
        fixture.layout(640);
        android.widget.TextView charge = (android.widget.TextView) field(fixture.renderer, "chargingText");
        assertEquals(View.VISIBLE, charge.getVisibility());
        assertTrue("charging data clipped vertically", charge.getLayout().getHeight() <= charge.getHeight());
        assertEquals("charging data must remain one line", 1, charge.getLayout().getLineCount());
        assertTrue("power and minutes clipped", charge.getPaint().measureText(
                charge.getText().toString()) <= charge.getWidth());
        assertTrue("top bar time clipped", time.getPaint().measureText(time.getText().toString())
                <= time.getWidth());
        fixture.close();
        System.out.println("VIEWPORT: nested gestures, clock isolation, vertical scroll, 3 widths and 5 Dock slots passed");
    }

    @Test
    public void atmosphereCacheAndThemeRelease() throws Exception {
        Fixture fixture = new Fixture();
        fixture.layout(640);
        Bitmap artwork = Bitmap.createBitmap(64, 64, Bitmap.Config.ARGB_8888);
        artwork.eraseColor(0xff8060a0);
        fixture.store.acceptMediaSnapshot(media(true, artwork));
        Future<?> task = (Future<?>) field(fixture.renderer, "artworkTask");
        assertNotNull(task);
        task.get(5, TimeUnit.SECONDS);
        idle(16);
        ImageView background = (ImageView) field(fixture.renderer, "atmosphereBackground");
        assertEquals(View.VISIBLE, background.getVisibility());
        Bitmap cached = (Bitmap) field(fixture.renderer, "softenedArtwork");
        assertNotNull(cached);
        fixture.store.setPageIndex(0);
        idle(280);
        assertSame("page switch recalculated artwork", cached, field(fixture.renderer, "softenedArtwork"));
        assertNull(field(fixture.renderer, "artworkTask"));
        fixture.store.setThemeMode(ContentState.THEME_DARK);
        idle(280);
        assertEquals(0xff17191d, ((ContentTheme) field(fixture.renderer, "theme")).background);
        fixture.store.acceptMediaSnapshot(media(false, artwork));
        assertEquals(View.GONE, background.getVisibility());
        fixture.store.acceptMediaSnapshot(media(true, artwork));
        assertEquals(View.VISIBLE, background.getVisibility());
        assertSame(cached, field(fixture.renderer, "softenedArtwork"));
        fixture.store.acceptMediaSnapshot(media(true, null));
        assertEquals(View.GONE, background.getVisibility());
        fixture.close();
        assertTrue("owned cache not released", cached.isRecycled());
        assertFalse("borrowed metadata artwork recycled", artwork.isRecycled());
        artwork.recycle();
        System.out.println("ATMOSPHERE: one global layer, cache reuse, pause/no-cover reset, theme and destroy passed");
    }

    @Test
    public void svgTopBarStatusesAndStableAnimations() throws Exception {
        Fixture fixture = new Fixture();
        try {
            ((ContentPorts.VehiclePort) field(fixture.store, "vehiclePort")).stop();
            replacePort(fixture.store, "vehiclePort", new AcceptVehiclePort());
            for (int width : new int[]{640, 960, 1280}) {
                fixture.layout(width);
                for (int chargeState : new int[]{ContentState.CHARGE_DEFAULT,
                        ContentState.CHARGE_PLUGGED, ContentState.CHARGE_SCHEDULED,
                        ContentState.CHARGE_CHARGING, ContentState.CHARGE_UNKNOWN}) {
                    fixture.store.acceptVehicleSnapshot(new ContentPorts.VehicleSnapshot(true, false,
                            25.0f, 70, 366, chargeState, 1, 3, 0, Float.NaN, -1,
                            0, 0, 0, -1, true, false, true, true, true));
                    fixture.layout(width);
                    idle(250);
                    android.widget.TextView temperature = (android.widget.TextView)
                            field(fixture.renderer, "temperatureText");
                    android.widget.TextView time = (android.widget.TextView)
                            field(fixture.renderer, "timeText");
                    android.widget.TextView status = (android.widget.TextView)
                            field(fixture.renderer, "chargingText");
                    android.widget.TextView range = (android.widget.TextView)
                            field(fixture.renderer, "rangeText");
                    View battery = (View) field(fixture.renderer, "batteryIcon");
                    assertEquals(View.VISIBLE, time.getVisibility());
                    assertEquals(View.GONE, chargeState == 0 ? status.getVisibility()
                            : temperature.getVisibility());
                    assertEquals(View.VISIBLE, chargeState == 0 ? temperature.getVisibility()
                            : status.getVisibility());
                    int[] timeLocation = new int[2];
                    int[] statusLocation = new int[2];
                    int[] rangeLocation = new int[2];
                    int[] batteryLocation = new int[2];
                    time.getLocationOnScreen(timeLocation);
                    status.getLocationOnScreen(statusLocation);
                    range.getLocationOnScreen(rangeLocation);
                    battery.getLocationOnScreen(batteryLocation);
                    assertTrue("time overlaps state", chargeState == 0
                            || timeLocation[0] + time.getWidth() <= statusLocation[0]);
                    assertTrue("state overlaps range", chargeState == 0
                            || statusLocation[0] + status.getWidth() <= rangeLocation[0]);
                    assertTrue("range overlaps battery", rangeLocation[0] + range.getWidth()
                            <= batteryLocation[0]);
                    assertTrue("battery spills into map", batteryLocation[0] + battery.getWidth() <= width);
                    assertEquals(1, time.getLayout().getLineCount());
                    assertTrue("time clipped", time.getPaint().measureText(time.getText().toString())
                            <= time.getWidth());
                    assertEquals("raw range", "366", range.getText().toString());
                    if (chargeState == ContentState.CHARGE_DEFAULT) {
                        assertEquals("time must follow panel midpoint", width / 2.0f,
                                timeLocation[0] + time.getWidth() / 2.0f, 4.0f);
                    } else {
                        assertTrue("non-default time not at left edge", timeLocation[0] <= 20);
                    }
                    if (chargeState != ContentState.CHARGE_DEFAULT) {
                        assertEquals("charge wrapped", 1, status.getLayout().getLineCount());
                        assertTrue("charge status clipped", status.getPaint().measureText(
                                status.getText().toString()) <= status.getWidth());
                    }
                    if (chargeState == ContentState.CHARGE_CHARGING) {
                        assertEquals("充电中", status.getText().toString());
                    }
                }
            }
            fixture.store.acceptVehicleSnapshot(new ContentPorts.VehicleSnapshot(true, false,
                    Float.NaN, -1, -1, ContentState.CHARGE_DEFAULT, 0, 0, 0,
                    Float.NaN, -1, 0, 0, 0, -1, true, false, true, true, true));
            fixture.layout(640);
            assertEquals("--", ((android.widget.TextView) field(fixture.renderer,
                    "temperatureText")).getText().toString());
            assertEquals("--", ((android.widget.TextView) field(fixture.renderer,
                    "rangeText")).getText().toString());
            fixture.store.acceptVehicleSnapshot(new ContentPorts.VehicleSnapshot(true, false,
                    25.0f, 70, 366, ContentState.CHARGE_CHARGING, 1, 3, 0,
                    8.7f, -1, 0, 0, 0, -1, true, false, true, true, true));
            assertEquals("功率 8.7 kW", ((android.widget.TextView) field(fixture.renderer,
                    "chargingText")).getText().toString());
            fixture.store.acceptVehicleSnapshot(new ContentPorts.VehicleSnapshot(true, false,
                    25.0f, 70, 366, ContentState.CHARGE_CHARGING, 1, 3, 0,
                    Float.NaN, 27, 0, 0, 0, -1, true, false, true, true, true));
            assertEquals("剩余 27 分钟", ((android.widget.TextView) field(fixture.renderer,
                    "chargingText")).getText().toString());
            fixture.store.acceptVehicleSnapshot(new ContentPorts.VehicleSnapshot(true, false,
                    25.0f, 70, 366, ContentState.CHARGE_PLUGGED, 1, 0, 0,
                    Float.NaN, -1, 0, 0, 0, -1, true, false, true, true, true));
            android.widget.TextView charging = (android.widget.TextView)
                    field(fixture.renderer, "chargingText");
            assertEquals("已插枪·状态待确认", charging.getText().toString());
            idle(250);
            assertEquals(1.0f, charging.getAlpha(), 0.01f);
            fixture.store.updateClock(System.currentTimeMillis());
            assertEquals("clock replayed status animation", 1.0f, charging.getAlpha(), 0.01f);
            fixture.store.acceptVehicleSnapshot(new ContentPorts.VehicleSnapshot(true, false,
                    25.0f, 70, 366, ContentState.CHARGE_SCHEDULED, 1, 6, 1,
                    Float.NaN, -1, 0, 0, 0, -1, true, false, true, true, true));
            assertEquals("charge animation initial alpha", 0.0f, charging.getAlpha(), 0.01f);
            android.animation.ValueAnimator statusAnimation = (android.animation.ValueAnimator)
                    field(fixture.renderer, "topTransitionAnimator");
            assertNotNull(statusAnimation);
            statusAnimation.setCurrentPlayTime(160L);
            assertTrue("charge animation midpoint", charging.getAlpha() > 0.0f
                    && charging.getAlpha() < 1.0f);
            assertEquals(320L, statusAnimation.getDuration());
            statusAnimation.setCurrentPlayTime(320L);
            assertEquals("charge animation final alpha", 1.0f, charging.getAlpha(), 0.01f);
            fixture.store.updateClock(System.currentTimeMillis());
            assertEquals("clock replayed scheduled animation", 1.0f, charging.getAlpha(), 0.01f);
            fixture.store.acceptVehicleSnapshot(vehicleMassage(0));
            fixture.store.acceptVehicleSnapshot(new ContentPorts.VehicleSnapshot(true, false,
                    25.0f, 70, 366, ContentState.CHARGE_PLUGGED, 1, 0, 0,
                    Float.NaN, -1, 0, 0, 0, -1, true, false, true, true, true));
            android.widget.TextView time = (android.widget.TextView) field(fixture.renderer, "timeText");
            assertEquals("time relocation initial alpha", 0.0f, time.getAlpha(), 0.01f);
            android.animation.ValueAnimator timeAnimation = (android.animation.ValueAnimator)
                    field(fixture.renderer, "topTransitionAnimator");
            assertNotNull(timeAnimation);
            timeAnimation.setCurrentPlayTime(160L);
            assertTrue("time relocation midpoint", time.getAlpha() > 0.0f
                    && time.getAlpha() < 1.0f && time.getTranslationX() > 0.0f);
            timeAnimation.setCurrentPlayTime(320L);
            assertEquals("time relocation final alpha", 1.0f, time.getAlpha(), 0.01f);
            assertEquals("time relocation final position", 0.0f, time.getTranslationX(), 0.01f);
        } finally {
            fixture.close();
        }
    }

    @Test
    public void svgMediaSourceIconsAndAliases() throws Exception {
        Fixture fixture = new Fixture();
        try {
            fixture.layout(640);
            String[] labels = ContentRegistry.mediaSources();
            String[] aliases = {"蓝牙", "爱趣听", "网易云", "U盘音乐", "本机"};
            String[] packages = {"com.bluetooth.music", "com.wecar.music", "com.netease.cloudmusic",
                    "com.example.usb", "com.example.local"};
            int[] sourceCodes = {2, 4, 9, 1, 3};
            ContentMediaAdapter adapter = new ContentMediaAdapter(fixture.host.getContext());
            Set<Integer> distinctIconShapes = new HashSet<>();
            Method sourceCode = ContentMediaAdapter.class.getDeclaredMethod("sourceCode", String.class);
            sourceCode.setAccessible(true);
            Method sourceForPackage = ContentMediaAdapter.class.getDeclaredMethod("sourceForPackage", String.class);
            sourceForPackage.setAccessible(true);
            for (int index = 0; index < labels.length; index++) {
                assertEquals(labels[index], ContentRegistry.normalizeMediaSource(aliases[index]));
                assertEquals(sourceCodes[index], sourceCode.invoke(adapter, labels[index]));
                assertEquals(sourceCodes[index], sourceCode.invoke(adapter, aliases[index]));
                assertEquals(labels[index], sourceForPackage.invoke(adapter, packages[index]));
                String iconKey = ContentRegistry.mediaSourceIcon(labels[index]);
                ContentIconView icon = new ContentIconView(fixture.host.getContext());
                icon.setIcon(iconKey);
                String resource = (String) field(icon, "resourceName");
                assertNotEquals(0, fixture.host.getResources().getIdentifier(resource, "drawable",
                        "com.autonavi.amapautolite"));
                icon.layout(0, 0, 96, 96);
                for (int mode : new int[]{ContentState.THEME_LIGHT, ContentState.THEME_DARK}) {
                    icon.setThemeMode(mode);
                    icon.setColors(mode == ContentState.THEME_LIGHT
                            ? ContentTheme.light().text : ContentTheme.dark().text,
                            mode == ContentState.THEME_LIGHT
                                    ? ContentTheme.light().accent : ContentTheme.dark().accent);
                    Bitmap frame = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888);
                    icon.draw(new Canvas(frame));
                    int[] pixels = new int[96 * 96];
                    frame.getPixels(pixels, 0, 96, 0, 0, 96, 96);
                    int visible = 0;
                    for (int pixel : pixels) {
                        if (android.graphics.Color.alpha(pixel) > 0) {
                            visible++;
                        }
                    }
                    assertTrue("OEM icon not drawable: " + labels[index], visible >= 20);
                    if (mode == ContentState.THEME_LIGHT) {
                        distinctIconShapes.add(java.util.Arrays.hashCode(pixels));
                    }
                    frame.recycle();
                }
                fixture.store.acceptMediaSnapshot(new ContentPorts.MediaSnapshot(true, false,
                        aliases[index], false, 1, "track", "artist", true, true, null));
                assertEquals(labels[index], fixture.store.snapshot().mediaSource);
                assertEquals(iconKey, field(field(fixture.renderer, "sourceIcon"), "iconKey"));
            }
            assertEquals("OEM source icons reuse a placeholder", 5, distinctIconShapes.size());
            fixture.store.acceptMediaSnapshot(media(false, null));
            ((View) field(fixture.renderer, "sourceButton")).performClick();
            PopupWindow popup = (PopupWindow) field(fixture.renderer, "activePopup");
            assertTrue(popup.isShowing());
            assertTrue(popup.getWidth() >= 240);
            assertTrue(popup.getWidth() <= 608);
            assertEquals("menu start alpha", 0.0f, popup.getContentView().getAlpha(), 0.01f);
            android.animation.ValueAnimator opening = (android.animation.ValueAnimator)
                    field(fixture.renderer, "popupAnimator");
            assertNotNull(opening);
            opening.setCurrentPlayTime(120L);
            assertTrue("menu midpoint alpha", popup.getContentView().getAlpha() > 0.0f
                    && popup.getContentView().getAlpha() < 1.0f);
            assertEquals(240L, opening.getDuration());
            opening.setCurrentPlayTime(240L);
            assertEquals("menu final alpha", 1.0f, popup.getContentView().getAlpha(), 0.01f);
            View popupContent = popup.getContentView();
            LinearLayout menu = popupContent instanceof ScrollView
                    ? (LinearLayout) ((ScrollView) popupContent).getChildAt(0)
                    : (LinearLayout) popupContent;
            assertEquals(4, menu.getChildCount());
            for (int index = 0; index < 4; index++) {
                LinearLayout item = (LinearLayout) menu.getChildAt(index);
                assertEquals(labels[index], ((android.widget.TextView) item.getChildAt(1))
                        .getText().toString());
                assertEquals(ContentRegistry.mediaSourceIcon(labels[index]),
                        field(item.getChildAt(0), "iconKey"));
            }
            menu.getChildAt(0).performClick();
            assertEquals("source switched before real snapshot", "本机音乐",
                    fixture.store.snapshot().mediaSource);
            android.animation.ValueAnimator closing = (android.animation.ValueAnimator)
                    field(fixture.renderer, "popupAnimator");
            assertNotNull(closing);
            closing.setCurrentPlayTime(90L);
            assertTrue("menu closing midpoint", popup.getContentView().getAlpha() > 0.0f
                    && popup.getContentView().getAlpha() < 1.0f);
            closing.setCurrentPlayTime(180L);
            idle(200);
            assertNull("menu closing animation not released", field(fixture.renderer, "activePopup"));
            ((View) field(fixture.renderer, "sourceButton")).performClick();
            fixture.renderer.pause();
            assertNull(field(fixture.renderer, "activePopup"));
        } finally {
            fixture.close();
        }
    }

    @Test
    public void downwardShadowAndActiveSeatIconsRemainVisible() throws Exception {
        Fixture fixture = new Fixture(141, 1f);
        try {
            fixture.layout(640);
            View tile = ((List<View>) field(fixture.renderer, "shortcutTiles")).get(0);
            assertEquals(0f, tile.getElevation(), 0f);
            android.graphics.drawable.Drawable background = tile.getBackground();
            background.setBounds(20, 20, 120, 120);
            Bitmap shadow = Bitmap.createBitmap(140, 140, Bitmap.Config.ARGB_8888);
            background.draw(new Canvas(shadow));
            assertEquals("shadow must have no horizontal offset", shadow.getPixel(18, 70),
                    shadow.getPixel(121, 70));
            assertTrue("bottom shadow must exceed top shadow",
                    android.graphics.Color.alpha(shadow.getPixel(70, 122))
                    > android.graphics.Color.alpha(shadow.getPixel(70, 17)));
            shadow.recycle();
            for (String seat : new String[]{"ventilation", "heating", "massage"}) {
                ContentIconView icon = new ContentIconView(fixture.host.getContext());
                icon.setIcon(seat);
                icon.setAvailable(true);
                icon.layout(0, 0, 64, 64);
                for (int mode : new int[]{ContentState.THEME_LIGHT, ContentState.THEME_DARK}) {
                    icon.setThemeMode(mode);
                    int foreground = mode == ContentState.THEME_LIGHT ? 0xff27303b : 0xfff4f6fa;
                    icon.setColors(foreground, foreground);
                    for (int level = 0; level <= 3; level++) {
                        icon.setLevel(level);
                        Bitmap image = Bitmap.createBitmap(64, 64, Bitmap.Config.ARGB_8888);
                        icon.draw(new Canvas(image));
                        int visible = 0;
                        for (int y = 0; y < 64; y++) for (int x = 0; x < 64; x++) {
                            int pixel = image.getPixel(x, y);
                            if (android.graphics.Color.alpha(pixel) > 50
                                    && Math.abs(android.graphics.Color.red(pixel)
                                    - android.graphics.Color.red(foreground)) < 20) visible++;
                        }
                        assertTrue(seat + " level " + level + " lost theme contrast", visible > 100);
                        image.recycle();
                    }
                }
            }
            fixture.store.setPageIndex(0);
            replacePort(fixture.store, "vehiclePort", new AcceptVehiclePort());
            fixture.store.acceptVehicleSnapshot(vehicle(true, 0));
            tile.performClick();
            assertEquals(ContentRegistry.Shortcuts.SEAT_VENTILATION,
                    fixture.store.snapshot().pendingVehicleCommand);
            ContentIconView clickedIcon = (ContentIconView) ((LinearLayout) tile).getChildAt(0);
            assertEquals(fixture.store.snapshot().pendingSeatLevel, field(clickedIcon, "level"));
            android.graphics.drawable.Drawable clickedDrawable =
                    (android.graphics.drawable.Drawable) field(clickedIcon, "stableDrawable");
            assertNotNull(clickedDrawable.getColorFilter());
            idle(260);
            fixture.saveFrame("ventilation-pressed-visible");
        } finally {
            fixture.close();
        }
    }

    @Test
    public void contentPanelDensityDoesNotMutateMapContext() throws Exception {
        Fixture fixture = new Fixture(265, 1.0f);
        try {
            int mapDpi = fixture.host.getResources().getDisplayMetrics().densityDpi;
            assertEquals(265, mapDpi);
            android.content.Context panel = ContentRuntime.contentContext(fixture.host.getContext());
            assertEquals(Resources.getSystem().getDisplayMetrics().densityDpi,
                    panel.getResources().getDisplayMetrics().densityDpi);
            assertEquals(mapDpi, fixture.host.getResources().getDisplayMetrics().densityDpi);
        } finally {
            fixture.close();
        }
    }

    @Test
    public void systemSlidersRemainSeparateFromSeatCommands() throws Exception {
        Fixture fixture = new Fixture();
        try {
            fixture.layout(640);
            fixture.store.setPageIndex(0);
            idle(260);
            ContentSystemSlider brightness = (ContentSystemSlider)
                    field(fixture.renderer, "brightnessSlider");
            ContentSystemSlider volume = (ContentSystemSlider)
                    field(fixture.renderer, "volumeSlider");
            assertTrue(brightness.getHeight() > brightness.getWidth());
            assertEquals(brightness.getWidth(), volume.getWidth());
            assertTrue(brightness.getContentDescription().toString().startsWith("亮度"));
            assertTrue(volume.getContentDescription().toString().startsWith("音量"));
            assertNotNull(((android.widget.ImageView) brightness.getChildAt(2)).getDrawable());
            assertNotNull(((android.widget.ImageView) volume.getChildAt(2)).getDrawable());
            AcceptVehiclePort port = new AcceptVehiclePort();
            replacePort(fixture.store, "vehiclePort", port);
            fixture.store.acceptVehicleSnapshot(vehicleMassage(0));
            assertEquals(0, port.seatRequests);
            fixture.store.cycleSeatLevel(ContentRegistry.Shortcuts.SEAT_MASSAGE);
            assertEquals(1, port.seatRequests);
            assertEquals(ContentRegistry.Shortcuts.SEAT_MASSAGE,
                    fixture.store.snapshot().pendingVehicleCommand);
        } finally {
            fixture.close();
        }
    }

    private static ContentPorts.VehicleSnapshot vehicleMassage(int level) {
        return new ContentPorts.VehicleSnapshot(true, false, 25.0f, 70, 366,
                ContentState.CHARGE_DEFAULT, 0, 0, 0, Float.NaN, -1,
                0, 0, level, -1, true, level > 0, true, true, true);
    }

    @Test
    public void svgNarrowViewportKeepsLargeTilesAndSlider() throws Exception {
        Fixture fixture = new Fixture();
        try {
            fixture.store.setPageIndex(0);
            for (int width : new int[]{640, 580, 420}) {
                fixture.layout(width);
                LinearLayout first = (LinearLayout) field(fixture.renderer, "shortcutsRow");
                LinearLayout overflow = (LinearLayout) field(fixture.renderer, "shortcutOverflowRow");
                int columns = width == 420 ? 2 : 3;
                assertEquals(columns, first.getChildCount());
                assertEquals(Math.min(columns, 5 - columns), overflow.getChildCount());
                assertEquals(Math.max(0, 5 - 2 * columns),
                        ((LinearLayout) field(fixture.renderer, "shortcutLastRow")).getChildCount());
                for (int index = 0; index < first.getChildCount(); index++) {
                    assertTrue("shortcut below minimum touch size", first.getChildAt(index).getWidth() >= 128);
                    assertTrue("shortcut crosses content edge", first.getChildAt(index).getRight() <= width);
                }
                View brightness = (View) field(fixture.renderer, "brightnessSlider");
                View volume = (View) field(fixture.renderer, "volumeSlider");
                assertTrue("brightness below minimum touch size", brightness.getWidth() >= 128);
                assertTrue("volume crosses content edge", volume.getRight() <= width);
            }
        } finally {
            fixture.close();
        }
    }

    @Test
    public void svgTilePressPageControlThemeAndSeatTimelines() throws Exception {
        Fixture fixture = new Fixture();
        try {
            fixture.layout(640);
            ((ContentPorts.VehiclePort) field(fixture.store, "vehiclePort")).stop();
            replacePort(fixture.store, "vehiclePort", new AcceptVehiclePort());
            fixture.store.acceptVehicleSnapshot(vehicleMassage(0));
            fixture.store.acceptVehicleSnapshot(vehicleMassage(3));
            View tile = (View) ((LinearLayout) field(fixture.renderer, "shortcutsRow")).getChildAt(2);
            Map<?, ?> bindings = (Map<?, ?>) field(fixture.renderer, "tileBindings");
            Object binding = bindings.get(ContentRegistry.Shortcuts.SEAT_MASSAGE);
            android.animation.ValueAnimator selection = (android.animation.ValueAnimator)
                    field(binding, "selectionAnimator");
            assertNotNull("selected square has no animation", selection);
            assertEquals(0.82f, tile.getAlpha(), 0.02f);
            selection.setCurrentPlayTime(130L);
            assertTrue("selected square midpoint", tile.getAlpha() > 0.82f && tile.getAlpha() < 1.0f);
            assertEquals(260L, selection.getDuration());
            selection.setCurrentPlayTime(260L);
            assertEquals(1.0f, tile.getAlpha(), 0.01f);
            touch(tile, MotionEvent.ACTION_DOWN, tile.getWidth() / 2, tile.getHeight() / 2, 0);
            Map<?, ?> presses = (Map<?, ?>) field(fixture.renderer, "pressAnimators");
            android.animation.ValueAnimator pressed = (android.animation.ValueAnimator) presses.get(tile);
            assertNotNull(pressed);
            assertEquals(200L, pressed.getDuration());
            pressed.setCurrentPlayTime(100L);
            assertTrue("press midpoint", tile.getScaleX() < 1.0f && tile.getScaleX() > 0.96f);
            pressed.setCurrentPlayTime(200L);
            assertEquals(0.96f, tile.getScaleX(), 0.01f);
            touch(tile, MotionEvent.ACTION_CANCEL, tile.getWidth() / 2, tile.getHeight() / 2, 50);
            android.animation.ValueAnimator released = (android.animation.ValueAnimator) presses.get(tile);
            assertNotNull(released);
            assertEquals(240L, released.getDuration());
            released.setCurrentPlayTime(120L);
            assertTrue("release midpoint", tile.getScaleX() > 0.96f && tile.getScaleX() < 1.0f);
            released.setCurrentPlayTime(240L);
            assertEquals(1.0f, tile.getScaleX(), 0.01f);
            fixture.store.setPageIndex(0);
            idle(230);
            fixture.store.setPageIndex(1);
            android.animation.ValueAnimator page = (android.animation.ValueAnimator)
                    field(fixture.renderer, "pageSnapAnimator");
            assertNotNull("page did not snap", page);
            assertEquals(700L, page.getDuration());
            page.setCurrentPlayTime(350L);
            HorizontalScrollView pages = (HorizontalScrollView) field(fixture.renderer, "pageScroller");
            assertTrue("page midpoint", pages.getScrollX() > 0 && pages.getScrollX() < 640);
            page.setCurrentPlayTime(700L);
            assertEquals(640, pages.getScrollX());
            fixture.store.setControlIndex(1);
            android.animation.ValueAnimator control = (android.animation.ValueAnimator)
                    field(fixture.renderer, "controlSnapAnimator");
            assertNotNull("control did not snap", control);
            assertEquals(700L, control.getDuration());
            control.setCurrentPlayTime(350L);
            HorizontalScrollView controls = (HorizontalScrollView) field(fixture.renderer, "controlScroller");
            assertTrue("control midpoint", controls.getScrollX() > 0 && controls.getScrollX() < 640);
            control.setCurrentPlayTime(700L);
            assertEquals(640, controls.getScrollX());
            fixture.store.setThemeMode(ContentState.THEME_DARK);
            android.animation.ValueAnimator theme = (android.animation.ValueAnimator)
                    field(fixture.renderer, "themeAnimator");
            assertNotNull(theme);
            assertEquals(700L, theme.getDuration());
            theme.setCurrentPlayTime(350L);
            int shade = ((ContentTheme) field(fixture.renderer, "theme")).background;
            assertNotEquals(ContentTheme.light().background, shade);
            assertNotEquals(ContentTheme.dark().background, shade);
            theme.setCurrentPlayTime(700L);
            assertEquals(ContentTheme.dark().background,
                    ((ContentTheme) field(fixture.renderer, "theme")).background);
            fixture.renderer.pause();
            assertNull(field(fixture.renderer, "topTransitionAnimator"));
            assertTrue(((Map<?, ?>) field(fixture.renderer, "pressAnimators")).isEmpty());
        } finally {
            fixture.close();
        }
    }

    @Test
    public void iconNoReplayAndHiddenRelease() throws Exception {
        com.airbnb.lottie.LottieTask.EXECUTOR = Runnable::run;
        Fixture fixture = new Fixture();
        fixture.layout(640);
        fixture.store.acceptMediaSnapshot(media(false, null));
        ContentIconView mediaPlay = (ContentIconView) field(fixture.renderer, "mediaPlayIcon");
        fixture.store.acceptMediaSnapshot(media(true, null));
        assertEquals("content_oem_ico_media_pause", field(mediaPlay, "resourceName"));
        assertNull("unmatched circular play animation must not run", field(mediaPlay, "loadingTask"));
        ContentIconView icon = (ContentIconView) ((android.widget.FrameLayout)
                field(fixture.renderer, "mediaNextButton")).getChildAt(0);
        assertTrue("fixture window not focused", icon.hasWindowFocus());
        icon.playAction();
        com.airbnb.lottie.LottieTask<?> current = (com.airbnb.lottie.LottieTask<?>) field(icon, "loadingTask");
        if (current != null && current.getResult() != null) {
            System.out.println("ICON result=" + current.getResult().getException());
        }
        for (int attempt = 0; attempt < 100 && !(Boolean) field(icon, "drawingAnimation"); attempt++) {
            Thread.sleep(10);
            Shadows.shadowOf(Looper.getMainLooper()).idle();
        }
        assertTrue("bundled OEM animation did not start", (Boolean) field(icon, "drawingAnimation"));
        int sequence = (Integer) field(icon, "loadSequence");
        fixture.store.acceptMediaSnapshot(media(true, null));
        assertEquals("snapshot replay restarted icon", sequence, field(icon, "loadSequence"));
        fixture.renderer.pause();
        assertFalse("Activity pause retained animation", (Boolean) field(icon, "drawingAnimation"));
        assertFalse((Boolean) field(icon, "animationVisible"));
        fixture.renderer.resume();
        idle(16);
        assertFalse("Activity resume replayed old transition", (Boolean) field(icon, "drawingAnimation"));
        fixture.store.setControlIndex(1);
        assertFalse("hidden card retained animation", (Boolean) field(icon, "drawingAnimation"));
        idle(280);
        fixture.store.setControlIndex(0);
        idle(280);
        assertFalse("return replayed past transition", (Boolean) field(icon, "drawingAnimation"));
        assertEquals("content_oem_ico_media_next", field(icon, "resourceName"));
        fixture.store.acceptMediaSnapshot(media(false, null));
        fixture.activityController.windowFocusChanged(false);
        assertFalse((Boolean) field(icon, "drawingAnimation"));
        fixture.close();
        assertNull("detached drawable retained composition", field(icon, "animatedDrawable"));
        assertNull("detached icon retained task listener", field(icon, "loadingTask"));
        System.out.println("ICON: bundled animation, state dedup, hidden-card stop, focus loss and destroy passed");
    }

    @Test
    public void drawBothThemesAndPages() throws Exception {
        Fixture fixture = new Fixture();
        fixture.layout(640);
        fixture.saveFrame("light-lyrics");
        fixture.store.setPageIndex(0);
        idle(280);
        fixture.saveFrame("light-shortcuts");
        fixture.store.setPageIndex(1);
        fixture.store.setThemeMode(ContentState.THEME_DARK);
        idle(300);
        fixture.saveFrame("dark-lyrics");
        fixture.store.setPageIndex(0);
        idle(280);
        fixture.saveFrame("dark-shortcuts");
        fixture.store.setControlIndex(1);
        idle(280);
        fixture.saveFrame("dark-climate-unavailable");
        fixture.store.setControlIndex(0);
        Bitmap artwork = Bitmap.createBitmap(64, 64, Bitmap.Config.ARGB_8888);
        artwork.eraseColor(0xff947a9f);
        fixture.store.acceptMediaSnapshot(media(true, artwork));
        Future<?> task = (Future<?>) field(fixture.renderer, "artworkTask");
        if (task != null) task.get(5, TimeUnit.SECONDS);
        idle(280);
        fixture.saveFrame("dark-shortcuts-cover");
        fixture.close();
        artwork.recycle();
        System.out.println("VISUAL: 6 host frames drawn from signed APK resources for inspection");
    }

    @Test
    public void drawVehicleDensityContentPanel() throws Exception {
        Fixture fixture = new Fixture(265, 1.0f);
        try {
            fixture.layout(640);
            assertEquals(265.0f / 160.0f,
                    fixture.host.getResources().getDisplayMetrics().density, 0.001f);
            fixture.saveFrame("vehicle-system-212-app-265-light-lyrics");
            fixture.store.setPageIndex(0);
            idle(280);
            fixture.saveFrame("vehicle-system-212-app-265-light-shortcuts");
            View mediaCard = ((List<View>) field(fixture.renderer, "controlCards")).get(0);
            View mediaSurface = ((android.view.ViewGroup) mediaCard).getChildAt(0);
            View dock = (View) field(fixture.renderer, "dockContainer");
            View mediaPlay = (View) field(fixture.renderer, "mediaPlayButton");
            View mediaNext = (View) field(fixture.renderer, "mediaNextButton");
            View source = (View) field(fixture.renderer, "sourceButton");
            int[] mediaLocation = new int[2];
            int[] surfaceLocation = new int[2];
            int[] dockLocation = new int[2];
            int[] playLocation = new int[2];
            int[] nextLocation = new int[2];
            int[] sourceLocation = new int[2];
            int[] hostLocation = new int[2];
            int[] timeLocation = new int[2];
            fixture.host.getLocationOnScreen(hostLocation);
            View time = (View) field(fixture.renderer, "timeText");
            time.getLocationOnScreen(timeLocation);
            mediaCard.getLocationOnScreen(mediaLocation);
            mediaSurface.getLocationOnScreen(surfaceLocation);
            dock.getLocationOnScreen(dockLocation);
            mediaPlay.getLocationOnScreen(playLocation);
            mediaNext.getLocationOnScreen(nextLocation);
            source.getLocationOnScreen(sourceLocation);
            assertEquals(320, timeLocation[0] - hostLocation[0] + time.getWidth() / 2, 4);
            assertEquals(20, surfaceLocation[0] - hostLocation[0], 4);
            assertEquals(620, surfaceLocation[0] + mediaSurface.getWidth() - hostLocation[0], 4);
            assertEquals(832, surfaceLocation[1] - hostLocation[1], 4);
            assertEquals(952, surfaceLocation[1] + mediaSurface.getHeight() - hostLocation[1], 4);
            assertEquals(968, dockLocation[1] - hostLocation[1], 4);
            assertEquals(1068, dockLocation[1] + dock.getHeight() - hostLocation[1], 4);
            assertEquals(12, dockLocation[0] - hostLocation[0], 4);
            assertEquals(628, dockLocation[0] + dock.getWidth() - hostLocation[0], 4);
            System.out.println("VISUAL ANCHORS center="
                    + (timeLocation[0] - hostLocation[0] + time.getWidth() / 2)
                    + " media=(" + (surfaceLocation[0] - hostLocation[0])
                    + "," + (surfaceLocation[1] - hostLocation[1]) + ","
                    + (surfaceLocation[0] + mediaSurface.getWidth() - hostLocation[0])
                    + "," + (surfaceLocation[1] + mediaSurface.getHeight() - hostLocation[1])
                    + ") dock=(" + (dockLocation[0] - hostLocation[0])
                    + "," + (dockLocation[1] - hostLocation[1]) + ","
                    + (dockLocation[0] + dock.getWidth() - hostLocation[0]) + ","
                    + (dockLocation[1] + dock.getHeight() - hostLocation[1]) + ")");
            assertTrue("media controls must share the artwork row",
                    Math.abs(playLocation[1] - nextLocation[1]) <= 4
                    && Math.abs(playLocation[1] - sourceLocation[1]) <= 4);
            assertEquals("two pages must remain accessible", "第 1 页，共 2 页",
                    ((View) field(fixture.renderer, "pageScroller")).getContentDescription());
            assertEquals("five real square controls", 5,
                    ((List<View>) field(fixture.renderer, "shortcutTiles")).size());
            assertNoVisibleText(fixture.host, "设置暂不可用");
            replacePort(fixture.store, "vehiclePort", new AcceptVehiclePort());
            fixture.store.acceptVehicleSnapshot(new ContentPorts.VehicleSnapshot(true, false,
                    25.0f, 70, 366, ContentState.CHARGE_DEFAULT, 0, 0, 0, Float.NaN, -1,
                    0, 1, 0, -1, true, false, true, true, true));
            idle(250);
            fixture.layout(640);
            fixture.saveFrame("vehicle-system-212-app-265-light-shortcuts-state-fixture");
            View selectedTile = ((List<View>) field(fixture.renderer, "shortcutTiles")).get(1);
            assertEquals("selected card stays white", 0xffffffff,
                    ((android.graphics.drawable.GradientDrawable) selectedTile.getBackground())
                            .getColor().getDefaultColor());
            source.performClick();
            PopupWindow popup = (PopupWindow) field(fixture.renderer, "activePopup");
            assertNotNull(popup);
            fixture.saveFrameWithPopup("vehicle-system-212-app-265-light-shortcuts-source-open",
                    popup, source);
            popup.dismiss();
            fixture.saveFrame("vehicle-system-212-app-265-full-canvas", 1920);
            assertEquals(640, fixture.host.getWidth());
            assertEquals(1080, fixture.host.getHeight());
        } finally {
            fixture.close();
        }
        Fixture directDensityFixture = new Fixture(212, 1.0f);
        try {
            directDensityFixture.layout(640);
            directDensityFixture.store.setPageIndex(0);
            idle(280);
            directDensityFixture.saveFrame("vehicle-app-212-light-shortcuts");
        } finally {
            directDensityFixture.close();
        }
        System.out.println("VISUAL: 1920x1080 screen, 640x1080 panel, 212dpi system / 265dpi app; 212dpi app comparison");
    }

    @Test
    public void draw141DpiContentPanel() throws Exception {
        Fixture directDensityFixture = new Fixture(141, 1.0f);
        try {
            directDensityFixture.layout(640);
            directDensityFixture.store.setPageIndex(0);
            idle(280);
            assertEquals(141, directDensityFixture.host.getResources().getDisplayMetrics().densityDpi);
            directDensityFixture.saveFrame("vehicle-app-141-light-shortcuts");
            directDensityFixture.saveFrame("vehicle-app-141-full-canvas", 1920);
        } finally {
            directDensityFixture.close();
        }
        Fixture scaledDensityFixture = new Fixture(176, 1.0f);
        try {
            scaledDensityFixture.layout(640);
            scaledDensityFixture.store.setPageIndex(0);
            idle(280);
            assertEquals(176, scaledDensityFixture.host.getResources().getDisplayMetrics().densityDpi);
            scaledDensityFixture.saveFrame("vehicle-system-141-app-176-light-shortcuts");
            scaledDensityFixture.saveFrame("vehicle-system-141-app-176-full-canvas", 1920);
        } finally {
            scaledDensityFixture.close();
        }
        System.out.println("VISUAL: 1920x1080 screen, 640x1080 panel, direct 141dpi and 141dpi system / 176dpi app");
    }

    @Test
    public void draw176DpiContentPanel() throws Exception {
        Fixture directDensityFixture = new Fixture(176, 1.0f);
        try {
            directDensityFixture.layout(640);
            directDensityFixture.store.setPageIndex(0);
            idle(280);
            directDensityFixture.saveFrame("vehicle-app-176-light-shortcuts");
        } finally {
            directDensityFixture.close();
        }
        Fixture convertedDensityFixture = new Fixture(220, 1.0f);
        try {
            convertedDensityFixture.layout(640);
            convertedDensityFixture.store.setPageIndex(0);
            idle(280);
            convertedDensityFixture.saveFrame("vehicle-system-176-app-220-light-shortcuts");
        } finally {
            convertedDensityFixture.close();
        }
        System.out.println("VISUAL: direct 176dpi and 176dpi system / 220dpi app");
    }

    private static ContentPorts.MediaSnapshot media(boolean playing, Bitmap artwork) {
        return new ContentPorts.MediaSnapshot(true, false, "本机", playing, 1,
                "fixture-title", "fixture-artist", true, true, artwork);
    }

    private static ContentPorts.VehicleSnapshot vehicle(boolean locked, int ventilation) {
        return new ContentPorts.VehicleSnapshot(true, false, 25.0f, 70, 370,
                ContentState.CHARGE_PLUGGED, 1, 0, 0, Float.NaN, -1,
                ventilation, 0, 0, -1, true, false, true, true, locked);
    }

    private static void replacePort(ContentStore store, String name, Object port) throws Exception {
        Field field = ContentStore.class.getDeclaredField(name);
        field.setAccessible(true);
        field.set(store, port);
    }

    private static final class AcceptVehiclePort implements ContentPorts.VehiclePort {
        private int seatRequests;
        private int lastSeatLevel = -1;
        private boolean acceptSeat = true;
        private ContentStore immediateStore;
        private ContentPorts.VehicleSnapshot immediateSnapshot;
        @Override public boolean isAvailable() { return true; }
        @Override public boolean isLockAvailable() { return true; }
        @Override public boolean requestLock(boolean locked, long requestId) { return true; }
        @Override public boolean requestSeatLevel(String seatId, int level, long requestId) {
            seatRequests++;
            lastSeatLevel = level;
            if (immediateStore != null && immediateSnapshot != null) {
                immediateStore.acceptVehicleSnapshot(immediateSnapshot);
                immediateSnapshot = null;
            }
            return acceptSeat;
        }
        @Override public void start(ContentPorts.VehicleSnapshotListener listener) { }
        @Override public void stop() { }
    }

    private static final class AcceptMediaPort implements ContentPorts.MediaPort {
        private boolean accept = true;
        @Override public boolean isAvailable() { return true; }
        @Override public boolean requestPlayback(boolean playing) { return accept; }
        @Override public boolean requestNext() { return accept; }
        @Override public boolean requestSource(String source) { return accept; }
        @Override public void start(ContentPorts.MediaSnapshotListener listener) { }
        @Override public void stop() { }
    }

    private static Object field(Object owner, String name) throws Exception {
        Field field = owner.getClass().getDeclaredField(name);
        field.setAccessible(true);
        return field.get(owner);
    }

    private static void idle(long millis) {
        Shadows.shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(millis));
    }

    private static void assertNoVisibleText(View view, String forbidden) {
        if (view instanceof android.widget.TextView && view.getVisibility() == View.VISIBLE) {
            assertFalse(((android.widget.TextView) view).getText().toString().contains(forbidden));
        }
        if (view instanceof android.view.ViewGroup) {
            android.view.ViewGroup group = (android.view.ViewGroup) view;
            for (int index = 0; index < group.getChildCount(); index++) {
                assertNoVisibleText(group.getChildAt(index), forbidden);
            }
        }
    }

    private static void touch(View target, int action, float positionX, float positionY, long offset) {
        MotionEvent event = MotionEvent.obtain(1000, 1000 + offset, action, positionX, positionY, 0);
        target.dispatchTouchEvent(event);
        event.recycle();
    }

    private static final class Fixture {
        private final ActivityController<Activity> activityController;
        private final FrameLayout host;
        private final ContentStore store;
        private final ContentRenderer renderer;

        private Fixture() throws Exception {
            this(320, 1.0f);
        }

        private Fixture(int appDensityDpi, float fontScale) throws Exception {
            activityController = Robolectric.buildActivity(Activity.class).setup().visible().windowFocusChanged(true);
            Activity activity = activityController.get();
            final Resources original = activity.getResources();
            DisplayMetrics metrics = new DisplayMetrics();
            metrics.setTo(original.getDisplayMetrics());
            metrics.widthPixels = 1920;
            metrics.heightPixels = 1080;
            metrics.density = appDensityDpi / 160.0f;
            metrics.scaledDensity = metrics.density * fontScale;
            metrics.densityDpi = appDensityDpi;
            final AssetManager assets = new AssetManager();
            String apk = System.getProperty("golden.apk");
            assertTrue(new File(apk).isFile());
            AssetManager.class.getMethod("addAssetPath", String.class).invoke(assets, apk);
            assertTrue(assets.open("content-oem/ico_media_play_02_f.json").read() >= 0);
            assertTrue(assets.open("content-fonts/Manrope[wght].ttf").read() >= 0);
            Configuration geometryConfiguration = new Configuration(original.getConfiguration());
            geometryConfiguration.densityDpi = appDensityDpi;
            geometryConfiguration.fontScale = fontScale;
            geometryConfiguration.screenWidthDp = Math.round(metrics.widthPixels / metrics.density);
            geometryConfiguration.screenHeightDp = Math.round(metrics.heightPixels / metrics.density);
            final Resources geometryResources = new Resources(assets, metrics, geometryConfiguration);
            assertNotEquals(0, geometryResources.getIdentifier("content_oem_ico_media_play", "drawable",
                    "com.autonavi.amapautolite"));
            Context context = new ContextWrapper(activity) {
                @Override public Resources getResources() { return geometryResources; }
                @Override public AssetManager getAssets() { return assets; }
                @Override public Context getApplicationContext() { return this; }
                @Override public String getPackageName() { return "com.autonavi.amapautolite"; }
                @Override public Object getSystemService(String name) {
                    if (Context.AUDIO_SERVICE.equals(name)) return null;
                    return super.getSystemService(name);
                }
            };
            host = new FrameLayout(context);
            activity.setContentView(host);
            store = new ContentStore(context);
            renderer = new ContentRenderer(context, host, store, ContentState.THEME_LIGHT);
            renderer.build();
        }

        private void layout(int width) {
            renderer.updateDivider(width, 640, 1920 - width);
            for (int attempt = 0; attempt < 2; attempt++) {
                host.measure(View.MeasureSpec.makeMeasureSpec(width, View.MeasureSpec.EXACTLY),
                        View.MeasureSpec.makeMeasureSpec(1080, View.MeasureSpec.EXACTLY));
                host.layout(0, 0, width, 1080);
                Shadows.shadowOf(Looper.getMainLooper()).idle();
            }
        }

        private void close() {
            renderer.destroy();
            activityController.pause().stop().destroy();
        }

        private void saveFrame(String name) throws Exception {
            saveFrame(name, host.getWidth());
        }

        private void saveFrame(String name, int canvasWidth) throws Exception {
            saveFrame(name, canvasWidth, null, null);
        }

        private void saveFrameWithPopup(String name, PopupWindow popup, View anchor) throws Exception {
            saveFrame(name, host.getWidth(), popup, anchor);
        }

        private void saveFrame(String name, int canvasWidth, PopupWindow popup, View anchor)
                throws Exception {
            host.measure(View.MeasureSpec.makeMeasureSpec(host.getWidth(), View.MeasureSpec.EXACTLY),
                    View.MeasureSpec.makeMeasureSpec(1080, View.MeasureSpec.EXACTLY));
            host.layout(0, 0, host.getWidth(), 1080);
            Bitmap image = Bitmap.createBitmap(canvasWidth, host.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(image);
            host.draw(canvas);
            if (popup != null) {
                View menu = popup.getContentView();
                int menuWidth = popup.getWidth();
                int menuHeight = popup.getHeight();
                menu.measure(View.MeasureSpec.makeMeasureSpec(menuWidth, View.MeasureSpec.EXACTLY),
                        View.MeasureSpec.makeMeasureSpec(menuHeight, View.MeasureSpec.EXACTLY));
                menu.layout(0, 0, menuWidth, menuHeight);
                int[] anchorLocation = new int[2];
                int[] hostLocation = new int[2];
                anchor.getLocationOnScreen(anchorLocation);
                host.getLocationOnScreen(hostLocation);
                int menuX = Math.max(16, Math.min(host.getWidth() - menuWidth - 16,
                        anchorLocation[0] - hostLocation[0] + anchor.getWidth() - menuWidth));
                int menuY = Math.max(16, anchorLocation[1] - hostLocation[1] - menuHeight - 13);
                canvas.save();
                canvas.translate(menuX, menuY);
                menu.draw(canvas);
                canvas.restore();
            }
            if (canvasWidth > host.getWidth()) {
                assertEquals(0, image.getPixel(host.getWidth() + 1, host.getHeight() / 2));
            }
            File frames = new File("target/frames");
            assertTrue(frames.mkdirs() || frames.isDirectory());
            File output = new File(frames, "golden-" + name + ".png");
            try (FileOutputStream stream = new FileOutputStream(output)) {
                assertTrue(image.compress(Bitmap.CompressFormat.PNG, 100, stream));
            }
            image.recycle();
            System.out.println("VISUAL FRAME " + output.getAbsolutePath());
        }
    }
}
