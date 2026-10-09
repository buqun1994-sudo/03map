package com.icar03.content.runtime.lyrics

import android.media.session.PlaybackState
import android.os.SystemClock
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentRegistry

/** ContentStore owns one instance; only actual media events may call update. */
class ContentLyricsTimeline internal constructor(private val elapsedRealtime: () -> Long) {
    constructor() : this(SystemClock::elapsedRealtime)

    private val recording = MediaRecordingStateTracker()
    private val timeline = MediaSessionTimelineTracker(elapsedRealtime)
    private var currentRecordingGeneration = 0L
    private var durationMs = 0L
    private var publisherGeneration: Int? = null
    private var lastAvrcpEventSequence = 0L
    private var avrcpPlaybackState: Int? = null
    private var currentSource = ""

    @Synchronized fun update(snapshot: ContentPorts.MediaSnapshot) {
        val metadata = snapshot.recordingMetadataOrNull()
        if (metadata == null) {
            reset()
            return
        }
        val state = recording.update(snapshot.source, metadata) ?: return
        currentRecordingGeneration = state.recordingGeneration
        val normalizedSource = ContentRegistry.normalizeMediaSource(snapshot.source).orEmpty()
        val resetNewRecordingAtStart = state.recordingChanged &&
            normalizedSource.isNotBlank() && normalizedSource == currentSource
        currentSource = normalizedSource
        if (publisherGeneration != snapshot.generation) {
            timeline.clearPublisherOrdering()
            publisherGeneration = snapshot.generation
        }
        if (state.recordingChanged || normalizedSource != "蓝牙音乐"
            || snapshot.avrcpEventSequence == 0L || snapshot.avrcpPlaybackState < 0) {
            avrcpPlaybackState = null
        }
        durationMs = state.metadata.durationMs
        val bluetooth = normalizedSource == "蓝牙音乐"
        if (bluetooth && snapshot.avrcpEventSequence > lastAvrcpEventSequence) {
            lastAvrcpEventSequence = snapshot.avrcpEventSequence
            val age = elapsedRealtime() - snapshot.avrcpElapsedRealtimeMs
            if (age in 0L..1_500L) {
                if (snapshot.avrcpPositionMs >= 0L) timeline.onAvrcpPosition(
                    snapshot.avrcpPositionMs, snapshot.avrcpPositionElapsedRealtimeMs,
                    "recording:${state.recordingGeneration}"
                )
                if (snapshot.avrcpPlaybackState >= 0) avrcpPlaybackState = snapshot.avrcpPlaybackState
            }
        }
        // An initialization zero without a real public duration is not a seek or a trusted position.
        val position = if (snapshot.positionMs == 0L &&
            snapshot.durationMs < MediaRecordingStateTracker.MINIMUM_QUERY_DURATION_MS) {
            PlaybackState.PLAYBACK_POSITION_UNKNOWN
        } else snapshot.positionMs
        timeline.update(
            trackKey = "recording:${state.recordingGeneration}",
            playbackState = if (bluetooth) avrcpPlaybackState ?: snapshot.playbackState else snapshot.playbackState,
            reportedPositionMs = position,
            playbackSpeed = snapshot.playbackSpeed,
            publisherPositionTime = snapshot.positionElapsedRealtimeMs,
            durationMs = durationMs,
            transport = if (bluetooth) MediaSessionTransport.BLUETOOTH_AVRCP else MediaSessionTransport.STANDARD,
            resetNewRecordingAtStart = resetNewRecordingAtStart,
        )
    }

    /** Stable recording identity from the existing tracker, independent of publisher revisions. */
    @Synchronized fun recordingGeneration(): Long = currentRecordingGeneration

    @Synchronized fun anchor(): ContentPorts.LyricsPlaybackAnchor = timeline.anchor()

    @Synchronized fun positionMs(): Long = timeline.anchor().sampleAt(elapsedRealtime())

    @Synchronized fun speed(): Float = timeline.anchor().speed

    @Synchronized fun ready(): Boolean = timeline.anchor().timelineReady

    @Synchronized fun durationMs(): Long = durationMs

    @Synchronized fun reset() {
        recording.clear()
        currentRecordingGeneration = 0L
        timeline.reset()
        publisherGeneration = null
        avrcpPlaybackState = null
        currentSource = ""
        durationMs = 0L
    }
}

/** Presentation placeholders are never eligible media metadata. */
internal fun ContentPorts.MediaSnapshot.recordingMetadataOrNull(): MediaRecordingMetadata? {
    if (songIdentity != ContentPorts.MediaSongIdentity.SONG
        || !dataAvailable || preview || title.isNullOrBlank() || title == "暂无媒体") return null
    return MediaSessionMetadataPolicy.normalize(MediaSessionMetadataFields(
        title = title,
        artist = artist?.takeUnless { it == "未连接" }.orEmpty(),
        album = album.orEmpty(),
        durationMs = durationMs,
        reportedPositionMs = positionMs,
        mediaId = mediaId.orEmpty(),
        displayDescription = embeddedLyrics.orEmpty()
    ))
}
