package com.icar03.content.runtime

import android.content.Context
import android.graphics.Bitmap
import android.graphics.Color
import android.media.MediaMetadata
import android.media.AudioAttributes
import android.media.session.MediaController
import android.media.session.MediaSession
import android.media.session.MediaSessionManager
import android.media.session.PlaybackState
import android.net.Uri
import android.os.CancellationSignal
import android.os.Looper
import android.os.SystemClock
import com.autonavi.amapauto.content.ContentMediaAdapter
import com.autonavi.amapauto.content.ContentPorts
import com.icar03.content.runtime.media.ContentMediaArtwork
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.io.File
import java.util.concurrent.Future
import java.util.concurrent.TimeUnit

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class MediaArtworkTest {
    private val app get() = RuntimeEnvironment.getApplication()
    private fun imageFile(edge: Int = 64): File {
        val file = File.createTempFile("media-artwork-", ".png", app.cacheDir)
        writeImage(file, edge)
        return file
    }

    private fun writeImage(file: File, edge: Int = 64, color: Int = Color.BLUE) {
        val bitmap = Bitmap.createBitmap(edge, edge, Bitmap.Config.ARGB_8888).apply { eraseColor(color) }
        file.outputStream().use { assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it)) }
        bitmap.recycle()
    }

    @Test fun fileArtworkDecodesToAtMost512PixelsIncludingOddDimensionRounding() {
        val file = imageFile(513)
        try {
            val image = ContentMediaArtwork.decode(app, Uri.fromFile(file).toString(), CancellationSignal())!!
            assertTrue(image.width <= 512); assertTrue(image.height <= 512)
            assertEquals(Color.BLUE, image.getPixel(image.width / 2, image.height / 2))
        } finally { file.delete() }
    }

    @Test fun oversizedValidImageIsRejectedBeforeDecodeRatherThanIgnoringTrailingBytes() {
        val file = imageFile()
        try {
            file.appendBytes(ByteArray(ContentMediaArtwork.MAX_RESPONSE_BYTES + 1))
            assertNull(ContentMediaArtwork.decode(app, Uri.fromFile(file).toString(), CancellationSignal()))
        } finally { file.delete() }
    }

    @Test fun cancelledAndUnsupportedUrisDoNotProduceArtwork() {
        val file = imageFile()
        try {
            assertNull(ContentMediaArtwork.decode(app, Uri.fromFile(file).toString(), CancellationSignal().apply { cancel() }))
            assertNull(ContentMediaArtwork.decode(app, "javascript:alert(1)", CancellationSignal()))
            assertNull(ContentMediaArtwork.decode(app, "data:image/png;base64,ignored", CancellationSignal()))
            assertNull(ContentMediaArtwork.decode(app, "content://missing-provider/cover", CancellationSignal()))
        } finally { file.delete() }
    }

    private fun session(file: File): MediaController {
        val session = MediaSession(app, "uri-artwork")
        return MediaController(app, session.sessionToken).also { controller ->
            shadowOf(controller).setPackageName("com.android.bluetooth")
            val info = org.robolectric.util.ReflectionHelpers.newInstance(MediaController.PlaybackInfo::class.java)
            org.robolectric.util.ReflectionHelpers.setField(info, "mAudioAttrs",
                AudioAttributes.Builder().setUsage(AudioAttributes.USAGE_MEDIA).setContentType(AudioAttributes.CONTENT_TYPE_MUSIC).build())
            shadowOf(controller).setPlaybackInfo(info)
            shadowOf(controller).setMetadata(MediaMetadata.Builder()
                .putString(MediaMetadata.METADATA_KEY_MEDIA_ID, "public-cover-song")
                .putString(MediaMetadata.METADATA_KEY_TITLE, "真实标题")
                .putString(MediaMetadata.METADATA_KEY_ARTIST, "真实歌手")
                .putString(MediaMetadata.METADATA_KEY_ALBUM_ART_URI, Uri.fromFile(file).toString())
                .putLong(MediaMetadata.METADATA_KEY_DURATION, 180_000L).build())
            shadowOf(controller).setPlaybackState(PlaybackState.Builder()
                .setState(PlaybackState.STATE_PLAYING, 10L, 1f, SystemClock.elapsedRealtime()).build())
            shadowOf(app.getSystemService(Context.MEDIA_SESSION_SERVICE) as MediaSessionManager).addController(controller)
        }
    }

    @Test fun adapterPublishesUriArtworkAsynchronouslyAndReusesTheDecodedBitmap() {
        val file = imageFile(); session(file)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.awaitBootstrapPreservingArtworkDelivery(adapter)
            assertNull(seen.last().artwork)
            val task = ContentMediaAdapter::class.java.getDeclaredField("artworkTask").apply { isAccessible = true }
            (task.get(adapter) as Future<*>).get(3, TimeUnit.SECONDS)
            shadowOf(Looper.getMainLooper()).idle()
            val decoded = seen.last().artwork!!
            assertEquals(Color.BLUE, decoded.getPixel(0, 0))
            val epoch = ContentMediaAdapter::class.java.getDeclaredField("lifecycle").apply { isAccessible = true }.getLong(adapter)
            ContentMediaAdapter::class.java.getDeclaredMethod("publishSnapshot", java.lang.Long.TYPE)
                .apply { isAccessible = true }.invoke(adapter, epoch)
            assertSame(decoded, seen.last().artwork); assertNull(task.get(adapter))
            adapter.stop()
            assertFalse(decoded.isRecycled)
        } finally { adapter.stop(); file.delete() }
    }

    @Test fun failedFirstUriFallsBackToArtUriAndReusesTheSuccessfulBitmap() {
        val file = imageFile(); val controller = session(file)
        shadowOf(controller).setMetadata(MediaMetadata.Builder(controller.metadata)
            .putString(MediaMetadata.METADATA_KEY_ALBUM_ART_URI, "content://missing-provider/first")
            .putString(MediaMetadata.METADATA_KEY_ART_URI, Uri.fromFile(file).toString()).build())
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.awaitBootstrapPreservingArtworkDelivery(adapter)
            awaitArtwork(adapter)
            val decoded = seen.last().artwork!!
            assertEquals(Color.BLUE, decoded.getPixel(0, 0))
            val failures = ContentMediaAdapter::class.java.getDeclaredField("failedArtwork").apply { isAccessible = true }
                .get(adapter) as Map<*, *>
            assertEquals(1, failures.size)
            repeat(5) { publish(adapter) }
            assertSame(decoded, seen.last().artwork)
            assertNull(artworkTask(adapter))
            adapter.stop()
            assertFalse(decoded.isRecycled)
        } finally { adapter.stop(); file.delete() }
    }

    @Test fun displayIconUriIsTriedAfterBothHigherPriorityCandidatesFail() {
        val file = imageFile(); val controller = session(file)
        shadowOf(controller).setMetadata(MediaMetadata.Builder(controller.metadata)
            .putString(MediaMetadata.METADATA_KEY_ALBUM_ART_URI, "content://missing-provider/album")
            .putString(MediaMetadata.METADATA_KEY_ART_URI, "content://missing-provider/art")
            .putString(MediaMetadata.METADATA_KEY_DISPLAY_ICON_URI, Uri.fromFile(file).toString()).build())
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.awaitBootstrapPreservingArtworkDelivery(adapter)
            awaitArtwork(adapter)
            assertEquals(Color.BLUE, seen.last().artwork!!.getPixel(0, 0))
            @Suppress("UNCHECKED_CAST")
            val uris = ContentMediaAdapter::class.java.getDeclaredMethod("artworkUris", MediaMetadata::class.java)
                .apply { isAccessible = true }.invoke(null, controller.metadata) as List<String>
            assertEquals(listOf("content://missing-provider/album", "content://missing-provider/art",
                Uri.fromFile(file).toString()), uris)
        } finally { adapter.stop(); file.delete() }
    }

    @org.robolectric.annotation.GraphicsMode(org.robolectric.annotation.GraphicsMode.Mode.NATIVE)
    @Test fun transientSameUriFailureDoesNotBecomeAPermanentBlacklistOrFetchStorm() {
        val file = imageFile().apply { writeText("temporarily invalid image") }; session(file)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.awaitBootstrapPreservingArtworkDelivery(adapter)
            awaitArtwork(adapter)
            assertNull(seen.last().artwork)
            writeImage(file)
            repeat(10) { publish(adapter) }
            assertNull(artworkTask(adapter))
            assertNull(seen.last().artwork)
            shadowOf(Looper.getMainLooper()).idleFor(java.time.Duration.ofSeconds(9))
            publish(adapter)
            assertNull(artworkTask(adapter))
            shadowOf(Looper.getMainLooper()).idleFor(java.time.Duration.ofSeconds(1))
            publish(adapter)
            assertNotNull(artworkTask(adapter))
            awaitArtwork(adapter)
            assertEquals(Color.BLUE, seen.last().artwork!!.getPixel(0, 0))
        } finally { adapter.stop(); file.delete() }
    }

    @Test fun postedArtworkCannotCrossASourceSwitchAndPublishedCacheSurvivesASameSongReturn() {
        val file = imageFile(); session(file)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.awaitBootstrapPreservingArtworkDelivery(adapter)
            artworkTask(adapter)!!.get(3, TimeUnit.SECONDS)
            changeSource(adapter, "网易云音乐")
            shadowOf(Looper.getMainLooper()).idle()
            assertNull(seen.last().artwork)
            changeSource(adapter, "蓝牙音乐")
            awaitArtwork(adapter)
            val published = seen.last().artwork!!
            changeSource(adapter, "网易云音乐")
            assertNull(seen.last().artwork)
            changeSource(adapter, "蓝牙音乐")
            assertSame(published, seen.last().artwork)
            assertNull(artworkTask(adapter))
            assertFalse(published.isRecycled)
        } finally { adapter.stop(); file.delete() }
    }

    @Test fun newControllerTokenCannotConsumeAnAlreadyPostedOldTokenBitmap() {
        val file = imageFile(); val old = session(file)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.awaitBootstrapPreservingArtworkDelivery(adapter)
            artworkTask(adapter)!!.get(3, TimeUnit.SECONDS)
            writeImage(file, color = Color.RED)
            val replacement = session(file)
            assertNotEquals(old.sessionToken, replacement.sessionToken)
            val epoch = ContentMediaAdapter::class.java.getDeclaredField("lifecycle").apply { isAccessible = true }.getLong(adapter)
            ContentMediaAdapter::class.java.getDeclaredMethod("updateController", List::class.java, java.lang.Long.TYPE)
                .apply { isAccessible = true }.invoke(adapter, listOf(replacement), epoch)
            awaitArtwork(adapter)
            assertEquals(Color.RED, seen.last().artwork!!.getPixel(0, 0))
        } finally { adapter.stop(); file.delete() }
    }

    @Test fun completedArtworkIsRejectedWhenMetadataChangesBeforeItsCallbackIsDelivered() {
        val file = imageFile(); val controller = session(file)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.awaitBootstrapPreservingArtworkDelivery(adapter)
            artworkTask(adapter)!!.get(3, TimeUnit.SECONDS)
            shadowOf(controller).setMetadata(MediaMetadata.Builder()
                .putString(MediaMetadata.METADATA_KEY_MEDIA_ID, "replacement")
                .putString(MediaMetadata.METADATA_KEY_TITLE, "replacement")
                .putString(MediaMetadata.METADATA_KEY_ARTIST, "artist")
                .putLong(MediaMetadata.METADATA_KEY_DURATION, 180_000L).build())
            shadowOf(controller).callbacks.toList().forEach { it.onMetadataChanged(controller.metadata) }
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals("replacement", seen.last().title)
            assertNull(seen.last().artwork)
            val cache = ContentMediaAdapter::class.java.getDeclaredField("artworkCache").apply { isAccessible = true }
                .get(adapter) as android.util.LruCache<*, *>
            assertEquals(0, cache.size())
        } finally { adapter.stop(); file.delete() }
    }

    private fun artworkTask(adapter: ContentMediaAdapter): Future<*>? =
        ContentMediaAdapter::class.java.getDeclaredField("artworkTask").apply { isAccessible = true }
            .get(adapter) as Future<*>?

    private fun awaitArtwork(adapter: ContentMediaAdapter) {
        ContentMediaAdapterTestSupport.awaitBootstrapPreservingArtworkDelivery(adapter)
        artworkTask(adapter)!!.get(3, TimeUnit.SECONDS)
        shadowOf(Looper.getMainLooper()).idle()
    }

    private fun publish(adapter: ContentMediaAdapter) {
        val epoch = ContentMediaAdapter::class.java.getDeclaredField("lifecycle").apply { isAccessible = true }.getLong(adapter)
        ContentMediaAdapter::class.java.getDeclaredMethod("publishSnapshot", java.lang.Long.TYPE)
            .apply { isAccessible = true }.invoke(adapter, epoch)
    }

    private fun changeSource(adapter: ContentMediaAdapter, source: String) {
        ContentMediaAdapter::class.java.getDeclaredMethod("changeActualSource", String::class.java)
            .apply { isAccessible = true }.invoke(adapter, source)
        val epoch = ContentMediaAdapter::class.java.getDeclaredField("lifecycle").apply { isAccessible = true }.getLong(adapter)
        ContentMediaAdapter::class.java.getDeclaredMethod("reconcileControllers", java.lang.Long.TYPE)
            .apply { isAccessible = true }.invoke(adapter, epoch)
    }

    @Test fun stopInvalidatesAlreadyPostedArtworkCompletionBeforeRestart() {
        val file = imageFile(); val controller = session(file)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.awaitBootstrapPreservingArtworkDelivery(adapter)
            val task = ContentMediaAdapter::class.java.getDeclaredField("artworkTask").apply { isAccessible = true }
            (task.get(adapter) as Future<*>).get(3, TimeUnit.SECONDS)
            adapter.stop()
            shadowOf(controller).setMetadata(MediaMetadata.Builder()
                .putString(MediaMetadata.METADATA_KEY_MEDIA_ID, "different-recording")
                .putString(MediaMetadata.METADATA_KEY_TITLE, "新歌曲")
                .putString(MediaMetadata.METADATA_KEY_ARTIST, "真实歌手")
                .putLong(MediaMetadata.METADATA_KEY_DURATION, 180_000L).build())
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.awaitBootstrapPreservingArtworkDelivery(adapter)
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals("新歌曲", seen.last().title); assertNull(seen.last().artwork)
        } finally { adapter.stop(); file.delete() }
    }
}
