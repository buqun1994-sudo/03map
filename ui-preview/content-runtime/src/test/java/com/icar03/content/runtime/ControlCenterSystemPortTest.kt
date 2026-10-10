package com.icar03.content.runtime

import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.os.Looper
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentState
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.ui.ContentEvent
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotSame
import org.junit.Assert.assertNull
import org.junit.Assert.assertSame
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.util.concurrent.ExecutorService
import java.util.concurrent.TimeUnit

/** Runtime contracts for the verified SystemUI control-center entry. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ControlCenterSystemPortTest {
    @Test
    fun androidSystemPortSendsOnlyTheVerifiedRegisteredOnlyBroadcastAndStopsAfterClose() {
        val context = RecordingBroadcastContext(RuntimeEnvironment.getApplication())
        val port = ContentPorts.AndroidSystemPort(context)
        try {
            assertTrue(port.controlCenterAvailable())
            assertTrue(port.openControlCenter())
            assertEquals(1, context.sent.size)
            val intent = context.sent.single()
            assertEquals("action.plugin.test.open.ac", intent.action)
            assertEquals("com.android.systemui", intent.`package`)
            assertEquals(Intent.FLAG_RECEIVER_REGISTERED_ONLY, intent.flags)

            port.close()
            assertFalse(port.controlCenterAvailable())
            assertFalse(port.openControlCenter())
            assertEquals("closed port must not send again", 1, context.sent.size)
        } finally {
            port.close()
        }
    }

    @Test
    fun androidSystemPortConvertsBroadcastDispatchExceptionsToARejectedAction() {
        val context = RecordingBroadcastContext(RuntimeEnvironment.getApplication(), throwOnSend = true)
        val port = ContentPorts.AndroidSystemPort(context)
        try {
            assertTrue(port.controlCenterAvailable())
            assertFalse(port.openControlCenter())
            assertEquals(1, context.attempts)
            assertTrue("a failed send does not disable the cached capability by itself", port.controlCenterAvailable())
        } finally {
            port.close()
        }
    }

    @Test
    fun bindingUsesOnlyTheSystemPortAndAppliesLifecycleSettingsAndSourcesGates() {
        val system = CountingSystemPort()
        val store = store(system)
        val binding = ContentBinding(store)
        try {
            assertFalse("inactive binding must reject the action", binding.canDispatch(ContentEvent.ControlCenterTapped))
            binding.dispatch(ContentEvent.ControlCenterTapped)
            assertEquals(0, system.openCalls)

            binding.start()
            drain(binding)
            assertTrue(binding.state.value.controlCenterAvailable)
            binding.dispatch(ContentEvent.ControlCenterTapped)
            binding.dispatch(ContentEvent.ControlCenterTapped)
            assertEquals("two accepted taps become two port requests", 2, system.openCalls)
            assertTrue("dispatch does not manufacture a selected/readback state", binding.state.value.controlCenterAvailable)
            assertNull(binding.state.value.message)

            binding.dispatch(ContentEvent.SettingsTapped)
            assertTrue(binding.state.value.settingsOpen)
            assertFalse("settings owns the modal input gate", binding.canDispatch(ContentEvent.ControlCenterTapped))
            binding.dispatch(ContentEvent.ControlCenterTapped)
            assertEquals(2, system.openCalls)
            binding.dispatch(ContentEvent.SettingsTapped)
            assertFalse(binding.state.value.settingsOpen)

            binding.dispatch(ContentEvent.OpenSources)
            assertTrue("source-capable media opens the source sheet", binding.state.value.sourcesOpen)
            assertFalse("source sheet owns the modal input gate", binding.canDispatch(ContentEvent.ControlCenterTapped))
            binding.dispatch(ContentEvent.ControlCenterTapped)
            assertEquals(2, system.openCalls)
        } finally {
            binding.close()
            store.destroy()
        }
    }

    @Test
    fun unavailablePortRejectsActionsAndTransientSendFailureRemainsRetryable() {
        val system = CountingSystemPort().apply { available = false }
        val store = store(system)
        val binding = ContentBinding(store)
        try {
            binding.start()
            drain(binding)
            assertFalse(binding.state.value.controlCenterAvailable)
            binding.dispatch(ContentEvent.ControlCenterTapped)
            assertEquals(0, system.openCalls)

            system.available = true
            system.openResult = false
            binding.stop()
            assertFalse(binding.state.value.controlCenterAvailable)
            binding.start()
            drain(binding)
            assertTrue(binding.state.value.controlCenterAvailable)
            binding.dispatch(ContentEvent.ControlCenterTapped)
            assertEquals(1, system.openCalls)
            assertTrue("send failure is not capability loss", binding.state.value.controlCenterAvailable)
            assertEquals("控制中心打开失败，请稍后重试", binding.state.value.message)

            system.openResult = true
            binding.dispatch(ContentEvent.ControlCenterTapped)
            assertEquals("retry works without restarting the binding", 2, system.openCalls)

            system.available = false
            observeSystem(binding)
            assertFalse("the existing observation loop publishes real capability loss", binding.state.value.controlCenterAvailable)
            binding.dispatch(ContentEvent.ControlCenterTapped)
            assertEquals(2, system.openCalls)

            system.available = true
            observeSystem(binding)
            assertTrue("the same owner recovers a restored capability", binding.state.value.controlCenterAvailable)
            binding.dispatch(ContentEvent.ControlCenterTapped)
            assertEquals(3, system.openCalls)
        } finally {
            binding.close()
            store.destroy()
        }
    }

    @Test
    fun bindingDoesNotLetAThrowingSystemPortEscapeTheAcceptedAction() {
        val system = CountingSystemPort().apply { throwOnOpen = true }
        val store = store(system)
        val binding = ContentBinding(store)
        try {
            binding.start()
            drain(binding)
            try {
                binding.dispatch(ContentEvent.ControlCenterTapped)
            } catch (exception: RuntimeException) {
                fail("SystemPort exceptions must be reduced to rejected action feedback: ${exception::class.java.simpleName}")
            }
            assertEquals(1, system.openCalls)
            assertTrue("throwing send retains a live port capability", binding.state.value.controlCenterAvailable)
            assertEquals("控制中心打开失败，请稍后重试", binding.state.value.message)
            system.throwOnOpen = false
            binding.dispatch(ContentEvent.ControlCenterTapped)
            assertEquals(2, system.openCalls)
        } finally {
            binding.close()
            store.destroy()
        }
    }

    @Test
    fun mapperCachesControlCenterCapabilityWithoutRepublishingLyrics() {
        val state = ContentState()
        val mapper = ContentUiMapper()
        val lyrics = mapper.mapLyrics(state)
        val lyricsProjectionCount = mapper.lyricsProjectionCount
        val enabledCapabilities = RuntimeCapabilities(controlCenter = true)
        val enabled = mapper.mapShell(
            state,
            ContentPorts.SystemSnapshot(false, 0),
            ContentPorts.SystemSnapshot(false, 0),
            enabledCapabilities,
        )
        assertTrue(enabled.controlCenterAvailable)
        assertSame(enabled, mapper.mapShell(
            state,
            ContentPorts.SystemSnapshot(false, 0),
            ContentPorts.SystemSnapshot(false, 0),
            enabledCapabilities,
        ))

        val disabled = mapper.mapShell(
            state,
            ContentPorts.SystemSnapshot(false, 0),
            ContentPorts.SystemSnapshot(false, 0),
            RuntimeCapabilities(controlCenter = false),
        )
        assertNotSame(enabled, disabled)
        assertFalse(disabled.controlCenterAvailable)
        assertSame(lyrics, mapper.mapLyrics(state))
        assertEquals(lyricsProjectionCount, mapper.lyricsProjectionCount)
    }

    private fun store(system: ContentPorts.SystemPort): ContentStore = ContentStore(
        RuntimeEnvironment.getApplication(),
        ContentPorts.PreviewVehiclePort(),
        SourceMediaPort(),
        system,
    )

    private fun observeSystem(binding: ContentBinding) {
        ContentBinding::class.java.getDeclaredMethod("requestSystemRead").apply { isAccessible = true }.invoke(binding)
        drain(binding)
    }

    private fun drain(binding: ContentBinding) {
        val worker = ContentBinding::class.java.getDeclaredField("systemWorker")
            .apply { isAccessible = true }
            .get(binding) as ExecutorService
        repeat(2) {
            worker.submit {}.get(2, TimeUnit.SECONDS)
            shadowOf(Looper.getMainLooper()).idle()
        }
    }

    private class RecordingBroadcastContext(
        base: Context,
        private val throwOnSend: Boolean = false,
    ) : ContextWrapper(base) {
        val sent = mutableListOf<Intent>()
        var attempts = 0

        override fun getApplicationContext(): Context = this

        override fun sendBroadcast(intent: Intent) {
            attempts++
            if (throwOnSend) throw SecurityException("broadcast denied")
            sent += Intent(intent)
        }
    }

    private class CountingSystemPort : ContentPorts.SystemPort {
        var available = true
        var openResult = true
        var throwOnOpen = false
        var openCalls = 0

        override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
        override fun write(kind: Int, percent: Int) = false
        override fun controlCenterAvailable() = available
        override fun openControlCenter(): Boolean {
            openCalls++
            if (throwOnOpen) throw IllegalStateException("control center unavailable")
            return openResult
        }
    }

    private class SourceMediaPort : ContentPorts.MediaPort {
        override fun isAvailable() = false
        override fun isSourceAvailable() = true
        override fun requestPlayback(playing: Boolean) = false
        override fun requestNext() = false
        override fun requestSource(source: String) = false
        override fun start(listener: ContentPorts.MediaSnapshotListener) {
            listener.onMediaSnapshot(ContentPorts.MediaSnapshot.unavailable())
        }
        override fun stop() = Unit
    }
}
