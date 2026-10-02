package com.icar03.content.runtime.lyrics

import org.json.JSONObject
import java.io.ByteArrayOutputStream
import java.io.IOException
import java.io.InputStream
import java.net.HttpURLConnection
import java.net.SocketTimeoutException
import java.net.URI
import java.net.URL
import java.nio.ByteBuffer
import java.nio.charset.CodingErrorAction
import java.util.concurrent.CancellationException
import java.util.concurrent.ScheduledThreadPoolExecutor
import java.util.concurrent.TimeUnit
import java.util.zip.GZIPInputStream

internal fun interface LyricsPostTransport {
    fun postText(
        url: String,
        body: JSONObject,
        headers: Map<String, String>,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): String
}

internal class HttpLyricsPostTransport(
    maximumResponseBytes: Int = 2 * 1024 * 1024
) : LyricsPostTransport {
    private var exchange = LyricsHttpsExchange(maximumResponseBytes)

    internal constructor(
        maximumResponseBytes: Int,
        connectionFactory: (URL) -> HttpURLConnection
    ) : this(maximumResponseBytes) {
        exchange = LyricsHttpsExchange(maximumResponseBytes, connectionFactory)
    }

    override fun postText(
        url: String,
        body: JSONObject,
        headers: Map<String, String>,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): String = exchange.text(
        url, "POST", body.toString().toByteArray(Charsets.UTF_8), headers,
        deadlineNanos, cancellation
    )
}

internal class LyricsHttpsExchange(
    private val maximumResponseBytes: Int,
    private val connectionFactory: (URL) -> HttpURLConnection = {
        it.openConnection() as HttpURLConnection
    }
) {
    init {
        require(maximumResponseBytes in 1..LYRICS_HTTP_BODY_LIMIT)
    }

    fun text(
        url: String,
        method: String,
        body: ByteArray?,
        headers: Map<String, String>,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): String {
        val bytes = bytes(url, method, body, headers, deadlineNanos, cancellation)
        lyricsHttpRemainingMs(deadlineNanos, cancellation)
        val text = try {
            Charsets.UTF_8.newDecoder().onMalformedInput(CodingErrorAction.REPORT)
                .onUnmappableCharacter(CodingErrorAction.REPORT)
                .decode(ByteBuffer.wrap(bytes)).toString()
        } catch (_: java.nio.charset.CharacterCodingException) {
            cancellation.throwIfCancelled()
            throw LyricsSourceException(LyricsFailureReason.SERVER, false, "Invalid lyrics UTF-8 response")
        }
        lyricsHttpRemainingMs(deadlineNanos, cancellation)
        return text
    }

    fun bytes(
        url: String,
        method: String,
        body: ByteArray?,
        headers: Map<String, String>,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal
    ): ByteArray {
        lyricsHttpRemainingMs(deadlineNanos, cancellation)
        val target = checkedHttpsUrl(url)
        if (body != null && body.size > LYRICS_HTTP_BODY_LIMIT) throw bodyLimitFailure()
        if (method != "GET" && method != "POST") {
            throw LyricsSourceException(LyricsFailureReason.NETWORK, false, "Unsupported lyrics HTTP method")
        }
        headers.forEach { (name, value) ->
            if (!HTTP_HEADER_NAME.matches(name) || value.any { it == '\r' || it == '\n' || it == '\u0000' }) {
                throw LyricsSourceException(LyricsFailureReason.NETWORK, false, "Invalid lyrics HTTP header")
            }
        }
        var connection: HttpURLConnection? = null
        try {
            val active = connectionFactory(target)
            connection = active
            val cancellationRegistration = cancellation.register(active::disconnect)
            val disconnectAtDeadline = LYRICS_HTTP_DEADLINE_EXECUTOR.schedule(
                Runnable(active::disconnect),
                (deadlineNanos - System.nanoTime()).coerceAtLeast(0L),
                TimeUnit.NANOSECONDS
            )
            try {
                active.requestMethod = method
                active.connectTimeout = minOf(3_000, lyricsHttpRemainingMs(deadlineNanos, cancellation))
                active.readTimeout = minOf(3_000, lyricsHttpRemainingMs(deadlineNanos, cancellation))
                active.instanceFollowRedirects = false
                active.useCaches = false
                headers.forEach(active::setRequestProperty)
                active.setRequestProperty("Accept-Encoding", "identity")
                if (body != null) {
                    active.doOutput = true
                    active.setRequestProperty("Content-Type", "application/json; charset=utf-8")
                    active.setFixedLengthStreamingMode(body.size)
                    active.outputStream.use { output ->
                        var offset = 0
                        while (offset < body.size) {
                            lyricsHttpRemainingMs(deadlineNanos, cancellation)
                            val length = minOf(8_192, body.size - offset)
                            output.write(body, offset, length)
                            offset += length
                        }
                        lyricsHttpRemainingMs(deadlineNanos, cancellation)
                    }
                }
                active.readTimeout = minOf(3_000, lyricsHttpRemainingMs(deadlineNanos, cancellation))
                val status = active.responseCode
                lyricsHttpRemainingMs(deadlineNanos, cancellation)
                if (status !in 200..299) throw lyricsPostHttpFailure(status)
                if (active.getHeaderFieldLong("Content-Length", -1L) > maximumResponseBytes) {
                    throw bodyLimitFailure()
                }
                val encoding = active.contentEncoding.orEmpty().trim()
                if (encoding.isNotEmpty() && !encoding.equals("identity", true) &&
                    !encoding.equals("gzip", true)) {
                    throw LyricsSourceException(
                        LyricsFailureReason.SERVER, false, "Unsupported lyrics response encoding"
                    )
                }
                val wire = LimitedLyricsInputStream(
                    active.inputStream, maximumResponseBytes,
                    deadlineNanos, cancellation, active
                )
                val decoded = if (encoding.equals("gzip", true)) GZIPInputStream(wire) else wire
                decoded.use { input ->
                    val output = ByteArrayOutputStream()
                    val buffer = ByteArray(8_192)
                    var total = 0
                    while (true) {
                        active.readTimeout = minOf(3_000, lyricsHttpRemainingMs(deadlineNanos, cancellation))
                        val length = input.read(buffer)
                        lyricsHttpRemainingMs(deadlineNanos, cancellation)
                        if (length < 0) break
                        total += length
                        if (total > maximumResponseBytes) throw bodyLimitFailure()
                        output.write(buffer, 0, length)
                    }
                    return output.toByteArray()
                }
            } finally {
                disconnectAtDeadline.cancel(false)
                cancellationRegistration.close()
            }
        } catch (error: CancellationException) {
            throw error
        } catch (error: LyricsSourceException) {
            cancellation.throwIfCancelled()
            throw error
        } catch (_: SocketTimeoutException) {
            cancellation.throwIfCancelled()
            throw LyricsSourceException(LyricsFailureReason.DEADLINE, true, "Lyrics HTTP request timed out")
        } catch (_: IOException) {
            lyricsHttpRemainingMs(deadlineNanos, cancellation)
            // Do not retain an exception whose URL may contain a temporary credential.
            throw LyricsSourceException(LyricsFailureReason.NETWORK, true, "Lyrics HTTPS request failed")
        } catch (_: IllegalArgumentException) {
            cancellation.throwIfCancelled()
            throw LyricsSourceException(LyricsFailureReason.NETWORK, false, "Invalid lyrics HTTPS request")
        } finally {
            connection?.disconnect()
        }
    }
}

private class LimitedLyricsInputStream(
    private val input: InputStream,
    private val maximumBytes: Int,
    private val deadlineNanos: Long,
    private val cancellation: LyricsCancellationSignal,
    private val connection: HttpURLConnection
) : InputStream() {
    private var total = 0

    override fun read(): Int {
        connection.readTimeout = minOf(3_000, lyricsHttpRemainingMs(deadlineNanos, cancellation))
        val value = input.read()
        lyricsHttpRemainingMs(deadlineNanos, cancellation)
        if (value >= 0 && ++total > maximumBytes) throw bodyLimitFailure()
        return value
    }

    override fun read(buffer: ByteArray, offset: Int, length: Int): Int {
        connection.readTimeout = minOf(3_000, lyricsHttpRemainingMs(deadlineNanos, cancellation))
        val count = input.read(buffer, offset, length)
        lyricsHttpRemainingMs(deadlineNanos, cancellation)
        if (count > 0) {
            total += count
            if (total > maximumBytes) throw bodyLimitFailure()
        }
        return count
    }

    override fun close() = input.close()
}

internal fun lyricsHttpRemainingMs(
    deadlineNanos: Long,
    cancellation: LyricsCancellationSignal
): Int {
    cancellation.throwIfCancelled()
    val remaining = deadlineNanos - System.nanoTime()
    if (remaining <= 0L) {
        throw LyricsSourceException(LyricsFailureReason.DEADLINE, true, "Lyrics request deadline reached")
    }
    return TimeUnit.NANOSECONDS.toMillis(remaining).coerceIn(1L, Int.MAX_VALUE.toLong()).toInt()
}

private fun checkedHttpsUrl(value: String): URL {
    val uri = try {
        URI(value)
    } catch (_: Exception) {
        throw LyricsSourceException(LyricsFailureReason.NETWORK, false, "Invalid lyrics HTTPS URL")
    }
    if (!uri.scheme.equals("https", true) || uri.host.isNullOrBlank() ||
        uri.rawUserInfo != null || uri.rawFragment != null || uri.port !in -1..65_535 || uri.port == 0) {
        throw LyricsSourceException(LyricsFailureReason.NETWORK, false, "Lyrics transport requires HTTPS without userinfo")
    }
    return uri.toURL()
}

private fun lyricsPostHttpFailure(status: Int) = LyricsHttpStatusException(
    statusCode = status,
    reason = when {
        status == 429 -> LyricsFailureReason.RATE_LIMIT
        status >= 500 -> LyricsFailureReason.SERVER
        else -> LyricsFailureReason.NETWORK
    },
    retryable = status == 408 || status == 429 || status >= 500
)

private fun bodyLimitFailure() = LyricsSourceException(
    LyricsFailureReason.NETWORK, false, "Lyrics HTTP body exceeds configured limit"
)

internal const val LYRICS_HTTP_BODY_LIMIT = 2 * 1024 * 1024
private val HTTP_HEADER_NAME = Regex("[!#$%&'*+.^_`|~0-9A-Za-z-]+")
private val LYRICS_HTTP_DEADLINE_EXECUTOR = ScheduledThreadPoolExecutor(1) { task ->
    Thread(task, "lyrics-http-deadline").apply { isDaemon = true }
}.apply { removeOnCancelPolicy = true }
