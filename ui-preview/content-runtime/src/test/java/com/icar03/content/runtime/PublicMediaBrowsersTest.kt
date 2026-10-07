package com.icar03.content.runtime

import android.Manifest
import android.content.ComponentName
import android.content.Intent
import android.content.pm.ApplicationInfo
import android.content.pm.PackageInfo
import android.content.pm.ResolveInfo
import android.content.pm.ServiceInfo
import android.media.session.MediaController
import android.media.session.MediaSession
import android.os.Handler
import android.os.Looper
import com.icar03.content.runtime.media.ContentPublicMediaBrowsers
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.time.Duration

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class PublicMediaBrowsersTest {
    private val app get() = RuntimeEnvironment.getApplication()
    private fun service(packageName: String, name: String = "$packageName.PublicMediaService") = ServiceInfo().apply {
        this.packageName = packageName; this.name = name; enabled = true; exported = true
        applicationInfo = ApplicationInfo().apply { this.packageName = packageName; enabled = true }
    }
    private fun declare(info: ServiceInfo) {
        shadowOf(app.packageManager).addResolveInfoForIntent(Intent(ContentPublicMediaBrowsers.ACTION), ResolveInfo().apply { serviceInfo = info })
    }
    private fun controller(packageName: String): MediaController {
        val session = MediaSession(app, "browser-${System.identityHashCode(Any())}")
        return MediaController(app, session.sessionToken).also { shadowOf(it).setPackageName(packageName) }
    }
    private class Client(val component: ComponentName, val callback: ContentPublicMediaBrowsers.Callback) : ContentPublicMediaBrowsers.Client {
        var connected = 0; var disconnected = 0
        override fun connect() { connected++ }
        override fun disconnect() { disconnected++ }
    }
    private fun registry(clients: MutableList<Client>, snapshots: MutableList<List<ContentPublicMediaBrowsers.Session>> = mutableListOf()) =
        ContentPublicMediaBrowsers(app, Handler(Looper.getMainLooper()), ContentPublicMediaBrowsers.Listener { snapshots += it },
            ContentPublicMediaBrowsers.ClientFactory { _, component, callback -> Client(component, callback).also(clients::add) },
            java.util.concurrent.Executor { it.run() })

    private fun ContentPublicMediaBrowsers.refreshNow(packages: Set<String>, preferred: ComponentName? = null) {
        refresh(packages, preferred)
        shadowOf(Looper.getMainLooper()).idle()
    }

    @Test fun completeInventoryIsPrioritizedBeforeEightConnectionBudgetAndSkipsInaccessibleServices() {
        repeat(9) { declare(service("player$it")) }
        declare(service("disabled").apply { enabled = false })
        declare(service("private").apply { exported = false })
        declare(service("denied").apply { permission = Manifest.permission.READ_CONTACTS })
        shadowOf(app).denyPermissions(Manifest.permission.READ_CONTACTS)
        val clients = mutableListOf<Client>(); val registry = registry(clients)
        try {
            registry.refreshNow(setOf("player8"))
            assertEquals(8, clients.size)
            assertEquals("player8", clients.first().component.packageName)
            assertTrue(clients.none { it.component.packageName in setOf("disabled", "private", "denied") })
            registry.refreshNow(setOf("player8"))
            assertEquals(8, clients.size)
        } finally { registry.close() }
        assertTrue(clients.all { it.disconnected == 1 })
    }

    @Test fun undeclaredPublicBrowserCandidateComesOnlyFromEligibleOrDeclaredPackages() {
        val eligible = service("eligible", "eligible.CloudMusicService")
        val unrelated = service("unrelated", "unrelated.CloudMusicService")
        listOf(eligible, unrelated).forEach { info ->
            shadowOf(app.packageManager).installPackage(PackageInfo().apply {
                packageName = info.packageName; applicationInfo = info.applicationInfo; services = arrayOf(info)
            })
        }
        val clients = mutableListOf<Client>(); val registry = registry(clients)
        try {
            registry.refreshNow(setOf("eligible"))
            assertEquals(listOf("eligible"), clients.map { it.component.packageName })
        } finally { registry.close() }
    }

    @Test fun declaredInventoryFindsUndeclaredCloudAndExactReadbackEndpointWinsTheConnectionBudget() {
        repeat(9) { declare(service("other$it")) }
        val declared = service("com.tencent.wecarflow", "com.tencent.wecarflow.player.MediaPlaybackService")
        val cloud = service(declared.packageName, "com.mychery.cloudmusic.service.CloudMusicService")
        val decoy = service(declared.packageName, "com.mychery.cloudmusic.service.DecoyCloudMusicService")
        declare(declared)
        shadowOf(app.packageManager).installPackage(PackageInfo().apply {
            packageName = declared.packageName; applicationInfo = declared.applicationInfo
            services = arrayOf(declared, decoy, cloud)
        })
        val clients = mutableListOf<Client>(); val registry = registry(clients)
        try {
            registry.refreshNow(emptySet(), ComponentName(cloud.packageName, cloud.name))
            assertEquals(ContentPublicMediaBrowsers.MAX_CONNECTIONS, clients.size)
            assertEquals(ComponentName(cloud.packageName, cloud.name), clients.first().component)
            clients.first().callback.onConnected(controller(cloud.packageName))
            assertEquals(ComponentName(cloud.packageName, cloud.name), registry.sessions.single().component)
        } finally { registry.close() }
    }

    @Test fun inventoryReadsRunOffMainAndCoalesceWhileCacheAndStopRejectRepeatedOrStaleWork() {
        declare(service("player"))
        var pmReads = 0
        val context = object : android.content.ContextWrapper(app) {
            override fun getPackageManager(): android.content.pm.PackageManager {
                assertNotEquals("PM/Binder inventory must stay off main", Looper.getMainLooper(), Looper.myLooper())
                pmReads++
                return app.packageManager
            }
        }
        val work = java.util.ArrayDeque<Runnable>()
        val clients = mutableListOf<Client>()
        val registry = ContentPublicMediaBrowsers(context, Handler(Looper.getMainLooper()),
            ContentPublicMediaBrowsers.Listener { },
            ContentPublicMediaBrowsers.ClientFactory { _, component, callback -> Client(component, callback).also(clients::add) },
            java.util.concurrent.Executor { work.addLast(it) })
        fun runInventory() {
            val task = work.removeFirst()
            val failure = java.util.concurrent.atomic.AtomicReference<Throwable>()
            val thread = Thread { try { task.run() } catch (error: Throwable) { failure.set(error) } }
            thread.start(); thread.join(2_000L)
            assertFalse(thread.isAlive); failure.get()?.let { throw it }
            shadowOf(Looper.getMainLooper()).idle()
        }
        try {
            repeat(100) { registry.refresh(emptySet()) }
            assertEquals(1, work.size); assertTrue(clients.isEmpty()); assertEquals(0, pmReads)
            runInventory(); assertEquals(1, clients.size)
            val reads = pmReads
            repeat(100) { registry.refreshNow(emptySet()) }
            assertTrue(work.isEmpty()); assertEquals(reads, pmReads)
            registry.invalidateInventory("player")
            assertEquals(1, clients.single().disconnected); assertEquals(1, work.size)
            registry.close()
            runInventory()
            assertEquals(1, clients.size); assertTrue(registry.sessions.isEmpty())
        } finally { registry.close() }
    }

    @Test fun connectedTokenFromAnotherPackageCannotAcquireTheBrowserComponentIdentity() {
        declare(service("player"))
        val clients = mutableListOf<Client>(); val registry = registry(clients)
        try {
            registry.refreshNow(emptySet())
            clients.single().callback.onConnected(controller("unrelated"))
            assertTrue(registry.sessions.isEmpty())
            assertEquals(1, clients.single().disconnected)
        } finally { registry.close() }
    }

    @Test fun timeoutRetriesOnlyOnceAndLateConnectionDoesNotReplaceTheRetrySession() {
        declare(service("player"))
        val clients = mutableListOf<Client>(); val snapshots = mutableListOf<List<ContentPublicMediaBrowsers.Session>>()
        val registry = registry(clients, snapshots)
        try {
            registry.refreshNow(emptySet())
            val first = clients.single()
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(ContentPublicMediaBrowsers.CONNECT_TIMEOUT_MS))
            assertEquals(1, first.disconnected)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(ContentPublicMediaBrowsers.RETRY_MS))
            assertEquals(2, clients.size)
            first.callback.onConnected(controller("player"))
            assertTrue(registry.sessions.isEmpty())
            val expected = controller("player")
            clients.last().callback.onConnected(expected)
            assertSame(expected, registry.sessions.single().controller)
            registry.close()
            val count = snapshots.size
            clients.last().callback.onConnected(controller("player"))
            assertEquals(count, snapshots.size); assertTrue(registry.sessions.isEmpty())
        } finally { registry.close() }
    }

    @Test fun secondFailureWaitsForReprobeAndSessionDestructionRebindsTheSamePublicEndpoint() {
        declare(service("player"))
        val clients = mutableListOf<Client>(); val registry = registry(clients)
        try {
            registry.refreshNow(emptySet()); clients.single().callback.onConnectionFailed()
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(ContentPublicMediaBrowsers.RETRY_MS))
            clients.last().callback.onConnectionFailed()
            registry.refreshNow(emptySet()); assertEquals(2, clients.size)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(ContentPublicMediaBrowsers.REPROBE_MS))
            registry.refreshNow(emptySet()); assertEquals(3, clients.size)
            val old = controller("player"); clients.last().callback.onConnected(old)
            registry.onSessionDestroyed(old.sessionToken)
            assertTrue(registry.sessions.isEmpty()); assertEquals(4, clients.size)
            clients.last().callback.onConnected(controller("player"))
            assertEquals("player", registry.sessions.single().component.packageName)
        } finally { registry.close() }
    }
}
