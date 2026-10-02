package com.icar03.content.runtime.lyrics

import android.util.Base64
import org.json.JSONArray
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import java.io.ByteArrayOutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.concurrent.CancellationException
import java.util.zip.DeflaterOutputStream

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class PublicWordLyricsFormatsTest {
    @Test fun krcDecryptsBase64XorZlibAndKeepsAbsoluteWordTimesAndLanguageTracks() {
        val language = JSONObject().put("content", JSONArray()
            .put(JSONObject().put("type", 1).put("lyricContent", JSONArray().put(JSONArray().put("你好道路"))))
            .put(JSONObject().put("type", 0).put("lyricContent", JSONArray().put(JSONArray().put("hello road")))))
        val text = "[language:${SyntheticWordLyricsFixtures.base64(language.toString())}]\n" +
            "[1250,800]<0,300,0>Hello<300,500,0> road"
        val tracks = PublicWordLyricsFormats.decodeKrc(SyntheticWordLyricsFixtures.krc(text), LyricsCancellationSignal())
        assertEquals("[00:01.250]Hello road", tracks.lineLyrics)
        assertEquals("[1250,800](1250,300,0)Hello(1550,500,0) road", tracks.wordLyrics)
        assertEquals("[00:01.250]你好道路", tracks.translatedLyrics)
        assertEquals("[00:01.250]hello road", tracks.romanizedLyrics)
    }

    @Test fun lineOnlyKrcTextRemainsSynchronizedWithoutInventedWordTiming() {
        val tracks = PublicWordLyricsFormats.parseKrcText("[1250,800]Hello road", LyricsCancellationSignal())
        assertEquals("[00:01.250]Hello road", tracks.lineLyrics)
        assertEquals("", tracks.wordLyrics)
    }

    @Test fun krcWhitespaceTokensRetainTextAndExtendOnlyExistingWordTiming() {
        val tracks = PublicWordLyricsFormats.parseKrcText("[1000,800]<0,100,0>A<100,200,0> <300,500,0>road", LyricsCancellationSignal())
        assertEquals("[1000,800](1000,300,0)A (1300,500,0)road", tracks.wordLyrics)
    }

    @Test fun lrcxUsesOctalCoefficientsAndDropsAllZeroTranslationRows() {
        val text = "[kuwo:071]\n[00:01.250]<2100,-2100>Hello<5000,-2000> road\n[00:02.050]<0,0>中文译文"
        assertEquals("[1250,800](1250,300,0)Hello(1550,500,0) road",
            PublicWordLyricsFormats.decodeLrcx(SyntheticWordLyricsFixtures.lrcx(text), LyricsCancellationSignal()))
    }

    @Test fun mrcSigned64EncryptionRoundTripKeepsUtf16TextAndLiteralParentheses() {
        val text = "[0,0]Title(0,0)\n[3000,800]Hello(3000,300) (road)(3300,500)"
        assertEquals("[3000,800](3000,300,0)Hello(3300,500,0) (road)",
            PublicWordLyricsFormats.decodeMrc(SyntheticWordLyricsFixtures.mrc(text), LyricsCancellationSignal()))
    }

    @Test fun miguMetadataIsNotMistakenForTimedLyricContent() {
        val input = "[00:01.000]歌曲名 Fixture Song\r\n[00:02.000]歌手名 Fixture Artist\r\n[00:03.125]Hello road\r\n[00:04.000]"
        assertEquals("[00:03.125]Hello road", PublicWordLyricsFormats.stripMiguMetadata(input))
    }

    @Test fun noTimingIsNotFabricatedAndExplicitMissingLrcxIsNormal() {
        assertEquals("", PublicWordLyricsFormats.parseKrcText("Plain words", LyricsCancellationSignal()).wordLyrics)
        assertEquals("", PublicWordLyricsFormats.decodeLrcx("tp=none\r\n\r\n".toByteArray(), LyricsCancellationSignal()))
        assertEquals("", PublicWordLyricsFormats.mrcToYrc("[0,0]Title(0,0)", LyricsCancellationSignal()))
    }

    @Test fun malformedMagicHexAndCompressedBombAreClassifiedFailures() {
        expectMalformed { PublicWordLyricsFormats.decodeKrc(SyntheticWordLyricsFixtures.base64("not krc"), LyricsCancellationSignal()) }
        expectMalformed { PublicWordLyricsFormats.decodeMrc("1".repeat(33), LyricsCancellationSignal()) }
        expectMalformed { PublicWordLyricsFormats.decodeKrc(SyntheticWordLyricsFixtures.krc("x".repeat(PublicWordLyricsFormats.MAX_DECODED_BYTES + 1)), LyricsCancellationSignal()) }
        expectMalformed { PublicWordLyricsFormats.decodeLrcx("tp=content\r\n\r\nbroken".toByteArray(), LyricsCancellationSignal()) }
    }

    @Test fun cancellationPropagatesThroughEachDecoder() {
        val signal = LyricsCancellationSignal().apply { cancel() }
        val calls = listOf<() -> Any>(
            { PublicWordLyricsFormats.decodeKrc(SyntheticWordLyricsFixtures.krc("[1000,500]<0,500,0>A"), signal) },
            { PublicWordLyricsFormats.decodeLrcx(SyntheticWordLyricsFixtures.lrcx("[kuwo:071]\n[00:01.000]<3500,-3500>A"), signal) },
            { PublicWordLyricsFormats.decodeMrc(SyntheticWordLyricsFixtures.mrc("[1000,500]A(1000,500)"), signal) }
        )
        calls.forEach { call ->
            try { call(); fail("Expected cancellation") } catch (_: CancellationException) { }
        }
    }

    private fun expectMalformed(block: () -> Any) {
        try { block(); fail("Expected malformed format") } catch (error: LyricsSourceException) {
            assertEquals(LyricsFailureReason.SERVER, error.reason)
            assertFalse(error.retryable)
        }
    }
}

/** All bodies are generated from invented text; no service responses or credentials are fixtures. */
internal object SyntheticWordLyricsFixtures {
    fun base64(text: String): String = Base64.encodeToString(text.toByteArray(), Base64.NO_WRAP)
    fun krc(text: String): String {
        val key = intArrayOf(0x40, 0x47, 0x61, 0x77, 0x5E, 0x32, 0x74, 0x47, 0x51, 0x36, 0x31, 0x2D, 0xCE, 0xD2, 0x6E, 0x69)
        val compressed = zlib(text.toByteArray())
        val body = ByteArray(compressed.size) { index -> (compressed[index].toInt() xor key[index % key.size]).toByte() }
        return Base64.encodeToString("krc1".toByteArray() + body, Base64.NO_WRAP)
    }
    fun lrcx(text: String): ByteArray {
        val bytes = text.toByteArray()
        val key = "yeelion".toByteArray()
        val encrypted = ByteArray(bytes.size) { index -> (bytes[index].toInt() xor key[index % key.size].toInt()).toByte() }
        return "tp=content\r\nsynthetic=1\r\n\r\n".toByteArray() + zlib(Base64.encode(encrypted, Base64.NO_WRAP))
    }
    fun mrc(text: String): String {
        val encoded = text.toByteArray(Charsets.UTF_16LE)
        val padded = encoded.copyOf(maxOf(16, (encoded.size + 7) / 8 * 8))
        val buffer = ByteBuffer.wrap(padded).order(ByteOrder.LITTLE_ENDIAN)
        val values = LongArray(padded.size / 8) { buffer.long }
        val key = longArrayOf(27303562373562475L, 18014862372307051L, 22799692160172081L, 34058940340699235L)
        val delta = 0x9E3779B9L
        var sum = 0L
        var previous = values.last()
        repeat(6 + 52 / values.size) {
            sum += delta
            val selector = ((sum shr 2) and 3L).toInt()
            for (index in values.indices) {
                val next = values[(index + 1) % values.size]
                val shifts = (previous shr 5 xor (next shl 2)) + (next shr 3 xor (previous shl 4))
                val keyed = (sum xor next) + (key[(index and 3) xor selector] xor previous)
                values[index] += shifts xor keyed
                previous = values[index]
            }
        }
        return values.joinToString("") { java.lang.Long.toUnsignedString(it, 16).padStart(16, '0') }
    }
    private fun zlib(bytes: ByteArray): ByteArray = ByteArrayOutputStream().apply {
        DeflaterOutputStream(this).use { it.write(bytes) }
    }.toByteArray()
}
