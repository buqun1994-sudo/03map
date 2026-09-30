package com.icar03.content.runtime

import android.content.ComponentName
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.ServiceConnection
import android.content.pm.ApplicationInfo
import android.content.pm.ResolveInfo
import android.content.pm.ServiceInfo
import android.os.Binder
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.os.Parcel
import com.autonavi.amapauto.content.ContentMediaAdapter
import com.autonavi.amapauto.content.ContentPorts
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
            context.connect(service); drainSource(adapter)
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
            adapter.start { snapshots += it }; context.connect(service); drainSource(adapter)
            assertEquals("USB音乐", snapshots.last().source)
            service.raw = 11; service.changed(); drainSource(adapter)
            assertEquals("本机音乐", snapshots.last().source)
            service.raw = 999; service.changed(); drainSource(adapter)
            assertFalse(snapshots.last().dataAvailable)
            service.raw = 10; service.rejectRead = true; service.changed(); drainSource(adapter)
            assertFalse(snapshots.last().dataAvailable)
        } finally { adapter.stop() }
    }

    @Test fun callbackAndConnectionFromStoppedLifecycleCannotPolluteRestartedAdapter() {
        val context = SourceContext(RuntimeEnvironment.getApplication())
        context.installStatusService()
        val adapter = ContentMediaAdapter(context)
        val snapshots = mutableListOf<ContentPorts.MediaSnapshot>()
        val old = SourceBinder(6)
        try {
            adapter.start { snapshots += it }; context.connect(old); drainSource(adapter)
            val oldConnection = context.connection!!
            val oldCallback = old.callback!!
            adapter.stop()
            adapter.start { snapshots += it }
            val current = SourceBinder(4)
            context.connect(current); drainSource(adapter)
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
            context.connect(wrong); drainSource(adapter)
            assertEquals(0, wrong.reads)
            assertFalse(snapshots.last().dataAvailable)
        } finally { adapter.stop() }
    }

    private fun drainSource(adapter: ContentMediaAdapter) {
        val worker = ContentMediaAdapter::class.java.getDeclaredField("sourceHandler").apply { isAccessible = true }
            .get(adapter) as Handler
        val drained = CountDownLatch(1)
        worker.post { drained.countDown() }
        assertTrue(drained.await(2, TimeUnit.SECONDS))
        shadowOf(Looper.getMainLooper()).idle()
    }

    private class SourceContext(base: Context) : ContextWrapper(base) {
        var binds = 0; var unbinds = 0
        var connection: ServiceConnection? = null
        var lastCommand: Intent? = null
        override fun getApplicationContext(): Context = this
        override fun bindService(intent: Intent, connection: ServiceConnection, flags: Int): Boolean {
            assertEquals(COMPONENT, intent.component)
            binds++; this.connection = connection; return true
        }
        override fun unbindService(connection: ServiceConnection) { unbinds++ }
        override fun startService(intent: Intent): ComponentName {
            lastCommand = intent; return intent.component!!
        }
        fun connect(service: IBinder) { connection!!.onServiceConnected(COMPONENT, service) }
        fun installStatusService(exported: Boolean = true, info: ServiceInfo = ServiceInfo().apply {
            name = COMPONENT.className; packageName = COMPONENT.packageName; enabled = true; this.exported = exported
            applicationInfo = ApplicationInfo().apply { packageName = COMPONENT.packageName; enabled = true }
        }): ServiceInfo {
            val pm = shadowOf(packageManager)
            pm.addOrUpdateService(info)
            pm.addResolveInfoForIntent(Intent(ACTION).setPackage(COMPONENT.packageName), ResolveInfo().apply { serviceInfo = info })
            return info
        }
    }

    private class SourceBinder(@Volatile var raw: Int, descriptor: String = SOURCE_DESCRIPTOR) : Binder() {
        @Volatile var callback: IBinder? = null
        @Volatile var reads = 0
        var rejectRead = false
        val transactions = mutableListOf<Int>()
        init { attachInterface(null, descriptor) }
        override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
            if (code !in listOf(1, 2, 6)) return super.onTransact(code, data, reply, flags)
            data.enforceInterface(SOURCE_DESCRIPTOR)
            transactions += code
            if (code == 6) {
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

    companion object {
        private const val ACTION = "mengbo.com.mediaservice.PlayControlCheryAction"
        private const val SOURCE_DESCRIPTOR = "com.mengbo.mediaservice.IPlayControlsInterface"
        private const val CALLBACK_DESCRIPTOR = "com.mengbo.mediaservice.IPlayInfoCallBack"
        private val COMPONENT = ComponentName("com.tencent.wecarflow", "com.mengbo.multimedia.local.service.PlayControlCheryService")
    }
}
