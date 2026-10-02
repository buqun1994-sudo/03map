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
        var pendingCover: Continuation<String>? = null
        var cancelled = 0
        var closed = false
        override suspend fun resolveLyrics(query: LyricsLookup): LyricsResolutionOutcome = suspendCoroutine {
            lookups += query
            pendingLyrics[query.track] = it
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
        override fun read(identity: LyricsPlaybackIdentity, recordUse: Boolean) = entries[identity]
        override fun writeAutomatic(identity: LyricsPlaybackIdentity, resolved: ResolvedLyrics): Boolean {
            if (!LyricsCandidateSelector.isProofValid(identity.lookup(), resolved.result, resolved.proof)) return false
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
            val proof = LyricsCandidateSelector.selectCandidatesWithProof(query, listOf(result)).single().proof
            return LyricsResolutionOutcome.Found(ResolvedLyrics(result, proof))
        }
    }
}
