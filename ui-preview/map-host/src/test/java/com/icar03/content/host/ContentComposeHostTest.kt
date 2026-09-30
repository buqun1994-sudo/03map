package com.icar03.content.host

import android.app.Activity
import android.graphics.Bitmap
import android.graphics.Canvas
import android.os.Looper
import android.view.KeyEvent
import android.view.View
import android.view.ViewGroup
import android.widget.FrameLayout
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.semantics.SemanticsNode
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.lifecycle.findViewTreeLifecycleOwner
import com.autonavi.amapauto.content.ContentRuntime
import com.autonavi.amapauto.content.ContentState
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.runtime.ContentBinding
import com.icar03.content.ui.ContentUiState
import kotlinx.coroutines.flow.MutableStateFlow
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File
import java.time.Duration

/** Advances the production Choreographer clock; never installs a Compose test window factory. */
internal fun advanceHostFrames(root: FrameLayout) {
    fun invalidate(view: View) {
        view.forceLayout()
        if (view is ViewGroup) for (index in 0 until view.childCount) invalidate(view.getChildAt(index))
    }
    repeat(24) {
        androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
        invalidate(root)
        root.measure(View.MeasureSpec.makeMeasureSpec(1920, View.MeasureSpec.EXACTLY), View.MeasureSpec.makeMeasureSpec(1080, View.MeasureSpec.EXACTLY))
        root.layout(0, 0, 1920, 1080)
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(16))
    }
}

@OptIn(ExperimentalComposeUiApi::class)
internal fun hostSemantics(host: View): List<SemanticsNode> {
    fun root(view: View): ViewRootForTest? {
        if (view is ViewRootForTest) return view
        if (view is ViewGroup) for (index in 0 until view.childCount) root(view.getChildAt(index))?.let { return it }
        return null
    }
    val result = mutableListOf<SemanticsNode>()
    fun visit(node: SemanticsNode) { result += node; node.children.forEach(::visit) }
    visit(checkNotNull(root(host)) { "Host has no Android Compose root" }.semanticsOwner.unmergedRootSemanticsNode)
    return result
}
internal fun hostTag(host: View, tag: String): SemanticsNode? = hostSemantics(host).firstOrNull {
    it.config.getOrElse(SemanticsProperties.TestTag) { "" } == tag
}
internal fun hostBinding(host: ContentComposeHost): ContentBinding = host.javaClass.getDeclaredField("binding").apply { isAccessible = true }.get(host) as ContentBinding
internal fun openHostSources(binding: ContentBinding) {
    // Test-only state injection: Runtime's default ports intentionally have no source capability.
    @Suppress("UNCHECKED_CAST")
    val flow = binding.javaClass.getDeclaredField("mutableState").apply { isAccessible = true }.get(binding) as MutableStateFlow<ContentUiState>
    flow.value = flow.value.copy(sourcesOpen = true)
}

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-mdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
open class ContentComposeHostTest {
    protected open val dark = false
    protected open val platform = "api34"

    @org.junit.Before fun configureFrames() {
        org.robolectric.shadows.ShadowChoreographer.setPaused(false)
        org.robolectric.shadows.ShadowChoreographer.setFrameDelay(Duration.ofMillis(16))
    }

    @Test fun plainActivityRendersAndDisposesWithoutReplacingMapChildren() {
        val controller = Robolectric.buildActivity(Activity::class.java).setup()
        val activity = controller.get()
        activity.window.addFlags(android.view.WindowManager.LayoutParams.FLAG_FULLSCREEN)
        activity.window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN or View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION or View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
        val root = FrameLayout(activity)
        val host = FrameLayout(activity)
        val mapSibling = View(activity)
        root.addView(host, FrameLayout.LayoutParams(-1, -1))
        root.addView(mapSibling, FrameLayout.LayoutParams(1280, -1))
        activity.setContentView(root)
        assertNull(root.findViewTreeLifecycleOwner())
        val store = ContentStore(activity)
        store.setPageIndex(0)
        store.setThemeMode(if (dark) ContentState.THEME_DARK else ContentState.THEME_LIGHT)
        val projection = ContentComposeHost(activity, host, store)
        try {
            projection.updateDivider(640f, 640f, 1280f)
            advanceHostFrames(root)
            assertTrue(hostSemantics(host).any { node -> node.config.getOrElse(SemanticsProperties.Text) { emptyList() }.any { it.text == "暂无媒体" } })
            assertEquals(640, host.width)
            assertEquals(1, host.childCount)
            val composition = host.getChildAt(0) as ComposeView
            assertTrue(composition.hasComposition)
            assertSame(mapSibling, root.getChildAt(1))
            assertEquals(1280, mapSibling.layoutParams.width)
            assertNull(root.findViewTreeLifecycleOwner())
            val bitmap = Bitmap.createBitmap(640, 1080, Bitmap.Config.ARGB_8888)
            host.draw(Canvas(bitmap))
            val target = File("build/frames/640x1080-${if (dark) "dark" else "light"}-$platform-plain-map-host.png")
            target.parentFile.mkdirs()
            target.outputStream().use { assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it)) }
            assertNotEquals(bitmap.getPixel(0, 0), bitmap.getPixel(100, 100))
            bitmap.recycle()
            projection.updateDivider(1920f, 640f, 1280f)
            advanceHostFrames(root)
            assertEquals(1920, host.width)
            assertEquals(1280, mapSibling.layoutParams.width)
            projection.pause()
            advanceHostFrames(root)
            val stoppedClock = store.snapshot().nowMillis
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(2))
            assertEquals(stoppedClock, store.snapshot().nowMillis)
            projection.resume()
            advanceHostFrames(root)
            projection.destroy()
            assertFalse(composition.hasComposition)
            assertEquals(0, host.childCount)
            store.setPageIndex(1)
            assertEquals(1, store.snapshot().pageIndex)
        } finally {
            projection.destroy(); store.destroy(); controller.pause().stop().destroy()
        }
    }

    @Test fun runtimeStaticEntryIsIdempotentAndOwnerScoped() {
        val controller = Robolectric.buildActivity(Activity::class.java).setup()
        val activity = controller.get()
        val root = FrameLayout(activity)
        val host = FrameLayout(activity)
        host.id = activity.resources.getIdentifier("content_host", "id", activity.packageName)
        assertNotEquals(0, host.id)
        root.addView(host, FrameLayout.LayoutParams(-1, -1))
        activity.setContentView(root)
        try {
            ContentRuntime.attach(root); ContentRuntime.attach(root)
            advanceHostFrames(root)
            assertEquals(1, host.childCount)
            ContentRuntime.onHostPaused(activity); ContentRuntime.onHostResumed(activity)
            ContentRuntime.onAmapThemeChanged(if (dark) 2 else 1)
            ContentRuntime.onDividerChanged(640f, 640f, 1280f)
            advanceHostFrames(root)
            assertEquals(640, host.width)
            val runtime = ContentRuntime::class.java.getDeclaredField("activeRuntime").apply { isAccessible = true }.get(null)
            val renderer = runtime.javaClass.getDeclaredField("renderer").apply { isAccessible = true }.get(runtime) as ContentComposeHost
            val binding = hostBinding(renderer)
            openHostSources(binding)
            val downTime = android.os.SystemClock.uptimeMillis()
            assertTrue(ContentRuntime.onBackKeyDown(activity, KeyEvent(downTime, downTime, KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_BACK, 0)))
            assertFalse(binding.state.value.sourcesOpen)
            // Long press repeats and matching UP remain consumed after the menu is already closed.
            assertTrue(ContentRuntime.onBackKeyDown(activity, KeyEvent(downTime, downTime + 16, KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_BACK, 1)))
            assertTrue(ContentRuntime.onBackKeyUp(activity, KeyEvent(downTime, downTime + 32, KeyEvent.ACTION_UP, KeyEvent.KEYCODE_BACK, 0)))
            assertFalse(ContentRuntime.onBackKeyUp(activity, KeyEvent(downTime, downTime + 33, KeyEvent.ACTION_UP, KeyEvent.KEYCODE_BACK, 0)))
            assertFalse(ContentRuntime.onBackKeyDown(activity, KeyEvent(downTime + 40, downTime + 40, KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_BACK, 0)))
            openHostSources(binding)
            assertTrue(ContentRuntime.onBackKeyDown(activity, KeyEvent(downTime + 60, downTime + 60, KeyEvent.ACTION_DOWN, KeyEvent.KEYCODE_BACK, 0)))
            ContentRuntime.onHostPaused(activity)
            assertFalse(ContentRuntime.onBackKeyUp(activity, KeyEvent(downTime + 60, downTime + 80, KeyEvent.ACTION_UP, KeyEvent.KEYCODE_BACK, 0)))
            ContentRuntime.onHostResumed(activity)
            advanceHostFrames(root)
            val unrelated = Robolectric.buildActivity(Activity::class.java).setup()
            ContentRuntime.detach(unrelated.get())
            assertEquals(1, host.childCount)
            unrelated.pause().stop().destroy()
            ContentRuntime.detach(activity)
            assertEquals(0, host.childCount)
            ContentRuntime.detach(activity)
        } finally { ContentRuntime.detach(activity); controller.pause().stop().destroy() }
    }
}
class ContentComposeHostDarkTest : ContentComposeHostTest() { override val dark = true }
@Config(sdk = [28], qualifiers = "w1920dp-h1080dp-mdpi")
class ContentComposeHostApi28Test : ContentComposeHostTest() { override val platform = "api28" }
@Config(sdk = [28], qualifiers = "w1920dp-h1080dp-mdpi")
class ContentComposeHostApi28DarkTest : ContentComposeHostTest() {
    override val platform = "api28"
    override val dark = true
}
