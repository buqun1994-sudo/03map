package com.icar03.content.host

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Looper
import android.system.Os
import android.widget.FrameLayout
import com.autonavi.amapauto.content.ContentRuntime
import com.autonavi.amapauto.content.ContentStore
import com.autonavi.amapauto.content.ContentVehicleConfig
import com.icar03.content.runtime.VehicleConfigImportSession
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
import org.robolectric.annotation.GraphicsMode
import org.robolectric.annotation.Implementation
import org.robolectric.annotation.Implements
import java.io.ByteArrayInputStream
import java.io.File
import java.nio.file.Files
import java.nio.file.StandardCopyOption
import java.util.concurrent.ExecutorService
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger

/** Actual production Host/Runtime result entry points, with a real resolver read and atomic profile save. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28], qualifiers = "w1920dp-h1080dp-mdpi", shadows = [ReturnBridgeOsShadow::class])
@GraphicsMode(GraphicsMode.Mode.NATIVE)
class ContentVehicleConfigReturnBridgeTest {
    private val app: Context get() = RuntimeEnvironment.getApplication()
    private val fixtures = mutableListOf<Fixture>()
    private val activities = mutableListOf<org.robolectric.android.controller.ActivityController<ResultActivity>>()

    @Before fun prepare() {
        ContentRuntime.detach(null)
        discardSession()
        app.getSharedPreferences("vehicle_config_import_session_v1", Context.MODE_PRIVATE).edit().clear().commit()
        org.robolectric.shadows.ShadowChoreographer.setPaused(false)
        org.robolectric.shadows.ShadowChoreographer.setFrameDelay(java.time.Duration.ofMillis(16))
    }
    @After fun cleanup() {
        fixtures.forEach { it.close() }
        worker().submit {}.get(3, TimeUnit.SECONDS)
        shadowOf(Looper.getMainLooper()).idle()
        discardSession()
        activities.forEach { it.pause().stop().destroy() }
        ContentRuntime.detach(null)
        val imported = File(app.filesDir, "vehicle-config.json")
        check(imported.canonicalFile.parentFile == app.filesDir.canonicalFile)
        imported.delete()
    }

    class ResultActivity : Activity() {
        var accepted = false
        fun deliverResult(requestCode: Int, resultCode: Int, data: Intent?) { onActivityResult(requestCode, resultCode, data) }
        override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
            super.onActivityResult(requestCode, resultCode, data)
            accepted = ContentRuntime.onActivityResult(this, requestCode, resultCode, data)
        }
    }

    private fun createActivity(): ResultActivity = Robolectric.buildActivity(ResultActivity::class.java).setup()
        .also(activities::add).get()

    private inner class Fixture(val activity: ResultActivity) : AutoCloseable {
        val root = FrameLayout(activity)
        val panel = FrameLayout(activity)
        val store = ContentStore(activity)
        val host: ContentComposeHost
        private var closed = false
        init {
            root.addView(panel)
            activity.setContentView(root)
            host = ContentComposeHost(activity, panel, store)
            host.updateDivider(640f, 640f, 1280f)
            advanceHostFrames(root)
        }
        fun openPicker() {
            val binding = hostBinding(host)
            binding.dispatch(ContentEvent.SettingsTapped)
            binding.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.VehicleConfig))
            binding.dispatch(LayoutAction(ControlCenterEditAction.ImportVehicleConfig))
            val launch = requireNotNull(shadowOf(activity).nextStartedActivityForResult)
            assertEquals(VehicleConfigImportSession.REQUEST_CODE, launch.requestCode)
            assertEquals(Intent.ACTION_OPEN_DOCUMENT, launch.intent.action)
        }
        override fun close() {
            if (closed) return
            closed = true
            host.destroy()
            store.destroy()
        }
    }
    private fun fixture(activity: ResultActivity = createActivity()) = Fixture(activity).also(fixtures::add)

    private fun document(name: String): Pair<Intent, AtomicInteger> {
        val bytes = app.assets.open("content-vehicle/icar03.json").use {
            JSONObject(it.readBytes().toString(Charsets.UTF_8)).put("displayName", name).toString().toByteArray(Charsets.UTF_8)
        }
        assertTrue(ContentVehicleConfig.validate(bytes).isValid)
        val uri = Uri.parse("content://host-config-return/document/${name.hashCode()}")
        val opens = AtomicInteger()
        shadowOf(app.contentResolver).registerInputStreamSupplier(uri) {
            assertNotSame("provider IO must stay off main", Looper.getMainLooper().thread, Thread.currentThread())
            opens.incrementAndGet()
            ByteArrayInputStream(bytes)
        }
        return Intent().setData(uri).addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION) to opens
    }

    @Test fun runtimeActivityResultCanArriveBeforeAnyReplacementContentHostExists() {
        val original = fixture()
        original.openPicker()
        original.close()
        val replacementActivity = createActivity()
        val (result, opens) = document("宿主挂载前的系统结果")
        replacementActivity.deliverResult(22, Activity.RESULT_OK, result)
        assertFalse(replacementActivity.accepted)
        replacementActivity.deliverResult(VehicleConfigImportSession.REQUEST_CODE, Activity.RESULT_OK, result)
        assertTrue(replacementActivity.accepted)
        worker().submit {}.get(3, TimeUnit.SECONDS)
        val replacement = fixture(replacementActivity)
        advanceHostFrames(replacement.root)
        val state = hostBinding(replacement.host).state.value
        assertTrue(state.settingsOpen)
        assertEquals(SettingsSection.VehicleConfig, state.settingsSection)
        assertEquals("配置已保存，下次冷启动后生效", state.message)
        assertEquals(1, opens.get())
        assertTrue(ContentVehicleConfig.load(app).isValid)
        replacementActivity.deliverResult(VehicleConfigImportSession.REQUEST_CODE, Activity.RESULT_OK, result)
        assertFalse(replacementActivity.accepted)
        assertEquals(1, opens.get())
    }

    @Test fun replacementHostAcceptsTheOldPickerCapabilityWithoutAnInstancePendingFlag() {
        val original = fixture()
        original.openPicker()
        original.close()
        val replacement = fixture()
        val (result, opens) = document("新宿主接收旧选择器结果")
        assertFalse(replacement.host.onVehicleConfigResult(123, Activity.RESULT_OK, result))
        assertTrue(replacement.host.onVehicleConfigResult(VehicleConfigImportSession.REQUEST_CODE, Activity.RESULT_OK, result))
        worker().submit {}.get(3, TimeUnit.SECONDS)
        advanceHostFrames(replacement.root)
        val state = hostBinding(replacement.host).state.value
        assertEquals(SettingsSection.VehicleConfig, state.settingsSection)
        assertTrue(state.settingsOpen)
        assertEquals("配置已保存，下次冷启动后生效", state.message)
        assertEquals(1, opens.get())
        assertFalse(replacement.host.onVehicleConfigResult(VehicleConfigImportSession.REQUEST_CODE, Activity.RESULT_OK, result))
    }

    private fun worker(session: VehicleConfigImportSession = VehicleConfigImportSession.get(app)): ExecutorService =
        VehicleConfigImportSession::class.java.getDeclaredField("worker").apply { isAccessible = true }.get(session) as ExecutorService
    private fun discardSession() {
        @Suppress("UNCHECKED_CAST")
        val sessions = VehicleConfigImportSession::class.java.getDeclaredField("sessions").apply { isAccessible = true }
            .get(null) as MutableMap<String, VehicleConfigImportSession>
        sessions.values.toList().forEach { session ->
            val worker = worker(session)
            worker.shutdownNow()
            assertTrue(worker.awaitTermination(3, TimeUnit.SECONDS))
            (VehicleConfigImportSession::class.java.getDeclaredField("handler").apply { isAccessible = true }
                .get(session) as android.os.Handler).removeCallbacksAndMessages(null)
        }
        sessions.clear()
    }
}

/** Robolectric's Os.rename is absent; replace only that boundary with same-directory atomic host rename. */
@Implements(Os::class)
class ReturnBridgeOsShadow {
    companion object {
        @JvmStatic @Implementation(minSdk = 21)
        fun rename(oldPath: String, newPath: String) {
            val source = java.nio.file.Path.of(oldPath)
            val target = java.nio.file.Path.of(newPath)
            check(source.parent == target.parent)
            Files.move(source, target, StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING)
        }
    }
}
