package com.icar03.content.runtime

import android.content.ComponentName
import android.content.Context
import android.content.ServiceConnection
import android.os.Binder
import android.os.Handler
import android.os.Looper
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentStore
import com.autonavi.amapauto.content.ContentVehicleAdapter
import com.icar03.content.model.VehicleGear
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.time.Duration

/** Exercises the real reflected public method surface, not an invented OEM Binder gear mapping. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class AutomotiveGearReaderTest {
    private val handler = Handler(Looper.getMainLooper())
    private val readers = mutableListOf<AutomotiveGearReader>()
    private val adapters = mutableListOf<ContentVehicleAdapter>()
    private val stores = mutableListOf<ContentStore>()
    private val app: Context get() = RuntimeEnvironment.getApplication()

    @Before fun reset() { GearReaderCarFixture.instances.clear(); GearReaderCarFixture.managers.clear() }
    @After fun cleanup() {
        stores.forEach { it.destroy() }
        adapters.forEach { it.stop() }
        readers.forEach { it.stop() }
        shadowOf(Looper.getMainLooper()).idle()
    }

    private fun reader(manager: GearReaderPropertyFixture, disconnected: () -> Unit = {}, resolutions: MutableList<String> = mutableListOf()): AutomotiveGearReader {
        GearReaderCarFixture.managers += manager
        val platform = ReflectiveAutomotiveGearPlatform(classResolver = { name ->
            resolutions += name
            when (name) {
                "android.car.Car" -> GearReaderCarFixture::class.java
                else -> throw ClassNotFoundException(name) // Standard public ID fallbacks are independently asserted.
            }
        }, automotiveAvailable = { true })
        return AutomotiveGearReader(app, handler, Runnable(disconnected), platform).also {
            readers += it
            it.start()
            shadowOf(Looper.getMainLooper()).idle()
        }
    }

    private fun read(reader: AutomotiveGearReader): VehicleGear {
        var result = VehicleGear.Unknown
        handler.post { result = reader.readGear() }
        shadowOf(Looper.getMainLooper()).idle()
        return result
    }

    @Test fun verifiedS56SelectorOwnsEveryGearAndUnverifiedCurrentCannotOverrideIt() {
        val manager = GearReaderPropertyFixture(current = 4, selector = 11)
        val reader = reader(manager)
        for ((raw, expected) in listOf(11 to VehicleGear.Park, 1 to VehicleGear.Drive,
            9 to VehicleGear.Reverse, 10 to VehicleGear.Neutral, 8192 to VehicleGear.Unknown)) {
            manager.reads.clear()
            manager.selector = raw
            assertEquals(expected, read(reader))
            assertEquals("one verified property read; CURRENT_GEAR never overrides it", listOf(289408000 to 0), manager.reads)
        }
        assertEquals(1, GearReaderCarFixture.instances.single().connects)
    }

    @Test fun permissionNoValueAndReadExceptionsStayUnknownWithoutAnIndependentPoller() {
        val manager = GearReaderPropertyFixture(current = 0, selector = 0)
        val reader = reader(manager)
        assertEquals(VehicleGear.Unknown, read(reader))
        manager.permissionDenied = true
        assertEquals(VehicleGear.Unknown, read(reader))
        assertEquals(VehicleGear.Unknown, read(reader))
        manager.permissionDenied = false
        manager.selector = 11
        assertEquals(VehicleGear.Park, read(reader))
        val reads = manager.reads.size
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(10))
        assertEquals("reader never installs a second ticker", reads, manager.reads.size)
    }

    @Test fun warmReadsReuseTheSameManagerAndResolvedPublicMethods() {
        val manager = GearReaderPropertyFixture(current = 4, selector = 9)
        val resolutions = mutableListOf<String>()
        val reader = reader(manager, resolutions = resolutions)
        assertEquals(VehicleGear.Reverse, read(reader))
        val warmResolutions = resolutions.toList()
        repeat(24) { assertEquals(VehicleGear.Reverse, read(reader)) }
        assertEquals(warmResolutions, resolutions)
        assertEquals(1, GearReaderCarFixture.instances.single().managerRequests)
        assertEquals(25, manager.reads.size)
        assertTrue(manager.reads.all { it == (289408000 to 0) })
    }

    @Test fun disconnectPublishesUnavailableAndLateCallbacksCannotReacquireTheStoppedGeneration() {
        var unavailable = 0
        val manager = GearReaderPropertyFixture(selector = 11)
        val reader = reader(manager, disconnected = { unavailable++ })
        assertEquals(VehicleGear.Park, read(reader))
        val firstCar = GearReaderCarFixture.instances.single()
        firstCar.connection.onServiceDisconnected(GEAR_COMPONENT)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(1, unavailable)
        assertEquals(1, firstCar.disconnects)
        val secondManager = GearReaderPropertyFixture(selector = 1)
        GearReaderCarFixture.managers += secondManager
        assertEquals(VehicleGear.Drive, read(reader))
        val secondCar = GearReaderCarFixture.instances.last()
        val managerRequests = secondCar.managerRequests
        firstCar.connection.onServiceConnected(GEAR_COMPONENT, Binder())
        firstCar.connection.onServiceDisconnected(GEAR_COMPONENT)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(managerRequests, secondCar.managerRequests)
        assertEquals(1, unavailable)
        reader.stop()
        secondCar.connection.onServiceConnected(GEAR_COMPONENT, Binder())
        secondCar.connection.onServiceDisconnected(GEAR_COMPONENT)
        assertEquals(VehicleGear.Unknown, read(reader))
        assertEquals(1, secondCar.disconnects)
        assertEquals(1, unavailable)
    }

    @Test fun stopDuringAReadRejectsItsOtherwiseValidResult() {
        val manager = GearReaderPropertyFixture(selector = 11)
        val reader = reader(manager)
        manager.onRead = { reader.stop() }
        assertEquals(VehicleGear.Unknown, read(reader))
        assertEquals(1, GearReaderCarFixture.instances.single().disconnects)
    }

    @Test fun missingOptionalCarLibraryOrAutomotiveCapabilityHasNoEffectOnOtherVehicleFacts() {
        val absent = AutomotiveGearReader(app, handler, Runnable {}, ReflectiveAutomotiveGearPlatform(
            classResolver = { throw ClassNotFoundException(it) }, automotiveAvailable = { true }))
        readers += absent
        absent.start()
        assertEquals(VehicleGear.Unknown, read(absent))
        var resolutions = 0
        val ordinaryAndroid = AutomotiveGearReader(app, handler, Runnable {}, ReflectiveAutomotiveGearPlatform(
            classResolver = { resolutions++; GearReaderCarFixture::class.java }, automotiveAvailable = { false }))
        readers += ordinaryAndroid
        ordinaryAndroid.start()
        assertEquals(VehicleGear.Unknown, read(ordinaryAndroid))
        assertEquals(0, resolutions)
        assertTrue(GearReaderCarFixture.instances.isEmpty())
    }

    @Test fun existingAdapterPollPublishesGearWithoutAnOemBinderAndInvalidatesCarDisconnect() {
        val snapshots = mutableListOf<ContentPorts.VehicleSnapshot>()
        val manager = GearReaderPropertyFixture(current = 11, selector = 11)
        val adapter = ContentVehicleAdapter(app)
        adapters += adapter
        val reader = reader(manager, disconnected = {
            ContentVehicleAdapter::class.java.getDeclaredMethod("invalidateGear", Handler::class.java)
                .apply { isAccessible = true }.invoke(adapter, handler)
        })
        set(adapter, "running", true)
        set(adapter, "workerHandler", handler)
        set(adapter, "gearReader", reader)
        set(adapter, "listener", object : ContentPorts.VehicleSnapshotListener {
            override fun onVehicleSnapshot(snapshot: ContentPorts.VehicleSnapshot) { snapshots += snapshot }
            override fun onVehicleCommandFailed(requestId: Long, message: String) = Unit
        })
        val poll = ContentVehicleAdapter::class.java.getDeclaredField("pollRunnable").apply { isAccessible = true }.get(adapter) as Runnable
        handler.post(poll)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(VehicleGear.Park, snapshots.last().gear)
        assertTrue(snapshots.last().dataAvailable)
        assertFalse(adapter.isAvailable())
        manager.selector = 1
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1500))
        assertEquals(VehicleGear.Drive, snapshots.last().gear)
        assertEquals(2, snapshots.size)
        GearReaderCarFixture.instances.single().connection.onServiceDisconnected(GEAR_COMPONENT)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(VehicleGear.Unknown, snapshots.last().gear)
        assertFalse(snapshots.last().dataAvailable)
        assertEquals(3, snapshots.size)
    }

    @Test fun oemLossUsesFreshPublicGearAndOnlyActualCarLossClearsTheParkBaseline() {
        val service = VehicleCommandBinder()
        val adapter = attachedVehicleCommandAdapter(service).also(adapters::add)
        val worker = vehicleAdapterField(adapter, "workerHandler") as Handler
        val manager = GearReaderPropertyFixture(selector = 11)
        val reader = reader(manager, disconnected = {
            ContentVehicleAdapter::class.java.getDeclaredMethod("invalidateGear", Handler::class.java)
                .apply { isAccessible = true }.invoke(adapter, worker)
        })
        set(adapter, "gearReader", reader)
        val store = ContentStore(app, adapter, ContentPorts.PreviewMediaPort(),
            object : ContentPorts.SystemPort {
                override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
                override fun write(kind: Int, percent: Int) = false
            }).also(stores::add)
        store.setAutoCloseSettingsOnDrive(true)
        pollVehicleCommandAdapter(adapter)
        assertEquals(VehicleGear.Park, store.snapshot().gear)
        assertEquals(0L, store.snapshot().settingsAutoCloseSequence)

        val oemConnection = vehicleAdapterField(adapter, "serviceConnection") as ServiceConnection
        val readsBeforeDisconnect = manager.reads.size
        oemConnection.onServiceDisconnected(ComponentName("com.chery.virtualcarservice", "VirtualCarService"))
        shadowOf(Looper.getMainLooper()).idle()
        assertFalse(adapter.isAvailable())
        assertTrue("OEM loss must perform a fresh Car read", manager.reads.size > readsBeforeDisconnect)
        assertEquals(VehicleGear.Park, store.snapshot().gear)
        manager.selector = 1
        shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1500))
        assertEquals(VehicleGear.Drive, store.snapshot().gear)
        assertEquals("independent Car departure survives OEM loss", 1L, store.snapshot().settingsAutoCloseSequence)

        var activeManager = manager
        var expectedSequence = 1L
        for ((raw, nonPark) in listOf(9 to VehicleGear.Reverse, 10 to VehicleGear.Neutral, 1 to VehicleGear.Drive)) {
            activeManager.selector = 11
            pollVehicleCommandAdapter(adapter)
            assertEquals(VehicleGear.Park, store.snapshot().gear)
            val disconnectedCar = GearReaderCarFixture.instances.last()
            disconnectedCar.connection.onServiceDisconnected(GEAR_COMPONENT)
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(VehicleGear.Unknown, store.snapshot().gear)
            assertEquals(expectedSequence, store.snapshot().settingsAutoCloseSequence)
            val oldManagerReads = activeManager.reads.size

            val recoveredManager = GearReaderPropertyFixture(selector = raw)
            GearReaderCarFixture.managers += recoveredManager
            pollVehicleCommandAdapter(adapter)
            assertNotSame(disconnectedCar, GearReaderCarFixture.instances.last())
            assertEquals(1, disconnectedCar.disconnects)
            assertEquals(nonPark, store.snapshot().gear)
            assertTrue("the replacement manager supplies the recovered fact", recoveredManager.reads.isNotEmpty())
            assertEquals("recovered $nonPark without Park does not invent a departure", expectedSequence,
                store.snapshot().settingsAutoCloseSequence)

            recoveredManager.selector = 11
            pollVehicleCommandAdapter(adapter)
            assertEquals(VehicleGear.Park, store.snapshot().gear)
            recoveredManager.selector = raw
            pollVehicleCommandAdapter(adapter)
            assertEquals(nonPark, store.snapshot().gear)
            assertEquals("a later Park departure is a new confirmed edge", ++expectedSequence,
                store.snapshot().settingsAutoCloseSequence)
            assertEquals("reconnect must stop reading the previous manager", oldManagerReads, activeManager.reads.size)
            activeManager = recoveredManager
        }
        assertTrue(service.writes.isEmpty())
    }

    @Test fun carDisconnectUnknownSurvivesOemRebindAndDropsStaleOemFacts() {
        val originalService = VehicleCommandBinder()
        val adapter = attachedVehicleCommandAdapter(originalService).also(adapters::add)
        val worker = vehicleAdapterField(adapter, "workerHandler") as Handler
        val manager = GearReaderPropertyFixture(selector = 11)
        val reader = reader(manager)
        set(adapter, "gearReader", reader)
        val store = ContentStore(app, adapter, ContentPorts.PreviewMediaPort(),
            object : ContentPorts.SystemPort {
                override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
                override fun write(kind: Int, percent: Int) = false
            }).also(stores::add)
        pollVehicleCommandAdapter(adapter)
        assertEquals(VehicleGear.Park, store.snapshot().gear)

        // The OEM service reconnects before the queued independent-Car invalidation reaches main.
        set(adapter, "binder", VehicleCommandBinder())
        ContentVehicleAdapter::class.java.getDeclaredMethod("invalidateGear", Handler::class.java)
            .apply { isAccessible = true }.invoke(adapter, worker)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(VehicleGear.Unknown, store.snapshot().gear)
        assertFalse(store.snapshot().vehicleDataAvailable)
        assertEquals(0L, store.snapshot().settingsAutoCloseSequence)

        // A fresh non-P read after invalidation cannot reuse the former Park baseline.
        for ((raw, nonPark) in listOf(9 to VehicleGear.Reverse, 10 to VehicleGear.Neutral, 1 to VehicleGear.Drive)) {
            manager.selector = raw
            pollVehicleCommandAdapter(adapter)
            assertEquals(nonPark, store.snapshot().gear)
            assertEquals("Unknown and non-P transitions cannot invent a departure", 0L,
                store.snapshot().settingsAutoCloseSequence)
        }
        manager.selector = 11
        pollVehicleCommandAdapter(adapter)
        manager.selector = 1
        pollVehicleCommandAdapter(adapter)
        assertEquals("only a subsequent confirmed Park departure closes settings", 1L,
            store.snapshot().settingsAutoCloseSequence)
    }

    private fun set(owner: Any, name: String, value: Any?) = owner.javaClass.getDeclaredField(name)
        .apply { isAccessible = true }.set(owner, value)
}

private val GEAR_COMPONENT = ComponentName("com.android.car", "CarService")

/** Public signatures mimic the actual optional SDK; no vendor SEND or vehicle setter exists. */
class GearReaderPropertyFixture(var current: Int = 0, var selector: Int = 0) {
    val reads = mutableListOf<Pair<Int, Int>>()
    var permissionDenied = false
    var onRead: (() -> Unit)? = null
    fun getIntProperty(propertyId: Int, areaId: Int): Int {
        reads += propertyId to areaId
        check(areaId == 0)
        onRead?.invoke()
        if (permissionDenied) throw SecurityException("read denied")
        return when (propertyId) {
            289408001 -> current
            289408000 -> selector
            else -> error("unexpected public property $propertyId")
        }
    }
}

class GearReaderCarFixture(private val manager: GearReaderPropertyFixture, val connection: ServiceConnection) {
    var connects = 0
    var disconnects = 0
    var managerRequests = 0
    fun connect() { connects++; connection.onServiceConnected(GEAR_COMPONENT, Binder()) }
    fun disconnect() { disconnects++ }
    fun getCarManager(serviceName: String): Any { check(serviceName == "property"); managerRequests++; return manager }
    companion object {
        val managers = mutableListOf<GearReaderPropertyFixture>()
        val instances = mutableListOf<GearReaderCarFixture>()
        @JvmStatic fun createCar(context: Context, connection: ServiceConnection): GearReaderCarFixture {
            check(context === context.applicationContext)
            return GearReaderCarFixture(managers.removeAt(0), connection).also(instances::add)
        }
    }
}
