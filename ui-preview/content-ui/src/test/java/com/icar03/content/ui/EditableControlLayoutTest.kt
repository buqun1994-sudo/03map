package com.icar03.content.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.size
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.test.*
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [34], qualifiers = "w480dp-h480dp-mdpi")
class EditableControlLayoutTest {
    @get:Rule val compose = createComposeRule()

    @Test
    fun candidateLongPressCrossesIntoGridAndCommitsSingleAdd() {
        val ids = mutableStateOf(listOf("lock"))
        val adds = mutableListOf<Pair<String, Int>>()
        val starts = mutableListOf<String>()
        compose.setContent {
            ContentTheme(false) {
                DragRoot(
                    enabled = true,
                    sessionKey = "control-center",
                    modifier = Modifier.fillMaxSize(),
                ) {
                    Row(Modifier.fillMaxSize()) {
                        Box(Modifier.size(260.dp)) {
                            EditableControlLayout(
                                ids = ids.value,
                                axis = EditableControlAxis.Grid,
                                columns = 4,
                                gap = 20.dp,
                                editing = true,
                                enabled = true,
                                targetKey = "grid",
                                contentPadding = androidx.compose.foundation.layout.PaddingValues(20.dp),
                                tagPrefix = "new-grid",
                                onAdd = { id, index ->
                                    adds += id to index
                                    ids.value = ids.value.toMutableList().apply { add(index, id) }
                                },
                            ) { id, _, _, _ ->
                                Box(Modifier.fillMaxSize().background(Color.Gray).testTag("new-grid-tile-$id"))
                            }
                        }
                        Box(
                            Modifier.size(110.dp).editDragSource(
                                id = "seat_heating",
                                targetKey = "grid",
                                enabled = true,
                                onDragStart = { starts += "seat_heating" },
                            ).testTag("candidate-seat-heating"),
                        )
                    }
                }
            }
        }
        compose.waitForIdle()
        compose.onNodeWithTag("new-grid-tile-lock").assertExists()
        compose.onNodeWithTag("candidate-seat-heating").performTouchInput { click() }
        assertTrue("short tap must not start candidate drag", starts.isEmpty())
        compose.onNodeWithTag("candidate-seat-heating").performTouchInput {
            down(center)
            advanceEventTime(700)
            moveBy(Offset.Zero)
            moveBy(Offset(-230f, 0f), delayMillis = 120)
            up()
        }
        compose.waitForIdle()

        assertEquals(listOf("seat_heating"), starts)
        assertEquals(1, adds.size)
        assertEquals("seat_heating", adds.single().first)
        assertTrue(adds.single().second in 0..1)
        compose.onNodeWithTag("new-grid-tile-seat_heating").assertExists()
    }
}
