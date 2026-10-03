package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.os.SystemClock
import android.view.ViewTreeObserver
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.MutableState
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import org.robolectric.shadows.ShadowSystemClock
import java.io.File
import java.time.Duration
import kotlin.coroutines.CoroutineContext

/** Formal UI clock/fallback contracts; synthetic media only, no vehicle or new source clock. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class WallpaperFrameDriverTest {
    @get:Rule val compose = createComposeRule()
    private val host = "frame-driver-fixture"
    private fun <T> value(key: SemanticsPropertyKey<T>) = compose.onNode(
        SemanticsMatcher.keyIsDefined(key), useUnmergedTree = true).fetchSemanticsNode().config[key]

    private fun source(key: String = "first", speed: Float = 1f) = LyricsState(
        recordingKey = key,
        lines = listOf(LyricLine(0, "Fallback ink remains visible",
            words = listOf(LyricWord(0, 500, "Fallback ink remains visible")), endTimeMs = 500)),
        activeIndex = 0, activeIndices = listOf(0), scrollIndex = 0,
        timelineReady = true, positionMs = 0, capturedAtMs = SystemClock.elapsedRealtime(),
        playbackSpeed = speed, durationMs = 500,
    )

    private fun mount(): MutableState<LyricsState> {
        ShadowSystemClock.advanceBy(Duration.ofMillis(1_000))
        val current = mutableStateOf(source())
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalLyricPreparationDispatcher provides Dispatchers.Unconfined) {
                Box(Modifier.fillMaxSize().background(androidx.compose.ui.graphics.Color.Black).testTag(host)) {
                    WallpaperLyrics(current.value, true)
                }
            }
        }
        dispatchFocus(true)
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
        assertTrue(value(LyricFrameRunning))
        assertEquals(1f, current.value.playbackSpeed, 0f)
        return current
    }

    private fun projectToEndWithoutChangingTheSource(current: MutableState<LyricsState>) {
        val admitted = current.value
        ShadowSystemClock.advanceBy(Duration.ofMillis(1_000))
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
        assertSame("the source did not send an end/pause snapshot", admitted, current.value)
        assertTrue(admitted.positionMs < admitted.durationMs)
        assertFalse("projected duration stops the actual frame gate", value(LyricFrameRunning))
        assertEquals(1f, value(LyricWordProgress), .001f)
        compose.mainClock.advanceTimeBy(128); compose.waitForIdle()
        assertFalse(value(LyricFrameRunning))
    }

    @Test fun projectedEndThenSameRecordingSeekBackRestartsWithoutAnArtificialPause() {
        val current = mount()
        projectToEndWithoutChangingTheSource(current)
        compose.runOnIdle {
            current.value = current.value.copy(positionMs = 0, capturedAtMs = SystemClock.elapsedRealtime())
        }
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
        assertEquals("first", current.value.recordingKey)
        assertEquals(1f, current.value.playbackSpeed, 0f)
        assertTrue(value(LyricFrameRunning))
        assertTrue("seek restored the current real word interval", value(LyricWordProgress) < 1f)
        projectToEndWithoutChangingTheSource(current)
    }

    @Test fun projectedEndThenNewRecordingRestartsWithoutTogglingPlayback() {
        val current = mount()
        projectToEndWithoutChangingTheSource(current)
        compose.runOnIdle { current.value = source("second") }
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
        assertEquals("second", current.value.recordingKey)
        assertTrue(current.value.timelineReady)
        assertEquals(1f, current.value.playbackSpeed, 0f)
        assertTrue(value(LyricFrameRunning))
        assertTrue(value(LyricWordProgress) < 1f)
    }

    @Test fun heldPreparationUsesVisibleVectorInkWithoutRasterizingOnTheDrawThread() {
        val held = HeldPreparationDispatcher()
        val mounted = mutableStateOf(true)
        val current = source(speed = 0f)
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalLyricPreparationDispatcher provides held) {
                Box(Modifier.fillMaxSize().background(androidx.compose.ui.graphics.Color.Black).testTag(host)) {
                    if (mounted.value) WallpaperLyrics(current, true)
                }
            }
        }
        dispatchFocus(true)
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
        assertTrue("the worker request is held, not secretly prepared inline", held.tasks.isNotEmpty())
        assertEquals(0, value(LyricPreparedSliceCount))
        assertTrue(value(LyricFallbackSliceCount) > 0)
        assertEquals(0, value(LyricRasterizations))
        assertFalse(value(LyricFrameRunning))
        val bitmap = captureHost()
        val pixels = IntArray(bitmap.width * bitmap.height)
        bitmap.getPixels(pixels, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
        assertTrue("unprepared viewport remains visible", pixels.count {
            Color.red(it) > 16 || Color.green(it) > 16 || Color.blue(it) > 16
        } > 20)
        assertEquals("native draw generated no cache bitmaps or blur", 0, value(LyricRasterizations))
        val directory = File("build/frames").apply { mkdirs() }
        File(directory, "wallpaper-worker-fallback.png").outputStream().use {
            assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
        // Losing visibility cancels the held worker but does not withdraw the admitted body.
        dispatchFocus(false)
        compose.mainClock.advanceTimeBy(32); compose.waitForIdle()
        compose.runOnIdle { held.releaseCancelledTasks() }
        compose.waitForIdle()
        assertEquals(0, value(LyricRasterizations))
        assertTrue(value(LyricFallbackSliceCount) > 0)
        dispatchFocus(true)
        compose.mainClock.advanceTimeBy(32); compose.waitForIdle()
        assertTrue("visibility return resumes only a bounded prepare", held.tasks.isNotEmpty())
        // Remove the owner before draining cancellations; never execute an admitted prepare.
        compose.runOnIdle { mounted.value = false }
        compose.mainClock.advanceTimeBy(32); compose.waitForIdle()
        compose.runOnIdle { held.releaseCancelledTasks() }
        compose.waitForIdle()
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun dispatchFocus(focused: Boolean) {
        val root = compose.onNodeWithTag(host).fetchSemanticsNode().root as ViewRootForTest
        val dispatch = ViewTreeObserver::class.java.getDeclaredMethod("dispatchOnWindowFocusChange", java.lang.Boolean.TYPE)
            .apply { isAccessible = true }
        compose.runOnIdle { dispatch.invoke(root.view.viewTreeObserver, focused) }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun captureHost(): Bitmap {
        val node = compose.onNodeWithTag(host).fetchSemanticsNode()
        val root = node.root as ViewRootForTest
        val bounds = node.boundsInRoot
        return compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.toInt(), bounds.height.toInt(), Bitmap.Config.ARGB_8888).also {
                Canvas(it).apply { translate(-bounds.left, -bounds.top) }.also(root.view::draw)
            }
        }
    }

    private class HeldPreparationDispatcher : CoroutineDispatcher() {
        val tasks = ArrayList<Runnable>()
        override fun dispatch(context: CoroutineContext, block: Runnable) { tasks += block }
        fun releaseCancelledTasks() {
            while (tasks.isNotEmpty()) tasks.removeAt(0).run()
        }
    }
}
