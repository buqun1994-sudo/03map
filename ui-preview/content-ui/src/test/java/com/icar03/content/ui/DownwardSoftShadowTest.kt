package com.icar03.content.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Paint
import android.view.View
import android.view.WindowManager
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.ui.Alignment
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import java.io.File
import kotlin.math.abs
import kotlin.math.ceil
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
open class DownwardSoftShadowTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    private val background: Int get() = if (dark) 0xFF0F0F0F.toInt() else 0xFFEFF0F7.toInt()
    private val fill: Int get() = if (dark) 0xFF1A1A1A.toInt() else 0xFFFFFFFF.toInt()
    private val rootTag = "shadow-test-root"

    @Test fun nativeNinePatchCacheKeepsPhysicalAlphaAcrossCanvasDensities() {
        val cache = DownwardShadowTextureCache()
        val size = Size(360f, 180f)
        val physicalDensity = 2f
        val radius = 24f
        val padding = downwardSoftShadowOutsetPx(physicalDensity).toInt()
        val texture = requireNotNull(cache.texture(size, physicalDensity, radius, fill, dark))
        assertTrue("exercise the native NinePatch path", texture.usesNativeNinePatch)
        val frame = texture.frame(size, 0xFF000000.toInt())
        fun image(canvasDensity: Int): Bitmap = Bitmap.createBitmap(size.width.toInt() + padding * 2,
            size.height.toInt() + padding * 2, Bitmap.Config.ARGB_8888).apply { this.density = canvasDensity }
        fun render(canvasDensity: Int): Bitmap = image(canvasDensity).also { bitmap ->
            Canvas(bitmap).apply {
                assertEquals(canvasDensity, density)
                translate(padding.toFloat(), padding.toFloat())
                frame.draw(this)
            }
        }
        fun exteriorAlpha(bitmap: Bitmap): IntArray {
            val pixels = IntArray(bitmap.width * bitmap.height)
            bitmap.getPixels(pixels, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
            return pixels.indices.filter { index ->
                val x = index % bitmap.width
                val y = index / bitmap.width
                x < padding || x >= padding + size.width || y < padding || y >= padding + size.height
            }.map { pixels[it] ushr 24 }.toIntArray()
        }
        val first = render(160)
        assertSame("a Canvas density change must reuse the same physical mask", texture,
            cache.texture(size, physicalDensity, radius, fill, dark))
        val warm = render(320)
        val reference = image(160).also { bitmap ->
            Canvas(bitmap).drawRoundRect(padding.toFloat(), padding.toFloat(), padding + size.width,
                padding + size.height, radius, radius, Paint(Paint.ANTI_ALIAS_FLAG).apply {
                    color = 0xFFFFFFFF.toInt()
                    setShadowLayer(5f * physicalDensity, 0f, 3f * physicalDensity, 0xFF000000.toInt())
                })
        }
        try {
            save(first, "ninepatch-canvas-density-160")
            save(warm, "ninepatch-canvas-density-320")
            save(reference, "ninepatch-canvas-density-reference")
            assertEquals("one rasterization across both destination Canvas densities", 1L, cache.rasterizationCount)
            assertEquals("both draws use the published cached frame", 2L, texture.warmDrawCount)
            val firstAlpha = exteriorAlpha(first)
            val warmAlpha = exteriorAlpha(warm)
            val referenceAlpha = exteriorAlpha(reference)
            assertArrayEquals("the complete external alpha envelope is independent of Canvas density", firstAlpha, warmAlpha)
            val worst = firstAlpha.indices.maxOf { abs(firstAlpha[it] - referenceAlpha[it]) }
            assertTrue("the physical mask retains the native reference falloff; alpha delta=$worst", worst <= 8)
            assertTrue("the cached mask must retain a visible downward tail",
                android.graphics.Color.alpha(warm.getPixel(padding + size.width.toInt() / 2,
                    padding + size.height.toInt() + 4)) > 0)
        } finally {
            first.recycle()
            warm.recycle()
            reference.recycle()
        }
    }

    @Test fun smallNativeMaskMatchesAcceptedShadowWithoutStretchSeamsOrFillTint() {
        val cache = DownwardShadowTextureCache()
        // Dock/media-sized surfaces, a small switch, and a large independent window at three densities.
        for ((size, density, radius) in listOf(
            Triple(Size(616f, 100f), 1f, 12f),
            Triple(Size(600f, 120f), 1f, 12f),
            Triple(Size(574f, 78f), 1f, 8f),
            Triple(Size(60f, 30f), 1f, 15f),
            Triple(Size(1920f, 1080f), .88125f, 10.575f), // 141dpi
            Triple(Size(52.875f, 26.4375f), .88125f, 13.21875f), // 141dpi, 60x30dp switch
            Triple(Size(49.35f, 49.35f), .88125f, 7.05f), // 141dpi, 56dp/8dp control
            Triple(Size(600f, 120f), .88125f, 10.575f),
            Triple(Size(574f, 78f), .88125f, 7.05f),
            Triple(Size(1200f, 1800f), 1.325f, 15.9f), // 212dpi
            Triple(Size(79.5f, 39.75f), 1.325f, 19.875f), // 212dpi, 60x30dp switch
            Triple(Size(74.2f, 74.2f), 1.325f, 10.6f), // 212dpi, 56dp/8dp control
            Triple(Size(1200f, 1800f), 2f, 24f), // 320dpi
            Triple(Size(120f, 60f), 2f, 30f), // 320dpi, 60x30dp switch
            Triple(Size(112f, 112f), 2f, 16f), // 320dpi, 56dp/8dp control
        )) {
            val padding = ceil(5f * density * 3f + 3f * density).toInt() + 1
            val expected = Bitmap.createBitmap(size.width.toInt() + padding * 2,
                size.height.toInt() + padding * 2, Bitmap.Config.ARGB_8888)
            val actual = Bitmap.createBitmap(expected.width, expected.height, Bitmap.Config.ARGB_8888)
            Canvas(expected).apply {
                drawColor(background)
                val paint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
                    color = fill
                    setShadowLayer(5f * density, 0f, 3f * density,
                        if (dark) 0xA0000000.toInt() else 0x30000000)
                }
                drawRoundRect(padding.toFloat(), padding.toFloat(), padding + size.width,
                    padding + size.height, radius, radius, paint)
            }
            Canvas(actual).apply {
                drawColor(background)
                translate(padding.toFloat(), padding.toFloat())
                val texture = requireNotNull(cache.texture(size, density, radius, fill, dark))
                texture.frame(size, if (dark) 0xA0000000.toInt() else 0x30000000).draw(this)
                // The surface is painted independently, exactly as the production modifier chain.
                drawRoundRect(0f, 0f, size.width, size.height, radius, radius,
                    Paint(Paint.ANTI_ALIAS_FLAG).apply { color = fill })
            }
            // Compare the border, including corners and stretched straight edges. The native mask
            // is quantized at 1/16px for fractional density, so a small pixel delta is expected.
            var worst = 0
            var worstAt = ""
            for (y in 0 until expected.height step 2) for (x in 0 until expected.width step 2) {
                if (x > padding + radius + 16 * density && x < padding + size.width - radius - 16 * density &&
                    y > padding + radius + 16 * density && y < padding + size.height - radius - 16 * density) continue
                val delta = colorDistance(expected.getPixel(x, y), actual.getPixel(x, y))
                if (delta > worst) {
                    worst = delta
                    worstAt = "$x,$y expected=${expected.getPixel(x, y).toUInt().toString(16)} actual=${actual.getPixel(x, y).toUInt().toString(16)}"
                }
            }
            if (worst > 8) {
                save(expected, "fractional-shadow-expected")
                save(actual, "fractional-shadow-actual")
            }
            assertTrue("small cached mask must retain native falloff at $size/$density; channel delta=$worst at $worstAt", worst <= 8)
            assertEquals("a transparent mask must retain the exact separately-painted fill", fill,
                actual.getPixel(padding + size.width.toInt() / 2, padding + size.height.toInt() / 2))
            for (x in padding + radius.toInt() + 3 until padding + size.width.toInt() - radius.toInt() - 3 step 7) {
                assertEquals("stretch seams must not tint the surface", fill, actual.getPixel(x, padding + (4 * density).toInt()))
            }
            expected.recycle(); actual.recycle()
        }
    }

    @Test fun fixedMaskIsSideSymmetricAndProjectsDownInBothThemes() {
        for (isDark in listOf(false, true)) {
            val cache = DownwardShadowTextureCache()
            val size = Size(180f, 96f)
            val density = 1f
            val radius = 12f
            val padding = ceil(5f * density * 3f + 3f * density).toInt() + 1
            val image = Bitmap.createBitmap(size.width.toInt() + padding * 2, size.height.toInt() + padding * 2,
                Bitmap.Config.ARGB_8888)
            val page = if (isDark) 0xFF0F0F0F.toInt() else 0xFFEFF0F7.toInt()
            val surface = if (isDark) 0xFF1A1A1A.toInt() else 0xFFFFFFFF.toInt()
            Canvas(image).apply {
                drawColor(page)
                translate(padding.toFloat(), padding.toFloat())
                requireNotNull(cache.texture(size, density, radius, surface, isDark))
                    .frame(size, if (isDark) 0xA0000000.toInt() else 0x30000000).draw(this)
                drawRoundRect(0f, 0f, size.width, size.height, radius, radius,
                    Paint(Paint.ANTI_ALIAS_FLAG).apply { color = surface })
            }
            val centerX = padding + size.width.toInt() / 2
            val centerY = padding + size.height.toInt() / 2
            val left = image.getPixel(padding - 2, centerY)
            val right = image.getPixel(padding + size.width.toInt() + 1, centerY)
            assertTrue("${if (isDark) "dark" else "light"} side shadow must stay centered",
                colorDistance(left, right) <= 2)
            val top = brightness(image.getPixel(centerX, padding - 2))
            val nearBottom = brightness(image.getPixel(centerX, padding + size.height.toInt() + 2))
            val farBottom = brightness(image.getPixel(centerX, padding + size.height.toInt() + 8))
            assertTrue("${if (isDark) "dark" else "light"} shadow must project downward", nearBottom < top)
            assertTrue("${if (isDark) "dark" else "light"} shadow must soften after its lower edge", farBottom > nearBottom)
            image.recycle()
        }
    }

    @Test fun transparentCenterLeavesUnderlyingSurfaceUntouched() {
        val cache = DownwardShadowTextureCache()
        val size = Size(120f, 72f)
        val density = 1f
        val radius = 12f
        val padding = ceil(5f * density * 3f + 3f * density).toInt() + 1
        val image = Bitmap.createBitmap(size.width.toInt() + padding * 2, size.height.toInt() + padding * 2,
            Bitmap.Config.ARGB_8888)
        val surface = 0xFF123456.toInt()
        Canvas(image).apply {
            drawColor(0xFFEFF0F7.toInt())
            translate(padding.toFloat(), padding.toFloat())
            drawRoundRect(0f, 0f, size.width, size.height, radius, radius,
                Paint(Paint.ANTI_ALIAS_FLAG).apply { color = surface })
            val before = image.getPixel(padding + size.width.toInt() / 2, padding + size.height.toInt() / 2)
            val texture = requireNotNull(cache.texture(size, density, radius, surface, dark))
            assertTrue("runtime chunk must use the native NinePatch path", texture.usesNativeNinePatch)
            texture.frame(size, if (dark) 0xA0000000.toInt() else 0x30000000).draw(this)
            assertEquals("transparent NinePatch center must not repaint the caller surface", before,
                image.getPixel(padding + size.width.toInt() / 2, padding + size.height.toInt() / 2))
        }
        image.recycle()
    }
    @Test fun realDockMediaAndShortcutShadowsRemainCenteredAndProjectDownward() {
        compose.setContent {
                ContentPanel(previewState().copy(dark = dark), {}, modifier = Modifier.testTag(rootTag))
            }
        compose.waitForIdle()
        val image = capture()
        val root = compose.onNodeWithTag(rootTag).fetchSemanticsNode().boundsInRoot
        for (tag in listOf("media-card", "floating-dock", "control-Lock")) {
            val bounds = compose.onNodeWithTag(tag).fetchSemanticsNode().boundsInRoot
            val center = (bounds.center.x - root.left).toInt()
            val top = (bounds.top - root.top).toInt()
            val bottom = (bounds.bottom - root.top).toInt()
            assertTrue("$tag must project down rather than inherit the system light",
                brightness(image.getPixel(center, bottom + 2)) < brightness(image.getPixel(center, top - 2)))
            assertTrue("$tag must soften at its lower edge",
                brightness(image.getPixel(center, bottom + 8)) > brightness(image.getPixel(center, bottom + 2)))
            if (tag != "control-Lock") {
                val y = (bounds.center.y - root.top).toInt()
                assertTrue("$tag must not regain a heavier left edge",
                    colorDistance(image.getPixel((bounds.left - root.left).toInt() - 2, y),
                        image.getPixel((bounds.right - root.left).toInt() + 1, y)) <= 2)
            }
        }
        save(image, "dock-media-shortcuts")
    }

    @Test fun settingsCardKeepsTheSameDirectionAndSymmetricSides() {
        compose.setContent {
            ContentTheme(dark) {
                CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(dark)) {
                    Box(Modifier.size(300.dp, 240.dp).background(settingsDesign(dark).page).testTag(rootTag)) {
                        SettingsGroupCard(Modifier.align(Alignment.Center).size(180.dp, 96.dp).testTag("shadow-settings-card")) {
                            Text("歌词设置", color = settingsDesign(dark).text)
                        }
                    }
                }
            }
        }
        compose.waitForIdle()
        val image = capture()
        val root = compose.onNodeWithTag(rootTag).fetchSemanticsNode().boundsInRoot
        val bounds = compose.onNodeWithTag("shadow-settings-card").fetchSemanticsNode().boundsInRoot
        val center = (bounds.center.x - root.left).toInt()
        val y = (bounds.center.y - root.top).toInt()
        assertTrue("settings shadow must project downward",
            brightness(image.getPixel(center, (bounds.bottom - root.top).toInt() + 2)) <
                brightness(image.getPixel(center, (bounds.top - root.top).toInt() - 2)))
        assertTrue("settings must not inherit the system's left-heavy light",
            colorDistance(image.getPixel((bounds.left - root.left).toInt() - 2, y),
                image.getPixel((bounds.right - root.left).toInt() + 1, y)) <= 2)
        assertEquals("the card retains its exact surface color", settingsDesign(dark).card.toArgb(),
            image.getPixel(center, (bounds.bottom - root.top).toInt() - 8))
        save(image, "settings-card")
    }

    @Test fun contentAndLayerTranslationRedrawsNeverRebuildTheBlurredTexture() {
        val cache = DownwardShadowTextureCache()
        val offset = mutableFloatStateOf(0f)
        compose.setContent {
            Box(Modifier.size(300.dp, 240.dp).background(Color(background)).testTag(rootTag)) {
                Box(Modifier.align(Alignment.Center).size(180.dp, 96.dp)
                    .graphicsLayer { translationX = offset.floatValue }
                    .downwardSoftShadow(Color(fill), dark, cache = cache)
                    .clip(RoundedCornerShape(12.dp)).background(Color(fill)))
            }
        }
        compose.waitForIdle()
        capture().recycle()
        assertEquals(1L, cache.rasterizationCount)
        repeat(24) { index ->
            compose.runOnIdle { offset.floatValue = (index % 4 * 3).toFloat() }
            capture().recycle()
        }
        assertEquals("translation and repeated native draws reuse their texture", 1L, cache.rasterizationCount)
        assertTrue("large surfaces use only a small texture", cache.cachedBytes < 64 * 1024)
        val fractional = DownwardShadowTextureCache()
        val baked = requireNotNull(fractional.texture(Size(1920f, 1080f), .88125f, 10.575f, fill, dark))
        assertTrue("the 141dpi mask is bounded independently of target dimensions", baked.byteCount < 64 * 1024)
        assertTrue("the published path uses one native NinePatch draw", baked.usesNativeNinePatch)
        assertEquals(baked.byteCount, fractional.cachedBytes)
        assertSame(baked, fractional.texture(Size(1920f, 1080f), .88125f, 10.575f, 0xFF0086FD.toInt(), !dark))
        assertEquals("theme and fill only retint the same mask", 1L, fractional.rasterizationCount)
        val warmFrame = baked.frame(Size(1920f, 1080f), if (dark) 0xA0000000.toInt() else 0x30000000)
        val warmImage = Bitmap.createBitmap(1920 + 64, 1080 + 64, Bitmap.Config.ARGB_8888)
        repeat(8) { warmFrame.draw(Canvas(warmImage)) }
        assertEquals("a cached frame records warm draws without rebuilding", 8L, baked.warmDrawCount)
        warmImage.recycle()
    }

    @Test fun radiusDensityAndTinyGeometryInvalidateButLargeDimensionsReuseCorners() {
        val cache = DownwardShadowTextureCache()
        val initial = requireNotNull(cache.texture(Size(600f, 120f), 1f, 12f, fill, dark))
        assertSame(initial, cache.texture(Size(1920f, 1080f), 1f, 12f, fill, dark))
        assertEquals("a larger flat center needs no new mask", 1L, cache.rasterizationCount)
        assertNotSame(initial, cache.texture(Size(600f, 120f), 1f, 8f, fill, dark))
        assertEquals(2L, cache.rasterizationCount)
        assertSame("theme only changes the frame tint", initial,
            cache.texture(Size(600f, 120f), 1f, 12f, fill, !dark))
        assertSame("ordinary/pressed fill never enters the mask key", initial,
            cache.texture(Size(600f, 120f), 1f, 12f, 0xFF0086FD.toInt(), dark))
        assertEquals(2L, cache.rasterizationCount)
        assertNotSame(initial, cache.texture(Size(600f, 120f), 2f, 24f, fill, dark))
        assertEquals(3L, cache.rasterizationCount)
        assertNotSame("a capsule whose radius is clamped by height uses a tiny mask span", initial,
            cache.texture(Size(20f, 30f), 1f, 12f, fill, dark))
        assertEquals(4L, cache.rasterizationCount)
        assertNull(cache.texture(Size.Zero, 1f, 12f, fill, dark))
        assertNull(cache.texture(Size(Float.NaN, 30f), 1f, 12f, fill, dark))
        assertEquals(4L, cache.rasterizationCount)
    }

    @Test fun boundedCacheEvictionKeepsAlreadyPublishedDrawFramesAlive() {
        val cache = DownwardShadowTextureCache(maximumBytes = 64 * 1024, maximumEntries = 2)
        val first = requireNotNull(cache.texture(Size(600f, 120f), 1f, 12f, fill, dark))
        val retained = first.frame(Size(600f, 120f), if (dark) 0xA0000000.toInt() else 0x30000000)
        repeat(12) { index ->
            cache.texture(Size(600f, 120f), 1f, (4 + index).toFloat(), fill, dark)
        }
        assertTrue("cache ownership is bounded by bytes", cache.cachedBytes <= 64 * 1024)
        assertTrue("cache ownership is also bounded by entries", cache.cachedEntryCount <= 2)
        assertNotSame("an evicted geometry is generated afresh", first,
            cache.texture(Size(600f, 120f), 1f, 12f, fill, dark))
        val image = Bitmap.createBitmap(660, 180, Bitmap.Config.ARGB_8888)
        Canvas(image).apply {
            drawColor(background)
            translate(30f, 30f)
            retained.draw(this)
            drawRoundRect(0f, 0f, 600f, 120f, 12f, 12f, Paint(Paint.ANTI_ALIAS_FLAG).apply { color = fill })
        }
        assertEquals("an active frame survives eviction without a recycled bitmap", fill, image.getPixel(330, 90))
        image.recycle()
    }

    private fun colorDistance(first: Int, second: Int): Int = maxOf(
        abs(android.graphics.Color.red(first) - android.graphics.Color.red(second)),
        abs(android.graphics.Color.green(first) - android.graphics.Color.green(second)),
        abs(android.graphics.Color.blue(first) - android.graphics.Color.blue(second)),
        abs(android.graphics.Color.alpha(first) - android.graphics.Color.alpha(second)),
    )

    private fun brightness(pixel: Int): Int = android.graphics.Color.red(pixel) +
        android.graphics.Color.green(pixel) + android.graphics.Color.blue(pixel)

    @androidx.compose.runtime.Composable
    @Suppress("DEPRECATION")
    private fun makeFullscreen() {
        val view = LocalView.current
        SideEffect {
            val window = view.context.activity().window
            window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
            window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or
                View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or
                View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or View.SYSTEM_UI_FLAG_LAYOUT_STABLE or
                View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
        }
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture(): Bitmap {
        val node = compose.onNodeWithTag(rootTag).fetchSemanticsNode()
        val root = node.root as ViewRootForTest
        val bounds = node.boundsInRoot
        return compose.runOnIdle {
            Bitmap.createBitmap(bounds.width.toInt(), bounds.height.toInt(), Bitmap.Config.ARGB_8888).also {
                Canvas(it).apply { translate(-bounds.left, -bounds.top); root.view.draw(this) }
            }
        }
    }

    private fun save(image: Bitmap, label: String) {
        val directory = File("build/frames").apply { mkdirs() }
        File(directory, "${javaClass.simpleName}-$label.png").outputStream().use {
            assertTrue(image.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
    }

    private tailrec fun Context.activity(): Activity = when (this) {
        is Activity -> this
        is ContextWrapper -> baseContext.activity()
        else -> error("shadow preview must be hosted in an Activity")
    }
}

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class DownwardSoftShadowDarkTest : DownwardSoftShadowTest() {
    override val dark = true
}
