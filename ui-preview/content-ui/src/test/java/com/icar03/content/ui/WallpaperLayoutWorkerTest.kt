package com.icar03.content.ui

import android.view.ViewTreeObserver
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.Dispatchers
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import kotlin.coroutines.CoroutineContext

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class WallpaperLayoutWorkerTest {
    @get:Rule val compose = createComposeRule()
    private val host = "geometry-worker-host"
    private val held = HeldDispatcher()
    private fun body(text: String) = LyricsState(recordingKey = "same-recording",
        lines = listOf(LyricLine(0L, text)), timed = true, timelineReady = true,
        positionMs = 0L, activeIndex = 0, scrollIndex = 0, durationMs = 20_000L)
    private val state = mutableStateOf(body("旧正文完整显示"))
    private fun ready() = compose.onNode(SemanticsMatcher.keyIsDefined(LyricLayoutReady), useUnmergedTree = true)
        .fetchSemanticsNode().config[LyricLayoutReady]
    private fun ink() = compose.onNode(SemanticsMatcher.keyIsDefined(LyricRowHeights), useUnmergedTree = true)

    private fun mount() {
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalLyricGeometryDispatcher provides held,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined) {
                Box(Modifier.fillMaxSize().testTag(host)) { WallpaperLyrics(state.value, true) }
            }
        }
        focus(true)
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
    }
    private fun project(value: LyricsState) {
        compose.runOnIdle {
            state.value = value
            androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
        }
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
    }
    private fun release() {
        compose.runOnIdle { held.release() }
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
    }

    @Test fun coldGeometryIsNotSecretlyCompiledOnTheUiThread() {
        mount()
        assertFalse(ready())
        assertTrue("a geometry job is waiting on its dispatcher", held.tasks.isNotEmpty())
        ink().assertDoesNotExist()
        release()
        assertTrue(ready())
        ink().assertTextEquals("旧正文完整显示")
        assertEquals(1, ink().fetchSemanticsNode().config[LyricRowHeights].size)
    }

    @Test fun sameRecordingReplacementHoldsTheMatchedDocumentUntilTheNewCursorHasNewGeometry() {
        mount(); release()
        val oldHeights = ink().fetchSemanticsNode().config[LyricRowHeights]
        val upgraded = state.value.copy(lines = listOf(LyricLine(0L, "升级第一句"),
            LyricLine(2_000L, "升级第二句", "new translation")), activeIndex = 1, scrollIndex = 1, positionMs = 2_500L)
        project(upgraded)
        assertFalse(ready())
        ink().assertTextEquals("旧正文完整显示")
        assertEquals("new row 1 cannot index the one-row old document", 0, ink().fetchSemanticsNode().config[ActiveLyric])
        assertEquals(oldHeights, ink().fetchSemanticsNode().config[LyricRowHeights])
        release()
        assertTrue(ready())
        ink().assertTextEquals("升级第二句")
        assertEquals(1, ink().fetchSemanticsNode().config[ActiveLyric])
        assertEquals(2, ink().fetchSemanticsNode().config[LyricRowHeights].size)
    }

    @Test fun completedButUnadmittedDocumentCannotReplaceTheLastMatchedPresentation() {
        mount(); release()
        val oldHeights = ink().fetchSemanticsNode().config[LyricRowHeights]
        project(state.value.copy(lines = listOf(LyricLine(0, "未准入B第一句"), LyricLine(1_000, "未准入B第二句")),
            activeIndex = 1, scrollIndex = 1, positionMs = 1_500))
        assertFalse(ready())
        compose.runOnIdle {
            // Finish B without an intervening composition/SideEffect, then admit source C.
            held.release()
            state.value = state.value.copy(lines = listOf(LyricLine(0, "最新C第一句"),
                LyricLine(1_000, "最新C第二句"), LyricLine(2_000, "最新C第三句")),
                activeIndex = 2, scrollIndex = 2, positionMs = 2_500)
            androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
        }
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
        assertFalse(ready())
        ink().assertTextEquals("旧正文完整显示")
        assertEquals("an unadmitted B cannot be paired with A's current row", oldHeights,
            ink().fetchSemanticsNode().config[LyricRowHeights])
        assertEquals(0, ink().fetchSemanticsNode().config[ActiveLyric])
        release()
        assertTrue(ready())
        ink().assertTextEquals("最新C第三句")
        assertEquals(3, ink().fetchSemanticsNode().config[LyricRowHeights].size)
        assertEquals(2, ink().fetchSemanticsNode().config[ActiveLyric])
    }

    @Test fun supersededAndHiddenGeometryCannotPublishAStaleDocument() {
        mount(); release()
        project(body("过期正文"))
        project(body("最新正文"))
        assertFalse(ready())
        setLyricViewShown(compose, host, false)
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
        release()
        assertFalse("hidden view and superseded jobs cannot publish", ready())
        ink().assertTextEquals("旧正文完整显示")
        setLyricViewShown(compose, host, true)
        compose.mainClock.advanceTimeBy(64); compose.waitForIdle()
        release()
        assertTrue(ready())
        ink().assertTextEquals("最新正文")
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun focus(focused: Boolean) {
        val root = compose.onNodeWithTag(host).fetchSemanticsNode().root as ViewRootForTest
        val dispatch = ViewTreeObserver::class.java.getDeclaredMethod("dispatchOnWindowFocusChange", java.lang.Boolean.TYPE)
            .apply { isAccessible = true }
        compose.runOnIdle {
            dispatch.invoke(root.view.viewTreeObserver, focused)
            androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
        }
    }
    private class HeldDispatcher : CoroutineDispatcher() {
        val tasks = ArrayList<Runnable>()
        override fun dispatch(context: CoroutineContext, block: Runnable) { tasks += block }
        fun release() { while (tasks.isNotEmpty()) tasks.removeAt(0).run() }
    }
}
