package com.icar03.content.runtime.lyrics

import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import java.io.IOException
import java.net.SocketTimeoutException
import java.util.Collections
import java.util.UUID
import java.util.concurrent.CancellationException
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicLong

// Synthetic song IDs, fresh synthetic session identifiers, and self-generated lyrics only.
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class QqWordLyricsSourceTest {
    @Test fun invalidNumericIdsNeverStartGetOrPostRequests() {
        val get = NoGetTransport()
        val post = FakePost { error("Unexpected request") }
        val source = QqWordLyricsSource(get, post)
        for (songId in listOf(0L, -1L, Long.MIN_VALUE)) assertNull(source.load(songId, DEADLINE, signal()))
        assertEquals(0, get.requests.get())
        assertTrue(post.requests.isEmpty())
    }

    @Test fun exactAnonymousRequestEnvelopeAndSelectedNumericIdArePassedWithoutCredentials() {
        val get = NoGetTransport()
        val sessionId = freshSessionId()
        val post = FakePost { request ->
            if (request.method == "GetSession") sessionResponse(sessionId) else bundleResponse()
        }
        val cancellation = signal()
        val source = QqWordLyricsSource(get, post)
        val result = source.load(9_000_000_042L, DEADLINE, cancellation)!!
        assertEquals(YRC, result.wordLyrics)
        assertEquals("[00:01.000]translated", result.translatedLyrics)
        assertEquals("[00:01.000]a  b", result.romanizedLyrics)
        assertEquals(0, get.requests.get())
        assertEquals(2, post.requests.size)
        post.requests.forEach { request ->
            assertEquals("https://u.y.qq.com/cgi-bin/musicu.fcg", request.url)
            assertEquals(DEADLINE, request.deadlineNanos)
            assertSame(cancellation, request.cancellation)
            assertFalse(request.headers.keys.any { it.equals("Cookie", true) || it.equals("Authorization", true) })
            assertFalse(request.body.toString().contains("songmid", true))
            assertFalse(request.body.toString().contains("vkey\":\""))
        }
        val sessionRequest = post.requests.first().body
        val sessionComm = sessionRequest.getJSONObject("comm")
        assertFalse(sessionComm.has("sid"))
        assertFalse(sessionComm.has("uid"))
        assertEquals("qqmusiclight", sessionComm.getString("tmeAppID"))
        val sessionOperation = sessionRequest.getJSONObject("request")
        assertEquals("GetSession", sessionOperation.getString("method"))
        assertEquals("music.getSession.session", sessionOperation.getString("module"))
        val sessionParameters = sessionOperation.getJSONObject("param")
        assertEquals(0, sessionParameters.getInt("caller"))
        assertEquals("0", sessionParameters.getString("uid"))
        assertEquals(0, sessionParameters.getInt("vkey"))
        val lyricRequest = post.requests.last().body
        val comm = lyricRequest.getJSONObject("comm")
        assertEquals(sessionId, comm.getString("sid"))
        assertEquals("123", comm.getString("uid"))
        assertEquals("", comm.getString("userip"))
        val operation = lyricRequest.getJSONObject("request")
        assertEquals("music.musichallSong.PlayLyricInfo", operation.getString("module"))
        val parameters = operation.getJSONObject("param")
        assertEquals(9_000_000_042L, parameters.getLong("songID"))
        assertEquals(1, parameters.getInt("crypt"))
        assertEquals(19, parameters.getInt("ct"))
        assertEquals(2111, parameters.getInt("cv"))
        for (field in listOf("qrc", "roma", "trans")) assertEquals(1, parameters.getInt(field))
        for (field in listOf("lrc_t", "qrc_t", "roma_t", "trans_t", "type", "interval")) assertEquals(0, parameters.getInt(field))
        for (field in listOf("albumName", "singerName", "songName")) assertEquals("", parameters.getString(field))
        assertEquals(16, parameters.length())
        val aligned = LrcParser.align("[00:01.000]A  B", result.translatedLyrics, result.wordLyrics, result.romanizedLyrics).single()
        assertEquals(1000L, aligned.timeMs)
        assertEquals(2000L, aligned.endTimeMs)
        assertEquals(listOf(1000L, 1500L), aligned.words.map { it.startTimeMs })
        assertEquals(listOf(1300L, 1800L), aligned.words.map { it.endTimeMs })
        assertEquals("translated", aligned.translation)
        assertEquals("a  b", aligned.romanization)
    }

    @Test fun successfulEmptyOrFalseFieldsAreTrueNotFoundAndDoNotInvalidateCachedSession() {
        val counter = AtomicInteger()
        val post = FakePost { request ->
            if (request.method == "GetSession") {
                counter.incrementAndGet()
                sessionResponse()
            } else success(JSONObject().put("lyric", false).put("trans", false).put("roma", false)
                .put("qrc_t", false).put("lrc_t", false))
        }
        val source = QqWordLyricsSource(NoGetTransport(), post)
        assertNull(source.load(42L, DEADLINE, signal()))
        assertNull(source.load(43L, DEADLINE, signal()))
        assertEquals(1, counter.get())
        assertEquals(3, post.requests.size)
    }

    @Test fun encryptedWordTrackIsIgnoredWhenTimingPresenceFlagsAreMissingOrFalse() {
        for (flags in listOf(JSONObject(), JSONObject().put("qrc_t", false).put("lrc_t", 0))) {
            val post = FakePost { request ->
                if (request.method == "GetSession") sessionResponse()
                else success(flags.put("lyric", "this-is-deliberately-not-a-ciphertext").put("trans", false).put("roma", false))
            }
            assertNull(QqWordLyricsSource(NoGetTransport(), post).load(42L, DEADLINE, signal()))
        }
        val post = FakePost { request ->
            if (request.method == "GetSession") sessionResponse()
            else success(JSONObject().put("qrc_t", 0).put("lrc_t", "1").put("lyric", encrypted(xml(QRC))))
        }
        assertEquals(YRC, QqWordLyricsSource(NoGetTransport(), post).load(42L, DEADLINE, signal())!!.wordLyrics)
    }

    @Test fun mainAndAuxiliaryDecodeFailuresNeverDiscardAnotherValidTrack() {
        val cases = listOf(
            JSONObject().put("lyric", encrypted(xml(QRC))).put("qrc_t", 1).put("trans", "AA==").put("roma", "not-hex") to YRC,
            JSONObject().put("lyric", "not-hex").put("qrc_t", 1).put("trans", encrypted("[00:01.000]translated")).put("roma", false) to ""
        )
        cases.forEach { (data, expectedWords) ->
            val post = FakePost { if (it.method == "GetSession") sessionResponse() else success(data) }
            val result = QqWordLyricsSource(NoGetTransport(), post).load(42L, DEADLINE, signal())!!
            assertEquals(expectedWords, result.wordLyrics)
            if (expectedWords.isEmpty()) assertEquals("[00:01.000]translated", result.translatedLyrics)
            else assertEquals("", result.translatedLyrics)
        }
        for (cipher in listOf("AA==", "not-hex", encrypted(xml(QRC).removeSuffix("</QrcInfos>")))) {
            val post = FakePost { if (it.method == "GetSession") sessionResponse()
                else success(JSONObject().put("qrc_t", 1).put("lyric", cipher)) }
            assertThrows(LyricsSourceException::class.java) { QqWordLyricsSource(NoGetTransport(), post).load(42L, DEADLINE, signal()) }
        }
    }

    @Test fun sessionBusinessFailureMissingSidWrongPathAndInvalidJsonAreTypedNotNotFound() {
        val payloads = listOf(
            "{\"code\":100001}",
            "{\"code\":0,\"request\":{\"code\":403,\"data\":{}}}",
            success(JSONObject().put("sid", freshSessionId())),
            success(JSONObject().put("session", JSONObject().put("sid", ""))),
            success(JSONObject().put("session", JSONObject().put("sid", false))),
            "{\"code\":0,\"request\":{\"data\":{}}}",
            "{\"code\":\"unknown\",\"request\":{\"code\":0,\"data\":{}}}",
            "not-json", sessionResponse() + " trailing"
        )
        payloads.forEach { payload ->
            val post = FakePost { payload }
            val error = assertThrows(LyricsSourceException::class.java) { QqWordLyricsSource(NoGetTransport(), post).load(42L, DEADLINE, signal()) }
            assertEquals(LyricsFailureReason.SERVER, error.reason)
            assertEquals(1, post.requests.size)
            assertEquals("GetSession", post.requests.single().method)
        }
    }

    @Test fun answeredBusinessFailuresNeverRotateCredentialsOrTurnIntoNoLyrics() {
        for (code in listOf(401, 403, 100001, -1901, 987654)) {
            val post = FakePost { request ->
                if (request.method == "GetSession") sessionResponse()
                else JSONObject().put("code", 0).put("request", JSONObject().put("code", code)
                    .put("message", "synthetic captcha").put("data", JSONObject())).toString()
            }
            val source = QqWordLyricsSource(NoGetTransport(), post)
            val error = assertThrows(LyricsSourceException::class.java) { source.load(42L, DEADLINE, signal()) }
            assertEquals(LyricsFailureReason.SERVER, error.reason)
            assertFalse(error.retryable)
            assertEquals(2, post.requests.size)
            assertThrows(LyricsSourceException::class.java) { source.load(42L, DEADLINE, signal()) }
            assertEquals(1, post.requests.count { it.method == "GetSession" })
            assertEquals(3, post.requests.size)
        }
        val post = FakePost { if (it.method == "GetSession") sessionResponse()
            else "{\"code\":429,\"request\":{\"code\":0,\"data\":{}}}" }
        val error = assertThrows(LyricsSourceException::class.java) { QqWordLyricsSource(NoGetTransport(), post).load(42L, DEADLINE, signal()) }
        assertEquals(LyricsFailureReason.RATE_LIMIT, error.reason)
        assertTrue(error.retryable)
    }

    @Test fun transportFailuresRemainTypedAndFailedSessionIsNotCached() {
        val attempts = AtomicInteger()
        val post = FakePost { request ->
            if (request.method == "GetSession" && attempts.getAndIncrement() == 0) throw IOException("synthetic offline")
            if (request.method == "GetSession") sessionResponse() else bundleResponse()
        }
        val source = QqWordLyricsSource(NoGetTransport(), post)
        val failure = assertThrows(LyricsSourceException::class.java) { source.load(42L, DEADLINE, signal()) }
        assertEquals(LyricsFailureReason.NETWORK, failure.reason)
        assertTrue(failure.retryable)
        assertNull(failure.cause)
        assertEquals(YRC, source.load(42L, DEADLINE, signal())!!.wordLyrics)
        assertEquals(2, post.requests.count { it.method == "GetSession" })
        val timeout = FakePost { throw SocketTimeoutException("synthetic timeout") }
        assertEquals(LyricsFailureReason.DEADLINE, assertThrows(LyricsSourceException::class.java) {
            QqWordLyricsSource(NoGetTransport(), timeout).load(42L, DEADLINE, signal())
        }.reason)
    }

    @Test fun sessionIsPrivateMemoryOnlyAndExpiresAtConservativeMonotonicTtl() {
        val now = AtomicLong(0L)
        val sessionIds = Collections.synchronizedList(mutableListOf<String>())
        val post = FakePost { request ->
            if (request.method == "GetSession") {
                val sid = freshSessionId()
                sessionIds += sid
                sessionResponse(sid)
            } else bundleResponse()
        }
        val source = QqWordLyricsSource(NoGetTransport(), post, LyricsMonotonicClock { now.get() })
        source.load(42L, DEADLINE, signal())
        now.set(TimeUnit.MINUTES.toNanos(2) - 1)
        source.load(43L, DEADLINE, signal())
        assertEquals(1, sessionIds.size)
        now.incrementAndGet()
        source.load(44L, DEADLINE, signal())
        assertEquals(2, sessionIds.size)
        val used = post.requests.filter { it.method == "GetPlayLyricInfo" }.map { it.body.getJSONObject("comm").getString("sid") }
        assertEquals(listOf(sessionIds[0], sessionIds[0], sessionIds[1]), used)
        assertFalse(source.toString().contains(sessionIds[0]))
        assertFalse(source.toString().contains(sessionIds[1]))
    }

    @Test fun concurrentCallsShareOneSessionFlightAndKeepTheirOwnSongIds() {
        val entered = CountDownLatch(1)
        val release = CountDownLatch(1)
        val startedFollower = CountDownLatch(1)
        val post = FakePost { request ->
            if (request.method == "GetSession") {
                entered.countDown()
                assertTrue(release.await(2, TimeUnit.SECONDS))
                sessionResponse()
            } else bundleResponse()
        }
        val source = QqWordLyricsSource(NoGetTransport(), post)
        val executor = Executors.newFixedThreadPool(2)
        try {
            val first = executor.submit<QqWordLyricsBundle?> { source.load(42L, DEADLINE, signal()) }
            assertTrue(entered.await(2, TimeUnit.SECONDS))
            val second = executor.submit<QqWordLyricsBundle?> { startedFollower.countDown(); source.load(43L, DEADLINE, signal()) }
            assertTrue(startedFollower.await(2, TimeUnit.SECONDS))
            release.countDown()
            assertEquals(YRC, first.get(2, TimeUnit.SECONDS)!!.wordLyrics)
            assertEquals(YRC, second.get(2, TimeUnit.SECONDS)!!.wordLyrics)
            assertEquals(1, post.requests.count { it.method == "GetSession" })
            val songIds = post.requests.filter { it.method == "GetPlayLyricInfo" }
                .map { it.body.getJSONObject("request").getJSONObject("param").getLong("songID") }.toSet()
            assertEquals(setOf(42L, 43L), songIds)
        } finally {
            release.countDown()
            executor.shutdownNow()
            assertTrue(executor.awaitTermination(2, TimeUnit.SECONDS))
        }
    }

    @Test fun cancelledWaitingCallerDoesNotCancelSharedSessionOrOtherCaller() {
        val entered = CountDownLatch(1)
        val release = CountDownLatch(1)
        val startedFollower = CountDownLatch(1)
        val followerCancellation = signal()
        val post = FakePost { request ->
            if (request.method == "GetSession") {
                entered.countDown()
                assertTrue(release.await(2, TimeUnit.SECONDS))
                sessionResponse()
            } else bundleResponse()
        }
        val source = QqWordLyricsSource(NoGetTransport(), post)
        val executor = Executors.newFixedThreadPool(2)
        try {
            val leader = executor.submit<QqWordLyricsBundle?> { source.load(42L, DEADLINE, signal()) }
            assertTrue(entered.await(2, TimeUnit.SECONDS))
            val follower = executor.submit<Boolean> {
                startedFollower.countDown()
                try { source.load(43L, DEADLINE, followerCancellation); false } catch (_: CancellationException) { true }
            }
            assertTrue(startedFollower.await(2, TimeUnit.SECONDS))
            followerCancellation.cancel()
            assertTrue(follower.get(2, TimeUnit.SECONDS))
            assertEquals(1, post.requests.size)
            release.countDown()
            assertEquals(YRC, leader.get(2, TimeUnit.SECONDS)!!.wordLyrics)
            assertEquals(2, post.requests.size)
        } finally {
            release.countDown()
            executor.shutdownNow()
            assertTrue(executor.awaitTermination(2, TimeUnit.SECONDS))
        }
    }

    @Test fun cancellationBeforeLoadOrDuringSessionAndExpiredDeadlineStopBeforeLyricRequest() {
        val post = FakePost { error("Unexpected request") }
        val source = QqWordLyricsSource(NoGetTransport(), post)
        val cancelled = signal().apply { cancel() }
        assertThrows(CancellationException::class.java) { source.load(42L, DEADLINE, cancelled) }
        val failure = assertThrows(LyricsSourceException::class.java) { source.load(42L, System.nanoTime() - 1L, signal()) }
        assertEquals(LyricsFailureReason.DEADLINE, failure.reason)
        assertTrue(post.requests.isEmpty())
        val activeCancellation = signal()
        val duringSession = FakePost {
            activeCancellation.cancel()
            sessionResponse()
        }
        assertThrows(CancellationException::class.java) {
            QqWordLyricsSource(NoGetTransport(), duringSession).load(42L, DEADLINE, activeCancellation)
        }
        assertEquals(1, duringSession.requests.size)
    }

    private fun signal() = LyricsCancellationSignal()
    private fun freshSessionId() = "synthetic-${UUID.randomUUID()}"
    private fun xml(content: String) = "<QrcInfos><LyricInfo LyricCount=\"1\"><Lyric_1 LyricType=\"1\" LyricContent=\"$content\"/></LyricInfo></QrcInfos>"
    private fun success(data: JSONObject) = JSONObject().put("code", 0)
        .put("request", JSONObject().put("code", 0).put("data", data)).toString()
    private fun sessionResponse(sid: String = freshSessionId()) = success(JSONObject().put("session", JSONObject()
        .put("uid", 123).put("sid", sid).put("userip", "")))
    private fun bundleResponse() = success(JSONObject().put("qrc_t", "1").put("lrc_t", 0)
        .put("lyric", encrypted(xml(QRC))).put("trans", encrypted("[00:01.000]translated"))
        .put("roma", encrypted(xml("[1000,1000]a (1000,500) b(1500,500)"))))

    private class NoGetTransport : LyricsTransport {
        val requests = AtomicInteger()
        override fun getText(url: String, headers: Map<String, String>, deadlineNanos: Long, cancellation: LyricsCancellationSignal): String {
            requests.incrementAndGet()
            error("Unexpected GET")
        }
        override fun getBytes(url: String, headers: Map<String, String>, deadlineNanos: Long, cancellation: LyricsCancellationSignal): ByteArray {
            requests.incrementAndGet()
            error("Unexpected GET")
        }
    }
    private class Request(val url: String, val body: JSONObject, val headers: Map<String, String>, val deadlineNanos: Long, val cancellation: LyricsCancellationSignal) {
        val method: String get() = body.getJSONObject("request").getString("method")
    }
    private class FakePost(private val handler: (Request) -> String) : LyricsPostTransport {
        val requests = Collections.synchronizedList(mutableListOf<Request>())
        override fun postText(url: String, body: JSONObject, headers: Map<String, String>, deadlineNanos: Long, cancellation: LyricsCancellationSignal): String {
            cancellation.throwIfCancelled()
            val request = Request(url, JSONObject(body.toString()), headers, deadlineNanos, cancellation)
            requests += request
            return handler(request)
        }
    }
    private companion object {
        const val DEADLINE = Long.MAX_VALUE
        const val QRC = "[1000,1000]A (1000,300) B(1500,300)"
        const val YRC = "[1000,1000](1000,300,0)A (1500,300,0) B"
    }
}
