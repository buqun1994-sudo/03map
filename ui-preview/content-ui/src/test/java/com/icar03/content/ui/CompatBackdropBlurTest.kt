package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color as NativeColor
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.requiredSize
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.drawBehind
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.dp
import kotlin.math.abs
import kotlin.math.roundToInt
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Exercises the old Android path through actual Compose-to-Android Canvas pixels. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28, 30], qualifiers = "w480dp-h800dp-mdpi")
class CompatBackdropBlurTest {
    @get:Rule val compose = createComposeRule()

    @Test
    fun staticBlurReducesStripeContrastRecapturesGeometryAndRestoresLiveContentWhenDisabled() {
        val enabled = mutableStateOf(false)
        val width = mutableStateOf(240.dp)
        val solidColor = mutableStateOf<Color?>(null)
        compose.setContent {
            CompositionLocalProvider(LocalDensity provides Density(1f)) {
                Box(Modifier.requiredSize(360.dp, 240.dp)) {
                    Box(
                        Modifier.requiredSize(width.value, 120.dp)
                            .testTag(PATTERN_TAG)
                            .controlBackdropBlur(enabled.value, 18.dp)
                            .drawBehind {
                                val color = solidColor.value
                                if (color != null) {
                                    drawRect(color)
                                } else {
                                    drawRect(Color.White)
                                    var left = 0f
                                    while (left < size.width) {
                                        drawRect(Color.Black, Offset(left, 0f), Size(STRIPE_WIDTH, size.height))
                                        left += STRIPE_WIDTH * 2f
                                    }
                                }
                            },
                    )
                }
            }
        }
        compose.waitForIdle()

        val sharp = capturePattern()
        val sharpContrast = stripeContrast(sharp)
        assertTrue("unblurred black/white stripes must have full contrast: $sharpContrast", sharpContrast > 245f)

        compose.runOnIdle { enabled.value = true }
        compose.waitForIdle()
        val blurred = capturePattern()
        val blurredContrast = stripeContrast(blurred)
        assertTrue(
            "actual legacy blur must significantly reduce stripe contrast: $sharpContrast -> $blurredContrast",
            blurredContrast < sharpContrast * .3f,
        )
        val frozenPixel = blurred.getPixel(blurred.width / 2, blurred.height / 2)
        assertEquals("the snapshot must contain opaque pattern content", 255, NativeColor.alpha(frozenPixel))
        assertTrue("blurred stripe centres should become grey", NativeColor.red(frozenPixel) in 40..215)

        // Changing content alone keeps the modal's first captured frame, without another CPU pass.
        compose.runOnIdle { solidColor.value = Color.Red }
        compose.waitForIdle()
        val frozen = capturePattern()
        assertEquals("same geometry must keep the static modal snapshot", frozenPixel,
            frozen.getPixel(frozen.width / 2, frozen.height / 2))

        // A different measured width must capture the current red content, rather than stretch grey.
        compose.runOnIdle { width.value = 288.dp }
        compose.waitForIdle()
        val resized = capturePattern()
        assertEquals(288, resized.width)
        assertInteriorColor(resized, NativeColor.RED, "geometry change must recapture the current content")

        compose.runOnIdle {
            solidColor.value = Color.Blue
            enabled.value = false
        }
        compose.waitForIdle()
        assertInteriorColor(capturePattern(), NativeColor.BLUE, "closing must immediately restore live drawing")

        compose.runOnIdle { solidColor.value = Color.Green }
        compose.waitForIdle()
        assertInteriorColor(capturePattern(), NativeColor.GREEN, "disabled blur must not retain any old snapshot")
    }

    /** Uses the same real root Canvas route as AmbientUiTransitionTest; no PixelCopy or mock image. */
    @OptIn(ExperimentalComposeUiApi::class)
    private fun capturePattern(): Bitmap {
        val semantics = compose.onNodeWithTag(PATTERN_TAG).fetchSemanticsNode()
        val root = semantics.root as ViewRootForTest
        val bounds = semantics.boundsInRoot
        return compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.roundToInt(), bounds.height.roundToInt(), Bitmap.Config.ARGB_8888)
                .also { image ->
                    Canvas(image).apply {
                        translate(-bounds.left, -bounds.top)
                        root.view.draw(this)
                    }
                }
        }
    }

    private fun stripeContrast(image: Bitmap): Float {
        var total = 0f
        var pairs = 0
        // Stay away from clamped edges. Compare adjacent stripe centres over several scanlines.
        for (y in image.height / 3..image.height * 2 / 3 step 10) {
            for (x in 52 until image.width - 52 step STRIPE_WIDTH.toInt()) {
                val first = NativeColor.red(image.getPixel(x, y))
                val next = NativeColor.red(image.getPixel(x + STRIPE_WIDTH.toInt(), y))
                total += abs(first - next)
                pairs++
            }
        }
        assertTrue("the physical canvas must contain enough stripe samples", pairs > 0)
        return total / pairs
    }

    private fun assertInteriorColor(image: Bitmap, expected: Int, message: String) {
        for (y in image.height / 4..image.height * 3 / 4 step 12) {
            for (x in image.width / 4..image.width * 3 / 4 step 12) {
                assertEquals("$message at $x/$y", expected, image.getPixel(x, y))
            }
        }
    }

    private companion object {
        const val PATTERN_TAG = "compat-backdrop-blur-pattern"
        const val STRIPE_WIDTH = 8f
    }
}
