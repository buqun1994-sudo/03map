package com.icar03.content.runtime

import android.graphics.Bitmap
import android.graphics.Color
import android.os.Looper
import com.autonavi.amapauto.content.*
import com.icar03.content.ui.AmbientArtwork
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import org.robolectric.annotation.GraphicsMode
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Future
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class AmbientBindingTest {
    @Test fun trackLoadingPauseAndFailedArtworkKeepTheLastPublishedScene() {
        val store = store()
        val calls = AtomicInteger()
        val binding = ContentBinding(store, ambientFactory = { source ->
            calls.incrementAndGet()
            if (source.getPixel(0, 0) == Color.BLUE) null else createAmbientField(source)
        })
        val red = bitmap(Color.RED); val blue = bitmap(Color.BLUE)
        try {
            binding.start()
            store.acceptMediaSnapshot(song(1, "A", red)); awaitBake(binding)
            val scene = binding.ambientArtwork.value!!
            store.acceptMediaSnapshot(song(2, "B", null))
            assertSame(scene, binding.ambientArtwork.value)
            assertNull(binding.artwork.value)
            store.acceptMediaSnapshot(song(3, "B", null, playing = false))
            assertTrue(binding.state.value.media.isSong)
            assertFalse(binding.state.value.media.playing)
            assertSame(scene, binding.ambientArtwork.value)
            store.acceptMediaSnapshot(song(4, "B", blue)); awaitBake(binding)
            assertSame(scene, binding.ambientArtwork.value)
            store.updateClock(1_700_000_000_000L)
            assertEquals(2, calls.get())
            store.acceptMediaSnapshot(song(5, "导航", null, kind = ContentPorts.MediaSongIdentity.NON_SONG))
            assertFalse(binding.state.value.media.isSong)
            assertNull(binding.ambientArtwork.value)
            assertFalse(scene.base.isRecycled)
            assertFalse(red.isRecycled)
            // A returning confirmed song may reuse the last real colour field while its cover loads.
            store.acceptMediaSnapshot(song(6, "C", null))
            assertSame(scene, binding.ambientArtwork.value)
        } finally { binding.close(); store.destroy() }
    }

    @Test fun cancelledNonCooperativeBakeCannotReplaceNewTrackOrRecyclePublishedScene() {
        val store = store()
        val entered = CountDownLatch(1); val release = CountDownLatch(1)
        val oldSource = bitmap(Color.RED); val newSource = bitmap(Color.GREEN)
        val oldScene = createAmbientField(oldSource)!!
        val newScene = createAmbientField(newSource)!!
        val binding = ContentBinding(store, ambientFactory = { source ->
            if (source === oldSource) {
                entered.countDown()
                var released = false
                while (!released) try { released = release.await(2, TimeUnit.SECONDS) } catch (_: InterruptedException) { }
                oldScene
            } else newScene
        })
        try {
            binding.start()
            store.acceptMediaSnapshot(song(1, "A", oldSource))
            assertTrue(entered.await(2, TimeUnit.SECONDS))
            store.acceptMediaSnapshot(song(2, "B", null))
            store.acceptMediaSnapshot(song(3, "B", newSource))
            release.countDown(); awaitBake(binding)
            assertSame(newScene, binding.ambientArtwork.value)
            assertTrue(oldScene.base.isRecycled)
            assertFalse(newScene.base.isRecycled)
            binding.stop()
            assertFalse(binding.active.value)
            assertNull(binding.ambientArtwork.value)
            assertFalse(newScene.base.isRecycled)
            assertFalse(oldSource.isRecycled)
            assertFalse(newSource.isRecycled)
        } finally { release.countDown(); binding.close(); store.destroy() }
    }

    @Test fun sameBitmapWithNewGenerationIsRebakedWithoutFirstClearingBackground() {
        val store = store(); val binding = ContentBinding(store); val source = bitmap(Color.RED)
        try {
            binding.start()
            store.acceptMediaSnapshot(song(1, "A", source)); awaitBake(binding)
            val original = binding.ambientArtwork.value!!
            source.eraseColor(Color.GREEN)
            store.acceptMediaSnapshot(song(2, "A", source))
            assertSame(original, binding.ambientArtwork.value)
            awaitBake(binding)
            val refreshed = binding.ambientArtwork.value!!
            assertNotSame(original, refreshed)
            assertTrue(Color.green(refreshed.base.getPixel(64, 64)) > Color.red(refreshed.base.getPixel(64, 64)))
            assertFalse(original.base.isRecycled)
        } finally { binding.close(); store.destroy() }
    }

    @Test fun ambientPreferenceStopsBakingKeepsTheMediaCoverAndRestoresOnlyTheLatestSong() {
        val store = store()
        store.setShowAmbientArtwork(false)
        val calls = AtomicInteger()
        val binding = ContentBinding(store, ambientFactory = { calls.incrementAndGet(); createAmbientField(it) })
        val red = bitmap(Color.RED); val green = bitmap(Color.GREEN)
        try {
            binding.start()
            store.acceptMediaSnapshot(song(1, "A", red)); awaitBake(binding)
            assertSame(red, binding.artwork.value)
            assertNull(binding.ambientArtwork.value)
            assertEquals(0, calls.get())
            binding.dispatch(com.icar03.content.ui.ContentEvent.SettingsTapped)
            binding.dispatch(com.icar03.content.ui.ContentEvent.ShowAmbientArtworkChanged(true)); awaitBake(binding)
            val published = binding.ambientArtwork.value!!
            assertEquals(1, calls.get())
            store.setShowAmbientArtwork(false)
            assertNull(binding.ambientArtwork.value)
            assertFalse(published.base.isRecycled)
            store.acceptMediaSnapshot(song(2, "B", green)); awaitBake(binding)
            assertSame(green, binding.artwork.value)
            assertEquals(1, calls.get())
            binding.dispatch(com.icar03.content.ui.ContentEvent.ShowAmbientArtworkChanged(true)); awaitBake(binding)
            val restored = binding.ambientArtwork.value!!
            assertNotSame(published, restored)
            assertTrue(Color.green(restored.base.getPixel(64, 64)) > Color.red(restored.base.getPixel(64, 64)))
            assertEquals(2, calls.get())
        } finally { binding.close(); store.destroy() }
    }

    @Test fun disablingAmbientRejectsAnAlreadyRunningNonCooperativeBake() {
        val store = store()
        val source = bitmap(Color.RED)
        val stale = createAmbientField(source)!!
        val entered = CountDownLatch(1); val release = CountDownLatch(1)
        val binding = ContentBinding(store, ambientFactory = {
            entered.countDown()
            var released = false
            while (!released) try { released = release.await(2, TimeUnit.SECONDS) } catch (_: InterruptedException) { }
            stale
        })
        try {
            binding.start()
            store.acceptMediaSnapshot(song(1, "A", source))
            assertTrue(entered.await(2, TimeUnit.SECONDS))
            store.setShowAmbientArtwork(false)
            release.countDown()
            val worker = ContentBinding::class.java.getDeclaredField("artworkWorker").apply { isAccessible = true }
                .get(binding) as java.util.concurrent.ExecutorService
            worker.submit {}.get(2, TimeUnit.SECONDS)
            shadowOf(Looper.getMainLooper()).idle()
            assertNull(binding.ambientArtwork.value)
            assertTrue(stale.base.isRecycled)
            assertFalse(source.isRecycled)
            assertSame(source, binding.artwork.value)
        } finally { release.countDown(); binding.close(); store.destroy() }
    }

    private fun awaitBake(binding: ContentBinding) {
        val job = ContentBinding::class.java.getDeclaredField("ambientJob").apply { isAccessible = true }.get(binding) as Future<*>?
        job?.get(2, TimeUnit.SECONDS)
        shadowOf(Looper.getMainLooper()).idle()
    }
    private fun bitmap(color: Int) = Bitmap.createBitmap(96, 96, Bitmap.Config.ARGB_8888).apply { eraseColor(color) }
    private fun song(generation: Int, id: String, artwork: Bitmap?, playing: Boolean = true,
        kind: ContentPorts.MediaSongIdentity = ContentPorts.MediaSongIdentity.SONG) = ContentPorts.MediaSnapshot(
        true, false, "网易云音乐", playing, generation, id, "测试歌手", true, true, artwork,
        id, "测试专辑", 180_000L, 1000L, 0L, 1f, "", kind,
    )
    private fun store() = ContentStore(RuntimeEnvironment.getApplication(), ContentPorts.PreviewVehiclePort(),
        ContentPorts.PreviewMediaPort(), object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
            override fun write(kind: Int, percent: Int) = false
        })
}
