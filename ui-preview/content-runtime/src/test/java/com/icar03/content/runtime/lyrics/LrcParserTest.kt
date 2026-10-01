package com.icar03.content.runtime.lyrics

import org.junit.Assert.*
import org.junit.Test

class LrcParserTest {
    @Test fun parsesMultipleStampsAndEnhancedTimingWhileDroppingCredits() {
        val lines = LrcParser.parse("""
            [ar:Artist]
            [00:00.01]作词：作者
            [01:00.1][00:05.25]<00:05.250>一<00:05.800>句
            [00:05.250]一句
            [00:02:009]开始
            [00:03.123]
        """.trimIndent())
        assertEquals(listOf(2_009L, 5_250L, 60_100L), lines.map { it.timeMs })
        assertEquals(listOf("开始", "一句", "一句"), lines.map { it.text })
    }

    @Test fun translationsUseClosestTimestampAndOnlyOneOriginalPerTranslation() {
        val lines = LrcParser.align(
            "[00:01.000]甲\n[00:01.100]乙\n[00:03.000]丙",
            "[00:01.080]second\n[00:01.020]first\n[00:03.121]too far"
        )
        assertEquals(listOf("first", "second", ""), lines.map { it.translation })
        val one = LrcParser.align("[00:01.00]甲\n[00:01.05]乙", "[00:01.04]only")
        assertEquals(listOf("", "only"), one.map { it.translation })
    }

    @Test fun plainOrCreditOnlyBodiesDoNotPretendToBeSynchronizedLyrics() {
        assertTrue(LrcParser.parse("plain song words").isEmpty())
        assertTrue(LrcParser.parse("[00:01.0]制作人：名字\n[00:02.0]").isEmpty())
    }
}
