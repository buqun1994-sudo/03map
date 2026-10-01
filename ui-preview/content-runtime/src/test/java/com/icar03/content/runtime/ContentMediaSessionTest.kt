package com.icar03.content.runtime

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.pm.ApplicationInfo
import android.content.pm.ResolveInfo
import android.content.pm.ServiceInfo
import android.graphics.Bitmap
import android.media.MediaMetadata
import android.media.session.MediaController
import android.media.session.MediaSession
import android.media.session.MediaSessionManager
import android.media.session.PlaybackState
import android.os.Handler
import android.os.Looper
import android.os.SystemClock
import com.autonavi.amapauto.content.ContentMediaAdapter
import com.autonavi.amapauto.content.ContentPorts
import com.icar03.content.runtime.media.ContentPublicMediaBrowsers
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.time.Duration

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentMediaSessionTest {
    private val app get() = RuntimeEnvironment.getApplication()
    private fun controller(packageName: String): MediaController {
        val session = MediaSession(app, "media-probe-${System.identityHashCode(Any())}")
        return MediaController(app, session.sessionToken).also { shadowOf(it).setPackageName(packageName) }
    }
    private fun metadata(id: String, title: String = "歌曲$id", duration: Long = 180_000L): MediaMetadata =
        MediaMetadata.Builder().putString(MediaMetadata.METADATA_KEY_MEDIA_ID, id)
            .putString(MediaMetadata.METADATA_KEY_TITLE, title)
            .putString(MediaMetadata.METADATA_KEY_ARTIST, "歌手")
            .putLong(MediaMetadata.METADATA_KEY_DURATION, duration).build()
    private fun playback(position: Long = 100L, updated: Long = SystemClock.elapsedRealtime(), actions: Long = 0L) =
        PlaybackState.Builder().setState(PlaybackState.STATE_PLAYING, position, 1.25f, updated)
            .setActions(actions).build()
    private fun add(controller: MediaController) {
        shadowOf(app.getSystemService(Context.MEDIA_SESSION_SERVICE) as MediaSessionManager).addController(controller)
    }
    private fun changeSource(adapter: ContentMediaAdapter, source: String?) {
        ContentMediaAdapter::class.java.getDeclaredMethod("changeActualSource", String::class.java)
            .apply { isAccessible = true }.invoke(adapter, source)
        reconcile(adapter)
    }
    private fun reconcile(adapter: ContentMediaAdapter) {
        val epoch = ContentMediaAdapter::class.java.getDeclaredField("lifecycle").apply { isAccessible = true }.getLong(adapter)
        ContentMediaAdapter::class.java.getDeclaredMethod("reconcileControllers", java.lang.Long.TYPE)
            .apply { isAccessible = true }.invoke(adapter, epoch)
    }
    private fun update(controller: MediaController, metadata: MediaMetadata, state: PlaybackState) {
        val shadow = shadowOf(controller)
        shadow.setMetadata(metadata); shadow.setPlaybackState(state)
        shadow.callbacks.toList().forEach { it.onMetadataChanged(metadata); it.onPlaybackStateChanged(state) }
    }

    @Test fun realBitmapDisplayMetadataProgressAndEmbeddedLyricsSurviveWithZeroControlActions() {
        val c = controller("com.android.bluetooth")
        val cover = Bitmap.createBitmap(32, 32, Bitmap.Config.ARGB_8888)
        val lyrics = "[00:00.00]第一句\n[00:01.00]第二句"
        val data = MediaMetadata.Builder(metadata("public-id"))
            .putString(MediaMetadata.METADATA_KEY_DISPLAY_TITLE, "公开显示标题")
            .putString(MediaMetadata.METADATA_KEY_DISPLAY_SUBTITLE, "公开显示歌手")
            .putString(MediaMetadata.METADATA_KEY_ALBUM, "专辑")
            .putString(MediaMetadata.METADATA_KEY_DISPLAY_DESCRIPTION, lyrics)
            .putBitmap(MediaMetadata.METADATA_KEY_ALBUM_ART, cover).build()
        shadowOf(c).setMetadata(data); shadowOf(c).setPlaybackState(playback()); add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }
            val last = seen.last()
            assertEquals("公开显示标题", last.title); assertEquals("公开显示歌手", last.artist)
            assertEquals("public-id", last.mediaId); assertEquals("专辑", last.album)
            assertEquals(180_000L, last.durationMs); assertEquals(100L, last.positionMs)
            assertEquals(SystemClock.elapsedRealtime(), last.positionElapsedRealtimeMs)
            assertEquals(1.25f, last.playbackSpeed, 0f); assertEquals(lyrics, last.embeddedLyrics)
            assertTrue(last.playing); assertFalse(last.playbackAvailable); assertSame(cover, last.artwork)
        } finally { adapter.stop() }
        assertFalse(cover.isRecycled)
    }

    @Test fun unknownPositionAndDurationRemainUnknownInsteadOfBecomingZeroEvidence() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setMetadata(metadata("unknown", duration = 0L))
        shadowOf(c).setPlaybackState(playback(position = PlaybackState.PLAYBACK_POSITION_UNKNOWN, updated = 0L)); add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }
            assertEquals(-1L, seen.last().positionMs); assertEquals(0L, seen.last().positionElapsedRealtimeMs)
            assertEquals(0L, seen.last().durationMs)
        } finally { adapter.stop() }
    }

    @Test fun sourceReadbackNeverInheritsBluetoothArtworkOrControlsFromThePreviousSource() {
        val c = controller("com.android.bluetooth")
        val cover = Bitmap.createBitmap(32, 32, Bitmap.Config.ARGB_8888)
        shadowOf(c).setMetadata(MediaMetadata.Builder(metadata("old"))
            .putBitmap(MediaMetadata.METADATA_KEY_ART, cover).build())
        shadowOf(c).setPlaybackState(playback(actions = PlaybackState.ACTION_PLAY or PlaybackState.ACTION_SKIP_TO_NEXT)); add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; assertSame(cover, seen.last().artwork)
            changeSource(adapter, "网易云音乐")
            assertEquals("网易云音乐", seen.last().source); assertNull(seen.last().artwork)
            assertEquals("暂无媒体", seen.last().title); assertFalse(seen.last().playbackAvailable)
            update(c, metadata("another-bluetooth-song"), playback())
            assertEquals("暂无媒体", seen.last().title); assertNull(seen.last().artwork)
        } finally { adapter.stop() }
        assertFalse(cover.isRecycled)
    }

    @Test fun sharedProxyRequiresNewRecordingAfterEachSourceEpochAndRejectsTimestampOnlyUpdates() {
        val c = controller("com.tencent.wecarflow")
        shadowOf(c).setMetadata(metadata("old")); shadowOf(c).setPlaybackState(playback()); add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }
            assertFalse(seen.last().dataAvailable)
            changeSource(adapter, "USB音乐")
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1))
            update(c, metadata("old"), playback())
            assertEquals("暂无媒体", seen.last().title)
            update(c, metadata("new", duration = 0L), playback(position = 0L))
            assertEquals("暂无媒体", seen.last().title)
            update(c, metadata("new"), playback(position = 0L))
            assertEquals("歌曲new", seen.last().title); assertTrue(seen.last().playing)
            changeSource(adapter, "网易云音乐")
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1))
            update(c, metadata("new"), playback(position = 900L))
            assertEquals("暂无媒体", seen.last().title)
            update(c, metadata("cloud-recording"), playback(position = 1200L))
            assertEquals("歌曲cloud-recording", seen.last().title)
            changeSource(adapter, null)
            assertFalse(seen.last().dataAvailable)
        } finally { adapter.stop() }
    }

    @Test fun firstReadbackCanRecoverAlreadyPlayingSharedProxyOnlyAfterRealPositionAdvancement() {
        val c = controller("com.tencent.wecarflow")
        shadowOf(c).setMetadata(metadata("already-playing")); shadowOf(c).setPlaybackState(playback(position = 1000L)); add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; changeSource(adapter, "网易云音乐")
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(500))
            val samePosition = playback(position = 1000L)
            shadowOf(c).setPlaybackState(samePosition)
            shadowOf(c).callbacks.toList().forEach { it.onPlaybackStateChanged(samePosition) }
            assertEquals("暂无媒体", seen.last().title)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(500))
            val advancing = playback(position = 1500L)
            shadowOf(c).setPlaybackState(advancing)
            shadowOf(c).callbacks.toList().forEach { it.onPlaybackStateChanged(advancing) }
            assertEquals("歌曲already-playing", seen.last().title)
            changeSource(adapter, "USB音乐")
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(500))
            val previousSourceStillAdvances = playback(position = 2000L)
            shadowOf(c).setPlaybackState(previousSourceStillAdvances)
            shadowOf(c).callbacks.toList().forEach { it.onPlaybackStateChanged(previousSourceStillAdvances) }
            assertEquals("暂无媒体", seen.last().title)
        } finally { adapter.stop() }
    }

    @Test fun precisePublicCloudBrowserSessionAllowsSamePackageMetadataAndDoesNotClaimUsb() {
        val c = controller("com.tencent.wecarflow")
        shadowOf(c).setMetadata(metadata("cloud")); shadowOf(c).setPlaybackState(playback())
        val service = ServiceInfo().apply {
            packageName = "com.tencent.wecarflow"; name = "com.mengbo.multimedia.cloudmusic.service.CloudMusicService"
            enabled = true; exported = true
            applicationInfo = ApplicationInfo().apply { packageName = "com.tencent.wecarflow"; enabled = true }
        }
        shadowOf(app.packageManager).addResolveInfoForIntent(Intent(ContentPublicMediaBrowsers.ACTION), ResolveInfo().apply { serviceInfo = service })
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        var callback: ContentPublicMediaBrowsers.Callback? = null
        val browsers = ContentPublicMediaBrowsers(app, Handler(Looper.getMainLooper()),
            ContentPublicMediaBrowsers.Listener { reconcile(adapter) },
            ContentPublicMediaBrowsers.ClientFactory { _, _, cb ->
                callback = cb
                object : ContentPublicMediaBrowsers.Client { override fun connect() {}; override fun disconnect() {} }
            })
        try {
            adapter.start { seen += it }
            val field = ContentMediaAdapter::class.java.getDeclaredField("browsers").apply { isAccessible = true }
            (field.get(adapter) as ContentPublicMediaBrowsers).close()
            field.set(adapter, browsers)
            changeSource(adapter, "网易云音乐")
            browsers.refresh(setOf("com.tencent.wecarflow"))
            callback!!.onConnected(c)
            assertEquals("歌曲cloud", seen.last().title); assertEquals("网易云音乐", seen.last().source)
            changeSource(adapter, "USB音乐")
            assertEquals("暂无媒体", seen.last().title); assertNull(seen.last().artwork)
        } finally { adapter.stop() }
    }

    @Test fun stoppedCallbackCannotPublishIntoANewLifecycle() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setMetadata(metadata("old")); shadowOf(c).setPlaybackState(playback()); add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        adapter.start { seen += it }
        val oldCallback = shadowOf(c).callbacks.single()
        adapter.stop()
        try {
            adapter.start { seen += it }
            val count = seen.size
            oldCallback.onMetadataChanged(metadata("late"))
            oldCallback.onPlaybackStateChanged(playback())
            assertEquals(count, seen.size)
        } finally { adapter.stop() }
    }
}
