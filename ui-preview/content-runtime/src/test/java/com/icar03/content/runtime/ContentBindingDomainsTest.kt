package com.icar03.content.runtime

import android.os.Looper
import android.os.SystemClock
import com.autonavi.amapauto.content.*
import com.icar03.content.ui.ContentEvent
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.time.Duration
import java.util.concurrent.CountDownLatch
import java.util.concurrent.ExecutorService
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentBindingDomainsTest {
    private class Media : ContentPorts.MediaPort {
        override fun isAvailable() = true
        override fun isSourceAvailable() = true
        override fun requestPlayback(playing: Boolean) = true
        override fun requestNext() = true
        override fun requestSource(source: String) = true
        override fun start(listener: ContentPorts.MediaSnapshotListener) {}
        override fun stop() {}
    }
    private fun store(system: ContentPorts.SystemPort) = ContentStore(RuntimeEnvironment.getApplication(),
        ContentPorts.PreviewVehiclePort(), Media(), system)
    private fun song(position: Long = 1_000L, elapsed: Long = SystemClock.elapsedRealtime(), playing: Boolean = true) =
        ContentPorts.MediaSnapshot(true, false, "网易云音乐", playing, 1, "测试录音", "测试作者", true, true,
            null, "domain-track", "测试专辑", 30_000L, position, elapsed, if (playing) 1f else 0f, "", ContentPorts.MediaSongIdentity.SONG)
    private fun drain(binding: ContentBinding) {
        val worker = ContentBinding::class.java.getDeclaredField("systemWorker").apply { isAccessible = true }.get(binding) as ExecutorService
        repeat(2) { worker.submit {}.get(2, TimeUnit.SECONDS); shadowOf(Looper.getMainLooper()).idle() }
    }

    @Test fun trustedPlaybackAnchorAndWallClockNeverRepublishTheShell() {
        val system = object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(true, 25)
            override fun write(kind: Int, percent: Int) = true
        }
        val store = store(system)
        val mapper = ContentUiMapper()
        val binding = ContentBinding(store, mapper = mapper)
        try {
            store.acceptMediaSnapshot(song())
            binding.start(); drain(binding)
            val shell = binding.state.value
            val lyrics = binding.lyrics.value
            val anchor = store.snapshot().lyricsAnchor
            val shellCount = mapper.shellProjectionCount
            val bodyCount = mapper.lyricsProjectionCount
            repeat(100) { store.acceptMediaSnapshot(song(elapsed = SystemClock.elapsedRealtime())) }
            store.updateClock(1_700_000_000_000L)
            assertSame(shell, binding.state.value)
            assertSame(lyrics, binding.lyrics.value)
            assertSame(anchor, store.snapshot().lyricsAnchor)
            assertEquals(shellCount, mapper.shellProjectionCount)
            assertEquals(bodyCount, mapper.lyricsProjectionCount)
            assertNotEquals("--:--", binding.clock.value.time)
            store.acceptMediaSnapshot(song(5_000L, SystemClock.elapsedRealtime()))
            assertSame(shell, binding.state.value)
            assertEquals(5_000L, binding.lyrics.value.positionMs)
            assertNotSame(anchor, store.snapshot().lyricsAnchor)
        } finally { binding.close(); store.destroy() }
    }

    @Test fun aBlockedSystemReadDoesNotBlockMediaOrClockAndReadsStayOnWorker() {
        val entered = CountDownLatch(1)
        val release = CountDownLatch(1)
        val reads = AtomicInteger()
        val wrongThread = AtomicInteger()
        val system = object : ContentPorts.SystemPort {
            override fun read(kind: Int): ContentPorts.SystemSnapshot {
                if (Looper.myLooper() == Looper.getMainLooper()) wrongThread.incrementAndGet()
                if (reads.incrementAndGet() == 1) { entered.countDown(); check(release.await(2, TimeUnit.SECONDS)) }
                return ContentPorts.SystemSnapshot(true, 25)
            }
            override fun write(kind: Int, percent: Int): Boolean {
                if (Looper.myLooper() == Looper.getMainLooper()) wrongThread.incrementAndGet()
                return true
            }
        }
        val store = store(system)
        val binding = ContentBinding(store)
        try {
            binding.start()
            assertTrue(entered.await(2, TimeUnit.SECONDS))
            store.acceptMediaSnapshot(song())
            assertTrue(binding.state.value.media.playing)
            store.acceptMediaSnapshot(song(playing = false))
            assertFalse(binding.state.value.media.playing)
            val shell = binding.state.value
            store.updateClock(1_700_000_000_000L)
            assertSame(shell, binding.state.value)
            assertNotEquals("--:--", binding.clock.value.time)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1_000L))
            assertEquals(1, reads.get())
            release.countDown(); drain(binding)
            binding.dispatch(ContentEvent.BrightnessChanged(.9f)); drain(binding)
            assertEquals(0, wrongThread.get())
            assertEquals(.25f, binding.state.value.brightness.actual)
            assertEquals("系统状态未确认", binding.state.value.message)
        } finally { release.countDown(); binding.close(); store.destroy() }
    }

    @Test fun anOldListenerCannotReserveTheRestartedProjectionQueue() {
        val store = store(object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
            override fun write(kind: Int, percent: Int) = false
        })
        val binding = ContentBinding(store)
        try {
            store.acceptMediaSnapshot(song())
            binding.start(); drain(binding)
            val oldListener = ContentBinding::class.java.getDeclaredField("listener").apply { isAccessible = true }
                .get(binding) as ContentStore.Listener
            val oldSnapshot = store.snapshot()
            binding.stop(); binding.start(); drain(binding)
            val producer = Thread {
                oldListener.onContentStateChanged(oldSnapshot)
                store.acceptMediaSnapshot(song(playing = false))
            }
            producer.start(); producer.join(2_000L)
            assertFalse(producer.isAlive)
            shadowOf(Looper.getMainLooper()).idle()
            assertFalse(binding.state.value.media.playing)
        } finally { binding.close(); store.destroy() }
    }

    @Test fun changingClockPresentationDoesNotRestoreAnOldStoreTimestamp() {
        val store = store(object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
            override fun write(kind: Int, percent: Int) = false
        })
        store.updateClock(java.lang.System.currentTimeMillis() - 180_000L)
        val binding = ContentBinding(store)
        try {
            binding.start(); drain(binding)
            val current = binding.clock.value.time
            store.setShowWeekday(!store.snapshot().showWeekday)
            assertEquals(current, binding.clock.value.time)
            store.setShowSeconds(true)
            val expected = ContentClockPresenter(java.util.Locale.SIMPLIFIED_CHINESE).project(java.lang.System.currentTimeMillis(), true, store.snapshot().showWeekday)
            assertEquals(expected, binding.clock.value)
        } finally { binding.close(); store.destroy() }
    }

    @Test fun delayedSuccessfulSystemConfirmationKeepsSettingsOpenWithoutFeedback() {
        var percent = 25
        val store = store(object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(true, percent)
            override fun write(kind: Int, target: Int) = true
        })
        val binding = ContentBinding(store)
        try {
            binding.start(); drain(binding)
            binding.dispatch(ContentEvent.BrightnessChanged(.9f)); drain(binding)
            assertEquals("系统状态未确认", binding.state.value.message)
            binding.dispatch(ContentEvent.SettingsTapped)
            percent = 90
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(250)); drain(binding)
            assertEquals(.9f, binding.state.value.brightness.actual)
            assertNull(binding.state.value.message)
            assertTrue(binding.state.value.settingsOpen)
        } finally { binding.close(); store.destroy() }
    }

    @Test fun aLateWriteCompletionCannotRestoreDismissedFeedbackOrAlterSettingsVisibility() {
        for (action in listOf(ContentEvent.SettingsTapped, ContentEvent.DismissSheet)) {
            val entered = CountDownLatch(1)
            val release = CountDownLatch(1)
            var sent = false
            val store = store(object : ContentPorts.SystemPort {
                override fun read(kind: Int): ContentPorts.SystemSnapshot {
                    if (sent) { entered.countDown(); check(release.await(2, TimeUnit.SECONDS)) }
                    return ContentPorts.SystemSnapshot(true, 25)
                }
                override fun write(kind: Int, target: Int): Boolean { sent = true; return true }
            })
            val binding = ContentBinding(store)
            try {
                binding.start(); drain(binding)
                binding.dispatch(ContentEvent.BrightnessChanged(.9f))
                assertTrue(entered.await(2, TimeUnit.SECONDS))
                binding.dispatch(action)
                release.countDown(); drain(binding)
                assertNull(binding.state.value.message)
                assertEquals(action == ContentEvent.SettingsTapped, binding.state.value.settingsOpen)
                assertEquals(.25f, binding.state.value.brightness.actual)
            } finally { release.countDown(); binding.close(); store.destroy() }
        }
    }

    @Test fun stopRejectsAQueuedWriteAndLateReadbackCannotReenableThePanel() {
        val entered = CountDownLatch(1)
        val release = CountDownLatch(1)
        val writes = AtomicInteger()
        val reads = AtomicInteger()
        val system = object : ContentPorts.SystemPort {
            override fun read(kind: Int): ContentPorts.SystemSnapshot {
                if (reads.incrementAndGet() == 1) {
                    entered.countDown()
                    // Simulate a Binder read which does not honour Future.cancel interruption.
                    var complete = false
                    while (!complete) try { complete = release.await(2, TimeUnit.SECONDS) } catch (_: InterruptedException) {}
                }
                return ContentPorts.SystemSnapshot(true, 25)
            }
            override fun write(kind: Int, percent: Int): Boolean { writes.incrementAndGet(); return true }
        }
        val store = store(system)
        val binding = ContentBinding(store)
        try {
            binding.start()
            assertTrue(entered.await(2, TimeUnit.SECONDS))
            binding.dispatch(ContentEvent.BrightnessChanged(.8f))
            binding.stop()
            val stopped = binding.state.value
            release.countDown(); drain(binding)
            assertEquals(0, writes.get())
            assertSame(stopped, binding.state.value)
            assertFalse(binding.state.value.brightness.available)
            assertFalse(binding.active.value)
            binding.start(); drain(binding)
            assertTrue(binding.state.value.brightness.available)
            assertEquals(.25f, binding.state.value.brightness.actual)
            assertEquals(0, writes.get())
        } finally { release.countDown(); binding.close(); store.destroy() }
    }
}
