package com.icar03.content.ui

import androidx.compose.foundation.layout.size
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.Dp
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
class ControlCardListInteractionTest {
    @get:Rule val compose = createComposeRule()
    private val events = mutableListOf<ContentEvent>()
    private var sounds = 0
    private val state = mutableStateOf(previewState().copy(
        page = PanelPage.VehicleInfo, previewMode = false, layoutPreferencesLoaded = true,
        controlCardIds = listOf("media", "volume"), controlCardIndex = 0,
        controlCardListOpen = true,
    ))

    private fun mount(editing: Boolean = false, width: Dp = 640.dp) {
        state.value = state.value.copy(controlCardEditing = editing)
        compose.setContent {
            ContentTheme(false) {
                CompositionLocalProvider(LocalContentWindowActive provides true,
                    LocalContentClickSound provides { sounds++ }) {
                    ContentPanel(state.value, { event ->
                        events += event
                        if (event is LayoutAction) state.value = LayoutEditor.reduce(state.value, event)
                    }, Modifier.size(width, 1080.dp), canDispatch = { event ->
                        event !is LayoutAction || LayoutEditor.accepts(state.value, event)
                    })
                }
            }
        }
        compose.waitForIdle()
    }

    private fun play() = compose.onNode(hasContentDescription("播放") and
        hasAnyAncestor(hasTestTag("control-card-media")))
    private fun volume() = compose.onNode(hasTestTag("volume-card") and
        hasAnyAncestor(hasTestTag("control-card-volume")), useUnmergedTree = true)

    @Test
    @Config(qualifiers = "w1920dp-h1080dp-mdpi")
    fun fullWidthAddingListFitsRealMediaContentWithinTheCardRow() {
        state.value = state.value.copy(controlCardAddPanelOpen = true)
        mount(editing = true, width = 1920.dp)
        val row = compose.onNodeWithTag("control-card-media").getUnclippedBoundsInRoot()
        val title = compose.onNode(hasTestTag("media-card-title") and
            hasAnyAncestor(hasTestTag("control-card-media")), useUnmergedTree = true)
            .getUnclippedBoundsInRoot()
        val artwork = compose.onNode(hasContentDescription("音乐封面") and
            hasAnyAncestor(hasTestTag("control-card-media")), useUnmergedTree = true)
            .getUnclippedBoundsInRoot()
        val rowHeight = row.bottom - row.top
        assertTrue("Metadata must fit inside the real card row: $title / $row",
            title.bottom - title.top <= rowHeight / 2)
        assertTrue("Artwork must fit inside the real card row: $artwork / $row",
            artwork.bottom - artwork.top <= rowHeight)
    }

    @Test fun normalListKeepsPlaybackAndVolumeOperationalWithoutSelectingOrReordering() {
        mount()
        play().assertIsEnabled().performTouchInput { click() }
        play().performClick()
        assertEquals(listOf(ContentEvent.PlayPause, ContentEvent.PlayPause), events)
        assertEquals(2, sounds)
        volume().assertIsEnabled().performTouchInput { click(Offset(width / 2f, height * .1f)) }
        assertEquals(1, events.count { it is ContentEvent.VolumeChanged })
        assertTrue(events.none { it is LayoutAction })
        assertEquals(0, state.value.controlCardIndex)
        assertEquals(listOf("media", "volume"), state.value.controlCardIds)
        assertEquals(2, sounds)
    }

    @Test fun sortingDisablesBusinessControlsAndKeepsTheFixedAddEntry() {
        mount(editing = true)
        play().assertIsNotEnabled().performClick()
        volume().assertIsNotEnabled()
        compose.onNodeWithTag("control-card-add-entry").assertIsDisplayed()
        assertTrue(events.isEmpty())
        assertEquals(0, sounds)
    }
}
