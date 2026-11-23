package com.icar03.content.runtime

import android.app.Activity
import android.content.ActivityNotFoundException
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Looper
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentStore
import com.autonavi.amapauto.content.ContentVehicleConfig
import com.icar03.content.ui.ContentEvent
import com.icar03.content.ui.ControlCenterEditAction
import com.icar03.content.ui.LayoutAction
import com.icar03.content.ui.SettingsSection
import org.json.JSONObject
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.io.ByteArrayInputStream
import java.io.File
import java.io.InputStream
import java.io.InterruptedIOException
import java.time.Duration
import java.util.concurrent.CountDownLatch
import java.util.concurrent.ExecutorService
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger

/** Real Activity picker launches, resolver streams, atomic saves and Binding pause/resume/close. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], shadows = [ContentVehicleConfigAtomicOsShadow::class])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentVehicleConfigImportBindingTest {
    private val app: Context get() = RuntimeEnvironment.getApplication()
    private val imported get() = File(app.filesDir, "vehicle-config.json")
    private val importAction = LayoutAction(ControlCenterEditAction.ImportVehicleConfig)
    private val fixtures = mutableListOf<Fixture>()
    private val documents = mutableListOf<Document>()

    @Before fun prepare() {
        discardProcessSession()
        app.getSharedPreferences("vehicle_config_import_session_v1", Context.MODE_PRIVATE).edit().clear().commit()
        check(imported.canonicalFile.parentFile == app.filesDir.canonicalFile)
        check(!imported.exists())
        app.getSharedPreferences("content_preferences_v1", Context.MODE_PRIVATE).edit().clear().commit()
        app.getSharedPreferences("vehicle_config_self_check_v2", Context.MODE_PRIVATE).edit().clear().commit()
        ContentVehicleConfigAtomicOsShadow.reset()
    }

    @After fun cleanup() {
        documents.forEach { it.stream.release.countDown() }
        fixtures.forEach { it.close() }
        drainConfig()
        shadowOf(Looper.getMainLooper()).idle()
        discardProcessSession()
        check(imported.canonicalFile.parentFile == app.filesDir.canonicalFile)
        imported.delete()
        ContentVehicleConfigAtomicOsShadow.reset()
    }

    @Test fun onlySuccessfulPickerLaunchArmsOneResultAndCancelOrEmptyResultAllowsRetry() {
        val f = fixture()
        val document = document(profile("未选择的配置"))
        assertFalse(f.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))

        f.openPicker()
        assertFalse(f.binding.canDispatch(importAction))
        f.binding.dispatch(importAction)
        assertNull("a pending picker never launches another document activity", shadowOf(f.activity).nextStartedActivityForResult)
        assertTrue(f.binding.onVehicleConfigResult(Activity.RESULT_CANCELED, null))
        assertFalse("cancel consumes the pending result once", f.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))
        assertEquals(0, document.opens.get())
        assertFalse(imported.exists())

        f.openPicker()
        assertTrue(f.binding.onVehicleConfigResult(Activity.RESULT_OK, Intent()))
        assertFalse("a result without a document also resets the pending picker", f.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))
        assertEquals(0, document.opens.get())

        f.activity.failNextPicker = true
        assertTrue(f.binding.canDispatch(importAction))
        f.binding.dispatch(importAction)
        assertNull(shadowOf(f.activity).nextStartedActivityForResult)
        assertEquals("无法打开配置文件选择器", f.binding.state.value.message)
        assertFalse("a failed launch must not accept any later result", f.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))
        assertEquals(0, document.opens.get())
        f.openPicker()
        assertTrue(f.binding.onVehicleConfigResult(Activity.RESULT_CANCELED, null))
    }

    @Test fun validShortReadsSaveEveryByteOffMainAndPausedCompletionIsShownAfterResume() {
        val bytes = profile("导入测试 · 完整正文") + "\n  ".toByteArray(Charsets.UTF_8)
        val document = document(bytes, blocked = true)
        val f = fixture()
        f.openPicker()
        assertTrue(f.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))
        assertFalse("one chosen URI is imported once", f.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))
        assertTrue(document.stream.entered.await(3, TimeUnit.SECONDS))
        assertFalse(document.openedOnMain.get())
        assertFalse(document.stream.readOnMain.get())
        assertFalse(imported.exists())

        f.pause()
        document.stream.release.countDown()
        drainConfig()
        shadowOf(Looper.getMainLooper()).idle()
        assertArrayEquals(bytes, imported.readBytes())
        assertEquals(bytes.size, document.stream.bytesRead.get())
        assertEquals(1, document.opens.get())
        assertEquals(1, document.stream.closeCalls.get())
        assertTrue(ContentVehicleConfig.validate(imported.readBytes()).isValid)
        assertFalse(f.binding.active.value)
        assertNull("paused content has no result overlay", f.binding.state.value.message)
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(10))

        f.resume()
        assertEquals("配置已保存，下次冷启动后生效", f.binding.state.value.message)
        assertTrue(f.binding.state.value.settingsOpen)
        assertEquals(SettingsSection.VehicleConfig, f.binding.state.value.settingsSection)
        assertTrue("completed import releases the next picker", f.binding.canDispatch(importAction))
    }

    @Test fun malformedTruncatedAndOversizeDocumentsKeepThePreviousImportAndCloseTheirStreams() {
        val previous = profile("已保存的原配置")
        assertTrue(ContentVehicleConfig.saveImported(app, previous))
        val renameCalls = ContentVehicleConfigAtomicOsShadow.renameCalls
        val f = fixture()
        val valid = profile("候选配置")
        val oversize = ByteArray(ContentVehicleConfig.MAX_CONFIG_BYTES + 1) { ' '.code.toByte() }
        valid.copyInto(oversize)
        for (bytes in listOf("{bad json}".toByteArray(), valid.copyOf(valid.size / 2), oversize)) {
            val document = document(bytes)
            f.openPicker()
            assertTrue(f.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))
            drainConfig()
            shadowOf(Looper.getMainLooper()).idle()
            assertArrayEquals("failed import must preserve the complete previous file", previous, imported.readBytes())
            assertEquals(renameCalls, ContentVehicleConfigAtomicOsShadow.renameCalls)
            assertEquals("配置校验或保存失败，原配置已保留", f.binding.state.value.message)
            assertEquals(1, document.opens.get())
            assertEquals(1, document.stream.closeCalls.get())
            assertFalse(document.openedOnMain.get())
            assertFalse(document.stream.readOnMain.get())
            assertFalse(f.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))
            assertTrue("failure must allow a fresh picker attempt", f.binding.canDispatch(importAction))
        }
    }

    @Test fun closingTheBindingKeepsAcceptedReadAndOnlyTheReplacementReceivesCompletion() {
        val previous = profile("关闭前的原配置")
        assertTrue(ContentVehicleConfig.saveImported(app, previous))
        val f = fixture()
        val bytes = profile("已接受且不应丢失的配置")
        val document = document(bytes, blocked = true)
        f.openPicker()
        assertTrue(f.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))
        assertTrue(document.stream.entered.await(3, TimeUnit.SECONDS))

        f.binding.close()
        val closedState = f.binding.state.value
        assertFalse("Activity close is not cancellation of an accepted application save", document.stream.interrupted.get())
        assertFalse(f.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))
        val replacement = fixture()
        assertTrue(replacement.binding.state.value.settingsOpen)
        assertEquals(SettingsSection.VehicleConfig, replacement.binding.state.value.settingsSection)
        document.stream.release.countDown()
        drainConfig()
        shadowOf(Looper.getMainLooper()).idle()
        assertSame("a late completion cannot publish into a closed binding", closedState, f.binding.state.value)
        assertFalse(f.binding.active.value)
        assertFalse(f.binding.canDispatch(importAction))
        assertArrayEquals(bytes, imported.readBytes())
        assertEquals("配置已保存，下次冷启动后生效", replacement.binding.state.value.message)
        assertEquals(1, document.opens.get())
        assertEquals(1, document.stream.closeCalls.get())
    }

    @Test fun pauseBetweenAtomicSaveAndMainCompletionKeepsFeedbackAndAllowsTheNextImport() {
        val f = fixture()
        val bytes = profile("暂停前已完成保存")
        val document = document(bytes)
        f.openPicker()
        assertTrue(f.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))
        // Finish the real worker without running the queued main completion yet.
        drainConfig()
        assertArrayEquals(bytes, imported.readBytes())
        assertNull(f.binding.state.value.message)

        f.pause()
        shadowOf(Looper.getMainLooper()).idle()
        assertNull(f.binding.state.value.message)
        f.resume()
        assertEquals("配置已保存，下次冷启动后生效", f.binding.state.value.message)
        assertTrue(f.binding.state.value.settingsOpen)
        assertEquals(SettingsSection.VehicleConfig, f.binding.state.value.settingsSection)
        assertTrue("pause must not strand an already completed import", f.binding.canDispatch(importAction))
        assertEquals(1, document.opens.get())
        assertEquals(1, document.stream.closeCalls.get())
    }

    @Test fun recoveredPickingRequestCanReopenItsSystemWindowWithoutDuplicatingTheCapability() {
        val original = fixture()
        original.openPicker()
        val requestId = VehicleConfigImportSession.get(app).snapshot.requestId
        assertEquals("Picking", persistedRequest().getString("phase"))
        assertEquals(requestId, persistedRequest().getString("requestId"))
        original.close()
        discardProcessSession()
        val replacement = fixture()
        replacement.openPicker()
        assertEquals(requestId, VehicleConfigImportSession.get(app).snapshot.requestId)
        assertFalse(replacement.binding.canDispatch(importAction))
        replacement.binding.dispatch(importAction)
        assertNull(shadowOf(replacement.activity).nextStartedActivityForResult)
        assertTrue(replacement.binding.onVehicleConfigResult(Activity.RESULT_CANCELED, null))
        assertTrue(replacement.binding.canDispatch(importAction))
        assertEquals(SettingsSection.VehicleConfig, replacement.binding.state.value.settingsSection)
    }

    @Test fun pickerResultSurvivesBothActivityReplacementAndDiscardedProcessMemory() {
        val document = document(profile("重建后返回的配置"))
        val original = fixture()
        original.openPicker()
        original.pause()
        assertTrue(original.binding.state.value.settingsOpen)
        assertEquals(SettingsSection.VehicleConfig, original.binding.state.value.settingsSection)
        original.close()
        discardProcessSession()

        val replacement = fixture()
        assertTrue(replacement.binding.state.value.settingsOpen)
        assertEquals(SettingsSection.VehicleConfig, replacement.binding.state.value.settingsSection)
        assertTrue("a recovered picking request can reopen a missing system picker", replacement.binding.canDispatch(importAction))
        assertTrue(replacement.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))
        drainConfig()
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals("配置已保存，下次冷启动后生效", replacement.binding.state.value.message)
        assertEquals(1, document.opens.get())
        assertEquals(1, document.stream.closeCalls.get())
        assertTrue(ContentVehicleConfig.validate(imported.readBytes()).isValid)
        assertFalse(replacement.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))
    }

    @Test fun resultAcceptedWithoutAnyBindingIsDeliveredWhenTheNewOwnerAttaches() {
        val bytes = profile("Host建立前返回的配置")
        val document = document(bytes)
        val original = fixture()
        original.openPicker()
        original.close()
        discardProcessSession()
        assertFalse(VehicleConfigImportSession.onActivityResult(app, 999, Activity.RESULT_OK, document.result()))
        assertTrue(VehicleConfigImportSession.onActivityResult(app, VehicleConfigImportSession.REQUEST_CODE,
            Activity.RESULT_OK, document.result()))
        drainConfig()
        val replacement = fixture()
        shadowOf(Looper.getMainLooper()).idle()
        assertArrayEquals(bytes, imported.readBytes())
        assertTrue(replacement.binding.state.value.settingsOpen)
        assertEquals(SettingsSection.VehicleConfig, replacement.binding.state.value.settingsSection)
        assertEquals("配置已保存，下次冷启动后生效", replacement.binding.state.value.message)
        assertFalse(VehicleConfigImportSession.onActivityResult(app, VehicleConfigImportSession.REQUEST_CODE,
            Activity.RESULT_OK, document.result()))
        assertEquals(1, document.opens.get())
    }

    @Test fun acceptedDocumentUriResumesAfterProcessDeathBeforeThePayloadWasStaged() {
        val bytes = profile("读取中进程恢复的配置")
        val document = document(bytes, blocked = true)
        val original = fixture()
        original.openPicker()
        assertTrue(original.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))
        assertTrue(document.stream.entered.await(3, TimeUnit.SECONDS))
        assertEquals("Reading", persistedRequest().getString("phase"))
        assertEquals(document.uri.toString(), persistedRequest().getString("uri"))
        original.close()
        discardProcessSession()
        assertTrue(document.stream.interrupted.get())
        assertEquals(1, document.stream.closeCalls.get())
        assertFalse(imported.exists())
        val resumed = DocumentStream(bytes, blocked = false)
        shadowOf(app.contentResolver).registerInputStreamSupplier(document.uri) {
            document.opens.incrementAndGet()
            resumed
        }
        val replacement = fixture()
        drainConfig()
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(2, document.opens.get())
        assertEquals(1, resumed.closeCalls.get())
        assertFalse(resumed.readOnMain.get())
        assertArrayEquals(bytes, imported.readBytes())
        assertEquals("配置已保存，下次冷启动后生效", replacement.binding.state.value.message)
        assertEquals(SettingsSection.VehicleConfig, replacement.binding.state.value.settingsSection)
    }

    @Test fun processRestartAfterAtomicReplaceReusesTheSyncedPayloadWithoutAnotherWrite() {
        val bytes = profile("提交后进程恢复的配置")
        val document = document(bytes)
        val original = fixture()
        original.openPicker()
        assertTrue(original.binding.onVehicleConfigResult(Activity.RESULT_OK, document.result()))
        drainConfig()
        assertArrayEquals(bytes, imported.readBytes())
        val journal = persistedRequest()
        assertEquals("Committing", journal.getString("phase"))
        val committedRenames = ContentVehicleConfigAtomicOsShadow.renameCalls
        original.close()
        // The old main completion has not run. Drop every in-memory request/observer/handler as process death would.
        discardProcessSession()
        val replacement = fixture()
        drainConfig()
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals("recovery must not rename an identical accepted payload again", committedRenames,
            ContentVehicleConfigAtomicOsShadow.renameCalls)
        assertEquals("recovery uses the synced private payload, not another provider read", 1, document.opens.get())
        assertArrayEquals(bytes, imported.readBytes())
        assertEquals(SettingsSection.VehicleConfig, replacement.binding.state.value.settingsSection)
        assertEquals("配置已保存，下次冷启动后生效", replacement.binding.state.value.message)
        assertTrue(replacement.binding.canDispatch(importAction))
    }

    /** A real Activity; only launch failure is injected, while successful calls reach its shadow. */
    class PickerActivity : Activity() {
        var failNextPicker = false
        override fun startActivityForResult(intent: Intent, requestCode: Int) {
            if (intent.action == Intent.ACTION_OPEN_DOCUMENT && failNextPicker) {
                failNextPicker = false
                throw ActivityNotFoundException("document picker removed")
            }
            super.startActivityForResult(intent, requestCode)
        }
    }

    private inner class Fixture : AutoCloseable {
        private val controller = Robolectric.buildActivity(PickerActivity::class.java).setup()
        val activity: PickerActivity = controller.get()
        private val store = ContentStore(app, ContentPorts.PreviewVehiclePort(), ContentPorts.PreviewMediaPort(),
            object : ContentPorts.SystemPort {
                override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
                override fun write(kind: Int, percent: Int) = false
            })
        val binding = ContentBinding(store)
        init {
            binding.observeEnvironment(activity)
            binding.start()
            drainSystem()
        }
        fun selectVehicleConfig() {
            if (!binding.state.value.settingsOpen) binding.dispatch(ContentEvent.SettingsTapped)
            binding.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.VehicleConfig))
            assertEquals(SettingsSection.VehicleConfig, binding.state.value.settingsSection)
        }
        fun openPicker() {
            selectVehicleConfig()
            assertTrue(binding.canDispatch(importAction))
            binding.dispatch(importAction)
            val request = requireNotNull(shadowOf(activity).nextStartedActivityForResult)
            assertEquals(0x1CA03, request.requestCode)
            assertEquals(Intent.ACTION_OPEN_DOCUMENT, request.intent.action)
            assertEquals("application/json", request.intent.type)
            assertTrue(Intent.CATEGORY_OPENABLE in request.intent.categories.orEmpty())
            assertTrue(request.intent.flags and Intent.FLAG_GRANT_READ_URI_PERMISSION != 0)
            assertTrue(request.intent.flags and Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION != 0)
            assertNull(shadowOf(activity).nextStartedActivityForResult)
        }
        fun pause() { binding.stop(); controller.pause() }
        fun resume() { controller.resume(); binding.start(); drainSystem() }
        private fun drainSystem() {
            val worker = ContentBinding::class.java.getDeclaredField("systemWorker")
                .apply { isAccessible = true }.get(binding) as ExecutorService
            worker.submit {}.get(3, TimeUnit.SECONDS)
            shadowOf(Looper.getMainLooper()).idle()
        }
        private var disposed = false
        override fun close() {
            if (disposed) return
            disposed = true
            binding.close()
            store.destroy()
            controller.pause().stop().destroy()
        }
    }

    private fun fixture() = Fixture().also(fixtures::add)
    private fun profile(name: String): ByteArray = app.assets.open("content-vehicle/icar03.json").use {
        JSONObject(it.readBytes().toString(Charsets.UTF_8)).put("displayName", name)
            .toString(2).toByteArray(Charsets.UTF_8)
    }.also { assertTrue("test profile must satisfy the real compiled contract", ContentVehicleConfig.validate(it).isValid) }

    private class Document(val uri: Uri, val stream: DocumentStream) {
        val opens = AtomicInteger()
        val openedOnMain = AtomicBoolean()
        fun result() = Intent().setData(uri).addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION)
    }
    private fun document(bytes: ByteArray, blocked: Boolean = false): Document {
        val document = Document(Uri.parse("content://config-import-test/document/${documents.size}"), DocumentStream(bytes, blocked))
        documents += document
        // Supply a provider-like stream through the actual ContentResolver API used by Binding.
        shadowOf(app.contentResolver).registerInputStreamSupplier(document.uri) {
            document.opens.incrementAndGet()
            if (Thread.currentThread() === Looper.getMainLooper().thread) document.openedOnMain.set(true)
            document.stream
        }
        return document
    }

    /** Short reads and an interruptible gate model a slow document provider without sleeps. */
    private class DocumentStream(bytes: ByteArray, blocked: Boolean) : InputStream() {
        private val body = ByteArrayInputStream(bytes)
        val entered = CountDownLatch(1)
        val release = CountDownLatch(if (blocked) 1 else 0)
        val bytesRead = AtomicInteger()
        val closeCalls = AtomicInteger()
        val readOnMain = AtomicBoolean()
        val interrupted = AtomicBoolean()
        override fun read(buffer: ByteArray, offset: Int, length: Int): Int {
            if (Thread.currentThread() === Looper.getMainLooper().thread) readOnMain.set(true)
            entered.countDown()
            try {
                if (!release.await(5, TimeUnit.SECONDS)) throw InterruptedIOException("document fixture was not released")
            } catch (_: InterruptedException) {
                interrupted.set(true)
                Thread.currentThread().interrupt()
                throw InterruptedIOException("document provider read interrupted")
            }
            val count = body.read(buffer, offset, minOf(length, 257))
            if (count > 0) bytesRead.addAndGet(count)
            return count
        }
        override fun read(): Int {
            val buffer = ByteArray(1)
            return if (read(buffer, 0, 1) < 0) -1 else buffer[0].toInt() and 0xff
        }
        override fun close() { closeCalls.incrementAndGet(); body.close() }
    }

    private fun persistedRequest(): JSONObject {
        val file = File(app.applicationInfo.dataDir, "shared_prefs/vehicle_config_import_session_v1.xml")
        assertTrue("the request must exist on disk before losing process memory", file.isFile)
        val document = javax.xml.parsers.DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(file)
        val strings = document.getElementsByTagName("string")
        for (index in 0 until strings.length) {
            val element = strings.item(index) as org.w3c.dom.Element
            if (element.getAttribute("name") == "request") return JSONObject(element.textContent)
        }
        throw AssertionError("Missing persisted import request")
    }

    // Reflection supplies a worker barrier and discards process memory; recovery reads the real private journal.
    private fun configWorker(session: VehicleConfigImportSession = VehicleConfigImportSession.get(app)): ExecutorService =
        VehicleConfigImportSession::class.java.getDeclaredField("worker").apply { isAccessible = true }.get(session) as ExecutorService
    private fun drainConfig() { configWorker().submit {}.get(3, TimeUnit.SECONDS) }
    private fun discardProcessSession() {
        @Suppress("UNCHECKED_CAST")
        val sessions = VehicleConfigImportSession::class.java.getDeclaredField("sessions").apply { isAccessible = true }
            .get(null) as MutableMap<String, VehicleConfigImportSession>
        sessions.values.toList().forEach { session ->
            val worker = configWorker(session)
            worker.shutdownNow()
            assertTrue(worker.awaitTermination(3, TimeUnit.SECONDS))
            (VehicleConfigImportSession::class.java.getDeclaredField("handler").apply { isAccessible = true }
                .get(session) as android.os.Handler).removeCallbacksAndMessages(null)
        }
        sessions.clear()
    }
}
