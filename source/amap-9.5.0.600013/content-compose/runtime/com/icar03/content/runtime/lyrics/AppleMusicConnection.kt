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

    /** Clear previous Apple login cookies before the caller opens [loginUrl]. */
    fun prepareLogin(onReady: (LoginAttempt) -> Unit): Boolean = account.prepareLogin(onReady)

    /** Missing itua gets eight seconds of grace, then the backend asks /v1/me/storefront. */
    fun acceptCookies(attempt: LoginAttempt, pageUrl: String, cookies: List<Cookie>): CookieAcceptance =
        account.acceptCookies(attempt, pageUrl, cookies)

    /** CookieManager does not expose expiry; these cookies use the 180-day upper bound. */
    fun pollOfficialLoginCookies(attempt: LoginAttempt): CookieAcceptance =
        acceptCookies(attempt, LOGIN_URL, account.websiteCookies.read(LOGIN_URL))

    fun cancelLogin(attempt: LoginAttempt) = account.cancelLogin(attempt)
    fun disconnect(onComplete: (Boolean) -> Unit = {}) = account.disconnect(onComplete)

    companion object {
        const val LOGIN_URL = "https://music.apple.com/login"
        internal const val TOKEN_LIFETIME_MS = 180L * 24L * 60L * 60L * 1_000L
        internal const val RENEW_NOTICE_MS = 14L * 24L * 60L * 60L * 1_000L
        internal const val STOREFRONT_GRACE_MS = 8_000L
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

    fun prepareLogin(onReady: (AppleMusicConnection.LoginAttempt) -> Unit): Boolean {
        val attempt = synchronized(lock) {
            if (loginAttempt != null) return false
            AppleMusicConnection.LoginAttempt(UUID.randomUUID().toString(), credential?.token.orEmpty()).also {
                loginAttempt = it
                loginReady = false
                observedToken = ""
                tokenFirstSeenAtMs = 0L
                refresh()
            }
        }
        try {
            websiteCookies.clear { success ->
                val ready = synchronized(lock) {
                    if (loginAttempt !== attempt) return@clear
                    if (!success) {
                        loginAttempt = null
                        refresh()
                        false
                    } else {
                        loginReady = true
                        true
                    }
                }
                if (ready) onReady(attempt)
            }
        } catch (_: Exception) {
            cancelLogin(attempt)
            return false
        }
        return true
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
        if (token.length > MAX_TOKEN_LENGTH || token.any { it == '\r' || it == '\n' || it == '\u0000' }) {
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
        val updated = AppleMusicCredential(token, storefront, now, expiry)
        try {
            credentialStore.save(updated)
        } catch (_: Exception) {
            return AppleMusicConnection.CookieAcceptance.STORAGE_FAILED
        }
        credential = updated
        loginAttempt = null
        loginReady = false
        observedToken = ""
        tokenFirstSeenAtMs = 0L
        refresh()
        AppleMusicConnection.CookieAcceptance.ACCEPTED
    }

    fun cancelLogin(attempt: AppleMusicConnection.LoginAttempt) = synchronized(lock) {
        if (loginAttempt !== attempt) return@synchronized
        loginAttempt = null
        loginReady = false
        observedToken = ""
        tokenFirstSeenAtMs = 0L
        refresh()
    }

    fun disconnect(onComplete: (Boolean) -> Unit) {
        val removed = synchronized(lock) {
            try { credentialStore.clear() } catch (_: Exception) { return@synchronized false }
            credential = null
            loginAttempt = null
            loginReady = false
            observedToken = ""
            tokenFirstSeenAtMs = 0L
            refresh()
            true
        }
        if (!removed) { onComplete(false); return }
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

    private companion object {
        const val MAX_TOKEN_LENGTH = 32_768
    }
}

internal interface AppleMusicWebsiteCookies {
    fun read(url: String): List<AppleMusicConnection.Cookie>
    fun clear(onComplete: (Boolean) -> Unit)
}

/** Target official login hosts only; never remove unrelated WebView cookies. */
internal class AppleMusicAndroidWebsiteCookies : AppleMusicWebsiteCookies {
    override fun read(url: String): List<AppleMusicConnection.Cookie> {
        val origin = officialMusicUri(url) ?: return emptyList()
        return CookieManager.getInstance().getCookie(url).orEmpty().split(';').mapNotNull { raw ->
            val pieces = raw.trim().split('=', limit = 2)
            if (pieces.size != 2 || pieces[0].isBlank()) null else
                AppleMusicConnection.Cookie(pieces[0], pieces[1], origin.host)
        }
    }

    override fun clear(onComplete: (Boolean) -> Unit) {
        val manager = CookieManager.getInstance()
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
