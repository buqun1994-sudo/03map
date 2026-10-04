package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Rect
import android.graphics.Typeface
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@Config(manifest = Config.NONE, sdk = [28, 34])
@GraphicsMode(GraphicsMode.Mode.NATIVE)
class LyricSpeakerLayoutRenderTest {
    private val metrics = LyricMetrics(40f, 48f, 22f, 20f, 14f, 4f, 3f, 0f)
    private val face = Typeface.create("sans-serif", Typeface.BOLD)
    private val text = "长句换行以后仍然要看出声部属于哪一边"
    private val line = LyricLine(1_000L, text, translation = "这句译文沿着同一声部排版",
        romanization = "synthetic romanization", words = listOf(LyricWord(1_000L, 4_000L, text)))

    @Test fun fullWidthLongTextStillHasDifferentPhysicalLanesAfterWrapping() {
        val leading = prepareLyricRow(line.copy(side = LyricSide.Leading), 400, metrics, face)
        val trailing = prepareLyricRow(line.copy(side = LyricSide.Trailing), 400, metrics, face)
        assertTrue(leading.tracks.first().layout.lineCount >= 2)
        assertEquals(leading.height, trailing.height)
        assertTrue(leading.tracks.all { it.left == 30f && it.layout.width == 310 })
        assertTrue(trailing.tracks.all { it.left == 60f && it.layout.width == 310 })
        for (cold in listOf(false, true)) {
            val left = bounds(render(line.copy(side = LyricSide.Leading), leading, cold))
            val right = bounds(render(line.copy(side = LyricSide.Trailing), trailing, cold))
            assertTrue("wrapped trailing voice retains its physical offset in cold=$cold", right.left >= left.left + 20)
            assertTrue("long lines preserve the opposite gap in cold=$cold", right.right >= left.right + 20)
            assertTrue(left.left >= 28 && left.right <= 342)
            assertTrue(right.left >= 58 && right.right <= 372)
        }
    }

    @Test fun legacyChorusUsesTheLeftLaneAndUnspecifiedRowsRetainTheirOriginalWidth() {
        val chorusLine = line.copy(side = LyricSide.Center)
        val chorus = prepareLyricRow(chorusLine, 400, metrics, face)
        val leftLine = line.copy(side = LyricSide.Leading)
        val left = prepareLyricRow(leftLine, 400, metrics, face)
        assertTrue(chorus.tracks.all { it.left == 30f && it.layout.width == 310 })
        assertEquals(left.mainPivotX, chorus.mainPivotX, 0f)
        for (cold in listOf(false, true)) {
            assertTrue("chorus and left voice draw identically, cold=$cold",
                render(chorusLine, chorus, cold).sameAs(render(leftLine, left, cold)))
        }
        val ordinary = prepareLyricRow(line, 400, metrics, face)
        assertTrue(ordinary.tracks.all { it.left == 0f && it.layout.width == 400 })
        assertEquals(0 to 0, lyricVoiceInsets(LyricSide.Unspecified, 400, 48f))
        assertEquals(96 to 192, lyricVoiceInsets(LyricSide.Leading, 8_000, 48f))
        assertEquals(192 to 96, lyricVoiceInsets(LyricSide.Trailing, 8_000, 48f))
    }

    private fun render(source: LyricLine, row: NativeLyricRow, cold: Boolean): Bitmap {
        val rows = listOf(row)
        val tops = floatArrayOf(0f)
        val cache = LyricInkCache(rows, metrics, 600f)
        val window = row.tracks.flatMapIndexed { track, body -> body.visualLines.map { LyricSliceAddress(0, track, it.index) } }
        val slices = if (cold) emptyList() else cache.prepare(window, setOf(0), 0, allSharp = true)
        return Bitmap.createBitmap(400, 600, Bitmap.Config.ARGB_8888).also { bitmap ->
            LyricInkPainter(metrics).draw(Canvas(bitmap), slices, rows, tops, cache, 120f, setOf(0), 0,
                LyricsState(lines = listOf(source), activeIndex = 0, scrollIndex = 0, timelineReady = true), 10_000L, true,
                fallback = if (cold) window else emptyList())
        }
    }

    private fun bounds(bitmap: Bitmap): Rect {
        var left = bitmap.width; var right = -1; var top = bitmap.height; var bottom = -1
        for (y in 0 until bitmap.height) for (x in 0 until bitmap.width) if (bitmap.getPixel(x, y) ushr 24 > 32) {
            left = minOf(left, x); right = maxOf(right, x); top = minOf(top, y); bottom = maxOf(bottom, y)
        }
        assertTrue("native Android draw contains real ink", right >= left)
        return Rect(left, top, right + 1, bottom + 1)
    }
}
