package com.icar03.content.runtime

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28])
class AmbientArtworkTest {
    @Test fun monochromeStaysNeutralAndTransparentArtworkDoesNotInventColours() {
        val grey = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888)
        for (y in 0 until 96) for (x in 0 until 96) {
            val level = 30 + x * 2
            grey.setPixel(x, y, Color.rgb(level, level, level))
        }
        val scene = createAmbientField(grey)!!
        for (y in 0 until 128 step 9) for (x in 0 until 128 step 9) {
            val pixel = scene.base.getPixel(x, y)
            assertEquals(Color.red(pixel), Color.green(pixel))
            assertEquals(Color.green(pixel), Color.blue(pixel))
            assertEquals(255, Color.alpha(pixel))
        }
        val blank = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888)
        assertNull(createAmbientField(blank))
        assertFalse(blank.isRecycled)
        assertFalse(grey.isRecycled)
    }

    @Test fun brightCoversKeepWhiteThemeTextReadableEvenAtTheGlowColourBound() {
        fun linear(value: Double) = if (value <= .04045) value / 12.92 else Math.pow((value + .055) / 1.055, 2.4)
        for (colour in listOf(Color.WHITE, Color.YELLOW, Color.rgb(220, 235, 240))) {
            val source = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888).apply { eraseColor(colour) }
            val scene = createAmbientField(source)!!
            val maximum = IntArray(3)
            for (y in 0 until 128) for (x in 0 until 128) {
                for (bitmap in listOf(scene.base, scene.glow)) {
                    val pixel = bitmap.getPixel(x, y)
                    if (Color.alpha(pixel) == 255) {
                        maximum[0] = maxOf(maximum[0], Color.red(pixel))
                        maximum[1] = maxOf(maximum[1], Color.green(pixel))
                        maximum[2] = maxOf(maximum[2], Color.blue(pixel))
                    }
                }
            }
            val visible = maximum.map { it / 255.0 * (1.0 - scene.darkVeil) }
            val luminance = .2126 * linear(visible[0]) + .7152 * linear(visible[1]) + .0722 * linear(visible[2])
            assertTrue("bright cover must allow readable white text", 1.05 / (luminance + .05) >= 4.5)
            assertFalse(source.isRecycled)
        }
    }

    @Test fun fieldRetainsMultipleSpatialRegionsAndSharedGlowIsDeterministic() {
        val source = ambientFixtureCover()
        val a = createAmbientField(source)!!; val b = createAmbientField(source)!!
        assertTrue(a.base.sameAs(b.base))
        assertTrue(a.glow.sameAs(b.glow))
        assertEquals(a.poses, b.poses)
        val left = a.base.getPixel(20, 64); val right = a.base.getPixel(108, 64)
        assertTrue("cover's warm and cool sides must remain distinct", Color.red(left) > Color.red(right))
        assertTrue("macro field must have gradual variation", (0 until 128).map { a.base.getPixel(it, 64) }.toSet().size > 40)
        assertEquals(listOf(55f, 75f, 95f), a.poses.map { it.periodSeconds })
        assertTrue(a.poses.all { it.scale in 1f..1.25f && it.pivotX in .4f.. .6f && it.pivotY in .4f.. .6f })
    }
}

/** Explicit synthetic test cover; no personal or third-party image fixture enters Git. */
internal fun ambientFixtureCover(): Bitmap = Bitmap.createBitmap(384, 384, Bitmap.Config.ARGB_8888).also {
    val canvas = Canvas(it); val paint = Paint(Paint.ANTI_ALIAS_FLAG)
    canvas.drawColor(Color.rgb(29, 71, 96))
    paint.color = Color.rgb(183, 84, 43); canvas.drawRect(0f, 0f, 175f, 384f, paint)
    paint.color = Color.rgb(224, 167, 79); canvas.drawCircle(105f, 120f, 98f, paint)
    paint.color = Color.rgb(106, 133, 126); canvas.drawCircle(275f, 265f, 130f, paint)
    paint.color = Color.rgb(238, 223, 186); canvas.drawRect(90f, 0f, 250f, 34f, paint)
}
