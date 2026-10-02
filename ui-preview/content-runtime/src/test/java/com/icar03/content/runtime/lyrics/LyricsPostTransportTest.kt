package com.icar03.content.runtime.lyrics

import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.IOException
import java.io.InputStream
import java.io.OutputStream
import java.net.HttpURLConnection
import java.net.SocketTimeoutException
import java.net.URL
import java.util.concurrent.CancellationException
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger
import java.util.zip.GZIPOutputStream

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class LyricsPostTransportTest {
    @Test fun sendsUtf8JsonWithFixedTypeDeadlineBoundedTimeoutsAndNoRedirects() {
        val connection = FakeConnection("{\"synthetic\":true}".toByteArray())
        val body = JSONObject().put("operation", "synthetic").put("text", "\u7532\u4e59")
        val cancellation = signal()
        val result = transport(connection).postText(HTTPS_URL, body, mapOf(
            "Authorization" to "Bearer synthetic-only", "Accept-Language" to "zh",
            "Content-Type" to "text/plain", "Accept-Encoding" to "br"
        ), deadline(1_000), cancellation)
        assertEquals("{\"synthetic\":true}", result)
        assertEquals("POST", connection.requestMethod)
        assertTrue(connection.doOutput)
        assertFalse(connection.instanceFollowRedirects)
        assertFalse(connection.useCaches)
        assertTrue(connection.connectTimeout in 1..1_000)
        assertTrue(connection.readTimeout in 1..1_000)
        assertEquals("application/json; charset=utf-8", connection.getRequestProperty("Content-Type"))
        assertEquals("identity", connection.getRequestProperty("Accept-Encoding"))
        assertEquals("Bearer synthetic-only", connection.getRequestProperty("Authorization"))
        assertEquals(body.toString(), connection.sent.toString("UTF-8"))
        assertEquals(connection.sent.size(), connection.fixedLength)
        assertEquals(1, connection.disconnects.get())
        cancellation.cancel()
        assertEquals(1, connection.disconnects.get())
    }

    @Test fun connectsAndReadsWithAtMostThreeSecondsWhenCallerHasLongerBudget() {
        val connection = FakeConnection("{}".toByteArray())
        transport(connection).postText(HTTPS_URL, JSONObject(), emptyMap(), Long.MAX_VALUE, signal())
        assertEquals(3_000, connection.connectTimeout)
        assertEquals(3_000, connection.readTimeout)
    }

    @Test fun insecureSchemesUserinfoAndMalformedHeadersFailBeforeOpeningConnection() {
        val opens = AtomicInteger()
        val transport = HttpLyricsPostTransport(1024) { opens.incrementAndGet(); FakeConnection() }
        for (url in listOf("http://example.test/api", "https://user:pass@example.test/api", "file:///tmp/test",
            "https:///api", "https://example.test:0/api", "https://example.test/api#fragment")) {
            val error = assertThrows(LyricsSourceException::class.java) {
                transport.postText(url, JSONObject(), emptyMap(), Long.MAX_VALUE, signal())
            }
            assertEquals(LyricsFailureReason.NETWORK, error.reason)
            assertFalse(error.retryable)
            assertFalse(error.message.orEmpty().contains("user:pass"))
        }
        for (headers in listOf(mapOf("Accept" to "json\r\nAuthorization: leak"), mapOf("Bad Header" to "value"))) {
            assertThrows(LyricsSourceException::class.java) {
                transport.postText(HTTPS_URL, JSONObject(), headers, Long.MAX_VALUE, signal())
            }
        }
        assertEquals(0, opens.get())
    }

    @Test fun redirectsNeverSendBearerToAnotherHostAndEveryHttpFailureIsTyped() {
        val cases = mapOf(301 to LyricsFailureReason.NETWORK, 302 to LyricsFailureReason.NETWORK,
            307 to LyricsFailureReason.NETWORK, 308 to LyricsFailureReason.NETWORK,
            401 to LyricsFailureReason.NETWORK, 403 to LyricsFailureReason.NETWORK,
            404 to LyricsFailureReason.NETWORK, 408 to LyricsFailureReason.NETWORK,
            429 to LyricsFailureReason.RATE_LIMIT, 503 to LyricsFailureReason.SERVER)
        for ((status, reason) in cases) {
            val connection = FakeConnection(status = status, responseHeaders = mapOf("Location" to "https://other.test/token"))
            val opens = AtomicInteger()
            val transport = HttpLyricsPostTransport(1024) { opens.incrementAndGet(); connection }
            val error = assertThrows(LyricsHttpStatusException::class.java) {
                transport.postText(HTTPS_URL, JSONObject(), mapOf("Authorization" to "Bearer synthetic-secret"),
                    Long.MAX_VALUE, signal())
            }
            assertEquals(status, error.statusCode)
            assertEquals(reason, error.reason)
            assertEquals(status == 408 || status == 429 || status >= 500, error.retryable)
            assertFalse(error.message.orEmpty().contains("synthetic-secret"))
            assertFalse(connection.instanceFollowRedirects)
            assertEquals(1, opens.get())
            assertEquals(0, connection.inputOpens.get())
            assertTrue(connection.disconnects.get() > 0)
        }
    }

    @Test fun responseLimitCoversUnknownLengthsKnownLengthsAndExactlyAtLimit() {
        val exact = FakeConnection("x".repeat(128).toByteArray())
        assertEquals(128, transport(exact, 128).postText(HTTPS_URL, JSONObject(), emptyMap(), Long.MAX_VALUE, signal()).length)
        val unknownLength = FakeConnection(ByteArray(129) { 65 })
        assertBodyLimit(transport(unknownLength, 128))
        val declaredOversized = FakeConnection("{}".toByteArray(), responseHeaders = mapOf("Content-Length" to "129"))
        assertBodyLimit(transport(declaredOversized, 128))
        assertEquals(0, declaredOversized.inputOpens.get())
        val hardLimit = FakeConnection(ByteArray(2 * 1024 * 1024 + 1) { 65 })
        assertBodyLimit(transport(hardLimit))
        assertThrows(IllegalArgumentException::class.java) { HttpLyricsPostTransport(2 * 1024 * 1024 + 1) }
    }

    @Test fun gzipIsBoundedAfterInflationAndOnWireAndUnsupportedEncodingFails() {
        val valid = FakeConnection(gzip("{\"ok\":true}".toByteArray()), responseHeaders = mapOf("Content-Encoding" to "gzip"))
        assertEquals("{\"ok\":true}", transport(valid).postText(HTTPS_URL, JSONObject(), emptyMap(), Long.MAX_VALUE, signal()))
        val inflateBomb = FakeConnection(gzip(ByteArray(8_192) { 65 }), responseHeaders = mapOf("Content-Encoding" to "gzip"))
        assertBodyLimit(transport(inflateBomb, 128))
        val oversizedWire = FakeConnection(ByteArray(200) { it.toByte() }, responseHeaders = mapOf("Content-Encoding" to "gzip"))
        assertThrows(LyricsSourceException::class.java) {
            transport(oversizedWire, 128).postText(HTTPS_URL, JSONObject(), emptyMap(), Long.MAX_VALUE, signal())
        }
        val unsupported = FakeConnection("{}".toByteArray(), responseHeaders = mapOf("Content-Encoding" to "br"))
        assertEquals(LyricsFailureReason.SERVER, assertThrows(LyricsSourceException::class.java) {
            transport(unsupported).postText(HTTPS_URL, JSONObject(), emptyMap(), Long.MAX_VALUE, signal())
        }.reason)
        assertEquals(0, unsupported.inputOpens.get())
    }

    @Test fun requestLimitIsCheckedBeforeOpeningAndInvalidUtf8IsNotSilentlyReplaced() {
        val opens = AtomicInteger()
        val transport = HttpLyricsPostTransport(1024) { opens.incrementAndGet(); FakeConnection() }
        val body = JSONObject().put("large", "x".repeat(2 * 1024 * 1024))
        assertThrows(LyricsSourceException::class.java) {
            transport.postText(HTTPS_URL, body, emptyMap(), Long.MAX_VALUE, signal())
        }
        assertEquals(0, opens.get())
        val invalidUtf8 = FakeConnection(byteArrayOf(0xC3.toByte(), 0x28))
        val error = assertThrows(LyricsSourceException::class.java) {
            transport(invalidUtf8).postText(HTTPS_URL, JSONObject(), emptyMap(), Long.MAX_VALUE, signal())
        }
        assertEquals(LyricsFailureReason.SERVER, error.reason)
    }

    @Test fun cancellationAndExpiredDeadlineNeverOpenConnections() {
        val opens = AtomicInteger()
        val transport = HttpLyricsPostTransport(1024) { opens.incrementAndGet(); FakeConnection() }
        assertThrows(CancellationException::class.java) {
            transport.postText(HTTPS_URL, JSONObject(), emptyMap(), Long.MAX_VALUE, signal().apply { cancel() })
        }
        val error = assertThrows(LyricsSourceException::class.java) {
            transport.postText(HTTPS_URL, JSONObject(), emptyMap(), System.nanoTime() - 1, signal())
        }
        assertEquals(LyricsFailureReason.DEADLINE, error.reason)
        assertTrue(error.retryable)
        assertEquals(0, opens.get())
    }

    @Test fun cancellationDisconnectsBlockedHttpAndCannotBecomeNetworkFailure() {
        val entered = CountDownLatch(1)
        val disconnected = CountDownLatch(1)
        val connection = FakeConnection().apply {
            onDisconnect = { disconnected.countDown() }
            onStatus = {
                entered.countDown()
                check(disconnected.await(5, TimeUnit.SECONDS))
                throw IOException("synthetic blocking request")
            }
        }
        val cancellation = signal()
        val executor = Executors.newSingleThreadExecutor()
        try {
            val task = executor.submit<Throwable?> {
                try {
                    transport(connection).postText(HTTPS_URL, JSONObject(), emptyMap(), Long.MAX_VALUE, cancellation)
                    null
                } catch (error: Throwable) {
                    error
                }
            }
            assertTrue(entered.await(5, TimeUnit.SECONDS))
            cancellation.cancel()
            assertTrue(task.get(5, TimeUnit.SECONDS) is CancellationException)
            assertTrue(connection.disconnects.get() >= 1)
        } finally {
            cancellation.cancel()
            executor.shutdownNow()
        }
    }

    @Test fun totalDeadlineActivelyDisconnectsBlockedRequestInsteadOfWaitingForReadTimeout() {
        val disconnected = CountDownLatch(1)
        val entered = CountDownLatch(1)
        val connection = FakeConnection().apply {
            onDisconnect = { disconnected.countDown() }
            onStatus = {
                entered.countDown()
                check(disconnected.await(2, TimeUnit.SECONDS))
                throw IOException("synthetic deadline disconnect")
            }
        }
        val started = System.nanoTime()
        val error = assertThrows(LyricsSourceException::class.java) {
            transport(connection).postText(HTTPS_URL, JSONObject(), emptyMap(), deadline(1_000), signal())
        }
        assertEquals(LyricsFailureReason.DEADLINE, error.reason)
        assertEquals(0L, entered.count)
        assertTrue(TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - started) < 2_000L)
        assertTrue(connection.disconnects.get() >= 1)
    }

    @Test fun cancellationIsCheckedBetweenOutputChunksAndBetweenResponseReads() {
        val outputCancellation = signal()
        val output = object : ByteArrayOutputStream() {
            override fun write(buffer: ByteArray, offset: Int, length: Int) {
                super.write(buffer, offset, length)
                outputCancellation.cancel()
            }
        }
        val duringOutput = FakeConnection().apply { outputOverride = output }
        assertThrows(CancellationException::class.java) {
            transport(duringOutput).postText(HTTPS_URL, JSONObject().put("large", "x".repeat(20_000)),
                emptyMap(), Long.MAX_VALUE, outputCancellation)
        }
        assertTrue(output.size() <= 8_192)
        assertEquals(0, duringOutput.inputOpens.get())
        val readCancellation = signal()
        val duringRead = FakeConnection().apply {
            inputOverride = object : ByteArrayInputStream("{}".toByteArray()) {
                override fun read(buffer: ByteArray, offset: Int, length: Int): Int {
                    val count = super.read(buffer, offset, length)
                    readCancellation.cancel()
                    return count
                }
            }
        }
        assertThrows(CancellationException::class.java) {
            transport(duringRead).postText(HTTPS_URL, JSONObject(), emptyMap(), Long.MAX_VALUE, readCancellation)
        }
        assertTrue(duringRead.disconnects.get() >= 1)
    }

    @Test fun ioAndSocketErrorsAreTypedWithoutRetainingCredentialBearingExceptions() {
        val network = FakeConnection().apply { onStatus = { throw IOException("https://example.test/?token=synthetic-secret") } }
        val error = assertThrows(LyricsSourceException::class.java) {
            transport(network).postText(HTTPS_URL, JSONObject(), emptyMap(), Long.MAX_VALUE, signal())
        }
        assertEquals(LyricsFailureReason.NETWORK, error.reason)
        assertTrue(error.retryable)
        assertNull(error.cause)
        assertFalse(error.message.orEmpty().contains("synthetic-secret"))
        val timeout = FakeConnection().apply { onStatus = { throw SocketTimeoutException("synthetic") } }
        assertEquals(LyricsFailureReason.DEADLINE, assertThrows(LyricsSourceException::class.java) {
            transport(timeout).postText(HTTPS_URL, JSONObject(), emptyMap(), Long.MAX_VALUE, signal())
        }.reason)
    }

    private fun signal() = LyricsCancellationSignal()
    private fun deadline(ms: Long) = System.nanoTime() + TimeUnit.MILLISECONDS.toNanos(ms)
    private fun transport(connection: FakeConnection, limit: Int = 2 * 1024 * 1024) =
        HttpLyricsPostTransport(limit) { connection }
    private fun assertBodyLimit(transport: LyricsPostTransport) {
        val error = assertThrows(LyricsSourceException::class.java) {
            transport.postText(HTTPS_URL, JSONObject(), emptyMap(), Long.MAX_VALUE, signal())
        }
        assertEquals(LyricsFailureReason.NETWORK, error.reason)
        assertFalse(error.retryable)
    }
    private fun gzip(bytes: ByteArray): ByteArray {
        val output = ByteArrayOutputStream()
        GZIPOutputStream(output).use { it.write(bytes) }
        return output.toByteArray()
    }

    private class FakeConnection(
        private val response: ByteArray = "{}".toByteArray(),
        private val status: Int = 200,
        private val responseHeaders: Map<String, String> = emptyMap()
    ) : HttpURLConnection(URL(HTTPS_URL)) {
        val sent = ByteArrayOutputStream()
        val disconnects = AtomicInteger()
        val inputOpens = AtomicInteger()
        var fixedLength = -1
        var inputOverride: InputStream? = null
        var outputOverride: OutputStream? = null
        var onStatus: (() -> Int)? = null
        var onDisconnect: (() -> Unit)? = null
        override fun getResponseCode(): Int = onStatus?.invoke() ?: status
        override fun getInputStream(): InputStream {
            inputOpens.incrementAndGet()
            return inputOverride ?: ByteArrayInputStream(response)
        }
        override fun getOutputStream(): OutputStream = outputOverride ?: sent
        override fun getHeaderField(name: String?): String? = responseHeaders.entries
            .firstOrNull { it.key.equals(name, true) }?.value
        override fun setFixedLengthStreamingMode(length: Int) { fixedLength = length }
        override fun disconnect() { disconnects.incrementAndGet(); onDisconnect?.invoke() }
        override fun usingProxy(): Boolean = false
        override fun connect() = Unit
    }
    private companion object {
        const val HTTPS_URL = "https://example.test/synthetic-api"
    }
}
