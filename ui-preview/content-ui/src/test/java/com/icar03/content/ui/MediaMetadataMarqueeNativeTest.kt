package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import androidx.compose.runtime.*
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.Density
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.compose.LocalLifecycleOwner
import java.io.File
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Real text pixels prove overflow movement, short-title stability and scene cancellation. */
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
open class MediaMetadataMarqueeNativeTest {
    protected open val dark = false
    protected open val platform = "api34"
    @get:Rule val compose = createComposeRule()
    private val state = mutableStateOf(previewState().copy(
        previewMode = false,
        media = MediaState(title = "一路向前的长长长歌名 · The road keeps moving beyond the horizon",
            artist = "一位名字很长的歌手与他的朋友们 · Long artist metadata", available = true),
    ))
    private var fontScale by mutableFloatStateOf(1f)
    private val owner = object : LifecycleOwner {
        override val lifecycle = LifecycleRegistry.createUnsafe(this).apply { currentState = Lifecycle.State.RESUMED }
    }

    private fun mount() {
        // Foundation's infinite-animation policy cancels a marquee mounted while autoAdvance is true.
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalDensity provides Density(1f, fontScale), LocalLifecycleOwner provides owner) {
                ContentTheme(dark) { ContentPanel(state.value.copy(dark = dark), {}, Modifier.testTag("metadata-host")) }
            }
        }
        compose.waitForIdle()
        compose.mainClock.autoAdvance = false
    }

    private fun bounds(tag: String): Rect = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().boundsInRoot
    private fun advance(ms: Long) {
        val end = compose.mainClock.currentTime + ms
        while (compose.mainClock.currentTime < end) {
            compose.mainClock.advanceTimeByFrame()
            compose.waitForIdle()
        }
    }
    private fun pixels(tag: String): IntArray {
        val b = bounds(tag)
        val frame = frame()
        val w = b.width.toInt().coerceAtLeast(1)
        val h = b.height.toInt().coerceAtLeast(1)
        return IntArray(w * h).also { frame.getPixels(it, 0, w, b.left.toInt(), b.top.toInt(), w, h) }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun frame(): Bitmap = compose.runOnIdle {
        val node = compose.onNodeWithTag("metadata-host").fetchSemanticsNode()
        val root = node.root as ViewRootForTest
        val b = node.boundsInRoot
        Bitmap.createBitmap(b.width.toInt(), b.height.toInt(), Bitmap.Config.ARGB_8888).also {
            val canvas = Canvas(it)
            canvas.translate(-b.left, -b.top)
            root.view.draw(canvas)
        }
    }
    private fun save(label: String) {
        val file = File("build/frames/metadata-$platform-${if (dark) "dark" else "light"}-$label.png")
        file.parentFile!!.mkdirs()
        file.outputStream().use { assertTrue(frame().compress(Bitmap.CompressFormat.PNG, 100, it)) }
    }
    private fun eligible(value: Boolean) {
        for (tag in listOf("media-card-title", "media-card-artist")) {
            compose.onNodeWithTag(tag, useUnmergedTree = true)
                .assert(SemanticsMatcher.expectValue(MarqueeEligible, value))
        }
    }

    @Test fun overflowMovesContinuouslyWhileShortMetadataRemainsStill() {
        mount()
        advance(200)
        eligible(true)
        val titleBounds = bounds("media-card-title")
        val start = pixels("media-card-title")
        save("long-before-scroll")
        advance(1200)
        save("long-moving")
        val layouts = mutableListOf<androidx.compose.ui.text.TextLayoutResult>()
        compose.onNodeWithTag("media-card-title", useUnmergedTree = true).performSemanticsAction(androidx.compose.ui.semantics.SemanticsActions.GetTextLayoutResult) { it(layouts) }
        assertTrue("long metadata is genuinely wider than its fixed text slot", layouts.single().size.width > titleBounds.width)
        assertFalse("long title changes real pixels after initial reading delay", start.contentEquals(pixels("media-card-title")))
        assertEquals("marquee never changes its layout slot", titleBounds, bounds("media-card-title"))
        val moving = pixels("media-card-title")
        advance(400)
        assertFalse("the slow marquee keeps moving", moving.contentEquals(pixels("media-card-title")))

        compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(title = "沿途", artist = "歌手")) }
        advance(64)
        val short = pixels("media-card-title")
        advance(1800)
        assertArrayEquals("short title has no synthetic motion", short, pixels("media-card-title"))
        compose.mainClock.autoAdvance = true
    }

    @Test fun settingsOcclusionAndLifecycleStopMetadataWithoutReplayingOldMotion() {
        mount()
        advance(1400)
        compose.runOnIdle { state.value = state.value.copy(settingsOpen = true) }
        advance(400)
        eligible(false)
        compose.runOnIdle { state.value = state.value.copy(settingsOpen = false) }
        advance(400)
        eligible(true)
        compose.runOnIdle { owner.lifecycle.currentState = Lifecycle.State.CREATED }
        advance(64)
        eligible(false)
        val stopped = pixels("media-card-title")
        advance(1800)
        assertArrayEquals("background text holds a stable native frame", stopped, pixels("media-card-title"))
        compose.runOnIdle { owner.lifecycle.currentState = Lifecycle.State.RESUMED }
        advance(64)
        eligible(true)
        val restored = pixels("media-card-title")
        advance(1400)
        assertFalse("visible resumed metadata starts its normal marquee", restored.contentEquals(pixels("media-card-title")))
        compose.mainClock.autoAdvance = true
    }

    @Test fun fixedMediaSurfaceFitsSystemFontScaleWithoutTitleArtistOverlap() {
        state.value = state.value.copy(media = state.value.media.copy(title = "沿途", artist = "歌手"))
        mount()
        for (scale in listOf(1f, 1.3f, 1.5f, 2f)) {
            compose.runOnIdle { fontScale = scale }
            advance(64)
            val card = bounds("media-card")
            val title = bounds("media-card-title")
            val artist = bounds("media-card-artist")
            assertEquals("design surface remains 100px", 100f, card.height, 1f)
            assertTrue("title stays inside media at fontScale=$scale: $title / $card", title.top >= card.top && title.bottom <= card.bottom)
            assertTrue("artist stays inside media at fontScale=$scale: $artist / $card", artist.top >= card.top && artist.bottom <= card.bottom)
            assertTrue("text rows do not overlap at fontScale=$scale", title.bottom <= artist.top)
            save("font-scale-$scale")
        }
        compose.mainClock.autoAdvance = true
    }
}

@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class MediaMetadataMarqueeNativeDarkTest : MediaMetadataMarqueeNativeTest() { override val dark = true }

@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class MediaMetadataMarqueeNativeApi28Test : MediaMetadataMarqueeNativeTest() { override val platform = "api28" }

@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class MediaMetadataMarqueeNativeApi28DarkTest : MediaMetadataMarqueeNativeTest() {
    override val dark = true
    override val platform = "api28"
}
