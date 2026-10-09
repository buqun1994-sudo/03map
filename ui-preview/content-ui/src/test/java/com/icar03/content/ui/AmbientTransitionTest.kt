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
import kotlin.math.roundToInt

/** Native Android 9 pixels: bounded worker scenes and layer-free screen transitions. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28])
class AmbientTransitionTest {
    private val painter = AmbientPainter()
    private val baker = AmbientSceneBaker()
    private val size = IntSize(128, 216)
    private fun artwork(color: Int) = AmbientArtwork(
        Bitmap.createBitmap(128, 128, Bitmap.Config.ARGB_8888).apply { eraseColor(color) },
        Bitmap.createBitmap(128, 128, Bitmap.Config.ARGB_8888), emptyList(), darkVeil = 0f, lightVeil = 0f,
    )
    private fun frame(color: Int) = baker.prepare(artwork(color), false, size)!!
    private fun render(scene: AmbientTransition, fraction: Float, background: Int = Color.BLACK): Bitmap =
        renderAt(scene, fraction, size, background)
    private fun renderAt(scene: AmbientTransition, fraction: Float, output: IntSize,
        background: Int = Color.BLACK): Bitmap = Bitmap.createBitmap(output.width, output.height, Bitmap.Config.ARGB_8888).also {
            val canvas = Canvas(it)
            canvas.drawColor(background)
            painter.drawTransition(canvas, output.width.toFloat(), output.height.toFloat(), scene, fraction)
        }
    private fun assertSamePixels(a: Bitmap, b: Bitmap) {
        val width = minOf(a.width, b.width)
        val height = minOf(a.height, b.height)
        for (y in 0 until height step 13) for (x in 0 until width step 11) {
            val before = a.getPixel(x, y); val after = b.getPixel(x, y)
            assertTrue(abs(Color.red(before) - Color.red(after)) <= 2)
            assertTrue(abs(Color.green(before) - Color.green(after)) <= 2)
            assertTrue(abs(Color.blue(before) - Color.blue(after)) <= 2)
        }
    }

    @Test fun seededStaticFieldRetainsNativeMacroColoursWithoutExposingEdges() {
        val base = Bitmap.createBitmap(128, 128, Bitmap.Config.ARGB_8888)
        val glow = Bitmap.createBitmap(128, 128, Bitmap.Config.ARGB_8888)
        for (y in 0 until 128) for (x in 0 until 128) {
            base.setPixel(x, y, Color.rgb(35 + x, 45 + y / 2, 85 + (127 - x) / 2))
            val radius = kotlin.math.hypot((x - 35).toFloat(), (y - 45).toFloat())
            glow.setPixel(x, y, Color.argb(((1f - radius / 85f).coerceIn(0f, 1f) * 255).toInt(), 210, 155, 105))
        }
        val poses = List(3) { i ->
            AmbientGlowPose(i * 7f - 8f, .43f + i * .04f, .55f - i * .03f, 1.05f + i * .05f)
        }
        val artwork = AmbientArtwork(base, glow, poses, .15f, .6f)
        fun preparedFrame(): Bitmap {
            val prepared = baker.prepare(artwork, true, size)!!
            assertTrue(prepared.width <= AMBIENT_MAX_FRAME_EDGE && prepared.height <= AMBIENT_MAX_FRAME_EDGE)
            return render(AmbientTransition(target = prepared, startOpacity = 1f, endOpacity = 1f), 1f)
        }
        val first = preparedFrame(); val second = preparedFrame()
        for (y in 0 until size.height) for (x in 0 until size.width) {
            assertEquals("overscan keeps every pixel opaque", 255, Color.alpha(second.getPixel(x, y)))
            assertEquals("the same static field retains every pixel", first.getPixel(x, y), second.getPixel(x, y))
        }
        assertNotEquals("retain the source's spatial colour variation", first.getPixel(10, 10), first.getPixel(110, 200))
    }

    @Test fun preparedFramesAreFreshBoundedAndNeverMutateSourceOrPublishedPixels() {
        for (viewport in listOf(IntSize(640, 1080), IntSize(1920, 1080), IntSize(320, 810), IntSize(1, 1))) {
            val source = artwork(Color.RED)
            val sourceGeneration = source.base.generationId
            val first = baker.prepare(source, false, viewport)!!
            val generation = first.generationId
            val firstPixels = IntArray(first.width * first.height).also { first.getPixels(it, 0, first.width, 0, 0, first.width, first.height) }
            val second = baker.prepare(source, true, viewport)!!
            assertNotSame(first, second)
            assertTrue(first.width in 1..AMBIENT_MAX_FRAME_EDGE && first.height in 1..AMBIENT_MAX_FRAME_EDGE)
            assertEquals(ambientFrameSize(viewport), IntSize(first.width, first.height))
            assertEquals(generation, first.generationId)
            assertEquals(sourceGeneration, source.base.generationId)
            val after = IntArray(firstPixels.size).also { first.getPixels(it, 0, first.width, 0, 0, first.width, first.height) }
            assertArrayEquals(firstPixels, after)
            assertFalse(first.isRecycled)
            assertFalse(source.base.isRecycled)
        }
    }

    @Test fun screenUsesOneTextureInSteadyStateAndAtMostTwoOnlyForAnInterruptedMixture() {
        val red = frame(Color.RED); val blue = frame(Color.BLUE)
        val canvas = Canvas(Bitmap.createBitmap(640, 1080, Bitmap.Config.ARGB_8888))
        val stable = AmbientTransition(target = red, startOpacity = 1f, endOpacity = 1f)
        assertEquals(1, painter.drawTransition(canvas, 640f, 1080f, stable, 1f))
        assertSame("stable capture retains immutable texture without allocating", red, stable.capture(painter, IntSize(640, 1080), 1f))
        val changing = AmbientTransition(red, blue, startOpacity = 1f, endOpacity = 1f)
        assertEquals(1, painter.drawTransition(canvas, 640f, 1080f, changing, 0f))
        assertEquals(2, painter.drawTransition(canvas, 640f, 1080f, changing, .5f))
        assertEquals(1, painter.drawTransition(canvas, 640f, 1080f, changing, 1f))
        val captured = changing.capture(painter, IntSize(640, 1080), .5f)!!
        assertTrue(captured.width <= AMBIENT_MAX_FRAME_EDGE && captured.height <= AMBIENT_MAX_FRAME_EDGE)
        assertFalse(red.isRecycled); assertFalse(blue.isRecycled)
    }

    @Test fun readinessFromAnInitiallyEmptyRendererRemainsAnObservableBooleanAcrossRequests() {
        val renderer = AmbientRenderState()
        val ready = androidx.compose.runtime.derivedStateOf(androidx.compose.runtime.structuralEqualityPolicy()) {
            renderer.hasPreparedTarget
        }
        assertFalse(ready.value)
        val first = renderer.beginRequest(painter, size)
        assertFalse(ready.value)
        assertTrue(renderer.retarget(first, frame(Color.RED), painter, size))
        assertTrue("a cold derived gate must observe its first prepared target", ready.value)
        renderer.finish(first)
        assertTrue(renderer.updateTarget(first, frame(Color.BLUE)))
        assertTrue(ready.value)
        val second = renderer.beginRequest(painter, size)
        assertFalse("frozen visible colours are not an admitted new target", ready.value)
        assertTrue(renderer.retarget(second, frame(Color.GREEN), painter, size))
        assertTrue(ready.value)
        renderer.clear()
        assertFalse(ready.value)
    }

    @Test fun requestAndHostStopRejectStalePreparedFramesWithoutRecyclingPublishedReferences() {
        val renderer = AmbientRenderState()
        val red = frame(Color.RED)
        val blue = frame(Color.BLUE)
        val firstRequest = renderer.beginRequest(painter, size)
        assertTrue(renderer.retarget(firstRequest, red, painter, size))
        renderer.finish(firstRequest)
        val generation = red.generationId
        val secondRequest = renderer.beginRequest(painter, size)
        assertFalse(renderer.updateTarget(firstRequest, blue))
        assertFalse(renderer.retarget(firstRequest, blue, painter, size))
        assertSame(red, renderer.transition.target)
        assertTrue(renderer.retarget(secondRequest, blue, painter, size))
        renderer.fraction = .43f
        val visible = render(renderer.transition, renderer.fraction)
        val thirdRequest = renderer.beginRequest(painter, size)
        assertSamePixels(visible, render(renderer.transition, 1f))
        assertFalse(renderer.updateTarget(secondRequest, red))
        renderer.clear()
        assertFalse(renderer.retarget(thirdRequest, red, painter, size))
        assertFalse(renderer.transition.hasContent)
        assertFalse(red.isRecycled); assertFalse(blue.isRecycled)
        assertEquals(generation, red.generationId)
    }

    @Test fun sameRequestRejectsAnOldGeometryResultWithoutRestartingOpacity() {
        val renderer = AmbientRenderState()
        val initial = frame(Color.RED)
        val request = renderer.beginRequest(painter, size)
        assertTrue(renderer.retarget(request, initial, painter, size))
        renderer.finish(request)
        val latestViewport = IntSize(640, 320)
        val latestSize = ambientFrameSize(latestViewport)
        val staleGeometry = baker.prepare(artwork(Color.BLUE), false, size)!!
        assertFalse(renderer.updateTarget(request, staleGeometry, latestSize))
        assertSame(initial, renderer.transition.target)
        val latest = baker.prepare(artwork(Color.BLUE), false, latestViewport)!!
        assertTrue(renderer.updateTarget(request, latest, latestSize))
        assertSame(latest, renderer.transition.target)
        assertEquals(1f, renderer.fraction, 0f)
        assertEquals(1f, renderer.transition.opacity(renderer.fraction), 0f)
        renderer.clear()
        assertFalse(renderer.updateTarget(request, latest, latestSize))
        assertFalse(initial.isRecycled); assertFalse(latest.isRecycled)
    }

    @Test fun directSourceOverPreservesGroupOpacityWithoutAFullSizeLayer() {
        val opacity = .37f
        val scene = AmbientTransition(frame(Color.RED), frame(Color.BLUE), startOpacity = opacity, endOpacity = opacity)
        for (fraction in listOf(0f, .25f, .5f, .9f, 1f)) {
            val pixel = render(scene, fraction, Color.GREEN).getPixel(64, 100)
            val red = (255 * opacity * (1f - fraction)).roundToInt()
            val blue = (255 * opacity * fraction).roundToInt()
            val green = (255 * (1f - opacity)).roundToInt()
            assertTrue("outgoing colour coefficient", abs(red - Color.red(pixel)) <= 2)
            assertTrue("incoming colour coefficient", abs(blue - Color.blue(pixel)) <= 2)
            assertTrue("theme contribution must remain 1-opacity", abs(green - Color.green(pixel)) <= 2)
        }
    }

    @Test fun opaqueCrossfadeDoesNotExposeTheThemeAtItsMidpoint() {
        val red = AmbientTransition(target = frame(Color.RED), startOpacity = 1f, endOpacity = 1f)
        val capturedRed = red.capture(painter, size, 1f)
        val toBlue = AmbientTransition(capturedRed, frame(Color.BLUE), startOpacity = 1f, endOpacity = 1f)
        val pixel = render(toBlue, .5f).getPixel(64, 100)
        assertTrue("both colours must survive", Color.red(pixel) in 125..130 && Color.blue(pixel) in 125..130)
        assertTrue("no black dip", Color.red(pixel) + Color.blue(pixel) >= 253)
    }

    @Test fun rapidThirdTrackStartsFromTheActualMixtureAndConvergesToItsOwnEndpoint() {
        val red = AmbientTransition(target = frame(Color.RED), startOpacity = 1f, endOpacity = 1f)
        val toBlue = AmbientTransition(red.capture(painter, size, 1f), frame(Color.BLUE), startOpacity = 1f, endOpacity = 1f)
        val visible = render(toBlue, .43f)
        val toGreen = AmbientTransition(toBlue.capture(painter, size, .43f), frame(Color.GREEN), startOpacity = 1f, endOpacity = 1f)
        assertSamePixels(visible, render(toGreen, 0f))
        assertEquals(Color.GREEN, render(toGreen, 1f).getPixel(64, 100))
    }

    @Test fun presentationEntryCapturesTheCurrentArrivalMixtureAsItsCompactEndpoint() {
        val red = frame(Color.RED)
        val blue = frame(Color.BLUE)
        val renderer = AmbientRenderState()
        val first = renderer.beginRequest(painter, size)
        assertTrue(renderer.retarget(first, red, painter, size))
        renderer.finish(first)
        val second = renderer.beginRequest(painter, size)
        assertTrue(renderer.retarget(second, blue, painter, size))
        renderer.fraction = .43f
        val frameSize = ambientFrameSize(size)
        val visible = renderAt(renderer.transition, renderer.fraction, frameSize)
        val captured = renderer.captureCurrent(painter, size, Color.BLACK)
        assertNotSame("a mid-arrival capture differs from both endpoints", blue, captured)
        assertNotNull(captured)
        assertSamePixels(visible, renderAt(AmbientTransition(target = captured,
            startOpacity = 1f, endOpacity = 1f), 1f, frameSize))
    }

    @Test fun presentationEntryRetainsPartialOpacityOverTheActualThemeBackground() {
        val renderer = AmbientRenderState()
        val request = renderer.beginRequest(painter, size)
        assertTrue(renderer.retarget(request, frame(Color.BLUE), painter, size))
        renderer.fraction = .43f
        val background = Color.rgb(239, 240, 247)
        val frameSize = ambientFrameSize(size)
        val visible = renderAt(renderer.transition, renderer.fraction, frameSize, background)
        val captured = renderer.captureCurrent(painter, size, background)
        assertNotNull(captured)
        assertSamePixels(visible, captured!!)
    }

    @Test fun interruptedDisappearAndAppearPreserveCurrentColourAndOpacity() {
        val stable = AmbientTransition(target = frame(Color.RED), startOpacity = 1f, endOpacity = 1f)
        val disappearing = AmbientTransition(stable.capture(painter, size, 1f), startOpacity = 1f, endOpacity = 0f)
        val visible = render(disappearing, .43f)
        val returning = AmbientTransition(disappearing.capture(painter, size, .43f), frame(Color.BLUE),
            startOpacity = disappearing.opacity(.43f), endOpacity = 1f)
        assertSamePixels(visible, render(returning, 0f))
        assertEquals(.57f, returning.opacity(0f), .001f)
        assertEquals(Color.BLUE, render(returning, 1f).getPixel(64, 100))
    }
}
