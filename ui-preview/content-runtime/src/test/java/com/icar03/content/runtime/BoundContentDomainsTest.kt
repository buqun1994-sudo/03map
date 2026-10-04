package com.icar03.content.runtime

import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithText
import com.autonavi.amapauto.content.*
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.util.Locale

/** Actual non-preview Binding/StateFlow/pager entry, with no live external services. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class BoundContentDomainsTest {
    @get:Rule val compose = createComposeRule()

    @Test fun productionClockAndLyricsFlowsReachTheirLeavesWithoutReplacingTheShell() {
        val store = ContentStore(RuntimeEnvironment.getApplication(), ContentPorts.PreviewVehiclePort(),
            ContentPorts.PreviewMediaPort(), object : ContentPorts.SystemPort {
                override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
                override fun write(kind: Int, percent: Int) = false
            })
        val mapper = ContentUiMapper()
        val binding = ContentBinding(store, mapper = mapper)
        val visible = mutableStateOf(true)
        var ownerCompositions = 0
        val media = ContentPorts.MediaSnapshot(true, false, "网易云音乐", false, 1,
            "实际分域测试歌曲", "实际分域作者", true, true, null, "bound-domain-track", "测试专辑",
            30_000L, 1_000L, 1_000L, 0f, "", ContentPorts.MediaSongIdentity.SONG)
        try {
            store.setPageIndex(1)
            store.setShowSeconds(false)
            store.setShowWeekday(false)
            store.acceptMediaSnapshot(media)
            compose.setContent {
                SideEffect { ownerCompositions++ }
                if (visible.value) BoundBindingPanel(binding)
            }
            compose.onNodeWithText("实际分域测试歌曲").assertIsDisplayed()
            compose.waitForIdle()
            val shell = binding.state.value
            assertFalse(shell.previewMode)
            val shellCount = mapper.shellProjectionCount
            val lyricCount = mapper.lyricsProjectionCount
            val ownerCount = ownerCompositions
            val clockSample = 1_700_000_000_000L
            val expected = ContentClockPresenter(Locale.SIMPLIFIED_CHINESE).project(clockSample, false, false)
            compose.runOnIdle { store.updateClock(clockSample) }
            compose.onNodeWithText(expected.time, substring = true).assertIsDisplayed()
            compose.runOnIdle {
                assertSame(shell, binding.state.value)
                assertEquals(shellCount, mapper.shellProjectionCount)
                assertEquals(lyricCount, mapper.lyricsProjectionCount)
            }
            compose.runOnIdle {
                store.acceptLyricsSnapshot(ContentPorts.LyricsSnapshot(media.recordingKey(), media.generation,
                    ContentPorts.LyricsSnapshot.NETWORK_ERROR, emptyList(), null))
            }
            compose.onNodeWithText("网络错误").assertIsDisplayed()
            compose.runOnIdle {
                assertEquals(expected, binding.clock.value)
                assertSame(shell, binding.state.value)
                assertEquals(shellCount, mapper.shellProjectionCount)
                assertEquals(ownerCount, ownerCompositions)
            }
            compose.runOnIdle {
                store.acceptLyricsSnapshot(ContentPorts.LyricsSnapshot(media.recordingKey(), media.generation,
                    ContentPorts.LyricsSnapshot.INSTRUMENTAL, emptyList(), null))
            }
            compose.onNodeWithText("纯音乐，请您欣赏").assertIsDisplayed()
            compose.onNodeWithText("实际分域测试歌曲").assertIsDisplayed()
            compose.runOnIdle { assertSame(shell, binding.state.value); assertEquals(shellCount, mapper.shellProjectionCount) }
        } finally { compose.runOnIdle { visible.value = false }; store.destroy() }
    }
}
