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
    private var durationMs = 0L

    @Synchronized fun update(snapshot: ContentPorts.MediaSnapshot) {
        val metadata = snapshot.recordingMetadataOrNull()
        if (metadata == null) {
            reset()
            return
        }
        val state = recording.update(snapshot.source, metadata) ?: return
        durationMs = state.metadata.durationMs
        // An initialization zero without a real public duration is not a seek or a trusted position.
        val position = if (snapshot.positionMs == 0L &&
            snapshot.durationMs < MediaRecordingStateTracker.MINIMUM_QUERY_DURATION_MS) {
            PlaybackState.PLAYBACK_POSITION_UNKNOWN
        } else snapshot.positionMs
        timeline.update(
            trackKey = "recording:${state.recordingGeneration}",
            playbackState = if (snapshot.playing) PlaybackState.STATE_PLAYING else PlaybackState.STATE_PAUSED,
            reportedPositionMs = position,
            playbackSpeed = snapshot.playbackSpeed,
            publisherPositionTime = snapshot.positionElapsedRealtimeMs,
            durationMs = durationMs,
            transport = if (ContentRegistry.normalizeMediaSource(snapshot.source) == "蓝牙音乐") {
                MediaSessionTransport.BLUETOOTH_AVRCP
            } else MediaSessionTransport.STANDARD
        )
    }

    @Synchronized fun positionMs(): Long = timeline.current(durationMs).let {
        if (it.timelineReady) it.positionMs else -1L
    }

    @Synchronized fun speed(): Float = timeline.current(durationMs).speed.toFloat()

    @Synchronized fun ready(): Boolean = timeline.current(durationMs).timelineReady

    @Synchronized fun reset() {
        recording.clear()
        timeline.reset()
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
