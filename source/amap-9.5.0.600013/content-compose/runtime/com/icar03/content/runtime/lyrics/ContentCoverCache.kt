package com.icar03.content.runtime.lyrics

import android.content.Context
import android.graphics.Bitmap
import java.io.Closeable
import java.security.MessageDigest

/** Verified recording artwork lives in the same SQLite quota/transaction as lyrics.
 * The old private PNG directory is migrated once, off-main by the engine, not a second LRU.
 */
internal class ContentCoverCache(context: Context, private val databaseName: String = ContentCacheBudget.DATABASE_NAME,
    private val maximumBytes: Long = ContentCacheBudget.MAX_BYTES) : Closeable {
    private val app = context.applicationContext
    private var cache: LyricsCache? = null

    @Synchronized
    fun read(query: LyricsLookup): Bitmap? {
        val owner = owner()
        return owner.readCover(query) ?: owner.readCover(query, legacyKey(query))
    }

    @Synchronized
    fun write(query: LyricsLookup, bitmap: Bitmap): Boolean = owner().writeCover(query, bitmap)

    private fun owner(): LyricsCache = cache ?: LyricsCache(app, databaseName, maximumBytes).also { cache = it }

    private fun legacyKey(query: LyricsLookup): String {
        val identity = listOf(normalizeText(query.track), normalizeText(query.artist),
            normalizeText(query.album), query.durationMs.toString()).joinToString("\u001f")
        return MessageDigest.getInstance("SHA-256").digest(identity.toByteArray(Charsets.UTF_8))
            .joinToString("") { "%02x".format(it.toInt() and 255) }
    }

    @Synchronized
    override fun close() { cache?.close(); cache = null }
}
