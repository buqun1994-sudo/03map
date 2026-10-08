package com.icar03.content.runtime.lyrics

import java.io.ByteArrayOutputStream
import java.io.IOException
import java.net.HttpURLConnection
import java.net.SocketTimeoutException
import java.net.URI
import java.net.URL
import java.util.concurrent.CancellationException
import java.util.concurrent.TimeUnit

/** Public website bootstrap follows Apple's region redirects; authenticated API requests do not. */
internal class AppleMusicPublicWebTransport(
    private val openConnection: (URL) -> HttpURLConnection = { it.openConnection() as HttpURLConnection },
) : LyricsTransport {
    override fun getText(url: String, headers: Map<String, String>, deadlineNanos: Long,
        cancellation: LyricsCancellationSignal): String =
        getBytes(url, headers, deadlineNanos, cancellation).toString(Charsets.UTF_8)

    override fun getBytes(url: String, headers: Map<String, String>, deadlineNanos: Long,
        cancellation: LyricsCancellationSignal): ByteArray {
        if (headers.keys.any { name -> SECRET_HEADERS.any { it.equals(name, true) } }) {
            appleMusicSchemaError("public web headers")
        }
        var target = officialUri(url)
        val visited = hashSetOf<URI>()
        var redirects = 0
        while (true) {
            appleMusicCheckBudget(deadlineNanos, cancellation)
            if (!visited.add(target)) appleMusicSchemaError("public web redirect loop")
            val connection = openConnection(target.toURL())
            val registration = cancellation.register(connection::disconnect)
            try {
                connection.requestMethod = "GET"
                connection.instanceFollowRedirects = false
                connection.connectTimeout = minOf(CONNECT_TIMEOUT_MS, remainingMs(deadlineNanos, cancellation))
                connection.readTimeout = minOf(READ_TIMEOUT_MS, remainingMs(deadlineNanos, cancellation))
                headers.forEach(connection::setRequestProperty)
                connection.connect()
                connection.readTimeout = minOf(READ_TIMEOUT_MS, remainingMs(deadlineNanos, cancellation))
                val status = connection.responseCode
                appleMusicCheckBudget(deadlineNanos, cancellation)
                if (status in REDIRECT_STATUSES) {
                    if (++redirects > MAX_REDIRECTS) appleMusicSchemaError("bounded public web redirects")
                    val location = connection.getHeaderField("Location")
                        ?.takeIf { it.isNotBlank() } ?: appleMusicSchemaError("public web redirect location")
                    // Validate each hop before opening it. HTTP downgrades and other hosts cannot supply a bootstrap token.
                    target = officialUri(runCatching { target.resolve(location).toString() }.getOrElse {
                        appleMusicSchemaError("public web redirect URI")
                    })
                    continue
                }
                if (status !in 200..299) throw httpFailure(status)
                return connection.inputStream.use { input ->
                    val output = ByteArrayOutputStream()
                    val buffer = ByteArray(8_192)
                    while (true) {
                        connection.readTimeout = minOf(READ_TIMEOUT_MS, remainingMs(deadlineNanos, cancellation))
                        val count = input.read(buffer)
                        appleMusicCheckBudget(deadlineNanos, cancellation)
                        if (count < 0) break
                        if (count > AppleMusicAuthBroker.MAX_WEB_BYTES - output.size()) {
                            appleMusicSchemaError("bounded official web bundle")
                        }
                        output.write(buffer, 0, count)
                    }
                    output.toByteArray()
                }
            } catch (error: CancellationException) {
                throw error
            } catch (error: LyricsSourceException) {
                throw error
            } catch (_: SocketTimeoutException) {
                cancellation.throwIfCancelled()
                throw LyricsSourceException(LyricsFailureReason.DEADLINE, true, "Apple Music public web request timed out")
            } catch (_: IOException) {
                appleMusicCheckBudget(deadlineNanos, cancellation)
                throw LyricsSourceException(LyricsFailureReason.NETWORK, true, "Apple Music public web request failed")
            } finally {
                registration.close()
                connection.disconnect()
            }
        }
    }

    private fun officialUri(value: String): URI {
        val uri = runCatching { URI(value) }.getOrElse { appleMusicSchemaError("public web URI") }
        if (uri.scheme != "https" || uri.host != "music.apple.com" || uri.userInfo != null ||
            uri.port !in listOf(-1, 443) || uri.rawFragment != null) {
            appleMusicSchemaError("public web origin")
        }
        return uri
    }

    private fun remainingMs(deadline: Long, cancellation: LyricsCancellationSignal): Int {
        appleMusicCheckBudget(deadline, cancellation)
        return TimeUnit.NANOSECONDS.toMillis(deadline - System.nanoTime())
            .coerceIn(1L, Int.MAX_VALUE.toLong()).toInt()
    }

    private fun httpFailure(status: Int): LyricsHttpStatusException = LyricsHttpStatusException(
        status, when {
            status == 429 -> LyricsFailureReason.RATE_LIMIT
            status >= 500 -> LyricsFailureReason.SERVER
            else -> LyricsFailureReason.NETWORK
        }, status == 408 || status == 429 || status >= 500,
    )

    private companion object {
        const val CONNECT_TIMEOUT_MS = 1_500
        const val READ_TIMEOUT_MS = 8_000
        const val MAX_REDIRECTS = 5
        val REDIRECT_STATUSES = setOf(301, 302, 303, 307, 308)
        val SECRET_HEADERS = setOf("Authorization", "Media-User-Token", "Cookie", "Cookie2")
    }
}
