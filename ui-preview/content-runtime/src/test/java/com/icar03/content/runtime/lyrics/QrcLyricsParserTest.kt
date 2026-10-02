package com.icar03.content.runtime.lyrics

import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import java.io.ByteArrayOutputStream
import java.util.concurrent.CancellationException
import java.util.zip.DeflaterOutputStream
import javax.crypto.Cipher
import javax.crypto.spec.SecretKeySpec

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class QrcLyricsParserTest {
    @Test fun protocolCipherMatchesFourIndependentUpstreamGoSyntheticVectors() {
        val vectors = mapOf(
            "0000000000000000" to "d4f80aa34ca0b59c",
            "0001020304050607" to "60be2354cdfdf5f2",
            "0123456789abcdef" to "5a92c2297192224e",
            "ffffffffffffffff" to "5b0da514d2289913"
        )
        vectors.forEach { (cipher, plain) ->
            assertArrayEquals(bytes(plain), QrcProtocolCipher.crypt(bytes(cipher), true, DEADLINE, signal()))
            assertArrayEquals(bytes(cipher), QrcProtocolCipher.crypt(bytes(plain), false, DEADLINE, signal()))
        }
    }

    @Test fun protocolIsNotEquivalentToStandardJceDesEde() {
        val cipher = Cipher.getInstance("DESede/ECB/NoPadding")
        cipher.init(Cipher.DECRYPT_MODE, SecretKeySpec("!@#)(*$%123ZXC!@!@#)(NHL".toByteArray(), "DESede"))
        assertFalse(cipher.doFinal(ByteArray(8)).contentEquals(bytes("d4f80aa34ca0b59c")))
    }

    @Test fun decryptsSyntheticOracleXmlAndOwnDeflateEncryptRoundtrip() {
        assertEquals(ORACLE_XML, QrcLyricsParser.decodeHex(ORACLE_CIPHER, DEADLINE, signal()))
        val text = xml("[1000,900]A (1000,300)B(1400,500)\n[2500,800]C(0,200) D(300,500)")
        assertEquals(text, QrcLyricsParser.decodeHex(encrypted(text), DEADLINE, signal()))
        assertEquals("[1000,900](1000,300,0)A (1400,500,0)B\n[2500,800](2500,200,0)C(2800,500,0) D",
            QrcLyricsParser.parseWordLyrics(text, DEADLINE, signal()))
    }

    @Test fun keepsAbsoluteStartsWhitespaceGapsExplicitLineEndAndRelativeConversion() {
        val parsed = QrcLyricsParser.parseWordLyrics(xml("[1000,1000]A (1100,200) B(1500,300)"), DEADLINE, signal())
        assertEquals("[1000,1000](1100,200,0)A (1500,300,0) B", parsed)
        val line = LrcParser.parseYrc(parsed).single()
        assertEquals(1000L, line.timeMs)
        assertEquals(2000L, line.endTimeMs)
        assertEquals(listOf(1100L, 1500L), line.words.map { it.startTimeMs })
        assertEquals(listOf(1300L, 1800L), line.words.map { it.endTimeMs })
        assertEquals("A  B", line.text)
        assertEquals(listOf("A ", " B"), line.words.map { it.text })
        assertEquals("[4000,600](4000,100,0)A(4300,200,0)B", QrcLyricsParser.parseWordLyrics(
            xml("[4000,600]A(0,100)B(300,200)"), DEADLINE, signal()))
    }

    @Test fun timedSpacesExtendOnlyByTheirExplicitEndWithoutInventingGapTiming() {
        val normalized = QrcLyricsParser.parseWordLyrics(
            xml("[1000,1000] (1000,50)A(1050,23) (1073,165)B(1300,100) (1400,100)"),
            DEADLINE, signal()
        )
        assertEquals("[1000,1000](1050,188,0) A (1300,200,0)B ", normalized)
        val line = LrcParser.parseYrc(normalized).single()
        assertEquals(listOf(1050L, 1300L), line.words.map { it.startTimeMs })
        assertEquals(listOf(1238L, 1500L), line.words.map { it.endTimeMs })
        assertEquals(2000L, line.endTimeMs)
        assertEquals("[3000,1000](3000,200,0)A (3200,200,0)B", QrcLyricsParser.parseWordLyrics(
            xml("[3000,1000]A(3000,100) (3100,200)B(3200,200)"), DEADLINE, signal()))
        assertEquals("[5000,1000](5000,23,0)A(5500,100,0)B", QrcLyricsParser.parseWordLyrics(
            xml("[5000,1000]A(5000,23)B(5500,100)"), DEADLINE, signal()))
    }

    @Test fun linesOrWordsWithoutExplicitDurationNeverBecomeInventedWordIntervals() {
        assertEquals("", QrcLyricsParser.parseWordLyrics(xml("[1000,1000]plain text\n[3000,500]a(3000,0)"), DEADLINE, signal()))
        val parsed = QrcLyricsParser.parseWordLyrics(xml("[1000,1000]a(1000,300) untimed"), DEADLINE, signal())
        assertEquals("[1000,1000](1000,300,0)a(2000,0,0) untimed", parsed)
        val line = LrcParser.parseYrc(parsed).single()
        assertEquals("a untimed", line.text)
        assertEquals(listOf(ParsedLyricWord(1000L, 1300L, "a")), line.words)
    }

    @Test fun standardXmlEntitiesLiteralQuotesMultilineAndMultipleTracksRemainSafe() {
        val text = "<QrcInfos><LyricInfo LyricCount=\"2\"><Lyric_1 LyricType=\"1\" LyricContent=\"" +
            "[1000,500]A &amp; B(1000,500)\n[2000,500]say \"hi\"(2000,500)\n" +
            "[3000,500]&lt;C&gt; &quot;quoted&quot;(3000,500)\"/>" +
            "<Lyric_2 LyricType=\"3\" LyricContent=\"[4000,500]wrong(4000,500)\"/></LyricInfo></QrcInfos>"
        assertEquals("[1000,500](1000,500,0)A & B\n[2000,500](2000,500,0)say \"hi\"\n" +
            "[3000,500](3000,500,0)<C> \"quoted\"", QrcLyricsParser.parseWordLyrics(text, DEADLINE, signal()))
    }

    @Test fun truncatedMalformedDoctypeEntityWrongRootAndDepthAreTypedFailures() {
        val payloads = listOf(
            xml("[1000,500]a(1000,500)").removeSuffix("</QrcInfos>"),
            "<QrcInfos><Lyric_1 LyricContent=\"[1,2]a(1,2)",
            "<!DOCTYPE QrcInfos [<!ENTITY x SYSTEM \"https://example.test/secret\">]>" + xml("[1,2]&x;(1,2)"),
            "<!DOCTYPE QrcInfos SYSTEM \"file:///not-readable\">" + xml("[1,2]a(1,2)"),
            "<wrong><Lyric_1 LyricContent=\"[1,2]a(1,2)\"/></wrong>",
            "<QrcInfos>" + "<x>".repeat(17) + "</x>".repeat(17) + "</QrcInfos>",
            xml("[1000,500]A(900,100)B(1300,100)"),
            xml("[1000,500]A(1300,100)B(1100,100)"),
            xml("[1000,500]A(1000,900)")
        )
        payloads.forEach { payload ->
            val error = assertThrows(LyricsSourceException::class.java) { QrcLyricsParser.parseWordLyrics(payload, DEADLINE, signal()) }
            assertEquals(LyricsFailureReason.SERVER, error.reason)
            assertFalse(error.retryable)
            assertNull(error.cause)
            assertFalse(error.message.orEmpty().contains(payload))
        }
    }

    @Test fun auxiliaryTracksPreserveTimesAndSpacesAndRemoveOnlyUntimedOrNoticeRows() {
        val lrc = "[offset:30]\n[00:00.00]//\n[00:00.10]QQ\u97f3\u4e50\u4eab\u6709\u672c\u7ffb\u8bd1\u4f5c\u54c1\u7684\u8457\u4f5c\u6743\n" +
            "[00:01.20][00:02.20]  A  B \n[kana:test]\n[00:03.40]C"
        assertEquals("[offset:30]\n[00:01.20][00:02.20]  A  B \n[00:03.40]C", QrcLyricsParser.parseAuxiliaryLyrics(lrc, DEADLINE, signal()))
        assertEquals("[00:01.000]a  b \n[00:03.000]c", QrcLyricsParser.parseAuxiliaryLyrics(
            xml("[1000,1000]a (1000,500) b (1500,500)\n[2000,100](2000,100)\n[3000,1000]c(3000,1000)"), DEADLINE, signal()))
        assertEquals("", QrcLyricsParser.parseAuxiliaryLyrics("untimed\n[ar:someone]", DEADLINE, signal()))
    }

    @Test fun hexIsNotBase64AndInflatedBytesUtf8AndXmlAreBounded() {
        val invalid = listOf("", "0123", "z".repeat(16), "AA==", ORACLE_CIPHER.dropLast(2), "0".repeat(1_048_592))
        invalid.forEach { payload ->
            assertThrows(LyricsSourceException::class.java) { QrcLyricsParser.decodeHex(payload, DEADLINE, signal()) }
        }
        assertThrows(LyricsSourceException::class.java) {
            QrcLyricsParser.decodeHex(encrypted(ByteArray(QrcLyricsParser.MAX_DECODED_BYTES + 1)), DEADLINE, signal())
        }
        assertThrows(LyricsSourceException::class.java) {
            QrcLyricsParser.decodeHex(encrypted(byteArrayOf(0xC3.toByte(), 0x28)), DEADLINE, signal())
        }
        assertThrows(LyricsSourceException::class.java) {
            QrcLyricsParser.parseWordLyrics(" ".repeat(QrcLyricsParser.MAX_DECODED_BYTES + 1), DEADLINE, signal())
        }
        assertThrows(LyricsSourceException::class.java) {
            QrcLyricsParser.decodeHex(encrypted(xml("[1,2]a(1,2)")).dropLast(16), DEADLINE, signal())
        }
    }

    @Test fun parserDecoderAndCipherRespectCancellationAndDeadline() {
        val cancellation = signal().apply { cancel() }
        assertThrows(CancellationException::class.java) { QrcLyricsParser.decodeHex(ORACLE_CIPHER, DEADLINE, cancellation) }
        assertThrows(CancellationException::class.java) { QrcLyricsParser.parseWordLyrics(ORACLE_XML, DEADLINE, cancellation) }
        assertThrows(CancellationException::class.java) { QrcProtocolCipher.crypt(ByteArray(8), true, DEADLINE, cancellation) }
        val error = assertThrows(LyricsSourceException::class.java) { QrcLyricsParser.parseAuxiliaryLyrics("[00:01.0]a", System.nanoTime() - 1L, signal()) }
        assertEquals(LyricsFailureReason.DEADLINE, error.reason)
    }

    private fun signal() = LyricsCancellationSignal()
    private fun bytes(hex: String) = ByteArray(hex.length / 2) { hex.substring(it * 2, it * 2 + 2).toInt(16).toByte() }
    private fun xml(content: String) = "<QrcInfos><LyricInfo LyricCount=\"1\"><Lyric_1 LyricType=\"1\" LyricContent=\"$content\"/></LyricInfo></QrcInfos>"

    private companion object {
        const val DEADLINE = Long.MAX_VALUE
        const val ORACLE_XML = "<QrcInfos><LyricInfo LyricCount=\"1\"><Lyric_1 LyricType=\"1\" LyricContent=\"[1000,900]A (1000,300)B(1400,500)\"/></LyricInfo></QrcInfos>"
        // Generated from synthetic text by the pinned upstream Go implementation, not a captured song response.
        const val ORACLE_CIPHER = "701056297771ad06d42dcdf2e21f0d5dd9fd95a45509a645c457a4c6b1f25e151e8cad1e55389e4864eb076a798a526bb2b222f5f093046449e19d5a53e3cc75f1ff8cf9896e6b63d2061a6ecb975938ebf03c52e25addd283dc1d648e3a197cb85baa9947c09225"
    }
}

internal fun encrypted(plain: String): String = encrypted(plain.toByteArray(Charsets.UTF_8))
internal fun encrypted(plain: ByteArray): String {
    val output = ByteArrayOutputStream()
    DeflaterOutputStream(output).use { it.write(plain) }
    val compressed = output.toByteArray()
    val padded = compressed.copyOf((compressed.size + 7) / 8 * 8)
    return QrcProtocolCipher.crypt(padded, false, Long.MAX_VALUE, LyricsCancellationSignal())
        .joinToString("") { "%02x".format(it.toInt() and 255) }
}
