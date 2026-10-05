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
            flow.value = flow.value.copy(page = PanelPage.Lyrics)
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
            flow.value = flow.value.copy(page = PanelPage.Lyrics)
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
}
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-mdpi")
class ContentImmersiveHostApi34Test : ContentImmersiveHostTest()
