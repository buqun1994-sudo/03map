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
import kotlin.math.abs

/** Native Android 9 pixel probes of the actual painter, including interrupted transitions. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28])
class AmbientTransitionTest {
    private val painter = AmbientPainter()
    private val size = IntSize(128, 216)
    private fun artwork(color: Int) = AmbientArtwork(
        Bitmap.createBitmap(128, 128, Bitmap.Config.ARGB_8888).apply { eraseColor(color) },
        Bitmap.createBitmap(128, 128, Bitmap.Config.ARGB_8888), emptyList(), darkVeil = 0f, lightVeil = 0f,
    )
    private fun render(scene: AmbientTransition, fraction: Float): Bitmap =
        Bitmap.createBitmap(size.width, size.height, Bitmap.Config.ARGB_8888).also {
            val canvas = Canvas(it)
            canvas.drawColor(Color.BLACK)
            painter.drawTransition(canvas, size.width.toFloat(), size.height.toFloat(), scene, fraction, 21f)
        }
    private fun assertSamePixels(a: Bitmap, b: Bitmap) {
        for (y in 0 until size.height step 13) for (x in 0 until size.width step 11) {
            val before = a.getPixel(x, y); val after = b.getPixel(x, y)
            assertTrue(abs(Color.red(before) - Color.red(after)) <= 2)
            assertTrue(abs(Color.green(before) - Color.green(after)) <= 2)
            assertTrue(abs(Color.blue(before) - Color.blue(after)) <= 2)
        }
    }

    @Test fun seededMultiPeriodMotionChangesNativeMacroColoursWithoutExposingEdges() {
        val base = Bitmap.createBitmap(128, 128, Bitmap.Config.ARGB_8888)
        val glow = Bitmap.createBitmap(128, 128, Bitmap.Config.ARGB_8888)
        for (y in 0 until 128) for (x in 0 until 128) {
            base.setPixel(x, y, Color.rgb(35 + x, 45 + y / 2, 85 + (127 - x) / 2))
            val radius = kotlin.math.hypot((x - 35).toFloat(), (y - 45).toFloat())
            glow.setPixel(x, y, Color.argb(((1f - radius / 85f).coerceIn(0f, 1f) * 255).toInt(), 210, 155, 105))
        }
        val poses = listOf(55f, 75f, 95f).mapIndexed { i, period ->
            AmbientGlowPose(i * 7f - 8f, period, .43f + i * .04f, .55f - i * .03f, 1.05f + i * .05f)
        }
        val scene = AmbientTransition(target = AmbientArtwork(base, glow, poses, .15f, .6f), startOpacity = 1f, endOpacity = 1f)
        fun at(phase: Float) = Bitmap.createBitmap(size.width, size.height, Bitmap.Config.ARGB_8888).also {
            painter.drawTransition(Canvas(it), size.width.toFloat(), size.height.toFloat(), scene, 1f, phase)
        }
        val first = at(0f); val later = at(8f)
        var changed = 0
        for (y in 0 until size.height) for (x in 0 until size.width) {
            assertEquals("overscan keeps every pixel opaque", 255, Color.alpha(later.getPixel(x, y)))
            if (first.getPixel(x, y) != later.getPixel(x, y)) changed++
        }
        assertTrue("moving phase must produce visible native colour changes", changed > size.width * size.height / 4)
        assertSamePixels(later, at(8f))
        poses.forEach { pose ->
            val zero = ambientMotion(pose, 0f)
            assertEquals("same baked seed and phase are deterministic", zero, ambientMotion(pose, 0f))
            assertNotEquals(zero, ambientMotion(pose, 8f))
            assertTrue(kotlin.math.abs(zero.x) <= .05f && kotlin.math.abs(zero.y) <= .04f)
        }
    }

    @Test fun opaqueCrossfadeDoesNotExposeTheThemeAtItsMidpoint() {
        val red = AmbientTransition(target = artwork(Color.RED), startOpacity = 1f, endOpacity = 1f)
        val frame = red.capture(painter, size, 1f, 21f)
        val toBlue = AmbientTransition(frame, artwork(Color.BLUE), startOpacity = 1f, endOpacity = 1f)
        val pixel = render(toBlue, .5f).getPixel(64, 100)
        assertTrue("both colours must survive", Color.red(pixel) in 125..130 && Color.blue(pixel) in 125..130)
        assertTrue("no black dip", Color.red(pixel) + Color.blue(pixel) >= 253)
    }

    @Test fun rapidThirdTrackStartsFromTheActualMixtureAndConvergesToItsOwnEndpoint() {
        val red = AmbientTransition(target = artwork(Color.RED), startOpacity = 1f, endOpacity = 1f)
        val toBlue = AmbientTransition(red.capture(painter, size, 1f, 21f), artwork(Color.BLUE), startOpacity = 1f, endOpacity = 1f)
        val visible = render(toBlue, .43f)
        val toGreen = AmbientTransition(toBlue.capture(painter, size, .43f, 21f), artwork(Color.GREEN), startOpacity = 1f, endOpacity = 1f)
        assertSamePixels(visible, render(toGreen, 0f))
        assertEquals(Color.GREEN, render(toGreen, 1f).getPixel(64, 100))
    }

    @Test fun interruptedDisappearAndAppearPreserveCurrentColourAndOpacity() {
        val stable = AmbientTransition(target = artwork(Color.RED), startOpacity = 1f, endOpacity = 1f)
        val disappearing = AmbientTransition(stable.capture(painter, size, 1f, 21f), startOpacity = 1f, endOpacity = 0f)
        val visible = render(disappearing, .43f)
        val returning = AmbientTransition(disappearing.capture(painter, size, .43f, 21f), artwork(Color.BLUE),
            startOpacity = disappearing.opacity(.43f), endOpacity = 1f)
        assertSamePixels(visible, render(returning, 0f))
        assertEquals(.57f, returning.opacity(0f), .001f)
        assertEquals(Color.BLUE, render(returning, 1f).getPixel(64, 100))
    }
}
