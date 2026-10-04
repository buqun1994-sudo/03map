package com.icar03.content.ui

import android.graphics.Typeface
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.runBlocking
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.util.concurrent.CopyOnWriteArrayList
import kotlin.coroutines.CoroutineContext

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28, 34])
class LyricLayoutDocumentTest {
    @Test fun completeShapingRunsOnTheWorkerAndPreservesImmutableBodyFacts() = runBlocking {
        val caller = Thread.currentThread()
        val workers = CopyOnWriteArrayList<Thread>()
        val dispatcher = object : CoroutineDispatcher() {
            override fun dispatch(context: CoroutineContext, block: Runnable) {
                Dispatchers.Default.dispatch(context) { workers += Thread.currentThread(); block.run() }
            }
        }
        val assets = org.robolectric.RuntimeEnvironment.getApplication().assets
        val request = LyricLayoutRequest(listOf(
            LyricLine(0L, "完整中文排版", "Translation", "romanization"),
            LyricLine(2_000L, "ABC אבג سلام 👩🏽‍🚀", words = listOf(LyricWord(2_000L, 4_000L, "ABC אבג سلام 👩🏽‍🚀"))),
            LyricLine(4_000L, "自然换行而不裁掉末尾".repeat(30)),
        ), 200, LyricMetrics(40f, 48f, 22f, 20f, 14f, 4f, 3f, 2.5f),
            lyricTypeface(assets), lyricCjkTypeface(assets))
        val result = prepareLyricDocument(request, dispatcher)
        assertTrue("the full shaping block was dispatched", workers.isNotEmpty())
        assertTrue("no document shaping block executes on the caller thread", workers.none { it === caller })
        assertSame(request, result.request)
        assertEquals(request.lines.size, result.rows.size)
        assertTrue(result.rows.last().height > 1_000)
        result.rows.forEach { row ->
            assertTrue(row.tracks.isNotEmpty())
            assertTrue(row.tracks.all { it.layout.width == request.width && it.visualLines.size == it.layout.lineCount })
        }
        // Playback positions, current indices and speeds cannot invalidate this request,
        // because the immutable geometry contract contains none of those frame facts.
        assertEquals(3, result.rows.size)
    }
}
