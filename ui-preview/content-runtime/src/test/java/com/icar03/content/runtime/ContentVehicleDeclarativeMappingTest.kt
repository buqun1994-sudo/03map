package com.icar03.content.runtime

import android.os.Binder
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.os.Parcel
import android.os.SystemClock
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentVehicleAdapter
import com.autonavi.amapauto.content.ContentVehicleConfig
import org.json.JSONArray
import org.json.JSONObject
import org.junit.After
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode

/** Different function IDs, areas and encodings exercise the real Binder Adapter, not a fake port. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class ContentVehicleDeclarativeMappingTest {
    private val adapters = mutableListOf<ContentVehicleAdapter>()
    @After fun stopAdapters() { adapters.forEach(ContentVehicleAdapter::stop) }

    @Test fun lockAndTemperatureUseImportedAddressesAndCodecsWhileAckKeepsActualReadback() {
        val config = profile {
            mapping("controls", "lock").apply {
                getJSONArray("reads").getJSONObject(0).put("functionId", 9001).put("area", 16)
                put("readModes", JSONArray().put(row(1, 41)).put(row(0, 42)))
                put("writes", JSONArray().put(write(0, 9002, 64, 92)).put(write(1, 9002, 64, 91)))
            }
            getJSONObject("signals").getJSONObject("cabin_temperature")
                .put("functionId", 9010).put("area", 5).put("scale", 0.1).put("offset", -2)
        }
        val service = MappingBinder().apply {
            ints[9001 to 16] = 41
            floats[9010 to 5] = 320f
        }
        val adapter = attach(config, service)
        val snapshots = observe(adapter)
        val before = readVehicleCommandSnapshot(adapter, service)
        assertTrue(before.lockKnown)
        assertTrue(before.locked)
        assertEquals(30f, before.temperatureC, 0.001f)
        assertTrue(adapter.requestLock(false, 41L))
        assertTrue(service.writes.isEmpty())
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(listOf(Packet(5, 9002, 64, listOf(92))), service.writes)
        assertTrue("Binder acknowledgement cannot fabricate the requested vehicle state", snapshots.last().locked)
        assertTrue(service.calls.any { it.transaction == 7 && it.function == 9001 && it.area == 16 })
        assertTrue(service.calls.any { it.transaction == 13 && it.function == 9010 && it.area == 5 })
        assertFalse(service.calls.any { it.function == 1045 || it.function == 1047 })
        service.ints[9001 to 16] = 42
        assertFalse(readVehicleCommandSnapshot(adapter, service).locked)
        service.ints[9001 to 16] = 1
        assertFalse(readVehicleCommandSnapshot(adapter, service).lockKnown)
        assertFalse(adapter.requestLock(true, 42L))
        assertEquals(1, service.writes.size)
    }

    @Test fun rearToggleUsesSeparateReadAndWriteAreasAndStillRequiresFreshExpectedState() {
        val config = profile {
            mapping("controls", "rear_wiper").apply {
                getJSONArray("reads").getJSONObject(0).put("functionId", 9101).put("area", 16)
                put("readModes", JSONArray().put(row(0, 51)).put(row(1, 52)))
                put("writes", JSONArray().put(write(0, 9102, 64, 77)).put(write(1, 9102, 64, 77)))
            }
        }
        val service = MappingBinder().apply { ints[9101 to 16] = 51 }
        val adapter = attach(config, service)
        service.onWrite = { packet -> if (packet.function == 9102) service.ints[9101 to 16] = 52 }
        assertTrue(adapter.requestRearWindow("rear_wiper", 0, 1, 51L, SystemClock.uptimeMillis() + 6000))
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(listOf(Packet(5, 9102, 64, listOf(77))), service.writes)
        assertEquals(1, readVehicleCommandSnapshot(adapter, service).rearWiperLevel)
        assertTrue(adapter.requestRearWindow("rear_wiper", 1, 0, 52L, SystemClock.uptimeMillis() + 6000))
        service.ints[9101 to 16] = 51 // State changed after admission, before the non-idempotent request.
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals("a stale expectation never causes another toggle", 1, service.writes.size)
        assertFalse(service.calls.any { it.function == 609 })
    }

    @Test fun brightnessArrayKeepsItsImplementedTransportButUsesProfilePrefixAddressesAndModes() {
        val config = profile {
            mapping("system", "brightness").apply {
                getJSONArray("reads").getJSONObject(0).put("functionId", 9201).put("area", 7)
                put("arrayPrefix", 13)
                put("readModes", JSONArray((1..10).map { JSONObject().put("raw", JSONArray(listOf(12, 90 + it))).put("mode", it) }))
                put("writes", JSONArray((1..10).map { write(it, 9202, 8, 90 + it) }))
            }
        }
        val service = MappingBinder().apply { arrays[9201 to 7] = listOf(12, 91) }
        val adapter = attach(config, service)
        val before = readVehicleCommandSnapshot(adapter, service)
        assertEquals(1, before.featureSnapshot.centerBrightnessLevel)
        assertTrue(adapter.requestCenterBrightness(7, 61L, SystemClock.uptimeMillis() + 6000))
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(listOf(Packet(6, 9202, 8, listOf(13, 97))), service.writes)
        assertEquals(1, readVehicleCommandSnapshot(adapter, service).featureSnapshot.centerBrightnessLevel)
        service.arrays[9201 to 7] = listOf(12, 97)
        assertEquals(7, readVehicleCommandSnapshot(adapter, service).featureSnapshot.centerBrightnessLevel)
        service.arrays[9201 to 7] = listOf(12, "invalid", 97)
        assertFalse(readVehicleCommandSnapshot(adapter, service).featureSnapshot.centerBrightnessKnown)
    }

    private fun profile(change: JSONObject.() -> Unit): ContentVehicleConfig {
        val app = RuntimeEnvironment.getApplication()
        val root = JSONObject(app.assets.open("content-vehicle/icar03.json").use { it.readBytes().toString(Charsets.UTF_8) }).apply(change)
        return ContentVehicleConfig.validate(root.toString().toByteArray()).also { assertTrue(it.message(), it.isValid) }
    }
    private fun JSONObject.mapping(section: String, id: String) = getJSONObject(section).getJSONObject(id).getJSONObject("mapping")
    private fun row(mode: Int, raw: Int) = JSONObject().put("mode", mode).put("raw", JSONArray(listOf(raw)))
    private fun write(mode: Int, function: Int, area: Int, raw: Int) = JSONObject().put("mode", mode).put("functionId", function).put("area", area).put("value", raw)
    private fun attach(config: ContentVehicleConfig, service: MappingBinder): ContentVehicleAdapter =
        ContentVehicleAdapter(RuntimeEnvironment.getApplication()).also {
            it.configure(config)
            setVehicleAdapterField(it, "running", true)
            setVehicleAdapterField(it, "binder", service)
            setVehicleAdapterField(it, "workerHandler", Handler(Looper.getMainLooper()))
            adapters += it
            readVehicleCommandSnapshot(it, service)
        }
    private fun observe(adapter: ContentVehicleAdapter): MutableList<ContentPorts.VehicleSnapshot> {
        val result = mutableListOf<ContentPorts.VehicleSnapshot>()
        setVehicleAdapterField(adapter, "listener", object : ContentPorts.VehicleSnapshotListener {
            override fun onVehicleSnapshot(snapshot: ContentPorts.VehicleSnapshot) { result += snapshot }
            override fun onVehicleCommandFailed(requestId: Long, message: String) { }
        })
        return result
    }
    private data class Packet(val transaction: Int, val function: Int, val area: Int, val values: List<Int> = emptyList())
    private class MappingBinder : Binder() {
        val ints = mutableMapOf<Pair<Int, Int>, Int>()
        val floats = mutableMapOf<Pair<Int, Int>, Float>()
        val arrays = mutableMapOf<Pair<Int, Int>, List<Any>>()
        val calls = mutableListOf<Packet>()
        val writes get() = calls.filter { it.transaction == 5 || it.transaction == 6 }
        var onWrite: (Packet) -> Unit = { }
        init { attachInterface(null, "com.chery.canmanager.interfaces.IVirturalCarProperty") }
        override fun onTransact(code: Int, data: Parcel, reply: Parcel?, flags: Int): Boolean {
            data.enforceInterface("com.chery.canmanager.interfaces.IVirturalCarProperty")
            val function = data.readInt()
            val area = data.readInt()
            val values = when (code) {
                5 -> listOf(data.readInt())
                6 -> data.readArrayList(javaClass.classLoader)!!.map { it as Int }
                else -> emptyList()
            }
            val packet = Packet(code, function, area, values)
            calls += packet
            assertEquals(0, data.dataAvail())
            reply!!.writeNoException()
            when (code) {
                5, 6 -> onWrite(packet)
                7 -> reply.writeInt(ints[function to area] ?: -1)
                8 -> reply.writeList(arrays[function to area] ?: emptyList<Any>())
                13 -> reply.writeFloat(floats[function to area] ?: -1000f)
                else -> return false
            }
            return true
        }
    }
}
