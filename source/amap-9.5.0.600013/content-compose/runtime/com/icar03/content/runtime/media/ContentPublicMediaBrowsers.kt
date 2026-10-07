package com.icar03.content.runtime.media

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.content.pm.ServiceInfo
import android.media.browse.MediaBrowser
import android.media.session.MediaController
import android.media.session.MediaSession
import android.os.Handler
import android.os.Looper
import android.os.SystemClock
import java.util.concurrent.Executor
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors

/** Public Browser discovery supplies components/tokens; the adapter owns source arbitration. */
class ContentPublicMediaBrowsers @JvmOverloads constructor(
    private val context: Context,
    private val handler: Handler,
    private val listener: Listener,
    private val factory: ClientFactory = ClientFactory { app, component, callback ->
        PlatformClient(app, component, callback)
    },
    private val inventoryExecutor: Executor? = null,
) {
    constructor(context: Context, handler: Handler, listener: Listener, inventoryExecutor: Executor) :
        this(context, handler, listener, ClientFactory { app, component, callback ->
            PlatformClient(app, component, callback)
        }, inventoryExecutor)

    data class Session(val controller: MediaController, val component: ComponentName)
    fun interface Listener { fun onSessionsChanged(sessions: List<Session>) }
    fun interface ClientFactory { fun create(context: Context, component: ComponentName, callback: Callback): Client }
    interface Client { fun connect(); fun disconnect() }
    interface Callback {
        fun onConnected(controller: MediaController)
        fun onConnectionFailed()
        fun onConnectionSuspended()
    }

    private data class Endpoint(val component: ComponentName, val supplemental: Boolean)
    private data class Inventory(
        val declared: List<Endpoint>,
        val supplemental: Map<String, List<Endpoint>>,
    )
    private data class Discovery(
        val lifecycle: Long,
        val version: Long,
        val packages: Set<String>,
        val preferred: ComponentName?,
        val cached: Inventory?,
    )
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
    private var lifecycle = 0L
    private var inventoryVersion = 0L
    private var inventory: Inventory? = null
    private var inventoryExpiresAt = 0L
    private var requestedPackages = emptySet<String>()
    private var preferredComponent: ComponentName? = null
    private var discovery: Discovery? = null
    private var ownedExecutor: ExecutorService? = null
    private var published = emptyList<Pair<ComponentName, MediaSession.Token>>()
    val sessions: List<Session> get() = entries.values.mapNotNull { it.session }

    @JvmOverloads
    fun refresh(eligiblePackages: Set<String>, preferred: ComponentName? = null) = onHandler {
        if (!running) { running = true; lifecycle++ }
        requestedPackages = eligiblePackages.toSet()
        preferredComponent = preferred
        refreshInventory()
    }

    /** Package/permission inventory changes invalidate cached PM facts, never controller facts. */
    @JvmOverloads
    fun invalidateInventory(packageName: String? = null) = onHandler {
        inventoryVersion++
        inventory = null
        inventoryExpiresAt = 0L
        entries.keys.filter { packageName == null || it.packageName == packageName }.forEach { component ->
            entries.remove(component)?.let(::dispose)
        }
        publish()
        if (running) refreshInventory()
    }

    private fun onHandler(action: () -> Unit) {
        if (Looper.myLooper() == handler.looper) action() else handler.post { action() }
    }

    private fun supplementalPackages(declared: List<Endpoint>, eligible: Set<String>, preferred: ComponentName?): Set<String> =
        (listOfNotNull(preferred?.packageName) + eligible.sorted() + declared.map { it.component.packageName })
            .distinct().filterNot { it == context.packageName }.take(MAX_SUPPLEMENTAL_PACKAGES).toSet()

    private fun refreshInventory() {
        if (!running || discovery != null) return
        val cached = inventory?.takeIf { SystemClock.elapsedRealtime() < inventoryExpiresAt }
        val packages = cached?.let { supplementalPackages(it.declared, requestedPackages, preferredComponent) }
        if (cached != null && packages != null && cached.supplemental.keys.containsAll(packages)) {
            applyInventory(cached, packages)
            return
        }
        val request = Discovery(lifecycle, inventoryVersion, requestedPackages, preferredComponent, cached)
        discovery = request
        val worker = inventoryExecutor ?: ownedExecutor ?: Executors.newSingleThreadExecutor { task ->
            Thread(task, "content-media-browser-inventory")
        }.also { ownedExecutor = it }
        try {
            worker.execute {
                val resolved = discover(request)
                handler.post {
                    if (discovery !== request) return@post
                    discovery = null
                    if (running && lifecycle == request.lifecycle && inventoryVersion == request.version) {
                        inventory = resolved
                        inventoryExpiresAt = SystemClock.elapsedRealtime() + INVENTORY_TTL_MS
                    }
                    // A newer input may require one bounded supplement; stale work never publishes sessions.
                    if (running) refreshInventory()
                }
            }
        } catch (_: RuntimeException) {
            discovery = null
        }
    }

    @Suppress("DEPRECATION")
    private fun discover(request: Discovery): Inventory {
        val declared = request.cached?.declared ?: runCatching {
            context.packageManager.queryIntentServices(Intent(ACTION), 0)
                .mapNotNull { accessible(it.serviceInfo) }.distinct().map { Endpoint(it, false) }
        }.getOrDefault(emptyList())
        // Only public session packages, the exact preferred endpoint, and declared inventory qualify.
        val packages = supplementalPackages(declared, request.packages, request.preferred)
        val supplemental = packages.associateWith { packageName ->
            request.cached?.supplemental?.get(packageName) ?: runCatching {
                context.packageManager.getPackageInfo(packageName, PackageManager.GET_SERVICES).services.orEmpty()
                    .filter { service ->
                        val name = service.name.orEmpty().substringAfterLast('.').lowercase()
                        name.endsWith("service") && listOf("media", "music", "player").any(name::contains)
                    }.mapNotNull(::accessible).distinct().take(MAX_SERVICES_PER_PACKAGE).map { Endpoint(it, true) }
            }.getOrDefault(emptyList())
        }
        return Inventory(declared, supplemental)
    }

    private fun applyInventory(resolved: Inventory, packages: Set<String>) {
        // Priority and the eight-connection budget are applied after declared/supplemental discovery.
        val components = (packages.flatMap { resolved.supplemental[it].orEmpty() } + resolved.declared)
            .distinctBy { it.component }.sortedBy {
                when {
                    it.component == preferredComponent -> 0
                    it.supplemental && it.component.packageName in requestedPackages -> 1
                    it.component.packageName in requestedPackages -> 2
                    it.supplemental -> 3
                    else -> 4
                }
            }.take(MAX_CONNECTIONS).map { it.component }.toSet()
        entries.keys.filterNot(components::contains).forEach { component ->
            entries.remove(component)?.let(::dispose)
        }
        components.forEach { component ->
            val entry = entries.getOrPut(component) { Entry(component) }
            if (entry.client == null && entry.retry == null &&
                (entry.unavailableAt < 0 || SystemClock.elapsedRealtime() - entry.unavailableAt >= REPROBE_MS)) {
                entry.retries = 0
                connect(entry)
            }
        }
        publish()
    }

    fun onSessionDestroyed(token: MediaSession.Token) {
        val affected = entries.values.filter { it.session?.controller?.sessionToken == token }
        affected.forEach(::dispose)
        publish()
        affected.forEach { entry ->
            if (running) { entry.retries = 0; connect(entry) }
        }
    }

    fun close() {
        running = false
        lifecycle++
        inventoryVersion++
        inventory = null
        inventoryExpiresAt = 0L
        requestedPackages = emptySet()
        preferredComponent = null
        entries.values.forEach(::dispose)
        entries.clear()
        ownedExecutor?.shutdownNow()
        ownedExecutor = null
        // An injected serial worker remains owned by the adapter; its stale completion retires itself.
        if (inventoryExecutor == null) discovery = null
        publish()
    }

    private fun accessible(service: ServiceInfo?): ComponentName? {
        if (service == null || !service.exported || !service.enabled || service.applicationInfo?.enabled != true ||
            service.packageName == context.packageName || service.packageName.isNullOrBlank() || service.name.isNullOrBlank()) return null
        if (!service.permission.isNullOrBlank() &&
            context.checkSelfPermission(service.permission) != PackageManager.PERMISSION_GRANTED) return null
        val name = if (service.name.startsWith('.')) service.packageName + service.name else service.name
        return ComponentName(service.packageName, name)
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
        } else entry.unavailableAt = SystemClock.elapsedRealtime()
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
        const val INVENTORY_TTL_MS = 30_000L
        const val MAX_SUPPLEMENTAL_PACKAGES = 32
        private const val MAX_SERVICES_PER_PACKAGE = 64
    }
}
