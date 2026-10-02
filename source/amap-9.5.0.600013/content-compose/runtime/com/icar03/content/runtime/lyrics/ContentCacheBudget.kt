package com.icar03.content.runtime.lyrics

import android.database.sqlite.SQLiteDatabase
import android.content.ContentValues
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import java.io.ByteArrayOutputStream
import java.io.File
import java.nio.file.Files
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.locks.ReentrantLock

/** One quota and eviction order for automatic lyrics + artwork; manual selections are never victims.
 * Reservations, replacement and eviction belong to the caller's single SQLite transaction.
 * No independent counters/filesystem LRU may race this owner.
 */
internal object ContentCacheBudget {
    const val DATABASE_NAME = "content-lyrics-cache.db"
    // Different helper objects for one database still share one process-local IO critical section.
    // Reference counting removes dynamic test/database paths after their last owner closes.
    class Access internal constructor(val path: String) {
        val lock = ReentrantLock(true)
        internal var owners = 0
    }
    private val accesses = ConcurrentHashMap<String, Access>()
    fun acquire(path: String): Access = accesses.compute(path) { _, current ->
        (current ?: Access(path)).also { it.owners++ }
    }!!
    fun release(access: Access) {
        accesses.computeIfPresent(access.path) { _, current ->
            check(current === access && current.owners > 0)
            current.owners--
            current.takeIf { it.owners > 0 }
        }
    }
    internal fun activeAccesses(): Int = accesses.size

    const val MAX_BYTES = 1024L * 1024L * 1024L
    const val MAX_ENTRY_BYTES = 2L * 1024L * 1024L
    const val COVER_TABLE = "recording_covers"

    fun createCoverTable(db: SQLiteDatabase) {
        db.execSQL("CREATE TABLE IF NOT EXISTS $COVER_TABLE (cache_key TEXT PRIMARY KEY NOT NULL, " +
            "payload BLOB NOT NULL, byte_size INTEGER NOT NULL, last_used_at INTEGER NOT NULL, " +
            "use_count INTEGER NOT NULL, eviction_score INTEGER NOT NULL)")
        db.execSQL("CREATE INDEX IF NOT EXISTS index_recording_cover_eviction ON $COVER_TABLE " +
            "(eviction_score, last_used_at)")
    }

    /** One transaction implementation is used for native, network and legacy artwork. */
    fun writeArtwork(db: SQLiteDatabase, key: String, bitmap: Bitmap, maximum: Long): Boolean {
        if (!key.matches(Regex("[0-9a-f]{64}")) || bitmap.isRecycled ||
            bitmap.width !in 1..512 || bitmap.height !in 1..512) return false
        val output = ByteArrayOutputStream()
        if (!bitmap.compress(Bitmap.CompressFormat.PNG, 100, output)) return false
        val payload = output.toByteArray()
        if (payload.size.toLong() !in 1..MAX_ENTRY_BYTES) return false
        val size = payload.size.toLong() + key.toByteArray(Charsets.UTF_8).size + 256L
        if (size > maximum) return false
        db.beginTransaction()
        try {
            val previous = db.rawQuery("SELECT byte_size FROM $COVER_TABLE WHERE cache_key=?", arrayOf(key))
                .use { if (it.moveToFirst()) it.getLong(0) else 0L }
            val oldTotal = db.rawQuery("SELECT total_bytes FROM cache_meta WHERE meta_id=1", null)
                .use { it.moveToFirst(); it.getLong(0) }
            db.delete(COVER_TABLE, "cache_key=?", arrayOf(key))
            val total = reserve(db, oldTotal - previous + size, size, maximum, protectedCover = key)
            if (total > maximum) return false
            val now = System.currentTimeMillis()
            check(db.insertWithOnConflict(COVER_TABLE, null, ContentValues().apply {
                put("cache_key", key); put("payload", payload); put("byte_size", size)
                put("last_used_at", now); put("use_count", 1)
                put("eviction_score", LyricsCachePolicy.evictionScore(now, 1))
            }, SQLiteDatabase.CONFLICT_REPLACE) != -1L)
            // Match the lyrics ledger's insert/replace transaction boundary (and failure behavior).
            check(db.insertWithOnConflict("cache_meta", null, ContentValues().apply {
                put("meta_id", 1); put("total_bytes", total)
            }, SQLiteDatabase.CONFLICT_REPLACE) != -1L)
            db.setTransactionSuccessful()
            return true
        } finally { db.endTransaction() }
    }

    fun legacyBytes(directory: File): Long {
        if (!directory.isDirectory || Files.isSymbolicLink(directory.toPath())) return 0L
        val root = directory.canonicalFile
        return directory.listFiles().orEmpty().asSequence().filter {
            it.isFile && !Files.isSymbolicLink(it.toPath()) && it.canonicalFile.parentFile == root
        }.sumOf { it.length().coerceAtLeast(0L) }
    }

    /** Every cache opener handles old automatic files, even when the current song has no
     * usable artwork query. An empty directory is a constant-time no-op on foreground resume.
     */
    fun migrateLegacyCovers(db: SQLiteDatabase, directory: File, maximum: Long) {
        if (!directory.isDirectory || Files.isSymbolicLink(directory.toPath())) return
        val root = directory.canonicalFile
        for (file in directory.listFiles().orEmpty()) {
            if (file.canonicalFile.parentFile != root || Files.isSymbolicLink(file.toPath()) || !file.isFile) continue
            if (file.name.matches(Regex("[0-9a-f]{64}\\.png"))) {
                val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
                val bitmap = runCatching {
                    if (file.length() !in 1..MAX_ENTRY_BYTES) null else {
                        BitmapFactory.decodeFile(file.path, bounds)
                        if (bounds.outWidth !in 1..512 || bounds.outHeight !in 1..512) null
                        else BitmapFactory.decodeFile(file.path)
                    }
                }.getOrNull()
                if (bitmap != null) try {
                    // Only automatic artifacts are disposable if the protected quota is full.
                    runCatching { writeArtwork(db, file.name.removeSuffix(".png"), bitmap, maximum) }
                } finally { bitmap.recycle() }
            }
            // Includes malformed PNGs and abandoned AtomicFile .new/.bak artifacts.
            file.delete()
        }
    }

    /** Used only on migration/corruption, never as a foreground full-body scan. */
    fun actualBytes(db: SQLiteDatabase): Long = listOf("lyrics_cache", "lyrics_manual_override", COVER_TABLE).sumOf { table ->
        val payload = if (table == COVER_TABLE) "payload" else "payload_json"
        db.rawQuery("SELECT COALESCE(SUM(length(CAST($payload AS BLOB)) + " +
            "length(CAST(cache_key AS BLOB)) + 256),0) FROM $table", null)
            .use { it.moveToFirst(); it.getLong(0) }
    }

    /** Row byte counters are not a promise that SQLite indexes/pages are free. Reuse
     * freed pages before attempting an insert near the physical cap, in the same transaction.
     * A full database still fails atomically; manual content is never sacrificed.
     */
    fun reserve(db: SQLiteDatabase, bytes: Long, incomingBytes: Long, maximum: Long,
        protectedLyrics: String? = null, protectedCover: String? = null): Long {
        var remaining = bytes
        if (remaining > maximum) remaining = trim(db, remaining, maximum * 9L / 10L,
            protectedLyrics, protectedCover)
        if (maximum >= 1024L * 1024L) {
            fun pragma(name: String) = db.rawQuery("PRAGMA $name", null).use { it.moveToFirst(); it.getLong(0) }
            val pageSize = pragma("page_size")
            val physicalLimit = minOf(maximum, pragma("max_page_count") * pageSize)
            val used = (pragma("page_count") - pragma("freelist_count")) * pageSize
            val headroom = maxOf(incomingBytes * 2L, 64L * 1024L)
            if (used + headroom > physicalLimit) {
                remaining = trim(db, remaining,
                    minOf(remaining * 8L / 10L, (remaining - headroom).coerceAtLeast(0L)),
                    protectedLyrics, protectedCover)
            }
        }
        return remaining
    }

    fun trim(db: SQLiteDatabase, bytes: Long, target: Long,
        protectedLyrics: String? = null, protectedCover: String? = null): Long {
        var total = bytes
        while (total > target) {
            val victims = db.rawQuery(
                "SELECT owner, cache_key, byte_size FROM (" +
                    "SELECT 'lyrics_cache' owner, cache_key, byte_size, eviction_score, last_used_at " +
                    "FROM lyrics_cache WHERE cache_key != ? UNION ALL " +
                    "SELECT '$COVER_TABLE' owner, cache_key, byte_size, eviction_score, last_used_at " +
                    "FROM $COVER_TABLE WHERE cache_key != ?) " +
                    "ORDER BY eviction_score, last_used_at, owner, cache_key LIMIT 256",
                arrayOf(protectedLyrics.orEmpty(), protectedCover.orEmpty())
            ).use { cursor -> buildList {
                var planned = total
                while (cursor.moveToNext() && planned > target) {
                    val victim = Triple(cursor.getString(0), cursor.getString(1), cursor.getLong(2))
                    add(victim); planned -= victim.third
                }
            } }
            if (victims.isEmpty()) break
            for ((table, key, size) in victims) {
                check(table == "lyrics_cache" || table == COVER_TABLE)
                if (db.delete(table, "cache_key = ?", arrayOf(key)) > 0) total -= size
            }
        }
        return total.coerceAtLeast(0L)
    }
}
