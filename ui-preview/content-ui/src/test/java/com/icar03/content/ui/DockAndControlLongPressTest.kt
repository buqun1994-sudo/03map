package com.icar03.content.ui

import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.foundation.layout.size
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Removed editor long presses remain inert; ordinary short taps still dispatch once. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [30], qualifiers = "w640dp-h1080dp-mdpi")
class DockAndControlLongPressTest {
    @get:Rule val compose = createComposeRule()
    private val events = mutableListOf<ContentEvent>()
    private val sounds = mutableStateOf(0)
    private val state = mutableStateOf(ContentUiState(previewMode = false, page = PanelPage.Lyrics,
        layoutPreferencesLoaded = true, controlCardIds = listOf("media"),
        features = com.icar03.content.model.VehicleFeature.entries.associateWith { feature ->
            if (feature == com.icar03.content.model.VehicleFeature.GloveBox) FeatureState(available = true)
            else FeatureState(actual = 0, known = true, available = true)
        }))

    private fun mount() {
        compose.setContent {
            ContentTheme(false) {
                CompositionLocalProvider(LocalContentClickSound provides { sounds.value++ }) {
                    ContentPanel(state.value, { events += it }, Modifier.size(640.dp, 1080.dp))
                }
            }
        }
        compose.waitForIdle()
    }

    private fun longPress(tag: String) {
        compose.onNodeWithTag(tag).performTouchInput {
            down(center)
            advanceEventTime(800)
            moveBy(Offset.Zero)
            up()
        }
        compose.waitForIdle()
    }

    @Test fun mediaLongPressDoesNotOpenAnEditorOrTriggerPlayback() {
        mount()
        longPress("media-play")
        assertTrue(events.isEmpty())
        assertEquals(0, sounds.value)
        compose.onNodeWithTag("media-play").performClick()
        assertEquals(listOf(ContentEvent.PlayPause), events)
        assertEquals(1, sounds.value)
    }

    @Test fun dockLongPressDoesNotEditOrTriggerActionButShortTapStillWorks() {
        mount()
        longPress("dock-Settings")
        longPress("dock-GloveBox")
        assertTrue(events.isEmpty())
        assertEquals(0, sounds.value)
        assertFalse(state.value.dockEditing)

        compose.onNodeWithTag("dock-Settings").performClick()
        assertEquals(ContentEvent.SettingsTapped, events.last())
        compose.onNodeWithTag("dock-GloveBox").assertIsNotSelected().performClick()
        assertEquals(ContentEvent.FeatureTapped(ShortcutId.GloveBox), events.last())
        assertEquals(2, sounds.value)
    }
}
