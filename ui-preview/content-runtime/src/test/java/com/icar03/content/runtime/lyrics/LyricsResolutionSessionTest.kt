package com.icar03.content.runtime.lyrics

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.Closeable
import java.util.concurrent.ConcurrentLinkedQueue
import java.util.concurrent.CountDownLatch
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.Future
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicReference

class LyricsResolutionSessionTest {
    @Test fun metadataMatchWithoutAnyBodyResumesTheSourcesRemainingQueries() {
        val emptyId = candidate(SOURCE_QQ).copy(sourceId = "empty-id")
        val validId = emptyId.copy(sourceId = "valid-id")
        val source = FakeCatalog(SOURCE_QQ, searcher = { index, _ -> listOf(if (index == 1) emptyId else validId) },
            loader = { item, _ -> if (item.sourceId == "valid-id") item.copy(lyrics = LINES) else null })
        Harness(catalogs = listOf(source)).use { harness ->
            assertEquals("valid-id", found(harness.start()).resolved.result.sourceId)
            assertEquals(2, source.searchCalls.get())
        }
    }

    @Test fun repeatedOrEmptySecondCatalogDoesNotPauseAnAlreadyExhaustedBody() {
        for (repeatEmptyId in listOf(true, false)) {
            val emptyId = candidate(SOURCE_QQ).copy(sourceId = "empty-id")
            val validId = emptyId.copy(sourceId = "valid-id")
            val source = FakeCatalog(SOURCE_QQ, searcher = { index, _ -> when (index) {
                1 -> listOf(emptyId)
                2 -> if (repeatEmptyId) listOf(emptyId) else emptyList()
                else -> listOf(validId)
            } }, loader = { item, _ -> if (item.sourceId == "valid-id") item.copy(lyrics = LINES) else null })
            Harness(catalogs = listOf(source)).use { harness ->
                assertEquals("valid-id", found(harness.start()).resolved.result.sourceId)
                assertEquals(3, source.searchCalls.get())
            }
        }
    }

    @Test fun sameProviderPublishesLinesAndThenWordsBeforeSlowCatalogRoundCompletes() {
        val releaseWords = CountDownLatch(1)
        val releaseCatalog = CountDownLatch(1)
        val linesReady = CountDownLatch(1)
        val wordsReady = CountDownLatch(1)
        val metadata = candidate(SOURCE_QQ)
        val source = object : LyricsCatalogSource {
            override val sourceName = SOURCE_QQ
            override fun search(request: LyricsCatalogSearchRequest, deadlineNanos: Long, cancellation: LyricsCancellationSignal) = listOf(metadata)
            override fun loadLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? = error("Must use staged body contract")
            override fun loadBaseLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal) = candidate.copy(lyrics = LINES)
            override fun loadEnrichment(base: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult {
                awaitGate(releaseWords, cancellation)
                return base.copy(wordLyrics = WORDS)
            }
        }
        val slowCatalog = FakeCatalog(SOURCE_NETEASE, searcher = { _, signal -> awaitGate(releaseCatalog, signal); emptyList() })
        Harness(catalogs = listOf(source, slowCatalog)).use { harness ->
            val pending = harness.start { found ->
                assertTrue(LyricsCandidateSelector.isProofValid(QUERY, found.resolved.result, found.resolved.proof))
                if (found.resolved.result.wordLyrics.isBlank()) linesReady.countDown() else wordsReady.countDown()
            }
            try {
                assertTrue(linesReady.await(1, TimeUnit.SECONDS))
                assertFalse(pending.isDone)
                releaseWords.countDown()
                assertTrue(wordsReady.await(1, TimeUnit.SECONDS))
                assertFalse("Word upgrade must not wait for all catalogs", pending.isDone)
                releaseCatalog.countDown()
                assertEquals(WORDS, found(pending).resolved.result.wordLyrics)
            } finally { releaseWords.countDown(); releaseCatalog.countDown() }
        }
    }

    @Test
    fun delayedBetterWordBodyWinsAfterOneFastProvisional() {
        val releaseBody = CountDownLatch(1)
        val bodyStarted = CountDownLatch(1)
        val firstShown = CountDownLatch(1)
        val callbacks = AtomicInteger(0)
        val fast = candidate(SOURCE_LRCLIB).copy(lyrics = LINES)
        val catalog = candidate(SOURCE_NETEASE).copy(durationMs = 199_100L)
        val slow = FakeCatalog(SOURCE_NETEASE, searcher = { _, _ -> listOf(catalog, catalog) }, loader = { item, signal ->
            bodyStarted.countDown()
            awaitGate(releaseBody, signal)
            item.copy(lyrics = LINES, wordLyrics = WORDS)
        })
        Harness(FakeExact(exactResult = { fast }), listOf(slow)).use { harness ->
            val pending = harness.start { provisional ->
                if (callbacks.getAndIncrement() == 0) assertEquals(SOURCE_LRCLIB, provisional.resolved.result.source)
                else assertEquals(SOURCE_NETEASE, provisional.resolved.result.source)
                firstShown.countDown()
            }
            try {
                assertTrue(firstShown.await(2L, TimeUnit.SECONDS))
                assertTrue(bodyStarted.await(2L, TimeUnit.SECONDS))
                assertFalse(pending.isDone)
                assertFalse(harness.cancellation.isCancelled)
                releaseBody.countDown()
                val final = found(pending)
                assertEquals(SOURCE_NETEASE, final.resolved.result.source)
                assertEquals(WORDS, final.resolved.result.wordLyrics)
                assertEquals(199_100L, final.resolved.result.durationMs)
                assertEquals(catalog.candidateSnapshot(), final.resolved.result.candidateSnapshot())
                assertTrue(LyricsCandidateSelector.isProofValid(QUERY, final.resolved.result, final.resolved.proof))
                assertEquals(2, callbacks.get())
                assertEquals(1, slow.loadCalls.get())
                assertEquals(1, slow.searchCalls.get())
            } finally {
                releaseBody.countDown()
            }
        }
    }

    @Test
    fun fastProvisionalDoesNotCloseAnotherSourcesPendingCatalog() {
        val releaseSearch = CountDownLatch(1)
        val searchStarted = CountDownLatch(1)
        val provisional = CountDownLatch(1)
        val slowResult = candidate(SOURCE_NETEASE).copy(lyrics = LINES, wordLyrics = WORDS)
        val slow = FakeCatalog(SOURCE_NETEASE, searcher = { index, signal ->
            if (index == 1) {
                searchStarted.countDown()
                awaitGate(releaseSearch, signal)
            }
            listOf(slowResult)
        })
        Harness(FakeExact(exactResult = { candidate(SOURCE_LRCLIB).copy(lyrics = LINES) }), listOf(slow)).use { harness ->
            val pending = harness.start { provisional.countDown() }
            try {
                assertTrue(searchStarted.await(2L, TimeUnit.SECONDS))
                assertTrue(provisional.await(2L, TimeUnit.SECONDS))
                assertFalse(pending.isDone)
                releaseSearch.countDown()
                assertEquals(slowResult.source, found(pending).resolved.result.source)
            } finally {
                releaseSearch.countDown()
            }
        }
    }

    @Test
    fun catalogAndFallbackUseBoundedRequestDeadlinesWithHedging() {
        val allStarted = CountDownLatch(4)
        val release = CountDownLatch(1)
        val deadlines = ConcurrentLinkedQueue<Long>()
        val exact = FakeExact(exactResult = { signal ->
            allStarted.countDown()
            awaitGate(release, signal)
            null
        }, fallbackResults = { signal ->
            allStarted.countDown()
            awaitGate(release, signal)
            emptyList()
        }, deadlines = deadlines)
        val catalogs = listOf(SOURCE_QQ, SOURCE_NETEASE).map { source ->
            FakeCatalog(source, searcher = { index, signal ->
                if (index == 1) {
                    allStarted.countDown()
                    awaitGate(release, signal)
                }
                emptyList()
            }, deadlines = deadlines)
        }
        Harness(exact, catalogs).use { harness ->
            val pending = harness.start()
            try {
                assertTrue(allStarted.await(2L, TimeUnit.SECONDS))
                release.countDown()
                assertEquals(LyricsResolutionOutcome.NoMatch, pending.get(2L, TimeUnit.SECONDS))
                assertTrue(deadlines.distinct().size > 1)
            } finally {
                release.countDown()
            }
        }
    }

    @Test
    fun aValidBodySurvivesRetryableAndTerminalProviderFailures() {
        for (retryable in listOf(true, false)) {
            val good = candidate(SOURCE_LRCLIB).copy(lyrics = LINES)
            val failed = FakeCatalog(SOURCE_QQ, searcher = { _, _ ->
                throw LyricsSourceException(LyricsFailureReason.SERVER, retryable, "Provider failure")
            })
            Harness(FakeExact(exactResult = { good }), listOf(failed)).use { harness ->
                assertEquals(good.source, found(harness.start()).resolved.result.source)
            }
        }
    }

    @Test
    fun wrongVersionDurationAndArtistNeverStartBodyLoadingDespiteSourcePreference() {
        val metadata = candidate(SOURCE_QQ)
        val bad = listOf(
            metadata.copy(sourceId = "version", candidateTrack = "Song (Remix)"),
            metadata.copy(sourceId = "duration", durationMs = 202_001L),
            metadata.copy(sourceId = "unknown", durationMs = 0L),
            metadata.copy(sourceId = "artist", candidateArtist = "Another Performer")
        )
        val source = FakeCatalog(SOURCE_QQ, searcher = { _, _ -> bad }, loader = { item, _ ->
            item.copy(lyrics = LINES, wordLyrics = WORDS)
        })
        val callbacks = AtomicInteger(0)
        Harness(catalogs = listOf(source), preferred = listOf(SOURCE_QQ)).use { harness ->
            assertEquals(LyricsResolutionOutcome.NoMatch, harness.start { callbacks.incrementAndGet() }.get(2L, TimeUnit.SECONDS))
            assertEquals(0, source.loadCalls.get())
            assertEquals(0, callbacks.get())
        }
    }

    @Test
    fun loadedBodyCannotRewriteTheCatalogSnapshotEvenToAnotherAllowedDuration() {
        for (rewrite in listOf<(LyricsResult) -> LyricsResult>(
            { it.copy(durationMs = QUERY.durationMs) },
            { it.copy(sourceId = "different-id") },
            { it.copy(candidateTrack = "Song (Remix)") },
            { it.copy(identitySource = "different-identity-source") }
        )) {
            val metadata = candidate(SOURCE_QQ).copy(durationMs = 199_100L)
            val source = FakeCatalog(SOURCE_QQ, searcher = { _, _ -> listOf(metadata) }, loader = { item, _ ->
                rewrite(item).copy(lyrics = LINES, wordLyrics = WORDS)
            })
            Harness(catalogs = listOf(source)).use { harness ->
                assertEquals(LyricsResolutionOutcome.NoMatch, harness.start().get(2L, TimeUnit.SECONDS))
                assertEquals(1, source.loadCalls.get())
            }
        }
    }

    @Test
    fun plainOnlySourceIsStaticFallbackOnlyAfterOtherTimedSourcesHaveClosed() {
        val firstSearch = CountDownLatch(1)
        val release = CountDownLatch(1)
        val plainBody = "A first static line\nA second static line"
        val plainResult = candidate(SOURCE_QQ).copy(lyrics = plainBody, durationMs = 199_100L)
        val plainSource = FakeCatalog(SOURCE_QQ, searcher = { _, _ -> listOf(plainResult) }, loader = { item, _ -> item })
        val pendingSource = FakeCatalog(SOURCE_NETEASE, searcher = { index, signal ->
            if (index == 1) {
                firstSearch.countDown()
                awaitGate(release, signal)
            }
            emptyList()
        })
        val callbacks = AtomicInteger(0)
        Harness(catalogs = listOf(plainSource, pendingSource)).use { harness ->
            val pending = harness.start { callbacks.incrementAndGet() }
            try {
                assertTrue(firstSearch.await(2L, TimeUnit.SECONDS))
                assertFalse(pending.isDone)
                assertEquals(0, callbacks.get())
                release.countDown()
                val final = found(pending)
                assertEquals(LyricsKind.PLAIN, final.resolved.result.lyricsKind)
                assertEquals("", final.resolved.result.lyrics)
                assertEquals(plainBody, final.resolved.result.plainLyrics)
                assertEquals(plainResult.candidateSnapshot(), final.resolved.result.candidateSnapshot())
                assertTrue(final.resolved.result.timedLines().isEmpty())
                assertTrue(LyricsCandidateSelector.isProofValid(QUERY, final.resolved.result, final.resolved.proof))
                assertEquals(0, callbacks.get())
            } finally {
                release.countDown()
            }
        }
    }

    @Test
    fun wordOnlyBodyCanBeProvisionalAndFinalWithoutInventingLineTimestamps() {
        val metadata = candidate(SOURCE_NETEASE)
        val source = FakeCatalog(SOURCE_NETEASE, searcher = { _, _ -> listOf(metadata) }, loader = { item, _ ->
            item.copy(wordLyrics = WORDS)
        })
        val callbacks = AtomicInteger(0)
        Harness(catalogs = listOf(source)).use { harness ->
            val final = found(harness.start { callbacks.incrementAndGet() })
            assertEquals(LyricsKind.SYNCHRONIZED, final.resolved.result.lyricsKind)
            assertEquals("", final.resolved.result.lyrics)
            assertEquals(WORDS, final.resolved.result.wordLyrics)
            assertEquals(3, final.resolved.result.timedLines().size)
            assertEquals(1, callbacks.get())
        }
    }

    @Test
    fun cancellationOverridesAnAlreadyShownProvisionalAndDisconnectsPendingBodies() {
        val bodyStarted = CountDownLatch(1)
        val bodyCancelled = CountDownLatch(1)
        val provisional = CountDownLatch(1)
        val metadata = candidate(SOURCE_NETEASE)
        val source = FakeCatalog(SOURCE_NETEASE, searcher = { _, _ -> listOf(metadata) }, loader = { item, signal ->
            bodyStarted.countDown()
            val registration = signal.register(bodyCancelled::countDown)
            try {
                assertTrue(bodyCancelled.await(3L, TimeUnit.SECONDS))
                signal.throwIfCancelled()
                item.copy(lyrics = LINES)
            } finally {
                registration.close()
            }
        })
        Harness(FakeExact(exactResult = { candidate(SOURCE_LRCLIB).copy(lyrics = LINES) }), listOf(source)).use { harness ->
            val pending = harness.start { provisional.countDown() }
            assertTrue(provisional.await(2L, TimeUnit.SECONDS))
            assertTrue(bodyStarted.await(2L, TimeUnit.SECONDS))
            harness.cancellation.cancel()
            assertEquals(LyricsResolutionOutcome.Cancelled, pending.get(2L, TimeUnit.SECONDS))
            assertTrue(bodyCancelled.await(1L, TimeUnit.SECONDS))
        }
    }

    @Test
    fun cancellingInsideTheProvisionalCallbackCannotReturnFinalFound() {
        Harness(FakeExact(exactResult = { candidate(SOURCE_LRCLIB).copy(lyrics = LINES) })).use { harness ->
            val pending = harness.start { harness.cancellation.cancel() }
            assertEquals(LyricsResolutionOutcome.Cancelled, pending.get(2L, TimeUnit.SECONDS))
        }
    }

    @Test
    fun alreadyCancelledSessionDoesNotStartAnySource() {
        val source = FakeCatalog(SOURCE_QQ)
        Harness(catalogs = listOf(source)).use { harness ->
            harness.cancellation.cancel()
            assertEquals(LyricsResolutionOutcome.Cancelled, harness.start().get(2L, TimeUnit.SECONDS))
            assertEquals(0, source.searchCalls.get())
        }
    }

    @Test
    fun lateBodyAfterDeadlineCannotUpgradeTheChosenBodyOrEmitAnotherProvisional() {
        val bodyStarted = CountDownLatch(1)
        val release = CountDownLatch(1)
        val returned = CountDownLatch(1)
        val callbacks = AtomicInteger(0)
        val slow = FakeCatalog(SOURCE_NETEASE, searcher = { _, _ -> listOf(candidate(SOURCE_NETEASE)) }, loader = { item, _ ->
            bodyStarted.countDown()
            awaitIgnoringInterrupt(release)
            returned.countDown()
            item.copy(lyrics = LINES, wordLyrics = WORDS)
        })
        Harness(
            FakeExact(exactResult = { candidate(SOURCE_LRCLIB).copy(lyrics = LINES) }), listOf(slow),
            config = LyricsResolutionConfig(catalogDeadlineMs = 100L, totalDeadlineMs = 600L)
        ).use { harness ->
            val pending = harness.start { callbacks.incrementAndGet() }
            try {
                assertTrue(bodyStarted.await(2L, TimeUnit.SECONDS))
                val final = found(pending)
                assertEquals(SOURCE_LRCLIB, final.resolved.result.source)
                release.countDown()
                assertTrue(returned.await(1L, TimeUnit.SECONDS))
                assertEquals(SOURCE_LRCLIB, final.resolved.result.source)
                assertEquals(1, callbacks.get())
            } finally {
                release.countDown()
            }
        }
    }

    @Test
    fun deadlineWithoutAnyBodyIsRetryableRatherThanNoMatch() {
        val started = CountDownLatch(1)
        val release = CountDownLatch(1)
        val source = FakeCatalog(SOURCE_QQ, searcher = { _, signal ->
            started.countDown()
            awaitGate(release, signal)
            emptyList()
        })
        Harness(catalogs = listOf(source), config = LyricsResolutionConfig(50L, 400L)).use { harness ->
            val pending = harness.start()
            try {
                assertTrue(started.await(2L, TimeUnit.SECONDS))
                assertEquals(LyricsResolutionOutcome.RetryableFailure(LyricsFailureReason.DEADLINE), pending.get(2L, TimeUnit.SECONDS))
            } finally {
                release.countDown()
            }
        }
    }

    @Test
    fun terminalBodyFailureIsNotReportedAsCompletedNoMatch() {
        val source = FakeCatalog(SOURCE_QQ, searcher = { _, _ -> listOf(candidate(SOURCE_QQ)) }, loader = { _, _ ->
            throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Provider denied the body")
        })
        Harness(catalogs = listOf(source)).use { harness ->
            assertEquals(LyricsResolutionOutcome.SourceFailure(LyricsFailureReason.SERVER), harness.start().get(2L, TimeUnit.SECONDS))
        }
    }

    @Test
    fun atMostTwoBodiesRunAndDuplicateCandidatesAreNeverFetchedAgain() {
        val twoStarted = CountDownLatch(2)
        val release = CountDownLatch(1)
        val active = AtomicInteger(0)
        val peak = AtomicInteger(0)
        val sources = listOf("a", "b", "c").map { name ->
            val metadata = candidate(name)
            FakeCatalog(name, searcher = { _, _ -> listOf(metadata, metadata) }, loader = { item, signal ->
                val current = active.incrementAndGet()
                peak.accumulateAndGet(current, ::maxOf)
                twoStarted.countDown()
                try {
                    awaitGate(release, signal)
                    item.copy(lyrics = LINES)
                } finally {
                    active.decrementAndGet()
                }
            })
        }
        Harness(catalogs = sources).use { harness ->
            val pending = harness.start()
            try {
                assertTrue(twoStarted.await(2L, TimeUnit.SECONDS))
                assertEquals(2, active.get())
                release.countDown()
                found(pending)
                assertEquals(2, peak.get())
                assertTrue(sources.all { it.loadCalls.get() == 1 })
            } finally {
                release.countDown()
            }
        }
    }

    @Test
    fun oneLateEnrichmentWaitsForBothPrimaryCatalogsAndParticipatesInFinalRanking() {
        val releaseNetEase = CountDownLatch(1)
        val releaseEnrichment = CountDownLatch(1)
        val enrichmentStarted = CountDownLatch(1)
        val provisional = CountDownLatch(1)
        val anchorsSeen = AtomicReference<List<LyricsResult>>(emptyList())
        val enrichmentCalls = AtomicInteger(0)
        val qqResult = candidate(SOURCE_QQ).copy(lyrics = LINES, durationMs = 199_100L)
        val netEaseResult = candidate(SOURCE_NETEASE).copy(lyrics = LINES, durationMs = 198_900L)
        val qq = FakeCatalog(SOURCE_QQ, searcher = { _, _ -> listOf(qqResult) })
        val netEase = FakeCatalog(SOURCE_NETEASE, searcher = { index, signal ->
            if (index == 1) awaitGate(releaseNetEase, signal)
            listOf(netEaseResult)
        })
        Harness(catalogs = listOf(qq, netEase), supplemental = { _, anchors, _, signal ->
            enrichmentCalls.incrementAndGet()
            anchorsSeen.set(anchors)
            enrichmentStarted.countDown()
            awaitGate(releaseEnrichment, signal)
            val anchor = anchors.single { it.source == SOURCE_NETEASE }
            listOf(anchor.copy(source = "amll", sourceId = "amll-id", identitySource = anchor.source, wordLyrics = WORDS))
        }).use { harness ->
            val pending = harness.start { provisional.countDown() }
            try {
                assertTrue(provisional.await(2L, TimeUnit.SECONDS))
                assertFalse(enrichmentStarted.await(100L, TimeUnit.MILLISECONDS))
                releaseNetEase.countDown()
                assertTrue(enrichmentStarted.await(2L, TimeUnit.SECONDS))
                assertTrue(anchorsSeen.get().any { it.sourceId == netEaseResult.sourceId })
                assertTrue(anchorsSeen.get().any { it.sourceId == qqResult.sourceId })
                assertFalse(pending.isDone)
                releaseEnrichment.countDown()
                val final = found(pending)
                assertEquals("amll", final.resolved.result.source)
                assertEquals(SOURCE_NETEASE, final.resolved.result.identitySource)
                assertEquals(198_900L, final.resolved.result.durationMs)
                assertEquals(1, enrichmentCalls.get())
                assertTrue(LyricsCandidateSelector.isProofValid(QUERY, final.resolved.result, final.resolved.proof))
            } finally {
                releaseNetEase.countDown()
                releaseEnrichment.countDown()
            }
        }
    }

    @Test
    fun noEnrichmentStartsFromUnprovedMetadata() {
        val calls = AtomicInteger(0)
        val unproved = candidate(SOURCE_QQ).copy(candidateTrack = "Distant Horizon (Live)")
        assertTrue(LyricsCandidateSelector.selectCandidatesWithProof(QUERY, listOf(unproved)).isEmpty())
        val source = FakeCatalog(SOURCE_QQ, searcher = { _, _ -> listOf(unproved) })
        Harness(catalogs = listOf(source), supplemental = { _, _, _, _ ->
            calls.incrementAndGet()
            emptyList()
        }).use { harness ->
            assertEquals(LyricsResolutionOutcome.NoMatch, harness.start().get(2L, TimeUnit.SECONDS))
            assertEquals(0, calls.get())
        }
    }

    @Test fun explicitPreferenceGetsTheFirstBodyOpportunityBeforeEqualTierFallbackIsPublished() {
        val release = CountDownLatch(1)
        val started = CountDownLatch(1)
        val first = AtomicReference<String>()
        val shown = CountDownLatch(1)
        val preferred = FakeCatalog(SOURCE_NETEASE, searcher = { _, signal ->
            started.countDown()
            awaitGate(release, signal)
            listOf(candidate(SOURCE_NETEASE).copy(lyrics = LINES))
        })
        Harness(FakeExact(exactResult = { candidate(SOURCE_LRCLIB).copy(lyrics = LINES) }),
            listOf(preferred), preferred = listOf(SOURCE_NETEASE)).use { harness ->
            val pending = harness.start { first.set(it.resolved.result.source); shown.countDown() }
            try {
                assertTrue(started.await(2L, TimeUnit.SECONDS))
                assertFalse(shown.await(100L, TimeUnit.MILLISECONDS))
                release.countDown()
                assertTrue(shown.await(2L, TimeUnit.SECONDS))
                assertEquals(SOURCE_NETEASE, first.get())
                assertEquals(SOURCE_NETEASE, found(pending).resolved.result.source)
            } finally { release.countDown() }
        }
    }

    @Test fun loadedInstrumentalFlagAndOnlyMarkerUseTheExistingProofWithoutProvisionalOrTimeline() {
        for (marker in listOf("", "[99:00.00]纯音乐，请欣赏")) {
            val catalog = candidate(SOURCE_NETEASE).copy(durationMs = 199_100L)
            val source = FakeCatalog(SOURCE_NETEASE, searcher = { _, _ -> listOf(catalog) }, loader = { item, _ ->
                item.copy(lyrics = marker, instrumental = marker.isEmpty())
            })
            val callbacks = AtomicInteger(0)
            Harness(catalogs = listOf(source)).use { harness ->
                val final = found(harness.start { callbacks.incrementAndGet() })
                assertTrue(final.resolved.result.isInstrumentalContent())
                assertEquals(catalog.candidateSnapshot(), final.resolved.result.candidateSnapshot())
                assertTrue(LyricsCandidateSelector.isProofValid(QUERY, final.resolved.result, final.resolved.proof))
                assertEquals(LyricsKind.NONE, final.resolved.result.lyricsKind)
                assertTrue(final.resolved.result.timedLines().isEmpty())
                assertEquals("", final.resolved.result.plainText())
                assertEquals(0, callbacks.get())
                assertEquals(1, source.loadCalls.get())
            }
        }
    }

    @Test fun exactInstrumentalRequiresTheSameStrictVersionDurationAndArtistAdmissionAsABody() {
        val instrumental = candidate(SOURCE_LRCLIB).copy(instrumental = true)
        for (result in listOf(instrumental, instrumental.copy(candidateTrack = "Song (Remix)"),
            instrumental.copy(durationMs = 0L), instrumental.copy(durationMs = 202_001L),
            instrumental.copy(candidateArtist = "Another Performer"))) {
            Harness(FakeExact(exactResult = { result })).use { harness ->
                val outcome = harness.start().get(2L, TimeUnit.SECONDS)
                if (result == instrumental) {
                    assertTrue(outcome is LyricsResolutionOutcome.Found)
                    val resolved = (outcome as LyricsResolutionOutcome.Found).resolved
                    assertTrue(LyricsCandidateSelector.isProofValid(QUERY, resolved.result, resolved.proof))
                } else assertEquals(LyricsResolutionOutcome.NoMatch, outcome)
            }
        }
    }

    @Test fun instrumentalBodyCannotRewriteTheCatalogSnapshotOrOutrankAnAdmittedRealBody() {
        val catalog = candidate(SOURCE_NETEASE)
        val changed = FakeCatalog(SOURCE_NETEASE, searcher = { _, _ -> listOf(catalog) }, loader = { item, _ ->
            item.copy(sourceId = "different-id", instrumental = true)
        })
        Harness(catalogs = listOf(changed)).use { harness ->
            assertEquals(LyricsResolutionOutcome.NoMatch, harness.start().get(2L, TimeUnit.SECONDS))
        }
        val instrumental = FakeCatalog(SOURCE_NETEASE, searcher = { _, _ -> listOf(catalog) }, loader = { item, _ ->
            item.copy(instrumental = true)
        })
        val real = candidate(SOURCE_LRCLIB).copy(lyrics = LINES)
        Harness(FakeExact(exactResult = { real }), listOf(instrumental), preferred = listOf(SOURCE_NETEASE)).use { harness ->
            val result = found(harness.start()).resolved.result
            assertFalse(result.isInstrumentalContent())
            assertEquals(real.source, result.source)
            assertEquals(LINES, result.lyrics)
        }
    }

    @Test fun emptyLyricsRemainNoMatchButProvedInstrumentalSurvivesUnrelatedProviderFailure() {
        val catalog = candidate(SOURCE_NETEASE)
        val empty = FakeCatalog(SOURCE_NETEASE, searcher = { _, _ -> listOf(catalog) }, loader = { item, _ -> item })
        Harness(catalogs = listOf(empty)).use { harness ->
            assertEquals(LyricsResolutionOutcome.NoMatch, harness.start().get(2L, TimeUnit.SECONDS))
        }
        val failed = FakeCatalog(SOURCE_QQ, searcher = { _, _ ->
            throw LyricsSourceException(LyricsFailureReason.NETWORK, true, "Synthetic offline provider")
        })
        Harness(FakeExact(exactResult = { candidate(SOURCE_LRCLIB).copy(instrumental = true) }), listOf(failed)).use { harness ->
            assertTrue(found(harness.start()).resolved.result.isInstrumentalContent())
        }
    }

    @Test fun selectedProviderWaitsForItsOwnEnrichmentAndStopsWhenQualityIsSatisfied() {
        val enhancementStarted = CountDownLatch(1)
        val release = CountDownLatch(1)
        val linesShown = CountDownLatch(1)
        val exact = FakeExact()
        val other = FakeCatalog(SOURCE_QQ)
        val preferred = staged(SOURCE_APPLE_MUSIC, candidate(SOURCE_APPLE_MUSIC).copy(lyrics = LINES)) { base, signal ->
            enhancementStarted.countDown()
            awaitGate(release, signal)
            base.copy(wordLyrics = WORDS, translatedLyrics = TRANSLATION)
        }
        Harness(exact, listOf(preferred, other), preferred = listOf(SOURCE_APPLE_MUSIC)).use { harness ->
            val pending = harness.start { linesShown.countDown() }
            try {
                assertTrue(linesShown.await(2, TimeUnit.SECONDS))
                assertTrue(enhancementStarted.await(2, TimeUnit.SECONDS))
                assertFalse("No fixed 350ms hedge may finish the single-provider stage", pending.isDone)
                assertEquals(0, other.searchCalls.get())
                assertEquals(0, exact.exactCalls.get())
                release.countDown()
                val result = found(pending).resolved.result
                assertEquals(SOURCE_APPLE_MUSIC, result.source)
                assertEquals(TRANSLATION, result.translatedLyrics)
                assertEquals(0, other.searchCalls.get())
                assertEquals(0, exact.exactCalls.get())
                assertEquals(0, exact.fallbackCalls.get())
            } finally { release.countDown() }
        }
    }

    @Test fun missingTranslationStartsParallelUpgradeAfterOwnEnrichmentWhileKeepingLinesVisible() {
        val finishedOwnEnhancement = AtomicInteger()
        val sourcesShown = ConcurrentLinkedQueue<String>()
        val preferred = staged(SOURCE_APPLE_MUSIC, candidate(SOURCE_APPLE_MUSIC).copy(lyrics = LINES)) { base, _ ->
            finishedOwnEnhancement.incrementAndGet()
            base.copy(wordLyrics = WORDS)
        }
        val other = FakeCatalog(SOURCE_QQ, searcher = { _, _ ->
            assertEquals("Fallback must follow the preferred enhancement", 1, finishedOwnEnhancement.get())
            listOf(candidate(SOURCE_QQ))
        }, loader = { item, _ -> item.copy(lyrics = LINES, wordLyrics = WORDS, translatedLyrics = TRANSLATION) })
        Harness(catalogs = listOf(preferred, other), preferred = listOf(SOURCE_APPLE_MUSIC)).use { harness ->
            val result = found(harness.start { sourcesShown += it.resolved.result.source }).resolved.result
            assertEquals(SOURCE_APPLE_MUSIC, sourcesShown.first())
            assertTrue(other.searchCalls.get() > 0)
            assertEquals(SOURCE_QQ, result.source)
            assertEquals(WORDS, result.wordLyrics)
            assertEquals(TRANSLATION, result.translatedLyrics)
        }
    }

    @Test fun translatedLineLyricsStillStartParallelWordUpgradeAfterOwnEnrichment() {
        val enhancementFinished = AtomicInteger()
        val shown = ConcurrentLinkedQueue<String>()
        val preferred = staged(SOURCE_APPLE_MUSIC,
            candidate(SOURCE_APPLE_MUSIC).copy(lyrics = LINES, translatedLyrics = TRANSLATION)) { _, _ ->
            enhancementFinished.incrementAndGet()
            null
        }
        val other = FakeCatalog(SOURCE_QQ, searcher = { _, _ ->
            assertEquals(1, enhancementFinished.get())
            listOf(candidate(SOURCE_QQ))
        }, loader = { item, _ -> item.copy(lyrics = LINES, wordLyrics = WORDS, translatedLyrics = TRANSLATION) })
        Harness(catalogs = listOf(preferred, other), preferred = listOf(SOURCE_APPLE_MUSIC)).use { harness ->
            val result = found(harness.start { shown += it.resolved.result.source }).resolved.result
            assertEquals(SOURCE_APPLE_MUSIC, shown.first())
            assertTrue(other.searchCalls.get() > 0)
            assertEquals(SOURCE_QQ, result.source)
            assertEquals(WORDS, result.wordLyrics)
            assertEquals(TRANSLATION, result.translatedLyrics)
        }
    }

    @Test fun selectedPlainBodyIsShownBeforeEnrichmentAndThenUpgradedByAnotherProvider() {
        val release = CountDownLatch(1)
        val plainShown = CountDownLatch(1)
        val other = FakeCatalog(SOURCE_QQ, searcher = { _, _ -> listOf(candidate(SOURCE_QQ)) },
            loader = { item, _ -> item.copy(lyrics = LINES, translatedLyrics = TRANSLATION) })
        val preferred = staged(SOURCE_APPLE_MUSIC,
            candidate(SOURCE_APPLE_MUSIC).copy(plainLyrics = "Original one\nOriginal two\nOriginal end")) { _, signal ->
            awaitGate(release, signal)
            null
        }
        Harness(catalogs = listOf(preferred, other), preferred = listOf(SOURCE_APPLE_MUSIC)).use { harness ->
            val pending = harness.start { if (it.resolved.result.contentKind() == LyricsKind.PLAIN) plainShown.countDown() }
            try {
                assertTrue(plainShown.await(2, TimeUnit.SECONDS))
                assertEquals(0, other.searchCalls.get())
                release.countDown()
                assertEquals(SOURCE_QQ, found(pending).resolved.result.source)
            } finally { release.countDown() }
        }
    }

    @Test fun wrongRecordingNeverBecomesAQualityShortcutForTheSelectedProvider() {
        val invalid = candidate(SOURCE_APPLE_MUSIC).copy(candidateTrack = "Song (Remix)")
        val preferred = FakeCatalog(SOURCE_APPLE_MUSIC, searcher = { _, _ -> listOf(invalid) },
            loader = { _, _ -> error("Conflicting recording must not load a body") })
        val fallback = candidate(SOURCE_LRCLIB).copy(lyrics = LINES, translatedLyrics = TRANSLATION)
        Harness(FakeExact(exactResult = { fallback }), listOf(preferred),
            preferred = listOf(SOURCE_APPLE_MUSIC)).use { harness ->
            assertEquals(SOURCE_LRCLIB, found(harness.start()).resolved.result.source)
            assertEquals(0, preferred.loadCalls.get())
        }
    }

    @Test fun cancellingTheSingleProviderStageCannotStartCrossPlatformWork() {
        val started = CountDownLatch(1)
        val release = CountDownLatch(1)
        val preferred = staged(SOURCE_APPLE_MUSIC, candidate(SOURCE_APPLE_MUSIC).copy(lyrics = LINES)) { _, signal ->
            started.countDown()
            awaitGate(release, signal)
            null
        }
        val exact = FakeExact()
        val other = FakeCatalog(SOURCE_QQ)
        Harness(exact, listOf(preferred, other), preferred = listOf(SOURCE_APPLE_MUSIC)).use { harness ->
            val pending = harness.start()
            assertTrue(started.await(2, TimeUnit.SECONDS))
            harness.cancellation.cancel()
            assertEquals(LyricsResolutionOutcome.Cancelled, pending.get(2, TimeUnit.SECONDS))
            assertEquals(0, other.searchCalls.get())
            assertEquals(0, exact.exactCalls.get())
        }
    }

    @Test fun automaticModeStartsEveryEnabledProviderWithoutWaitingForASmallerInitialGroup() {
        val allStarted = CountDownLatch(5)
        val release = CountDownLatch(1)
        val sources = listOf(SOURCE_QQ, SOURCE_NETEASE, SOURCE_KUGOU, SOURCE_KUWO, SOURCE_APPLE_MUSIC).map { name ->
            FakeCatalog(name, searcher = { _, signal -> allStarted.countDown(); awaitGate(release, signal); emptyList() })
        }
        Harness(catalogs = sources).use { harness ->
            val pending = harness.start()
            try {
                assertTrue("All enabled providers must be scheduled in automatic mode", allStarted.await(2, TimeUnit.SECONDS))
                release.countDown()
                assertEquals(LyricsResolutionOutcome.NoMatch, pending.get(2, TimeUnit.SECONDS))
            } finally { release.countDown() }
        }
    }

    private fun staged(source: String, base: LyricsResult,
        enrichment: (LyricsResult, LyricsCancellationSignal) -> LyricsResult?): LyricsCatalogSource = object : LyricsCatalogSource {
        override val sourceName = source
        override fun search(request: LyricsCatalogSearchRequest, deadlineNanos: Long, cancellation: LyricsCancellationSignal) =
            listOf(base.copy(lyrics = "", plainLyrics = "", translatedLyrics = "", wordLyrics = ""))
        override fun loadLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? =
            error("Staged provider must use its base contract")
        override fun loadBaseLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal) = base
        override fun loadEnrichment(base: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal) = enrichment(base, cancellation)
    }

    private fun found(pending: Future<LyricsResolutionOutcome>): LyricsResolutionOutcome.Found =
        pending.get(3L, TimeUnit.SECONDS).let { outcome ->
            assertTrue("Expected Found but got $outcome", outcome is LyricsResolutionOutcome.Found)
            outcome as LyricsResolutionOutcome.Found
        }

    private fun candidate(source: String) = LyricsResult(
        durationMs = QUERY.durationMs, source = source, sourceId = "$source-id",
        candidateTrack = QUERY.track, candidateArtist = QUERY.artist, candidateAlbum = QUERY.album
    )

    private class Harness(
        exact: FakeExact = FakeExact(),
        catalogs: List<LyricsCatalogSource> = emptyList(),
        config: LyricsResolutionConfig = LyricsResolutionConfig(catalogDeadlineMs = 2_000L, totalDeadlineMs = 5_000L),
        preferred: List<String> = emptyList(),
        supplemental: ((LyricsLookup, List<LyricsResult>, Long, LyricsCancellationSignal) -> List<LyricsResult>)? = null
    ) : Closeable {
        val cancellation = LyricsCancellationSignal()
        private val network = executor()
        private val caller = executor()
        private val session = LyricsResolutionSession(
            exactAndFallbackSource = exact,
            catalogSources = catalogs,
            bodySources = (listOf<LyricsBodySource>(exact) + catalogs).associateBy { it.sourceName },
            executor = network,
            clock = SystemLyricsMonotonicClock,
            config = config,
            logger = object : LyricsRepositoryLogger {
                override fun info(message: String) = Unit
                override fun warning(message: String, error: Throwable) = Unit
            },
            preferredSources = { preferred },
            supplemental = supplemental
        )

        fun start(onProvisional: (LyricsResolutionOutcome.Found) -> Unit = {}): Future<LyricsResolutionOutcome> =
            caller.submit<LyricsResolutionOutcome> {
                session.resolve(QUERY, cancellation, System.nanoTime(), onProvisional)
            }

        override fun close() {
            cancellation.cancel()
            network.shutdownNow()
            caller.shutdownNow()
            assertTrue(network.awaitTermination(2L, TimeUnit.SECONDS))
            assertTrue(caller.awaitTermination(2L, TimeUnit.SECONDS))
        }
    }

    private class FakeExact(
        private val exactResult: (LyricsCancellationSignal) -> LyricsResult? = { null },
        private val fallbackResults: (LyricsCancellationSignal) -> List<LyricsResult> = { emptyList() },
        private val deadlines: ConcurrentLinkedQueue<Long> = ConcurrentLinkedQueue()
    ) : LyricsExactAndFallbackSource {
        override val sourceName = SOURCE_LRCLIB
        val exactCalls = AtomicInteger()
        val fallbackCalls = AtomicInteger()
        override fun exact(query: LyricsLookup, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
            exactCalls.incrementAndGet()
            deadlines += deadlineNanos
            return exactResult(cancellation)
        }
        override fun fallback(query: LyricsLookup, deadlineNanos: Long, cancellation: LyricsCancellationSignal): List<LyricsResult> {
            fallbackCalls.incrementAndGet()
            deadlines += deadlineNanos
            return fallbackResults(cancellation)
        }
        override fun loadLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? = null
    }

    private class FakeCatalog(
        override val sourceName: String,
        private val searcher: (Int, LyricsCancellationSignal) -> List<LyricsResult> = { _, _ -> emptyList() },
        private val loader: (LyricsResult, LyricsCancellationSignal) -> LyricsResult? = { _, _ -> null },
        private val deadlines: ConcurrentLinkedQueue<Long> = ConcurrentLinkedQueue()
    ) : LyricsCatalogSource {
        val searchCalls = AtomicInteger(0)
        val loadCalls = AtomicInteger(0)
        override fun search(request: LyricsCatalogSearchRequest, deadlineNanos: Long, cancellation: LyricsCancellationSignal): List<LyricsResult> {
            deadlines += deadlineNanos
            return searcher(searchCalls.incrementAndGet(), cancellation)
        }
        override fun loadLyrics(candidate: LyricsResult, deadlineNanos: Long, cancellation: LyricsCancellationSignal): LyricsResult? {
            loadCalls.incrementAndGet()
            return loader(candidate, cancellation)
        }
    }

    private companion object {
        val QUERY = LyricsLookup("Song (Live)", "Artist", "Album", 200_000L)
        const val LINES = "[00:01]Original one\n[01:20]Original two\n[03:10]Original end"
        const val TRANSLATION = "[00:01]第一句译文\n[01:20]第二句译文\n[03:10]最后一句译文"
        const val WORDS = "[1000,1000](1000,400,0)Original (1500,400,0)one\n" +
            "[80000,1000](80000,400,0)Original (80500,400,0)two\n" +
            "[190000,1000](190000,400,0)Original (190500,400,0)end"

        fun executor(): ExecutorService = Executors.newCachedThreadPool { task ->
            Thread(task, "lyrics-session-test").apply { isDaemon = true }
        }

        fun awaitGate(gate: CountDownLatch, cancellation: LyricsCancellationSignal) {
            val registration = cancellation.register(gate::countDown)
            try {
                assertTrue("Fake source was not released", gate.await(3L, TimeUnit.SECONDS))
                cancellation.throwIfCancelled()
            } finally {
                registration.close()
            }
        }

        fun awaitIgnoringInterrupt(gate: CountDownLatch) {
            while (true) {
                try {
                    assertTrue(gate.await(3L, TimeUnit.SECONDS))
                    return
                } catch (_: InterruptedException) {
                    // Simulate a provider that ignores interruption; session admission must still close.
                }
            }
        }
    }
}
