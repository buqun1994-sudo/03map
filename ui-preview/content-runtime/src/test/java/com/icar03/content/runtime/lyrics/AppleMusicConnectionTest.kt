package com.icar03.content.runtime.lyrics

import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import java.io.File
import java.security.SecureRandom
import java.util.concurrent.TimeUnit
import javax.crypto.Cipher
import javax.crypto.spec.GCMParameterSpec
import javax.crypto.spec.SecretKeySpec

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class AppleMusicConnectionTest {
    @get:Rule val temporary = TemporaryFolder()

    @Test fun officialLoginUrlAndDomainChecksCannotAcceptAnUnrelatedCookie() {
        val rig = AppleMusicFixtureRig(null)
        val attempt = begin(rig)
        assertEquals("https://music.apple.com/login", attempt.loginUrl)
        assertEquals(1, rig.cookies.clears)
        for (origin in listOf("http://music.apple.com/login", "https://music.apple.com.evil.invalid/login", "https://idmsa.apple.com/", "https://music.apple.com:444/login")) {
            assertEquals(AppleMusicConnection.CookieAcceptance.INVALID_ORIGIN, rig.connection.acceptCookies(attempt, origin, cookies("new")))
        }
        for (domain in listOf("evilapple.com", "music.apple.com.evil.invalid", "idmsa.apple.com")) {
            assertEquals(AppleMusicConnection.CookieAcceptance.WAITING_FOR_TOKEN,
                rig.connection.acceptCookies(attempt, rig.connection.loginUrl, listOf(AppleMusicConnection.Cookie("media-user-token", "new", domain))))
        }
        assertEquals(AppleMusicConnection.Status.DISCONNECTED, rig.connection.refresh().status)
        assertNull(rig.store.value)
    }

    @Test fun missingItuaWaitsEightSecondsThenLeavesStorefrontBlankForTheBackend() {
        val rig = AppleMusicFixtureRig(null)
        val attempt = begin(rig)
        val tokenOnly = listOf(AppleMusicConnection.Cookie("media-user-token", "new", ".music.apple.com"))
        assertEquals(AppleMusicConnection.CookieAcceptance.WAITING_FOR_STOREFRONT,
            rig.connection.acceptCookies(attempt, rig.connection.loginUrl, tokenOnly))
        rig.clock.now += 7_999L
        assertEquals(AppleMusicConnection.CookieAcceptance.WAITING_FOR_STOREFRONT,
            rig.connection.acceptCookies(attempt, rig.connection.loginUrl, tokenOnly))
        rig.clock.now++
        assertEquals(AppleMusicConnection.CookieAcceptance.ACCEPTED,
            rig.connection.acceptCookies(attempt, rig.connection.loginUrl, tokenOnly))
        assertEquals("", rig.connection.refresh().storefront)
        assertEquals(AppleMusicConnection.Status.CONNECTED, rig.connection.refresh().status)
        assertEquals(rig.clock.now + AppleMusicConnection.TOKEN_LIFETIME_MS, rig.connection.refresh().expiresAtMs)
        assertFalse(rig.connection.refresh().isConnecting)
    }

    @Test fun tokenArrivalCanWaitForItuaAndCookieExpiryIsCappedAt180Days() {
        val rig = AppleMusicFixtureRig(null)
        val attempt = begin(rig)
        val expiry = rig.clock.now + TimeUnit.DAYS.toMillis(400)
        assertEquals(AppleMusicConnection.CookieAcceptance.WAITING_FOR_STOREFRONT,
            rig.connection.acceptCookies(attempt, rig.connection.loginUrl, cookies("fresh", storefront = "", expiry = expiry)))
        rig.clock.now += 1_000L
        assertEquals(AppleMusicConnection.CookieAcceptance.ACCEPTED,
            rig.connection.acceptCookies(attempt, rig.connection.loginUrl, cookies("fresh", storefront = "CN", expiry = expiry)))
        assertEquals("cn", rig.connection.refresh().storefront)
        assertEquals(rig.clock.now + AppleMusicConnection.TOKEN_LIFETIME_MS, rig.connection.refresh().expiresAtMs)
        assertEquals(rig.clock.now, rig.connection.refresh().savedAtMs)
    }

    @Test fun earlierCookieExpiryAndRejectedExpiredCookiesAreRespected() {
        val rig = AppleMusicFixtureRig(null)
        val attempt = begin(rig)
        assertEquals(AppleMusicConnection.CookieAcceptance.EXPIRED_COOKIE,
            rig.connection.acceptCookies(attempt, rig.connection.loginUrl, cookies("fresh", expiry = rig.clock.now - 1L)))
        val expiry = rig.clock.now + TimeUnit.DAYS.toMillis(10)
        assertEquals(AppleMusicConnection.CookieAcceptance.ACCEPTED,
            rig.connection.acceptCookies(attempt, rig.connection.loginUrl, cookies("fresh", expiry = expiry)))
        assertEquals(expiry, rig.connection.refresh().expiresAtMs)
        assertTrue(rig.connection.refresh().needsRenewal)
    }

    @Test fun oldRejectedRequestsAndStorefrontResponsesCannotChangeFreshLoginCredentials() {
        val rig = AppleMusicFixtureRig()
        val old = rig.connection.account.requireCredential()
        rig.connection.account.markRejected(old)
        val attempt = begin(rig)
        assertEquals(AppleMusicConnection.CookieAcceptance.STALE_COOKIE,
            rig.connection.acceptCookies(attempt, rig.connection.loginUrl, cookies(old.token)))
        assertEquals(AppleMusicConnection.CookieAcceptance.ACCEPTED,
            rig.connection.acceptCookies(attempt, rig.connection.loginUrl, cookies("synthetic-new-login", "jp")))
        val fresh = rig.connection.account.requireCredential()
        assertNotEquals(old.generation, fresh.generation)
        val revision = rig.connection.revision
        rig.connection.account.markRejected(old)
        assertFalse(rig.connection.account.saveStorefront(old, "us"))
        assertEquals(revision, rig.connection.revision)
        assertEquals("jp", rig.connection.refresh().storefront)
        assertEquals(AppleMusicConnection.Status.CONNECTED, rig.connection.refresh().status)
        assertEquals(0L, rig.connection.refresh().rejectedAtMs)
        assertFalse(fresh.toString().contains("synthetic-new-login"))
        assertFalse(cookies("synthetic-new-login").first().toString().contains("synthetic-new-login"))
        assertFalse(attempt.toString().contains(old.token))
    }

    @Test fun revisionsChangeOnlyForRealStateTransitionsAndExpiredStatusIsStable() {
        val rig = AppleMusicFixtureRig()
        val original = rig.connection.revision
        repeat(3) { rig.connection.refresh(); assertEquals(original, rig.connection.revision) }
        val credential = rig.connection.account.requireCredential()
        assertTrue(rig.connection.account.saveStorefront(credential, "cn"))
        assertEquals(original, rig.connection.revision)
        rig.connection.account.markRejected(credential)
        val rejected = rig.connection.revision
        assertTrue(rejected > original)
        rig.connection.account.markRejected(credential)
        assertEquals(rejected, rig.connection.revision)
        val other = AppleMusicFixtureRig()
        val beforeExpiry = other.connection.revision
        other.clock.now = other.connection.refresh().expiresAtMs
        assertEquals(AppleMusicConnection.Status.EXPIRED, other.connection.refresh().status)
        val expired = other.connection.revision
        assertTrue(expired > beforeExpiry)
        repeat(3) { other.connection.refresh(); assertEquals(expired, other.connection.revision) }
    }

    @Test fun cancellationWhileClearingCookiesCannotResurrectAnOlderLoginAttempt() {
        val rig = AppleMusicFixtureRig(null)
        rig.cookies.deferred = true
        var firstReady: AppleMusicConnection.LoginAttempt? = null
        assertTrue(rig.connection.prepareLogin { firstReady = it })
        assertFalse(rig.connection.prepareLogin { error("No duplicate login") })
        assertTrue(rig.connection.refresh().isConnecting)
        rig.connection.disconnect()
        // Pending first prepare and disconnect callbacks may return in either order.
        rig.cookies.pending[0](true)
        assertNull(firstReady)
        rig.cookies.pending[1](true)
        assertFalse(rig.connection.refresh().isConnecting)
        rig.cookies.deferred = false
        val fresh = begin(rig)
        rig.connection.cancelLogin(fresh)
        assertEquals(AppleMusicConnection.CookieAcceptance.STALE_ATTEMPT,
            rig.connection.acceptCookies(fresh, rig.connection.loginUrl, cookies("late")))
        assertNull(rig.store.value)
    }

    @Test fun diskFailureDoesNotAdvertiseASuccessfulConnectionAndMayBeRetried() {
        val rig = AppleMusicFixtureRig(null)
        val attempt = begin(rig)
        rig.store.failSave = true
        assertEquals(AppleMusicConnection.CookieAcceptance.STORAGE_FAILED,
            rig.connection.acceptCookies(attempt, rig.connection.loginUrl, cookies("fresh")))
        assertEquals(AppleMusicConnection.Status.DISCONNECTED, rig.connection.refresh().status)
        assertNull(rig.store.value)
        rig.store.failSave = false
        assertEquals(AppleMusicConnection.CookieAcceptance.ACCEPTED,
            rig.connection.acceptCookies(attempt, rig.connection.loginUrl, cookies("fresh")))
    }

    @Test fun encryptedPrivateFileRoundTripsAllFieldsAndUsesDifferentGcmNonces() {
        val file = File(temporary.root, "applemusic-fixture.v1")
        val store = AppleMusicEncryptedCredentialStore(file, FixtureGcmCipher())
        val value = AppleMusicFixture.credential(storefront = "jp", rejected = AppleMusicFixture.NOW)
        store.save(value)
        val first = file.readBytes()
        assertFalse(first.toString(Charsets.ISO_8859_1).contains(AppleMusicFixture.user))
        val loaded = store.load()!!
        assertEquals(value.token, loaded.token)
        assertEquals(value.storefront, loaded.storefront)
        assertEquals(value.savedAtMs, loaded.savedAtMs)
        assertEquals(value.expiresAtMs, loaded.expiresAtMs)
        assertEquals(value.rejectedAtMs, loaded.rejectedAtMs)
        assertEquals(value.generation, loaded.generation)
        store.save(value)
        assertFalse(first.contentEquals(file.readBytes()))
        val corrupted = file.readBytes().also { it[it.lastIndex] = (it.last().toInt() xor 1).toByte() }
        file.writeBytes(corrupted)
        assertThrows(Exception::class.java) { store.load() }
        store.clear()
        assertNull(store.load())
    }

    @Test fun disconnectDeletesTheCredentialAndClearsTheOfficialBrowserSession() {
        val rig = AppleMusicFixtureRig()
        val before = rig.connection.revision
        var complete = false
        rig.connection.disconnect { complete = it }
        assertTrue(complete)
        assertNull(rig.store.value)
        assertEquals(1, rig.cookies.clears)
        assertEquals(AppleMusicConnection.Status.DISCONNECTED, rig.connection.refresh().status)
        assertTrue(rig.connection.revision > before)
        assertThrows(AppleMusicAuthenticationException::class.java) { rig.connection.account.requireCredential() }
    }

    private fun begin(rig: AppleMusicFixtureRig): AppleMusicConnection.LoginAttempt {
        var result: AppleMusicConnection.LoginAttempt? = null
        assertTrue(rig.connection.prepareLogin { result = it })
        return checkNotNull(result)
    }

    private fun cookies(token: String, storefront: String = "cn", expiry: Long = 0L): List<AppleMusicConnection.Cookie> = buildList {
        add(AppleMusicConnection.Cookie("media-user-token", token, ".music.apple.com", expiresAtMs = expiry))
        if (storefront.isNotEmpty()) add(AppleMusicConnection.Cookie("itua", storefront, ".apple.com"))
    }

    /** Real AES-GCM wire storage test; only the KeyStore key retrieval is substituted on the JVM. */
    private class FixtureGcmCipher : AppleMusicCredentialCipher {
        private val key = SecretKeySpec(ByteArray(32) { (it + 1).toByte() }, "AES")
        override fun encrypt(cleartext: ByteArray): ByteArray {
            val iv = ByteArray(12).also { SecureRandom().nextBytes(it) }
            val cipher = Cipher.getInstance("AES/GCM/NoPadding")
            cipher.init(Cipher.ENCRYPT_MODE, key, GCMParameterSpec(128, iv))
            return iv + cipher.doFinal(cleartext)
        }
        override fun decrypt(envelope: ByteArray): ByteArray {
            val cipher = Cipher.getInstance("AES/GCM/NoPadding")
            cipher.init(Cipher.DECRYPT_MODE, key, GCMParameterSpec(128, envelope.copyOfRange(0, 12)))
            return cipher.doFinal(envelope, 12, envelope.size - 12)
        }
    }
}
