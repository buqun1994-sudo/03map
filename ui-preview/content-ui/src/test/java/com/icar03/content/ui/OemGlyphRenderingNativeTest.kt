package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color as AndroidColor
import android.graphics.Rect as AndroidRect
import android.view.WindowManager
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Alignment
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.layout.Layout
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.SemanticsMatcher
import androidx.compose.ui.test.assert
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.unit.Constraints
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.dp
import com.airbnb.lottie.LottieCompositionFactory
import java.io.File
import kotlin.math.ceil
import kotlin.math.floor
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Actual production OemIcon pixels, captured from the complete transparent Android Compose host. */
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
open class OemGlyphRenderingNativeTest {
    @get:Rule val compose = createComposeRule()
    protected open val platform = "api34"

    private data class Glyph(
        val label: String,
        val resource: Int,
        val heightPx: Float,
        val asset: String? = null,
        val recipe: VehicleControlIconRecipe? = null,
    )

    @Test fun lightGlyphsAt141Dpi() = verify(141, false)
    @Test fun darkGlyphsAt141Dpi() = verify(141, true)
    @Test fun lightGlyphsAt160Dpi() = verify(160, false)
    @Test fun darkGlyphsAt160Dpi() = verify(160, true)
    @Test fun lightGlyphsAt212Dpi() = verify(212, false)
    @Test fun darkGlyphsAt212Dpi() = verify(212, true)
    @Test fun lightGlyphsAt320Dpi() = verify(320, false)
    @Test fun darkGlyphsAt320Dpi() = verify(320, true)

    private fun glyphs(dark: Boolean): List<Glyph> = buildList {
        add(Glyph("lock/closed", R.drawable.content_oem_ico_lock_close, 36f, "ico_lock_close_f.json"))
        add(Glyph("lock/open", R.drawable.content_oem_ico_lock_open, 36f, "ico_lock_open_f.json"))
        for (control in listOf(ControlId.Wiper, ControlId.Ventilation, ControlId.Heating, ControlId.Massage)) {
            for (level in 0..control.maxLevel) {
                val recipe = vehicleControlIconRecipe(control, level, dark)
                add(Glyph("${control.name}/$level", recipe.resource, 32f,
                    recipe.asset.takeIf { it.isNotEmpty() }, recipe))
            }
        }
        add(Glyph("settings", R.drawable.content_oem_ic_settings, 32f))
        add(Glyph("page/fullscreen", R.drawable.content_ic_fullscreen, 32f))
        add(Glyph("page/fullscreen-exit", R.drawable.content_ic_fullscreen_exit, 32f))
        add(Glyph("media/play", R.drawable.content_oem_ico_media_play_f, 32f, "ico_media_pause_02_f.json"))
        add(Glyph("media/pause", R.drawable.content_oem_ico_media_pause_f, 32f, "ico_media_play_02_f.json"))
        add(Glyph("media/next", R.drawable.content_oem_ico_media_next_f, 30f, "ico_media_next_f.json"))
        add(Glyph("source/bluetooth", R.drawable.content_oem_ico_bluetooth, 30f, "ico_bluetooth_1.json"))
        add(Glyph("source/aiquting", R.drawable.content_oem_ico_media_aiquting, 30f, "ico_media_aiquting.json"))
        add(Glyph("source/neteasy", R.drawable.content_oem_ico_media_neteasy, 30f, "ico_media_neteasy.json"))
        add(Glyph("source/usb", R.drawable.content_oem_ico_devices_usb, 30f, "ico_devices_usb.json"))
        add(Glyph("source/local", R.drawable.content_oem_ico_media_local, 30f, "ico_media_local.json"))
    }

    private fun verify(dpi: Int, dark: Boolean) {
        val glyphs = glyphs(dark)
        val density = dpi / 160f
        val vectorOnly = mutableStateOf(false)
        val action = mutableIntStateOf(0)
        val context = RuntimeEnvironment.getApplication()
        glyphs.mapNotNull { it.asset }.distinct().forEach { asset ->
            val result = LottieCompositionFactory.fromAssetSync(context, "content-oem/$asset")
            assertTrue("canonical asset must parse: $asset", result.value != null)
        }
        compose.setContent {
            val view = LocalView.current
            SideEffect {
                var owner = view.context
                while (owner is android.content.ContextWrapper && owner !is android.app.Activity) owner = owner.baseContext
                val window = (owner as android.app.Activity).window
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                @Suppress("DEPRECATION")
                window.decorView.systemUiVisibility = android.view.View.SYSTEM_UI_FLAG_FULLSCREEN or
                    android.view.View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or android.view.View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or
                    android.view.View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or android.view.View.SYSTEM_UI_FLAG_LAYOUT_STABLE
            }
            CompositionLocalProvider(LocalDensity provides Density(density),
                LocalContentWindowActive provides true, LocalIconAction provides action.intValue) {
                ContentTheme(dark) {
                    // No surface/background: all measured pixels come from the real glyph renderer.
                    Layout(modifier = Modifier.fillMaxSize().testTag("glyph-host"), content = {
                        glyphs.forEachIndexed { index, glyph ->
                            Box(Modifier.testTag("glyph-cell-$index"), contentAlignment = Alignment.Center) {
                                val recipe = glyph.recipe
                                OemIcon(glyph.resource, Modifier.testTag("glyph-$index"),
                                    tint = recipe?.tint ?: contentIconNeutral(dark),
                                    pathColors = recipe?.pathColors ?: emptyMap(),
                                    animationAsset = glyph.asset.takeUnless { vectorOnly.value },
                                    animationFrames = recipe?.frames,
                                    animationColors = recipe?.animationColors ?: emptyMap(),
                                    animationStrokePathColors = recipe?.animationStrokePathColors ?: emptyMap(),
                                    animationPathOpacities = recipe?.animationPathOpacities ?: emptyMap(),
                                    glyphHeight = (glyph.heightPx / density).dp,
                                    animateOnAction = false, acceptedActionOnly = true)
                            }
                        }
                    }) { measurables, constraints ->
                        val placeables = measurables.map { it.measure(Constraints.fixed(CELL_SIZE, CELL_SIZE)) }
                        val columns = constraints.maxWidth / CELL_SIZE
                        val left = (constraints.maxWidth - columns * CELL_SIZE) / 2
                        layout(constraints.maxWidth, constraints.maxHeight) {
                            placeables.forEachIndexed { index, placeable ->
                                placeable.place(left + index % columns * CELL_SIZE, 48 + index / columns * CELL_SIZE)
                            }
                        }
                    }
                }
            }
        }
        compose.waitForIdle()
        compose.waitUntil(10_000) {
            glyphs.indices.all { index ->
                val node = compose.onNodeWithTag("glyph-$index", useUnmergedTree = true).fetchSemanticsNode()
                glyphs[index].asset == null || node.config[IconAnimationReady]
            }
        }
        val theme = if (dark) "dark" else "light"
        val prefix = "oem-glyph-$platform-$dpi-$theme"
        val tail = capture("$prefix-lottie-tail")
        assertRequestedInk(glyphs, tail, false, dpi, dark)

        // A one-shot must draw the original wider opening contour outside its small steady-state Canvas.
        // Scanning the complete host/cell catches implicit graphics-layer/layout clipping.
        compose.mainClock.autoAdvance = false
        compose.runOnIdle { action.intValue++ }
        var openingContourExtended = false
        repeat(8) {
            compose.mainClock.advanceTimeBy(48)
            compose.waitForIdle()
            val frame = capture(null)
            val cell = bounds("glyph-cell-0")
            val ink = requireNotNull(inkBounds(frame, cell))
            val steadyWidth = requireNotNull(oemGlyphViewport(glyphs[0].resource, glyphs[0].asset, null)).aspectRatio * 36f
            if (ink.width() > steadyWidth + 4f) openingContourExtended = true
            frame.recycle()
        }
        assertTrue("original lock animation contour must remain visible outside steady glyph bounds", openingContourExtended)
        compose.mainClock.advanceTimeBy(8_000)
        compose.waitForIdle()
        glyphs.indices.forEach { index ->
            compose.onNodeWithTag("glyph-$index", useUnmergedTree = true)
                .assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
        }
        val settled = capture(null)
        assertRequestedInk(glyphs, settled, false, dpi, dark)
        assertArrayEquals("one-shot completion retains the same unscaled OEM tail", pixels(tail), pixels(settled))
        settled.recycle()
        tail.recycle()
        compose.mainClock.autoAdvance = true

        compose.runOnIdle { vectorOnly.value = true }
        compose.waitForIdle()
        compose.waitUntil(10_000) {
            glyphs.indices.all { compose.onNodeWithTag("glyph-$it", useUnmergedTree = true)
                .fetchSemanticsNode().config[IconAnimationAsset].isEmpty() }
        }
        val vector = capture("$prefix-vector")
        assertRequestedInk(glyphs, vector, true, dpi, dark)
        vector.recycle()
    }

    private fun assertRequestedInk(glyphs: List<Glyph>, bitmap: Bitmap, vector: Boolean, dpi: Int, dark: Boolean) {
        assertEquals("the complete host must keep a transparent background", 0, AndroidColor.alpha(bitmap.getPixel(0, 0)))
        glyphs.forEachIndexed { index, glyph ->
            val cell = bounds("glyph-cell-$index")
            val ink = requireNotNull(inkBounds(bitmap, cell)) { "${glyph.label}: no actual glyph pixels" }
            val viewport = requireNotNull(oemGlyphViewport(glyph.resource, if (vector) null else glyph.asset,
                if (vector) null else glyph.recipe?.frames))
            val label = "${glyph.label} / $dpi / dark=$dark / vector=$vector"
            assertEquals("$label actual ink height", glyph.heightPx.toDouble(), ink.height().toDouble(), 2.0)
            // Low-resolution stroke coverage can add a pale edge on each side. Compare with the
            // unmodified source at the same physical size, independently rendered by Android Canvas.
            if (!vector && glyph.asset != null) {
                val reference = canonicalReference(glyph, viewport, bounds("glyph-$index"), cell)
                val referenceInk = requireNotNull(inkBounds(reference, Rect(0f, 0f, cell.width, cell.height)))
                assertEquals("$label original native width including antialiasing", referenceInk.width().toDouble(), ink.width().toDouble(), 1.0)
                assertEquals("$label original native height including antialiasing", referenceInk.height().toDouble(), ink.height().toDouble(), 1.0)
                val originalCoverage = alphaCoverage(reference, Rect(0f, 0f, cell.width, cell.height))
                val actualCoverage = alphaCoverage(bitmap, cell)
                assertEquals("$label preserves the original Lottie alpha footprint", originalCoverage.toDouble(), actualCoverage.toDouble(), originalCoverage * .03)
                reference.recycle()
            } else {
                // Half-covered edge pixels represent the solid contour across Vector backends.
                // Alpha>=8 above still checks every pale antialias edge and the complete height.
                val solid = requireNotNull(inkBounds(bitmap, cell, 128))
                assertEquals("$label actual solid height", glyph.heightPx.toDouble(), solid.height().toDouble(), 1.0)
                assertEquals("$label original solid aspect", (glyph.heightPx * viewport.aspectRatio).toDouble(), solid.width().toDouble(), 1.0)
            }
            assertEquals("$label horizontal centre", cell.center.x.toDouble(), ink.exactCenterX().toDouble(), 1.5)
            assertEquals("$label vertical centre", cell.center.y.toDouble(), ink.exactCenterY().toDouble(), 1.5)
            assertTrue("$label complete shape must fit its real cell", ink.left > cell.left + 4 && ink.right < cell.right - 4 &&
                ink.top > cell.top + 4 && ink.bottom < cell.bottom - 4)
        }
    }

    /** Raw Android source drawable plus a uniform Rect-to-Rect matrix; never calls production OemIcon. */
    private fun canonicalReference(glyph: Glyph, viewport: OemGlyphViewport,
        canvasBounds: Rect, cell: Rect): Bitmap {
        val context = RuntimeEnvironment.getApplication()
        val raw: android.graphics.drawable.Drawable = run {
            val composition = requireNotNull(LottieCompositionFactory.fromAssetSync(context,
                "content-oem/${glyph.asset}").value)
            com.airbnb.lottie.LottieDrawable().apply {
                setComposition(composition)
                val mediaDisc = glyph.label == "media/play" || glyph.label == "media/pause"
                @Suppress("DEPRECATION")
                enableMergePathsForKitKatAndAbove(!mediaDisc)
                if (mediaDisc) addValueCallback(com.airbnb.lottie.model.KeyPath("**", "路径 1"),
                    com.airbnb.lottie.LottieProperty.PATH,
                    com.airbnb.lottie.value.LottieValueCallback(android.graphics.Path()))
                glyph.recipe?.animationPathOpacities?.forEach { (path, opacity) ->
                    addValueCallback(com.airbnb.lottie.model.KeyPath(*path.toTypedArray()),
                        com.airbnb.lottie.LottieProperty.OPACITY,
                        com.airbnb.lottie.value.LottieValueCallback(opacity))
                }
                if (glyph.recipe?.frames == null) progress = 1f else frame = glyph.recipe.frames.last
            }
        }
        val sourceWidth = raw.intrinsicWidth.coerceAtLeast(1)
        val sourceHeight = raw.intrinsicHeight.coerceAtLeast(1)
        raw.setBounds(0, 0, sourceWidth, sourceHeight)
        val r = viewport.normalizedRect
        val source = android.graphics.RectF(r.left * sourceWidth, r.top * sourceHeight,
            r.right * sourceWidth, r.bottom * sourceHeight)
        val inkWidth = glyph.heightPx * source.width() / source.height()
        val cx = canvasBounds.center.x - cell.left
        val cy = canvasBounds.center.y - cell.top
        val destination = android.graphics.RectF(cx - inkWidth / 2f, cy - glyph.heightPx / 2f,
            cx + inkWidth / 2f, cy + glyph.heightPx / 2f)
        val transform = android.graphics.Matrix().apply {
            assertTrue(setRectToRect(source, destination, android.graphics.Matrix.ScaleToFit.CENTER))
        }
        return Bitmap.createBitmap(cell.width.toInt(), cell.height.toInt(), Bitmap.Config.ARGB_8888).also {
            val canvas = Canvas(it)
            canvas.concat(transform)
            raw.draw(canvas)
        }
    }

    private fun alphaCoverage(bitmap: Bitmap, region: Rect): Long {
        var sum = 0L
        for (y in floor(region.top).toInt() until ceil(region.bottom).toInt()) {
            for (x in floor(region.left).toInt() until ceil(region.right).toInt()) {
                sum += AndroidColor.alpha(bitmap.getPixel(x, y))
            }
        }
        return sum
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture(name: String?): Bitmap {
        val semantics = compose.onNodeWithTag("glyph-host").fetchSemanticsNode()
        val root = semantics.root as? ViewRootForTest ?: error("native Android Compose host required")
        val bounds = semantics.boundsInRoot
        val bitmap = compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.toInt(), bounds.height.toInt(), Bitmap.Config.ARGB_8888).also {
                val canvas = Canvas(it)
                canvas.translate(-bounds.left, -bounds.top)
                root.view.draw(canvas)
            }
        }
        assertEquals(640, bitmap.width)
        assertEquals(1080, bitmap.height)
        if (name != null) {
            val file = File("build/reports/rendered/$name.png")
            val directory = requireNotNull(file.parentFile)
            assertTrue(directory.isDirectory || directory.mkdirs())
            file.outputStream().use { assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it)) }
        }
        return bitmap
    }

    private fun bounds(tag: String): Rect = compose.onNodeWithTag(tag, useUnmergedTree = true).fetchSemanticsNode().boundsInRoot

    private fun inkBounds(bitmap: Bitmap, cell: Rect, alphaThreshold: Int = 8): AndroidRect? {
        var left = bitmap.width; var top = bitmap.height; var right = -1; var bottom = -1
        for (y in floor(cell.top).toInt() until ceil(cell.bottom).toInt()) {
            for (x in floor(cell.left).toInt() until ceil(cell.right).toInt()) {
                if (AndroidColor.alpha(bitmap.getPixel(x, y)) >= alphaThreshold) {
                    if (x < left) left = x
                    if (y < top) top = y
                    if (x > right) right = x
                    if (y > bottom) bottom = y
                }
            }
        }
        return if (right < left) null else AndroidRect(left, top, right + 1, bottom + 1)
    }

    private fun pixels(bitmap: Bitmap): IntArray = IntArray(bitmap.width * bitmap.height).also {
        bitmap.getPixels(it, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
    }

    private companion object { const val CELL_SIZE = 96 }
}

@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class OemGlyphRenderingApi28Test : OemGlyphRenderingNativeTest() { override val platform = "api28" }
