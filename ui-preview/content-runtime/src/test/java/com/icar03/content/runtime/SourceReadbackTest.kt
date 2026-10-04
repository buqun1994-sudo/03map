package com.icar03.content.runtime

import android.content.ComponentName
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.ServiceConnection
import android.content.pm.ApplicationInfo
import android.content.pm.ResolveInfo
import android.content.pm.ServiceInfo
import android.media.MediaMetadata
import android.media.session.MediaController
import android.media.session.MediaSession
import android.media.session.MediaSessionManager
import android.media.session.PlaybackState
import android.os.Binder
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.os.Parcel
import com.autonavi.amapauto.content.ContentMediaAdapter
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentStore
import com.autonavi.amapauto.content.ContentState
import com.icar03.content.runtime.media.ContentPublicMediaBrowsers
import java.time.Duration
import java.util.concurrent.ExecutorService
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class SourceReadbackTest {
    @Test fun sourceServiceReadbackNotCommandAcceptanceConfirmsCloudWithoutPlaybackSession() {
        val context = SourceContext(RuntimeEnvironment.getApplication())
        context.installStatusService()
        val adapter = ContentMediaAdapter(context)
        val snapshots = mutableListOf<ContentPorts.MediaSnapshot>()
        val service = SourceBinder(6)
        try {
            adapter.start { snapshots += it }
            drainSource(adapter); context.connect(service); drainSource(adapter)
            assertEquals("蓝牙音乐", snapshots.last().source)
            assertTrue(snapshots.last().dataAvailable)
            assertFalse(snapshots.last().playbackAvailable)
            assertFalse(adapter.isAvailable)
            assertTrue(adapter.requestSource("网易云音乐"))
            assertEquals(9, context.lastCommand!!.getIntExtra("audio_source", -1))
            assertEquals("蓝牙音乐", snapshots.last().source)
            service.raw = 10
            service.changed(); drainSource(adapter)
            assertEquals("网易云音乐", snapshots.last().source)
            assertFalse(snapshots.last().playbackAvailable)
            assertFalse(snapshots.last().nextAvailable)
            assertTrue(service.reads >= 2)
            assertTrue(service.transactions.all { it in listOf(1, 6) })
        } finally { adapter.stop() }
    }

    @Test fun sourceReadUsesInternalCodesAndUnknownOrFailedReadDoesNotConfirm() {
        val context = SourceContext(RuntimeEnvironment.getApplication())
        context.installStatusService()
        val adapter = ContentMediaAdapter(context)
        val snapshots = mutableListOf<ContentPorts.MediaSnapshot>()
        val service = SourceBinder(4)
        try {
            adapter.start { snapshots += it }; drainSource(adapter); context.connect(service); drainSource(adapter)
            assertEquals("USB音乐", snapshots.last().source)
            service.raw = 11; service.changed(); drainSource(adapter)
            assertEquals("本机音乐", snapshots.last().source)
            service.raw = 999; service.changed(); drainSource(adapter)
            assertFalse(snapshots.last().dataAvailable)
            service.raw = 10; service.rejectRead = true; service.changed(); drainSource(adapter)
            assertFalse(snapshots.last().dataAvailable)
        } finally { adapter.stop() }
    }

    @Test fun sdk13ConfirmsAiqutingInStoreWithoutPlaybackSessionAndDoesNotTimeoutBackToBluetooth() {
        val context = SourceContext(RuntimeEnvironment.getApplication())
        context.installStatusService()
        context.installCommandService()
        val adapter = ContentMediaAdapter(context)
        val store = ContentStore(context, ContentPorts.PreviewVehiclePort(), adapter, ContentPorts.AndroidSystemPort(context))
        val service = SourceBinder(6)
        try {
            drainSource(adapter); context.connect(service); drainSource(adapter)
            store.selectMediaSource("爱趣听"); drainCommands(store)
            assertEquals(4, context.lastCommand!!.getIntExtra("audio_source", -1))
            assertEquals("爱趣听", store.snapshot().pendingSource)
            assertEquals("蓝牙音乐", store.snapshot().mediaSource)
            // Card-domain AQT_PROGRAM=1 is not the source SDK code.
            service.raw = 1; service.changed(); drainSource(adapter)
            assertEquals("爱趣听", store.snapshot().pendingSource)
            assertFalse(store.snapshot().mediaDataAvailable)
            service.raw = 13; service.changed(); drainSource(adapter)
            assertEquals("爱趣听", store.snapshot().mediaSource)
            assertEquals("", store.snapshot().pendingSource)
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
            assertFalse(store.snapshot().mediaPlaybackAvailable)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(7))
            drainSource(adapter)
            assertEquals("爱趣听", store.snapshot().mediaSource)
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
            service.raw = 6; service.changed(); drainSource(adapter)
            assertEquals("蓝牙音乐", store.snapshot().mediaSource)
        } finally { store.destroy() }
    }

    @Test fun currentMediaCenterBinderReadsSourceWithTransaction38AndOneWayCallbacks() {
        val context = SourceContext(RuntimeEnvironment.getApplication())
        context.installCurrentStatusService()
        val adapter = ContentMediaAdapter(context)
        val snapshots = mutableListOf<ContentPorts.MediaSnapshot>()
        val service = ImbSourceBinder(13)
        try {
            adapter.start { snapshots += it }
            drainSource(adapter); context.connect(service); drainSource(adapter)
            assertEquals("爱趣听", snapshots.last().source)
            assertTrue(snapshots.last().dataAvailable)
            assertTrue("current IMB readback must use transaction 38", service.transactions.contains(38))
            assertTrue("current IMB registration must use transaction 1", service.transactions.contains(1))
            assertFalse("current IMB must never send legacy transaction 6", service.transactions.contains(6))
            service.raw = 6
            service.changed(); drainSource(adapter)
            assertEquals("蓝牙音乐", snapshots.last().source)
            assertTrue(service.transactions.count { it == 38 } >= 2)
        } finally { adapter.stop() }
    }

    @Test fun currentMediaCenterCallbackOnEventReturnsIntAndTriggersReadback() {
        val context = SourceContext(RuntimeEnvironment.getApplication())
        context.installCurrentStatusService()
        val adapter = ContentMediaAdapter(context)
        val snapshots = mutableListOf<ContentPorts.MediaSnapshot>()
        val service = ImbSourceBinder(13)
        try {
            adapter.start { snapshots += it }
            drainSource(adapter); context.connect(service); drainSource(adapter)
            service.raw = 10
            val data = Parcel.obtain(); val reply = Parcel.obtain()
            try {
                data.writeInterfaceToken(CURRENT_CALLBACK_DESCRIPTOR)
                data.writeString("media_source_changed")
                assertTrue(service.callback!!.transact(4, data, reply, 0))
                reply.readException()
                assertEquals(0, reply.readInt())
            } finally { reply.recycle(); data.recycle() }
            drainSource(adapter)
            assertEquals("网易云音乐", snapshots.last().source)
        } finally { adapter.stop() }
    }

    @Test fun reconnectWithCurrentImbReadbackDoesNotUseLegacySourceTransaction() {
        val context = SourceContext(RuntimeEnvironment.getApplication())
        context.installCurrentStatusService()
        val adapter = ContentMediaAdapter(context)
        val snapshots = mutableListOf<ContentPorts.MediaSnapshot>()
        try {
            adapter.start { snapshots += it }
            val first = ImbSourceBinder(13)
            drainSource(adapter); context.connect(first); drainSource(adapter)
            context.connection!!.onServiceDisconnected(COMPONENT)
            val replacement = ImbSourceBinder(6)
            drainSource(adapter); context.connect(replacement); drainSource(adapter)
            assertEquals("蓝牙音乐", snapshots.last().source)
            assertFalse(replacement.transactions.contains(6))
            assertTrue(replacement.transactions.contains(38))
        } finally { adapter.stop() }
    }

    @Test fun sdk13SelectsAiqutingBrowserDespiteRetainedBluetoothPlayingWithTheSameScore() {
        assertSource13SelectsBrowser(PlaybackState.STATE_PLAYING)
    }

    @Test fun sdk13SelectsPausedAiqutingBrowserDespiteHigherScoringRetainedBluetoothPlaying() {
        assertSource13SelectsBrowser(PlaybackState.STATE_PAUSED)
    }

    private fun assertSource13SelectsBrowser(aqState: Int) {
        val context = SourceContext(RuntimeEnvironment.getApplication())
        context.installStatusService()
        context.installCommandService()
        val btSession = MediaSession(context, "retained-bluetooth-playing")
        val aqSession = MediaSession(context, "aq-browser-not-active")
        val bt = MediaController(context, btSession.sessionToken)
        val aq = MediaController(context, aqSession.sessionToken)
        shadowOf(bt).setPackageName("com.android.bluetooth")
        shadowOf(aq).setPackageName("com.tencent.wecarflow")
        fun metadata(title: String) = MediaMetadata.Builder()
            .putString(MediaMetadata.METADATA_KEY_TITLE, title)
            .putString(MediaMetadata.METADATA_KEY_ARTIST, "合成歌手")
            .putLong(MediaMetadata.METADATA_KEY_DURATION, 180_000L).build()
        fun playback(state: Int) = PlaybackState.Builder().setState(state, 23_228L, 0f)
            .setActions(PlaybackState.ACTION_PLAY or PlaybackState.ACTION_PAUSE or PlaybackState.ACTION_SKIP_TO_NEXT).build()
        shadowOf(bt).setMetadata(metadata("旧蓝牙歌曲"))
        shadowOf(bt).setPlaybackState(playback(PlaybackState.STATE_PLAYING))
        shadowOf(aq).setMetadata(metadata("爱趣听当前歌曲"))
        shadowOf(aq).setPlaybackState(playback(aqState))
        shadowOf(context.getSystemService(Context.MEDIA_SESSION_SERVICE) as MediaSessionManager).addController(bt)
        val component = ComponentName("com.tencent.wecarflow", "com.tencent.wecarflow.service.MusicService")
        val browserInfo = ResolveInfo().apply {
            serviceInfo = ServiceInfo().apply {
                packageName = component.packageName; name = component.className; enabled = true; exported = true
                applicationInfo = ApplicationInfo().apply { packageName = component.packageName; enabled = true }
            }
        }
        val adapter = ContentMediaAdapter(context)
        val store = ContentStore(context, ContentPorts.PreviewVehiclePort(), adapter, ContentPorts.AndroidSystemPort(context))
        val service = SourceBinder(6)
        var browserCallback: ContentPublicMediaBrowsers.Callback? = null
        val registry = ContentPublicMediaBrowsers(context, Handler(Looper.getMainLooper()),
            ContentPublicMediaBrowsers.Listener {
                val epoch = ContentMediaAdapter::class.java.getDeclaredField("lifecycle").apply { isAccessible = true }.getLong(adapter)
                ContentMediaAdapter::class.java.getDeclaredMethod("reconcileControllers", java.lang.Long.TYPE)
                    .apply { isAccessible = true }.invoke(adapter, epoch)
            }, ContentPublicMediaBrowsers.ClientFactory { _, _, callback ->
                browserCallback = callback
                object : ContentPublicMediaBrowsers.Client { override fun connect() {}; override fun disconnect() {} }
            })
        try {
            drainSource(adapter); context.connect(service); drainSource(adapter)
            val browsers = ContentMediaAdapter::class.java.getDeclaredField("browsers").apply { isAccessible = true }
            (browsers.get(adapter) as ContentPublicMediaBrowsers).close()
            browsers.set(adapter, registry)
            shadowOf(context.packageManager).addResolveInfoForIntent(Intent(ContentPublicMediaBrowsers.ACTION), browserInfo)
            registry.refresh(setOf(component.packageName)); browserCallback!!.onConnected(aq)
            assertEquals("蓝牙音乐", store.snapshot().mediaSource)
            store.selectMediaSource("爱趣听"); drainCommands(store)
            assertEquals("爱趣听", store.snapshot().pendingSource)
            assertEquals("蓝牙音乐", store.snapshot().mediaSource)
            service.raw = 13; service.changed(); drainSource(adapter)
            assertEquals("爱趣听", store.snapshot().mediaSource)
            assertEquals("", store.snapshot().pendingSource)
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
            assertEquals("爱趣听当前歌曲", store.snapshot().mediaTitle)
            assertEquals(aqState == PlaybackState.STATE_PLAYING, store.snapshot().mediaPlaying)
            assertTrue(store.snapshot().mediaPlaybackAvailable)
            assertTrue(store.snapshot().mediaNextAvailable)
            // More callbacks from the old retained Bluetooth token cannot steal source or metadata.
            shadowOf(bt).callbacks.toList().forEach { it.onPlaybackStateChanged(bt.playbackState) }
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(7)); drainSource(adapter)
            assertEquals("爱趣听", store.snapshot().mediaSource)
            assertEquals("爱趣听当前歌曲", store.snapshot().mediaTitle)
            assertEquals(ContentState.COMMAND_NONE, store.snapshot().commandStatus)
        } finally { store.destroy(); btSession.release(); aqSession.release() }
    }

    @Test fun sdk13PrioritizesAnUnconnectedAiqutingBrowserOutsideTheEightClientBudget() {
        val context = SourceContext(RuntimeEnvironment.getApplication())
        context.installStatusService()
        val adapter = ContentMediaAdapter(context)
        val service = SourceBinder(6)
        val created = mutableListOf<ComponentName>()
        val registry = ContentPublicMediaBrowsers(context, Handler(Looper.getMainLooper()),
            ContentPublicMediaBrowsers.Listener { }, ContentPublicMediaBrowsers.ClientFactory { _, component, _ ->
                created += component
                object : ContentPublicMediaBrowsers.Client { override fun connect() {}; override fun disconnect() {} }
            })
        val aq = ComponentName("com.tencent.wecarflow", "com.tencent.wecarflow.service.MusicService")
        try {
            adapter.start { }; drainSource(adapter); context.connect(service); drainSource(adapter)
            val field = ContentMediaAdapter::class.java.getDeclaredField("browsers").apply { isAccessible = true }
            (field.get(adapter) as ContentPublicMediaBrowsers).close(); field.set(adapter, registry)
            val candidates = (1..8).map { ComponentName(aq.packageName, "com.tencent.wecarflow.a.Browser$it") } + aq
            candidates.forEach { component ->
                shadowOf(context.packageManager).addResolveInfoForIntent(Intent(ContentPublicMediaBrowsers.ACTION),
                    ResolveInfo().apply { serviceInfo = ServiceInfo().apply {
                        packageName = component.packageName; name = component.className; enabled = true; exported = true
                        applicationInfo = ApplicationInfo().apply { packageName = component.packageName; enabled = true }
                    } })
            }
            registry.refresh(setOf(aq.packageName))
            assertEquals(8, created.size)
            assertFalse(created.contains(aq))
            service.raw = 13; service.changed(); drainSource(adapter)
            assertTrue("readback13 must prioritize the MusicService client before a session exists", created.contains(aq))
        } finally { adapter.stop() }
    }

    @Test fun reconnectBeforeReadbackCannotBorrowOldBluetoothOrFalselyConfirmPendingBluetooth() {
        val context = SourceContext(RuntimeEnvironment.getApplication())
        context.installStatusService(); context.installCommandService()
        val session = MediaSession(context, "retained-bluetooth-on-reconnect")
        val bt = MediaController(context, session.sessionToken)
        shadowOf(bt).setPackageName("com.android.bluetooth")
        shadowOf(bt).setMetadata(MediaMetadata.Builder()
            .putString(MediaMetadata.METADATA_KEY_TITLE, "旧蓝牙歌曲")
            .putString(MediaMetadata.METADATA_KEY_ARTIST, "合成歌手")
            .putLong(MediaMetadata.METADATA_KEY_DURATION, 180_000L).build())
        shadowOf(bt).setPlaybackState(PlaybackState.Builder().setState(PlaybackState.STATE_PLAYING, 20_000L, 0f)
            .setActions(PlaybackState.ACTION_PLAY or PlaybackState.ACTION_PAUSE).build())
        shadowOf(context.getSystemService(Context.MEDIA_SESSION_SERVICE) as MediaSessionManager).addController(bt)
        val adapter = ContentMediaAdapter(context)
        val store = ContentStore(context, ContentPorts.PreviewVehiclePort(), adapter, ContentPorts.AndroidSystemPort(context))
        val entered = CountDownLatch(1); val release = CountDownLatch(1)
        val replacement = SourceBinder(999).apply { beforeRead = {
            entered.countDown(); check(release.await(5L, TimeUnit.SECONDS))
        } }
        try {
            drainSource(adapter); context.connect(SourceBinder(13)); drainSource(adapter)
            assertEquals("爱趣听", store.snapshot().mediaSource)
            context.connection!!.onServiceDisconnected(COMPONENT)
            store.selectMediaSource("蓝牙音乐"); drainCommands(store)
            assertEquals("蓝牙音乐", store.snapshot().pendingSource)
            drainSource(adapter); context.connect(replacement)
            val verified = CountDownLatch(1)
            (ContentMediaAdapter::class.java.getDeclaredField("sourceHandler").apply { isAccessible = true }
                .get(adapter) as Handler).post { verified.countDown() }
            assertTrue(verified.await(2L, TimeUnit.SECONDS))
            shadowOf(Looper.getMainLooper()).idle()
            assertTrue(entered.await(2L, TimeUnit.SECONDS))
            shadowOf(bt).callbacks.toList().forEach { it.onPlaybackStateChanged(bt.playbackState) }
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals("蓝牙音乐", store.snapshot().pendingSource)
            assertEquals("爱趣听", store.snapshot().mediaSource)
            assertFalse(store.snapshot().mediaDataAvailable)
            release.countDown(); drainSource(adapter)
            assertEquals("蓝牙音乐", store.snapshot().pendingSource)
            assertFalse(store.snapshot().mediaDataAvailable)
        } finally { release.countDown(); store.destroy(); session.release() }
    }

    private fun drainCommands(store: ContentStore) {
        val executor = ContentStore::class.java.getDeclaredField("mediaCommandExecutor").apply { isAccessible = true }
            .get(store) as ExecutorService
        val drained = CountDownLatch(1)
        executor.execute { drained.countDown() }
        assertTrue(drained.await(2, TimeUnit.SECONDS))
        shadowOf(Looper.getMainLooper()).idle()
    }

    @Test fun unknownReadbackMustNotReconfirmRetainedBluetoothSessionAfterAnotherSourceCommand() {
        val context = SourceContext(RuntimeEnvironment.getApplication())
        context.installStatusService()
        val session = MediaSession(context, "retained-bt")
        val controller = MediaController(context, session.sessionToken)
        shadowOf(controller).setPackageName("com.android.bluetooth")
        shadowOf(controller).setMetadata(MediaMetadata.Builder()
            .putString(MediaMetadata.METADATA_KEY_TITLE, "旧蓝牙歌曲")
            .putString(MediaMetadata.METADATA_KEY_ARTIST, "合成歌手")
            .putLong(MediaMetadata.METADATA_KEY_DURATION, 180_000L).build())
        shadowOf(controller).setPlaybackState(PlaybackState.Builder()
            .setState(PlaybackState.STATE_PAUSED, 42_000L, 0f).build())
        shadowOf(context.getSystemService(Context.MEDIA_SESSION_SERVICE) as MediaSessionManager).addController(controller)
        val adapter = ContentMediaAdapter(context)
        val snapshots = mutableListOf<ContentPorts.MediaSnapshot>()
        val service = SourceBinder(6)
        try {
            adapter.start { snapshots += it }; drainSource(adapter); context.connect(service); drainSource(adapter)
            assertEquals("蓝牙音乐", snapshots.last().source)
            assertTrue(adapter.requestSource("爱趣听"))
            assertEquals(4, context.lastCommand!!.getIntExtra("audio_source", -1))
            assertEquals("command dispatch is not confirmation", "蓝牙音乐", snapshots.last().source)
            service.raw = 999; service.changed(); drainSource(adapter)
            assertFalse("unknown source readback must not borrow the old Bluetooth controller", snapshots.last().dataAvailable)
            assertNotEquals("蓝牙音乐", snapshots.last().source)
            assertFalse(snapshots.last().playbackAvailable)
            // A read failure cannot restore the same stale session either.
            service.raw = 6; service.rejectRead = true; service.changed(); drainSource(adapter)
            assertFalse(snapshots.last().dataAvailable)
            assertNotEquals("蓝牙音乐", snapshots.last().source)
            service.rejectRead = false; service.changed(); drainSource(adapter)
            assertEquals("a real known readback restores its source", "蓝牙音乐", snapshots.last().source)
        } finally { adapter.stop(); session.release() }
    }

    @Test fun callbackAndConnectionFromStoppedLifecycleCannotPolluteRestartedAdapter() {
        val context = SourceContext(RuntimeEnvironment.getApplication())
        context.installStatusService()
        val adapter = ContentMediaAdapter(context)
        val snapshots = mutableListOf<ContentPorts.MediaSnapshot>()
        val old = SourceBinder(6)
        try {
            adapter.start { snapshots += it }; drainSource(adapter); context.connect(old); drainSource(adapter)
            val oldConnection = context.connection!!
            val oldCallback = old.callback!!
            adapter.stop()
            adapter.start { snapshots += it }
            val current = SourceBinder(4)
            drainSource(adapter); context.connect(current); drainSource(adapter)
            val before = snapshots.last().generation
            old.raw = 10
            old.changed(oldCallback)
            oldConnection.onServiceConnected(COMPONENT, old)
            drainSource(adapter)
            assertEquals("USB音乐", snapshots.last().source)
            assertEquals(before, snapshots.last().generation)
            assertEquals(1, context.unbinds)
        } finally { adapter.stop() }
    }

    @Test fun statusBindingChecksExportPermissionAndDescriptorWithoutChangingSourceWriteGate() {
        val context = SourceContext(RuntimeEnvironment.getApplication())
        val info = context.installStatusService(exported = false)
        val adapter = ContentMediaAdapter(context)
        try {
            adapter.start { }; assertEquals(0, context.binds); adapter.stop()
            info.exported = true; info.permission = android.Manifest.permission.READ_CONTACTS
            context.installStatusService(info = info)
            shadowOf(RuntimeEnvironment.getApplication()).denyPermissions(info.permission)
            adapter.start { }; assertEquals(0, context.binds); adapter.stop()
            info.permission = null; context.installStatusService(info = info)
            val snapshots = mutableListOf<ContentPorts.MediaSnapshot>()
            adapter.start { snapshots += it }
            val wrong = SourceBinder(10, descriptor = "not.the.source.interface")
            drainSource(adapter); context.connect(wrong); drainSource(adapter)
            assertEquals(0, wrong.reads)
            assertFalse(snapshots.last().dataAvailable)
        } finally { adapter.stop() }
    }

    private fun drainSource(adapter: ContentMediaAdapter) = ContentMediaAdapterTestSupport.drainSource(adapter)

    private class SourceContext(base: Context) : ContextWrapper(base) {
        var binds = 0; var unbinds = 0
        var connection: ServiceConnection? = null
        var lastCommand: Intent? = null
        override fun getApplicationContext(): Context = this
        override fun bindService(intent: Intent, connection: ServiceConnection, flags: Int): Boolean {
            // The status fixture serves only this Binder. Browser tests inject their own
            // ClientFactory; shadow PackageManager can expose added services to generic queries.
            if (intent.action == ContentPublicMediaBrowsers.ACTION) return false
            assertEquals(COMPONENT, intent.component)
            binds++; this.connection = connection; return true
        }
        override fun unbindService(connection: ServiceConnection) { unbinds++ }
        override fun startService(intent: Intent): ComponentName {
            lastCommand = intent; return intent.component!!
        }
        fun connect(service: IBinder) { connection!!.onServiceConnected(COMPONENT, service) }
        fun installCommandService() {
            shadowOf(packageManager).addOrUpdateService(ServiceInfo().apply {
                name = "com.mengbo.service.MediaCenterPlayService"
                packageName = "com.tencent.wecarflow"; enabled = true; exported = true
                applicationInfo = ApplicationInfo().apply { packageName = "com.tencent.wecarflow"; enabled = true }
            })
        }
        fun installStatusService(exported: Boolean = true, info: ServiceInfo = ServiceInfo().apply {
            name = COMPONENT.className; packageName = COMPONENT.packageName; enabled = true; this.exported = exported
            applicationInfo = ApplicationInfo().apply { packageName = COMPONENT.packageName; enabled = true }
        }): ServiceInfo {
            val pm = shadowOf(packageManager)
            pm.addOrUpdateService(info)
            pm.addResolveInfoForIntent(Intent(ACTION).setPackage(COMPONENT.packageName), ResolveInfo().apply { serviceInfo = info })
            return info
        }
        fun installCurrentStatusService() {
            val info = ServiceInfo().apply {
                name = COMPONENT.className; packageName = COMPONENT.packageName; enabled = true; exported = true
                applicationInfo = ApplicationInfo().apply { packageName = COMPONENT.packageName; enabled = true }
            }
            val pm = shadowOf(packageManager)
            pm.addOrUpdateService(info)
            pm.addResolveInfoForIntent(Intent(CURRENT_ACTION).setPackage(COMPONENT.packageName), ResolveInfo().apply { serviceInfo = info })
        }
    }

    private class SourceBinder(@Volatile var raw: Int, descriptor: String = SOURCE_DESCRIPTOR) : Binder() {
        @Volatile var callback: IBinder? = null
        @Volatile var reads = 0
        var rejectRead = false
        var beforeRead: (() -> Unit)? = null
        val transactions = mutableListOf<Int>()
        init { attachInterface(null, descriptor) }
        override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
            if (code !in listOf(1, 2, 6)) return super.onTransact(code, data, reply, flags)
            data.enforceInterface(SOURCE_DESCRIPTOR)
            transactions += code
            if (code == 6) {
                beforeRead?.invoke()
                reads++
                if (rejectRead) return false
                reply!!.writeNoException(); reply.writeInt(raw)
            } else {
                callback = if (code == 1) data.readStrongBinder() else null
                reply!!.writeNoException()
            }
            return true
        }
        fun changed(target: IBinder = callback!!) {
            val data = Parcel.obtain(); val reply = Parcel.obtain()
            try {
                data.writeInterfaceToken(CALLBACK_DESCRIPTOR)
                data.writeInt(0)
                assertTrue(target.transact(2, data, reply, 0)); reply.readException()
            } finally { reply.recycle(); data.recycle() }
        }
    }

    private class ImbSourceBinder(@Volatile var raw: Int) : Binder() {
        @Volatile var callback: IBinder? = null
        val transactions = mutableListOf<Int>()
        init { attachInterface(null, CURRENT_SOURCE_DESCRIPTOR) }
        override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
            if (code !in listOf(1, 2, 38)) return super.onTransact(code, data, reply, flags)
            data.enforceInterface(CURRENT_SOURCE_DESCRIPTOR)
            transactions += code
            if (code == 38) {
                reply!!.writeNoException(); reply.writeInt(raw)
            } else {
                callback = data.readStrongBinder()
            }
            return true
        }
        fun changed() {
            val data = Parcel.obtain(); val reply = Parcel.obtain()
            try {
                data.writeInterfaceToken(CURRENT_CALLBACK_DESCRIPTOR)
                data.writeString("source_changed")
                assertTrue(callback!!.transact(4, data, reply, 0))
                reply.readException(); assertEquals(0, reply.readInt())
            } finally { reply.recycle(); data.recycle() }
        }
    }

    companion object {
        private const val ACTION = "mengbo.com.mediaservice.PlayControlCheryAction"
        private const val CURRENT_ACTION = "mengbo.com.mediaservice.MediaCenterPlayAction"
        private const val SOURCE_DESCRIPTOR = "com.mengbo.mediaservice.IPlayControlsInterface"
        private const val CURRENT_SOURCE_DESCRIPTOR = "com.mengbo.mediaservice.IMBMediaCenterInterface"
        private const val CALLBACK_DESCRIPTOR = "com.mengbo.mediaservice.IPlayInfoCallBack"
        private const val CURRENT_CALLBACK_DESCRIPTOR = "com.mengbo.mediaservice.IMBMediaCenterEventListener"
        private val COMPONENT = ComponentName("com.tencent.wecarflow", "com.mengbo.multimedia.local.service.PlayControlCheryService")
    }
}
