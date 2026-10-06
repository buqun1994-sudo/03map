package com.icar03.content.runtime.lyrics

import android.content.Context
import java.util.concurrent.atomic.AtomicLong
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/** Stable settings API. Preferences affect both resources, independently of Bluetooth/USB routing. */
class ContentLyricsPreferences(context: Context) {
    enum class Platform(val providerId: String) {
        AUTO(""), APPLE_MUSIC(SOURCE_APPLE_MUSIC), QQ(SOURCE_QQ), NETEASE(SOURCE_NETEASE),
        KUGOU(SOURCE_KUGOU), KUWO(SOURCE_KUWO), MIGU(SOURCE_MIGU), SODA(SOURCE_SODA), LRCLIB(SOURCE_LRCLIB)
    }
    private val prefs = context.applicationContext.getSharedPreferences("content.lyrics.providers", Context.MODE_PRIVATE)
    private val changes = AtomicLong()
    private val revisionState = MutableStateFlow(0L)
    internal val revisionChanges: StateFlow<Long> = revisionState.asStateFlow()
    // Retained for this owner's lifetime: SharedPreferences weakly references listeners.
    private val listener = android.content.SharedPreferences.OnSharedPreferenceChangeListener { _, key ->
        if (key == "preferred_platform") revisionState.value = changes.incrementAndGet()
    }
    init { prefs.registerOnSharedPreferenceChangeListener(listener) }
    val revision: Long get() = changes.get()
    fun getPreferredPlatform(): Platform {
        val saved = prefs.all["preferred_platform"] as? String
        return Platform.values().firstOrNull { it.providerId == saved } ?: Platform.AUTO
    }
    fun setPreferredPlatform(platform: Platform) { prefs.edit().putString("preferred_platform", platform.providerId).apply() }
    internal fun preferredSources(): List<String> = listOf(getPreferredPlatform().providerId).filter(String::isNotBlank)
}
