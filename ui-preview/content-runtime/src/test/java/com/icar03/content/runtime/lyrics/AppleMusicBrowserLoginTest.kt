package com.icar03.content.runtime.lyrics

import android.app.Activity
import android.content.Intent
import android.content.pm.ActivityInfo
import android.content.pm.ApplicationInfo
import android.os.Bundle
import android.os.Looper
import com.icar03.content.runtime.LyricsSettingsBinding
import com.icar03.content.ui.AppleMusicConnectRequested
import org.json.JSONArray
import org.json.JSONObject
import org.junit.After
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import java.util.concurrent.TimeUnit

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class AppleMusicBrowserLoginTest {
    private val context get() = RuntimeEnvironment.getApplication()
    @After fun cleanup() {
        AppleMusicBrowserLogin.resetForTest(context)
    }

    @Test fun missingBrowserGivesInstallFeedbackAndDoesNotCreateEmbeddedLogin() {
        val feedback = mutableListOf<String>()
        val binding = LyricsSettingsBinding(context, {}, feedback::add)
        try {
            binding.start()
            binding.dispatch(AppleMusicConnectRequested)
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(listOf("请先安装03浏览器，再登录Apple Music"), feedback)
            assertFalse(binding.state.appleLoginOpen)
            assertNull(shadowOf(context).nextStartedActivity)
        } finally { binding.close() }
    }

    @Test fun productionBindingStartsBrowserWithoutAnyMapIntermediateActivity() {
        val info = ActivityInfo().apply {
            packageName = AppleMusicBrowserLoginContract.BROWSER_PACKAGE
            name = AppleMusicBrowserLoginContract.component.className
            exported = true; enabled = true
            applicationInfo = ApplicationInfo().apply { packageName = AppleMusicBrowserLoginContract.BROWSER_PACKAGE; enabled = true }
        }
        shadowOf(context.packageManager).addOrUpdateActivity(info)
        val binding = LyricsSettingsBinding(context, {}, {})
        try {
            binding.start(); binding.dispatch(AppleMusicConnectRequested)
            val intent = shadowOf(context).nextStartedActivity
            assertEquals(AppleMusicBrowserLoginContract.component, intent.component)
            assertNotNull(intent.getParcelableExtra<android.app.PendingIntent>("result_callback"))
            assertNotNull(intent.getParcelableExtra<android.app.PendingIntent>("return_callback"))
            assertTrue(intent.flags and Intent.FLAG_ACTIVITY_NEW_TASK != 0)
            assertFalse(binding.state.appleLoginOpen)
            binding.stop()
        } finally { binding.close() }
    }

    @Test fun explicitBrowserContractUsesRootCookiePathAndNaturalLoginFlow() {
        val request = AppleMusicBrowserLoginContract.request("nonce")
        assertEquals(AppleMusicBrowserLoginContract.component, request.component)
        assertEquals("com.ninepointnine.browser.action.REQUEST_SITE_CREDENTIAL", request.action)
        assertEquals("https://music.apple.com/", request.getStringExtra("site_url"))
        assertEquals("https://music.apple.com/login", request.getStringExtra("login_url"))
        assertEquals(arrayListOf("media-user-token", "itua"), request.getStringArrayListExtra("cookie_names"))
        assertEquals(arrayListOf("media-user-token"), request.getStringArrayListExtra("required_cookie_names"))
        assertEquals("03地图", request.getStringExtra("caller_display_name"))
        assertTrue(request.getBooleanExtra("login_flow", false))
        assertEquals(0, request.flags)
    }

    @Test fun parserAcceptsOptionalItuaOnlyForExactBoundedReceipt() {
        val raw = receipt()
        assertNotNull(parse(raw))
        raw.put("status", "partial")
        assertNotNull(parse(raw))
        assertNull(AppleMusicBrowserLoginContract.parse(Activity.RESULT_CANCELED, Intent().putExtra("credentials_json", raw.toString()), "nonce"))
        for (field in listOf("site_url", "request_id")) {
            val malformed = JSONObject(receipt().toString()).put(field, "other")
            assertNull("reject $field", parse(malformed))
        }
        val hints = receipt().put("protocol_version", "1").put("status", "other")
        hints.getJSONArray("cookies").getJSONObject(0).remove("http_only")
        assertNotNull(parse(hints))
        assertNull(AppleMusicBrowserLoginContract.parse(Activity.RESULT_OK,
            Intent().putExtra("credentials_json", receipt().toString() + " trailing"), "nonce"))
        assertNull(AppleMusicBrowserLoginContract.parse(Activity.RESULT_OK,
            Intent().putExtra("credentials_json", " ".repeat(AppleMusicBrowserLoginContract.MAX_JSON_BYTES + 1)), "nonce"))
    }

    @Test fun optionalStorefrontCookieWithoutSecureDoesNotRejectTheAuthenticatedToken() {
        val raw = receipt()
        raw.getJSONArray("cookies").put(cookie().put("name", "itua").put("value", "cn").put("secure", false))
        val candidate = parse(raw)
        assertNotNull(candidate)
        val rig = AppleMusicFixtureRig(null); rig.seedDeveloper()
        val owner = rig.connection.account.prepareExternalLoginAttempt("external")!!
        val transport = AppleMusicFixtureTransport { """{"data":[{"id":"cn"}]}""".toByteArray() }
        val broker = AppleMusicAuthBroker(rig.connection, transport, rig.clock)
        assertEquals(AppleMusicConnection.CookieAcceptance.ACCEPTED,
            broker.verifyExternalCandidate(owner, candidate!!, deadline(), LyricsCancellationSignal()))
        assertEquals(AppleMusicConnection.Status.CONNECTED, rig.connection.state.value.status)
        assertEquals("cn", rig.store.value?.storefront)
        raw.getJSONArray("cookies").getJSONObject(0).put("secure", false)
        raw.getJSONArray("cookies").getJSONObject(1).put("value", 42).put("domain", "unexpected")
        raw.getJSONArray("cookies").put("ignored extension")
        assertNotNull(parse(raw))
    }

    @Test fun parserSkipsWrongTokenScopesAndPreservesDuplicateCandidatesForOfficialVerification() {
        for ((field,value) in listOf("domain" to ".apple.com.evil", "domain" to "apple.com", "path" to "/login", "name" to "other", "value" to 42)) {
            val raw = receipt(); raw.getJSONArray("cookies").getJSONObject(0).put(field,value)
            assertNull("reject $field", parse(raw))
        }
        val duplicate = receipt()
        duplicate.getJSONArray("cookies").put(cookie().put("value", "conflicting-token"))
        assertEquals(listOf("conflicting-token"), parse(duplicate)?.alternatives)
        val multipleScopes = receipt()
        multipleScopes.getJSONArray("cookies").put(cookie().put("domain", ".apple.com").put("value", "parent-token"))
        assertEquals("synthetic-user-token", parse(multipleScopes)?.token)
        multipleScopes.getJSONArray("cookies").put(cookie().put("name", "itua").put("value", "cn"))
        assertNotNull(parse(multipleScopes))
        val parentFirst = receipt().put("cookies", JSONArray()
            .put(cookie().put("domain", ".apple.com").put("value", "parent-a"))
            .put(cookie().put("domain", ".apple.com").put("value", "parent-b"))
            .put(cookie()))
        assertEquals("synthetic-user-token", parse(parentFirst)?.token)
        val tokenless = receipt().put("cookies", JSONArray().put(cookie().put("name","itua").put("value","cn")))
        assertNull(parse(tokenless))
    }

    @Test fun externalPreparationNeverClearsCookiesAndCanReattachAfterRecreation() {
        val rig = AppleMusicFixtureRig()
        val first = rig.connection.account.prepareExternalLoginAttempt("nonce")!!
        assertSame(first, rig.connection.account.prepareExternalLoginAttempt("nonce"))
        assertNull(rig.connection.account.prepareExternalLoginAttempt("other"))
        assertTrue(rig.connection.state.value.isConnecting)
        assertEquals(0, rig.cookies.clears)
        rig.connection.account.cancelLogin(first)
        assertFalse(rig.connection.state.value.isConnecting)
        assertNotNull(rig.store.value)
    }

    @Test fun cookieTokenPercentEncodingIsDecodedOnceAndLiteralPlusIsPreserved() {
        val raw = receipt()
        raw.getJSONArray("cookies").getJSONObject(0).put("value", "opaque%2Ftoken+suffix%3D")
        val candidate = parse(raw)!!
        assertEquals("opaque/token+suffix=", candidate.token)
        assertEquals(listOf("opaque%2Ftoken+suffix%3D"), candidate.alternatives)
        raw.getJSONArray("cookies").getJSONObject(0).put("value", "opaque%invalid")
        assertEquals("opaque%invalid", parse(raw)?.token)
    }

    @Test fun rejectedDuplicateCandidateFallsThroughToTheTokenAppleAcceptsWithoutEarlyStorage() {
        val rig = AppleMusicFixtureRig(null); rig.seedDeveloper()
        val attempt = rig.connection.account.prepareExternalLoginAttempt("duplicates")!!
        val transport = AppleMusicFixtureTransport { call ->
            assertNull(rig.store.value)
            if (call.headers["Media-User-Token"] == "stale-token") {
                throw LyricsHttpStatusException(401, LyricsFailureReason.AUTH_REJECTED, false)
            }
            """{"data":[{"id":"cn"}]}""".toByteArray()
        }
        val candidate = AppleMusicBrowserCredential("stale-token", listOf("accepted-token", "accepted-token"))
        val result = AppleMusicAuthBroker(rig.connection, transport, rig.clock)
            .verifyExternalCandidate(attempt, candidate, deadline(), LyricsCancellationSignal())
        assertEquals(AppleMusicConnection.CookieAcceptance.ACCEPTED, result)
        assertEquals("accepted-token", rig.store.value?.token)
        assertEquals(2, transport.calls.size)
        assertFalse(rig.connection.state.value.isConnecting)
    }

    @Test fun officialVerificationCommitsSameTokenOnlyAfterSuccessfulAccountResponse() {
        val rig = AppleMusicFixtureRig(); rig.seedDeveloper()
        val old = rig.store.value!!
        val attempt = rig.connection.account.prepareExternalLoginAttempt("nonce")!!
        val transport = AppleMusicFixtureTransport { call ->
            assertSame(old, rig.store.value)
            assertEquals(AppleMusicAuthBroker.ME_STOREFRONT_URL, call.url)
            assertEquals(old.token, call.headers["Media-User-Token"])
            """{"data":[{"id":"us"}]}""".toByteArray()
        }
        val broker = AppleMusicAuthBroker(rig.connection, transport, rig.clock)
        assertEquals(AppleMusicConnection.CookieAcceptance.ACCEPTED, broker.verifyExternalCandidate(attempt,
            AppleMusicBrowserCredential(old.token), deadline(), LyricsCancellationSignal()))
        assertEquals("us", rig.store.value!!.storefront)
        assertNotEquals(old.generation, rig.store.value!!.generation)
        assertEquals(0, rig.cookies.clears)
        assertFalse(rig.connection.state.value.isConnecting)
        assertEquals(1, transport.calls.size)
    }

    @Test fun rejectedCancelledAndLateResponsesKeepThePreviousEncryptedCredential() {
        val rig = AppleMusicFixtureRig(); rig.seedDeveloper()
        val old = rig.store.value!!
        val attempt = rig.connection.account.prepareExternalLoginAttempt("nonce")!!
        val transport = AppleMusicFixtureTransport { throw LyricsHttpStatusException(403, LyricsFailureReason.AUTH_REJECTED, false) }
        val broker = AppleMusicAuthBroker(rig.connection, transport, rig.clock)
        assertThrows(AppleMusicAuthenticationException::class.java) {
            broker.verifyExternalCandidate(attempt, AppleMusicBrowserCredential("candidate"), deadline(), LyricsCancellationSignal())
        }
        assertSame(old, rig.store.value)
        assertEquals(0L, rig.store.value!!.rejectedAtMs)
        rig.connection.account.cancelLogin(attempt)
        val current = rig.connection.account.prepareExternalLoginAttempt("new")!!
        assertEquals(AppleMusicConnection.CookieAcceptance.STALE_ATTEMPT,
            rig.connection.account.completeExternalLogin(attempt,"candidate","cn"))
        assertTrue(rig.connection.account.isReadyLoginAttempt(current))
        val signal = LyricsCancellationSignal().apply { cancel() }
        assertThrows(java.util.concurrent.CancellationException::class.java) {
            broker.verifyExternalCandidate(current, AppleMusicBrowserCredential("candidate"), deadline(), signal)
        }
        assertSame(old, rig.store.value)
    }

    @Test fun storageFailureAfterVerificationDoesNotReplaceTheOldAccount() {
        val rig = AppleMusicFixtureRig(); rig.seedDeveloper(); rig.store.failSave = true
        val old = rig.store.value
        val owner = rig.connection.account.prepareExternalLoginAttempt("nonce")!!
        val broker = AppleMusicAuthBroker(rig.connection, AppleMusicFixtureTransport { """{"data":[{"id":"cn"}]}""".toByteArray() }, rig.clock)
        assertEquals(AppleMusicConnection.CookieAcceptance.STORAGE_FAILED,
            broker.verifyExternalCandidate(owner, AppleMusicBrowserCredential("candidate"), deadline(), LyricsCancellationSignal()))
        assertSame(old,rig.store.value)
    }

    @Test fun callbackResumesAttemptFromMetadataAndCancellationHasNoIntermediateWindow() {
        val firstRig = AppleMusicFixtureRig(null)
        AppleMusicBrowserLogin.brokerFactory = { AppleMusicAuthBroker(firstRig.connection, clock = firstRig.clock) }
        assertTrue(AppleMusicBrowserLogin.begin(context))
        val request = shadowOf(context).nextStartedActivity
        val callback = request.getParcelableExtra<android.app.PendingIntent>("result_callback")!!
        val restoredRig = AppleMusicFixtureRig(null)
        AppleMusicBrowserLogin.brokerFactory = { AppleMusicAuthBroker(restoredRig.connection, clock = restoredRig.clock) }
        val filled = Intent(shadowOf(callback).savedIntent).putExtra("result_code", Activity.RESULT_CANCELED)
        AppleMusicBrowserLogin.receive(context, Activity.RESULT_CANCELED, filled)
        assertFalse(restoredRig.connection.state.value.isConnecting)
        assertNull(restoredRig.store.value)
        assertTrue(AppleMusicBrowserLogin.consumeReturnToLyrics(context))
        assertFalse(AppleMusicBrowserLogin.consumeReturnToLyrics(context))
        assertTrue(restoredRig.connection.state.value.loginMessage.contains("取消"))
    }

    @Test fun bindingPauseDoesNotOwnOrCancelTheExternalAttempt() {
        val rig = AppleMusicFixtureRig(null)
        val owner = rig.connection.account.prepareExternalLoginAttempt("relay")!!
        val binding = LyricsSettingsBinding(context, {}, {}, rig.connection)
        try {
            binding.start(); binding.stop(); binding.close()
            assertTrue(rig.connection.account.isReadyLoginAttempt(owner))
            assertEquals(0, rig.cookies.clears)
        } finally { rig.connection.account.cancelLogin(owner) }
    }

    @Test fun callbackIgnoresLateRequestAndRejectsDuplicateInvalidAndOversizedResultsWithoutStorage() {
        val rig = AppleMusicFixtureRig()
        val old = rig.store.value
        val transport = AppleMusicFixtureTransport { error("An invalid receipt must not reach network") }
        AppleMusicBrowserLogin.brokerFactory = { AppleMusicAuthBroker(rig.connection, transport, rig.clock) }
        assertTrue(AppleMusicBrowserLogin.begin(context))
        val request = shadowOf(context).nextStartedActivity
        val id = request.getStringExtra("request_id")!!
        val callback = request.getParcelableExtra<android.app.PendingIntent>("result_callback")!!
        val base = shadowOf(callback).savedIntent
        AppleMusicBrowserLogin.receive(context, Activity.RESULT_OK, Intent(base)
            .setData(android.net.Uri.parse("icar03-apple-login://result/old-request"))
            .putExtra("credentials_json", receipt().put("request_id", "old-request").toString()))
        assertTrue(rig.connection.state.value.isConnecting)
        AppleMusicBrowserLogin.receive(context, Activity.RESULT_OK, Intent(base)
            .putExtra("credentials_json", " ".repeat(AppleMusicBrowserLoginContract.MAX_JSON_BYTES + 1)))
        assertFalse(rig.connection.state.value.isConnecting)
        AppleMusicBrowserLogin.receive(context, Activity.RESULT_OK, Intent(base)
            .putExtra("credentials_json", receipt().put("request_id", id).toString()))
        assertSame(old, rig.store.value)
        assertTrue(transport.calls.isEmpty())
    }

    @Test fun callbackProjectsVerificationInMapAndCommitsOnlyAfterOfficialResponse() {
        val rig = AppleMusicFixtureRig(null); rig.seedDeveloper()
        val started = java.util.concurrent.CountDownLatch(1)
        val release = java.util.concurrent.CountDownLatch(1)
        val transport = AppleMusicFixtureTransport {
            started.countDown()
            assertTrue(release.await(2, TimeUnit.SECONDS))
            """{"data":[{"id":"cn"}]}""".toByteArray()
        }
        AppleMusicBrowserLogin.brokerFactory = { AppleMusicAuthBroker(rig.connection, transport, rig.clock) }
        assertTrue(AppleMusicBrowserLogin.begin(context))
        val request = shadowOf(context).nextStartedActivity
        val id = request.getStringExtra("request_id")!!
        val callback = request.getParcelableExtra<android.app.PendingIntent>("result_callback")!!
        val data = Intent(shadowOf(callback).savedIntent).putExtra("result_code", Activity.RESULT_OK)
            .putExtra("credentials_json", receipt().put("request_id", id).toString())
        AppleMusicBrowserLogin.receive(context, Activity.RESULT_OK, data)
        assertTrue(rig.connection.state.value.isConnecting)
        assertTrue(rig.connection.state.value.loginMessage.startsWith("正在验证"))
        assertNull(rig.store.value)
        assertEquals(setOf("return_to_lyrics"), context.getSharedPreferences("applemusic.browser-login.pending", 0).all.keys)
        shadowOf(Looper.getMainLooper()).idle()
        assertTrue(started.await(1, TimeUnit.SECONDS))
        release.countDown()
        val end = System.nanoTime() + TimeUnit.SECONDS.toNanos(2)
        while (rig.connection.state.value.isConnecting && System.nanoTime() < end) {
            shadowOf(Looper.getMainLooper()).idle()
            Thread.yield()
        }
        assertEquals(AppleMusicConnection.Status.CONNECTED, rig.connection.state.value.status)
        assertEquals("cn", rig.connection.state.value.storefront)
        assertNull(shadowOf(context).nextStartedActivity)
    }

    @Test fun callbackCancellationInvalidatesOneShotResultAndPreservesPreviousCredential() {
        val rig = AppleMusicFixtureRig()
        val old = rig.store.value
        val transport = AppleMusicFixtureTransport { error("Canceled callback must not reach network") }
        AppleMusicBrowserLogin.brokerFactory = { AppleMusicAuthBroker(rig.connection, transport, rig.clock) }
        assertTrue(AppleMusicBrowserLogin.begin(context))
        val request = shadowOf(context).nextStartedActivity
        val id = request.getStringExtra("request_id")!!
        val callback = request.getParcelableExtra<android.app.PendingIntent>("result_callback")!!
        val data = Intent(shadowOf(callback).savedIntent)
            .putExtra("credentials_json", receipt().put("request_id", id).toString())
        AppleMusicBrowserLogin.cancel(context)
        AppleMusicBrowserLogin.receive(context, Activity.RESULT_OK, data)
        assertSame(old, rig.store.value)
        assertFalse(rig.connection.state.value.isConnecting)
        assertTrue(transport.calls.isEmpty())
    }

    @Test fun temporaryMapResumeCannotConsumeTheFinalReturnWhileBrowserLoginIsPending() {
        val rig = AppleMusicFixtureRig(null)
        AppleMusicBrowserLogin.brokerFactory = { AppleMusicAuthBroker(rig.connection, clock = rig.clock) }
        assertTrue(AppleMusicBrowserLogin.begin(context))
        val request = shadowOf(context).nextStartedActivity
        val callback = request.getParcelableExtra<android.app.PendingIntent>("result_callback")!!
        assertTrue(AppleMusicBrowserLogin.shouldPreserveSettings(context))
        assertTrue(AppleMusicBrowserLogin.consumeReturnToLyrics(context))
        assertTrue(AppleMusicBrowserLogin.consumeReturnToLyrics(context))
        assertTrue(AppleMusicBrowserLogin.shouldPreserveSettings(context))
        AppleMusicBrowserLogin.receive(context, Activity.RESULT_CANCELED,
            Intent(shadowOf(callback).savedIntent).putExtra("result_code", Activity.RESULT_CANCELED))
        assertTrue(AppleMusicBrowserLogin.shouldPreserveSettings(context))
        assertTrue(AppleMusicBrowserLogin.consumeReturnToLyrics(context))
        assertFalse(AppleMusicBrowserLogin.consumeReturnToLyrics(context))
        assertFalse(AppleMusicBrowserLogin.shouldPreserveSettings(context))
    }

    @Test fun cancelingInMapDropsThePendingReturnAndLateCallbackCannotReopenSettings() {
        val rig = AppleMusicFixtureRig(null)
        AppleMusicBrowserLogin.brokerFactory = { AppleMusicAuthBroker(rig.connection, clock = rig.clock) }
        assertTrue(AppleMusicBrowserLogin.begin(context))
        val request = shadowOf(context).nextStartedActivity
        val callback = request.getParcelableExtra<android.app.PendingIntent>("result_callback")!!
        AppleMusicBrowserLogin.cancel(context)
        AppleMusicBrowserLogin.receive(context, Activity.RESULT_CANCELED, Intent(shadowOf(callback).savedIntent))
        assertFalse(AppleMusicBrowserLogin.consumeReturnToLyrics(context))
        assertFalse(AppleMusicBrowserLogin.shouldPreserveSettings(context))
        assertFalse(rig.connection.state.value.isConnecting)
    }

    private fun cookie(): JSONObject = JSONObject().put("name","media-user-token").put("value","synthetic-user-token")
        .put("domain",".music.apple.com").put("path","/").put("secure",true).put("http_only",true)
    private fun receipt(): JSONObject = JSONObject().put("protocol_version",1).put("site_url",AppleMusicBrowserLoginContract.SITE_URL)
        .put("request_id","nonce").put("status","complete").put("cookies",JSONArray().put(cookie()))
    private fun parse(raw: JSONObject) = AppleMusicBrowserLoginContract.parse(Activity.RESULT_OK,
        Intent().putExtra("credentials_json",raw.toString()),"nonce")
    private fun deadline() = System.nanoTime() + TimeUnit.SECONDS.toNanos(30)
}
