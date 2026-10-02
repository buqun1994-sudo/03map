package com.icar03.content.runtime

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.Canvas
import android.os.Looper
import android.view.View
import android.view.WindowManager
import androidx.compose.runtime.SideEffect
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import com.autonavi.amapauto.content.*
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit

/** Real BoundContentPanel and formal Store; all external ports are explicitly test doubles. */
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
open class BoundContentPanelLightTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()

    @Test fun boundPanelRoutesControlPendingAndSourceReadbackWithRealLifecycle() {
        val vehicle = TestVehiclePort()
        val media = TestMediaPort()
        val visible = androidx.compose.runtime.mutableStateOf(true)
        val store = ContentStore(RuntimeEnvironment.getApplication(), vehicle, media, TestSystemPort())
        try {
            store.setPageIndex(0)
            store.setThemeMode(if (dark) ContentState.THEME_DARK else ContentState.THEME_LIGHT)
            store.acceptVehicleSnapshot(vehicleSnapshot(0))
            store.acceptMediaSnapshot(mediaSnapshot("蓝牙音乐"))
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
                if (visible.value) BoundContentPanel(store, Modifier.testTag("bound-host"))
            }
            compose.waitForIdle()
            compose.onNodeWithTag("bound-host").assertWidthIsEqualTo(640.dp).assertHeightIsEqualTo(1080.dp)
            compose.onNodeWithText("25°C").assertIsDisplayed()
            compose.onNodeWithText("123km").assertIsDisplayed()
            compose.onNodeWithText("端口替身音轨").assertIsDisplayed()
            compose.onNodeWithTag("control-Ventilation").assertIsEnabled().performClick()
            compose.runOnIdle {
                assertEquals(ContentRegistry.Shortcuts.SEAT_VENTILATION, vehicle.command)
                assertEquals(0, store.snapshot().ventilationLevel)
                assertEquals(3, store.snapshot().pendingSeatLevel)
            }
            compose.onNodeWithTag("control-Ventilation").assertIsNotEnabled()
            compose.onNodeWithTag("control-Ventilation").assert(SemanticsMatcher.expectValue(SemanticsProperties.StateDescription, "待确认"))
            compose.runOnIdle { store.acceptVehicleSnapshot(vehicleSnapshot(3)) }
            compose.onNodeWithTag("control-Ventilation").assertIsEnabled()
            compose.runOnIdle { assertEquals("", store.snapshot().pendingVehicleCommand) }
            capture("closed")
            compose.onNodeWithTag("source-button").performClick()
            compose.onNodeWithTag("sources-menu").assertIsDisplayed()
            compose.onNodeWithTag("source-Bluetooth").assertIsSelected()
            capture("sources")
            compose.onNodeWithTag("source-Usb").performClick()
            assertTrue(media.sourceCalled.await(2, TimeUnit.SECONDS))
            compose.runOnIdle {
                assertEquals("USB音乐", media.source)
                assertEquals("蓝牙音乐", store.snapshot().mediaSource)
                assertEquals("USB音乐", store.snapshot().pendingSource)
            }
            compose.onNodeWithTag("source-button").assert(SemanticsMatcher.expectValue(SemanticsProperties.StateDescription, "切换中：USB音乐"))
            compose.runOnIdle { store.acceptMediaSnapshot(mediaSnapshot("USB音乐")) }
            compose.onNodeWithTag("source-button").assert(SemanticsMatcher.expectValue(SemanticsProperties.StateDescription, "USB音乐"))
            compose.runOnIdle { media.sourceAvailable = false; store.updateClock(System.currentTimeMillis()) }
            compose.onNodeWithTag("source-button").assertIsNotEnabled()
            compose.runOnIdle { media.sourceAvailable = true; store.acceptMediaSnapshot(ContentPorts.MediaSnapshot.unavailable()) }
            compose.onNodeWithTag("source-button").assertIsEnabled()
            compose.onNodeWithContentDescription("播放").assertIsNotEnabled()
            // Disposing the real Compose entry detaches its listener and clock, but not shared ports.
            compose.runOnIdle { visible.value = false }
            compose.runOnIdle {
                val now = store.snapshot().nowMillis
                shadowOf(Looper.getMainLooper()).idleFor(java.time.Duration.ofSeconds(2))
                assertEquals(now, store.snapshot().nowMillis)
                assertEquals(0, vehicle.stops)
                assertEquals(0, media.stops)
            }
        } finally { compose.runOnIdle { visible.value = false }; store.destroy() }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture(name: String) {
        compose.waitForIdle()
        val semantics = compose.onNodeWithTag("bound-host").fetchSemanticsNode()
        val root = semantics.root as ViewRootForTest
        val bounds = semantics.boundsInRoot
        val bitmap = compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.toInt(), bounds.height.toInt(), Bitmap.Config.ARGB_8888).also {
                val canvas = Canvas(it); canvas.translate(-bounds.left, -bounds.top); root.view.draw(canvas)
            }
        }
        assertEquals(640, bitmap.width); assertEquals(1080, bitmap.height)
        val colors = mutableSetOf<Int>()
        for (y in 0 until 1080 step 11) for (x in 0 until 640 step 11) colors += bitmap.getPixel(x, y)
        assertTrue("BoundContentPanel must be nonblank", colors.size > 8)
        val directory = File("build/frames")
        check(directory.isDirectory || directory.mkdirs())
        File(directory, "640x1080-${if (dark) "dark" else "light"}-bound-ports-$name.png").outputStream().use {
            assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
    }

    private tailrec fun Context.activity(): Activity = when (this) {
        is Activity -> this
        is ContextWrapper -> baseContext.activity()
        else -> error("No Activity host")
    }
    private fun vehicleSnapshot(level: Int) = ContentPorts.VehicleSnapshot(true, false, 25f, 60, 123,
        ContentState.CHARGE_DEFAULT, 0, 0, 0, Float.NaN, -1, level, 0, 0, 0, true, false, true, true, true)
    private fun mediaSnapshot(source: String) = ContentPorts.MediaSnapshot(true, false, source, false, 1,
        "端口替身音轨", "本机集成测试", true, true, null, "", "", 180_000L, -1L, 0L, 0f,
        ContentPorts.MediaSongIdentity.SONG)

    private class TestVehiclePort : ContentPorts.VehiclePort {
        var command: String? = null; var stops = 0
        override fun isAvailable() = true
        override fun isLockAvailable() = true
        override fun requestLock(locked: Boolean, requestId: Long) = true
        override fun requestSeatLevel(seatId: String, level: Int, requestId: Long): Boolean { command = seatId; return true }
        override fun start(listener: ContentPorts.VehicleSnapshotListener) { listener.onVehicleSnapshot(ContentPorts.VehicleSnapshot.unavailable()) }
        override fun stop() { stops++ }
    }
    private class TestMediaPort : ContentPorts.MediaPort {
        var sourceAvailable = true; var source: String? = null; var stops = 0
        val sourceCalled = CountDownLatch(1)
        override fun isAvailable() = true
        override fun isSourceAvailable() = sourceAvailable
        override fun requestPlayback(playing: Boolean) = true
        override fun requestNext() = true
        override fun requestSource(source: String): Boolean { this.source = source; sourceCalled.countDown(); return true }
        override fun start(listener: ContentPorts.MediaSnapshotListener) { listener.onMediaSnapshot(ContentPorts.MediaSnapshot.unavailable()) }
        override fun stop() { stops++ }
    }
    private class TestSystemPort : ContentPorts.SystemPort {
        override fun read(kind: Int) = ContentPorts.SystemSnapshot(true, if (kind == 0) 65 else 38)
        override fun write(kind: Int, percent: Int) = false
    }
}

@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class BoundContentPanelDarkTest : BoundContentPanelLightTest() { override val dark = true }
