package com.icar03.content.host

import android.animation.ValueAnimator
import android.app.Activity
import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.Color
import android.os.Looper
import android.os.SystemClock
import android.view.Gravity
import android.view.MotionEvent
import android.view.View
import android.widget.FrameLayout
import android.widget.TextView
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import org.robolectric.android.controller.ActivityController
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import org.robolectric.annotation.LooperMode
import org.robolectric.shadows.ShadowChoreographer
import java.time.Duration

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], qualifiers = "w1920dp-h1080dp-mdpi")
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@LooperMode(LooperMode.Mode.PAUSED)
open class MapGestureBarTest {
    @Before fun finiteAndroidFrameClock() {
        ShadowChoreographer.setPaused(false)
        ShadowChoreographer.setFrameDelay(Duration.ofMillis(16))
    }

    private class Scene : AutoCloseable {
        val controller: ActivityController<Activity> = Robolectric.buildActivity(Activity::class.java).setup()
        val activity = controller.get()
        val root = FrameLayout(activity).apply { clipChildren = true }
        val content = FrameLayout(activity).apply { setBackgroundColor(Color.rgb(24, 28, 34)) }
        val panel = FrameLayout(activity).apply { clipChildren = false }
        val map = FrameLayout(activity).apply { setBackgroundColor(Color.BLACK) }
        val layer = FrameLayout(activity).apply { clipChildren = false }
        val node = FrameLayout(activity).apply { isClickable = true; clipChildren = false }
        val oldHint = TextView(activity)
        val oldHandle = View(activity).apply { setBackgroundColor(Color.WHITE) }
        val bar: MapGestureBar

        init {
            root.addView(content, FrameLayout.LayoutParams(-1, -1))
            root.addView(panel, FrameLayout.LayoutParams(1280, -1).apply { leftMargin = 640 })
            panel.addView(map, FrameLayout.LayoutParams(-1, -1))
            panel.addView(layer, FrameLayout.LayoutParams(-1, -1))
            layer.addView(node, FrameLayout.LayoutParams(60, 810, Gravity.LEFT or Gravity.CENTER_VERTICAL).apply { leftMargin = -60 })
            node.addView(oldHint, FrameLayout.LayoutParams(360, 72))
            node.addView(oldHandle, FrameLayout.LayoutParams(6, 256, Gravity.LEFT or Gravity.CENTER_VERTICAL).apply { leftMargin = 42 })
            activity.setContentView(root)
            layout()
            bar = MapGestureBar.attachTo(node)
            MapGestureBarHost.ensureOnTop(panel, layer, node, 640f)
            layout()
        }

        fun layout() {
            root.measure(View.MeasureSpec.makeMeasureSpec(1920, View.MeasureSpec.EXACTLY), View.MeasureSpec.makeMeasureSpec(1080, View.MeasureSpec.EXACTLY))
            root.layout(0, 0, 1920, 1080)
        }

        fun divider(x: Float) {
            panel.translationX = x - 640f
            MapGestureBarHost.ensureOnTop(panel, layer, node, x)
            layout()
        }

        fun advance(millis: Long) {
            var remaining = millis
            while (remaining > 0L) {
                val frame = minOf(16L, remaining)
                shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(frame))
                layout()
                remaining -= frame
            }
        }

        fun pixels(): Bitmap = Bitmap.createBitmap(bar.width, bar.height, Bitmap.Config.ARGB_8888).also { bar.draw(Canvas(it)) }
        fun core(): Int = pixels().useBitmap { getPixel(width / 2, height / 2) }
        fun halo(): Int = pixels().useBitmap { getPixel(2, height / 2) }
        fun rootPixel(x: Int, y: Int): Int = Bitmap.createBitmap(1920, 1080, Bitmap.Config.ARGB_8888).useBitmap {
            root.draw(Canvas(this))
            getPixel(x, y)
        }

        fun touch(x: Float, y: Float) {
            val now = SystemClock.uptimeMillis()
            val down = MotionEvent.obtain(now, now, MotionEvent.ACTION_DOWN, x, y, 0)
            val up = MotionEvent.obtain(now, now + 1L, MotionEvent.ACTION_UP, x, y, 0)
            try { assertTrue(root.dispatchTouchEvent(down)); assertTrue(root.dispatchTouchEvent(up)) }
            finally { down.recycle(); up.recycle() }
        }

        override fun close() { controller.pause().stop().destroy() }
    }

    @Test fun originalLayerMovesAboveContentAndTheBarStaysVisibleAtAllDividerPositions() {
        Scene().use { scene ->
            val blockerColor = Color.rgb(52, 32, 70)
            val blocker = FrameLayout(scene.activity).apply { setBackgroundColor(blockerColor); elevation = 12f }
            scene.root.addView(blocker, FrameLayout.LayoutParams(-1, -1))
            scene.bar.updateGestureState(true, true, false, false)
            scene.advance(320)
            for (divider in listOf(640f, 1117f, 1920f)) {
                scene.divider(divider)
                assertSame(scene.root, scene.layer.parent)
                assertSame(scene.layer, scene.root.getChildAt(scene.root.childCount - 1))
                assertTrue(scene.layer.z > blocker.z)
                assertEquals(divider, scene.layer.translationX, 0f)
                assertEquals(-60, (scene.node.layoutParams as FrameLayout.LayoutParams).leftMargin)
                val rootLocation = IntArray(2)
                val nodeLocation = IntArray(2)
                scene.root.getLocationInWindow(rootLocation)
                scene.node.getLocationInWindow(nodeLocation)
                assertEquals(divider.toInt() - 60, nodeLocation[0] - rootLocation[0])
                assertEquals(135, nodeLocation[1] - rootLocation[1])
                assertEquals(60, scene.node.width)
                assertEquals(810, scene.node.height)
                // A newly inserted/elevated content sibling must not cover the actual ink.
                assertNotEquals(blockerColor, scene.rootPixel(divider.toInt() - 15, 540))
                assertEquals(blockerColor, scene.rootPixel(divider.toInt() - 30, 540))
            }
            assertEquals(View.GONE, scene.oldHint.visibility)
            assertEquals(View.GONE, scene.oldHandle.visibility)
            assertEquals(22, scene.bar.width)
            assertEquals(272, scene.bar.height)
            assertEquals(View.LAYER_TYPE_NONE, scene.bar.layerType)
            assertSame(scene.layer, MapGestureBarHost.findGestureLayer(scene.panel))
            assertSame(scene.bar, MapGestureBar.attachTo(scene.node))
        }
    }

    @Test fun rootReceivesOnlyTheOriginalNodeHotAreaAndOtherTouchesReachContent() {
        Scene().use { scene ->
            var nodeDowns = 0
            var contentDowns = 0
            scene.node.setOnTouchListener { _, event -> if (event.actionMasked == MotionEvent.ACTION_DOWN) nodeDowns++; true }
            scene.content.setOnTouchListener { _, event -> if (event.actionMasked == MotionEvent.ACTION_DOWN) contentDowns++; true }
            scene.bar.updateGestureState(true, false, false, false)
            scene.touch(610f, 540f)
            scene.touch(540f, 540f)
            scene.touch(610f, 20f)
            assertEquals(1, nodeDowns)
            assertEquals(2, contentDowns)
            assertEquals(60, scene.layer.width)
            assertNull(scene.layer.background)
            assertFalse(scene.layer.isClickable)
            assertFalse(scene.bar.isClickable)
            assertFalse(scene.node.isClickable)
            // A synchronous host gate may reject DOWN before its visual state changes.
            scene.node.setOnTouchListener { _, event -> if (event.actionMasked == MotionEvent.ACTION_DOWN) nodeDowns++; false }
            scene.touch(610f, 540f)
            assertEquals(3, contentDowns)
            scene.bar.updateGestureState(false, false, false, false)
            scene.touch(610f, 540f)
            assertFalse(scene.node.isClickable)
            assertEquals(4, contentDowns)
        }
    }

    @Test fun ensureTopRepairsAWrongParentAndHigherSiblingWithoutChangingMapGeometry() {
        Scene().use { scene ->
            scene.root.removeView(scene.layer)
            scene.content.addView(scene.layer, FrameLayout.LayoutParams(-1, -1))
            val sibling = View(scene.activity).apply { elevation = 36f }
            scene.root.addView(sibling, FrameLayout.LayoutParams(-1, -1))
            scene.divider(1536f)
            assertSame(scene.root, scene.layer.parent)
            assertSame(scene.layer, scene.root.getChildAt(scene.root.childCount - 1))
            assertTrue(scene.layer.z > sibling.z)
            assertEquals(1280, scene.panel.width)
            assertEquals(640, scene.panel.left)
            assertEquals(896f, scene.panel.translationX, 0f)
            assertEquals(1536f, scene.layer.translationX, 0f)
            assertEquals(0, scene.node.left)
            assertEquals(-60, scene.layer.left)
            assertEquals(60, scene.layer.paddingLeft)
        }
    }

    @Test fun stateColorAndAlphaHaveRealIntermediatePixelsAndSettleWithin240ms() {
        Scene().use { scene ->
            scene.bar.updateGestureState(false, false, false, false)
            val start = scene.core()
            scene.bar.updateGestureState(true, true, false, false)
            assertEquals(start, scene.core())
            scene.advance(112)
            val middle = scene.core()
            scene.advance(128)
            val end = scene.core()
            assertBetween(Color.alpha(middle), Color.alpha(start), Color.alpha(end))
            assertBetween(Color.red(middle), Color.red(start), Color.red(end))
            assertBetween(Color.green(middle), Color.green(start), Color.green(end))
            assertBetween(Color.blue(middle), Color.blue(start), Color.blue(end))
            assertClose(224, Color.alpha(end), 1)
            assertClose(228, Color.red(end), 1)
            assertClose(237, Color.green(end), 1)
            assertClose(247, Color.blue(end), 1)
            scene.advance(64)
            assertNull(currentAnimator(scene.bar))
            scene.advance(800)
            assertEquals(end, scene.core())
        }
    }

    @Test fun changingStateMidTransitionContinuesFromTheDisplayedColorAndAlpha() {
        Scene().use { scene ->
            val disabled = scene.core()
            scene.bar.updateGestureState(true, true, false, false)
            scene.advance(80)
            val beforeRetarget = scene.core()
            scene.bar.updateGestureState(false, false, false, false)
            assertColorClose(beforeRetarget, scene.core(), 2)
            scene.advance(96)
            val middle = scene.core()
            assertBetween(Color.alpha(middle), Color.alpha(disabled), Color.alpha(beforeRetarget))
            scene.advance(208)
            assertColorClose(disabled, scene.core(), 1)
            assertNull(currentAnimator(scene.bar))
        }
    }

    @Test fun explicitReminderStartsAtMaximumThenTheActualGlowReturnsToNormal() {
        Scene().use { scene ->
            scene.bar.updateGestureState(true, true, true, false)
            scene.advance(320)
            val normal = scene.core()
            assertEquals(0, Color.alpha(scene.halo()))
            scene.bar.updateGestureState(true, true, true, true)
            val peak = scene.core()
            val peakHalo = Color.alpha(scene.halo())
            assertEquals(255, Color.alpha(peak))
            assertTrue(peakHalo > 0)
            scene.advance(112)
            assertBetween(Color.alpha(scene.core()), Color.alpha(normal), Color.alpha(peak))
            assertTrue(Color.alpha(scene.halo()) < peakHalo)
            scene.advance(416)
            assertColorClose(normal, scene.core(), 1)
            assertEquals(0, Color.alpha(scene.halo()))
            assertNull(currentAnimator(scene.bar))
            scene.bar.updateGestureState(true, true, true, false)
            scene.advance(96)
            assertEquals(0, Color.alpha(scene.halo()))
            assertColorClose(normal, scene.core(), 1)
        }
    }

    @Test fun disablingTheReminderImmediatelyRemovesGlowAndKeepsOrdinaryStateTransition() {
        Scene().use { scene ->
            scene.bar.updateGestureState(true, false, true, false)
            scene.advance(320)
            val light = scene.core()
            scene.bar.updateGestureState(true, true, true, true)
            scene.advance(80)
            assertTrue(Color.alpha(scene.halo()) > 0)
            scene.bar.updateGestureState(true, true, false, false)
            val withoutPulse = scene.core()
            assertEquals(0, Color.alpha(scene.halo()))
            assertTrue(Color.red(withoutPulse) > Color.red(light))
            assertTrue(Color.red(withoutPulse) < 228)
            assertNotNull(currentAnimator(scene.bar))
            scene.advance(96)
            assertTrue(Color.red(scene.core()) > Color.red(withoutPulse))
            scene.advance(208)
            val dark = scene.core()
            assertClose(228, Color.red(dark), 1)
            scene.bar.updateGestureState(true, true, false, true)
            assertColorClose(dark, scene.core(), 1)
            assertEquals(0, Color.alpha(scene.halo()))
            assertNull(currentAnimator(scene.bar))
        }
    }

    @Test fun disabledGestureNeverPulsesAndCancelsAnExistingPulseImmediately() {
        Scene().use { scene ->
            scene.bar.updateGestureState(true, true, true, false)
            scene.advance(320)
            scene.bar.updateGestureState(true, true, true, true)
            assertTrue(Color.alpha(scene.halo()) > 0)
            scene.bar.updateGestureState(false, true, true, true)
            assertFalse(scene.node.isClickable)
            assertEquals(0, Color.alpha(scene.halo()))
            scene.advance(320)
            val disabled = scene.core()
            assertClose(89, Color.alpha(disabled), 1)
            scene.bar.updateGestureState(false, true, true, true)
            scene.advance(96)
            assertEquals(disabled, scene.core())
            assertEquals(0, Color.alpha(scene.halo()))
            assertNull(currentAnimator(scene.bar))
        }
    }

    @Test fun detachStopsTheAndroidAnimatorAndReattachDoesNotReplayTheReminder() {
        Scene().use { scene ->
            scene.bar.updateGestureState(true, true, true, true)
            val running = checkNotNull(currentAnimator(scene.bar))
            assertTrue(running.isStarted)
            scene.advance(64)
            scene.root.removeView(scene.layer)
            assertFalse(scene.bar.isAttachedToWindow)
            assertFalse(running.isStarted)
            assertNull(currentAnimator(scene.bar))
            val stopped = scene.core()
            assertEquals(0, Color.alpha(scene.halo()))
            scene.advance(1000)
            assertEquals(stopped, scene.core())
            scene.bar.updateGestureState(true, true, true, true)
            assertNull(currentAnimator(scene.bar))
            scene.divider(1920f)
            assertTrue(scene.bar.isAttachedToWindow)
            assertNull(currentAnimator(scene.bar))
            assertEquals(0, Color.alpha(scene.halo()))
            assertColorClose(stopped, scene.core(), 1)
        }
    }

    private fun currentAnimator(bar: MapGestureBar): ValueAnimator? =
        bar.javaClass.getDeclaredField("animator").apply { isAccessible = true }.get(bar) as ValueAnimator?

    private fun assertBetween(actual: Int, first: Int, second: Int) {
        assertTrue("Expected $actual strictly between $first and $second", actual > minOf(first, second) && actual < maxOf(first, second))
    }

    private fun assertClose(expected: Int, actual: Int, tolerance: Int) {
        assertTrue("Expected $actual within $tolerance of $expected", kotlin.math.abs(expected - actual) <= tolerance)
    }

    private fun assertColorClose(expected: Int, actual: Int, tolerance: Int) {
        assertClose(Color.alpha(expected), Color.alpha(actual), tolerance)
        assertClose(Color.red(expected), Color.red(actual), tolerance)
        assertClose(Color.green(expected), Color.green(actual), tolerance)
        assertClose(Color.blue(expected), Color.blue(actual), tolerance)
    }
}

private inline fun <T> Bitmap.useBitmap(block: Bitmap.() -> T): T = try { block() } finally { recycle() }

@Config(sdk = [34], qualifiers = "w1920dp-h1080dp-mdpi")
class MapGestureBarApi34Test : MapGestureBarTest()
