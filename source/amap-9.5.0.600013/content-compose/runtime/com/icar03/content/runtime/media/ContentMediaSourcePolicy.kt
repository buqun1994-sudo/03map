package com.icar03.content.runtime.media

import android.content.ComponentName

/** Vehicle source labels require an observed public Browser component and its returned token. */
object ContentMediaSourcePolicy {
    private const val CENTER = "com.tencent.wecarflow"
    private val sources = linkedMapOf(
        ComponentName(CENTER, "com.mychery.cloudmusic.service.CloudMusicService") to "网易云音乐",
        ComponentName(CENTER, "com.tencent.wecarflow.player.MediaPlaybackService") to "爱趣听",
        ComponentName(CENTER, "com.mengbo.service.play.customplayer.UsbPlayerService") to "USB音乐",
        ComponentName(CENTER, "com.mengbo.service.play.customplayer.HddPlayerService") to "本机音乐",
        ComponentName("com.android.bluetooth", "com.android.bluetooth.A2dpMediaBrowserService") to "蓝牙音乐",
        ComponentName("com.android.bluetooth", "com.android.bluetooth.avrcpcontroller.BluetoothMediaBrowserService") to "蓝牙音乐",
    )

    @JvmStatic fun sourceForComponent(component: ComponentName): String? = sources[component]

    /** The caller supplies actual SDK readback, never a pending user source request. */
    @JvmStatic fun componentForSource(actualSource: String?): ComponentName? =
        sources.entries.firstOrNull { it.value == actualSource }?.key
}
