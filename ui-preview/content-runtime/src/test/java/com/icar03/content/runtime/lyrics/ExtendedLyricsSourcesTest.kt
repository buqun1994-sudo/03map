package com.icar03.content.runtime.lyrics

import org.json.JSONArray
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import java.net.URL
import java.net.URLDecoder
import java.util.concurrent.CancellationException
import java.util.concurrent.TimeUnit

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class ExtendedLyricsSourcesTest {
    private val deadline = System.nanoTime() + TimeUnit.SECONDS.toNanos(30)
    private val request = LyricsCatalogSearchRequest(LyricsCatalogSearchKind.TITLE_ARTIST, "Fixture Song Fixture Artist")
    private val hash = "a".repeat(32)

    @Test fun kugouSearchKeepsRecordingFieldsAndBodyUsesTheSameLyricIdForLrcAndKrc() {
        val access = StringBuilder("fixture").reverse().toString()
        val transport = FakeTransport { url ->
            when {
                url.contains("song_search_v2") -> kugouCatalog().bytes()
                url.contains("/search?") -> JSONObject().put("status", 200).put("errcode", 200).put("candidates", JSONArray()
                    .put(JSONObject().put("id", "10").put("accesskey", access).put("song", "Fixture Song (Live)").put("singer", "Fixture Artist"))
                    .put(JSONObject().put("id", "11").put("accesskey", access).put("song", "Fixture Song").put("singer", "Fixture Artist").put("duration", 200125))).bytes()
                url.queryValues()["fmt"] == "lrc" -> JSONObject().put("status", 200).put("content", SyntheticWordLyricsFixtures.base64("[00:01.250]Hello road")).bytes()
                url.queryValues()["fmt"] == "krc" -> JSONObject().put("status", 200).put("content", SyntheticWordLyricsFixtures.krc("[1250,800]<0,300,0>Hello<300,500,0> road")).bytes()
                else -> error("Unexpected request")
            }
        }
        val source = KugouLyricsSource(transport)
        val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
        assertCandidate(candidate, SOURCE_KUGOU, hash, 200125L)
        assertEquals(1, transport.calls.size)
        assertTrue(candidate.lyrics.isEmpty())
        val result = source.loadLyrics(candidate, deadline, LyricsCancellationSignal())!!
        assertEquals("[00:01.250]Hello road", result.lyrics)
        assertEquals("[1250,800](1250,300,0)Hello(1550,500,0) road", result.wordLyrics)
        val downloads = transport.calls.filter { it.url.contains("/download?") }
        assertEquals(2, downloads.size)
        downloads.forEach { call ->
            assertEquals("11", call.url.queryValues()["id"])
            assertEquals(access, call.url.queryValues()["accesskey"])
            assertEquals(deadline, call.deadline)
        }
        assertFalse(result.toJson().toString().contains(access))
    }

    @Test fun kugouCoverIsRequestedOnlyAfterARealCatalogRecordingExists() {
        val transport = FakeTransport { url -> if (url.contains("song_search_v2")) kugouCatalog().bytes() else
            JSONObject().put("status", 1).put("errcode", 0).put("data", JSONObject().put("imgurl", "http://imge.kugou.com/stdmusic/{size}/fixture.jpg")).bytes() }
        val source = KugouLyricsSource(transport)
        assertEquals("", source.loadCover(LyricsResult(source = SOURCE_KUGOU, sourceId = hash), deadline, LyricsCancellationSignal()))
        assertEquals(0, transport.calls.size)
        val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
        assertEquals("https://imge.kugou.com/stdmusic/0/fixture.jpg", source.loadCover(candidate, deadline, LyricsCancellationSignal()))
        assertTrue(transport.calls.last().url.contains("albumid=17"))
    }

    @Test fun kuwoKeepsDurationAndCoverAndDecodesTheRealLrcxEnvelope() {
        val transport = FakeTransport { url -> when {
            url.contains("/r.s?") -> kuwoCatalog().bytes()
            url.contains("getlyric") -> JSONObject().put("code", 200).put("data", JSONObject().put("lrclist", JSONArray()
                .put(JSONObject().put("time", "1.250").put("lineLyric", "Hello road")))).bytes()
            else -> SyntheticWordLyricsFixtures.lrcx("[kuwo:071]\n[00:01.250]<2100,-2100>Hello<5000,-2000> road\n[00:02.050]<0,0>译文")
        } }
        val source = KuwoLyricsSource(transport)
        val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
        assertCandidate(candidate, SOURCE_KUWO, "17", 200125L)
        assertEquals("https://img1.kuwo.cn/star/albumcover/0/fixture/cover.jpg", candidate.cover)
        val result = source.loadLyrics(candidate, deadline, LyricsCancellationSignal())!!
        assertEquals("[00:01.250]Hello road", result.lyrics)
        assertEquals("[1250,800](1250,300,0)Hello(1550,500,0) road", result.wordLyrics)
        assertEquals("https://www.kuwo.cn/", transport.calls[0].headers["Referer"])
        assertEquals("https://kuwo.cn/", transport.calls[1].headers["Referer"])
        assertEquals("17", transport.calls.last().url.queryValues()["rid"])
    }

    @Test fun miguPreservesUnknownDurationAndLoadsOnlyThatCopyrightResourceBundle() {
        val transport = FakeTransport { url -> when {
            url.contains("search_all.do") -> miguCatalog().bytes()
            url.endsWith("/fixture-line") -> "[00:01.000]歌曲名 Fixture Song\n[00:02.000]歌手名 Fixture Artist\n[00:03.000]Hello road".toByteArray()
            url.endsWith("/fixture-translation") -> "[00:03.000]你好道路".toByteArray()
            else -> SyntheticWordLyricsFixtures.mrc("[0,0]Title(0,0)\n[3000,800]Hello(3000,300) road(3300,500)").toByteArray()
        } }
        val source = MiguLyricsSource(transport)
        val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
        assertCandidate(candidate, SOURCE_MIGU, "fixture-copyright", 0L)
        assertTrue(LyricsCandidateSelector.selectCandidates(LyricsLookup("Fixture Song", "Fixture Artist", "Fixture Album", 200125L), listOf(candidate)).isEmpty())
        assertEquals("https://d.musicapp.migu.cn/fixture-cover-large", candidate.cover)
        assertEquals(1, transport.calls.size)
        val result = source.loadLyrics(candidate, deadline, LyricsCancellationSignal())!!
        assertEquals("[00:03.000]Hello road", result.lyrics)
        assertEquals("[00:03.000]你好道路", result.translatedLyrics)
        assertEquals("[3000,800](3000,300,0)Hello(3300,500,0) road", result.wordLyrics)
        assertEquals(4, transport.calls.size)
        assertEquals("fixture-copyright", result.sourceId)
    }

    @Test fun sodaParsesOnlyTrackGroupsAndVerifiesSeoTrackBeforePlaintextKrc() {
        val transport = FakeTransport { url -> if (url.contains("/search/track")) sodaCatalog().bytes() else sodaBody().bytes() }
        val source = SodaLyricsSource(transport)
        val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
        assertCandidate(candidate, SOURCE_SODA, "fixture-soda", 200125L)
        assertEquals(1, transport.calls.size)
        val result = source.loadLyrics(candidate, deadline, LyricsCancellationSignal())!!
        assertEquals("[00:01.250]Hello road", result.lyrics)
        assertEquals("[1250,800](1250,300,0)Hello(1550,500,0) road", result.wordLyrics)
        assertEquals("[00:01.250]你好道路", result.translatedLyrics)
        assertEquals("https://p3-luna.douyinpic.com/img/fixture-cover~tplv-b829550vbb-resize:0:0.jpg", result.cover)
        assertEquals(result.cover, source.loadCover(candidate, deadline, LyricsCancellationSignal()))
        assertEquals(2, transport.calls.size)
    }

    @Test fun sodaWrongTrackIdIsRejectedAndMissingIdIsASchemaFailure() {
        val transport = FakeTransport { url -> if (url.contains("/search/track")) sodaCatalog().bytes() else sodaBody("wrong-id").bytes() }
        val source = SodaLyricsSource(transport)
        val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
        assertNull(source.loadLyrics(candidate, deadline, LyricsCancellationSignal()))
        transport.response = { sodaBody("").bytes() }
        val failure = sourceFailure { source.loadLyrics(candidate, deadline, LyricsCancellationSignal()) }
        assertFalse(failure.retryable)
        assertEquals(LyricsFailureReason.SERVER, failure.reason)
    }

    @Test fun sodaAuthorizationFailureDoesNotTryAnotherDomain() {
        for (status in listOf(401, 403, 429)) {
            val transport = FakeTransport { url -> if (url.contains("/search/track")) sodaCatalog().bytes() else
                throw LyricsHttpStatusException(status, if (status == 429) LyricsFailureReason.RATE_LIMIT else LyricsFailureReason.NETWORK, status == 429) }
            val source = SodaLyricsSource(transport)
            val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
            assertEquals(status, (sourceFailure { source.loadLyrics(candidate, deadline, LyricsCancellationSignal()) } as LyricsHttpStatusException).statusCode)
            assertEquals(2, transport.calls.size)
        }
    }

    @Test fun sodaOrdinaryNetworkFailureMayUseTheSamePublicPathOnItsOtherHost() {
        val transport = FakeTransport { url -> when {
            url.contains("/search/track") -> sodaCatalog().bytes()
            url.startsWith("https://beta-luna.") -> throw LyricsSourceException(LyricsFailureReason.NETWORK, true, "Synthetic connection failure")
            else -> sodaBody().bytes()
        } }
        val source = SodaLyricsSource(transport)
        val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
        assertNotNull(source.loadLyrics(candidate, deadline, LyricsCancellationSignal()))
        assertEquals(3, transport.calls.size)
        assertEquals(URL(transport.calls[1].url).file, URL(transport.calls[2].url).file)
    }

    @Test fun alteredCandidateMetadataCannotLoadAResourceForAnySource() {
        val catalogFixtures = listOf(kugouCatalog(), kuwoCatalog(), miguCatalog(), sodaCatalog())
        sourceFactories().forEachIndexed { index, factory ->
            val transport = FakeTransport { catalogFixtures[index].bytes() }
            val source = factory(transport)
            val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
            assertNull(source.loadLyrics(candidate.copy(candidateTrack = "Other Recording"), deadline, LyricsCancellationSignal()))
            assertNull(source.loadLyrics(candidate.copy(durationMs = candidate.durationMs + 10_000L), deadline, LyricsCancellationSignal()))
            assertEquals(1, transport.calls.size)
        }
    }

    @Test fun eachSourceClassifiesBusinessRejectionInsteadOfReturningNoMatch() {
        val failures = listOf(
            JSONObject().put("status", 1).put("error_code", 429),
            JSONObject().put("code", 429), JSONObject().put("code", "429"), JSONObject().put("status_code", 429)
        )
        sourceFactories().forEachIndexed { index, factory ->
            val failure = sourceFailure { factory(FakeTransport { failures[index].bytes() }).search(request, deadline, LyricsCancellationSignal()) }
            assertEquals(LyricsFailureReason.RATE_LIMIT, failure.reason)
            assertTrue(failure.retryable)
        }
    }

    @Test fun eachSourcePropagatesCancellationBeforeNetworkAndDuringResponse() {
        val catalogs = listOf(kugouCatalog(), kuwoCatalog(), miguCatalog(), sodaCatalog())
        sourceFactories().forEachIndexed { index, factory ->
            val cancelled = LyricsCancellationSignal().apply { cancel() }
            val preTransport = FakeTransport { error("Must not request") }
            expectCancellation { factory(preTransport).search(request, deadline, cancelled) }
            assertEquals(0, preTransport.calls.size)
            val during = LyricsCancellationSignal()
            val duringTransport = FakeTransport { during.cancel(); catalogs[index].bytes() }
            expectCancellation { factory(duringTransport).search(request, deadline, during) }
            assertEquals(1, duringTransport.calls.size)
            assertSame(during, duringTransport.calls.single().cancellation)
        }
    }

    @Test fun eachSourcePropagatesCancellationBeforeBodyNetwork() {
        val catalogs = listOf(kugouCatalog(), kuwoCatalog(), miguCatalog(), sodaCatalog())
        sourceFactories().forEachIndexed { index, factory ->
            val transport = FakeTransport { catalogs[index].bytes() }
            val source = factory(transport)
            val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
            expectCancellation { source.loadLyrics(candidate, deadline, LyricsCancellationSignal().apply { cancel() }) }
            assertEquals(1, transport.calls.size)
        }
    }

    @Test fun kugouRejectsContradictoryKrcMetadataWithoutDiscardingValidatedLines() {
        val transport = FakeTransport { url -> when {
            url.contains("song_search_v2") -> kugouCatalog().bytes()
            url.contains("/search?") -> JSONObject().put("status", 200).put("candidates", JSONArray().put(
                JSONObject().put("id", "10").put("accesskey", "10".reversed()))).bytes()
            url.queryValues()["fmt"] == "lrc" -> JSONObject().put("status", 200).put("content", SyntheticWordLyricsFixtures.base64("[00:01.250]Hello road")).bytes()
            else -> JSONObject().put("status", 200).put("content", SyntheticWordLyricsFixtures.krc("[ti:Another Song]\n[1250,800]<0,800,0>Hello road")).bytes()
        } }
        val source = KugouLyricsSource(transport)
        val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
        val result = source.loadLyrics(candidate, deadline, LyricsCancellationSignal())!!
        assertEquals("[00:01.250]Hello road", result.lyrics)
        assertEquals("", result.wordLyrics)
        assertEquals(candidate.candidateSnapshot(), result.candidateSnapshot())
    }

    @Test fun miguRejectsContradictoryTimedMetadataBeforeLoadingOtherTracks() {
        val transport = FakeTransport { url -> if (url.contains("search_all.do")) miguCatalog().bytes()
            else "[00:01.000]歌曲名 Fixture Song\n[00:02.000]歌手名 Another Artist\n[00:03.000]Hello road".toByteArray() }
        val source = MiguLyricsSource(transport)
        val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
        assertNull(source.loadLyrics(candidate, deadline, LyricsCancellationSignal()))
        assertEquals(2, transport.calls.size)
    }

    @Test fun bodyBusinessRejectionsFromAllFourSourcesAreNotNoMatch() {
        val catalogs = listOf(kugouCatalog(), kuwoCatalog(), miguCatalog(), sodaCatalog())
        val factories: List<(LyricsTransport) -> LyricsCatalogSource> = sourceFactories()
        val failures = listOf(JSONObject().put("status", 200).put("errcode", 429),
            JSONObject().put("code", 429), JSONObject().put("code", "429"), JSONObject().put("status_code", 429))
        factories.forEachIndexed { index, factory ->
            val transport = FakeTransport { catalogs[index].bytes() }
            val source = factory(transport)
            val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
            transport.response = { failures[index].bytes() }
            val failure = sourceFailure { source.loadLyrics(candidate, deadline, LyricsCancellationSignal()) }
            assertEquals(LyricsFailureReason.RATE_LIMIT, failure.reason)
            assertTrue(failure.retryable)
            assertEquals(2, transport.calls.size)
        }
    }

    @Test fun baseLyricsReturnBeforeAnyOptionalTrackAndEnrichmentKeepsTheCompleteIdentity() {
        for (index in 0..2) {
            var enrichmentAllowed = false
            var optionalCalls = 0
            val transport = enrichmentTransport(index) { url ->
                assertTrue("Optional tracks must wait for the explicit enrichment phase", enrichmentAllowed)
                optionalCalls++
                when (index) {
                    0 -> JSONObject().put("status", 200).put("content", SyntheticWordLyricsFixtures.krc(
                        "[1250,800]<0,300,0>Hello<300,500,0> road")).bytes()
                    1 -> SyntheticWordLyricsFixtures.lrcx("[kuwo:071]\n[00:01.250]<2100,-2100>Hello<5000,-2000> road")
                    else -> if (url.endsWith("/fixture-translation")) "[00:01.250]你好道路".toByteArray()
                        else SyntheticWordLyricsFixtures.mrc("[1250,800]Hello(1250,300) road(1550,500)").toByteArray()
                }
            }
            val source = sourceFactories()[index](transport)
            val cancellation = LyricsCancellationSignal()
            val candidate = source.search(request, deadline, cancellation).single()
            val base = source.loadBaseLyrics(candidate, deadline, cancellation)!!
            assertEquals("[00:01.250]Hello road", base.lyrics)
            assertEquals("", base.wordLyrics)
            assertEquals("", base.translatedLyrics)
            assertEquals(candidate.candidateSnapshot(), base.candidateSnapshot())
            assertEquals(if (index == 0) 3 else 2, transport.calls.size)
            assertEquals(0, optionalCalls)
            enrichmentAllowed = true
            val enriched = source.loadEnrichment(base, deadline, cancellation)!!
            assertEquals("[1250,800](1250,300,0)Hello(1550,500,0) road", enriched.wordLyrics)
            assertEquals(base.lyrics, enriched.lyrics)
            assertEquals(candidate.candidateSnapshot(), enriched.candidateSnapshot())
            assertEquals(if (index == 2) "[00:01.250]你好道路" else "", enriched.translatedLyrics)
            assertEquals(if (index == 2) 2 else 1, optionalCalls)
            assertEquals(if (index == 1) 3 else 4, transport.calls.size)
            transport.calls.forEach {
                assertEquals(deadline, it.deadline)
                assertSame(cancellation, it.cancellation)
            }
            if (index == 0) {
                val downloads = transport.calls.filter { it.url.contains("/download?") }
                assertEquals(listOf("lrc", "krc"), downloads.map { it.url.queryValues()["fmt"] })
                assertEquals(1, downloads.map { it.url.queryValues()["id"] }.distinct().size)
                assertEquals(1, downloads.map { it.url.queryValues()["accesskey"] }.distinct().size)
                assertFalse(enriched.toJson().toString().contains("accesskey"))
            }
        }
    }

    @Test fun deferredOptionalFailuresAndExhaustedBudgetsKeepTheAlreadyReturnedBase() {
        for (index in 0..2) {
            val transport = enrichmentTransport(index) {
                throw LyricsSourceException(LyricsFailureReason.NETWORK, true, "Synthetic optional failure")
            }
            val source = sourceFactories()[index](transport)
            val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
            val base = source.loadBaseLyrics(candidate, deadline, LyricsCancellationSignal())!!
            assertNull(source.loadEnrichment(base, deadline, LyricsCancellationSignal()))
            assertEquals("[00:01.250]Hello road", base.lyrics)
            assertEquals("", base.wordLyrics)
            assertEquals(candidate.candidateSnapshot(), base.candidateSnapshot())
            val beforeExpiredEnrichment = transport.calls.size
            assertNull(source.loadEnrichment(base, System.nanoTime() - 1L, LyricsCancellationSignal()))
            assertEquals(beforeExpiredEnrichment, transport.calls.size)
        }
    }

    @Test fun deferredEnrichmentRejectsAlteredRecordingIdentityBeforeAnyRequest() {
        for (index in 0..2) {
            val transport = enrichmentTransport(index) { error("Altered identity must not request optional tracks") }
            val source = sourceFactories()[index](transport)
            val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
            val base = source.loadBaseLyrics(candidate, deadline, LyricsCancellationSignal())!!
            val calls = transport.calls.size
            assertNull(source.loadEnrichment(base.copy(candidateTrack = "Another Recording"), deadline, LyricsCancellationSignal()))
            assertNull(source.loadEnrichment(base.copy(durationMs = base.durationMs + 10_000L), deadline, LyricsCancellationSignal()))
            assertEquals(calls, transport.calls.size)
        }
    }

    @Test fun deferredEnrichmentPropagatesCancellationBeforeAndDuringOptionalRequests() {
        for (index in 0..2) {
            val during = LyricsCancellationSignal()
            val transport = enrichmentTransport(index) {
                during.cancel()
                throw LyricsSourceException(LyricsFailureReason.NETWORK, true, "Synthetic cancelled connection")
            }
            val source = sourceFactories()[index](transport)
            val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
            val base = source.loadBaseLyrics(candidate, deadline, LyricsCancellationSignal())!!
            val calls = transport.calls.size
            expectCancellation { source.loadEnrichment(base, deadline, LyricsCancellationSignal().apply { cancel() }) }
            assertEquals(calls, transport.calls.size)
            expectCancellation { source.loadEnrichment(base, deadline, during) }
            assertEquals("[00:01.250]Hello road", base.lyrics)
        }
    }

    @Test fun wordOnlyKugouAndMiguResourcesStillLoadAfterAnEmptyBaseWithoutInventedTiming() {
        for (index in listOf(0, 2)) {
            var optionalCalls = 0
            val transport = enrichmentTransport(index) { url ->
                optionalCalls++
                if (index == 0) JSONObject().put("status", 200).put("content", SyntheticWordLyricsFixtures.krc(
                    "[1250,800]<0,300,0>Hello<300,500,0> road")).bytes()
                else if (url.endsWith("/fixture-translation")) byteArrayOf()
                else SyntheticWordLyricsFixtures.mrc("[1250,800]Hello(1250,300) road(1550,500)").toByteArray()
            }
            val originalResponse = transport.response
            transport.response = { url -> when {
                url.queryValues()["fmt"] == "lrc" -> JSONObject().put("status", 200).put("content", "").bytes()
                url.endsWith("/fixture-line") -> byteArrayOf()
                else -> originalResponse(url)
            } }
            val source = sourceFactories()[index](transport)
            val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
            assertNull(source.loadBaseLyrics(candidate, deadline, LyricsCancellationSignal()))
            assertEquals(0, optionalCalls)
            if (index == 2) assertEquals(candidate, source.search(request, deadline, LyricsCancellationSignal()).single())
            val enriched = source.loadEnrichment(candidate, deadline, LyricsCancellationSignal())!!
            assertEquals("[1250,800](1250,300,0)Hello(1550,500,0) road", enriched.wordLyrics)
            assertEquals(candidate.candidateSnapshot(), enriched.candidateSnapshot())
            val words = enriched.timedLines().single().words
            assertEquals(listOf(1250L, 1550L), words.map { it.startTimeMs })
            assertEquals(listOf(1550L, 2050L), words.map { it.endTimeMs })
        }
    }

    @Test fun miguKeepsEitherSuccessfulOptionalTrackWhenTheOtherOneFails() {
        for (failedTranslation in listOf(true, false)) {
            val transport = enrichmentTransport(2) { url ->
                val translation = url.endsWith("/fixture-translation")
                if (translation == failedTranslation) throw LyricsSourceException(
                    LyricsFailureReason.SERVER, false, "Synthetic optional rejection")
                if (translation) "[00:01.250]你好道路".toByteArray()
                else SyntheticWordLyricsFixtures.mrc("[1250,800]Hello(1250,300) road(1550,500)").toByteArray()
            }
            val source = MiguLyricsSource(transport)
            val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
            val base = source.loadBaseLyrics(candidate, deadline, LyricsCancellationSignal())!!
            val enriched = source.loadEnrichment(base, deadline, LyricsCancellationSignal())!!
            assertEquals(base.lyrics, enriched.lyrics)
            assertEquals(base.candidateSnapshot(), enriched.candidateSnapshot())
            assertEquals(if (failedTranslation) "" else "[00:01.250]你好道路", enriched.translatedLyrics)
            assertEquals(!failedTranslation, enriched.wordLyrics.isEmpty())
            assertEquals(4, transport.calls.size)
        }
    }

    @Test fun optionalTracksKeepValidatedLinesOnTypedNetworkBusinessAndDeadlineFailures() {
        val errors = listOf(
            LyricsSourceException(LyricsFailureReason.NETWORK, true, "Synthetic network failure"),
            LyricsSourceException(LyricsFailureReason.DEADLINE, true, "Synthetic deadline"),
            LyricsHttpStatusException(403, LyricsFailureReason.NETWORK, false),
            LyricsSourceException(LyricsFailureReason.SERVER, false, "Synthetic malformed optional payload")
        )
        errors.forEach { error ->
            for (index in 0..2) {
                val transport = enrichmentTransport(index) { throw error }
                val source = sourceFactories()[index](transport)
                val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
                val result = source.loadLyrics(candidate, deadline, LyricsCancellationSignal())!!
                assertEquals("[00:01.250]Hello road", result.lyrics)
                assertEquals("", result.wordLyrics)
                assertEquals("", result.translatedLyrics)
                assertEquals(candidate.candidateSnapshot(), result.candidateSnapshot())
            }
        }
    }

    @Test fun optionalTracksNeverSwallowCancellationAfterAValidLineWasFetched() {
        for (index in 0..2) {
            val cancellation = LyricsCancellationSignal()
            val transport = enrichmentTransport(index) {
                cancellation.cancel()
                throw LyricsSourceException(LyricsFailureReason.NETWORK, true, "Synthetic cancelled connection")
            }
            val source = sourceFactories()[index](transport)
            val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
            expectCancellation { source.loadLyrics(candidate, deadline, cancellation) }
        }
    }

    @Test fun kugouDownloadErrorCodeIsNotConfusedWithAnEmptyLyric() {
        val transport = enrichmentTransport(0) { error("Must reject the main download first") }
        val original = transport.response
        transport.response = { url -> if (url.queryValues()["fmt"] == "lrc")
            JSONObject().put("status", 200).put("error_code", 429).put("content", "").bytes() else original(url) }
        val source = KugouLyricsSource(transport)
        val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
        assertEquals(LyricsFailureReason.RATE_LIMIT, sourceFailure { source.loadLyrics(candidate, deadline, LyricsCancellationSignal()) }.reason)
    }

    @Test fun kugouWordFailureWithoutAnyLineBodyStillPropagatesAsFailure() {
        val transport = enrichmentTransport(0) { throw LyricsSourceException(LyricsFailureReason.RATE_LIMIT, true, "Synthetic rate limit") }
        val original = transport.response
        transport.response = { url -> if (url.queryValues()["fmt"] == "lrc") JSONObject().put("status", 200).put("content", "").bytes() else original(url) }
        val source = KugouLyricsSource(transport)
        val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
        assertEquals(LyricsFailureReason.RATE_LIMIT, sourceFailure { source.loadLyrics(candidate, deadline, LyricsCancellationSignal()) }.reason)
    }

    @Test fun anExhaustedAuxiliaryBudgetDoesNotDiscardTheAlreadyFetchedLine() {
        for (index in 0..2) {
            val transport = enrichmentTransport(index) { error("No optional request after deadline") }
            val source = sourceFactories()[index](transport)
            val candidate = source.search(request, deadline, LyricsCancellationSignal()).single()
            assertNotNull(source.loadLyrics(candidate, System.nanoTime() - 1L, LyricsCancellationSignal()))
        }
    }

    @Test fun invalidSuccessfulPayloadsAreNotSilentNoMatch() {
        sourceFactories().forEach { factory ->
            val failure = sourceFailure { factory(FakeTransport { "{\"unexpected\":true}".toByteArray() }).search(request, deadline, LyricsCancellationSignal()) }
            assertEquals(LyricsFailureReason.SERVER, failure.reason)
            assertFalse(failure.retryable)
        }
    }

    private fun assertCandidate(candidate: LyricsResult, source: String, id: String, duration: Long) {
        assertEquals(source, candidate.source)
        assertEquals(id, candidate.sourceId)
        assertEquals(duration, candidate.durationMs)
        assertEquals("Fixture Song", candidate.candidateTrack)
        assertEquals("Fixture Artist", candidate.candidateArtist)
        assertEquals("Fixture Album", candidate.candidateAlbum)
    }
    private fun enrichmentTransport(index: Int, optional: (String) -> ByteArray): FakeTransport = FakeTransport { url ->
        when (index) {
            0 -> when {
                url.contains("song_search_v2") -> kugouCatalog().bytes()
                url.contains("/search?") -> JSONObject().put("status", 200).put("candidates", JSONArray().put(
                    JSONObject().put("id", "10").put("accesskey", "01".reversed()))).bytes()
                url.queryValues()["fmt"] == "lrc" -> JSONObject().put("status", 200).put("content", SyntheticWordLyricsFixtures.base64("[00:01.250]Hello road")).bytes()
                else -> optional(url)
            }
            1 -> when {
                url.contains("/r.s?") -> kuwoCatalog().bytes()
                url.contains("getlyric") -> JSONObject().put("code", 200).put("data", JSONObject().put("lrclist", JSONArray().put(
                    JSONObject().put("time", "1.250").put("lineLyric", "Hello road")))).bytes()
                else -> optional(url)
            }
            else -> when {
                url.contains("search_all.do") -> miguCatalog().bytes()
                url.endsWith("/fixture-line") -> "[00:01.250]Hello road".toByteArray()
                else -> optional(url)
            }
        }
    }
    private fun sourceFactories(): List<(LyricsTransport) -> LyricsCatalogSource> = listOf(::KugouLyricsSource, ::KuwoLyricsSource, ::MiguLyricsSource, ::SodaLyricsSource)
    private fun kugouCatalog(): JSONObject = JSONObject().put("status", 1).put("error_code", 0).put("data", JSONObject().put("lists", JSONArray().put(
        JSONObject().put("FileHash", hash.uppercase()).put("SongName", "Fixture Song").put("SingerName", "Fixture Artist")
            .put("AlbumName", "Fixture Album").put("AlbumID", "17").put("Duration", 200.125))))
    private fun kuwoCatalog(): JSONObject = JSONObject().put("TOTAL", "1").put("abslist", JSONArray().put(
        JSONObject().put("MUSICRID", "MUSIC_17").put("SONGNAME", "Fixture Song").put("ARTIST", "Fixture Artist")
            .put("ALBUM", "Fixture Album").put("DURATION", "3:20.125").put("web_albumpic_short", "120/fixture/cover.jpg")))
    private fun miguCatalog(): JSONObject = JSONObject().put("code", "000000").put("songResultData", JSONObject().put("result", JSONArray().put(
        JSONObject().put("copyrightId", "fixture-copyright").put("name", "Fixture Song").put("singers", names())
            .put("albums", JSONArray().put(JSONObject().put("name", "Fixture Album")))
            .put("lyricUrl", "https://d.musicapp.migu.cn/fixture-line").put("trcUrl", "https://d.musicapp.migu.cn/fixture-translation")
            .put("mrcurl", "https://d.musicapp.migu.cn/fixture-word").put("imgItems", JSONArray()
                .put(JSONObject().put("imgSizeType", "01").put("img", "https://d.musicapp.migu.cn/fixture-cover-small"))
                .put(JSONObject().put("imgSizeType", "03").put("img", "https://d.musicapp.migu.cn/fixture-cover-large"))))))
    private fun sodaCatalog(): JSONObject = JSONObject().put("status_code", 0).put("result_groups", JSONArray()
        .put(JSONObject().put("id", "artists").put("data", JSONArray().put(JSONObject().put("entity", JSONObject().put("track", sodaTrack("irrelevant"))))))
        .put(JSONObject().put("id", "tracks").put("data", JSONArray().put(JSONObject().put("entity", JSONObject().put("track", sodaTrack("fixture-soda")))))))
    private fun sodaBody(id: String = "fixture-soda"): JSONObject = JSONObject().put("seo_track", JSONObject().put("track", sodaTrack(id))).put("lyric", JSONObject()
        .put("content", "[1250,800]<0,300,0>Hello<300,500,0> road")
        .put("translations", JSONObject().put("cn", "[00:01.250]你好道路")))
    private fun sodaTrack(id: String): JSONObject = JSONObject().put("id", id).put("name", "Fixture Song").put("duration", 200125).put("artists", names())
        .put("album", JSONObject().put("name", "Fixture Album").put("url_cover", JSONObject().put("uri", "fixture-cover")))
    private fun names(): JSONArray = JSONArray().put(JSONObject().put("name", "Fixture Artist"))
    private fun sourceFailure(block: () -> Any?): LyricsSourceException {
        try { block(); fail("Expected source failure") } catch (error: LyricsSourceException) { return error }
        error("Missing failure")
    }
    private fun expectCancellation(block: () -> Any?) {
        try { block(); fail("Expected cancellation") } catch (_: CancellationException) { }
    }
    private fun JSONObject.bytes(): ByteArray = toString().toByteArray()
    private fun String.queryValues(): Map<String, String> = URL(this).query.orEmpty().split('&').filter { it.contains('=') }.associate { part ->
        val values = part.split('=', limit = 2)
        URLDecoder.decode(values[0], "UTF-8") to URLDecoder.decode(values[1], "UTF-8")
    }
    private class FakeTransport(var response: (String) -> ByteArray) : LyricsTransport {
        data class Call(val url: String, val headers: Map<String, String>, val deadline: Long, val cancellation: LyricsCancellationSignal)
        val calls = mutableListOf<Call>()
        override fun getText(url: String, headers: Map<String, String>, deadlineNanos: Long, cancellation: LyricsCancellationSignal): String =
            getBytes(url, headers, deadlineNanos, cancellation).toString(Charsets.UTF_8)
        override fun getBytes(url: String, headers: Map<String, String>, deadlineNanos: Long, cancellation: LyricsCancellationSignal): ByteArray {
            cancellation.throwIfCancelled()
            calls += Call(url, headers, deadlineNanos, cancellation)
            return response(url)
        }
    }
}
