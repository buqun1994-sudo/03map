package com.icar03.content.runtime.media

import android.content.ComponentName
import com.icar03.content.model.ContentMediaControlPolicy

/** Immutable controls exposed by one confirmed media source. */
data class ContentMediaSourceCapabilities(
    val playbackAvailable: Boolean,
    val nextAvailable: Boolean,
)

/** Vehicle source labels require an observed public Browser component and its returned token. */
object ContentMediaSourcePolicy {
    private const val CENTER = "com.tencent.wecarflow"
    private const val CLOUD_MUSIC = "网易云音乐"
    private val sources = linkedMapOf(
        ComponentName(CENTER, "com.mychery.cloudmusic.service.CloudMusicService") to CLOUD_MUSIC,
        ComponentName(CENTER, "com.tencent.wecarflow.player.MediaPlaybackService") to "爱趣听",
        ComponentName(CENTER, "com.mengbo.service.play.customplayer.UsbPlayerService") to "USB音乐",
        ComponentName(CENTER, "com.mengbo.service.play.customplayer.HddPlayerService") to "本机音乐",
        ComponentName("com.android.bluetooth", "com.android.bluetooth.A2dpMediaBrowserService") to "蓝牙音乐",
        ComponentName("com.android.bluetooth", "com.android.bluetooth.avrcpcontroller.BluetoothMediaBrowserService") to "蓝牙音乐",
    )
    private val CONTROL_CAPABLE_SOURCE = ContentMediaSourceCapabilities(
        playbackAvailable = true,
        nextAvailable = true,
    )
    private val NO_CONTROL_SOURCE = ContentMediaSourceCapabilities(
        playbackAvailable = false,
        nextAvailable = false,
    )

    @JvmStatic fun sourceForComponent(component: ComponentName): String? = sources[component]

    /**
     * Source capability is an explicit domain contract. Public-session actions are
     * observations only and never upgrade a source's declared capability. A null
     * source is deliberately read-only until status readback confirms the source.
     */
    @JvmStatic fun capabilitiesForSource(actualSource: String?): ContentMediaSourceCapabilities {
        val source = actualSource?.trim()
        return when {
            source.isNullOrEmpty() -> NO_CONTROL_SOURCE
            ContentMediaControlPolicy.acceptsCommands(source) -> CONTROL_CAPABLE_SOURCE
            else -> NO_CONTROL_SOURCE
        }
    }

    /** The caller supplies actual SDK readback, never a pending user source request. */
    @JvmStatic fun componentForSource(actualSource: String?): ComponentName? =
        sources.entries.firstOrNull { it.value == actualSource }?.key
}
