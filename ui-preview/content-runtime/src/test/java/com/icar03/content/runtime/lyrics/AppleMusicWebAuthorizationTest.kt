package com.icar03.content.runtime.lyrics

import android.net.Uri
import android.util.Base64
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import java.util.UUID

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class AppleMusicWebAuthorizationTest {
    @Test fun officialNavigationUsesTheMusicKitWireFieldsAndNeverRendersTheBearer() {
        val attempt = begin()
        val configuration = AppleMusicWebAuthorization.configuration(attempt, AppleMusicFixture.developer)
        val uri = Uri.parse(configuration.startUrl)
        assertEquals("https", uri.scheme)
        assertEquals("authorize.music.apple.com", uri.host)
        assertEquals("/woa", uri.path)
        assertEquals(setOf("a", "referrer"), uri.queryParameterNames)
        val fields = JSONObject(Base64.decode(uri.getQueryParameter("a"), Base64.NO_WRAP).toString(Charsets.UTF_8))
        assertEquals("music.apple.com", fields.getString("thirdPartyName"))
        assertEquals(AppleMusicFixture.developer, fields.getString("thirdPartyToken"))
        assertEquals("https://music.apple.com/__icar03_authorization/${attempt.id}", configuration.referrerUrl)
        assertEquals(configuration.referrerUrl, uri.getQueryParameter("referrer"))
        assertFalse(configuration.toString().contains(AppleMusicFixture.developer))
    }

    @Test fun callbackRequiresTheExactOfficialOriginAndCurrentNoncePath() {
        val attempt = begin()
        val configuration = AppleMusicWebAuthorization.configuration(attempt, AppleMusicFixture.developer)
        val valid = callback(configuration.referrerUrl, JSONObject().put("cid", "fixture-client")
            .put("itre", "fixture-expiration-metadata").put("musicUserToken", "synthetic-authorized-user").toString())
        assertEquals("synthetic-authorized-user", AppleMusicWebAuthorization.parseCallback(attempt, valid)!!.musicUserToken)
        assertFalse(AppleMusicWebAuthorization.parseCallback(attempt, valid).toString().contains("synthetic-authorized-user"))
        assertNotNull(AppleMusicWebAuthorization.parseCallback(attempt, valid.replace("music.apple.com/", "music.apple.com:443/")))
        val invalid = listOf(
            valid.replace("https://", "http://"),
            valid.replace("music.apple.com/", "music.apple.com.evil.invalid/"),
            valid.replace("music.apple.com/", "user@music.apple.com/"),
            valid.replace("music.apple.com/", "music.apple.com:444/"),
            valid.replace(attempt.id, UUID.randomUUID().toString()),
            valid.replace("/__icar03_authorization/", "/__icar03_authorization//"),
            valid.replace("/__icar03_authorization/", "/%5F_icar03_authorization/"),
            valid.replace("#", "?approved=true#"),
            valid.replace("#", "?#"),
        )
        invalid.forEach {
            assertFalse(AppleMusicWebAuthorization.isCallbackForAttempt(attempt, it))
            assertNull(AppleMusicWebAuthorization.parseCallback(attempt, it))
        }
        assertNull(AppleMusicWebAuthorization.parseCallback(begin(), valid))
    }

    @Test fun callbackRejectsOversizeMalformedJsonNonStringTokensAndControlCharacters() {
        val attempt = begin()
        val referrer = AppleMusicWebAuthorization.configuration(attempt, AppleMusicFixture.developer).referrerUrl
        val invalidBodies = listOf(
            "[]", "{}", "null", "not json",
            JSONObject().put("musicUserToken", 1234).toString(),
            JSONObject().put("musicUserToken", true).toString(),
            JSONObject().put("musicUserToken", "").toString(),
            JSONObject().put("musicUserToken", "   ").toString(),
            JSONObject().put("musicUserToken", "x".repeat(AppleMusicConnection.MAX_TOKEN_LENGTH + 1)).toString(),
            JSONObject().put("musicUserToken", "fresh").toString() + "{}",
        ) + listOf('\u0000', '\t', '\r', '\n', '\u007f', '\u0085').map {
            JSONObject().put("musicUserToken", "fresh${it}token").toString()
        }
        invalidBodies.forEach { assertNull(AppleMusicWebAuthorization.parseCallback(attempt, callback(referrer, it))) }
        assertNull(AppleMusicWebAuthorization.parseCallback(attempt, "$referrer#%%%"))
        assertNull(AppleMusicWebAuthorization.parseCallback(attempt, "$referrer#${"A".repeat(64 * 1024 + 1)}"))
        val badUtf8 = Base64.encodeToString(byteArrayOf(0xc3.toByte(), 0x28), Base64.NO_WRAP)
        assertNull(AppleMusicWebAuthorization.parseCallback(attempt, "$referrer#$badUtf8"))
        val maximum = "x".repeat(AppleMusicConnection.MAX_TOKEN_LENGTH)
        assertEquals(maximum, AppleMusicWebAuthorization.parseCallback(attempt,
            callback(referrer, JSONObject().put("musicUserToken", maximum).toString()))!!.musicUserToken)
    }

    @Test fun invalidConfigurationCannotCarryArbitraryAttemptIdsOrControlCharacterBearers() {
        val attempt = begin()
        listOf("", "developer\nheader", "x".repeat(AppleMusicConnection.MAX_TOKEN_LENGTH + 1)).forEach {
            assertThrows(IllegalArgumentException::class.java) { AppleMusicWebAuthorization.configuration(attempt, it) }
        }
        val invalidAttempt = AppleMusicConnection.LoginAttempt("not-a-uuid", "")
        assertThrows(IllegalArgumentException::class.java) {
            AppleMusicWebAuthorization.configuration(invalidAttempt, AppleMusicFixture.developer)
        }
        assertFalse(AppleMusicWebAuthorization.isCallbackForAttempt(invalidAttempt, "https://music.apple.com/"))
    }

    @Test fun explicitLoginRetryBypassesBackgroundFailureCooldownAndKeepsAccountDisconnected() {
        val rig = AppleMusicFixtureRig(null)
        val transport = AppleMusicFixtureTransport {
            throw LyricsHttpStatusException(503, LyricsFailureReason.SERVER, true)
        }
        val broker = AppleMusicAuthBroker(rig.connection, transport, rig.clock)
        val first = begin(rig)
        assertThrows(LyricsHttpStatusException::class.java) {
            broker.prepareWebAuthorization(first, deadline(), LyricsCancellationSignal())
        }
        assertEquals(1, transport.calls.size)
        assertThrows(LyricsSourceException::class.java) {
            broker.ensureDeveloper(deadline(), LyricsCancellationSignal())
        }
        assertEquals(1, transport.calls.size)
        rig.connection.cancelLogin(first)
        transport.response = AppleMusicFixture::bootstrapResponse
        val retry = begin(rig)
        val configuration = broker.prepareWebAuthorization(retry, deadline(), LyricsCancellationSignal())
        assertEquals(configuration.referrerUrl, Uri.parse(configuration.startUrl).getQueryParameter("referrer"))
        assertTrue(configuration.referrerUrl.endsWith(retry.id))
        assertEquals(4, transport.calls.size)
        assertEquals(AppleMusicFixture.NOW, rig.clock.now)
        assertEquals(AppleMusicConnection.Status.DISCONNECTED, rig.connection.refresh().status)
        assertNull(rig.store.value)
        assertTrue(rig.connection.refresh().isConnecting)
        assertEquals(AppleMusicFixture.developer, broker.ensureDeveloper(deadline(), LyricsCancellationSignal()).token)
        assertEquals(4, transport.calls.size)
        transport.calls.forEach { assertFalse(it.headers.containsKey("Media-User-Token")) }
    }

    @Test fun pendingCancelledForeignAndForgedAttemptsCannotBootstrapOrUseCachedDeveloper() {
        val rig = AppleMusicFixtureRig(null)
        rig.cookies.deferred = true
        val transport = AppleMusicFixtureTransport(AppleMusicFixture::bootstrapResponse)
        val broker = AppleMusicAuthBroker(rig.connection, transport, rig.clock)
        val pending = checkNotNull(rig.connection.prepareLoginAttempt {})
        assertThrows(java.util.concurrent.CancellationException::class.java) {
            broker.prepareWebAuthorization(pending, deadline(), LyricsCancellationSignal())
        }
        assertTrue(transport.calls.isEmpty())
        rig.cookies.pending.single()(true)
        assertNotNull(broker.prepareWebAuthorization(pending, deadline(), LyricsCancellationSignal()))
        assertEquals(3, transport.calls.size)
        val foreign = begin()
        val forged = AppleMusicConnection.LoginAttempt(pending.id, "")
        rig.connection.cancelLogin(pending)
        for (attempt in listOf(pending, foreign, forged)) {
            assertThrows(java.util.concurrent.CancellationException::class.java) {
                broker.prepareWebAuthorization(attempt, deadline(), LyricsCancellationSignal())
            }
        }
        assertEquals(3, transport.calls.size)
        assertNull(rig.store.value)
    }

    @Test fun cancellationOrAccountReplacementDuringBootstrapCannotReturnAnOldAuthorization() {
        for (cancelSignal in listOf(false, true)) {
            val rig = AppleMusicFixtureRig(null)
            val attempt = begin(rig)
            val cancellation = LyricsCancellationSignal()
            val transport = AppleMusicFixtureTransport { call ->
                if (call.url == AppleMusicAuthBroker.PROBE_URL) {
                    if (cancelSignal) cancellation.cancel() else rig.connection.cancelLogin(attempt)
                }
                AppleMusicFixture.bootstrapResponse(call)
            }
            val broker = AppleMusicAuthBroker(rig.connection, transport, rig.clock)
            assertThrows(java.util.concurrent.CancellationException::class.java) {
                broker.prepareWebAuthorization(attempt, deadline(), cancellation)
            }
            assertNull(rig.store.value)
            transport.response = AppleMusicFixture::bootstrapResponse
            if (cancelSignal) rig.connection.cancelLogin(attempt)
            val replacement = begin(rig)
            val configuration = broker.prepareWebAuthorization(replacement, deadline(), LyricsCancellationSignal())
            assertTrue(configuration.referrerUrl.endsWith(replacement.id))
            assertFalse(configuration.referrerUrl.endsWith(attempt.id))
            assertEquals(AppleMusicConnection.Status.DISCONNECTED, rig.connection.refresh().status)
        }
    }

    private fun deadline(): Long = System.nanoTime() + java.util.concurrent.TimeUnit.SECONDS.toNanos(10)

    private fun begin(rig: AppleMusicFixtureRig): AppleMusicConnection.LoginAttempt {
        var attempt: AppleMusicConnection.LoginAttempt? = null
        assertTrue(rig.connection.prepareLogin { attempt = it })
        return checkNotNull(attempt)
    }

    private fun begin(): AppleMusicConnection.LoginAttempt {
        val rig = AppleMusicFixtureRig(null)
        var attempt: AppleMusicConnection.LoginAttempt? = null
        assertTrue(rig.connection.prepareLogin { attempt = it })
        return checkNotNull(attempt)
    }

    private fun callback(referrer: String, value: String): String = referrer + "#" +
        Base64.encodeToString(value.toByteArray(Charsets.UTF_8), Base64.NO_WRAP)
}
