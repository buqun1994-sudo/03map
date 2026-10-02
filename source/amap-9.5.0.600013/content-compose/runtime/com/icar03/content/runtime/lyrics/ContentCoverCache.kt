package com.icar03.content.runtime.lyrics

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.util.AtomicFile
import java.io.File
import java.io.IOException
import java.security.MessageDigest

/** Only verified recording artwork is persisted; no platform credentials or untrusted filenames. */
internal class ContentCoverCache(context: Context) {
    private val directory = File(context.applicationContext.filesDir, "content-covers-v1")

    fun read(query: LyricsLookup): Bitmap? = runCatching {
        val file = entry(query)
        if (!file.isFile || file.length() !in 1L..MAX_FILE_BYTES) return null
        val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeFile(file.path, bounds)
        if (bounds.outWidth !in 1..512 || bounds.outHeight !in 1..512) return null
        BitmapFactory.decodeFile(file.path)?.also { file.setLastModified(System.currentTimeMillis()) }
    }.getOrNull()

    fun write(query: LyricsLookup, bitmap: Bitmap) {
        if (bitmap.isRecycled || bitmap.width > 512 || bitmap.height > 512) return
        runCatching {
            if (!directory.isDirectory && !directory.mkdirs()) return
            val atomic = AtomicFile(entry(query))
            val stream = atomic.startWrite()
            try {
                if (!bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream)) throw IOException("Cover encoding failed")
                atomic.finishWrite(stream)
            } catch (error: Exception) {
                atomic.failWrite(stream)
                throw error
            }
            trim()
        }
    }

    private fun entry(query: LyricsLookup): File {
        val identity = listOf(normalizeText(query.track), normalizeText(query.artist),
            normalizeText(query.album), query.durationMs.toString()).joinToString("\u001f")
        val digest = MessageDigest.getInstance("SHA-256").digest(identity.toByteArray(Charsets.UTF_8))
            .joinToString("") { "%02x".format(it.toInt() and 255) }
        return File(directory, "$digest.png")
    }

    private fun trim() {
        val root = directory.canonicalFile
        val files = directory.listFiles()?.filter {
            it.isFile && it.name.matches(Regex("[0-9a-f]{64}\\.png")) && it.canonicalFile.parentFile == root
        }?.sortedBy { it.lastModified() }.orEmpty()
        var bytes = files.sumOf(File::length)
        for (file in files) {
            if (bytes <= MAX_CACHE_BYTES && file.length() <= MAX_FILE_BYTES) continue
            val length = file.length()
            if (file.canonicalFile.parentFile == root && file.delete()) bytes -= length
        }
    }

    companion object {
        private const val MAX_FILE_BYTES = 2L * 1024 * 1024
        private const val MAX_CACHE_BYTES = 16L * 1024 * 1024
    }
}
