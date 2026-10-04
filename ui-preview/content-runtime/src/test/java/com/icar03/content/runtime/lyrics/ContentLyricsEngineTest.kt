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
        assertEquals(ContentPorts.LyricsSnapshot.NO_MATCH, snapshots.last().status)
        assertEquals(0, runtime.cache.writes)
        engine.update(media(title = "Credits", generation = 2))
        drain()
        val credits = found(runtime.lookups.last())
        runtime.pendingLyrics.remove("Credits")!!.resume(credits.copy(resolved = credits.resolved.copy(
            result = credits.resolved.result.copy(lyrics = "[00:01.0]作词：作者"))))
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.NO_MATCH, snapshots.last().status)
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

    @Test fun provisionalPersistsImmediatelyAndMaterialFinalUpgradeWritesAgain() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media())
        drain()
        val query = runtime.lookups.single()
        runtime.provisional.getValue("Song")(found(query))
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.READY, snapshots.last().status)
        assertEquals(1, runtime.cache.writes)
        val result = found(query).resolved.result.copy(wordLyrics = "[1000,600](1000,600,0)Song lyric")
        runtime.pendingLyrics.remove("Song")!!.resume(found(query, result))
        drain()
        assertEquals(2, runtime.cache.writes)
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

    @Test fun coldCacheFinalLineTimingWithHigherScoreRetainsAndPersistsTheVisibleProvisionalBody() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media(position = 120_000L))
        drain()
        val query = runtime.lookups.single()
        val provisional = found(query, found(query).resolved.result.copy(
            lyrics = "[00:01]Opening lyric\n[00:10]Visible lyric\n[00:30]Ending lyric"))
        runtime.provisional.getValue("Song")(provisional)
        drain()
        val visible = snapshots.last().lines
        val publications = snapshots.size
        val final = found(query, provisional.resolved.result.copy(source = SOURCE_NETEASE,
            sourceId = "another-body", lyrics = "[00:01]Opening lyric\n[01:30]Visible lyric\n[03:10]Ending lyric"))
        runtime.pendingLyrics.remove("Song")!!.resume(final)
        drain()
        assertSame(visible, snapshots.last().lines)
        assertEquals(publications, snapshots.size)
        assertEquals(provisional.resolved.result, runtime.cache.entries.values.single().result)
        assertEquals(1, runtime.cache.writes)
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

    @Test fun progressiveDuetMetadataUpgradesAndSurvivesACacheRestart() {
        val runtime = Runtime()
        val snapshots = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, snapshots)
        engine.update(media())
        drain()
        val query = runtime.lookups.single()
        val plain = found(query).resolved.result.copy(lyrics = "[00:01]First voice\n[00:03]Second voice\n[00:05]Shared voice")
        runtime.provisional.getValue("Song")(found(query, plain))
        drain()
        assertEquals(listOf(0, 0, 0), snapshots.last().lines.map { it.speakerSide })
        val raw = """<tt xmlns="http://www.w3.org/ns/ttml" xmlns:ttm="http://www.w3.org/ns/ttml#metadata"><head><metadata><ttm:agent xml:id="a" type="person"/><ttm:agent xml:id="b" type="person"/><ttm:agent xml:id="all" type="group"/></metadata></head><body><div><p begin="1" end="2" ttm:agent="a">First voice</p><p begin="3" end="4" ttm:agent="b">Second voice</p><p begin="5" end="6" ttm:agent="all">Shared voice</p></div></body></tt>"""
        runtime.pendingLyrics.remove("Song")!!.resume(found(query, plain.copy(ttmlLyrics = raw)))
        drain()
        assertEquals(listOf(1, 2, 1), snapshots.last().lines.map { it.speakerSide })
        assertEquals(listOf(1_000L, 3_000L, 5_000L), snapshots.last().lines.map { it.timeMs })
        assertTrue(snapshots.last().lines.all { it.words.isEmpty() })
        val identity = LyricsPlaybackIdentity(query.track, query.artist, query.album, query.durationMs)
        assertEquals(raw, runtime.cache.entries.getValue(identity).result.ttmlLyrics)
        engine.stop()
        val restartedRuntime = Runtime(runtime.cache)
        val restartedFrames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val restarted = engine(restartedRuntime, restartedFrames)
        restarted.update(media(generation = 2))
        drain()
        assertEquals(listOf(1, 2, 1), restartedFrames.last().lines.map { it.speakerSide })
        assertTrue(restartedRuntime.lookups.isEmpty())
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

    @Test fun nativeArtworkPersistsAndRestoresWithoutNetworkAfterRestart() {
        val native = Bitmap.createBitmap(1024, 640, Bitmap.Config.ARGB_8888).apply { eraseColor(0xff367f52.toInt()) }
        val current = media(title = "NativeCacheSynthetic", artwork = native)
        val first = mutableListOf<ContentPorts.LyricsSnapshot>()
        val runtime = Runtime().apply { coverOptions = { error("native art must bypass network") } }
        val original = engine(runtime, first)
        original.update(current)
        drain()
        assertFalse("native shared bitmap is never recycled", native.isRecycled)
        assertEquals(0, runtime.coverRounds)
        original.stop()
        drain()
        val offline = Runtime().apply { coverOptions = { error("native persisted art must bypass network") } }
        val restored = mutableListOf<ContentPorts.LyricsSnapshot>()
        val restarted = engine(offline, restored)
        restarted.update(media(title = "NativeCacheSynthetic"))
        drain()
        val cached = restored.last().artwork!!
        assertEquals(512, cached.width)
        assertEquals(320, cached.height)
        assertEquals(native.getPixel(0, 0), cached.getPixel(0, 0))
        assertFalse(native.isRecycled)
        assertEquals(0, offline.coverRounds)
    }

    @Test fun visibleProvisionalSurvivesStopAndSameRecordingResumeWithoutLoading() {
        val cache = MemoryCache()
        val runtimes = mutableListOf<Runtime>()
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = ContentLyricsEngine(RuntimeEnvironment.getApplication(),
            { Runtime(cache).also(runtimes::add) }, Dispatchers.Unconfined, { _, _ -> null }).also(engines::add)
        engine.start(frames::add)
        engine.update(media(title = "Warm"))
        drain()
        val first = runtimes.first()
        first.provisional.getValue("Warm")(found(first.lookups.single()))
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.READY, frames.last().status)
        assertEquals("provisional writes before the final network round", 1, cache.writes)
        val body = frames.last().lines.map { it.text }
        engine.stop()
        drain()
        assertTrue(first.closed)
        frames.clear()
        engine.start(frames::add)
        assertTrue("no old song is emitted before a fresh media snapshot", frames.isEmpty())
        engine.update(media(title = "Warm", generation = 2))
        drain()
        assertTrue(frames.isNotEmpty())
        assertTrue("same recording never becomes LOADING/empty", frames.all { it.status == ContentPorts.LyricsSnapshot.READY && it.lines.isNotEmpty() })
        assertEquals(body, frames.last().lines.map { it.text })
        assertTrue(runtimes.last().lookups.isEmpty())
        val publicationCount = frames.size
        first.finishLyrics("Warm")
        drain()
        assertEquals("retired final result cannot overwrite resumed content", publicationCount, frames.size)
        assertEquals(1, cache.writes)
    }

    @Test fun unavailableResourcesOnResumeCannotDowngradeAnAdmittedSameRecordingBody() {
        val runtime = Runtime()
        var creations = 0
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = ContentLyricsEngine(RuntimeEnvironment.getApplication(), {
            if (creations++ == 0) runtime else error("synthetic temporary resource failure")
        }, Dispatchers.Unconfined, { _, _ -> null }).also(engines::add)
        engine.start(frames::add)
        engine.update(media(title = "ResourceWarm"))
        drain()
        runtime.finishLyrics("ResourceWarm")
        drain()
        val body = frames.last().lines.map { it.text }
        engine.stop()
        drain()
        frames.clear()
        engine.start(frames::add)
        assertTrue(frames.isEmpty())
        engine.update(media(title = "ResourceWarm", generation = 2))
        drain()
        assertTrue(frames.isNotEmpty())
        assertTrue(frames.all { it.status == ContentPorts.LyricsSnapshot.READY && it.lines.map { row -> row.text } == body })
    }

    @Test fun resumedDifferentRecordingNeverEmitsTheRetainedBody() {
        val runtimes = mutableListOf<Runtime>()
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = ContentLyricsEngine(RuntimeEnvironment.getApplication(),
            { Runtime().also(runtimes::add) }, Dispatchers.Unconfined, { _, _ -> null }).also(engines::add)
        engine.start(frames::add)
        engine.update(media(title = "Old body"))
        drain()
        runtimes.first().finishLyrics("Old body")
        drain()
        engine.stop()
        drain()
        frames.clear()
        engine.start(frames::add)
        engine.update(media(title = "New body", generation = 2))
        drain()
        assertTrue(frames.isNotEmpty())
        assertTrue(frames.all { it.recordingKey == media(title = "New body", generation = 2).recordingKey() })
        assertTrue(frames.all { it.lines.none { row -> row.text.contains("Old body") } })
        assertEquals(listOf("New body"), runtimes.last().lookups.map { it.track })
    }

    @Test fun stopDrainsQueuedProvisionalWriteBeforeClosingItsRuntime() {
        val dispatcher = QueuedDispatcher()
        val runtime = Runtime()
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = ContentLyricsEngine(RuntimeEnvironment.getApplication(), { runtime }, dispatcher,
            { _, _ -> null }).also(engines::add)
        engine.start(frames::add)
        engine.update(media(title = "Queued"))
        dispatcher.runAll(); drain(); dispatcher.runAll(); drain()
        runtime.provisional.getValue("Queued")(found(runtime.lookups.single()))
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.READY, frames.last().status)
        assertEquals(0, runtime.cache.writes)
        engine.stop()
        drain()
        dispatcher.runLast() // Force resource retirement ahead of the queued persistence worker.
        assertFalse("close must wait for admitted write", runtime.closed)
        dispatcher.runAll(); drain(); dispatcher.runAll(); drain()
        assertEquals(1, runtime.cache.writes)
        assertTrue(runtime.closed)
    }

    @Test fun completedNoMatchAndInvalidMetadataAreNotNetworkErrors() {
        for (outcome in listOf(LyricsResolutionOutcome.NoMatch, LyricsResolutionOutcome.InvalidMetadata)) {
            val runtime = Runtime()
            val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
            val engine = engine(runtime, frames)
            engine.update(media())
            drain()
            runtime.pendingLyrics.remove("Song")!!.resume(outcome)
            drain()
            assertEquals(ContentPorts.LyricsSnapshot.NO_MATCH, frames.last().status)
            assertTrue(frames.last().lines.isEmpty())
            assertEquals(0, runtime.cache.writes)
            assertEquals(0, runtime.cache.refreshes)
        }
    }

    @Test fun typedRetryableAndSourceFailuresBecomeNetworkErrorOnlyWithoutAnAdmittedBody() {
        for (outcome in networkFailures()) {
            val runtime = Runtime()
            val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
            val engine = engine(runtime, frames)
            engine.update(media())
            drain()
            runtime.pendingLyrics.remove("Song")!!.resume(outcome)
            drain()
            assertEquals(ContentPorts.LyricsSnapshot.NETWORK_ERROR, frames.last().status)
            assertTrue(frames.last().lines.isEmpty())
            assertEquals(0, runtime.cache.writes)
            assertEquals(0, runtime.cache.refreshes)
        }
    }

    @Test fun cachedAndProvisionalBodiesRemainReadyAfterNetworkFailureWithoutSpendingRefreshBudget() {
        for (cached in listOf(false, true)) for (outcome in networkFailures()) {
            val runtime = Runtime()
            val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
            val query = LyricsLookup("Song", "Artist", "Album", 200_000L)
            if (cached) {
                val resolved = found(query).resolved
                runtime.cache.entries[LyricsPlaybackIdentity(query.track, query.artist, query.album, query.durationMs)] =
                    LyricsCache.Entry(resolved.result, resolved.proof, 0L)
            }
            val engine = engine(runtime, frames)
            engine.update(media())
            drain()
            if (!cached) {
                runtime.provisional.getValue("Song")(found(query))
                drain()
            }
            val visible = frames.last().lines
            val publications = frames.size
            runtime.pendingLyrics.remove("Song")!!.resume(outcome)
            drain()
            assertEquals(ContentPorts.LyricsSnapshot.READY, frames.last().status)
            assertSame(visible, frames.last().lines)
            assertEquals(publications, frames.size)
            assertEquals(if (cached) 0 else 1, runtime.cache.writes)
            assertEquals(0, runtime.cache.refreshes)
        }
    }

    @Test fun explicitProviderFlagAndSoleMarkerPublishInstrumentalWithoutRowsTimelineOrCacheWrites() {
        for (marker in listOf("", "[99:00.00]纯音乐，请欣赏", "纯音乐，请您欣赏")) {
            val runtime = Runtime()
            val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
            val engine = engine(runtime, frames)
            engine.update(media())
            drain()
            val query = runtime.lookups.single()
            val result = found(query).resolved.result.copy(lyrics = marker,
                instrumental = marker.isEmpty(), lyricsKind = LyricsKind.NONE)
            val pureMusic = found(query, result)
            runtime.provisional.getValue("Song")(pureMusic)
            drain()
            assertEquals("pure music is never a provisional lyric body", ContentPorts.LyricsSnapshot.LOADING, frames.last().status)
            runtime.pendingLyrics.remove("Song")!!.resume(pureMusic)
            drain()
            assertEquals(ContentPorts.LyricsSnapshot.INSTRUMENTAL, frames.last().status)
            assertTrue(frames.last().lines.isEmpty())
            assertFalse(frames.last().timed)
            assertEquals(0, runtime.cache.writes)
            assertEquals(0, runtime.cache.refreshes)
            assertTrue(runtime.cache.entries.isEmpty())
        }
    }

    @Test fun embeddedSoleInstrumentalMarkerUsesRecordingProofWithoutNetworkOrFakeTimeline() {
        val runtime = Runtime()
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, frames)
        engine.update(media(embedded = "[99:00.00]纯音乐，请欣赏"))
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.INSTRUMENTAL, frames.last().status)
        assertFalse(frames.last().timed)
        assertTrue(frames.last().lines.isEmpty())
        assertTrue(runtime.lookups.isEmpty())
        assertEquals(0, runtime.cache.writes)
        engine.update(media(title = "Unknown", generation = 2, duration = 0L,
            embedded = "[99:00.00]纯音乐，请欣赏"))
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.UNAVAILABLE, frames.last().status)
        assertTrue(runtime.lookups.isEmpty())
    }

    @Test fun emptyLyricsAndInstrumentalTitleDoNotEstablishPureMusic() {
        val runtime = Runtime()
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, frames)
        engine.update(media(title = "Instrumental"))
        drain()
        val query = runtime.lookups.single()
        runtime.pendingLyrics.remove("Instrumental")!!.resume(found(query, found(query).resolved.result.copy(lyrics = "")))
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.NO_MATCH, frames.last().status)
        assertEquals(0, runtime.cache.writes)
    }

    @Test fun invalidInstrumentalProofIsRejectedAndLatePureMusicCannotOverwriteANewSong() {
        val runtime = Runtime()
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, frames)
        engine.update(media(title = "Invalid"))
        drain()
        val query = runtime.lookups.single()
        val pure = found(query, found(query).resolved.result.copy(lyrics = "", instrumental = true))
        runtime.pendingLyrics.remove("Invalid")!!.resume(pure.copy(resolved = pure.resolved.copy(
            proof = pure.resolved.proof.copy(matcherPolicyVersion = -1))))
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.NO_MATCH, frames.last().status)
        engine.update(media(title = "Old", generation = 2))
        drain()
        val old = runtime.lookups.last()
        engine.update(media(title = "New", generation = 3))
        drain()
        runtime.finishLyrics("New")
        drain()
        val count = frames.size
        runtime.pendingLyrics.remove("Old")!!.resume(found(old, found(old).resolved.result.copy(lyrics = "", instrumental = true)))
        drain()
        assertEquals(count, frames.size)
        assertEquals(ContentPorts.LyricsSnapshot.READY, frames.last().status)
        assertEquals("New lyric", frames.last().lines.single().text)
        assertEquals(1, runtime.cache.writes)
    }

    @Test fun lateInstrumentalProofIsReplayedAgainstTheNewestDurationAndNoSongRejectsOldResults() {
        val runtime = Runtime()
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, frames)
        engine.update(media())
        drain()
        val oldQuery = runtime.lookups.single()
        val result = found(oldQuery).resolved.result.copy(lyrics = "", durationMs = 202_000L, instrumental = true)
        val pure = found(oldQuery, result)
        engine.update(media(duration = 198_500L, generation = 2))
        drain()
        runtime.pendingLyrics.remove("Song")!!.resume(pure)
        drain()
        assertEquals(2, runtime.lookups.size)
        assertTrue(frames.none { it.status == ContentPorts.LyricsSnapshot.INSTRUMENTAL })
        assertEquals(0, runtime.cache.writes)
        val currentQuery = runtime.lookups.last()
        engine.update(ContentPorts.MediaSnapshot.unavailable())
        drain()
        val publications = frames.size
        runtime.pendingLyrics.remove("Song")!!.resume(found(currentQuery,
            found(currentQuery).resolved.result.copy(lyrics = "", instrumental = true)))
        drain()
        assertEquals(publications, frames.size)
        assertEquals(ContentPorts.LyricsSnapshot.EMPTY, frames.last().status)
        assertEquals(0, runtime.cache.writes)
    }

    @Test fun anInstrumentalResultCannotDowngradeAnAlreadyAdmittedBody() {
        val runtime = Runtime()
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = engine(runtime, frames)
        engine.update(media())
        drain()
        val query = runtime.lookups.single()
        runtime.provisional.getValue("Song")(found(query))
        drain()
        val body = frames.last().lines
        runtime.pendingLyrics.remove("Song")!!.resume(found(query, found(query).resolved.result.copy(lyrics = "", instrumental = true)))
        drain()
        assertEquals(ContentPorts.LyricsSnapshot.READY, frames.last().status)
        assertSame(body, frames.last().lines)
        assertEquals(1, runtime.cache.writes)
        assertEquals(0, runtime.cache.refreshes)
    }

    @Test fun retainedInstrumentalSurvivesSameRecordingResumeFailureButHasNoDiskCacheClaim() {
        val cache = MemoryCache()
        val runtimes = mutableListOf<Runtime>()
        val frames = mutableListOf<ContentPorts.LyricsSnapshot>()
        val engine = ContentLyricsEngine(RuntimeEnvironment.getApplication(),
            { Runtime(cache).also(runtimes::add) }, Dispatchers.Unconfined, { _, _ -> null }).also(engines::add)
        engine.start(frames::add)
        engine.update(media())
        drain()
        val first = runtimes.first()
        val query = first.lookups.single()
        first.pendingLyrics.remove("Song")!!.resume(found(query, found(query).resolved.result.copy(lyrics = "", instrumental = true)))
        drain()
        engine.stop()
        drain()
        frames.clear()
        engine.start(frames::add)
        engine.update(media(generation = 2))
        drain()
        runtimes.last().pendingLyrics.remove("Song")!!.resume(LyricsResolutionOutcome.RetryableFailure(LyricsFailureReason.NETWORK))
        drain()
        assertTrue(frames.isNotEmpty())
        assertTrue(frames.all { it.status == ContentPorts.LyricsSnapshot.INSTRUMENTAL && !it.timed && it.lines.isEmpty() })
        assertEquals(0, cache.writes)
        assertTrue(cache.entries.isEmpty())
    }

    private fun networkFailures(): List<LyricsResolutionOutcome> = LyricsFailureReason.entries.flatMap { reason ->
        listOf(LyricsResolutionOutcome.RetryableFailure(reason), LyricsResolutionOutcome.SourceFailure(reason))
    }

    private class QueuedDispatcher : kotlinx.coroutines.CoroutineDispatcher() {
        private val work = java.util.ArrayDeque<Runnable>()
        override fun dispatch(context: kotlin.coroutines.CoroutineContext, block: Runnable) { work.addLast(block) }
        fun runLast() { if (work.isNotEmpty()) work.removeLast().run() }
        fun runAll() { var steps = 0; while (work.isNotEmpty()) { check(steps++ < 100); work.removeFirst().run() } }
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
