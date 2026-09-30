package com.icar03.content.host

import android.app.Activity
import android.content.ContextWrapper
import android.content.res.Configuration
import android.content.res.Resources
import android.graphics.Bitmap
import android.graphics.Canvas
import android.widget.FrameLayout
import androidx.compose.ui.semantics.SemanticsProperties
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.ui.ContentEvent
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.File
import java.lang.reflect.Proxy

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], qualifiers = "w1449dp-h815dp-212dpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
class ContentComposeDensityHostTest {
    @org.junit.Before fun configureFrameClock() {
        org.robolectric.shadows.ShadowChoreographer.setPaused(false)
        org.robolectric.shadows.ShadowChoreographer.setFrameDelay(java.time.Duration.ofMillis(16))
    }

    // Fixed measure specs can reuse View caches after Compose adds AnimatedVisibility children.
    // Drive a complete Android traversal before querying placed semantics nodes.
    private fun flushLayout(root: FrameLayout) {
        fun force(view: android.view.View) {
            view.forceLayout()
            if (view is android.view.ViewGroup) for (i in 0 until view.childCount) force(view.getChildAt(i))
        }
        force(root)
        root.measure(android.view.View.MeasureSpec.makeMeasureSpec(1920, android.view.View.MeasureSpec.EXACTLY), android.view.View.MeasureSpec.makeMeasureSpec(1080, android.view.View.MeasureSpec.EXACTLY))
        root.layout(0, 0, 1920, 1080)
    }

    private fun advanceDensityFrames(root: FrameLayout) {
        repeat(24) {
            androidx.compose.runtime.snapshots.Snapshot.sendApplyNotifications()
            flushLayout(root)
            org.robolectric.Shadows.shadowOf(android.os.Looper.getMainLooper()).idleFor(java.time.Duration.ofMillis(16))
        }
        flushLayout(root)
    }

    private fun awaitRendered(root: FrameLayout, condition: () -> Boolean) {
        repeat(20) {
            advanceDensityFrames(root)
            if (condition()) return
        }
        assertTrue("Host did not render expected state within bounded Android frames; nodes=${hostSemantics(root).map { it.config }}", condition())
    }

    private inline fun <reified T> port(sourceAvailable: Boolean = false): T = Proxy.newProxyInstance(
        T::class.java.classLoader, arrayOf(T::class.java)
    ) { _, method, _ ->
        when {
            method.name == "read" -> ContentPorts.SystemSnapshot(false, 0)
            method.name == "isSourceAvailable" -> sourceAvailable
            method.returnType == Boolean::class.javaPrimitiveType -> false
            else -> null
        }
    } as T

    @Test fun realHostUsesSystemDensityAndBackOnlyDismissesItsPopup() {
        val controller = Robolectric.buildActivity(Activity::class.java).setup()
        val activity = controller.get()
        val systemDpi = Resources.getSystem().displayMetrics.densityDpi
        assertEquals(212, systemDpi)
        val configured = activity.createConfigurationContext(Configuration(activity.resources.configuration).apply { densityDpi = 265 })
        val mapContext = object : ContextWrapper(activity) { override fun getResources() = configured.resources }
        assertEquals(265, mapContext.resources.displayMetrics.densityDpi)
        val root = FrameLayout(activity)
        val host = FrameLayout(mapContext)
        root.addView(host, FrameLayout.LayoutParams(-1, -1))
        activity.setContentView(root)
        val store = ContentStore(activity, port<ContentPorts.VehiclePort>(), port<ContentPorts.MediaPort>(true), port<ContentPorts.SystemPort>())
        store.setPageIndex(0)
        val projection = ContentComposeHost(mapContext, host, store)
        try {
            projection.updateDivider(640f, 640f, 1280f)
            advanceDensityFrames(root)
            assertTrue("Store source capability", store.isMediaSourceAvailable())
            assertTrue("Bound source capability: ${hostBinding(projection).state.value}", hostBinding(projection).state.value.media.sourceAvailable)
            awaitRendered(root) {
                hostTag(host, "source-button")?.config?.contains(SemanticsProperties.Disabled) == false
            }
            val node = checkNotNull(hostTag(host, "source-button"))
            assertFalse("Source node config: ${node.config}", node.config.contains(SemanticsProperties.Disabled))
            val bounds = node.boundsInRoot
            assertEquals(48 * systemDpi / 160f, bounds.width, 1f)
            assertTrue(bounds.height >= 48 * systemDpi / 160f)
            assertTrue(bounds.left >= 0 && bounds.right <= 640)
            assertEquals(640, host.width)
            assertFalse(projection.handleBack())
            // Invoke the rendered node's real accessibility click action, without a test factory.
            assertTrue(checkNotNull(node.config[androidx.compose.ui.semantics.SemanticsActions.OnClick].action).invoke())
            advanceDensityFrames(root)
            assertTrue(hostBinding(projection).state.value.sourcesOpen)
            awaitRendered(root) { hostTag(host, "sources-menu") != null }
            assertNotNull("Rendered tags after open: ${hostSemantics(host).map { it.config }}", hostTag(host, "sources-menu"))
            val sourcesImage = Bitmap.createBitmap(640, 1080, Bitmap.Config.ARGB_8888)
            host.draw(Canvas(sourcesImage))
            val sourcesTarget = File("build/frames/640x1080-api28-system212-map265-actual-host-sources.png")
            sourcesTarget.parentFile?.mkdirs()
            sourcesTarget.outputStream().use { assertTrue(sourcesImage.compress(Bitmap.CompressFormat.PNG, 100, it)) }
            sourcesImage.recycle()
            assertTrue(projection.handleBack())
            advanceDensityFrames(root)
            awaitRendered(root) { hostTag(host, "sources-menu") == null }
            assertNull(hostTag(host, "sources-menu"))
            assertFalse(projection.handleBack())
            hostBinding(projection).dispatch(ContentEvent.OpenSources)
            advanceDensityFrames(root)
            awaitRendered(root) { hostTag(host, "sources-menu") != null }
            assertNotNull("Rendered tags after open: ${hostSemantics(host).map { it.config }}", hostTag(host, "sources-menu"))
            projection.pause()
            advanceDensityFrames(root)
            assertFalse(hostBinding(projection).state.value.sourcesOpen)
            assertFalse(projection.handleBack())
            projection.resume()
            advanceDensityFrames(root)
            awaitRendered(root) { hostTag(host, "sources-menu") == null }
            assertNull(hostTag(host, "sources-menu"))
            val image = Bitmap.createBitmap(640, 1080, Bitmap.Config.ARGB_8888)
            host.draw(Canvas(image))
            val colors = mutableSetOf<Int>()
            for (y in 0 until 1080 step 11) for (x in 0 until 640 step 11) colors += image.getPixel(x, y)
            assertTrue("Real density host must not be blank", colors.size > 8)
            val target = File("build/frames/640x1080-api28-system212-map265-actual-host.png")
            target.parentFile?.mkdirs()
            target.outputStream().use { assertTrue(image.compress(Bitmap.CompressFormat.PNG, 100, it)) }
            image.recycle()
        } finally { projection.destroy(); store.destroy(); controller.pause().stop().destroy() }
    }
}
