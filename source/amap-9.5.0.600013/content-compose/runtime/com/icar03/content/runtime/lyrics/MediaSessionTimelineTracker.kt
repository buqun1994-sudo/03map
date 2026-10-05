package com.icar03.content.runtime.lyrics

// Migrated from 03lyrics; original source SHA-256: d4ae390e9a315eb4ed06c0531855fbdff3e0bba54cfab687544c0a79cc28a0bc.
// Upstream provenance and scoped adaptations: PROVENANCE.json.

import android.media.session.PlaybackState
import com.autonavi.amapauto.content.ContentPorts
import kotlin.math.max
import kotlin.math.min

internal data class MediaSessionTimeline(
    val positionMs: Long,
    val speed: Double,
    val timelineReady: Boolean
)

internal data class MediaPlaybackCheckpoint(
    val sourceId: String,
    val track: String,
    val artist: String,
    val album: String,
    val durationMs: Long,
    val positionMs: Long,
    val savedAtEpochMs: Long,
    val mediaId: String = ""
)

/** Keeps restart recovery tied to one logical source and one recording. */
internal object MediaPlaybackCheckpointPolicy {
    internal const val MAX_AGE_MS = 24L * 60L * 60L * 1_000L
    internal const val DURATION_TOLERANCE_MS = 2_000L

    fun isValid(checkpoint: MediaPlaybackCheckpoint, nowEpochMs: Long): Boolean {
        if (checkpoint.sourceId.isBlank() || checkpoint.track.isBlank()) return false
        if (checkpoint.positionMs < 0L ||
            checkpoint.durationMs < MediaRecordingStateTracker.MINIMUM_QUERY_DURATION_MS
        ) return false
        if (checkpoint.durationMs > 0L &&
            checkpoint.positionMs > checkpoint.durationMs + DURATION_TOLERANCE_MS
        ) return false
        val age = nowEpochMs - checkpoint.savedAtEpochMs
        return age in 0L..MAX_AGE_MS
    }

    fun matches(
        checkpoint: MediaPlaybackCheckpoint,
        sourceId: String,
        track: String,
        artist: String,
        album: String,
        durationMs: Long,
        nowEpochMs: Long,
        mediaId: String = ""
    ): Boolean {
        if (!isValid(checkpoint, nowEpochMs)) return false
        if (!checkpoint.sourceId.trim().equals(sourceId.trim(), ignoreCase = true)) return false
        if (checkpoint.mediaId != mediaId &&
            (checkpoint.mediaId.isNotBlank() || mediaId.isNotBlank())
        ) return false
        if (!sameRequiredText(checkpoint.track, track)) return false
        if (!sameOptionalText(checkpoint.artist, artist)) return false
        if (!sameOptionalText(checkpoint.album, album)) return false
        return durationMs >= MediaRecordingStateTracker.MINIMUM_QUERY_DURATION_MS &&
            kotlin.math.abs(checkpoint.durationMs - durationMs) <= DURATION_TOLERANCE_MS
    }

    private fun sameRequiredText(first: String, second: String): Boolean =
        normalizeText(first) == normalizeText(second) && normalizeText(first).isNotEmpty()

    private fun sameOptionalText(first: String, second: String): Boolean =
        normalizeText(first) == normalizeText(second)
}

/**
 * Normalizes publisher progress into a local monotonic timeline.
 * Some car sessions report a zero or invalid lastPositionUpdateTime; in that
 * case progress is extrapolated from the callback time instead of epoch zero.
 */
internal class MediaSessionTimelineTracker(
    private val nowElapsedRealtime: () -> Long
) {
    private var trackKey = ""
    private var hasObservedTrack = false
    private var basePositionMs = 0L
    private var capturedAtElapsedRealtime = 0L
    private var lastReportedPositionMs = Long.MIN_VALUE
    private var firstUntrustedPositionMs = Long.MIN_VALUE
    private var lastObservedPublisherPositionTime = Long.MIN_VALUE
    // A valid monotonic publisher timestamp is ordering evidence, not another clock.
    // Keep its high-water mark even if a later envelope omits the timestamp.
    private var newestPublisherPositionTime = Long.MIN_VALUE
    private var lastSpeed = 0.0
    private var wasPlaying = false
    private var timelineReady = false
    private var deferNextReportedPosition = false
    private data class AvrcpPosition(val trackKey: String, val positionMs: Long, val capturedAt: Long)
    private var pendingAvrcpPosition: AvrcpPosition? = null
    private var supersededReportedPositionMs: Long? = null
    private var lastAvrcpCapturedAt: Long? = null
    // A distinct event is not necessarily a distinct position sample. Keep the
    // first capture of a same-value burst so duplicates cannot extend the window.
    private var lastAvrcpPositionMs: Long? = null
    private var lastAvrcpPositionCapturedAt: Long? = null
    private var phaseCorrectionMs = 0.0
    private var phaseCorrectionDurationMs = 0L
    private var ignoreReportedUntilAvrcp = false
    private var playbackAnchor = ContentPorts.LyricsPlaybackAnchor.unknown()
    private var anchorTrackKey = ""
    private var anchorRevision = 0L

    /** The canonical base/time/speed facts; querying never creates or changes an anchor. */
    fun anchor(): ContentPorts.LyricsPlaybackAnchor = playbackAnchor

    fun onAvrcpPosition(
        positionMs: Long,
        capturedAtRealtime: Long = nowElapsedRealtime(),
        trackKey: String = this.trackKey
    ) {
        if (positionMs < 0L || trackKey.isBlank()) return
        pendingAvrcpPosition = AvrcpPosition(trackKey, positionMs, capturedAtRealtime)
    }

    fun update(
        trackKey: String,
        playbackState: Int?,
        reportedPositionMs: Long,
        playbackSpeed: Float,
        publisherPositionTime: Long,
        durationMs: Long,
        transport: MediaSessionTransport = MediaSessionTransport.STANDARD
    ): MediaSessionTimeline {
        val now = nowElapsedRealtime()
        val hasReportedPosition = reportedPositionMs >= 0L
        val reported = reportedPositionMs.coerceAtLeast(0L)
        val playing = isPlaying(playbackState)
        val speed = effectiveSpeed(playing, playbackState, playbackSpeed)
        val validPublisherTime = publisherPositionTime
            .takeIf { it > 0L && it <= now }
        val avrcpPosition = pendingAvrcpPosition?.takeIf {
            transport == MediaSessionTransport.BLUETOOTH_AVRCP && it.trackKey == trackKey &&
                now - it.capturedAt in 0L..AVRCP_EVENT_MAX_AGE_MS
        }
        pendingAvrcpPosition = null

        if (trackKey != this.trackKey) {
            val firstObservedTrack = !hasObservedTrack
            val trustedInitialPosition = hasReportedPosition &&
                (firstObservedTrack || reported <= INITIAL_POSITION_TRUST_LIMIT_MS) &&
                (transport != MediaSessionTransport.BLUETOOTH_AVRCP || reported > 0L)
            this.trackKey = trackKey
            basePositionMs = clamp(avrcpPosition?.positionMs ?: if (trustedInitialPosition) reported else 0L, durationMs)
            capturedAtElapsedRealtime = avrcpPosition?.capturedAt
                ?: if (trustedInitialPosition) validPublisherTime ?: now else now
            lastReportedPositionMs = if (hasReportedPosition) reported else Long.MIN_VALUE
            firstUntrustedPositionMs = if (hasReportedPosition) reported else Long.MIN_VALUE
            lastObservedPublisherPositionTime = publisherPositionTime
            newestPublisherPositionTime = validPublisherTime ?: Long.MIN_VALUE
            lastSpeed = speed
            wasPlaying = playing
            phaseCorrectionMs = 0.0
            phaseCorrectionDurationMs = 0L
            timelineReady = trustedInitialPosition || avrcpPosition != null
            hasObservedTrack = true
            deferNextReportedPosition = false
            supersededReportedPositionMs = if (avrcpPosition != null && hasReportedPosition) reported else null
            lastAvrcpCapturedAt = avrcpPosition?.capturedAt
            lastAvrcpPositionMs = avrcpPosition?.positionMs
            lastAvrcpPositionCapturedAt = avrcpPosition?.capturedAt
            ignoreReportedUntilAvrcp = false
        } else {
            val currentPosition = positionAt(now)
            val deferPositionFrame = deferNextReportedPosition
            deferNextReportedPosition = false
            if (deferPositionFrame && hasReportedPosition) supersededReportedPositionMs = reported
            if (!deferPositionFrame && hasReportedPosition && reported != supersededReportedPositionMs) {
                supersededReportedPositionMs = null
            }
            // Only verifiable out-of-order positions are rejected: zero/no publisher time
            // remains compatible, and a fresh backward seek (including zero) is accepted.
            val stalePublisherPosition = validPublisherTime != null &&
                validPublisherTime < newestPublisherPositionTime
            val ignoreReportedPosition = stalePublisherPosition || deferPositionFrame || ignoreReportedUntilAvrcp ||
                reported == supersededReportedPositionMs ||
                (transport == MediaSessionTransport.BLUETOOTH_AVRCP && lastAvrcpCapturedAt != null &&
                    (validPublisherTime == null || validPublisherTime <= lastAvrcpCapturedAt!!))
            val reportedChanged = !ignoreReportedPosition &&
                hasReportedPosition && reported != lastReportedPositionMs
            val publisherChanged = publisherPositionTime != lastObservedPublisherPositionTime
            val usablePublisherChange = !ignoreReportedPosition && hasReportedPosition &&
                publisherChanged &&
                validPublisherTime != null
            val playbackModeChanged = playing != wasPlaying
            val speedChanged = playing && speed != lastSpeed

            val orderedAvrcp = avrcpPosition?.takeUnless {
                lastAvrcpCapturedAt != null && it.capturedAt < lastAvrcpCapturedAt!!
            }
            if (orderedAvrcp != null) {
                val sameValue = orderedAvrcp.positionMs == lastAvrcpPositionMs
                val duplicate = sameValue && (playbackModeChanged || speedChanged ||
                    lastAvrcpPositionCapturedAt?.let {
                        orderedAvrcp.capturedAt - it in 0L..AVRCP_DUPLICATE_WINDOW_MS
                    } == true)
                if (!duplicate) {
                    acceptPosition(orderedAvrcp.positionMs, orderedAvrcp.capturedAt, now,
                        durationMs, speed, transport, playing)
                    lastAvrcpPositionMs = orderedAvrcp.positionMs
                    lastAvrcpPositionCapturedAt = orderedAvrcp.capturedAt
                } else if (playbackModeChanged || speedChanged) {
                    rebase(currentPosition, now)
                }
                timelineReady = true
                supersededReportedPositionMs = if (hasReportedPosition) reported else null
                lastAvrcpCapturedAt = orderedAvrcp.capturedAt
                ignoreReportedUntilAvrcp = false
            } else if (!timelineReady) {
                val freshPosition = !ignoreReportedPosition && hasReportedPosition && when (transport) {
                    MediaSessionTransport.BLUETOOTH_AVRCP ->
                        reported > 0L && reported != firstUntrustedPositionMs
                    MediaSessionTransport.STANDARD ->
                        reported <= INITIAL_POSITION_TRUST_LIMIT_MS ||
                            reported != firstUntrustedPositionMs || usablePublisherChange
                }
                if (freshPosition) {
                    rebase(clamp(reported, durationMs), if (usablePublisherChange) validPublisherTime!! else now)
                    timelineReady = true
                }
            } else if (reportedChanged) {
                acceptPosition(reported, if (usablePublisherChange) validPublisherTime!! else now,
                    now, durationMs, speed, transport, playing)
            } else if (playbackModeChanged || speedChanged) {
                rebase(currentPosition, now)
            }

            if (hasReportedPosition && !stalePublisherPosition) {
                lastReportedPositionMs = reported
            }
            if (!stalePublisherPosition) {
                lastObservedPublisherPositionTime = publisherPositionTime
                if (hasReportedPosition && validPublisherTime != null) {
                    newestPublisherPositionTime = max(newestPublisherPositionTime, validPublisherTime)
                }
            }
            lastSpeed = speed
            wasPlaying = playing
        }

        refreshAnchor(durationMs)
        val position = clamp(positionAt(now), durationMs)
        return MediaSessionTimeline(
            positionMs = position,
            speed = speed,
            timelineReady = this.timelineReady
        )
    }

    /** Publisher replacement invalidates ordering evidence, not the established position. */
    fun clearPublisherOrdering() {
        newestPublisherPositionTime = Long.MIN_VALUE
    }

    /**
     * A replacement controller can expose one stale position frame. Keep the
     * established local timeline for that frame, then accept the next concrete
     * publisher position as normal (including a real seek).
     */
    fun deferNextReportedPosition() {
        deferNextReportedPosition = true
    }

    fun restorePosition(
        trackKey: String,
        positionMs: Long,
        durationMs: Long,
        transport: MediaSessionTransport = MediaSessionTransport.STANDARD
    ): MediaSessionTimeline? {
        if (trackKey != this.trackKey || positionMs < 0L) return null
        val now = nowElapsedRealtime()
        rebase(clamp(positionMs, durationMs), now)
        lastAvrcpPositionMs = null
        lastAvrcpPositionCapturedAt = null
        supersededReportedPositionMs = lastReportedPositionMs.takeIf { it >= 0L }
        deferNextReportedPosition = false
        timelineReady = true
        ignoreReportedUntilAvrcp = transport == MediaSessionTransport.BLUETOOTH_AVRCP
        refreshAnchor(durationMs)
        return MediaSessionTimeline(
            positionMs = clamp(positionAt(now), durationMs),
            speed = lastSpeed,
            timelineReady = true
        )
    }

    /** Samples the established anchor without treating a UI wake-up as publisher evidence. */
    fun current(durationMs: Long): MediaSessionTimeline = MediaSessionTimeline(
        positionMs = clamp(positionAt(nowElapsedRealtime()), durationMs),
        speed = if (wasPlaying) lastSpeed else 0.0,
        timelineReady = timelineReady
    )

    fun reset() {
        trackKey = ""
        hasObservedTrack = false
        basePositionMs = 0L
        capturedAtElapsedRealtime = 0L
        lastReportedPositionMs = Long.MIN_VALUE
        firstUntrustedPositionMs = Long.MIN_VALUE
        lastObservedPublisherPositionTime = Long.MIN_VALUE
        newestPublisherPositionTime = Long.MIN_VALUE
        lastSpeed = 0.0
        wasPlaying = false
        timelineReady = false
        deferNextReportedPosition = false
        pendingAvrcpPosition = null
        supersededReportedPositionMs = null
        lastAvrcpCapturedAt = null
        lastAvrcpPositionMs = null
        lastAvrcpPositionCapturedAt = null
        phaseCorrectionMs = 0.0
        phaseCorrectionDurationMs = 0L
        ignoreReportedUntilAvrcp = false
        playbackAnchor = ContentPorts.LyricsPlaybackAnchor.unknown()
        anchorTrackKey = ""
    }

    /** Only admitted position facts may change the clock trajectory. */
    private fun acceptPosition(positionMs: Long, capturedAt: Long, now: Long,
        durationMs: Long, speed: Double, transport: MediaSessionTransport, playing: Boolean) {
        val position = clamp(positionMs, durationMs)
        val continuous = timelineReady && wasPlaying && playing && speed > 0.0 && speed == lastSpeed &&
            transport == MediaSessionTransport.BLUETOOTH_AVRCP && positionMs != 0L
        if (continuous) {
            val current = clamp(positionAt(now), durationMs)
            val target = clamp((position + max(0L, now - capturedAt) * speed).coerceAtLeast(0.0).toLong(), durationMs)
            val error = (target - current).toDouble()
            if (kotlin.math.abs(error) <= BLUETOOTH_PHASE_LIMIT_MS) {
                // Start at the already visible position. The immutable trajectory
                // repays this finite phase error at <=8% of nominal speed, then
                // resumes nominal speed even if no further callback arrives.
                rebase(current, now)
                phaseCorrectionMs = error
                phaseCorrectionDurationMs = if (error == 0.0) 0L else max(
                    MIN_PHASE_DURATION_MS,
                    kotlin.math.ceil(kotlin.math.abs(error) / (speed * MAX_PHASE_RATE_FRACTION)).toLong())
                return
            }
        }
        // Initialization, a real zero, significant seek, pause/resume and rate
        // changes retain immediate positioning. Tiny seeks use finite correction:
        // a position-only transport cannot distinguish them from sample noise.
        rebase(position, capturedAt)
    }

    private fun rebase(positionMs: Long, capturedAt: Long) {
        basePositionMs = positionMs
        capturedAtElapsedRealtime = capturedAt
        phaseCorrectionMs = 0.0
        phaseCorrectionDurationMs = 0L
    }

    private fun refreshAnchor(durationMs: Long) {
        if (!timelineReady) {
            playbackAnchor = ContentPorts.LyricsPlaybackAnchor.unknown()
            return
        }
        val speed = if (wasPlaying) lastSpeed.toFloat() else 0f
        val old = playbackAnchor
        // Identical trajectories from actual callbacks are still the same fact. Keep
        // the original canonical pair as well as its published identity/revision.
        if (anchorTrackKey == trackKey && old.timelineReady && old.speed == speed &&
            old.durationMs == durationMs && old.trajectory.correctionMs == phaseCorrectionMs &&
            old.trajectory.correctionDurationMs == phaseCorrectionDurationMs &&
            (old.basePositionMs == basePositionMs && old.capturedAtMs == capturedAtElapsedRealtime ||
                speed == 0f && old.basePositionMs == basePositionMs ||
                phaseCorrectionMs == 0.0 && speed != 0f && old.basePositionMs <= 9_007_199_254_740_991L &&
                    basePositionMs <= 9_007_199_254_740_991L &&
                    (basePositionMs - old.basePositionMs).toDouble() ==
                    (capturedAtElapsedRealtime - old.capturedAtMs).toDouble() * speed.toDouble())
        ) {
            basePositionMs = old.basePositionMs
            capturedAtElapsedRealtime = old.capturedAtMs
            return
        }
        playbackAnchor = ContentPorts.LyricsPlaybackAnchor(
            basePositionMs, capturedAtElapsedRealtime, speed, durationMs, true, ++anchorRevision,
            phaseCorrectionMs, phaseCorrectionDurationMs
        )
        anchorTrackKey = trackKey
    }

    private fun positionAt(now: Long): Long =
        if (timelineReady) playbackAnchor.trajectory.rawPositionAt(now).coerceAtLeast(0.0).toLong() else 0L

    private fun clamp(position: Long, durationMs: Long): Long =
        if (durationMs > 0L) min(position.coerceAtLeast(0L), durationMs) else position.coerceAtLeast(0L)

    private fun isPlaying(state: Int?): Boolean = state == PlaybackState.STATE_PLAYING ||
        state == PlaybackState.STATE_FAST_FORWARDING ||
        state == PlaybackState.STATE_REWINDING

    private fun effectiveSpeed(
        playing: Boolean,
        state: Int?,
        reportedSpeed: Float
    ): Double {
        if (!playing) return 0.0
        if (reportedSpeed.isFinite() && reportedSpeed != 0f) return reportedSpeed.toDouble()
        return if (state == PlaybackState.STATE_REWINDING) -1.0 else 1.0
    }

    private companion object {
        const val INITIAL_POSITION_TRUST_LIMIT_MS = 2_500L
        const val AVRCP_EVENT_MAX_AGE_MS = 1_500L
        const val AVRCP_DUPLICATE_WINDOW_MS = 350L
        const val BLUETOOTH_PHASE_LIMIT_MS = 250.0
        const val MIN_PHASE_DURATION_MS = 1_000L
        const val MAX_PHASE_RATE_FRACTION = 0.08
    }
}
