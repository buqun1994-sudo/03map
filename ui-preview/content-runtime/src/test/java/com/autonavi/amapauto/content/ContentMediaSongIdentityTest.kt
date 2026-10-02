package com.autonavi.amapauto.content

import android.media.AudioAttributes
import org.junit.Assert.assertEquals
import org.junit.Test

class ContentMediaSongIdentityTest {
    private fun identity(usage: Int = AudioAttributes.USAGE_MEDIA, kind: Int = AudioAttributes.CONTENT_TYPE_UNKNOWN,
        title: Boolean = true, musicMetadata: Boolean = true, communication: Boolean = false,
        transport: Boolean = false, active: Boolean = false) = ContentMediaAdapter.classifyAudioSemantics(
        usage, kind, title, musicMetadata, communication, transport, active)

    @Test fun navigationUsageIsNotSong() {
        assertEquals(ContentPorts.MediaSongIdentity.NON_SONG,
            identity(usage = AudioAttributes.USAGE_ASSISTANCE_NAVIGATION_GUIDANCE, transport = true))
    }
    @Test fun speechAndMovieCannotBecomeSongsThroughMetadataOrTransportActions() {
        for (kind in listOf(AudioAttributes.CONTENT_TYPE_SPEECH, AudioAttributes.CONTENT_TYPE_MOVIE,
            AudioAttributes.CONTENT_TYPE_SONIFICATION)) {
            assertEquals(ContentPorts.MediaSongIdentity.NON_SONG, identity(kind = kind, transport = true, active = true))
        }
    }
    @Test fun mediaMetadataWorksWithoutPlaybackActions() {
        assertEquals(ContentPorts.MediaSongIdentity.SONG, identity())
    }
    @Test fun unknownAudioAttributesRequireTitleAndTransportEvidenceTogether() {
        assertEquals(ContentPorts.MediaSongIdentity.UNKNOWN, identity(usage = AudioAttributes.USAGE_UNKNOWN))
        assertEquals(ContentPorts.MediaSongIdentity.SONG, identity(usage = AudioAttributes.USAGE_UNKNOWN, transport = true))
        assertEquals(ContentPorts.MediaSongIdentity.UNKNOWN,
            identity(usage = AudioAttributes.USAGE_UNKNOWN, title = false, transport = true, active = true))
    }
    @Test fun explicitMusicCanSurviveAnActiveTitleGapButBluetoothNeedsMusicMetadata() {
        assertEquals(ContentPorts.MediaSongIdentity.SONG, identity(title = false, active = true))
        assertEquals(ContentPorts.MediaSongIdentity.UNKNOWN, identity(title = false, active = false))
        assertEquals(ContentPorts.MediaSongIdentity.UNKNOWN, identity(musicMetadata = false, active = true))
    }
    @Test fun bluetoothCommunicationRouteIsNotSong() {
        assertEquals(ContentPorts.MediaSongIdentity.NON_SONG, identity(communication = true))
    }
    @Test fun legacyTitleOnlySnapshotDoesNotInventSongIdentity() {
        assertEquals(ContentPorts.MediaSongIdentity.UNKNOWN,
            ContentPorts.MediaSnapshot(true, false, "蓝牙音乐", true, 1, "视频标题", "作者", true, true).songIdentity)
    }
}
