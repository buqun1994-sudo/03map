package com.autonavi.amapauto.content

import android.content.ComponentName
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.ServiceConnection
import android.os.Binder
import android.os.IBinder
import android.os.Parcel
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.runner.RunWith
import org.junit.Test
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class CarAudioSystemPortTest {
    @Test fun writeReportsBinderCommitBeforeAnAsynchronousReadback() {
        val audio = FakeCarAudio().apply {
            values[3] = 7
            deferWrites = true
        }
        val context = AudioContext(RuntimeEnvironment.getApplication(), FakeAudioRoot(audio))
        val port = ContentPorts.AndroidSystemPort(context)

        assertFalse(port.read(4).matches(50))
        assertTrue(port.write(4, 50))
        assertFalse("the Binder commit must not masquerade as immediate readback", port.read(4).matches(50))
        audio.applyPendingWrites()
        assertTrue(port.read(4).matches(50))
        port.close()
    }

    @Test fun carAudioLookupReadsAndWritesEachConfirmedGroupIndependently() {
        val audio = FakeCarAudio().apply {
            values[0] = 16
            values[1] = 5
            values[2] = 15
            values[3] = 7
        }
        val context = AudioContext(RuntimeEnvironment.getApplication(), FakeAudioRoot(audio))
        val port = ContentPorts.AndroidSystemPort(context)

        assertEquals(52, port.read(1).percent)
        assertEquals(47, port.read(2).percent)
        assertEquals(50, port.read(3).percent)
        assertEquals(63, port.read(4).percent)
        assertEquals(listOf(1, 2, 12, 11), audio.usageQueries)
        assertEquals(listOf(0, 0, 2, 2, 1, 1, 3, 3), audio.rangeQueries)

        assertTrue(port.write(4, 50))
        assertEquals(6, audio.values[3])
        assertEquals(50, port.read(4).percent)
        port.close()
        assertEquals(1, context.unbinds)
    }

    private class AudioContext(base: Context, private val root: IBinder) : ContextWrapper(base) {
        var unbinds = 0
        override fun getApplicationContext(): Context = this
        override fun bindService(intent: Intent, connection: ServiceConnection, flags: Int): Boolean {
            assertEquals("com.mengbo.media.IAudio", intent.action)
            assertEquals("com.mengbo.media", intent.`package`)
            connection.onServiceConnected(ComponentName("com.mengbo.media", "AudioService"), root)
            return true
        }
        override fun unbindService(connection: ServiceConnection) {
            unbinds++
        }
    }

    private class FakeAudioRoot(private val audio: IBinder) : Binder() {
        init { attachInterface(null, "com.mengbo.media.client.IAudio") }
        override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
            if (code != 1) return super.onTransact(code, data, reply, flags)
            data.enforceInterface("com.mengbo.media.client.IAudio")
            assertEquals("mb_audio_service", data.readString())
            requireNotNull(reply).writeNoException()
            reply.writeStrongBinder(audio)
            return true
        }
    }

    private class FakeCarAudio : Binder() {
        val values = IntArray(4)
        val usageQueries = mutableListOf<Int>()
        val rangeQueries = mutableListOf<Int>()
        var deferWrites = false
        private val pendingWrites = IntArray(4) { Int.MIN_VALUE }

        fun applyPendingWrites() {
            for (group in pendingWrites.indices) {
                if (pendingWrites[group] != Int.MIN_VALUE) {
                    values[group] = pendingWrites[group]
                    pendingWrites[group] = Int.MIN_VALUE
                }
            }
        }

        init { attachInterface(null, "com.mengbo.media.client.ICarAudio") }
        override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
            data.enforceInterface("com.mengbo.media.client.ICarAudio")
            when (code) {
                23 -> {
                    val usage = data.readInt()
                    usageQueries += usage
                    requireNotNull(reply).writeNoException()
                    reply.writeInt(mapOf(1 to 0, 2 to 2, 12 to 1, 11 to 3).getValue(usage))
                }
                2 -> {
                    val group = data.readInt()
                    rangeQueries += group
                    requireNotNull(reply).writeNoException()
                    reply.writeInt(if (group == 2) 31 else if (group == 3) 10 else if (group == 1) 10 else 31)
                }
                3 -> {
                    val group = data.readInt()
                    rangeQueries += group
                    requireNotNull(reply).writeNoException()
                    reply.writeInt(if (group == 2) 1 else if (group == 3) 2 else 0)
                }
                4 -> {
                    requireNotNull(reply).writeNoException()
                    reply.writeInt(values[data.readInt()])
                }
                1 -> {
                    val group = data.readInt()
                    val value = data.readInt()
                    data.readInt()
                    if (deferWrites) pendingWrites[group] = value else values[group] = value
                    requireNotNull(reply).writeNoException()
                }
                else -> return super.onTransact(code, data, reply, flags)
            }
            return true
        }
    }
}
