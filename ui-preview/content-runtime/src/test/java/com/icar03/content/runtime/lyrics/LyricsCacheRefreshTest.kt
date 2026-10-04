package com.icar03.content.runtime.lyrics

import android.content.ContentValues
import android.database.sqlite.SQLiteDatabase
import android.os.Looper
import com.autonavi.amapauto.content.ContentPorts
import kotlinx.coroutines.Dispatchers
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.nio.charset.StandardCharsets

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class LyricsCacheRefreshTest {
    private val identity = LyricsPlaybackIdentity("Synthetic Song", "Synthetic Artist", "Synthetic Album", 200_000L)
    private val app get() = RuntimeEnvironment.getApplication()

    @Test fun freshConstructorsAndMissingAuxiliaryTracksDoNotForceRefresh() {
        val entry = LyricsCache.Entry(result(), resolved(result()).proof, FIRST, translationResolved = false)
        assertEquals(LyricsCachePolicy.QUALITY_VERSION, entry.qualityVersion)
        assertFalse(entry.needsRefresh(FIRST))
        assertFalse(entry.needsRefresh(FIRST + INTERVAL - 1))
        assertTrue(entry.needsRefresh(FIRST + INTERVAL))
        assertFalse(entry.needsRefresh(FIRST - 1))
        assertFalse(entry.copy(selection = LyricsCacheSelection.MANUAL, qualityVersion = 0)
            .needsRefresh(Long.MAX_VALUE))
    }

    @Test fun refreshBudgetHasSixHourBoundariesAndSurvivesThreeRestartsWithoutExpiringBody() {
        val name = databaseName()
        withCache(name) { cache ->
            assertTrue(put(cache, result()))
            val entry = cache.read(identity, false)!!
            assertEquals(FIRST, entry.lastRefreshAtMs)
            assertEquals(0, entry.refreshAttempts)
            assertFalse(entry.needsRefresh(FIRST + INTERVAL - 1))
            assertTrue(entry.needsRefresh(FIRST + INTERVAL))
        }
        repeat(3) { index ->
            val now = FIRST + (index + 1) * INTERVAL
            withCache(name) { cache ->
                assertTrue(cache.read(identity, false)!!.needsRefresh(now))
                assertTrue(cache.recordRefresh(identity, now))
                val entry = cache.read(identity, false)!!
                assertEquals(index + 1, entry.refreshAttempts)
                assertEquals(now, entry.lastRefreshAtMs)
                assertEquals(FIRST, entry.updatedAtMs)
                assertFalse(entry.needsRefresh(now + INTERVAL - 1))
                assertAccounting(name, cache)
            }
        }
        withCache(name) { cache ->
            assertFalse(cache.read(identity, false)!!.needsRefresh(Long.MAX_VALUE))
            assertFalse(cache.recordRefresh(identity, FIRST + 4 * INTERVAL))
            assertEquals(LINES, cache.get(identity.track, identity.artist, identity.album,
                identity.durationMs, false, Long.MAX_VALUE)!!.result.lyrics)
        }
    }

    @Test fun legacyPayloadWithoutQualityVersionRemainsReadableAndGetsOneImmediateReevaluation() {
        val name = databaseName()
        withCache(name) { assertTrue(put(it, result())) }
        rewriteAutomaticPayload(name) { value ->
            value.remove("qualityVersion")
            value.remove("refreshAttempts")
            value.remove("lastRefreshAtMs")
            value.remove("translatedLyrics")
            value.put("syntheticFutureField", "preserved")
        }
        withCache(name) { cache ->
            val legacy = cache.read(identity, false)!!
            assertEquals(0, legacy.qualityVersion)
            assertEquals(0, legacy.refreshAttempts)
            assertFalse(legacy.translationResolved)
            assertTrue(legacy.needsRefresh(FIRST))
            assertFalse(put(cache, result()))
            assertTrue(cache.recordRefresh(identity, FIRST))
            val migrated = cache.read(identity, false)!!
            assertEquals(LyricsCachePolicy.QUALITY_VERSION, migrated.qualityVersion)
            assertEquals(1, migrated.refreshAttempts)
            assertFalse(migrated.needsRefresh(FIRST))
            assertEquals(LINES, migrated.result.lyrics)
            withDatabase(name) { database ->
                assertEquals(7, database.version)
                database.rawQuery("SELECT payload_json FROM lyrics_cache", null).use { cursor ->
                    assertTrue(cursor.moveToFirst())
                    assertEquals("preserved", JSONObject(cursor.getString(0)).getString("syntheticFutureField"))
                }
            }
            assertAccounting(name, cache)
        }
    }

    @Test fun aQualityVersionChangeResetsSpentBudgetWithoutComparingHistoricalScores() {
        val name = databaseName()
        withCache(name) { assertTrue(put(it, result())) }
        rewriteAutomaticPayload(name) { value ->
            value.put("qualityVersion", LyricsCachePolicy.QUALITY_VERSION - 1)
                .put("refreshAttempts", 3).put("lastRefreshAtMs", FIRST)
                .put("syntheticHistoricalScore", Int.MAX_VALUE)
        }
        withCache(name) { cache ->
            assertTrue(cache.read(identity, false)!!.needsRefresh(FIRST + 1))
            assertTrue(cache.recordRefresh(identity, FIRST + 1))
            val current = cache.read(identity, false)!!
            assertEquals(1, current.refreshAttempts)
            assertEquals(FIRST + 1, current.lastRefreshAtMs)
            assertFalse(current.needsRefresh(FIRST + INTERVAL))
            assertTrue(current.needsRefresh(FIRST + INTERVAL + 1))
            assertAccounting(name, cache)
        }
    }

    @Test fun staticToLineToWordUpgradesPreserveTheEffectiveRefreshBudget() {
        val name = databaseName()
        withCache(name) { cache ->
            assertTrue(put(cache, result().copy(lyrics = "", plainLyrics = "Synthetic static body")))
            assertEquals(LyricsKind.PLAIN, cache.read(identity, false)!!.result.contentKind())
            assertTrue(cache.recordRefresh(identity, FIRST + INTERVAL))
            assertTrue(put(cache, result(), FIRST + INTERVAL + 1))
            assertEquals(1, cache.read(identity, false)!!.refreshAttempts)
            assertTrue(cache.recordRefresh(identity, FIRST + 2 * INTERVAL))
            assertTrue(put(cache, result().copy(wordLyrics = WORDS), FIRST + 2 * INTERVAL + 1))
            assertEquals(2, cache.read(identity, false)!!.refreshAttempts)
            assertTrue(cache.recordRefresh(identity, FIRST + 3 * INTERVAL))
            assertFalse(cache.read(identity, false)!!.needsRefresh(Long.MAX_VALUE))
            assertFalse(put(cache, result()))
            assertAccounting(name, cache)
        }
        withCache(name) { cache ->
            assertEquals(WORDS, cache.read(identity, false)!!.result.wordLyrics)
            assertEquals(3, cache.read(identity, false)!!.refreshAttempts)
        }
    }

    @Test fun finerDurationScoreDoesNotRewriteBodyTimestampOrRefreshMetadata() {
        withCache(databaseName()) { cache ->
            val original = result()
            val fineTimingOnly = original.copy(sourceId = "fine-timing-only", lyrics = LINES.replace("[03:10]", "[03:16]"))
            assertTrue(LyricsContentRanker.inspect(identity.lookup(), fineTimingOnly).score >
                LyricsContentRanker.inspect(identity.lookup(), original).score)
            assertTrue(put(cache, original))
            assertTrue(cache.recordRefresh(identity, FIRST + INTERVAL))
            val before = cache.read(identity, false)!!
            val stats = cache.snapshot(null, null).stats
            assertFalse(put(cache, fineTimingOnly, FIRST + INTERVAL + 1))
            assertEquals(before, cache.read(identity, false))
            assertEquals(stats, cache.snapshot(null, null).stats)
        }
    }

    @Test fun sameScoreChangedTextUnalignedWordsAndLowerQualityCannotReplaceLastValid() {
        val name = databaseName()
        withCache(name) { cache ->
            val original = result()
            assertTrue(put(cache, original))
            for (next in listOf(
                original.copy(sourceId = "equal-changed", lyrics = LINES.replace("Testalpha", "Otheralpha")),
                original.copy(sourceId = "static", lyrics = "", plainLyrics = "Synthetic static fallback"),
                original.copy(sourceId = "wrong-axis", wordLyrics = WORDS.replace("1000", "12000")
                    .replace("80000", "90000").replace("190000", "195000")),
                original.copy(sourceId = "out-of-track", lyrics = "[04:00]Synthetic late text")
            )) assertFalse(put(cache, next))
            assertEquals(original, cache.read(identity, false)!!.result)
            assertTrue(put(cache, original.copy(wordLyrics = WORDS)))
            assertFalse(put(cache, original.copy(wordLyrics = WORDS.lineSequence().first())))
            assertEquals(WORDS, cache.read(identity, false)!!.result.wordLyrics)
            assertAccounting(name, cache)
        }
    }

    @Test fun batchRelativeCoveragePreventsStandaloneWordScoreFromDowngradingCompleteLines() {
        val opening = "Synthetic opening has sufficient characters for relative coverage"
        val ending = "Synthetic complete closing passage ".repeat(12).trim()
        val original = result().copy(lyrics = "[00:01]$opening\n[03:10]$ending")
        val short = result().copy(lyrics = "", wordLyrics = "[1000,1000](1000,1000,0)$opening",
            source = SOURCE_NETEASE, sourceId = "partial-prefix")
        val oldSelection = selection(original)
        val newSelection = selection(short)
        val query = identity.lookup()
        assertTrue(LyricsContentRanker.rank(query, listOf(newSelection)).single().quality.score >
            LyricsContentRanker.rank(query, listOf(oldSelection)).single().quality.score)
        assertEquals(original, LyricsContentRanker.rank(query, listOf(oldSelection, newSelection)).first().candidate)
        withCache(databaseName()) { cache ->
            assertTrue(put(cache, original))
            assertFalse(put(cache, short))
            assertEquals(original, cache.read(identity, false)!!.result)
        }
    }

    @Test fun recordingProofAndTwoSecondDurationToleranceRemainStrictDuringUpgrade() {
        withCache(databaseName()) { cache ->
            val original = result()
            assertTrue(put(cache, original))
            val next = original.copy(wordLyrics = WORDS)
            for (conflict in listOf(next.copy(candidateTrack = "Distant Horizon (Live)"),
                next.copy(candidateArtist = "Unrelated Performer"), next.copy(durationMs = 202_001L))) {
                assertTrue(LyricsCandidateSelector.selectCandidatesWithProof(identity.lookup(), listOf(conflict)).isEmpty())
                val forged = LyricsSelectionProof(LYRICS_MATCHER_POLICY_VERSION, listOf(conflict.candidateSnapshot()))
                assertFalse(cache.writeAutomatic(identity, ResolvedLyrics(conflict, forged)))
            }
            assertFalse(cache.writeAutomatic(identity, resolved(next).copy(
                proof = resolved(next).proof.copy(matcherPolicyVersion = -1))))
            assertNotNull(cache.read(identity.copy(durationMs = 202_000L), false))
            assertNull(cache.read(identity.copy(durationMs = 202_001L), false))
            assertNull(cache.read(identity.copy(durationMs = 0L), false))
            assertEquals(original, cache.read(identity, false)!!.result)
        }
        withCache(databaseName()) { cache ->
            assertTrue(put(cache, result().copy(durationMs = 198_000L)))
            assertFalse(put(cache, result().copy(durationMs = 202_000L, wordLyrics = WORDS)))
            assertEquals(198_000L, cache.read(identity, false)!!.result.durationMs)
        }
        withCache(databaseName()) { cache ->
            assertTrue(put(cache, result()))
            assertTrue(put(cache, result().copy(durationMs = 201_000L, wordLyrics = WORDS)))
            assertEquals(1, cache.snapshot(identity, null).stats.automaticEntries)
            assertEquals(201_000L, cache.read(identity, false)!!.result.durationMs)
        }
    }

    @Test fun vocalMetadataAloneUpgradesTheSameBodyAndPersistsAcrossRestart() {
        val name = databaseName()
        val raw = """<tt xmlns="http://www.w3.org/ns/ttml" xmlns:ttm="http://www.w3.org/ns/ttml#metadata"><head><metadata><ttm:agent xml:id="a" type="person"/><ttm:agent xml:id="b" type="person"/><ttm:agent xml:id="all" type="group"/></metadata></head><body><div><p begin="1" end="2" ttm:agent="a">Testalpha zero</p><p begin="80" end="81" ttm:agent="b">Testbeta one</p><p begin="190" end="191" ttm:agent="all">Testgamma two</p></div></body></tt>"""
        val duet = result().copy(ttmlLyrics = raw)
        withCache(name) { cache ->
            assertTrue(put(cache, result()))
            assertTrue(put(cache, duet))
            assertFalse(put(cache, result()))
            assertEquals(1, cache.snapshot(identity, null).stats.automaticEntries)
            assertAccounting(name, cache)
        }
        withCache(name) { cache ->
            val restored = cache.read(identity, false)!!.result
            assertEquals(raw, restored.ttmlLyrics)
            assertEquals(listOf(1, 2, 1), restored.timedLines().map { it.speakerSide })
            assertTrue(restored.timedLines().all { it.words.isEmpty() })
            assertTrue(cache.writeManual(identity, result()))
            assertFalse(put(cache, duet))
            assertEquals(LINES, cache.read(identity, false)!!.result.lyrics)
            assertEquals("", cache.read(identity, false)!!.result.ttmlLyrics)
        }
    }

    @Test fun allBodyTracksTtmlTypesIdentitySourceAndProofRoundTripAfterRestart() {
        val name = databaseName()
        val cases = listOf(
            result().copy(translatedLyrics = TRANSLATION, romanizedLyrics = ROMANIZATION,
                wordLyrics = WORDS, plainLyrics = "Synthetic static backup", backgroundLyrics = BACKGROUND,
                ttmlLyrics = TTML, source = "qq-word", identitySource = SOURCE_QQ),
            result().copy(lyrics = "", wordLyrics = WORDS),
            result().copy(lyrics = "", plainLyrics = "Synthetic static line one\nSynthetic static line two"),
            result().copy(lyrics = "", ttmlLyrics = TTML)
        ).mapIndexed { index, value ->
            val playback = identity.copy(track = "Synthetic format $index")
            playback to value.copy(candidateTrack = playback.track)
        }
        withCache(name) { cache ->
            cases.forEach { (playback, value) -> assertTrue(cache.writeAutomatic(playback, resolved(value, playback))) }
        }
        withCache(name) { cache ->
            cases.forEach { (playback, value) ->
                val entry = cache.read(playback, false)!!
                assertEquals(value.copy(lyricsKind = value.contentKind()), entry.result)
                assertEquals(resolved(value, playback).proof, entry.proof)
                assertTrue(LyricsCandidateSelector.isProofValid(playback.lookup(), entry.result, entry.proof!!))
            }
            val document = TtmlLyricsParser.parse(cache.read(cases.first().first, false)!!.result.ttmlLyrics)
            assertEquals("person", document.agentTypes.getValue("voice-a"))
            assertEquals("group", document.agentTypes.getValue("chorus"))
            assertTrue(document.lines.first().backgroundWords.isNotEmpty())
            assertAccounting(name, cache)
        }
    }

    @Test fun failedTransactionRollsBackBodyRefreshBytesAndManualUpdatesTogether() {
        val name = databaseName()
        val manualIdentity = identity.copy(track = "Synthetic manual")
        withCache(name) { cache ->
            assertTrue(put(cache, result()))
            assertTrue(cache.recordRefresh(identity, FIRST + INTERVAL))
            assertTrue(cache.writeManual(manualIdentity, result(manualIdentity)))
            val automatic = cache.read(identity, false)!!
            val manual = cache.read(manualIdentity, false)!!
            val stats = cache.snapshot(null, null).stats
            withDatabase(name) { database ->
                database.execSQL("CREATE TRIGGER synthetic_save_error BEFORE INSERT ON cache_meta " +
                    "BEGIN SELECT RAISE(ABORT, 'synthetic write failure'); END")
            }
            assertFalse(put(cache, result().copy(wordLyrics = WORDS)))
            assertFalse(cache.recordRefresh(identity, FIRST + 2 * INTERVAL))
            assertFalse(cache.writeManual(manualIdentity, result(manualIdentity).copy(lyrics = "[00:02]Changed synthetic text")))
            assertEquals(automatic, cache.read(identity, false))
            assertEquals(manual, cache.read(manualIdentity, false))
            assertEquals(stats, cache.snapshot(null, null).stats)
            assertAccounting(name, cache)
        }
        withCache(name) { cache ->
            assertEquals(LINES, cache.read(identity, false)!!.result.lyrics)
            assertEquals(1, cache.read(identity, false)!!.refreshAttempts)
            assertEquals(LINES, cache.read(manualIdentity, false)!!.result.lyrics)
        }
    }

    @Test fun manualCountLimitRejectsNewSelectionButNeverDropsExistingAdoptions() {
        val name = databaseName()
        val identities = (0 until 128).map { identity.copy(track = "Synthetic manual $it") }
        withCache(name) { cache ->
            identities.forEach { assertTrue(cache.writeManual(it, result(it))) }
            val rejected = identity.copy(track = "Synthetic manual overflow")
            assertFalse(cache.writeManual(rejected, result(rejected)))
            assertNull(cache.read(rejected, false))
            assertEquals(128, cache.snapshot(null, null).stats.manualEntries)
            identities.forEach { assertEquals(LINES, cache.read(it, false)!!.result.lyrics) }
            assertTrue(cache.writeManual(identities.first(), result(identities.first()).copy(lyrics = "[00:02]Updated synthetic adoption")))
            assertEquals(128, cache.snapshot(null, null).stats.manualEntries)
            assertEquals("[00:02]Updated synthetic adoption", cache.read(identities.first(), false)!!.result.lyrics)
            assertAccounting(name, cache)
        }
    }

    @Test fun quotaRejectionRestoresAutomaticVictimsAndEveryExistingManualBody() {
        val name = databaseName()
        val manualA = identity.copy(track = "Synthetic manual A")
        val manualB = identity.copy(track = "Synthetic manual B")
        withCache(name) { cache ->
            assertTrue(put(cache, result().copy(cover = "x".repeat(2_048))))
            assertTrue(cache.writeManual(manualA, result(manualA)))
            assertTrue(cache.writeManual(manualB, result(manualB)))
            fillCapacityWithSyntheticAccounting(name, manualB)
            val stats = cache.snapshot(null, null).stats
            val auto = cache.read(identity, false)!!
            val adoptedA = cache.read(manualA, false)!!
            val adoptedB = cache.read(manualB, false)!!
            val nextIdentity = identity.copy(track = "Synthetic new manual")
            val large = "[00:01]" + "Synthetic enlargement ".repeat(300)
            assertFalse(cache.writeManual(nextIdentity, result(nextIdentity).copy(lyrics = large)))
            assertFalse(cache.writeManual(manualA, result(manualA).copy(lyrics = large)))
            val nextAuto = identity.copy(track = "Synthetic new automatic")
            assertFalse(cache.writeAutomatic(nextAuto, resolved(result(nextAuto).copy(cover = "x".repeat(8_192)), nextAuto)))
            assertEquals(stats, cache.snapshot(null, null).stats)
            assertEquals(auto, cache.read(identity, false))
            assertEquals(adoptedA, cache.read(manualA, false))
            assertEquals(adoptedB, cache.read(manualB, false))
            assertTrue(cache.writeManual(nextIdentity, result(nextIdentity)))
            assertNull(cache.read(identity, false))
            assertEquals(adoptedA, cache.read(manualA, false))
            assertEquals(adoptedB, cache.read(manualB, false))
            assertEquals(3, cache.snapshot(null, null).stats.manualEntries)
            assertAccounting(name, cache, verifyPayloadSizes = false)
        }
    }

    @Test fun automaticQuotaTrimNeverTouchesManualAdoptionOrItsOwnNewBody() {
        val name = databaseName()
        val manual = identity.copy(track = "Synthetic protected manual")
        val next = identity.copy(track = "Synthetic next automatic")
        withCache(name) { cache ->
            assertTrue(put(cache, result().copy(cover = "x".repeat(2_048))))
            assertTrue(cache.writeManual(manual, result(manual)))
            fillCapacityWithSyntheticAccounting(name, manual)
            val adopted = cache.read(manual, false)!!
            assertTrue(cache.writeAutomatic(next, resolved(result(next), next)))
            assertNull(cache.read(identity, false))
            assertEquals(adopted, cache.read(manual, false))
            assertEquals(LINES, cache.read(next, false)!!.result.lyrics)
            assertEquals(1, cache.snapshot(null, null).stats.automaticEntries)
            assertAccounting(name, cache, verifyPayloadSizes = false)
        }
    }

    @Test fun failedOrInvalidResolutionDoesNotConsumeEffectiveAttemptsWhileValidFoundDoes() {
        val name = databaseName()
        val body = result()
        withCache(name) { assertTrue(put(it, body)) }
        val invalid = resolved(body).copy(proof = resolved(body).proof.copy(matcherPolicyVersion = -1))
        val outcomes = listOf(LyricsResolutionOutcome.NoMatch, LyricsResolutionOutcome.Cancelled,
            LyricsResolutionOutcome.RetryableFailure(LyricsFailureReason.NETWORK),
            LyricsResolutionOutcome.SourceFailure(LyricsFailureReason.SERVER),
            LyricsResolutionOutcome.Found(invalid), LyricsResolutionOutcome.Found(resolved(body)))
        outcomes.forEachIndexed { index, outcome ->
            val cache = LyricsCache(app, name)
            val runtime = ResolutionRuntime(cache, outcome)
            val engine = ContentLyricsEngine(app, { runtime }, Dispatchers.Unconfined, { _, _ -> null }, { })
            try {
                engine.start { }
                engine.update(ContentPorts.MediaSnapshot(true, false, "本机音乐", true, 1,
                    identity.track, identity.artist, true, true, null, "", identity.album,
                    identity.durationMs, 1_000L, 0L, 1f, "", ContentPorts.MediaSongIdentity.SONG))
                shadowOf(Looper.getMainLooper()).idle()
                assertEquals(1, runtime.requests)
                assertEquals(if (index == outcomes.lastIndex) 1 else 0, cache.read(identity, false)!!.refreshAttempts)
                assertEquals(LINES, cache.read(identity, false)!!.result.lyrics)
                assertAccounting(name, cache)
            } finally {
                engine.stop()
                shadowOf(Looper.getMainLooper()).idle()
                cache.close()
            }
        }
    }

    private class ResolutionRuntime(
        override val cache: LyricsCache,
        private val outcome: LyricsResolutionOutcome
    ) : LyricsEngineResources {
        var requests = 0
        override suspend fun resolveLyrics(query: LyricsLookup): LyricsResolutionOutcome { requests++; return outcome }
        override suspend fun resolveCover(query: LyricsLookup) = ""
        override fun cancelCurrent() = Unit
        override fun cancelAll() = Unit
        override fun close() = cache.close()
    }

    private fun result(playback: LyricsPlaybackIdentity = identity) = LyricsResult(
        lyrics = LINES, durationMs = playback.durationMs, source = SOURCE_QQ, sourceId = "synthetic-id",
        candidateTrack = playback.track, candidateArtist = playback.artist, candidateAlbum = playback.album,
        lyricsKind = LyricsKind.SYNCHRONIZED
    )

    private fun selection(value: LyricsResult, playback: LyricsPlaybackIdentity = identity) =
        LyricsCandidateSelector.selectCandidatesWithProof(playback.lookup(), listOf(value)).single()

    private fun resolved(value: LyricsResult, playback: LyricsPlaybackIdentity = identity) =
        ResolvedLyrics(value, selection(value, playback).proof)

    private fun put(cache: LyricsCache, value: LyricsResult, updatedAtMs: Long = FIRST) =
        cache.put(identity.track, identity.artist, identity.album, identity.durationMs, resolved(value), updatedAtMs)

    private fun databaseName() = "synthetic-refresh-${System.nanoTime()}.db"

    private fun withCache(name: String, block: (LyricsCache) -> Unit) = LyricsCache(app, name).use(block)

    private fun withDatabase(name: String, block: (SQLiteDatabase) -> Unit) =
        SQLiteDatabase.openDatabase(app.getDatabasePath(name).absolutePath, null, SQLiteDatabase.OPEN_READWRITE).use(block)

    private fun rewriteAutomaticPayload(name: String, change: (JSONObject) -> Unit) {
        withDatabase(name) { database ->
            database.beginTransaction()
            try {
                database.rawQuery("SELECT cache_key, payload_json FROM lyrics_cache", null).use { cursor ->
                    assertTrue(cursor.moveToFirst())
                    val key = cursor.getString(0)
                    val value = JSONObject(cursor.getString(1)).also(change).toString()
                    database.update("lyrics_cache", ContentValues().apply {
                        put("payload_json", value)
                        put("byte_size", entryBytes(key, value))
                    }, "cache_key = ?", arrayOf(key))
                }
                recount(database)
                database.setTransactionSuccessful()
            } finally { database.endTransaction() }
        }
    }

    private fun fillCapacityWithSyntheticAccounting(name: String, manual: LyricsPlaybackIdentity) {
        // Exercise persisted quota accounting without allocating a 128 MiB synthetic lyric body.
        withDatabase(name) { database ->
            val key = LyricsCache.key(manual.track, manual.artist, manual.album, manual.durationMs)
            val storedSize = database.rawQuery("SELECT byte_size FROM lyrics_manual_override WHERE cache_key = ?",
                arrayOf(key)).use { cursor -> assertTrue(cursor.moveToFirst()); cursor.getLong(0) }
            val total = rowBytes(database)
            database.update("lyrics_manual_override", ContentValues().apply {
                put("byte_size", storedSize + LyricsCachePolicy.MAX_BYTES - total - 1)
            }, "cache_key = ?", arrayOf(key))
            recount(database)
        }
    }

    private fun assertAccounting(name: String, cache: LyricsCache, verifyPayloadSizes: Boolean = true) {
        withDatabase(name) { database ->
            val sum = rowBytes(database)
            val counter = database.rawQuery("SELECT total_bytes FROM cache_meta WHERE meta_id = 1", null)
                .use { cursor -> assertTrue(cursor.moveToFirst()); cursor.getLong(0) }
            assertEquals(sum, counter)
            assertEquals(sum, cache.snapshot(null, null).stats.totalBytes)
            assertTrue(sum <= LyricsCachePolicy.MAX_BYTES)
            if (verifyPayloadSizes) {
                for (table in listOf("lyrics_cache", "lyrics_manual_override")) {
                    database.rawQuery("SELECT cache_key, payload_json, byte_size FROM $table", null).use { cursor ->
                        while (cursor.moveToNext()) assertEquals(entryBytes(cursor.getString(0), cursor.getString(1)), cursor.getLong(2))
                    }
                }
            }
        }
    }

    private fun entryBytes(key: String, payload_json: String): Long =
        key.toByteArray(StandardCharsets.UTF_8).size.toLong() + payload_json.toByteArray(StandardCharsets.UTF_8).size + 256L

    private fun rowBytes(database: SQLiteDatabase): Long = listOf("lyrics_cache", "lyrics_manual_override").sumOf { table ->
        database.rawQuery("SELECT COALESCE(SUM(byte_size), 0) FROM $table", null)
            .use { cursor -> cursor.moveToFirst(); cursor.getLong(0) }
    }

    private fun recount(database: SQLiteDatabase) = database.execSQL(
        "UPDATE cache_meta SET total_bytes = ? WHERE meta_id = 1", arrayOf<Any>(rowBytes(database)))

    private companion object {
        const val FIRST = 1_000L
        const val INTERVAL = 6L * 60L * 60L * 1_000L
        const val LINES = "[00:01]Testalpha zero\n[01:20]Testbeta one\n[03:10]Testgamma two"
        const val WORDS = "[1000,1000](1000,400,0)Testalpha (1500,400,0)zero\n" +
            "[80000,1000](80000,400,0)Testbeta (80500,400,0)one\n" +
            "[190000,1000](190000,400,0)Testgamma (190500,400,0)two"
        const val TRANSLATION = "[00:01]\u5408\u6210\u7ffb\u8bd1\u7532\n[01:20]\u5408\u6210\u7ffb\u8bd1\u4e59\n[03:10]\u5408\u6210\u7ffb\u8bd1\u4e19"
        const val ROMANIZATION = "[00:01]synthetic roma a\n[01:20]synthetic roma b\n[03:10]synthetic roma c"
        const val BACKGROUND = "[2000,1000](2000,1000,0)Synthetic background"
        val TTML = """
            <tt xmlns="http://www.w3.org/ns/ttml" xmlns:ttm="http://www.w3.org/ns/ttml#metadata">
              <head><metadata><ttm:agent xml:id="voice-a" type="person"/><ttm:agent xml:id="chorus" type="group"/></metadata></head>
              <body><div>
                <p begin="1s" end="2s" ttm:agent="voice-a"><span begin="1s" end="1.4s">Testalpha </span><span begin="1.5s" end="1.9s">zero</span><span ttm:role="x-bg"><span begin="2s" end="3s">Synthetic echo</span></span><span ttm:role="x-translation">Synthetic translation</span><span ttm:role="x-roman">synthetic roma</span></p>
                <p begin="80s" end="81s" ttm:agent="chorus">Testbeta one</p>
                <p begin="190s" end="191s" ttm:agent="voice-a">Testgamma two</p>
              </div></body>
            </tt>
        """.trimIndent()
    }
}
