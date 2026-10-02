package com.icar03.content.runtime.lyrics

import android.content.ContentValues
import android.database.sqlite.SQLiteDatabase
import android.graphics.Bitmap
import android.graphics.Color
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File
import java.security.MessageDigest
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28])
class ContentCacheBudgetTest {
    private val app get() = RuntimeEnvironment.getApplication()
    private fun name() = "shared-budget-${System.nanoTime()}.db"
    private fun identity(i: Int) = LyricsPlaybackIdentity("Synthetic $i", "Artist", "Album", 200_000L)
    private fun result(i: LyricsPlaybackIdentity) = LyricsResult(
        lyrics = "[00:01]Synthetic first\n[01:00]Synthetic middle\n[03:00]Synthetic ending",
        durationMs = i.durationMs, source = SOURCE_QQ, sourceId = i.track,
        candidateTrack = i.track, candidateArtist = i.artist, candidateAlbum = i.album,
        lyricsKind = LyricsKind.SYNCHRONIZED)
    private fun resolved(i: LyricsPlaybackIdentity): ResolvedLyrics {
        val body = result(i)
        return ResolvedLyrics(body, LyricsCandidateSelector.selectCandidatesWithProof(i.lookup(), listOf(body)).single().proof)
    }
    private fun cover(seed: Int) = Bitmap.createBitmap(24, 24, Bitmap.Config.ARGB_8888).apply {
        val random = java.util.Random(seed.toLong())
        for (y in 0 until height) for (x in 0 until width)
            setPixel(x, y, Color.rgb(random.nextInt(256), random.nextInt(256), random.nextInt(256)))
    }
    private fun db(name: String, block: (SQLiteDatabase) -> Unit) =
        SQLiteDatabase.openDatabase(app.getDatabasePath(name).path, null, SQLiteDatabase.OPEN_READWRITE).use(block)
    private fun assertAccounting(name: String, maximum: Long) = db(name) { database ->
        val sum = listOf("lyrics_cache", "lyrics_manual_override", "recording_covers").sumOf { table ->
            database.rawQuery("SELECT COALESCE(SUM(byte_size),0) FROM $table", null)
                .use { it.moveToFirst(); it.getLong(0) }
        }
        val recorded = database.rawQuery("SELECT total_bytes FROM cache_meta", null).use { it.moveToFirst(); it.getLong(0) }
        assertEquals(sum, recorded)
        assertTrue("single combined quota", sum <= maximum)
    }

    @Test fun lyricsAndCoversEvictTogetherWhileManualAdoptionSurvives() {
        val name = name(); val max = 12_000L
        LyricsCache(app, name, max).use { text ->
            ContentCoverCache(app, name, max).use { art ->
                assertTrue(text.writeManual(identity(0), result(identity(0))))
                assertTrue(text.writeAutomatic(identity(1), resolved(identity(1))))
                val image = cover(1)
                assertTrue(art.write(identity(1).lookup(), image))
                repeat(12) { i -> assertTrue(art.write(identity(i + 10).lookup(), cover(i))) }
                assertNull("automatic lyrics participates in shared eviction", text.read(identity(1), false))
                assertEquals(LyricsCacheSelection.MANUAL, text.read(identity(0), false)!!.selection)
                assertNull("old artwork participates in the same eviction", art.read(identity(1).lookup()))
                assertNotNull(art.read(identity(21).lookup()))
                assertFalse(image.isRecycled)
                assertAccounting(name, max)
            }
        }
    }

    @Test fun rejectedWritesRollbackEvictionAndKeepManualAndPreviousArtwork() {
        val name = name(); val max = 8_000L
        LyricsCache(app, name, max).use { cache ->
            assertTrue(cache.writeManual(identity(0), result(identity(0))))
            val old = cover(1)
            assertTrue(cache.writeCover(identity(1).lookup(), old))
            val before = cache.snapshot(null, null).stats.totalBytes
            db(name) { it.execSQL("CREATE TRIGGER synthetic_reject BEFORE INSERT ON recording_covers " +
                "BEGIN SELECT RAISE(ABORT,'synthetic disk failure'); END") }
            assertFalse(cache.writeCover(identity(2).lookup(), cover(2)))
            assertEquals(before, cache.snapshot(null, null).stats.totalBytes)
            assertEquals(LyricsCacheSelection.MANUAL, cache.read(identity(0), false)!!.selection)
            assertEquals(old.getPixel(0, 0), cache.readCover(identity(1).lookup())!!.getPixel(0, 0))
            assertAccounting(name, max)
        }
    }

    @Test fun manualFullBudgetRejectsNewArtworkWithoutDeletingAdoption() {
        val name = name(); val max = 2_000L
        LyricsCache(app, name, max).use { cache ->
            assertTrue(cache.writeManual(identity(0), result(identity(0))))
            val previous = cache.read(identity(0), false)!!
            val before = cache.snapshot(null, null).stats.totalBytes
            assertFalse(cache.writeCover(identity(1).lookup(), cover(1)))
            assertEquals(previous, cache.read(identity(0), false))
            assertEquals(before, cache.snapshot(null, null).stats.totalBytes)
        }
    }

    @Test fun corruptedCoverIsRemovedAndAccountingRepairedAcrossRestart() {
        val name = name()
        LyricsCache(app, name).use { assertTrue(it.writeCover(identity(1).lookup(), cover(1))) }
        db(name) { database -> database.update("recording_covers", ContentValues().apply {
            put("payload", byteArrayOf(1, 2, 3)); put("byte_size", Long.MAX_VALUE)
        }, null, null) }
        LyricsCache(app, name).use { cache ->
            assertNull(cache.readCover(identity(1).lookup()))
            assertEquals(0L, cache.snapshot(null, null).stats.totalBytes)
            assertAccounting(name, ContentCacheBudget.MAX_BYTES)
        }
    }

    @Test fun concurrentIndependentOwnersCannotDoubleSpendQuota() {
        val name = name(); val max = 16_000L
        LyricsCache(app, name, max).use { it.snapshot(null, null) }
        val executor = Executors.newFixedThreadPool(4)
        val start = CountDownLatch(1)
        try {
            val jobs = (0 until 4).map { worker -> executor.submit<Boolean> {
                start.await()
                LyricsCache(app, name, max).use { cache ->
                    repeat(10) { assertTrue("every serialized owner write succeeds", cache.writeCover(identity(worker * 10 + it).lookup(), cover(worker * 10 + it))) }
                }
                true
            } }
            start.countDown()
            jobs.forEach { assertTrue(it.get(30, TimeUnit.SECONDS)) }
            assertAccounting(name, max)
        } finally { executor.shutdownNow() }
    }

    @Test fun versionSixManualUpgradeAndLegacyArtworkMigrationPreserveIdentity() {
        val name = name(); val i = identity(7)
        LyricsCache(app, name).use { assertTrue(it.writeManual(i, result(i))) }
        db(name) { it.execSQL("DROP TABLE recording_covers"); it.version = 6 }
        val directory = File(app.filesDir, "content-covers-v1").apply { mkdirs() }
        val rawIdentity = listOf(normalizeText(i.track), normalizeText(i.artist), normalizeText(i.album), i.durationMs.toString())
            .joinToString("\u001f")
        val hash = MessageDigest.getInstance("SHA-256").digest(rawIdentity.toByteArray())
            .joinToString("") { "%02x".format(it.toInt() and 255) }
        val file = File(directory, "$hash.png")
        val image = cover(7)
        file.outputStream().use { assertTrue(image.compress(Bitmap.CompressFormat.PNG, 100, it)) }
        ContentCoverCache(app, name).use { assertEquals(image.getPixel(0, 0), it.read(i.lookup())!!.getPixel(0, 0)) }
        assertFalse("legacy directory is not an independent growing budget", file.exists())
        LyricsCache(app, name).use { assertEquals(LyricsCacheSelection.MANUAL, it.read(i, false)!!.selection) }
        assertAccounting(name, ContentCacheBudget.MAX_BYTES)
    }

    @Test fun physicalFullFailurePreservesEveryManualAdoptionAndRollsBackLedger() {
        val name = name(); val max = 1024L * 1024L
        val adopted = mutableListOf<Pair<LyricsPlaybackIdentity, LyricsResult>>()
        var rejected: LyricsPlaybackIdentity? = null
        LyricsCache(app, name, max).use { cache ->
            for (i in 0 until 128) {
                val playback = identity(i)
                val body = result(playback).copy(lyrics = "[00:01]" + "Synthetic ".repeat(730) + "\n[03:00]Synthetic end")
                val before = cache.snapshot(null, null).stats
                if (!cache.writeManual(playback, body)) {
                    rejected = playback
                    assertEquals("full insertion is completely atomic", before, cache.snapshot(null, null).stats)
                    break
                }
                adopted += playback to body
            }
            assertNotNull("physical pages fill before the 128-entry manual-count limit", rejected)
            assertTrue(adopted.size < 128)
            assertTrue("failure is physical, not the logical payload quota", cache.snapshot(null, null).stats.totalBytes + 16_384L < max)
            assertNull(cache.read(rejected!!, false))
            adopted.forEach { (playback, body) -> assertEquals(body, cache.read(playback, false)!!.result) }
            assertTrue(app.getDatabasePath(name).length() <= max)
            assertAccounting(name, max)
        }
        LyricsCache(app, name, max).use { cache ->
            adopted.forEach { (playback, body) -> assertEquals(body, cache.read(playback, false)!!.result) }
            assertEquals(adopted.size, cache.snapshot(null, null).stats.manualEntries)
        }
    }

    @Test fun dynamicOwnerPathsReleaseTheSharedAccessRegistryAfterClose() {
        val before = ContentCacheBudget.activeAccesses()
        repeat(20) {
            val name = name()
            val a = LyricsCache(app, name)
            val b = LyricsCache(app, name)
            assertEquals(before + 1, ContentCacheBudget.activeAccesses())
            a.close()
            assertEquals(before + 1, ContentCacheBudget.activeAccesses())
            b.close()
            b.close()
            assertEquals(before, ContentCacheBudget.activeAccesses())
        }
    }

    @Test fun databasePhysicalPageLimitAndReuseRemainBounded() {
        val name = name(); val max = 1024L * 1024L
        LyricsCache(app, name, max).use { cache ->
            repeat(700) { assertTrue(cache.writeCover(identity(it).lookup(), cover(it))) }
            val physical = cache.physicalSnapshot()
            assertTrue("cap belongs to the actual owner connection", physical.first <= max)
            assertFalse(physical.second)
            db(name) { database ->
                val surviving = database.rawQuery("SELECT COUNT(*) FROM recording_covers", null).use { it.moveToFirst(); it.getInt(0) }
                assertTrue("700 writes must exercise real eviction/reuse", surviving in 1 until 700)
            }
            assertTrue(app.getDatabasePath(name).length() <= max)
            assertFalse(File(app.getDatabasePath(name).path + "-wal").exists())
            assertAccounting(name, max)
        }
    }
}
