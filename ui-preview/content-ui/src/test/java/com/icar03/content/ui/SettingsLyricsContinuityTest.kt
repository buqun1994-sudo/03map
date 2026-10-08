package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import android.os.Build
import android.os.SystemClock
import android.view.View
import android.view.WindowManager
import androidx.compose.foundation.layout.width
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.Dispatchers
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File

/** The actual Panel and native travel retain one lyric node while a settings layer owns input. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w1920dp-h1080dp-mdpi")
open class SettingsLyricsContinuityTest {
    @get:Rule val compose = createComposeRule()
    private val lines = (0 until 96).map { LyricLine(it * 2_000L, "Group $it") }
    private val presentation = ContentPresentation()
    private var viewportWidth by mutableStateOf(640.dp)
    private var state by mutableStateOf(ContentUiState())
    private val events = mutableListOf<ContentEvent>()
    private var sounds = 0
    private lateinit var nativeView: View

    private fun source(row: Int) = LyricsState(recordingKey = "settings-continuity", recordingGeneration = 1L,
        lines = lines, timelineReady = true, positionMs = row * 2_000L, playbackSpeed = 1f,
        capturedAtMs = SystemClock.elapsedRealtime(), activeIndex = row, activeIndices = listOf(row),
        scrollIndex = row, durationMs = 240_000L)

    private fun mount() {
        presentation.updateGeometry(640f, 640f, 1280f, 1080)
        presentation.updatePhase(0)
        state = ContentUiState(previewMode = false, dark = true, page = PanelPage.Lyrics,
            media = MediaState(title = "Synthetic continuity", artist = "Native fixture", playing = true, isSong = true),
            lyrics = source(20), showAmbientArtwork = false,
            lyricsProviderSettings = LyricsProviderUiState(available = true))
        compose.mainClock.autoAdvance = false
        compose.setContent {
            val view = LocalView.current
            SideEffect {
                nativeView = view
                var context = view.context
                while (context is android.content.ContextWrapper && context !is android.app.Activity) context = context.baseContext
                val window = (context as android.app.Activity).window
                @Suppress("DEPRECATION")
                window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                @Suppress("DEPRECATION")
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_FULLSCREEN or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE or View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY
            }
            CompositionLocalProvider(LocalDensity provides Density(1f, 1f),
                LocalLyricGeometryDispatcher provides Dispatchers.Unconfined,
                LocalLyricPreparationDispatcher provides Dispatchers.Unconfined,
                LocalContentClickSound provides { sounds++ }) {
                ContentTheme(state.dark) {
                    ContentPanel(state, { event -> events += event }, Modifier.width(viewportWidth), presentation = presentation)
                }
            }
        }
        advance(1_200)
        settled(20)
    }

    private fun change(block: () -> Unit) {
        compose.runOnIdle { block() }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
    }
    private fun advance(ms: Long) { compose.mainClock.advanceTimeBy(ms); compose.waitForIdle() }
    private fun body() = compose.onNodeWithTag("wallpaper-lyrics", useUnmergedTree = true)
    private fun <T> value(key: SemanticsPropertyKey<T>): T = compose.onNode(
        SemanticsMatcher.keyIsDefined(key), useUnmergedTree = true).fetchSemanticsNode().config[key]
    private fun cursor(row: Int) = change { state = state.copy(lyrics = source(row)) }
    private fun expected(row: Int): Float = body().fetchSemanticsNode().boundsInRoot.height * .41f -
        value(LyricRowTops)[row] - value(LyricRowHeights)[row] / 2f
    private fun settled(row: Int) {
        assertEquals(row, value(LyricScrollAnchor))
        assertEquals("native row reaches the admitted cursor", expected(row), value(LyricScrollOffset), .5f)
        assertFalse(value(LyricScrollRunning))
    }
    private fun oneBody(id: Int) {
        compose.onAllNodesWithTag("wallpaper-lyrics", useUnmergedTree = true).assertCountEquals(1)
        assertEquals(id, body().fetchSemanticsNode().id)
    }
    private fun mode(wide: Boolean) {
        change {
            viewportWidth = if (wide) 1920.dp else 640.dp
            presentation.updateGeometry(if (wide) 1920f else 640f, 640f, 1280f, 1080)
            presentation.updatePhase(if (wide) 1 else 0)
        }
        advance(800)
        settled(state.lyrics.scrollIndex)
    }
    private fun travelling(row: Int, before: Float) {
        assertEquals(row, value(LyricScrollAnchor))
        assertTrue("adjacent cursor retains automatic travel", value(LyricScrollRunning))
        assertTrue(value(LyricScrollPhase) > 0f)
        assertTrue("group delays stay intact", value(LyricScrollMaximumDelay) > 0)
        assertTrue(value(LyricScrollOffset) < before - 1f)
    }

    @Test fun allSettingsSectionsAndRetainedExitKeepNativeFollowInSplitAndWide() {
        mount()
        val id = body().fetchSemanticsNode().id
        var row = 20
        for (wide in listOf(false, true)) {
            mode(wide)
            oneBody(id)
            for (section in SettingsSection.entries) {
                val before = value(LyricScrollOffset)
                cursor(++row)
                advance(96)
                travelling(row, before)
                val phase = value(LyricScrollPhase)
                val delay = value(LyricScrollMaximumDelay)
                change { state = state.copy(settingsOpen = true, settingsSection = section) }
                assertTrue("opening $section retains the running travel", value(LyricScrollRunning))
                assertTrue(value(LyricScrollPhase) >= phase)
                assertEquals(delay, value(LyricScrollMaximumDelay))
                advance(800)
                settled(row)
                val covered = value(LyricScrollOffset)
                cursor(++row)
                advance(96)
                travelling(row, covered)
                advance(800)
                settled(row)
                change { state = state.copy(settingsOpen = false) }
                val exiting = value(LyricScrollOffset)
                cursor(++row)
                advance(64)
                compose.onNodeWithTag("settings-sheet").assertExists()
                travelling(row, exiting)
                val count = events.size
                val audible = sounds
                compose.onNodeWithTag(if (wide) "immersive-play" else "media-play").performClick()
                assertEquals("retained exit still rejects playback input", count, events.size)
                assertEquals(audible, sounds)
                oneBody(id)
                advance(800)
                settled(row)
                compose.onNodeWithTag("settings-sheet").assertDoesNotExist()
            }
        }
        capture("all-sections-wide")
        oneBody(id)
    }

    @Test fun manualBrowsingReturnsAfterFourSecondsWhileSettingsOwnInput() {
        mount()
        val id = body().fetchSemanticsNode().id
        var row = 20
        for (wide in listOf(false, true)) {
            mode(wide)
            body().performTouchInput { swipe(Offset(centerX, height * .65f), Offset(centerX, height * .35f), 240) }
            advance(64)
            val browsed = value(LyricScrollOffset)
            assertTrue("native rows actually moved", kotlin.math.abs(browsed - expected(row)) > 20f)
            advance(800)
            change { state = state.copy(settingsOpen = true, settingsSection = SettingsSection.Home) }
            advance(380)
            cursor(++row)
            advance(1_800)
            assertEquals("four-second browsing grace period still holds", browsed, value(LyricScrollOffset), .5f)
            advance(2_200)
            assertTrue(state.settingsOpen)
            settled(row)
            oneBody(id)
            capture("manual-return-${if (wide) "wide" else "split"}")
            change { state = state.copy(settingsOpen = false) }
            advance(600)
        }
    }

    private fun capture(name: String) {
        val image = Bitmap.createBitmap(nativeView.width, nativeView.height, Bitmap.Config.ARGB_8888)
        compose.runOnIdle { nativeView.draw(Canvas(image)) }
        val target = File("build/frames/settings-lyrics-continuity-api${Build.VERSION.SDK_INT}-$name.png")
        target.parentFile?.mkdirs()
        target.outputStream().use { assertTrue(image.compress(Bitmap.CompressFormat.PNG, 100, it)) }
        image.recycle()
    }
}

@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-mdpi")
class SettingsLyricsContinuityApi34Test : SettingsLyricsContinuityTest()
