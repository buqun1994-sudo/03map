package com.icar03.content.runtime

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Handler
import android.os.Looper
import android.util.AtomicFile
import com.autonavi.amapauto.content.ContentVehicleConfig
import org.json.JSONObject
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.FileInputStream
import java.io.IOException
import java.io.InputStream
import java.util.UUID
import java.util.concurrent.Executors

/** Application-owned document import. Activity/Binding lifetime never owns an accepted save. */
class VehicleConfigImportSession private constructor(context: Context) {
    internal enum class Phase { Idle, Picking, Reading, Committing, Complete }
    internal enum class Outcome { Saved, Failed, Cancelled }
    internal data class Snapshot(
        val requestId: String = "",
        val phase: Phase = Phase.Idle,
        val uri: String? = null,
        val ownsReadGrant: Boolean = false,
        val returnPending: Boolean = false,
        val completionPending: Boolean = false,
        val outcome: Outcome? = null,
    ) {
        val busy: Boolean get() = phase == Phase.Picking || phase == Phase.Reading || phase == Phase.Committing
        val message: String? get() = if (!completionPending) null else when (outcome) {
            Outcome.Saved -> "配置已保存，下次冷启动后生效"
            Outcome.Failed -> "配置校验或保存失败，原配置已保留"
            Outcome.Cancelled, null -> null
        }
    }

    private val app = context.applicationContext
    private val preferences = app.getSharedPreferences(PREFERENCES, Context.MODE_PRIVATE)
    private val handler = Handler(Looper.getMainLooper())
    private val worker = Executors.newSingleThreadExecutor { task ->
        Thread(task, "vehicle-config-import").apply { isDaemon = true }
    }
    private val observers = linkedSetOf<(Snapshot) -> Unit>()
    private var record = load()
    internal val snapshot: Snapshot get() { checkMain(); return record }
    private var scheduledRequest: String? = null
    private var pickerOwner = java.lang.ref.WeakReference<Activity>(null)

    internal fun canLaunchPicker(activity: Activity?): Boolean {
        checkMain()
        if (activity == null || activity.isFinishing || activity.isDestroyed) return false
        return when (record.phase) {
            Phase.Reading, Phase.Committing -> false
            Phase.Picking -> pickerOwner.get() !== activity
            Phase.Idle, Phase.Complete -> true
        }
    }

    init {
        checkMain()
        if (record.phase == Phase.Reading || record.phase == Phase.Committing) scheduleImport()
        else if (record.phase == Phase.Complete) releaseReadGrant(record)
    }

    internal fun observe(observer: (Snapshot) -> Unit): AutoCloseable {
        checkMain()
        observers += observer
        observer(record)
        return AutoCloseable { checkMain(); observers -= observer }
    }

    internal fun launchPicker(activity: Activity): Boolean {
        checkMain()
        if (!canLaunchPicker(activity)) return false
        val request = if (record.phase == Phase.Picking) record else
            Snapshot(requestId = UUID.randomUUID().toString(), phase = Phase.Picking, returnPending = true)
        if (!persist(request)) return false
        pickerOwner = java.lang.ref.WeakReference(activity)
        return try {
            activity.startActivityForResult(Intent(Intent.ACTION_OPEN_DOCUMENT).apply {
                addCategory(Intent.CATEGORY_OPENABLE)
                type = "application/json"
                addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION)
                putExtra(Intent.EXTRA_MIME_TYPES, arrayOf("application/json", "text/plain", "application/octet-stream"))
            }, REQUEST_CODE)
            true
        } catch (_: RuntimeException) {
            persist(Snapshot(requestId = request.requestId))
            false
        }
    }

    internal fun acceptResult(resultCode: Int, data: Intent?): Boolean {
        checkMain()
        if (record.phase != Phase.Picking) return false
        pickerOwner.clear()
        val uri = data?.data
        if (resultCode != Activity.RESULT_OK || uri == null) {
            persist(record.copy(phase = Phase.Complete, returnPending = true, completionPending = true, outcome = Outcome.Cancelled))
            return true
        }
        if (uri.toString().length > MAX_URI_CHARS) {
            persist(record.copy(phase = Phase.Complete, returnPending = true, completionPending = true, outcome = Outcome.Failed))
            return true
        }
        val ownsGrant = retainReadGrant(uri, data?.flags ?: 0)
        val accepted = record.copy(phase = Phase.Reading, uri = uri.toString(), ownsReadGrant = ownsGrant, returnPending = true)
        if (!persist(accepted)) {
            releaseReadGrant(accepted)
            publish(record.copy(phase = Phase.Complete, returnPending = true, completionPending = true, outcome = Outcome.Failed))
            return true
        }
        scheduleImport()
        return true
    }

    /** Acknowledge only what the current live Binding actually projected. */
    internal fun acknowledge(requestId: String, returnedToSettings: Boolean, completion: Boolean) {
        checkMain()
        if (record.requestId != requestId) return
        var next = record.copy(
            returnPending = record.returnPending && !returnedToSettings,
            completionPending = record.completionPending && !completion,
        )
        if (next.phase == Phase.Complete && !next.returnPending && !next.completionPending) {
            next = Snapshot(requestId = next.requestId)
        }
        if (next != record) persist(next)
    }

    private fun scheduleImport() {
        checkMain()
        val accepted = record
        if (accepted.phase != Phase.Reading && accepted.phase != Phase.Committing) return
        if (scheduledRequest == accepted.requestId) return
        scheduledRequest = accepted.requestId
        worker.submit {
            val saved = try {
                val stage = stage(accepted.requestId)
                val bytes = if (stage.baseFile.exists()) stage.openRead().use(::readBounded) else {
                    val uri = accepted.uri?.let(Uri::parse) ?: throw IOException("Missing document")
                    val content = app.contentResolver.openInputStream(uri)?.use(::readBounded) ?: throw IOException("Missing stream")
                    if (!ContentVehicleConfig.validate(content).isValid) throw IOException("Invalid vehicle configuration")
                    val output = stage.startWrite()
                    try {
                        output.write(content)
                        output.fd.sync()
                        stage.finishWrite(output)
                        if (!stage.baseFile.isFile) throw IOException("Import payload was not published")
                    } catch (failure: Exception) {
                        stage.failWrite(output)
                        throw failure
                    }
                    content
                }
                if (!ContentVehicleConfig.validate(bytes).isValid) throw IOException("Invalid staged configuration")
                // This phase and the synced payload are sufficient after process death. Never use a Store to save.
                val committing = accepted.copy(phase = Phase.Committing)
                if (!persistFromWorker(committing)) throw IOException("Import journal could not be saved")
                val target = File(app.filesDir, "vehicle-config.json")
                val alreadySaved = try { FileInputStream(target).use(::readBounded).contentEquals(bytes) } catch (_: IOException) { false }
                alreadySaved || ContentVehicleConfig.saveImported(app, bytes)
            } catch (_: Exception) { false }
            handler.post {
                if (record.requestId != accepted.requestId || !record.busy) return@post
                scheduledRequest = null
                val complete = record.copy(phase = Phase.Complete, completionPending = true,
                    outcome = if (saved) Outcome.Saved else Outcome.Failed)
                if (persist(complete)) {
                    releaseReadGrant(complete)
                    stage(complete.requestId).delete()
                } else publish(complete)
            }
        }
    }

    /** Commit the recovery marker on the serial worker; main-thread observers still own publication. */
    private fun persistFromWorker(next: Snapshot): Boolean = preferences.edit().putString(KEY, encode(next)).commit()

    private fun persist(next: Snapshot): Boolean {
        checkMain()
        if (!preferences.edit().putString(KEY, encode(next)).commit()) return false
        publish(next)
        return true
    }

    private fun publish(next: Snapshot) {
        record = next
        observers.toList().forEach { if (it in observers) it(next) }
    }

    private fun load(): Snapshot = try {
        val text = preferences.getString(KEY, null)
        if (text == null) Snapshot() else {
            require(text.length <= MAX_URI_CHARS + 2048)
            val json = JSONObject(text)
            val id = json.getString("requestId")
            require(REQUEST_ID.matches(id))
            Snapshot(requestId = id, phase = Phase.valueOf(json.getString("phase")),
                uri = json.optString("uri").takeIf(String::isNotEmpty),
                ownsReadGrant = json.optBoolean("ownsReadGrant"), returnPending = json.optBoolean("returnPending"),
                completionPending = json.optBoolean("completionPending"),
                outcome = json.optString("outcome").takeIf(String::isNotEmpty)?.let { Outcome.valueOf(it) })
        }
    } catch (_: Exception) {
        Snapshot(requestId = UUID.randomUUID().toString(), phase = Phase.Complete,
            returnPending = true, completionPending = true, outcome = Outcome.Failed)
    }

    private fun encode(value: Snapshot): String = JSONObject().apply {
        put("requestId", value.requestId)
        put("phase", value.phase.name)
        put("uri", value.uri ?: "")
        put("ownsReadGrant", value.ownsReadGrant)
        put("returnPending", value.returnPending)
        put("completionPending", value.completionPending)
        put("outcome", value.outcome?.name ?: "")
    }.toString()

    private fun stage(requestId: String): AtomicFile {
        require(REQUEST_ID.matches(requestId))
        return AtomicFile(File(app.filesDir, "vehicle-config-import-$requestId.pending"))
    }

    private fun retainReadGrant(uri: Uri, flags: Int): Boolean {
        if (flags and Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION == 0) return false
        return try {
            if (app.contentResolver.persistedUriPermissions.any { it.uri == uri && it.isReadPermission }) false else {
                app.contentResolver.takePersistableUriPermission(uri, Intent.FLAG_GRANT_READ_URI_PERMISSION)
                true
            }
        } catch (_: RuntimeException) { false }
    }

    private fun releaseReadGrant(value: Snapshot) {
        if (!value.ownsReadGrant) return
        value.uri?.let { uri ->
            try { app.contentResolver.releasePersistableUriPermission(Uri.parse(uri), Intent.FLAG_GRANT_READ_URI_PERMISSION) }
            catch (_: RuntimeException) { }
        }
    }

    private fun readBounded(input: InputStream): ByteArray {
        val output = ByteArrayOutputStream()
        val buffer = ByteArray(8192)
        while (true) {
            if (Thread.currentThread().isInterrupted) throw java.io.InterruptedIOException()
            val count = input.read(buffer)
            if (count < 0) return output.toByteArray()
            if (count == 0) throw IOException("Document provider made no progress")
            if (output.size() + count > ContentVehicleConfig.MAX_CONFIG_BYTES) throw IOException("Configuration too large")
            output.write(buffer, 0, count)
        }
    }

    private fun checkMain() { check(Looper.myLooper() == Looper.getMainLooper()) }

    companion object {
        const val REQUEST_CODE = 0x1CA03
        private const val PREFERENCES = "vehicle_config_import_session_v1"
        private const val KEY = "request"
        private const val MAX_URI_CHARS = 8192
        private val REQUEST_ID = Regex("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")
        private val sessions = mutableMapOf<String, VehicleConfigImportSession>()

        @JvmStatic fun get(context: Context): VehicleConfigImportSession {
            check(Looper.myLooper() == Looper.getMainLooper())
            val app = context.applicationContext
            val key = app.filesDir.canonicalPath
            return sessions.getOrPut(key) { VehicleConfigImportSession(app) }
        }

        /** Handles the real Activity bridge even before a map/content Host has attached. */
        @JvmStatic fun onActivityResult(context: Context, requestCode: Int, resultCode: Int, data: Intent?): Boolean {
            if (requestCode != REQUEST_CODE) return false
            return get(context).acceptResult(resultCode, data)
        }
    }
}
