package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import androidx.compose.ui.unit.IntSize
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28, 34])
class AmbientPresentationSceneTest {
    private val compactSize = IntSize(240, 480)
    private val fullSize = IntSize(720, 480)
    private fun frame(color: Int) = Bitmap.createBitmap(96, 192, Bitmap.Config.ARGB_8888).apply { eraseColor(color) }
    private fun key(dark: Boolean = true) = AmbientPresentationKey(null, dark, fullSize, compactSize)

    @Test fun bridgeKeepsTheCompactLeftCropWhileWidePixelsOccupyOnlyTheNewViewport() {
        val compact = frame(Color.RED)
        val compactCanvas = Canvas(compact)
        compactCanvas.drawRect(48f, 0f, 96f, 192f, android.graphics.Paint().apply { color = Color.BLUE })
        val bridge = AmbientBridgeBaker().prepare(compact, true, fullSize, compactSize)!!
        assertTrue(bridge.width <= AMBIENT_MAX_FRAME_EDGE && bridge.height <= AMBIENT_MAX_FRAME_EDGE)
        val scene = AmbientPresentationScene(bridge, frame(Color.GREEN), fullSize, compactSize, 7f)
        val painter = AmbientPresentationPainter()
        for (width in listOf(240, 480, 720)) {
            val output = Bitmap.createBitmap(width, 480, Bitmap.Config.ARGB_8888)
            val canvas = Canvas(output)
            canvas.drawColor(Color.MAGENTA)
            assertEquals(1, painter.draw(canvas, width.toFloat(), 480f, scene, 0f))
            assertEquals("compact left pixels must remain at their original position", Color.RED, output.getPixel(40, 200))
            assertEquals("compact right pixels must not be stretched to the full width", Color.BLUE, output.getPixel(200, 200))
            assertEquals(255, Color.alpha(output.getPixel(width - 1, 200)))
            assertEquals("crossfade uses at most the bridge and wide endpoint", 2,
                painter.draw(canvas, width.toFloat(), 480f, scene, .5f))
            assertEquals(255, Color.alpha(output.getPixel(width - 1, 200)))
            assertEquals(1, painter.draw(canvas, width.toFloat(), 480f, scene, 1f))
            assertEquals(Color.GREEN, output.getPixel(width - 1, 200))
        }
    }

    @Test fun dragBeforePreparationAndPendingReplacementKeepTheCanonicalCompactPixels() {
        val compact = frame(Color.RED)
        Canvas(compact).drawRect(48f, 0f, 96f, 192f, android.graphics.Paint().apply { color = Color.BLUE })
        val live = AmbientTransition(target = compact, startOpacity = 1f, endOpacity = 1f)
        val owner = AmbientPresentationState()
        val painter = AmbientPresentationPainter()
        val compactPainter = AmbientPainter()
        val currentKey = key(false).copy(sessionGeneration = 1)
        fun checkFrame(message: String) {
            val output = Bitmap.createBitmap(480, 480, Bitmap.Config.ARGB_8888)
            val canvas = Canvas(output).apply { drawColor(Color.WHITE) }
            assertEquals(1, painter.drawFrame(canvas, 480f, 480f, owner, currentKey,
                live, 1f, compactPainter, .1f, Color.WHITE))
            assertEquals(message, Color.RED, output.getPixel(40, 200))
            assertEquals("compact crop must keep its original 240px width", Color.BLUE, output.getPixel(200, 200))
            assertNotEquals("newly exposed area comes from the same frame edge", Color.WHITE, output.getPixel(260, 200))
        }
        checkFrame("the drag draw may precede the preparation effect")
        val request = owner.begin(currentKey, live)
        checkFrame("starting a request cannot withdraw the current background")
        val stale = AmbientPresentationScene(frame(Color.GREEN), frame(Color.GREEN), fullSize, compactSize, 0f)
        owner.install(request - 1, currentKey, stale)
        checkFrame("late worker cannot replace the canonical compact pixels")
        owner.install(request, currentKey, stale)
        assertSame(stale, owner.committedScene(currentKey))
        assertNull("a new session cannot read the previous committed scene",
            owner.committedScene(currentKey.copy(sessionGeneration = 2)))
    }

    @Test fun supersededPreparationAndStopReleaseReferencesWithoutRecyclingPublishedPixels() {
        val owner = AmbientPresentationState()
        val fallback = frame(Color.RED)
        val oldKey = key()
        val oldFrame = AmbientTransition(target = fallback, startOpacity = 1f, endOpacity = 1f)
        val old = owner.begin(oldKey, oldFrame)
        val currentKey = key(false)
        val replacement = frame(Color.BLUE)
        val currentFrame = AmbientTransition(target = replacement, startOpacity = 1f, endOpacity = 1f)
        val current = owner.begin(currentKey, currentFrame)
        assertFalse("a worker may still be reading the superseded published capture", fallback.isRecycled)
        val obsoleteScene = AmbientPresentationScene(frame(Color.RED), null, fullSize, compactSize, 0f)
        owner.install(old, oldKey, obsoleteScene)
        assertNull(owner.scene)
        assertSame(currentFrame, owner.compactFrame(currentKey, oldFrame))
        val latestScene = AmbientPresentationScene(frame(Color.BLUE), frame(Color.GREEN), fullSize, compactSize, 1f)
        owner.install(current, currentKey, latestScene)
        assertSame(latestScene, owner.scene)
        assertTrue(owner.isPrepared(currentKey))
        assertSame(currentFrame, owner.compactFrame(currentKey, oldFrame))
        assertFalse(replacement.isRecycled)
        owner.clear()
        owner.install(current, currentKey, latestScene)
        assertNull("host stop rejects a late result", owner.scene)
        assertFalse(latestScene.bridge!!.isRecycled)
        assertFalse(latestScene.wide!!.isRecycled)
    }

    @Test fun missingCurrentFrameUsesAnOpaqueThemeFallback() {
        val renderer = AmbientRenderState()
        val fallback = renderer.captureCurrent(AmbientPainter(), compactSize, Color.rgb(18, 52, 86))
        assertNotNull("a presentation request must always have an opaque frame", fallback)
        assertEquals(Color.rgb(18, 52, 86), fallback!!.getPixel(10, 10))
    }

    @Test fun lateSceneInstallStartsAtTheVisibleProgressWithoutAFrameJump() {
        val compact = frame(Color.RED)
        Canvas(compact).drawRect(48f, 0f, 96f, 192f, android.graphics.Paint().apply { color = Color.BLUE })
        val live = AmbientTransition(target = compact, startOpacity = 1f, endOpacity = 1f)
        val owner = AmbientPresentationState()
        val painter = AmbientPresentationPainter()
        val compactPainter = AmbientPainter()
        val currentKey = key(false).copy(sessionGeneration = 9)
        val request = owner.begin(currentKey, live)
        fun draw(progress: Float): Bitmap = Bitmap.createBitmap(480, 480, Bitmap.Config.ARGB_8888).also { image ->
            Canvas(image).drawColor(Color.WHITE)
            assertEquals(1, painter.drawFrame(Canvas(image), 480f, 480f, owner, currentKey,
                live, 1f, compactPainter, progress, Color.WHITE))
        }
        val before = draw(.4f)
        val bridge = AmbientBridgeBaker().prepare(compact, false, fullSize, compactSize, Color.WHITE)!!
        owner.install(request, currentKey,
            AmbientPresentationScene(bridge, frame(Color.GREEN), fullSize, compactSize, 0f), .4f)
        val after = draw(.4f)
        for (point in listOf(20 to 200, 200 to 200, 300 to 200, 470 to 200)) {
            val beforePixel = before.getPixel(point.first, point.second)
            val afterPixel = after.getPixel(point.first, point.second)
            assertTrue("late scene install keeps pixel at ${point.first}/${point.second}: before=$beforePixel after=$afterPixel",
                kotlin.math.abs(Color.red(beforePixel) - Color.red(afterPixel)) <= 2 &&
                    kotlin.math.abs(Color.green(beforePixel) - Color.green(afterPixel)) <= 2 &&
                    kotlin.math.abs(Color.blue(beforePixel) - Color.blue(afterPixel)) <= 2)
        }
    }
}
