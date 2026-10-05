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

    @Test fun supersededPreparationAndStopReleaseReferencesWithoutRecyclingPublishedPixels() {
        val owner = AmbientPresentationState()
        val fallback = frame(Color.RED)
        val oldKey = key()
        val old = owner.begin(oldKey, fallback)
        val currentKey = key(false)
        val replacement = frame(Color.BLUE)
        val current = owner.begin(currentKey, replacement)
        assertFalse("a worker may still be reading the superseded published capture", fallback.isRecycled)
        val obsoleteScene = AmbientPresentationScene(frame(Color.RED), null, fullSize, compactSize, 0f)
        owner.install(old, oldKey, obsoleteScene)
        assertNull(owner.scene)
        assertSame(replacement, owner.fallbackCompact)
        val latestScene = AmbientPresentationScene(frame(Color.BLUE), frame(Color.GREEN), fullSize, compactSize, 1f)
        owner.install(current, currentKey, latestScene)
        assertSame(latestScene, owner.scene)
        assertTrue(owner.isPrepared(currentKey))
        assertNull(owner.fallbackCompact)
        assertFalse(replacement.isRecycled)
        owner.clear()
        owner.install(current, currentKey, latestScene)
        assertNull("host stop rejects a late result", owner.scene)
        assertFalse(latestScene.bridge!!.isRecycled)
        assertFalse(latestScene.wide!!.isRecycled)
    }
}
