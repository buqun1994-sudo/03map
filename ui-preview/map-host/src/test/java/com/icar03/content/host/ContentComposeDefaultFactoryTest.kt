package com.icar03.content.host

import android.app.Activity
import android.graphics.Bitmap
import android.graphics.Canvas
import android.os.Looper
import android.view.View
import android.widget.FrameLayout
import androidx.compose.ui.platform.ComposeView
import androidx.lifecycle.findViewTreeLifecycleOwner
import com.autonavi.amapauto.content.ContentStore
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.time.Duration

/** Intentionally NO Compose test rule: its window factory can hide plain-Activity owner failures. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], qualifiers = "w1920dp-h1080dp-mdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
open class ContentComposeDefaultFactoryTest {
    private fun frame(root: FrameLayout) {
        repeat(24) {
            root.measure(View.MeasureSpec.makeMeasureSpec(1920, View.MeasureSpec.EXACTLY), View.MeasureSpec.makeMeasureSpec(1080, View.MeasureSpec.EXACTLY))
            root.layout(0, 0, 1920, 1080)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(16))
        }
    }
    @Test fun realFactoryRendersWithOnlyLocalOwnersAndDisposes() {
        val controller = Robolectric.buildActivity(Activity::class.java).setup()
        val activity = controller.get()
        val root = FrameLayout(activity)
        val host = FrameLayout(activity)
        root.addView(host, FrameLayout.LayoutParams(-1, -1))
        activity.setContentView(root)
        assertNull(root.findViewTreeLifecycleOwner())
        val store = ContentStore(activity)
        store.setPageIndex(0)
        val projection = ContentComposeHost(activity, host, store)
        try {
            projection.updateDivider(640f, 640f, 1280f)
            frame(root)
            assertNull(root.findViewTreeLifecycleOwner())
            val view = host.getChildAt(0) as ComposeView
            assertTrue(view.hasComposition)
            assertEquals(640, host.width)
            val bitmap = Bitmap.createBitmap(640, 1080, Bitmap.Config.ARGB_8888)
            host.draw(Canvas(bitmap))
            assertNotEquals("Real default factory must render controls, not a blank composition", bitmap.getPixel(0, 0), bitmap.getPixel(100, 100))
            bitmap.recycle()
            projection.pause()
            frame(root)
            val clock = store.snapshot().nowMillis
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(2))
            assertEquals(clock, store.snapshot().nowMillis)
            projection.resume()
            frame(root)
            projection.destroy()
            assertFalse(view.hasComposition)
            assertEquals(0, host.childCount)
            assertNull(root.findViewTreeLifecycleOwner())
        } finally {
            projection.destroy()
            store.destroy()
            controller.pause().stop().destroy()
        }
    }
    @Test fun unownedPlainComposeViewFailsSoFactoryIsNotMasked() {
        val controller = Robolectric.buildActivity(Activity::class.java).setup()
        val root = FrameLayout(controller.get())
        controller.get().setContentView(root)
        val bare = ComposeView(controller.get())
        bare.setContent { }
        try {
            val failure = runCatching {
                root.addView(bare, FrameLayout.LayoutParams(-1, -1))
                bare.createComposition()
            }.exceptionOrNull()
            assertTrue("Default plain-Activity window factory must expose missing owner: $failure", failure is IllegalStateException)
            assertTrue(failure!!.message.orEmpty().contains("ViewTreeLifecycleOwner"))
        } finally {
            root.removeView(bare)
            bare.disposeComposition()
            controller.pause().stop().destroy()
        }
    }
}
@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-mdpi")
class ContentComposeDefaultFactoryApi34Test : ContentComposeDefaultFactoryTest()
