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

@RunWith(RobolectricTestRunner::class)
@Config(manifest = Config.NONE, sdk = [28, 34])
@GraphicsMode(GraphicsMode.Mode.NATIVE)
class LyricParagraphLayoutTest {
    private val metrics = LyricMetrics(40f, 48f, 22f, 20f, 14f, 4f, 3f, 0f)
    private val assets = RuntimeEnvironment.getApplication().assets
    private val face = lyricTypeface(assets)
    private val cjk = lyricCjkTypeface(assets)
    private val text = "这是用来验证短尾修复效果的句子"

    @Test fun onlyTheVeryShortTailIsRepairedWithALongerLeadingLineAndFittingTextStaysOnOneLine() {
        val line = LyricLine(1_000L, text)
        val row = prepareLyricRow(line, 624, metrics, face, cjk)
        val layout = row.tracks.single().layout
        val natural = nativeLayout(layout)
        assertEquals(2, natural.lineCount)
        assertEquals(natural.lineCount, layout.lineCount)
        assertTrue("the fixture has a naturally very short tail", natural.getLineMax(1) < natural.getLineMax(0) * .4f)
        assertTrue("native tail repair moves a useful part of the body to the last line", layout.getLineMax(1) > natural.getLineMax(1))
        val leadingShare = layout.getLineMax(0) / (layout.getLineMax(0) + layout.getLineMax(1))
        assertTrue("a repaired CJK pair keeps a natural front-heavy 6:4 to 7:3 shape: $leadingShare", leadingShare in .6f.. .71f)
        assertEquals(text, layout.text.toString())
        val short = prepareLyricRow(line.copy(text = "合成短句"), 624, metrics, face, cjk)
        assertEquals(1, short.tracks.single().layout.lineCount)
        saveComparison(line, row, natural)
    }

    @Test fun ordinaryTwoAndThreeLineParagraphsKeepNativeFillInsteadOfBeingEqualized() {
        for (body in listOf("合成".repeat(10) + "句", "合成".repeat(17))) {
            val layout = prepareLyricRow(LyricLine(1_000L, body), 624, metrics, face, cjk).tracks.single().layout
            val natural = nativeLayout(layout)
            assertTrue(natural.lineCount in 2..3)
            assertTrue("the last line is already a useful natural remainder",
                natural.getLineMax(natural.lineCount - 1) >= natural.getLineMax(natural.lineCount - 2) * .4f)
            assertEquals(starts(natural), starts(layout))
            assertEquals(natural.height, layout.height)
            for (index in 0 until natural.lineCount) assertEquals(natural.getLineMax(index), layout.getLineMax(index), .001f)
            assertTrue("natural filling keeps the first line longer", layout.getLineMax(0) > layout.getLineMax(layout.lineCount - 1))
        }
    }

    @Test fun aLongParagraphRepairsOnlyItsFinalPairAndKeepsEveryEarlierWrap() {
        val body = "合成".repeat(20) + "句"
        val layout = prepareLyricRow(LyricLine(1_000L, body), 624, metrics, face, cjk).tracks.single().layout
        val natural = nativeLayout(layout)
        assertEquals(4, natural.lineCount)
        assertEquals(natural.lineCount, layout.lineCount)
        for (index in 0 until natural.lineCount - 1) assertEquals(natural.getLineStart(index), layout.getLineStart(index))
        for (index in 0 until natural.lineCount - 2) assertEquals(natural.getLineEnd(index), layout.getLineEnd(index))
        assertTrue(layout.getLineStart(3) < natural.getLineStart(3))
        val leadingShare = layout.getLineMax(2) / (layout.getLineMax(2) + layout.getLineMax(3))
        assertTrue("only the final repaired pair approaches 6:4 to 7:3: $leadingShare", leadingShare in .6f.. .71f)
        assertEquals(body, layout.text.toString())
    }

    @Test fun intentionalShortLinesAndBlankSourceParagraphsKeepTheirExplicitBreaks() {
        val intentional = "合成".repeat(6) + "句\n尾\n\n另一个短句\n"
        val layout = prepareLyricRow(LyricLine(1_000L, intentional), 624, metrics, face, cjk).tracks.single().layout
        assertEquals(starts(nativeLayout(layout)), starts(layout))
        assertEquals(intentional, layout.text.toString())
        val twoTails = "$text\n\n$text\n尾"
        val repaired = prepareLyricRow(LyricLine(1_000L, twoTails), 624, metrics, face, cjk).tracks.single().layout
        val natural = nativeLayout(repaired)
        assertEquals(natural.lineCount, repaired.lineCount)
        val paragraphStarts = listOf(0) + twoTails.indices.filter { twoTails[it] == '\n' }.map { it + 1 }
        assertTrue(starts(repaired).containsAll(paragraphStarts))
        assertEquals("the second paragraph is repaired independently", repaired.getLineEnd(0) - repaired.getLineStart(0),
            repaired.getLineEnd(repaired.getLineForOffset(text.length + 2)) - repaired.getLineStart(repaired.getLineForOffset(text.length + 2)))
        assertEquals(twoTails, repaired.text.toString())
    }

    @Test fun repairedLtrAndRtlPairsKeepTheirNativeLeadingTrailingAndCenterAnchors() {
        for (body in listOf(text, "אבגדהו ".repeat(6).trimEnd())) {
            val probe = prepareLyricRow(LyricLine(1_000L, body), 4_096, metrics, face, cjk).tracks.single().layout
            val width = (Layout.getDesiredWidth(probe.text, probe.paint) * .88f).toInt()
            for (alignment in listOf(Layout.Alignment.ALIGN_NORMAL, Layout.Alignment.ALIGN_OPPOSITE, Layout.Alignment.ALIGN_CENTER)) {
                val layout = lyricTextLayout(probe.text, TextPaint(probe.paint), width, alignment)
                val natural = nativeLayout(layout)
                assertEquals(2, natural.lineCount)
                assertTrue("the alignment fixture has a genuine soft-wrap short tail",
                    natural.getLineMax(1) < natural.getLineMax(0) * .4f)
                assertEquals(natural.lineCount, layout.lineCount)
                assertTrue("the tail is actually repaired for $alignment / $body", layout.getLineStart(1) < natural.getLineStart(1))
                for (index in 0 until layout.lineCount) {
                    assertEquals(natural.getParagraphDirection(index), layout.getParagraphDirection(index))
                    val rtl = layout.getParagraphDirection(index) == Layout.DIR_RIGHT_TO_LEFT
                    val anchor = when (alignment) {
                        Layout.Alignment.ALIGN_CENTER -> (layout.getLineLeft(index) + layout.getLineRight(index)) / 2f
                        Layout.Alignment.ALIGN_NORMAL -> if (rtl) layout.getLineRight(index) else layout.getLineLeft(index)
                        else -> if (rtl) layout.getLineLeft(index) else layout.getLineRight(index)
                    }
                    val expected = when (alignment) {
                        Layout.Alignment.ALIGN_CENTER -> width / 2f
                        Layout.Alignment.ALIGN_NORMAL -> if (rtl) width.toFloat() else 0f
                        else -> if (rtl) 0f else width.toFloat()
                    }
                    assertEquals("repair narrows the far edge without shifting the source anchor", expected, anchor, .6f)
                }
            }
        }
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
        val source = LyricLine(1_000L, "合成歌词，验证标点。继续观察👩🏽‍🚀组合字符与e\u0301的完整显示。\nEnglish words remain readable.\nالعربية سلام हिन्दी देवनागरी")
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
        assertTrue(starts(layout).containsAll(source.text.indices.filter { source.text[it] == '\n' }.map { it + 1 }))
        assertEquals(source.text, layout.text.toString())
    }

    @Test fun workerTilesMatchTheMeasuredAtlasForEveryTrackAndVoiceWithoutFrameRelayout() {
        val source = LyricLine(1_000L, text, translation = "Synthetic translation with enough words to wrap naturally",
            romanization = "synthetic romanization for a complete paragraph",
            words = listOf(LyricWord(1_000L, 4_000L, text)), endTimeMs = 4_000L,
            backgroundWords = listOf(LyricWord(1_500L, 4_000L, "合成背景歌词同样需要换行")))
        val unicode = "office e\u0301 👩🏽‍🚀 中文 אבג 123 سلام العربية हिन्दी देवनागरी"
        val sources = listOf(source, source.copy(text = unicode, words = listOf(LyricWord(1_000L, 4_000L, unicode))))
        for (sample in sources) for (side in listOf(LyricSide.Unspecified, LyricSide.Leading, LyricSide.Trailing)) {
            val line = sample.copy(side = side)
            val row = prepareLyricRow(line, 544, metrics, face, cjk, 48)
            val tracks = row.tracks
            assertEquals(4, tracks.size)
            assertEquals(sample.text, tracks.first().layout.text.toString())
            assertSame(sample.words, tracks.first().words)
            val reveals = tracks.first().visualLines.flatMap { it.reveals }
            assertFalse("the sample has genuine wrapped source-word fragments", reveals.isEmpty())
            assertTrue("wrapped reveal fragments retain the exact original source word", reveals
                .all { reveal -> sample.words.any { it === reveal.word } })
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
            assertSame(sample.words, line.words)
            assertSame(sample.backgroundWords, line.backgroundWords)
        }
    }

    @Test fun romanizationVisibilityRemovesOnlyItsMeasuredTrackAndPreservesTranslationAndWords() {
        val line = LyricLine(1_000L, "合成第一句", translation = "Synthetic translation", romanization = "he cheng di yi ju",
            words = listOf(LyricWord(1_000L, 2_000L, "合成第一句")),
            backgroundWords = listOf(LyricWord(1_500L, 2_500L, "背景歌词")))
        for (scale in listOf(1f, 3f)) {
            val sized = metrics.copy(main = metrics.main * scale, activeMain = metrics.activeMain * scale,
                translation = metrics.translation * scale, romanization = metrics.romanization * scale)
            val full = prepareLyricRow(line, 1_200, sized, face, cjk)
            val hidden = prepareLyricRow(line, 1_200, sized.copy(showRomanization = false), face, cjk)
            assertEquals(4, full.tracks.size)
            assertEquals(listOf(line.text, line.translation, "背景歌词"), hidden.tracks.map { it.layout.text.toString() })
            assertTrue("ordinary/full-screen row releases the romanization slot", hidden.height < full.height)
            assertSame(line.words, hidden.tracks.first().words)
            val originalOnly = prepareLyricRow(line, 1_200, sized.copy(showRomanization = false, showTranslation = false), face, cjk)
            assertEquals(listOf(line.text, "背景歌词"), originalOnly.tracks.map { it.layout.text.toString() })
            assertTrue(originalOnly.height < hidden.height)
            val romanizedOnly = prepareLyricRow(line, 1_200, sized.copy(showTranslation = false), face, cjk)
            assertEquals(listOf(line.text, line.romanization, "背景歌词"), romanizedOnly.tracks.map { it.layout.text.toString() })
            assertEquals(full.height, prepareLyricRow(line, 1_200, sized, face, cjk).height)
            saveRomanizationComparison(line, full, hidden, sized, scale)
        }
        assertEquals("he cheng di yi ju", line.romanization)
        assertEquals("Synthetic translation", line.translation)
    }

    private fun saveRomanizationComparison(line: LyricLine, shown: NativeLyricRow, hidden: NativeLyricRow,
        sized: LyricMetrics, scale: Float) {
        val frame = Bitmap.createBitmap(2_400, maxOf(shown.height, hidden.height) + 170, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(frame).apply { drawColor(Color.WHITE) }
        val labels = Paint(Paint.ANTI_ALIAS_FLAG).apply {
            color = Color.rgb(39, 48, 59); textSize = 28f; typeface = cjk
        }
        for ((index, row) in listOf(shown, hidden).withIndex()) {
            val currentMetrics = if (index == 0) sized else sized.copy(showRomanization = false)
            val cache = LyricInkCache(listOf(row), currentMetrics, frame.height.toFloat())
            val slices = cache.prepare(addresses(row), setOf(0), 0)
            canvas.save()
            canvas.translate(index * 1_200f + 24f, 0f)
            canvas.drawText(if (index == 0) "注音开启" else "注音关闭", 0f, 44f, labels)
            LyricInkPainter(currentMetrics).draw(canvas, slices, listOf(row), floatArrayOf(0f), cache, 100f,
                setOf(0), 0, LyricsState(lines = listOf(line), timelineReady = true, positionMs = 1_750L), 10_000L, false)
            canvas.restore()
        }
        val directory = java.io.File("build/frames").apply { mkdirs() }
        java.io.File(directory, "lyrics-romanization-sdk${android.os.Build.VERSION.SDK_INT}-${scale.toInt()}x.png").outputStream().use {
            assertTrue(frame.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
    }

    private fun starts(layout: StaticLayout) = (0 until layout.lineCount).map(layout::getLineStart)

    private fun nativeLayout(source: StaticLayout): StaticLayout =
        StaticLayout.Builder.obtain(source.text, 0, source.text.length, TextPaint(source.paint), source.width)
            .setAlignment(source.alignment).setIncludePad(false).setLineSpacing(0f, 1f)
            .setBreakStrategy(LineBreaker.BREAK_STRATEGY_SIMPLE).build()

    private fun oldLayout(source: StaticLayout): StaticLayout =
        StaticLayout.Builder.obtain(source.text, 0, source.text.length, TextPaint(source.paint), source.width)
            .setAlignment(source.alignment).setIncludePad(false).setLineSpacing(0f, 1.3f)
            .setBreakStrategy(LineBreaker.BREAK_STRATEGY_SIMPLE).build()

    private fun addresses(row: NativeLyricRow) = row.tracks.flatMapIndexed { track, body ->
        body.visualLines.map { LyricSliceAddress(0, track, it.index) }
    }

    private fun saveComparison(line: LyricLine, row: NativeLyricRow, natural: StaticLayout) {
        val comparison = Bitmap.createBitmap(2_160, 360, Bitmap.Config.ARGB_8888)
        val canvas = Canvas(comparison).apply { drawColor(Color.WHITE) }
        val labels = Paint(Paint.ANTI_ALIAS_FLAG).apply { color = Color.rgb(39, 48, 59); textSize = 22f }
        natural.paint.color = labels.color
        canvas.drawText("自然填充 · 原生换行", 48f, 40f, labels)
        canvas.save(); canvas.translate(48f, 114f); natural.draw(canvas); canvas.restore()
        val cache = LyricInkCache(listOf(row), metrics, 360f)
        for ((index, current) in listOf(setOf(0), emptySet<Int>()).withIndex()) {
            val x = (index + 1) * 720f
            canvas.drawText(if (current.isNotEmpty()) "短尾修复 · 当前句" else "短尾修复 · 非当前句", x + 48f, 40f, labels)
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
