package com.icar03.content.ui

import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import org.junit.Assert.assertFalse
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w1920dp-h1080dp-mdpi")
class MultiFingerGesturePanelTest {
    @get:Rule val compose = createComposeRule()

    @Test fun multiFingerInputDoesNotDispatchAppCommandsOrPageChanges() {
        val events = mutableListOf<ContentEvent>()
        val presentation = ContentPresentation().apply {
            updateGeometry(640f, 640f, 1280f, 1080)
            updatePhase(0)
            updateGestureWidth(60)
        }
        val state = previewState().copy(previewMode = false, page = PanelPage.Lyrics)
        compose.setContent {
            ContentTheme(false) {
                ContentPanel(state, { events += it }, presentation = presentation)
            }
        }
        compose.waitForIdle()
        compose.onNodeWithTag("content-gesture-region").performTouchInput {
            down(0, Offset(180f, 350f))
            advanceEventTime(30)
            down(1, Offset(350f, 450f))
            updatePointerBy(0, Offset(100f, 0f))
            updatePointerBy(1, Offset(100f, 0f))
            move(delayMillis = 200)
            up(0)
            up(1)
        }
        assertFalse(events.any { it is ContentEvent.GesturePerformed })
        assertFalse(events.any { it is ContentEvent.PageSelected })
        assertFalse(presentation.editorFullscreenActive)
    }
}
