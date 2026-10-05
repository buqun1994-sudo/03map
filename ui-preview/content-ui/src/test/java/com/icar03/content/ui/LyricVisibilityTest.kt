package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color as NativeColor
import android.os.SystemClock
import android.view.View
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.snapshots.Snapshot
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.compose.LocalLifecycleOwner
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
import kotlin.math.roundToInt

/** Synthetic playback with the formal renderer and actual Android visibility/focus facts. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28, 34], qualifiers = "w640dp-h1080dp-mdpi")
class LyricVisibilityTest {
    @get:Rule val compose = createComposeRule()
    private val host = "lyric-visibility-host"
    private val current = mutableStateOf(LyricsState())
    private val mounted = mutableStateOf(true)
    private val pageVisible = mutableStateOf(true)
    private val owner = object : LifecycleOwner {
        val registry = LifecycleRegistry(this)
        override val lifecycle: Lifecycle get() = registry
    }
    private var observedVisible = false
    private fun source(key: String, generation: Long, playing: Boolean = false) = LyricsState(
        recordingKey = key, recordingGeneration = generation,
        lines = listOf(LyricLine(0, "合成可见性正文$key",
            words = listOf(LyricWord(0, 20_000, "合成可见性正文$key")), endTimeMs = 20_000)),
        activeIndex = 0, activeIndices = listOf(0), scrollIndex = 0,
        timelineReady = true, positionMs = 0, capturedAtMs = SystemClock.elapsedRealtime(),
        playbackSpeed = if (playing) 1f else 0f, durationMs = 60_000,
    )

    private fun mount(transition: Boolean = false, playing: Boolean = false) {
        ShadowSystemClock.advanceBy(Duration.ofMillis(1_000))
        owner.registry.currentState = Lifecycle.State.RESUMED
        current.value = source("A", 1, playing)
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalLifecycleOwner provides owner,
                LocalIconVisible provides pageVisible.value,
                LocalLyricGeometryDispatcher provides Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined) {
                val view = LocalView.current
                val visible = rememberLyricVisibility()
                SideEffect { observedVisible = visible }
                Box(Modifier.fillMaxSize().background(Color.Black).testTag(host)) {
                    if (mounted.value) {
                        if (transition) LyricsBodyTransition(current.value, true)
                        else WallpaperLyrics(current.value, true)
                    }
                }
                SideEffect { check(view.isAttachedToWindow) }
            }
        }
        advance(800)
        assertTrue(observedVisible)
        assertTrue(value(LyricLayoutReady))
    }

    @Test fun visibleUnfocusedNewRecordingAndRemountHaveNativeBody() {
        mount(transition = true)
        val initialInk = capture("focused-A")
        assertTrue(initialInk > 20)
        setLyricWindowFocus(compose, host, false)
        advance(64)
        assertVisibleUnfocused()
        mutate { current.value = LyricsState(recordingKey = "B", recordingGeneration = 2, loading = true) }
        advance(300)
        compose.onNodeWithTag("wallpaper-lyrics").assertDoesNotExist()
        mutate { current.value = source("B", 2) }
        advance(800)
        assertBody("B")
        assertTrue("new recording has native ink while focus stays elsewhere", capture("unfocused-B") > 20)

        mutate { mounted.value = false }
        advance(64)
        mutate { mounted.value = true }
        advance(800)
        assertBody("B")
        assertTrue("remount needs no focus or media event to prepare its body", capture("unfocused-B-remount") > 20)
        assertEquals(1, compose.onAllNodesWithTag("wallpaper-lyrics").fetchSemanticsNodes().size)
    }

    @Test fun visibleUnfocusedPlaybackKeepsSamplingTheSameAnchor() {
        mount(playing = true)
        val source = current.value
        val sample = value(LyricFrameElapsed)
        val position = value(LyricFramePosition)
        setLyricWindowFocus(compose, host, false)
        advanceMedia(400)
        assertVisibleUnfocused()
        assertSame("loss of input focus did not manufacture a media event", source, current.value)
        assertTrue(value(LyricFrameEligible))
        assertTrue(value(LyricFrameRunning))
        assertTrue(value(LyricFrameElapsed) > sample)
        assertTrue(value(LyricFramePosition) > position)
        assertTrue("visible playback retains native body", capture("unfocused-playing-A") > 20)
    }

    @Test fun windowVisibilityAloneStopsAndRestoresFramesWithoutGlobalLayoutOrFocus() {
        mount(playing = true)
        setLyricWindowFocus(compose, host, false)
        val source = current.value
        setLyricWindowShown(compose, host, false)
        assertStopped()
        assertEquals(View.VISIBLE, lyricHostView(compose, host).visibility)
        setLyricWindowShown(compose, host, true)
        assertResumed(source)
    }

    @Test fun invisibleAndGoneAncestorsStopAndRestoreFramesWhileWindowStaysVisible() {
        mount(playing = true)
        setLyricWindowFocus(compose, host, false)
        val view = lyricHostView(compose, host)
        val parent = view.parent as View
        val source = current.value
        for (visibility in listOf(View.INVISIBLE, View.GONE)) {
            mutate {
                parent.visibility = visibility
                assertFalse(view.isShown)
                assertEquals(View.VISIBLE, view.windowVisibility)
                dispatchLyricPreDraw(view)
            }
            assertStopped()
            mutate { parent.visibility = View.VISIBLE; dispatchLyricPreDraw(view) }
            assertResumed(source)
        }
    }

    @Test fun leavingThePageStopsAndReturningWhileUnfocusedResumesTheSameSource() {
        mount(playing = true)
        setLyricWindowFocus(compose, host, false)
        val source = current.value
        mutate { pageVisible.value = false }
        assertStopped()
        mutate { pageVisible.value = true }
        assertResumed(source)
    }

    @Test fun startedVisibleLyricsSurvivePauseButStopAndResumeWithTheirLifecycle() {
        mount(playing = true)
        setLyricWindowFocus(compose, host, false)
        val source = current.value
        mutate { owner.registry.currentState = Lifecycle.State.STARTED }
        advance(64)
        assertTrue("visible STARTED lyrics preserve the existing lifecycle contract", observedVisible)
        assertTrue(value(LyricFrameRunning))
        mutate { owner.registry.currentState = Lifecycle.State.CREATED }
        assertStopped()
        mutate { owner.registry.currentState = Lifecycle.State.STARTED }
        assertResumed(source)
    }

    private fun assertStopped() {
        advance(64)
        assertFalse(observedVisible)
        assertFalse(value(LyricFrameEligible))
        assertFalse(value(LyricFrameRunning))
        val sample = value(LyricFrameElapsed)
        advanceMedia(200)
        assertEquals("hidden work stays asleep", sample, value(LyricFrameElapsed))
    }
    private fun assertResumed(source: LyricsState) {
        advance(64)
        assertVisibleUnfocused()
        assertSame("only visibility changed, with no new anchor", source, current.value)
        assertTrue(value(LyricFrameEligible))
        assertTrue(value(LyricFrameRunning))
        val sample = value(LyricFrameElapsed)
        advanceMedia(100)
        assertTrue(value(LyricFrameElapsed) > sample)
    }
    private fun assertBody(key: String) {
        assertVisibleUnfocused()
        assertTrue(value(LyricLayoutReady))
        assertEquals(key, value(LyricRecordingKey))
        assertEquals(1f, value(LyricOpacity), .001f)
        compose.onNode(SemanticsMatcher.keyIsDefined(LyricRowHeights), useUnmergedTree = true)
            .assertTextEquals("合成可见性正文$key")
    }
    private fun assertVisibleUnfocused() {
        val view = lyricHostView(compose, host)
        assertTrue(view.isAttachedToWindow)
        assertTrue(view.isShown)
        assertEquals(View.VISIBLE, view.windowVisibility)
        assertFalse("the actual native focus fact remains false", view.hasWindowFocus())
    }
    private fun <T> mutate(block: () -> T): T = compose.runOnIdle {
        block().also { Snapshot.sendApplyNotifications() }
    }
    private fun advance(ms: Long) { compose.mainClock.advanceTimeBy(ms); compose.waitForIdle() }
    private fun advanceMedia(ms: Long) {
        ShadowSystemClock.advanceBy(Duration.ofMillis(ms))
        advance(64)
    }
    private fun <T> value(key: SemanticsPropertyKey<T>): T = compose.onNode(
        SemanticsMatcher.keyIsDefined(key), useUnmergedTree = true).fetchSemanticsNode().config[key]
    private fun capture(name: String): Int {
        val node = compose.onNodeWithTag(host).fetchSemanticsNode()
        val bounds = node.boundsInRoot
        val view = lyricHostView(compose, host)
        val image = mutate {
            Bitmap.createBitmap(bounds.width.roundToInt(), bounds.height.roundToInt(), Bitmap.Config.ARGB_8888).also {
                Canvas(it).apply { translate(-bounds.left, -bounds.top); view.draw(this) }
            }
        }
        val pixels = IntArray(image.width * image.height)
        image.getPixels(pixels, 0, image.width, 0, 0, image.width, image.height)
        val ink = pixels.count { NativeColor.red(it) > 16 || NativeColor.green(it) > 16 || NativeColor.blue(it) > 16 }
        val directory = File("build/lyric-visibility-frames").apply { mkdirs() }
        File(directory, "sdk${android.os.Build.VERSION.SDK_INT}-$name.png").outputStream().use {
            assertTrue(image.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
        println("LYRIC_VISIBILITY sdk=${android.os.Build.VERSION.SDK_INT} frame=$name ink=$ink")
        image.recycle()
        return ink
    }
}
