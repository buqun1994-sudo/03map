package com.icar03.content.runtime

import android.graphics.Bitmap
import android.os.Handler
import android.os.Looper
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentRegistry
import com.autonavi.amapauto.content.ContentState
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.ui.*
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlin.math.roundToInt
import java.util.concurrent.Executors
import java.util.concurrent.Future

/** Shared never destroys the caller's store; Owned transfers lifetime to this binding. */
enum class StoreOwnership { Shared, Owned }

/** Main-thread API. Store callbacks may arrive on any thread, but projections never do. */
class ContentBinding(
    private val store: ContentStore,
    private val ownership: StoreOwnership = StoreOwnership.Shared,
    private val mapper: ContentUiMapper = ContentUiMapper(),
) : AutoCloseable {
    private val handler = Handler(Looper.getMainLooper())
    private var generation = 0L
    private var systemWriteSequence = 0L
    private var running = false
    private var closed = false
    private var listener: ContentStore.Listener? = null
    private var brightness = ContentPorts.SystemSnapshot(false, 0)
    private var volume = ContentPorts.SystemSnapshot(false, 0)
    private var sourcesOpen = false
    private var feedback: String? = null
    private var commandSequence = store.snapshot().commandSequence
    private val mutableState = MutableStateFlow(inactive(mapper.map(store.snapshot())))
    val state: StateFlow<ContentUiState> = mutableState.asStateFlow()
    private val mutableArtwork = MutableStateFlow<Bitmap?>(null)
    val artwork: StateFlow<Bitmap?> = mutableArtwork.asStateFlow()
    private val mutableAmbient = MutableStateFlow<Bitmap?>(null)
    val ambientArtwork: StateFlow<Bitmap?> = mutableAmbient.asStateFlow()
    private var ambientSource: Bitmap? = null
    private var ambientBitmapGeneration = 0
    private var ambientSequence = 0L
    private var ambientJob: Future<*>? = null
    private val artworkWorker = Executors.newSingleThreadExecutor()

    fun start() {
        checkMain()
        if (closed || running) return
        running = true
        val epoch = ++generation
        store.startLyrics()
        readSystem()
        listener = ContentStore.Listener { snapshot ->
            val copy = snapshot.copy()
            if (Looper.myLooper() == Looper.getMainLooper()) {
                if (running && generation == epoch) project(copy)
            } else handler.post { if (running && generation == epoch) project(store.snapshot()) }
        }.also(store::addListener)
        fun tick() {
            if (!running || generation != epoch) return
            readSystem()
            store.updateClock(System.currentTimeMillis())
            handler.postDelayed({ tick() }, 1000L)
        }
        tick()
    }

    fun stop() {
        checkMain()
        if (!running) return
        running = false
        store.stopLyrics()
        generation++
        ambientSequence++
        ambientJob?.cancel(true)
        ambientJob = null
        listener?.let(store::removeListener)
        listener = null
        handler.removeCallbacksAndMessages(null)
        sourcesOpen = false
        feedback = null
        mutableArtwork.value = null
        mutableAmbient.value?.takeUnless { it.isRecycled }?.recycle()
        mutableAmbient.value = null
        ambientSource = null
        mutableState.value = inactive(mutableState.value)
    }

    private fun inactive(state: ContentUiState) = state.copy(
        sourcesOpen = false, message = null,
        controls = state.controls.mapValues { it.value.copy(available = false) },
        brightness = state.brightness.copy(available = false), volume = state.volume.copy(available = false),
        media = state.media.copy(playbackAvailable = false, nextAvailable = false, sourceAvailable = false),
    )

    override fun close() {
        checkMain()
        if (closed) return
        stop()
        closed = true
        artworkWorker.shutdownNow()
        if (ownership == StoreOwnership.Owned) store.destroy()
    }

    fun dispatch(event: ContentEvent) {
        checkMain()
        if (!running || closed) return
        if (event is ContentEvent.ControlTapped || event == ContentEvent.PlayPause || event == ContentEvent.NextTrack
            || event is ContentEvent.SourceSelected || event is ContentEvent.BrightnessChanged || event is ContentEvent.VolumeChanged) feedback = null
        // Always gate against a fresh store snapshot, not the last rendered frame.
        project(store.snapshot())
        when (event) {
            is ContentEvent.ControlTapped -> {
                if (state.value.controls[event.id]?.available != true) return
                if (event.id == ControlId.Lock) store.toggleLock()
                else store.cycleSeatLevel(when (event.id) {
                    ControlId.Ventilation -> ContentRegistry.Shortcuts.SEAT_VENTILATION
                    ControlId.Heating -> ContentRegistry.Shortcuts.SEAT_HEATING
                    ControlId.Massage -> ContentRegistry.Shortcuts.SEAT_MASSAGE
                    else -> return
                })
            }
            is ContentEvent.BrightnessChanged -> writeSystem(0, event.value)
            is ContentEvent.VolumeChanged -> writeSystem(1, event.value)
            ContentEvent.PlayPause -> if (state.value.media.playbackAvailable) store.toggleMediaPlayback()
            ContentEvent.NextTrack -> if (state.value.media.nextAvailable) store.nextMediaTrack()
            is ContentEvent.SourceSelected -> {
                if (!state.value.media.sourceAvailable) return
                sourcesOpen = false
                store.selectMediaSource(event.source.label)
                project(store.snapshot())
            }
            is ContentEvent.PageSelected -> store.setPageIndex(if (event.page == PanelPage.Lyrics) 1 else 0)
            ContentEvent.OpenSources -> {
                if (state.value.media.sourceAvailable) sourcesOpen = true
                project(store.snapshot())
            }
            ContentEvent.DismissSheet -> { sourcesOpen = false; feedback = null; project(store.snapshot()) }
            ContentEvent.SettingsTapped -> { feedback = "设置入口尚未接入"; project(store.snapshot()) }
            // Preview and theme events have no production routing.
            else -> Unit
        }
    }

    private fun writeSystem(kind: Int, value: Float) {
        if (!value.isFinite()) return
        val requestSequence = ++systemWriteSequence
        val before = read(kind)
        if (!before.available) { readSystem(); project(store.snapshot()); return }
        val target = (value.coerceIn(0f, 1f) * 100f).roundToInt()
        if (kotlin.math.abs(before.percent - target) <= 1) { readSystem(); project(store.snapshot()); return }
        val accepted = try { store.systemPort().write(kind, target) } catch (_: RuntimeException) { false }
        val actual = read(kind)
        feedback = if (accepted && actual.available && kotlin.math.abs(actual.percent - target) <= 1) null else "系统状态未确认"
        readSystem()
        project(store.snapshot())
        val epoch = generation
        handler.postDelayed({
            if (running && generation == epoch && systemWriteSequence == requestSequence) {
                readSystem()
                val confirmed = if (kind == 0) brightness else volume
                if (accepted && confirmed.available && kotlin.math.abs(confirmed.percent - target) <= 1) feedback = null
                project(store.snapshot())
            }
        }, 250L)
    }

    private fun read(kind: Int): ContentPorts.SystemSnapshot = try {
        store.systemPort().read(kind) ?: ContentPorts.SystemSnapshot(false, 0)
    } catch (_: RuntimeException) { ContentPorts.SystemSnapshot(false, 0) }

    private fun readSystem() { brightness = read(0); volume = read(1) }

    private fun project(snapshot: ContentState) {
        if (snapshot.commandSequence != commandSequence) { commandSequence = snapshot.commandSequence; feedback = null }
        val projected = mapper.map(snapshot, brightness, volume, RuntimeCapabilities(
            store.isVehicleControlAvailable, store.isLockControlAvailable, store.isMediaSourceAvailable))
        mutableState.value = projected.copy(sourcesOpen = sourcesOpen, message = feedback ?: projected.message)
        mutableArtwork.value = snapshot.mediaArtwork?.takeIf {
            snapshot.mediaDataAvailable && !snapshot.mediaPreview && snapshot.pendingSource.isEmpty() && !it.isRecycled
        }
        val source = mutableArtwork.value.takeIf { projected.media.playing && running }
        val bitmapGeneration = source?.generationId ?: 0
        if (source !== ambientSource || bitmapGeneration != ambientBitmapGeneration) {
            ambientSource = source
            ambientBitmapGeneration = bitmapGeneration
            val sequence = ++ambientSequence
            ambientJob?.cancel(true)
            ambientJob = null
            // Show a cheap blurred seed immediately; the richer colour field replaces it off the UI thread.
            val seed = source?.let(::softenArtwork)
            mutableAmbient.value?.takeUnless { it.isRecycled }?.recycle()
            mutableAmbient.value = seed
            if (source != null) {
                val epoch = generation
                ambientJob = artworkWorker.submit {
                    val field = createAmbientField(source)
                    handler.post {
                        if (running && generation == epoch && ambientSequence == sequence
                            && ambientSource === source && source.generationId == bitmapGeneration) {
                            if (field != null) {
                                mutableAmbient.value?.takeUnless { it.isRecycled }?.recycle()
                                mutableAmbient.value = field
                            }
                        }
                    }
                }
            }
        }
    }

    private fun checkMain() { check(Looper.myLooper() == Looper.getMainLooper()) { "ContentBinding must be used on the main thread" } }
}
