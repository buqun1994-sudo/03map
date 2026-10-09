package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import androidx.compose.ui.unit.IntSize
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File
import kotlin.math.abs

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28, 34])
class AmbientPresentationSceneTest {
    private val compactSize = IntSize(240, 480)
    private val fullSize = IntSize(720, 480)
    private fun frame(color: Int, size: IntSize = compactSize) = ambientFrameSize(size).let {
        Bitmap.createBitmap(it.width, it.height, Bitmap.Config.ARGB_8888).apply { eraseColor(color) }
    }
    private fun compact() = frame(Color.RED).also {
        Canvas(it).drawRect(it.width / 2f, 0f, it.width.toFloat(), it.height.toFloat(), Paint().apply { color = Color.BLUE })
    }
    private fun key(dark: Boolean = true, texture: AmbientArtwork? = null) = AmbientPresentationKey(texture, dark, fullSize, compactSize)
    private fun artwork(color: Int) = AmbientArtwork(frame(color), frame(color), emptyList())
    private fun assertPixels(expected: Bitmap, actual: Bitmap) {
        for (y in 20 until minOf(expected.height, actual.height) step 29)
            for (x in 20 until minOf(expected.width, actual.width) step 31) {
                val a = expected.getPixel(x, y); val b = actual.getPixel(x, y)
                assertTrue("pixel $x/$y: $a -> $b", abs(Color.red(a) - Color.red(b)) <= 2 &&
                    abs(Color.green(a) - Color.green(b)) <= 2 && abs(Color.blue(a) - Color.blue(b)) <= 2)
            }
    }

    @Test fun originalCompactCropCrossfadesDirectlyToWideDuringTheFirst45Percent() {
        val scene = AmbientPresentationScene(compact(), frame(Color.GREEN, fullSize), fullSize, compactSize)
        val painter = AmbientPresentationPainter()
        for (width in listOf(240, 480, 720)) {
            fun at(progress: Float) = Bitmap.createBitmap(width, 480, Bitmap.Config.ARGB_8888).also {
                Canvas(it).drawColor(Color.MAGENTA)
                painter.draw(Canvas(it), width.toFloat(), 480f, scene, progress, Color.WHITE)
            }
            val start = at(0f)
            assertEquals(Color.RED, start.getPixel(40, 200))
            assertEquals("compact is never stretched", Color.BLUE, start.getPixel(200, 200))
            if (width > 240) assertEquals("wide crop is opaque behind the compact layer", Color.GREEN, start.getPixel(width - 1, 200))
            val midpoint = at(.225f)
            assertTrue(Color.red(midpoint.getPixel(40, 200)) in 125..130)
            assertTrue(Color.green(midpoint.getPixel(40, 200)) in 125..130)
            val ready = at(.45f)
            for (progress in listOf(.5f, .55f, .8f, 1f)) assertPixels(ready, at(progress))
            assertEquals(Color.GREEN, ready.getPixel(width - 1, 200))
            assertPixels(midpoint, at(.225f))
            if (width == 720) for (progress in listOf(0f, .225f, .45f)) {
                val image = at(progress)
                File("build/reports/rendered/ambient-direct-$progress.png").apply { parentFile?.mkdirs() }
                    .outputStream().use { image.compress(Bitmap.CompressFormat.PNG, 100, it) }
            }
        }
    }

    @Test fun finalWidePixelsKeepTheirCanonicalCoordinatesThroughViewportClippingAndReverse() {
        val wide = frame(Color.YELLOW, fullSize)
        Canvas(wide).drawRect(wide.width / 3f, 0f, wide.width.toFloat(), wide.height.toFloat(), Paint().apply { color = Color.GREEN })
        val scene = AmbientPresentationScene(compact(), wide, fullSize, compactSize)
        val painter = AmbientPresentationPainter()
        for (width in listOf(720, 480, 300, 480, 720)) {
            val image = Bitmap.createBitmap(width, 480, Bitmap.Config.ARGB_8888)
            assertEquals(1, painter.draw(Canvas(image), width.toFloat(), 480f, scene, .45f))
            assertEquals(Color.YELLOW, image.getPixel(200, 200))
            assertEquals("full field is cropped instead of compressed", Color.GREEN, image.getPixel(280, 200))
        }
    }

    @Test fun dragBeforePreparationKeepsCompactPixelsAndOnlyTheActualThemeToTheirRight() {
        val live = AmbientTransition(target = compact(), startOpacity = 1f, endOpacity = 1f)
        val owner = AmbientPresentationState()
        val painter = AmbientPresentationPainter()
        val currentKey = key(false).copy(sessionGeneration = 1)
        fun check() {
            val output = Bitmap.createBitmap(480, 480, Bitmap.Config.ARGB_8888)
            painter.drawFrame(Canvas(output), 480f, 480f, owner, currentKey, live, 1f, AmbientPainter(), .1f, Color.WHITE)
            assertEquals(Color.RED, output.getPixel(40, 200))
            assertEquals(Color.BLUE, output.getPixel(200, 200))
            assertEquals(Color.WHITE, output.getPixel(260, 200))
        }
        check()
        val request = owner.begin(currentKey, live)
        check()
        val stale = AmbientPresentationScene(frame(Color.RED), frame(Color.GREEN, fullSize), fullSize, compactSize)
        owner.install(request - 1, currentKey, stale)
        check()
        owner.install(request, currentKey, stale)
        assertSame(stale, owner.committedScene(currentKey))
        assertNull(owner.committedScene(currentKey.copy(sessionGeneration = 2)))
    }

    @Test fun wideExitAndItsPendingFrameKeepTheFullCropWithoutACompactFlash() {
        val wide = frame(Color.YELLOW, fullSize)
        Canvas(wide).drawRect(wide.width / 3f, 0f, wide.width.toFloat(), wide.height.toFloat(), Paint().apply { color = Color.GREEN })
        val live = AmbientTransition(target = wide, startOpacity = 1f, endOpacity = 1f)
        val owner = AmbientPresentationState()
        val painter = AmbientPresentationPainter()
        val currentKey = key()
        val request = owner.begin(currentKey, live, fullSize)
        fun at(progress: Float, width: Int = 480) = Bitmap.createBitmap(width, 480, Bitmap.Config.ARGB_8888).also {
            painter.drawFrame(Canvas(it), width.toFloat(), 480f, owner, currentKey, live, 1f,
                AmbientPainter(), progress, Color.BLACK, fullSize)
        }
        val pending = at(.8f)
        assertEquals(Color.YELLOW, pending.getPixel(200, 200))
        assertEquals(Color.GREEN, pending.getPixel(280, 200))
        owner.install(request, currentKey, AmbientPresentationScene(compact(), wide, fullSize, compactSize), 1f)
        assertPixels(pending, at(1f))
        for (p in listOf(.9f, .55f, .45f, .6f)) assertPixels(pending, at(p))
        assertEquals(Color.BLUE, at(0f).getPixel(200, 200))
    }

    @Test fun lateInstallPreservesTheVisibleFrameAndHandoffSurvivesReversal() {
        val live = AmbientTransition(target = compact(), startOpacity = 1f, endOpacity = 1f)
        val owner = AmbientPresentationState()
        val painter = AmbientPresentationPainter()
        val currentKey = key(false)
        val request = owner.begin(currentKey, live)
        fun at(progress: Float) = Bitmap.createBitmap(480, 480, Bitmap.Config.ARGB_8888).also {
            painter.drawFrame(Canvas(it), 480f, 480f, owner, currentKey, live, 1f, AmbientPainter(), progress, Color.WHITE)
        }
        val before = at(.4f)
        owner.install(request, currentKey, AmbientPresentationScene(live.target, frame(Color.GREEN, fullSize), fullSize, compactSize), .4f)
        assertPixels(before, at(.4f))
        at(.42f)
        at(.4f)
        assertEquals("cumulative travel finishes handoff even after reversal", 1f, owner.handoffBlend(.399f), .001f)
        assertEquals(Color.GREEN, at(.45f).getPixel(470, 200))
        assertEquals(Color.GREEN, at(0f).getPixel(470, 200))
    }

    @Test fun resizeCaptureRetainsTheActualPresentationMixtureAndPublishedPixels() {
        val owner = AmbientPresentationState()
        val painter = AmbientPresentationPainter()
        val compactPainter = AmbientPainter()
        val currentKey = key(false)
        val live = AmbientTransition(target = compact(), startOpacity = 1f, endOpacity = 1f)
        val request = owner.begin(currentKey, live)
        owner.install(request, currentKey, AmbientPresentationScene(live.target, frame(Color.GREEN, fullSize), fullSize, compactSize))
        val before = Bitmap.createBitmap(480, 480, Bitmap.Config.ARGB_8888)
        painter.drawFrame(Canvas(before), 480f, 480f, owner, currentKey, live, 1f, compactPainter, 0f, Color.WHITE)
        painter.drawFrame(Canvas(before), 480f, 480f, owner, currentKey, live, 1f, compactPainter, .225f, Color.WHITE)
        val capture = painter.captureCurrent(compactPainter)!!
        assertEquals(IntSize(480, 480), capture.second)
        val nextKey = currentKey.copy(fullSize = IntSize(840, 480), compactSize = IntSize(280, 480))
        val retained = Bitmap.createBitmap(480, 480, Bitmap.Config.ARGB_8888)
        painter.drawFrame(Canvas(retained), 480f, 480f, owner, nextKey, live, 1f, compactPainter, .225f, Color.WHITE)
        assertPixels(before, retained)
        val pending = AmbientTransition(target = capture.first, startOpacity = 1f, endOpacity = 1f)
        val next = owner.begin(nextKey, pending, capture.second)
        val after = Bitmap.createBitmap(480, 480, Bitmap.Config.ARGB_8888)
        painter.drawFrame(Canvas(after), 480f, 480f, owner, nextKey, live, 1f, compactPainter, .225f, Color.WHITE)
        assertPixels(before, after)
        val scene = AmbientPresentationScene(frame(Color.BLUE), frame(Color.GREEN, nextKey.fullSize), nextKey.fullSize, nextKey.compactSize)
        owner.install(next, nextKey, scene, .225f)
        owner.clear(); painter.clear()
        owner.install(next, nextKey, scene)
        assertNull(owner.scene)
        assertNull(painter.captureCurrent(compactPainter))
        assertFalse(capture.first.isRecycled)
        assertFalse(scene.compact!!.isRecycled)
        assertFalse(scene.wide!!.isRecycled)
    }

    @Test fun supersededPreparationAndStopRejectOldResultsWithoutRecyclingPublishedFrames() {
        val owner = AmbientPresentationState()
        val oldKey = key()
        val old = owner.begin(oldKey, AmbientTransition(target = frame(Color.RED), startOpacity = 1f, endOpacity = 1f))
        val currentKey = key(false)
        val replacement = frame(Color.BLUE)
        val currentFrame = AmbientTransition(target = replacement, startOpacity = 1f, endOpacity = 1f)
        val current = owner.begin(currentKey, currentFrame)
        val obsolete = AmbientPresentationScene(frame(Color.RED), null, fullSize, compactSize)
        owner.install(old, oldKey, obsolete)
        assertNull(owner.scene)
        assertSame(currentFrame, owner.pendingFrame(currentKey, currentFrame))
        val latest = AmbientPresentationScene(replacement, frame(Color.GREEN, fullSize), fullSize, compactSize)
        owner.install(current, currentKey, latest)
        assertTrue(owner.isPrepared(currentKey))
        owner.clear()
        owner.install(current, currentKey, latest)
        assertNull(owner.scene)
        assertFalse(latest.compact!!.isRecycled)
        assertFalse(latest.wide!!.isRecycled)
    }

    @Test fun newGestureSessionReusesPreparedEndpointPairSynchronously() {
        val owner = AmbientPresentationState()
        val preparedKey = key(false).copy(sessionGeneration = 0L)
        val live = AmbientTransition(target = compact(), startOpacity = 1f, endOpacity = 1f)
        val request = owner.begin(preparedKey, live)
        val scene = AmbientPresentationScene(compact(), frame(Color.GREEN, fullSize), fullSize, compactSize)
        owner.install(request, preparedKey, scene, 0f)

        val gestureKey = preparedKey.copy(sessionGeneration = 1L)
        assertTrue(owner.reusePrepared(gestureKey, 0f))
        assertSame(scene, owner.committedScene(gestureKey))
        assertTrue(owner.isPrepared(gestureKey))
        assertFalse(owner.reusePrepared(gestureKey.copy(fullSize = IntSize(840, 480)), 0f))
    }

    @Test fun artworkReplacementUsesLiveFrameWithoutOldPresentationHandoff() {
        val oldArtwork = artwork(Color.RED)
        val newArtwork = artwork(Color.BLUE)
        val owner = AmbientPresentationState()
        val painter = AmbientPresentationPainter()
        val oldKey = key(false, oldArtwork)
        val oldLive = AmbientTransition(target = frame(Color.RED), startOpacity = 1f, endOpacity = 1f)
        val oldRequest = owner.begin(oldKey, oldLive)
        owner.install(oldRequest, oldKey,
            AmbientPresentationScene(frame(Color.RED), frame(Color.RED, fullSize), fullSize, compactSize))

        val newKey = key(false, newArtwork)
        val capturedOld = AmbientTransition(target = frame(Color.RED), startOpacity = 1f, endOpacity = 1f)
        val request = owner.begin(newKey, capturedOld, compactSize)
        val live = AmbientTransition(target = frame(Color.BLUE), startOpacity = 1f, endOpacity = 1f)
        assertSame("a changed artwork must use the renderer's live frame", live, owner.pendingFrame(newKey, live))
        owner.install(request, newKey,
            AmbientPresentationScene(frame(Color.BLUE), frame(Color.GREEN, fullSize), fullSize, compactSize), 0f)
        assertEquals(1f, owner.handoffBlend(0f), 0f)

        val output = Bitmap.createBitmap(480, 480, Bitmap.Config.ARGB_8888)
        painter.drawFrame(Canvas(output), 480f, 480f, owner, newKey, live, 1f,
            AmbientPainter(), 0f, Color.WHITE)
        assertEquals(Color.BLUE, output.getPixel(40, 200))
        assertEquals(Color.GREEN, output.getPixel(470, 200))
    }

    @Test fun missingCurrentFrameUsesAnOpaqueThemeFallback() {
        val fallback = AmbientRenderState().captureCurrent(AmbientPainter(), compactSize, Color.rgb(18, 52, 86))!!
        assertEquals(Color.rgb(18, 52, 86), fallback.getPixel(10, 10))
        assertEquals(ambientFrameSize(compactSize), IntSize(fallback.width, fallback.height))
    }
}
