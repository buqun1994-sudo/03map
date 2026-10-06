package com.icar03.content.ui

import android.os.SystemClock
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Text
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.snapshots.Snapshot
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.icar03.content.model.PlaybackTrajectory
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import org.robolectric.shadows.ShadowSystemClock
import java.time.Duration

/** Samples synthetic immutable Store anchors through the formal progress surface. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28, 34], qualifiers = "w480dp-h640dp-mdpi")
class ImmersivePlaybackProgressTest {
    @get:Rule val compose = createComposeRule()
    private val current = mutableStateOf(LyricsState())
    private val pageVisible = mutableStateOf(true)
    private val presentationProbe = mutableStateOf("active")
    private val owner = object : LifecycleOwner {
        val registry = LifecycleRegistry(this)
        override val lifecycle: Lifecycle get() = registry
    }

    private fun anchored(positionMs: Long = 5_000L, speed: Float = 0f,
        key: String = "first", revision: Long = 1L, timed: Boolean = true): LyricsState {
        val capturedAt = SystemClock.elapsedRealtime()
        return LyricsState(recordingKey = key, timelineReady = timed, positionMs = positionMs,
            capturedAtMs = capturedAt, playbackSpeed = speed, durationMs = 60_000L, timed = timed,
            anchorRevision = revision,
            playbackTrajectory = PlaybackTrajectory(positionMs, capturedAt, speed, 60_000L))
    }

    private fun mount(initial: () -> LyricsState) {
        ShadowSystemClock.advanceBy(Duration.ofMillis(1_000))
        owner.registry.currentState = Lifecycle.State.RESUMED
        current.value = initial()
        compose.mainClock.autoAdvance = false
        compose.setContent {
            CompositionLocalProvider(LocalLifecycleOwner provides owner,
                LocalIconVisible provides pageVisible.value) {
                ContentTheme(false) {
                    Box(Modifier.fillMaxSize().testTag("progress-host")) {
                        ImmersivePlaybackProgress(current.value, compact = true)
                        Text(presentationProbe.value, Modifier.align(Alignment.BottomEnd).testTag("recomposer-probe"))
                    }
                }
            }
        }
        advance(64)
    }

    private fun project(source: LyricsState) {
        compose.runOnIdle { current.value = source; Snapshot.sendApplyNotifications() }
        advance(64)
    }

    private fun advance(framesMs: Long) {
        compose.mainClock.advanceTimeBy(framesMs)
        compose.waitForIdle()
    }

    private fun advanceMedia(milliseconds: Long) {
        ShadowSystemClock.advanceBy(Duration.ofMillis(milliseconds))
        advance(64)
    }

    private fun elapsedText(): String = compose.onNodeWithTag("immersive-progress-elapsed")
        .fetchSemanticsNode().config[SemanticsProperties.Text].single().text

    private fun elapsedSeconds(): Long {
        val parts = elapsedText().split(':').map(String::toLong)
        return parts.fold(0L) { total, part -> total * 60L + part }
    }

    @Test fun unknownPositionDoesNotBecomeZeroOrReuseAnUntrustedPosition() {
        mount { LyricsState(recordingKey = "unknown", durationMs = 60_000L) }
        compose.onNodeWithTag("immersive-progress-elapsed").assertTextEquals("--:--")
        compose.onNodeWithTag("immersive-progress-duration").assertTextEquals("1:00")
        compose.onNodeWithTag("immersive-progress-fill").assertDoesNotExist()
        project(current.value.copy(positionMs = 5_000L))
        compose.onNodeWithTag("immersive-progress-elapsed").assertTextEquals("--:--")
        compose.onNodeWithTag("immersive-progress-fill").assertDoesNotExist()
    }

    @Test fun knownZeroRemainsDifferentFromUnknownAndMissingDuration() {
        mount { anchored(positionMs = 0L) }
        compose.onNodeWithTag("immersive-progress-elapsed").assertTextEquals("0:00")
        compose.onNodeWithTag("immersive-progress-duration").assertTextEquals("1:00")
        compose.onNodeWithTag("immersive-progress-fill").assertDoesNotExist()
        project(LyricsState(recordingKey = "unknown", positionMs = -1L, durationMs = 0L))
        compose.onNodeWithTag("immersive-progress-elapsed").assertTextEquals("--:--")
        compose.onNodeWithTag("immersive-progress-duration").assertTextEquals("--:--")
    }

    @Test fun canonicalPlaybackPauseSeekAndRecordingChangeDoNotCarryAnOldPosition() {
        mount { anchored(speed = 1f) }
        val playing = current.value
        advanceMedia(2_000)
        assertSame("drawing did not replace the Store anchor", playing, current.value)
        assertTrue(elapsedSeconds() >= 7L)
        project(anchored(positionMs = 6_000L, revision = 2L))
        compose.onNodeWithTag("immersive-progress-elapsed").assertTextEquals("0:06")
        advanceMedia(2_000)
        compose.onNodeWithTag("immersive-progress-elapsed").assertTextEquals("0:06")
        project(anchored(positionMs = 0L, revision = 3L))
        compose.onNodeWithTag("immersive-progress-elapsed").assertTextEquals("0:00")
        compose.onNodeWithTag("immersive-progress-fill").assertDoesNotExist()
        project(LyricsState(recordingKey = "second", durationMs = 120_000L))
        compose.onNodeWithTag("immersive-progress-elapsed").assertTextEquals("--:--")
        compose.onNodeWithTag("immersive-progress-duration").assertTextEquals("2:00")
        compose.onNodeWithTag("immersive-progress-fill").assertDoesNotExist()
        project(anchored(positionMs = 3_000L, key = "second", revision = 4L))
        compose.onNodeWithTag("immersive-progress-elapsed").assertTextEquals("0:03")
    }

    @Test fun plainTextOrMissingBodyDoesNotDisableTheCanonicalMediaTrajectory() {
        mount { anchored(speed = 1f, timed = false) }
        val source = current.value
        assertTrue(source.lines.isEmpty())
        assertFalse(source.timelineReady)
        val before = elapsedSeconds()
        advanceMedia(2_000)
        assertSame("no second media event is needed to display progress", source, current.value)
        assertTrue("canonical progress keeps advancing without timed lyrics", elapsedSeconds() >= before + 2L)
        compose.onNodeWithTag("immersive-progress-fill").assertIsDisplayed()
    }

    @Test fun unknownDurationStillAdvancesTrustedElapsedTime() {
        mount {
            anchored(speed = 1f).let { source -> source.copy(durationMs = 0L,
                playbackTrajectory = PlaybackTrajectory(source.positionMs, source.capturedAtMs, 1f, 0L)) }
        }
        val source = current.value
        val before = elapsedSeconds()
        advanceMedia(2_000)
        assertSame(source, current.value)
        assertTrue(elapsedSeconds() >= before + 2L)
        compose.onNodeWithTag("immersive-progress-duration").assertTextEquals("--:--")
        compose.onNodeWithTag("immersive-progress-fill").assertDoesNotExist()
    }

    @Test fun projectedEndAndSameRecordingSeekBackRestartWithoutAnArtificialPause() {
        mount {
            anchored(positionMs = 1_000L, speed = 1f).let { source -> source.copy(durationMs = 4_000L,
                playbackTrajectory = PlaybackTrajectory(source.positionMs, source.capturedAtMs, 1f, 4_000L)) }
        }
        advanceMedia(5_000)
        compose.onNodeWithTag("immersive-progress-elapsed").assertTextEquals("0:04")
        project(anchored(positionMs = 0L, speed = 1f, revision = 2L).let { source -> source.copy(durationMs = 4_000L,
            playbackTrajectory = PlaybackTrajectory(source.positionMs, source.capturedAtMs, 1f, 4_000L)) })
        compose.onNodeWithTag("immersive-progress-elapsed").assertTextEquals("0:00")
        advanceMedia(1_000)
        assertTrue(elapsedSeconds() in 1L..3L)
    }

    @Test fun stoppedAndHiddenPresentationFreezeThenResumeFromTheSameStoreAnchor() {
        mount { anchored(speed = 1f) }
        val source = current.value
        // This injected owner does not own ComposeRule's Recomposer: STOP cannot hide
        // a still-running sampler behind a paused rendering clock.
        compose.runOnIdle { owner.registry.currentState = Lifecycle.State.CREATED; Snapshot.sendApplyNotifications() }
        advance(64)
        val stopped = elapsedText()
        advanceMedia(5_000)
        compose.runOnIdle { presentationProbe.value = "recomposed while stopped"; Snapshot.sendApplyNotifications() }
        advance(64)
        compose.onNodeWithTag("recomposer-probe").assertTextEquals("recomposed while stopped")
        assertEquals(stopped, elapsedText())
        compose.runOnIdle { owner.registry.currentState = Lifecycle.State.STARTED; Snapshot.sendApplyNotifications() }
        advance(64)
        assertSame(source, current.value)
        val resumeNow = SystemClock.elapsedRealtime()
        val resumeActual = elapsedText()
        val resumeExpected = requireNotNull(source.playbackTrajectory).sampleAt(resumeNow)
        val resumeFacts = "sdk=${android.os.Build.VERSION.SDK_INT} owner=${owner.lifecycle.currentState} " +
            "systemElapsed=$resumeNow capturedAt=${source.capturedAtMs} canonicalExpected=$resumeExpected " +
            "actual=$resumeActual composeClock=${compose.mainClock.currentTime}"
        assertTrue("resume samples elapsed media time instead of restarting a clock: $resumeFacts", elapsedSeconds() >= 10L)
        compose.runOnIdle { pageVisible.value = false; Snapshot.sendApplyNotifications() }
        advance(64)
        val hidden = elapsedText()
        advanceMedia(2_000)
        assertEquals(hidden, elapsedText())
        compose.runOnIdle { pageVisible.value = true; Snapshot.sendApplyNotifications() }
        advance(64)
        assertSame(source, current.value)
        assertTrue(elapsedSeconds() >= 12L)
    }
}
