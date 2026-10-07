package com.icar03.content.runtime.lyrics

import android.net.Uri
import android.util.Base64
import org.json.JSONObject
import org.json.JSONTokener
import java.net.URI
import java.nio.ByteBuffer
import java.nio.charset.CodingErrorAction
import java.util.UUID

/** Official MusicKit web authorization wire contract; no app-owned login form or JS token bridge. */
internal object AppleMusicWebAuthorization {
    class Configuration internal constructor(val startUrl: String, val referrerUrl: String) {
        override fun toString(): String = "AppleMusicWebAuthorizationConfiguration(redacted)"
    }

    class Result internal constructor(val musicUserToken: String) {
        override fun toString(): String = "AppleMusicWebAuthorizationResult(redacted)"
    }

    fun configuration(attempt: AppleMusicConnection.LoginAttempt, developerToken: String): Configuration {
        require(validAttemptId(attempt.id)) { "Invalid Apple Music login attempt" }
        require(validAppleMusicUserToken(developerToken)) { "Invalid Apple Music developer bearer" }
        val referrer = callbackUri(attempt).toString()
        val parameters = JSONObject().put("thirdPartyName", "music.apple.com")
            .put("thirdPartyToken", developerToken).toString().toByteArray(Charsets.UTF_8)
        val authorization = Base64.encodeToString(parameters, Base64.NO_WRAP)
        val start = Uri.Builder().scheme("https").authority("authorize.music.apple.com")
            .appendPath("woa").appendQueryParameter("a", authorization)
            .appendQueryParameter("referrer", referrer).build().toString()
        return Configuration(start, referrer)
    }

    /** Match the exact nonce-bearing callback before decoding anything credential-bearing. */
    fun isCallbackForAttempt(attempt: AppleMusicConnection.LoginAttempt, value: String): Boolean = runCatching {
        if (!validAttemptId(attempt.id) || value.length > MAX_CALLBACK_LENGTH) return@runCatching false
        val uri = URI(value)
        uri.scheme == "https" && uri.host == "music.apple.com" && uri.userInfo == null &&
            uri.port in listOf(-1, 443) && uri.rawQuery == null &&
            uri.rawPath == callbackUri(attempt).encodedPath
    }.getOrDefault(false)

    /** The official WOA redirect carries Base64 JSON {cid, itre, musicUserToken} in its fragment. */
    fun parseCallback(attempt: AppleMusicConnection.LoginAttempt, value: String): Result? = runCatching {
        if (!isCallbackForAttempt(attempt, value)) return@runCatching null
        val uri = URI(value)
        if (uri.rawFragment.orEmpty().length > MAX_FRAGMENT_LENGTH) return@runCatching null
        val encoded = uri.fragment ?: return@runCatching null
        if (encoded.isEmpty() || encoded.length > MAX_FRAGMENT_LENGTH || encoded.length % 4 != 0 ||
            !BASE64_FRAGMENT.matches(encoded)) return@runCatching null
        val bytes = Base64.decode(encoded, Base64.NO_WRAP)
        if (bytes.size > MAX_FRAGMENT_LENGTH || Base64.encodeToString(bytes, Base64.NO_WRAP) != encoded) {
            return@runCatching null
        }
        val text = Charsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT)
            .onUnmappableCharacter(CodingErrorAction.REPORT).decode(ByteBuffer.wrap(bytes)).toString()
        val parser = JSONTokener(text)
        val result = parser.nextValue() as? JSONObject ?: return@runCatching null
        if (parser.nextClean() != '\u0000') return@runCatching null
        val token = result.opt("musicUserToken") as? String ?: return@runCatching null
        if (!validAppleMusicUserToken(token)) return@runCatching null
        Result(token)
    }.getOrNull()

    private fun callbackUri(attempt: AppleMusicConnection.LoginAttempt): Uri = Uri.Builder()
        .scheme("https").authority("music.apple.com").appendPath("__icar03_authorization")
        .appendPath(attempt.id).build()

    private fun validAttemptId(value: String): Boolean = runCatching {
        UUID.fromString(value).toString() == value
    }.getOrDefault(false)

    private const val MAX_FRAGMENT_LENGTH = 64 * 1024
    private const val MAX_CALLBACK_LENGTH = MAX_FRAGMENT_LENGTH + 256
    private val BASE64_FRAGMENT = Regex("[A-Za-z0-9+/]+={0,2}")
}

internal fun validAppleMusicUserToken(value: String): Boolean = value.isNotBlank() &&
    value.length <= AppleMusicConnection.MAX_TOKEN_LENGTH && value.none { it.isISOControl() }
