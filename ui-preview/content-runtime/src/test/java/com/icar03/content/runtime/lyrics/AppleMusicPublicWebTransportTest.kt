package com.icar03.content.runtime.lyrics

import android.net.Uri
import android.util.Base64
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import java.io.ByteArrayInputStream
import java.io.IOException
import java.io.InputStream
import java.net.HttpURLConnection
import java.net.URL
import java.util.concurrent.CancellationException
import java.util.concurrent.TimeUnit

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class AppleMusicPublicWebTransportTest {
    @Test fun regionRedirectBootstrapPreparesOfficialAuthorizationWithoutConnectingAnAccount() {
        val rig = AppleMusicFixtureRig(null)
        val opened = mutableListOf<FixtureConnection>()
        val web = AppleMusicPublicWebTransport { url ->
            val reply = when (url.path) {
                "/us/browse" -> Reply(302, "/cn")
                "/cn" -> Reply(301, "/cn/new")
                "/cn/new" -> Reply(body = AppleMusicFixture.home.toByteArray())
                "/assets/index~fixture.js" -> Reply(body = AppleMusicFixture.developer.toByteArray())
                else -> error("Unexpected public page")
            }
            FixtureConnection(url, reply).also(opened::add)
        }
        val api = AppleMusicFixtureTransport { call ->
            assertEquals(AppleMusicAuthBroker.PROBE_URL, call.url)
            assertFalse(call.headers.containsKey("Media-User-Token"))
            AppleMusicFixture.catalog().toString().toByteArray()
        }
        val broker = AppleMusicAuthBroker(rig.connection, AppleMusicTransport(api, web), rig.clock)
        val attempt = begin(rig)
        val configuration = broker.prepareWebAuthorization(attempt, deadline(), LyricsCancellationSignal())
        val uri = Uri.parse(configuration.startUrl)
        assertEquals("authorize.music.apple.com", uri.host)
        assertEquals("/woa", uri.path)
        val parameters = JSONObject(Base64.decode(uri.getQueryParameter("a"), Base64.NO_WRAP).toString(Charsets.UTF_8))
        assertEquals(AppleMusicFixture.developer, parameters.getString("thirdPartyToken"))
        assertEquals("https://music.apple.com/__icar03_authorization/${attempt.id}", configuration.referrerUrl)
        assertEquals(listOf("/us/browse", "/cn", "/cn/new", "/assets/index~fixture.js"), opened.map { it.url.path })
        opened.forEach { connection ->
            assertEquals(mapOf("User-Agent" to "Mozilla/5.0"), connection.sentHeaders)
            assertFalse(connection.instanceFollowRedirects)
            assertTrue(connection.disconnects > 0)
            assertTrue(connection.connectTimeout in 1..1_500)
            assertTrue(connection.readTimeout in 1..8_000)
        }
        assertEquals(1, api.calls.size)
        assertEquals(AppleMusicConnection.Status.DISCONNECTED, rig.connection.refresh().status)
        assertTrue(rig.connection.refresh().isConnecting)
        assertNull(rig.store.value)
        assertNotNull(rig.developers.load())
    }

    @Test fun sameOriginAbsoluteAndRelativeRedirectsKeepOneBudgetAndPublicHeaders() {
        for (status in listOf(301, 302, 303, 307, 308)) {
            val opened = mutableListOf<FixtureConnection>()
            val web = AppleMusicPublicWebTransport { url -> FixtureConnection(url,
                if (url.path == "/us/browse") Reply(status, "https://music.apple.com:443/cn/new")
                else Reply(body = "public".toByteArray())).also(opened::add) }
            val budget = System.nanoTime() + TimeUnit.MILLISECONDS.toNanos(900)
            assertEquals("public", web.getText(AppleMusicAuthBroker.BROWSE_URL,
                mapOf("User-Agent" to "fixture-agent"), budget, LyricsCancellationSignal()))
            assertEquals(2, opened.size)
            opened.forEach {
                assertEquals(mapOf("User-Agent" to "fixture-agent"), it.sentHeaders)
                assertTrue(it.connectTimeout in 1..900)
                assertTrue(it.readTimeout in 1..900)
                assertTrue(it.disconnects > 0)
            }
        }
    }

    @Test fun redirectCannotOpenAnotherOriginDowngradeUserInfoOrMalformedLocation() {
        for (location in listOf("http://music.apple.com/cn/new", "https://evil.invalid/",
            "//music.apple.com.evil.invalid/", "https://user@music.apple.com/", "https://music.apple.com:444/",
            "https://music.apple.com/cn/new#credential", "https://music.apple.com/[", "")) {
            val opened = mutableListOf<FixtureConnection>()
            val web = AppleMusicPublicWebTransport { url -> FixtureConnection(url, Reply(302, location)).also(opened::add) }
            val error = assertThrows(LyricsSourceException::class.java) {
                web.getBytes(AppleMusicAuthBroker.BROWSE_URL, emptyMap(), deadline(), LyricsCancellationSignal())
            }
            assertEquals(LyricsFailureReason.SERVER, error.reason)
            assertEquals(1, opened.size)
            assertTrue(opened.single().disconnects > 0)
        }
    }

    @Test fun loopsAndLongRedirectChainsEndBeforeOpeningAnotherHop() {
        for (loop in listOf(true, false)) {
            val opened = mutableListOf<FixtureConnection>()
            val web = AppleMusicPublicWebTransport { url -> FixtureConnection(url,
                Reply(302, if (loop) AppleMusicAuthBroker.BROWSE_URL else "/hop/${opened.size}")).also(opened::add) }
            assertThrows(LyricsSourceException::class.java) {
                web.getBytes(AppleMusicAuthBroker.BROWSE_URL, emptyMap(), deadline(), LyricsCancellationSignal())
            }
            assertEquals(if (loop) 1 else 6, opened.size)
            opened.forEach { assertTrue(it.disconnects > 0) }
        }
    }

    @Test fun cancellationDuringRedirectDisconnectsAndNeverOpensTheNextPage() {
        val cancellation = LyricsCancellationSignal()
        val opened = mutableListOf<FixtureConnection>()
        val web = AppleMusicPublicWebTransport { url ->
            FixtureConnection(url, Reply(302, "/cn/new"), onResponse = cancellation::cancel).also(opened::add)
        }
        assertThrows(CancellationException::class.java) {
            web.getBytes(AppleMusicAuthBroker.BROWSE_URL, emptyMap(), deadline(), cancellation)
        }
        assertEquals(1, opened.size)
        assertTrue(opened.single().disconnects > 0)
    }

    @Test fun expiredOrCancelledRequestsAndCredentialHeadersOpenNoPublicConnection() {
        var opens = 0
        val web = AppleMusicPublicWebTransport { url -> opens++; FixtureConnection(url, Reply()) }
        assertEquals(LyricsFailureReason.DEADLINE, assertThrows(LyricsSourceException::class.java) {
            web.getBytes(AppleMusicAuthBroker.BROWSE_URL, emptyMap(), System.nanoTime() - 1, LyricsCancellationSignal())
        }.reason)
        assertThrows(CancellationException::class.java) {
            web.getBytes(AppleMusicAuthBroker.BROWSE_URL, emptyMap(), deadline(), LyricsCancellationSignal().apply { cancel() })
        }
        for (header in listOf("authorization", "media-user-token", "cookie", "cookie2")) {
            assertThrows(LyricsSourceException::class.java) {
                web.getBytes(AppleMusicAuthBroker.BROWSE_URL, mapOf(header to "synthetic-secret"), deadline(), LyricsCancellationSignal())
            }
        }
        assertEquals(0, opens)
    }

    @Test fun publicResponseLimitAndStreamFailuresCloseTheirConnection() {
        for (failRead in listOf(false, true)) {
            lateinit var opened: FixtureConnection
            val web = AppleMusicPublicWebTransport { url -> FixtureConnection(url,
                Reply(body = ByteArray(AppleMusicAuthBroker.MAX_WEB_BYTES + 1)),
                stream = if (failRead) object : InputStream() { override fun read(): Int = throw IOException("fixture") } else null)
                .also { opened = it } }
            val error = assertThrows(LyricsSourceException::class.java) {
                web.getBytes(AppleMusicAuthBroker.BROWSE_URL, emptyMap(), deadline(), LyricsCancellationSignal())
            }
            assertEquals(if (failRead) LyricsFailureReason.NETWORK else LyricsFailureReason.SERVER, error.reason)
            assertTrue(opened.disconnects > 0)
        }
    }

    @Test fun authenticatedApiRedirectStillFailsWithoutContactingAPublicWebTransport() {
        var publicRequests = 0
        val web = AppleMusicFixtureTransport { publicRequests++; error("API redirect must not enter public web") }
        val api = AppleMusicFixtureTransport { throw LyricsHttpStatusException(302, LyricsFailureReason.NETWORK, false) }
        val transport = AppleMusicTransport(api, web)
        assertEquals(302, assertThrows(LyricsHttpStatusException::class.java) {
            transport.getBytes(AppleMusicAuthBroker.PROBE_URL,
                mapOf("Authorization" to "Bearer synthetic-developer", "Media-User-Token" to "synthetic-user"),
                deadline(), LyricsCancellationSignal())
        }.statusCode)
        assertEquals(0, publicRequests)
        assertEquals(1, api.calls.size)
    }

    private fun deadline(): Long = System.nanoTime() + TimeUnit.SECONDS.toNanos(10)
    private fun begin(rig: AppleMusicFixtureRig): AppleMusicConnection.LoginAttempt {
        var attempt: AppleMusicConnection.LoginAttempt? = null
        assertTrue(rig.connection.prepareLogin { attempt = it })
        return checkNotNull(attempt)
    }
    private data class Reply(val status: Int = 200, val location: String? = null, val body: ByteArray = byteArrayOf())
    private class FixtureConnection(url: URL, private val reply: Reply,
        private val onResponse: () -> Unit = {}, private val stream: InputStream? = null) : HttpURLConnection(url) {
        val sentHeaders = linkedMapOf<String, String>()
        var disconnects = 0
        override fun connect() = Unit
        override fun disconnect() { disconnects++ }
        override fun usingProxy() = false
        override fun getResponseCode(): Int { onResponse(); return reply.status }
        override fun getHeaderField(name: String): String? = if (name.equals("Location", true)) reply.location else null
        override fun getInputStream(): InputStream = stream ?: ByteArrayInputStream(reply.body)
        override fun setRequestProperty(key: String, value: String) { sentHeaders[key] = value }
    }
}
