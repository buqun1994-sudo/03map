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
        val bitmap = Bitmap.createBitmap(edge, edge, Bitmap.Config.ARGB_8888).apply { eraseColor(Color.BLUE) }
        file.outputStream().use { assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it)) }
        bitmap.recycle()
        return file
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
            adapter.start { seen += it }
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

    @Test fun stopInvalidatesAlreadyPostedArtworkCompletionBeforeRestart() {
        val file = imageFile(); val controller = session(file)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }
            val task = ContentMediaAdapter::class.java.getDeclaredField("artworkTask").apply { isAccessible = true }
            (task.get(adapter) as Future<*>).get(3, TimeUnit.SECONDS)
            adapter.stop()
            shadowOf(controller).setMetadata(MediaMetadata.Builder()
                .putString(MediaMetadata.METADATA_KEY_MEDIA_ID, "different-recording")
                .putString(MediaMetadata.METADATA_KEY_TITLE, "新歌曲").build())
            adapter.start { seen += it }
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals("新歌曲", seen.last().title); assertNull(seen.last().artwork)
        } finally { adapter.stop(); file.delete() }
    }
}
