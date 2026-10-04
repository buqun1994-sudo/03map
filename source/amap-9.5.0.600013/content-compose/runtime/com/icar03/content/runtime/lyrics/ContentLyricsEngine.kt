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
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.collect
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.emptyFlow
import kotlinx.coroutines.launch
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeoutOrNull
import java.io.Closeable
import java.net.URL
import java.util.Collections
import java.util.LinkedHashSet
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicLong

private const val DEFAULT_COVER_TOTAL_DEADLINE_MS = 9_000L

/**
 * A lifecycle-owned effect behind ContentStore's LyricsPort, not a second content Store.
 * It resolves immutable whole-song lines; progress and line scheduling stay in ContentStore.
 * Construction performs no IO. start/stop may repeat; each start reads the private persisted cache.
 */
class ContentLyricsEngine internal constructor(
    context: Context,
    private val resourcesFactory: (Context) -> LyricsEngineResources,
    private val ioDispatcher: CoroutineDispatcher,
    private val coverLoader: (String, LyricsCancellationSignal) -> Bitmap?,
    private val coverRetryWait: suspend (Long) -> Unit = { delay(it) },
    private val coverDeadlineMs: Long = DEFAULT_COVER_TOTAL_DEADLINE_MS
) : ContentPorts.LyricsPort {
    init {
        require(coverDeadlineMs > 0L)
    }

    constructor(context: Context) : this(
        context,
        ::DirectLyricsEngineResources,
        Dispatchers.IO,
        ::loadCoverBitmap
    )

    private val appContext = context.applicationContext
    private val coverCache = ContentCoverCache(appContext)
    private val handler = Handler(Looper.getMainLooper())
    private val lifecycle = AtomicLong()
    private val cacheMutex = Mutex()
    private val cacheWorkScope = CoroutineScope(SupervisorJob() + ioDispatcher)
    private val pendingCacheWrites = mutableListOf<Job>()
    private var resumePending = false
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
    private var nativeCoverJob: Job? = null
    private var nativeCoverToken: Triple<String, Bitmap, Int>? = null
    private var coverCancellation: LyricsCancellationSignal? = null
    private var coverAttempted = false
    private var fallbackArtwork: Bitmap? = null
    private var selected: ResolvedLyrics? = null
    private var observedSelectionPolicyRevision = Long.MIN_VALUE
    private var lines: List<ContentPorts.LyricsLine> = emptyList()
    private var timed = true
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
            observedSelectionPolicyRevision = resources?.selectionPolicyRevision ?: 0L
            val runtime = resources
            if (runtime != null) {
                scope?.launch {
                    runtime.selectionPolicyChanges.collect { revision ->
                        if (!isRunning(epoch) || resources !== runtime ||
                            revision == observedSelectionPolicyRevision
                        ) return@collect
                        observedSelectionPolicyRevision = revision
                        binding?.takeIf { it.identity().isUsable }?.let(::restartResolutionKeepingContent)
                    }
                }
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
        val policyRevision = resources?.selectionPolicyRevision ?: 0L
        val policyChanged = sameBinding && next != null &&
            policyRevision != observedSelectionPolicyRevision
        observedSelectionPolicyRevision = policyRevision
        if (!sameBinding || !proofStillValid) {
            cancelOperations()
            selected = null
            lines = emptyList()
            timed = true
            fallbackArtwork = null
            lastPublished = null
            status = if (next == null) EMPTY else if (next.identity().isUsable) LOADING else UNAVAILABLE
            publish()
            if (next != null) startResolution(next)
        } else if (policyChanged) {
            // A source preference/auth change must not flash LOADING or erase admitted content.
            // It still gets a fresh resolution round, even when the automatic cache is fresh.
            restartResolutionKeepingContent(next)
        } else if (next == null) {
            status = EMPTY
        } else if (resumePending) {
            // Revalidate the first resumed media snapshot before emitting retained content.
            // An already visible body stays READY while cache refresh runs in the background.
            publish()
            startResolution(next)
        }
        resumePending = false
        if (snapshot.artwork?.isRecycled == false) {
            cancelCover()
            fallbackArtwork = null
            coverAttempted = false
            if (next != null) persistNativeCover(next, snapshot.artwork)
        } else if (next != null && !coverAttempted) {
            startCover(next)
        }
        publish()
    }

    private fun startResolution(state: MediaRecordingState, forceRefresh: Boolean = false) {
        val runtime = resources
        val currentScope = scope
        if (runtime == null || currentScope == null) {
            if (!hasAdmittedContent()) status = UNAVAILABLE
            publish()
            return
        }
        val epoch = requestEpoch
        val life = activeLifecycle
        val identity = state.identity()
        automaticJob = currentScope.launch {
            try {
                if (!identity.isUsable) {
                    if (isCurrent(life, epoch, state)) { if (!hasAdmittedContent()) status = UNAVAILABLE; publish() }
                    return@launch
                }
                val cached = withCache { runtime.cache.read(identity, recordUse = true) }
                if (!isCurrent(life, epoch, state)) return@launch
                if (cached?.selection == LyricsCacheSelection.MANUAL) {
                    applyResult(cached.result, null)
                    return@launch
                }
                val embedded = embeddedResolved(state, identity)
                if (embedded?.result?.isInstrumentalContent() == true) {
                    applyResult(embedded.result, embedded)
                    return@launch
                }
                if (embedded != null && LrcParser.parse(embedded.result.lyrics).isNotEmpty()) {
                    if (!applyResult(embedded.result, embedded)) return@launch
                    persistEmbeddedResult(runtime, identity, embedded, life, epoch, state)
                    return@launch
                }
                if (cached != null && !applyResult(cached.result, cached.resolved)) return@launch
                if (!LyricsCandidateSelector.canConfirm(identity.lookup()) ||
                    (!forceRefresh && cached?.needsRefresh(System.currentTimeMillis()) == false)) {
                    if (!hasAdmittedContent()) { status = UNAVAILABLE; publish() }
                    return@launch
                }
                val outcome = runtime.resolveLyricsProgressive(identity.lookup()) { provisional ->
                    onMain {
                        val resolved = provisional.resolved
                        if (!isCurrent(life, epoch, state) || !proofValidForCurrent(resolved) ||
                            resolved.result.isInstrumentalContent() ||
                            resolved.result.contentKind() == LyricsKind.NONE ||
                            !shouldUpgrade(identity.lookup(), selected, resolved)
                        ) return@onMain
                        if (!applyResult(resolved.result, resolved) || lines.isEmpty()) return@onMain
                        // Visible admitted content must not depend on the slow final network round.
                        // Stop cancels resolution, not this bounded atomic persistence operation.
                        pendingCacheWrites.removeAll { it.isCompleted }
                        // Keep the current admission and at most one older queued recording.
                        // Superseded automatic work is disposable; never queue unbounded bodies.
                        while (pendingCacheWrites.size >= 2) pendingCacheWrites.removeAt(0).cancel()
                        val write = cacheWorkScope.launch {
                            val persisted = try {
                                cacheMutex.withLock {
                                    runtime.cache.writeAutomatic(identity, resolved)
                                    runtime.cache.read(identity, recordUse = false)
                                }
                            } catch (error: CancellationException) { throw error }
                            catch (error: Exception) {
                                Log.w(TAG, "Unable to persist admitted provisional lyrics", error)
                                null
                            }
                            onMain {
                                if (isCurrent(life, epoch, state) && persisted?.selection == LyricsCacheSelection.MANUAL)
                                    applyResult(persisted.result, null)
                            }
                        }
                        pendingCacheWrites += write
                    }
                }
                if (!isCurrent(life, epoch, state)) return@launch
                val resolved = (outcome as? LyricsResolutionOutcome.Found)?.resolved
                if (resolved != null && resolved.result.isInstrumentalContent() &&
                    LyricsCandidateSelector.isProofValid(identity.lookup(), resolved.result, resolved.proof)) {
                    if (!proofValidForCurrent(resolved)) {
                        restartForCurrentMetadata()
                        return@launch
                    }
                    // Instrumental facts have no lyric body and do not enter the body-quality cache.
                    // A manual adoption racing this round, or an already admitted body, still wins.
                    val persisted = withCache { runtime.cache.read(identity, recordUse = false) }
                    if (!isCurrent(life, epoch, state)) return@launch
                    if (persisted?.selection == LyricsCacheSelection.MANUAL) applyResult(persisted.result, null)
                    else if (lines.isEmpty()) applyResult(resolved.result, resolved)
                } else if (resolved != null &&
                    LyricsCandidateSelector.isProofValid(identity.lookup(), resolved.result, resolved.proof) &&
                    resolved.result.contentKind() != LyricsKind.NONE) {
                    if (!proofValidForCurrent(resolved)) {
                        restartForCurrentMetadata()
                        return@launch
                    }
                    val upgrade = shouldUpgrade(identity.lookup(), selected, resolved)
                    // A provisional body is already the visible baseline even on a cold cache.
                    // Persist that baseline when the final batch only changes fine scores/source.
                    val chosen = if (upgrade) resolved else selected ?: resolved
                    val persisted = withCache {
                        if (upgrade || cached == null) {
                            val alreadyPersisted = runtime.cache.read(identity, recordUse = false)
                            if (alreadyPersisted?.result != chosen.result)
                                runtime.cache.writeAutomatic(identity, chosen)
                        }
                        if (cached != null) runtime.cache.recordRefresh(identity, System.currentTimeMillis())
                        runtime.cache.read(identity, recordUse = false)
                    }
                    if (!isCurrent(life, epoch, state)) return@launch
                    if (persisted != null && (persisted.selection == LyricsCacheSelection.MANUAL ||
                            persisted.resolved?.let { shouldUpgrade(identity.lookup(), selected, it) } == true ||
                            selected == null)) {
                        applyResult(persisted.result, persisted.resolved)
                    } else if (upgrade) applyResult(resolved.result, resolved)
                } else if (!hasAdmittedContent() && outcome != LyricsResolutionOutcome.Cancelled) {
                    status = when (outcome) {
                        is LyricsResolutionOutcome.RetryableFailure,
                        is LyricsResolutionOutcome.SourceFailure -> NETWORK_ERROR
                        else -> NO_MATCH
                    }
                    publish()
                }
            } catch (error: CancellationException) {
                throw error
            } catch (error: Exception) {
                if (isCurrent(life, epoch, state) && !hasAdmittedContent()) {
                    Log.w(TAG, "Lyrics resolution unavailable", error)
                    status = if (error is LyricsSourceException) NETWORK_ERROR else UNAVAILABLE
                    publish()
                }
            } finally {
                if (requestEpoch == epoch && activeLifecycle == life) automaticJob = null
            }
        }
    }

    private fun persistEmbeddedResult(
        runtime: LyricsEngineResources,
        identity: LyricsPlaybackIdentity,
        embedded: ResolvedLyrics,
        life: Long,
        epoch: Long,
        state: MediaRecordingState
    ) {
        pendingCacheWrites.removeAll(Job::isCompleted)
        while (pendingCacheWrites.size >= 2) pendingCacheWrites.removeAt(0).cancel()
        val write = cacheWorkScope.launch {
            val persisted = try {
                cacheMutex.withLock {
                    currentCoroutineContext().ensureActive()
                    if (!isCurrent(life, epoch, state)) return@withLock null
                    val current = runtime.cache.read(identity, recordUse = false)
                    if (current?.selection != LyricsCacheSelection.MANUAL &&
                        current?.result != embedded.result
                    ) {
                        runtime.cache.writeAutomatic(identity, embedded)
                    }
                    // Re-read after the write: a manual adoption racing this operation wins.
                    runtime.cache.read(identity, recordUse = false)
                }
            } catch (error: CancellationException) {
                throw error
            } catch (error: Exception) {
                Log.w(TAG, "Unable to persist embedded lyrics", error)
                null
            }
            onMain {
                if (persisted?.selection == LyricsCacheSelection.MANUAL &&
                    isCurrent(life, epoch, state)
                ) {
                    applyResult(persisted.result, null)
                }
            }
        }
        pendingCacheWrites += write
    }

    private fun persistNativeCover(state: MediaRecordingState, artwork: Bitmap) {
        val query = state.identity().lookup()
        if (!LyricsCandidateSelector.canFindCover(query)) return
        val token = Triple(state.identity().let { LyricsCache.key(it.track, it.artist, it.album, it.durationMs) },
            artwork, artwork.generationId)
        if (nativeCoverToken == token) return
        nativeCoverJob?.cancel()
        nativeCoverToken = token
        val life = activeLifecycle
        val epoch = requestEpoch
        nativeCoverJob = scope?.launch {
            val operation = currentCoroutineContext()
            val saved = withCache {
                if (!isCurrent(life, epoch, state) || artwork.isRecycled) return@withCache false
                var prepared: Bitmap? = null
                try {
                    val scale = minOf(1f, 512f / maxOf(artwork.width, artwork.height))
                    val scaled = Bitmap.createScaledBitmap(artwork,
                        (artwork.width * scale).toInt().coerceAtLeast(1),
                        (artwork.height * scale).toInt().coerceAtLeast(1), true)
                    // Freeze the bounded snapshot even if the source already fits: mutable media
                    // bitmaps can change in place while a worker is encoding them.
                    try { prepared = scaled.copy(Bitmap.Config.ARGB_8888, false) }
                    finally { if (scaled !== artwork) scaled.recycle() }
                    val snapshot = prepared ?: return@withCache false
                    if (!isCurrent(life, epoch, state) || artwork.isRecycled || artwork.generationId != token.third)
                        return@withCache false
                    operation.ensureActive()
                    coverCache.write(query, snapshot)
                } catch (error: CancellationException) { throw error }
                catch (_: RuntimeException) {
                    // A mutable native bitmap may disappear during the bounded capture.
                    false
                } finally { prepared?.recycle() }
            }
            if (!saved && nativeCoverToken == token) nativeCoverToken = null
        }
    }

    private fun startCover(state: MediaRecordingState, forceRefresh: Boolean = false) {
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
            val startedAtNanos = System.nanoTime()
            val deadlineNanos = startedAtNanos +
                TimeUnit.MILLISECONDS.toNanos(coverDeadlineMs)
            val seenUrls = Collections.synchronizedSet(LinkedHashSet<String>())
            var attempt = 0
            try {
                val cached = withCache { coverCache.read(query) }
                if (!isCoverOwner(life, epoch, state, cancellation)) {
                    discardCoverBitmap(cached)
                    return@launch
                }
                if (cached != null) {
                    fallbackArtwork = cached
                    publish()
                    if (!forceRefresh) return@launch
                }
                while (attempt <= COVER_RETRY_WAITS.lastIndex &&
                    isCoverOwner(life, epoch, state, cancellation) &&
                    System.nanoTime() < deadlineNanos
                ) {
                    val waitMs = COVER_RETRY_WAITS[attempt]
                    if (waitMs > 0L) {
                        val remaining = remainingCoverMillis(deadlineNanos)
                        if (remaining <= 0L) break
                        val waited = withTimeoutOrNull(remaining) {
                            coverRetryWait(minOf(waitMs, remaining))
                        }
                        if (waited == null || !isCoverOwner(life, epoch, state, cancellation)) break
                    }
                    val result = runCoverAttempt(
                        runtime = runtime,
                        state = state,
                        query = query,
                        life = life,
                        epoch = epoch,
                        cancellation = cancellation,
                        deadlineNanos = deadlineNanos,
                        seenUrls = seenUrls,
                        startedAtNanos = startedAtNanos
                    )
                    if (!isCoverOwner(life, epoch, state, cancellation) || result.won) break
                    // A verified URL is evidence that the current search made progress. Image
                    // or detail failure must consume the retained URL set, never rescan sources.
                    if (result.newCandidates > 0 || !result.retryable || result.timedOut) break
                    attempt += 1
                }
            } catch (error: CancellationException) {
                if (isCoverOwner(life, epoch, state, cancellation)) throw error
            } catch (error: Exception) {
                if (isCoverOwner(life, epoch, state, cancellation)) {
                    Log.w(TAG, "Cover fallback unavailable", error)
                }
            } finally {
                cancellation.cancel()
                if (coverCancellation === cancellation) {
                    coverCancellation = null
                    coverJob = null
                }
            }
        }
    }

    private suspend fun runCoverAttempt(
        runtime: LyricsEngineResources,
        state: MediaRecordingState,
        query: LyricsLookup,
        life: Long,
        epoch: Long,
        cancellation: LyricsCancellationSignal,
        deadlineNanos: Long,
        seenUrls: MutableSet<String>,
        startedAtNanos: Long
    ): CoverAttemptResult = kotlinx.coroutines.coroutineScope {
        val candidates = Channel<String>(Channel.UNLIMITED)
        val winner = AtomicBoolean(false)
        val beforeCount = synchronized(seenUrls) { seenUrls.size }

        fun acceptCandidate(raw: String) {
            val url = raw.trim()
            if (url.isBlank() || winner.get() ||
                !isCoverOwner(life, epoch, state, cancellation)
            ) return
            val added = synchronized(seenUrls) {
                if (seenUrls.size >= MAX_COVER_CANDIDATES || !seenUrls.add(url)) false else true
            }
            if (added) candidates.trySend(url)
        }

        val workers = List(MAX_COVER_DOWNLOAD_LANES) {
            launch {
                for (url in candidates) {
                    if (winner.get() || !isCoverOwner(life, epoch, state, cancellation)) continue
                    var bitmap: Bitmap? = null
                    try {
                        withContext(ioDispatcher) { bitmap = coverLoader(url, cancellation) }
                    } catch (error: CancellationException) {
                        // The assignment above is intentionally retained: a non-cooperative fake
                        // or transport may return a bitmap after the coroutine was cancelled.
                    } catch (error: Exception) {
                        Log.w(TAG, "Cover image download failed", error)
                    }
                    val loaded = bitmap ?: continue
                    if (winner.get() || cancellation.isCancelled ||
                        !isCoverOwner(life, epoch, state, cancellation)
                    ) {
                        discardCoverBitmap(loaded)
                        continue
                    }
                    if (!winner.compareAndSet(false, true)) {
                        discardCoverBitmap(loaded)
                        continue
                    }
                    if (!isCoverOwner(life, epoch, state, cancellation)) {
                        discardCoverBitmap(loaded)
                        continue
                    }
                    fallbackArtwork = loaded
                    Log.i(TAG, "Cover first image published elapsedMs=" +
                        TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - startedAtNanos))
                    publish()
                    // Stop catalog/detail work and other image lanes before touching disk. The
                    // owner check below still permits this winner's bounded cache write.
                    runtime.cancelCoverResolution()
                    cancellation.cancel()
                    candidates.close()
                    if (isCoverOwner(life, epoch, state, cancellation)) {
                        try {
                            withCache {
                                if (isCoverOwner(life, epoch, state, cancellation)) {
                                    coverCache.write(query, loaded)
                                }
                            }
                        } catch (error: CancellationException) {
                            // Lifecycle/song cancellation owns disposal; the published bitmap is
                            // intentionally left for the listener and is never recycled here.
                        } catch (error: Exception) {
                            Log.w(TAG, "Unable to persist cover", error)
                        }
                    }
                }
            }
        }

        var retryable = true
        var timedOut = false
        try {
            if (remainingCoverMillis(deadlineNanos) > 0L) {
                val returned = try {
                    withTimeoutOrNull(remainingCoverMillis(deadlineNanos)) {
                        runtime.resolveCoversProgressive(query, ::acceptCandidate)
                    }
                } catch (error: CancellationException) {
                    if (winner.get() || !isCoverOwner(life, epoch, state, cancellation)) {
                        null
                    } else {
                        throw error
                    }
                } catch (error: Exception) {
                    retryable = error !is LyricsSourceException || error.retryable
                    Log.w(TAG, "Cover candidate resolution failed", error)
                    null
                }
                timedOut = returned == null && System.nanoTime() >= deadlineNanos
                returned?.forEach(::acceptCandidate)
            } else {
                timedOut = true
            }
        } finally {
            candidates.close()
        }

        var workerWaitTimedOut = false
        workers.forEach { worker ->
            val remaining = remainingCoverMillis(deadlineNanos)
            if (remaining > 0L) {
                if (withTimeoutOrNull(remaining) { worker.join() } == null) {
                    workerWaitTimedOut = true
                }
            } else {
                workerWaitTimedOut = true
            }
        }
        if (timedOut || workerWaitTimedOut || remainingCoverMillis(deadlineNanos) <= 0L) {
            runtime.cancelCoverResolution()
            cancellation.cancel()
            workers.forEach { worker -> if (worker.isActive) worker.cancel() }
        }
        CoverAttemptResult(
            newCandidates = synchronized(seenUrls) { seenUrls.size - beforeCount },
            retryable = retryable,
            timedOut = timedOut,
            won = winner.get()
        )
    }

    private fun isCoverOwner(
        life: Long,
        epoch: Long,
        state: MediaRecordingState,
        cancellation: LyricsCancellationSignal
    ): Boolean = isCurrent(life, epoch, state) && coverCancellation === cancellation &&
        media?.artwork?.isRecycled != false

    private fun discardCoverBitmap(bitmap: Bitmap?) {
        if (bitmap == null || bitmap.isRecycled || bitmap === fallbackArtwork ||
            bitmap === media?.artwork
        ) return
        bitmap.recycle()
    }

    private fun remainingCoverMillis(deadlineNanos: Long): Long =
        TimeUnit.NANOSECONDS.toMillis(deadlineNanos - System.nanoTime()).coerceAtLeast(0L)

    private data class CoverAttemptResult(
        val newCandidates: Int,
        val retryable: Boolean,
        val timedOut: Boolean,
        val won: Boolean
    )

    private fun applyResult(result: LyricsResult, proof: ResolvedLyrics?): Boolean {
        if (proof != null && !proofValidForCurrent(proof)) {
            restartForCurrentMetadata()
            return false
        }
        if (result.isInstrumentalContent()) {
            if (proof == null) return false // No unproved/manual empty result can establish this fact.
            selected = proof
            lines = emptyList()
            timed = false
            status = INSTRUMENTAL
            publish()
            return true
        }
        selected = proof
        val parsed = result.timedLines()
        timed = parsed.isNotEmpty()
        lines = Collections.unmodifiableList(if (timed) parsed.map { line ->
            ContentPorts.LyricsLine(line.timeMs, line.text, line.translation, line.romanization,
                line.words.map { ContentPorts.LyricsWord(it.startTimeMs, it.endTimeMs, it.text) },
                line.endTimeMs ?: -1L,
                line.backgroundWords.map { ContentPorts.LyricsWord(it.startTimeMs, it.endTimeMs, it.text) }, line.speakerSide)
        } else result.plainText().lineSequence().map(String::trim).filter(String::isNotBlank)
            .take(4_096).map { ContentPorts.LyricsLine(0L, it, "") }.toList())
        status = if (lines.isEmpty()) UNAVAILABLE else READY
        publish()
        return true
    }

    private fun hasAdmittedContent(): Boolean = lines.isNotEmpty() ||
        (status == INSTRUMENTAL && selected != null)

    private fun shouldUpgrade(query: LyricsLookup, previous: ResolvedLyrics?, next: ResolvedLyrics): Boolean {
        previous ?: return true
        if (previous.result.isInstrumentalContent()) return !next.result.isInstrumentalContent()
        if (previous.result == next.result) return false
        return LyricsContentRanker.isMaterialUpgrade(query,
            LyricsCandidateSelection(previous.result, previous.proof),
            LyricsCandidateSelection(next.result, next.proof))
    }

    private fun proofValidForCurrent(resolved: ResolvedLyrics): Boolean = binding?.identity()?.lookup()?.let {
        LyricsCandidateSelector.isProofValid(it, resolved.result, resolved.proof)
    } == true

    private fun restartResolutionKeepingContent(state: MediaRecordingState) {
        requestEpoch++
        automaticJob?.cancel()
        automaticJob = null
        resources?.cancelCurrent()
        startResolution(state, forceRefresh = true)
        if (media?.artwork?.isRecycled != false) {
            cancelCover()
            coverAttempted = false
            startCover(state, forceRefresh = true)
        }
    }

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
        // MetadataPolicy deliberately admits ordinary embedded lyrics only after two timestamps.
        // A sole explicit instrumental marker is a terminal fact, so recover only that exact raw
        // media field here; ordinary one-line text still cannot bypass the embedded lyric gate.
        val body = state.metadata.embeddedLyrics.ifBlank {
            media?.embeddedLyrics?.takeIf(::isExplicitInstrumentalMarker).orEmpty()
        }
        if (!isEmbeddedSynchronizedLyrics(body) && !isExplicitInstrumentalMarker(body)) return null
        val candidate = LyricsResult(
            lyrics = body,
            durationMs = identity.durationMs,
            source = "media-session",
            sourceId = "embedded",
            candidateTrack = identity.track,
            candidateArtist = identity.artist,
            candidateAlbum = identity.album,
            lyricsKind = if (isExplicitInstrumentalMarker(body)) LyricsKind.NONE else LyricsKind.SYNCHRONIZED
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
        nativeCoverJob?.cancel()
        nativeCoverJob = null
        nativeCoverToken = null
        automaticJob?.cancel()
        automaticJob = null
        resources?.cancelCurrent()
        cancelCover()
        coverAttempted = false
    }

    private fun cancelCover() {
        resources?.cancelCoverResolution()
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
        val writes = pendingCacheWrites.toList()
        pendingCacheWrites.clear()
        // Drain already-admitted provisional writes before retiring database handles, even
        // if lyrics resources failed to construct but native artwork opened its shared cache.
        cacheWorkScope.launch {
            writes.forEach { it.join() }
            cacheMutex.withLock { retired?.close(); coverCache.close() }
        }
        // Playback Store remains the owner of live truth. Retain only one recording's admitted
        // body/identity; updateCurrent validates a fresh snapshot before it may be published.
        media = null
        resumePending = true
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
            previous.status == status && previous.timed == timed && lastPublishedLines === lines && previous.artwork === artwork) return
        val result = ContentPorts.LyricsSnapshot(key, current.generation, status, lines, artwork, timed)
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
        private const val EMPTY = ContentPorts.LyricsSnapshot.EMPTY
        private const val LOADING = ContentPorts.LyricsSnapshot.LOADING
        private const val READY = ContentPorts.LyricsSnapshot.READY
        private const val UNAVAILABLE = ContentPorts.LyricsSnapshot.UNAVAILABLE
        private const val NO_MATCH = ContentPorts.LyricsSnapshot.NO_MATCH
        private const val NETWORK_ERROR = ContentPorts.LyricsSnapshot.NETWORK_ERROR
        private const val INSTRUMENTAL = ContentPorts.LyricsSnapshot.INSTRUMENTAL
        private const val MAX_COVER_CANDIDATES = 4
        private const val MAX_COVER_DOWNLOAD_LANES = 2
        private val COVER_RETRY_WAITS = longArrayOf(0L, 300L, 600L, 1_200L)

        @JvmStatic fun create(context: Context): ContentPorts.LyricsPort = ContentLyricsEngine(context)
    }
}

internal interface LyricsEngineResources : Closeable {
    val cache: LyricsPlaybackCache
    val selectionPolicyRevision: Long get() = 0L
    val selectionPolicyChanges: Flow<Long> get() = emptyFlow()
    suspend fun resolveLyrics(query: LyricsLookup): LyricsResolutionOutcome
    suspend fun resolveLyricsProgressive(query: LyricsLookup,
        onProvisional: (LyricsResolutionOutcome.Found) -> Unit): LyricsResolutionOutcome = resolveLyrics(query)
    suspend fun resolveCover(query: LyricsLookup): String
    suspend fun resolveCovers(query: LyricsLookup): List<String> =
        listOfNotNull(resolveCover(query).takeIf(String::isNotBlank))
    suspend fun resolveCoversProgressive(query: LyricsLookup,
        onCandidate: (String) -> Unit): List<String> =
        resolveCovers(query).also { urls -> urls.forEach(onCandidate) }
    fun cancelCurrent()
    fun cancelCoverResolution() {}
    fun cancelAll()
}

private class DirectLyricsEngineResources(context: Context) : LyricsEngineResources {
    private val preferences = ContentLyricsPreferences(context)
    private val appleAuthBroker = AppleMusicAuthBroker.get(context)
    private val appleConnection = checkNotNull(appleAuthBroker.connection)
    override val selectionPolicyRevision: Long
        get() = 31L * preferences.revision + appleAuthBroker.revision
    override val selectionPolicyChanges: Flow<Long> = combine(
        preferences.revisionChanges,
        appleConnection.state
    ) { _, _ -> selectionPolicyRevision }.distinctUntilChanged()
    override val cache = LyricsCache(context)
    private val repository = DirectLyricsRepository(
        catalogSources = LyricsProviderRegistry.catalogSources(
            AppleMusicLyricsSource(
                connection = appleAuthBroker.connection,
                authBroker = appleAuthBroker
            )
        ),
        preferredSources = preferences::preferredSources
    )
    private val coordinator = LyricsResolutionCoordinator(repository, repository)
    override suspend fun resolveLyrics(query: LyricsLookup) = coordinator.resolveLatest(query)
    override suspend fun resolveLyricsProgressive(query: LyricsLookup,
        onProvisional: (LyricsResolutionOutcome.Found) -> Unit) = coordinator.resolveLatest(query, onProvisional)
    override suspend fun resolveCover(query: LyricsLookup) = coordinator.resolveCover(query)
    override suspend fun resolveCovers(query: LyricsLookup) = coordinator.resolveCovers(query)
    override suspend fun resolveCoversProgressive(query: LyricsLookup,
        onCandidate: (String) -> Unit) = coordinator.resolveCoversProgressive(query, onCandidate)
    override fun cancelCurrent() = coordinator.cancelCurrent()
    override fun cancelCoverResolution() = coordinator.cancelCovers()
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
    return decodeCoverBitmap(bytes, cancellation)
}

/** A bounded response can still contain a decompression-bomb header; bound both domains. */
internal fun decodeCoverBitmap(bytes: ByteArray, cancellation: LyricsCancellationSignal): Bitmap? {
    cancellation.throwIfCancelled()
    if (bytes.size.toLong() !in 1..ContentCacheBudget.MAX_ENTRY_BYTES) return null
    val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
    BitmapFactory.decodeByteArray(bytes, 0, bytes.size, bounds)
    if (bounds.outWidth !in 1..16_384 || bounds.outHeight !in 1..16_384 ||
        bounds.outWidth.toLong() * bounds.outHeight > 64L * 1024L * 1024L) return null
    var sample = 1
    while ((maxOf(bounds.outWidth, bounds.outHeight).toLong() + sample - 1L) / sample > 512L) sample *= 2
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
