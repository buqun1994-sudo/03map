package com.icar03.content.runtime.lyrics

import android.util.Base64
import org.json.JSONArray
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import java.net.URI
import java.net.URLDecoder
import java.util.concurrent.CancellationException
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class AppleMusicLyricsSourceTest {
    private val request = LyricsCatalogSearchRequest(LyricsCatalogSearchKind.TITLE_ARTIST, "Fixture Song Fixture Artist")
    private fun deadline(): Long = System.nanoTime() + TimeUnit.SECONDS.toNanos(30)

    @Test fun noLoginExpiredAndRejectedCredentialsMakeZeroRequestsIncludingDeveloperBootstrap() {
        val transport = AppleMusicFixtureTransport { error("No request without a usable login") }
        val absent = AppleMusicLyricsSource(transport = transport)
        assertFalse(absent.isAvailable)
        assertEquals(LyricsFailureReason.AUTH_REQUIRED, failure { absent.search(request, deadline(), LyricsCancellationSignal()) }.reason)
        for (credential in listOf(
            AppleMusicFixture.credential(expires = AppleMusicFixture.NOW - 1L),
            AppleMusicFixture.credential(rejected = AppleMusicFixture.NOW - 1L)
        )) {
            val rig = AppleMusicFixtureRig(credential)
            val source = AppleMusicLyricsSource(connection = rig.connection, transport = transport,
                authBroker = AppleMusicAuthBroker(rig.connection, transport, rig.clock))
            assertFalse(source.isAvailable)
            assertEquals(LyricsFailureReason.AUTH_REJECTED, failure { source.search(request, deadline(), LyricsCancellationSignal()) }.reason)
        }
        assertTrue(transport.calls.isEmpty())
    }

    @Test fun developerJwtParsingRejectsExpiredValuesDeduplicatesAndSortsAssetsAndExpiry() {
        val sooner = AppleMusicFixture.jwt(AppleMusicFixture.NOW + TimeUnit.DAYS.toMillis(40), "sooner")
        val later = AppleMusicFixture.jwt(AppleMusicFixture.NOW + TimeUnit.DAYS.toMillis(90), "later")
        val expired = AppleMusicFixture.jwt(AppleMusicFixture.NOW - 1_000L, "expired")
        assertEquals(listOf(later, sooner), AppleMusicWebTokenParser.extractJwts("$sooner $expired $later $later", AppleMusicFixture.NOW).map { it.token })
        assertEquals(0L, AppleMusicWebTokenParser.jwtExpiryMs("not.jwt"))
        assertEquals(listOf("/assets/index~main.js", "/assets/index-legacy~legacy.js", "/assets/polyfills.js"),
            AppleMusicWebTokenParser.jsAssets("/assets/polyfills.js /assets/index-legacy~legacy.js /assets/index~main.js /assets/index~main.js"))
    }

    @Test fun developerFetchVerifiesEveryJwtAndCachesInMemoryAndAcrossBrokerInstances() {
        val rig = AppleMusicFixtureRig()
        val wrong = AppleMusicFixture.jwt(AppleMusicFixture.NOW + TimeUnit.DAYS.toMillis(120), "wrong-product")
        val working = AppleMusicFixture.jwt(AppleMusicFixture.NOW + TimeUnit.DAYS.toMillis(90), "amp-product")
        val transport = AppleMusicFixtureTransport { call -> when {
            call.url == AppleMusicAuthBroker.BROWSE_URL -> AppleMusicFixture.home.bytes()
            call.url.contains("/assets/") -> "$wrong $working $working".bytes()
            call.url == AppleMusicAuthBroker.PROBE_URL && call.headers["Authorization"] == "Bearer $wrong" -> throw http(401)
            call.url == AppleMusicAuthBroker.PROBE_URL -> AppleMusicFixture.catalog().bytes()
            else -> error("Unexpected bootstrap request")
        } }
        val broker = AppleMusicAuthBroker(rig.connection, transport, rig.clock)
        assertEquals(working, broker.session(deadline(), LyricsCancellationSignal()).developer.token)
        assertEquals(working, broker.session(deadline(), LyricsCancellationSignal()).developer.token)
        assertEquals(4, transport.calls.size)
        assertEquals(working, AppleMusicAuthBroker(rig.connection, transport, rig.clock).session(deadline(), LyricsCancellationSignal()).developer.token)
        assertEquals(4, transport.calls.size)
        transport.calls.forEach { assertFalse(it.headers.containsKey("Media-User-Token")) }
        assertFalse(broker.session(deadline(), LyricsCancellationSignal()).toString().contains(working))
    }

    @Test fun developerSingleFlightSharesOneBootstrapAndCancellationCanLeaveTheWaitingLock() {
        val rig = AppleMusicFixtureRig()
        val entered = CountDownLatch(1)
        val release = CountDownLatch(1)
        val transport = AppleMusicFixtureTransport { call -> when {
            call.url == AppleMusicAuthBroker.BROWSE_URL -> { entered.countDown(); assertTrue(release.await(3, TimeUnit.SECONDS)); AppleMusicFixture.home.bytes() }
            call.url.contains("/assets/") -> AppleMusicFixture.developer.bytes()
            else -> AppleMusicFixture.catalog().bytes()
        } }
        val broker = AppleMusicAuthBroker(rig.connection, transport, rig.clock)
        val pool = Executors.newFixedThreadPool(2)
        try {
            val first = pool.submit<AppleMusicSession> { broker.session(deadline(), LyricsCancellationSignal()) }
            assertTrue(entered.await(1, TimeUnit.SECONDS))
            val cancellation = LyricsCancellationSignal()
            val waiting = pool.submit<Boolean> {
                try { broker.session(deadline(), cancellation); false } catch (_: CancellationException) { true }
            }
            cancellation.cancel()
            assertTrue(waiting.get(1, TimeUnit.SECONDS))
            release.countDown()
            assertEquals(AppleMusicFixture.developer, first.get(2, TimeUnit.SECONDS).developer.token)
            assertEquals(AppleMusicFixture.developer, broker.session(deadline(), LyricsCancellationSignal()).developer.token)
            assertEquals(3, transport.calls.size)
        } finally { release.countDown(); pool.shutdownNow() }
    }

    @Test fun cancelledBootstrapAndExpiredBudgetDoNotPoisonTheDeveloperCooldown() {
        val rig = AppleMusicFixtureRig()
        val cancellation = LyricsCancellationSignal()
        val transport = AppleMusicFixtureTransport { cancellation.cancel(); AppleMusicFixture.home.bytes() }
        val broker = AppleMusicAuthBroker(rig.connection, transport, rig.clock)
        assertThrows(CancellationException::class.java) { broker.session(deadline(), cancellation) }
        transport.response = AppleMusicFixture::bootstrapResponse
        assertEquals(AppleMusicFixture.developer, broker.session(deadline(), LyricsCancellationSignal()).developer.token)
        val calls = transport.calls.size
        assertEquals(LyricsFailureReason.DEADLINE, failure { broker.session(System.nanoTime() - 1L, LyricsCancellationSignal()) }.reason)
        assertEquals(calls, transport.calls.size)
    }

    @Test fun missingStorefrontIsCompletedFromMeAndWrittenBackWithoutGuessingARegion() {
        val rig = AppleMusicFixtureRig(AppleMusicFixture.credential(storefront = ""))
        rig.developers.save(AppleMusicDeveloperToken(AppleMusicFixture.developer, AppleMusicWebTokenParser.jwtExpiryMs(AppleMusicFixture.developer)))
        val transport = AppleMusicFixtureTransport { call -> if (call.url == AppleMusicAuthBroker.ME_STOREFRONT_URL)
            JSONObject().put("data", JSONArray().put(JSONObject().put("id", "CN"))).bytes() else AppleMusicFixture.catalog().bytes() }
        val broker = AppleMusicAuthBroker(rig.connection, transport, rig.clock)
        val source = AppleMusicLyricsSource(authBroker = broker)
        val original = rig.store.value!!
        val candidate = source.search(request, deadline(), LyricsCancellationSignal()).single()
        assertEquals("17", candidate.sourceId)
        assertEquals(AppleMusicAuthBroker.ME_STOREFRONT_URL, transport.calls[0].url)
        assertEquals(AppleMusicFixture.user, transport.calls[0].headers["Media-User-Token"])
        assertTrue(transport.calls[1].url.contains("/catalog/cn/search?"))
        assertFalse(transport.calls[1].headers.containsKey("Media-User-Token"))
        assertEquals("cn", rig.store.value!!.storefront)
        assertEquals(original.savedAtMs, rig.store.value!!.savedAtMs)
        assertEquals(original.expiresAtMs, rig.store.value!!.expiresAtMs)
        assertEquals(original.generation, rig.store.value!!.generation)
        val revision = rig.connection.revision
        source.search(request, deadline(), LyricsCancellationSignal())
        assertEquals(1, transport.calls.count { it.url == AppleMusicAuthBroker.ME_STOREFRONT_URL })
        assertEquals(revision, rig.connection.revision)
    }

    @Test fun missingOrRejectedStorefrontFailsClosedBeforeCatalogSearch() {
        for (status in listOf(200, 401, 403)) {
            val rig = AppleMusicFixtureRig(AppleMusicFixture.credential(storefront = ""))
            rig.seedDeveloper()
            val transport = AppleMusicFixtureTransport { if (status == 200) "{\"data\":[]}".bytes() else throw http(status) }
            val source = AppleMusicLyricsSource(authBroker = AppleMusicAuthBroker(rig.connection, transport, rig.clock))
            val failure = failure { source.search(request, deadline(), LyricsCancellationSignal()) }
            assertEquals(if (status == 200) LyricsFailureReason.SERVER else LyricsFailureReason.AUTH_REJECTED, failure.reason)
            assertFalse(failure.retryable)
            assertEquals(1, transport.calls.size)
            assertEquals(AppleMusicAuthBroker.ME_STOREFRONT_URL, transport.calls.single().url)
        }
    }

    @Test fun catalogLineThenWordAndOfficialAuxiliaryTracksKeepTheSameRecordingAndCover() {
        val rig = AppleMusicFixtureRig().apply { seedDeveloper() }
        val transport = AppleMusicFixtureTransport(AppleMusicFixture::catalogAndLyricsResponse)
        val source = AppleMusicLyricsSource(authBroker = AppleMusicAuthBroker(rig.connection, transport, rig.clock), translationLanguage = { "zh-CN" })
        val budget = deadline()
        val cancellation = LyricsCancellationSignal()
        val candidate = source.search(request, budget, cancellation).single()
        assertEquals(SOURCE_APPLE_MUSIC, candidate.source)
        assertEquals(144_000L, candidate.durationMs)
        assertEquals("Fixture Song", candidate.candidateTrack)
        assertEquals("Fixture Artist", candidate.candidateArtist)
        assertEquals("Fixture Album", candidate.candidateAlbum)
        val base = source.loadBaseLyrics(candidate, budget, cancellation)!!
        assertEquals("[00:07.439]De la rumba\n[00:09.341]Casi ni", base.lyrics)
        assertEquals("", base.wordLyrics)
        assertEquals(2, transport.calls.size)
        assertEquals("/v1/catalog/cn/songs/17/lyrics", URI(transport.calls.last().url).path)
        val enhanced = source.loadEnrichment(base, budget, cancellation)!!
        assertEquals(base.candidateSnapshot(), enhanced.candidateSnapshot())
        assertEquals(base.lyrics, enhanced.lyrics)
        assertTrue(enhanced.wordLyrics.contains("(7439,180,0)De "))
        assertTrue(enhanced.backgroundLyrics.contains("(9500,700,0)Echo"))
        assertEquals("[00:07.439]官方第一句\n[00:09.341]官方第二句", enhanced.translatedLyrics)
        assertEquals("[00:07.439]de la rumba", enhanced.romanizedLyrics)
        assertEquals(AppleMusicFixture.wordTtml, enhanced.ttmlLyrics)
        assertEquals("/v1/catalog/cn/songs/17/syllable-lyrics", URI(transport.calls.last().url).path)
        assertEquals("https://is1-ssl.mzstatic.com/image/thumb/fixture/512x512bb.jpg", source.loadCover(enhanced, budget, cancellation))
        assertEquals(3, transport.calls.size)
        transport.calls.filter { URI(it.url).path.endsWith("lyrics") }.forEach { call ->
            assertEquals(AppleMusicFixture.user, call.headers["Media-User-Token"])
            assertEquals("https://music.apple.com", call.headers["Origin"])
            assertEquals("ttmlLocalizations", call.query()["extend"])
            assertEquals("zh-Hans-CN", call.query()["l[lyrics]"])
            assertEquals("zh-Hans,zh-Latn", call.query()["l[script]"])
            assertEquals(budget, call.deadline)
            assertSame(cancellation, call.cancellation)
        }
        assertFalse(enhanced.toJson().toString().contains(AppleMusicFixture.user))
        assertFalse(enhanced.toJson().toString().contains(AppleMusicFixture.developer))
    }

    @Test fun coverDetailUsesTheOriginalCatalogIdAndRejectsForgedMetadataOrOtherIds() {
        val rig = AppleMusicFixtureRig().apply { seedDeveloper() }
        val transport = AppleMusicFixtureTransport { call -> if (URI(call.url).path.endsWith("search"))
            AppleMusicFixture.catalog(cover = "").bytes() else JSONObject().put("data", JSONArray().put(AppleMusicFixture.song())).bytes() }
        val source = AppleMusicLyricsSource(authBroker = AppleMusicAuthBroker(rig.connection, transport, rig.clock))
        val candidate = source.search(request, deadline(), LyricsCancellationSignal()).single()
        assertEquals("", source.loadCover(candidate.copy(candidateTrack = "Other song"), deadline(), LyricsCancellationSignal()))
        assertNull(source.loadBaseLyrics(candidate.copy(durationMs = candidate.durationMs + 1L), deadline(), LyricsCancellationSignal()))
        assertEquals(1, transport.calls.size)
        assertEquals("https://is1-ssl.mzstatic.com/image/thumb/fixture/512x512bb.jpg", source.loadCover(candidate, deadline(), LyricsCancellationSignal()))
        assertEquals("/v1/catalog/cn/songs/17", URI(transport.calls.last().url).path)
        assertFalse(transport.calls.last().headers.containsKey("Media-User-Token"))
    }

    @Test fun unknownCatalogDurationNeverBecomesTheLookupOrTtmlBodyDuration() {
        val rig = AppleMusicFixtureRig().apply { seedDeveloper() }
        val transport = AppleMusicFixtureTransport { call -> if (URI(call.url).path.endsWith("search"))
            AppleMusicFixture.catalog(duration = 0L).bytes() else AppleMusicFixture.payload(AppleMusicFixture.lineTtml).bytes() }
        val source = AppleMusicLyricsSource(authBroker = AppleMusicAuthBroker(rig.connection, transport, rig.clock))
        val candidate = source.search(request, deadline(), LyricsCancellationSignal()).single()
        assertEquals(0L, candidate.durationMs)
        assertEquals(0L, source.loadBaseLyrics(candidate, deadline(), LyricsCancellationSignal())!!.durationMs)
        assertTrue(LyricsCandidateSelector.selectCandidates(LyricsLookup("Fixture Song", "Fixture Artist", "Fixture Album", 144_000L), listOf(candidate)).isEmpty())
    }

    @Test fun missingWordResourceKeepsThePublishedLineAndAnExhaustedOptionalBudgetDoesNotRequest() {
        val rig = AppleMusicFixtureRig().apply { seedDeveloper() }
        val transport = AppleMusicFixtureTransport { call -> if (URI(call.url).path.endsWith("syllable-lyrics")) throw http(404)
            else AppleMusicFixture.catalogAndLyricsResponse(call) }
        val source = AppleMusicLyricsSource(authBroker = AppleMusicAuthBroker(rig.connection, transport, rig.clock))
        val candidate = source.search(request, deadline(), LyricsCancellationSignal()).single()
        val base = source.loadBaseLyrics(candidate, deadline(), LyricsCancellationSignal())!!
        assertSame(base, source.loadEnrichment(base, deadline(), LyricsCancellationSignal()))
        val calls = transport.calls.size
        assertSame(base, source.loadEnrichment(base, System.nanoTime() - 1L, LyricsCancellationSignal()))
        assertEquals(calls, transport.calls.size)
    }

    @Test fun plainOnlyCatalogEntriesDoNotInventTimingOrFetchSyllableResources() {
        val rig = AppleMusicFixtureRig().apply { seedDeveloper() }
        val transport = AppleMusicFixtureTransport { call -> if (URI(call.url).path.endsWith("search"))
            AppleMusicFixture.catalog(synced = false).bytes() else AppleMusicFixture.payload("<tt><body><div><p>Plain &amp; real</p></div></body></tt>").bytes() }
        val source = AppleMusicLyricsSource(authBroker = AppleMusicAuthBroker(rig.connection, transport, rig.clock))
        val candidate = source.search(request, deadline(), LyricsCancellationSignal()).single()
        val result = source.loadLyrics(candidate, deadline(), LyricsCancellationSignal())!!
        assertEquals(LyricsKind.PLAIN, result.lyricsKind)
        assertEquals("", result.lyrics)
        assertEquals("", result.wordLyrics)
        assertEquals("Plain & real", result.plainLyrics)
        assertEquals(2, transport.calls.size)
    }

    @Test fun optionalUserRejectionPreservesLegacyLinesButMarksThatCredentialRejected() {
        val rig = AppleMusicFixtureRig().apply { seedDeveloper() }
        val transport = AppleMusicFixtureTransport { call -> if (URI(call.url).path.endsWith("syllable-lyrics")) throw http(403)
            else AppleMusicFixture.catalogAndLyricsResponse(call) }
        val source = AppleMusicLyricsSource(authBroker = AppleMusicAuthBroker(rig.connection, transport, rig.clock))
        val candidate = source.search(request, deadline(), LyricsCancellationSignal()).single()
        assertTrue(source.loadLyrics(candidate, deadline(), LyricsCancellationSignal())!!.lyrics.isNotBlank())
        assertEquals(AppleMusicConnection.Status.REJECTED, rig.connection.refresh().status)
        assertFalse(source.isAvailable)
        assertEquals(3, transport.calls.size)
    }

    @Test fun cancellationBeforeAndDuringLyricsIsNeverSwallowed() {
        val rig = AppleMusicFixtureRig().apply { seedDeveloper() }
        val transport = AppleMusicFixtureTransport(AppleMusicFixture::catalogAndLyricsResponse)
        val source = AppleMusicLyricsSource(authBroker = AppleMusicAuthBroker(rig.connection, transport, rig.clock))
        val candidate = source.search(request, deadline(), LyricsCancellationSignal()).single()
        assertThrows(CancellationException::class.java) { source.loadBaseLyrics(candidate, deadline(), LyricsCancellationSignal().apply { cancel() }) }
        assertEquals(1, transport.calls.size)
        val cancellation = LyricsCancellationSignal()
        transport.response = { cancellation.cancel(); AppleMusicFixture.payload(AppleMusicFixture.lineTtml).bytes() }
        assertThrows(CancellationException::class.java) { source.loadBaseLyrics(candidate, deadline(), cancellation) }
        assertEquals(2, transport.calls.size)
    }

    @Test fun emptyOfficialSearchIsNoMatchButMalformedSuccessfulPayloadIsASourceFailure() {
        val rig = AppleMusicFixtureRig().apply { seedDeveloper() }
        val transport = AppleMusicFixtureTransport { "{\"results\":{}}".bytes() }
        val source = AppleMusicLyricsSource(authBroker = AppleMusicAuthBroker(rig.connection, transport, rig.clock))
        assertTrue(source.search(request, deadline(), LyricsCancellationSignal()).isEmpty())
        transport.response = { "{\"unexpected\":true}".bytes() }
        assertEquals(LyricsFailureReason.SERVER, failure { source.search(request, deadline(), LyricsCancellationSignal()) }.reason)
    }

    private fun failure(work: () -> Any?): LyricsSourceException = assertThrows(LyricsSourceException::class.java) { work() }
    private fun http(code: Int) = LyricsHttpStatusException(code, LyricsFailureReason.NETWORK, false)
    private fun String.bytes(): ByteArray = toByteArray(Charsets.UTF_8)
    private fun JSONObject.bytes(): ByteArray = toString().bytes()
}

internal object AppleMusicFixture {
    const val NOW = 1_800_000_000_000L
    const val user = "synthetic-apple-media-user-fixture"
    const val home = "<script src=\"/assets/index~fixture.js\"></script>"
    const val cover = "https://is1-ssl.mzstatic.com/image/thumb/fixture/{w}x{h}{c}.{f}"
    val developer: String get() = jwt(NOW + TimeUnit.DAYS.toMillis(90), "valid-product")
    fun jwt(expires: Long, name: String): String {
        fun encoded(value: String) = Base64.encodeToString(value.toByteArray(), Base64.URL_SAFE or Base64.NO_WRAP or Base64.NO_PADDING)
        return encoded("{\"alg\":\"ES256\",\"kid\":\"fixture\"}") + "." + encoded(JSONObject()
            .put("exp", expires / 1_000L).put("iss", name).put("pad", "synthetic fixture developer claims padding").toString()) + "." + "a".repeat(32)
    }
    fun credential(storefront: String = "cn", expires: Long = NOW + TimeUnit.DAYS.toMillis(90), rejected: Long = 0L) =
        AppleMusicCredential(user, storefront, NOW - 1_000L, expires, rejected)
    fun song(duration: Long = 144_000L, cover: String = this.cover, synced: Boolean = true): JSONObject = JSONObject().put("id", "17").put("type", "songs")
        .put("attributes", JSONObject().put("name", "Fixture Song").put("artistName", "Fixture Artist").put("albumName", "Fixture Album")
            .put("durationInMillis", duration).put("hasLyrics", true).put("hasTimeSyncedLyrics", synced).put("artwork", JSONObject().put("url", cover)))
    fun catalog(duration: Long = 144_000L, cover: String = this.cover, synced: Boolean = true): JSONObject = JSONObject().put("results",
        JSONObject().put("songs", JSONObject().put("data", JSONArray().put(song(duration, cover, synced)))))
    fun payload(ttml: String, localized: Boolean = false): JSONObject = JSONObject().put("data", JSONArray().put(JSONObject().put("attributes",
        JSONObject().put(if (localized) "ttmlLocalizations" else "ttml", ttml))))
    fun bootstrapResponse(call: AppleMusicFixtureTransport.Call): ByteArray = when {
        call.url == AppleMusicAuthBroker.BROWSE_URL -> home.toByteArray()
        call.url.contains("/assets/") -> developer.toByteArray()
        else -> catalog().toString().toByteArray()
    }
    fun catalogAndLyricsResponse(call: AppleMusicFixtureTransport.Call): ByteArray = when {
        URI(call.url).path.endsWith("syllable-lyrics") -> payload(wordTtml, true).toString().toByteArray()
        URI(call.url).path.endsWith("lyrics") -> payload(lineTtml).toString().toByteArray()
        else -> catalog().toString().toByteArray()
    }
    const val lineTtml = """<tt xmlns="http://www.w3.org/ns/ttml" xmlns:itunes="http://music.apple.com/lyric-ttml-internal"><body dur="2:24.000"><div><p begin="7.439" end="9.027" itunes:key="L1">De la rumba</p><p begin="9.341" end="10.928" itunes:key="L2">Casi ni</p></div></body></tt>"""
    const val wordTtml = """<tt xmlns="http://www.w3.org/ns/ttml" xmlns:itunes="http://music.apple.com/lyric-ttml-internal" xmlns:ttm="http://www.w3.org/ns/ttml#metadata" itunes:timing="Word"><head><metadata><ttm:agent type="person" xml:id="v1"/><iTunesMetadata xmlns="http://music.apple.com/lyric-ttml-internal"><translations><translation type="replacement"><text for="L1">不是译文</text></translation><translation type="subtitle"><text for="L2">官方第二句</text><text for="L1">官方第一句</text><text for="L83274">错位不能附轨</text></translation></translations><transliterations><transliteration xml:lang="es-Latn"><text for="L1">de la rumba</text></transliteration></transliterations></iTunesMetadata></metadata></head><body dur="2:24.000"><div><p begin="7.439" end="9.027" itunes:key="L1" ttm:agent="v1"><span begin="7.439" end="7.619">De</span> <span begin="7.619" end="7.759">la</span> <span begin="7.759" end="8.037">rumba</span><span ttm:role="x-bg"><span begin="9.500" end="10.200">Echo</span></span></p><p begin="9.341" end="10.928" itunes:key="L2"><span begin="9.341" end="9.581">Casi</span> <span begin="9.581" end="9.741">ni</span></p></div></body></tt>"""
}

internal class AppleMusicFixtureRig(credential: AppleMusicCredential? = AppleMusicFixture.credential()) {
    val clock = Clock()
    val store = Store(credential)
    val developers = AppleMusicMemoryDeveloperTokenStore()
    val cookies = Cookies()
    val connection = AppleMusicConnection(AppleMusicAccount(store, developers, cookies, clock))
    fun seedDeveloper() = developers.save(AppleMusicDeveloperToken(AppleMusicFixture.developer, AppleMusicWebTokenParser.jwtExpiryMs(AppleMusicFixture.developer)))
    class Clock : AppleMusicWallClock { @Volatile var now = AppleMusicFixture.NOW; override fun nowMs(): Long = now }
    class Store(var value: AppleMusicCredential?) : AppleMusicCredentialStore {
        var failSave = false
        override fun load(): AppleMusicCredential? = value
        override fun save(credential: AppleMusicCredential) { if (failSave) throw java.io.IOException("Synthetic save failure"); value = credential }
        override fun clear() { value = null }
    }
    class Cookies : AppleMusicWebsiteCookies {
        var deferred = false
        var clearResult = true
        var clearFailure: Exception? = null
        var clears = 0
        val pending = mutableListOf<(Boolean) -> Unit>()
        val reads = mutableListOf<String>()
        val byUrl = mutableMapOf<String, List<AppleMusicConnection.Cookie>>()
        var current: List<AppleMusicConnection.Cookie> = emptyList()
        override fun read(url: String): List<AppleMusicConnection.Cookie> {
            reads += url
            return byUrl[url] ?: current
        }
        override fun clear(onComplete: (Boolean) -> Unit) {
            clears++
            clearFailure?.let { throw it }
            if (deferred) pending += onComplete else onComplete(clearResult)
        }
    }
}

internal class AppleMusicFixtureTransport(var response: (Call) -> ByteArray) : LyricsTransport {
    class Call(val url: String, val headers: Map<String, String>, val deadline: Long, val cancellation: LyricsCancellationSignal) {
        fun query(): Map<String, String> = URI(url).rawQuery.orEmpty().split('&').filter { '=' in it }.associate {
            val parts = it.split('=', limit = 2)
            URLDecoder.decode(parts[0], "UTF-8") to URLDecoder.decode(parts[1], "UTF-8")
        }
        override fun toString(): String = "AppleMusicFixtureCall(redacted)"
    }
    val calls = java.util.Collections.synchronizedList(mutableListOf<Call>())
    override fun getText(url: String, headers: Map<String, String>, deadlineNanos: Long, cancellation: LyricsCancellationSignal): String =
        getBytes(url, headers, deadlineNanos, cancellation).toString(Charsets.UTF_8)
    override fun getBytes(url: String, headers: Map<String, String>, deadlineNanos: Long, cancellation: LyricsCancellationSignal): ByteArray {
        cancellation.throwIfCancelled()
        val call = Call(url, headers, deadlineNanos, cancellation)
        calls += call
        return response(call)
    }
}
