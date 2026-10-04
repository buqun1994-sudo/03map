package com.icar03.content.ui

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.size
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithText
import androidx.compose.ui.unit.dp
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class ContentPanelDomainTest {
    @get:Rule val compose = createComposeRule()

    @Test fun clockAndLyricsSubscriptionsDoNotRecomposeTheShellOrArtwork() {
        val clock = mutableStateOf(ClockText("12:24", "星期日"))
        val lyrics = mutableStateOf(LyricsState())
        val shell = ContentUiState(previewMode = false, page = PanelPage.Lyrics, media = MediaState(isSong = true))
        var shellCompositions = 0
        var artworkCompositions = 0
        compose.setContent {
            SideEffect { shellCompositions++ }
            ContentTheme(dark = false) {
                ContentPanel(shell, {}, artwork = {
                    SideEffect { artworkCompositions++ }
                    Box(Modifier.size(24.dp))
                }, clockText = { clock.value }, lyricsState = { lyrics.value })
            }
        }
        compose.waitForIdle()
        val shellBefore = shellCompositions
        val artworkBefore = artworkCompositions
        compose.runOnIdle { clock.value = ClockText("12:25", "星期日") }
        compose.onNodeWithText("12:25", substring = true).assertIsDisplayed()
        compose.runOnIdle { lyrics.value = LyricsState(emptyState = LyricsEmptyState.NetworkError) }
        compose.onNodeWithText("网络错误").assertIsDisplayed()
        compose.runOnIdle {
            assertEquals(shellBefore, shellCompositions)
            assertEquals(artworkBefore, artworkCompositions)
        }
    }

    @Test fun stableAnchorEndpointStopsEmphasisWithoutMovingTheMediaBase() {
        val source = LyricsState(lines = listOf(LyricLine(0L, "endpoint")),
            timelineReady = true, positionMs = 1_000L, capturedAtMs = 5_000L,
            playbackSpeed = 1f, durationMs = 30_000L, scrollIndex = 0, anchorRevision = 2L)
        assertEquals(setOf(0), lyricEmphasizedRows(source))
        assertTrue(lyricEmphasizedRows(source.copy(atEnd = true)).isEmpty())
        assertEquals(30_000L, lyricPositionAt(source, 50_000L))
        assertEquals(1_000L, source.positionMs)
    }

    @Test fun zeroElapsedCaptureAndFractionalSpeedSampleTheCanonicalPair() {
        val source = LyricsState(timelineReady = true, positionMs = 10L, capturedAtMs = 0L,
            playbackSpeed = .5f, anchorRevision = 1L)
        assertEquals(510L, lyricPositionAt(source, 1_000L))
        assertEquals(0L, lyricPositionAt(source.copy(playbackSpeed = -.5f), 1_000L))
        assertEquals(Long.MAX_VALUE, lyricPositionAt(source.copy(positionMs = Long.MAX_VALUE, playbackSpeed = Float.MAX_VALUE), Long.MAX_VALUE))
        assertEquals(Long.MAX_VALUE - 1L, lyricPositionAt(source.copy(positionMs = Long.MAX_VALUE - 1L, playbackSpeed = 0f), Long.MAX_VALUE))
    }
}
