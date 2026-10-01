package com.icar03.content.runtime.media

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.content.pm.ServiceInfo
import android.media.browse.MediaBrowser
import android.media.session.MediaController
import android.os.Handler

/** Bounded public Browser connections only; the existing adapter chooses the playing source. */
class ContentPublicMediaBrowsers @JvmOverloads constructor(
    private val context: Context,
    private val handler: Handler,
    private val listener: Listener,
    private val factory: ClientFactory = ClientFactory { app, component, callback ->
        PlatformClient(app, component, callback)
    },
) {
    data class Session(val controller: MediaController, val component: ComponentName)
    fun interface Listener { fun onSessionsChanged(sessions: List<Session>) }
    fun interface ClientFactory { fun create(context: Context, component: ComponentName, callback: Callback): Client }
    interface Client { fun connect(); fun disconnect() }
    interface Callback {
        fun onConnected(controller: MediaController)
        fun onConnectionFailed()
        fun onConnectionSuspended()
    }

    private class Entry(val component: ComponentName) {
        var generation = 0L
        var retries = 0
        var client: Client? = null
        var session: Session? = null
        var unavailableAt = -1L
        var timeout: Runnable? = null
        var retry: Runnable? = null
    }
    private val entries = linkedMapOf<ComponentName, Entry>()
    private var running = false
    private var published = emptyList<Pair<ComponentName, android.media.session.MediaSession.Token>>()
    val sessions: List<Session> get() = entries.values.mapNotNull { it.session }

    @JvmOverloads
    fun refresh(eligiblePackages: Set<String>, preferredServiceMarker: String? = null) {
        running = true
        val components = discover(eligiblePackages)
        val selected = components.sortedBy {
            when {
                !preferredServiceMarker.isNullOrBlank() && it.className.lowercase().contains(preferredServiceMarker) -> 0
                it.packageName in eligiblePackages -> 1
                else -> 2
            }
        }.take(MAX_CONNECTIONS).toSet()
        entries.keys.filterNot(selected::contains).forEach { component ->
            entries.remove(component)?.let(::dispose)
        }
        selected.forEach { component ->
            val entry = entries.getOrPut(component) { Entry(component) }
            if (entry.client == null && entry.retry == null &&
                (entry.unavailableAt < 0 || android.os.SystemClock.elapsedRealtime() - entry.unavailableAt >= REPROBE_MS)) {
                entry.retries = 0
                connect(entry)
            }
        }
        publish()
    }

    fun onSessionDestroyed(token: android.media.session.MediaSession.Token) {
        val affected = entries.values.filter { it.session?.controller?.sessionToken == token }
        affected.forEach(::dispose)
        publish()
        affected.forEach { entry ->
            if (running) { entry.retries = 0; connect(entry) }
        }
    }

    fun close() {
        running = false;
        entries.values.forEach(::dispose)
        entries.clear()
        publish()
    }

    @Suppress("DEPRECATION")
    private fun discover(eligiblePackages: Set<String>): List<ComponentName> {
        val declared = runCatching {
            context.packageManager.queryIntentServices(Intent(ACTION), 0).mapNotNull { accessible(it.serviceInfo) }
        }.getOrDefault(emptyList())
        val packages = eligiblePackages + declared.map { it.packageName }
        val supplemental = packages.flatMap { packageName ->
            runCatching {
                context.packageManager.getPackageInfo(packageName, PackageManager.GET_SERVICES).services.orEmpty()
                    .filter { service ->
                        val name = service.name.orEmpty().substringAfterLast('.').lowercase()
                        name.endsWith("service") && listOf("media", "music", "player").any(name::contains)
                    }.mapNotNull(::accessible)
            }.getOrDefault(emptyList())
        }
        // The budget is applied only after the complete declared/supplemental inventory exists.
        return (supplemental + declared).distinct()
    }

    private fun accessible(service: ServiceInfo?): ComponentName? {
        if (service == null || !service.exported || !service.enabled || service.applicationInfo?.enabled != true ||
            service.packageName == context.packageName || service.packageName.isNullOrBlank() || service.name.isNullOrBlank()) return null
        if (!service.permission.isNullOrBlank() &&
            context.checkSelfPermission(service.permission) != PackageManager.PERMISSION_GRANTED) return null
        return ComponentName(service.packageName, service.name)
    }

    private fun connect(entry: Entry) {
        if (!running) return
        dispose(entry)
        val epoch = ++entry.generation
        val callback = object : Callback {
            override fun onConnected(controller: MediaController) {
                if (!current(entry, epoch)) return
                if (controller.packageName != entry.component.packageName) { fail(entry, epoch); return }
                entry.timeout?.let(handler::removeCallbacks); entry.timeout = null
                entry.retries = 0
                entry.session = Session(controller, entry.component)
                publish()
            }
            override fun onConnectionFailed() = fail(entry, epoch)
            override fun onConnectionSuspended() = fail(entry, epoch)
        }
        val client = runCatching { factory.create(context, entry.component, callback) }.getOrNull()
        if (client == null) { fail(entry, epoch); return }
        entry.client = client
        entry.timeout = Runnable { fail(entry, epoch) }.also { handler.postDelayed(it, CONNECT_TIMEOUT_MS) }
        runCatching { client.connect() }.onFailure { fail(entry, epoch) }
    }

    private fun current(entry: Entry, epoch: Long) = running && entries[entry.component] === entry && entry.generation == epoch

    private fun fail(entry: Entry, epoch: Long) {
        if (!current(entry, epoch)) return
        dispose(entry)
        if (entry.retries++ < 1) {
            val retryEpoch = entry.generation
            entry.retry = Runnable {
                entry.retry = null
                if (current(entry, retryEpoch)) connect(entry)
            }.also { handler.postDelayed(it, RETRY_MS) }
        } else entry.unavailableAt = android.os.SystemClock.elapsedRealtime()
        publish()
    }

    private fun dispose(entry: Entry) {
        entry.generation++
        entry.timeout?.let(handler::removeCallbacks); entry.timeout = null
        entry.retry?.let(handler::removeCallbacks); entry.retry = null
        entry.client?.let { runCatching { it.disconnect() } }; entry.client = null
        entry.session = null
    }

    private fun publish() {
        val current = sessions
        val signature = current.map { it.component to it.controller.sessionToken }
        if (signature == published) return
        published = signature
        listener.onSessionsChanged(current)
    }

    private class PlatformClient(context: Context, component: ComponentName, callback: Callback) : Client {
        private val browser: MediaBrowser by lazy {
            MediaBrowser(context, component, object : MediaBrowser.ConnectionCallback() {
                override fun onConnected() {
                    val controller = runCatching { MediaController(context, browser.sessionToken) }.getOrNull()
                    if (controller == null) callback.onConnectionFailed() else callback.onConnected(controller)
                }
                override fun onConnectionFailed() = callback.onConnectionFailed()
                override fun onConnectionSuspended() = callback.onConnectionSuspended()
            }, null)
        }
        override fun connect() = browser.connect()
        override fun disconnect() = browser.disconnect()
    }

    companion object {
        const val ACTION = "android.media.browse.MediaBrowserService"
        const val MAX_CONNECTIONS = 8
        const val CONNECT_TIMEOUT_MS = 3_000L
        const val RETRY_MS = 1_000L
        const val REPROBE_MS = 30_000L
    }
}
