package com.icar03.content.runtime.media

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.os.CancellationSignal
import android.os.SystemClock
import java.io.ByteArrayOutputStream
import java.io.InputStream
import java.net.HttpURLConnection
import java.net.URL

/** Only adapter-owned URI artwork is decoded here; MediaSession bitmaps remain borrowed. */
object ContentMediaArtwork {
    const val MAX_RESPONSE_BYTES = 2 * 1024 * 1024
    const val MAX_EDGE = 512
    private const val DEADLINE_MS = 3_000L

    @JvmStatic
    fun decode(context: Context, uri: String, cancellation: CancellationSignal): Bitmap? {
        return try {
            cancellation.throwIfCanceled()
            val parsed = Uri.parse(uri)
            val deadline = SystemClock.elapsedRealtime() + DEADLINE_MS
            val readScheme = parsed.scheme?.lowercase()
            if (readScheme == "file") {
                val path = parsed.path ?: return null
                val file = java.io.File(path)
                if (!file.isFile || file.length() > MAX_RESPONSE_BYTES) return null
                val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
                BitmapFactory.decodeFile(path, bounds)
                if (bounds.outWidth <= 0 || bounds.outHeight <= 0 ||
                    bounds.outWidth.toLong() * bounds.outHeight > 100_000_000L) return null
                var sample = 1
                while ((maxOf(bounds.outWidth, bounds.outHeight) + sample - 1) / sample > MAX_EDGE) sample *= 2
                cancellation.throwIfCanceled()
                return BitmapFactory.decodeFile(path, BitmapFactory.Options().apply {
                    inSampleSize = sample
                    inPreferredConfig = Bitmap.Config.ARGB_8888
                })
            }
            val bytes = when (readScheme) {
                "content", "android.resource" ->
                    context.contentResolver.openInputStream(parsed)?.use { input ->
                        cancellation.setOnCancelListener { runCatching { input.close() } }
                        try { boundedRead(input, deadline, cancellation) }
                        finally { cancellation.setOnCancelListener(null) }
                    }
                "http", "https" -> download(uri, deadline, cancellation)
                else -> null
            } ?: return null
            cancellation.throwIfCanceled()
            val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
            BitmapFactory.decodeByteArray(bytes, 0, bytes.size, bounds)
            if (bounds.outWidth <= 0 || bounds.outHeight <= 0 ||
                bounds.outWidth.toLong() * bounds.outHeight > 100_000_000L) return null
            var sample = 1
            while ((maxOf(bounds.outWidth, bounds.outHeight) + sample - 1) / sample > MAX_EDGE) sample *= 2
            val options = BitmapFactory.Options().apply {
                inSampleSize = sample
                inPreferredConfig = Bitmap.Config.ARGB_8888
            }
            cancellation.throwIfCanceled()
            BitmapFactory.decodeByteArray(bytes, 0, bytes.size, options)
        } catch (_: Exception) { null }
    }

    private fun download(uri: String, deadline: Long, cancellation: CancellationSignal): ByteArray? {
        var target = URL(uri)
        repeat(4) { attempt ->
            cancellation.throwIfCanceled()
            if (target.protocol != "http" && target.protocol != "https") return null
            val remaining = (deadline - SystemClock.elapsedRealtime()).coerceAtMost(1_500L).toInt()
            if (remaining <= 0) return null
            val connection = target.openConnection() as HttpURLConnection
            cancellation.setOnCancelListener { connection.disconnect() }
            try {
                connection.instanceFollowRedirects = false
                connection.connectTimeout = remaining
                connection.readTimeout = remaining
                connection.useCaches = true
                connection.setRequestProperty("Accept", "image/*")
                val status = connection.responseCode
                if (status in 300..399) {
                    val location = connection.getHeaderField("Location") ?: return null
                    if (attempt == 3) return null
                    target = URL(target, location)
                } else {
                    if (status !in 200..299 || connection.contentLength > MAX_RESPONSE_BYTES) return null
                    return connection.inputStream.use { boundedRead(it, deadline, cancellation) }
                }
            } finally {
                cancellation.setOnCancelListener(null)
                connection.disconnect()
            }
        }
        return null
    }

    private fun boundedRead(input: InputStream, deadline: Long, cancellation: CancellationSignal): ByteArray? {
        val output = ByteArrayOutputStream()
        val buffer = ByteArray(8_192)
        while (true) {
            cancellation.throwIfCanceled()
            if (Thread.currentThread().isInterrupted || SystemClock.elapsedRealtime() >= deadline) return null
            val count = input.read(buffer)
            if (count < 0) break
            if (output.size() + count > MAX_RESPONSE_BYTES) return null
            output.write(buffer, 0, count)
        }
        return output.toByteArray()
    }
}
