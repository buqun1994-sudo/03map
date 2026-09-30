package com.icar03.content.preview

import com.icar03.content.ui.*
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.test.*
import org.junit.Assert.*
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class PreviewControllerTest {
    @Test fun successCommitsOnlyAfterConfirmation() = runTest {
        val controller = PreviewController(this)
        controller.dispatch(ContentEvent.ControlTapped(ControlId.Ventilation))
        assertEquals(0, controller.state.value.controls.getValue(ControlId.Ventilation).actual)
        assertEquals(1, controller.state.value.controls.getValue(ControlId.Ventilation).target)
        advanceUntilIdle()
        assertEquals(1, controller.state.value.controls.getValue(ControlId.Ventilation).actual)
        assertNull(controller.state.value.controls.getValue(ControlId.Ventilation).target)
    }
    @Test fun pendingControlIgnoresRepeatTap() = runTest {
        val controller = PreviewController(this)
        repeat(4) { controller.dispatch(ContentEvent.ControlTapped(ControlId.Heating)) }
        advanceUntilIdle()
        assertEquals(1, controller.state.value.controls.getValue(ControlId.Heating).actual)
    }
    @Test fun failureRollsBackEveryKindOfOperation() = runTest {
        val controller = PreviewController(this, previewState(PreviewScenario.Failure))
        controller.dispatch(ContentEvent.ControlTapped(ControlId.Lock))
        controller.dispatch(ContentEvent.BrightnessChanged(.2f))
        controller.dispatch(ContentEvent.VolumeChanged(.9f))
        controller.dispatch(ContentEvent.PlayPause)
        advanceUntilIdle()
        val state = controller.state.value
        assertEquals(1, state.controls.getValue(ControlId.Lock).actual)
        assertEquals(.65f, state.brightness.actual)
        assertEquals(.38f, state.volume.actual)
        assertNull(state.brightness.target)
        assertFalse(state.media.playing)
        assertNull(state.media.targetPlaying)
        assertTrue(state.message!!.contains("模拟失败"))
    }
    @Test fun scenarioChangeCancelsOldJobsAndNoStaleResultWins() = runTest {
        val controller = PreviewController(this)
        controller.dispatch(ContentEvent.ControlTapped(ControlId.Massage))
        controller.dispatch(ContentEvent.PlayPause)
        runCurrent()
        controller.dispatch(ContentEvent.ScenarioSelected(PreviewScenario.NoData))
        advanceUntilIdle()
        assertNull(controller.state.value.media.title)
        assertEquals("--", controller.state.value.range)
        assertEquals(0, controller.state.value.controls.getValue(ControlId.Massage).actual)
        assertNull(controller.state.value.message)
    }
    @Test fun lifecycleStopRollsBackAndResumeDoesNotReplay() = runTest {
        val controller = PreviewController(this)
        controller.dispatch(ContentEvent.VolumeChanged(.9f))
        controller.dispatch(ContentEvent.SourceSelected(MediaSource.Usb))
        runCurrent()
        controller.pause()
        controller.dispatch(ContentEvent.ControlTapped(ControlId.Lock))
        advanceUntilIdle()
        assertEquals(.38f, controller.state.value.volume.actual)
        assertNull(controller.state.value.volume.target)
        assertEquals(MediaSource.Bluetooth, controller.state.value.media.source)
        assertNull(controller.state.value.media.targetSource)
        assertEquals(1, controller.state.value.controls.getValue(ControlId.Lock).actual)
        controller.resume()
        controller.dispatch(ContentEvent.ControlTapped(ControlId.Lock))
        advanceUntilIdle()
        assertEquals(0, controller.state.value.controls.getValue(ControlId.Lock).actual)
    }
    @Test fun unavailableNeverQueuesCommands() = runTest {
        val initial = previewState(PreviewScenario.Unavailable)
        val controller = PreviewController(this, initial)
        controller.dispatch(ContentEvent.ControlTapped(ControlId.Lock))
        controller.dispatch(ContentEvent.BrightnessChanged(.1f))
        controller.dispatch(ContentEvent.PlayPause)
        controller.dispatch(ContentEvent.NextTrack)
        controller.dispatch(ContentEvent.SourceSelected(MediaSource.Usb))
        advanceUntilIdle()
        assertEquals(initial, controller.state.value)
    }
    @Test fun slidersClampFiniteValuesAndRejectNan() = runTest {
        val controller = PreviewController(this)
        controller.dispatch(ContentEvent.VolumeChanged(Float.NaN))
        assertNull(controller.state.value.volume.target)
        controller.dispatch(ContentEvent.VolumeChanged(9f))
        advanceUntilIdle()
        assertEquals(1f, controller.state.value.volume.actual)
    }
    @Test fun sourceChangesWaitForConfirmation() = runTest {
        val controller = PreviewController(this)
        controller.dispatch(ContentEvent.OpenSources)
        controller.dispatch(ContentEvent.SourceSelected(MediaSource.Usb))
        assertEquals(MediaSource.Bluetooth, controller.state.value.media.source)
        assertEquals(MediaSource.Usb, controller.state.value.media.targetSource)
        assertFalse(controller.state.value.sourcesOpen)
        advanceUntilIdle()
        assertEquals(MediaSource.Usb, controller.state.value.media.source)
    }
    @Test fun sourceFailureRestoresActualAndRejectsRepeatedChoice() = runTest {
        val controller = PreviewController(this, previewState(PreviewScenario.Failure))
        controller.dispatch(ContentEvent.OpenSources)
        controller.dispatch(ContentEvent.SourceSelected(MediaSource.Usb))
        controller.dispatch(ContentEvent.SourceSelected(MediaSource.Local))
        assertEquals(MediaSource.Usb, controller.state.value.media.targetSource)
        advanceUntilIdle()
        assertEquals(MediaSource.Bluetooth, controller.state.value.media.source)
        assertNull(controller.state.value.media.targetSource)
        assertTrue(controller.state.value.message!!.contains("模拟失败"))
    }
    @Test fun selectingCurrentSourceAndDismissingDoNotQueueWork() = runTest {
        val controller = PreviewController(this)
        controller.dispatch(ContentEvent.OpenSources)
        controller.dispatch(ContentEvent.SourceSelected(MediaSource.Bluetooth))
        assertFalse(controller.state.value.sourcesOpen)
        assertNull(controller.state.value.media.targetSource)
        controller.dispatch(ContentEvent.OpenSources)
        controller.dispatch(ContentEvent.DismissSheet)
        advanceUntilIdle()
        assertFalse(controller.state.value.sourcesOpen)
        assertNull(controller.state.value.message)
    }
    @Test fun themeAndPagePersistAcrossScenarioSelection() = runTest {
        val controller = PreviewController(this)
        controller.dispatch(ContentEvent.ToggleTheme)
        controller.dispatch(ContentEvent.PageSelected(PanelPage.Lyrics))
        controller.dispatch(ContentEvent.ScenarioSelected(PreviewScenario.Playing))
        assertTrue(controller.state.value.dark)
        assertEquals(PanelPage.Lyrics, controller.state.value.page)
        assertTrue(controller.state.value.media.playing)
    }
}
