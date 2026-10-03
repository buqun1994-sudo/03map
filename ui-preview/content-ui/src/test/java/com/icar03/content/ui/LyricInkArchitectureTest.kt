package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.LinearGradient
import android.graphics.Paint
import android.graphics.RectF
import android.graphics.Shader
import android.graphics.Typeface
import android.text.Layout
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import kotlin.math.roundToInt

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28, 34])
class LyricInkArchitectureTest {
    private val metrics = LyricMetrics(40f, 48f, 22f, 20f, 14f, 4f, 3f, 2.5f, 2f)
    private val face = Typeface.create("sans-serif", Typeface.BOLD)

    @Test fun oneVisualCharacterDoesNotMeanOneUtf16CodeUnit() {
        listOf("e\u0301", "👨‍👩‍👧‍👦", "👩🏽‍🚀", "🇨🇳", "1️⃣", "𠮷").forEach { text ->
            assertArrayEquals(text, intArrayOf(0, text.length), lyricGraphemeBoundaries(text))
        }
        assertArrayEquals(intArrayOf(0, 1, 2), lyricGraphemeBoundaries("优雅"))
    }

    @Test fun riseScaleAndGlowShareOneZeroAtBothEndsEnvelopeWithoutRetiming() {
        val word = LyricWord(1_000L, 3_000L, "优雅")
        assertEquals(0f, lyricCharacterPulse(word, 0f, .5f, -1L), 0f)
        assertEquals(0f, lyricCharacterPulse(word, 0f, .5f, 1_000L), 0f)
        assertEquals(1f, lyricCharacterPulse(word, 0f, .5f, 1_500L), .0001f)
        assertEquals(0f, lyricCharacterPulse(word, 0f, .5f, 2_000L), 0f)
        assertEquals(0f, lyricCharacterPulse(word, .5f, 1f, 1_500L), 0f)
        assertEquals(1f, lyricCharacterPulse(word, .5f, 1f, 2_500L), .0001f)
        assertEquals(0f, lyricCharacterPulse(word, .5f, 1f, 3_000L), 0f)
        assertEquals(0f, lyricCharacterPulse(word.copy(endTimeMs = 1_000L), 0f, 1f, 1_000L), 0f)
        assertEquals(0f, lyricCharacterPulse(LyricWord(1_000L, 1_001L, "短词"), .5f, 1f, 1_001L), 0f)
        assertEquals(0f, lyricCharacterPulse(word, .5f, .5f, 2_000L), 0f)
        assertEquals(1_000L, word.startTimeMs); assertEquals(3_000L, word.endTimeMs)
        val peak = lyricCharacterPulse(word, .5f, 1f, 2_500L)
        assertEquals(-2.5f, -metrics.lift * peak, .0001f)
        assertEquals(1.045f, 1f + LyricVisuals.SCALE_GAIN * peak, .0001f)
        assertEquals(.28f, LyricVisuals.GLOW_ALPHA * peak * peak, .0001f)
        // Seeking backwards reproduces a pure sample, not accumulated per-character Animator state.
        assertEquals(peak, lyricCharacterPulse(word, .5f, 1f, 2_500L), 0f)
    }

    @Test fun currentPresentationStartsBeforeTheFirstRealSingingWord() {
        val lines = listOf(LyricLine(0L, "上一句"),
            LyricLine(2_000L, "当前句", words = listOf(LyricWord(2_500L, 4_000L, "当前句"))))
        val lyrics = LyricsState(lines = lines, timelineReady = true, positionMs = 2_100L,
            scrollIndex = 1, activeIndex = -1)
        assertEquals(setOf(1), lyricEmphasizedRows(lyrics))
        assertEquals(0f, lyricWordFraction(lines[1].words.single(), lyrics.positionMs), 0f)
        assertEquals(emptySet<Int>(), lyricEmphasizedRows(lyrics.copy(gapStartMs = 1_000L, gapEndMs = 2_500L)))
        assertEquals(emptySet<Int>(), lyricEmphasizedRows(lyrics.copy(timelineReady = false)))
        assertEquals(emptySet<Int>(), lyricEmphasizedRows(lyrics.copy(durationMs = 2_100L)))
    }

    @Test fun scrollUsesBoundedVisualLineSlicesAndNeverWholeParagraphTextures() {
        val body = (0 until 600).map { LyricLine(it * 2_000L, "合成有界歌词第 $it 行") }
        val rows = body.map { prepareLyricRow(it, 544, metrics, face) }
        val flow = lyricFlow(rows.map { it.height }, emptyList(), 64f)
        val offset = -flow.lineTops[300] + 400f
        val window = lyricSliceWindow(rows, flow.lineTops, offset, 1080f)
        assertTrue(window.size in 10..60)
        assertTrue(window.all { it.row in 270..330 })
        val long = prepareLyricRow(LyricLine(0L, "超长段落合成完整正文".repeat(200)), 200, metrics, face)
        assertTrue(long.height > 10_000)
        assertTrue(long.tracks.first().visualLines.all { it.bottom - it.top < 100 })
    }

    @Test fun featherFrontDoesNotJumpAtTheFirstOrLastGlyphBoundary() {
        val reveal = LyricReveal(LyricWord(1_000L, 3_000L, "边界"), 0f, 100f, false, 0f, 100f, 16f)
        val paint = android.graphics.Paint().apply { shader = reveal.gradient }
        fun sample(time: Long, x: Int): Int {
            reveal.sample(time)
            val image = Bitmap.createBitmap(100, 1, Bitmap.Config.ARGB_8888)
            Canvas(image).drawRect(0f, 0f, 100f, 1f, paint)
            return image.getPixel(x, 0) ushr 24
        }
        assertTrue(kotlin.math.abs(sample(1_137L, 0) - sample(1_139L, 0)) < 5)
        assertTrue(kotlin.math.abs(sample(2_861L, 99) - sample(2_863L, 99)) < 5)
    }

    @Test fun completeRealWordPiecesThroughLigaturesAndBidiExactlyRecoverTheShapedAtlas() {
        val realFace = lyricTypeface(org.robolectric.RuntimeEnvironment.getApplication().assets)
        listOf(listOf("of", "fice"), listOf("le", "t", "ter"), listOf("ABC ", "אבג ", "123 ", "سلام"),
            listOf("A\u202Bאבג 123 - abc\u202C Z")).forEach { atoms ->
            val text = atoms.joinToString("")
            val words = atoms.mapIndexed { index, atom -> LyricWord(1_000L + index * 500L, 1_500L + index * 500L, atom) }
            val lines = listOf(LyricLine(1_000L, text, words = words))
            val rows = lines.map { prepareLyricRow(it, 200, metrics, realFace) }
            val tops = floatArrayOf(0f)
            val cache = LyricInkCache(rows, metrics, 1080f)
            val slices = cache.prepare(lyricSliceWindow(rows, tops, 300f, 1080f), setOf(0), 0)
            val actual = Bitmap.createBitmap(200, 1080, Bitmap.Config.ARGB_8888)
            LyricInkPainter(metrics).draw(Canvas(actual), slices, rows, tops, cache, 300f, setOf(0), 0,
                LyricsState(lines = lines, activeIndex = 0, scrollIndex = 0, timelineReady = true), 10_000L, true)
            val expected = Bitmap.createBitmap(200, 1080, Bitmap.Config.ARGB_8888)
            val canvas = Canvas(expected)
            val paint = android.graphics.Paint(android.graphics.Paint.FILTER_BITMAP_FLAG)
            slices.forEach { slice ->
                val ink = slice.sharp!!
                val y = 300f + slice.track.top
                val saved = canvas.save(); canvas.translate(0f, y)
                cache.edgeAt(y, 1f, (slice.visual.top + slice.visual.bottom) / 2f)
                paint.shader = ink.shader; canvas.drawRect(ink.bounds, paint)
                canvas.restoreToCount(saved)
            }
            fun pixels(bitmap: Bitmap) = IntArray(bitmap.width * bitmap.height).also {
                bitmap.getPixels(it, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
            }
            if (!pixels(expected).contentEquals(pixels(actual))) {
                val directory = java.io.File("build/frames").apply { mkdirs() }
                listOf("glyph-complete-reference" to expected, "glyph-complete-actual" to actual).forEach { (name, image) ->
                    java.io.File(directory, "$name.png").outputStream().use { image.compress(Bitmap.CompressFormat.PNG, 100, it) }
                }
                slices.forEach { slice -> println("line=${slice.visual.index}, start=${slice.track.layout.getLineStart(slice.visual.index)}, end=${slice.track.layout.getLineEnd(slice.visual.index)}, glyphs=${slice.visual.glyphs.map { it.bounds }}, reveals=${slice.visual.reveals.map { listOf(it.left, it.right, it.rtl, it.fraction) }}") }
            }
            assertArrayEquals("all real timing pieces must leave no dark split or lost run: $text", pixels(expected), pixels(actual))
            if (atoms.size > 1 && text == "office") assertTrue(slices.flatMap { it.visual.glyphs }.any { !it.movable })
        }
    }

    @Test fun rtlInactiveScalingKeepsItsRealParagraphEdgeInPreparedAndColdDraws() {
        val realFace = lyricTypeface(org.robolectric.RuntimeEnvironment.getApplication().assets)
        val width = 200
        val height = 400
        val scale = metrics.main / metrics.activeMain
        fun pixels(bitmap: Bitmap) = IntArray(bitmap.width * bitmap.height).also {
            bitmap.getPixels(it, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
        }
        listOf(LyricLine(1_000L, "אבג"), LyricLine(1_000L, "אבג", side = LyricSide.Trailing)).forEach { line ->
            val expectedPivot = if (line.side == LyricSide.Trailing) 0f else width.toFloat()
            val rows = listOf(prepareLyricRow(line, width, metrics, realFace))
            val track = rows.single().tracks.single()
            val visual = track.visualLines.single()
            assertEquals(Layout.DIR_RIGHT_TO_LEFT, track.layout.getParagraphDirection(0))
            assertEquals(expectedPivot, visual.pivotX, 0f)
            val anchor = if (line.side == LyricSide.Trailing) track.layout.getLineLeft(0) else track.layout.getLineRight(0)
            assertEquals("RTL leading/trailing anchor is its true physical edge", expectedPivot, anchor, .001f)
            assertEquals("inactive scale preserves that edge", anchor,
                visual.pivotX + (anchor - visual.pivotX) * scale, .001f)
            val tops = floatArrayOf(0f)
            val cache = LyricInkCache(rows, metrics, height.toFloat())
            val window = listOf(LyricSliceAddress(0, 0, 0))
            // Reuse the sharp atlas to isolate alignment from inactive blur; no tolerance.
            val slices = cache.prepare(window, emptySet(), 0, allSharp = true)
            val sharp = slices.single().sharp!!
            assertTrue("the Hebrew fixture must contain real source ink", sharp.hasInk.any { it })
            val lyrics = LyricsState(lines = listOf(line), scrollIndex = 0, activeIndex = -1, timelineReady = true)
            val paintAlpha = ((if (lyrics.timed) LyricVisuals.NEAR_ALPHA else .92f) * track.alpha * 255).roundToInt()
            val offset = 100f
            val y = offset + track.top
            val pivotY = (visual.top + visual.bottom) / 2f
            val actual = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            val painter = LyricInkPainter(metrics)
            painter.draw(Canvas(actual), slices, rows, tops, cache, offset, emptySet(), 0, lyrics, 0L, true)
            val expected = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            Canvas(expected).apply {
                translate(0f, y); scale(scale, scale, expectedPivot, pivotY)
                cache.edgeAt(y, scale, pivotY)
                drawRect(sharp.bounds, Paint(Paint.FILTER_BITMAP_FLAG).apply { shader = sharp.shader; alpha = paintAlpha })
            }
            assertArrayEquals("inactive prepared RTL keeps the original baseline atlas at its edge: ${line.side}",
                pixels(expected), pixels(actual))
            val cold = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            painter.draw(Canvas(cold), emptyList(), rows, tops, cache, offset, emptySet(), 0, lyrics, 0L, true, fallback = window)
            val expectedCold = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            Canvas(expectedCold).apply {
                translate(0f, y); scale(scale, scale, expectedPivot, pivotY)
                clipRect(0f, visual.top.toFloat(), width.toFloat(), visual.bottom.toFloat())
                val textPaint = track.layout.paint
                val oldColor = textPaint.color; val oldAlpha = textPaint.alpha
                textPaint.color = Color.WHITE; textPaint.alpha = paintAlpha
                track.layout.draw(this)
                textPaint.color = oldColor; textPaint.alpha = oldAlpha
            }
            assertArrayEquals("inactive cold RTL uses the same correct physical edge: ${line.side}",
                pixels(expectedCold), pixels(cold))
            val mixed = prepareLyricRow(line.copy(text = "אבג\nABC"), width, metrics, realFace)
            assertEquals("each paragraph has its own precompiled alignment pivot",
                if (line.side == LyricSide.Trailing) listOf(0f, width.toFloat()) else listOf(width.toFloat(), 0f),
                mixed.tracks.single().visualLines.map { it.pivotX })
        }
    }

    @Test fun colourDetectionUsesRasterRgbaInsteadOfSupplementaryHanCodepointRanges() {
        val glyph = LyricGlyph(android.graphics.RectF(0f, 0f, 20f, 20f), null)
        val visual = LyricVisualLine(0, 0, 20, listOf(glyph), emptyList())
        val edge = android.graphics.LinearGradient(0f, 0f, 0f, 20f, android.graphics.Color.WHITE,
            android.graphics.Color.WHITE, android.graphics.Shader.TileMode.CLAMP)
        val white = Bitmap.createBitmap(20, 20, Bitmap.Config.ARGB_8888).apply { eraseColor(android.graphics.Color.WHITE) }
        val coloured = white.copy(Bitmap.Config.ARGB_8888, true).apply { setPixel(10, 10, android.graphics.Color.RED) }
        assertFalse(LyricInk(white, glyph.bounds, edge, visual).colouredGlyphs.single())
        assertTrue(LyricInk(coloured, glyph.bounds, edge, visual).colouredGlyphs.single())
        assertArrayEquals(intArrayOf(0, 3, 4), lyricMotionBoundaries("fi\u0301x"))
    }

    @Test fun blankCellInkPresenceUsesRealRasterAlphaEvenWhenMotionIsDisabled() {
        val bounds = RectF(0f, 0f, 12f, 4f)
        val glyphs = (0..2).map { index ->
            LyricGlyph(RectF(index * 4f, 0f, (index + 1) * 4f, 4f), null, movable = false)
        }
        val visual = LyricVisualLine(0, 0, 4, glyphs, emptyList())
        val edge = LinearGradient(0f, 0f, 0f, 4f, Color.WHITE, Color.WHITE, Shader.TileMode.CLAMP)
        val image = Bitmap.createBitmap(12, 4, Bitmap.Config.ARGB_8888).apply {
            setPixel(1, 1, Color.argb(64, 255, 255, 255))
            setPixel(5, 1, Color.argb(64, 255, 0, 0))
            setPixel(9, 1, Color.argb(0, 255, 0, 0))
        }
        val ink = LyricInk(image, bounds, edge, visual)
        assertArrayEquals(booleanArrayOf(true, true, false), ink.hasInk)
        assertArrayEquals(booleanArrayOf(false, true, false), ink.colouredGlyphs)
        val soft = LyricInk(image, bounds, edge, visual, dynamic = false)
        assertArrayEquals("soft/glow masks do not scan the source raster", BooleanArray(3), soft.hasInk)
        assertArrayEquals(BooleanArray(3), soft.colouredGlyphs)
        assertArrayEquals(BooleanArray(3), soft.clearMotionBoundary)

        val word = LyricWord(1_000L, 1_500L, "A B")
        val rows = listOf(prepareLyricRow(LyricLine(1_000L, word.text, words = listOf(word)), 200, metrics, face))
        val cache = LyricInkCache(rows, metrics, 1080f)
        val slice = cache.prepare(listOf(LyricSliceAddress(0, 0, 0)), setOf(0), 0).single()
        val sharp = slice.sharp!!
        val blank = slice.visual.glyphs.indices.single { !slice.visual.glyphs[it].movable }
        // Textual blanks can own adjacent AA/overhang; only the actual source alpha is authoritative.
        val glyph = slice.visual.glyphs[blank]
        val bitmap = sharp.bitmap
        val left = (kotlin.math.floor(glyph.bounds.left) - sharp.bounds.left).toInt().coerceIn(0, bitmap.width)
        val right = (kotlin.math.ceil(glyph.bounds.right) - sharp.bounds.left).toInt().coerceIn(left, bitmap.width)
        val pixels = IntArray(bitmap.width * bitmap.height)
        bitmap.getPixels(pixels, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
        val actualHasInk = (0 until bitmap.height).any { y ->
            (left until right).any { x -> pixels[y * bitmap.width + x] ushr 24 != 0 }
        }
        assertEquals("blank cell ink presence follows its real contextual raster alpha", actualHasInk, sharp.hasInk[blank])
        assertFalse("a textual blank never moves even when it owns contextual ink", glyph.movable)
        assertNull("a nonmoving blank cell never prepares a halo", sharp.glyphGlows[blank])
        assertTrue(slice.visual.reveals.all { it.word === word })
    }

    @Test fun connectedRasterBoundaryRejectsIndependentMotionButACleanGutterAllowsIt() {
        val bounds = RectF(10f, 20f, 18f, 24f)
        // Deliberately reverse source order: adjacency must follow visual x, including bidi.
        val visual = LyricVisualLine(0, 20, 24, listOf(
            LyricGlyph(RectF(14f, 20f, 18f, 24f), null),
            LyricGlyph(RectF(10f, 20f, 14f, 24f), null)), emptyList())
        val edge = LinearGradient(0f, 0f, 0f, 4f, Color.WHITE, Color.WHITE, Shader.TileMode.CLAMP)
        val connected = Bitmap.createBitmap(8, 4, Bitmap.Config.ARGB_8888).apply {
            setPixel(3, 1, Color.WHITE); setPixel(4, 1, Color.WHITE)
        }
        val joined = LyricInk(connected, bounds, edge, visual)
        assertArrayEquals(booleanArrayOf(true, true), joined.hasInk)
        assertArrayEquals("shared ink cannot pulse or generate isolated halos", BooleanArray(2), joined.clearMotionBoundary)
        val gutter = connected.copy(Bitmap.Config.ARGB_8888, true).apply {
            setPixel(3, 1, Color.TRANSPARENT); setPixel(4, 1, Color.TRANSPARENT)
            setPixel(2, 1, Color.WHITE); setPixel(5, 1, Color.WHITE)
        }
        val isolated = LyricInk(gutter, bounds, edge, visual)
        assertArrayEquals(booleanArrayOf(true, true), isolated.hasInk)
        assertArrayEquals("clean gutters retain independent motion", booleanArrayOf(true, true), isolated.clearMotionBoundary)
        val staggered = connected.copy(Bitmap.Config.ARGB_8888, true).apply {
            setPixel(4, 1, Color.TRANSPARENT); setPixel(4, 2, Color.WHITE)
        }
        assertArrayEquals("only ink connected at the same y blocks an integer cut", booleanArrayOf(true, true),
            LyricInk(staggered, bounds, edge, visual).clearMotionBoundary)
        val fractional = LyricVisualLine(0, 20, 24, listOf(
            LyricGlyph(RectF(13.5f, 20f, 18f, 24f), null),
            LyricGlyph(RectF(10f, 20f, 13.5f, 24f), null)), emptyList())
        val straddling = Bitmap.createBitmap(8, 4, Bitmap.Config.ARGB_8888).apply { setPixel(3, 1, Color.WHITE) }
        assertArrayEquals("fractional caret cuts through an occupied pixel are conservative", BooleanArray(2),
            LyricInk(straddling, bounds, edge, fractional).clearMotionBoundary)
    }

    @Test fun preparedCacheSurvivesHundredsOfPlaybackDrawsAndThemeChanges() {
        val words = listOf(LyricWord(1_000L, 3_000L, "优雅字符波"))
        val lines = listOf(LyricLine(1_000L, "优雅字符波", words = words), LyricLine(4_000L, "下一句"))
        val rows = lines.map { prepareLyricRow(it, 544, metrics, face) }
        val tops = lyricFlow(rows.map { it.height }, emptyList(), 64f).lineTops
        val cache = LyricInkCache(rows, metrics, 1080f)
        val window = lyricSliceWindow(rows, tops, 300f, 1080f)
        val slices = cache.prepare(window, setOf(0), 0)
        val prepared = cache.rasterizations
        assertTrue(prepared > 0)
        val canvas = Canvas(Bitmap.createBitmap(544, 1080, Bitmap.Config.ARGB_8888))
        val painter = LyricInkPainter(metrics)
        val lyrics = LyricsState(lines = lines, timelineReady = true, activeIndex = 0, scrollIndex = 0)
        repeat(200) { frame ->
            painter.draw(canvas, slices, rows, tops, cache, 300f, setOf(0), 0, lyrics,
                1_000L + frame * 10L, frame % 2 == 0)
        }
        assertEquals("playback draw never creates layout/bitmap/blur textures", prepared, cache.rasterizations)
        cache.prepare(window, setOf(1), 1)
        assertEquals("next current line was already warmed; no active-dependent re-rasterization", prepared, cache.rasterizations)
        assertTrue(slices.flatMap { it.glow?.glyphGlows.orEmpty() }.filterNotNull()
            .all { it.bitmap.width < 120 && it.bitmap.height < 120 })
    }
}
