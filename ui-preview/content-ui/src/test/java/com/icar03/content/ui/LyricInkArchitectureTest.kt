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
    private val metrics = LyricMetrics(40f, 48f, 22f, 20f, 14f, 4f, 3f, 2.5f)
    private val face = Typeface.create("sans-serif", Typeface.BOLD)

    @Test fun oneVisualCharacterDoesNotMeanOneUtf16CodeUnit() {
        listOf("e\u0301", "👨‍👩‍👧‍👦", "👩🏽‍🚀", "🇨🇳", "1️⃣", "𠮷").forEach { text ->
            assertArrayEquals(text, intArrayOf(0, text.length), lyricGraphemeBoundaries(text))
        }
        assertArrayEquals(intArrayOf(0, 1, 2), lyricGraphemeBoundaries("优雅"))
    }

    @Test fun everyVisualUnitRisesFromItsBaselineAndKeepsItsFixedEndpoint() {
        val word = LyricWord(1_000L, 3_000L, "优雅")
        assertEquals(0f, lyricCharacterRiseProgress(word, 0f, .5f, -1L), 0f)
        assertEquals(0f, lyricCharacterRiseProgress(word, 0f, .5f, 999L), 0f)
        assertEquals(0f, lyricCharacterRiseProgress(word, 0f, .5f, 1_000L), 0f)
        assertEquals(.578125f, lyricCharacterRiseProgress(word, 0f, .5f, 1_250L), .0001f)
        assertEquals(.875f, lyricCharacterRiseProgress(word, 0f, .5f, 1_500L), .0001f)
        assertEquals(.984375f, lyricCharacterRiseProgress(word, 0f, .5f, 1_750L), .0001f)
        assertEquals(1f, lyricCharacterRiseProgress(word, 0f, .5f, 2_000L), 0f)
        assertEquals(1f, lyricCharacterRiseProgress(word, 0f, .5f, 20_000L), 0f)
        assertEquals(0f, lyricCharacterRiseProgress(word, .5f, 1f, 1_999L), 0f)
        assertEquals(0f, lyricCharacterRiseProgress(word, .5f, 1f, 2_000L), 0f)
        assertEquals(.875f, lyricCharacterRiseProgress(word, .5f, 1f, 2_500L), .0001f)
        assertEquals(1f, lyricCharacterRiseProgress(word, .5f, 1f, 3_000L), 0f)
        val shortWord = LyricWord(1_000L, 1_001L, "短词")
        assertEquals(.875f, lyricCharacterRiseProgress(shortWord, 0f, 1f, 1_500L), .0001f)
        assertEquals(1f, lyricCharacterRiseProgress(shortWord, 0f, 1f, 2_000L), 0f)
        assertEquals(0f, lyricCharacterRiseProgress(word, .5f, .5f, 2_000L), 0f)
        assertEquals(0f, lyricCharacterRiseProgress(word.copy(endTimeMs = 999L), 0f, 1f, 2_000L), 0f)
        assertTrue("ease-out starts faster and settles more slowly",
            .578125f > .875f - .578125f && .875f - .578125f > .984375f - .875f)
        assertEquals(1_000L, word.startTimeMs); assertEquals(3_000L, word.endTimeMs)
        assertEquals("seek reproduces the same sample", .875f,
            lyricCharacterRiseProgress(word, .5f, 1f, 2_500L), .0001f)
        for (time in 999L..2_001L) {
            val offset = -metrics.lift * lyricCharacterRiseProgress(word, 0f, .5f, time)
            val next = -metrics.lift * lyricCharacterRiseProgress(word, 0f, .5f, time + 1L)
            assertTrue("motion can only move upwards", next <= offset)
            assertTrue("no onset or end discontinuity", kotlin.math.abs(next - offset) < .01f)
        }
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
            val shapeMetrics = metrics.copy(lift = 0f) // Independently verify the complete atlas without motion.
            val rows = lines.map { prepareLyricRow(it, 200, shapeMetrics, realFace) }
            val tops = floatArrayOf(0f)
            val cache = LyricInkCache(rows, shapeMetrics, 1080f)
            val slices = cache.prepare(lyricSliceWindow(rows, tops, 300f, 1080f), setOf(0), 0)
            val actual = Bitmap.createBitmap(200, 1080, Bitmap.Config.ARGB_8888)
            LyricInkPainter(shapeMetrics).draw(Canvas(actual), slices, rows, tops, cache, 300f, setOf(0), 0,
                LyricsState(lines = lines, activeIndex = 0, scrollIndex = 0, timelineReady = true), 10_000L, true)
            val expected = Bitmap.createBitmap(200, 1080, Bitmap.Config.ARGB_8888)
            val canvas = Canvas(expected)
            val paint = android.graphics.Paint(android.graphics.Paint.FILTER_BITMAP_FLAG)
            slices.forEach { slice ->
                val ink = slice.sharp!!
                val y = 300f + slice.track.top
                val saved = canvas.save(); canvas.translate(0f, y)
                ink.edgeAt(y, 1f, (slice.visual.top + slice.visual.bottom) / 2f)
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
                sharp.edgeAt(y, scale, pivotY)
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
        assertArrayEquals("soft masks do not scan the source raster", BooleanArray(3), soft.hasInk)
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
        assertArrayEquals("shared ink cannot move independently", BooleanArray(2), joined.clearMotionBoundary)
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

    private fun pixels(bitmap: Bitmap) = IntArray(bitmap.width * bitmap.height).also {
        bitmap.getPixels(it, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
    }

    @Test fun nativeSingleCharacterRisesOnlyUpwardsAndNeverFallsBackAtItsEndpoint() {
        val word = LyricWord(1_000L, 1_001L, "优")
        val lines = listOf(LyricLine(1_000L, word.text, words = listOf(word)))
        val rows = lines.map { prepareLyricRow(it, 200, metrics, face) }
        val tops = floatArrayOf(0f)
        val cache = LyricInkCache(rows, metrics, 400f)
        val slices = cache.prepare(listOf(LyricSliceAddress(0, 0, 0)), setOf(0), 0)
        val slice = slices.single(); val ink = slice.sharp!!
        assertTrue("fixture has an isolated movable glyph", ink.cells.single().onsetMs.isFinite())
        val lyrics = LyricsState(lines = lines, timelineReady = true, scrollIndex = 0, activeIndex = 0)
        val painter = LyricInkPainter(metrics)
        fun draw(time: Long): Bitmap = Bitmap.createBitmap(200, 400, Bitmap.Config.ARGB_8888).also {
            painter.draw(Canvas(it), slices, rows, tops, cache, 100f, setOf(0), 0, lyrics, time, true)
        }
        assertArrayEquals("opening instant cannot jump down", pixels(draw(999L)), pixels(draw(1_000L)))
        val y = 100f + slice.track.top
        listOf(1_250L to -1.4453125f, 1_500L to -2.1875f, 1_750L to -2.4609375f,
            2_000L to -2.5f, 8_000L to -2.5f).forEach { (time, shift) ->
            val actual = draw(time)
            val expected = Bitmap.createBitmap(200, 400, Bitmap.Config.ARGB_8888)
            ink.edgeAt(y, 1f, (slice.visual.top + slice.visual.bottom) / 2f)
            Canvas(expected).apply {
                translate(0f, y + shift)
                drawRect(ink.bounds, Paint(Paint.FILTER_BITMAP_FLAG).apply { shader = ink.shader })
            }
            assertArrayEquals("actual native offset must match fixed upward sample at $time", pixels(expected), pixels(actual))
        }
        val settled = draw(2_000L)
        assertArrayEquals("completed rise keeps the elevated baseline", pixels(settled), pixels(draw(8_000L)))
        val revisited = draw(1_500L)
        draw(8_000L)
        assertArrayEquals("seek samples the same geometry", pixels(revisited), pixels(draw(1_500L)))
    }

    @Test fun stableCharactersBatchAndStationarySlicesDoNotUpdateShaderMatrices() {
        val word = LyricWord(1_000L, 3_000L, "优雅字符保持连续上浮")
        val lines = listOf(LyricLine(1_000L, word.text, words = listOf(word)), LyricLine(4_000L, "静止背景"))
        val rows = lines.map { prepareLyricRow(it, 544, metrics, face) }
        val tops = lyricFlow(rows.map { it.height }, emptyList(), 64f).lineTops
        val cache = LyricInkCache(rows, metrics, 1080f)
        val slices = cache.prepare(lyricSliceWindow(rows, tops, 300f, 1080f), setOf(0), 0)
        val painter = LyricInkPainter(metrics)
        val lyrics = LyricsState(lines = lines, timelineReady = true, scrollIndex = 0, activeIndex = 0)
        val canvas = Canvas(Bitmap.createBitmap(544, 1080, Bitmap.Config.ARGB_8888))
        val inks = slices.flatMap { listOfNotNull(it.sharp, it.soft) }.distinct()
        fun draw(time: Long, offset: Float = 300f) = painter.draw(canvas, slices, rows, tops, cache,
            offset, setOf(0), 0, lyrics, time, true)
        draw(999L)
        val beforeBatches = painter.drawBatches
        val beforeCells = painter.sampledCells
        assertTrue("stationary glyphs merge physical neighbours", beforeBatches < beforeCells)
        assertEquals("every stationary slice uses one batch regardless of character count", slices.size, beforeBatches)
        assertEquals("there is no per-character state-stack movement before onset", 0, painter.motionTranslations)
        val matrices = inks.sumOf { it.edgeMatrixUpdates }
        repeat(100) { draw(999L) }
        assertEquals("one slice cannot invalidate another stationary slice's Shader", matrices, inks.sumOf { it.edgeMatrixUpdates })
        draw(1_500L)
        val activeBatches = painter.drawBatches
        assertTrue("active character differences remain visible", painter.motionTranslations > 0)
        draw(8_000L)
        assertTrue("completed characters merge again", painter.drawBatches < painter.sampledCells)
        val expectedSettledBatches = slices.sumOf { slice ->
            if (slice.row != 0) 1 else slice.sharp!!.cells.let { cells ->
                if (cells.isEmpty()) 0 else 1 + cells.zipWithNext().count { (left, right) ->
                    left.bounds.right != right.bounds.left || left.onsetMs.isFinite() != right.onsetMs.isFinite()
                }
            }
        }
        assertEquals("settled safe/connected ink blocks each use one batch", expectedSettledBatches, painter.drawBatches)
        val settled = inks.sumOf { it.edgeMatrixUpdates }
        println("batch-cost: cells=$beforeCells before=$beforeBatches active=$activeBatches settled=${painter.drawBatches} stationary-edge-updates=$matrices")
        draw(8_000L, 301f)
        assertTrue("actual travel still updates edge geometry", inks.sumOf { it.edgeMatrixUpdates } > settled)
    }

    @Test fun coldCompletedPartialWordDoesNotBrightenUnmappedBody() {
        val text = "合成词语保持整行"
        val fixed = metrics.copy(lift = 0f)
        val realFace = lyricTypeface(org.robolectric.RuntimeEnvironment.getApplication().assets)
        for (mappedText in listOf("合成", text)) for (dark in listOf(false, true)) {
            val line = LyricLine(1_000, text, words = listOf(LyricWord(1_000, 3_000, mappedText)))
            val rows = listOf(prepareLyricRow(line, 544, fixed, realFace))
            val cache = LyricInkCache(rows, fixed, 400f)
            val actual = Bitmap.createBitmap(544, 400, Bitmap.Config.ARGB_8888)
            val lyrics = LyricsState(lines = listOf(line), timelineReady = true, activeIndex = 0, scrollIndex = 0)
            LyricInkPainter(fixed).draw(Canvas(actual), emptyList(), rows, floatArrayOf(0f), cache,
                120f, setOf(0), 0, lyrics, 4_000, dark, fallback = listOf(LyricSliceAddress(0, 0, 0)))
            assertEquals("held raster never prepares a bitmap during cold draw", 0, cache.rasterizations)
            val expected = Bitmap.createBitmap(544, 400, Bitmap.Config.ARGB_8888)
            val reference = prepareLyricRow(line, 544, fixed, realFace).tracks.single()
            reference.layout.paint.color = if (dark) Color.WHITE else Color.rgb(39, 48, 59)
            reference.layout.paint.alpha = if (mappedText == text) 255 else (LyricVisuals.UNSUNG_ALPHA * 255).roundToInt()
            Canvas(expected).apply {
                translate(0f, 120f + reference.top)
                reference.layout.draw(this)
            }
            fun pixels(image: Bitmap) = IntArray(image.width * image.height).also {
                image.getPixels(it, 0, image.width, 0, 0, image.width, image.height)
            }
            assertArrayEquals("cold uniform ink only completes when the actual whole visual body is mapped, mapped=$mappedText dark=$dark",
                pixels(expected), pixels(actual))
        }
    }

    @Test fun joiningScriptCannotTurnNeighbouringLatinInkWhiteAroundAColouredEmoji() {
        val fixed = metrics.copy(lift = 0f)
        val realFace = lyricTypeface(org.robolectric.RuntimeEnvironment.getApplication().assets)
        val emoji = "👩🏽‍🚀"
        val text = "AB${emoji}CD سلام"
        val lines = listOf(LyricLine(1_000, text, words = listOf(
            LyricWord(1_000, 2_000, "AB${emoji}CD"), LyricWord(2_000, 3_000, "سلام"))))
        val rows = listOf(prepareLyricRow(lines.single(), 544, fixed, realFace))
        val cache = LyricInkCache(rows, fixed, 400f)
        val slices = cache.prepare(listOf(LyricSliceAddress(0, 0, 0)), setOf(0), 0)
        val slice = slices.single()
        val ink = slice.sharp!!
        val offset = 120f
        val y = offset + slice.track.top
        val start = text.indexOf(emoji)
        val emojiBounds = android.graphics.Path().let { selection ->
            slice.track.layout.getSelectionPath(start, start + emoji.length, selection)
            RectF().also { selection.computeBounds(it, true) }
        }
        assertTrue("the actual emoji raster has colour", ink.colouredGlyphs.any { it })
        val lyrics = LyricsState(lines = lines, timelineReady = true, activeIndex = 0, scrollIndex = 0)
        for (dark in listOf(false, true)) {
            val actual = Bitmap.createBitmap(544, 400, Bitmap.Config.ARGB_8888)
            LyricInkPainter(fixed).draw(Canvas(actual), slices, rows, floatArrayOf(0f), cache,
                offset, setOf(0), 0, lyrics, 8_000, dark)
            val expected = Bitmap.createBitmap(544, 400, Bitmap.Config.ARGB_8888)
            val canvas = Canvas(expected)
            canvas.translate(0f, y)
            ink.edgeAt(y, 1f, (slice.visual.top + slice.visual.bottom) / 2f)
            val paint = Paint(Paint.FILTER_BITMAP_FLAG).apply { shader = ink.shader }
            val tint = android.graphics.PorterDuffColorFilter(if (dark) Color.WHITE else Color.rgb(39, 48, 59),
                android.graphics.PorterDuff.Mode.SRC_IN)
            // Independent oracle: preserve exactly the full-context emoji selection; theme
            // tint every other atlas region without consulting the prepared colour cells.
            paint.colorFilter = tint
            canvas.drawRect(RectF(ink.bounds.left, ink.bounds.top, emojiBounds.left, ink.bounds.bottom), paint)
            canvas.drawRect(RectF(emojiBounds.right, ink.bounds.top, ink.bounds.right, ink.bounds.bottom), paint)
            paint.colorFilter = null
            canvas.drawRect(RectF(emojiBounds.left, ink.bounds.top, emojiBounds.right, ink.bounds.bottom), paint)
            fun pixels(image: Bitmap) = IntArray(image.width * image.height).also {
                image.getPixels(it, 0, image.width, 0, 0, image.width, image.height)
            }
            assertArrayEquals("joining + Latin + actual RGBA emoji keeps each theme's native ink, dark=$dark",
                pixels(expected), pixels(actual))
        }
    }

    @Test fun batchingPreservesPartialRealWordMasksUnmappedInkColourAndBidi() {
        val realFace = lyricTypeface(org.robolectric.RuntimeEnvironment.getApplication().assets)
        val fixed = metrics.copy(lift = 0f) // This oracle isolates batching from separately verified motion.
        val fixtures = listOf(
            "合成词语保持整行" to listOf("合成"),
            "office" to listOf("of", "fice"),
            "ABC אבג 123 سلام" to listOf("ABC ", "אבג ", "123 ", "سلام"),
            "A\u202Bאבג 123 - abc\u202C Z" to listOf("A\u202Bאבג 123 - abc\u202C Z"),
            "A👩🏽‍🚀𠮷B" to listOf("A", "👩🏽‍🚀", "𠮷", "B"),
        )
        for ((text, atoms) in fixtures) {
            val words = atoms.mapIndexed { i, atom -> LyricWord(1_000L + i * 500L, 1_500L + i * 500L, atom) }
            val lines = listOf(LyricLine(1_000L, text, words = words))
            val rows = lines.map { prepareLyricRow(it, 200, fixed, realFace) }
            val tops = floatArrayOf(0f)
            val cache = LyricInkCache(rows, fixed, 400f)
            val slices = cache.prepare(lyricSliceWindow(rows, tops, 100f, 400f), setOf(0), 0)
            val lyrics = LyricsState(lines = lines, activeIndex = 0, scrollIndex = 0, timelineReady = true)
            for (dark in listOf(false, true)) for (time in listOf(999L, 1_200L, 1_800L, 8_000L)) {
                val actual = Bitmap.createBitmap(200, 400, Bitmap.Config.ARGB_8888)
                LyricInkPainter(fixed).draw(Canvas(actual), slices, rows, tops, cache, 100f, setOf(0), 0, lyrics, time, dark)
                // Deliberately unbatched reference, using the original full-context selection
                // cells rather than the worker's physical-order cells or appendBatch algorithm.
                val expected = Bitmap.createBitmap(200, 400, Bitmap.Config.ARGB_8888)
                val canvas = Canvas(expected)
                val paint = Paint(Paint.FILTER_BITMAP_FLAG)
                val tint = android.graphics.PorterDuffColorFilter(if (dark) Color.WHITE else Color.rgb(39, 48, 59),
                    android.graphics.PorterDuff.Mode.SRC_IN)
                for (slice in slices) {
                    val ink = slice.sharp!!
                    val saved = canvas.save(); canvas.translate(0f, 100f + slice.track.top)
                    ink.edgeAt(100f + slice.track.top, 1f, (slice.visual.top + slice.visual.bottom) / 2f)
                    slice.visual.reveals.forEach { it.sample(time) }
                    slice.visual.glyphs.forEachIndexed { index, glyph ->
                        if (!ink.hasInk[index]) return@forEachIndexed
                        val reveal = glyph.reveal
                        paint.colorFilter = if (ink.colouredGlyphs[index]) null else tint
                        paint.shader = if (reveal != null && reveal.fraction > 0f) ink.highlight[glyph.revealIndex] else ink.shader
                        paint.alpha = ((if (reveal != null && reveal.fraction > 0f) 1f else LyricVisuals.UNSUNG_ALPHA) * 255).roundToInt()
                        canvas.drawRect(glyph.bounds, paint)
                    }
                    canvas.restoreToCount(saved)
                }
                assertArrayEquals("unbatched real-mask oracle: $text at $time dark=$dark", pixels(expected), pixels(actual))
            }
        }
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
    }
}
