package com.autonavi.amapauto.content

import android.content.ComponentName
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.ServiceConnection
import android.graphics.Bitmap
import android.media.AudioAttributes
import android.media.AudioManager
import android.media.MediaMetadata
import android.media.session.MediaController
import android.media.session.MediaSession
import android.media.session.MediaSessionManager
import android.media.session.PlaybackState
import android.os.Binder
import android.os.CancellationSignal
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.os.Parcel
import android.os.SystemClock
import java.time.Duration
import java.util.ArrayDeque
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executor
import java.util.concurrent.Future
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicReference
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import org.robolectric.annotation.LooperMode
import org.robolectric.util.ReflectionHelpers

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentMediaAdapterFactsTest {
    private val app get() = RuntimeEnvironment.getApplication()
    private fun metadata(id: String, bitmap: Bitmap? = null, uri: String? = null) = MediaMetadata.Builder()
        .putString(MediaMetadata.METADATA_KEY_MEDIA_ID, id)
        .putString(MediaMetadata.METADATA_KEY_TITLE, "song-$id")
        .putString(MediaMetadata.METADATA_KEY_ARTIST, "artist")
        .putString(MediaMetadata.METADATA_KEY_DISPLAY_DESCRIPTION, "[00:00.00]lyrics-$id\n[00:01.00]next-$id")
        .putLong(MediaMetadata.METADATA_KEY_DURATION, 180_000L)
        .apply { if (bitmap != null) putBitmap(MediaMetadata.METADATA_KEY_ART, bitmap)
            if (uri != null) putString(MediaMetadata.METADATA_KEY_ART_URI, uri) }.build()
    private fun playback(state: Int = PlaybackState.STATE_PLAYING, position: Long = 10_000L,
        time: Long = SystemClock.elapsedRealtime(), speed: Float = 1f) = PlaybackState.Builder()
        .setState(state, position, speed, time)
        .setActions(PlaybackState.ACTION_PLAY_PAUSE or PlaybackState.ACTION_SKIP_TO_NEXT).build()
    private fun audio(usage: Int = AudioAttributes.USAGE_MEDIA): MediaController.PlaybackInfo =
        ReflectionHelpers.newInstance(MediaController.PlaybackInfo::class.java).also {
            ReflectionHelpers.setField(it, "mAudioAttrs", AudioAttributes.Builder().setUsage(usage)
                .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC).build())
        }

    private class ManualWorker : Executor {
        private val queued = ArrayDeque<Runnable>()
        override fun execute(command: Runnable) { synchronized(queued) { queued.addLast(command) } }
        fun take(): Runnable? = synchronized(queued) { queued.pollFirst() }
        fun run(task: Runnable = requireNotNull(take())) {
            val failure = AtomicReference<Throwable>()
            val thread = Thread({ try { task.run() } catch (error: Throwable) { failure.set(error) } }, "media-test-worker")
            thread.start(); thread.join(2_000L)
            assertFalse("worker blocked", thread.isAlive)
            failure.get()?.let { throw it }
        }
    }

    private class SourceContext(base: Context) : ContextWrapper(base) {
        var connection: ServiceConnection? = null
        var binds = 0
        var unbinds = 0
        var command: Intent? = null
        override fun getApplicationContext(): Context = this
        override fun bindService(intent: Intent, connection: ServiceConnection, flags: Int): Boolean {
            this.connection = connection; binds++; return true
        }
        override fun unbindService(connection: ServiceConnection) { unbinds++ }
        override fun startService(intent: Intent): ComponentName { command = intent; return requireNotNull(intent.component) }
    }

    private inner class Reads : ContentMediaAdapter.ExternalReads() {
        lateinit var adapter: ContentMediaAdapter
        var metadataValue = metadata("initial")
        var playbackValue = playback()
        var audioValue: MediaController.PlaybackInfo? = audio()
        var mode = AudioManager.MODE_NORMAL
        var available = false
        var endpoint = false
        var metadataReads = 0
        var playbackReads = 0
        var audioReads = 0
        var modeReads = 0
        var capabilityReads = 0
        var beforeMetadata: (() -> Unit)? = null
        var decoder: (() -> Bitmap?)? = null
        private fun checkWorker() {
            assertFalse("external read under adapter monitor", Thread.holdsLock(adapter))
            assertNotEquals("external read on main", Looper.getMainLooper(), Looper.myLooper())
        }
        override fun metadata(controller: MediaController): MediaMetadata? {
            checkWorker(); metadataReads++; val captured = metadataValue; beforeMetadata?.invoke(); return captured
        }
        override fun playback(controller: MediaController): PlaybackState? { checkWorker(); playbackReads++; return playbackValue }
        override fun audioInfo(controller: MediaController): MediaController.PlaybackInfo? { checkWorker(); audioReads++; return audioValue }
        override fun audioMode(manager: AudioManager?): Int { checkWorker(); modeReads++; return mode }
        override fun sourceWriteAvailable(context: Context): Boolean { checkWorker(); capabilityReads++; return available }
        override fun sourceEndpoint(context: Context): ContentMediaAdapter.SourceEndpoint? {
            checkWorker(); return if (endpoint) ContentMediaAdapter.SourceEndpoint(COMPONENT, true) else null
        }
        override fun sourceStatus(service: IBinder, legacy: Boolean): Int? {
            checkWorker(); return super.sourceStatus(service, legacy)
        }
        override fun artwork(context: Context, uri: String, cancellation: CancellationSignal): Bitmap? {
            checkWorker(); return decoder?.invoke()
        }
        fun getterCounts() = listOf(metadataReads, playbackReads, audioReads)
    }

    private inner class Fixture(private val withController: Boolean = true, status: Boolean = false) : AutoCloseable {
        val context = SourceContext(app)
        val worker = ManualWorker()
        val reads = Reads().apply { endpoint = status }
        val adapter = ContentMediaAdapter(context, reads, worker)
        val session = MediaSession(app, "facts-test")
        val controller = MediaController(app, session.sessionToken).also {
            shadowOf(it).setPackageName("com.android.bluetooth")
            if (withController) shadowOf(app.getSystemService(Context.MEDIA_SESSION_SERVICE) as MediaSessionManager).addController(it)
        }
        val seen = mutableListOf<ContentPorts.MediaSnapshot>()
        var onSnapshot: ((ContentPorts.MediaSnapshot) -> Unit)? = null
        init { reads.adapter = adapter }
        fun start(settle: Boolean = true) {
            adapter.start {
                assertFalse("listener inherited adapter monitor", Thread.holdsLock(adapter))
                assertEquals(Looper.getMainLooper(), Looper.myLooper())
                // A concurrent thread must acquire the same monitor while this listener is running.
                val entered = CountDownLatch(1)
                val thread = Thread { synchronized(adapter) { adapter.isSourceAvailable; entered.countDown() } }
                thread.start()
                assertTrue("listener deadlocks concurrent adapter access", entered.await(1L, TimeUnit.SECONDS))
                thread.join(1_000L)
                seen += it
                onSnapshot?.invoke(it)
            }
            if (settle) {
                settle()
                if (withController && !adapter.isAvailable) {
                    shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1_500L))
                    settle()
                }
            }
        }
        fun settle() {
            repeat(40) {
                shadowOf(Looper.getMainLooper()).idle()
                val task = worker.take() ?: return
                worker.run(task)
            }
            fail("worker/main admission did not quiesce")
        }
        fun callback(): MediaController.Callback = shadowOf(controller).callbacks.single()
        fun connect(service: SourceBinder) {
            requireNotNull(context.connection).onServiceConnected(COMPONENT, service); settle()
        }
        override fun close() { adapter.stop(); settle(); session.release() }
    }

    private class SourceBinder(var raw: Int) : Binder() {
        var callback: IBinder? = null
        var reads = 0
        var reject = false
        var beforeRead: (() -> Unit)? = null
        init { attachInterface(null, SOURCE_DESCRIPTOR) }
        override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
            if (code !in listOf(1, 2, 6)) return super.onTransact(code, data, reply, flags)
            data.enforceInterface(SOURCE_DESCRIPTOR)
            if (code == 6) {
                val captured = raw; reads++; beforeRead?.invoke()
                if (reject) return false
                requireNotNull(reply).writeNoException(); reply.writeInt(captured)
            } else {
                callback = if (code == 1) data.readStrongBinder() else null
                reply?.writeNoException()
            }
            return true
        }
        fun changed(target: IBinder = requireNotNull(callback)) {
            val data = Parcel.obtain(); val reply = Parcel.obtain()
            try {
                data.writeInterfaceToken(CALLBACK_DESCRIPTOR); data.writeInt(0)
                assertTrue(target.transact(2, data, reply, 0)); reply.readException()
            } finally { data.recycle(); reply.recycle() }
        }
    }

    @Test fun callbackArgumentsBecomeTruthWhileEveryGetterStillReturnsOldValues() {
        Fixture().use { f ->
            f.start(); val counts = f.reads.getterCounts()
            f.callback().onMetadataChanged(metadata("argument"))
            val pause = playback(PlaybackState.STATE_PAUSED, 12_345L, speed = 0f)
            f.callback().onPlaybackStateChanged(pause)
            f.callback().onAudioInfoChanged(audio(AudioAttributes.USAGE_ASSISTANCE_NAVIGATION_GUIDANCE))
            assertEquals("argument", f.seen.last().mediaId)
            assertEquals("[00:00.00]lyrics-argument\n[00:01.00]next-argument", f.seen.last().embeddedLyrics)
            assertEquals(12_345L, f.seen.last().positionMs)
            assertFalse(f.seen.last().playing)
            assertEquals(ContentPorts.MediaSongIdentity.NON_SONG, f.seen.last().songIdentity)
            f.settle()
            assertEquals(counts, f.reads.getterCounts())
            assertEquals("argument", f.seen.last().mediaId)
        }
    }

    @Test fun bootstrapPullCannotOverwriteCallbacksOrAnExplicitNullReceivedWhileItIsInFlight() {
        Fixture().use { f ->
            val entered = CountDownLatch(1); val release = CountDownLatch(1)
            val failure = AtomicReference<Throwable>()
            f.start(settle = false)
            fun beginBootstrapRead(): Thread {
                repeat(40) {
                    shadowOf(Looper.getMainLooper()).idle()
                    val task = requireNotNull(f.worker.take()) { "bootstrap metadata read was not queued" }
                    val completedOrEntered = CountDownLatch(1)
                    f.reads.beforeMetadata = {
                        entered.countDown(); completedOrEntered.countDown()
                        assertTrue(release.await(2L, TimeUnit.SECONDS))
                    }
                    val candidate = Thread({
                        try { task.run() } catch (error: Throwable) { failure.set(error) }
                        finally { completedOrEntered.countDown() }
                    }, "media-test-bootstrap")
                    candidate.start()
                    assertTrue("worker neither completed nor entered metadata read",
                        completedOrEntered.await(1L, TimeUnit.SECONDS))
                    failure.get()?.let { throw it }
                    // Locate the bootstrap by its real ExternalReads entry, not the queue position.
                    if (entered.count == 0L) return candidate
                    candidate.join(2_000L)
                    assertFalse("completed inventory task blocked", candidate.isAlive)
                }
                error("bootstrap metadata read did not start within the bounded task budget")
            }
            val thread = beginBootstrapRead()
            assertTrue(entered.await(1L, TimeUnit.SECONDS))
            try {
                f.callback().onMetadataChanged(metadata("new"))
                f.callback().onPlaybackStateChanged(playback(PlaybackState.STATE_PAUSED, 321L, speed = 0f))
                f.callback().onAudioInfoChanged(audio())
            } finally {
                release.countDown(); thread.join(2_000L)
            }
            assertFalse("bootstrap worker blocked", thread.isAlive)
            failure.get()?.let { throw it }
            f.settle()
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1_500L)); f.settle()
            assertEquals("new", f.seen.last().mediaId)
            assertEquals(321L, f.seen.last().positionMs)
            assertFalse(f.seen.last().playing)
            f.callback().onMetadataChanged(null)
            val count = f.reads.metadataReads; f.settle()
            assertEquals("", f.seen.last().mediaId)
            assertEquals(count, f.reads.metadataReads)
        }
    }

    @Test fun exactPauseSeekResumePublisherTimesAndSameTokenRecordingSwitchStayInFifoOrder() {
        Fixture().use { f ->
            f.start(); f.seen.clear()
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(100L))
            val callback = f.callback()
            callback.onPlaybackStateChanged(playback(PlaybackState.STATE_PAUSED, 10_000L, 70L, 0f))
            callback.onPlaybackStateChanged(playback(PlaybackState.STATE_PAUSED, 10_001L, 71L, 0f))
            callback.onPlaybackStateChanged(playback(PlaybackState.STATE_PLAYING, 10_001L, 72L, 1.25f))
            callback.onMetadataChanged(metadata("next-publisher"))
            callback.onPlaybackStateChanged(playback(PlaybackState.STATE_PLAYING, 0L, 10L, 1f))
            assertEquals(listOf(10_000L, 10_001L, 10_001L, -1L, 0L), f.seen.map { it.positionMs })
            assertEquals(listOf(70L, 71L, 72L, 0L, 10L), f.seen.map { it.positionElapsedRealtimeMs })
            assertEquals(listOf(false, false, true, true, true), f.seen.map { it.playing })
            assertEquals("next-publisher", f.seen.last().mediaId)
            assertTrue(f.seen.last().generation > f.seen.first().generation)
            assertEquals(1.25f, f.seen[2].playbackSpeed, 0f)
        }
    }

    @Test fun reentrantListenerQueuesAllRealEventsAndStopRejectsAlreadyQueuedOldLifecycleEvents() {
        Fixture().use { f ->
            f.start(); f.seen.clear()
            var reentered = false
            f.onSnapshot = {
                if (!reentered) {
                    reentered = true
                    f.callback().onPlaybackStateChanged(playback(PlaybackState.STATE_PAUSED, 2L, speed = 0f))
                    f.callback().onPlaybackStateChanged(playback(PlaybackState.STATE_PLAYING, 3L))
                }
            }
            f.callback().onPlaybackStateChanged(playback(position = 1L))
            assertEquals(listOf(1L, 2L, 3L), f.seen.map { it.positionMs })
            val old = f.callback()
            f.adapter.stop(); f.onSnapshot = null; f.start()
            val count = f.seen.size
            old.onMetadataChanged(metadata("obsolete")); old.onPlaybackStateChanged(playback(position = 999L))
            f.settle(); assertEquals(count, f.seen.size)
        }
    }

    @Test fun concurrentCallbackProducersReturnWhileListenerIsRunningAndPublishInAdmissionOrder() {
        Fixture().use { f ->
            f.start(); f.seen.clear()
            var once = false
            f.onSnapshot = {
                if (!once) {
                    once = true
                    val callback = f.callback()
                    val done = CountDownLatch(1)
                    Thread {
                        callback.onPlaybackStateChanged(playback(PlaybackState.STATE_PAUSED, 2L, speed = 0f))
                        callback.onPlaybackStateChanged(playback(PlaybackState.STATE_PLAYING, 3L))
                        done.countDown()
                    }.start()
                    assertTrue("producer waits for listener/adapter monitor", done.await(1L, TimeUnit.SECONDS))
                }
            }
            f.callback().onPlaybackStateChanged(playback(position = 1L)); f.settle()
            assertEquals(listOf(1L, 2L, 3L), f.seen.map { it.positionMs })
        }
    }

    @Test fun oneHundredRepeatedSourceNotificationsHaveNoGetterArbitrationOrPublicationWork() {
        Fixture(status = true).use { f ->
            f.start(); val service = SourceBinder(6); f.connect(service)
            val counts = f.reads.getterCounts(); val snapshots = f.seen.size
            val evaluations = field(f.adapter, "selectionEvaluations") as Long
            repeat(100) { service.changed() }
            f.settle()
            assertEquals("dirty signals require at most one initial read and one supplement", 3, service.reads)
            assertEquals(counts, f.reads.getterCounts())
            assertEquals(evaluations, field(f.adapter, "selectionEvaluations"))
            assertEquals(snapshots, f.seen.size)
        }
    }

    @Test fun sourceReadHasOneInFlightDirtySupplementAndRejectsAResultFromReplacedService() {
        Fixture(status = true).use { f ->
            f.start(); val old = SourceBinder(6); f.connect(old)
            val entered = CountDownLatch(1); val release = CountDownLatch(1)
            old.raw = 14; old.beforeRead = { entered.countDown(); assertTrue(release.await(2L, TimeUnit.SECONDS)) }
            old.changed(); shadowOf(Looper.getMainLooper()).idle()
            val thread = Thread(requireNotNull(f.worker.take())); thread.start()
            assertTrue(entered.await(1L, TimeUnit.SECONDS))
            repeat(100) { old.changed() }; shadowOf(Looper.getMainLooper()).idle()
            assertNull("only dirty is recorded during a source read", f.worker.take())
            val replacement = SourceBinder(4)
            requireNotNull(f.context.connection).onServiceConnected(COMPONENT, replacement)
            // Descriptor verification can finish while the old source-status read is blocked.
            f.worker.run(); shadowOf(Looper.getMainLooper()).idle(); f.worker.run()
            assertEquals(0, replacement.reads)
            release.countDown(); thread.join(2_000L); f.settle()
            assertEquals(1, replacement.reads)
            assertEquals("USB音乐", f.seen.last().source)
            assertFalse(f.seen.any { it.source == "网易云音乐" })
        }
    }

    @Test fun oldEpochReadCannotEnterRestartAndRestartWaitsForItsPhysicalCompletion() {
        Fixture(withController = false, status = true).use { f ->
            f.start(); val old = SourceBinder(6); f.connect(old)
            val entered = CountDownLatch(1); val release = CountDownLatch(1)
            old.raw = 14; old.beforeRead = { entered.countDown(); assertTrue(release.await(2L, TimeUnit.SECONDS)) }
            old.changed(); shadowOf(Looper.getMainLooper()).idle()
            val thread = Thread(requireNotNull(f.worker.take())); thread.start(); assertTrue(entered.await(1L, TimeUnit.SECONDS))
            val oldCallback = requireNotNull(old.callback)
            f.adapter.stop(); f.start(settle = false)
            release.countDown(); thread.join(2_000L); f.settle()
            val current = SourceBinder(11); f.connect(current)
            val count = f.seen.size
            old.changed(oldCallback); f.settle()
            assertEquals("本机音乐", f.seen.last().source)
            assertEquals(count, f.seen.size)
            assertFalse(f.seen.any { it.source == "网易云音乐" })
        }
    }

    @Test fun capabilityIsLockFreeCachedAndChangesOnceOnStartupPackageFailureAndRecovery() {
        Fixture(withController = false).use { f ->
            f.reads.available = true; f.start(); assertTrue(f.adapter.isSourceAvailable)
            val resolves = f.reads.capabilityReads
            val done = CountDownLatch(1)
            synchronized(f.adapter) {
                Thread { repeat(100) { assertTrue(f.adapter.isSourceAvailable) }; done.countDown() }.start()
                assertTrue("capability getter waits for adapter monitor", done.await(1L, TimeUnit.SECONDS))
            }
            assertEquals(resolves, f.reads.capabilityReads)
            val count = f.seen.size
            f.reads.available = false
            f.context.sendBroadcast(Intent(Intent.ACTION_PACKAGE_CHANGED).setData(android.net.Uri.parse("package:com.tencent.wecarflow")))
            f.settle(); assertFalse(f.adapter.isSourceAvailable)
            assertEquals(count + 1, f.seen.size)
            f.reads.available = true
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(5_000L)); f.settle()
            assertTrue(f.adapter.isSourceAvailable)
            assertEquals(count + 2, f.seen.size)
            f.adapter.stop(); assertFalse(f.adapter.isSourceAvailable)
        }
    }

    @Test fun sourceCommandsRemainUnconfirmedUntilReadbackAndUnknownOrFailureCannotBorrowCachedSession() {
        Fixture(status = true).use { f ->
            f.reads.available = true; f.start(); val service = SourceBinder(6); f.connect(service)
            assertTrue(f.adapter.requestSource("爱趣听"))
            assertEquals(4, requireNotNull(f.context.command).getIntExtra("audio_source", -1))
            assertEquals("蓝牙音乐", f.seen.last().source)
            service.raw = 13; service.changed(); f.settle()
            assertEquals("爱趣听", f.seen.last().source)
            assertEquals("", f.seen.last().mediaId)
            assertFalse(f.seen.last().playbackAvailable)
            service.raw = 999; service.changed(); f.settle(); assertFalse(f.seen.last().dataAvailable)
            service.raw = 6; service.reject = true; service.changed(); f.settle(); assertFalse(f.seen.last().dataAvailable)
            service.reject = false; service.changed(); f.settle(); assertEquals("蓝牙音乐", f.seen.last().source)
        }
    }

    @Test fun workerAudioFactsRetainCommunicationClassificationWithoutGetterQueries() {
        Fixture().use { f ->
            f.start(); val counts = f.reads.getterCounts()
            f.reads.mode = AudioManager.MODE_IN_COMMUNICATION
            f.callback().onAudioInfoChanged(audio()); f.settle()
            assertEquals(ContentPorts.MediaSongIdentity.NON_SONG, f.seen.last().songIdentity)
            f.reads.mode = AudioManager.MODE_NORMAL
            f.callback().onAudioInfoChanged(audio()); f.settle()
            assertNotEquals("stale communication-era music cannot regain ownership", ContentPorts.MediaSongIdentity.SONG, f.seen.last().songIdentity)
            f.callback().onPlaybackStateChanged(playback(position = 10_500L)); f.settle()
            assertEquals(ContentPorts.MediaSongIdentity.SONG, f.seen.last().songIdentity)
            assertEquals(counts, f.reads.getterCounts())
        }
    }

    @Test fun avrcpMetadataGraceAndSessionDestroyAllPublishOutsideEveryOuterMonitor() {
        Fixture().use { f ->
            f.start()
            f.context.sendBroadcast(Intent(AVRCP).putExtra(SONG_POSITION, 30_000L))
            f.settle(); assertEquals(30_000L, f.seen.last().avrcpPositionMs)
            val sequence = f.seen.last().avrcpEventSequence
            f.context.sendBroadcast(Intent(AVRCP).putExtra(SONG_POSITION, 30_000L)); f.settle()
            assertEquals(sequence + 1, f.seen.last().avrcpEventSequence)
            f.callback().onMetadataChanged(null)
            assertEquals(ContentPorts.MediaSongIdentity.SONG, f.seen.last().songIdentity)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1_501L)); f.settle()
            assertEquals(ContentPorts.MediaSongIdentity.UNKNOWN, f.seen.last().songIdentity)
            val callback = f.callback(); callback.onSessionDestroyed()
            assertFalse(f.seen.last().dataAvailable)
        }
    }

    @Test fun artworkCompletionAndTimeoutHaveUnlockedListenersAndCannotUseAnOldRecording() {
        Fixture().use { f ->
            val entered = CountDownLatch(1); val release = CountDownLatch(1)
            f.reads.metadataValue = metadata("cover", uri = "content://fixture/cover")
            f.reads.decoder = { entered.countDown(); assertTrue(release.await(2L, TimeUnit.SECONDS)); Bitmap.createBitmap(2, 2, Bitmap.Config.ARGB_8888) }
            f.start(); assertTrue(entered.await(1L, TimeUnit.SECONDS))
            assertTrue(f.seen.last().publicArtworkPending)
            val task = field(f.adapter, "artworkTask") as Future<*>
            release.countDown(); task.get(2L, TimeUnit.SECONDS); f.settle()
            assertNotNull(f.seen.last().artwork)
            f.reads.decoder = { null }
            f.callback().onMetadataChanged(metadata("timeout", uri = "content://fixture/timeout"))
            // Execute the real captured timeout before the already posted worker completion.
            (field(f.adapter, "artworkTimeout") as Runnable).run()
            f.settle(); assertNull(f.seen.last().artwork)
            assertFalse(f.seen.last().publicArtworkPending)
            assertEquals("timeout", f.seen.last().mediaId)
        }
    }

    @GraphicsMode(GraphicsMode.Mode.NATIVE)
    @Test fun exactDuplicateFactsDeduplicateButSameBitmapMutationAndOneMillisecondSeekPublish() {
        Fixture().use { f ->
            val bitmap = Bitmap.createBitmap(3, 3, Bitmap.Config.ARGB_8888)
            val metadata = metadata("bitmap", bitmap)
            f.reads.metadataValue = metadata; f.start()
            val count = f.seen.size; val callback = f.callback()
            callback.onMetadataChanged(metadata); callback.onPlaybackStateChanged(f.reads.playbackValue)
            assertEquals(count, f.seen.size)
            val previous = f.seen.last().generation
            bitmap.eraseColor(android.graphics.Color.RED); callback.onMetadataChanged(metadata)
            assertEquals(count + 1, f.seen.size); assertTrue(f.seen.last().generation > previous)
            callback.onPlaybackStateChanged(playback(position = 10_001L))
            assertEquals(count + 2, f.seen.size); assertEquals(10_001L, f.seen.last().positionMs)
        }
    }

    @Test fun failedSourceReadRecoversThroughOneScheduledRetryWithoutAnyNotification() {
        Fixture(withController = false, status = true).use { f ->
            f.start()
            val service = SourceBinder(6).apply { reject = true }
            f.connect(service)
            assertFalse(f.seen.last().dataAvailable)
            assertEquals(1, service.reads)
            service.reject = false
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(999L)); f.settle()
            assertEquals(1, service.reads)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1L)); f.settle()
            assertEquals(2, service.reads)
            assertEquals("蓝牙音乐", f.seen.last().source)
            val count = f.seen.size
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(10L)); f.settle()
            assertEquals(2, service.reads)
            assertEquals(count, f.seen.size)
        }
    }

    @Test fun sameSourceCommandRequiresFreshReadbackAndClearsTheFormalStoresPendingCommand() {
        Fixture(withController = false, status = true).use { f ->
            f.reads.available = true
            val checkedPort = object : ContentPorts.MediaPort by f.adapter {
                override fun isSourceAvailable() = f.adapter.isSourceAvailable
                override fun start(listener: ContentPorts.MediaSnapshotListener) {
                    f.adapter.start {
                        assertFalse(Thread.holdsLock(f.adapter))
                        f.seen += it
                        listener.onMediaSnapshot(it)
                    }
                }
            }
            val store = ContentStore(f.context, ContentPorts.PreviewVehiclePort(), checkedPort,
                object : ContentPorts.SystemPort {
                    override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
                    override fun write(kind: Int, percent: Int) = false
                })
            try {
                f.settle(); val service = SourceBinder(6); f.connect(service)
                assertTrue(f.adapter.isSourceAvailable)
                assertTrue(store.snapshot().mediaSourceWriteAvailable)
                store.selectMediaSource("蓝牙音乐")
                val commandWorker = ContentStore::class.java.getDeclaredField("mediaCommandExecutor")
                    .apply { isAccessible = true }.get(store) as java.util.concurrent.ExecutorService
                val dispatched = CountDownLatch(1); commandWorker.execute { dispatched.countDown() }
                assertTrue(dispatched.await(2L, TimeUnit.SECONDS)); f.settle()
                assertEquals("蓝牙音乐", store.snapshot().pendingSource)
                val publications = f.seen.size
                shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(800L)); f.settle()
                assertEquals("", store.snapshot().pendingSource)
                assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
                assertEquals("蓝牙音乐", store.snapshot().mediaSource)
                assertEquals(publications + 1, f.seen.size)
                repeat(100) { service.changed() }; f.settle()
                assertEquals(publications + 1, f.seen.size)
            } finally { store.destroy() }
        }
    }

    @Test fun publicArtworkCapabilityLogContainsOnlyKeysAndDeduplicatesPlaybackCallbacks() {
        Fixture().use { f ->
            val image = Bitmap.createBitmap(2, 2, Bitmap.Config.ARGB_8888)
            f.reads.metadataValue = metadata("private-recording", image, "https://example.invalid/private-artwork")
            f.start()
            fun logs() = org.robolectric.shadows.ShadowLog.getLogsForTag("ContentMediaAdapter")
                .map { it.msg }.filter { it.startsWith("public media fields ") }
            val initial = logs()
            assertEquals(1, initial.size)
            assertTrue(initial.single().contains(MediaMetadata.METADATA_KEY_ART_URI))
            assertTrue(initial.single().contains("hasTitle=true"))
            assertFalse(initial.single().contains("private-recording"))
            assertFalse(initial.single().contains("https://"))
            assertFalse(initial.single().contains(f.controller.sessionToken.toString()))
            repeat(10) { f.callback().onPlaybackStateChanged(playback(position = 10_000L + it)) }
            f.settle()
            assertEquals(initial, logs())
        }
    }

    @Test fun arbiterClearAfterStoppedCannotBeBypassedByRepeatedRetainedInventory() {
        Fixture().use { f ->
            f.start(); assertTrue(f.seen.last().dataAvailable)
            val counts = f.reads.getterCounts()
            f.callback().onPlaybackStateChanged(playback(PlaybackState.STATE_STOPPED, 10_000L, speed = 0f))
            assertFalse(f.seen.last().dataAvailable)
            val publications = f.seen.size
            val manager = app.getSystemService(Context.MEDIA_SESSION_SERVICE) as MediaSessionManager
            repeat(10) { shadowOf(manager).addController(f.controller) }
            f.settle()
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1_500L)); f.settle()
            assertFalse(f.seen.last().dataAvailable)
            assertEquals(publications, f.seen.size)
            assertEquals(counts, f.reads.getterCounts())
        }
    }

    private fun field(adapter: ContentMediaAdapter, name: String): Any? =
        ContentMediaAdapter::class.java.getDeclaredField(name).apply { isAccessible = true }.get(adapter)

    companion object {
        private val COMPONENT = ComponentName("com.tencent.wecarflow", "fixture.SourceService")
        private const val SOURCE_DESCRIPTOR = "com.mengbo.mediaservice.IPlayControlsInterface"
        private const val CALLBACK_DESCRIPTOR = "com.mengbo.mediaservice.IPlayInfoCallBack"
        private const val AVRCP = "android.bluetooth.avrcp-controller.profile.action.PLAYBACK_POS_CHANGED"
        private const val SONG_POSITION = "android.bluetooth.avrcp-controller.profile.extra.SONG_POS"
    }
}
