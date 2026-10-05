package com.icar03.content.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.WindowManager
import androidx.compose.runtime.SideEffect
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import androidx.compose.foundation.layout.width
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File

/**
 * First-layer visual contract for the supplied prototype. These tests capture actual
 * Compose Android views; they do not approve subjective visual quality by themselves.
 */
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
open class ContentPanelLightPrototypeRenderTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    private val hostTag = "prototype-render-host"
    private val events = mutableListOf<ContentEvent>()

    @Test
    fun light_default_matches_required_structure_and_captures_640x1080() {
        compose.setContent {
            val view = LocalView.current
            @Suppress("DEPRECATION")
            SideEffect {
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility =
                    View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            ContentTheme(dark) {
                ContentPanel(previewState().copy(dark = dark), onEvent = { events += it }, modifier = Modifier.testTag(hostTag))
            }
        }
        compose.waitForIdle()
        compose.onNodeWithTag(hostTag).assertWidthIsEqualTo(640.dp).assertHeightIsEqualTo(1080.dp)
        val time = compose.onNodeWithTag("top-time").getUnclippedBoundsInRoot()
        assertTrue("time must start at 12dp, not the old geometry center: $time", kotlin.math.abs(time.left.value - 12f) <= 1f)
        val media = compose.onNodeWithTag("media-card").getUnclippedBoundsInRoot()
        assertTrue("media left/top/right/bottom must follow prototype: $media", kotlin.math.abs(media.left.value - 20f) <= 1f && kotlin.math.abs(media.top.value - 832f) <= 1f && kotlin.math.abs(media.right.value - 620f) <= 1f && kotlin.math.abs(media.bottom.value - 952f) <= 1f)
        val dock = compose.onNodeWithTag("floating-dock").getUnclippedBoundsInRoot()
        assertTrue("dock must float inside 12dp outer gap: $dock", kotlin.math.abs(dock.left.value - 12f) <= 1f && kotlin.math.abs(dock.top.value - 968f) <= 1f && kotlin.math.abs(dock.right.value - 628f) <= 1f && kotlin.math.abs(dock.bottom.value - 1068f) <= 1f)
        val lock = compose.onNodeWithTag("dock-Lock").getUnclippedBoundsInRoot()
        val ventilation = compose.onNodeWithTag("dock-Ventilation").getUnclippedBoundsInRoot()
        assertTrue("lock touch area must be larger than each dock slot", lock.right - lock.left > ventilation.right - ventilation.left && lock.bottom - lock.top >= 80.dp)
        compose.onNodeWithText("25°C").assertIsDisplayed()
        compose.onNodeWithText("12:24 星期三").assertIsDisplayed()
        compose.onNodeWithText("366km").assertIsDisplayed()
        compose.onNodeWithContentDescription("屏幕亮度").assertIsDisplayed()
        compose.onNodeWithContentDescription("媒体音量").assertIsDisplayed()
        compose.onNodeWithText("沿途的风").assertIsDisplayed()
        compose.onNodeWithContentDescription("播放").assertIsDisplayed().assertIsEnabled()
        compose.onNodeWithContentDescription("下一首").assertIsDisplayed().assertIsEnabled()
        compose.onNodeWithContentDescription("选择来源").assertIsDisplayed().assertIsEnabled()
        compose.onAllNodes(hasClickAction() and hasAnyAncestor(hasTestTag("floating-dock"))).assertCountEquals(6)
        DockShortcuts.items.forEach { id ->
            val node = compose.onNodeWithTag("dock-${id.name}").assertIsDisplayed()
            node.assertHasClickAction()
        }
        compose.onNodeWithContentDescription("快捷").assertDoesNotExist()

        compose.onNodeWithTag("shortcut-Settings").assertIsDisplayed().assertHasClickAction()
        val playBounds = compose.onNodeWithContentDescription("播放").getUnclippedBoundsInRoot()
        val nextBounds = compose.onNodeWithContentDescription("下一首").getUnclippedBoundsInRoot()
        assertTrue("media controls must have 80dp square touch areas", playBounds.right - playBounds.left >= 80.dp && playBounds.bottom - playBounds.top >= 80.dp && nextBounds.right - nextBounds.left >= 80.dp && nextBounds.bottom - nextBounds.top >= 80.dp)
        assertTrue("media controls must have a 12dp clear gap", nextBounds.left - playBounds.right >= 12.dp)
        val sourceBounds = compose.onNodeWithTag("source-button").getUnclippedBoundsInRoot()
        assertTrue("source gets a dedicated 96x120dp area", sourceBounds.right - sourceBounds.left == 96.dp && sourceBounds.bottom - sourceBounds.top == 120.dp)
        assertTrue("next and source retain separation", sourceBounds.left - nextBounds.right >= 12.dp)
        assertTrue("source remains inside media card", sourceBounds.right == media.right)
        compose.onNodeWithContentDescription("下一首").performClick()
        assertTrue(events.last() == ContentEvent.NextTrack)
        compose.onNodeWithContentDescription("播放").performClick()
        assertTrue(events.last() == ContentEvent.PlayPause)
        captureHost("prototype-ready")
    }

    @Test
    fun lyricsDataUsesTransparentWallpaperViewportAndActiveIndex() {
        val state = previewState().copy(
            page = PanelPage.Lyrics,
            lyrics = LyricsState(
                recordingKey = "demo-recording",
                lines = listOf(
                    LyricLine(0L, "第一句", "first"),
                    LyricLine(8_000L, "第二句", "second"),
                ),
                activeIndex = 1,
                timelineReady = true,
            ),
        )
        compose.setContent {
            ContentTheme(dark) {
                ContentPanel(state.copy(dark = dark), onEvent = { events += it }, modifier = Modifier.testTag(hostTag))
            }
        }
        compose.waitForIdle()
        compose.onNodeWithTag("wallpaper-lyrics").assertIsDisplayed()
        compose.waitUntil(5_000) {
            compose.onAllNodes(SemanticsMatcher.expectValue(LyricLayoutReady, true), useUnmergedTree = true)
                .fetchSemanticsNodes().isNotEmpty()
        }
        compose.onNode(SemanticsMatcher.expectValue(ActiveLyric, 1)).assertIsDisplayed()
        compose.onNodeWithText("暂无歌词").assertDoesNotExist()
        compose.onNodeWithText("此处仅预览歌词空态。").assertDoesNotExist()
    }

    @Test
    fun light_empty_state_keeps_prototype_geometry_and_disables_media() {
        compose.setContent {
            val view = LocalView.current
            @Suppress("DEPRECATION")
            SideEffect {
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility =
                    View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            ContentTheme(dark) {
                ContentPanel(previewState(PreviewScenario.NoData).copy(dark = dark), onEvent = { events += it }, modifier = Modifier.testTag(hostTag))
            }
        }
        compose.waitForIdle()
        compose.onNodeWithTag(hostTag).assertWidthIsEqualTo(640.dp).assertHeightIsEqualTo(1080.dp)
        compose.onNodeWithText("暂无媒体").assertIsDisplayed()
        compose.onNodeWithContentDescription("播放").assertIsNotEnabled()
        compose.onNodeWithContentDescription("选择来源").assertIsDisplayed().assertIsEnabled()
        captureHost("prototype-empty")
    }

    @Test
    fun lyrics_empty_without_song_never_shows_loading_copy() {
        val state = previewState(PreviewScenario.NoData).copy(
            page = PanelPage.Lyrics,
            previewMode = false,
            media = MediaState(title = null, artist = null, isSong = false, available = false),
            lyrics = LyricsState(loading = true),
        )
        compose.setContent {
            ContentTheme(dark) {
                ContentPanel(state.copy(dark = dark), onEvent = { events += it }, modifier = Modifier.testTag(hostTag))
            }
        }
        compose.waitForIdle()
        compose.onNodeWithTag("lyrics-empty").assertIsDisplayed()
        compose.onNodeWithText("暂无歌词").assertIsDisplayed()
        compose.onNodeWithText("正在匹配歌词…").assertDoesNotExist()
    }

    @Test
    fun necessary_loading_copy_is_centered_in_lyrics_region() {
        val state = previewState().copy(page = PanelPage.Lyrics, previewMode = true,
            media = MediaState(title = "合成正在匹配歌曲", isSong = true), lyrics = LyricsState(loading = true))
        compose.setContent {
            ContentTheme(dark) {
                val view = LocalView.current
                @Suppress("DEPRECATION")
                SideEffect {
                    view.context.activity().window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                    view.context.activity().window.decorView.systemUiVisibility =
                        View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                            View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                            View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
                }
                ContentPanel(state.copy(dark = dark), onEvent = { events += it }, modifier = Modifier.testTag(hostTag))
            }
        }
        compose.waitForIdle()
        val region = compose.onNodeWithTag("lyrics-empty").getUnclippedBoundsInRoot()
        val copy = compose.onNodeWithText("正在匹配歌词…").assertIsDisplayed().getUnclippedBoundsInRoot()
        assertTrue("loading copy must be horizontally centered in lyrics region", kotlin.math.abs(
            (copy.left.value + copy.right.value) / 2f - (region.left.value + region.right.value) / 2f) < 1f)
        assertTrue("loading copy must be vertically centered in lyrics region", kotlin.math.abs(
            (copy.top.value + copy.bottom.value) / 2f - (region.top.value + region.bottom.value) / 2f) < 1f)
        captureHost("lyrics-loading-centered", checkShortcutShadows = false)
    }

    @Test
    fun sources_open_select_and_dismiss_in_both_themes() {
        val state = androidx.compose.runtime.mutableStateOf(previewState().copy(dark = dark))
        compose.setContent {
            val view = LocalView.current
            @Suppress("DEPRECATION")
            SideEffect {
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility =
                    View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            ContentTheme(dark) {
                ContentPanel(state.value, onEvent = {
                    events += it
                    state.value = when (it) {
                        ContentEvent.OpenSources -> state.value.copy(sourcesOpen = true)
                        ContentEvent.DismissSheet -> state.value.copy(sourcesOpen = false)
                        is ContentEvent.SourceSelected -> state.value.copy(sourcesOpen = false)
                        else -> state.value
                    }
                }, modifier = Modifier.testTag(hostTag))
            }
        }
        compose.onNodeWithTag("source-button").performClick()
        compose.waitForIdle()
        assertTrue(events.last() == ContentEvent.OpenSources)
        val menu = compose.onNodeWithTag("sources-menu").getUnclippedBoundsInRoot()
        val media = compose.onNodeWithTag("media-card").getUnclippedBoundsInRoot()
        assertTrue("menu right aligned, above media, inside host: $menu", menu.right == media.right && menu.bottom <= media.top - 16.dp && menu.top >= 0.dp && menu.right - menu.left == 280.dp)
        MediaSource.entries.forEach { source ->
            compose.onNodeWithText(source.label).assertIsDisplayed()
            compose.onNodeWithTag("source-${source.name}").assertHeightIsEqualTo(80.dp).assertIsEnabled()
        }
        val cloudGroup = compose.onNodeWithTag("source-group-CloudMusic", useUnmergedTree = true).getUnclippedBoundsInRoot()
        assertTrue("longest icon+label group is horizontally centered", kotlin.math.abs((cloudGroup.left.value + cloudGroup.right.value) / 2 - (menu.left.value + menu.right.value) / 2) <= 1)
        MediaSource.entries.forEach { source ->
            val group = compose.onNodeWithTag("source-group-${source.name}", useUnmergedTree = true).getUnclippedBoundsInRoot()
            val label = compose.onNodeWithTag("source-label-${source.name}", useUnmergedTree = true).getUnclippedBoundsInRoot()
            assertTrue("source groups share one left starting point", kotlin.math.abs(group.left.value - cloudGroup.left.value) <= 1)
            assertTrue("source text must fit menu", label.right <= menu.right - 8.dp)
        }
        compose.onNodeWithTag("source-icon-AiMusic", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(OemTint, (if (dark) androidx.compose.ui.graphics.Color(0xFFE8E8E8) else androidx.compose.ui.graphics.Color(0xFF27303B)).value.toLong()))
        compose.onNodeWithTag("source-icon-AiMusic", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(OemResource, R.drawable.content_oem_ico_media_aiquting))
        compose.onNodeWithTag("source-Bluetooth").assertIsSelected()
        captureHost("prototype-sources")
        MediaSource.entries.forEach { source ->
            compose.onNodeWithTag("source-${source.name}").performClick()
            assertTrue(events.last() == ContentEvent.SourceSelected(source))
            compose.onNodeWithTag("sources-menu").assertDoesNotExist()
            compose.onNodeWithTag("source-button").performClick()
        }
        compose.onNodeWithTag("sources-dismiss").performTouchInput { click(androidx.compose.ui.geometry.Offset(10f, 10f)) }
        compose.onNodeWithTag("sources-menu").assertDoesNotExist()
        assertTrue(events.last() == ContentEvent.DismissSheet)
        compose.runOnIdle { state.value = state.value.copy(sourcesOpen = true, media = state.value.media.copy(available = false)) }
        MediaSource.entries.forEach { compose.onNodeWithTag("source-${it.name}").assertIsNotEnabled() }
        compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(available = true, targetSource = MediaSource.Usb)) }
        MediaSource.entries.forEach { compose.onNodeWithTag("source-${it.name}").assertIsNotEnabled() }
    }

    @Test
    fun runtime_panel_has_only_declared_controls_and_independent_media_capabilities() {
        val state = ContentUiState(
            previewMode = false, dark = dark, weekday = "", rangeUnit = "", time = "08:15",
            temperature = "--", range = "--", batteryDescription = "电量未知",
            controls = ControlId.entries.associateWith { ControlState(actual = -1, available = false, known = false) },
            brightness = LevelState(0f, available = false), volume = LevelState(.4f),
            media = MediaState(title = null, artist = null, available = false, playbackAvailable = false, nextAvailable = false, sourceAvailable = true),
        )
        compose.setContent {
            val view = LocalView.current
            @Suppress("DEPRECATION")
            SideEffect {
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            ContentTheme(dark) { ContentPanel(state, { events += it }, Modifier.testTag(hostTag)) }
        }
        ControlId.entries.forEach { compose.onNodeWithTag("control-${it.name}").assertIsDisplayed().assertIsNotEnabled() }
        compose.onAllNodesWithText("状态未知").assertCountEquals(0)
        ControlId.entries.forEach { id ->
            compose.onNodeWithTag("control-${id.name}").assert(SemanticsMatcher.expectValue(androidx.compose.ui.semantics.SemanticsProperties.StateDescription, "状态未知"))
        }

        compose.onNodeWithTag("shortcut-Settings").performClick()
        assertTrue(events.last() == ContentEvent.SettingsTapped)
        compose.onNodeWithTag("shortcut-label-Ventilation", useUnmergedTree = true).assertTextEquals("座椅通风")
        compose.onNodeWithText("08:15").assertIsDisplayed()
        compose.onNodeWithText("08:15星期三").assertDoesNotExist()
        compose.onNodeWithText("--km").assertDoesNotExist()
        compose.onNodeWithText("暂无媒体").assertIsDisplayed()
        compose.onNodeWithContentDescription("播放").assertIsNotEnabled()
        compose.onNodeWithContentDescription("下一首").assertIsNotEnabled()
        compose.onNodeWithTag("dock-Settings").performClick()
        assertTrue(events.last() == ContentEvent.SettingsTapped)
        compose.onNodeWithTag("source-button").performClick()
        assertTrue(events.last() == ContentEvent.OpenSources)
        compose.onNodeWithTag("volume-card").performTouchInput { click(androidx.compose.ui.geometry.Offset(width / 2f, height * .1f)) }
        assertTrue(events.last() is ContentEvent.VolumeChanged)
        compose.onNodeWithTag("volume-card").assert(SemanticsMatcher.expectValue(
            androidx.compose.ui.semantics.SemanticsProperties.ProgressBarRangeInfo,
            androidx.compose.ui.semantics.ProgressBarRangeInfo(.4f, 0f..1f)))
        captureHost("runtime-unavailable")
        compose.onNodeWithTag("runtime-pages").performTouchInput { swipeLeft() }
        compose.waitForIdle()
        assertTrue(events.contains(ContentEvent.PageSelected(PanelPage.Lyrics)))
        compose.onNodeWithText("暂无歌词").assertIsDisplayed()
        compose.onNodeWithText("此处仅预览歌词空态。").assertDoesNotExist()
    }

    @Test
    fun dockCountPreferenceKeepsBothFixedEndsAndCompleteTouchAreas() {
        val state = androidx.compose.runtime.mutableStateOf(previewState().copy(previewMode = false))
        mountInteractionState(state)
        val expected = mapOf(
            3 to listOf(ShortcutId.Lock, ShortcutId.Wiper, ShortcutId.Settings),
            4 to listOf(ShortcutId.Lock, ShortcutId.Wiper, ShortcutId.Ventilation, ShortcutId.Settings),
            5 to listOf(ShortcutId.Lock, ShortcutId.Wiper, ShortcutId.Ventilation, ShortcutId.Heating, ShortcutId.Settings),
            6 to listOf(ShortcutId.Lock, ShortcutId.Wiper, ShortcutId.Ventilation, ShortcutId.Heating, ShortcutId.Massage, ShortcutId.Settings),
        )
        val originalDock = compose.onNodeWithTag("floating-dock").getUnclippedBoundsInRoot()
        for (count in listOf(3, 4, 5, 6, 3)) {
            compose.runOnIdle { state.value = state.value.copy(dockButtonCount = count) }
            compose.waitForIdle()
            val items = expected.getValue(count)
            compose.onAllNodes(hasClickAction() and hasAnyAncestor(hasTestTag("floating-dock"))).assertCountEquals(count)
            DockShortcuts.items.forEach { id ->
                val node = compose.onNodeWithTag("dock-${id.name}")
                if (id in items) {
                    val bounds = node.assertIsDisplayed().assertHasClickAction().getUnclippedBoundsInRoot()
                    assertTrue("Dock $count/$id retains a complete 48dp target", bounds.right - bounds.left >= 48.dp && bounds.bottom - bounds.top >= 48.dp)
                } else node.assertDoesNotExist()
            }
            val dock = compose.onNodeWithTag("floating-dock").getUnclippedBoundsInRoot()
            val lock = compose.onNodeWithTag("dock-Lock").getUnclippedBoundsInRoot()
            val settings = compose.onNodeWithTag("dock-Settings").getUnclippedBoundsInRoot()
            assertEquals("count changes retain the Dock surface", originalDock, dock)
            assertEquals("lock remains at the left edge", dock.left, lock.left)
            assertEquals("settings remains at the right edge", dock.right, settings.right)
            assertTrue(lock.right < settings.left)
            compose.onNodeWithTag("dock-Settings").performClick()
            assertTrue(events.last() == ContentEvent.SettingsTapped)
        }
        compose.onNodeWithTag("control-Heating").assertIsDisplayed()
        compose.onNodeWithTag("shortcut-Settings").assertIsDisplayed()
    }

    @Test
    fun hidingSourcePreferenceRemovesBothEntrancesWithoutMovingTheEmptyCopy() {
        val state = androidx.compose.runtime.mutableStateOf(previewState().copy(
            previewMode = false, page = PanelPage.Lyrics, media = MediaState(isSong = false)))
        mountInteractionState(state)
        compose.onNodeWithTag("source-button").assertIsDisplayed().assertIsEnabled()
        compose.onNodeWithTag("lyrics-source-action").assertIsDisplayed().assertIsEnabled()
        val copyBounds = compose.onNodeWithTag("lyrics-empty-copy").getUnclippedBoundsInRoot()
        val mediaBounds = compose.onNodeWithTag("media-card").getUnclippedBoundsInRoot()
        compose.runOnIdle { state.value = state.value.copy(showMediaSourceSwitcher = false) }
        compose.waitForIdle()
        compose.onNodeWithTag("source-button").assertDoesNotExist()
        compose.onNodeWithTag("lyrics-source-action").assertDoesNotExist()
        compose.onNodeWithContentDescription("选择来源").assertDoesNotExist()
        compose.onNodeWithTag("lyrics-empty-copy").assertTextEquals("暂无歌词")
        assertEquals("the optional action cannot shift the centered text", copyBounds,
            compose.onNodeWithTag("lyrics-empty-copy").getUnclippedBoundsInRoot())
        assertEquals(mediaBounds, compose.onNodeWithTag("media-card").getUnclippedBoundsInRoot())
        compose.onNodeWithTag("media-play").assertIsEnabled().performClick()
        assertTrue(events.last() == ContentEvent.PlayPause)
        compose.onNodeWithTag("media-next").assertIsEnabled().performClick()
        assertTrue(events.last() == ContentEvent.NextTrack)

        compose.runOnIdle { state.value = state.value.copy(showMediaSourceSwitcher = true) }
        compose.waitForIdle()
        for (tag in listOf("source-button", "lyrics-source-action")) {
            compose.onNodeWithTag(tag).assertIsDisplayed().assertIsEnabled().performClick()
            assertTrue("restored $tag uses the shared source event", events.last() == ContentEvent.OpenSources)
        }
        assertEquals(copyBounds, compose.onNodeWithTag("lyrics-empty-copy").getUnclippedBoundsInRoot())
    }

    @Test
    fun topBarPreferencesChangeTheDefaultClockAndOptionalReadings() {
        val state = androidx.compose.runtime.mutableStateOf(previewState().copy(
            previewMode = false, time = "12:24:31", weekday = "星期三", temperature = "25°",
            chargeStatus = "已插枪", batteryPercent = 80))
        mountInteractionState(state)
        compose.onNodeWithTag("top-time").assertTextEquals("12:24 星期三")
        compose.onNodeWithTag("top-temperature").assertTextEquals("25°C")
        compose.onNodeWithTag("top-battery", useUnmergedTree = true).assertIsDisplayed()
        compose.onNodeWithTag("charge-status").assertTextEquals("已插枪")
        val originalTimeLeft = compose.onNodeWithTag("top-time").getUnclippedBoundsInRoot().left
        compose.runOnIdle { state.value = state.value.copy(showSeconds = true) }
        compose.onNodeWithTag("top-time").assertTextEquals("12:24:31 星期三")
        compose.runOnIdle { state.value = state.value.copy(showWeekday = false) }
        compose.onNodeWithTag("top-time").assertTextEquals("12:24:31")
        compose.runOnIdle { state.value = state.value.copy(showSeconds = false,
            showIndoorTemperature = false, showBattery = false, showChargingStatus = false) }
        compose.waitForIdle()
        compose.onNodeWithTag("top-time").assertTextEquals("12:24")
        compose.onNodeWithTag("top-temperature").assertDoesNotExist()
        compose.onNodeWithTag("top-battery", useUnmergedTree = true).assertDoesNotExist()
        compose.onNodeWithTag("charge-status").assertDoesNotExist()
        compose.onNodeWithTag("top-range").assertTextEquals("366km")
        assertEquals("the clock retains its physical left anchor", originalTimeLeft,
            compose.onNodeWithTag("top-time").getUnclippedBoundsInRoot().left)
        assertEquals("the display preference did not alter the source clock", "12:24:31", state.value.time)
        assertEquals("已插枪", state.value.chargeStatus)
        assertEquals(80, state.value.batteryPercent)

        compose.runOnIdle { state.value = state.value.copy(showWeekday = true, showSeconds = true,
            showIndoorTemperature = true, showBattery = true, showChargingStatus = true) }
        compose.waitForIdle()
        compose.onNodeWithTag("top-time").assertTextEquals("12:24:31 星期三")
        compose.onNodeWithTag("top-temperature").assertIsDisplayed()
        compose.onNodeWithTag("top-battery", useUnmergedTree = true).assertIsDisplayed()
        compose.onNodeWithTag("charge-status").assertTextEquals("已插枪")
    }

    @Test
    fun lyricsPreferencesReachTheLivePageThroughItsBodyTransition() {
        val lines = listOf(LyricLine(0, "默认歌词不会再提前换行", side = LyricSide.Trailing),
            LyricLine(4_000, "合成下一句", side = LyricSide.Leading))
        val state = androidx.compose.runtime.mutableStateOf(previewState().copy(
            previewMode = false, page = PanelPage.Lyrics,
            lyrics = LyricsState(recordingKey = "page-lyric-preferences", lines = lines,
                timelineReady = true, positionMs = 500, activeIndex = 0, scrollIndex = 0, durationMs = 60_000)))
        compose.setContent {
            androidx.compose.runtime.CompositionLocalProvider(
                LocalLyricGeometryDispatcher provides kotlinx.coroutines.Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides kotlinx.coroutines.Dispatchers.Unconfined,
            ) {
                ContentTheme(dark) { ContentPanel(state.value.copy(dark = dark), { events += it }, Modifier.testTag(hostTag)) }
            }
        }
        compose.waitForIdle()
        val body = compose.onNode(SemanticsMatcher.keyIsDefined(LyricRowHeights), useUnmergedTree = true)
        val voiceHeights = body.fetchSemanticsNode().config[LyricRowHeights]
        compose.runOnIdle { state.value = state.value.copy(lyricsSpeakerLayout = false) }
        compose.waitForIdle()
        val defaultHeights = body.fetchSemanticsNode().config[LyricRowHeights]
        assertTrue("ContentPanel forwards voice preferences through LyricsBodyTransition", defaultHeights[0] < voiceHeights[0])
        compose.runOnIdle { state.value = state.value.copy(lyricsLineSpacing = 2) }
        compose.waitForIdle()
        val looseHeights = body.fetchSemanticsNode().config[LyricRowHeights]
        assertTrue("the actual page changes main-only row spacing", looseHeights.zip(defaultHeights).all { (loose, normal) -> loose > normal })
        compose.runOnIdle { state.value = state.value.copy(lyricsFontScale = .85f) }
        compose.waitForIdle()
        assertEquals(34f, body.fetchSemanticsNode().config[LyricFontPixels], .01f)
        assertEquals(40.8f, body.fetchSemanticsNode().config[LyricActiveFontPixels], .01f)
        compose.runOnIdle { state.value = state.value.copy(lyricsHighlight = false) }
        compose.waitForIdle()
        body.assert(SemanticsMatcher.expectValue(LyricEmphasizedRows, emptyList()))
        body.assert(SemanticsMatcher.expectValue(LyricScrollAnchor, 0))
        assertTrue("the page retains its real immutable lyric source", state.value.lyrics.lines === lines)
    }

    private fun iconEntrances(id: ControlId): List<String> = if (DockShortcuts.items.any { it.control == id })
        listOf("shortcut-icon", "dock-icon") else listOf("shortcut-icon")

    private fun mountInteractionState(state: androidx.compose.runtime.State<ContentUiState>, lifecycleOwner: androidx.lifecycle.LifecycleOwner? = null, onEvent: (ContentEvent) -> Unit = {}) {
        compose.setContent {
            val view = LocalView.current
            @Suppress("DEPRECATION")
            SideEffect {
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            val parentOwner = androidx.lifecycle.compose.LocalLifecycleOwner.current
            androidx.compose.runtime.CompositionLocalProvider(androidx.lifecycle.compose.LocalLifecycleOwner provides (lifecycleOwner ?: parentOwner)) {
                ContentTheme(dark) { ContentPanel(state.value.copy(dark = dark), { events += it; onEvent(it) }, Modifier.testTag(hostTag)) }
            }
        }
        compose.waitForIdle()
    }

    @Test fun roundedPressFeedbackIsLocalAnimatedAndDisabledDoesNotFire() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false, controls = previewState().controls + (ControlId.Lock to ControlState(actual = 0))))
        mountInteractionState(state)
        val transparent = androidx.compose.ui.graphics.Color.Transparent.value.toLong()
        val selected = compose.onNodeWithTag("dock-Lock").fetchSemanticsNode().boundsInRoot
        val baseline = captureHost("press-baseline")
        val selectedPixel = baseline.getPixel(selected.left.toInt() + 3, selected.center.y.toInt())
        val expectedSelected = if (dark) android.graphics.Color.rgb(26, 26, 26) else android.graphics.Color.WHITE
        assertTrue("lock state must keep the Dock base fill beyond its inner press area", selectedPixel == expectedSelected)
        compose.mainClock.autoAdvance = false
        listOf("dock-Lock", "dock-Ventilation", "media-play", "media-next", "source-button").forEach { tag ->
            val node = compose.onNodeWithTag(tag)
            node.assert(SemanticsMatcher.expectValue(PressActive, false))
            node.performTouchInput { down(center) }
            compose.mainClock.advanceTimeBy(320)
            node.assert(SemanticsMatcher.expectValue(PressActive, true))
            val color = node.fetchSemanticsNode().config[PressBackground]
            if (tag.startsWith("dock-")) {
                assertTrue("Dock press must have no rectangular background", color == transparent)
                assertTrue("Dock icon retains subtle deformation alongside shared touch-origin Ripple", node.fetchSemanticsNode().config[PressScale] < .97f)
            } else assertTrue("held media press must animate to nontransparent color: $tag", color != transparent)
            val outer = node.fetchSemanticsNode().boundsInRoot
            val inner = compose.onNodeWithTag("$tag-press-area", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
            assertTrue("inner rectangular press area remains inside unchanged touch slot", inner.left >= outer.left && inner.right <= outer.right && inner.top >= outer.top && inner.bottom <= outer.bottom)
            val held = captureHost("$tag-held")
            // A circle would leave this point clear; rounded rectangles include it.
            val x = inner.left.toInt() + if (tag.startsWith("dock-")) 1 else 9
            val y = inner.top.toInt() + if (tag.startsWith("dock-")) 1 else 9
            if (tag.startsWith("dock-")) assertTrue("Dock Ripple stays inside its rounded press rectangle: $tag", held.getPixel(x, y) == baseline.getPixel(x, y))
             else assertTrue("rounded rectangle not circle or whole-slot ripple: $tag", held.getPixel(x, y) != baseline.getPixel(x, y))
            node.performTouchInput { up() }
            compose.mainClock.advanceTimeBy(320)
            node.assert(SemanticsMatcher.expectValue(PressActive, false))
            node.assert(SemanticsMatcher.expectValue(PressBackground, transparent))
        }
        val count = events.size
        compose.onNodeWithTag("control-SteeringHeat").performTouchInput { down(center) }
        compose.mainClock.advanceTimeBy(320)
        compose.onNodeWithTag("control-SteeringHeat").assert(SemanticsMatcher.expectValue(PressActive, true))
        compose.onNodeWithTag("control-SteeringHeat").performTouchInput { up() }
        compose.mainClock.advanceTimeBy(320)
        assertTrue("steering control is wired through the shared event path", count + 1 == events.size && events.last() == ContentEvent.ControlTapped(ControlId.SteeringHeat))
        compose.mainClock.autoAdvance = true
        compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(available = false, playbackAvailable = false, nextAvailable = false)) }
        compose.waitForIdle()
        compose.onNodeWithTag("media-play").assertIsNotEnabled()
        compose.mainClock.autoAdvance = false
        compose.onNodeWithTag("media-play").performTouchInput { down(center) }
        compose.mainClock.advanceTimeBy(320)
        compose.onNodeWithTag("media-play").assert(SemanticsMatcher.expectValue(PressActive, false))
        compose.onNodeWithTag("media-play").performTouchInput { cancel() }
        compose.mainClock.advanceTimeBy(320)
        assertTrue("disabled media must not send commands", count + 1 == events.size)
        captureHost("press-disabled")
        compose.mainClock.autoAdvance = true
    }

    @Test fun seatLevelsKeepOriginalColorsAndResourcesInGridAndDock() {
        val seatIds = listOf(ControlId.Ventilation, ControlId.Heating, ControlId.PassengerHeating, ControlId.Massage)
        preloadOemAnimations(seatIds.flatMap { id -> (0..id.maxLevel).map { vehicleControlIconRecipe(id, it, dark).asset } }.distinct())
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        mountInteractionState(state)
        val resources = seatIds.associateWith { mutableSetOf<Int>() }
        for (level in 0..3) {
            compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls.mapValues { (id, control) -> if (id in seatIds) control.copy(actual = level) else control }) }
            seatIds.forEach { id ->
                val grid = compose.onNodeWithTag("shortcut-icon-${id.name}", useUnmergedTree = true)
                val dock = if (DockShortcuts.items.any { it.control == id }) compose.onNodeWithTag("dock-icon-${id.name}", useUnmergedTree = true) else null
                if (dock == null) compose.onNodeWithTag("dock-icon-${id.name}", useUnmergedTree = true).assertDoesNotExist()
                grid.assert(SemanticsMatcher.expectValue(OemTint, androidx.compose.ui.graphics.Color.Unspecified.value.toLong()))
                dock?.assert(SemanticsMatcher.expectValue(OemTint, androidx.compose.ui.graphics.Color.Unspecified.value.toLong()))
                val gridResource = grid.fetchSemanticsNode().config[OemResource]
                if (dock != null) assertTrue("declared grid and dock use same original level asset", gridResource == dock.fetchSemanticsNode().config[OemResource])
                resources.getValue(id) += gridResource
                compose.onNodeWithTag("control-${id.name}").assert(SemanticsMatcher.expectValue(androidx.compose.ui.semantics.SemanticsProperties.StateDescription, if (level == 0) "关闭" else "${level}档"))
                compose.onNodeWithText("${level}档").assertDoesNotExist()
            }
            val frame = captureHost("seat-level-$level")
            seatIds.forEach { id ->
                val bounds = compose.onNodeWithTag("shortcut-icon-${id.name}", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
                val background = frame.getPixel(bounds.left.toInt() - 3, bounds.center.y.toInt())
                var visible = 0
                var accent = 0
                var body = 0
                for (y in bounds.top.toInt() until bounds.bottom.toInt()) for (x in bounds.left.toInt() until bounds.right.toInt()) {
                    val pixel = frame.getPixel(x, y)
                    if (pixel != background) visible++
                    val r = android.graphics.Color.red(pixel)
                    val g = android.graphics.Color.green(pixel)
                    val b = android.graphics.Color.blue(pixel)
                    if (id == ControlId.Ventilation && b > 180 && b > r + 70 && g > r + 30) accent++
                    if ((id == ControlId.Heating || id == ControlId.PassengerHeating) && r > 180 && r > g + 50 && b < 120) accent++
                    if (id == ControlId.Massage && b > 140 && b > g + 50 && r > g + 25) accent++
                    val bodyContrast = if (level == 0) {
                        if (dark) r > 200 && g > 200 && b > 200 else r < 150 && g < 150 && b < 150
                    } else when (id) {
                        ControlId.Ventilation -> b > 180 && b > r + 70 && g > r + 30
                        ControlId.Heating, ControlId.PassengerHeating -> r > 180 && r > g + 50 && b < 120
                        ControlId.Massage -> b > 140 && b > g + 50 && r > g + 25
                        else -> false
                    }
                    if ((if (id == ControlId.PassengerHeating) x < bounds.left + bounds.width * .45f else x > bounds.left + bounds.width * .55f) && bodyContrast) body++
                }
                assertTrue("OEM seat asset must remain visible on its themed surface: $id/$level", visible > 20)
                assertTrue("seat body must contrast with its surface without bleaching: $id/$level", body > 5)
                if (level > 0) assertTrue("blue/orange/purple level accents must survive without theme tint: $id/$level", accent > 5)
            }
        }
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Heating to state.value.controls.getValue(ControlId.Heating).copy(actual = 4))) }
         val heatingGrid = compose.onNodeWithTag("shortcut-icon-Heating", useUnmergedTree = true)
         val heatingDock = compose.onNodeWithTag("dock-icon-Heating", useUnmergedTree = true)
         val expectedAuto = if (dark) R.drawable.content_oem_ico_skin_seat_heat_l_auto_off_night else R.drawable.content_oem_ico_skin_seat_heat_l_auto_off_day
         compose.mainClock.advanceTimeUntil(1600) {
             heatingGrid.fetchSemanticsNode().config[OemResource] == expectedAuto && heatingGrid.fetchSemanticsNode().config[IconAnimationReady]
         }
         compose.mainClock.advanceTimeBy(1200)
         heatingGrid.assert(SemanticsMatcher.expectValue(OemTint, androidx.compose.ui.graphics.Color.Unspecified.value.toLong()))
         assertTrue("heating auto uses one shared OEM asset", heatingGrid.fetchSemanticsNode().config[OemResource] == heatingDock.fetchSemanticsNode().config[OemResource])
         compose.onNodeWithTag("control-Heating").assert(SemanticsMatcher.expectValue(androidx.compose.ui.semantics.SemanticsProperties.StateDescription, "自动"))
         resources.getValue(ControlId.Heating) += heatingGrid.fetchSemanticsNode().config[OemResource]
         assertTrue("ventilation and massage keep four OEM assets", resources.getValue(ControlId.Ventilation).size == 4 && resources.getValue(ControlId.Massage).size == 4)
         assertTrue("heating adds a distinct automatic OEM asset", resources.getValue(ControlId.Heating).size == 5)
        heatingGrid.assert(SemanticsMatcher.expectValue(OemResource, if (dark) R.drawable.content_oem_ico_skin_seat_heat_l_auto_off_night else R.drawable.content_oem_ico_skin_seat_heat_l_auto_off_day))
        assertWarmOemBody("shortcut-icon-Heating", "heating-auto-grid")
        assertWarmOemBody("dock-icon-Heating", "heating-auto-dock")

    }

    private fun assertWarmOemBody(tag: String, name: String, orange: Boolean = true) {
        val frame = captureHost(name)
        val bounds = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        val background = frame.getPixel(bounds.left.toInt() - 3, bounds.center.y.toInt())
        val backgroundNeutral = android.graphics.Color.red(background)
        var accent = 0; var neutral = 0
        for (y in bounds.top.toInt() until bounds.bottom.toInt()) for (x in bounds.left.toInt() until bounds.right.toInt()) {
            val pixel = frame.getPixel(x, y)
            val r = android.graphics.Color.red(pixel); val g = android.graphics.Color.green(pixel); val b = android.graphics.Color.blue(pixel)
            if (r > 180 && g in 80..180 && b < 100 && r > g + 50) accent++
            // AUTO's neutral waves retain OEM dim alpha. Contrast against the
            // actual selected surface rather than requiring an opaque white body.
            if (kotlin.math.abs(r-g) < 5 && kotlin.math.abs(g-b) < 5 &&
                (if (dark) r > backgroundNeutral + 16 else r < backgroundNeutral - 16)) neutral++
        }
        assertTrue("OEM neutral paths must contrast with the actual themed surface: $tag", neutral > 5)
        assertTrue("OEM orange is present only for a known active state: $tag", if (orange) accent > 5 else accent == 0)
    }

    @Test fun steeringHeatUsesDistinctOEMColorAssetsForItsFourStates() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        mountInteractionState(state)
        val resources = mutableSetOf<Int>()
        val expected = (0..3).associateWith { vehicleControlIconRecipe(ControlId.SteeringHeat, it, dark).resource }
        for (level in listOf(0, 2, 1, 3)) {
            compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.SteeringHeat to state.value.controls.getValue(ControlId.SteeringHeat).copy(actual = level))) }
            val grid = compose.onNodeWithTag("shortcut-icon-SteeringHeat", useUnmergedTree = true)
            compose.onNodeWithTag("dock-icon-SteeringHeat", useUnmergedTree = true).assertDoesNotExist()
            compose.waitUntil(3_000) {
                val icon = grid.fetchSemanticsNode().config
                icon[IconAnimationReady] && icon[OemResource] == expected.getValue(level)
            }
            grid.assert(SemanticsMatcher.expectValue(OemTint, androidx.compose.ui.graphics.Color.Unspecified.value.toLong()))
            grid.assert(SemanticsMatcher.expectValue(OemResource, expected.getValue(level)))
            resources += grid.fetchSemanticsNode().config[OemResource]
            assertWarmOemBody("shortcut-icon-SteeringHeat", "steering-$level", orange = level > 0)
            compose.onNodeWithTag("control-SteeringHeat").assert(SemanticsMatcher.expectValue(androidx.compose.ui.semantics.SemanticsProperties.StateDescription,
                when (level) { 0 -> "关闭"; 3 -> "自动"; else -> "${level}档" }))
        }
        assertTrue("steering wheel has four state assets", resources.size == 4)
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Heating to ControlState(actual = 4))) }
        compose.onNodeWithTag("control-Heating").assert(SemanticsMatcher.expectValue(androidx.compose.ui.semantics.SemanticsProperties.StateDescription, "自动"))
        compose.onNodeWithTag("control-SteeringHeat").assert(SemanticsMatcher.expectValue(androidx.compose.ui.semantics.SemanticsProperties.StateDescription, "自动"))
        captureHost("both-automatic-final")
    }

    @Test fun batteryLayersLockColorAndMediaOpacityFollowTruth() {
         val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false, batteryPercent = 80))
        mountInteractionState(state)
        fun assertBattery(charging: Boolean) {
            compose.runOnIdle { state.value = state.value.copy(charging = charging) }
            compose.waitForIdle()
            val frame = captureHost(if (charging) "battery-charging" else "battery-idle")
            val bounds = compose.onNodeWithTag("top-battery", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
            var green = 0
            var neutral = 0
            for (y in bounds.top.toInt() until bounds.bottom.toInt()) for (x in bounds.left.toInt() until bounds.right.toInt()) {
                val c = frame.getPixel(x, y)
                val r = android.graphics.Color.red(c); val g = android.graphics.Color.green(c); val b = android.graphics.Color.blue(c)
                if (g > r + 40 && g > b + 50) green++
                if (if (dark) r > 170 && kotlin.math.abs(r - g) < 10 && kotlin.math.abs(g - b) < 10 else r < 100 && g < 100 && b < 100) neutral++
            }
            assertTrue("battery interior is green: $charging", green > 2)
            assertTrue("battery outline retains theme base color: $charging", neutral > 2)
            compose.onNodeWithTag("top-battery", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(OemResource,
                if (charging) R.drawable.content_oem_ico_battery_charging else R.drawable.content_oem_ico_battery_4))
        }
        assertBattery(false); assertBattery(true)
        for (target in listOf(0, 1, 0)) {
            compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls +
                (ControlId.Lock to ControlState(actual = target))) }
            compose.waitForIdle()
            val expected = if (target == 0) androidx.compose.ui.graphics.Color(0xFF3FA9FF)
                else if (dark) androidx.compose.ui.graphics.Color(0xFFE8E8E8) else androidx.compose.ui.graphics.Color(0xFF27303B)
            listOf("shortcut-icon-Lock", "dock-icon-Lock").forEach { tag ->
                compose.onNodeWithTag(tag, useUnmergedTree = true).assert(SemanticsMatcher.expectValue(OemTint, expected.value.toLong()))
            }
        }
        compose.mainClock.autoAdvance = false
        val play = compose.onNodeWithTag("media-play")
        play.performTouchInput { down(center) }
        var previous = 0f
        for (duration in listOf(32L, 48L, 64L, 80L)) {
            compose.mainClock.advanceTimeBy(duration)
            val color = androidx.compose.ui.graphics.Color(play.fetchSemanticsNode().config[PressBackground].toULong())
            assertTrue("media opacity must rise monotonically", color.alpha >= previous)
            if (color.alpha > 0f) {
                val rgb = if (dark) 48f / 255 else 228f / 255
                assertTrue("media fill RGB remains fixed instead of flashing black", kotlin.math.abs(color.red - rgb) < .005f && kotlin.math.abs(color.green - rgb) < .005f && kotlin.math.abs(color.blue - rgb) < .005f)
            }
            previous = color.alpha
        }
        play.performTouchInput { cancel() }
        compose.mainClock.advanceTimeBy(320)
        play.assert(SemanticsMatcher.expectValue(PressBackground, androidx.compose.ui.graphics.Color.Transparent.value.toLong()))
        compose.mainClock.autoAdvance = true
    }


    @Test fun selectionContrastAndDockGeometryFollowDisplayedTruth() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(controls = previewState().controls +
            (ControlId.Lock to ControlState(actual = 0)) + (ControlId.Ventilation to ControlState(actual = 2))))
        mountInteractionState(state)
        compose.onNodeWithTag("control-Lock").assertIsSelected()
        compose.onNodeWithTag("dock-Lock").assertIsSelected()
        compose.onNodeWithTag("control-Ventilation").assertIsSelected()
        compose.onNodeWithTag("dock-Ventilation").assertIsSelected()
        val frame = captureHost("selection-contrast")
        val expectedFill = if (dark) android.graphics.Color.rgb(72,72,72) else android.graphics.Color.WHITE
        val expectedSliderBase = if (dark) android.graphics.Color.rgb(26,26,26) else android.graphics.Color.rgb(233,233,233)
        for (tag in listOf("brightness-card", "volume-card")) {
            val bar = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
            assertEquals("slider exposes its own unfilled track in both themes", expectedSliderBase,
                frame.getPixel(bar.center.x.toInt(), bar.top.toInt() + 16))
            assertEquals("slider fill uses the selected dark layer and original white in light", expectedFill,
                frame.getPixel(bar.center.x.toInt(), bar.bottom.toInt() - 16))
        }
        fun sample(tag: String, image: Bitmap = frame): Int {
            val bounds = compose.onNodeWithTag(tag).fetchSemanticsNode().boundsInRoot
            return image.getPixel(bounds.left.toInt() + 3, bounds.top.toInt() + bounds.height.toInt() / 2)
        }
        val selected = if (dark) android.graphics.Color.rgb(48,48,48) else android.graphics.Color.rgb(228,228,228)
        val normal = if (dark) android.graphics.Color.rgb(26,26,26) else android.graphics.Color.rgb(233,233,233)
         val dockBase = if (dark) android.graphics.Color.rgb(26,26,26) else android.graphics.Color.WHITE
        assertTrue("lock state keeps Dock base color", sample("dock-Lock") == dockBase)
        assertTrue("lock shortcut has no permanent selected background", sample("control-Lock") == normal)
        val media = compose.onNodeWithTag("media-card").fetchSemanticsNode().boundsInRoot
        assertTrue("Dock base equals the actual media card fill", frame.getPixel(media.center.x.toInt(), media.top.toInt()+4) == dockBase)
        assertTrue("selected ventilation does not fill entire dock slot", sample("dock-Ventilation") == dockBase)
        assertTrue("dynamic shortcut keeps its base while its icon expresses selection", sample("control-Ventilation") == normal)
        assertTrue("nonselected shortcut is darker", sample("control-Heating") == normal)
        val inner = compose.onNodeWithTag("dock-Ventilation-press-area", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        assertTrue("seat selected rectangle uses Dock selected token", frame.getPixel(inner.left.toInt()+5, inner.center.y.toInt()) == (if (dark) android.graphics.Color.rgb(48,48,48) else android.graphics.Color.rgb(228,228,228)))
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Lock to ControlState(actual = 1))) }
        compose.onNodeWithTag("control-Lock").assertIsNotSelected()
        compose.onNodeWithTag("dock-Lock").assertIsNotSelected()
        val locked = captureHost("locked-background-unchanged")
        assertTrue("locking changes neither constant background", sample("control-Lock", locked) == normal && sample("dock-Lock", locked) == dockBase)
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Lock to ControlState(actual = 1, target = 0))) }
        compose.onNodeWithTag("dock-Lock").assertIsSelected().assertIsNotEnabled()
        compose.runOnIdle { state.value = state.value.copy(sourcesOpen = true) }
        val menu = captureHost("menu-contrast")
        val bounds = compose.onNodeWithTag("sources-menu").fetchSemanticsNode().boundsInRoot
        val row = compose.onNodeWithTag("source-Bluetooth").fetchSemanticsNode().boundsInRoot
        assertTrue("menu follows restored light and retained dark surface", menu.getPixel(bounds.left.toInt()+3, bounds.center.y.toInt()) == (if (dark) normal else android.graphics.Color.WHITE))
        val sourceSelected = if (dark) android.graphics.Color.rgb(48,48,48) else android.graphics.Color.rgb(228,228,228)
        assertTrue("selected source follows theme layer", menu.getPixel(row.left.toInt()+4, row.center.y.toInt()) == sourceSelected)
    }

    @Test fun semanticColorRolesKeepIndependentBaseAndSliderRolesButShareSelectedSurface() {
        val roles = ContentThemeColors(
            shortcutBase = androidx.compose.ui.graphics.Color(0xFF112233),
            shortcutSelected = androidx.compose.ui.graphics.Color(0xFF223344),
            sliderBase = androidx.compose.ui.graphics.Color(0xFF334466),
            sliderFill = androidx.compose.ui.graphics.Color(0xFF778899),
            sliderDivider = androidx.compose.ui.graphics.Color(0xFFDD3355),
            dockBase = androidx.compose.ui.graphics.Color(0xFF334455),
            dockSelected = androidx.compose.ui.graphics.Color(0xFF445566),
            mediaBase = androidx.compose.ui.graphics.Color(0xFF556677),
            mediaArtworkBase = androidx.compose.ui.graphics.Color(0xFF667799),
            mediaPressed = androidx.compose.ui.graphics.Color(0xFF667788),
            sourceBase = androidx.compose.ui.graphics.Color(0xFF7788AA),
            sourceSelected = androidx.compose.ui.graphics.Color(0xFF8899AA),
            sheetBase = androidx.compose.ui.graphics.Color(0xFF99AACC),
            selectedSurface = androidx.compose.ui.graphics.Color(0xFFAABBCC),
        )
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(
            previewMode = false,
            sourcesOpen = true,
            controls = previewState().controls +
                 (ControlId.RearWiper to ControlState(actual = 1)) +
                (ControlId.Ventilation to ControlState(actual = 2)) +
                (ControlId.Heating to ControlState(actual = 0)),
        ))
        compose.setContent {
            val view = LocalView.current
            @Suppress("DEPRECATION")
            SideEffect {
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            ContentTheme(dark) {
                androidx.compose.runtime.CompositionLocalProvider(LocalContentColors provides roles) {
                    ContentPanel(state.value.copy(dark = dark), { events += it }, Modifier.testTag(hostTag))
                }
            }
        }
        compose.waitForIdle()
        val frame = captureHost("semantic-role-palette", checkShortcutShadows = false)
        fun sample(tag: String, x: Int = 3): Int {
            val bounds = compose.onNodeWithTag(tag).fetchSemanticsNode().boundsInRoot
            return frame.getPixel(bounds.left.toInt() + x, bounds.top.toInt() + bounds.height.toInt() / 2)
        }
        assertTrue("shortcut base has its own role", sample("control-Heating") == roles.shortcutBase.toArgb())
        assertTrue("dynamic selected icon keeps shortcut base", sample("control-Ventilation") == roles.shortcutBase.toArgb())
        assertTrue("ordinary toggle selected uses the shared selected surface", sample("control-RearWiper") == roles.selectedSurface.toArgb())
        assertTrue("Dock base has its own role", sample("dock-Lock") == roles.dockBase.toArgb())
        assertTrue("media base has its own role", frame.getPixel(
            compose.onNodeWithTag("media-card").fetchSemanticsNode().boundsInRoot.center.x.toInt(),
            compose.onNodeWithTag("media-card").fetchSemanticsNode().boundsInRoot.top.toInt() + 4,
        ) == roles.mediaBase.toArgb())
        val dockSelected = compose.onNodeWithTag("dock-Ventilation-press-area", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        assertTrue("Dock selected uses the shared selected surface", frame.getPixel(dockSelected.left.toInt() + 5, dockSelected.center.y.toInt()) == roles.selectedSurface.toArgb())

        val artwork = compose.onNodeWithTag("media-card").fetchSemanticsNode().boundsInRoot
        assertTrue("media artwork base has its own role", frame.getPixel(artwork.left.toInt() + 36, artwork.top.toInt() + 4) == roles.mediaArtworkBase.toArgb())
        val source = compose.onNodeWithTag("source-Bluetooth").fetchSemanticsNode().boundsInRoot
        val sourceMenu = compose.onNodeWithTag("sources-menu").fetchSemanticsNode().boundsInRoot
        assertTrue("source base has its own role", frame.getPixel(sourceMenu.center.x.toInt(), sourceMenu.top.toInt() + 4) == roles.sourceBase.toArgb())
        assertTrue("source selected uses the shared selected surface", frame.getPixel(source.left.toInt() + 4, source.center.y.toInt()) == roles.selectedSurface.toArgb())

        compose.runOnIdle { state.value = state.value.copy(sourcesOpen = false) }
        compose.waitForIdle()
        val sliderFrame = captureHost("semantic-role-sliders", checkShortcutShadows = false)
        val sliderCard = compose.onNodeWithTag("brightness-card").fetchSemanticsNode().boundsInRoot
        assertEquals("slider base has its own role", roles.sliderBase.toArgb(),
            sliderFrame.getPixel(sliderCard.center.x.toInt(), sliderCard.top.toInt() + 16))
        assertEquals("slider fill has its own role", roles.sliderFill.toArgb(),
            sliderFrame.getPixel(sliderCard.center.x.toInt(), sliderCard.bottom.toInt() - 16))
        val steppedCard = compose.onNodeWithTag("control-Wiper").fetchSemanticsNode().boundsInRoot
        assertEquals("manual OFF consumes the same independent unfilled slider role", roles.sliderBase.toArgb(),
            sliderFrame.getPixel(steppedCard.center.x.toInt(), steppedCard.top.toInt() + 16))
        val dividerY = steppedCard.top + steppedCard.height * .25f
        val dividerX = steppedCard.center.x.toInt()
        val dividerArgb = roles.sliderDivider.toArgb()
        val background = roles.sliderBase.toArgb()
        val sourceChannels = listOf(android.graphics.Color.red(dividerArgb), android.graphics.Color.green(dividerArgb), android.graphics.Color.blue(dividerArgb))
        val baseChannels = listOf(android.graphics.Color.red(background), android.graphics.Color.green(background), android.graphics.Color.blue(background))
        assertTrue("manual internal divider consumes its independent role rather than Material primary",
            (dividerY.toInt() - 1..dividerY.toInt() + 1).any { y ->
                val pixel = sliderFrame.getPixel(dividerX, y)
                val channels = listOf(android.graphics.Color.red(pixel), android.graphics.Color.green(pixel), android.graphics.Color.blue(pixel))
                channels.indices.all { channel -> channels[channel] in minOf(sourceChannels[channel], baseChannels[channel])..maxOf(sourceChannels[channel], baseChannels[channel]) } &&
                    channels.indices.any { channel -> kotlin.math.abs(channels[channel] - baseChannels[channel]) > 20 }
            })
        compose.mainClock.autoAdvance = false
        compose.mainClock.advanceTimeBy(320)
        compose.waitForIdle()
        val play = compose.onNodeWithTag("media-play")
        play.performTouchInput { down(center) }
        compose.mainClock.advanceTimeUntil(1200) {
            play.fetchSemanticsNode().config[PressActive] == true
        }
        compose.mainClock.advanceTimeBy(320)
        compose.waitForIdle()
        val pressed = captureHost("semantic-role-media-pressed", checkShortcutShadows = false)
        val pressArea = compose.onNodeWithTag("media-play-press-area", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        assertTrue("media pressed uses the shared selected surface", pressed.getPixel(pressArea.left.toInt() + 5, pressArea.center.y.toInt()) == roles.selectedSurface.toArgb())
        play.performTouchInput { cancel() }
        compose.mainClock.autoAdvance = true
    }

    @Test fun touchOriginRippleAndIconMotionAreSharedWithoutDoubleSound() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState())
        mountInteractionState(state)
        com.autonavi.amapauto.jni.GAdaAndroid.clicks = 0
        compose.mainClock.autoAdvance = false
        for ((button, icon) in listOf("control-Ventilation" to "shortcut-icon-Ventilation", "dock-Ventilation" to "dock-icon-Ventilation")) {
            val node = compose.onNodeWithTag(button)
            node.assert(SemanticsMatcher.expectValue(PressFeedback, "touch-ripple"))
            node.performTouchInput { down(androidx.compose.ui.geometry.Offset(12f,12f)) }
            compose.mainClock.advanceTimeBy(320)
            node.assert(SemanticsMatcher.expectValue(PressActive, true))
            val scale = compose.onNodeWithTag(icon, useUnmergedTree = true).fetchSemanticsNode().config[IconMotion]
            assertTrue("every shortcut/dock icon deforms while pressed", scale < .97f)
            node.performTouchInput { cancel() }
            compose.mainClock.advanceTimeBy(320)
            node.assert(SemanticsMatcher.expectValue(PressActive, false))
        }
        assertTrue("cancel never sounds or dispatches", com.autonavi.amapauto.jni.GAdaAndroid.clicks == 0 && events.isEmpty())
        compose.mainClock.autoAdvance = true
        compose.onNodeWithTag("dock-Ventilation").performClick()
        assertTrue("one accepted button produces exactly one native click", com.autonavi.amapauto.jni.GAdaAndroid.clicks == 1)
        compose.onNodeWithTag("control-SteeringHeat").performTouchInput { click() }
        assertTrue("enabled steering has one sound", com.autonavi.amapauto.jni.GAdaAndroid.clicks == 2)
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Ventilation to ControlState(actual = 2))) }
        assertTrue("readback has no click sound", com.autonavi.amapauto.jni.GAdaAndroid.clicks == 2)
    }

    @Test fun completeGearCyclesLatchBoundaryRippleAcrossPendingRecomposition() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        mountInteractionState(state)
        compose.mainClock.autoAdvance = false
        val cycles = mapOf(ControlId.Ventilation to listOf(0, 3, 2, 1, 0),
            ControlId.Massage to listOf(0, 3, 2, 1, 0), ControlId.Heating to listOf(0, 3, 2, 1, 4, 0),
            ControlId.SteeringHeat to listOf(0, 2, 1, 3, 0))
        for ((id, levels) in cycles) for (prefix in if (DockShortcuts.items.any { it.control == id }) listOf("control", "dock") else listOf("control")) {
            for ((actual, target) in levels.zipWithNext()) {
                compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (id to ControlState(actual = actual))) }
                compose.mainClock.advanceTimeByFrame()
                val tag = "$prefix-${id.name}"
                val area = compose.onNodeWithTag(if (prefix == "dock") "$tag-press-area" else tag, useUnmergedTree = true)
                val boundary = (actual == 0) != (target == 0)
                compose.onNodeWithTag(tag).performTouchInput { down(center) }
                compose.mainClock.advanceTimeBy(320)
                area.assert(SemanticsMatcher.expectValue(RippleRunning, boundary))
                compose.onNodeWithTag(tag).performTouchInput { up() }
                // Emulate Binding's immediate target projection; this is not a
                // fabricated vehicle success. Confirmed actual remains old.
                compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls +
                    (id to ControlState(actual = actual, target = target, available = false))) }
                compose.mainClock.advanceTimeByFrame()
                compose.onNodeWithTag(tag).assertIsNotEnabled().assert(SemanticsMatcher.expectValue(PressFeedback, "none"))
                assertTrue("target never changes actual", state.value.controls.getValue(id).actual == actual)
                area.assert(SemanticsMatcher.expectValue(RippleRunning, boundary))
                assertTrue("one shared event per accepted tap", events.last() == ContentEvent.ControlTapped(id))
                compose.mainClock.advanceTimeBy(320)
                area.assert(SemanticsMatcher.expectValue(RippleRunning, false))
                compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (id to ControlState(actual = target))) }
            }
        }
        captureHost("complete-gear-cycles")
        compose.mainClock.autoAdvance = true
    }

    @Test fun dockRippleTranslatesOuterTouchAndFadesUniformlyWithinFourRoundedCorners() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        mountInteractionState(state)
        compose.mainClock.autoAdvance = false
        val node = compose.onNodeWithTag("dock-Lock")
        val area = compose.onNodeWithTag("dock-Lock-press-area", useUnmergedTree = true)
        val outer = node.fetchSemanticsNode().boundsInRoot
        val inner = area.fetchSemanticsNode().boundsInRoot
        val baseline = captureHost("ripple-corner-baseline")
        val offset = androidx.compose.ui.geometry.Offset(inner.left - outer.left + 12f, inner.top - outer.top + 14f)
        node.performTouchInput { down(offset) }
        compose.mainClock.advanceTimeBy(320)
        val origin = area.fetchSemanticsNode().config[RippleOrigin]
        assertTrue("actual touch is rebased to the inner rectangle: $origin", kotlin.math.abs(origin.x - 12f) < 1 && kotlin.math.abs(origin.y - 14f) < 1)
        node.performTouchInput { cancel() }
        compose.mainClock.advanceTimeBy(600)
        // This point lies outside the visible press rectangle, but remains part
        // of the original touch slot. The pulse origin clamps to its near edge.
        node.performTouchInput { down(androidx.compose.ui.geometry.Offset(3f, inner.center.y - outer.top)) }
        // Foundation intentionally delays Press in a scrollable parent. Hold
        // through that acceptance delay plus the 225ms expansion before sampling.
        compose.mainClock.advanceTimeBy(480)
        area.assert(SemanticsMatcher.expectValue(RippleProgress, 1f))
        val clamped = area.fetchSemanticsNode().config[RippleOrigin]
        assertTrue("outer touch reaches the same control without moving its hit area", clamped.x == 0f)
        val held = captureHost("ripple-held-rounded")
        for ((x, y) in listOf(inner.left.toInt()+1 to inner.top.toInt()+1,
            inner.right.toInt()-2 to inner.top.toInt()+1, inner.left.toInt()+1 to inner.bottom.toInt()-2,
            inner.right.toInt()-2 to inner.bottom.toInt()-2)) {
            assertTrue("no Ripple ink outside a rounded corner: $x/$y", held.getPixel(x, y) == baseline.getPixel(x, y))
        }
        val left = inner.left.toInt()+4; val right = inner.right.toInt()-5; val y = inner.center.y.toInt()
        val wash = if (dark) android.graphics.Color.rgb(48,48,48) else android.graphics.Color.rgb(228,228,228)
        assertTrue("expanded Ripple is one uniform selected-color wash", held.getPixel(left,y) == wash && held.getPixel(right,y) == wash)
        node.performTouchInput { cancel() }
        compose.mainClock.advanceTimeBy(96)
        val fading = captureHost("ripple-uniform-fade")
        assertTrue("fade has one uniform opacity, not a second radial/rectangle layer", fading.getPixel(left,y) == fading.getPixel(right,y) && fading.getPixel(left,y) != wash)
        compose.mainClock.advanceTimeBy(320)
        val ended = captureHost("ripple-ended")
        assertTrue("lock returns to the exact previous base", ended.getPixel(left,y) == baseline.getPixel(left,y))
        assertTrue("cancel has no command", events.isEmpty())
        assertTrue("hit slot geometry never shrinks", node.fetchSemanticsNode().boundsInRoot == outer)
        area.assert(SemanticsMatcher.expectValue(RippleRunning, false))
        compose.mainClock.autoAdvance = true
    }

    @Test fun rippleEligibilityIsCapturedAtPhysicalDownBeforeStateRecomposition() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false,
            controls = previewState().controls + (ControlId.SteeringHeat to ControlState(actual = 3))))
        mountInteractionState(state)
        compose.mainClock.autoAdvance = false
        val node = compose.onNodeWithTag("control-SteeringHeat")
        val area = compose.onNodeWithTag("control-SteeringHeat", useUnmergedTree = true)

        node.performTouchInput { down(center) }
        compose.runOnIdle {
            state.value = state.value.copy(controls = state.value.controls +
                (ControlId.SteeringHeat to ControlState(actual = 1)))
        }
        compose.mainClock.advanceTimeBy(32)
        area.assert(SemanticsMatcher.expectValue(RippleRunning, true))
        node.performTouchInput { cancel() }
        compose.mainClock.advanceTimeBy(600)

        compose.runOnIdle {
            state.value = state.value.copy(controls = state.value.controls +
                (ControlId.SteeringHeat to ControlState(actual = 1)))
        }
        node.performTouchInput { down(center) }
        compose.runOnIdle {
            state.value = state.value.copy(controls = state.value.controls +
                (ControlId.SteeringHeat to ControlState(actual = 3)))
        }
        compose.mainClock.advanceTimeBy(32)
        area.assert(SemanticsMatcher.expectValue(RippleRunning, false))
        node.performTouchInput { cancel() }
        compose.mainClock.autoAdvance = true
    }

    @Test fun overlappingBoundaryPulsesKeepTheEarliestWashBase() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false,
            controls = previewState().controls + (ControlId.SteeringHeat to ControlState(actual = 3))))
        mountInteractionState(state)
        compose.mainClock.autoAdvance = false
        val node = compose.onNodeWithTag("control-SteeringHeat")
        val bounds = node.fetchSemanticsNode().boundsInRoot
        val x = bounds.left.toInt() + 4
        val y = bounds.center.y.toInt()

        node.performTouchInput { down(center) }
        compose.mainClock.advanceTimeBy(80)
        node.performTouchInput { up() }
        compose.runOnIdle {
            state.value = state.value.copy(controls = state.value.controls +
                (ControlId.SteeringHeat to ControlState(actual = 0)))
        }
        compose.mainClock.advanceTimeBy(20)
        val before = captureHost("overlapping-pulses-before")

        node.performTouchInput { down(center) }
        compose.mainClock.advanceTimeBy(16)
        val after = captureHost("overlapping-pulses-after")
        assertTrue("a new zero-radius Pulse cannot replace the earliest expanding base", before.getPixel(x, y) == after.getPixel(x, y))

        node.performTouchInput { cancel() }
        compose.mainClock.advanceTimeBy(600)
        compose.mainClock.autoAdvance = true
    }

    @Test fun quickTapKeepsDownQualifiedRippleWhenBindingDisablesOnTheSameUpGrid() = assertQuickPendingTap("control")
    @Test fun quickTapKeepsDownQualifiedRippleWhenBindingDisablesOnTheSameUpDock() = assertQuickPendingTap("dock")

    private fun assertQuickPendingTap(prefix: String) {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        mountInteractionState(state) { event ->
            if (event == ContentEvent.ControlTapped(ControlId.Heating)) state.value = state.value.copy(controls =
                state.value.controls + (ControlId.Heating to ControlState(actual = 0, target = 3, available = false)))
        }
        compose.mainClock.autoAdvance = false
        val tag = "$prefix-Heating"
        val area = compose.onNodeWithTag(if (prefix == "dock") "$tag-press-area" else tag, useUnmergedTree = true)
        // No 150ms acceptance wait: the physical gesture is a 10ms tap.
        compose.onNodeWithTag(tag).performTouchInput { down(center); advanceEventTime(10); up() }
        compose.mainClock.advanceTimeBy(32)
        compose.onNodeWithTag(tag).assertIsNotEnabled()
        assertTrue("same UP immediately projects target, never actual", state.value.controls.getValue(ControlId.Heating).actual == 0 && state.value.controls.getValue(ControlId.Heating).target == 3)
        area.assert(SemanticsMatcher.expectValue(RippleRunning, true))
        compose.mainClock.advanceTimeBy(600)
        area.assert(SemanticsMatcher.expectValue(RippleRunning, false))
        assertTrue("one quick tap dispatches once", events.size == 1)
        captureHost("quick-up-pending-tail-$prefix")
        compose.mainClock.autoAdvance = true
    }

    @OptIn(ExperimentalComposeUiApi::class)
    @Test fun pauseAndWindowFocusLossClearRippleWithoutReplayOnResume() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        val owner = object : androidx.lifecycle.LifecycleOwner {
            override val lifecycle = androidx.lifecycle.LifecycleRegistry.createUnsafe(this).apply {
                currentState = androidx.lifecycle.Lifecycle.State.RESUMED
            }
        }
        mountInteractionState(state, lifecycleOwner = owner)
        compose.mainClock.autoAdvance = false
        val node = compose.onNodeWithTag("dock-Lock")
        val area = compose.onNodeWithTag("dock-Lock-press-area", useUnmergedTree = true)
        val view = (compose.onNodeWithTag(hostTag).fetchSemanticsNode().root as ViewRootForTest).view
        val lifecycle = owner.lifecycle
        node.performTouchInput { down(center) }
        compose.mainClock.advanceTimeBy(240)
        area.assert(SemanticsMatcher.expectValue(RippleRunning, true))
        compose.runOnIdle { lifecycle.handleLifecycleEvent(androidx.lifecycle.Lifecycle.Event.ON_PAUSE) }
        compose.mainClock.advanceTimeByFrame()
        area.assert(SemanticsMatcher.expectValue(RippleRunning, false))
        compose.runOnIdle { lifecycle.handleLifecycleEvent(androidx.lifecycle.Lifecycle.Event.ON_RESUME) }
        compose.mainClock.advanceTimeBy(320)
        area.assert(SemanticsMatcher.expectValue(RippleRunning, false))
        node.performTouchInput { cancel() }
        val focusDispatch = android.view.ViewTreeObserver::class.java.getDeclaredMethod("dispatchOnWindowFocusChange", java.lang.Boolean.TYPE).apply { isAccessible = true }
        node.performTouchInput { down(center) }
        compose.mainClock.advanceTimeBy(240)
        area.assert(SemanticsMatcher.expectValue(RippleRunning, true))
        compose.runOnIdle { focusDispatch.invoke(view.viewTreeObserver, false) }
        compose.mainClock.advanceTimeByFrame()
        area.assert(SemanticsMatcher.expectValue(RippleRunning, false))
        compose.runOnIdle { focusDispatch.invoke(view.viewTreeObserver, true) }
        compose.mainClock.advanceTimeBy(320)
        area.assert(SemanticsMatcher.expectValue(RippleRunning, false))
        node.performTouchInput { cancel() }
        // No paused composition/frame in between: the formal window recomposer
        // can freeze at pause. Cleanup must happen in the observer itself.
        node.performTouchInput { down(center) }
        compose.mainClock.advanceTimeBy(240)
        area.assert(SemanticsMatcher.expectValue(RippleRunning, true))
        compose.runOnIdle {
            lifecycle.handleLifecycleEvent(androidx.lifecycle.Lifecycle.Event.ON_PAUSE)
            lifecycle.handleLifecycleEvent(androidx.lifecycle.Lifecycle.Event.ON_RESUME)
        }
        compose.mainClock.advanceTimeByFrame()
        area.assert(SemanticsMatcher.expectValue(RippleRunning, false))
        node.performTouchInput { cancel() }
        assertTrue("cancel/blur/pause never send a vehicle request", events.isEmpty())
        captureHost("ripple-lifecycle-clean-tail")
        compose.mainClock.autoAdvance = true
    }

    @Test fun unknownControlsNeverAdvertiseOrEmitStateFeedback() {
        val state = androidx.compose.runtime.mutableStateOf(previewState(PreviewScenario.NoData).copy(previewMode = false))
        mountInteractionState(state)
        ControlId.entries.forEach { id ->
            (listOf("control-${id.name}") + if (DockShortcuts.items.any { it.control == id }) listOf("dock-${id.name}") else emptyList()).forEach { tag ->
                val node = compose.onNodeWithTag(tag)
                node.assertIsNotEnabled().assert(SemanticsMatcher.expectValue(PressFeedback, "none"))
                    .assert(SemanticsMatcher.expectValue(androidx.compose.ui.semantics.SemanticsProperties.StateDescription, "状态未知"))
                node.performTouchInput { click() }
            }
        }
        assertTrue("unknown click never dispatches", events.isEmpty())
        captureHost("unknown-control-states")
    }

    @Test fun multistateRippleOnlyAppearsAtOffAndTerminalEdges() {
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false, controls = ContentUiState().controls.mapValues { (id, control) ->
            control.copy(actual = when (id) {
                ControlId.Ventilation -> 2
                ControlId.Heating, ControlId.PassengerHeating -> 1
                ControlId.Massage -> 2
                ControlId.SteeringHeat -> 1
                ControlId.Lock -> 0
                ControlId.Wiper -> 1
                 ControlId.RearWiper, ControlId.RearWash -> 0
            })
        }))
        mountInteractionState(state)
        listOf("Ventilation", "Heating", "PassengerHeating", "Massage", "SteeringHeat").forEach { id ->
            compose.onNodeWithTag("control-$id").assert(SemanticsMatcher.expectValue(PressFeedback, "none"))
            if (DockShortcuts.items.any { it.name == id }) compose.onNodeWithTag("dock-$id").assert(SemanticsMatcher.expectValue(PressFeedback, "none"))
            else compose.onNodeWithTag("dock-$id").assertDoesNotExist()
        }
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Ventilation to ControlState(actual = 0))) }
        compose.onNodeWithTag("control-Ventilation").assert(SemanticsMatcher.expectValue(PressFeedback, "touch-ripple"))
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Heating to ControlState(actual = 4))) }
        compose.onNodeWithTag("dock-Heating").assert(SemanticsMatcher.expectValue(PressFeedback, "touch-ripple"))
    }

    @Test fun dividerTracksActualContentWidth() {
         val width = androidx.compose.runtime.mutableStateOf(640.dp)
        compose.setContent { ContentTheme(dark) { ContentPanel(ContentUiState(), {}, Modifier.width(width.value).testTag(hostTag)) } }
        for (value in listOf(640, 520, 400, 640)) {
            compose.runOnIdle { width.value = value.dp }
            val host = compose.onNodeWithTag(hostTag).fetchSemanticsNode().boundsInRoot
            val divider = compose.onNodeWithTag("content-divider", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
            assertTrue("divider remains aligned with content edge during viewport changes", kotlin.math.abs(divider.right - host.right) <= 1 && kotlin.math.abs(divider.height - host.height) <= 1)
            assertTrue("divider is subtle and does not consume map geometry", divider.width <= 1.1f)
        }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    @Test fun sameCompositionThemeRoundTripUpdatesOemResourcePixelsWithoutReplay() {
        preloadOemAnimations(listOf("ico_skin_seat_heat_l_bk.json", "ico_skin_seat_heat_l_wh.json",
            "ico_skin_heat_l_auto_bk.json", "ico_skin_seat_heat_l_auto_wh.json",
            "ico_skin_seat_heat_r_auto_bk.json", "ico_skin_seat_heat_r_auto_wh.json",
            "ico_skin_stwh_heat_bk.json", "ico_skin_stwh_heat_wh.json"))
        fun controls(
            heating: Int,
            ventilation: ControlState = ControlState(actual = -1, available = false, known = false),
            steering: ControlState = ControlState(actual = -1, available = false, known = false),
            passenger: ControlState = ControlState(actual = -1, available = false, known = false),
        ) = ControlId.entries.associateWith { id -> when (id) {
            ControlId.Lock -> ControlState(actual = 1)
            ControlId.Heating -> ControlState(actual = heating)
            ControlId.PassengerHeating -> passenger
            ControlId.Ventilation -> ventilation
            ControlId.SteeringHeat -> steering
            ControlId.Massage, ControlId.Wiper, ControlId.RearWiper, ControlId.RearWash -> ControlState(actual = -1, available = false, known = false)
        } }
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(
            previewMode = false,
            dark = false,
            controls = controls(heating = 4, ventilation = ControlState(actual = -1, available = false, known = false)),
        ))
        fun mountDynamicTheme() {
            compose.setContent {
                val view = LocalView.current
                @Suppress("DEPRECATION")
                SideEffect {
                    val window = view.context.activity().window
                    window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                    window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                        View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
                }
                val parentOwner = androidx.lifecycle.compose.LocalLifecycleOwner.current
                androidx.compose.runtime.CompositionLocalProvider(androidx.lifecycle.compose.LocalLifecycleOwner provides parentOwner) {
                    val current = state.value
                    ContentTheme(current.dark) { ContentPanel(current, { events += it }, Modifier.testTag(hostTag)) }
                }
            }
            compose.waitForIdle()
        }
        fun node(tag: String) = compose.onNodeWithTag(tag, useUnmergedTree = true)
        fun settle(tag: String, asset: String) {
            compose.mainClock.advanceTimeByFrame()
            compose.waitForIdle()
            if (asset.isNotEmpty()) {
                compose.mainClock.advanceTimeUntil(1600) { node(tag).fetchSemanticsNode().config[IconAnimationReady] == true }
                compose.mainClock.advanceTimeBy(1400)
            }
        }
        fun setTheme(dark: Boolean) {
            compose.runOnIdle { state.value = state.value.copy(dark = dark) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeByFrame()
            compose.mainClock.advanceTimeBy(96)
            compose.waitForIdle()
            compose.mainClock.advanceTimeByFrame()
            compose.waitForIdle()
        }
        fun awaitResource(tag: String, resource: Int) {
            compose.mainClock.advanceTimeUntil(1200) {
                node(tag).fetchSemanticsNode().config[OemResource] == resource
            }
            compose.waitForIdle()
        }
        fun assertStatic(tag: String, resource: Int) {
            node(tag).assert(SemanticsMatcher.expectValue(OemResource, resource))
            node(tag).assert(SemanticsMatcher.expectValue(IconAnimationAsset, ""))
            node(tag).assert(SemanticsMatcher.expectValue(IconAnimationReady, false))
            node(tag).assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        }

        mountDynamicTheme()
        compose.mainClock.autoAdvance = false

        // Unknown seat is a static day/night Vector. Resource and pixels must
        // follow the current theme even though its business trigger is stable.
        val unknown = "shortcut-icon-Ventilation"
        node(unknown).assert(SemanticsMatcher.expectValue(OemResource, R.drawable.content_oem_ico_skin_seat_ventilate_l_off_day))
        node(unknown).assert(SemanticsMatcher.expectValue(IconAnimationAsset, ""))
        node(unknown).assert(SemanticsMatcher.expectValue(IconAnimationReady, false))
        node(unknown).assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        val unknownDay = iconPixels(captureHost("theme-unknown-day"), unknown)
        setTheme(true)
        awaitResource(unknown, R.drawable.content_oem_ico_skin_seat_ventilate_l_off_night)
        node(unknown).assert(SemanticsMatcher.expectValue(OemResource, R.drawable.content_oem_ico_skin_seat_ventilate_l_off_night))
        node(unknown).assert(SemanticsMatcher.expectValue(IconAnimationAsset, ""))
        node(unknown).assert(SemanticsMatcher.expectValue(IconAnimationReady, false))
        node(unknown).assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        val unknownNight = iconPixels(captureHost("theme-unknown-night"), unknown)
        assertTrue("unknown seat day/night must differ in actual pixels", !unknownDay.contentEquals(unknownNight))
        setTheme(false)
        awaitResource(unknown, R.drawable.content_oem_ico_skin_seat_ventilate_l_off_day)
        node(unknown).assert(SemanticsMatcher.expectValue(OemResource, R.drawable.content_oem_ico_skin_seat_ventilate_l_off_day))
        assertTrue("unknown seat must return to the original day pixels", unknownDay.contentEquals(iconPixels(captureHost("theme-unknown-day-return"), unknown)))

        // Heat 0/1/3 use the registered Lottie path. Theme swaps retain the
        // already played tail and never start the same level again.
        val heat = "shortcut-icon-Heating"
        for (level in listOf(0, 1, 3)) {
            compose.runOnIdle { state.value = state.value.copy(dark = false, controls = controls(heating = level)) }
            settle(heat, "ico_skin_seat_heat_l_bk.json")
            val dayResource = when (level) {
                1 -> R.drawable.content_oem_ico_skin_seat_heat_l_1_day
                3 -> R.drawable.content_oem_ico_skin_seat_heat_l_3_day
                else -> R.drawable.content_oem_ico_skin_seat_heat_l_off_day
            }
            node(heat).assert(SemanticsMatcher.expectValue(OemResource, dayResource))
            node(heat).assert(SemanticsMatcher.expectValue(IconAnimationAsset, "ico_skin_seat_heat_l_bk.json"))
            node(heat).assert(SemanticsMatcher.expectValue(IconAnimationReady, true))
            node(heat).assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
            node(heat).assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            val dayTail = iconPixels(captureHost("theme-heat-$level-day"), heat)

            val nightResource = when (level) {
                1 -> R.drawable.content_oem_ico_skin_seat_heat_l_1_night
                3 -> R.drawable.content_oem_ico_skin_seat_heat_l_3_night
                else -> R.drawable.content_oem_ico_skin_seat_heat_l_off_night
            }
            setTheme(true)
            awaitResource(heat, nightResource)
            settle(heat, "ico_skin_seat_heat_l_wh.json")
            node(heat).assert(SemanticsMatcher.expectValue(OemResource, nightResource))
            node(heat).assert(SemanticsMatcher.expectValue(IconAnimationAsset, "ico_skin_seat_heat_l_wh.json"))
            node(heat).assert(SemanticsMatcher.expectValue(IconAnimationReady, true))
            node(heat).assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
            node(heat).assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            val nightTail = iconPixels(captureHost("theme-heat-$level-night"), heat)
            assertTrue("heat $level day/night must differ in actual pixels", !dayTail.contentEquals(nightTail))

            setTheme(false)
            awaitResource(heat, dayResource)
            settle(heat, "ico_skin_seat_heat_l_bk.json")
            node(heat).assert(SemanticsMatcher.expectValue(OemResource, dayResource))
            node(heat).assert(SemanticsMatcher.expectValue(IconAnimationAsset, "ico_skin_seat_heat_l_bk.json"))
            node(heat).assert(SemanticsMatcher.expectValue(IconAnimationReady, true))
            node(heat).assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
            node(heat).assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            assertTrue("heat $level must return to the played day tail", dayTail.contentEquals(iconPixels(captureHost("theme-heat-$level-day-return"), heat)))
        }

        // AUTO is the OEM selected-A idle segment, not an invented actual heat
        // level. Both entrances retain its tail across same-composition themes.
        compose.runOnIdle { state.value = state.value.copy(dark = false, controls = controls(
            heating = 4, passenger = ControlState(actual = 4), steering = ControlState(actual = 2))) }
        for ((id, level) in mapOf(ControlId.Heating to 4, ControlId.PassengerHeating to 4, ControlId.SteeringHeat to 2)) {
            setTheme(false)
            val tag = "shortcut-icon-${id.name}"
            val day = vehicleControlIconRecipe(id, level, false)
            val night = vehicleControlIconRecipe(id, level, true)
            settle(tag, day.asset)
            fun assertTail(recipe: VehicleControlIconRecipe) {
                for (prefix in iconEntrances(id)) {
                    val icon = node("$prefix-${id.name}")
                    icon.assert(SemanticsMatcher.expectValue(OemResource, recipe.resource))
                    icon.assert(SemanticsMatcher.expectValue(IconAnimationAsset, recipe.asset))
                    icon.assert(SemanticsMatcher.expectValue(IconAnimationReady, true))
                    icon.assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
                    icon.assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
                    icon.assert(SemanticsMatcher.expectValue(IconAnimationRetained, true))
                }
            }
            assertTail(day)
            val dayPixels = iconPixels(captureHost("theme-${id.name}-day"), tag)
            setTheme(true)
            awaitResource(tag, night.resource)
            assertTail(night)
            val nightPixels = iconPixels(captureHost("theme-${id.name}-night"), tag)
            assertTrue("same-family $id day/night retains neutral contrast in actual pixels", !dayPixels.contentEquals(nightPixels))
            setTheme(false)
            awaitResource(tag, day.resource)
            assertTail(day)
            assertTrue("$id returns to its played day tail", dayPixels.contentEquals(iconPixels(captureHost("theme-${id.name}-day-return"), tag)))
        }
        compose.mainClock.autoAdvance = true
    }

    @OptIn(ExperimentalComposeUiApi::class)
    @Test fun registeredOemAnimationPlaysAndSettlesWithoutSnapshotReplay() {
        val context = org.robolectric.RuntimeEnvironment.getApplication()
        for (asset in listOf("ico_lock_open_f.json", "ico_lock_close_f.json", "ico_media_next_f.json", "ico_media_play_02_f.json", "ico_media_pause_02_f.json")) {
            val loaded = com.airbnb.lottie.LottieCompositionFactory.fromAssetSync(context, "content-oem/$asset")
            assertTrue("registered animation must be loadable: $asset / ${loaded.exception}", loaded.value != null)
        }
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState())
        mountInteractionState(state)
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(OemResource, R.drawable.content_oem_ico_lock_close))
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationVisible, true))
        compose.mainClock.autoAdvance = false
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Lock to ControlState(actual = 0))) }
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(96)
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(OemResource, R.drawable.content_oem_ico_lock_open))
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationAsset, "ico_lock_open_f.json"))
        captureHost("oem-lock-open-mid")
        compose.mainClock.advanceTimeBy(1600)
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationRetained, true))
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        val lockTail = iconPixels(captureHost("oem-lock-open-tail"), "dock-icon-Lock")
        compose.runOnIdle { state.value = state.value.copy(time = "12:25") }
        compose.mainClock.advanceTimeBy(96)
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
        assertTrue("timestamp must preserve the rendered last frame", lockTail.contentEquals(iconPixels(captureHost("oem-lock-open-tail-tick"), "dock-icon-Lock")))
        compose.onNodeWithTag("media-next").performClick()
        compose.mainClock.advanceTimeBy(96)
        compose.onNode(SemanticsMatcher.expectValue(IconAnimationAsset, "ico_media_next_f.json"), useUnmergedTree = true).assertExists()
        captureHost("oem-next-mid")
        compose.mainClock.advanceTimeBy(1600)
        compose.onNodeWithTag("media-next-icon", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
        compose.onNodeWithTag("media-next-icon", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        val nextTail = iconPixels(captureHost("oem-next-tail"), "media-next-icon")
        repeat(8) {
            compose.mainClock.advanceTimeByFrame()
            assertTrue("next must retain its tail without a first-frame flash", nextTail.contentEquals(iconPixels(captureHost("oem-next-hold-$it"), "media-next-icon")))
        }
        val view = (compose.onNodeWithTag(hostTag).fetchSemanticsNode().root as ViewRootForTest).view
        val focusDispatch = android.view.ViewTreeObserver::class.java.getDeclaredMethod("dispatchOnWindowFocusChange", java.lang.Boolean.TYPE).apply { isAccessible = true }
        compose.runOnIdle { focusDispatch.invoke(view.viewTreeObserver, false) }
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(96)
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationVisible, false))
        compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + (ControlId.Lock to ControlState(actual = 1))) }
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(96)
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationAsset, ""))
        compose.runOnIdle { focusDispatch.invoke(view.viewTreeObserver, true) }
        compose.waitForIdle()
        compose.mainClock.advanceTimeBy(96)
        compose.onNodeWithTag("dock-icon-Lock", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationAsset, ""))
        compose.mainClock.autoAdvance = true
    }

    private fun preloadOemAnimations(assets: List<String>) {
        val context = org.robolectric.RuntimeEnvironment.getApplication()
        assets.forEach { asset ->
            val result = com.airbnb.lottie.LottieCompositionFactory.fromAssetSync(context, "content-oem/$asset")
            assertTrue("raw OEM asset must parse: $asset / ${result.exception}", result.value != null)
        }
    }

    private fun iconPixels(frame: Bitmap, tag: String): IntArray {
        val bounds = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
        val w = bounds.width.toInt(); val h = bounds.height.toInt()
        return IntArray(w * h).also { frame.getPixels(it, 0, w, bounds.left.toInt(), bounds.top.toInt(), w, h) }
    }

    @Test fun allSeatLevelsUseOriginalSegmentsAndRetainTheirTail() {
        val suffix = if (dark) "wh" else "bk"
        val families = mapOf(ControlId.Ventilation to "ventilate", ControlId.Heating to "heat", ControlId.Massage to "massage")
        preloadOemAnimations(families.values.map { "ico_skin_seat_${it}_l_$suffix.json" })
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        mountInteractionState(state)
        compose.mainClock.autoAdvance = false
        for (level in listOf(3, 2, 1, 0)) {
            compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls.mapValues { (id, value) -> if (id in families) value.copy(actual = level) else value }) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(384)
            families.forEach { (id, family) ->
                val asset = "ico_skin_seat_${family}_l_$suffix.json"
                for (prefix in listOf("shortcut-icon", "dock-icon")) {
                    val node = compose.onNodeWithTag("$prefix-${id.name}", useUnmergedTree = true)
                    node.assert(SemanticsMatcher.expectValue(IconAnimationAsset, asset))
                    val progress = node.fetchSemanticsNode().config[IconAnimationProgress]
                    assertTrue("selected OEM segment must be moving", progress > .1f && progress < .8f)
                }
            }
            val first = captureHost("oem-seat-$level-mid-a")
            compose.mainClock.advanceTimeBy(384)
            val second = captureHost("oem-seat-$level-mid-b")
            if (level > 0) families.keys.forEach { id ->
                assertTrue("${id.name} must change actual path pixels after generic 260ms pulse settles",
                    !iconPixels(first, "dock-icon-${id.name}").contentEquals(iconPixels(second, "dock-icon-${id.name}")))
            }
            compose.mainClock.advanceTimeBy(400)
            val tail = captureHost("oem-seat-$level-tail")
            families.keys.forEach { id ->
                val node = compose.onNodeWithTag("dock-icon-${id.name}", useUnmergedTree = true)
                node.assert(SemanticsMatcher.expectValue(IconAnimationRetained, true))
                node.assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
                node.assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            }
            compose.runOnIdle { state.value = state.value.copy(time = "12:25") }
            compose.mainClock.advanceTimeBy(96)
            val held = captureHost("oem-seat-$level-held")
            families.keys.forEach { id ->
                assertTrue("${id.name} last frame must survive unchanged truth and timestamp updates", iconPixels(tail, "dock-icon-${id.name}").contentEquals(iconPixels(held, "dock-icon-${id.name}")))
            }
        }
        compose.mainClock.autoAdvance = true
    }

    @Test fun allFiveSourcesPlayTheirOwnPathsAndLiftDoesNotResetTheFrame() {
        val assets = linkedMapOf(MediaSource.AiMusic to "ico_media_aiquting.json", MediaSource.CloudMusic to "ico_media_neteasy.json",
            MediaSource.Usb to "ico_devices_usb.json", MediaSource.Local to "ico_media_local.json", MediaSource.Bluetooth to "ico_bluetooth_1.json")
        preloadOemAnimations(assets.values.toList())
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(sourcesOpen = true, previewMode = false))
        mountInteractionState(state)
        compose.mainClock.autoAdvance = false
        for ((source, asset) in assets) {
            val tag = "source-icon-${source.name}"
            val row = compose.onNodeWithTag("source-${source.name}")
            row.performTouchInput { down(center) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(384)
            compose.onNodeWithTag(tag, useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationAsset, asset))
            val a = iconPixels(captureHost("oem-source-${source.name}-mid-a"), tag)
            compose.mainClock.advanceTimeBy(256)
            val b = iconPixels(captureHost("oem-source-${source.name}-mid-b"), tag)
            assertTrue("${source.label} must animate path pixels while press scale is stable", !a.contentEquals(b))
            val beforeRelease = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().config[IconAnimationProgress]
            row.performTouchInput { cancel() }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(32)
            val afterRelease = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().config[IconAnimationProgress]
            assertTrue("lifting must continue toward tail rather than rewind", afterRelease >= beforeRelease)
            assertTrue("cancel must never dispatch a source command", events.isEmpty())
            compose.mainClock.advanceTimeBy(600)
            compose.onNodeWithTag(tag, useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(source = source)) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(384)
            compose.onNodeWithTag("media-source-icon", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationAsset, asset))
            compose.mainClock.advanceTimeBy(800)
            val tail = iconPixels(captureHost("oem-source-${source.name}-tail"), "media-source-icon")
            compose.mainClock.advanceTimeBy(96)
            assertTrue("persistent source icon must keep the last original frame", tail.contentEquals(iconPixels(captureHost("oem-source-${source.name}-held"), "media-source-icon")))
        }
        compose.mainClock.autoAdvance = true
    }

    @Test fun mediaTransitionEndsOnTheCorrectFilledTargetAndNeverRewinds() {
        preloadOemAnimations(listOf("ico_media_play_02_f.json", "ico_media_pause_02_f.json"))
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        mountInteractionState(state)
        compose.mainClock.autoAdvance = false
        for (playing in listOf(true, false)) {
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(playing = playing)) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeUntil(512) {
                compose.onNodeWithTag("media-play-icon", useUnmergedTree = true).fetchSemanticsNode().config[IconAnimationPlaying]
            }
            var previous = compose.onNodeWithTag("media-play-icon", useUnmergedTree = true).fetchSemanticsNode().config[IconAnimationProgress]
            assertTrue("each transition must begin at its zero frame", previous <= .1f)
            repeat(40) {
                compose.mainClock.advanceTimeByFrame()
                val node = compose.onNodeWithTag("media-play-icon", useUnmergedTree = true)
                val fraction = node.fetchSemanticsNode().config[IconAnimationProgress]
                assertTrue("timeline must advance once from 0 toward 1", fraction >= previous)
                previous = fraction
            }
            compose.onNodeWithTag("media-play-icon", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            compose.onNodeWithTag("media-play-icon", useUnmergedTree = true).assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
            val frame = captureHost("oem-media-${if (playing) "pause" else "play"}-tail")
            val bounds = compose.onNodeWithTag("media-play-icon", useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
            val center = frame.getPixel(bounds.center.x.toInt(), bounds.center.y.toInt())
            val empty = frame.getPixel(bounds.left.toInt()+1, bounds.top.toInt()+1)
            assertTrue("tail must be two pause bars or one filled play triangle", if (playing) center == empty else center != empty)
            val terminal = iconPixels(frame, "media-play-icon")
            repeat(8) {
                compose.mainClock.advanceTimeByFrame()
                assertTrue("completed media transition must retain identical tail pixels", terminal.contentEquals(iconPixels(captureHost("oem-media-${if (playing) "pause" else "play"}-hold-$it"), "media-play-icon")))
            }
        }
        compose.mainClock.autoAdvance = true
    }

    @Test fun uncachedMediaTransitionKeepsItsPreviousFrameUntilZeroFrameIsReady() {
        val context = org.robolectric.RuntimeEnvironment.getApplication()
        com.airbnb.lottie.LottieCompositionFactory.clearCache(context)
        val executor = com.airbnb.lottie.LottieTask.EXECUTOR
        val queued = java.util.ArrayDeque<Runnable>()
        com.airbnb.lottie.LottieTask.EXECUTOR = java.util.concurrent.Executor { queued.add(it) }
        try {
            val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
            mountInteractionState(state)
            compose.mainClock.autoAdvance = false
            val icon = compose.onNodeWithTag("media-play-icon", useUnmergedTree = true)
            icon.assert(SemanticsMatcher.expectValue(IconAnimationReady, false))
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(playing = true)) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(320)
            assertTrue("cold asset parse must still be deferred", queued.isNotEmpty())
            icon.assert(SemanticsMatcher.expectValue(IconAnimationReady, false))
            icon.assert(SemanticsMatcher.expectValue(OemResource, R.drawable.content_oem_ico_media_play_f))
            val held = captureHost("oem-cold-media-waiting")
            val bounds = icon.fetchSemanticsNode().boundsInRoot
            assertTrue("must keep old filled play glyph until new zero frame is ready", held.getPixel(bounds.center.x.toInt(), bounds.center.y.toInt()) != held.getPixel(bounds.left.toInt()+1, bounds.top.toInt()+1))
            while (queued.isNotEmpty()) queued.removeFirst().run()
            compose.waitForIdle()
            compose.mainClock.advanceTimeUntil(512) { icon.fetchSemanticsNode().config[IconAnimationPlaying] }
            val start = icon.fetchSemanticsNode().config[IconAnimationProgress]
            assertTrue("loaded frame must enter at zero instead of flashing the target", start <= .1f)
            compose.mainClock.advanceTimeBy(800)
            icon.assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            val tail = iconPixels(captureHost("oem-cold-media-tail"), "media-play-icon")
            // Drop cache again: the reverse transition must keep this actual
            // retained Lottie tail throughout the next asset's loading gap.
            com.airbnb.lottie.LottieCompositionFactory.clearCache(context)
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(playing = false)) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(320)
            assertTrue("reverse parse must be deferred too", queued.isNotEmpty())
            assertTrue("next cold transition must preserve the previous Drawable tail", tail.contentEquals(iconPixels(captureHost("oem-cold-media-reverse-waiting"), "media-play-icon")))
            while (queued.isNotEmpty()) queued.removeFirst().run()
            compose.waitForIdle()
            compose.mainClock.advanceTimeUntil(512) { icon.fetchSemanticsNode().config[IconAnimationPlaying] }
            assertTrue("reverse transition must enter at zero", icon.fetchSemanticsNode().config[IconAnimationProgress] <= .1f)
            compose.mainClock.advanceTimeBy(800)
            icon.assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            // Now interrupt an in-flight A with a cold B and return to A before
            // B parses. The consumed A key must settle, never freeze mid-frame.
            preloadOemAnimations(listOf("ico_media_play_02_f.json"))
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(playing = true)) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeUntil(512) { icon.fetchSemanticsNode().config[IconAnimationPlaying] }
            compose.mainClock.advanceTimeBy(128)
            val interrupted = icon.fetchSemanticsNode().config[IconAnimationProgress]
            assertTrue("A must actually be mid-transition", interrupted > 0f && interrupted < 1f)
            com.airbnb.lottie.LottieCompositionFactory.clearCache(context)
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(playing = false)) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(64)
            assertTrue("intermediate B parse must remain deferred", queued.isNotEmpty())
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(playing = true)) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(64)
            icon.assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            icon.assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
            while (queued.isNotEmpty()) queued.removeFirst().run()
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(320)
            icon.assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            icon.assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        } finally {
            com.airbnb.lottie.LottieTask.EXECUTOR = executor
            compose.mainClock.autoAdvance = true
            com.airbnb.lottie.LottieCompositionFactory.clearCache(context)
        }
    }

    @Test fun expandedEntrancesKeepMetadataRowsVerticalGeometryAndFullCenteredNames() {
        mountInteractionState(androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false)))
        val catalog = ShortcutId.entries.toList()
        val bounds = catalog.associateWith { compose.onNodeWithTag(shortcutTag(it)).assertIsDisplayed().getUnclippedBoundsInRoot() }
        val ordered = ShortcutGrid.buttons.sortedWith(compareBy({ bounds.getValue(it).top.value }, { bounds.getValue(it).left.value }))
        assertTrue("button rows follow metadata order", ordered == ShortcutGrid.buttons)
        ShortcutGrid.buttons.take(4).forEach { assertTrue("first row remains 135dp", bounds.getValue(it).bottom - bounds.getValue(it).top == 135.dp) }
        val brightness = compose.onNodeWithContentDescription("屏幕亮度").getUnclippedBoundsInRoot()
        val volume = compose.onNodeWithContentDescription("媒体音量").getUnclippedBoundsInRoot()
        val wiper = bounds.getValue(ShortcutId.Wiper)
        assertTrue("all three verticals share the original 290dp lower region", brightness.bottom - brightness.top == 290.dp && volume.bottom - volume.top == 290.dp && wiper.bottom - wiper.top == 290.dp)
        assertTrue("lower ordinary toggles stack left of the stepped and two continuous verticals",
            bounds.getValue(ShortcutId.RearWiper).left == bounds.getValue(ShortcutId.RearWash).left &&
            bounds.getValue(ShortcutId.RearWash).right < wiper.left && wiper.right < brightness.left && brightness.right < volume.left)
        val dockBounds = DockShortcuts.items.associateWith { id ->
            val dock = compose.onNodeWithTag("dock-${id.name}").assertIsDisplayed().assertHasClickAction().getUnclippedBoundsInRoot()
            assertTrue("each of six Dock slots retains a 48dp touch region", dock.right - dock.left >= 48.dp && dock.bottom - dock.top >= 48.dp)
            dock
        }
        assertTrue("Dock preserves its explicit product order", dockBounds.entries.sortedBy { it.value.left.value }.map { it.key } == DockShortcuts.items)
        catalog.forEach { id ->
            val label = compose.onNodeWithTag("shortcut-label-${id.name}", useUnmergedTree = true)
            label.assertTextEquals(id.label)
            val layouts = mutableListOf<androidx.compose.ui.text.TextLayoutResult>()
            label.performSemanticsAction(androidx.compose.ui.semantics.SemanticsActions.GetTextLayoutResult) { it(layouts) }
            assertTrue("full name is not clipped or ellipsized: ${id.label}", layouts.single().lineCount <= 2 && !layouts.single().hasVisualOverflow)
        }
        compose.onNodeWithTag("control-PassengerHeating").performClick()
        assertTrue("passenger remains an independent shortcut command", events.last() == ContentEvent.ControlTapped(ControlId.PassengerHeating))
        compose.onNodeWithTag("dock-PassengerHeating").assertDoesNotExist()
        compose.onNodeWithTag("dock-SteeringHeat").assertDoesNotExist()
    }

    @Test fun compactSixSlotsScrollWithoutShrinkingHitRegionsOrTruncatingNames() {
        val width = androidx.compose.runtime.mutableStateOf(400.dp)
        compose.setContent { ContentTheme(dark) { ContentPanel(ContentUiState(previewMode = false).copy(dark = dark), {}, Modifier.width(width.value).testTag(hostTag)) } }
        for (value in listOf(400.dp, 320.dp)) {
            compose.runOnIdle { width.value = value }
            ShortcutId.entries.forEach { id ->
                val tile = compose.onNodeWithTag(shortcutTag(id)).performScrollTo().assertIsDisplayed()
                tile.assertHasClickAction()
                val region = tile.getUnclippedBoundsInRoot()
                assertTrue("narrow grid remains a real touch surface", region.right - region.left >= 48.dp && region.bottom - region.top >= 48.dp)
                val label = compose.onNodeWithTag("shortcut-label-${id.name}", useUnmergedTree = true)
                label.assertTextEquals(id.label)
                val layouts = mutableListOf<androidx.compose.ui.text.TextLayoutResult>()
                label.performSemanticsAction(androidx.compose.ui.semantics.SemanticsActions.GetTextLayoutResult) { it(layouts) }
                assertTrue("narrow full name is fully visible: ${id.label} at $value / tile=$region / text=${layouts.single().size} / lines=${layouts.single().lineCount} / widthOverflow=${layouts.single().didOverflowWidth} / heightOverflow=${layouts.single().didOverflowHeight}", layouts.single().lineCount <= 2 && !layouts.single().hasVisualOverflow)
            }
            compose.onAllNodes(hasClickAction() and hasAnyAncestor(hasTestTag("floating-dock"))).assertCountEquals(6)
            DockShortcuts.items.forEach { id ->
                val dock = compose.onNodeWithTag("dock-${id.name}").performScrollTo().assertIsDisplayed().getUnclippedBoundsInRoot()
                assertTrue("seven-slot minimum width is scrollable, not squeezed below 48dp", dock.right - dock.left >= 48.dp && dock.bottom - dock.top >= 48.dp)
            }
        }
    }

    @Test fun driverPassengerAndWheelCyclesPlayOneShotInBothEntrances() {
        val ids = listOf(ControlId.Heating, ControlId.PassengerHeating, ControlId.SteeringHeat)
        preloadOemAnimations(ids.flatMap { id -> (0..id.maxLevel).map { vehicleControlIconRecipe(id, it, dark).asset } }.distinct())
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        mountInteractionState(state)
        compose.mainClock.autoAdvance = false
        val seats = listOf(3, 2, 1, 4, 0)
        val wheel = listOf(2, 1, 3, 0, 2)
        seats.indices.forEach { step ->
            val modes = mapOf(ControlId.Heating to seats[step], ControlId.PassengerHeating to seats[step], ControlId.SteeringHeat to wheel[step])
            compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls + modes.mapValues { ControlState(actual = it.value) }) }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(128)
            modes.forEach { (id, level) ->
                val recipe = vehicleControlIconRecipe(id, level, dark)
                for (prefix in iconEntrances(id)) {
                    val icon = compose.onNodeWithTag("$prefix-${id.name}", useUnmergedTree = true)
                    icon.assert(SemanticsMatcher.expectValue(OemResource, recipe.resource))
                    icon.assert(SemanticsMatcher.expectValue(IconAnimationAsset, recipe.asset))
                    icon.assert(SemanticsMatcher.expectValue(IconAnimationPlaying, true))
                    val progress = icon.fetchSemanticsNode().config[IconAnimationProgress]
                    assertTrue("$id/$level enters its selected OEM segment once", progress > 0f && progress < .5f)
                }
            }
            compose.mainClock.advanceTimeBy(208)
            val middle = captureHost("new-vehicle-$step-mid")
            compose.mainClock.advanceTimeBy(352)
            val later = captureHost("new-vehicle-$step-later")
            ids.forEach { id ->
                for (prefix in iconEntrances(id)) assertTrue("$id must move original path pixels after the 260ms generic transition has ended",
                    !iconPixels(middle, "$prefix-${id.name}").contentEquals(iconPixels(later, "$prefix-${id.name}")))
            }
            compose.mainClock.advanceTimeBy(600)
            val tail = captureHost("new-vehicle-$step-tail")
            compose.runOnIdle { state.value = state.value.copy(time = "12:25") }
            compose.mainClock.advanceTimeBy(96)
            val held = captureHost("new-vehicle-$step-held")
            for (id in ids) for (prefix in iconEntrances(id)) {
                val tag = "$prefix-${id.name}"
                val icon = compose.onNodeWithTag(tag, useUnmergedTree = true)
                icon.assert(SemanticsMatcher.expectValue(IconAnimationRetained, true))
                icon.assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
                icon.assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
                assertTrue("same snapshot/time does not replay or replace $id tail", iconPixels(tail, tag).contentEquals(iconPixels(held, tag)))
            }
        }
        compose.mainClock.autoAdvance = true
    }

    @Test fun lockPendingPaletteAndConfirmationKeepTheOneShotTimeline() {
        preloadOemAnimations(listOf("ico_lock_close_f.json", "ico_lock_open_f.json"))
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        var requested: Int? = null
        mountInteractionState(state) { event ->
            if (event == ContentEvent.ControlTapped(ControlId.Lock)) requested = ControlId.Lock.nextLevel(state.value.controls.getValue(ControlId.Lock).actual)
        }
        compose.mainClock.autoAdvance = false
        fun node(prefix: String) = compose.onNodeWithTag("$prefix-Lock", useUnmergedTree = true)
        fun assertMoving(previous: Float = 0f): Float {
            var progress = 0f
            for (prefix in listOf("shortcut-icon", "dock-icon")) {
                val icon = node(prefix)
                icon.assert(SemanticsMatcher.expectValue(IconAnimationPlaying, true))
                progress = icon.fetchSemanticsNode().config[IconAnimationProgress]
                assertTrue("pending/readback/palette must not cancel, reset or tail-snap lock", progress > previous && progress < 1f)
            }
            return progress
        }
        for ((entrance, target) in listOf("control-Lock" to 0, "dock-Lock" to 1)) {
            requested = null
            val actual = state.value.controls.getValue(ControlId.Lock).actual
            compose.onNodeWithTag(entrance).performTouchInput { down(center) }
            compose.mainClock.advanceTimeBy(64)
            compose.onNodeWithTag(entrance).performTouchInput { up() }
            compose.mainClock.advanceTimeBy(96)
            assertTrue("real click must request the next lock mode", requested == target)
            for (prefix in listOf("shortcut-icon", "dock-icon")) {
                node(prefix).assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
                node(prefix).assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            }
            // No optimistic mode is created by the glyph: the real parent now
            // supplies an unknown pending target. Opening uses primary tint here.
            compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls +
                (ControlId.Lock to ControlState(actual = -1, target = target, known = false))) }
            compose.waitForIdle(); compose.mainClock.advanceTimeBy(96)
            var progress = assertMoving()
            compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls +
                (ControlId.Lock to ControlState(actual = actual, target = target, known = true))) }
            // Opening changes primary -> blue, same displayed/asset/frames. The
            // previous effect-key regression snaps to 1 here and fails this check.
            compose.waitForIdle(); compose.mainClock.advanceTimeBy(96)
            progress = assertMoving(progress)
            compose.runOnIdle { state.value = state.value.copy(time = "12:26", controls = state.value.controls +
                (ControlId.Lock to ControlState(actual = target, target = null, known = true))) }
            compose.waitForIdle(); compose.mainClock.advanceTimeBy(96)
            progress = assertMoving(progress)
            val middle = captureHost("lock-pending-$target-mid")
            compose.onNodeWithTag(entrance).performTouchInput { down(center) }
            compose.mainClock.advanceTimeBy(64)
            progress = assertMoving(progress)
            compose.onNodeWithTag(entrance).performTouchInput { up() }
            compose.mainClock.advanceTimeBy(64)
            assertMoving(progress)
            compose.mainClock.advanceTimeBy(2400)
            val tail = captureHost("lock-pending-$target-tail")
            for (prefix in listOf("shortcut-icon", "dock-icon")) {
                val tag = "$prefix-Lock"
                node(prefix).assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
                node(prefix).assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
                node(prefix).assert(SemanticsMatcher.expectValue(IconAnimationAsset, if (target == 0) "ico_lock_open_f.json" else "ico_lock_close_f.json"))
                assertTrue("both lock directions have actual intermediate glyph pixels", !iconPixels(middle, tag).contentEquals(iconPixels(tail, tag)))
            }
            compose.runOnIdle { state.value = state.value.copy(time = "12:27") }
            compose.mainClock.advanceTimeBy(96)
            val held = captureHost("lock-pending-$target-held")
            for (prefix in listOf("shortcut-icon", "dock-icon")) assertTrue("confirmed/time update retains lock tail",
                iconPixels(tail, "$prefix-Lock").contentEquals(iconPixels(held, "$prefix-Lock")))
        }
        compose.mainClock.autoAdvance = true
    }

    @Test fun knownLockClicksPublishTargetsImmediatelyAndReadbackKeepsPlaying() {
        preloadOemAnimations(listOf("ico_lock_close_f.json", "ico_lock_open_f.json"))
        val state = androidx.compose.runtime.mutableStateOf(ContentUiState(previewMode = false))
        mountInteractionState(state) { event ->
            if (event == ContentEvent.ControlTapped(ControlId.Lock)) {
                val actual = state.value.controls.getValue(ControlId.Lock)
                state.value = state.value.copy(controls = state.value.controls +
                    (ControlId.Lock to actual.copy(target = ControlId.Lock.nextLevel(actual.actual), available = false)))
            }
        }
        compose.mainClock.autoAdvance = false
        fun progress(previous: Float = 0f): Float {
            var current = 0f
            for (prefix in listOf("shortcut-icon", "dock-icon")) {
                val icon = compose.onNodeWithTag("$prefix-Lock", useUnmergedTree = true)
                icon.assert(SemanticsMatcher.expectValue(IconAnimationPlaying, true))
                current = icon.fetchSemanticsNode().config[IconAnimationProgress]
                assertTrue("known pending/ACK/confirmation preserves forward lock progress", current > previous && current < 1f)
            }
            return current
        }
        for ((entrance, target) in listOf("control-Lock" to 0, "dock-Lock" to 1)) {
            compose.onNodeWithTag(entrance).performTouchInput { down(center) }
            compose.mainClock.advanceTimeBy(64)
            compose.onNodeWithTag(entrance).performTouchInput { up() }
            compose.waitForIdle()
            compose.mainClock.advanceTimeBy(96)
            val pending = state.value.controls.getValue(ControlId.Lock)
            assertTrue("click publishes a target immediately and preserves actual evidence",
                pending.known && pending.target == target && pending.actual != target && !pending.available)
            var prior = progress()
            val asset = if (target == 0) "ico_lock_open_f.json" else "ico_lock_close_f.json"
            for (prefix in listOf("shortcut-icon", "dock-icon")) compose.onNodeWithTag("$prefix-Lock", useUnmergedTree = true)
                .assert(SemanticsMatcher.expectValue(IconAnimationAsset, asset))
            // Binder ACK and an unchanged actual report leave the accepted target pending.
            compose.runOnIdle { state.value = state.value.copy(time = "12:26", controls = state.value.controls.toMap()) }
            compose.waitForIdle(); compose.mainClock.advanceTimeBy(96)
            prior = progress(prior)
            // Own readback confirms actual and clears pending, keeping the same displayed mode.
            compose.runOnIdle { state.value = state.value.copy(controls = state.value.controls +
                (ControlId.Lock to ControlState(actual = target, known = true, available = true))) }
            compose.waitForIdle(); compose.mainClock.advanceTimeBy(96)
            progress(prior)
            compose.mainClock.advanceTimeBy(2400)
            val tail = captureHost("lock-known-$target-tail")
            compose.runOnIdle { state.value = state.value.copy(time = "12:27", controls = state.value.controls.toMap()) }
            compose.mainClock.advanceTimeBy(96)
            val held = captureHost("lock-known-$target-held")
            for (prefix in listOf("shortcut-icon", "dock-icon")) {
                val tag = "$prefix-Lock"
                compose.onNodeWithTag(tag, useUnmergedTree = true)
                    .assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
                    .assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
                assertTrue("known confirmation and repeated snapshot keep the correct lock tail", iconPixels(tail, tag).contentEquals(iconPixels(held, tag)))
            }
        }
        compose.mainClock.autoAdvance = true
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun captureHost(name: String, checkShortcutShadows: Boolean = true): Bitmap {
        val semantics = compose.onNodeWithTag(hostTag).fetchSemanticsNode()
        val root = semantics.root as? ViewRootForTest ?: error("Compose host is not an Android view")
        val bounds = semantics.boundsInRoot
        val bitmap = compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.toInt(), bounds.height.toInt(), Bitmap.Config.ARGB_8888).also { image ->
                val canvas = Canvas(image)
                canvas.translate(-bounds.left, -bounds.top)
                root.view.draw(canvas)
            }
        }
        assertTrue("empty native capture", bitmap.width > 0 && bitmap.height > 0)
        assertTrue("expected 640x1080 native capture", bitmap.width == 640 && bitmap.height == 1080)
        fun brightness(x: Int, y: Int): Int {
            val pixel = bitmap.getPixel(x, y)
            return android.graphics.Color.red(pixel) + android.graphics.Color.green(pixel) + android.graphics.Color.blue(pixel)
        }
        val background = brightness(300, 800)
        val surfaces = (if (checkShortcutShadows) listOf(70 to 194) else emptyList()) + listOf(300 to 952, 300 to 1068)
        for ((x, bottom) in surfaces) {
            val near = brightness(x, bottom + 2)
            val far = brightness(x, bottom + 8)
            assertTrue("shadow must be visible below surface at $x/$bottom", near < background)
            assertTrue("shadow must soften toward background at $x/$bottom", far > near && far <= background)
        }
        if (checkShortcutShadows) assertTrue("shadow should project downward more than upward", brightness(70, 196) < brightness(70, 57))
        val colors = mutableSetOf<Int>()
        for (y in 0 until bitmap.height step 11) for (x in 0 until bitmap.width step 11) colors += bitmap.getPixel(x, y)
        assertTrue("capture must contain rendered color variation", colors.size > 8)
        val directory = File("build/frames")
        assertTrue(directory.isDirectory || directory.mkdirs())
        File(directory, "640x1080-${if (dark) "dark" else "light"}-$name.png").outputStream().use { output ->
            assertTrue("PNG encoding failed", bitmap.compress(Bitmap.CompressFormat.PNG, 100, output))
        }
        return bitmap
    }

    private tailrec fun Context.activity(): Activity = when (this) {
        is Activity -> this
        is ContextWrapper -> baseContext.activity()
        else -> error("Preview Compose view is not hosted by an Activity")
    }
}

@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class ContentPanelDarkPrototypeRenderTest : ContentPanelLightPrototypeRenderTest() {
    override val dark = true
}
