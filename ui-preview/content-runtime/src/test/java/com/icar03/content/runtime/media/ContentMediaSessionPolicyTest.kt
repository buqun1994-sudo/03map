package com.icar03.content.runtime.media

import android.media.AudioAttributes
import android.media.session.PlaybackState
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

/**
 * Directly adapted from the read-only 03lyrics policy tests:
 * `/Users/q/Documents/Projects/03lyrics/app/src/test/kotlin/com/ninepointnine/desktoplyrics/MediaSessionSelectionPolicyTest.kt`.
 * The fixtures remain public-session observations; no device or UI fixture is added.
 */
class ContentMediaSessionSelectionPolicyTest {
    @Test
    fun `accepts the built in local and usb sessions through standard media usage`() {
        val local = candidate(
            index = 1,
            packageName = "com.tencent.wecarflow",
            playbackState = PlaybackState.STATE_PAUSED,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )
        val usb = local.copy(index = 2, playbackState = PlaybackState.STATE_PLAYING)

        assertEquals(
            2,
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(local, usb),
                currentIndex = 1,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `accepts a generic media package without a music package name`() {
        val podcastPackage = candidate(
            index = 3,
            packageName = "com.ximalaya.ting.android.car",
            playbackState = PlaybackState.STATE_PLAYING,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )

        assertEquals(
            3,
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(podcastPackage),
                currentIndex = null,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `keeps the current paused source when all candidates are paused`() {
        val bluetooth = candidate(
            index = 0,
            packageName = BLUETOOTH_PACKAGE,
            playbackState = PlaybackState.STATE_PAUSED,
            title = true
        )
        val usb = candidate(
            index = 1,
            packageName = "com.tencent.wecarflow",
            playbackState = PlaybackState.STATE_PAUSED,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )

        assertEquals(
            1,
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(bluetooth, usb),
                currentIndex = 1,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `active playback wins over the current paused source`() {
        val bluetooth = candidate(
            index = 0,
            packageName = BLUETOOTH_PACKAGE,
            playbackState = PlaybackState.STATE_PAUSED,
            title = true
        )
        val aqt = candidate(
            index = 1,
            packageName = "com.tencent.wecarflow",
            playbackState = PlaybackState.STATE_PLAYING,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )

        assertEquals(
            1,
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(bluetooth, aqt),
                currentIndex = 0,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `selects the playing session when one vehicle package publishes parallel media sessions`() {
        val online = candidate(
            index = 0,
            packageName = "com.tencent.wecarflow",
            playbackState = PlaybackState.STATE_PLAYING,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )
        val helper = candidate(
            index = 1,
            packageName = "com.tencent.wecarflow",
            playbackState = null,
            audioUsage = AudioAttributes.USAGE_MEDIA
        )
        val local = candidate(
            index = 2,
            packageName = "com.tencent.wecarflow",
            playbackState = PlaybackState.STATE_PAUSED,
            audioUsage = AudioAttributes.USAGE_MEDIA
        )
        val usb = candidate(
            index = 3,
            packageName = "com.tencent.wecarflow",
            playbackState = PlaybackState.STATE_PAUSED,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )
        val bluetooth = candidate(
            index = 4,
            packageName = BLUETOOTH_PACKAGE,
            playbackState = PlaybackState.STATE_PAUSED,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )

        assertEquals(
            0,
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(online, helper, local, usb, bluetooth),
                currentIndex = 4,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `rejects non media audio sessions and the overlay itself`() {
        val voice = candidate(
            index = 0,
            packageName = "com.example.voice",
            playbackState = PlaybackState.STATE_PLAYING,
            audioUsage = AudioAttributes.USAGE_ASSISTANCE_NAVIGATION_GUIDANCE,
            title = true
        )
        val own = candidate(
            index = 1,
            packageName = OWN_PACKAGE,
            playbackState = PlaybackState.STATE_PLAYING,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )

        assertNull(
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(voice, own),
                currentIndex = null,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `metadata may arrive after an active session is selected`() {
        val activeWithoutMetadata = candidate(
            index = 0,
            packageName = "com.tencent.wecarflow",
            playbackState = PlaybackState.STATE_PLAYING,
            audioUsage = AudioAttributes.USAGE_MEDIA
        )

        assertEquals(
            0,
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(activeWithoutMetadata),
                currentIndex = null,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `legacy bluetooth media semantics do not require a package allowlist`() {
        val bluetooth = candidate(
            index = 0,
            packageName = BLUETOOTH_PACKAGE,
            playbackState = PlaybackState.STATE_PLAYING,
            playbackActions = PlaybackState.ACTION_PLAY_PAUSE,
            title = true
        )

        assertEquals(
            0,
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(bluetooth),
                currentIndex = null,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `bluetooth session without music metadata is not admitted`() {
        val bluetoothVideo = candidate(
            index = 0,
            packageName = BLUETOOTH_PACKAGE,
            playbackState = PlaybackState.STATE_PLAYING,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        ).copy(hasMusicMetadata = false)

        assertNull(
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(bluetoothVideo),
                currentIndex = null,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `unknown audio semantics without metadata are not admitted early`() {
        val unknown = candidate(
            index = 0,
            packageName = "com.example.player",
            playbackState = PlaybackState.STATE_PLAYING
        )

        assertNull(
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(unknown),
                currentIndex = null,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `stopped sessions are not selected as a new source`() {
        val stopped = candidate(
            index = 0,
            packageName = "com.tencent.wecarflow",
            playbackState = PlaybackState.STATE_STOPPED,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )

        assertNull(
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(stopped),
                currentIndex = null,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `speech sessions are not accepted even when they are active`() {
        val speech = candidate(
            index = 0,
            packageName = "com.example.voice",
            playbackState = PlaybackState.STATE_PLAYING,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            audioContentType = AudioAttributes.CONTENT_TYPE_SPEECH,
            title = true
        )

        assertNull(
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(speech),
                currentIndex = null,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `system session order wins when more than one source is playing`() {
        val first = candidate(
            index = 0,
            packageName = "com.tencent.wecarflow",
            playbackState = PlaybackState.STATE_PLAYING,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )
        val second = first.copy(index = 1, packageName = "com.example.player")

        assertEquals(
            0,
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(first, second),
                currentIndex = 1,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `playing session outranks an earlier buffering session`() {
        val buffering = candidate(
            index = 0,
            packageName = "com.tencent.wecarflow",
            playbackState = PlaybackState.STATE_BUFFERING,
            audioUsage = AudioAttributes.USAGE_MEDIA
        )
        val playing = buffering.copy(
            index = 1,
            packageName = "com.example.player",
            playbackState = PlaybackState.STATE_PLAYING
        )

        assertEquals(
            1,
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(buffering, playing),
                currentIndex = null,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `stopped current source does not resurrect an unrelated paused session`() {
        val stoppedCurrent = candidate(
            index = 0,
            packageName = "com.tencent.wecarflow",
            playbackState = PlaybackState.STATE_STOPPED,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )
        val staleBluetooth = candidate(
            index = 1,
            packageName = BLUETOOTH_PACKAGE,
            playbackState = PlaybackState.STATE_PAUSED,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )

        assertNull(
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(stoppedCurrent, staleBluetooth),
                currentIndex = 0,
                hasCurrentSelection = true,
                ownPackageName = OWN_PACKAGE
            )
        )
        assertNull(
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(staleBluetooth),
                currentIndex = null,
                hasCurrentSelection = true,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `new active source can take over after the previous source disappears`() {
        val staleBluetooth = candidate(
            index = 0,
            packageName = BLUETOOTH_PACKAGE,
            playbackState = PlaybackState.STATE_PAUSED,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )
        val activeOnline = candidate(
            index = 1,
            packageName = "com.tencent.wecarflow",
            playbackState = PlaybackState.STATE_PLAYING,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )

        assertEquals(
            1,
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(staleBluetooth, activeOnline),
                currentIndex = null,
                hasCurrentSelection = true,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    @Test
    fun `browser fallback with metadata is selected when the helper has no playback state`() {
        val helper = candidate(
            index = 0,
            packageName = "com.tencent.wecarflow",
            playbackState = null,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = false
        )
        val browserFallback = candidate(
            index = 1,
            packageName = BLUETOOTH_PACKAGE,
            playbackState = PlaybackState.STATE_PLAYING,
            audioUsage = AudioAttributes.USAGE_MEDIA,
            title = true
        )

        assertEquals(
            1,
            ContentMediaSessionSelectionPolicy.select(
                candidates = listOf(helper, browserFallback),
                currentIndex = null,
                ownPackageName = OWN_PACKAGE
            )
        )
    }

    private fun candidate(
        index: Int,
        packageName: String,
        playbackState: Int?,
        audioUsage: Int? = null,
        audioContentType: Int? = null,
        playbackActions: Long = PlaybackState.ACTION_PLAY_PAUSE,
        title: Boolean = false
    ) = ContentMediaSessionCandidate(
        index = index,
        packageName = packageName,
        playbackState = playbackState,
        audioUsage = audioUsage,
        audioContentType = audioContentType,
        playbackActions = playbackActions,
        hasTitle = title,
        transport = if (packageName == BLUETOOTH_PACKAGE) {
            ContentMediaSessionTransport.BLUETOOTH_AVRCP
        } else {
            ContentMediaSessionTransport.STANDARD
        }
    )

    companion object {
        private const val OWN_PACKAGE = "com.icar03.content.runtime"
        private const val BLUETOOTH_PACKAGE = "com.android.bluetooth"
    }
}

/**
 * Directly adapted from the read-only 03lyrics arbiter tests:
 * `/Users/q/Documents/Projects/03lyrics/app/src/test/kotlin/com/ninepointnine/desktoplyrics/MediaSessionArbiterTest.kt`.
 * These tests intentionally exercise observed state/position evidence rather
 * than an independent playback clock.
 */
class ContentMediaSessionArbiterTest {
    @Test
    fun `preferred source must publish a resumable state before cold selection`() {
        listOf(PlaybackState.STATE_NONE, PlaybackState.STATE_STOPPED, PlaybackState.STATE_ERROR, null).forEach { state ->
            val arbiter = ContentMediaSessionArbiter()
            arbiter.restorePreferredSource("preferred-source")
            val initializing = candidate("preferred", PlaybackState.STATE_NONE, 0L, 100L)
                .copy(sourceId = "preferred-source", playbackState = state)
            listOf(100L, 2_000L, 5_000L, 10_000L).forEach { now ->
                val waiting = arbiter.evaluate(listOf(initializing), now, OWN_PACKAGE)
                assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, waiting.action)
                assertEquals(null, waiting.sessionId)
            }
            val playing = initializing.copy(playbackState = PlaybackState.STATE_PLAYING)
            val ready = arbiter.evaluate(listOf(playing), 10_500L, OWN_PACKAGE)
            assertEquals(ContentMediaSessionArbitrationAction.SELECT, ready.action)
            assertEquals("preferred", ready.sessionId)
        }
    }

    @Test
    fun `cleared stopped source is not selected again through its saved preference`() {
        val arbiter = runningArbiter()
        val playing = candidate("source", PlaybackState.STATE_PLAYING, 1_000L, 100L)
        arbiter.evaluate(listOf(playing), 100L, OWN_PACKAGE)
        val stopped = playing.copy(playbackState = PlaybackState.STATE_STOPPED)
        assertEquals(ContentMediaSessionArbitrationAction.CLEAR, arbiter.evaluate(listOf(stopped), 200L, OWN_PACKAGE).action)
        val repeated = arbiter.evaluate(listOf(stopped), 300L, OWN_PACKAGE)
        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, repeated.action)
        assertEquals(null, repeated.sessionId)
    }

    @Test
    fun `incumbent playing source is not replaced by a stale challenger`() {
        val arbiter = runningArbiter()
        val aqtPlaying = candidate("aqt", PlaybackState.STATE_PLAYING, 1_000L, 100L)
        val bluetoothPaused = candidate("bluetooth", PlaybackState.STATE_PAUSED, 64_000L, 10L)

        assertEquals(
            ContentMediaSessionArbitrationAction.SELECT,
            arbiter.evaluate(listOf(aqtPlaying, bluetoothPaused), 0L, OWN_PACKAGE).action
        )

        val staleBluetoothPlaying = bluetoothPaused.copy(playbackState = PlaybackState.STATE_PLAYING)
        val first = arbiter.evaluate(
            listOf(aqtPlaying.copy(reportedPositionMs = 1_500L, positionUpdateTimeMs = 200L), staleBluetoothPlaying),
            100L,
            OWN_PACKAGE
        )
        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, first.action)
        assertEquals("aqt", first.sessionId)

        val second = arbiter.evaluate(
            listOf(aqtPlaying.copy(reportedPositionMs = 1_500L, positionUpdateTimeMs = 200L), staleBluetoothPlaying),
            400L,
            OWN_PACKAGE
        )
        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, second.action)
        assertEquals("aqt", second.sessionId)
    }

    @Test
    fun `bluetooth state refresh without position progress does not replace paused music`() {
        val arbiter = runningArbiter()
        val aqtPaused = candidate("aqt", PlaybackState.STATE_PAUSED, 1_000L, 100L)
        val bluetoothPaused = candidate("bluetooth", PlaybackState.STATE_PAUSED, 64_000L, 100L)
        arbiter.evaluate(listOf(aqtPaused), 100L, OWN_PACKAGE)

        val bluetoothResumedWithoutProgress = bluetoothPaused.copy(
            playbackState = PlaybackState.STATE_PLAYING,
            positionUpdateTimeMs = 200L
        )
        val decision = arbiter.evaluate(
            listOf(aqtPaused, bluetoothResumedWithoutProgress),
            200L,
            OWN_PACKAGE
        )

        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, decision.action)
        assertEquals("aqt", decision.sessionId)
    }

    @Test
    fun `bluetooth repeated state and timestamp refreshes remain inert without forward progress`() {
        val arbiter = runningArbiter()
        val aqtPaused = candidate("aqt", PlaybackState.STATE_PAUSED, 1_000L, 100L)
        val bluetoothPaused = candidate("bluetooth", PlaybackState.STATE_PAUSED, 64_000L, 100L)
        arbiter.evaluate(listOf(aqtPaused, bluetoothPaused), 100L, OWN_PACKAGE)

        var bluetooth = bluetoothPaused.copy(playbackState = PlaybackState.STATE_PLAYING)
        listOf(200L, 600L, 1_100L, 1_600L).forEach { now ->
            bluetooth = bluetooth.copy(positionUpdateTimeMs = now)
            val decision = arbiter.evaluate(listOf(aqtPaused, bluetooth), now, OWN_PACKAGE)
            assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, decision.action)
            assertEquals("aqt", decision.sessionId)
        }
    }

    @Test
    fun `bluetooth forward position progress can replace paused music`() {
        val arbiter = runningArbiter()
        val aqtPaused = candidate("aqt", PlaybackState.STATE_PAUSED, 1_000L, 100L)
        val bluetoothPaused = candidate("bluetooth", PlaybackState.STATE_PAUSED, 64_000L, 100L)
        arbiter.evaluate(listOf(aqtPaused, bluetoothPaused), 100L, OWN_PACKAGE)

        val progressingBluetooth = bluetoothPaused.copy(
            playbackState = PlaybackState.STATE_PLAYING,
            reportedPositionMs = 64_500L,
            positionUpdateTimeMs = 200L
        )
        val armed = arbiter.evaluate(
            listOf(aqtPaused, progressingBluetooth),
            200L,
            OWN_PACKAGE
        )
        assertEquals("handoff_armed", armed.reason)

        val confirmed = arbiter.evaluate(
            listOf(aqtPaused, progressingBluetooth),
            500L,
            OWN_PACKAGE
        )
        assertEquals(ContentMediaSessionArbitrationAction.SELECT, confirmed.action)
        assertEquals("bluetooth", confirmed.sessionId)
    }

    @Test
    fun `avrcp forward position is source evidence when controller position is stale`() {
        val arbiter = runningArbiter()
        val aqtPaused = candidate("aqt", PlaybackState.STATE_PAUSED, 1_000L, 100L)
        val bluetoothPaused = candidate("bluetooth", PlaybackState.STATE_PAUSED, 64_000L, 0L)
        arbiter.evaluate(listOf(aqtPaused, bluetoothPaused), 100L, OWN_PACKAGE)

        arbiter.observeBluetoothActivity(
            ContentMediaSessionBluetoothActivity(
                positionMs = 64_500L,
                playbackState = PlaybackState.STATE_PLAYING,
                capturedAtMs = 200L
            )
        )
        val staleController = bluetoothPaused
        val armed = arbiter.evaluate(listOf(aqtPaused, staleController), 200L, OWN_PACKAGE)
        assertEquals("handoff_armed", armed.reason)

        val confirmed = arbiter.evaluate(listOf(aqtPaused, staleController), 500L, OWN_PACKAGE)
        assertEquals(ContentMediaSessionArbitrationAction.SELECT, confirmed.action)
        assertEquals("bluetooth", confirmed.sessionId)
    }

    @Test
    fun `pending bluetooth metadata cannot become a cold start source without avrcp activity`() {
        val arbiter = runningArbiter()
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PLAYING, 0L, 0L)
            .copy(hasMusicMetadata = false)

        val decision = arbiter.evaluate(listOf(bluetooth), 0L, OWN_PACKAGE)

        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, decision.action)
        assertEquals(null, decision.sessionId)
    }

    @Test
    fun `pending bluetooth metadata remains ineligible even after avrcp activity`() {
        val arbiter = runningArbiter()
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PLAYING, 0L, 0L)
            .copy(hasMusicMetadata = false)
        arbiter.evaluate(listOf(bluetooth), 0L, OWN_PACKAGE)
        arbiter.observeBluetoothActivity(
            ContentMediaSessionBluetoothActivity(
                positionMs = 500L,
                playbackState = PlaybackState.STATE_PLAYING,
                capturedAtMs = 100L
            )
        )

        val decision = arbiter.evaluate(listOf(bluetooth), 100L, OWN_PACKAGE)

        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, decision.action)
        assertEquals(null, decision.sessionId)
    }

    @Test
    fun `selected bluetooth source survives a short metadata gap and then clears`() {
        val arbiter = runningArbiter()
        val complete = candidate("bluetooth", PlaybackState.STATE_PLAYING, 64_000L, 100L)
        assertEquals("bluetooth", arbiter.evaluate(listOf(complete), 100L, OWN_PACKAGE).sessionId)

        val incomplete = complete.copy(hasMusicMetadata = false)
        val pending = arbiter.evaluate(listOf(incomplete), 200L, OWN_PACKAGE)
        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, pending.action)
        assertEquals("bluetooth", pending.sessionId)
        assertEquals("bluetooth_music_metadata_pending", pending.reason)

        val expired = arbiter.evaluate(listOf(incomplete), 1_801L, OWN_PACKAGE)
        assertEquals(ContentMediaSessionArbitrationAction.CLEAR, expired.action)
        assertEquals("bluetooth_music_metadata_missing", expired.reason)
    }

    @Test
    fun `bluetooth position progress without music metadata cannot replace paused music`() {
        val arbiter = runningArbiter()
        val aqtPaused = candidate("aqt", PlaybackState.STATE_PAUSED, 1_000L, 100L)
        val bluetoothPaused = candidate("bluetooth", PlaybackState.STATE_PAUSED, 64_000L, 100L)
            .copy(hasMusicMetadata = false)
        arbiter.evaluate(listOf(aqtPaused, bluetoothPaused), 100L, OWN_PACKAGE)

        val decision = arbiter.evaluate(
            listOf(aqtPaused, bluetoothPaused.copy(
                playbackState = PlaybackState.STATE_PLAYING,
                reportedPositionMs = 64_500L,
                positionUpdateTimeMs = 200L
            )),
            200L,
            OWN_PACKAGE
        )

        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, decision.action)
        assertEquals("aqt", decision.sessionId)
    }

    @Test
    fun `bluetooth communication route is not eligible as a music source`() {
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PLAYING, 64_500L, 200L)
            .copy(bluetoothCommunicationActive = true)
        val decision = ContentMediaSessionSelectionPolicy.select(
            candidates = listOf(bluetooth),
            currentIndex = null,
            ownPackageName = OWN_PACKAGE
        )

        assertEquals(null, decision)
    }

    @Test
    fun `selected bluetooth source is cleared when communication route starts`() {
        val arbiter = runningArbiter()
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PLAYING, 64_000L, 100L)
        assertEquals("bluetooth", arbiter.evaluate(listOf(bluetooth), 100L, OWN_PACKAGE).sessionId)

        val decision = arbiter.evaluate(
            listOf(bluetooth.copy(bluetoothCommunicationActive = true)),
            200L,
            OWN_PACKAGE
        )

        assertEquals(ContentMediaSessionArbitrationAction.CLEAR, decision.action)
        assertEquals("bluetooth_communication_route", decision.reason)
        assertEquals(null, decision.sessionId)
    }

    @Test
    fun `stale bluetooth state after communication route waits for fresh progress`() {
        val arbiter = runningArbiter()
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PLAYING, 64_000L, 100L)
        assertEquals("bluetooth", arbiter.evaluate(listOf(bluetooth), 100L, OWN_PACKAGE).sessionId)
        assertEquals(
            ContentMediaSessionArbitrationAction.CLEAR,
            arbiter.evaluate(
                listOf(bluetooth.copy(bluetoothCommunicationActive = true)),
                200L,
                OWN_PACKAGE
            ).action
        )

        val staleAfterCall = arbiter.evaluate(
            listOf(bluetooth.copy(positionUpdateTimeMs = 300L)),
            300L,
            OWN_PACKAGE
        )
        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, staleAfterCall.action)
        assertEquals(null, staleAfterCall.sessionId)

        val resumed = arbiter.evaluate(
            listOf(bluetooth.copy(reportedPositionMs = 64_500L, positionUpdateTimeMs = 400L)),
            400L,
            OWN_PACKAGE
        )
        assertEquals(ContentMediaSessionArbitrationAction.SELECT, resumed.action)
        assertEquals("bluetooth", resumed.sessionId)
    }

    @Test
    fun `stale playing incumbent yields to a challenger with confirmed progress`() {
        val arbiter = runningArbiter()
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PLAYING, 64_000L, 100L)
        val first = arbiter.evaluate(listOf(bluetooth), 100L, OWN_PACKAGE)
        assertEquals("bluetooth", first.sessionId)

        val aqt = candidate("aqt", PlaybackState.STATE_PLAYING, 1_000L, 200L)
        val armed = arbiter.evaluate(listOf(bluetooth, aqt), 200L, OWN_PACKAGE)
        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, armed.action)
        assertEquals("bluetooth", armed.sessionId)

        val confirmed = arbiter.evaluate(
            listOf(
                bluetooth,
                aqt.copy(reportedPositionMs = 1_400L, positionUpdateTimeMs = 500L)
            ),
            500L,
            OWN_PACKAGE
        )
        assertEquals(ContentMediaSessionArbitrationAction.SELECT, confirmed.action)
        assertEquals("aqt", confirmed.sessionId)
    }

    @Test
    fun `paused supplemental browser with advancing position can replace a stale active session`() {
        val arbiter = runningArbiter()
        val incumbent = candidate("aqt", PlaybackState.STATE_PLAYING, 1_000L, 100L)
        val cloudMusic = candidate(
            "cloud-music",
            PlaybackState.STATE_PAUSED,
            8_000L,
            90L,
            activeInSystemList = false
        ).copy(sourceId = "com.tencent.wecarflow/com.mychery.cloudmusic.service.CloudMusicService")

        assertEquals(
            ContentMediaSessionArbitrationAction.SELECT,
            arbiter.evaluate(listOf(incumbent, cloudMusic), 100L, OWN_PACKAGE).action
        )

        val armed = arbiter.evaluate(
            listOf(
                incumbent.copy(positionUpdateTimeMs = 200L),
                cloudMusic.copy(reportedPositionMs = 8_300L, positionUpdateTimeMs = 180L)
            ),
            200L,
            OWN_PACKAGE
        )
        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, armed.action)
        assertEquals("aqt", armed.sessionId)

        val confirmed = arbiter.evaluate(
            listOf(
                incumbent.copy(positionUpdateTimeMs = 300L),
                cloudMusic.copy(reportedPositionMs = 8_700L, positionUpdateTimeMs = 280L)
            ),
            500L,
            OWN_PACKAGE
        )
        assertEquals(ContentMediaSessionArbitrationAction.SELECT, confirmed.action)
        assertEquals("cloud-music", confirmed.sessionId)
    }

    @Test
    fun `paused incumbent remains selected while it leaves the active list`() {
        val arbiter = runningArbiter()
        val playing = candidate("aqt", PlaybackState.STATE_PLAYING, 1_000L, 100L)
        arbiter.evaluate(listOf(playing), 0L, OWN_PACKAGE)

        val pausedAndUnlisted = playing.copy(
            playbackState = PlaybackState.STATE_PAUSED,
            activeInSystemList = false
        )
        val decision = arbiter.evaluate(listOf(pausedAndUnlisted), 100L, OWN_PACKAGE)

        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, decision.action)
        assertEquals("aqt", decision.sessionId)
    }

    @Test
    fun `handoff commits only after challenger progress becomes fresh`() {
        val arbiter = runningArbiter()
        val aqtPaused = candidate(
            "aqt",
            PlaybackState.STATE_PAUSED,
            3_000L,
            300L,
            activeInSystemList = false
        )
        val bluetoothPaused = candidate("bluetooth", PlaybackState.STATE_PAUSED, 1_000L, 100L)
        arbiter.evaluate(listOf(aqtPaused), 0L, OWN_PACKAGE)
        arbiter.evaluate(listOf(aqtPaused), 1_500L, OWN_PACKAGE)

        arbiter.evaluate(listOf(aqtPaused, bluetoothPaused), 1_600L, OWN_PACKAGE)
        val bluetoothPlaying = bluetoothPaused.copy(playbackState = PlaybackState.STATE_PLAYING)
        val waiting = arbiter.evaluate(listOf(aqtPaused, bluetoothPlaying), 1_700L, OWN_PACKAGE)
        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, waiting.action)
        assertEquals("aqt", waiting.sessionId)

        val armed = arbiter.evaluate(
            listOf(aqtPaused, bluetoothPlaying.copy(reportedPositionMs = 1_400L, positionUpdateTimeMs = 1_800L)),
            1_900L,
            OWN_PACKAGE
        )
        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, armed.action)
        assertEquals("aqt", armed.sessionId)

        val confirmed = arbiter.evaluate(
            listOf(aqtPaused, bluetoothPlaying.copy(reportedPositionMs = 1_400L, positionUpdateTimeMs = 1_800L)),
            2_200L,
            OWN_PACKAGE
        )
        assertEquals(ContentMediaSessionArbitrationAction.SELECT, confirmed.action)
        assertEquals("bluetooth", confirmed.sessionId)
    }

    @Test
    fun `cold start does not choose among multiple paused sessions`() {
        val arbiter = ContentMediaSessionArbiter()
        val aqt = candidate("aqt", PlaybackState.STATE_PAUSED, 2_000L, 0L)
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PAUSED, 4_000L, 0L)

        assertEquals(
            ContentMediaSessionArbitrationAction.KEEP_CURRENT,
            arbiter.evaluate(listOf(aqt, bluetooth), 0L, OWN_PACKAGE).action
        )
        val settled = arbiter.evaluate(listOf(aqt, bluetooth), 1_500L, OWN_PACKAGE)
        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, settled.action)
        assertEquals(null, settled.sessionId)
    }

    @Test
    fun `cold start selects the most recently updated paused source`() {
        val arbiter = ContentMediaSessionArbiter()
        val aqt = candidate("aqt", PlaybackState.STATE_PAUSED, 2_000L, 300L)
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PAUSED, 4_000L, 100L)
        arbiter.evaluate(listOf(aqt, bluetooth), 400L, OWN_PACKAGE)

        val settled = arbiter.evaluate(
            listOf(aqt, bluetooth),
            400L + ContentMediaSessionArbiter.COLD_START_SETTLE_MS,
            OWN_PACKAGE
        )

        assertEquals(ContentMediaSessionArbitrationAction.SELECT, settled.action)
        assertEquals("aqt", settled.sessionId)
    }

    @Test
    fun `cold start lets real playback outrank a preferred paused source`() {
        val arbiter = ContentMediaSessionArbiter()
        arbiter.restorePreferredSource("aqt-source")
        val aqt = candidate("aqt", PlaybackState.STATE_PAUSED, 2_000L, 100L)
            .copy(sourceId = "aqt-source", activeInSystemList = false)
        val bluetoothPaused = candidate("bluetooth", PlaybackState.STATE_PAUSED, 64_000L, 10L)
            .copy(sourceId = "bluetooth-source")

        arbiter.evaluate(listOf(bluetoothPaused, aqt), 100L, OWN_PACKAGE)
        val bluetoothPlaying = bluetoothPaused.copy(playbackState = PlaybackState.STATE_PLAYING)
        arbiter.evaluate(listOf(bluetoothPlaying, aqt), 200L, OWN_PACKAGE)
        val progressing = bluetoothPlaying.copy(reportedPositionMs = 64_500L, positionUpdateTimeMs = 300L)
        arbiter.evaluate(listOf(progressing, aqt), 300L, OWN_PACKAGE)
        val decision = arbiter.evaluate(listOf(progressing, aqt), 1_600L, OWN_PACKAGE)

        assertEquals(ContentMediaSessionArbitrationAction.SELECT, decision.action)
        assertEquals("bluetooth", decision.sessionId)
    }

    @Test
    fun `preferred paused source is restored when other playback has only stale state`() {
        val arbiter = ContentMediaSessionArbiter()
        arbiter.restorePreferredSource("aqt-source")
        val aqt = candidate("aqt", PlaybackState.STATE_PAUSED, 2_000L, 100L)
            .copy(sourceId = "aqt-source", activeInSystemList = false)
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PLAYING, 64_000L, 10L)
        arbiter.evaluate(listOf(bluetooth, aqt), 10_000L, OWN_PACKAGE)

        val decision = arbiter.evaluate(listOf(bluetooth, aqt), 11_500L, OWN_PACKAGE)

        assertEquals("aqt", decision.sessionId)
    }

    @Test
    fun `playing preference cannot override fresher unlisted playback`() {
        val arbiter = ContentMediaSessionArbiter()
        arbiter.restorePreferredSource("bluetooth-source")
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PLAYING, 64_000L, 100L)
            .copy(sourceId = "bluetooth-source")
        val cloud = candidate("cloud", PlaybackState.STATE_PLAYING, 8_000L, 10_000L, false)

        assertEquals(null, arbiter.evaluate(listOf(bluetooth, cloud), 10_000L, OWN_PACKAGE).sessionId)
        val selected = arbiter.evaluate(listOf(bluetooth, cloud), 11_500L, OWN_PACKAGE)
        assertEquals("cloud", selected.sessionId)
    }

    @Test
    fun `observed paused progress wins cold selection and survives a repeated sample`() {
        val arbiter = ContentMediaSessionArbiter()
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PLAYING, 64_000L, 10_000L)
        val cloud = candidate("cloud", PlaybackState.STATE_PAUSED, 8_000L, 0L, false)
        arbiter.evaluate(listOf(bluetooth, cloud), 10_000L, OWN_PACKAGE)
        val advanced = cloud.copy(reportedPositionMs = 8_500L)
        arbiter.evaluate(listOf(bluetooth, advanced), 10_500L, OWN_PACKAGE)

        val selected = arbiter.evaluate(
            listOf(bluetooth.copy(positionUpdateTimeMs = 11_500L), advanced), 11_500L, OWN_PACKAGE
        )

        assertEquals("cloud", selected.sessionId)
    }

    @Test
    fun `unlisted playback timestamp wins a same evidence tie before system active flag`() {
        val arbiter = runningArbiter()
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PLAYING, 64_000L, 10_000L)
        val cloud = candidate("cloud", PlaybackState.STATE_PLAYING, 8_000L, 11_000L, false)

        assertEquals("cloud", arbiter.evaluate(listOf(bluetooth, cloud), 11_000L, OWN_PACKAGE).sessionId)
    }

    @Test
    fun `unknown and future timestamps cannot defeat observed progress`() {
        listOf(0L, -1L, Long.MAX_VALUE).forEach { timestamp ->
            val arbiter = ContentMediaSessionArbiter()
            val stale = candidate("bluetooth", PlaybackState.STATE_PLAYING, 64_000L, timestamp)
            val cloud = candidate("cloud", PlaybackState.STATE_PAUSED, 8_000L, 0L, false)
            arbiter.evaluate(listOf(stale, cloud), 10_000L, OWN_PACKAGE)
            val progressed = cloud.copy(reportedPositionMs = 9_500L)

            assertEquals("cloud", arbiter.evaluate(listOf(stale, progressed), 11_500L, OWN_PACKAGE).sessionId)
        }
    }

    @Test
    fun `paused browser progress is confirmed even without another position callback within 250ms`() {
        val arbiter = runningArbiter()
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PAUSED, 64_000L, 100L)
        val cloud = candidate("cloud", PlaybackState.STATE_PAUSED, 8_000L, 0L, false)
        assertEquals("bluetooth", arbiter.evaluate(listOf(bluetooth, cloud), 10_000L, OWN_PACKAGE).sessionId)
        val advanced = cloud.copy(reportedPositionMs = 8_500L)
        val armed = arbiter.evaluate(listOf(bluetooth, advanced), 10_500L, OWN_PACKAGE)
        assertEquals("handoff_armed", armed.reason)

        val selected = arbiter.evaluate(listOf(bluetooth, advanced), 10_750L, OWN_PACKAGE)
        assertEquals("cloud", selected.sessionId)
    }

    @Test
    fun `timestamp only incumbent updates cannot block progressing playback`() {
        val arbiter = runningArbiter()
        val bluetoothPaused = candidate("bluetooth", PlaybackState.STATE_PAUSED, 64_000L, 10_000L)
        val cloud = candidate("cloud", PlaybackState.STATE_PLAYING, 8_000L, 9_000L, false)
        arbiter.evaluate(listOf(bluetoothPaused), 10_000L, OWN_PACKAGE)
        val bluetooth = bluetoothPaused.copy(playbackState = PlaybackState.STATE_PLAYING)
        val second = arbiter.evaluate(listOf(bluetooth, cloud), 10_100L, OWN_PACKAGE)
        assertEquals("handoff_armed", second.reason)
        val advanced = cloud.copy(reportedPositionMs = 8_500L, positionUpdateTimeMs = 10_500L)
        val refreshed = bluetooth.copy(positionUpdateTimeMs = 10_600L)
        val third = arbiter.evaluate(listOf(refreshed, advanced), 10_600L, OWN_PACKAGE)
        assertEquals("handoff_confirmed", third.reason)

        val selected = arbiter.evaluate(
            listOf(refreshed.copy(positionUpdateTimeMs = 10_850L), advanced), 10_850L, OWN_PACKAGE
        )
        assertEquals("cloud", selected.sessionId)
    }

    @Test
    fun `timestamp only challenger cannot take playback back between position callbacks`() {
        val arbiter = runningArbiter()
        val cloud = candidate("cloud", PlaybackState.STATE_PLAYING, 8_000L, 10_000L, false)
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PLAYING, 64_000L, 100L)
        arbiter.evaluate(listOf(cloud, bluetooth), 10_000L, OWN_PACKAGE)
        listOf(10_100L, 10_400L, 16_000L, 16_300L).forEach { now ->
            val decision = arbiter.evaluate(listOf(cloud, bluetooth.copy(positionUpdateTimeMs = now)), now, OWN_PACKAGE)
            assertEquals("cloud", decision.sessionId)
        }
    }

    @Test
    fun `stale playing challenger cannot starve progressing paused browser`() {
        val arbiter = runningArbiter()
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PAUSED, 64_000L, 100L)
        arbiter.evaluate(listOf(bluetooth), 10_000L, OWN_PACKAGE)
        val stale = candidate("aqt", PlaybackState.STATE_PLAYING, 3_000L, 0L)
        val cloud = candidate("cloud", PlaybackState.STATE_PAUSED, 8_000L, 0L, false)
        arbiter.evaluate(listOf(bluetooth, stale, cloud), 10_100L, OWN_PACKAGE)
        val advanced = cloud.copy(reportedPositionMs = 8_500L)
        arbiter.evaluate(listOf(bluetooth, stale, advanced), 10_600L, OWN_PACKAGE)

        assertEquals("cloud", arbiter.evaluate(listOf(bluetooth, stale, advanced), 10_850L, OWN_PACKAGE).sessionId)
    }

    @Test
    fun `confirmed challenger can replace an incumbent with unknown state`() {
        val arbiter = runningArbiter()
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PLAYING, 64_000L, 100L)
        arbiter.evaluate(listOf(bluetooth), 10_000L, OWN_PACKAGE)
        val unknown = bluetooth.copy(playbackState = null)
        val cloud = candidate("cloud", PlaybackState.STATE_PLAYING, 8_000L, 10_100L, false)
        arbiter.evaluate(listOf(unknown, cloud), 10_100L, OWN_PACKAGE)

        assertEquals("cloud", arbiter.evaluate(listOf(unknown, cloud), 10_350L, OWN_PACKAGE).sessionId)
    }

    @Test
    fun `stopped erroneous and truly paused challengers cannot retain motion evidence`() {
        listOf(PlaybackState.STATE_STOPPED, PlaybackState.STATE_NONE, PlaybackState.STATE_ERROR, PlaybackState.STATE_PAUSED).forEach { state ->
            val arbiter = runningArbiter()
            val bluetooth = candidate("bluetooth", PlaybackState.STATE_PAUSED, 64_000L, 100L)
            val cloud = candidate("cloud", PlaybackState.STATE_PLAYING, 8_000L, 0L, false)
            arbiter.evaluate(listOf(bluetooth), 10_000L, OWN_PACKAGE)
            arbiter.evaluate(listOf(bluetooth, cloud), 10_100L, OWN_PACKAGE)
            val advanced = cloud.copy(reportedPositionMs = 8_500L)
            arbiter.evaluate(listOf(bluetooth, advanced), 10_600L, OWN_PACKAGE)

            val selected = arbiter.evaluate(
                listOf(bluetooth, advanced.copy(playbackState = state, reportedPositionMs = 8_600L)), 10_850L, OWN_PACKAGE
            )
            assertEquals("bluetooth", selected.sessionId)
        }
    }

    @Test
    fun `cold start chooses real playing source over active paused incumbent`() {
        val arbiter = runningArbiter()
        val bluetooth = candidate(
            "bluetooth",
            PlaybackState.STATE_PAUSED,
            64_000L,
            2_000L,
            activeInSystemList = true
        )
        val cloudMusic = candidate(
            "cloud-music",
            PlaybackState.STATE_PLAYING,
            8_000L,
            2_400L,
            activeInSystemList = false
        )

        val decision = arbiter.evaluate(listOf(bluetooth, cloudMusic), 2_500L, OWN_PACKAGE)

        assertEquals(ContentMediaSessionArbitrationAction.SELECT, decision.action)
        assertEquals("cloud-music", decision.sessionId)
    }

    @Test
    fun `cold start without history waits then selects the most recently updated active source`() {
        val arbiter = ContentMediaSessionArbiter()
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PLAYING, 64_000L, 1_000L)
        val aqt = candidate("aqt", PlaybackState.STATE_PLAYING, 2_000L, 3_000L)

        val waiting = arbiter.evaluate(listOf(bluetooth, aqt), 3_100L, OWN_PACKAGE)
        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, waiting.action)
        assertEquals(ContentMediaSessionArbiter.COLD_START_SETTLE_MS, waiting.recheckAfterMs)

        val selected = arbiter.evaluate(
            listOf(bluetooth, aqt),
            3_100L + ContentMediaSessionArbiter.COLD_START_SETTLE_MS,
            OWN_PACKAGE
        )
        assertEquals(ContentMediaSessionArbitrationAction.SELECT, selected.action)
        assertEquals("aqt", selected.sessionId)
    }

    @Test
    fun `cold start waits for preferred browser source before choosing another player`() {
        val arbiter = ContentMediaSessionArbiter()
        arbiter.restorePreferredSource("aqt-source")
        val bluetooth = candidate("bluetooth", PlaybackState.STATE_PLAYING, 64_000L, 10L)

        val waiting = arbiter.evaluate(listOf(bluetooth), 0L, OWN_PACKAGE)
        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, waiting.action)
        assertEquals(null, waiting.sessionId)

        val fallback = arbiter.evaluate(
            listOf(bluetooth.copy(positionUpdateTimeMs = 4_000L)),
            ContentMediaSessionArbiter.PREFERRED_SOURCE_SETTLE_MS,
            OWN_PACKAGE
        )
        assertEquals(ContentMediaSessionArbitrationAction.SELECT, fallback.action)
        assertEquals("bluetooth", fallback.sessionId)
    }

    @Test
    fun `destroyed incumbent can be forgotten and replaced by fresh playback`() {
        val arbiter = runningArbiter()
        val aqt = candidate("aqt", PlaybackState.STATE_PLAYING, 1_000L, 100L)
        val bluetoothPaused = candidate("bluetooth", PlaybackState.STATE_PAUSED, 500L, 50L)
        arbiter.evaluate(listOf(aqt), 100L, OWN_PACKAGE)
        arbiter.forgetSession("aqt")

        arbiter.evaluate(listOf(bluetoothPaused), 150L, OWN_PACKAGE)
        val decision = arbiter.evaluate(
            listOf(bluetoothPaused.copy(
                playbackState = PlaybackState.STATE_PLAYING,
                reportedPositionMs = 600L,
                positionUpdateTimeMs = 200L
            )),
            200L,
            OWN_PACKAGE
        )
        assertEquals(ContentMediaSessionArbitrationAction.SELECT, decision.action)
        assertEquals("bluetooth", decision.sessionId)
    }

    @Test
    fun `equally progressing sources keep the incumbent regardless of callback ordering`() {
        val arbiter = runningArbiter()
        var current = candidate("aqt", PlaybackState.STATE_PLAYING, 1_000L, 10_000L)
        var other = candidate("cloud", PlaybackState.STATE_PAUSED, 8_000L, 0L, false)
        arbiter.evaluate(listOf(current, other), 10_000L, OWN_PACKAGE)
        current = current.copy(reportedPositionMs = 1_500L, positionUpdateTimeMs = 10_500L)
        arbiter.evaluate(listOf(current, other), 10_500L, OWN_PACKAGE)
        other = other.copy(reportedPositionMs = 8_500L)
        arbiter.evaluate(listOf(other, current), 10_550L, OWN_PACKAGE)

        assertEquals("aqt", arbiter.evaluate(listOf(other, current), 10_850L, OWN_PACKAGE).sessionId)
    }

    @Test
    fun `restored pause keeps discovery open and later motion closes it until stale`() {
        val arbiter = runningArbiter()
        var source = candidate("bluetooth", PlaybackState.STATE_PAUSED, 64_000L, 0L)
        arbiter.evaluate(listOf(source), 100L, OWN_PACKAGE)
        assertEquals(false, arbiter.hasCurrentPlaybackEvidence(100L))
        source = source.copy(reportedPositionMs = 65_000L)
        arbiter.evaluate(listOf(source), 1_100L, OWN_PACKAGE)
        assertEquals(true, arbiter.hasCurrentPlaybackEvidence(6_100L))
        assertEquals(false, arbiter.hasCurrentPlaybackEvidence(6_101L))
    }

    @Test
    fun `ended source never resurrects an unrelated paused source on later refresh`() {
        val arbiter = runningArbiter()
        val current = candidate("aqt", PlaybackState.STATE_PLAYING, 1_000L, 100L)
        val paused = candidate("bluetooth", PlaybackState.STATE_PAUSED, 64_000L, 50L)
        arbiter.evaluate(listOf(current, paused), 100L, OWN_PACKAGE)
        val stopped = current.copy(playbackState = PlaybackState.STATE_STOPPED)
        assertEquals(ContentMediaSessionArbitrationAction.CLEAR, arbiter.evaluate(listOf(stopped, paused), 200L, OWN_PACKAGE).action)

        listOf(300L, 5_000L, 15_000L).forEach { now ->
            assertEquals(null, arbiter.evaluate(listOf(stopped, paused), now, OWN_PACKAGE).sessionId)
        }
    }

    @Test
    fun `stopped incumbent is cleared instead of being treated as absent`() {
        val arbiter = runningArbiter()
        val aqt = candidate("aqt", PlaybackState.STATE_PLAYING, 1_000L, 100L)
        arbiter.evaluate(listOf(aqt), 0L, OWN_PACKAGE)

        val stopped = arbiter.evaluate(
            listOf(aqt.copy(playbackState = PlaybackState.STATE_STOPPED)),
            100L,
            OWN_PACKAGE
        )

        assertEquals(ContentMediaSessionArbitrationAction.CLEAR, stopped.action)
        assertEquals(null, stopped.sessionId)
    }

    @Test
    fun `unknown incumbent state is retained until a concrete state arrives`() {
        val arbiter = runningArbiter()
        val aqt = candidate("aqt", PlaybackState.STATE_PLAYING, 1_000L, 100L)
        arbiter.evaluate(listOf(aqt), 0L, OWN_PACKAGE)

        val decision = arbiter.evaluate(
            listOf(aqt.copy(playbackState = null)),
            100L,
            OWN_PACKAGE
        )

        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, decision.action)
        assertEquals("aqt", decision.sessionId)
    }

    @Test
    fun `arbiter reuses media admission and rejects speech challengers`() {
        val arbiter = runningArbiter()
        val aqtPaused = candidate("aqt", PlaybackState.STATE_PAUSED, 1_000L, 100L)
        arbiter.evaluate(listOf(aqtPaused), 0L, OWN_PACKAGE)
        val speech = candidate("speech", PlaybackState.STATE_PLAYING, 500L, 200L).copy(
            packageName = "com.example.voice",
            audioContentType = AudioAttributes.CONTENT_TYPE_SPEECH
        )

        val decision = arbiter.evaluate(listOf(aqtPaused, speech), 100L, OWN_PACKAGE)

        assertEquals(ContentMediaSessionArbitrationAction.KEEP_CURRENT, decision.action)
        assertEquals("aqt", decision.sessionId)
    }

    private fun candidate(
        sessionId: String,
        playbackState: Int,
        positionMs: Long,
        positionUpdateTimeMs: Long,
        activeInSystemList: Boolean = true
    ) = ContentMediaSessionCandidate(
        index = if (sessionId == "aqt") 0 else 1,
        sessionId = sessionId,
        packageName = if (sessionId == "bluetooth") BLUETOOTH_PACKAGE else "com.tencent.wecarflow",
        playbackState = playbackState,
        audioUsage = AudioAttributes.USAGE_MEDIA,
        audioContentType = AudioAttributes.CONTENT_TYPE_UNKNOWN,
        playbackActions = PlaybackState.ACTION_PLAY_PAUSE,
        hasTitle = true,
        activeInSystemList = activeInSystemList,
        reportedPositionMs = positionMs,
        positionUpdateTimeMs = positionUpdateTimeMs,
        transport = if (sessionId == "bluetooth") {
            ContentMediaSessionTransport.BLUETOOTH_AVRCP
        } else {
            ContentMediaSessionTransport.STANDARD
        }
    )

    private fun runningArbiter() = ContentMediaSessionArbiter(
        coldStartSettleMs = 0L,
        preferredSourceSettleMs = 0L
    )

    companion object {
        private const val OWN_PACKAGE = "com.icar03.content.runtime"
        private const val BLUETOOTH_PACKAGE = "com.android.bluetooth"
    }
}
