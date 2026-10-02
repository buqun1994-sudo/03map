package com.icar03.content.runtime.lyrics

import org.json.JSONObject
import org.json.JSONTokener
import java.io.IOException
import java.net.SocketTimeoutException
import java.util.concurrent.CancellationException
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit

internal data class QqWordLyricsBundle(
    val wordLyrics: String,
    val translatedLyrics: String = "",
    val romanizedLyrics: String = ""
)

/** Optional, anonymous QRC enrichment for an already catalog-verified numeric QQ song ID. */
internal class QqWordLyricsSource(
    @Suppress("unused") private val transport: LyricsTransport = HttpLyricsTransport(),
    private val post: LyricsPostTransport = HttpLyricsPostTransport()
) {
    private var clock: LyricsMonotonicClock = SystemLyricsMonotonicClock
    private val sessionLock = Any()
    private var cachedSession: AnonymousSession? = null
    private var sessionFlight: SessionFlight? = null

    internal constructor(
        transport: LyricsTransport,
        post: LyricsPostTransport,
        clock: LyricsMonotonicClock
    ) : this(transport, post) {
        this.clock = clock
    }

    fun load(
        songId: Long,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): QqWordLyricsBundle? {
        cancellation.throwIfCancelled()
        if (songId <= 0L) return null
        lyricsHttpRemainingMs(deadlineNanos, cancellation)
        val session = ensureSession(deadlineNanos, cancellation)
        val data = request(
            "GetPlayLyricInfo", "music.musichallSong.PlayLyricInfo",
            JSONObject().put("albumName", "").put("crypt", 1).put("ct", 19).put("cv", 2111)
                .put("interval", 0).put("lrc_t", 0).put("qrc", 1).put("qrc_t", 0)
                .put("roma", 1).put("roma_t", 0).put("singerName", "").put("songID", songId)
                .put("songName", "").put("trans", 1).put("trans_t", 0).put("type", 0),
            session, deadlineNanos, cancellation
        )
        val failures = mutableListOf<LyricsSourceException>()
        fun track(key: String, wordTrack: Boolean): String = try {
            val encoded = encodedTrack(data, key)
            if (encoded.isEmpty() || (wordTrack && !hasWordTiming(data))) "" else {
                val plain = QrcLyricsParser.decodeHex(encoded, deadlineNanos, cancellation)
                if (wordTrack) QrcLyricsParser.parseWordLyrics(plain, deadlineNanos, cancellation)
                else QrcLyricsParser.parseAuxiliaryLyrics(plain, deadlineNanos, cancellation)
            }
        } catch (error: CancellationException) {
            throw error
        } catch (error: LyricsSourceException) {
            failures += error
            ""
        }
        val wordLyrics = track("lyric", true)
        val translatedLyrics = track("trans", false)
        val romanizedLyrics = track("roma", false)
        cancellation.throwIfCancelled()
        if (wordLyrics.isEmpty() && translatedLyrics.isEmpty() && romanizedLyrics.isEmpty()) {
            failures.firstOrNull()?.let { throw it }
            return null
        }
        return QqWordLyricsBundle(wordLyrics, translatedLyrics, romanizedLyrics)
    }

    private fun ensureSession(deadlineNanos: Long, cancellation: LyricsCancellationSignal): AnonymousSession {
        while (true) {
            lyricsHttpRemainingMs(deadlineNanos, cancellation)
            var leader = false
            val flight = synchronized(sessionLock) {
                cachedSession?.let { session ->
                    // No server TTL is specified by this protocol. Keep only a short local lifetime.
                    val age = clock.nanoTime() - session.obtainedAtNanos
                    if (age in 0 until SESSION_TTL_NANOS) return session
                    cachedSession = null
                }
                sessionFlight ?: SessionFlight().also {
                    sessionFlight = it
                    leader = true
                }
            }
            if (leader) {
                try {
                    val session = fetchSession(deadlineNanos, cancellation)
                    lyricsHttpRemainingMs(deadlineNanos, cancellation)
                    synchronized(sessionLock) { cachedSession = session }
                    flight.session = session
                    return session
                } catch (error: Exception) {
                    flight.failure = error
                    throw error
                } finally {
                    synchronized(sessionLock) {
                        if (sessionFlight === flight) sessionFlight = null
                    }
                    flight.finished.countDown()
                }
            }
            while (true) {
                lyricsHttpRemainingMs(deadlineNanos, cancellation)
                val remainingNanos = deadlineNanos - System.nanoTime()
                try {
                    if (flight.finished.await(minOf(WAIT_POLL_NANOS, remainingNanos), TimeUnit.NANOSECONDS)) break
                } catch (_: InterruptedException) {
                    Thread.currentThread().interrupt()
                    throw CancellationException("QQ anonymous session wait cancelled")
                }
            }
            cancellation.throwIfCancelled()
            val failure = flight.failure
            if (failure is CancellationException) continue // An unrelated leader must not cancel this caller.
            if (failure != null) throw failure
            flight.session?.let { return it }
            throw sourceFailure("QQ anonymous session response missing")
        }
    }

    private fun fetchSession(deadlineNanos: Long, cancellation: LyricsCancellationSignal): AnonymousSession {
        val data = request(
            "GetSession", "music.getSession.session",
            JSONObject().put("caller", 0).put("uid", "0").put("vkey", 0),
            null, deadlineNanos, cancellation
        )
        val session = data.optJSONObject("session") ?: throw sourceFailure("QQ anonymous session response missing")
        val sid = session.opt("sid") as? String ?: throw sourceFailure("QQ anonymous session response missing")
        if (sid.isBlank() || sid.length > 1_024) throw sourceFailure("Invalid QQ anonymous session response")
        val uid = when (val value = session.opt("uid")) {
            null, JSONObject.NULL -> "0"
            is String, is Number -> value.toString()
            else -> throw sourceFailure("Invalid QQ anonymous session response")
        }
        if (uid.toLongOrNull()?.let { it >= 0L } != true) throw sourceFailure("Invalid QQ anonymous session response")
        val userIp = when (val value = session.opt("userip")) {
            null, JSONObject.NULL -> ""
            is String -> value
            else -> throw sourceFailure("Invalid QQ anonymous session response")
        }
        if (userIp.length > 256) throw sourceFailure("Invalid QQ anonymous session response")
        return AnonymousSession(uid, sid, userIp, clock.nanoTime())
    }

    private fun request(
        method: String,
        module: String,
        parameters: JSONObject,
        session: AnonymousSession?,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): JSONObject {
        lyricsHttpRemainingMs(deadlineNanos, cancellation)
        val body = JSONObject().put("comm", comm(session)).put("request", JSONObject()
            .put("method", method).put("module", module).put("param", parameters))
        val text = try {
            post.postText(MUSICU_URL, body, HEADERS, deadlineNanos, cancellation)
        } catch (error: CancellationException) {
            throw error
        } catch (error: LyricsSourceException) {
            cancellation.throwIfCancelled()
            throw error
        } catch (_: SocketTimeoutException) {
            cancellation.throwIfCancelled()
            throw LyricsSourceException(LyricsFailureReason.DEADLINE, true, "QQ lyrics request timed out")
        } catch (_: IOException) {
            lyricsHttpRemainingMs(deadlineNanos, cancellation)
            throw LyricsSourceException(LyricsFailureReason.NETWORK, true, "QQ lyrics network failure")
        }
        lyricsHttpRemainingMs(deadlineNanos, cancellation)
        val root = try {
            require(text.toByteArray(Charsets.UTF_8).size <= MAX_JSON_BYTES)
            val tokener = JSONTokener(text.trim().removePrefix("\uFEFF"))
            val value = tokener.nextValue() as? JSONObject ?: throw IllegalArgumentException()
            require(tokener.nextClean() == '\u0000')
            value
        } catch (_: Exception) {
            throw sourceFailure("Invalid QQ lyrics JSON response")
        }
        requireSuccessCode(root, "code", method)
        val response = root.optJSONObject("request") ?: throw sourceFailure("Invalid QQ lyrics response envelope")
        requireSuccessCode(response, "code", method)
        return response.optJSONObject("data") ?: throw sourceFailure("Invalid QQ lyrics response data")
    }

    private fun requireSuccessCode(value: JSONObject, key: String, method: String) {
        val code = when (val raw = value.opt(key)) {
            is Number, is String -> raw.toString().toIntOrNull()
            else -> null
        } ?: throw sourceFailure("Invalid QQ lyrics business code")
        if (code == 0) return
        val reason = when (code) {
            429, -462 -> LyricsFailureReason.RATE_LIMIT
            408 -> LyricsFailureReason.DEADLINE
            else -> LyricsFailureReason.SERVER
        }
        // Do not rotate sessions, hosts, cookies or credentials after authorization/challenge failures.
        throw LyricsSourceException(
            reason,
            code == 408 || code == 429 || code == -462 || code in 500..599,
            "QQ $method rejected lyrics request (code=$code)"
        )
    }

    private fun comm(session: AnonymousSession?): JSONObject = JSONObject()
        // Fixed public protocol client descriptors, not account or vehicle identity.
        .put("ct", 11).put("cv", "1003006").put("v", "1003006").put("os_ver", "15")
        .put("phonetype", "24122RKC7C")
        .put("rom", "Redmi/miro/miro:15/AE3A.240806.005/OS2.0.105.0.VOMCNXM:user/release-keys")
        .put("tmeAppID", "qqmusiclight").put("nettype", "NETWORK_WIFI").put("udid", "0")
        .apply {
            if (session != null) {
                put("uid", session.uid)
                put("sid", session.sid)
                put("userip", session.userIp)
            }
        }

    private fun encodedTrack(value: JSONObject, key: String): String = when (val raw = value.opt(key)) {
        null, JSONObject.NULL, false -> ""
        is String -> raw.trim().takeUnless { it.equals("null", true) }.orEmpty()
        else -> throw sourceFailure("Invalid QQ lyrics track field")
    }

    private fun hasWordTiming(value: JSONObject): Boolean {
        fun present(key: String): Boolean = when (val raw = value.opt(key)) {
            null, JSONObject.NULL, false -> false
            is Number, is String -> raw.toString().toLongOrNull()?.let { it > 0L }
                ?: throw sourceFailure("Invalid QQ lyrics timing field")
            else -> throw sourceFailure("Invalid QQ lyrics timing field")
        }
        return present("qrc_t") || present("lrc_t")
    }

    // These private holders intentionally have no generated toString containing the session value.
    private class AnonymousSession(val uid: String, val sid: String, val userIp: String, val obtainedAtNanos: Long)
    private class SessionFlight {
        val finished = CountDownLatch(1)
        @Volatile var session: AnonymousSession? = null
        @Volatile var failure: Exception? = null
    }

    private companion object {
        const val MUSICU_URL = "https://u.y.qq.com/cgi-bin/musicu.fcg"
        const val MAX_JSON_BYTES = 2 * 1024 * 1024
        val SESSION_TTL_NANOS = TimeUnit.MINUTES.toNanos(2)
        val WAIT_POLL_NANOS = TimeUnit.MILLISECONDS.toNanos(20)
        val HEADERS = mapOf("Accept" to "application/json", "Content-Type" to "application/json", "User-Agent" to "okhttp/3.14.9")
        fun sourceFailure(message: String) = LyricsSourceException(LyricsFailureReason.SERVER, false, message)
    }
}
