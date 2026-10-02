package com.icar03.content.runtime.lyrics

// Migrated from 03lyrics; original source SHA-256: dace9b1f3289e062139e0a8ed8e4eeb7f7636db82ec53ab1fd81ef00e4691224.
// Upstream provenance and scoped adaptations: PROVENANCE.json.

import android.content.ContentValues
import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import java.io.File
import kotlin.concurrent.withLock
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteOpenHelper
import android.util.Log
import org.json.JSONObject
import java.io.Closeable
import java.nio.charset.StandardCharsets
import java.security.MessageDigest
import java.text.Normalizer
import java.util.Locale
import kotlin.math.abs
import kotlin.math.min

internal class LyricsCache(
    context: Context,
    databaseName: String = ContentCacheBudget.DATABASE_NAME,
    private val maximumBytes: Long = ContentCacheBudget.MAX_BYTES
) : LyricsPlaybackCache, Closeable {
    data class Entry(
        val result: LyricsResult,
        val proof: LyricsSelectionProof?,
        val updatedAtMs: Long,
        val selection: LyricsCacheSelection = LyricsCacheSelection.AUTOMATIC,
        val translationResolved: Boolean = true,
        val qualityVersion: Int = LyricsCachePolicy.QUALITY_VERSION,
        val refreshAttempts: Int = 0,
        val lastRefreshAtMs: Long = updatedAtMs
    ) {
        val resolved: ResolvedLyrics? get() = proof?.let { ResolvedLyrics(result, it) }

        fun needsRefresh(nowMs: Long): Boolean =
            selection == LyricsCacheSelection.AUTOMATIC &&
                (qualityVersion != LyricsCachePolicy.QUALITY_VERSION ||
                    (refreshAttempts < LyricsCachePolicy.MAX_REFRESH_ATTEMPTS &&
                        nowMs >= lastRefreshAtMs &&
                        nowMs - lastRefreshAtMs >= LyricsCachePolicy.REFRESH_AFTER_MS))
    }

    private val access = ContentCacheBudget.acquire(context.getDatabasePath(databaseName).canonicalPath)
    private val helper = CacheDatabase(context.applicationContext, databaseName, maximumBytes)
    private val trimTargetBytes = maximumBytes * 9L / 10L
    @Volatile private var closed = false

    override fun read(identity: LyricsPlaybackIdentity, recordUse: Boolean): Entry? = get(
        identity.track, identity.artist, identity.album, identity.durationMs, recordUse
    )

    override fun writeAutomatic(identity: LyricsPlaybackIdentity, resolved: ResolvedLyrics): Boolean = put(
        identity.track, identity.artist, identity.album, identity.durationMs, resolved
    )

    override fun writeManual(identity: LyricsPlaybackIdentity, result: LyricsResult): Boolean =
        putManual(identity, result)

    @Synchronized
    fun get(
        track: String,
        artist: String,
        album: String,
        playbackDurationMs: Long,
        recordUse: Boolean,
        nowMs: Long = System.currentTimeMillis()
    ): Entry? {
        return access.lock.withLock {
            if (closed || !LyricsCandidateSelector.hasKnownDuration(playbackDurationMs)) return@withLock null
            runCatching {
                val database = helper.writableDatabase
                database.beginTransaction()
                try {
                    val query = LyricsLookup(track, artist, album, playbackDurationMs)
                    val manual = findManualEntries(database, query).minWithOrNull(
                        compareBy<ManualCachedEntry> { abs(playbackDurationMs - it.identity.durationMs) }
                            .thenByDescending { it.entry.updatedAtMs }
                    )
                    val cached = if (manual == null) findAutomaticEntries(database, query).minWithOrNull(
                        compareBy<CachedEntry> { abs(playbackDurationMs - it.entry.result.durationMs) }
                            .thenByDescending { it.entry.updatedAtMs }
                    ) else null
                    if (recordUse && cached != null) {
                        val count = LyricsCachePolicy.nextUseCount(cached.useCount)
                        database.update(TABLE_CACHE, ContentValues().apply {
                            put(COLUMN_LAST_USED_AT, nowMs); put(COLUMN_USE_COUNT, count)
                            put(COLUMN_EVICTION_SCORE, LyricsCachePolicy.evictionScore(nowMs, count))
                        }, "$COLUMN_KEY = ?", arrayOf(cached.cacheKey))
                    }
                    database.setTransactionSuccessful()
                    manual?.entry ?: cached?.entry
                } finally { database.endTransaction() }
            }.onFailure { error ->
                Log.w(LOG_TAG, "Unable to read native lyrics cache", error)
            }.getOrNull()
        }
    }

    @Synchronized
    fun put(
        track: String,
        artist: String,
        album: String,
        playbackDurationMs: Long,
        resolved: ResolvedLyrics,
        updatedAtMs: Long = System.currentTimeMillis()
    ): Boolean {
        return access.lock.withLock {
            val result = resolved.result
            val query = LyricsLookup(track, artist, album, playbackDurationMs)
            val selection = LyricsCandidateSelection(result, resolved.proof)
            if (closed || result.contentKind() == LyricsKind.NONE ||
                !LyricsCandidateSelector.hasMatchingDuration(playbackDurationMs, result.durationMs) ||
                !LyricsCandidateSelector.isProofValid(query, result, resolved.proof)
            ) return@withLock false
            runCatching {
                if (LyricsContentRanker.rank(query, listOf(selection)).isEmpty()) return@runCatching false
                val cacheKey = key(track, artist, album, result.durationMs)
                val database = helper.writableDatabase
                database.beginTransaction()
                try {
                    if (findManualEntries(database, query).isNotEmpty()) return@runCatching false
                    val previous = findAutomaticEntries(database, query)
                    if (previous.any { !isStrictUpgrade(query, it.entry, selection) }) return@runCatching false
                    val nowMs = System.currentTimeMillis()
                    val savedAtMs = updatedAtMs.coerceIn(0L, nowMs)
                    val currentBudgets = previous.map(CachedEntry::entry)
                        .filter { it.qualityVersion == LyricsCachePolicy.QUALITY_VERSION }
                    val payload = encodeResolved(
                        resolved, query,
                        refreshAttempts = currentBudgets.maxOfOrNull(Entry::refreshAttempts) ?: 0,
                        lastRefreshAtMs = currentBudgets.maxOfOrNull(Entry::lastRefreshAtMs) ?: savedAtMs
                    )
                    val byteSize = cacheEntrySize(cacheKey, payload)
                    if (byteSize > minOf(maximumBytes, ContentCacheBudget.MAX_ENTRY_BYTES)) return@runCatching false
                    val existing = existingMetadata(database, cacheKey)
                        ?: previous.firstOrNull()?.let { existingMetadata(database, it.cacheKey) }
                    val useCount = existing?.useCount ?: 1
                    val lastUsedAtMs = existing?.lastUsedAtMs ?: nowMs
                    val evictionScore = existing?.evictionScore
                        ?: LyricsCachePolicy.evictionScore(lastUsedAtMs, useCount)
                    val removedBytes = deleteKeys(database, TABLE_CACHE, previous.map(CachedEntry::cacheKey)) +
                        deleteReplacedRows(database, TABLE_CACHE, cacheKey)
                    var totalBytes = totalBytes(database) - removedBytes + byteSize
                    totalBytes = ContentCacheBudget.reserve(database, totalBytes, byteSize, maximumBytes, protectedLyrics = cacheKey)
                    if (totalBytes > maximumBytes) return@runCatching false
                    val inserted = database.insertWithOnConflict(
                        TABLE_CACHE,
                        null,
                        ContentValues().apply {
                            put(COLUMN_KEY, cacheKey)
                            put(COLUMN_RECORDING_KEY, cacheKey)
                            put(COLUMN_PAYLOAD, payload)
                            put(COLUMN_BYTE_SIZE, byteSize)
                            put(COLUMN_UPDATED_AT, savedAtMs)
                            put(COLUMN_LAST_USED_AT, lastUsedAtMs)
                            put(COLUMN_USE_COUNT, useCount)
                            put(COLUMN_EVICTION_SCORE, evictionScore)
                        },
                        SQLiteDatabase.CONFLICT_REPLACE
                    )
                    check(inserted != -1L) { "Automatic lyrics insert failed" }
                    writeTotalBytes(database, totalBytes)
                    database.setTransactionSuccessful()
                } finally {
                    database.endTransaction()
                }
                true
            }.onFailure { error ->
                Log.w(LOG_TAG, "Unable to write native lyrics cache", error)
            }.getOrDefault(false)
        }
    }

    @Synchronized
    override fun recordRefresh(identity: LyricsPlaybackIdentity, nowMs: Long): Boolean {
        return access.lock.withLock {
            if (closed || !identity.isUsable) return@withLock false
            runCatching {
                val database = helper.writableDatabase
                database.beginTransaction()
                try {
                    val query = identity.lookup()
                    if (findManualEntries(database, query).isNotEmpty()) return@runCatching false
                    val cached = findAutomaticEntries(database, query).minWithOrNull(
                        compareBy<CachedEntry> { abs(identity.durationMs - it.entry.result.durationMs) }
                            .thenByDescending { it.entry.updatedAtMs }
                    ) ?: return@runCatching false
                    val previous = cached.entry
                    val attempts = if (previous.qualityVersion == LyricsCachePolicy.QUALITY_VERSION) {
                        previous.refreshAttempts
                    } else 0
                    if (attempts >= LyricsCachePolicy.MAX_REFRESH_ATTEMPTS) return@runCatching false
                    // The caller records only a valid Found; put may already have upgraded its body.
                    val payload = JSONObject(cached.payload)
                        .put("qualityVersion", LyricsCachePolicy.QUALITY_VERSION)
                        .put("refreshAttempts", attempts + 1)
                        .put("lastRefreshAtMs", maxOf(previous.lastRefreshAtMs, nowMs.coerceAtLeast(0L)))
                        .toString()
                    val byteSize = cacheEntrySize(cached.cacheKey, payload)
                    var totalBytes = totalBytes(database) - cached.byteSize + byteSize
                    if (totalBytes > maximumBytes) {
                        totalBytes = trimToTarget(database, totalBytes, protectedAutomaticKey = cached.cacheKey)
                    }
                    if (totalBytes > maximumBytes) return@runCatching false
                    val changed = database.update(
                        TABLE_CACHE,
                        ContentValues().apply {
                            put(COLUMN_PAYLOAD, payload)
                            put(COLUMN_BYTE_SIZE, byteSize)
                        },
                        "$COLUMN_KEY = ?",
                        arrayOf(cached.cacheKey)
                    )
                    check(changed == 1) { "Lyrics refresh metadata update failed" }
                    writeTotalBytes(database, totalBytes)
                    database.setTransactionSuccessful()
                } finally {
                    database.endTransaction()
                }
                true
            }.onFailure { error ->
                Log.w(LOG_TAG, "Unable to record lyrics cache refresh", error)
            }.getOrDefault(false)
        }
    }

    private fun isStrictUpgrade(
        query: LyricsLookup,
        previous: Entry,
        selection: LyricsCandidateSelection
    ): Boolean {
        val resolved = previous.resolved ?: return false
        if (!LyricsCandidateSelector.hasMatchingDuration(resolved.result.durationMs, selection.candidate.durationMs)) {
            return false
        }
        val baseline = LyricsCandidateSelection(resolved.result, resolved.proof)
        return LyricsContentRanker.isMaterialUpgrade(query, baseline, selection)
    }

    @Synchronized
    fun putManual(
        identity: LyricsPlaybackIdentity,
        result: LyricsResult,
        updatedAtMs: Long = System.currentTimeMillis()
    ): Boolean {
        return access.lock.withLock {
            if (closed || !identity.isUsable ||
                result.contentKind() == LyricsKind.NONE
            ) {
                return false
            }
            runCatching {
                val cacheKey = key(identity.track, identity.artist, identity.album, identity.durationMs)
                val payload = result.toJson()
                    .put("playbackIdentity", identity.toJson())
                    .toString()
                val byteSize = cacheEntrySize(cacheKey, payload)
                if (byteSize > minOf(trimTargetBytes, ContentCacheBudget.MAX_ENTRY_BYTES)) return@runCatching false

                val database = helper.writableDatabase
                database.beginTransaction()
                try {
                    val previousBytes = deleteReplacedRows(database, TABLE_MANUAL, cacheKey)
                    val nowMs = System.currentTimeMillis()
                    var totalBytes = totalBytes(database) - previousBytes + byteSize
                    totalBytes = ContentCacheBudget.reserve(database, totalBytes, byteSize, maximumBytes)
                    if (totalBytes > maximumBytes) return@runCatching false
                    val inserted = database.insertWithOnConflict(
                        TABLE_MANUAL,
                        null,
                        ContentValues().apply {
                            put(COLUMN_KEY, cacheKey)
                            put(COLUMN_RECORDING_KEY, cacheKey)
                            put(COLUMN_PAYLOAD, payload)
                            put(COLUMN_BYTE_SIZE, byteSize)
                            put(COLUMN_UPDATED_AT, updatedAtMs.coerceIn(0L, nowMs))
                        },
                        SQLiteDatabase.CONFLICT_REPLACE
                    )
                    check(inserted != -1L) { "Manual lyrics insert failed" }
                    if (tableCount(database, TABLE_MANUAL) > MANUAL_ENTRY_LIMIT) return@runCatching false
                    writeTotalBytes(database, totalBytes)
                    database.setTransactionSuccessful()
                } finally {
                    database.endTransaction()
                }
                true
            }.onFailure { error ->
                Log.w(LOG_TAG, "Unable to write manual lyrics override", error)
            }.getOrDefault(false)
        }
    }

    @Synchronized
    override fun clearManual(identity: LyricsPlaybackIdentity): Boolean {
        return access.lock.withLock {
            if (closed || !identity.isUsable) return@withLock false
            runCatching {
                val database = helper.writableDatabase
                database.beginTransaction()
                try {
                    val removedBytes = deleteKeys(
                        database,
                        TABLE_MANUAL,
                        findManualEntries(database, identity.lookup()).map { it.cacheKey }
                    )
                    if (removedBytes > 0L) {
                        writeTotalBytes(database, totalBytes(database) - removedBytes)
                    }
                    database.setTransactionSuccessful()
                    removedBytes > 0L
                } finally {
                    database.endTransaction()
                }
            }.onFailure { error ->
                Log.w(LOG_TAG, "Unable to clear manual lyrics override", error)
            }.getOrDefault(false)
        }
    }

    @Synchronized
    override fun clearCurrent(identity: LyricsPlaybackIdentity): Boolean {
        return access.lock.withLock {
            if (closed || !identity.isUsable) return@withLock false
            runCatching {
                val database = helper.writableDatabase
                database.beginTransaction()
                try {
                    val query = identity.lookup()
                    val removedBytes = deleteKeys(
                        database, TABLE_MANUAL, findManualEntries(database, query).map { it.cacheKey }
                    ) + deleteKeys(
                        database, TABLE_CACHE, findAutomaticEntries(database, query).map { it.cacheKey }
                    )
                    if (removedBytes > 0L) {
                        writeTotalBytes(database, totalBytes(database) - removedBytes)
                    }
                    database.setTransactionSuccessful()
                    removedBytes > 0L
                } finally {
                    database.endTransaction()
                }
            }.onFailure { error ->
                Log.w(LOG_TAG, "Unable to clear current lyrics cache", error)
            }.getOrDefault(false)
        }
    }

    @Synchronized
    fun snapshot(identity: LyricsPlaybackIdentity?): LyricsCacheSnapshot =
        access.lock.withLock { snapshotInternal(identity, null, useLookup = true) }

    @Synchronized
    override fun snapshot(
        identity: LyricsPlaybackIdentity?,
        currentEntry: Entry?
    ): LyricsCacheSnapshot = access.lock.withLock { snapshotInternal(identity, currentEntry, useLookup = false) }

    private fun snapshotInternal(
        identity: LyricsPlaybackIdentity?,
        currentEntry: Entry?,
        useLookup: Boolean
    ): LyricsCacheSnapshot {
        if (closed) return LyricsCacheSnapshot(emptyStats(), null)
        return runCatching {
            val database = helper.writableDatabase
            val stats = LyricsCacheStats(
                automaticEntries = tableCount(database, TABLE_CACHE),
                manualEntries = tableCount(database, TABLE_MANUAL),
                totalBytes = totalBytes(database),
                maximumAutomaticBytes = maximumBytes
            )
            val current = currentEntry?.let { entry ->
                LyricsCachedTrackInfo(entry.selection, entry.result, entry.updatedAtMs)
            } ?: if (useLookup) identity?.takeIf(LyricsPlaybackIdentity::isUsable)?.let { playback ->
                get(
                    playback.track,
                    playback.artist,
                    playback.album,
                    playback.durationMs,
                    recordUse = false
                )?.let { entry ->
                    LyricsCachedTrackInfo(entry.selection, entry.result, entry.updatedAtMs)
                }
            } else null
            LyricsCacheSnapshot(stats, current)
        }.onFailure { error ->
            Log.w(LOG_TAG, "Unable to read lyrics cache snapshot", error)
        }.getOrElse { LyricsCacheSnapshot(emptyStats(), null) }
    }

    /** Artwork shares the same transaction, quota and usage score as automatic text. */
    @Synchronized
    fun readCover(query: LyricsLookup, legacyKey: String? = null): Bitmap? {
        return access.lock.withLock {
            if (closed || !LyricsCandidateSelector.canFindCover(query)) return@withLock null
            runCatching {
                val db = helper.writableDatabase
                val key = legacyKey ?: key(query.track, query.artist, query.album, query.durationMs)
                db.beginTransaction()
                try {
                    var size = 0L
                    var uses = 0
                    val bytes = db.rawQuery("SELECT length(payload), byte_size, use_count, payload FROM " +
                        "${ContentCacheBudget.COVER_TABLE} WHERE cache_key = ?", arrayOf(key)).use { cursor ->
                        if (!cursor.moveToFirst()) null else {
                            size = cursor.getLong(1); uses = cursor.getInt(2)
                            if (cursor.getLong(0) !in 1..ContentCacheBudget.MAX_ENTRY_BYTES ||
                                size != cursor.getLong(0) + key.toByteArray(StandardCharsets.UTF_8).size + ESTIMATED_ROW_OVERHEAD_BYTES) null
                            else cursor.getBlob(3)
                        }
                    }
                    val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
                    if (bytes != null) BitmapFactory.decodeByteArray(bytes, 0, bytes.size, bounds)
                    val bitmap = if (bytes != null && bounds.outWidth in 1..512 && bounds.outHeight in 1..512)
                        BitmapFactory.decodeByteArray(bytes, 0, bytes.size) else null
                    if (bitmap == null) {
                        if (db.delete(ContentCacheBudget.COVER_TABLE, "cache_key = ?", arrayOf(key)) > 0)
                            writeTotalBytes(db, ContentCacheBudget.actualBytes(db))
                    } else {
                        val now = System.currentTimeMillis()
                        val count = LyricsCachePolicy.nextUseCount(uses)
                        db.update(ContentCacheBudget.COVER_TABLE, ContentValues().apply {
                            put(COLUMN_LAST_USED_AT, now); put(COLUMN_USE_COUNT, count)
                            put(COLUMN_EVICTION_SCORE, LyricsCachePolicy.evictionScore(now, count))
                        }, "cache_key = ?", arrayOf(key))
                    }
                    db.setTransactionSuccessful()
                    bitmap
                } finally { db.endTransaction() }
            }.onFailure { Log.w(LOG_TAG, "Unable to read recording artwork cache", it) }.getOrNull()
        }
    }

    @Synchronized
    fun writeCover(query: LyricsLookup, bitmap: Bitmap): Boolean {
        return access.lock.withLock {
            if (!LyricsCandidateSelector.canFindCover(query)) return@withLock false
            writeCoverKey(key(query.track, query.artist, query.album, query.durationMs), bitmap)
        }
    }

    @Synchronized
    internal fun writeCoverKey(key: String, bitmap: Bitmap): Boolean {
        return access.lock.withLock {
            if (closed) return@withLock false
            runCatching { ContentCacheBudget.writeArtwork(helper.writableDatabase, key, bitmap, maximumBytes) }
                .onFailure { Log.w(LOG_TAG, "Unable to write recording artwork cache", it) }.getOrDefault(false)
        }
    }

    @Synchronized
    internal fun physicalSnapshot(): Pair<Long, Boolean> = access.lock.withLock {
        check(!closed)
        helper.writableDatabase.let { it.maximumSize to it.isWriteAheadLoggingEnabled }
    }

    @Synchronized
    override fun close() {
        access.lock.withLock {
            if (closed) return@withLock
            closed = true
            try { helper.close() } finally { ContentCacheBudget.release(access) }
        }
    }

    private fun trimToTarget(database: SQLiteDatabase, startingBytes: Long,
        protectedAutomaticKey: String? = null, protectedCoverKey: String? = null): Long =
        ContentCacheBudget.trim(database, startingBytes, trimTargetBytes,
            protectedAutomaticKey, protectedCoverKey)

    private fun findAutomaticEntries(
        database: SQLiteDatabase,
        query: LyricsLookup
    ): List<CachedEntry> {
        val keys = lookupKeys(query.track, query.artist, query.album, query.durationMs)
        val placeholders = List(keys.size) { "?" }.joinToString(",")
        val broken = mutableListOf<String>()
        val entries = database.query(
            TABLE_CACHE,
            arrayOf(COLUMN_KEY, "CASE WHEN length(CAST($COLUMN_PAYLOAD AS BLOB)) <= ${ContentCacheBudget.MAX_ENTRY_BYTES} THEN $COLUMN_PAYLOAD ELSE '' END", COLUMN_UPDATED_AT, COLUMN_USE_COUNT, COLUMN_BYTE_SIZE),
            "$COLUMN_RECORDING_KEY IN ($placeholders)",
            keys.toTypedArray(),
            null,
            null,
            null
        ).use { cursor ->
            buildList {
                while (cursor.moveToNext()) {
                    val entry = runCatching {
                        decodeAutomaticEntry(cursor.getString(1), cursor.getLong(2))
                    }.getOrNull()
                    if (entry == null) { broken += cursor.getString(0); continue }
                    if (entry.proof?.let {
                        LyricsCandidateSelector.isProofValid(query, entry.result, it)
                    } != true) continue
                    add(CachedEntry(cursor.getString(0), entry, cursor.getInt(3), cursor.getString(1), cursor.getLong(4)))
                }
            }
        }
        if (broken.isNotEmpty()) {
            for (key in broken) database.delete(TABLE_CACHE, "$COLUMN_KEY = ?", arrayOf(key))
            writeTotalBytes(database, ContentCacheBudget.actualBytes(database))
        }
        return entries
    }

    private fun findManualEntries(
        database: SQLiteDatabase,
        query: LyricsLookup
    ): List<ManualCachedEntry> {
        val keys = lookupKeys(query.track, query.artist, query.album, query.durationMs)
        val placeholders = List(keys.size) { "?" }.joinToString(",")
        return database.query(
            TABLE_MANUAL,
            arrayOf(COLUMN_KEY, COLUMN_PAYLOAD, COLUMN_UPDATED_AT),
            "$COLUMN_RECORDING_KEY IN ($placeholders)",
            keys.toTypedArray(),
            null,
            null,
            null
        ).use { cursor ->
            buildList {
                while (cursor.moveToNext()) {
                    val entry = runCatching {
                        decodeManualEntry(cursor.getString(0), cursor.getString(1), cursor.getLong(2))
                    }.getOrNull() ?: continue
                    if (!LyricsCandidateSelector.hasMatchingDuration(query.durationMs, entry.identity.durationMs)) continue
                    add(entry)
                }
            }
        }
    }

    private fun deleteReplacedRows(database: SQLiteDatabase, table: String, cacheKey: String): Long =
        deleteRows(
            database, table,
            "$COLUMN_RECORDING_KEY = ? OR $COLUMN_KEY = ?",
            arrayOf(cacheKey, cacheKey)
        )

    private fun deleteKeys(database: SQLiteDatabase, table: String, keys: List<String>): Long {
        if (keys.isEmpty()) return 0L
        val placeholders = List(keys.size) { "?" }.joinToString(",")
        return deleteRows(database, table, "$COLUMN_KEY IN ($placeholders)", keys.toTypedArray())
    }

    private fun deleteRows(
        database: SQLiteDatabase,
        table: String,
        selection: String,
        selectionArgs: Array<String>
    ): Long {
        val bytes = database.query(
            table,
            arrayOf("COALESCE(SUM($COLUMN_BYTE_SIZE), 0)"),
            selection,
            selectionArgs,
            null,
            null,
            null
        ).use { cursor -> if (cursor.moveToFirst()) cursor.getLong(0) else 0L }
        database.delete(table, selection, selectionArgs)
        return bytes
    }

    private fun tableCount(database: SQLiteDatabase, table: String): Int = database.query(
        table,
        arrayOf("COUNT(*)"),
        null,
        null,
        null,
        null,
        null
    ).use { cursor -> if (cursor.moveToFirst()) cursor.getInt(0) else 0 }

    private fun existingMetadata(database: SQLiteDatabase, cacheKey: String): ExistingMetadata? {
        database.query(
            TABLE_CACHE,
            arrayOf(COLUMN_LAST_USED_AT, COLUMN_USE_COUNT, COLUMN_EVICTION_SCORE),
            "$COLUMN_RECORDING_KEY = ?",
            arrayOf(cacheKey),
            null,
            null,
            "$COLUMN_EVICTION_SCORE DESC, $COLUMN_LAST_USED_AT DESC",
            "1"
        ).use { cursor ->
            if (!cursor.moveToFirst()) return null
            return ExistingMetadata(
                lastUsedAtMs = cursor.getLong(0),
                useCount = cursor.getInt(1),
                evictionScore = cursor.getLong(2)
            )
        }
    }

    private fun totalBytes(database: SQLiteDatabase): Long {
        database.query(
            TABLE_META,
            arrayOf(COLUMN_TOTAL_BYTES),
            "$COLUMN_META_ID = 1",
            null,
            null,
            null,
            null,
            "1"
        ).use { cursor ->
            if (cursor.moveToFirst()) return cursor.getLong(0)
        }
        return 0L
    }

    private fun writeTotalBytes(database: SQLiteDatabase, totalBytes: Long) {
        val inserted = database.insertWithOnConflict(
            TABLE_META,
            null,
            ContentValues().apply {
                put(COLUMN_META_ID, 1)
                put(COLUMN_TOTAL_BYTES, totalBytes)
            },
            SQLiteDatabase.CONFLICT_REPLACE
        )
        check(inserted != -1L) { "Lyrics cache statistics insert failed" }
    }

    private fun encodeResolved(
        resolved: ResolvedLyrics,
        query: LyricsLookup,
        refreshAttempts: Int,
        lastRefreshAtMs: Long
    ): String = resolved.result.toJson()
        .put("selectionProof", resolved.proof.toJson())
        .put("playbackIdentity", LyricsPlaybackIdentity(query.track, query.artist, query.album, query.durationMs).toJson())
        .put("qualityVersion", LyricsCachePolicy.QUALITY_VERSION)
        .put("refreshAttempts", refreshAttempts)
        .put("lastRefreshAtMs", lastRefreshAtMs)
        .toString()

    private fun decodeAutomaticEntry(payload: String, updatedAtMs: Long): Entry? {
        val value = JSONObject(payload)
        val result = decodeResult(value) ?: return null
        val proof = LyricsSelectionProof.fromJson(value.optJSONObject("selectionProof"))
            ?: return null
        return Entry(
            result = result,
            proof = proof,
            updatedAtMs = updatedAtMs,
            translationResolved = value.has("translatedLyrics"),
            qualityVersion = value.optInt("qualityVersion", 0).coerceAtLeast(0),
            refreshAttempts = value.optInt("refreshAttempts", 0).coerceIn(0, LyricsCachePolicy.MAX_REFRESH_ATTEMPTS),
            lastRefreshAtMs = value.optLong("lastRefreshAtMs", updatedAtMs).coerceAtLeast(0L)
        )
    }

    private fun decodeManualEntry(cacheKey: String, payload: String, updatedAtMs: Long): ManualCachedEntry? {
        val value = JSONObject(payload)
        val identity = LyricsPlaybackIdentity.fromJson(value.optJSONObject("playbackIdentity"))
            ?.takeIf(LyricsPlaybackIdentity::isUsable)
            ?: return null
        val result = decodeResult(value) ?: return null
        return ManualCachedEntry(
            cacheKey,
            identity,
            Entry(
                result = result,
                proof = null,
                updatedAtMs = updatedAtMs,
                selection = LyricsCacheSelection.MANUAL
            )
        )
    }

    private fun emptyStats() = LyricsCacheStats(0, 0, 0L, maximumBytes)

    private fun cacheEntrySize(cacheKey: String, payload: String): Long =
        cacheKey.toByteArray(StandardCharsets.UTF_8).size.toLong() +
            payload.toByteArray(StandardCharsets.UTF_8).size.toLong() +
            ESTIMATED_ROW_OVERHEAD_BYTES

    private data class ExistingMetadata(
        val lastUsedAtMs: Long,
        val useCount: Int,
        val evictionScore: Long
    )

    private data class CachedEntry(
        val cacheKey: String,
        val entry: Entry,
        val useCount: Int,
        val payload: String,
        val byteSize: Long
    )

    private data class ManualCachedEntry(
        val cacheKey: String,
        val identity: LyricsPlaybackIdentity,
        val entry: Entry
    )

    private class CacheDatabase(context: Context, databaseName: String, private val maximumBytes: Long) :
        SQLiteOpenHelper(context, databaseName, null, DATABASE_VERSION) {
        private val legacyDirectory = File(context.filesDir, "content-covers-v1")

        override fun onConfigure(database: SQLiteDatabase) {
            // Rollback journal, not WAL: no independently growing -wal/-shm cache.
            database.disableWriteAheadLogging()
            database.rawQuery("PRAGMA journal_mode=DELETE", null).use { it.moveToFirst() }
            database.rawQuery("PRAGMA journal_size_limit=0", null).use { it.moveToFirst() }
            if (maximumBytes >= 1024L * 1024L)
                database.setMaximumSize((maximumBytes - ContentCacheBudget.legacyBytes(legacyDirectory)).coerceAtLeast(4096L))
        }

        override fun onCreate(database: SQLiteDatabase) {
            database.execSQL("PRAGMA auto_vacuum=INCREMENTAL")
            ContentCacheBudget.createCoverTable(database)
            database.execSQL(
                """
                CREATE TABLE $TABLE_CACHE (
                    $COLUMN_KEY TEXT PRIMARY KEY NOT NULL,
                    $COLUMN_RECORDING_KEY TEXT,
                    $COLUMN_PAYLOAD TEXT NOT NULL,
                    $COLUMN_BYTE_SIZE INTEGER NOT NULL,
                    $COLUMN_UPDATED_AT INTEGER NOT NULL,
                    $COLUMN_LAST_USED_AT INTEGER NOT NULL,
                    $COLUMN_USE_COUNT INTEGER NOT NULL,
                    $COLUMN_EVICTION_SCORE INTEGER NOT NULL
                )
                """.trimIndent()
            )
            database.execSQL(
                "CREATE INDEX $INDEX_EVICTION ON $TABLE_CACHE " +
                    "($COLUMN_EVICTION_SCORE ASC, $COLUMN_LAST_USED_AT ASC)"
            )
            database.execSQL(
                """
                CREATE TABLE $TABLE_META (
                    $COLUMN_META_ID INTEGER PRIMARY KEY CHECK ($COLUMN_META_ID = 1),
                    $COLUMN_TOTAL_BYTES INTEGER NOT NULL
                )
                """.trimIndent()
            )
            database.execSQL(
                "INSERT INTO $TABLE_META ($COLUMN_META_ID, $COLUMN_TOTAL_BYTES) VALUES (1, 0)"
            )
            createManualTable(database)
            createRecordingIndexes(database)
        }

        override fun onOpen(database: SQLiteDatabase) {
            super.onOpen(database)
            // No full-cache scan on foreground resume. Freed pages are reused immediately;
            // at most one MiB is physically reclaimed per open when incremental vacuum is enabled.
            database.execSQL("PRAGMA incremental_vacuum(256)")
            ContentCacheBudget.migrateLegacyCovers(database, legacyDirectory, maximumBytes)
            // Even failed legacy deletion reserves disk bytes; it cannot create a second budget.
            if (maximumBytes >= 1024L * 1024L)
                database.setMaximumSize((maximumBytes - ContentCacheBudget.legacyBytes(legacyDirectory)).coerceAtLeast(4096L))
        }

        private fun repairUpgradedEntries(database: SQLiteDatabase) {
                for (table in listOf(TABLE_CACHE, TABLE_MANUAL, ContentCacheBudget.COVER_TABLE)) {
                    val payload = if (table == ContentCacheBudget.COVER_TABLE) "payload" else COLUMN_PAYLOAD
                    database.execSQL("UPDATE $table SET byte_size = length(CAST($payload AS BLOB)) + " +
                        "length(CAST(cache_key AS BLOB)) + $ESTIMATED_ROW_OVERHEAD_BYTES")
                }
                // Automatic malformed/oversized artifacts are disposable. Manual rows survive upgrades.
                database.delete(TABLE_CACHE, "length(CAST(payload_json AS BLOB)) > ?", arrayOf(ContentCacheBudget.MAX_ENTRY_BYTES.toString()))
                database.delete(ContentCacheBudget.COVER_TABLE, "length(payload) > ? OR length(payload) = 0",
                    arrayOf(ContentCacheBudget.MAX_ENTRY_BYTES.toString()))
                var afterKey = ""
                while (true) {
                    val batch = database.query(TABLE_CACHE, arrayOf(COLUMN_KEY, COLUMN_PAYLOAD),
                        "cache_key > ?", arrayOf(afterKey), null, null, "cache_key", "256").use { cursor -> buildList {
                        while (cursor.moveToNext()) {
                            val key = cursor.getString(0)
                            val valid = runCatching {
                                val value = JSONObject(cursor.getString(1))
                                decodeResult(value) != null &&
                                    LyricsSelectionProof.fromJson(value.optJSONObject("selectionProof")) != null
                            }.getOrDefault(false)
                            add(key to valid)
                        }
                    } }
                    if (batch.isEmpty()) break
                    for ((key, valid) in batch) if (!valid) database.delete(TABLE_CACHE, "cache_key = ?", arrayOf(key))
                    afterKey = batch.last().first
                }
                database.execSQL("UPDATE cache_meta SET total_bytes = " +
                    "(SELECT COALESCE(SUM(byte_size),0) FROM lyrics_cache) + " +
                    "(SELECT COALESCE(SUM(byte_size),0) FROM lyrics_manual_override) + " +
                    "(SELECT COALESCE(SUM(byte_size),0) FROM ${ContentCacheBudget.COVER_TABLE}) WHERE meta_id=1")
                val actual = database.rawQuery("SELECT total_bytes FROM cache_meta WHERE meta_id=1", null)
                    .use { it.moveToFirst(); it.getLong(0) }
                if (actual > maximumBytes) {
                    val remaining = ContentCacheBudget.trim(database, actual, maximumBytes * 9L / 10L)
                    database.execSQL("UPDATE cache_meta SET total_bytes=? WHERE meta_id=1", arrayOf(remaining))
                }
        }

        override fun onUpgrade(database: SQLiteDatabase, oldVersion: Int, newVersion: Int) {
            ContentCacheBudget.createCoverTable(database)
            if (oldVersion < AUTOMATIC_CACHE_IDENTITY_VERSION) {
                database.delete(TABLE_CACHE, null, null)
                database.delete(TABLE_META, null, null)
                database.execSQL(
                    "INSERT INTO $TABLE_META ($COLUMN_META_ID, $COLUMN_TOTAL_BYTES) VALUES (1, 0)"
                )
            }
            if (oldVersion < MANUAL_OVERRIDE_VERSION) createManualTable(database)
            if (oldVersion < RECORDING_KEY_VERSION) {
                database.execSQL("ALTER TABLE $TABLE_CACHE ADD COLUMN $COLUMN_RECORDING_KEY TEXT")
                if (oldVersion >= MANUAL_OVERRIDE_VERSION) {
                    database.execSQL("ALTER TABLE $TABLE_MANUAL ADD COLUMN $COLUMN_RECORDING_KEY TEXT")
                }
                migrateRecordingKeys(database, TABLE_CACHE, ::legacyAutomaticRecordingKey)
                migrateRecordingKeys(database, TABLE_MANUAL, ::legacyManualRecordingKey)
                createRecordingIndexes(database)
                recalculateTotalBytes(database)
            }
            repairUpgradedEntries(database)
        }

        private fun migrateRecordingKeys(
            database: SQLiteDatabase,
            table: String,
            recordingKey: (String, String) -> String?
        ) {
            val bindings = mutableListOf<Pair<String, String?>>()
            database.query(
                table,
                arrayOf(COLUMN_KEY, COLUMN_PAYLOAD),
                null,
                null,
                null,
                null,
                null
            ).use { cursor ->
                while (cursor.moveToNext()) {
                    val cacheKey = cursor.getString(0)
                    bindings += cacheKey to recordingKey(cacheKey, cursor.getString(1))
                }
            }
            bindings.forEach { (cacheKey, key) ->
                if (key != null) {
                    database.update(
                        table,
                        ContentValues().apply { put(COLUMN_RECORDING_KEY, key) },
                        "$COLUMN_KEY = ?",
                        arrayOf(cacheKey)
                    )
                } else if (table == TABLE_CACHE) {
                    database.delete(table, "$COLUMN_KEY = ?", arrayOf(cacheKey))
                }
            }
        }

        private fun createRecordingIndexes(database: SQLiteDatabase) {
            database.execSQL("CREATE INDEX $INDEX_CACHE_RECORDING ON $TABLE_CACHE ($COLUMN_RECORDING_KEY)")
            database.execSQL("CREATE INDEX $INDEX_MANUAL_RECORDING ON $TABLE_MANUAL ($COLUMN_RECORDING_KEY)")
        }

        private fun recalculateTotalBytes(database: SQLiteDatabase) {
            val total = listOf(TABLE_CACHE, TABLE_MANUAL, ContentCacheBudget.COVER_TABLE).sumOf { table ->
                database.query(
                    table,
                    arrayOf("COALESCE(SUM($COLUMN_BYTE_SIZE), 0)"),
                    null,
                    null,
                    null,
                    null,
                    null
                ).use { cursor -> if (cursor.moveToFirst()) cursor.getLong(0) else 0L }
            }
            val inserted = database.insertWithOnConflict(
                TABLE_META,
                null,
                ContentValues().apply {
                    put(COLUMN_META_ID, 1)
                    put(COLUMN_TOTAL_BYTES, total)
                },
                SQLiteDatabase.CONFLICT_REPLACE
            )
            check(inserted != -1L) { "Lyrics cache statistics migration failed" }
        }

        private fun createManualTable(database: SQLiteDatabase) {
            database.execSQL(
                """
                CREATE TABLE IF NOT EXISTS $TABLE_MANUAL (
                    $COLUMN_KEY TEXT PRIMARY KEY NOT NULL,
                    $COLUMN_RECORDING_KEY TEXT,
                    $COLUMN_PAYLOAD TEXT NOT NULL,
                    $COLUMN_BYTE_SIZE INTEGER NOT NULL,
                    $COLUMN_UPDATED_AT INTEGER NOT NULL
                )
                """.trimIndent()
            )
            database.execSQL(
                "CREATE INDEX IF NOT EXISTS $INDEX_MANUAL_UPDATED ON $TABLE_MANUAL " +
                    "($COLUMN_UPDATED_AT ASC)"
            )
        }
    }

    companion object {
        internal fun legacyAutomaticRecordingKey(cacheKey: String, payload: String): String? = runCatching {
            val value = JSONObject(payload)
            val result = decodeResult(value) ?: return@runCatching null
            val proof = LyricsSelectionProof.fromJson(value.optJSONObject("selectionProof"))
                ?: return@runCatching null
            // Legacy rows can prove their binding only when the stored hash
            // matches the candidate's exact identity. New rows retain the query.
            val identity = LyricsPlaybackIdentity.fromJson(value.optJSONObject("playbackIdentity"))
                ?: LyricsPlaybackIdentity(
                    result.candidateTrack, result.candidateArtist, result.candidateAlbum, result.durationMs
                )
            if (!identity.isUsable ||
                cacheKey != legacyKey(identity.track, identity.artist, identity.album, result.durationMs) ||
                !LyricsCandidateSelector.isProofValid(identity.lookup(), result, proof)
            ) return@runCatching null
            key(identity.track, identity.artist, identity.album, result.durationMs)
        }.getOrNull()

        internal fun legacyManualRecordingKey(cacheKey: String, payload: String): String? = runCatching {
            val value = JSONObject(payload)
            val identity = LyricsPlaybackIdentity.fromJson(value.optJSONObject("playbackIdentity"))
                ?.takeIf(LyricsPlaybackIdentity::isUsable) ?: return@runCatching null
            if (decodeResult(value) == null ||
                cacheKey != legacyKey(identity.track, identity.artist, identity.album, identity.durationMs)
            ) return@runCatching null
            key(identity.track, identity.artist, identity.album, identity.durationMs)
        }.getOrNull()

        private fun decodeResult(value: JSONObject): LyricsResult? {
            val lyrics = cleanLyrics(value.optString("lyrics"))
            val result = LyricsResult(
                lyrics = lyrics,
                translatedLyrics = synchronizedLyricsOrEmpty(value.optString("translatedLyrics")),
                wordLyrics = cleanLyrics(value.optString("wordLyrics")),
                romanizedLyrics = synchronizedLyricsOrEmpty(value.optString("romanizedLyrics")),
                plainLyrics = cleanLyrics(value.optString("plainLyrics")),
                backgroundLyrics = cleanLyrics(value.optString("backgroundLyrics")),
                ttmlLyrics = cleanLyrics(value.optString("ttmlLyrics")),
                identitySource = value.optString("identitySource"),
                durationMs = value.optLong("duration", 0L),
                cover = value.optString("cover"),
                source = value.optString("source"),
                sourceId = value.optString("sourceId"),
                candidateTrack = value.optString("candidateTrack"),
                candidateArtist = value.optString("candidateArtist"),
                candidateAlbum = value.optString("candidateAlbum")
            )
            val kind = result.contentKind()
            return result.copy(lyricsKind = kind).takeIf { kind != LyricsKind.NONE }
        }

        private const val LOG_TAG = "ContentLyrics"
        private const val DATABASE_VERSION = 7
        private const val AUTOMATIC_CACHE_IDENTITY_VERSION = 3
        private const val MANUAL_OVERRIDE_VERSION = 4
        private const val RECORDING_KEY_VERSION = 6
        private const val TABLE_CACHE = "lyrics_cache"
        private const val TABLE_MANUAL = "lyrics_manual_override"
        private const val TABLE_META = "cache_meta"
        private const val COLUMN_KEY = "cache_key"
        private const val COLUMN_RECORDING_KEY = "recording_key"
        private const val COLUMN_PAYLOAD = "payload_json"
        private const val COLUMN_BYTE_SIZE = "byte_size"
        private const val COLUMN_UPDATED_AT = "updated_at"
        private const val COLUMN_LAST_USED_AT = "last_used_at"
        private const val COLUMN_USE_COUNT = "use_count"
        private const val COLUMN_EVICTION_SCORE = "eviction_score"
        private const val COLUMN_META_ID = "meta_id"
        private const val COLUMN_TOTAL_BYTES = "total_bytes"
        private const val INDEX_EVICTION = "index_lyrics_cache_eviction"
        private const val INDEX_MANUAL_UPDATED = "index_lyrics_manual_override_updated"
        private const val INDEX_CACHE_RECORDING = "index_lyrics_cache_recording"
        private const val INDEX_MANUAL_RECORDING = "index_lyrics_manual_override_recording"
        private const val EVICTION_BATCH_SIZE = 256
        private const val MANUAL_ENTRY_LIMIT = 128
        private const val ESTIMATED_ROW_OVERHEAD_BYTES = 256L

        fun key(track: String, artist: String, album: String, durationMs: Long): String = hashIdentity(
            listOf(normalizeText(track), normalizeText(artist), normalizeText(album), roundedDurationSeconds(durationMs))
                .joinToString("\u0000")
        )

        internal fun legacyKey(track: String, artist: String, album: String, durationMs: Long): String {
            val durationSeconds = roundedDurationSeconds(durationMs)
            val identity = Normalizer.normalize(
                "$track\u0000$artist\u0000$album\u0000$durationSeconds",
                Normalizer.Form.NFKC
            )
                .trim()
                .lowercase(Locale.ROOT)
            return hashIdentity(identity)
        }

        private fun hashIdentity(identity: String): String = MessageDigest.getInstance("SHA-256")
                .digest(identity.toByteArray(StandardCharsets.UTF_8))
                .joinToString("") { byte -> "%02x".format(byte.toInt() and 0xff) }

        internal fun lookupKeys(
            track: String,
            artist: String,
            album: String,
            playbackDurationMs: Long
        ): List<String> {
            val durationSeconds = roundedDurationSeconds(playbackDurationMs)
            val toleranceSeconds = (LyricsCandidateSelector.MAX_DURATION_DELTA_MS + 999L) / 1_000L
            return (-toleranceSeconds..toleranceSeconds)
                .map { offset -> key(track, artist, album, (durationSeconds + offset).coerceAtLeast(0L) * 1_000L) }
                .distinct()
        }

        private fun roundedDurationSeconds(durationMs: Long): Long =
            (durationMs.coerceAtLeast(0L) + 500L) / 1_000L
    }
}

internal object LyricsCachePolicy {
    const val MAX_BYTES = ContentCacheBudget.MAX_BYTES
    const val TRIM_TARGET_BYTES = MAX_BYTES * 9L / 10L
    const val QUALITY_VERSION = 1
    const val REFRESH_AFTER_MS = 6L * 60L * 60L * 1000L
    const val MAX_REFRESH_ATTEMPTS = 3
    private const val MAX_USE_COUNT = 30
    private const val FREQUENCY_BONUS_MS = 7L * 24L * 60L * 60L * 1000L

    fun nextUseCount(current: Int): Int = min(MAX_USE_COUNT, current.coerceAtLeast(0) + 1)

    fun evictionScore(lastUsedAtMs: Long, useCount: Int): Long =
        lastUsedAtMs + min(MAX_USE_COUNT, useCount.coerceAtLeast(1)) * FREQUENCY_BONUS_MS
}
