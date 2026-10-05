package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.text.LineBreaker
import android.text.Layout
import android.text.StaticLayout
import android.text.TextPaint
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import kotlin.math.abs

@RunWith(RobolectricTestRunner::class)
@Config(manifest = Config.NONE, sdk = [28, 34])
@GraphicsMode(GraphicsMode.Mode.NATIVE)
class LyricParagraphLayoutTest {
    private val metrics = LyricMetrics(40f, 48f, 22f, 20f, 14f, 4f, 3f, 0f)
    private val assets = RuntimeEnvironment.getApplication().assets
    private val face = lyricTypeface(assets)
    private val cjk = lyricCjkTypeface(assets)
    private val text = "这是用来验证平衡断行效果的句子"

    @Test fun balancedWrappingAvoidsTheOldShortTailAndKeepsFittingTextOnOneLine() {
        val line = LyricLine(1_000L, text)
        val row = prepareLyricRow(line, 624, metrics, face, cjk)
        val layout = row.tracks.single().layout
        val old = oldLayout(layout)
        assertEquals(2, old.lineCount)
        assertEquals(old.lineCount, layout.lineCount)
        fun difference(body: StaticLayout) = abs(body.getLineWidth(0) - body.getLineWidth(1))
        assertTrue("native balancing reduces a nearly full line followed by a tiny tail", difference(layout) < difference(old))
        assertTrue("both balanced lines contain a meaningful part of the body", (0..1).all {
            layout.getLineEnd(it) - layout.getLineStart(it) >= 5
        })
        assertEquals(text, layout.text.toString())
        val short = prepareLyricRow(line.copy(text = "合成短句"), 624, metrics, face, cjk)
        assertEquals(1, short.tracks.single().layout.lineCount)
        saveComparison(line, row, old)
    }

    @Test fun wrappedLinesUseNaturalLeadingWhileSourceSentencesKeepTheirOwnPadding() {
        val source = LyricLine(1_000L, "合成上行\n合成下行", endTimeMs = 4_000L)
        val row = prepareLyricRow(source, 624, metrics, face, cjk)
        val layout = row.tracks.single().layout
        val old = oldLayout(layout)
        assertEquals(2, layout.lineCount)
        assertEquals(source.text.indexOf('\n') + 1, layout.getLineStart(1))
        assertEquals(1f, layout.spacingMultiplier, 0f)
        assertTrue("same-sentence baseline distance removes the former 30% extra", layout.getLineBaseline(1) - layout.getLineBaseline(0) <
            old.getLineBaseline(1) - old.getLineBaseline(0))
        assertEquals("sentence padding is separate from wrapped-line leading", 28, row.height - layout.height)
        assertEquals(4_000L, source.endTimeMs)
        assertTrue(layout.getLineTop(1) >= layout.getLineBottom(0))
    }

    @Test fun nativeBreaksRespectPunctuationGraphemesAndExplicitSourceParagraphs() {
        val source = LyricLine(1_000L, "合成歌词，验证标点。继续观察👩🏽‍🚀组合字符与e\u0301的完整显示。\nEnglish words remain readable.")
        val row = prepareLyricRow(source, 320, metrics, face, cjk)
        val layout = row.tracks.single().layout
        val boundaries = lyricGraphemeBoundaries(source.text).toSet()
        assertTrue(layout.lineCount > 2)
        for (index in 0 until layout.lineCount) {
            assertTrue("a native line starts on a whole grapheme", layout.getLineStart(index) in boundaries)
            assertTrue("a native line ends on a whole grapheme", layout.getLineEnd(index) in boundaries)
            val fragment = source.text.substring(layout.getLineStart(index), layout.getLineEnd(index)).trimStart()
            assertFalse("closing punctuation cannot be stranded at the start of a wrapped line", fragment.firstOrNull()?.let { it in "，。！？、）】" } == true)
        }
        assertTrue((0 until layout.lineCount).any { layout.getLineStart(it) == source.text.indexOf('\n') + 1 })
        assertEquals(source.text, layout.text.toString())
    }

    @Test fun workerTilesMatchTheMeasuredAtlasForEveryTrackAndVoiceWithoutFrameRelayout() {
        val source = LyricLine(1_000L, text, translation = "Synthetic translation with enough words to wrap naturally",
            romanization = "synthetic romanization for a complete paragraph",
            words = listOf(LyricWord(1_000L, 4_000L, text)), endTimeMs = 4_000L,
            backgroundWords = listOf(LyricWord(1_500L, 4_000L, "合成背景歌词同样需要换行")))
        for (side in listOf(LyricSide.Unspecified, LyricSide.Leading, LyricSide.Trailing)) {
            val line = source.copy(side = side)
            val row = prepareLyricRow(line, 544, metrics, face, cjk, 48)
            val tracks = row.tracks
            assertEquals(4, tracks.size)
            val starts = tracks.map { track -> (0 until track.layout.lineCount).map(track.layout::getLineStart) }
            val height = row.height
            val cache = LyricInkCache(listOf(row), metrics, 1_600f)
            val window = addresses(row)
            val slices = cache.prepare(window, setOf(0), 0, allSharp = true)
            for (slice in slices) {
                val ink = slice.sharp!!
                val expected = Bitmap.createBitmap(ink.bitmap.width, ink.bitmap.height, Bitmap.Config.ARGB_8888)
                Canvas(expected).apply {
                    translate(-ink.bounds.left, -ink.bounds.top)
                    clipRect(ink.bounds)
                    slice.track.layout.draw(this)
                }
                assertTrue("worker glyphs and baselines match the document: side=$side track=${slice.address.track} line=${slice.visual.index}", expected.sameAs(ink.bitmap))
            }
            val count = cache.rasterizations
            for (current in listOf(emptySet(), setOf(0), emptySet())) {
                LyricInkPainter(metrics).draw(Canvas(Bitmap.createBitmap(640, 1_600, Bitmap.Config.ARGB_8888)),
                    slices, listOf(row), floatArrayOf(0f), cache, 120f, current, 0,
                    LyricsState(lines = listOf(line), timelineReady = true, activeIndex = if (current.isEmpty()) -1 else 0),
                    10_000L, false)
                assertEquals(height, row.height)
                assertEquals(starts, tracks.map { track -> (0 until track.layout.lineCount).map(track.layout::getLineStart) })
                assertEquals("activation only draws existing geometry and ink", count, cache.rasterizations)
            }
            assertSame(source.words, line.words)
            assertSame(source.backgroundWords, line.backgroundWords)
        }
    }

    private fun oldLayout(source: StaticLayout): StaticLayout =
        StaticLayout.Builder.obtain(source.text, 0, source.text.length, TextPaint(source.paint), source.width)
            .setAlignment(source.alignment).setIncludePad(false).setLineSpacing(0f, 1.3f)
            .setBreakStrategy(LineBreaker.BREAK_STRATEGY_SIMPLE).build()

    private fun addresses(row: NativeLyricRow) = row.tracks.flatMapIndexed { track, body ->
        body.visualLines.map { LyricSliceAddress(0, track, it.index) }
    }

    private fun saveComparison(line: LyricLine, row: NativeLyricRow, old: StaticLayout) {
        val comparison = Bitmap.createBitmap(2_160, 360, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(comparison).apply { drawColor(Color.WHITE) }
        val labels = Paint(Paint.ANTI_ALIAS_FLAG).apply { color = Color.rgb(39, 48, 59); textSize = 22f }
        old.paint.color = labels.color
        canvas.drawText("原排版 · 当前句", 48f, 40f, labels)
        canvas.save(); canvas.translate(48f, 114f); old.draw(canvas); canvas.restore()
        val cache = LyricInkCache(listOf(row), metrics, 360f)
        for ((index, current) in listOf(setOf(0), emptySet<Int>()).withIndex()) {
            val x = (index + 1) * 720f
            canvas.drawText(if (current.isNotEmpty()) "平衡断行 · 当前句" else "平衡断行 · 非当前句", x + 48f, 40f, labels)
            val slices = cache.prepare(addresses(row), current, 0)
            canvas.save(); canvas.translate(x + 48f, 0f)
            LyricInkPainter(metrics).draw(canvas, slices, listOf(row), floatArrayOf(0f), cache, 100f, current, 0,
                LyricsState(lines = listOf(line), timelineReady = true), 10_000L, false)
            canvas.restore()
        }
        val directory = java.io.File("build/frames").apply { mkdirs() }
        java.io.File(directory, "lyrics-paragraph-sdk${android.os.Build.VERSION.SDK_INT}.png").outputStream().use {
            comparison.compress(Bitmap.CompressFormat.PNG, 100, it)
        }
    }
}
