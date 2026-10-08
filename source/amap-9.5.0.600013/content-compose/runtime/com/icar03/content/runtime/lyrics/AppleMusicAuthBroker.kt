package com.icar03.content.runtime.lyrics

import android.content.Context
import android.util.Base64
import org.json.JSONObject
import org.json.JSONTokener
import java.net.URI
import java.net.URLEncoder
import java.util.concurrent.CancellationException
import java.util.concurrent.TimeUnit
import java.util.concurrent.locks.ReentrantLock

internal class AppleMusicAuthenticationException(reason: LyricsFailureReason) : LyricsSourceException(
    reason, false, if (reason == LyricsFailureReason.AUTH_REQUIRED) "Apple Music login required" else "Apple Music login rejected"
)

/** Session values are immutable and intentionally cannot render credentials in a generated string. */
internal class AppleMusicSession(val credential: AppleMusicCredential, val developer: AppleMusicDeveloperToken) {
    val storefront: String get() = credential.storefront
    override fun toString(): String = "AppleMusicSession(redacted)"
}

/**
 * One application account and developer-token single flight. Music web tokens are extracted from
 * Apple's official JS bundles and verified with a developer-only catalog request, as in Lyrimuse;
 * no developer membership, private signing key, refresh token, or app-owned backend is involved.
 */
internal class AppleMusicAuthBroker(
    val connection: AppleMusicConnection? = null,
    private val transport: LyricsTransport = AppleMusicTransport(),
    private val clock: AppleMusicWallClock = AppleMusicSystemWallClock,
    private val tokenStore: AppleMusicDeveloperTokenStore = connection?.account?.developerTokens
        ?: AppleMusicMemoryDeveloperTokenStore()
) {
    private val developerLock = ReentrantLock()
    private var developer: AppleMusicDeveloperToken? = null
    private var failedAtMs = 0L

    val isAvailable: Boolean get() = connection?.refresh()?.status == AppleMusicConnection.Status.CONNECTED
    val revision: Long get() = connection?.revision ?: 0L

    fun session(deadlineNanos: Long, cancellation: LyricsCancellationSignal): AppleMusicSession {
        cancellation.throwIfCancelled()
        val account = connection?.account ?: throw AppleMusicAuthenticationException(LyricsFailureReason.AUTH_REQUIRED)
        // This gate precedes developer-token bootstrap, so an unconnected source makes zero requests.
        var credential = account.requireCredential()
        appleMusicCheckBudget(deadlineNanos, cancellation)
        val token = ensureDeveloper(deadlineNanos, cancellation)
        requireCurrent(credential)
        if (credential.storefront.isBlank()) {
            val snapshot = AppleMusicSession(credential, token)
            val root = appleMusicJson(apiGet(ME_STOREFRONT_URL, snapshot, true, deadlineNanos, cancellation), cancellation)
            val data = root.optJSONArray("data") ?: appleMusicSchemaError("storefront data")
            val storefront = appleMusicStorefront(data.optJSONObject(0)?.contentString("id").orEmpty())
            if (storefront.isBlank()) appleMusicSchemaError("account storefront")
            if (!account.saveStorefront(credential, storefront)) {
                throw AppleMusicAuthenticationException(LyricsFailureReason.AUTH_REQUIRED)
            }
            credential = account.requireCredential()
        }
        return AppleMusicSession(credential, token)
    }

    fun requireCurrent(value: AppleMusicCredential) {
        val account = connection?.account ?: throw AppleMusicAuthenticationException(LyricsFailureReason.AUTH_REQUIRED)
        if (!account.isCurrent(value)) {
            // New credentials remain untouched by old in-flight catalog and lyrics responses.
            val current = account.requireCredential()
            if (current.generation != value.generation) {
                throw AppleMusicAuthenticationException(LyricsFailureReason.AUTH_REQUIRED)
            }
            throw AppleMusicAuthenticationException(LyricsFailureReason.AUTH_REJECTED)
        }
    }

    fun sameGeneration(generation: String): Boolean = runCatching {
        connection?.account?.requireCredential()?.generation == generation
    }.getOrDefault(false)

    fun catalogGet(url: String, session: AppleMusicSession, deadline: Long, cancellation: LyricsCancellationSignal): ByteArray {
        return try {
            apiGet(url, session, false, deadline, cancellation)
        } catch (error: LyricsHttpStatusException) {
            if (error.statusCode != 401 && error.statusCode != 403) throw error
            invalidateDeveloper(session.developer.token, deadline, cancellation)
            requireCurrent(session.credential)
            val replacement = ensureDeveloper(deadline, cancellation)
            if (replacement.token == session.developer.token) {
                throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Apple Music developer bearer rejected")
            }
            // Only the developer-only request retries; never rebootstrap on a rejected user token.
            apiGet(url, AppleMusicSession(session.credential, replacement), false, deadline, cancellation)
        }
    }

    fun lyricsGet(url: String, session: AppleMusicSession, deadline: Long, cancellation: LyricsCancellationSignal): ByteArray? =
        try {
            apiGet(url, session, true, deadline, cancellation)
        } catch (error: LyricsHttpStatusException) {
            if (error.statusCode == 404) null else throw error
        }

    private fun apiGet(
        url: String, session: AppleMusicSession, userToken: Boolean,
        deadline: Long, cancellation: LyricsCancellationSignal
    ): ByteArray {
        val parsed = URI(url)
        if (parsed.scheme != "https" || parsed.host != "amp-api.music.apple.com" || parsed.userInfo != null ||
            parsed.port !in listOf(-1, 443) || !parsed.path.startsWith("/v1/")) {
            throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Invalid Apple Music API origin")
        }
        appleMusicCheckBudget(deadline, cancellation)
        requireCurrent(session.credential)
        val headers = appleMusicHeaders(session.developer.token, if (userToken) session.credential.token else "")
        val bytes = try {
            transport.getBytes(url, headers, deadline, cancellation)
        } catch (error: LyricsHttpStatusException) {
            cancellation.throwIfCancelled()
            if (userToken && (error.statusCode == 401 || error.statusCode == 403)) {
                connection?.account?.markRejected(session.credential)
                throw AppleMusicAuthenticationException(LyricsFailureReason.AUTH_REJECTED)
            }
            throw error
        }
        appleMusicCheckBudget(deadline, cancellation)
        requireCurrent(session.credential)
        if (bytes.size > MAX_API_BYTES) appleMusicSchemaError("bounded API response")
        return bytes
    }

    /** Login is an explicit retry, but only the account's current, cookie-cleared attempt owns it. */
    fun prepareWebAuthorization(attempt: AppleMusicConnection.LoginAttempt, deadline: Long,
        cancellation: LyricsCancellationSignal): AppleMusicWebAuthorization.Configuration {
        fun requireAttempt() {
            appleMusicCheckBudget(deadline, cancellation)
            if (connection?.account?.isReadyLoginAttempt(attempt) != true) {
                throw CancellationException("Apple Music login attempt no longer owns authorization")
            }
        }
        requireAttempt()
        val token = developerToken(deadline, cancellation, retryFailedFetch = true, beforeFetch = ::requireAttempt)
        requireAttempt()
        return AppleMusicWebAuthorization.configuration(attempt, token.token)
    }

    fun ensureDeveloper(deadline: Long, cancellation: LyricsCancellationSignal): AppleMusicDeveloperToken =
        developerToken(deadline, cancellation)

    private fun developerToken(deadline: Long, cancellation: LyricsCancellationSignal,
        retryFailedFetch: Boolean = false, beforeFetch: () -> Unit = {}): AppleMusicDeveloperToken =
        withDeveloperLock(deadline, cancellation) {
            beforeFetch()
            usable(developer)?.let { return@withDeveloperLock it }
            usable(tokenStore.load())?.let { developer = it; return@withDeveloperLock it }
            if (!retryFailedFetch && failedAtMs > 0L && clock.nowMs() - failedAtMs < FETCH_COOLDOWN_MS) {
                throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Apple Music web bearer temporarily unavailable")
            }
            try {
                val fetched = fetchDeveloper(deadline, cancellation)
                developer = fetched
                failedAtMs = 0L
                runCatching { tokenStore.save(fetched) }
                fetched
            } catch (error: CancellationException) {
                throw error
            } catch (error: LyricsSourceException) {
                cancellation.throwIfCancelled()
                if (error.reason != LyricsFailureReason.DEADLINE) failedAtMs = clock.nowMs()
                throw error
            }
        }

    private fun usable(value: AppleMusicDeveloperToken?): AppleMusicDeveloperToken? {
        value ?: return null
        val expiry = AppleMusicWebTokenParser.jwtExpiryMs(value.token)
        return value.takeIf { expiry == it.expiresAtMs && expiry > clock.nowMs() + RENEW_MARGIN_MS }
    }

    private fun invalidateDeveloper(expected: String, deadline: Long, cancellation: LyricsCancellationSignal) =
        withDeveloperLock(deadline, cancellation) {
            if (developer?.token == expected) developer = null
            tokenStore.clear(expected)
            failedAtMs = 0L
        }

    private fun fetchDeveloper(deadline: Long, cancellation: LyricsCancellationSignal): AppleMusicDeveloperToken {
        fun web(url: String): String {
            appleMusicCheckBudget(deadline, cancellation)
            val bytes = transport.getBytes(url, mapOf("User-Agent" to "Mozilla/5.0"), deadline, cancellation)
            appleMusicCheckBudget(deadline, cancellation)
            if (bytes.size > MAX_WEB_BYTES) appleMusicSchemaError("bounded official web bundle")
            return bytes.toString(Charsets.UTF_8)
        }
        val assets = AppleMusicWebTokenParser.jsAssets(web(BROWSE_URL))
        if (assets.isEmpty()) appleMusicSchemaError("official JS assets")
        val tested = hashSetOf<String>()
        for (asset in assets.take(MAX_ASSETS)) {
            appleMusicCheckBudget(deadline, cancellation)
            val js = try { web(WEB_ORIGIN + asset) } catch (error: LyricsSourceException) {
                if (error.reason == LyricsFailureReason.DEADLINE) throw error
                continue
            }
            for (candidate in AppleMusicWebTokenParser.extractJwts(js, clock.nowMs() + RENEW_MARGIN_MS)) {
                cancellation.throwIfCancelled()
                if (!tested.add(candidate.token)) continue
                val valid = try {
                    val payload = transport.getBytes(PROBE_URL, appleMusicHeaders(candidate.token), deadline, cancellation)
                    appleMusicCheckBudget(deadline, cancellation)
                    if (payload.size > MAX_API_BYTES) appleMusicSchemaError("bounded developer verification")
                    appleMusicJson(payload, cancellation).optJSONObject("results")?.optJSONObject("songs")?.optJSONArray("data") != null
                } catch (error: LyricsHttpStatusException) {
                    if (error.statusCode == 401 || error.statusCode == 403) false else throw error
                }
                if (valid) return candidate
            }
        }
        appleMusicSchemaError("working official developer bearer")
    }

    private fun <T> withDeveloperLock(deadline: Long, cancellation: LyricsCancellationSignal, work: () -> T): T {
        var acquired = false
        try {
            while (!acquired) {
                appleMusicCheckBudget(deadline, cancellation)
                acquired = developerLock.tryLock(minOf(50L, TimeUnit.NANOSECONDS.toMillis(deadline - System.nanoTime()).coerceAtLeast(1L)), TimeUnit.MILLISECONDS)
            }
            appleMusicCheckBudget(deadline, cancellation)
            return work()
        } catch (_: InterruptedException) {
            Thread.currentThread().interrupt()
            throw CancellationException("Apple Music request interrupted")
        } finally {
            if (acquired) developerLock.unlock()
        }
    }

    companion object {
        const val WEB_ORIGIN = "https://music.apple.com"
        const val CATALOG_BASE = "https://amp-api.music.apple.com/v1/catalog/"
        const val ME_STOREFRONT_URL = "https://amp-api.music.apple.com/v1/me/storefront"
        const val BROWSE_URL = "https://music.apple.com/us/browse"
        // US belongs only to the public developer-only probe, never to account region fallback.
        const val PROBE_URL = "https://amp-api.music.apple.com/v1/catalog/us/search?types=songs&limit=1&term=a"
        const val RENEW_MARGIN_MS = 24L * 60L * 60L * 1_000L
        const val FETCH_COOLDOWN_MS = 30L * 60L * 1_000L
        const val MAX_API_BYTES = 2 * 1_024 * 1_024
        const val MAX_WEB_BYTES = 4 * 1_024 * 1_024
        private const val MAX_ASSETS = 4
        @Volatile private var shared: AppleMusicAuthBroker? = null

        fun get(context: Context): AppleMusicAuthBroker = shared ?: synchronized(this) {
            shared ?: run {
                val app = context.applicationContext ?: context
                val account = AppleMusicAccount(AppleMusicEncryptedCredentialStore(app), AppleMusicPrivateDeveloperTokenStore(app))
                AppleMusicAuthBroker(AppleMusicConnection(account)).also { shared = it }
            }
        }
    }
}

/** Separate request policies for public website bootstrap and authenticated API traffic. */
internal class AppleMusicTransport(
    private val api: LyricsTransport = HttpLyricsTransport(
        connectTimeoutMs = 1_500, readTimeoutMs = 8_000,
        maximumResponseBytes = AppleMusicAuthBroker.MAX_API_BYTES, followRedirects = false
    ),
    private val web: LyricsTransport = AppleMusicPublicWebTransport()
) : LyricsTransport {
    override fun getText(url: String, headers: Map<String, String>, deadlineNanos: Long, cancellation: LyricsCancellationSignal): String =
        getBytes(url, headers, deadlineNanos, cancellation).toString(Charsets.UTF_8)

    override fun getBytes(url: String, headers: Map<String, String>, deadlineNanos: Long, cancellation: LyricsCancellationSignal): ByteArray {
        val origin = URI(url)
        if (origin.scheme != "https" || origin.userInfo != null || origin.port !in listOf(-1, 443)) {
            appleMusicSchemaError("official transport origin")
        }
        val delegate = when (origin.host) {
            "amp-api.music.apple.com" -> api
            "music.apple.com" -> {
                if (headers.keys.any { it.equals("Media-User-Token", true) || it.equals("Authorization", true) }) {
                    appleMusicSchemaError("public web headers")
                }
                web
            }
            else -> appleMusicSchemaError("official transport host")
        }
        return delegate.getBytes(url, headers, deadlineNanos, cancellation)
    }
}

internal object AppleMusicWebTokenParser {
    private val asset = Regex("/assets/[A-Za-z0-9._~-]+\\.js")
    private val jwt = Regex("eyJ[A-Za-z0-9_-]{10,}\\.[A-Za-z0-9_-]{50,}\\.[A-Za-z0-9_-]{20,}")
    fun jsAssets(home: String): List<String> = asset.findAll(home).map { it.value }.distinct().sortedBy {
        when {
            it.startsWith("/assets/index~") -> 0
            it.startsWith("/assets/index") -> 1
            else -> 2
        }
    }.toList()

    fun jwtExpiryMs(value: String): Long {
        val parts = value.split('.')
        if (parts.size != 3) return 0L
        return runCatching {
            val payload = Base64.decode(parts[1], Base64.URL_SAFE or Base64.NO_WRAP or Base64.NO_PADDING)
            val exp = JSONObject(payload.toString(Charsets.UTF_8)).optLong("exp", 0L)
            if (exp in 1L..(Long.MAX_VALUE / 1_000L)) exp * 1_000L else 0L
        }.getOrDefault(0L)
    }

    fun extractJwts(js: String, minimumExpiryMs: Long): List<AppleMusicDeveloperToken> = jwt.findAll(js)
        .map { it.value }.distinct().map { AppleMusicDeveloperToken(it, jwtExpiryMs(it)) }
        .filter { it.expiresAtMs > minimumExpiryMs }.sortedByDescending { it.expiresAtMs }.toList()
}

internal fun appleMusicCheckBudget(deadline: Long, cancellation: LyricsCancellationSignal) {
    cancellation.throwIfCancelled()
    if (System.nanoTime() >= deadline) throw LyricsSourceException(LyricsFailureReason.DEADLINE, true, "Apple Music request deadline reached")
}

internal fun appleMusicSchemaError(field: String): Nothing =
    throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Apple Music response missing $field")

internal fun appleMusicHeaders(developer: String, user: String = ""): Map<String, String> = buildMap {
    put("Authorization", "Bearer $developer")
    put("Origin", AppleMusicAuthBroker.WEB_ORIGIN)
    put("User-Agent", "Mozilla/5.0")
    put("Accept", "application/json")
    if (user.isNotBlank()) put("Media-User-Token", user)
}

internal fun appleMusicEncode(value: String): String = URLEncoder.encode(value, "UTF-8").replace("+", "%20")

internal fun appleMusicJson(bytes: ByteArray, cancellation: LyricsCancellationSignal): JSONObject {
    cancellation.throwIfCancelled()
    return try {
        val tokener = JSONTokener(bytes.toString(Charsets.UTF_8).trim().removePrefix("\uFEFF"))
        val root = tokener.nextValue()
        if (root !is JSONObject || tokener.nextClean() != '\u0000') appleMusicSchemaError("JSON object")
        cancellation.throwIfCancelled()
        root
    } catch (error: CancellationException) { throw error } catch (error: LyricsSourceException) { throw error }
    catch (_: Exception) { appleMusicSchemaError("valid JSON") }
}
