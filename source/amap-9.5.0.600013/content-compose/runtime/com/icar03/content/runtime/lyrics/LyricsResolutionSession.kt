package com.icar03.content.runtime.lyrics

// Migrated from 03lyrics; original source SHA-256: beb63af8b1d06fffa9dd831bc81b39ce034e9407bdc8df922565c7dd04f0c067.
// Upstream provenance and scoped adaptations: PROVENANCE.json.

import java.util.concurrent.BlockingQueue
import java.util.concurrent.CancellationException
import java.util.concurrent.ExecutorService
import java.util.concurrent.Future
import java.util.concurrent.LinkedBlockingQueue
import java.util.concurrent.TimeUnit

internal class LyricsResolutionSession(
    private val exactAndFallbackSource: LyricsExactAndFallbackSource,
    private val catalogSources: List<LyricsCatalogSource>,
    private val bodySources: Map<String, LyricsBodySource>,
    private val executor: ExecutorService,
    private val clock: LyricsMonotonicClock,
    private val config: LyricsResolutionConfig,
    private val logger: LyricsRepositoryLogger,
    private val preferredSources: () -> List<String> = { emptyList() },
    private val supplemental: ((LyricsLookup, List<LyricsResult>, Long, LyricsCancellationSignal) -> List<LyricsResult>)? = null,
    private val sharedCatalog: SharedProviderCatalog? = null
) {
    fun resolve(
        query: LyricsLookup,
        cancellation: LyricsCancellationSignal,
        startedAtNanos: Long,
        onProvisional: (LyricsResolutionOutcome.Found) -> Unit = {}
    ): LyricsResolutionOutcome {
        if (!LyricsCandidateSelector.canConfirm(query)) return LyricsResolutionOutcome.InvalidMetadata
        val totalDeadlineNanos = config.deadlineAfter(startedAtNanos, config.totalDeadlineMs)
        val events = LinkedBlockingQueue<ResolutionEvent>()
        val futures = mutableListOf<Future<*>>()
        val candidates = linkedMapOf<String, LyricsResult>()
        val activeBodySources = mutableSetOf<String>()
        val startedCandidateIds = mutableSetOf<String>()
        val available = catalogSources.filter { it.isAvailable }
        val requestedSource = preferredSources().firstOrNull()
        val selectedSource = requestedSource?.takeIf { preferred ->
            preferred == exactAndFallbackSource.sourceName || available.any { it.sourceName == preferred }
        }
        val sourcePreferences = listOfNotNull(selectedSource)
        var parallelSources = selectedSource == null
        val pendingEnrichment = linkedMapOf<String, LyricsCandidateSelection>()
        val activeEnrichment = mutableSetOf<String>()
        val enriched = mutableSetOf<String>()
        var published: LyricsContentRanker.RankedCandidate? = null
        // A selected provider owns catalog, base and enrichment until its own work settles.
        // Cross-platform work starts only when that result still lacks required quality.
        val catalogStates = LyricsProviderRegistry.ordered(available, sourcePreferences).associate { source ->
            source.sourceName to CatalogSourceState(
                source = source,
                requests = LyricsSearchPlanner.catalogRequests(query)
            )
        }
        val trace = LyricsResolutionTrace()
        var exactInFlight = false
        var fuzzyInFlight = false
        var exactStarted = false
        var fuzzyStarted = false
        var enrichmentStarted = false
        var enrichmentInFlight = false
        var retryableFailure: LyricsFailureReason? = null
        var terminalFailure: LyricsFailureReason? = null
        val cancellationRegistration = cancellation.register {
            events.offer(ResolutionEvent.Cancelled)
        }

        fun closeSearch(operation: SearchOperation) {
            when (operation) {
                SearchOperation.LrcLibExact -> exactInFlight = false
                SearchOperation.LrcLibFuzzy -> fuzzyInFlight = false
                SearchOperation.Enrichment -> enrichmentInFlight = false
                is SearchOperation.Catalog -> catalogStates[operation.sourceName]?.let { state ->
                    state.searchInFlight = false
                    state.firstRequestClosed = true
                }
            }
        }

        logger.info("Lyrics policy selected=${requestedSource ?: "auto"} stage=" +
            if (parallelSources) "parallel" else "single")
        try {
            cancellation.throwIfCancelled()
            while (true) {
                cancellation.throwIfCancelled()
                catalogStates.values.forEach { state ->
                    if (!state.searchInFlight && !state.pausedForBody && !state.isExhausted() &&
                        (parallelSources || state.source.sourceName == selectedSource)) {
                        startNextCatalogSearch(state, minOf(totalDeadlineNanos,
                            config.deadlineAfter(clock.nanoTime(), config.catalogDeadlineMs)), cancellation, events, futures)
                    }
                }
                val exactEnabled = parallelSources || selectedSource == exactAndFallbackSource.sourceName
                if (!exactStarted && exactEnabled) {
                    exactStarted = true
                    exactInFlight = true
                    val deadline = minOf(totalDeadlineNanos, config.deadlineAfter(clock.nanoTime(), config.catalogDeadlineMs))
                    submitSearch(SearchOperation.LrcLibExact, deadline, cancellation, events, futures) {
                        listOfNotNull(exactAndFallbackSource.exact(query, deadline, cancellation))
                    }
                }
                if (!fuzzyStarted && exactEnabled && (parallelSources || !exactInFlight)) {
                    fuzzyStarted = true
                    if (candidates.values.none { it.source == exactAndFallbackSource.sourceName && it.hasBodyPayload() }) {
                        fuzzyInFlight = true
                        val deadline = minOf(totalDeadlineNanos, config.deadlineAfter(clock.nanoTime(), config.catalogDeadlineMs))
                        submitSearch(SearchOperation.LrcLibFuzzy, deadline, cancellation, events, futures) {
                            exactAndFallbackSource.fallback(query, deadline, cancellation)
                        }
                    }
                }
                val selections = LyricsCandidateSelector.selectCandidatesWithProof(query, candidates.values)
                val ranked = LyricsContentRanker.rank(query, selections, sourcePreferences)
                cancellation.throwIfCancelled()
                if (clock.nanoTime() >= totalDeadlineNanos) {
                    return finish(
                        query, candidates.values.toList(), ranked, LyricsFailureReason.DEADLINE,
                        terminalFailure, startedAtNanos, trace
                    )
                }

                val first = ranked.firstOrNull {
                    it.quality.kind == LyricsKind.SYNCHRONIZED || !parallelSources
                }
                first?.let {
                    cancellation.throwIfCancelled()
                    val old = published
                    if (old != null && !LyricsContentRanker.isMaterialUpgrade(query, old.selection, it.selection)) return@let
                    published = it
                    try {
                        onProvisional(found(query, candidates.values.toList(), it, startedAtNanos, trace, true))
                    } catch (error: CancellationException) {
                        throw error
                    } catch (error: Exception) {
                        logger.warning("Lyrics provisional callback failed", error)
                    }
                }
                cancellation.throwIfCancelled()

                // Wait for both ID-producing primary catalogs before the single enrichment round.
                val primaryCatalogsClosed = catalogStates.values
                    .filter { it.source.sourceName == SOURCE_QQ || it.source.sourceName == SOURCE_NETEASE }
                    .all { it.firstRequestClosed }
                val anchors = selections.map(LyricsCandidateSelection::candidate)
                    .filter { it.source.isNotBlank() && it.sourceId.isNotBlank() }
                val enrich = supplemental
                if (parallelSources && !enrichmentStarted && enrich != null && primaryCatalogsClosed && anchors.isNotEmpty()) {
                    enrichmentStarted = true
                    enrichmentInFlight = true
                    submitSearch(
                        operation = SearchOperation.Enrichment,
                        deadlineNanos = totalDeadlineNanos,
                        cancellation = cancellation,
                        events = events,
                        futures = futures
                    ) {
                        enrich(query, anchors, totalDeadlineNanos, cancellation)
                    }
                }

                scheduleBodyLoads(
                    query = query,
                    ranked = selections,
                    activeBodySources = activeBodySources,
                    startedCandidateIds = startedCandidateIds,
                    deadlineNanos = totalDeadlineNanos,
                    cancellation = cancellation,
                    events = events,
                    futures = futures
                )
                if (activeEnrichment.isEmpty()) {
                    pendingEnrichment.entries.firstOrNull()?.let { (id, selection) ->
                        pendingEnrichment.remove(id)
                        if (enriched.add(id)) {
                            activeEnrichment += id
                            val source = bodySources[selection.candidate.source]
                            val submittedAt = clock.nanoTime()
                            futures += submitProviderWork(executor, ProviderWork.ENRICHMENT) {
                                val result = try {
                                    cancellation.throwIfCancelled()
                                    source?.loadEnrichment(selection.candidate, minOf(totalDeadlineNanos,
                                        config.deadlineAfter(submittedAt, 8_000L)), cancellation)
                                } catch (_: CancellationException) { null }
                                catch (error: Exception) {
                                    logger.warning("Lyrics enhancement source=${selection.candidate.source} failed", error)
                                    null
                                }
                                events.offer(ResolutionEvent.EnrichmentCompleted(id, selection, result))
                            }
                        }
                    }
                }
                val ownCatalogClosed = if (selectedSource == exactAndFallbackSource.sourceName) {
                    exactStarted && fuzzyStarted && !exactInFlight && !fuzzyInFlight
                } else catalogStates[selectedSource]?.isExhausted() == true
                if (!parallelSources && ownCatalogClosed && activeBodySources.isEmpty() &&
                    pendingEnrichment.isEmpty() && activeEnrichment.isEmpty()) {
                    val own = published ?: ranked.firstOrNull()
                    if (own != null && !LyricsContentRanker.needsCrossPlatformUpgrade(query, own.candidate)) {
                        logger.info("Lyrics policy selected=$selectedSource stage=complete reason=quality-satisfied")
                        return finish(query, candidates.values.toList(), listOf(own), retryableFailure,
                            terminalFailure, startedAtNanos, trace)
                    }
                    parallelSources = true
                    logger.info("Lyrics policy selected=$selectedSource stage=parallel reason=" +
                        if (own == null) "no-usable-body" else "quality-insufficient")
                    continue
                }
                if (parallelSources && exactStarted && fuzzyStarted && !exactInFlight && !fuzzyInFlight && !enrichmentInFlight &&
                    catalogStates.values.all(CatalogSourceState::isExhausted) && activeBodySources.isEmpty() &&
                    pendingEnrichment.isEmpty() && activeEnrichment.isEmpty()
                ) {
                    return finish(
                        query, candidates.values.toList(), ranked, retryableFailure,
                        terminalFailure, startedAtNanos, trace
                    )
                }

                val remainingNanos = totalDeadlineNanos - clock.nanoTime()
                if (remainingNanos <= 0L) continue
                val event = events.poll(remainingNanos, TimeUnit.NANOSECONDS) ?: continue
                cancellation.throwIfCancelled()
                if (clock.nanoTime() >= totalDeadlineNanos) continue
                when (event) {
                    is ResolutionEvent.SearchCompleted -> {
                        closeSearch(event.operation)
                        trace.searchCompleted(event.operation, event.candidates.size, event.elapsedMs)
                        event.candidates.forEach { candidate ->
                            if (event.operation == SearchOperation.Enrichment ||
                                candidate.source == event.operation.sourceName ||
                                ((event.operation == SearchOperation.LrcLibExact || event.operation == SearchOperation.LrcLibFuzzy) &&
                                    candidate.source == exactAndFallbackSource.sourceName)
                            ) {
                                rememberCandidate(query, candidates, candidate)
                            }
                        }
                        val admitted = LyricsCandidateSelector.selectCandidatesWithProof(query, candidates.values)
                            .filter { it.candidate.source == event.operation.sourceName }
                        admitted.filter { it.candidate.hasBodyPayload() && !it.candidate.isInstrumentalContent() }
                            .forEach { selection ->
                                val id = candidateIdentity(selection.candidate)
                                if (id !in enriched && id !in activeEnrichment) pendingEnrichment[id] = selection
                            }
                        if (event.operation is SearchOperation.Catalog) {
                            catalogStates[event.operation.sourceName]?.let { state ->
                                if (admitted.any { it.candidate.contentKind() != LyricsKind.NONE || it.candidate.isInstrumentalContent() }) state.exhaust()
                                else state.pausedForBody = admitted.any { selection ->
                                    val item = selection.candidate
                                    val id = candidateIdentity(item)
                                    id !in startedCandidateIds || id in pendingEnrichment || id in activeEnrichment ||
                                        item.source in activeBodySources
                                }
                            }
                        }
                    }

                    is ResolutionEvent.SearchFailed -> {
                        closeSearch(event.operation)
                        trace.searchFailed(event.operation, event.elapsedMs)
                        if (event.retryable && retryableFailure == null) retryableFailure = event.reason
                        if (!event.retryable && terminalFailure == null) terminalFailure = event.reason
                        if (!event.retryable && event.operation is SearchOperation.Catalog)
                            catalogStates[event.operation.sourceName]?.exhaust()
                    }

                    is ResolutionEvent.BodyCompleted -> {
                        activeBodySources -= event.sourceName
                        trace.bodyCompleted(event.sourceName, event.result != null, event.elapsedMs)
                        val loaded = event.result
                        val snapshot = event.selection.candidate.candidateSnapshot()
                        if (loaded != null && loaded.candidateSnapshot() == snapshot &&
                            candidates[candidateIdentity(loaded)]?.candidateSnapshot() == snapshot &&
                            LyricsCandidateSelector.isProofValid(query, loaded, event.selection.proof)
                        ) {
                            rememberCandidate(query, candidates, loaded)
                            if (loaded.contentKind() != LyricsKind.NONE || loaded.isInstrumentalContent())
                                catalogStates[event.sourceName]?.exhaust()
                            if (!loaded.isInstrumentalContent()) pendingEnrichment[candidateIdentity(loaded)] =
                                LyricsCandidateSelection(loaded, event.selection.proof)
                        } else if (loaded == null) {
                            pendingEnrichment[candidateIdentity(event.selection.candidate)] = event.selection
                        } else catalogStates[event.sourceName]?.let { it.pausedForBody = false }
                    }

                    is ResolutionEvent.EnrichmentCompleted -> {
                        activeEnrichment -= event.id
                        val result = event.result
                        if (result != null && result.candidateSnapshot() == event.selection.candidate.candidateSnapshot() &&
                            LyricsCandidateSelector.isProofValid(query, result, event.selection.proof)) {
                            rememberCandidate(query, candidates, result)
                            if (result.contentKind() != LyricsKind.NONE || result.isInstrumentalContent())
                                catalogStates[result.source]?.exhaust()
                            else catalogStates[result.source]?.let { it.pausedForBody = false }
                        } else catalogStates[event.selection.candidate.source]?.let { it.pausedForBody = false }
                    }

                    is ResolutionEvent.BodyFailed -> {
                        activeBodySources -= event.sourceName
                        catalogStates[event.sourceName]?.let { it.pausedForBody = false }
                        trace.bodyFailed(event.sourceName, event.elapsedMs)
                        if (event.retryable && retryableFailure == null) retryableFailure = event.reason
                        if (!event.retryable && terminalFailure == null) terminalFailure = event.reason
                    }

                    ResolutionEvent.Cancelled -> return LyricsResolutionOutcome.Cancelled
                }
            }
        } catch (_: CancellationException) {
            return LyricsResolutionOutcome.Cancelled
        } catch (_: InterruptedException) {
            Thread.currentThread().interrupt()
            cancellation.cancel()
            return LyricsResolutionOutcome.Cancelled
        } finally {
            cancellationRegistration.close()
            futures.forEach { it.cancel(true) }
        }
    }

    private fun scheduleBodyLoads(
        query: LyricsLookup,
        ranked: List<LyricsCandidateSelection>,
        activeBodySources: MutableSet<String>,
        startedCandidateIds: MutableSet<String>,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal,
        events: BlockingQueue<ResolutionEvent>,
        futures: MutableList<Future<*>>
    ) {
        if (clock.nanoTime() >= deadlineNanos || activeBodySources.size >= config.maximumBodyLanes) return
        for (selection in ranked) {
            if (activeBodySources.size >= config.maximumBodyLanes) break
            val candidate = selection.candidate
            if (candidate.isInstrumentalContent() ||
                LyricsContentRanker.inspect(query, candidate).kind == LyricsKind.SYNCHRONIZED) continue
            val candidateId = candidateIdentity(candidate)
            val source = bodySources[candidate.source] ?: continue
            if (candidateId in startedCandidateIds || source.sourceName in activeBodySources) continue
            startedCandidateIds += candidateId
            activeBodySources += source.sourceName
            val submittedAtNanos = clock.nanoTime()
            futures += submitProviderWork(executor, ProviderWork.BASE) {
                val bodyStartedAtNanos = submittedAtNanos
                try {
                    cancellation.throwIfCancelled()
                    if (clock.nanoTime() >= deadlineNanos) return@submitProviderWork
                    val result = source.loadBaseLyrics(candidate, minOf(deadlineNanos, config.deadlineAfter(bodyStartedAtNanos, 4_500L)), cancellation)
                    cancellation.throwIfCancelled()
                    if (clock.nanoTime() >= deadlineNanos) return@submitProviderWork
                    events.offer(
                        ResolutionEvent.BodyCompleted(
                            sourceName = source.sourceName,
                            selection = selection,
                            result = result,
                            elapsedMs = elapsedMs(bodyStartedAtNanos)
                        )
                    )
                } catch (_: CancellationException) {
                    if (!cancellation.isCancelled && clock.nanoTime() < deadlineNanos) {
                        events.offer(ResolutionEvent.BodyCompleted(source.sourceName, selection, null, elapsedMs(bodyStartedAtNanos)))
                    }
                } catch (error: Throwable) {
                    val failure = sourceFailure(error)
                    logger.warning(
                        "Lyrics body source=${source.sourceName} retryable=${failure.retryable}",
                        error
                    )
                    if (!cancellation.isCancelled && clock.nanoTime() < deadlineNanos) {
                        events.offer(
                            ResolutionEvent.BodyFailed(
                                sourceName = source.sourceName,
                                reason = failure.reason,
                                retryable = failure.retryable,
                                elapsedMs = elapsedMs(bodyStartedAtNanos)
                            )
                        )
                    }
                }
            }
        }
    }

    private fun startNextCatalogSearch(
        state: CatalogSourceState,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal,
        events: BlockingQueue<ResolutionEvent>,
        futures: MutableList<Future<*>>
    ) {
        val request = state.takeNextRequest() ?: return
        val operation = SearchOperation.Catalog(state.source.sourceName, request)
        val submittedAt = clock.nanoTime()
        sharedCatalog?.let { shared ->
            futures += shared.submit(state.source, request, deadlineNanos, cancellation, { candidates ->
                events.offer(ResolutionEvent.SearchCompleted(operation, candidates, elapsedMs(submittedAt)))
            }, { error ->
                val failure = sourceFailure(error)
                events.offer(ResolutionEvent.SearchFailed(operation, failure.reason, failure.retryable, elapsedMs(submittedAt)))
            })
            return
        }
        submitSearch(
            operation = SearchOperation.Catalog(state.source.sourceName, request),
            deadlineNanos = deadlineNanos,
            cancellation = cancellation,
            events = events,
            futures = futures
        ) {
            state.source.search(request, deadlineNanos, cancellation)
        }
    }

    private fun submitSearch(
        operation: SearchOperation,
        deadlineNanos: Long,
        cancellation: LyricsCancellationSignal,
        events: BlockingQueue<ResolutionEvent>,
        futures: MutableList<Future<*>>,
        load: () -> List<LyricsResult>
    ) {
        val submittedAt = clock.nanoTime()
        futures += submitProviderWork(executor, ProviderWork.CATALOG) {
            try {
                cancellation.throwIfCancelled()
                if (clock.nanoTime() >= deadlineNanos) throw LyricsSourceException(LyricsFailureReason.DEADLINE, true, "Search queue deadline")
                val candidates = load()
                cancellation.throwIfCancelled()
                if (clock.nanoTime() >= deadlineNanos) throw LyricsSourceException(LyricsFailureReason.DEADLINE, true, "Search deadline")
                events.offer(ResolutionEvent.SearchCompleted(operation, candidates, elapsedMs(submittedAt)))
            } catch (_: CancellationException) {
                if (!cancellation.isCancelled) events.offer(ResolutionEvent.SearchCompleted(operation, emptyList(), elapsedMs(submittedAt)))
            } catch (error: Exception) {
                val failure = sourceFailure(error)
                logger.warning("Lyrics search=${operation.diagnosticLabel()} retryable=${failure.retryable}", error)
                if (!cancellation.isCancelled) events.offer(ResolutionEvent.SearchFailed(operation, failure.reason,
                    failure.retryable, elapsedMs(submittedAt)))
            }
        }
    }

    private fun rememberCandidate(
        query: LyricsLookup,
        candidates: MutableMap<String, LyricsResult>,
        candidate: LyricsResult
    ) {
        val identity = candidateIdentity(candidate)
        val previous = candidates[identity]
        if (previous == null) {
            candidates[identity] = candidate
            return
        }
        // A repeated catalog response cannot rewrite the recording proof or erase a loaded body.
        if (previous.candidateSnapshot() != candidate.candidateSnapshot()) return
        if (candidate == previous) return
        if (candidate.isInstrumentalContent() && !previous.hasBodyPayload()) {
            candidates[identity] = candidate
            return
        }
        if (!candidate.hasBodyPayload()) return
        val oldSelection = LyricsCandidateSelector.selectCandidatesWithProof(query, candidates.values)
            .firstOrNull { candidateIdentity(it.candidate) == identity }
        val newSelection = oldSelection?.copy(candidate = candidate)
        val oldQuality = LyricsContentRanker.inspect(query, previous)
        val newQuality = LyricsContentRanker.inspect(query, candidate)
        if (oldQuality.kind == LyricsKind.NONE) {
            if (newQuality.kind != LyricsKind.NONE) candidates[identity] = candidate
        } else if (oldSelection != null && newSelection != null &&
            LyricsContentRanker.isMaterialUpgrade(query, oldSelection, newSelection)) {
            candidates[identity] = candidate
        }
    }

    private fun found(
        query: LyricsLookup,
        candidates: List<LyricsResult>,
        ranked: LyricsContentRanker.RankedCandidate,
        startedAtNanos: Long,
        trace: LyricsResolutionTrace,
        provisional: Boolean = false
    ): LyricsResolutionOutcome.Found {
        val result = ranked.candidate.let { candidate ->
            if (ranked.quality.kind == LyricsKind.PLAIN) {
                candidate.copy(lyrics = "", plainLyrics = LyricsContentRanker.plainText(candidate), lyricsKind = LyricsKind.PLAIN)
            } else {
                candidate.copy(lyricsKind = LyricsKind.SYNCHRONIZED)
            }
        }
        logger.info(
            "Lyrics ${if (provisional) "provisional" else "selected"}=${result.source} " +
                "kind=${ranked.quality.kind} quality=${ranked.quality.score} " +
                "${trace.summary()} " +
                "evidence=${LyricsCandidateSelector.selectionSummary(query,
                    ranked.selection.proof.supportingCandidates.map(LyricsCandidateSnapshot::toResult), result)} " +
                "elapsedMs=${elapsedMs(startedAtNanos)}"
        )
        return LyricsResolutionOutcome.Found(ResolvedLyrics(result, ranked.selection.proof))
    }

    private fun finish(
        query: LyricsLookup,
        candidates: List<LyricsResult>,
        ranked: List<LyricsContentRanker.RankedCandidate>,
        retryableFailure: LyricsFailureReason?,
        terminalFailure: LyricsFailureReason?,
        startedAtNanos: Long,
        trace: LyricsResolutionTrace
    ): LyricsResolutionOutcome {
        ranked.firstOrNull()?.let { winner ->
            return found(query, candidates, winner, startedAtNanos, trace)
        }
        // A pure-music fact is neither a ranked body nor a failure. It still needs the same
        // strict recording proof, and only wins once no admitted real body is available.
        val preferences = preferredSources().withIndex().associate { it.value to it.index }
        LyricsCandidateSelector.selectCandidatesWithProof(query, candidates)
            .filter { it.candidate.isInstrumentalContent() }
            .filter { LyricsCandidateSelector.isProofValid(query, it.candidate, it.proof) }
            .minByOrNull { preferences[it.candidate.source] ?: Int.MAX_VALUE }?.let { selection ->
                logger.info("Lyrics instrumental=${selection.candidate.source} ${trace.summary()} " +
                    "evidence=${LyricsCandidateSelector.selectionSummary(query, candidates, selection.candidate)} " +
                    "elapsedMs=${elapsedMs(startedAtNanos)}")
                return LyricsResolutionOutcome.Found(ResolvedLyrics(
                    selection.candidate.copy(lyricsKind = LyricsKind.NONE), selection.proof))
            }
        val outcome = retryableFailure?.let(LyricsResolutionOutcome::RetryableFailure)
            ?: terminalFailure?.let(LyricsResolutionOutcome::SourceFailure)
            ?: LyricsResolutionOutcome.NoMatch
        logger.info(
            "Lyrics unresolved=${retryableFailure ?: terminalFailure ?: "no-match"} " +
                "${trace.summary()} " +
                "evidence=${LyricsCandidateSelector.selectionSummary(query, candidates)} " +
                "elapsedMs=${elapsedMs(startedAtNanos)}"
        )
        return outcome
    }

    private fun sourceFailure(error: Throwable): SourceFailure {
        return if (error is LyricsSourceException) {
            SourceFailure(error.reason, error.retryable)
        } else {
            SourceFailure(LyricsFailureReason.NETWORK, retryable = false)
        }
    }

    private fun candidateIdentity(candidate: LyricsResult): String =
        if (candidate.source.isNotBlank() && candidate.sourceId.isNotBlank()) {
            "${candidate.source}\u0000${candidate.sourceId}"
        } else {
            listOf(
                candidate.candidateTrack,
                candidate.candidateArtist,
                candidate.candidateAlbum,
                candidate.durationMs.toString()
            ).joinToString("\u0000")
        }

    private fun elapsedMs(startedAtNanos: Long): Long =
        TimeUnit.NANOSECONDS.toMillis(clock.nanoTime() - startedAtNanos)

    private data class SourceFailure(
        val reason: LyricsFailureReason,
        val retryable: Boolean
    )

    private data class CatalogSourceState(
        val source: LyricsCatalogSource,
        val requests: List<LyricsCatalogSearchRequest>,
        var nextRequestIndex: Int = 0,
        var searchInFlight: Boolean = false,
        var pausedForBody: Boolean = false,
        var firstRequestClosed: Boolean = requests.isEmpty()
    ) {
        fun takeNextRequest(): LyricsCatalogSearchRequest? {
            if (searchInFlight) return null
            val request = requests.getOrNull(nextRequestIndex) ?: return null
            nextRequestIndex += 1
            searchInFlight = true
            return request
        }

        fun exhaust() { nextRequestIndex = requests.size; pausedForBody = false }
        fun isExhausted(): Boolean = nextRequestIndex >= requests.size && !searchInFlight
    }

    private sealed interface SearchOperation {
        val sourceName: String

        data object LrcLibExact : SearchOperation {
            override val sourceName: String = SOURCE_LRCLIB
        }

        data object LrcLibFuzzy : SearchOperation {
            override val sourceName: String = SOURCE_LRCLIB
        }

        data object Enrichment : SearchOperation {
            override val sourceName: String = "supplemental"
        }

        data class Catalog(
            override val sourceName: String,
            val request: LyricsCatalogSearchRequest
        ) : SearchOperation

        fun diagnosticLabel(): String = when (this) {
            LrcLibExact -> "$sourceName/exact"
            LrcLibFuzzy -> "$sourceName/fuzzy"
            Enrichment -> "enrichment"
            is Catalog -> "$sourceName/${request.kind}"
        }
    }

    private sealed interface ResolutionEvent {
        data class SearchCompleted(
            val operation: SearchOperation,
            val candidates: List<LyricsResult>,
            val elapsedMs: Long
        ) : ResolutionEvent

        data class SearchFailed(
            val operation: SearchOperation,
            val reason: LyricsFailureReason,
            val retryable: Boolean,
            val elapsedMs: Long
        ) : ResolutionEvent

        data class BodyCompleted(
            val sourceName: String,
            val selection: LyricsCandidateSelection,
            val result: LyricsResult?,
            val elapsedMs: Long
        ) : ResolutionEvent

        data class BodyFailed(
            val sourceName: String,
            val reason: LyricsFailureReason,
            val retryable: Boolean,
            val elapsedMs: Long
        ) : ResolutionEvent

        data class EnrichmentCompleted(val id: String, val selection: LyricsCandidateSelection,
            val result: LyricsResult?) : ResolutionEvent

        data object Cancelled : ResolutionEvent
    }

    private class LyricsResolutionTrace {
        private val searches = mutableListOf<String>()
        private val bodies = mutableListOf<String>()

        fun searchCompleted(operation: SearchOperation, candidateCount: Int, elapsedMs: Long) {
            searches += "${operation.diagnosticLabel()}:$candidateCount@${elapsedMs}ms"
        }

        fun searchFailed(operation: SearchOperation, elapsedMs: Long) {
            searches += "${operation.diagnosticLabel()}:failed@${elapsedMs}ms"
        }

        fun bodyCompleted(sourceName: String, found: Boolean, elapsedMs: Long) {
            bodies += "$sourceName:${if (found) "lyrics" else "empty"}@${elapsedMs}ms"
        }

        fun bodyFailed(sourceName: String, elapsedMs: Long) {
            bodies += "$sourceName:failed@${elapsedMs}ms"
        }

        fun summary(): String =
            "searches=${searches.joinToString(",").ifBlank { "none" }} " +
                "bodies=${bodies.joinToString(",").ifBlank { "none" }}"
    }


}
