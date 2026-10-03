package com.icar03.content.ui

import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Actual Compose geometry/state checks, not a vehicle or subjective visual acceptance. */
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
open class LyricsPageTerminalLightRenderTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    private val events = mutableListOf<ContentEvent>()

    @Test fun noMatchCopyItselfIsCenteredAndSourceActionStaysBelowIt() {
        mount(terminalState(LyricsEmptyState.NoLyrics))
        assertCentered("暂无歌词", hasSourceAction = true)
        compose.onNodeWithText("网络错误").assertDoesNotExist()
        compose.onNodeWithText("纯音乐，请您欣赏").assertDoesNotExist()
        compose.onNodeWithTag("lyrics-source-action").performClick()
        assertEquals(ContentEvent.OpenSources, events.last())
    }

    @Test fun networkErrorHasExactCenteredCopyAndKeepsTheSourceAffordance() {
        mount(terminalState(LyricsEmptyState.NetworkError))
        assertCentered("网络错误", hasSourceAction = true)
        compose.onNodeWithText("暂无歌词").assertDoesNotExist()
        compose.onNodeWithText("纯音乐，请您欣赏").assertDoesNotExist()
        compose.onNodeWithTag("lyrics-source-action").performClick()
        assertEquals(ContentEvent.OpenSources, events.last())
    }

    @Test fun pureMusicIsCenteredWithoutAViewportSourceButtonButMediaSourceBehaviorIsUnchanged() {
        mount(terminalState(LyricsEmptyState.Instrumental))
        assertCentered("纯音乐，请您欣赏", hasSourceAction = false)
        compose.onNodeWithText("暂无歌词").assertDoesNotExist()
        compose.onNodeWithText("网络错误").assertDoesNotExist()
        compose.onNodeWithTag("source-button").assertIsDisplayed().performClick()
        assertEquals(ContentEvent.OpenSources, events.last())
    }

    @Test fun terminalCopyAloneIsCenteredWhenSourceSwitchingIsUnavailable() {
        val state = mutableStateOf(terminalState(LyricsEmptyState.NoLyrics).let {
            it.copy(media = it.media.copy(sourceAvailable = false))
        })
        compose.setContent { ContentTheme(dark) { ContentPanel(state.value, { events += it }) } }
        assertCentered("暂无歌词", hasSourceAction = false)
        compose.runOnIdle { state.value = state.value.copy(lyrics = LyricsState(emptyState = LyricsEmptyState.NetworkError)) }
        assertCentered("网络错误", hasSourceAction = false)
    }

    @Test fun runtimeSongLoadingRemainsBlankAndNoSongSuppressesStaleTerminalReasons() {
        val state = mutableStateOf(terminalState(LyricsEmptyState.NetworkError).copy(
            lyrics = LyricsState(loading = true, emptyState = LyricsEmptyState.NetworkError)))
        compose.setContent { ContentTheme(dark) { ContentPanel(state.value, { events += it }) } }
        compose.onNodeWithTag("lyrics-empty").assertDoesNotExist()
        compose.onNodeWithText("正在匹配歌词…").assertDoesNotExist()
        compose.onNodeWithText("暂无歌词").assertDoesNotExist()
        compose.onNodeWithText("网络错误").assertDoesNotExist()
        compose.onNodeWithTag("lyrics-source-action").assertDoesNotExist()
        for (reason in LyricsEmptyState.entries) {
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(isSong = false),
                lyrics = LyricsState(loading = true, emptyState = reason)) }
            assertCentered("暂无歌词", hasSourceAction = true)
            compose.onNodeWithText("正在匹配歌词…").assertDoesNotExist()
            compose.onNodeWithText("网络错误").assertDoesNotExist()
            compose.onNodeWithText("纯音乐，请您欣赏").assertDoesNotExist()
        }
    }

    @Test fun togglingOptionalSourceActionDoesNotMoveTheSameCopyBoundsOrBaselineCenter() {
        val initial = terminalState(LyricsEmptyState.NoLyrics)
        val state = mutableStateOf(initial.copy(media = initial.media.copy(sourceAvailable = false)))
        compose.setContent { ContentTheme(dark) { ContentPanel(state.value, { events += it }) } }
        for (reason in listOf(LyricsEmptyState.NoLyrics, LyricsEmptyState.NetworkError)) {
            val text = if (reason == LyricsEmptyState.NoLyrics) "暂无歌词" else "网络错误"
            compose.runOnIdle {
                state.value = terminalState(reason).let { it.copy(media = it.media.copy(sourceAvailable = false)) }
            }
            assertCentered(text, hasSourceAction = false)
            val withoutAction = compose.onNodeWithTag("lyrics-empty-copy").getUnclippedBoundsInRoot()
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(sourceAvailable = true)) }
            assertCentered(text, hasSourceAction = true)
            val withAction = compose.onNodeWithTag("lyrics-empty-copy").getUnclippedBoundsInRoot()
            assertEquals("same copy and baseline geometry cannot move when source action appears", withoutAction, withAction)
            compose.runOnIdle { state.value = state.value.copy(media = state.value.media.copy(sourceAvailable = false)) }
            assertCentered(text, hasSourceAction = false)
            assertEquals("removing source action must retain identical copy geometry", withoutAction,
                compose.onNodeWithTag("lyrics-empty-copy").getUnclippedBoundsInRoot())
        }
    }

    @Test fun admittedRealBodyAlwaysWinsOverAnEmptyReasonOrRefreshFlag() {
        val state = terminalState(LyricsEmptyState.NetworkError).copy(lyrics = LyricsState(
            recordingKey = "synthetic-song", lines = listOf(LyricLine(0L, "真实合成正文")),
            timed = false, loading = true, emptyState = LyricsEmptyState.NetworkError))
        mount(state)
        compose.onNodeWithTag("wallpaper-lyrics").assertIsDisplayed()
        compose.onNodeWithTag("lyrics-empty").assertDoesNotExist()
        compose.onNodeWithText("网络错误").assertDoesNotExist()
        compose.onNodeWithText("暂无歌词").assertDoesNotExist()
        compose.onNodeWithText("正在匹配歌词…").assertDoesNotExist()
    }

    private fun terminalState(reason: LyricsEmptyState) = ContentUiState(previewMode = false,
        page = PanelPage.Lyrics, dark = dark,
        media = MediaState(title = "合成歌曲", artist = "合成歌手", isSong = true, sourceAvailable = true),
        lyrics = LyricsState(emptyState = reason))

    private fun mount(state: ContentUiState) {
        compose.setContent { ContentTheme(dark) { ContentPanel(state, { events += it }) } }
        compose.waitForIdle()
    }

    private fun assertCentered(copy: String, hasSourceAction: Boolean) {
        compose.waitForIdle()
        val region = compose.onNodeWithTag("lyrics-empty").assertIsDisplayed().getUnclippedBoundsInRoot()
        val text = compose.onNodeWithTag("lyrics-empty-copy").assertTextEquals(copy)
            .assertIsDisplayed().getUnclippedBoundsInRoot()
        // Half a physical pixel is the only allowed rounding at this mdpi viewport.
        assertEquals("copy center X must equal lyrics viewport center X: $copy",
            (region.left.value + region.right.value) / 2f,
            (text.left.value + text.right.value) / 2f, .5f)
        assertEquals("copy center Y must equal lyrics viewport center Y, independently of action: $copy",
            (region.top.value + region.bottom.value) / 2f,
            (text.top.value + text.bottom.value) / 2f, .5f)
        if (hasSourceAction) {
            val action = compose.onNodeWithTag("lyrics-source-action").assertIsDisplayed().getUnclippedBoundsInRoot()
            assertEquals("source action is horizontally centered below the copy",
                (region.left.value + region.right.value) / 2f,
                (action.left.value + action.right.value) / 2f, .5f)
            assertEquals("source action starts 12dp below the copy", 12f, action.top.value - text.bottom.value, .5f)
            assertTrue("source action retains its 48dp minimum touch height", (action.bottom - action.top).value >= 48f)
        } else compose.onNodeWithTag("lyrics-source-action").assertDoesNotExist()
    }
}

@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class LyricsPageTerminalDarkRenderTest : LyricsPageTerminalLightRenderTest() {
    override val dark = true
}
