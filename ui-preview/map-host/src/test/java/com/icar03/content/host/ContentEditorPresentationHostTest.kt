package com.icar03.content.host

import android.app.Activity
import android.widget.FrameLayout
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.model.MapPresentationPort
import com.icar03.content.ui.ContentEvent
import com.icar03.content.ui.ContentPresentation
import com.icar03.content.ui.ContentUiState
import com.icar03.content.ui.ControlCenterEditAction
import com.icar03.content.ui.LayoutAction
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
class ContentEditorPresentationHostTest {
    @org.junit.Before fun frameClock() {
        org.robolectric.shadows.ShadowChoreographer.setPaused(false)
        org.robolectric.shadows.ShadowChoreographer.setFrameDelay(java.time.Duration.ofMillis(16))
    }
    @org.junit.After fun drain() {
        org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idleFor(java.time.Duration.ofMillis(64))
    }

    /** The real controller owns animation; this port supplies its phase and divider callbacks explicitly. */
    private class Port(private val host: ContentComposeHost) : MapPresentationPort {
        val targets = mutableListOf<Boolean>()
        val enabled = mutableListOf<Boolean>()
        override fun settleToCollapsed() { targets += true; host.updatePanelPhase(5) }
        override fun settleToExpanded() { targets += false; host.updatePanelPhase(4) }
        override fun updateGestureState(enabled: Boolean, dark: Boolean, reminderEnabled: Boolean, remind: Boolean) {
            this.enabled += enabled
        }
        fun frame(progress: Float, stable: Boolean = false) {
            host.updateDivider(640f + 1280f * progress, 640f, 1280f)
            if (stable) host.updatePanelPhase(if (progress >= .999f) 1 else 0)
        }
    }

    private class Fixture(val root: FrameLayout, val panel: FrameLayout, val store: ContentStore, val host: ContentComposeHost) {
        val binding = hostBinding(host)
        val presentation = host.javaClass.getDeclaredField("presentation").apply { isAccessible = true }.get(host) as ContentPresentation
        val port = Port(host)
        fun action(action: ControlCenterEditAction) {
            val event = LayoutAction(action)
            assertTrue("fixture action must pass the production layout gate: $action",
                com.icar03.content.ui.LayoutEditor.accepts(checkNotNull(binding.currentPresentationState()), event))
            binding.dispatch(event)
            advanceHostFrames(root)
        }
        fun openCenterEditor() {
            action(ControlCenterEditAction.Open)
            action(ControlCenterEditAction.BeginEdit)
            assertFalse("ordinary editing does not request fullscreen", presentation.editorFullscreenActive)
        }
        fun assertIdentity(before: ContentUiState) {
            val after = binding.state.value
            assertEquals(before.page, after.page)
            assertEquals(before.controlCardIds, after.controlCardIds)
            assertEquals(before.controlCardIndex, after.controlCardIndex)
            assertEquals(before.dockItems, after.dockItems)
            assertEquals(before.controls.mapValues { it.value.actual to it.value.target },
                after.controls.mapValues { it.value.actual to it.value.target })
        }
    }

    private fun withHost(pageIndex: Int = 0, block: (Fixture) -> Unit) {
        val controller = Robolectric.buildActivity(Activity::class.java).setup()
        val activity = controller.get()
        val root = FrameLayout(activity)
        val panel = FrameLayout(activity)
        root.addView(panel)
        activity.setContentView(root)
        val store = ContentStore(activity)
        store.setPageIndex(pageIndex)
        val host = ContentComposeHost(activity, panel, store)
        val fixture = Fixture(root, panel, store, host)
        try {
            host.bindMapPresentation(fixture.port)
            host.updateDivider(640f, 640f, 1280f)
            advanceHostFrames(root)
            block(fixture)
        } finally { host.destroy(); store.destroy(); controller.pause().stop().destroy() }
    }

    @Test fun addCatalogUsesPhysicalMapProgressAndRestoresWithoutEnteringLyrics() = withHost { f ->
        val before = f.binding.state.value
        f.openCenterEditor()
        assertTrue(f.port.targets.isEmpty())
        f.action(ControlCenterEditAction.ToggleAddPanel)
        assertTrue(f.presentation.editorFullscreenActive)
        assertEquals(listOf(true), f.port.targets)
        assertEquals(0L, f.presentation.pendingEnter)
        assertEquals(0L, f.presentation.sessionGeneration)
        assertFalse(f.host.isMapGestureAllowed())
        f.port.frame(.5f)
        assertEquals(.5f, f.presentation.editorProgress, 0f)
        assertEquals("content remains at its original compact endpoint", 0f, f.presentation.progress, 0f)
        assertEquals(0, f.presentation.phase)
        assertEquals(1280, f.panel.layoutParams.width)
        f.port.frame(1f, stable = true)
        assertEquals("the non-lyrics collapse guard must allow the editor endpoint", listOf(true), f.port.targets)
        f.assertIdentity(before)
        f.action(ControlCenterEditAction.ToggleAddPanel)
        assertEquals(listOf(true, false), f.port.targets)
        assertTrue("keep editor geometry during restoration", f.presentation.editorFullscreenActive)
        f.port.frame(.25f)
        assertTrue(f.presentation.editorFullscreenActive)
        assertEquals(.25f, f.presentation.editorProgress, 0f)
        assertEquals(0f, f.presentation.progress, 0f)
        f.port.frame(0f, stable = true)
        assertFalse(f.presentation.editorFullscreenActive)
        assertEquals(640, f.panel.layoutParams.width)
        assertEquals(0, f.presentation.phase)
        f.assertIdentity(before)
    }

    @Test fun alreadyCollapsedLyricsRetainTheirOriginalEndpointAfterEditorBack() = withHost(1) { f ->
        f.port.frame(1f, stable = true)
        val before = f.binding.state.value
        f.openCenterEditor()
        f.action(ControlCenterEditAction.ToggleAddPanel)
        assertTrue(f.presentation.editorFullscreenActive)
        assertEquals(1f, f.presentation.editorProgress, 0f)
        assertTrue("an already collapsed map needs no extra entry animation", f.port.targets.isEmpty())
        assertEquals(1f, f.presentation.progress, 0f)
        assertEquals(0L, f.presentation.pendingEnter)
        assertTrue(f.host.handleBack())
        assertEquals(listOf(true), f.port.targets)
        assertTrue(f.host.handleBack())
        assertEquals("Back during restore must not exit the original lyrics endpoint", listOf(true), f.port.targets)
        f.port.frame(1f, stable = true)
        advanceHostFrames(f.root)
        assertFalse(f.presentation.editorFullscreenActive)
        assertTrue(f.presentation.collapsed)
        f.assertIdentity(before)
        assertTrue(f.host.handleBack())
        assertEquals(listOf(true, false), f.port.targets)
    }

    @Test fun rapidCloseAndReopenRetargetOneMapAnimationAndKeepOriginalRestoreEndpoint() = withHost(2) { f ->
        val before = f.binding.state.value
        f.openCenterEditor()
        f.action(ControlCenterEditAction.ToggleAddPanel)
        f.port.frame(.4f)
        f.action(ControlCenterEditAction.ToggleAddPanel)
        f.port.frame(.2f)
        f.action(ControlCenterEditAction.ToggleAddPanel)
        assertEquals(listOf(true, false, true), f.port.targets)
        assertTrue(f.presentation.editorFullscreenActive)
        assertEquals(.2f, f.presentation.editorProgress, 0f)
        f.port.frame(1f, stable = true)
        f.action(ControlCenterEditAction.ToggleAddPanel)
        assertEquals(listOf(true, false, true, false), f.port.targets)
        f.port.frame(0f, stable = true)
        assertFalse(f.presentation.editorFullscreenActive)
        assertEquals(0f, f.presentation.progress, 0f)
        f.assertIdentity(before)
    }

    @Test fun pauseRestoresBeforeResumeAndDoesNotReplayAnOldFullscreenRequest() = withHost { f ->
        f.openCenterEditor()
        f.action(ControlCenterEditAction.ToggleAddPanel)
        f.port.frame(.6f)
        f.host.pause()
        assertEquals(listOf(true, false), f.port.targets)
        assertTrue(f.presentation.editorFullscreenActive)
        assertFalse(f.host.isMapGestureAllowed())
        f.port.frame(0f, stable = true)
        f.host.resume()
        advanceHostFrames(f.root)
        assertFalse(f.presentation.editorFullscreenActive)
        assertEquals(listOf(true, false), f.port.targets)
        assertFalse(f.port.enabled.last())
    }

    @Test fun replacingMapPortRestoresBothPortsWithoutReplayingEditorEntry() = withHost { f ->
        f.openCenterEditor()
        f.action(ControlCenterEditAction.ToggleAddPanel)
        f.port.frame(.5f)
        val replacement = Port(f.host)
        f.host.bindMapPresentation(replacement)
        assertEquals(listOf(true, false), f.port.targets)
        assertEquals(listOf(false), replacement.targets)
        assertTrue(f.presentation.editorFullscreenActive)
        assertFalse(f.port.enabled.last())
        replacement.frame(0f, stable = true)
        advanceHostFrames(f.root)
        assertFalse(f.presentation.editorFullscreenActive)
        assertEquals(listOf(false), replacement.targets)
        assertFalse(f.host.isMapGestureAllowed())
    }

    @Test fun detachingTheHostRestoresTheMapWithoutReenteringOnAttach() = withHost { f ->
        f.openCenterEditor()
        f.action(ControlCenterEditAction.ToggleAddPanel)
        f.port.frame(.5f)
        f.root.removeView(f.panel)
        assertEquals(listOf(true, false), f.port.targets)
        assertFalse(f.host.isMapGestureAllowed())
        f.port.frame(0f, stable = true)
        f.root.addView(f.panel)
        advanceHostFrames(f.root)
        assertFalse(f.presentation.editorFullscreenActive)
        assertEquals(listOf(true, false), f.port.targets)
    }

    @Test fun destroyingAnOpenCatalogRestoresTheMapAndReleasesTheComposition() = withHost { f ->
        f.openCenterEditor()
        f.action(ControlCenterEditAction.ToggleAddPanel)
        f.port.frame(.75f)
        f.host.destroy()
        assertEquals(listOf(true, false), f.port.targets)
        assertFalse(f.port.enabled.last())
        assertFalse(f.presentation.editorFullscreenActive)
        assertEquals(0, f.panel.childCount)
    }

    @Test fun ordinaryControlCardListNeverBorrowsFullscreenGeometry() = withHost(1) { f ->
        val before = f.binding.state.value
        f.action(ControlCenterEditAction.OpenCardList)
        assertFalse(f.presentation.editorFullscreenActive)
        assertTrue(f.port.targets.isEmpty())
        assertEquals(0f, f.presentation.progress, 0f)
        assertEquals(640, f.panel.layoutParams.width)
        assertTrue(f.host.handleBack())
        f.assertIdentity(before)
    }

    @Test fun directLyricsIntentsCannotStealEditorGeometry() = withHost(1) { f ->
        f.openCenterEditor()
        f.action(ControlCenterEditAction.ToggleAddPanel)
        val dispatch = f.host.javaClass.getDeclaredMethod("dispatchPresentation", ContentEvent::class.java).apply { isAccessible = true }
        dispatch.invoke(f.host, ContentEvent.EnterLyricsImmersive)
        dispatch.invoke(f.host, ContentEvent.ExitLyricsImmersive)
        assertEquals(0L, f.presentation.pendingEnter)
        assertEquals(listOf(true), f.port.targets)
        assertEquals(0f, f.presentation.progress, 0f)
    }
}
