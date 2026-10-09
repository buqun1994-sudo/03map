package com.icar03.content.runtime

import android.graphics.Bitmap
import android.graphics.Color
import android.os.Build
import com.icar03.content.ui.AmbientArtwork
import com.icar03.content.ui.AmbientGlowPose
import java.util.Random
import kotlin.math.*

/**
 * Bake a small colour field and a feathered light texture off the main thread.
 * Visual model: Lyrimuse 1.9.0 (see the background research record). This independent
 * Android implementation uses bounded area sampling and a separable Gaussian;
 * its adaptive saturation approximates Core Image vibrance, not its exact pixels.
 */
internal fun createAmbientField(source: Bitmap): AmbientArtwork? = try {
    if (source.isRecycled || Thread.currentThread().isInterrupted) null else bakeAmbient(source)
} catch (_: RuntimeException) { null }

private fun bakeAmbient(source: Bitmap): AmbientArtwork? {
    // Remove lettering/faces while retaining spatial colour. Alpha padding is excluded.
    val resized = Bitmap.createScaledBitmap(source, SAMPLE_SIZE, SAMPLE_SIZE, true)
    val sample = if (Build.VERSION.SDK_INT >= 26 && resized.config == Bitmap.Config.HARDWARE) {
        val readable = resized.copy(Bitmap.Config.ARGB_8888, false)
        if (resized !== source) resized.recycle()
        readable ?: return null
    } else resized
    val pixels = IntArray(SAMPLE_SIZE * SAMPLE_SIZE)
    try { sample.getPixels(pixels, 0, SAMPLE_SIZE, 0, 0, SAMPLE_SIZE, SAMPLE_SIZE) }
    finally { if (sample !== source) sample.recycle() }
    val cells = Array(GRID * GRID) { FloatArray(3) }
    val weights = FloatArray(cells.size)
    for (y in 0 until SAMPLE_SIZE) for (x in 0 until SAMPLE_SIZE) {
        val i = (y * GRID / SAMPLE_SIZE) * GRID + x * GRID / SAMPLE_SIZE
        val pixel = pixels[y * SAMPLE_SIZE + x]
        val alpha = Color.alpha(pixel) / 255f
        weights[i] += alpha
        cells[i][0] += Color.red(pixel) / 255f * alpha
        cells[i][1] += Color.green(pixel) / 255f * alpha
        cells[i][2] += Color.blue(pixel) / 255f * alpha
    }
    if (weights.all { it == 0f }) return null
    val average = FloatArray(3) { ch -> cells.sumOf { it[ch].toDouble() }.toFloat() / weights.sum() }
    for (i in cells.indices) for (ch in 0..2) cells[i][ch] =
        if (weights[i] > 0f) cells[i][ch] / weights[i] else average[ch]
    val luma = FloatArray(cells.size) { luminance(cells[it]) }
    val meanLuma = luma.average().toFloat()
    for (i in cells.indices) {
        val gain = .45f + .55f * (meanLuma / max(.02f, luma[i])).coerceIn(.4f, 3.5f)
        for (ch in 0..2) cells[i][ch] = (cells[i][ch] * gain).coerceIn(0f, 1f)
    }

    val hsv = Array(cells.size) { i -> FloatArray(3).also { rgbToHsv(cells[i], it) } }
    val credible = cells.indices.filter { luma[it] > .08f && hsv[it][1] > .05f }
    val hueWeight = credible.sumOf { (hsv[it][1] * hsv[it][1]).toDouble() }
    val vectorX = credible.sumOf { cos(hsv[it][0] * PI / 180) * hsv[it][1].pow(2) }
    val vectorY = credible.sumOf { sin(hsv[it][0] * PI / 180) * hsv[it][1].pow(2) }
    val coherence = if (hueWeight > 0) min(1.0, hypot(vectorX, vectorY) / hueWeight / .4).pow(2).toFloat() else 1f
    val dominantHue = (atan2(vectorY, vectorX) * 180 / PI).toFloat()
    fun distance(hue: Float) = ((hue - dominantHue + 540f) % 360f) - 180f
    val strayWeight = credible.filter { abs(distance(hsv[it][0])) in 60f..120f }
        .sumOf { (hsv[it][1] * hsv[it][1]).toDouble() }
    if (hueWeight > 0 && strayWeight / hueWeight < .2) for (i in credible) {
        val delta = distance(hsv[i][0])
        // Preserve complementary colours; suppress only small nearby colour outliers.
        if (abs(delta) > 60 && abs(delta) <= 120) {
            hsv[i][0] = (dominantHue + (if (delta > 0) 60f else -60f) + 360f) % 360f
            hsvToRgb(hsv[i], cells[i])
        }
    }
    val bright = cells.indices.filter { luma[it] > .08f }
    val saturationSamples = (if (bright.size >= 9) bright else cells.indices.toList()).map { hsv[it][1] }.sorted()
    val saturation = saturationSamples[(saturationSamples.size * 26 / 36).coerceAtMost(saturationSamples.lastIndex)]
    val targetSaturation = min(.95f, 1.029f * saturation.pow(1.433f)) * coherence
    for (i in cells.indices) if (luma[i] > .08f && hsv[i][1] > .01f && hsv[i][1] < targetSaturation) {
        hsv[i][1] = targetSaturation
        hsvToRgb(hsv[i], cells[i])
    }

    val field = FloatArray(FIELD_SIZE * FIELD_SIZE * 3)
    for (y in 0 until FIELD_SIZE) for (x in 0 until FIELD_SIZE) {
        val gx = ((x + .5f) * GRID / FIELD_SIZE - .5f).coerceIn(0f, GRID - 1f)
        val gy = ((y + .5f) * GRID / FIELD_SIZE - .5f).coerceIn(0f, GRID - 1f)
        val x0 = gx.toInt(); val y0 = gy.toInt()
        val x1 = min(GRID - 1, x0 + 1); val y1 = min(GRID - 1, y0 + 1)
        for (ch in 0..2) field[(y * FIELD_SIZE + x) * 3 + ch] =
            mix(mix(cells[y0 * GRID + x0][ch], cells[y0 * GRID + x1][ch], gx - x0),
                mix(cells[y1 * GRID + x0][ch], cells[y1 * GRID + x1][ch], gx - x0), gy - y0)
    }
    val softened = gaussian(field) ?: return null
    val fieldMean = FloatArray(3) { ch -> (softened.indices step 3).sumOf { softened[it + ch].toDouble() }.toFloat() / (FIELD_SIZE * FIELD_SIZE) }
    val fieldHsv = FloatArray(3).also { rgbToHsv(fieldMean, it) }
    val saturationGain = if (fieldHsv[1] > .02f)
        (targetSaturation / fieldHsv[1]).coerceIn(.35f * coherence, 1.6f * max(.4f, coherence)) else .85f
    val basePixels = IntArray(FIELD_SIZE * FIELD_SIZE)
    val glowPixels = IntArray(basePixels.size)
    val brightest = luma.indices.maxBy { luma[it] }
    val anchorX = (brightest % GRID + .5f) / GRID
    val anchorY = (brightest / GRID + .5f) / GRID
    var minimum = 1f
    val brightestChannels = FloatArray(3)
    val rgb = FloatArray(3); val pixelHsv = FloatArray(3)
    val exposure = 2f.pow(-.15f)
    for (y in 0 until FIELD_SIZE) {
        if (Thread.currentThread().isInterrupted) return null
        for (x in 0 until FIELD_SIZE) {
            val i = y * FIELD_SIZE + x
            for (ch in 0..2) rgb[ch] = softened[i * 3 + ch]
            rgbToHsv(rgb, pixelHsv)
            // Adaptive colour-distance gain leaves grey covers neutral.
            val gain = saturationGain * (1f + .4f * coherence * (1f - pixelHsv[1])) * AMBIENT_CHROMA
            val grey = luminance(rgb)
            for (ch in 0..2) rgb[ch] = (grey + (rgb[ch] - grey) * gain).coerceIn(0f, 1f)
            minimum = min(minimum, luminance(rgb) * exposure)
            for (ch in 0..2) brightestChannels[ch] = max(brightestChannels[ch], rgb[ch])
            val radius = hypot((x + .5f) / FIELD_SIZE - anchorX, (y + .5f) / FIELD_SIZE - anchorY)
            val alpha = ((.7f - radius) / (.7f - .08f)).coerceIn(0f, 1f)
            basePixels[i] = pack(rgb, exposure, 1f)
            glowPixels[i] = pack(rgb, 1f, alpha)
        }
    }
    val random = Random(pixels.contentHashCode().toLong())
    val poses = List(3) { AmbientGlowPose(
        angle = random.nextFloat() * 30f - 15f,
        pivotX = .4f + random.nextFloat() * .2f, pivotY = .4f + random.nextFloat() * .2f,
        scale = 1f + random.nextFloat() * .25f,
    ) }
    return AmbientArtwork(
        Bitmap.createBitmap(basePixels, FIELD_SIZE, FIELD_SIZE, Bitmap.Config.ARGB_8888),
        Bitmap.createBitmap(glowPixels, FIELD_SIZE, FIELD_SIZE, Bitmap.Config.ARGB_8888), poses,
        // Preserve the single Amap theme/text owner; adapt only cover contrast.
        darkVeil = 1f - (1f - readableDarkVeil(brightestChannels)) * AMBIENT_DARK_GAIN,
        lightVeil = max(.42f, (.72f - minimum) / max(.01f, 1f - minimum)).coerceAtMost(.72f),
    )
}

/** LIGHTEN never exceeds the channel-wise maxima; solve a conservative white-text bound. */
private fun readableDarkVeil(brightest: FloatArray): Float {
    fun linear(value: Float): Float = if (value <= .04045f) value / 12.92f else ((value + .055f) / 1.055f).pow(2.4f)
    fun luminanceAt(veil: Float) = .2126f * linear(brightest[0] * (1f - veil)) +
        .7152f * linear(brightest[1] * (1f - veil)) + .0722f * linear(brightest[2] * (1f - veil))
    if (luminanceAt(.15f) <= .16f) return .15f
    var low = .15f; var high = .72f
    repeat(12) {
        val middle = (low + high) / 2f
        if (luminanceAt(middle) > .16f) low = middle else high = middle
    }
    return high
}

/** Edge-clamped Gaussian; sigma is 35/720 of the field width. */
private fun gaussian(input: FloatArray): FloatArray? {
    val sigma = 35f * FIELD_SIZE / 720f
    val radius = ceil(sigma * 3).toInt()
    val kernel = FloatArray(radius * 2 + 1) { exp(-((it - radius).toFloat().pow(2)) / (2 * sigma * sigma)) }
    val total = kernel.sum(); for (i in kernel.indices) kernel[i] /= total
    var src = input
    repeat(2) { pass ->
        val output = FloatArray(input.size)
        for (y in 0 until FIELD_SIZE) {
            if (Thread.currentThread().isInterrupted) return null
            for (x in 0 until FIELD_SIZE) for (k in -radius..radius) {
                val sx = if (pass == 0) (x + k).coerceIn(0, FIELD_SIZE - 1) else x
                val sy = if (pass == 1) (y + k).coerceIn(0, FIELD_SIZE - 1) else y
                for (ch in 0..2) output[(y * FIELD_SIZE + x) * 3 + ch] += src[(sy * FIELD_SIZE + sx) * 3 + ch] * kernel[k + radius]
            }
        }
        src = output
    }
    return src
}

private fun luminance(rgb: FloatArray) = .299f * rgb[0] + .587f * rgb[1] + .114f * rgb[2]
private fun mix(a: Float, b: Float, t: Float) = a + (b - a) * t
private fun rgbToHsv(rgb: FloatArray, output: FloatArray) = Color.RGBToHSV(
    (rgb[0] * 255).roundToInt(), (rgb[1] * 255).roundToInt(), (rgb[2] * 255).roundToInt(), output)
private fun hsvToRgb(hsv: FloatArray, output: FloatArray) {
    val color = Color.HSVToColor(hsv)
    output[0] = Color.red(color) / 255f; output[1] = Color.green(color) / 255f; output[2] = Color.blue(color) / 255f
}
private fun pack(rgb: FloatArray, gain: Float, alpha: Float) = Color.argb(
    (alpha * 255).roundToInt(), (rgb[0] * gain * 255).roundToInt().coerceIn(0, 255),
    (rgb[1] * gain * 255).roundToInt().coerceIn(0, 255), (rgb[2] * gain * 255).roundToInt().coerceIn(0, 255))
/** Small presentation calibration, not another theme or media state. Grey stays neutral. */
private const val AMBIENT_CHROMA = .90f
private const val AMBIENT_DARK_GAIN = .94f
private const val GRID = 6
private const val SAMPLE_SIZE = 96
private const val FIELD_SIZE = 128
