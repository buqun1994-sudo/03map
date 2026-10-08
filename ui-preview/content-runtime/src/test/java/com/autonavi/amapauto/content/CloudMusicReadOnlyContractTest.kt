package com.autonavi.amapauto.content

import android.content.ComponentName
import android.content.Context
import android.content.ContextWrapper
import android.content.ServiceConnection
import android.graphics.Bitmap
import android.media.MediaMetadata
import android.media.session.MediaController
import android.media.session.MediaSession
import android.media.session.MediaSessionManager
import android.media.session.PlaybackState
import android.os.Binder
import android.os.IBinder
import android.os.Looper
import android.os.Parcel
import android.os.RemoteException
import android.os.SystemClock
import com.icar03.content.model.ContentMediaControlPolicy
import com.icar03.content.runtime.media.ContentMediaSourcePolicy
import java.util.ArrayDeque
import java.util.concurrent.Executor
import java.util.concurrent.atomic.AtomicReference
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import org.robolectric.RobolectricTestRunner

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class CloudMusicReadOnlyContractTest {
    private val app get() = RuntimeEnvironment.getApplication()

    @Test
    fun `cloud music capability is read only and pure rule rejects missing source`() {
        val cloud = ContentMediaSourcePolicy.capabilitiesForSource("网易云音乐")
        val unknown = ContentMediaSourcePolicy.capabilitiesForSource(null)
        val cloudComponent = ComponentName(
            "com.tencent.wecarflow",
            "com.mychery.cloudmusic.service.CloudMusicService",
        )

        assertEquals("网易云音乐", ContentMediaSourcePolicy.sourceForComponent(cloudComponent))
        assertFalse(ContentMediaControlPolicy.acceptsCommands(null))
        assertFalse(ContentMediaControlPolicy.acceptsCommands("网易云音乐"))
        assertFalse(cloud.playbackAvailable)
        assertFalse(cloud.nextAvailable)
        assertFalse(unknown.playbackAvailable)
        assertFalse(unknown.nextAvailable)
        assertTrue(ContentMediaControlPolicy.acceptsCommands("蓝牙音乐"))
    }

    @Test
    fun `confirmed cloud session keeps public facts while sending zero transport commands`() {
        val sourceContext = SourceContext(app)
        val worker = ManualWorker()
        val sourceReads = SourceReads()
        val adapter = ContentMediaAdapter(sourceContext, sourceReads, worker)
        val session = MediaSession(app, "cloud-read-only-contract")
        val cover = Bitmap.createBitmap(24, 24, Bitmap.Config.ARGB_8888)
        val controlCalls = ControlCalls()
        session.setCallback(object : MediaSession.Callback() {
            override fun onPlay() { controlCalls.play++ }
            override fun onPause() { controlCalls.pause++ }
            override fun onSkipToNext() { controlCalls.next++ }
        })
        val firstTime = SystemClock.elapsedRealtime()
        val actions = PlaybackState.ACTION_PLAY or PlaybackState.ACTION_PAUSE or
            PlaybackState.ACTION_PLAY_PAUSE or PlaybackState.ACTION_SKIP_TO_NEXT
        val initialPlayback = PlaybackState.Builder()
            .setState(PlaybackState.STATE_PLAYING, 10_000L, 1f, firstTime)
            .setActions(actions)
            .build()
        val cloudMetadata = MediaMetadata.Builder()
            .putString(MediaMetadata.METADATA_KEY_MEDIA_ID, "cloud-track-42")
            .putString(MediaMetadata.METADATA_KEY_TITLE, "网易云歌曲")
            .putString(MediaMetadata.METADATA_KEY_ARTIST, "网易云歌手")
            .putString(MediaMetadata.METADATA_KEY_ALBUM, "网易云专辑")
            .putLong(MediaMetadata.METADATA_KEY_DURATION, 180_000L)
            .putString(MediaMetadata.METADATA_KEY_DISPLAY_DESCRIPTION,
                "[00:00.00]第一句歌词\n[00:01.00]第二句歌词")
            .putBitmap(MediaMetadata.METADATA_KEY_ART, cover)
            .build()
        session.setMetadata(cloudMetadata)
        session.setPlaybackState(initialPlayback)
        session.isActive = true
        val controller = MediaController(app, session.sessionToken)
        shadowOf(controller).setPackageName("com.tencent.wecarflow")
        shadowOf(app.getSystemService(Context.MEDIA_SESSION_SERVICE) as MediaSessionManager)
            .addController(controller)
        try {
            adapter.start { sourceReads.snapshots += it }
            settle(worker)
            val binder = CloudMusicSourceBinder()
            assertNotNull(sourceContext.connection)
            sourceContext.connection!!.onServiceConnected(SOURCE_COMPONENT, binder)
            settle(worker)
            assertTrue("source readback must cross the Binder", binder.statusReads > 0)

            // Source readback quarantines the previous recording. A fresh metadata callback is
            // required before the proxy session can be correlated with the confirmed source.
            shadowOf(controller).callbacks.toList().forEach { it.onMetadataChanged(cloudMetadata) }
            settle(worker)

            // The proxy session is retained only after a fresh post-readback position
            // callback, just as the real shared vehicle media session behaves.
            Thread.sleep(5L)
            val refreshed = PlaybackState.Builder()
                .setState(PlaybackState.STATE_PLAYING, 11_000L, 1f, SystemClock.elapsedRealtime())
                .setActions(actions)
                .build()
            shadowOf(controller).setPlaybackState(refreshed)
            shadowOf(controller).callbacks.toList().forEach { it.onPlaybackStateChanged(refreshed) }
            settle(worker)

            val snapshot = sourceReads.snapshots.lastOrNull { it.source == "网易云音乐" }
            assertNotNull(snapshot)
            assertEquals("cloud-track-42", snapshot!!.mediaId)
            assertEquals("网易云歌曲", snapshot.title)
            assertEquals("网易云歌手", snapshot.artist)
            assertEquals("[00:00.00]第一句歌词\n[00:01.00]第二句歌词", snapshot.embeddedLyrics)
            assertEquals(180_000L, snapshot.durationMs)
            assertEquals(11_000L, snapshot.positionMs)
            assertSame(cover, snapshot.artwork)
            assertTrue(snapshot.playing)
            assertFalse(snapshot.playbackAvailable)
            assertFalse(snapshot.nextAvailable)

            assertFalse(adapter.requestPlayback(false))
            assertFalse(adapter.requestPlayback(true))
            assertFalse(adapter.requestNext())
            assertEquals(0, controlCalls.play)
            assertEquals(0, controlCalls.pause)
            assertEquals(0, controlCalls.next)
        } finally {
            adapter.stop()
            settle(worker)
            session.release()
        }
    }

    private fun settle(worker: ManualWorker) {
        repeat(80) {
            shadowOf(Looper.getMainLooper()).idle()
            val task = worker.take() ?: return
            worker.run(task)
        }
        error("media adapter worker/main admission did not settle")
    }

    private class ControlCalls {
        var play = 0
        var pause = 0
        var next = 0
    }

    private class SourceContext(base: Context) : ContextWrapper(base) {
        var connection: ServiceConnection? = null
        override fun getApplicationContext(): Context = this
        override fun bindService(intent: android.content.Intent, connection: ServiceConnection, flags: Int): Boolean {
            this.connection = connection
            return true
        }
        override fun unbindService(connection: ServiceConnection) = Unit
        override fun startService(intent: android.content.Intent): ComponentName? = intent.component
    }

    private class SourceReads : ContentMediaAdapter.ExternalReads() {
        val snapshots = mutableListOf<ContentPorts.MediaSnapshot>()
        override fun sourceEndpoint(context: Context): ContentMediaAdapter.SourceEndpoint =
            ContentMediaAdapter.SourceEndpoint(SOURCE_COMPONENT, true)
        override fun sourceWriteAvailable(context: Context): Boolean = true
        override fun sourceStatus(service: IBinder, legacy: Boolean): Int? = super.sourceStatus(service, legacy)
    }

    private class ManualWorker : Executor {
        private val tasks = ArrayDeque<Runnable>()
        override fun execute(command: Runnable) = synchronized(tasks) { tasks.addLast(command) }
        fun take(): Runnable? = synchronized(tasks) { tasks.pollFirst() }
        fun run(task: Runnable) {
            val failure = AtomicReference<Throwable?>()
            val thread = Thread({
                try { task.run() } catch (error: Throwable) { failure.set(error) }
            }, "cloud-read-only-contract-worker")
            thread.start()
            thread.join(2_000L)
            assertFalse("media worker blocked", thread.isAlive)
            failure.get()?.let { throw it }
        }
    }

    private class CloudMusicSourceBinder : Binder() {
        var callback: IBinder? = null
        var statusReads = 0

        init { attachInterface(null, SOURCE_DESCRIPTOR) }

        @Throws(RemoteException::class)
        override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
            if (code !in listOf(1, 2, 6)) return super.onTransact(code, data, reply, flags)
            data.enforceInterface(SOURCE_DESCRIPTOR)
            when (code) {
                1 -> callback = data.readStrongBinder()
                2 -> callback = null
                6 -> {
                    statusReads++
                    reply?.writeNoException()
                    reply?.writeInt(14) // IMB readback code for 网易云音乐.
                    return true
                }
            }
            reply?.writeNoException()
            return true
        }
    }

    companion object {
        private val SOURCE_COMPONENT = ComponentName(
            "com.tencent.wecarflow",
            "com.mengbo.service.MediaCenterPlayService",
        )
        private const val SOURCE_DESCRIPTOR = "com.mengbo.mediaservice.IPlayControlsInterface"
    }
}
