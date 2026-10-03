package com.icar03.content.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.content.res.Configuration
import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.WindowManager
import androidx.compose.runtime.*
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.semantics.getOrNull
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.Density
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File

/** Fixed physical viewport; simulated host supplies system density independently of map context. */
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
open class ContentPanelSystem141Test {
    protected open val systemDpi = 141
    protected open val dark = false
    protected open val referenceWidthDp: Float? = null
    @get:Rule val compose = createComposeRule()
    private val events = mutableListOf<ContentEvent>()
    private val state = mutableStateOf(ContentUiState(
        previewMode = false, weekday = "星期三", rangeUnit = "km", time = "12:24", range = "366",
        temperature = "25°", batteryPercent = 70,
        media = MediaState(title = null, artist = null, available = true),
    ))
    private val density get() = referenceWidthDp?.let { 640f / it } ?: (systemDpi / 160f)

    private fun mount() {
        compose.setContent {
            val view = LocalView.current
            val appDensity = (systemDpi * 1.25f).toInt()
            val mapContext = remember(view.context) {
                view.context.createConfigurationContext(Configuration(view.resources.configuration).apply { densityDpi = appDensity })
            }
            @Suppress("DEPRECATION")
            SideEffect {
                val window = view.context.activity().window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
                assertEquals(appDensity, mapContext.resources.displayMetrics.densityDpi)
            }
            CompositionLocalProvider(LocalContext provides mapContext, LocalDensity provides Density(density)) {
                ContentTheme(dark) {
                    ContentPanel(state.value.copy(dark = dark), { event ->
                        events += event
                        when (event) {
                            ContentEvent.OpenSources -> state.value = state.value.copy(sourcesOpen = true)
                            ContentEvent.DismissSheet -> state.value = state.value.copy(sourcesOpen = false)
                            is ContentEvent.PageSelected -> state.value = state.value.copy(page = event.page)
                            else -> Unit
                        }
                    }, Modifier.testTag("density-host"))
                }
            }
        }
        compose.waitForIdle()
    }

    private fun touch(tag: String) {
        val bounds = compose.onNodeWithTag(tag).assertIsDisplayed().fetchSemanticsNode().boundsInRoot
        assertTrue("$tag width below 48 system dp: $bounds", bounds.width + 1 >= 48 * density)
        assertTrue("$tag height below 48 system dp: $bounds", bounds.height + 1 >= 48 * density)
        assertTrue("$tag outside physical viewport: $bounds", bounds.left >= -1 && bounds.right <= 641 && bounds.top >= -1 && bounds.bottom <= 1081)
    }

    @Test fun systemDensityKeepsControlsMediaDockAndSourcesReachable() {
        mount()
        ControlId.entries.forEach { touch("control-${it.name}") }
        touch("shortcut-Settings")
        // At 320dpi the page scrolls; controls below the fold remain reachable.
        compose.onNodeWithTag("brightness-card").performScrollTo()
        touch("brightness-card"); touch("volume-card"); touch("source-button")
        ShortcutId.entries.forEach { touch("dock-${it.name}") }
        assertTopBar()
        compose.onNodeWithTag("dock-SteeringHeat").assertHasClickAction()
        compose.onNodeWithTag("dock-Settings").performClick()
        assertEquals(ContentEvent.SettingsTapped, events.last())
        val media = compose.onNodeWithTag("media-card").fetchSemanticsNode().boundsInRoot
        for (label in listOf("播放", "下一首")) {
            val bounds = compose.onNodeWithContentDescription(label).assertIsDisplayed().fetchSemanticsNode().boundsInRoot
            assertTrue("$label touch size", bounds.width + 1 >= 48 * density && bounds.height + 1 >= 48 * density)
            assertTrue("$label crosses media edge", bounds.left >= media.left && bounds.right <= media.right)
        }
        compose.onNodeWithText("暂无媒体").assertIsDisplayed()
        capture("closed")
        compose.onNodeWithTag("source-button").performClick()
        MediaSource.entries.forEach { touch("source-${it.name}") }
        capture("sources")
        compose.onNodeWithTag("sources-dismiss").performTouchInput { click(androidx.compose.ui.geometry.Offset(4f, 4f)) }
        compose.onNodeWithTag("runtime-pages").performTouchInput { swipeLeft() }
        compose.waitForIdle()
        compose.onNodeWithText("暂无歌词").assertIsDisplayed()
        touch("lyrics-source-action")
        compose.onNodeWithTag("lyrics-source-action").performClick()
        assertEquals(ContentEvent.OpenSources, events.last())
    }

    private fun assertTopBar() {
        val top = compose.onNodeWithTag("top-bar").fetchSemanticsNode().boundsInRoot
        val timeNode = compose.onNodeWithTag("top-time").fetchSemanticsNode()
        val time = timeNode.boundsInRoot
        assertTrue("time must remain at left edge", kotlin.math.abs(time.left - 12 * density) <= 1)
        val timeText = timeNode.config[androidx.compose.ui.semantics.SemanticsProperties.Text].joinToString { it.text }
        assertTrue("weekday must survive adaptation: $timeText", timeText.contains("星期三") || timeText.contains("周三"))
        val tags = mutableListOf("top-time")
        if (compose.onAllNodesWithTag("top-temperature").fetchSemanticsNodes().isNotEmpty()) tags += "top-temperature"
        if (state.value.chargeStatus != null) tags += "charge-status"
        tags += "top-range"; tags += "top-battery"
        val nodes = tags.map { compose.onNodeWithTag(it).fetchSemanticsNode() }.sortedBy { it.boundsInRoot.left }
        nodes.zipWithNext().forEach { (left, right) ->
            assertTrue("top bar overlap", left.boundsInRoot.right <= right.boundsInRoot.left)
        }
        nodes.forEach { node ->
            val bounds = node.boundsInRoot
            assertTrue("top bar clipped: $bounds", bounds.left >= top.left && bounds.right <= top.right && bounds.top >= top.top && bounds.bottom <= top.bottom)
            val natural = node.config.getOrNull(NaturalTextWidth)
            if (natural != null) assertTrue("natural text width truncated: $bounds vs $natural", bounds.width + 1 >= natural)
        }
        val battery = compose.onNodeWithTag("top-battery").fetchSemanticsNode().boundsInRoot
        assertTrue("battery remains right aligned", kotlin.math.abs(battery.right - (640 - 12 * density)) <= 1)
        if (state.value.chargeStatus != null) {
            val charge = compose.onNodeWithTag("charge-status").fetchSemanticsNode()
            val range = compose.onNodeWithTag("top-range").fetchSemanticsNode().boundsInRoot
            assertTrue("state immediately precedes range", range.left - charge.boundsInRoot.right <= 8 * density + 1)
            assertEquals(state.value.chargeStatus, charge.config[androidx.compose.ui.semantics.SemanticsProperties.StateDescription])
            assertTrue("state matches primary text height", kotlin.math.abs(charge.boundsInRoot.height - time.height) <= 1)
        }
    }

    @Test fun chargingLongStateRemainsSingleLineWithoutTimeRangeOverlap() {
        state.value = state.value.copy(chargeStatus = "充电中 · 功率 123.5 kW · 剩余 999分钟", charging = true, time = "12:24:59", range = "9999", rangeUnit = "km")
        mount()
        assertTopBar()
        val temperatureVisible = compose.onNodeWithTag("top-bar").fetchSemanticsNode().config[TemperatureVisible]
        val displayedStatus = compose.onNodeWithTag("charge-status").fetchSemanticsNode().config[androidx.compose.ui.semantics.SemanticsProperties.Text].joinToString { it.text }
        assertTrue("charging primary status must survive width adaptation", displayedStatus.contains("充电中"))
        assertFalse("power is kW, never kWh", displayedStatus.contains("kWh"))
        if (systemDpi >= 212) {
            assertFalse("optional temperature must yield to primary charging state", temperatureVisible)
            compose.onNodeWithTag("top-temperature").assertDoesNotExist()
        }
        println("top-bar widthDp=${640 / density}, systemDpi=$systemDpi, temperatureVisible=$temperatureVisible, time=${compose.onNodeWithTag("top-time").fetchSemanticsNode().config[androidx.compose.ui.semantics.SemanticsProperties.Text]}, state=${compose.onNodeWithTag("charge-status").fetchSemanticsNode().config[androidx.compose.ui.semantics.SemanticsProperties.Text]}")
        capture("charging-longest")
    }

    @Test fun normalChargingDetailsRetainTemperatureWhenMeasuredSpaceAllows() {
        state.value = state.value.copy(chargeStatus = "充电中 · 功率 78.5 kW · 剩余 35分钟", charging = true)
        mount()
        assertTopBar()
        val temperatureVisible = compose.onNodeWithTag("top-bar").fetchSemanticsNode().config[TemperatureVisible]
        if (systemDpi == 141) {
            assertTrue("normal charging details should all fit at actual 726dp", temperatureVisible)
            compose.onNodeWithTag("charge-status").assertTextEquals("充电中 · 功率 78.5 kW · 剩余 35分钟")
            val time = compose.onNodeWithTag("top-time").fetchSemanticsNode().boundsInRoot
            val temperature = compose.onNodeWithTag("top-temperature").fetchSemanticsNode().boundsInRoot
            val charge = compose.onNodeWithTag("charge-status").fetchSemanticsNode().boundsInRoot
            assertTrue("charging temperature immediately follows time", temperature.left >= time.right && temperature.right < charge.left)
        }
        println("normal charging widthDp=${640 / density}, systemDpi=$systemDpi, temperatureVisible=$temperatureVisible")
        capture("charging-normal")
    }

    @Test fun everyChargingStateKeepsWeekdayAndPrimaryValues() {
        mount()
        listOf("已插枪·等待充电", "预约等待中", "充电状态待确认", "充电中", "充电中 · 功率 123.5 kW", "充电中 · 剩余 999分钟").forEachIndexed { index, status ->
            compose.runOnIdle { state.value = state.value.copy(chargeStatus = status, charging = true, time = "12:24:59") }
            compose.waitForIdle()
            assertTopBar()
            capture("charge-state-$index")
        }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture(suffix: String) {
        val node = compose.onNodeWithTag("density-host").fetchSemanticsNode()
        val root = node.root as ViewRootForTest
        val bounds = node.boundsInRoot
        val bitmap = compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.toInt(), bounds.height.toInt(), Bitmap.Config.ARGB_8888).also {
                val canvas = Canvas(it); canvas.translate(-bounds.left, -bounds.top); root.view.draw(canvas)
            }
        }
        assertEquals(640, bitmap.width); assertEquals(1080, bitmap.height)
        val colors = mutableSetOf<Int>()
        for (y in 0 until 1080 step 11) for (x in 0 until 640 step 11) colors += bitmap.getPixel(x, y)
        assertTrue("blank physical frame", colors.size > 8)
        val directory = File("build/frames").apply { mkdirs() }
        File(directory, "640x1080-system${systemDpi}-map${(systemDpi * 1.25f).toInt()}-${if (dark) "dark" else "light"}-$suffix.png").outputStream().use {
            assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
    }

    private tailrec fun Context.activity(): Activity = when (this) {
        is Activity -> this
        is ContextWrapper -> baseContext.activity()
        else -> error("Compose view has no Activity")
    }
}

@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class ContentPanelSystem141DarkTest : ContentPanelSystem141Test() { override val dark = true }
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
open class ContentPanelSystem212Test : ContentPanelSystem141Test() { override val systemDpi = 212 }
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class ContentPanelSystem212DarkTest : ContentPanelSystem212Test() { override val dark = true }
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
open class ContentPanelSystem320Test : ContentPanelSystem141Test() { override val systemDpi = 320 }
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class ContentPanelSystem320DarkTest : ContentPanelSystem320Test() { override val dark = true }

@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
open class ContentPanelReference600Test : ContentPanelSystem141Test() {
    override val systemDpi = 171
    override val referenceWidthDp = 600f
}
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class ContentPanelReference600DarkTest : ContentPanelReference600Test() { override val dark = true }
