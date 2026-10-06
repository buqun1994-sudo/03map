package com.icar03.content.ui

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.size
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.compose.LocalLifecycleOwner
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w320dp-h640dp-mdpi")
open class PageActionsOverlayTest {
    @get:Rule val compose = createComposeRule()
    private var tapRevision by mutableLongStateOf(0L)
    private var pageKey by mutableStateOf("lyrics-split")
    private var modal by mutableStateOf(false)
    private var nowMillis = 0L
    private val actions = mutableListOf<String>()
    private var underneathClicks = 0
    private val owner = TestOwner()

    private fun mount(compact: Boolean = false) {
        compose.setContent {
            val clock = remember { { nowMillis } }
            CompositionLocalProvider(LocalLifecycleOwner provides owner, LocalPageActionsClock provides clock) {
                ContentTheme(false) {
                    Box(Modifier.fillMaxSize()) {
                        Box(Modifier.align(Alignment.BottomEnd).size(64.dp).clickable { underneathClicks++ }
                            .testTag("underneath-button"))
                        PageActionsOverlay(listOf(
                            PageActionDescriptor("settings", "歌词设置", R.drawable.content_oem_ico_media_music),
                            PageActionDescriptor("fullscreen", "全屏歌词", R.drawable.content_oem_ico_media_music),
                        ), pageKey, tapRevision, modalActive = modal, compact = compact,
                            modifier = Modifier.align(Alignment.TopStart), onAction = { actions += it })
                    }
                }
            }
        }
        compose.waitForIdle()
    }

    private fun reveal() {
        compose.runOnIdle { tapRevision++ }
        compose.waitForIdle()
        compose.onNodeWithTag("page-actions-overlay").assertIsDisplayed()
    }

    @Test fun blankTapShowsOnlyTheMeasuredButtonRowAndDoesNotCoverOtherControls() {
        mount()
        compose.onNodeWithTag("page-actions-overlay").assertDoesNotExist()
        reveal()
        val bounds = compose.onNodeWithTag("page-actions-overlay").fetchSemanticsNode().boundsInRoot
        assertEquals(136f, bounds.width, .1f)
        assertEquals(64f, bounds.height, .1f)
        compose.onNodeWithTag("underneath-button").performTouchInput { click(center) }
        assertEquals(1, underneathClicks)
        assertTrue(actions.isEmpty())
        compose.onNodeWithTag("page-action-settings").performClick()
        assertEquals(listOf("settings"), actions)
    }

    @Test fun compactButtonsKeepACompleteTouchTargetAndPressRenewsAfterRelease() {
        mount(compact = true)
        reveal()
        val button = compose.onNodeWithTag("page-action-fullscreen")
        assertEquals(56f, button.fetchSemanticsNode().boundsInRoot.width, .1f)
        button.performTouchInput { down(center) }
        compose.waitForIdle()
        assertTrue(compose.onNodeWithTag("page-actions-overlay").fetchSemanticsNode().config[PageActionsHeld])
        compose.runOnIdle { nowMillis = 10_000L }
        button.performTouchInput { up() }
        compose.waitForIdle()
        val row = compose.onNodeWithTag("page-actions-overlay").fetchSemanticsNode()
        assertFalse(row.config[PageActionsHeld])
        assertEquals(13_000L, row.config[PageActionsDeadline])
        assertEquals(listOf("fullscreen"), actions)
    }

    @Test fun secondBlankTapHidesAndAnotherTapCanReverseTheFadeOut() {
        mount()
        reveal()
        compose.mainClock.autoAdvance = false
        compose.runOnIdle { tapRevision++ }
        settleTapRevision()
        compose.mainClock.advanceTimeBy(80L)
        compose.onNodeWithTag("page-action-fullscreen").assertIsNotEnabled()
        compose.runOnIdle { tapRevision++ }
        settleTapRevision()
        compose.mainClock.advanceTimeBy(240L)
        compose.onNodeWithTag("page-action-fullscreen").assertIsDisplayed().assertIsEnabled()
        compose.runOnIdle { tapRevision++ }
        settleTapRevision()
        compose.mainClock.advanceTimeBy(240L)
        compose.onNodeWithTag("page-actions-overlay").assertDoesNotExist()
        assertTrue(actions.isEmpty())
        compose.mainClock.autoAdvance = true
    }

    @Test fun pageModalAndStoppedLifecycleClearOldRequestsWithoutReplayingOnResume() {
        mount()
        reveal()
        compose.runOnIdle { pageKey = "lyrics-immersive" }
        compose.waitForIdle()
        compose.onNodeWithTag("page-actions-overlay").assertDoesNotExist()
        reveal()
        compose.runOnIdle { modal = true; tapRevision++ }
        compose.waitForIdle()
        compose.onNodeWithTag("page-actions-overlay").assertDoesNotExist()
        compose.runOnIdle { modal = false }
        compose.waitForIdle()
        compose.onNodeWithTag("page-actions-overlay").assertDoesNotExist()
        reveal()
        compose.runOnIdle { owner.registry.currentState = Lifecycle.State.CREATED }
        compose.waitForIdle()
        compose.onNodeWithTag("page-actions-overlay").assertDoesNotExist()
        compose.runOnIdle { owner.registry.currentState = Lifecycle.State.RESUMED }
        compose.waitForIdle()
        compose.onNodeWithTag("page-actions-overlay").assertDoesNotExist()
        reveal()
    }

    private fun settleTapRevision() {
        // The tap effect updates the lease after composition; drain Main between frame turns.
        repeat(2) {
            compose.mainClock.advanceTimeByFrame()
            compose.waitForIdle()
        }
    }

    private class TestOwner : LifecycleOwner {
        val registry = LifecycleRegistry(this).apply { currentState = Lifecycle.State.RESUMED }
        override val lifecycle: Lifecycle get() = registry
    }
}

@Config(sdk = [34], qualifiers = "w320dp-h640dp-mdpi")
class PageActionsOverlayApi34Test : PageActionsOverlayTest()
