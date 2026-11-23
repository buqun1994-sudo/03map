package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color as AndroidColor
import android.graphics.Path
import android.graphics.Rect
import android.graphics.drawable.Drawable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.toArgb
import com.airbnb.lottie.LottieCompositionFactory
import com.airbnb.lottie.LottieDrawable
import com.airbnb.lottie.LottieProperty
import com.airbnb.lottie.SimpleColorFilter
import com.airbnb.lottie.model.KeyPath
import com.airbnb.lottie.value.LottieValueCallback
import java.io.File
import java.security.MessageDigest
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.roundToInt
import org.json.JSONArray
import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Offline-only calibration: the shipped assets remain untouched; runtime never scans bitmaps. */
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "mdpi")
class OemGlyphCalibrationNativeTest {
    private val context get() = RuntimeEnvironment.getApplication()

    private data class Spec(
        val label: String,
        val resource: Int,
        val asset: String? = null,
        val frames: IntRange? = null,
        val tint: Color = Color.White,
        val colors: Map<List<String>, Color> = emptyMap(),
        val strokes: Map<List<String>, Color> = emptyMap(),
        val opacities: Map<List<String>, Int> = emptyMap(),
    ) {
        val mediaGlyph: Boolean get() = resource == R.drawable.content_oem_ico_media_play_f ||
            resource == R.drawable.content_oem_ico_media_pause_f
    }

    @Test
    fun shippedVectorAndLottieRecipesProduceTraceableVisibleGlyphViewports() {
        val records = JSONArray()
        val specifications = specifications()
        assertEquals("static registry keys must not silently overwrite a second recipe",
            specifications.size, specifications.map { it.resource }.distinct().size)
        val animations = specifications.filter { it.asset != null }
        assertEquals("a second asset/segment for the same resource requires an expanded registry key",
            animations.size, animations.map { it.resource }.distinct().size)
        for (spec in specifications) {
            val vector = calibrateVector(spec)
            assertRegistryBounds(spec, vector, false)
            records.put(vector)
            if (spec.asset != null) {
                val lottie = calibrateLottie(spec)
                assertRegistryBounds(spec, lottie, true)
                records.put(lottie)
            }
        }
        assertNull(oemGlyphViewport(R.drawable.content_oem_ico_lock_close, "unregistered.json", null))
        assertNull(oemGlyphViewport(R.drawable.content_oem_ico_lock_close, "ico_lock_close_f.json", 0..59))
        assertNull(oemGlyphViewport(R.drawable.content_oem_ico_brightness_lo, null, null))
        assertTrue("both lock states are calibrated", specifications.count { it.label.startsWith("lock/") } == 2)
        assertTrue("all six wiper readbacks in both themes are calibrated", specifications.count { it.label.startsWith("Wiper/") } == 12)
        assertTrue("five media sources are calibrated", specifications.count { it.label.startsWith("source/") } == 5)
        val report = JSONObject()
            .put("schemaVersion", 1)
            .put("description", "Native alpha bounds from canonical OEM resources; no synthetic press or 1.6 media scale")
            .put("tailLongestSidePx", TAIL_SIZE)
            .put("envelopeLongestSidePx", ENVELOPE_SIZE)
            .put("alphaThreshold", ALPHA_THRESHOLD)
            .put("records", records)
        val output = File("build/reports/glyph-calibration.json")
        val directory = requireNotNull(output.parentFile)
        assertTrue(directory.isDirectory || directory.mkdirs())
        output.writeText(report.toString(2) + "\n")
    }

    private fun assertRegistryBounds(spec: Spec, record: JSONObject, animated: Boolean) {
        val viewport = requireNotNull(oemGlyphViewport(spec.resource, if (animated) spec.asset else null,
            if (animated) spec.frames else null)) { "${spec.label}: measured recipe must be registered" }
        val expected = record.getJSONArray("normalizedRect")
        val actual = viewport.normalizedRect
        val values = listOf(actual.left, actual.top, actual.right, actual.bottom)
        values.forEachIndexed { index, value ->
            assertEquals("${spec.label}/animated=$animated normalized edge $index",
                expected.getDouble(index), value.toDouble(), 1.0 / TAIL_SIZE)
        }
        assertEquals("${spec.label}: source and glyph aspect ratio remain distinct",
            record.getDouble("aspectRatio"), viewport.aspectRatio.toDouble(), .00001)
    }

    private fun specifications(): List<Spec> = buildList {
        add(Spec("lock/closed", R.drawable.content_oem_ico_lock_close, "ico_lock_close_f.json"))
        add(Spec("lock/open", R.drawable.content_oem_ico_lock_open, "ico_lock_open_f.json"))
        for (dark in listOf(false, true)) {
            for (control in listOf(ControlId.Wiper, ControlId.Ventilation, ControlId.Heating, ControlId.Massage)) {
                for (level in 0..control.maxLevel) {
                    val recipe = vehicleControlIconRecipe(control, level, dark)
                    add(Spec("${control.name}/${if (dark) "dark" else "light"}/$level",
                        recipe.resource, recipe.asset.takeIf { it.isNotEmpty() }, recipe.frames,
                        recipe.tint, recipe.animationColors, recipe.animationStrokePathColors,
                        recipe.animationPathOpacities))
                }
            }
        }
        add(Spec("settings", R.drawable.content_oem_ic_settings))
        add(Spec("dock/system-control-center", R.drawable.content_oem_ico_home_applist, "ico_home_applist.json"))
        add(Spec("dock/glove-box", R.drawable.content_oem_ico_glove_box, "ico_glove_box.json", 0..29))
        add(Spec("dock/window-close", R.drawable.content_oem_ico_window_close, "ico_window_close.json", 0..29))
        add(Spec("dock/window-half", R.drawable.content_oem_ico_window_half, "ico_window_half.json", 0..29))
        add(Spec("page/fullscreen", R.drawable.content_ic_fullscreen))
        add(Spec("page/fullscreen-exit", R.drawable.content_ic_fullscreen_exit))
        // OEM command names are reversed at their tail: pause_02 ends as the play glyph.
        add(Spec("media/play", R.drawable.content_oem_ico_media_play_f, "ico_media_pause_02_f.json"))
        add(Spec("media/pause", R.drawable.content_oem_ico_media_pause_f, "ico_media_play_02_f.json"))
        add(Spec("media/next", R.drawable.content_oem_ico_media_next_f, "ico_media_next_f.json"))
        add(Spec("source/bluetooth", R.drawable.content_oem_ico_bluetooth, "ico_bluetooth_1.json"))
        add(Spec("source/aiquting", R.drawable.content_oem_ico_media_aiquting, "ico_media_aiquting.json"))
        add(Spec("source/neteasy", R.drawable.content_oem_ico_media_neteasy, "ico_media_neteasy.json"))
        add(Spec("source/usb", R.drawable.content_oem_ico_devices_usb, "ico_devices_usb.json"))
        add(Spec("source/local", R.drawable.content_oem_ico_media_local, "ico_media_local.json"))

    }

    private fun calibrateVector(spec: Spec): JSONObject {
        @Suppress("DEPRECATION")
        val drawable = context.resources.getDrawable(spec.resource, null).mutate()
        // Palette replacement never changes OEM path geometry/alpha. White gives a stable alpha ROI.
        drawable.setTint(AndroidColor.WHITE)
        val nativeWidth = drawable.intrinsicWidth.coerceAtLeast(1)
        val nativeHeight = drawable.intrinsicHeight.coerceAtLeast(1)
        val (width, height) = scaledSize(nativeWidth, nativeHeight, TAIL_SIZE)
        drawable.setBounds(0, 0, width, height)
        val bounds = alphaBounds(drawable, width, height)
        val name = requireNotNull(context.resources.getResourceEntryName(spec.resource))
        val source = File(canonicalRoot(), "source/amap-9.5.0.600013/res/drawable/$name.xml")
        assertTrue("canonical Vector must be registered, not an unrelated fallback: $name", source.isFile)
        return record(spec, "vector", width, height, bounds)
            .put("sourceSha256", sha256(source.readBytes()))
    }

    private fun calibrateLottie(spec: Spec): JSONObject {
        val asset = requireNotNull(spec.asset)
        val parsed = LottieCompositionFactory.fromAssetSync(context, "content-oem/$asset")
        val composition = requireNotNull(parsed.value) { "$asset: ${parsed.exception}" }
        val drawable = LottieDrawable().apply {
            setComposition(composition)
            @Suppress("DEPRECATION")
            enableMergePathsForKitKatAndAbove(!spec.mediaGlyph)
            if (spec.tint != Color.Unspecified) {
                addValueCallback(KeyPath("**"), LottieProperty.COLOR_FILTER,
                    LottieValueCallback<android.graphics.ColorFilter>(SimpleColorFilter(spec.tint.toArgb())))
            }
            if (spec.mediaGlyph) {
                // Remove only the baked button disc exactly as production does; do not enlarge its remaining paths.
                addValueCallback(KeyPath("**", "路径 1"), LottieProperty.PATH, LottieValueCallback(Path()))
            }
            spec.colors.forEach { (path, color) ->
                val key = KeyPath(*path.toTypedArray())
                addValueCallback(key, LottieProperty.COLOR, LottieValueCallback(color.toArgb()))
                addValueCallback(key, LottieProperty.STROKE_COLOR, LottieValueCallback(color.toArgb()))
            }
            spec.strokes.forEach { (path, color) ->
                addValueCallback(KeyPath(*path.toTypedArray()), LottieProperty.STROKE_COLOR,
                    LottieValueCallback(color.toArgb()))
            }
            spec.opacities.forEach { (path, opacity) ->
                val key = KeyPath(*path.toTypedArray())
                assertTrue("actual OFF opacity path must resolve: $path", resolveKeyPath(key).isNotEmpty())
                addValueCallback(key, LottieProperty.OPACITY, LottieValueCallback(opacity))
            }
        }
        val sourceBounds = composition.bounds
        val (width, height) = scaledSize(sourceBounds.width(), sourceBounds.height(), TAIL_SIZE)
        drawable.setBounds(0, 0, width, height)
        if (spec.frames == null) drawable.progress = 1f else drawable.frame = spec.frames.last
        val tail = alphaBounds(drawable, width, height)
        val timeline = spec.frames ?: ceil(composition.startFrame).toInt()..floor(composition.endFrame).toInt()
        assertTrue("registered frame segment remains inside OEM timeline: ${spec.label}",
            timeline.first >= composition.startFrame && timeline.last <= composition.endFrame)
        val (envelopeWidth, envelopeHeight) = scaledSize(sourceBounds.width(), sourceBounds.height(), ENVELOPE_SIZE)
        drawable.setBounds(0, 0, envelopeWidth, envelopeHeight)
        val envelope = animationEnvelope(drawable, envelopeWidth, envelopeHeight, timeline)
        val bytes = context.assets.open("content-oem/$asset").use { it.readBytes() }
        drawable.cancelAnimation()
        return record(spec, "lottie", width, height, tail)
            .put("sourceSha256", sha256(bytes))
            .put("compositionSize", JSONArray(listOf(sourceBounds.width(), sourceBounds.height())))
            .put("tailFrame", if (spec.frames == null) composition.endFrame else spec.frames.last)
            .put("animationEnvelope", normalized(envelope, envelopeWidth, envelopeHeight))
            .put("sampledFrames", JSONArray(listOf(timeline.first, timeline.last)))
            .put("removedMediaDisc", spec.mediaGlyph)
    }

    private fun record(spec: Spec, kind: String, width: Int, height: Int, bounds: Rect): JSONObject = JSONObject()
        .put("label", spec.label)
        .put("resource", requireNotNull(context.resources.getResourceEntryName(spec.resource)))
        .put("asset", if (kind == "lottie") spec.asset else JSONObject.NULL)
        .put("frames", if (kind == "lottie" && spec.frames != null)
            JSONArray(listOf(spec.frames.first, spec.frames.last)) else JSONObject.NULL)
        .put("kind", kind)
        .put("bitmapSize", JSONArray(listOf(width, height)))
        .put("alphaBounds", JSONArray(listOf(bounds.left, bounds.top, bounds.right, bounds.bottom)))
        .put("normalizedRect", normalized(bounds, width, height))
        .put("aspectRatio", bounds.width().toDouble() / bounds.height())
        .put("opacityOverrides", JSONArray(spec.opacities.map { (path, opacity) ->
            JSONObject().put("path", JSONArray(path)).put("opacity", opacity)
        }))

    private fun animationEnvelope(drawable: LottieDrawable, width: Int, height: Int, frames: IntRange): Rect {
        val image = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(image)
        val pixels = IntArray(width * height)
        var envelope: Rect? = null
        try {
            for (frame in frames) {
                image.eraseColor(AndroidColor.TRANSPARENT)
                drawable.frame = frame
                drawable.draw(canvas)
                image.getPixels(pixels, 0, width, 0, 0, width, height)
                val ink = scanBounds(pixels, width, height) ?: continue
                if (envelope == null) envelope = Rect(ink) else envelope.union(ink)
            }
        } finally {
            image.recycle()
        }
        return requireNotNull(envelope) { "OEM segment contains no glyph ink: $frames" }
    }

    private fun alphaBounds(drawable: Drawable, width: Int, height: Int): Rect {
        val image = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        try {
            drawable.draw(Canvas(image))
            val pixels = IntArray(width * height)
            image.getPixels(pixels, 0, width, 0, 0, width, height)
            return requireNotNull(scanBounds(pixels, width, height)) { "OEM tail is unexpectedly transparent" }
        } finally {
            image.recycle()
        }
    }

    private fun scanBounds(pixels: IntArray, width: Int, height: Int): Rect? {
        var left = width; var top = height; var right = -1; var bottom = -1
        for (y in 0 until height) for (x in 0 until width) {
            if ((pixels[y * width + x] ushr 24) >= ALPHA_THRESHOLD) {
                if (x < left) left = x
                if (y < top) top = y
                if (x > right) right = x
                if (y > bottom) bottom = y
            }
        }
        return if (right < left) null else Rect(left, top, right + 1, bottom + 1)
    }

    private fun normalized(rect: Rect, width: Int, height: Int) = JSONArray(listOf(
        rect.left.toDouble() / width, rect.top.toDouble() / height,
        rect.right.toDouble() / width, rect.bottom.toDouble() / height,
    ))

    private fun scaledSize(width: Int, height: Int, longest: Int): Pair<Int, Int> {
        val scale = longest.toFloat() / maxOf(width, height)
        return (width * scale).roundToInt().coerceAtLeast(1) to (height * scale).roundToInt().coerceAtLeast(1)
    }

    private fun canonicalRoot(): File = generateSequence(File(requireNotNull(System.getProperty("user.dir"))).absoluteFile) { it.parentFile }
        .first { File(it, "source/amap-9.5.0.600013/assets/content-oem").isDirectory }

    private fun sha256(bytes: ByteArray): String = MessageDigest.getInstance("SHA-256")
        .digest(bytes).joinToString("") { "%02x".format(it.toInt() and 0xff) }

    private companion object {
        const val TAIL_SIZE = 960
        const val ENVELOPE_SIZE = 192
        const val ALPHA_THRESHOLD = 8
    }
}
