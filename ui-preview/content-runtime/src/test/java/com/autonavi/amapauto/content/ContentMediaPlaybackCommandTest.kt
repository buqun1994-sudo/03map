package com.autonavi.amapauto.content

import android.os.Looper
import java.time.Duration
import java.util.concurrent.CountDownLatch
import java.util.concurrent.ExecutorService
import java.util.concurrent.TimeUnit
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentMediaPlaybackCommandTest {
    @Test fun queuedPlaybackIsDroppedWhenASecondIntentSupersedesItBeforeDispatch() {
        val media = MediaPort()
        val store = store(media)
        try {
            store.acceptMediaSnapshot(snapshot(playing = false))
            val worker = executor(store)
            val entered = CountDownLatch(1)
            val release = CountDownLatch(1)
            worker.execute {
                entered.countDown()
                assertTrue(release.await(2L, TimeUnit.SECONDS))
            }
            assertTrue(entered.await(1L, TimeUnit.SECONDS))
            store.toggleMediaPlayback()
            store.toggleMediaPlayback()
            release.countDown()
            drain(store)
            assertEquals(listOf(false), media.playbackCalls)
            assertEquals(0, store.snapshot().mediaPlaybackTarget)
        } finally {
            store.destroy()
        }
    }

    @Test fun anOldTimeoutCannotReleaseTheLatestPlaybackIntent() {
        val media = MediaPort()
        val store = store(media)
        try {
            store.acceptMediaSnapshot(snapshot(playing = false))
            store.toggleMediaPlayback()
            val oldTimeout = ContentStore::class.java.getDeclaredField("mediaFeedbackTimeout")
                .apply { isAccessible = true }.get(store) as Runnable
            store.toggleMediaPlayback()
            oldTimeout.run()
            assertEquals(0, store.snapshot().mediaPlaybackTarget)
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6L))
            assertEquals(-1, store.snapshot().mediaPlaybackTarget)
            assertEquals("媒体播放状态未确认，请检查媒体会话", store.snapshot().commandMessage)
        } finally {
            store.destroy()
        }
    }

    @Test fun aRejectedPlaybackIsReportedImmediatelyAndDoesNotWaitForTimeout() {
        val media = MediaPort().apply { playbackResult = { false } }
        val store = store(media)
        try {
            store.acceptMediaSnapshot(snapshot(playing = false))
            store.toggleMediaPlayback()
            drain(store)
            val failed = store.snapshot()
            assertEquals(-1, failed.mediaPlaybackTarget)
            assertEquals(ContentState.COMMAND_FAILED, failed.commandStatus)
            assertEquals("媒体播放命令未发送，请检查媒体会话", failed.commandMessage)
            val sequence = failed.commandSequence
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6L))
            assertEquals(sequence, store.snapshot().commandSequence)
        } finally {
            store.destroy()
        }
    }

    @Test fun timeoutThenRetryConfirmationClearsOnlyThePlaybackFailure() {
        val media = MediaPort()
        val store = store(media)
        try {
            store.acceptMediaSnapshot(snapshot(playing = false))
            store.toggleMediaPlayback()
            drain(store)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6L))
            assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
            val failedSequence = store.snapshot().commandSequence

            store.toggleMediaPlayback()
            assertEquals(failedSequence + 1L, store.snapshot().commandSequence)
            drain(store)
            store.acceptMediaSnapshot(snapshot(playing = true))
            assertEquals(-1, store.snapshot().mediaPlaybackTarget)
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
            assertEquals("", store.snapshot().commandMessage)
        } finally {
            store.destroy()
        }
    }

    @Test fun alreadyPlayingReadbackConfirmsAPlayIntentWithoutWaitingForTimeout() {
        val media = MediaPort()
        val store = store(media)
        try {
            store.acceptMediaSnapshot(snapshot(playing = false))
            store.toggleMediaPlayback()
            store.acceptMediaSnapshot(snapshot(playing = true))
            assertEquals(-1, store.snapshot().mediaPlaybackTarget)
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6L))
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        } finally {
            store.destroy()
        }
    }

    @Test fun lateSuccessAfterTimeoutClearsItsOwnFailureOnceTheStateChanges() {
        val media = MediaPort()
        val store = store(media)
        try {
            store.acceptMediaSnapshot(snapshot(playing = false))
            store.toggleMediaPlayback()
            drain(store)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6L))
            assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
            store.acceptMediaSnapshot(snapshot(playing = true))
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
            assertEquals("", store.snapshot().commandMessage)
        } finally {
            store.destroy()
        }
    }

    @Test fun lateSuccessFromAnOlderRequestCannotClearANewerFailure() {
        val media = MediaPort().apply {
            var sends = 0
            playbackResult = {
                sends++
                sends == 1
            }
        }
        val store = store(media)
        try {
            store.acceptMediaSnapshot(snapshot(playing = false))
            store.toggleMediaPlayback()
            drain(store)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6L))

            store.toggleMediaPlayback()
            drain(store)
            assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
            val newerSequence = store.snapshot().commandSequence
            store.acceptMediaSnapshot(snapshot(playing = true))
            assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
            assertEquals("媒体播放命令未发送，请检查媒体会话", store.snapshot().commandMessage)
            assertEquals(newerSequence, store.snapshot().commandSequence)
        } finally {
            store.destroy()
        }
    }

    @Test fun aLateSuccessFromTheFirstTimeoutCannotClearASecondTimeoutFailure() {
        val media = MediaPort()
        val store = store(media)
        try {
            store.acceptMediaSnapshot(snapshot(playing = false))
            store.toggleMediaPlayback()
            drain(store)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6L))
            store.toggleMediaPlayback()
            drain(store)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(6L))
            val failed = store.snapshot()
            assertEquals(ContentState.COMMAND_FAILED, failed.commandStatus)
            assertEquals("媒体播放状态未确认，请检查媒体会话", failed.commandMessage)
            store.acceptMediaSnapshot(snapshot(playing = true))
            assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
            assertEquals(failed.commandSequence, store.snapshot().commandSequence)
        } finally {
            store.destroy()
        }
    }

    @Test fun playbackSuccessDoesNotClearFailureOwnedByAnotherCommandDomain() {
        val media = MediaPort().apply { sourceResult = { false } }
        val store = store(media)
        try {
            store.acceptMediaSnapshot(snapshot(playing = false))
            store.selectMediaSource("USB音乐")
            drain(store)
            assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
            assertEquals("媒体来源切换未发送，请检查车机媒体服务", store.snapshot().commandMessage)
            val sourceFailureSequence = store.snapshot().commandSequence

            store.toggleMediaPlayback()
            drain(store)
            store.acceptMediaSnapshot(snapshot(playing = true))
            assertEquals(ContentState.COMMAND_FAILED, store.snapshot().commandStatus)
            assertEquals("媒体来源切换未发送，请检查车机媒体服务", store.snapshot().commandMessage)
            assertEquals(sourceFailureSequence, store.snapshot().commandSequence)
        } finally {
            store.destroy()
        }
    }

    private fun store(media: MediaPort) = ContentStore(
        RuntimeEnvironment.getApplication(), ContentPorts.PreviewVehiclePort(), media,
        object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
            override fun write(kind: Int, percent: Int) = false
        }
    )

    private fun snapshot(playing: Boolean, generation: Int = 1) = ContentPorts.MediaSnapshot(
        true, false, "蓝牙音乐", playing, generation, "测试歌曲", "测试作者", true, true,
        null, "media-id", "测试专辑", 180_000L, 0L, 0L, if (playing) 1f else 0f, "",
        ContentPorts.MediaSongIdentity.SONG
    )

    private fun executor(store: ContentStore) = ContentStore::class.java
        .getDeclaredField("mediaCommandExecutor").apply { isAccessible = true }.get(store) as ExecutorService

    private fun drain(store: ContentStore) {
        executor(store).submit {}.get(2L, TimeUnit.SECONDS)
        shadowOf(Looper.getMainLooper()).idle()
    }

    private class MediaPort : ContentPorts.MediaPort {
        val playbackCalls = mutableListOf<Boolean>()
        var playbackResult: (Boolean) -> Boolean = { true }
        var sourceResult: (String) -> Boolean = { true }
        override fun isAvailable() = true
        override fun isSourceAvailable() = true
        override fun requestPlayback(playing: Boolean): Boolean {
            playbackCalls += playing
            return playbackResult(playing)
        }
        override fun requestNext() = true
        override fun requestSource(source: String): Boolean = sourceResult(source)
        override fun start(listener: ContentPorts.MediaSnapshotListener) {}
        override fun stop() {}
    }
}
