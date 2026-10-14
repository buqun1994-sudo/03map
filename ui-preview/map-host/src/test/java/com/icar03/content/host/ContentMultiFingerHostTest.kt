package com.icar03.content.host

import android.app.Activity
import android.widget.FrameLayout
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.model.GestureAction
import com.icar03.content.model.GestureCommand
import com.icar03.content.model.MapPresentationPort
import com.icar03.content.ui.ContentEvent
import com.icar03.content.ui.ContentPresentation
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], qualifiers = "w1920dp-h1080dp-mdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
class ContentMultiFingerHostTest {
    @org.junit.Before fun frameClock() {
        org.robolectric.shadows.ShadowChoreographer.setPaused(false)
        org.robolectric.shadows.ShadowChoreographer.setFrameDelay(java.time.Duration.ofMillis(16))
    }
    @org.junit.After fun drain() {
        org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idleFor(java.time.Duration.ofMillis(64))
    }
    private class Port : MapPresentationPort {
        var enters = 0; var exits = 0
        override fun settleToCollapsed() { enters++ }
        override fun settleToExpanded() { exits++ }
    }
    private fun withHost(block: (ContentComposeHost, ContentStore, ContentPresentation, Port, FrameLayout) -> Unit) {
        val controller = Robolectric.buildActivity(Activity::class.java).setup()
        val activity = controller.get()
        val root = FrameLayout(activity)
        val panel = FrameLayout(activity)
        root.addView(panel); activity.setContentView(root)
        val store = ContentStore(activity)
        store.setPageIndex(1)
        val host = ContentComposeHost(activity, panel, store)
        val presentation = host.javaClass.getDeclaredField("presentation").apply { isAccessible = true }.get(host) as ContentPresentation
        val port = Port()
        try {
            host.bindMapPresentation(port); host.updateDivider(640f, 640f, 1280f)
            advanceHostFrames(root)
            block(host, store, presentation, port, root)
        } finally { host.destroy(); store.destroy(); controller.pause().stop().destroy() }
    }
    private fun dispatch(host: ContentComposeHost, command: GestureCommand) {
        host.javaClass.getDeclaredMethod("dispatchPresentation", ContentEvent::class.java).apply { isAccessible = true }
            .invoke(host, ContentEvent.GesturePerformed(command))
    }

    @Test fun gestureEntryWaitsForExistingPreparationAndExitUsesTheSameMapPort() = withHost { host, _, actual, port, _ ->
        dispatch(host, GestureCommand.TwoLeft)
        assertEquals(0L, actual.pendingEnter)
        dispatch(host, GestureCommand.TwoRight)
        val pending = actual.pendingEnter
        assertTrue(pending > 0); assertEquals(0, port.enters)
        dispatch(host, GestureCommand.TwoRight)
        assertEquals(pending, actual.pendingEnter)
        actual.entryPrepared(pending)
        assertEquals(1, port.enters)
        actual.entryPrepared(pending)
        assertEquals(1, port.enters)
        host.updateDivider(1920f, 640f, 1280f); host.updatePanelPhase(1)
        dispatch(host, GestureCommand.TwoLeft)
        assertEquals(1, port.exits)
    }

    @Test fun latestStorePreferenceOwnsEveryDirectionAndNoopNeverFallsBackToToggle() = withHost { host, store, actual, port, root ->
        store.setGestureAction(GestureCommand.TwoRight, GestureAction.None)
        advanceHostFrames(root)
        dispatch(host, GestureCommand.TwoRight)
        assertEquals(0L, actual.pendingEnter); assertEquals(0, port.enters)
        store.setGestureAction(GestureCommand.FourUp, GestureAction.EnterImmersive)
        advanceHostFrames(root)
        dispatch(host, GestureCommand.FourUp)
        assertTrue(actual.pendingEnter > 0)
        actual.entryPrepared(actual.pendingEnter)
        assertEquals(1, port.enters)
    }

    private fun updateOnWorker(update: () -> Unit) {
        val worker = Thread(update).apply { start() }
        worker.join(2_000L)
        assertFalse("cached Store update must complete before checking the paused main projection", worker.isAlive)
    }

    @Test fun queuedPreferenceChangesAreResolvedBeforeAnyUiPublicationInBothDirections() = withHost { host, store, actual, port, _ ->
        val binding = hostBinding(host)
        updateOnWorker { store.setGestureAction(GestureCommand.TwoRight, GestureAction.None) }
        assertEquals(GestureAction.None, store.snapshot().gestureActions[GestureCommand.TwoRight])
        assertEquals(GestureAction.EnterImmersive, binding.state.value.gestureActions[GestureCommand.TwoRight])
        dispatch(host, GestureCommand.TwoRight)
        assertEquals(0L, actual.pendingEnter); assertEquals(0, port.enters)
        assertEquals(GestureAction.EnterImmersive, binding.state.value.gestureActions[GestureCommand.TwoRight])

        updateOnWorker { store.setGestureAction(GestureCommand.FourUp, GestureAction.EnterImmersive) }
        assertEquals(GestureAction.None, binding.state.value.gestureActions[GestureCommand.FourUp])
        dispatch(host, GestureCommand.FourUp)
        assertTrue(actual.pendingEnter > 0)
        actual.entryPrepared(actual.pendingEnter)
        assertEquals(1, port.enters)
    }

    @Test fun queuedUnsupportedPageRejectsMapAndContentCommandsBeforeUiPublication() = withHost { host, store, actual, port, _ ->
        val binding = hostBinding(host)
        updateOnWorker { store.setPageIndex(0) }
        assertEquals(com.icar03.content.ui.PanelPage.Lyrics, binding.state.value.page)
        assertFalse(host.isMapGestureAllowed())
        dispatch(host, GestureCommand.TwoRight)
        assertEquals(0L, actual.pendingEnter); assertEquals(0, port.enters)
    }

    @Test fun unsupportedPageModalAndPauseRejectGestureAndLatePreparation() = withHost { host, store, actual, port, root ->
        store.setPageIndex(0); advanceHostFrames(root)
        dispatch(host, GestureCommand.TwoRight)
        assertEquals(0L, actual.pendingEnter)
        store.setPageIndex(1); advanceHostFrames(root)
        hostBinding(host).dispatch(ContentEvent.SettingsTapped)
        dispatch(host, GestureCommand.TwoRight)
        assertEquals(0L, actual.pendingEnter)
        hostBinding(host).dispatch(ContentEvent.SettingsDismissed)
        advanceHostFrames(root)
        dispatch(host, GestureCommand.TwoRight)
        val token = actual.pendingEnter
        assertTrue(token > 0)
        hostBinding(host).dispatch(ContentEvent.SettingsTapped)
        actual.entryPrepared(token)
        assertEquals(0, port.enters)
        hostBinding(host).dispatch(ContentEvent.SettingsDismissed)
        host.pause()
        dispatch(host, GestureCommand.TwoRight)
        assertEquals(0L, actual.pendingEnter)
    }
}
