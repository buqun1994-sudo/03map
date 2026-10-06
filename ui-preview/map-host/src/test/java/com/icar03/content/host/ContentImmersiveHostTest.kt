package com.icar03.content.host

import android.app.Activity
import android.widget.FrameLayout
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.model.MapPresentationPort
import com.icar03.content.ui.ContentEvent
import com.icar03.content.ui.ContentPresentation
import com.icar03.content.ui.PanelPage
import com.icar03.content.ui.ContentUiState
import kotlinx.coroutines.flow.MutableStateFlow
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
open class ContentImmersiveHostTest {
    @Test fun entryWaitsForBackgroundAndExitUsesSameMapPortWithBackPriority() {
        val controller = Robolectric.buildActivity(Activity::class.java).setup()
        val activity = controller.get()
        val root = FrameLayout(activity)
        val content = FrameLayout(activity)
        root.addView(content)
        activity.setContentView(root)
        val store = ContentStore(activity)
        val host = ContentComposeHost(activity, content, store)
        var collapsed = 0
        var expanded = 0
        val port = object : MapPresentationPort {
            override fun settleToCollapsed() { collapsed++ }
            override fun settleToExpanded() { expanded++ }
        }
        try {
            host.bindMapPresentation(port)
            host.updateDivider(640f, 640f, 1280f)
            advanceHostFrames(root)
            val binding = hostBinding(host)
            @Suppress("UNCHECKED_CAST")
            val flow = binding.javaClass.getDeclaredField("mutableState").apply { isAccessible = true }.get(binding) as MutableStateFlow<ContentUiState>
            store.setPageIndex(1)
            val presentation = host.javaClass.getDeclaredField("presentation").apply { isAccessible = true }.get(host) as ContentPresentation
            val dispatch = host.javaClass.getDeclaredMethod("dispatchPresentation", ContentEvent::class.java).apply { isAccessible = true }
            dispatch.invoke(host, ContentEvent.EnterLyricsImmersive)
            assertEquals(0, collapsed)
            val token = presentation.pendingEnter
            assertTrue(token > 0L)
            presentation.entryPrepared(token)
            assertEquals(1, collapsed)
            presentation.entryPrepared(token)
            assertEquals(1, collapsed)
            host.updateDivider(1920f, 640f, 1280f)
            host.updatePanelPhase(1)
            flow.value = flow.value.copy(settingsOpen = true)
            assertTrue(host.handleBack())
            assertEquals(0, expanded)
            flow.value = flow.value.copy(sourcesOpen = true, settingsOpen = false)
            assertTrue(host.handleBack())
            assertEquals(0, expanded)
            assertTrue(host.handleBack())
            assertEquals(1, expanded)
            host.updateDivider(640f, 640f, 1280f)
            host.updatePanelPhase(0)
            assertFalse(host.handleBack())
            dispatch.invoke(host, ContentEvent.EnterLyricsImmersive)
            val obsolete = presentation.pendingEnter
            host.pause()
            presentation.entryPrepared(obsolete)
            assertEquals(1, collapsed)
        } finally { host.destroy(); store.destroy(); controller.pause().stop().destroy() }
    }

    @Test fun rebindingMapPortCancelsAnOldPendingEntryBeforeASecondPortCanCollapse() {
        val controller = Robolectric.buildActivity(Activity::class.java).setup()
        val activity = controller.get()
        val root = FrameLayout(activity)
        val content = FrameLayout(activity)
        root.addView(content)
        activity.setContentView(root)
        val store = ContentStore(activity)
        val host = ContentComposeHost(activity, content, store)
        var firstCollapsed = 0
        var secondCollapsed = 0
        val firstPort = object : MapPresentationPort {
            override fun settleToCollapsed() { firstCollapsed++ }
            override fun settleToExpanded() {}
        }
        val secondPort = object : MapPresentationPort {
            override fun settleToCollapsed() { secondCollapsed++ }
            override fun settleToExpanded() {}
        }
        try {
            host.bindMapPresentation(firstPort)
            host.updateDivider(640f, 640f, 1280f)
            advanceHostFrames(root)
            val binding = hostBinding(host)
            @Suppress("UNCHECKED_CAST")
            val flow = binding.javaClass.getDeclaredField("mutableState").apply { isAccessible = true }.get(binding) as MutableStateFlow<ContentUiState>
            store.setPageIndex(1)
            val presentation = host.javaClass.getDeclaredField("presentation").apply { isAccessible = true }.get(host) as ContentPresentation
            val dispatch = host.javaClass.getDeclaredMethod("dispatchPresentation", ContentEvent::class.java).apply { isAccessible = true }
            dispatch.invoke(host, ContentEvent.EnterLyricsImmersive)
            val obsolete = presentation.pendingEnter
            assertTrue(obsolete > 0L)
            host.bindMapPresentation(secondPort)
            presentation.entryPrepared(obsolete)
            assertEquals(0, firstCollapsed)
            assertEquals(0, secondCollapsed)
            dispatch.invoke(host, ContentEvent.EnterLyricsImmersive)
            val current = presentation.pendingEnter
            presentation.entryPrepared(current)
            assertEquals(0, firstCollapsed)
            assertEquals(1, secondCollapsed)
        } finally { host.destroy(); store.destroy(); controller.pause().stop().destroy() }
    }

    @Test fun gestureEligibilityAndReminderEdgesFollowPageEntryOnly() {
        val controller = Robolectric.buildActivity(Activity::class.java).setup()
        val activity = controller.get()
        val root = FrameLayout(activity)
        val content = FrameLayout(activity)
        root.addView(content)
        activity.setContentView(root)
        val store = ContentStore(activity)
        store.setPageIndex(0)
        val host = ContentComposeHost(activity, content, store)
        val port = RecordingPort()
        try {
            host.bindMapPresentation(port)
            host.updateDivider(640f, 640f, 1280f)
            advanceHostFrames(root)
            assertFalse(port.calls.last().enabled)
            val binding = hostBinding(host)
            @Suppress("UNCHECKED_CAST")
            val flow = binding.javaClass.getDeclaredField("mutableState").apply { isAccessible = true }.get(binding) as MutableStateFlow<ContentUiState>
            store.setPageIndex(1)
            advanceHostFrames(root)
            assertTrue(port.calls.last().enabled)
            assertEquals(1, port.calls.count { it.remind })

            val presentation = host.javaClass.getDeclaredField("presentation").apply { isAccessible = true }.get(host) as ContentPresentation
            presentation.updateModalActive(true)
            advanceHostFrames(root)
            assertFalse(port.calls.last().enabled)
            presentation.updateModalActive(false)
            advanceHostFrames(root)
            assertTrue(port.calls.last().enabled)
            assertEquals(1, port.calls.count { it.remind })

            presentation.updatePagerMotion(true)
            advanceHostFrames(root)
            presentation.updatePagerMotion(false)
            advanceHostFrames(root)
            assertEquals(1, port.calls.count { it.remind })

            store.setGestureBarReminder(false)
            advanceHostFrames(root)
            store.setGestureBarReminder(true)
            advanceHostFrames(root)
            assertEquals(1, port.calls.count { it.remind })

            store.setPageIndex(0)
            advanceHostFrames(root)
            assertFalse(port.calls.last().enabled)
            store.setPageIndex(1)
            advanceHostFrames(root)
            assertEquals(2, port.calls.count { it.remind })
        } finally { host.destroy(); store.destroy(); controller.pause().stop().destroy() }
    }

    @Test fun resumeRearmsReminderForTheCurrentLyricsPageOnce() {
        val controller = Robolectric.buildActivity(Activity::class.java).setup()
        val activity = controller.get()
        val root = FrameLayout(activity)
        val content = FrameLayout(activity)
        root.addView(content)
        activity.setContentView(root)
        val store = ContentStore(activity)
        store.setPageIndex(0)
        val host = ContentComposeHost(activity, content, store)
        val port = RecordingPort()
        try {
            host.bindMapPresentation(port)
            host.updateDivider(640f, 640f, 1280f)
            advanceHostFrames(root)
            val binding = hostBinding(host)
            @Suppress("UNCHECKED_CAST")
            val flow = binding.javaClass.getDeclaredField("mutableState").apply { isAccessible = true }.get(binding) as MutableStateFlow<ContentUiState>
            store.setPageIndex(1)
            advanceHostFrames(root)
            assertEquals(1, port.calls.count { it.remind })
            host.pause()
            host.resume()
            advanceHostFrames(root)
            assertEquals(2, port.calls.count { it.remind })
            host.pause()
            store.setPageIndex(0)
            host.resume()
            advanceHostFrames(root)
            assertEquals(2, port.calls.count { it.remind })
        } finally { host.destroy(); store.destroy(); controller.pause().stop().destroy() }
    }
}

private data class GestureCall(val enabled: Boolean, val dark: Boolean, val reminderEnabled: Boolean, val remind: Boolean)

private class RecordingPort : MapPresentationPort {
    val calls = mutableListOf<GestureCall>()
    override fun settleToCollapsed() {}
    override fun settleToExpanded() {}
    override fun updateGestureState(enabled: Boolean, dark: Boolean, reminderEnabled: Boolean, remind: Boolean) {
        calls += GestureCall(enabled, dark, reminderEnabled, remind)
    }
}

@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-mdpi")
class ContentImmersiveHostApi34Test : ContentImmersiveHostTest()
