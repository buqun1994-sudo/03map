package com.icar03.content.runtime

import android.content.ComponentName
import android.content.Context
import android.content.ServiceConnection
import android.content.pm.PackageManager
import android.os.Handler
import android.os.IBinder
import android.util.Log
import com.icar03.content.model.DrivingGearMapper
import com.icar03.content.model.VehicleGear
import java.lang.reflect.InvocationTargetException
import java.lang.reflect.Method

internal data class AutomotiveGearIds(val selector: Int = 289408000)
internal fun interface AutomotiveGearProperties { fun readInt(propertyId: Int): Int? }
internal interface AutomotiveGearSession {
    fun connect()
    fun disconnect()
    fun properties(): AutomotiveGearProperties?
}
internal interface AutomotiveGearPlatform {
    val ids: AutomotiveGearIds
    fun create(context: Context, connection: ServiceConnection): AutomotiveGearSession?
}

/**
 * Read-only public Automotive properties. All connection work and reads use the existing vehicle
 * worker; the vehicle adapter alone owns polling and publication. Optional Android 9 Car types
 * are reflected once per connection, so a missing callback SDK class cannot break app startup.
 */
class AutomotiveGearReader internal constructor(
    context: Context,
    private val worker: Handler,
    private val onUnavailable: Runnable,
    private val platform: AutomotiveGearPlatform,
) {
    constructor(context: Context, worker: Handler, onUnavailable: Runnable) :
        this(context, worker, onUnavailable, ReflectiveAutomotiveGearPlatform())

    private val appContext = context.applicationContext
    private val lifecycleLock = Any()
    @Volatile private var started = false
    @Volatile private var generation = 0L
    // The following fields are owned only by the single ContentVehicleReader worker.
    private var session: AutomotiveGearSession? = null
    private var properties: AutomotiveGearProperties? = null
    private var sessionGeneration = 0L
    private var connectionSequence = 0L
    private var lastReading: String? = null
    private val lastErrors = mutableMapOf<String, String>()

    fun start() {
        val epoch = synchronized(lifecycleLock) {
            if (started) return
            started = true
            ++generation
        }
        worker.post { ensureConnection(epoch) }
    }

    fun stop() {
        val epoch = synchronized(lifecycleLock) {
            if (!started) return
            started = false
            val old = generation
            generation++
            old
        }
        // Adapter removes old queued reads before calling stop, then quits the same worker safely.
        worker.post { if (sessionGeneration == epoch) releaseSession() }
    }

    /** Called only from the existing adapter read loop, never from composition or a main-thread ticker. */
    fun readGear(): VehicleGear {
        val epoch = generation
        if (!active(epoch)) return VehicleGear.Unknown
        ensureConnection(epoch)
        val currentSession = session ?: return VehicleGear.Unknown
        if (properties == null) {
            properties = attempt("property-manager") { currentSession.properties() }
        }
        val manager = properties ?: return VehicleGear.Unknown
        val ids = platform.ids
        // S56's live selector is the verified owner. CURRENT_GEAR has no verified live
        // event on this vehicle and uses an incompatible enum; never prefer its stale value.
        val selectorRaw = attempt("GEAR_SELECTION") { manager.readInt(ids.selector) }
        val gear = DrivingGearMapper.fromGearSelection(selectorRaw)
        if (!active(epoch) || session !== currentSession) return VehicleGear.Unknown
        val signature = "$selectorRaw/$gear"
        if (signature != lastReading) {
            lastReading = signature
            Log.i(TAG, "gear selector=$selectorRaw mapped=$gear")
        }
        return gear
    }

    private fun active(epoch: Long) = started && generation == epoch

    private fun ensureConnection(epoch: Long) {
        if (!active(epoch) || session != null) return
        val connectionId = ++connectionSequence
        val connection = object : ServiceConnection {
            override fun onServiceConnected(name: ComponentName, service: IBinder) {
                // The framework can call back before createCar returns; serialize after assignment.
                worker.post {
                    if (active(epoch) && connectionId == connectionSequence) {
                        properties = attempt("property-manager") { session?.properties() }
                    }
                }
            }
            override fun onServiceDisconnected(name: ComponentName) = disconnect()
            override fun onBindingDied(name: ComponentName) = disconnect()
            override fun onNullBinding(name: ComponentName) = disconnect()
            private fun disconnect() {
                worker.post {
                    if (active(epoch) && connectionId == connectionSequence) {
                        releaseSession()
                        lastReading = null
                        onUnavailable.run()
                    }
                }
            }
        }
        val created = attempt("connect") { platform.create(appContext, connection) } ?: return
        if (!active(epoch)) { attempt("disconnect") { created.disconnect() }; return }
        session = created
        sessionGeneration = epoch
        if (attempt("connect") { created.connect(); true } != true) {
            releaseSession()
            if (active(epoch)) onUnavailable.run()
        }
    }

    private fun releaseSession() {
        val old = session
        session = null
        properties = null
        sessionGeneration = 0L
        connectionSequence++ // Even a delayed callback from this same lifecycle no longer belongs to us.
        old?.let { attempt("disconnect") { it.disconnect() } }
    }

    private fun <T> attempt(operation: String, action: () -> T): T? = try {
        action()
    } catch (error: Exception) {
        val cause = if (error is InvocationTargetException) error.targetException ?: error else error
        val signature = "$operation/${cause.javaClass.name}/${cause.message}"
        if (signature != lastErrors[operation]) {
            lastErrors[operation] = signature
            Log.w(TAG, "Automotive gear $operation unavailable", cause)
        }
        null
    } catch (error: LinkageError) {
        val signature = "$operation/${error.javaClass.name}"
        if (signature != lastErrors[operation]) { lastErrors[operation] = signature; Log.w(TAG, "Optional Automotive gear API unavailable", error) }
        null
    }

    private companion object { const val TAG = "ContentVehicleGear" }
}

/** Methods and public constants are cached, never resolved repeatedly in the poll path. */
internal class ReflectiveAutomotiveGearPlatform(
    private val classResolver: (String) -> Class<*> = { Class.forName(it) },
    private val automotiveAvailable: (Context) -> Boolean = {
        it.packageManager.hasSystemFeature(PackageManager.FEATURE_AUTOMOTIVE)
    },
) : AutomotiveGearPlatform {
    override val ids: AutomotiveGearIds by lazy {
        AutomotiveGearIds(staticInt("android.car.VehiclePropertyIds", "GEAR_SELECTION", 289408000))
    }
    private data class CarApi(val create: Method, val connect: Method, val disconnect: Method, val manager: Method)
    private val carApi: CarApi? by lazy {
        runCatching {
            val type = classResolver("android.car.Car")
            CarApi(type.getMethod("createCar", Context::class.java, ServiceConnection::class.java),
                type.getMethod("connect"), type.getMethod("disconnect"), type.getMethod("getCarManager", String::class.java))
        }.getOrNull()
    }
    private var readIntMethod: Method? = null
    private var readIntOwner: Class<*>? = null

    override fun create(context: Context, connection: ServiceConnection): AutomotiveGearSession? {
        if (!automotiveAvailable(context)) return null
        val api = carApi ?: return null
        val car = api.create.invoke(null, context, connection) ?: return null
        return object : AutomotiveGearSession {
            override fun connect() { api.connect.invoke(car) }
            override fun disconnect() { api.disconnect.invoke(car) }
            override fun properties(): AutomotiveGearProperties? {
                val manager = api.manager.invoke(car, "property") ?: return null
                if (readIntOwner !== manager.javaClass) {
                    readIntMethod = manager.javaClass.getMethod("getIntProperty", Int::class.javaPrimitiveType, Int::class.javaPrimitiveType)
                    readIntOwner = manager.javaClass
                }
                val method = readIntMethod ?: return null
                return AutomotiveGearProperties { propertyId -> method.invoke(manager, propertyId, 0) as? Int }
            }
        }
    }

    private fun staticInt(type: String, field: String, fallback: Int): Int =
        runCatching { classResolver(type).getField(field).getInt(null) }.getOrDefault(fallback)
}
