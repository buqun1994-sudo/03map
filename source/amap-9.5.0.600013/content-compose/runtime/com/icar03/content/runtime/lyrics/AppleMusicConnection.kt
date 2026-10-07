package com.icar03.content.runtime.lyrics

import android.content.Context
import android.os.Handler
import android.os.Looper
import android.webkit.CookieManager
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import java.net.URI
import java.util.Locale
import java.util.UUID
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger

private const val COOKIE_CLEAR_TIMEOUT_MS = 2500L

/** Settings facade for the official embedded music.apple.com login; contains no login UI. */
class AppleMusicConnection internal constructor(internal val account: AppleMusicAccount) {
    constructor(context: Context) : this(checkNotNull(AppleMusicAuthBroker.get(context).connection).account)

    enum class Status { DISCONNECTED, CONNECTED, EXPIRED, REJECTED }

    /** Status contains account metadata only, never a cookie or bearer value. */
    data class State(
        val status: Status = Status.DISCONNECTED,
        val storefront: String = "",
        val savedAtMs: Long = 0L,
        val expiresAtMs: Long = 0L,
        val rejectedAtMs: Long = 0L,
        val needsRenewal: Boolean = false,
        val isConnecting: Boolean = false
    )

    /** Opaque generation ties asynchronous callbacks to one particular login attempt. */
    class LoginAttempt internal constructor(internal val id: String, internal val previousToken: String) {
        val loginUrl: String get() = LOGIN_URL
        override fun toString(): String = "AppleMusicLoginAttempt"
    }

    enum class PreparationFailure { COOKIE_CLEAR_FAILED, CANCELLED }

    sealed class PreparationResult(open val attempt: LoginAttempt) {
        class Ready(override val attempt: LoginAttempt) : PreparationResult(attempt)
        class Failed(override val attempt: LoginAttempt, val reason: PreparationFailure) : PreparationResult(attempt)
    }

    /** A domain-bearing official cookie, rather than an arbitrary user token entry. */
    class Cookie(
        val name: String,
        internal val value: String,
        val domain: String,
        val path: String = "/",
        val expiresAtMs: Long = 0L
    ) {
        override fun toString(): String = "AppleMusicCookie(name=$name, domain=$domain)"
    }

    enum class CookieAcceptance {
        ACCEPTED, WAITING_FOR_TOKEN, WAITING_FOR_STOREFRONT, INVALID_ORIGIN,
        STALE_ATTEMPT, STALE_COOKIE, EXPIRED_COOKIE, STORAGE_FAILED
    }

    val loginUrl: String get() = LOGIN_URL
    val state: StateFlow<State> get() = account.state
    val revision: Long get() = account.revision
    fun refresh(): State = account.refresh()

    /** Compatibility facade: true means preparation was accepted, rather than completed. */
    fun prepareLogin(onReady: (LoginAttempt) -> Unit): Boolean = prepareLoginAttempt { result ->
        if (result is PreparationResult.Ready) onReady(result.attempt)
    } != null

    /** Returns ownership immediately; every accepted preparation completes exactly once. */
    fun prepareLoginAttempt(onResult: (PreparationResult) -> Unit): LoginAttempt? = account.prepareLoginAttempt(onResult)

    /** Missing itua gets eight seconds of grace, then the backend asks /v1/me/storefront. */
    fun acceptCookies(attempt: LoginAttempt, pageUrl: String, cookies: List<Cookie>): CookieAcceptance =
        account.acceptCookies(attempt, pageUrl, cookies)

    /** Official WOA results are accepted only at this attempt's exact nonce-bearing callback. */
    fun acceptAuthorizationCallback(attempt: LoginAttempt, value: String): CookieAcceptance {
        val result = AppleMusicWebAuthorization.parseCallback(attempt, value)
            ?: return CookieAcceptance.INVALID_ORIGIN
        return account.acceptAuthorizedToken(attempt, result.musicUserToken)
    }

    /** CookieManager does not expose expiry; these cookies use the 180-day upper bound. */
    fun pollOfficialLoginCookies(attempt: LoginAttempt, pageUrl: String = LOGIN_URL): CookieAcceptance {
        if (officialMusicUri(pageUrl) == null) return CookieAcceptance.INVALID_ORIGIN
        var pending = CookieAcceptance.WAITING_FOR_TOKEN
        for (url in listOf(pageUrl, LOGIN_URL, "https://music.apple.com/").distinct()) {
            when (val result = acceptCookies(attempt, url, account.websiteCookies.read(url))) {
                CookieAcceptance.ACCEPTED, CookieAcceptance.STORAGE_FAILED,
                CookieAcceptance.STALE_ATTEMPT, CookieAcceptance.WAITING_FOR_STOREFRONT -> return result
                CookieAcceptance.WAITING_FOR_TOKEN -> Unit
                else -> pending = result
            }
        }
        return pending
    }

    fun cancelLogin(attempt: LoginAttempt) = account.cancelLogin(attempt)
    fun disconnect(onComplete: (Boolean) -> Unit = {}) = account.disconnect(onComplete)

    companion object {
        const val LOGIN_URL = "https://music.apple.com/login"
        internal const val TOKEN_LIFETIME_MS = 180L * 24L * 60L * 60L * 1_000L
        internal const val RENEW_NOTICE_MS = 14L * 24L * 60L * 60L * 1_000L
        internal const val STOREFRONT_GRACE_MS = 8_000L
        internal const val MAX_TOKEN_LENGTH = 32_768
    }
}

internal fun interface AppleMusicWallClock { fun nowMs(): Long }
internal object AppleMusicSystemWallClock : AppleMusicWallClock {
    override fun nowMs(): Long = System.currentTimeMillis()
}

/** Immutable secret snapshot: no generated token-bearing data-class toString. */
internal class AppleMusicCredential(
    val token: String,
    val storefront: String,
    val savedAtMs: Long,
    val expiresAtMs: Long,
    val rejectedAtMs: Long = 0L,
    val generation: String = UUID.randomUUID().toString()
) {
    fun status(nowMs: Long): AppleMusicConnection.Status = when {
        rejectedAtMs > 0L -> AppleMusicConnection.Status.REJECTED
        nowMs >= expiresAtMs -> AppleMusicConnection.Status.EXPIRED
        else -> AppleMusicConnection.Status.CONNECTED
    }
    fun withStorefront(value: String): AppleMusicCredential = AppleMusicCredential(
        token, value, savedAtMs, expiresAtMs, rejectedAtMs, generation
    )
    fun rejected(atMs: Long): AppleMusicCredential = AppleMusicCredential(
        token, storefront, savedAtMs, expiresAtMs, atMs, generation
    )
    override fun toString(): String = "AppleMusicCredential(redacted)"
}

internal class AppleMusicAccount(
    private val credentialStore: AppleMusicCredentialStore,
    val developerTokens: AppleMusicDeveloperTokenStore = AppleMusicMemoryDeveloperTokenStore(),
    val websiteCookies: AppleMusicWebsiteCookies = AppleMusicAndroidWebsiteCookies(),
    private val clock: AppleMusicWallClock = AppleMusicSystemWallClock
) {
    private val lock = Any()
    private var revisionValue = 0L
    val revision: Long get() = synchronized(lock) { refresh(); revisionValue }
    private var credential: AppleMusicCredential? = runCatching { credentialStore.load() }.getOrNull()
    private var loginAttempt: AppleMusicConnection.LoginAttempt? = null
    private var loginReady = false
    private var preparationCallback: ((AppleMusicConnection.PreparationResult) -> Unit)? = null
    private var observedToken = ""
    private var tokenFirstSeenAtMs = 0L
    private val mutableState = MutableStateFlow(describe())
    val state: StateFlow<AppleMusicConnection.State> = mutableState.asStateFlow()

    fun refresh(): AppleMusicConnection.State = synchronized(lock) {
        describe().also {
            if (it != mutableState.value) revisionValue++
            mutableState.value = it
        }
    }

    fun requireCredential(): AppleMusicCredential = synchronized(lock) {
        refresh()
        val value = credential ?: throw AppleMusicAuthenticationException(LyricsFailureReason.AUTH_REQUIRED)
        if (value.status(clock.nowMs()) != AppleMusicConnection.Status.CONNECTED) {
            throw AppleMusicAuthenticationException(LyricsFailureReason.AUTH_REJECTED)
        }
        value
    }

    fun isCurrent(value: AppleMusicCredential): Boolean = synchronized(lock) {
        credential?.generation == value.generation &&
            credential?.status(clock.nowMs()) == AppleMusicConnection.Status.CONNECTED
    }

    /** Old responses cannot change the storefront or rejection flag of a fresh login. */
    fun saveStorefront(expected: AppleMusicCredential, storefront: String): Boolean = synchronized(lock) {
        val value = credential?.takeIf { it.generation == expected.generation } ?: return false
        if (value.status(clock.nowMs()) != AppleMusicConnection.Status.CONNECTED) return false
        if (value.storefront == storefront) return true
        if (value.storefront.isNotEmpty()) return false
        val updated = value.withStorefront(storefront)
        runCatching { credentialStore.save(updated) }
        credential = updated
        refresh()
        true
    }

    fun markRejected(expected: AppleMusicCredential) = synchronized(lock) {
        val value = credential?.takeIf { it.generation == expected.generation } ?: return@synchronized
        if (value.rejectedAtMs != 0L) return@synchronized
        val updated = value.rejected(clock.nowMs().coerceAtLeast(1L))
        runCatching { credentialStore.save(updated) }
        credential = updated
        refresh()
    }

    fun prepareLoginAttempt(
        onResult: (AppleMusicConnection.PreparationResult) -> Unit,
    ): AppleMusicConnection.LoginAttempt? {
        val attempt = synchronized(lock) {
            if (loginAttempt != null) return null
            AppleMusicConnection.LoginAttempt(UUID.randomUUID().toString(), credential?.token.orEmpty()).also {
                loginAttempt = it
                loginReady = false
                preparationCallback = onResult
                observedToken = ""
                tokenFirstSeenAtMs = 0L
                refresh()
            }
        }
        try {
            websiteCookies.clear { success -> completePreparation(attempt, success) }
        } catch (_: Exception) {
            completePreparation(attempt, false)
        }
        return attempt
    }

    private fun completePreparation(attempt: AppleMusicConnection.LoginAttempt, success: Boolean) {
        val completion = synchronized(lock) {
            if (loginAttempt !== attempt) return
            val callback = preparationCallback ?: return
            preparationCallback = null
            val result = if (success) {
                loginReady = true
                AppleMusicConnection.PreparationResult.Ready(attempt)
            } else {
                clearLoginAttempt()
                refresh()
                AppleMusicConnection.PreparationResult.Failed(attempt, AppleMusicConnection.PreparationFailure.COOKIE_CLEAR_FAILED)
            }
            callback to result
        }
        completion.first(completion.second)
    }

    private fun clearLoginAttempt() {
        loginAttempt = null
        loginReady = false
        preparationCallback = null
        observedToken = ""
        tokenFirstSeenAtMs = 0L
    }

    fun acceptCookies(
        attempt: AppleMusicConnection.LoginAttempt,
        pageUrl: String,
        cookies: List<AppleMusicConnection.Cookie>
    ): AppleMusicConnection.CookieAcceptance = synchronized(lock) {
        val origin = officialMusicUri(pageUrl) ?: return AppleMusicConnection.CookieAcceptance.INVALID_ORIGIN
        if (loginAttempt !== attempt || !loginReady) return AppleMusicConnection.CookieAcceptance.STALE_ATTEMPT
        val now = clock.nowMs()
        val applicable = cookies.filter { cookie -> officialMusicCookie(cookie, origin) }
        val tokenCookie = applicable.firstOrNull { it.name == "media-user-token" && it.value.isNotBlank() }
            ?: return AppleMusicConnection.CookieAcceptance.WAITING_FOR_TOKEN
        val token = tokenCookie.value.trim()
        if (!validAppleMusicUserToken(tokenCookie.value) || !validAppleMusicUserToken(token)) {
            return AppleMusicConnection.CookieAcceptance.INVALID_ORIGIN
        }
        if (token == attempt.previousToken) return AppleMusicConnection.CookieAcceptance.STALE_COOKIE
        if (tokenCookie.expiresAtMs > 0L && tokenCookie.expiresAtMs <= now) {
            return AppleMusicConnection.CookieAcceptance.EXPIRED_COOKIE
        }
        val storefront = applicable.firstOrNull { it.name == "itua" }
            ?.value?.let(::appleMusicStorefront).orEmpty()
        if (storefront.isEmpty()) {
            if (observedToken != token) {
                observedToken = token
                tokenFirstSeenAtMs = now
                return AppleMusicConnection.CookieAcceptance.WAITING_FOR_STOREFRONT
            }
            if (now - tokenFirstSeenAtMs < AppleMusicConnection.STOREFRONT_GRACE_MS) {
                return AppleMusicConnection.CookieAcceptance.WAITING_FOR_STOREFRONT
            }
        }
        val expiry = minOf(
            now + AppleMusicConnection.TOKEN_LIFETIME_MS,
            tokenCookie.expiresAtMs.takeIf { it > 0L } ?: Long.MAX_VALUE
        )
        saveLoginCredential(attempt, token, storefront, now, expiry)
    }

    /** WOA has completed authorization; a missing storefront is resolved by the existing broker. */
    fun acceptAuthorizedToken(
        attempt: AppleMusicConnection.LoginAttempt, token: String,
    ): AppleMusicConnection.CookieAcceptance = synchronized(lock) {
        val now = clock.nowMs()
        saveLoginCredential(attempt, token, "", now, now + AppleMusicConnection.TOKEN_LIFETIME_MS)
    }

    /** Both callers hold the account lock; storage failure leaves the previous account untouched. */
    private fun saveLoginCredential(
        attempt: AppleMusicConnection.LoginAttempt, token: String, storefront: String, now: Long, expiry: Long,
    ): AppleMusicConnection.CookieAcceptance {
        if (loginAttempt !== attempt || !loginReady) return AppleMusicConnection.CookieAcceptance.STALE_ATTEMPT
        if (!validAppleMusicUserToken(token)) return AppleMusicConnection.CookieAcceptance.INVALID_ORIGIN
        if (token == attempt.previousToken) return AppleMusicConnection.CookieAcceptance.STALE_COOKIE
        if (expiry <= now) return AppleMusicConnection.CookieAcceptance.EXPIRED_COOKIE
        val updated = AppleMusicCredential(token, storefront, now,
            minOf(expiry, now + AppleMusicConnection.TOKEN_LIFETIME_MS))
        try {
            credentialStore.save(updated)
        } catch (_: Exception) {
            return AppleMusicConnection.CookieAcceptance.STORAGE_FAILED
        }
        credential = updated
        clearLoginAttempt()
        refresh()
        return AppleMusicConnection.CookieAcceptance.ACCEPTED
    }

    fun cancelLogin(attempt: AppleMusicConnection.LoginAttempt) {
        val callback = synchronized(lock) {
            if (loginAttempt !== attempt) return
            val pending = preparationCallback
            clearLoginAttempt()
            refresh()
            pending
        }
        callback?.invoke(AppleMusicConnection.PreparationResult.Failed(attempt, AppleMusicConnection.PreparationFailure.CANCELLED))
    }

    fun disconnect(onComplete: (Boolean) -> Unit) {
        var cancelled: Pair<AppleMusicConnection.LoginAttempt, (AppleMusicConnection.PreparationResult) -> Unit>? = null
        val removed = synchronized(lock) {
            try { credentialStore.clear() } catch (_: Exception) { return@synchronized false }
            credential = null
            loginAttempt?.let { attempt -> preparationCallback?.let { cancelled = attempt to it } }
            clearLoginAttempt()
            refresh()
            true
        }
        if (!removed) { onComplete(false); return }
        cancelled?.let { (attempt, callback) ->
            callback(AppleMusicConnection.PreparationResult.Failed(attempt, AppleMusicConnection.PreparationFailure.CANCELLED))
        }
        try { websiteCookies.clear(onComplete) } catch (_: Exception) { onComplete(false) }
    }

    private fun describe(): AppleMusicConnection.State {
        val value = credential ?: return AppleMusicConnection.State(isConnecting = loginAttempt != null)
        val now = clock.nowMs()
        return AppleMusicConnection.State(
            status = value.status(now), storefront = value.storefront, savedAtMs = value.savedAtMs,
            expiresAtMs = value.expiresAtMs, rejectedAtMs = value.rejectedAtMs,
            needsRenewal = value.status(now) != AppleMusicConnection.Status.CONNECTED ||
                value.expiresAtMs - now < AppleMusicConnection.RENEW_NOTICE_MS,
            isConnecting = loginAttempt != null
        )
    }

}

internal interface AppleMusicWebsiteCookies {
    fun read(url: String): List<AppleMusicConnection.Cookie>
    fun clear(onComplete: (Boolean) -> Unit)
}

/** Target official login hosts only; never remove unrelated WebView cookies. */
internal class AppleMusicAndroidWebsiteCookies(
    private val cookieManager: () -> CookieManager = CookieManager::getInstance,
) : AppleMusicWebsiteCookies {
    override fun read(url: String): List<AppleMusicConnection.Cookie> {
        val origin = officialMusicUri(url) ?: return emptyList()
        return cookieManager().getCookie(url).orEmpty().split(';').mapNotNull { raw ->
            val pieces = raw.trim().split('=', limit = 2)
            if (pieces.size != 2 || pieces[0].isBlank()) null else
                AppleMusicConnection.Cookie(pieces[0], pieces[1], origin.host)
        }
    }

    override fun clear(onComplete: (Boolean) -> Unit) {
        val manager = cookieManager()
        val deletions = linkedSetOf<Pair<String, String>>()
        for (url in LOGIN_COOKIE_URLS) {
            val host = URI(url).host
            val names = manager.getCookie(url).orEmpty().split(';').map { it.substringBefore('=').trim() }
                .filter { COOKIE_NAME.matches(it) }.toSet() + setOf("media-user-token", "itua")
            val domains = listOf("", host, "apple.com", "music.apple.com").distinct()
                .filter { it.isEmpty() || host == it || host.endsWith(".$it") }
            for (name in names) for (domain in domains) for (path in listOf("/", "/login", "/auth")) {
                val expired = "$name=; Max-Age=0; Expires=Thu, 01 Jan 1970 00:00:00 GMT; Path=$path; Secure" +
                    if (domain.isEmpty()) "" else "; Domain=$domain"
                deletions += url to expired
            }
        }
        val remaining = AtomicInteger(deletions.size)
        val completed = AtomicBoolean(false)
        val handler = Handler(Looper.getMainLooper())
        lateinit var timeout: Runnable
        fun finish(clean: Boolean) {
            if (!completed.compareAndSet(false, true)) return
            handler.removeCallbacks(timeout)
            runCatching { manager.flush() }
            onComplete(clean)
        }
        timeout = Runnable {
            // A few Android 9 WebView providers never invoke setCookie callbacks.
            // Opening the page is still safe: acceptCookies rejects the prior token.
            finish(true)
        }
        handler.postDelayed(timeout, COOKIE_CLEAR_TIMEOUT_MS)
        manager.setAcceptCookie(true)
        if (deletions.isEmpty()) {
            finish(true)
            return
        }
        deletions.forEach { (url, cookie) ->
            manager.setCookie(url, cookie) {
                if (remaining.decrementAndGet() == 0) {
                    val oldMusicCookie = manager.getCookie(AppleMusicConnection.LOGIN_URL).orEmpty()
                    val clean = oldMusicCookie.split(';').none {
                        it.trim().startsWith("media-user-token=") && it.substringAfter('=').isNotBlank()
                    }
                    finish(clean)
                }
            }
        }
    }

    private companion object {
        val COOKIE_NAME = Regex("[!#$%&'*+.^_`|~0-9A-Za-z-]+")
        val LOGIN_COOKIE_URLS = listOf(
            "https://music.apple.com/", "https://music.apple.com/login", "https://apple.com/",
            "https://www.apple.com/", "https://idmsa.apple.com/", "https://idmsa.apple.com/appleauth/auth/",
            "https://appleid.apple.com/", "https://account.apple.com/", "https://buy.itunes.apple.com/"
        )
    }
}

private fun officialMusicUri(value: String): URI? = runCatching {
    URI(value).takeIf {
        it.scheme.equals("https", true) && it.host.equals("music.apple.com", true) &&
            it.userInfo == null && it.port in listOf(-1, 443)
    }
}.getOrNull()

private fun officialMusicCookie(cookie: AppleMusicConnection.Cookie, origin: URI): Boolean {
    val domain = cookie.domain.lowercase(Locale.ROOT).removePrefix(".")
    if (domain != "music.apple.com" && domain != "apple.com") return false
    val path = cookie.path.ifEmpty { "/" }
    val requestPath = origin.path.ifEmpty { "/" }
    return path.startsWith('/') && (requestPath == path || requestPath.startsWith(
        if (path.endsWith('/')) path else "$path/"
    ))
}

internal fun appleMusicStorefront(value: String): String = value.trim().lowercase(Locale.ROOT)
    .takeIf { Regex("[a-z]{2}").matches(it) }.orEmpty()
