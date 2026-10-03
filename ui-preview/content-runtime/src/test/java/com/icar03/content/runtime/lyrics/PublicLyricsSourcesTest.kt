package com.icar03.content.runtime.lyrics

import org.json.JSONArray
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import java.net.URI
import java.net.URLDecoder
import java.nio.charset.Charset
import java.util.ArrayDeque
import java.util.Base64
import java.util.concurrent.CancellationException

// All service payloads are synthetic, not captured responses from real songs.
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class PublicLyricsSourcesTest {
    @Test fun catalogAndResolverDefaultsRemainCompatibleWithExistingSourcesAndLambdas() {
        val transport = FakeTransport()
        val cover = "https://example.test/existing.jpg"
        val source = QqLyricsSource(transport, wordSource = null)
        assertEquals(cover, source.loadCover(candidate(SOURCE_QQ).copy(cover = cover), DEADLINE, signal()))
        assertTrue(transport.requests.isEmpty())
        assertTrue(source.isAvailable)
        var legacyCalls = 0
        val legacy = object : LyricsBodySource {
            override val sourceName = "Legacy"
            override fun loadLyrics(candidate: LyricsResult, deadlineNanos: Long,
                cancellation: LyricsCancellationSignal): LyricsResult {
                legacyCalls++
                return candidate.copy(lyrics = "[00:01.00]legacy")
            }
        }
        assertEquals("[00:01.00]legacy", legacy.loadBaseLyrics(candidate(), DEADLINE, signal())!!.lyrics)
        assertNull(legacy.loadEnrichment(candidate(), DEADLINE, signal()))
        assertEquals(1, legacyCalls)
        val query = LyricsLookup("Song", "Artist")
        val covers = mutableListOf<String>()
        assertEquals(listOf(cover), LyricsCoverResolver { _, _ -> cover }
            .resolveCoversProgressive(query, signal(), covers::add))
        assertEquals(listOf(cover), covers)
        assertEquals(listOf(cover), LyricsCoverResolver { _, _ -> cover }.resolveCovers(query, signal()))
        assertTrue(LyricsCoverResolver { _, _ -> "" }.resolveCovers(query, signal()).isEmpty())
    }

    @Test fun neteaseSearchWithoutPictureUsesSelectedSongDetailAndDoesNotRewriteIdentity() {
        val song = JSONObject().put("id", 4242).put("name", "Song").put("duration", 200_000)
            .put("artists", JSONArray().put(JSONObject().put("name", "Artist")))
            .put("album", JSONObject().put("name", "Album").put("picId", 100))
        val search = JSONObject().put("code", 200)
            .put("result", JSONObject().put("songs", JSONArray().put(song)))
        val detail = songDetail(4242, "album").put("name", "Unrelated detail label")
        val transport = FakeTransport(search.toString(), detailResponse(detail))
        val source = NetEaseLyricsSource(transport)
        val cancellation = signal()
        val selected = source.search(request(), DEADLINE, cancellation).single()
        val identity = selected.candidateSnapshot()
        assertEquals("", selected.cover)
        assertEquals(COVER, source.loadCover(selected, DEADLINE, cancellation))
        assertEquals(identity, selected.candidateSnapshot())
        assertEquals(2, transport.requests.size)
        val detailRequest = transport.requests.last()
        assertEquals("/api/song/detail/", URI(detailRequest.url).path)
        val parameters = parameters(detailRequest.url)
        assertEquals("4242", parameters["id"])
        val ids = JSONArray(parameters.getValue("ids"))
        assertEquals(1, ids.length())
        assertEquals(4242L, ids.getLong(0))
        assertEquals(DEADLINE, detailRequest.deadlineNanos)
        assertSame(cancellation, detailRequest.cancellation)
    }

    @Test fun neteaseDetailSupportsModernAlbumField() {
        val transport = FakeTransport(detailResponse(songDetail(4242, "al")))
        assertEquals(COVER, NetEaseLyricsSource(transport).loadCover(candidate(), DEADLINE, signal()))
    }

    @Test fun neteaseDetailNeverUsesAnotherSongOrAnUnverifiedMissingId() {
        for (song in listOf(songDetail(4243, "album"), songDetail(4242, "album").apply { remove("id") })) {
            val transport = FakeTransport(detailResponse(song))
            assertEquals("", NetEaseLyricsSource(transport).loadCover(candidate(), DEADLINE, signal()))
        }
    }

    @Test fun neteaseExistingCoverAndInvalidSongIdsDoNotStartDetailRequests() {
        val transport = FakeTransport()
        val source = NetEaseLyricsSource(transport)
        assertEquals(COVER, source.loadCover(candidate().copy(cover = COVER), DEADLINE, signal()))
        for (id in listOf("", "0", "-1", "not-a-song")) {
            assertEquals("", source.loadCover(candidate().copy(sourceId = id), DEADLINE, signal()))
        }
        assertTrue(transport.requests.isEmpty())
    }

    @Test fun neteaseDetailFailureCodeIsNotAnEmptyCoverSuccess() {
        val payload = JSONObject().put("code", 500).put("songs", JSONArray().put(songDetail(4242, "album")))
        val source = NetEaseLyricsSource(FakeTransport(payload.toString()))
        val error = assertThrows(LyricsSourceException::class.java) {
            source.loadCover(candidate(), DEADLINE, signal())
        }
        assertEquals(LyricsFailureReason.SERVER, error.reason)
        assertTrue(error.retryable)
    }

    @Test fun neteaseCatalogAndBodyFailureCodesAreTypedFailuresInsteadOfNoMatch() {
        val catalog = NetEaseLyricsSource(FakeTransport("{\"code\":-462}"))
        val error = assertThrows(LyricsSourceException::class.java) {
            catalog.search(request(), DEADLINE, signal())
        }
        assertEquals(LyricsFailureReason.RATE_LIMIT, error.reason)
        assertTrue(error.retryable)
        val body = NetEaseLyricsSource(FakeTransport("{\"code\":403}"))
        assertThrows(LyricsSourceException::class.java) { body.loadLyrics(candidate(), DEADLINE, signal()) }
    }

    @Test fun qqSearchRetainsSongMidAndAlbumCoverFromTheExistingApi() {
        val song = JSONObject().put("songmid", "synthetic-mid").put("songname", "Song")
            .put("interval", 200).put("albumname", "Album").put("albummid", "synthetic-album")
            .put("singer", JSONArray().put(JSONObject().put("name", "Artist")))
        val root = JSONObject().put("code", 0).put("data", JSONObject()
            .put("song", JSONObject().put("list", JSONArray().put(song))))
        val result = QqLyricsSource(FakeTransport(root.toString()), wordSource = null).search(request(), DEADLINE, signal()).single()
        assertEquals("synthetic-mid", result.sourceId)
        assertEquals(200_000L, result.durationMs)
        assertEquals("Artist", result.candidateArtist)
        assertEquals("https://y.gtimg.cn/music/photo_new/T002R800x800M000synthetic-album.jpg", result.cover)
    }

    @Test fun qqCatalogAndRetcodeFailuresAreNotAcceptedEvenWhenHttpWouldBeSuccessful() {
        val catalog = QqLyricsSource(FakeTransport("{\"code\":100001}"), wordSource = null)
        assertThrows(LyricsSourceException::class.java) { catalog.search(request(), DEADLINE, signal()) }
        val root = JSONObject().put("code", 0).put("retcode", 100001).put("lyric", "[00:01.00]a")
        val body = QqLyricsSource(FakeTransport(root.toString()), wordSource = null)
        assertThrows(LyricsSourceException::class.java) {
            body.loadLyrics(candidate(SOURCE_QQ), DEADLINE, signal())
        }
    }

    @Test fun qqAnsweredNoLyricsCodeDoesNotBecomeARetryableSourceFailure() {
        val source = QqLyricsSource(FakeTransport("{\"code\":0,\"retcode\":-1901}"), wordSource = null)
        assertNull(source.loadLyrics(candidate(SOURCE_QQ), DEADLINE, signal()))
    }

    @Test fun qqBase64OriginalAndTranslationAreDecodedFromJsonAndJsonp() {
        val lyrics = "[00:01.00]甲\n[00:02.00]乙"
        val translated = "[00:01.00]first\n[00:02.00]second"
        val root = JSONObject().put("code", 0).put("retcode", 0)
            .put("lyric", base64(lyrics)).put("trans", base64(translated)).toString()
        for (payload in listOf(root, " MusicJsonCallback($root); ")) {
            val original = candidate(SOURCE_QQ)
            val transport = FakeTransport(payload)
            val result = QqLyricsSource(transport, wordSource = null).loadLyrics(original, DEADLINE, signal())!!
            assertEquals(lyrics, result.lyrics)
            assertEquals(translated, result.translatedLyrics)
            assertEquals(original.candidateSnapshot(), result.candidateSnapshot())
            assertEquals(listOf("first", "second"), LrcParser.align(result.lyrics, result.translatedLyrics)
                .map { it.translation })
            assertEquals("json", parameters(transport.requests.single().url)["format"])
        }
    }

    @Test fun qqPlainLrcAndNumericHtmlEntitiesAreNotDoubleDecoded() {
        val encoded = "&#91;00&#58;01.00&#93;A &amp; B&#10;&#91;00:02.00&#93;Don&apos;t &amp;amp;"
        val root = JSONObject().put("code", 0).put("lyric", encoded)
        val result = QqLyricsSource(FakeTransport(root.toString()), wordSource = null)
            .loadLyrics(candidate(SOURCE_QQ), DEADLINE, signal())!!
        assertEquals("[00:01.00]A & B\n[00:02.00]Don't &amp;", result.lyrics)
    }

    @Test fun base64ShapedPlainWordsAreNotReplacedWithHiddenControlCharacters() {
        val source = QqLyricsSource(FakeTransport("{\"code\":0,\"lyric\":\"AAAA\"}"), wordSource = null)
        val result = source.loadLyrics(candidate(SOURCE_QQ), DEADLINE, signal())!!
        assertEquals("AAAA", result.plainLyrics)
        assertEquals("", result.lyrics)
        assertEquals(LyricsKind.PLAIN, result.lyricsKind)
    }

    @Test fun qqGbkJsonpFallbackPreservesChineseText() {
        val root = JSONObject().put("code", 0).put("lyric", "[00:01.00]甲乙")
        val transport = FakeTransport().apply {
            replies.add("callback($root);".toByteArray(Charset.forName("GBK")))
        }
        assertEquals("[00:01.00]甲乙", QqLyricsSource(transport, wordSource = null)
            .loadLyrics(candidate(SOURCE_QQ), DEADLINE, signal())!!.lyrics)
    }

    @Test fun invalidJsonpOrTrailingPayloadIsASourceFailureNotNoLyrics() {
        for (payload in listOf("callback({\"code\":0});extra({})", "not json", "{\"code\":0} trailing")) {
            val source = QqLyricsSource(FakeTransport(payload), wordSource = null)
            assertThrows(LyricsSourceException::class.java) {
                source.loadLyrics(candidate(SOURCE_QQ), DEADLINE, signal())
            }
        }
    }

    @Test fun qqBaseReturnsBeforeQrcAndEnrichmentKeepsTheSameIdentityAndMainTracks() {
        val translated = "[00:01.00]base translation"
        val transport = FakeTransport(qqCatalog("synthetic-mid", "4242"), JSONObject().put("code", 0)
            .put("lyric", "[00:01.00]ab").put("trans", translated).toString())
        val cancellation = signal()
        val operations = mutableListOf<String>()
        val post = LyricsPostTransport { _, body, _, deadline, requestCancellation ->
            assertEquals(DEADLINE, deadline)
            assertSame(cancellation, requestCancellation)
            val operation = body.getJSONObject("request")
            val method = operation.getString("method")
            operations += method
            val data = if (method == "GetSession") JSONObject().put("session", JSONObject()
                .put("sid", "synthetic-base-enrichment").put("uid", "0")) else {
                assertEquals("GetPlayLyricInfo", method)
                assertEquals(4242L, operation.getJSONObject("param").getLong("songID"))
                JSONObject().put("qrc_t", 1).put("lyric", encrypted(qrcXml("[1000,1000]a(1000,500)b(1500,500)")))
            }
            JSONObject().put("code", 0).put("request", JSONObject().put("code", 0).put("data", data)).toString()
        }
        val source = QqLyricsSource(transport, QqWordLyricsSource(transport, post))
        val selected = source.search(request(), DEADLINE, cancellation).single()
        val base = source.loadBaseLyrics(selected, DEADLINE, cancellation)!!
        assertEquals("[00:01.00]ab", base.lyrics)
        assertEquals(translated, base.translatedLyrics)
        assertEquals("", base.wordLyrics)
        assertTrue("QRC is deferred until enrichment", operations.isEmpty())
        assertEquals(2, transport.requests.size)
        val enriched = source.loadEnrichment(base, DEADLINE, cancellation)!!
        assertEquals(listOf("GetSession", "GetPlayLyricInfo"), operations)
        assertEquals(YRC, enriched.wordLyrics)
        assertEquals(base.lyrics, enriched.lyrics)
        assertEquals(translated, enriched.translatedLyrics)
        assertEquals(selected.candidateSnapshot(), enriched.candidateSnapshot())
        assertEquals(2, transport.requests.size)
    }

    @Test fun qqEmptyBaseKeepsFirstResponseTranslationWhenOnlyQrcProvidesTheBody() {
        val translated = "[00:01.00]base translation"
        val transport = FakeTransport(qqCatalog("synthetic-mid", "4242"), JSONObject().put("code", 0)
            .put("lyric", "").put("trans", translated).toString())
        var calls = 0
        val post = LyricsPostTransport { _, body, _, _, _ ->
            calls++
            val data = if (body.getJSONObject("request").getString("method") == "GetSession")
                JSONObject().put("session", JSONObject().put("sid", "synthetic-word-only").put("uid", "0"))
            else JSONObject().put("qrc_t", 1).put("lyric", encrypted(qrcXml("[1000,1000]a(1000,500)b(1500,500)")))
            JSONObject().put("code", 0).put("request", JSONObject().put("code", 0).put("data", data)).toString()
        }
        val source = QqLyricsSource(transport, QqWordLyricsSource(transport, post))
        val selected = source.search(request(), DEADLINE, signal()).single()
        assertNull(source.loadBaseLyrics(selected, DEADLINE, signal()))
        assertEquals(0, calls)
        val enriched = source.loadEnrichment(selected, DEADLINE, signal())!!
        assertEquals("", enriched.lyrics)
        assertEquals(YRC, enriched.wordLyrics)
        assertEquals(translated, enriched.translatedLyrics)
        assertEquals(selected.candidateSnapshot(), enriched.candidateSnapshot())
        assertEquals(2, calls)
    }

    @Test fun neteaseBaseReturnsBeforeTheSeparateYrcRequestAndEnrichmentPreservesProof() {
        val transport = FakeTransport(neteaseBundle(), yrcBundle())
        val cancellation = signal()
        val source = NetEaseLyricsSource(transport)
        val original = candidate()
        val query = LyricsLookup("Song", "Artist", "Album", 200_000L)
        val proof = LyricsCandidateSelector.selectCandidatesWithProof(query, listOf(original)).single().proof
        val base = source.loadBaseLyrics(original, DEADLINE, cancellation)!!
        assertEquals("[00:01.00]ab", base.lyrics)
        assertEquals("[00:01.00]translated", base.translatedLyrics)
        assertEquals("[00:01.00]roma", base.romanizedLyrics)
        assertTrue(base.wordLyrics.isEmpty())
        assertEquals(1, transport.requests.size)
        assertEquals("/api/song/lyric", URI(transport.requests.single().url).path)
        assertTrue(LyricsCandidateSelector.isProofValid(query, base, proof))
        val enriched = source.loadEnrichment(base, DEADLINE, cancellation)!!
        assertEquals(YRC, enriched.wordLyrics)
        assertEquals(base.copy(wordLyrics = YRC), enriched)
        assertEquals(original.candidateSnapshot(), enriched.candidateSnapshot())
        assertTrue(LyricsCandidateSelector.isProofValid(query, enriched, proof))
        assertEquals(2, transport.requests.size)
        assertEquals("/api/song/lyric/v1", URI(transport.requests.last().url).path)
        transport.requests.forEach {
            assertEquals(DEADLINE, it.deadlineNanos)
            assertSame(cancellation, it.cancellation)
        }
    }

    @Test fun neteaseBaseKeepsYrcFromTheSameResponseWithoutAnExtraRequest() {
        val root = JSONObject(neteaseBundle()).put("yrc", JSONObject().put("lyric", YRC))
        val transport = FakeTransport(root.toString())
        val source = NetEaseLyricsSource(transport)
        val base = source.loadBaseLyrics(candidate(), DEADLINE, signal())!!
        assertEquals(YRC, base.wordLyrics)
        assertNull(source.loadEnrichment(base, DEADLINE, signal()))
        assertEquals(1, transport.requests.size)
    }

    @Test fun deferredPublicEnrichmentFailuresReturnNoUpgradeAndKeepTheBaseUntouched() {
        val transport = FakeTransport(neteaseBundle()).apply {
            onRequest = { if (requests.size == 2) throw LyricsSourceException(
                LyricsFailureReason.DEADLINE, true, "Synthetic optional timeout") }
        }
        val source = NetEaseLyricsSource(transport)
        val base = source.loadBaseLyrics(candidate(), DEADLINE, signal())!!
        assertNull(source.loadEnrichment(base, DEADLINE, signal()))
        assertEquals("[00:01.00]ab", base.lyrics)
        assertEquals("[00:01.00]translated", base.translatedLyrics)
        assertEquals("", base.wordLyrics)
        val expiredCalls = transport.requests.size
        assertNull(source.loadEnrichment(base, System.nanoTime() - 1L, signal()))
        assertEquals(expiredCalls, transport.requests.size)

        var qrcCalls = 0
        val qqTransport = FakeTransport(qqCatalog("synthetic-mid", "4242"),
            "{\"code\":0,\"lyric\":\"[00:01.00]ab\"}")
        val post = LyricsPostTransport { _, _, _, _, _ ->
            qrcCalls++
            throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Synthetic QRC rejection")
        }
        val qq = QqLyricsSource(qqTransport, QqWordLyricsSource(qqTransport, post))
        val selected = qq.search(request(), DEADLINE, signal()).single()
        val qqBase = qq.loadBaseLyrics(selected, DEADLINE, signal())!!
        assertEquals(0, qrcCalls)
        assertNull(qq.loadEnrichment(qqBase, DEADLINE, signal()))
        assertEquals(1, qrcCalls)
        assertEquals("[00:01.00]ab", qqBase.lyrics)
        assertEquals(selected.candidateSnapshot(), qqBase.candidateSnapshot())
    }

    @Test fun deferredPublicEnrichmentPropagatesCancellationBeforeAndDuringItsRequest() {
        val transport = FakeTransport(neteaseBundle())
        val source = NetEaseLyricsSource(transport)
        val base = source.loadBaseLyrics(candidate(), DEADLINE, signal())!!
        assertThrows(CancellationException::class.java) {
            source.loadEnrichment(base, DEADLINE, signal().apply { cancel() })
        }
        assertEquals(1, transport.requests.size)
        val during = signal()
        transport.onRequest = {
            during.cancel()
            throw LyricsSourceException(LyricsFailureReason.NETWORK, true, "Synthetic cancelled connection")
        }
        assertThrows(CancellationException::class.java) { source.loadEnrichment(base, DEADLINE, during) }
        assertEquals("[00:01.00]ab", base.lyrics)
    }

    @Test fun neteaseTranslationRomanizationAndPublicYrcEnrichmentRemainInOneIdentity() {
        val transport = FakeTransport(neteaseBundle(), yrcBundle())
        val cancellation = signal()
        val original = candidate()
        val result = NetEaseLyricsSource(transport).loadLyrics(original, DEADLINE, cancellation)!!
        assertEquals("[00:01.00]ab", result.lyrics)
        assertEquals("[00:01.00]translated", result.translatedLyrics)
        assertEquals("[00:01.00]roma", result.romanizedLyrics)
        assertEquals(YRC, result.wordLyrics)
        assertEquals(original.candidateSnapshot(), result.candidateSnapshot())
        assertEquals(2, transport.requests.size)
        assertEquals("-1", parameters(transport.requests.first().url)["rv"])
        assertEquals("/api/song/lyric/v1", URI(transport.requests.last().url).path)
        assertEquals("4242", parameters(transport.requests.last().url)["id"])
        assertEquals("-1", parameters(transport.requests.last().url)["yv"])
        transport.requests.forEach { request ->
            assertEquals(DEADLINE, request.deadlineNanos)
            assertSame(cancellation, request.cancellation)
        }
        val line = LrcParser.align(result.lyrics, result.translatedLyrics,
            result.wordLyrics, result.romanizedLyrics).single()
        assertEquals("translated", line.translation)
        assertEquals("roma", line.romanization)
        assertEquals(2, line.words.size)
    }

    @Test fun neteaseWordTrackAlreadyPresentDoesNotFetchItAgain() {
        val root = JSONObject(neteaseBundle()).put("yrc", JSONObject().put("lyric", YRC))
        val transport = FakeTransport(root.toString())
        assertEquals(YRC, NetEaseLyricsSource(transport).loadLyrics(candidate(), DEADLINE, signal())!!.wordLyrics)
        assertEquals(1, transport.requests.size)
    }

    @Test fun failedOrInvalidOptionalYrcDoesNotDiscardValidOriginalOrTranslation() {
        for (extra in listOf("{\"code\":500}", yrcBundle("[1000,500](1000,0,0)ab"), "not json")) {
            val source = NetEaseLyricsSource(FakeTransport(neteaseBundle(), extra))
            val result = source.loadLyrics(candidate(), DEADLINE, signal())!!
            assertEquals("[00:01.00]ab", result.lyrics)
            assertEquals("[00:01.00]translated", result.translatedLyrics)
            assertTrue(result.wordLyrics.isEmpty())
        }
    }

    @Test fun neteaseWordOnlyDataKeepsRealTimingAndFirstResponseAuxiliaryTracks() {
        val empty = JSONObject().put("code", 200).put("lrc", JSONObject().put("lyric", ""))
            .put("tlyric", JSONObject().put("lyric", "[00:01.00]translated"))
            .put("romalrc", JSONObject().put("lyric", "[00:01.00]roma")).toString()
        val result = NetEaseLyricsSource(FakeTransport(empty, yrcBundle()))
            .loadLyrics(candidate(), DEADLINE, signal())!!
        assertEquals("", result.lyrics)
        assertEquals(YRC, result.wordLyrics)
        assertEquals("[00:01.00]translated", result.translatedLyrics)
        assertEquals("[00:01.00]roma", result.romanizedLyrics)
        assertEquals(LyricsKind.SYNCHRONIZED, result.lyricsKind)
        val stagedTransport = FakeTransport(empty, yrcBundle())
        val staged = NetEaseLyricsSource(stagedTransport)
        val original = candidate()
        assertNull(staged.loadBaseLyrics(original, DEADLINE, signal()))
        assertEquals(1, stagedTransport.requests.size)
        val enriched = staged.loadEnrichment(original, DEADLINE, signal())!!
        assertEquals(result, enriched)
        assertEquals(original.candidateSnapshot(), enriched.candidateSnapshot())
        assertEquals(2, stagedTransport.requests.size)
        val failed = NetEaseLyricsSource(FakeTransport(empty, "{\"code\":500}"))
        assertThrows(LyricsSourceException::class.java) { failed.loadLyrics(candidate(), DEADLINE, signal()) }
    }

    @Test fun plainLyricsFromAllSourcesRemainStaticInsteadOfInventingTimestamps() {
        val plain = "First line\nSecond line"
        val lrclibItem = JSONObject().put("id", 4242).put("trackName", "Song").put("artistName", "Artist")
            .put("albumName", "Album").put("duration", 200).put("syncedLyrics", JSONObject.NULL)
            .put("plainLyrics", plain)
        val lrcLib = LrcLibLyricsSource(FakeTransport(lrclibItem.toString()))
        val lrcLibResult = lrcLib.exact(LyricsLookup("Song", "Artist", "Album", 200_000L), DEADLINE, signal())!!
        assertEquals(lrcLibResult, lrcLib.loadLyrics(lrcLibResult, DEADLINE, signal()))
        val qqRoot = JSONObject().put("code", 0).put("lyric", base64(plain)).toString()
        val qq = QqLyricsSource(FakeTransport(qqRoot), wordSource = null).loadLyrics(candidate(SOURCE_QQ), DEADLINE, signal())!!
        val neteaseRoot = JSONObject().put("code", 200).put("lrc", JSONObject().put("lyric", plain)).toString()
        val netease = NetEaseLyricsSource(FakeTransport(neteaseRoot, "{\"code\":200}"))
            .loadLyrics(candidate(), DEADLINE, signal())!!
        for (result in listOf(lrcLibResult, qq, netease)) {
            assertEquals("", result.lyrics)
            assertEquals(plain, result.plainLyrics)
            assertEquals(LyricsKind.PLAIN, result.lyricsKind)
            assertTrue(LrcParser.parse(result.plainLyrics).isEmpty())
        }
    }

    @Test fun lrclibPreservesBothSyncAndPlainVariantsAndSearchFailureCodes() {
        val item = JSONObject().put("id", 4242).put("syncedLyrics", "[00:01.00]ab").put("plainLyrics", "ab")
        val result = LrcLibLyricsSource(FakeTransport(JSONArray().put(item).toString()))
            .fallback(LyricsLookup("Song", "Artist"), DEADLINE, signal()).single()
        assertEquals("[00:01.00]ab", result.lyrics)
        assertEquals("ab", result.plainLyrics)
        assertEquals(LyricsKind.SYNCHRONIZED, result.lyricsKind)
        val source = LrcLibLyricsSource(FakeTransport("{\"code\":429}", "{\"statusCode\":500}"))
        val exactError = assertThrows(LyricsSourceException::class.java) {
            source.exact(LyricsLookup("Song", "Artist"), DEADLINE, signal())
        }
        assertEquals(LyricsFailureReason.RATE_LIMIT, exactError.reason)
        assertThrows(LyricsSourceException::class.java) {
            source.fallback(LyricsLookup("Song", "Artist"), DEADLINE, signal())
        }
    }

    @Test fun optionalNeteaseWordEnrichmentPreservesCancellationAndDeadlineSemantics() {
        val cancellation = signal()
        val cancelledTransport = FakeTransport(neteaseBundle()).apply {
            onRequest = { request ->
                if (requests.size == 2) {
                    request.cancellation.cancel()
                    request.cancellation.throwIfCancelled()
                }
            }
        }
        assertThrows(CancellationException::class.java) {
            NetEaseLyricsSource(cancelledTransport).loadLyrics(candidate(), DEADLINE, cancellation)
        }
        val timedOutTransport = FakeTransport(neteaseBundle()).apply {
            onRequest = { if (requests.size == 2) throw LyricsSourceException(
                LyricsFailureReason.DEADLINE, true, "Synthetic optional timeout") }
        }
        assertEquals("[00:01.00]ab", NetEaseLyricsSource(timedOutTransport)
            .loadLyrics(candidate(), DEADLINE, signal())!!.lyrics)
    }

    @Test fun qqUnknownCandidatesDoNotStartAnonymousQrcRequests() {
        val transport = FakeTransport("{\"code\":0,\"lyric\":\"[00:01.00]ab\"}")
        var postCalls = 0
        val post = LyricsPostTransport { _, _, _, _, _ ->
            postCalls++
            throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Synthetic source rejection")
        }
        val source = QqLyricsSource(transport, QqWordLyricsSource(transport, post))
        assertEquals("[00:01.00]ab", source.loadLyrics(candidate(SOURCE_QQ), DEADLINE, signal())!!.lyrics)
        assertEquals(0, postCalls)
    }

    @Test fun qqOnlyPositiveCatalogSongIdsEnableOptionalQrcAndLineLyricsSurviveItsRejection() {
        for (id in listOf("", "0", "-1", "not-numeric", "4242")) {
            val transport = FakeTransport(qqCatalog("synthetic-mid", id),
                "{\"code\":0,\"lyric\":\"[00:01.00]ab\"}")
            var postCalls = 0
            val cancellation = signal()
            val post = LyricsPostTransport { _, _, _, deadline, requestCancellation ->
                assertEquals(DEADLINE, deadline)
                assertSame(cancellation, requestCancellation)
                postCalls++
                throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Synthetic source rejection")
            }
            val source = QqLyricsSource(transport, QqWordLyricsSource(transport, post))
            val selected = source.search(request(), DEADLINE, cancellation).single()
            assertEquals("[00:01.00]ab", source.loadLyrics(selected, DEADLINE, cancellation)!!.lyrics)
            assertEquals(if (id == "4242") 1 else 0, postCalls)
        }
    }

    @Test fun qqCatalogIdCacheIsBoundedAndNewUnknownIdsInvalidateOldMappings() {
        val transport = FakeTransport()
        repeat(129) { index -> transport.replies.add(qqCatalog("mid$index", "${index + 1}")
            .toByteArray(Charsets.UTF_8)) }
        transport.replies.add("{\"code\":0,\"lyric\":\"[00:01.00]ab\"}".toByteArray(Charsets.UTF_8))
        var postCalls = 0
        val post = LyricsPostTransport { _, _, _, _, _ ->
            postCalls++
            throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Synthetic source rejection")
        }
        val source = QqLyricsSource(transport, QqWordLyricsSource(transport, post))
        var first: LyricsResult? = null
        repeat(129) { if (it == 0) first = source.search(request(), DEADLINE, signal()).single()
            else source.search(request(), DEADLINE, signal()) }
        source.loadLyrics(first!!, DEADLINE, signal())
        assertEquals(0, postCalls)

        val secondTransport = FakeTransport(qqCatalog("synthetic-mid", "4242"),
            qqCatalog("synthetic-mid", ""), "{\"code\":0,\"lyric\":\"[00:01.00]ab\"}")
        val secondSource = QqLyricsSource(secondTransport, QqWordLyricsSource(secondTransport, post))
        val selected = secondSource.search(request(), DEADLINE, signal()).single()
        secondSource.search(request(), DEADLINE, signal())
        secondSource.loadLyrics(selected, DEADLINE, signal())
        assertEquals(0, postCalls)
    }

    @Test fun cancelledCoverAndBodyRequestsNeverReachTransport() {
        val transport = FakeTransport()
        val source = NetEaseLyricsSource(transport)
        val cancellation = signal().apply { cancel() }
        assertThrows(CancellationException::class.java) { source.loadCover(candidate(), DEADLINE, cancellation) }
        assertThrows(CancellationException::class.java) { source.loadLyrics(candidate(), DEADLINE, cancellation) }
        assertTrue(transport.requests.isEmpty())
    }

    @Test fun neteasePureMusicFlagAndOnlyExplicitMarkerPreserveCatalogIdentityWithoutEnrichment() {
        for (root in listOf(
            JSONObject().put("code", 200).put("pureMusic", true),
            JSONObject().put("code", 200).put("pureMusic", false)
                .put("lrc", JSONObject().put("lyric", "[99:00.00]纯音乐，请欣赏"))
        )) {
            val transport = FakeTransport(root.toString())
            val original = candidate()
            val result = NetEaseLyricsSource(transport).loadLyrics(original, DEADLINE, signal())!!
            assertTrue(result.isInstrumentalContent())
            assertEquals(original.candidateSnapshot(), result.candidateSnapshot())
            assertEquals(LyricsKind.NONE, result.contentKind())
            assertTrue(result.timedLines().isEmpty())
            assertEquals("", result.plainText())
            assertEquals(1, transport.requests.size)
        }
    }

    @Test fun markerMixedWithAnotherActualTrackIsNotReclassifiedByDroppingThatTrack() {
        val neteaseRoot = JSONObject().put("code", 200)
            .put("lrc", JSONObject().put("lyric", "[99:00.00]纯音乐，请欣赏"))
            .put("yrc", JSONObject().put("lyric", YRC))
        val netease = NetEaseLyricsSource(FakeTransport(neteaseRoot.toString()))
            .loadLyrics(candidate(), DEADLINE, signal())!!
        assertFalse(netease.isInstrumentalContent())
        assertEquals(YRC, netease.wordLyrics)
        val qqRoot = JSONObject().put("code", 0).put("lyric", "[00:00.0]纯音乐，请欣赏")
            .put("trans", "[00:01.0]A real auxiliary lyric")
        val qq = QqLyricsSource(FakeTransport(qqRoot.toString()), wordSource = null)
            .loadLyrics(candidate(SOURCE_QQ), DEADLINE, signal())!!
        assertFalse(qq.isInstrumentalContent())
        assertEquals("[00:01.0]A real auxiliary lyric", qq.translatedLyrics)
    }

    @Test fun falseMissingOrNonBooleanPureMusicFlagsWithEmptyLyricsAreNotInstrumental() {
        for (flag in listOf<Any?>(null, false, "true", 1)) {
            val root = JSONObject().put("code", 200).apply { if (flag != null) put("pureMusic", flag) }
            val transport = FakeTransport(root.toString(), "{\"code\":200}")
            assertNull(NetEaseLyricsSource(transport).loadLyrics(candidate(), DEADLINE, signal()))
            assertEquals("empty lyrics still follow the existing optional enrichment path", 2, transport.requests.size)
        }
    }

    @Test fun lrclibOnlyAnActualInstrumentalFlagRetainsAnEmptyRecording() {
        val query = LyricsLookup("Song", "Artist", "Album", 200_000L)
        for (flag in listOf<Any?>(null, false, "true", 1, true)) {
            val item = JSONObject().put("id", 4242).put("trackName", "Song").put("artistName", "Artist")
                .put("albumName", "Album").put("duration", 200)
                .put("syncedLyrics", JSONObject.NULL).put("plainLyrics", JSONObject.NULL)
                .apply { if (flag != null) put("instrumental", flag) }
            val source = LrcLibLyricsSource(FakeTransport(item.toString()))
            val result = source.exact(query, DEADLINE, signal())
            if (flag == true) {
                assertNotNull(result)
                assertTrue(result!!.instrumental)
                assertEquals(200_000L, result.durationMs)
                assertEquals("4242", result.sourceId)
                assertEquals(LyricsKind.NONE, result.contentKind())
                assertTrue(result.timedLines().isEmpty())
                assertEquals(result, source.loadLyrics(result, DEADLINE, signal()))
                val selected = LyricsCandidateSelector.selectCandidatesWithProof(query, listOf(result)).single()
                assertTrue(LyricsCandidateSelector.isProofValid(query, result, selected.proof))
            } else assertNull(result)
        }
    }

    @Test fun qqOnlyExplicitInstrumentalLyricMarkerIsNotAStaticOrTimedBody() {
        val transport = FakeTransport(JSONObject().put("code", 0)
            .put("lyric", "[99:00.00]纯音乐，请欣赏").toString())
        val original = candidate(SOURCE_QQ)
        val result = QqLyricsSource(transport, wordSource = null).loadLyrics(original, DEADLINE, signal())!!
        assertTrue(result.isInstrumentalContent())
        assertEquals(original.candidateSnapshot(), result.candidateSnapshot())
        assertEquals(LyricsKind.NONE, result.contentKind())
        assertTrue(result.timedLines().isEmpty())
        assertEquals(1, transport.requests.size)
    }

    private fun candidate(source: String = SOURCE_NETEASE) = LyricsResult(
        source = source, sourceId = if (source == SOURCE_QQ) "synthetic-mid" else "4242",
        candidateTrack = "Song", candidateArtist = "Artist", candidateAlbum = "Album", durationMs = 200_000L
    )
    private fun request() = LyricsCatalogSearchRequest(LyricsCatalogSearchKind.TITLE_ARTIST, "Song Artist")
    private fun signal() = LyricsCancellationSignal()
    private fun qqCatalog(mid: String, id: String): String {
        val song = JSONObject().put("songmid", mid).put("songid", id).put("songname", "Song")
            .put("interval", 200).put("albumname", "Album")
            .put("singer", JSONArray().put(JSONObject().put("name", "Artist")))
        return JSONObject().put("code", 0).put("data", JSONObject().put("song", JSONObject()
            .put("list", JSONArray().put(song)))).toString()
    }
    private fun songDetail(id: Long, albumKey: String) = JSONObject().put("id", id)
        .put(albumKey, JSONObject().put("picUrl", COVER))
    private fun detailResponse(song: JSONObject) = JSONObject().put("code", 200)
        .put("songs", JSONArray().put(song)).toString()
    private fun neteaseBundle() = JSONObject().put("code", 200)
        .put("lrc", JSONObject().put("lyric", "[00:01.00]ab"))
        .put("tlyric", JSONObject().put("lyric", "[00:01.00]translated"))
        .put("romalrc", JSONObject().put("lyric", "[00:01.00]roma")).toString()
    private fun yrcBundle(raw: String = YRC) = JSONObject().put("code", 200)
        .put("yrc", JSONObject().put("lyric", raw)).toString()
    private fun qrcXml(content: String) = "<QrcInfos><LyricInfo LyricCount=\"1\"><Lyric_1 LyricType=\"1\" LyricContent=\"$content\"/></LyricInfo></QrcInfos>"
    private fun base64(text: String) = Base64.getEncoder().encodeToString(text.toByteArray(Charsets.UTF_8))
    private fun parameters(url: String): Map<String, String> = URI(url).rawQuery.split('&').associate {
        URLDecoder.decode(it.substringBefore('='), "UTF-8") to
            URLDecoder.decode(it.substringAfter('='), "UTF-8")
    }

    private data class Request(
        val url: String, val deadlineNanos: Long, val cancellation: LyricsCancellationSignal
    )
    private class FakeTransport(vararg payloads: String) : LyricsTransport {
        val replies = ArrayDeque(payloads.map { it.toByteArray(Charsets.UTF_8) })
        val requests = mutableListOf<Request>()
        var onRequest: (Request) -> Unit = { }
        override fun getText(url: String, headers: Map<String, String>, deadlineNanos: Long,
            cancellation: LyricsCancellationSignal): String = getBytes(url, headers, deadlineNanos, cancellation)
            .toString(Charsets.UTF_8)
        override fun getBytes(url: String, headers: Map<String, String>, deadlineNanos: Long,
            cancellation: LyricsCancellationSignal): ByteArray {
            cancellation.throwIfCancelled()
            val request = Request(url, deadlineNanos, cancellation)
            requests += request
            onRequest(request)
            return checkNotNull(replies.pollFirst()) { "Unexpected request: $url" }
        }
    }
    private companion object {
        const val DEADLINE = Long.MAX_VALUE
        const val COVER = "https://example.test/cover.jpg"
        const val YRC = "[1000,1000](1000,500,0)a(1500,500,0)b"
    }
}
