package com.icar03.content.runtime

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.pm.ApplicationInfo
import android.content.pm.ResolveInfo
import android.content.pm.ServiceInfo
import android.graphics.Bitmap
import android.media.MediaMetadata
import android.media.AudioAttributes
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
        return MediaController(app, session.sessionToken).also {
            shadowOf(it).setPackageName(packageName)
            setAudio(it, AudioAttributes.USAGE_MEDIA, AudioAttributes.CONTENT_TYPE_MUSIC)
        }
    }
    private fun setAudio(controller: MediaController, usage: Int, contentType: Int): MediaController.PlaybackInfo {
        val info = org.robolectric.util.ReflectionHelpers.newInstance(MediaController.PlaybackInfo::class.java)
        org.robolectric.util.ReflectionHelpers.setField(info, "mAudioAttrs",
            AudioAttributes.Builder().setUsage(usage).setContentType(contentType).build())
        shadowOf(controller).setPlaybackInfo(info)
        return info
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
        ContentMediaAdapterTestSupport.drainSource(adapter)
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
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
            val last = seen.last()
            assertEquals("公开显示标题", last.title); assertEquals("公开显示歌手", last.artist)
            assertEquals("public-id", last.mediaId); assertEquals("专辑", last.album)
            assertEquals(180_000L, last.durationMs); assertEquals(100L, last.positionMs)
            assertEquals(requireNotNull(c.playbackState).lastPositionUpdateTime, last.positionElapsedRealtimeMs)
            assertEquals(1.25f, last.playbackSpeed, 0f); assertEquals(lyrics, last.embeddedLyrics)
            assertTrue(last.playing); assertFalse(last.playbackAvailable); assertSame(cover, last.artwork)
        } finally { adapter.stop() }
        assertFalse(cover.isRecycled)
    }

    @Test fun lookalikePackageNamesCannotClaimAMediaSourceWithoutExactComponentOrActualReadback() {
        listOf("example.netease.player", "example.cloudmusic.player", "example.btmusic", "example.usb.player").forEach { pkg ->
            val c = controller(pkg)
            shadowOf(c).setMetadata(metadata(pkg)); shadowOf(c).setPlaybackState(playback())
            add(c)
        }
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
            assertFalse(seen.last().dataAvailable)
            assertEquals("暂无媒体", seen.last().title)
            assertFalse(adapter.requestPlayback(true)); assertFalse(adapter.requestNext())
        } finally { adapter.stop() }
    }

    @Test fun unknownPositionAndDurationRemainUnknownInsteadOfBecomingZeroEvidence() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setMetadata(metadata("unknown", duration = 0L))
        shadowOf(c).setPlaybackState(playback(position = PlaybackState.PLAYBACK_POSITION_UNKNOWN, updated = 0L)); add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
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
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter); assertSame(cover, seen.last().artwork)
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
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
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
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter); changeSource(adapter, "网易云音乐")
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
            packageName = "com.tencent.wecarflow"; name = "com.mychery.cloudmusic.service.CloudMusicService"
            enabled = true; exported = true
            applicationInfo = ApplicationInfo().apply { packageName = "com.tencent.wecarflow"; enabled = true }
        }
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        var callback: ContentPublicMediaBrowsers.Callback? = null
        val browsers = ContentPublicMediaBrowsers(app, Handler(Looper.getMainLooper()),
            ContentPublicMediaBrowsers.Listener { reconcile(adapter) },
            ContentPublicMediaBrowsers.ClientFactory { _, _, cb ->
                callback = cb
                object : ContentPublicMediaBrowsers.Client { override fun connect() {}; override fun disconnect() {} }
            }, java.util.concurrent.Executor { it.run() })
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
            val field = ContentMediaAdapter::class.java.getDeclaredField("browsers").apply { isAccessible = true }
            (field.get(adapter) as ContentPublicMediaBrowsers).close()
            field.set(adapter, browsers)
            shadowOf(app.packageManager).addResolveInfoForIntent(Intent(ContentPublicMediaBrowsers.ACTION), ResolveInfo().apply { serviceInfo = service })
            changeSource(adapter, "网易云音乐")
            browsers.refresh(setOf("com.tencent.wecarflow"))
            shadowOf(Looper.getMainLooper()).idle()
            callback!!.onConnected(c)
            ContentMediaAdapterTestSupport.drainSource(adapter)
            assertEquals("歌曲cloud", seen.last().title); assertEquals("网易云音乐", seen.last().source)
            changeSource(adapter, "USB音乐")
            assertEquals("暂无媒体", seen.last().title); assertNull(seen.last().artwork)
        } finally { adapter.stop() }
    }

    @Test fun pausedAndBufferingSongKeepIdentityAndMetadataGapExpiresOrRecoversInPlace() {
        val c = controller("com.android.bluetooth")
        val paused = PlaybackState.Builder().setState(PlaybackState.STATE_PAUSED, 100L, 0f).build()
        shadowOf(c).setMetadata(metadata("A")); shadowOf(c).setPlaybackState(paused); add(c)
        val adapter = ContentMediaAdapter(app); val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
            assertEquals(ContentPorts.MediaSongIdentity.SONG, seen.last().songIdentity)
            assertFalse(seen.last().playing)
            val buffering = PlaybackState.Builder().setState(PlaybackState.STATE_BUFFERING, 100L, 0f).build()
            update(c, metadata("A"), buffering)
            assertEquals(ContentPorts.MediaSongIdentity.SONG, seen.last().songIdentity)
            update(c, MediaMetadata.Builder().build(), buffering)
            assertEquals(ContentPorts.MediaSongIdentity.SONG, seen.last().songIdentity)
            assertFalse(seen.last().hasSongMetadata())
            assertNull(seen.last().artwork)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1000))
            update(c, metadata("B"), paused)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1000))
            assertEquals(ContentPorts.MediaSongIdentity.SONG, seen.last().songIdentity)
            assertEquals("歌曲B", seen.last().title)
            update(c, MediaMetadata.Builder().build(), paused)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1499))
            assertEquals(ContentPorts.MediaSongIdentity.SONG, seen.last().songIdentity)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(2))
            assertEquals(ContentPorts.MediaSongIdentity.UNKNOWN, seen.last().songIdentity)
        } finally { adapter.stop() }
    }

    @Test fun audioInfoChangesImmediatelyWithdrawSongDespiteUnchangedCoverAndTitle() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setMetadata(metadata("same")); shadowOf(c).setPlaybackState(playback()); add(c)
        val adapter = ContentMediaAdapter(app); val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
            assertEquals(ContentPorts.MediaSongIdentity.SONG, seen.last().songIdentity)
            for ((usage, kind) in listOf(AudioAttributes.USAGE_ASSISTANCE_NAVIGATION_GUIDANCE to AudioAttributes.CONTENT_TYPE_UNKNOWN,
                AudioAttributes.USAGE_MEDIA to AudioAttributes.CONTENT_TYPE_SPEECH,
                AudioAttributes.USAGE_MEDIA to AudioAttributes.CONTENT_TYPE_MOVIE)) {
                val info = setAudio(c, usage, kind)
                shadowOf(c).callbacks.toList().forEach { it.onAudioInfoChanged(info) }
                assertEquals(ContentPorts.MediaSongIdentity.NON_SONG, seen.last().songIdentity)
                assertFalse(seen.last().hasSongMetadata())
            }
        } finally { adapter.stop() }
    }

    @Test fun activeNonSongCannotResurrectAnotherPausedSong() {
        val song = controller("com.android.bluetooth")
        shadowOf(song).setMetadata(metadata("old-song"))
        shadowOf(song).setPlaybackState(PlaybackState.Builder().setState(PlaybackState.STATE_PAUSED, 100L, 0f).build()); add(song)
        val adapter = ContentMediaAdapter(app); val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
            assertEquals(ContentPorts.MediaSongIdentity.SONG, seen.last().songIdentity)
            val movie = controller("com.android.bluetooth")
            setAudio(movie, AudioAttributes.USAGE_MEDIA, AudioAttributes.CONTENT_TYPE_MOVIE)
            shadowOf(movie).setMetadata(metadata("movie")); shadowOf(movie).setPlaybackState(playback()); add(movie)
            reconcile(adapter)
            assertEquals(ContentPorts.MediaSongIdentity.NON_SONG, seen.last().songIdentity)
            assertEquals("movie", seen.last().mediaId)
        } finally { adapter.stop() }
    }

    @Test fun absentAudioAttributesUseTheSameTitleAndTransportEvidenceAsLyrics() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setPlaybackInfo(null)
        shadowOf(c).setMetadata(metadata("fallback"))
        shadowOf(c).setPlaybackState(playback(actions = PlaybackState.ACTION_PLAY_PAUSE)); add(c)
        val adapter = ContentMediaAdapter(app); val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
            assertEquals(ContentPorts.MediaSongIdentity.SONG, seen.last().songIdentity)
            update(c, metadata("fallback"), playback())
            assertEquals(ContentPorts.MediaSongIdentity.UNKNOWN, seen.last().songIdentity)
        } finally { adapter.stop() }
    }

    @Test fun actualAvrcpProgressIsBoundToBluetoothWithoutInventingControllerPosition() {
        val c = controller("com.android.bluetooth")
        val zero = PlaybackState.Builder().setState(PlaybackState.STATE_PLAYING, 0L, 0f, 0L).build()
        shadowOf(c).setMetadata(metadata("A")); shadowOf(c).setPlaybackState(zero); add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
        try {
            assertEquals("蓝牙音乐", seen.last().source)
            assertEquals(0L, seen.last().avrcpEventSequence)
            sendAvrcp(Intent(AVRCP_PLAY_STATUS).putExtra(SONG_POS, 30_000L)
                .putExtra(SONG_LEN, 180_000L).putExtra(RAW_STATUS, 1.toByte()))
            val actual = seen.last()
            assertTrue(actual.avrcpEventSequence > 0L)
            assertEquals(30_000L, actual.avrcpPositionMs)
            assertEquals(PlaybackState.STATE_PLAYING, actual.avrcpPlaybackState)
            assertEquals(0L, actual.positionMs)
            assertEquals(0L, actual.positionElapsedRealtimeMs)
            assertEquals(0f, actual.playbackSpeed, 0f)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(1))
            reconcile(adapter)
            assertEquals(actual.avrcpEventSequence, seen.last().avrcpEventSequence)
            assertEquals(actual.avrcpElapsedRealtimeMs, seen.last().avrcpElapsedRealtimeMs)
            sendAvrcp(Intent(AVRCP_STATUS).putExtra(RAW_STATUS, 2.toByte()))
            assertFalse(seen.last().playing)
            assertEquals(-1L, seen.last().avrcpPositionMs)
            assertEquals(PlaybackState.STATE_PLAYING, seen.last().playbackState)
            assertEquals(PlaybackState.STATE_PAUSED, seen.last().avrcpPlaybackState)
            sendAvrcp(Intent(AVRCP_STATUS).putExtra(RAW_STATUS, 1.toByte()))
            assertTrue(seen.last().playing)
            val paused = PlaybackState.Builder().setState(PlaybackState.STATE_PAUSED, 0L, 0f).build()
            shadowOf(c).setPlaybackState(paused)
            shadowOf(c).callbacks.forEach { it.onPlaybackStateChanged(paused) }
            assertFalse(seen.last().playing)
            assertEquals(-1, seen.last().avrcpPlaybackState)
            assertEquals(PlaybackState.STATE_PAUSED, seen.last().playbackState)
            val buffering = PlaybackState.Builder().setState(PlaybackState.STATE_BUFFERING, 0L, 0f).build()
            shadowOf(c).setPlaybackState(buffering)
            shadowOf(c).callbacks.forEach { it.onPlaybackStateChanged(buffering) }
            assertFalse(seen.last().playing)
            assertEquals(PlaybackState.STATE_BUFFERING, seen.last().playbackState)
        } finally { adapter.stop() }
    }

    @Test fun fullPlayStatusAndTrackParcelableUseAndroidStateWithoutSourceBinder() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setMetadata(metadata("A"))
        shadowOf(c).setPlaybackState(PlaybackState.Builder().setState(PlaybackState.STATE_PAUSED, 0L, 0f, 0L).build())
        add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
        try {
            assertEquals("蓝牙音乐", seen.last().source)
            sendAvrcp(Intent(AVRCP_PLAY_STATUS).putExtra(SONG_POS, 90_000L)
                .putExtra(SONG_LEN, 180_000L).putExtra(PROFILE_PLAYBACK, PlaybackState.STATE_PLAYING))
            assertTrue(seen.last().playing)
            assertEquals(PlaybackState.STATE_PLAYING, seen.last().avrcpPlaybackState)
            assertEquals(90_000L, seen.last().avrcpPositionMs)
            assertEquals(0L, seen.last().positionMs)
            sendAvrcp(Intent(AVRCP_PLAY_STATUS).putExtra(SONG_POS, 91_000L)
                .putExtra(PROFILE_PLAYBACK, PlaybackState.Builder().setState(PlaybackState.STATE_PAUSED, 5L, 0f).build()))
            assertFalse(seen.last().playing)
            assertEquals(91_000L, seen.last().avrcpPositionMs)
            assertEquals(PlaybackState.STATE_PAUSED, seen.last().avrcpPlaybackState)
            sendAvrcp(Intent(AVRCP_TRACK).putExtra(PROFILE_PLAYBACK,
                PlaybackState.Builder().setState(PlaybackState.STATE_PLAYING, 15_000L, 1f).build()))
            assertTrue(seen.last().playing)
            assertEquals(15_000L, seen.last().avrcpPositionMs)
            sendAvrcp(Intent(AVRCP_POSITION).putExtra(PROFILE_POS, 16_000L)
                .putExtra(PROFILE_PLAYBACK, PlaybackState.STATE_STOPPED))
            assertTrue(seen.last().playing)
            assertEquals(16_000L, seen.last().avrcpPositionMs)
            assertEquals(PlaybackState.STATE_PLAYING, seen.last().avrcpPlaybackState)
        } finally { adapter.stop() }
    }

    @Test fun trackParcelablePreservesSampleTimeWhilePositionOnlyAndConflictingFieldsUseReceipt() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setMetadata(metadata("A"))
        shadowOf(c).setPlaybackState(PlaybackState.Builder().setState(PlaybackState.STATE_PLAYING, 0L, 0f, 0L).build())
        add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
        try {
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(500))
            val sampleAt = SystemClock.elapsedRealtime() - 100
            val sample = PlaybackState.Builder().setState(PlaybackState.STATE_PLAYING, 15_000L, 1f, sampleAt).build()
            sendAvrcp(Intent(AVRCP_TRACK).putExtra(PROFILE_PLAYBACK, sample))
            assertEquals(sampleAt, seen.last().avrcpPositionElapsedRealtimeMs)
            assertEquals(SystemClock.elapsedRealtime(), seen.last().avrcpElapsedRealtimeMs)
            val sequence = seen.last().avrcpEventSequence
            sendAvrcp(Intent(AVRCP_POSITION).putExtra(PROFILE_POS, 15_000L))
            assertTrue(seen.last().avrcpEventSequence > sequence)
            assertEquals(seen.last().avrcpElapsedRealtimeMs, seen.last().avrcpPositionElapsedRealtimeMs)
            sendAvrcp(Intent(AVRCP_PLAY_STATUS).putExtra(SONG_POS, 20_000L).putExtra(PROFILE_PLAYBACK, sample))
            assertEquals(20_000L, seen.last().avrcpPositionMs)
            assertEquals(seen.last().avrcpElapsedRealtimeMs, seen.last().avrcpPositionElapsedRealtimeMs)
        } finally { adapter.stop() }
    }

    @Test fun expiredAndFutureParcelablePositionsRetainTheirTimeWithoutDiscardingPauseEvents() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setMetadata(metadata("A"))
        shadowOf(c).setPlaybackState(PlaybackState.Builder().setState(PlaybackState.STATE_PLAYING, 0L, 0f, 0L).build())
        add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
        try {
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(2_000))
            val now = SystemClock.elapsedRealtime()
            for (sampleAt in listOf(now - 1_501, now + 1)) {
                val sample = PlaybackState.Builder().setState(PlaybackState.STATE_PAUSED, 15_000L, 0f, sampleAt).build()
                sendAvrcp(Intent(AVRCP_TRACK).putExtra(PROFILE_PLAYBACK, sample))
                assertEquals(sampleAt, seen.last().avrcpPositionElapsedRealtimeMs)
                assertEquals(now, seen.last().avrcpElapsedRealtimeMs)
                assertEquals(PlaybackState.STATE_PAUSED, seen.last().avrcpPlaybackState)
                assertFalse(seen.last().playing)
            }
        } finally { adapter.stop() }
    }

    @Test fun avrcpDecoderPreservesRealZeroAndRejectsMissingFractionalOrConflictingEvidence() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setMetadata(metadata("A")); shadowOf(c).setPlaybackState(playback(position = 0L)); add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
        try {
            changeSource(adapter, "蓝牙音乐")
            val count = seen.size
            sendAvrcp(Intent(AVRCP_PLAY_STATUS).putExtra(SONG_LEN, 180_000L))
            for (value in listOf(-1.0, 0.25, Double.NaN, Double.POSITIVE_INFINITY, 86_400_001.0, 4_294_967_295.0)) {
                sendAvrcp(Intent(AVRCP_STATUS).putExtra(SONG_POS, value))
            }
            sendAvrcp(Intent(AVRCP_STATUS).putExtra(SONG_POS, "30000"))
            sendAvrcp(Intent(AVRCP_PLAY_STATUS).putExtra(SONG_POS, 30_000L).putExtra(SONG_LEN, 200_000L))
            assertEquals(count, seen.size)
            sendAvrcp(Intent(AVRCP_POSITION).putExtra(PROFILE_POS, 0L))
            assertEquals(0L, seen.last().avrcpPositionMs)
            val first = seen.last().avrcpEventSequence
            sendAvrcp(Intent(AVRCP_POSITION_LEGACY).putExtra(LEGACY_POS, 500L))
            assertEquals(500L, seen.last().avrcpPositionMs)
            assertTrue(seen.last().avrcpEventSequence > first)
            sendAvrcp(Intent(AVRCP_TRACK).putExtra(PROFILE_PLAYBACK, PlaybackState.STATE_BUFFERING))
            assertEquals(PlaybackState.STATE_BUFFERING, seen.last().avrcpPlaybackState)
            assertEquals(-1L, seen.last().avrcpPositionMs)
            assertFalse(seen.last().playing)
            for ((raw, expected) in listOf(0 to PlaybackState.STATE_STOPPED,
                1 to PlaybackState.STATE_PLAYING, 2 to PlaybackState.STATE_PAUSED,
                3 to PlaybackState.STATE_FAST_FORWARDING, 4 to PlaybackState.STATE_REWINDING)) {
                sendAvrcp(Intent(AVRCP_STATUS).putExtra(RAW_STATUS, raw.toByte()))
                assertEquals(expected, seen.last().avrcpPlaybackState)
            }
        } finally { adapter.stop() }
    }

    @Test fun avrcpEvidenceIsClearedByRecordingSourceAndControllerChanges() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setMetadata(metadata("A")); shadowOf(c).setPlaybackState(playback(position = 0L)); add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
        try {
            changeSource(adapter, "蓝牙音乐")
            sendAvrcp(Intent(AVRCP_STATUS).putExtra(SONG_POS, 30_000L))
            val first = seen.last().avrcpEventSequence
            update(c, metadata("B"), playback(position = 0L))
            assertEquals(0L, seen.last().avrcpEventSequence)
            assertEquals(-1L, seen.last().avrcpPositionMs)
            sendAvrcp(Intent(AVRCP_STATUS).putExtra(SONG_POS, 0L))
            assertTrue(seen.last().avrcpEventSequence > first)
            changeSource(adapter, "网易云音乐")
            assertEquals(0L, seen.last().avrcpEventSequence)
            val count = seen.size
            sendAvrcp(Intent(AVRCP_STATUS).putExtra(SONG_POS, 45_000L))
            assertEquals(count, seen.size)
            changeSource(adapter, "蓝牙音乐")
            assertEquals(0L, seen.last().avrcpEventSequence)
            sendAvrcp(Intent(AVRCP_STATUS).putExtra(SONG_POS, 20_000L))
            val replacement = controller("com.android.bluetooth")
            shadowOf(replacement).setMetadata(metadata("B"))
            shadowOf(replacement).setPlaybackState(playback(position = 0L))
            val epoch = ContentMediaAdapter::class.java.getDeclaredField("lifecycle").apply { isAccessible = true }.getLong(adapter)
            ContentMediaAdapter::class.java.getDeclaredMethod("updateController", List::class.java, java.lang.Long.TYPE)
                .apply { isAccessible = true }.invoke(adapter, listOf(replacement), epoch)
            assertEquals(0L, seen.last().avrcpEventSequence)
        } finally { adapter.stop() }
    }

    @Test fun avrcpBroadcastFlowsThroughTheFormalStoreAndTickerWithoutNewControllerPositions() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setMetadata(metadata("A"))
        shadowOf(c).setPlaybackState(PlaybackState.Builder().setState(PlaybackState.STATE_PLAYING, 0L, 0f, 0L).build())
        add(c)
        val adapter = ContentMediaAdapter(app)
        val store = com.autonavi.amapauto.content.ContentStore(app, ContentPorts.PreviewVehiclePort(), adapter,
            object : ContentPorts.SystemPort {
                override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
                override fun write(kind: Int, percent: Int) = false
            })
        try {
            changeSource(adapter, "蓝牙音乐")
            store.startLyrics()
            val initial = store.snapshot()
            store.acceptLyricsSnapshot(ContentPorts.LyricsSnapshot(initial.mediaRecordingKey,
                initial.mediaGeneration, ContentPorts.LyricsSnapshot.READY,
                listOf(ContentPorts.LyricsLine(0L, "First", ""), ContentPorts.LyricsLine(1_000L, "Second", "")), null))
            assertFalse(store.snapshot().lyricsTimelineReady)
            assertEquals(-1, store.snapshot().lyricsActiveIndex)
            assertEquals(-1, store.snapshot().lyricsScrollIndex)
            sendAvrcp(Intent(AVRCP_PLAY_STATUS).putExtra(SONG_POS, 0L).putExtra(SONG_LEN, 180_000L)
                .putExtra(RAW_STATUS, 1.toByte()))
            assertTrue(store.snapshot().lyricsTimelineReady)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1_200L))
            assertEquals(1, store.snapshot().lyricsActiveIndex)
            assertEquals(1_000L, store.snapshot().lyricsPositionMs)
            assertEquals(1_200L, store.snapshot().lyricsAnchor.sampleAt(SystemClock.elapsedRealtime()))
            sendAvrcp(Intent(AVRCP_STATUS).putExtra(RAW_STATUS, 2.toByte()))
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(2))
            assertEquals(1_200L, store.snapshot().lyricsPositionMs)
            assertEquals(1_200L, store.snapshot().lyricsAnchor.sampleAt(SystemClock.elapsedRealtime()))
            assertEquals(0f, store.snapshot().lyricsPlaybackSpeed, 0f)
        } finally { store.destroy() }
    }

    @Test fun completeAvrcpDurationFillsOnlyTheBoundRecordingsMissingPublicDuration() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setMetadata(metadata("A", duration = 0L))
        shadowOf(c).setPlaybackState(playback(position = 0L)); add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
        try {
            changeSource(adapter, "蓝牙音乐")
            sendAvrcp(Intent(AVRCP_PLAY_STATUS).putExtra(SONG_POS, 30_000L).putExtra(SONG_LEN, 180_000L))
            assertEquals(180_000L, seen.last().durationMs)
            reconcile(adapter)
            assertEquals(180_000L, seen.last().durationMs)
            sendAvrcp(Intent(AVRCP_STATUS).putExtra(RAW_STATUS, 2.toByte()))
            assertEquals(180_000L, seen.last().durationMs)
            update(c, metadata("B", duration = 0L), playback(position = 0L))
            assertEquals(0L, seen.last().durationMs)
            assertEquals(0L, seen.last().avrcpEventSequence)
        } finally { adapter.stop() }
    }

    @Test fun avrcpNeverAttachesToANonSongBluetoothSession() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setMetadata(metadata("Call")); shadowOf(c).setPlaybackState(playback(position = 0L))
        setAudio(c, AudioAttributes.USAGE_VOICE_COMMUNICATION, AudioAttributes.CONTENT_TYPE_SPEECH)
        add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
        try {
            changeSource(adapter, "蓝牙音乐")
            val count = seen.size
            sendAvrcp(Intent(AVRCP_STATUS).putExtra(SONG_POS, 30_000L).putExtra(RAW_STATUS, 1.toByte()))
            assertEquals(count, seen.size)
            assertEquals(0L, seen.last().avrcpEventSequence)
        } finally { adapter.stop() }
    }

    @Test fun oldAvrcpReceiverCannotPublishAfterStopOrIntoANewLifecycle() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setMetadata(metadata("A")); shadowOf(c).setPlaybackState(playback(position = 0L)); add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
        changeSource(adapter, "蓝牙音乐")
        val old = ContentMediaAdapter::class.java.getDeclaredField("avrcpReceiver").apply { isAccessible = true }
            .get(adapter) as android.content.BroadcastReceiver
        val event = Intent(AVRCP_STATUS).putExtra(SONG_POS, 30_000L)
        adapter.stop()
        val stoppedCount = seen.size
        old.onReceive(app, event)
        assertEquals(stoppedCount, seen.size)
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
            changeSource(adapter, "蓝牙音乐")
            val count = seen.size
            old.onReceive(app, event)
            assertEquals(count, seen.size)
            assertEquals(0L, seen.last().avrcpEventSequence)
            sendAvrcp(event)
            assertTrue(seen.last().avrcpEventSequence > 0L)
        } finally { adapter.stop() }
    }

    private fun sendAvrcp(intent: Intent) {
        app.sendBroadcast(intent)
        shadowOf(Looper.getMainLooper()).idle()
    }

    private companion object {
        const val AVRCP_POSITION = "android.bluetooth.avrcp-controller.profile.action.PLAYBACK_POS_CHANGED"
        const val AVRCP_POSITION_LEGACY = "android.bluetooth.avrcp-controller.profile.action.PLAYBACK_POS_CHANGEDS"
        const val AVRCP_TRACK = "android.bluetooth.avrcp-controller.profile.action.TRACK_EVENT"
        const val AVRCP_PLAY_STATUS = "android.bluetooth.avrcp-controller.profile.action.PLAY_STATUS"
        const val AVRCP_STATUS = "android.bluetooth.avrcp-controller.profile.action.PLAYBACK_STATUS_CHANGED"
        const val PROFILE_POS = "android.bluetooth.avrcp-controller.profile.extra.SONG_POS"
        const val LEGACY_POS = "android.bluetooth.avrcp-controller.extra.PLAY_SONG_POS"
        const val SONG_POS = "android.bluetooth.avrcp-controller.extra.SONG_POS"
        const val SONG_LEN = "android.bluetooth.avrcp-controller.extra.SONG_LEN"
        const val RAW_STATUS = "android.bluetooth.avrcp-controller.extra.PLAY_STATUS_ID"
        const val PROFILE_PLAYBACK = "android.bluetooth.avrcp-controller.profile.extra.PLAYBACK"
    }

    @Test fun stoppedCallbackCannotPublishIntoANewLifecycle() {
        val c = controller("com.android.bluetooth")
        shadowOf(c).setMetadata(metadata("old")); shadowOf(c).setPlaybackState(playback()); add(c)
        val adapter = ContentMediaAdapter(app)
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
        val oldCallback = shadowOf(c).callbacks.single()
        adapter.stop()
        try {
            adapter.start { seen += it }; ContentMediaAdapterTestSupport.drainSource(adapter)
            val count = seen.size
            oldCallback.onMetadataChanged(metadata("late"))
            oldCallback.onPlaybackStateChanged(playback())
            assertEquals(count, seen.size)
        } finally { adapter.stop() }
    }
}
