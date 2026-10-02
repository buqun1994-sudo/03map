package com.icar03.content.runtime.lyrics

import android.graphics.Bitmap
import android.os.Looper
import com.autonavi.amapauto.content.ContentPorts
import kotlinx.coroutines.Dispatchers
import org.junit.After
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import kotlin.coroutines.Continuation
import kotlin.coroutines.resume
import kotlin.coroutines.suspendCoroutine

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentLyricsEngineTest {
    private val engines = mutableListOf<ContentLyricsEngine>()
    @After fun cleanup() { engines.forEach { it.stop() }; drain() }

    @Test fun constructionAndUnstartedUpdatesCreateNoRuntimeOrRequests() {
        var creations = 0
        val engine = ContentLyricsEngine(RuntimeEnvironment.getApplication(),
            { creations++; Runtime() }, Dispatchers.Unconfined, { _, _ -> null }).also(engines::add)
        engine.update(media())
        drain()
        assertEquals(0, creations)
        engine.start { }
        assertEquals(1, creations)
    }

    @Test fun embeddedLyricsAreParsedAndCachedBeforeAnyAutomaticNetworkLookup() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media(embedded = "[00:01.0]第一句\n[00:02.0]第二句"))
        drain()
        assertEquals(0, runtime.lookups.size)
        assertEquals(1, runtime.cache.writes)
        assertEquals(ContentPorts.LyricsSnapshot.READY, snapshots.last().status)
        assertEquals(listOf("第一句", "第二句"), snapshots.last().lines.map { it.text })
    }

    @Test fun duplicatePlaybackFramesAndEnvelopeFormattingDoNotStartAnotherLookup() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media())
        drain()
        val publications = snapshots.size
        repeat(5) { engine.update(media(position = 1_000L + it)) }
        drain()
        assertEquals(publications, snapshots.size)
        val newest = media(title = " Song ", generation = 2, playing = false, position = 2_000L)
        engine.update(newest)
        drain()
        assertEquals(1, runtime.lookups.size)
        runtime.finishLyrics("Song")
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.READY, snapshots.last().status)
        assertEquals(newest.recordingKey(), snapshots.last().recordingKey)
        assertEquals(2, snapshots.last().mediaGeneration)
    }

    @Test fun aSongChangeCancelsTheOldRequestAndRejectsLateBodyAndCacheWrite() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media(title = "Old"))
        drain()
        engine.update(media(title = "New", generation = 2))
        drain()
        assertEquals(listOf("Old", "New"), runtime.lookups.map { it.track })
        assertTrue(runtime.cancelled > 0)
        runtime.finishLyrics("New")
        drain()
        val count = snapshots.size
        runtime.finishLyrics("Old") // Deliberately ignores coroutine cancellation to model a late publisher.
        drain()
        assertEquals(count, snapshots.size)
        assertEquals(listOf("New lyric"), snapshots.last().lines.map { it.text })
        assertEquals(1, runtime.cache.writes)
        assertTrue(runtime.cache.entries.keys.all { it.track == "New" })
    }

    @Test fun aLateBoundaryCandidateIsRecheckedAgainstTheNewestRealDuration() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media())
        drain()
        val oldQuery = runtime.lookups.single()
        val oldCandidate = found(oldQuery).resolved.result.copy(durationMs = 202_000L)
        val oldProof = LyricsCandidateSelector.selectCandidatesWithProof(oldQuery, listOf(oldCandidate)).single().proof
        engine.update(media(duration = 198_500L, generation = 2)) // Within the query revision threshold.
        drain()
        assertEquals(1, runtime.lookups.size)
        runtime.pendingLyrics.remove("Song")!!.resume(
            LyricsResolutionOutcome.Found(ResolvedLyrics(oldCandidate, oldProof)))
        drain()
        assertEquals(2, runtime.lookups.size)
        assertEquals(198_500L, runtime.lookups.last().durationMs)
        assertEquals(0, runtime.cache.writes)
        assertTrue(snapshots.none { it.status == ContentPorts.LyricsSnapshot.READY })
    }

    @Test fun stopRejectsLateResultsAndRestartReadsTheSamePersistedCache() {
        val cache = MemoryCache().apply {
            val query = LyricsLookup("Cached", "Artist", "Album", 200_000L)
            val resolved = found(query).resolved
            entries[LyricsPlaybackIdentity(query.track, query.artist, query.album, query.durationMs)] =
                LyricsCache.Entry(resolved.result, resolved.proof, System.currentTimeMillis())
        }
        val runtimes = mutableListOf<Runtime>()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = ContentLyricsEngine(RuntimeEnvironment.getApplication(),
            { Runtime(cache).also(runtimes::add) }, Dispatchers.Unconfined, { _, _ -> null }).also(engines::add)
        engine.start(snapshots::add)
        engine.update(media(title = "Cached"))
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.READY, snapshots.last().status)
        engine.update(media(title = "Pending", generation = 2))
        drain()
        engine.stop()
        val count = snapshots.size
        runtimes.first().finishLyrics("Pending")
        drain()
        assertEquals(count, snapshots.size)
        assertTrue(runtimes.first().closed)
        assertEquals(0, cache.writes)
        engine.start(snapshots::add)
        engine.update(media(title = "Cached", generation = 3))
        drain()
        assertEquals(2, runtimes.size)
        assertTrue(runtimes.last().lookups.isEmpty())
        assertEquals(ContentPorts.LyricsSnapshot.READY, snapshots.last().status)
        assertEquals(3, snapshots.last().mediaGeneration)
    }

    @Test fun unknownDurationNeverWeakensAutomaticAdmission() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media(duration = 0L))
        drain()
        assertTrue(runtime.lookups.isEmpty())
        assertEquals(ContentPorts.LyricsSnapshot.UNAVAILABLE, snapshots.last().status)
        assertTrue(snapshots.last().lines.isEmpty())
    }

    @Test fun missingProofOrUnrenderableBodiesNeverBecomeReadyOrPersisted() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media(title = "Invalid"))
        drain()
        val query = runtime.lookups.single()
        val outcome = found(query)
        runtime.pendingLyrics.remove("Invalid")!!.resume(outcome.copy(resolved = outcome.resolved.copy(
            proof = outcome.resolved.proof.copy(matcherPolicyVersion = -1))))
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.UNAVAILABLE, snapshots.last().status)
        assertEquals(0, runtime.cache.writes)
        engine.update(media(title = "Credits", generation = 2))
        drain()
        val credits = found(runtime.lookups.last())
        runtime.pendingLyrics.remove("Credits")!!.resume(credits.copy(resolved = credits.resolved.copy(
            result = credits.resolved.result.copy(lyrics = "[00:01.0]作词：作者"))))
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.UNAVAILABLE, snapshots.last().status)
        assertEquals(0, runtime.cache.writes)
    }

    @Test fun nativeArtworkWinsOverALateFallbackAndNoPublishedBitmapIsRecycled() {
        val runtime = Runtime(waitForCover = true)
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val fallback = Bitmap.createBitmap(2, 2, Bitmap.Config.ARGB_8888)
        val native = Bitmap.createBitmap(2, 2, Bitmap.Config.ARGB_8888)
        var loads = 0
        val engine = ContentLyricsEngine(RuntimeEnvironment.getApplication(), { runtime },
            Dispatchers.Unconfined, { _, _ -> loads++; fallback }).also(engines::add)
        engine.start(snapshots::add)
        engine.update(media())
        drain()
        engine.update(media(artwork = native))
        drain()
        runtime.pendingCover!!.resume("https://example.invalid/cover")
        drain()
        assertNull(snapshots.last().artwork)
        assertFalse(native.isRecycled)
        assertFalse(fallback.isRecycled)
        assertEquals(0, loads)
    }

    @Test fun provisionalShowsImmediatelyButOnlyFinalBodyIsPersisted() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media())
        drain()
        val query = runtime.lookups.single()
        runtime.provisional.getValue("Song")(found(query))
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.READY, snapshots.last().status)
        assertEquals(0, runtime.cache.writes)
        val result = found(query).resolved.result.copy(wordLyrics = "[1000,600](1000,600,0)Song lyric")
        runtime.pendingLyrics.remove("Song")!!.resume(found(query, result))
        drain()
        assertEquals(1, runtime.cache.writes)
        assertEquals(1, snapshots.last().lines.single().words.size)
        assertEquals(1_600L, snapshots.last().lines.single().words.single().endTimeMs)
    }

    @Test fun unchangedFinalStillPersistsTheFirstProvisional() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media())
        drain()
        runtime.provisional.getValue("Song")(found(runtime.lookups.single()))
        drain()
        runtime.finishLyrics("Song")
        drain()
        assertEquals(1, runtime.cache.writes)
        assertEquals(1, runtime.cache.entries.size)
    }

    @Test fun aLateProvisionalFromThePreviousRecordingIsRejected() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media(title = "Old"))
        drain()
        val callback = runtime.provisional.getValue("Old")
        engine.update(media(title = "New", generation = 2))
        drain()
        val publications = snapshots.size
        callback(found(runtime.lookups.first()))
        drain()
        assertEquals(publications, snapshots.size)
        assertTrue(snapshots.last().lines.isEmpty())
        assertEquals(0, runtime.cache.writes)
    }

    @Test fun aLowerQualityRefreshCannotReplaceTheAlreadyDisplayedWords() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val query = LyricsLookup("Song", "Artist", "Album", 200_000L)
        val identity = LyricsPlaybackIdentity(query.track, query.artist, query.album, query.durationMs)
        val previous = found(query, found(query).resolved.result.copy(
            wordLyrics = "[1000,600](1000,600,0)Song lyric")).resolved
        runtime.cache.entries[identity] = LyricsCache.Entry(previous.result, previous.proof, 0L)
        val engine = engine(runtime, snapshots)
        engine.update(media())
        drain()
        assertEquals(1, snapshots.last().lines.single().words.size)
        runtime.finishLyrics("Song")
        drain()
        assertEquals(0, runtime.cache.writes)
        assertEquals(1, runtime.cache.refreshes)
        assertEquals(previous.result, runtime.cache.entries.getValue(identity).result)
        assertEquals(1, snapshots.last().lines.single().words.size)
    }

    @Test fun aManualAdoptionDuringAnAutomaticRoundWinsTheFinalCommit() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media())
        drain()
        val query = runtime.lookups.single()
        val identity = LyricsPlaybackIdentity(query.track, query.artist, query.album, query.durationMs)
        val manual = found(query).resolved.result.copy(lyrics = "[00:01.0]Manual adoption")
        runtime.cache.entries[identity] = LyricsCache.Entry(manual, null, System.currentTimeMillis(),
            selection = LyricsCacheSelection.MANUAL)
        runtime.finishLyrics("Song")
        drain()
        assertEquals(0, runtime.cache.writes)
        assertEquals("Manual adoption", snapshots.last().lines.single().text)
    }

    @Test fun plainTextIsReadyButNeverInventsATimeline() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media())
        drain()
        val query = runtime.lookups.single()
        val result = found(query).resolved.result.copy(lyrics = "", plainLyrics = "One line\nAnother line")
        runtime.pendingLyrics.remove("Song")!!.resume(found(query, result))
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.READY, snapshots.last().status)
        assertFalse(snapshots.last().timed)
        assertEquals(listOf("One line", "Another line"), snapshots.last().lines.map { it.text })
        assertTrue(snapshots.last().lines.all { it.words.isEmpty() && it.endTimeMs == -1L })
        assertEquals(1, runtime.cache.writes)
    }

    @Test fun ttmlPreservesDuetAndBackgroundEndBeyondTheNextMainLine() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media())
        drain()
        val query = runtime.lookups.single()
        val raw = """<tt xmlns="http://www.w3.org/ns/ttml" xmlns:ttm="http://www.w3.org/ns/ttml#metadata">
            <head><metadata><ttm:agent xml:id="a" type="person"/><ttm:agent xml:id="b" type="person"/></metadata></head>
            <body><div><p begin="1" end="2" ttm:agent="a"><span begin="1" end="2.2">Main</span><span ttm:role="x-bg" begin="2.5" end="4.5">Echo</span></p>
            <p begin="3" end="4" ttm:agent="b">Next</p></div></body></tt>"""
        runtime.pendingLyrics.remove("Song")!!.resume(found(query, found(query).resolved.result.copy(lyrics = "", ttmlLyrics = raw)))
        drain()
        val rows = snapshots.last().lines
        assertTrue(snapshots.last().timed)
        assertEquals(listOf(1, 2), rows.map { it.speakerSide })
        assertEquals(2_000L, rows.first().endTimeMs)
        assertEquals(2_200L, rows.first().words.single().endTimeMs)
        assertEquals(4_500L, rows.first().backgroundWords.single().endTimeMs)
    }

    @Test fun coverRetryDecodesTheSecondImageAndRestartUsesThePersistedBitmap() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val waits = mutableListOf<Long>()
        val loads = mutableListOf<String>()
        val bitmap = Bitmap.createBitmap(4, 4, Bitmap.Config.ARGB_8888).apply { eraseColor(0xff2c8f63.toInt()) }
        runtime.coverOptions = { if (runtime.coverRounds == 1) emptyList() else listOf("broken", "good") }
        val context = RuntimeEnvironment.getApplication()
        val engine = ContentLyricsEngine(context, { runtime }, Dispatchers.Unconfined,
            { url, _ -> loads += url; if (url == "good") bitmap else null }, { waits += it })
            .also { engines += it; it.start(snapshots::add) }
        val current = media(title = "CoverRetrySynthetic")
        engine.update(current)
        drain()
        assertEquals(listOf(300L), waits)
        assertEquals(listOf("broken", "good"), loads)
        assertSame(bitmap, snapshots.last().artwork)
        engine.stop()
        drain()
        val offline = Runtime().apply { coverOptions = { error("Persisted cover must avoid a network request") } }
        val restored = mutableListOf<ContentPorts.LyricsSnapshot>()
        val restart = ContentLyricsEngine(context, { offline }, Dispatchers.Unconfined,
            { _, _ -> error("Persisted cover must avoid image download") }, { })
            .also { engines += it; it.start(restored::add) }
        restart.update(current)
        drain()
        assertEquals(0, offline.coverRounds)
        assertEquals(bitmap.getPixel(0, 0), restored.last().artwork!!.getPixel(0, 0))
        assertFalse(bitmap.isRecycled)
    }

    private fun engine(runtime: Runtime, snapshots: MutableList<ContentPorts.LyricsSnapshot>) =
        ContentLyricsEngine(RuntimeEnvironment.getApplication(), { runtime }, Dispatchers.Unconfined,
            { _, _ -> null }).also { engines += it; it.start(snapshots::add) }

    private fun drain() = shadowOf(Looper.getMainLooper()).idle()

    private fun media(title: String = "Song", generation: Int = 1, playing: Boolean = true,
        duration: Long = 200_000L, position: Long = -1L, embedded: String = "", artwork: Bitmap? = null) =
        ContentPorts.MediaSnapshot(true, false, "本机音乐", playing, generation, title, "Artist", true, true,
            artwork, "", "Album", duration, position, 0L, if (playing) 1f else 0f, embedded,
            ContentPorts.MediaSongIdentity.SONG)

    private class Runtime(override val cache: MemoryCache = MemoryCache(), private val waitForCover: Boolean = false) :
        LyricsEngineResources {
        val lookups = mutableListOf<LyricsLookup>()
        val pendingLyrics = linkedMapOf<String, Continuation<LyricsResolutionOutcome>>()
        val provisional = linkedMapOf<String, (LyricsResolutionOutcome.Found) -> Unit>()
        var coverRounds = 0
        var coverOptions: (() -> List<String>)? = null
        var pendingCover: Continuation<String>? = null
        var cancelled = 0
        var closed = false
        override suspend fun resolveLyrics(query: LyricsLookup): LyricsResolutionOutcome = suspendCoroutine {
            lookups += query
            pendingLyrics[query.track] = it
        }
        override suspend fun resolveLyricsProgressive(query: LyricsLookup,
            onProvisional: (LyricsResolutionOutcome.Found) -> Unit): LyricsResolutionOutcome {
            provisional[query.track] = onProvisional
            return resolveLyrics(query)
        }
        override suspend fun resolveCovers(query: LyricsLookup): List<String> {
            coverRounds++
            return coverOptions?.invoke() ?: super.resolveCovers(query)
        }
        override suspend fun resolveCover(query: LyricsLookup): String = if (waitForCover) {
            suspendCoroutine { pendingCover = it }
        } else ""
        fun finishLyrics(track: String) = pendingLyrics.remove(track)!!.resume(found(lookups.first { it.track == track }))
        override fun cancelCurrent() { cancelled++ }
        override fun cancelAll() { cancelled++ }
        override fun close() { closed = true }
    }

    private class MemoryCache : LyricsPlaybackCache {
        val entries = linkedMapOf<LyricsPlaybackIdentity, LyricsCache.Entry>()
        var writes = 0
        var refreshes = 0
        override fun recordRefresh(identity: LyricsPlaybackIdentity, nowMs: Long): Boolean {
            refreshes++
            return true
        }
        override fun read(identity: LyricsPlaybackIdentity, recordUse: Boolean) = entries[identity]
        override fun writeAutomatic(identity: LyricsPlaybackIdentity, resolved: ResolvedLyrics): Boolean {
            if (entries[identity]?.selection == LyricsCacheSelection.MANUAL ||
                !LyricsCandidateSelector.isProofValid(identity.lookup(), resolved.result, resolved.proof)) return false
            writes++
            entries[identity] = LyricsCache.Entry(resolved.result, resolved.proof, System.currentTimeMillis())
            return true
        }
        override fun writeManual(identity: LyricsPlaybackIdentity, result: LyricsResult) = false
        override fun clearManual(identity: LyricsPlaybackIdentity) = false
        override fun clearCurrent(identity: LyricsPlaybackIdentity) = false
        override fun snapshot(identity: LyricsPlaybackIdentity?, currentEntry: LyricsCache.Entry?) =
            LyricsCacheSnapshot(LyricsCacheStats(0, 0, 0, LyricsCachePolicy.MAX_BYTES), null)
    }

    companion object {
        private fun found(query: LyricsLookup): LyricsResolutionOutcome.Found {
            val result = LyricsResult(lyrics = "[00:01.0]${query.track} lyric", durationMs = query.durationMs,
                source = SOURCE_QQ, sourceId = query.track, candidateTrack = query.track,
                candidateArtist = query.artist, candidateAlbum = query.album, lyricsKind = LyricsKind.SYNCHRONIZED)
            return found(query, result)
        }

        private fun found(query: LyricsLookup, result: LyricsResult): LyricsResolutionOutcome.Found {
            val proof = LyricsCandidateSelector.selectCandidatesWithProof(query, listOf(result)).single().proof
            return LyricsResolutionOutcome.Found(ResolvedLyrics(result, proof))
        }
    }
}
