package com.icar03.content.runtime.media

import android.media.AudioAttributes
import android.media.session.PlaybackState

/**
 * Public content-runtime source arbitration copied by semantic comparison from the
 * read-only reference implementation at
 * `/Users/q/Documents/Projects/03lyrics/app/src/main/kotlin/com/ninepointnine/desktoplyrics/MediaSessionSelectionPolicy.kt`
 * (with its companion tests at
 * `/Users/q/Documents/Projects/03lyrics/app/src/test/kotlin/com/ninepointnine/desktoplyrics/MediaSessionSelectionPolicyTest.kt`
 * and `MediaSessionArbiterTest.kt`).
 *
 * The reference was inspected read-only; this file is not an inheritance of its
 * package, product/brand names, package allowlist, UI or store state, device
 * acceptance, or playback clock. `Content...` types are map content-runtime
 * contracts. Callers provide observations from public media sessions, while this
 * policy owns only media admission, source evidence, stickiness, and handoff
 * decisions. It never extrapolates a position and does not itself perform media
 * control, Browser discovery, or UI work.
 */

/**
 * Transport identity needed by source arbitration. STANDARD covers ordinary
 * public sessions; BLUETOOTH_AVRCP marks the car's public Bluetooth AVRCP
 * session, whose state/timestamp refreshes require stronger activity evidence.
 */
public enum class ContentMediaSessionTransport {
    STANDARD,
    BLUETOOTH_AVRCP
}

/**
 * Snapshot of one public media controller supplied by the host adapter.
 *
 * Package names are diagnostic data, not an allowlist. `sessionId` should be the
 * stable public controller identity when available; `sourceId` identifies the
 * logical source for preferred-source restoration. Positions and publisher
 * timestamps are observations only, never a clock owned by this policy.
 *
 * The complete constructor is public for Java callers. Kotlin callers may use
 * the defaults; Java also receives overloads for the trailing defaults.
 */
public data class ContentMediaSessionCandidate @JvmOverloads constructor(
    val index: Int,
    val sessionId: String = "",
    val sourceId: String = "",
    val packageName: String,
    val playbackState: Int?,
    val audioUsage: Int?,
    val audioContentType: Int?,
    val playbackActions: Long,
    val hasTitle: Boolean,
    val activeInSystemList: Boolean = true,
    val reportedPositionMs: Long = PlaybackState.PLAYBACK_POSITION_UNKNOWN,
    val positionUpdateTimeMs: Long = 0L,
    val transport: ContentMediaSessionTransport = ContentMediaSessionTransport.STANDARD,
    val bluetoothCommunicationActive: Boolean = false,
    val hasMusicMetadata: Boolean = true
) {
    val isPlaying: Boolean
        get() = playbackState == PlaybackState.STATE_PLAYING ||
            playbackState == PlaybackState.STATE_FAST_FORWARDING ||
            playbackState == PlaybackState.STATE_REWINDING

    val isBuffering: Boolean
        get() = playbackState == PlaybackState.STATE_BUFFERING ||
            playbackState == PlaybackState.STATE_CONNECTING

    val isPaused: Boolean
        get() = playbackState == PlaybackState.STATE_PAUSED

    val isEnded: Boolean
        get() = playbackState == PlaybackState.STATE_STOPPED ||
            playbackState == PlaybackState.STATE_NONE

    val hasTransportActions: Boolean
        get() = playbackActions and MEDIA_ACTION_MASK != 0L

    public companion object {
        private val MEDIA_ACTION_MASK =
            PlaybackState.ACTION_PLAY or
                PlaybackState.ACTION_PLAY_PAUSE or
                PlaybackState.ACTION_PAUSE or
                PlaybackState.ACTION_STOP or
                PlaybackState.ACTION_SKIP_TO_NEXT or
                PlaybackState.ACTION_SKIP_TO_PREVIOUS or
                PlaybackState.ACTION_SEEK_TO
    }
}

/**
 * Activity fact normalized from a public Bluetooth AVRCP event. The arbiter
 * owns this observation; it is deliberately independent from the selected
 * source timeline maintained by the host media adapter.
 */
public data class ContentMediaSessionBluetoothActivity(
    val positionMs: Long?,
    val playbackState: Int?,
    val capturedAtMs: Long
)

/**
 * Stateless admission and priority policy for one MediaSessionManager snapshot.
 * MediaSessionManager already orders controllers by system priority. State tier
 * is considered first, then that order is preserved; metadata detail never
 * lets a stale session outrank the session Android addresses.
 */
public object ContentMediaSessionSelectionPolicy {
    /**
     * Select an index from the supplied snapshot, or null when no source is
     * admitted. `hasCurrentSelection` prevents an unrelated stale paused source
     * from being resurrected after the selected source ends or disappears.
     */
    @JvmStatic
    public fun select(
        candidates: List<ContentMediaSessionCandidate>,
        currentIndex: Int?,
        hasCurrentSelection: Boolean = false,
        ownPackageName: String
    ): Int? {
        val candidatesWithoutSelf = candidates.filter { it.packageName != ownPackageName }
        val active = candidatesWithoutSelf
            .asSequence()
            .filter { it.isPlaying || it.isBuffering }
            .filter { isEligible(it, allowMissingTitle = true) }
            .toList()
        if (active.isNotEmpty()) {
            val bestActivityRank = active.maxOf(::activityRank)
            return active
                .filter { activityRank(it) == bestActivityRank }
                .minBy(ContentMediaSessionCandidate::index)
                .index
        }

        val current = currentIndex?.let { index ->
            candidatesWithoutSelf.firstOrNull { it.index == index }
        }
        if (current?.isPaused == true && isEligible(current, allowMissingTitle = false)) {
            return current.index
        }

        // A paused session may be selected during cold discovery or while it
        // remains current. Once the selected source stops or disappears, do not
        // resurrect an unrelated paused session on a later refresh.
        if (hasCurrentSelection) return null

        return candidatesWithoutSelf
            .asSequence()
            .filter(ContentMediaSessionCandidate::isPaused)
            .filter { isEligible(it, allowMissingTitle = false) }
            .minByOrNull(ContentMediaSessionCandidate::index)
            ?.index
    }

    /** Return whether a candidate has enough public evidence to be a media source. */
    @JvmStatic
    public fun isEligible(
        candidate: ContentMediaSessionCandidate,
        allowMissingTitle: Boolean
    ): Boolean {
        if (candidate.transport == ContentMediaSessionTransport.BLUETOOTH_AVRCP &&
            candidate.bluetoothCommunicationActive
        ) {
            return false
        }
        if (candidate.transport == ContentMediaSessionTransport.BLUETOOTH_AVRCP &&
            !candidate.hasMusicMetadata
        ) {
            return false
        }
        if (!hasMediaSemantics(candidate)) return false
        val explicitMusicSignal = candidate.audioUsage == AudioAttributes.USAGE_MEDIA ||
            candidate.audioContentType == AudioAttributes.CONTENT_TYPE_MUSIC
        if (allowMissingTitle && explicitMusicSignal) return true
        return candidate.hasTitle && (explicitMusicSignal || candidate.hasTransportActions)
    }

    private fun hasMediaSemantics(candidate: ContentMediaSessionCandidate): Boolean {
        val usage = candidate.audioUsage
        if (usage != null && usage != AudioAttributes.USAGE_UNKNOWN &&
            usage != AudioAttributes.USAGE_MEDIA
        ) {
            return false
        }
        return candidate.audioContentType != AudioAttributes.CONTENT_TYPE_SPEECH &&
            candidate.audioContentType != AudioAttributes.CONTENT_TYPE_SONIFICATION
    }

    private fun activityRank(candidate: ContentMediaSessionCandidate): Int = when {
        candidate.isPlaying -> 2
        candidate.isBuffering -> 1
        else -> 0
    }
}

/** Resulting operation for one arbiter evaluation. */
public enum class ContentMediaSessionArbitrationAction {
    KEEP_CURRENT,
    SELECT,
    CLEAR
}

/**
 * Immutable source arbitration result. `sessionId` is the stable identity the
 * host should bind, or null when the action clears/waits. `recheckAfterMs` is a
 * bounded scheduling hint, not an independent playback clock.
 */
public data class ContentMediaSessionArbitrationDecision @JvmOverloads constructor(
    val action: ContentMediaSessionArbitrationAction,
    val sessionId: String?,
    val reason: String,
    val recheckAfterMs: Long? = null
)

/**
 * Owns source stickiness and handoff confirmation independently of Android
 * controller objects. A session disappearing from the active list is not an
 * ended session; the host may keep it in the candidate set as the retained
 * current source until it is explicitly stopped or destroyed.
 *
 * This is the same evidence contract as the read-only 03lyrics arbiter named
 * in the file-level KDoc: real position progress outranks state/timestamp-only
 * refreshes, paused Browser progress may hand off after confirmation, and a
 * Bluetooth source cannot take ownership back from a current source without
 * fresh forward AVRCP progress. No UI, Store, transport control, or local
 * playback timeline is introduced here.
 */
public class ContentMediaSessionArbiter @JvmOverloads constructor(
    private val coldStartSettleMs: Long = COLD_START_SETTLE_MS,
    private val handoffConfirmMs: Long = HANDOFF_CONFIRM_MS,
    private val preferredSourceSettleMs: Long = PREFERRED_SOURCE_SETTLE_MS
) {
    private data class PendingHandoff(
        val sessionId: String,
        val armedAtMs: Long
    )

    private data class ActivityEvidence(
        var progressedAtMs: Long? = null,
        var publishedAtMs: Long? = null
    )

    private var selectedSessionId: String? = null
    private var preferredSourceId: String? = null
    private var coldStartStartedAtMs: Long? = null
    private var selectionMayResumeImmediately = false
    private var pendingHandoff: PendingHandoff? = null
    private val previousCandidates = linkedMapOf<String, ContentMediaSessionCandidate>()
    private val activityEvidence = linkedMapOf<String, ActivityEvidence>()
    private val bluetoothRequiresFreshProgress = linkedSetOf<String>()
    private val bluetoothMetadataPendingSince = linkedMapOf<String, Long>()
    private var bluetoothAvrcpActivity: AvrcpActivityEvidence? = null

    private data class AvrcpActivityEvidence(
        val lastPositionMs: Long?,
        val lastPlaybackState: Int?,
        val progressedAtMs: Long?,
        val publishedAtMs: Long?
    )

    /** Record normalized AVRCP activity before source selection is evaluated. */
    public fun observeBluetoothActivity(activity: ContentMediaSessionBluetoothActivity) {
        val capturedAt = activity.capturedAtMs
        val position = activity.positionMs?.takeIf { it >= 0L }
        val previous = bluetoothAvrcpActivity
        val pausedOrEnded = activity.playbackState == PlaybackState.STATE_PAUSED ||
            activity.playbackState == PlaybackState.STATE_STOPPED ||
            activity.playbackState == PlaybackState.STATE_NONE ||
            activity.playbackState == PlaybackState.STATE_ERROR
        val progressing = !pausedOrEnded &&
            position != null && previous?.lastPositionMs != null &&
            (position > previous.lastPositionMs ||
                activity.playbackState == PlaybackState.STATE_REWINDING)
        val published = !pausedOrEnded && position != null &&
            (previous == null || progressing ||
                (activity.playbackState != null &&
                    activity.playbackState != previous.lastPlaybackState))
        bluetoothAvrcpActivity = AvrcpActivityEvidence(
            lastPositionMs = position ?: previous?.lastPositionMs,
            lastPlaybackState = activity.playbackState ?: previous?.lastPlaybackState,
            progressedAtMs = if (progressing) capturedAt else previous?.progressedAtMs,
            publishedAtMs = if (published) capturedAt else previous?.publishedAtMs
        )
        if (progressing) bluetoothRequiresFreshProgress.clear()
    }

    /**
     * Evaluate one ordered public-session snapshot. The three-argument Java
     * overload uses `discoveryPending = false`.
     */
    @JvmOverloads
    public fun evaluate(
        candidates: List<ContentMediaSessionCandidate>,
        nowMs: Long,
        ownPackageName: String,
        discoveryPending: Boolean = false
    ): ContentMediaSessionArbitrationDecision {
        val currentIds = candidates.mapTo(hashSetOf(), ::identityOf)
        bluetoothMetadataPendingSince.keys.retainAll(currentIds)
        candidates.forEach { candidate ->
            val id = identityOf(candidate)
            if (candidate.transport == ContentMediaSessionTransport.BLUETOOTH_AVRCP &&
                candidate.hasMusicMetadata
            ) {
                bluetoothMetadataPendingSince.remove(id)
            }
        }
        val eligible = candidates
            .filter { it.packageName != ownPackageName }
            .filter {
                ContentMediaSessionSelectionPolicy.isEligible(
                    candidate = it,
                    allowMissingTitle = it.isPlaying || it.isBuffering
                )
            }
        observeActivity(candidatesWithoutSelf = candidates.filter { it.packageName != ownPackageName }, nowMs)
        val byId = eligible.associateBy { identityOf(it) }
        val currentId = selectedSessionId
        val currentRaw = currentId?.let { id ->
            candidates.firstOrNull { identityOf(it) == id }
        }
        val current = currentId?.let(byId::get)

        // A selected Bluetooth session can become temporarily ineligible while
        // the phone uses the car's communication route or metadata is enriched.
        // Communication clears immediately; metadata gaps receive only a short
        // same-source grace window.
        if (currentId != null && currentRaw != null && current == null &&
            currentRaw.transport == ContentMediaSessionTransport.BLUETOOTH_AVRCP
        ) {
            if (currentRaw.bluetoothCommunicationActive) {
                bluetoothRequiresFreshProgress += identityOf(currentRaw)
                selectedSessionId = null
                pendingHandoff = null
                coldStartStartedAtMs = nowMs
                selectionMayResumeImmediately = true
                remember(candidates)
                return decisionClear("bluetooth_communication_route")
            }
            if (!currentRaw.hasMusicMetadata) {
                val id = identityOf(currentRaw)
                val since = bluetoothMetadataPendingSince.getOrPut(id) { nowMs }
                val elapsed = nowMs - since
                if (elapsed in 0L..BLUETOOTH_METADATA_GRACE_MS) {
                    remember(candidates)
                    return decisionKeep(
                        currentId,
                        "bluetooth_music_metadata_pending",
                        BLUETOOTH_METADATA_GRACE_MS - elapsed
                    )
                }
                bluetoothRequiresFreshProgress += id
                selectedSessionId = null
                pendingHandoff = null
                coldStartStartedAtMs = nowMs
                selectionMayResumeImmediately = true
                remember(candidates)
                return decisionClear("bluetooth_music_metadata_missing")
            }
        }

        if (currentId != null && currentRaw == null) {
            selectedSessionId = null
            pendingHandoff = null
            coldStartStartedAtMs = nowMs
            val fresh = bestActive(eligible, nowMs)?.takeIf { evidenceRank(it, nowMs) >= 2 }
            if (fresh != null) {
                selectionMayResumeImmediately = true
                return commit(fresh, candidates, "current_session_missing_new_playing")
            }
            selectionMayResumeImmediately = true
            remember(candidates)
            return decisionClear("current_session_missing")
        }

        if (currentRaw?.isEnded == true) {
            selectedSessionId = null
            pendingHandoff = null
            val fresh = bestActive(eligible, nowMs, excludeSessionId = currentId)
                ?.takeIf { evidenceRank(it, nowMs) >= 2 }
            if (fresh != null) {
                selectionMayResumeImmediately = true
                return commit(fresh, candidates, "current_session_ended_new_playing")
            }
            coldStartStartedAtMs = nowMs
            selectionMayResumeImmediately = true
            remember(candidates)
            return decisionClear("current_session_ended")
        }

        if (currentId == null) {
            if (coldStartStartedAtMs == null) coldStartStartedAtMs = nowMs
            val coldStartElapsed = nowMs - (coldStartStartedAtMs ?: nowMs)
            if (!selectionMayResumeImmediately && coldStartElapsed < coldStartSettleMs) {
                remember(candidates)
                return decisionKeep(
                    null,
                    "cold_start_waiting_for_session_evidence",
                    coldStartSettleMs - coldStartElapsed
                )
            }
            val active = bestActive(eligible, nowMs)
            if (active != null && evidenceRank(active, nowMs) >= 2) {
                return commit(active, candidates, "cold_start_playback_evidence")
            }
            // Once a source ends, only new playback evidence can replace it.
            if (selectionMayResumeImmediately) {
                remember(candidates)
                return decisionKeep(null, "waiting_for_new_playback")
            }
            val preferred = preferredSourceId?.let { sourceId ->
                eligible.firstOrNull { sourceIdentityOf(it) == sourceId && isColdStartCandidate(it) }
            }
            if (preferred != null) {
                return commit(preferred, candidates, "cold_start_preferred_source")
            }

            if (preferredSourceId != null && discoveryPending &&
                coldStartElapsed < PREFERRED_DISCOVERY_MAX_WAIT_MS
            ) {
                remember(candidates)
                return decisionKeep(
                    null,
                    "cold_start_waiting_for_preferred_browser",
                    minOf(
                        preferredSourceSettleMs.coerceAtLeast(1L),
                        PREFERRED_DISCOVERY_MAX_WAIT_MS - coldStartElapsed
                    )
                )
            }
            if (preferredSourceId != null && coldStartElapsed < preferredSourceSettleMs) {
                remember(candidates)
                return decisionKeep(
                    null,
                    "cold_start_waiting_for_preferred_source",
                    preferredSourceSettleMs - coldStartElapsed
                )
            }
            val restored = bestColdStartCandidate(eligible, nowMs)
            if (restored != null) {
                return commit(restored, candidates, "cold_start_best_evidence")
            }
            remember(candidates)
            return decisionKeep(null, "cold_start_waiting")
        }

        coldStartStartedAtMs = null
        current?.let { preferredSourceId = sourceIdentityOf(it) }
        val pending = pendingHandoff
        val challenger = bestActive(
            eligible,
            nowMs,
            excludeSessionId = currentId
        )
        if (challenger != null && hasHandoffEvidence(challenger, current, nowMs)) {
            val challengerId = identityOf(challenger)
            if (pending?.sessionId != challengerId) {
                pendingHandoff = PendingHandoff(
                    sessionId = challengerId,
                    armedAtMs = nowMs
                )
                remember(candidates)
                return decisionKeep(currentId, "handoff_armed", handoffConfirmMs)
            }

            val elapsed = nowMs - pending.armedAtMs
            remember(candidates)
            if (elapsed >= handoffConfirmMs) return commit(challenger, candidates, "handoff_confirmed")
            return decisionKeep(
                currentId,
                "handoff_waiting_for_fresh_progress",
                (handoffConfirmMs - elapsed).takeIf { it > 0L }
            )
        }

        pendingHandoff = null
        remember(candidates)
        val reason = when {
            currentRaw?.playbackState == null -> "incumbent_state_unknown"
            current == null -> "incumbent_state_transitional"
            evidenceRank(current, nowMs) == 3 -> "incumbent_progressing"
            current.isPlaying || current.isBuffering -> "incumbent_active_without_challenger"
            else -> "incumbent_paused"
        }
        return decisionKeep(currentId, reason)
    }

    /** Forget a destroyed controller so a fresh source can be selected. */
    public fun forgetSession(sessionId: String) {
        previousCandidates.remove(sessionId)
        activityEvidence.remove(sessionId)
        bluetoothRequiresFreshProgress.remove(sessionId)
        if (selectedSessionId == sessionId) {
            selectedSessionId = null
            preferredSourceId = null
            coldStartStartedAtMs = null
            pendingHandoff = null
            selectionMayResumeImmediately = true
        }
    }

    /** Restore only a logical source preference; no source is selected by this call. */
    public fun restorePreferredSource(sourceId: String?) {
        if (selectedSessionId == null) preferredSourceId = sourceId?.takeIf(String::isNotBlank)
    }

    /** Whether the retained selection has recent position/state evidence. */
    public fun hasCurrentPlaybackEvidence(nowMs: Long): Boolean = selectedSessionId
        ?.let(previousCandidates::get)
        ?.let { evidenceRank(it, nowMs) >= 2 } == true

    /** Clear all retained source, activity, and preference evidence. */
    public fun reset() {
        selectedSessionId = null
        preferredSourceId = null
        coldStartStartedAtMs = null
        pendingHandoff = null
        selectionMayResumeImmediately = false
        previousCandidates.clear()
        activityEvidence.clear()
        bluetoothRequiresFreshProgress.clear()
        bluetoothMetadataPendingSince.clear()
        bluetoothAvrcpActivity = null
    }

    private fun commit(
        candidate: ContentMediaSessionCandidate,
        candidates: List<ContentMediaSessionCandidate>,
        reason: String
    ): ContentMediaSessionArbitrationDecision {
        val id = identityOf(candidate)
        val changed = selectedSessionId != id
        selectedSessionId = id
        preferredSourceId = sourceIdentityOf(candidate)
        coldStartStartedAtMs = null
        pendingHandoff = null
        selectionMayResumeImmediately = false
        remember(candidates)
        return if (changed) {
            ContentMediaSessionArbitrationDecision(ContentMediaSessionArbitrationAction.SELECT, id, reason)
        } else {
            decisionKeep(id, reason)
        }
    }

    private fun isColdStartCandidate(candidate: ContentMediaSessionCandidate): Boolean =
        candidate.isPlaying || candidate.isBuffering || (candidate.isPaused && candidate.hasTitle)

    private fun bestColdStartCandidate(
        candidates: List<ContentMediaSessionCandidate>,
        nowMs: Long
    ): ContentMediaSessionCandidate? {
        val viable = candidates.filter(::isColdStartCandidate)
        bestActive(viable, nowMs)?.let { return it }

        val paused = viable.filter(ContentMediaSessionCandidate::isPaused)
        if (paused.size == 1) return paused.single()
        val withPublisherTime = paused.filter { candidate ->
            candidate.positionUpdateTimeMs in 1..nowMs
        }
        return withPublisherTime.maxWithOrNull(
            compareBy<ContentMediaSessionCandidate>(ContentMediaSessionCandidate::positionUpdateTimeMs)
                .thenBy { if (it.activeInSystemList) 1 else 0 }
                .thenBy { -it.index }
        )
    }

    private fun evidenceRank(
        candidate: ContentMediaSessionCandidate,
        nowMs: Long
    ): Int {
        if (!isColdStartCandidate(candidate)) return 0
        val evidence = activityEvidence[identityOf(candidate)]
        // The car's public Bluetooth session reports USAGE_MEDIA with an
        // UNKNOWN content type for both music and non-music phone audio. A
        // state or timestamp refresh alone is therefore not proof that music
        // resumed; Bluetooth must publish a forward position change first.
        if (candidate.transport == ContentMediaSessionTransport.BLUETOOTH_AVRCP) {
            if (identityOf(candidate) in bluetoothRequiresFreshProgress) return 0
            val avrcp = bluetoothAvrcpActivity?.takeIf { activity ->
                candidate.isPlaying || candidate.isBuffering ||
                    activity.lastPlaybackState == PlaybackState.STATE_PLAYING ||
                    activity.lastPlaybackState == PlaybackState.STATE_BUFFERING ||
                    activity.lastPlaybackState == PlaybackState.STATE_CONNECTING
            }
            return when {
                isRecent(evidence?.progressedAtMs, nowMs) ||
                    isRecent(avrcp?.progressedAtMs, nowMs) -> 3
                isRecent(avrcp?.publishedAtMs, nowMs) -> 2
                // A cold-start Bluetooth session may only expose PLAYING
                // before its first position callback. It can be selected as
                // the initial source, but it cannot displace an incumbent
                // source until a real activity event has been observed.
                selectedSessionId == null && (candidate.isPlaying || candidate.isBuffering) -> 1
                else -> 0
            }
        }
        return when {
            isRecent(evidence?.progressedAtMs, nowMs) -> 3
            isRecent(evidence?.publishedAtMs, nowMs) -> 2
            candidate.isPlaying || candidate.isBuffering -> 1
            else -> 0
        }
    }

    private fun isRecent(atMs: Long?, nowMs: Long): Boolean =
        atMs != null && atMs <= nowMs && nowMs - atMs <= ACTIVITY_EVIDENCE_MAX_AGE_MS

    private fun bestActive(
        candidates: List<ContentMediaSessionCandidate>,
        nowMs: Long,
        excludeSessionId: String? = null
    ): ContentMediaSessionCandidate? = candidates
        .asSequence()
        .filter { identityOf(it) != excludeSessionId }
        .filter { evidenceRank(it, nowMs) > 0 }
        .sortedWith(
            compareByDescending<ContentMediaSessionCandidate> { evidenceRank(it, nowMs) }
                .thenByDescending { evidenceTime(it, nowMs) }
                .thenByDescending(::activityRank)
                .thenByDescending(ContentMediaSessionCandidate::activeInSystemList)
                .thenBy(ContentMediaSessionCandidate::index)
        )
        .firstOrNull()

    private fun evidenceTime(candidate: ContentMediaSessionCandidate, nowMs: Long): Long {
        val evidence = activityEvidence[identityOf(candidate)] ?: return 0L
        return when (evidenceRank(candidate, nowMs)) {
            3 -> evidence.progressedAtMs ?: 0L
            2 -> evidence.publishedAtMs ?: 0L
            else -> 0L
        }
    }

    private fun hasHandoffEvidence(
        candidate: ContentMediaSessionCandidate,
        incumbent: ContentMediaSessionCandidate?,
        nowMs: Long
    ): Boolean {
        val challengerRank = evidenceRank(candidate, nowMs)
        if (challengerRank < 2) return false
        val incumbentRank = incumbent?.let { evidenceRank(it, nowMs) } ?: 0
        if (challengerRank != incumbentRank) return challengerRank > incumbentRank
        // Equally progressing sources retain the incumbent to avoid callback-order churn.
        return challengerRank == 2 && incumbent != null &&
            evidenceTime(candidate, nowMs) > evidenceTime(incumbent, nowMs)
    }

    /** Retain observed facts across duplicate callbacks, never extrapolated positions. */
    private fun observeActivity(
        candidatesWithoutSelf: List<ContentMediaSessionCandidate>,
        nowMs: Long
    ) {
        activityEvidence.keys.retainAll(candidatesWithoutSelf.mapTo(hashSetOf(), ::identityOf))
        candidatesWithoutSelf.forEach { candidate ->
            val id = identityOf(candidate)
            if (candidate.transport == ContentMediaSessionTransport.BLUETOOTH_AVRCP &&
                candidate.bluetoothCommunicationActive
            ) {
                activityEvidence.remove(id)
                bluetoothRequiresFreshProgress += id
                return@forEach
            }
            if (!isColdStartCandidate(candidate)) {
                activityEvidence.remove(id)
                return@forEach
            }
            val previous = previousCandidates[id]
            val evidence = activityEvidence.getOrPut(id, ::ActivityEvidence)
            val paused = candidate.isPaused && previous != null && !previous.isPaused
            if (paused || (previous != null && !isColdStartCandidate(previous))) {
                evidence.progressedAtMs = null
                evidence.publishedAtMs = null
            }
            val positionChanged = previous != null && candidate.reportedPositionMs >= 0L &&
                previous.reportedPositionMs >= 0L && candidate.reportedPositionMs != previous.reportedPositionMs
            val progressing = positionChanged && !paused && isColdStartCandidate(previous) &&
                (candidate.reportedPositionMs > previous.reportedPositionMs ||
                    candidate.playbackState == PlaybackState.STATE_REWINDING)
            if (progressing) evidence.progressedAtMs = nowMs
            if (progressing && candidate.transport == ContentMediaSessionTransport.BLUETOOTH_AVRCP) {
                bluetoothRequiresFreshProgress.remove(id)
            }

            if (candidate.isPlaying || candidate.isBuffering) {
                val resumed = previous != null && !previous.isPlaying && !previous.isBuffering
                if (previous == null || resumed || positionChanged) {
                    evidence.publishedAtMs = candidate.positionUpdateTimeMs.takeIf {
                        candidate.reportedPositionMs >= 0L && it in 1..nowMs
                    }
                }
            } else {
                evidence.publishedAtMs = null
            }
        }
    }

    private fun identityOf(candidate: ContentMediaSessionCandidate): String =
        candidate.sessionId.ifBlank { "${candidate.packageName}#${candidate.index}" }

    private fun sourceIdentityOf(candidate: ContentMediaSessionCandidate): String =
        candidate.sourceId.ifBlank { candidate.packageName }

    private fun activityRank(candidate: ContentMediaSessionCandidate): Int = when {
        candidate.isPlaying -> 2
        candidate.isBuffering -> 1
        else -> 0
    }

    private fun remember(candidates: List<ContentMediaSessionCandidate>) {
        val currentIds = candidates.mapTo(hashSetOf(), ::identityOf)
        previousCandidates.keys.retainAll(currentIds)
        candidates.forEach { previousCandidates[identityOf(it)] = it }
    }

    private fun decisionKeep(
        sessionId: String?,
        reason: String,
        recheckAfterMs: Long? = null
    ) = ContentMediaSessionArbitrationDecision(
        ContentMediaSessionArbitrationAction.KEEP_CURRENT,
        sessionId,
        reason,
        recheckAfterMs
    )

    private fun decisionClear(reason: String) =
        ContentMediaSessionArbitrationDecision(ContentMediaSessionArbitrationAction.CLEAR, null, reason)

    public companion object {
        public const val COLD_START_SETTLE_MS = 1_500L
        public const val HANDOFF_CONFIRM_MS = 250L
        public const val PREFERRED_SOURCE_SETTLE_MS = 3_500L
        public const val PREFERRED_DISCOVERY_MAX_WAIT_MS = 7_500L
        public const val ACTIVITY_EVIDENCE_MAX_AGE_MS = 5_000L
        public const val BLUETOOTH_METADATA_GRACE_MS = 1_500L
    }
}
