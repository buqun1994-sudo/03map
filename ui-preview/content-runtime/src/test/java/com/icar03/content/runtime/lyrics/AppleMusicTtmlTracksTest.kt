package com.icar03.content.runtime.lyrics

import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class AppleMusicTtmlTracksTest {
    @Test fun partialWordTtmlAuxiliaryTracksKeepEarlierLinesAcrossTimingOffsetsAndJson() {
        val baseline = AppleMusicTtmlTracks.parse(ttml("""
            <p begin="1s" end="2s">第一句<span ttm:role="x-translation">旧第一句</span><span ttm:role="x-roman">di yi ju</span></p>
            <p begin="3s" end="4s">第二句<span ttm:role="x-translation">旧第二句</span><span ttm:role="x-roman">di er ju</span></p>
        """), LyricsCancellationSignal()).applyTo(candidate(), includeWords = false)!!
        val enhanced = AppleMusicTtmlTracks.parse(ttml("""
            <p begin="1.3s" end="2.3s"><span begin="1.3s" end="2.3s">第一句</span><span ttm:role="x-translation">新第一句</span><span ttm:role="x-roman">fresh first</span></p>
            <p begin="3.3s" end="4.3s"><span begin="3.3s" end="4.3s">第二句</span></p>
        """), LyricsCancellationSignal()).applyTo(baseline, includeWords = true, preserveBase = true)!!

        assertEquals(baseline.lyrics, enhanced.lyrics)
        assertEquals(baseline.candidateSnapshot(), enhanced.candidateSnapshot())
        assertEquals(listOf("fresh first", "di er ju"), LrcParser.parse(enhanced.romanizedLyrics).map { it.text })
        val rendered = enhanced.timedLines()
        assertEquals(listOf(1_300L, 3_300L), rendered.map { it.timeMs })
        assertEquals(listOf("新第一句", "旧第二句"), rendered.map { it.translation })
        assertEquals(listOf("fresh first", "di er ju"), rendered.map { it.romanization })
        assertTrue(rendered.all { it.words.isNotEmpty() })
        val restored = LyricsResult.fromJson(JSONObject(enhanced.toJson().toString()))
        assertEquals(enhanced, restored)
        assertEquals(rendered, restored.timedLines())
    }

    @Test fun ttmlAxisKeepsSeparateAuxiliaryAndWordFactsEvenWhenLegacyLineAxisDiffers() {
        val result = candidate().copy(
            lyrics = "[00:00.900]第一句\n[00:02.900]第二句",
            translatedLyrics = "[00:01.300]译文一\n[00:03.300]译文二",
            romanizedLyrics = "[00:01.300]di yi ju\n[00:03.300]di er ju",
            wordLyrics = "[1050,900](1050,900,0)第一句\n[3050,900](3050,900,0)第二句",
            ttmlLyrics = ttml("<p begin=\"1s\" end=\"2s\">第一句</p><p begin=\"3s\" end=\"4s\">第二句</p>"),
        )
        val lines = result.timedLines()
        assertEquals(listOf(1_000L, 3_000L), lines.map { it.timeMs })
        assertEquals(listOf("译文一", "译文二"), lines.map { it.translation })
        assertEquals(listOf("di yi ju", "di er ju"), lines.map { it.romanization })
        assertEquals(listOf(1_050L, 3_050L), lines.map { it.words.single().startTimeMs })
        assertEquals(result.romanizedLyrics, LyricsResult.fromJson(result.toJson()).romanizedLyrics)
    }

    private fun candidate() = LyricsResult(source = SOURCE_APPLE_MUSIC, sourceId = "17",
        candidateTrack = "Fixture Song", candidateArtist = "Fixture Artist", candidateAlbum = "Fixture Album", durationMs = 200_000L)

    private fun ttml(body: String) = """
        <tt xmlns="http://www.w3.org/ns/ttml" xmlns:ttm="http://www.w3.org/ns/ttml#metadata">
          <body><div>$body</div></body>
        </tt>
    """.trimIndent()
}
