package com.icar03.content.runtime.lyrics

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.os.Handler
import android.os.Looper
import android.util.Log
import com.autonavi.amapauto.content.ContentPorts
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineDispatcher
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import java.io.Closeable
import java.net.URL
import java.util.Collections
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicLong

/**
 * A lifecycle-owned effect behind ContentStore's LyricsPort, not a second content Store.
 * It resolves immutable whole-song lines; progress and line scheduling stay in ContentStore.
 * Construction performs no IO. start/stop may repeat; each start reads the private persisted cache.
 */
class ContentLyricsEngine internal constructor(
    context: Context,
    private val resourcesFactory: (Context) -> LyricsEngineResources,
    private val ioDispatcher: CoroutineDispatcher,
    private val coverLoader: (String, LyricsCancellationSignal) -> Bitmap?
) : ContentPorts.LyricsPort {
    constructor(context: Context) : this(
        context,
        ::DirectLyricsEngineResources,
        Dispatchers.IO,
        ::loadCoverBitmap
    )

    private val appContext = context.applicationContext
    private val handler = Handler(Looper.getMainLooper())
    private val lifecycle = AtomicLong()
    private val cacheMutex = Mutex()
    private val recording = MediaRecordingStateTracker()
    @Volatile private var requestedRunning = false
    private var activeLifecycle = 0L
    private var scope: CoroutineScope? = null
    private var resources: LyricsEngineResources? = null
    private var listener: ContentPorts.LyricsSnapshotListener? = null
    private var media: ContentPorts.MediaSnapshot? = null
    private var binding: MediaRecordingState? = null
    private var requestEpoch = 0L
    private var automaticJob: Job? = null
    private var coverJob: Job? = null
    private var coverCancellation: LyricsCancellationSignal? = null
    private var coverAttempted = false
    private var fallbackArtwork: Bitmap? = null
    private var selected: ResolvedLyrics? = null
    private var lines: List<ContentPorts.LyricsLine> = emptyList()
    private var status = EMPTY
    private var lastPublished: ContentPorts.LyricsSnapshot? = null
    private var lastPublishedLines: List<ContentPorts.LyricsLine>? = null

    override fun start(listener: ContentPorts.LyricsSnapshotListener) {
        requestedRunning = true
        val epoch = lifecycle.incrementAndGet()
        onMain {
            if (!requestedRunning || lifecycle.get() != epoch) return@onMain
            deactivate()
            activeLifecycle = epoch
            this.listener = listener
            scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
            resources = try {
                resourcesFactory(appContext)
            } catch (error: Exception) {
                Log.w(TAG, "Lyrics runtime unavailable", error)
                null
            }
        }
    }

    override fun update(snapshot: ContentPorts.MediaSnapshot) {
        val epoch = lifecycle.get()
        onMain {
            if (!isRunning(epoch)) return@onMain
            updateCurrent(snapshot)
        }
    }

    override fun stop() {
        requestedRunning = false
        lifecycle.incrementAndGet()
        onMain { if (!requestedRunning) deactivate() }
    }

    private fun updateCurrent(snapshot: ContentPorts.MediaSnapshot) {
        media = snapshot
        val metadata = snapshot.recordingMetadataOrNull()
        val next = recording.update(if (metadata != null) snapshot.source else null, metadata)
        val previous = binding
        binding = next
        val sameBinding = previous?.recordingGeneration == next?.recordingGeneration &&
            previous?.queryRevision == next?.queryRevision
        val currentQuery = next?.identity()?.lookup()
        val proofStillValid = selected?.let { selection ->
            currentQuery != null && LyricsCandidateSelector.isProofValid(
                currentQuery, selection.result, selection.proof)
        } ?: true
        if (!sameBinding || !proofStillValid) {
            cancelOperations()
            selected = null
            lines = emptyList()
            fallbackArtwork = null
            lastPublished = null
            status = if (next == null) EMPTY else if (next.identity().isUsable) LOADING else UNAVAILABLE
            publish()
            if (next != null) startResolution(next)
        } else if (next == null) {
            status = EMPTY
        }
        if (snapshot.artwork?.isRecycled == false) {
            cancelCover()
            fallbackArtwork = null
            coverAttempted = false
        } else if (next != null && !coverAttempted) {
            startCover(next)
        }
        publish()
    }

    private fun startResolution(state: MediaRecordingState) {
        val runtime = resources
        val currentScope = scope
        if (runtime == null || currentScope == null) {
            status = UNAVAILABLE
            publish()
            return
        }
        val epoch = requestEpoch
        val life = activeLifecycle
        val identity = state.identity()
        automaticJob = currentScope.launch {
            try {
                if (!identity.isUsable) {
                    if (isCurrent(life, epoch, state)) { status = UNAVAILABLE; publish() }
                    return@launch
                }
                val cached = withCache { runtime.cache.read(identity, recordUse = true) }
                if (!isCurrent(life, epoch, state)) return@launch
                if (cached?.selection == LyricsCacheSelection.MANUAL) {
                    applyResult(cached.result, null)
                    return@launch
                }
                val embedded = embeddedResolved(state, identity)
                if (embedded != null && LrcParser.parse(embedded.result.lyrics).isNotEmpty()) {
                    val persisted = withCache {
                        runtime.cache.writeAutomatic(identity, embedded)
                        runtime.cache.read(identity, recordUse = false)
                    }
                    if (!isCurrent(life, epoch, state)) return@launch
                    val usable = persisted?.takeIf { it.result == embedded.result }
                    applyResult(usable?.result ?: embedded.result, usable?.resolved ?: embedded)
                    return@launch
                }
                if (cached != null && !applyResult(cached.result, cached.resolved)) return@launch
                if (!LyricsCandidateSelector.canConfirm(identity.lookup()) ||
                    cached?.needsRefresh(System.currentTimeMillis()) == false) {
                    if (lines.isEmpty()) { status = UNAVAILABLE; publish() }
                    return@launch
                }
                val outcome = runtime.resolveLyrics(identity.lookup())
                if (!isCurrent(life, epoch, state)) return@launch
                val resolved = (outcome as? LyricsResolutionOutcome.Found)?.resolved
                if (resolved != null &&
                    LyricsCandidateSelector.isProofValid(identity.lookup(), resolved.result, resolved.proof) &&
                    LrcParser.parse(resolved.result.lyrics).isNotEmpty()) {
                    if (!proofValidForCurrent(resolved)) {
                        restartForCurrentMetadata()
                        return@launch
                    }
                    val persisted = withCache {
                        runtime.cache.writeAutomatic(identity, resolved)
                        runtime.cache.read(identity, recordUse = false)
                    }
                    if (!isCurrent(life, epoch, state)) return@launch
                    applyResult(persisted?.result ?: resolved.result, persisted?.resolved ?: resolved)
                } else if (lines.isEmpty() && outcome != LyricsResolutionOutcome.Cancelled) {
                    status = UNAVAILABLE
                    publish()
                }
            } catch (error: CancellationException) {
                throw error
            } catch (error: Exception) {
                if (isCurrent(life, epoch, state) && lines.isEmpty()) {
                    Log.w(TAG, "Lyrics resolution unavailable", error)
                    status = UNAVAILABLE
                    publish()
                }
            } finally {
                if (requestEpoch == epoch && activeLifecycle == life) automaticJob = null
            }
        }
    }

    private fun startCover(state: MediaRecordingState) {
        val runtime = resources ?: return
        val currentScope = scope ?: return
        val query = state.identity().lookup()
        if (!LyricsCandidateSelector.canFindCover(query)) return
        coverAttempted = true
        val epoch = requestEpoch
        val life = activeLifecycle
        val cancellation = LyricsCancellationSignal()
        coverCancellation = cancellation
        coverJob = currentScope.launch {
            try {
                val source = runtime.resolveCover(query)
                if (!isCurrent(life, epoch, state) || source.isBlank() ||
                    media?.artwork?.isRecycled == false) return@launch
                val bitmap = withContext(ioDispatcher) { coverLoader(source, cancellation) }
                if (!isCurrent(life, epoch, state) || media?.artwork?.isRecycled == false) {
                    // This bitmap has never been handed to ContentStore.
                    bitmap?.recycle()
                    return@launch
                }
                fallbackArtwork = bitmap?.takeUnless(Bitmap::isRecycled)
                publish()
            } catch (error: CancellationException) {
                throw error
            } catch (error: Exception) {
                if (isCurrent(life, epoch, state)) Log.w(TAG, "Cover fallback unavailable", error)
            } finally {
                cancellation.cancel()
                if (coverCancellation === cancellation) {
                    coverCancellation = null
                    coverJob = null
                }
            }
        }
    }

    private fun applyResult(result: LyricsResult, proof: ResolvedLyrics?): Boolean {
        if (proof != null && !proofValidForCurrent(proof)) {
            restartForCurrentMetadata()
            return false
        }
        selected = proof
        lines = Collections.unmodifiableList(LrcParser.align(result.lyrics, result.translatedLyrics).map {
            ContentPorts.LyricsLine(it.timeMs, it.text, it.translation)
        })
        status = if (lines.isEmpty()) UNAVAILABLE else READY
        publish()
        return true
    }

    private fun proofValidForCurrent(resolved: ResolvedLyrics): Boolean = binding?.identity()?.lookup()?.let {
        LyricsCandidateSelector.isProofValid(it, resolved.result, resolved.proof)
    } == true

    private fun restartForCurrentMetadata() {
        val state = binding ?: return
        cancelOperations()
        selected = null
        lines = emptyList()
        fallbackArtwork = null
        status = LOADING
        publish()
        startResolution(state)
        if (media?.artwork?.isRecycled != false) startCover(state)
    }

    private fun embeddedResolved(state: MediaRecordingState, identity: LyricsPlaybackIdentity): ResolvedLyrics? {
        val body = state.metadata.embeddedLyrics
        if (!isEmbeddedSynchronizedLyrics(body)) return null
        val candidate = LyricsResult(
            lyrics = body,
            durationMs = identity.durationMs,
            source = "media-session",
            sourceId = "embedded",
            candidateTrack = identity.track,
            candidateArtist = identity.artist,
            candidateAlbum = identity.album,
            lyricsKind = LyricsKind.SYNCHRONIZED
        )
        return LyricsCandidateSelector.selectCandidatesWithProof(identity.lookup(), listOf(candidate))
            .firstOrNull()?.let { ResolvedLyrics(it.candidate, it.proof) }
    }

    private suspend fun <T> withCache(block: () -> T): T = withContext(ioDispatcher) {
        cacheMutex.withLock {
            currentCoroutineContext().ensureActive()
            block()
        }
    }

    private fun cancelOperations() {
        requestEpoch++
        automaticJob?.cancel()
        automaticJob = null
        resources?.cancelCurrent()
        cancelCover()
        coverAttempted = false
    }

    private fun cancelCover() {
        coverCancellation?.cancel()
        coverCancellation = null
        coverJob?.cancel()
        coverJob = null
    }

    private fun deactivate() {
        listener = null
        cancelOperations()
        scope?.cancel()
        scope = null
        val retired = resources
        resources = null
        retired?.cancelAll()
        if (retired != null) {
            // Database close waits for the last cancelled cache operation, away from the UI thread.
            CoroutineScope(ioDispatcher).launch { cacheMutex.withLock { retired.close() } }
        }
        media = null
        binding = null
        recording.clear()
        selected = null
        lines = emptyList()
        status = EMPTY
        fallbackArtwork = null
        lastPublished = null
    }

    private fun isRunning(life: Long) = requestedRunning && lifecycle.get() == life &&
        activeLifecycle == life && listener != null

    private fun isCurrent(life: Long, epoch: Long, state: MediaRecordingState) =
        isRunning(life) && requestEpoch == epoch &&
            binding?.recordingGeneration == state.recordingGeneration &&
            binding?.queryRevision == state.queryRevision

    private fun publish() {
        if (!isRunning(activeLifecycle)) return
        val current = media ?: return
        val artwork = fallbackArtwork?.takeUnless(Bitmap::isRecycled)
            ?.takeIf { current.artwork == null || current.artwork.isRecycled }
        val previous = lastPublished
        val key = current.recordingKey()
        if (previous != null && previous.recordingKey == key && previous.mediaGeneration == current.generation &&
            previous.status == status && lastPublishedLines === lines && previous.artwork === artwork) return
        val result = ContentPorts.LyricsSnapshot(key, current.generation, status, lines, artwork)
        lastPublished = result
        lastPublishedLines = lines
        listener?.onLyricsSnapshot(result)
    }

    private fun onMain(block: () -> Unit) {
        if (Looper.myLooper() == Looper.getMainLooper()) block() else handler.post { block() }
    }

    private fun MediaRecordingState.identity() = LyricsPlaybackIdentity(
        metadata.track, metadata.artist, metadata.album, metadata.durationMs)

    companion object {
        private const val TAG = "ContentLyrics"
        private const val EMPTY = 0
        private const val LOADING = 1
        private const val READY = 2
        private const val UNAVAILABLE = 3

        @JvmStatic fun create(context: Context): ContentPorts.LyricsPort = ContentLyricsEngine(context)
    }
}

internal interface LyricsEngineResources : Closeable {
    val cache: LyricsPlaybackCache
    suspend fun resolveLyrics(query: LyricsLookup): LyricsResolutionOutcome
    suspend fun resolveCover(query: LyricsLookup): String
    fun cancelCurrent()
    fun cancelAll()
}

private class DirectLyricsEngineResources(context: Context) : LyricsEngineResources {
    override val cache = LyricsCache(context)
    private val repository = DirectLyricsRepository()
    private val coordinator = LyricsResolutionCoordinator(repository, repository)
    override suspend fun resolveLyrics(query: LyricsLookup) = coordinator.resolveLatest(query)
    override suspend fun resolveCover(query: LyricsLookup) = coordinator.resolveCover(query)
    override fun cancelCurrent() = coordinator.cancelCurrent()
    override fun cancelAll() { coordinator.close(); repository.close() }
    override fun close() { cancelAll(); cache.close() }
}

/** Decode bounded response bytes once per recording; never allocate the source's full-sized artwork. */
private fun loadCoverBitmap(source: String, cancellation: LyricsCancellationSignal): Bitmap? {
    val parsed = URL(source)
    if (parsed.protocol !in setOf("https", "http") || parsed.userInfo != null) return null
    // Public providers occasionally return an HTTP artwork URL. All image requests use TLS.
    val url = if (parsed.protocol == "http") URL("https", parsed.host, parsed.port, parsed.file) else parsed
    val deadline = System.nanoTime() + TimeUnit.MILLISECONDS.toNanos(3_000L)
    val bytes = HttpLyricsTransport().getBytes(url.toExternalForm(), emptyMap(), deadline, cancellation)
    cancellation.throwIfCancelled()
    val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
    BitmapFactory.decodeByteArray(bytes, 0, bytes.size, bounds)
    if (bounds.outWidth <= 0 || bounds.outHeight <= 0) return null
    var sample = 1
    while ((maxOf(bounds.outWidth, bounds.outHeight) + sample - 1) / sample > 512) sample *= 2
    val bitmap = BitmapFactory.decodeByteArray(bytes, 0, bytes.size, BitmapFactory.Options().apply {
        inSampleSize = sample
        inPreferredConfig = Bitmap.Config.ARGB_8888
    }) ?: return null
    if (cancellation.isCancelled || Thread.currentThread().isInterrupted) {
        bitmap.recycle()
        cancellation.throwIfCancelled()
    }
    return bitmap
}
