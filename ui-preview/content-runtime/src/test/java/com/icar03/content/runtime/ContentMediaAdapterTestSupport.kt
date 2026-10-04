package com.icar03.content.runtime

import android.os.Handler
import android.os.Looper
import com.autonavi.amapauto.content.ContentMediaAdapter
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.robolectric.Shadows.shadowOf

/** Worker/main barriers for the Adapter's asynchronous initial public facts. */
internal object ContentMediaAdapterTestSupport {
    private fun worker(adapter: ContentMediaAdapter) = ContentMediaAdapter::class.java
        .getDeclaredField("sourceHandler").apply { isAccessible = true }.get(adapter) as Handler

    private fun barrier(adapter: ContentMediaAdapter) {
        val done = CountDownLatch(1)
        assertTrue(worker(adapter).post { done.countDown() })
        assertTrue("media source worker did not complete", done.await(2L, TimeUnit.SECONDS))
    }

    fun drainSource(adapter: ContentMediaAdapter) {
        // Connection verification -> registration -> read -> inventory -> missing-fact
        // bootstrap may each enqueue the following stage only after main admission.
        repeat(8) { shadowOf(Looper.getMainLooper()).idle(); barrier(adapter) }
        shadowOf(Looper.getMainLooper()).idle()
        val observed = ContentMediaAdapter::class.java.getDeclaredField("observed").apply { isAccessible = true }
            .get(adapter) as Map<*, *>
        val inventoryReady = ContentMediaAdapter::class.java.getDeclaredField("sourceInventoryReady")
            .apply { isAccessible = true }.getBoolean(adapter)
        val recheck = ContentMediaAdapter::class.java.getDeclaredField("selectionRecheck")
            .apply { isAccessible = true }.get(adapter)
        if (!adapter.isAvailable && !inventoryReady && observed.isNotEmpty() && recheck != null) {
            // The real arbiter owns this delayed cold selection. Its scheduled task,
            // without a synthetic callback or forced reconcile, must admit the song.
            shadowOf(Looper.getMainLooper()).idleFor(1_500L, TimeUnit.MILLISECONDS)
            repeat(3) { barrier(adapter); shadowOf(Looper.getMainLooper()).idle() }
        }
    }

    fun awaitBootstrapPreservingArtworkDelivery(adapter: ContentMediaAdapter) {
        fun complete(): Boolean {
            val observed = ContentMediaAdapter::class.java.getDeclaredField("observed")
                .apply { isAccessible = true }.get(adapter) as Map<*, *>
            return adapter.isAvailable && observed.values.isNotEmpty() && observed.values.all { item ->
                requireNotNull(item)
                listOf("metadataKnown", "playbackKnown", "audioKnown").all { name ->
                    item.javaClass.getDeclaredField(name).apply { isAccessible = true }.getBoolean(item)
                }
            }
        }
        repeat(24) {
            if (complete()) return
            barrier(adapter)
            // Admit one result at a time: once public facts are complete, leave any
            // queued artwork completion on main for the test to deliver explicitly.
            shadowOf(Looper.getMainLooper()).runOneTask()
            if (complete()) return
        }
        fail("controller bootstrap did not publish complete initial facts")
    }
}
