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
    private val supplemental: ((LyricsLookup, List<LyricsResult>, Long, LyricsCancellationSignal) -> List<LyricsResult>)? = null
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
        val sourcePreferences = preferredSources()
        val catalogStates = catalogSources.associate { source ->
            source.sourceName to CatalogSourceState(
                source = source,
                requests = LyricsSearchPlanner.catalogRequests(query)
            )
        }
        val trace = LyricsResolutionTrace()
        var exactInFlight = true
        var fuzzyInFlight = true
        var enrichmentStarted = false
        var enrichmentInFlight = false
        var provisionalSent = false
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

        try {
            cancellation.throwIfCancelled()
            submitSearch(
                operation = SearchOperation.LrcLibExact,
                deadlineNanos = totalDeadlineNanos,
                cancellation = cancellation,
                events = events,
                futures = futures
            ) {
                listOfNotNull(exactAndFallbackSource.exact(query, totalDeadlineNanos, cancellation))
            }
            submitSearch(
                operation = SearchOperation.LrcLibFuzzy,
                deadlineNanos = totalDeadlineNanos,
                cancellation = cancellation,
                events = events,
                futures = futures
            ) {
                exactAndFallbackSource.fallback(query, totalDeadlineNanos, cancellation)
            }
            catalogStates.values.forEach { state ->
                startNextCatalogSearch(state, totalDeadlineNanos, cancellation, events, futures)
            }

            while (true) {
                cancellation.throwIfCancelled()
                val selections = LyricsCandidateSelector.selectCandidatesWithProof(query, candidates.values)
                val ranked = LyricsContentRanker.rank(query, selections, sourcePreferences)
                cancellation.throwIfCancelled()
                if (clock.nanoTime() >= totalDeadlineNanos) {
                    return finish(
                        query, candidates.values.toList(), ranked, LyricsFailureReason.DEADLINE,
                        terminalFailure, startedAtNanos, trace
                    )
                }

                if (!provisionalSent) {
                    ranked.firstOrNull { it.quality.kind == LyricsKind.SYNCHRONIZED }?.let { first ->
                        cancellation.throwIfCancelled()
                        provisionalSent = true
                        try {
                            onProvisional(found(query, candidates.values.toList(), first, startedAtNanos, trace, true))
                        } catch (error: CancellationException) {
                            throw error
                        } catch (error: Exception) {
                            logger.warning("Lyrics provisional callback failed", error)
                        }
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
                if (!enrichmentStarted && enrich != null && primaryCatalogsClosed && anchors.isNotEmpty()) {
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
                catalogStates.values.forEach { state ->
                    if (!state.searchInFlight) {
                        startNextCatalogSearch(state, totalDeadlineNanos, cancellation, events, futures)
                    }
                }
                if (!exactInFlight && !fuzzyInFlight && !enrichmentInFlight &&
                    catalogStates.values.all(CatalogSourceState::isExhausted) && activeBodySources.isEmpty()
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
                    }

                    is ResolutionEvent.SearchFailed -> {
                        closeSearch(event.operation)
                        trace.searchFailed(event.operation, event.elapsedMs)
                        if (event.retryable && retryableFailure == null) retryableFailure = event.reason
                        if (!event.retryable && terminalFailure == null) terminalFailure = event.reason
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
                        }
                    }

                    is ResolutionEvent.BodyFailed -> {
                        activeBodySources -= event.sourceName
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
            if (LyricsContentRanker.inspect(query, candidate).kind == LyricsKind.SYNCHRONIZED) continue
            val candidateId = candidateIdentity(candidate)
            val source = bodySources[candidate.source] ?: continue
            if (candidateId in startedCandidateIds || source.sourceName in activeBodySources) continue
            startedCandidateIds += candidateId
            activeBodySources += source.sourceName
            futures += executor.submit {
                val bodyStartedAtNanos = clock.nanoTime()
                try {
                    cancellation.throwIfCancelled()
                    if (clock.nanoTime() >= deadlineNanos) return@submit
                    val result = source.loadLyrics(candidate, deadlineNanos, cancellation)
                    cancellation.throwIfCancelled()
                    if (clock.nanoTime() >= deadlineNanos) return@submit
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
        futures += executor.submit {
            val searchStartedAtNanos = clock.nanoTime()
            try {
                cancellation.throwIfCancelled()
                if (clock.nanoTime() >= deadlineNanos) return@submit
                val candidates = load()
                cancellation.throwIfCancelled()
                if (clock.nanoTime() >= deadlineNanos) return@submit
                events.offer(
                    ResolutionEvent.SearchCompleted(
                        operation = operation,
                        candidates = candidates,
                        elapsedMs = elapsedMs(searchStartedAtNanos)
                    )
                )
            } catch (_: CancellationException) {
                if (!cancellation.isCancelled && clock.nanoTime() < deadlineNanos) {
                    events.offer(ResolutionEvent.SearchCompleted(operation, emptyList(), elapsedMs(searchStartedAtNanos)))
                }
            } catch (error: Throwable) {
                val failure = sourceFailure(error)
                logger.warning(
                    "Lyrics search=${operation.diagnosticLabel()} " +
                        "retryable=${failure.retryable} deadline=$deadlineNanos",
                    error
                )
                if (!cancellation.isCancelled && clock.nanoTime() < deadlineNanos) {
                    events.offer(
                        ResolutionEvent.SearchFailed(
                            operation = operation,
                            reason = failure.reason,
                            retryable = failure.retryable,
                            elapsedMs = elapsedMs(searchStartedAtNanos)
                        )
                    )
                }
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
        if (candidate == previous || !candidate.hasBodyPayload()) return
        val oldSelection = LyricsCandidateSelector.selectCandidatesWithProof(query, candidates.values)
            .firstOrNull { candidateIdentity(it.candidate) == identity }
        val newSelection = oldSelection?.copy(candidate = candidate)
        val compared = if (oldSelection != null && newSelection != null) {
            LyricsContentRanker.rank(query, listOf(oldSelection, newSelection))
        } else emptyList()
        val oldQuality = compared.firstOrNull { it.selection === oldSelection }?.quality
            ?: LyricsContentRanker.inspect(query, previous)
        val newQuality = compared.firstOrNull { it.selection === newSelection }?.quality
            ?: LyricsContentRanker.inspect(query, candidate)
        val oldKind = contentOrder(oldQuality.kind)
        val newKind = contentOrder(newQuality.kind)
        if (newKind > oldKind || (newKind == oldKind && newQuality.score > oldQuality.score)) {
            candidates[identity] = candidate
        }
    }

    private fun contentOrder(kind: LyricsKind): Int = when (kind) {
        LyricsKind.NONE -> 0
        LyricsKind.PLAIN -> 1
        LyricsKind.SYNCHRONIZED -> 2
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
        var firstRequestClosed: Boolean = requests.isEmpty()
    ) {
        fun takeNextRequest(): LyricsCatalogSearchRequest? {
            if (searchInFlight) return null
            val request = requests.getOrNull(nextRequestIndex) ?: return null
            nextRequestIndex += 1
            searchInFlight = true
            return request
        }

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
