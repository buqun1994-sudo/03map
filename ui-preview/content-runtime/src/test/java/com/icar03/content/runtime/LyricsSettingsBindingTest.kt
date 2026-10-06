package com.icar03.content.runtime

import android.content.Context
import android.os.Looper
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.runtime.lyrics.ContentLyricsPreferences
import com.icar03.content.ui.AppleMusicConnectRequested
import com.icar03.content.ui.ContentEvent
import com.icar03.content.ui.LyricsPlatformSelected
import com.icar03.content.ui.SettingsSection
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config

/** Real facade/Binding bridges; no WebView is composed and no account is fabricated. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class LyricsSettingsBindingTest {
    @Test fun providerPreferenceReachesTheShellAndSurvivesBindingRecreation() {
        val context = RuntimeEnvironment.getApplication()
        context.getSharedPreferences("content.lyrics.providers", Context.MODE_PRIVATE).edit().clear().commit()
        val store = ContentStore(context)
        val first = ContentBinding(store)
        try {
            first.observeEnvironment(context)
            first.start()
            first.dispatch(ContentEvent.OpenLyricsSettings)
            first.dispatch(LyricsPlatformSelected("netease"))
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals("netease", first.state.value.lyricsProviderSettings.preferredPlatform)
            assertEquals(ContentLyricsPreferences.Platform.NETEASE, ContentLyricsPreferences(context).getPreferredPlatform())
            assertFalse(first.state.value.lyricsProviderSettings.appleLoginOpen)
            first.close()
            val rebound = ContentBinding(store)
            try {
                rebound.observeEnvironment(context)
                rebound.start()
                assertEquals("netease", rebound.state.value.lyricsProviderSettings.preferredPlatform)
                assertTrue(rebound.state.value.lyricsProviderSettings.available)
                rebound.stop()
                assertFalse(rebound.state.value.lyricsProviderSettings.available)
            } finally { rebound.close() }
        } finally { first.close(); store.destroy() }
    }

    @Test fun allUiPlatformIdsRoundTripToTheirExistingProviderOwners() {
        val context = RuntimeEnvironment.getApplication()
        val store = ContentStore(context)
        val binding = ContentBinding(store)
        val choices = linkedMapOf(
            "auto" to ContentLyricsPreferences.Platform.AUTO,
            "lrclib" to ContentLyricsPreferences.Platform.LRCLIB,
            "qq" to ContentLyricsPreferences.Platform.QQ,
            "netease" to ContentLyricsPreferences.Platform.NETEASE,
            "kugou" to ContentLyricsPreferences.Platform.KUGOU,
            "kuwo" to ContentLyricsPreferences.Platform.KUWO,
            "migu" to ContentLyricsPreferences.Platform.MIGU,
            "soda" to ContentLyricsPreferences.Platform.SODA,
            "applemusic" to ContentLyricsPreferences.Platform.APPLE_MUSIC,
        )
        try {
            binding.observeEnvironment(context)
            binding.start()
            binding.dispatch(ContentEvent.OpenLyricsSettings)
            val facade = ContentLyricsPreferences(context)
            for ((id, provider) in choices) {
                binding.dispatch(LyricsPlatformSelected(id))
                assertEquals(id, binding.state.value.lyricsProviderSettings.preferredPlatform)
                assertEquals(provider, facade.getPreferredPlatform())
                assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
            }
        } finally { binding.close(); store.destroy() }
    }

    @Test fun closingTheOwnerRejectsLatePreferenceEventsWithoutAUiFrame() {
        val context = RuntimeEnvironment.getApplication()
        val store = ContentStore(context)
        val binding = ContentBinding(store)
        try {
            binding.observeEnvironment(context)
            binding.start()
            binding.dispatch(ContentEvent.OpenLyricsSettings)
            val before = store.snapshot()
            val provider = binding.state.value.lyricsProviderSettings.preferredPlatform
            binding.dispatch(ContentEvent.SettingsDismissed)
            binding.dispatch(ContentEvent.LyricsFontSizeChanged(64f))
            binding.dispatch(ContentEvent.ShowSecondsChanged(!before.showSeconds))
            binding.dispatch(LyricsPlatformSelected("qq"))
            assertEquals(before.lyricsFontSizeSp, store.snapshot().lyricsFontSizeSp, .01f)
            assertEquals(before.showSeconds, store.snapshot().showSeconds)
            assertEquals(provider, binding.state.value.lyricsProviderSettings.preferredPlatform)
            assertFalse(binding.state.value.settingsOpen)
        } finally { binding.close(); store.destroy() }
    }

    @Test fun officialLoginIsExplicitAndBackOrStopCancelsOnlyItsCurrentSession() {
        val context = RuntimeEnvironment.getApplication()
        val store = ContentStore(context)
        val binding = ContentBinding(store)
        try {
            binding.observeEnvironment(context)
            binding.start()
            assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
            binding.dispatch(ContentEvent.OpenLyricsSettings)
            binding.dispatch(AppleMusicConnectRequested)
            shadowOf(Looper.getMainLooper()).idle()
            assertTrue(binding.state.value.lyricsProviderSettings.appleLoginOpen)
            binding.dispatch(ContentEvent.SettingsBack)
            assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
            assertTrue(binding.state.value.settingsOpen)
            assertEquals(SettingsSection.Lyrics, binding.state.value.settingsSection)
            binding.dispatch(AppleMusicConnectRequested)
            shadowOf(Looper.getMainLooper()).idle()
            binding.stop()
            assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
            assertFalse(binding.state.value.lyricsProviderSettings.available)
            binding.dispatch(AppleMusicConnectRequested)
            assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
        } finally { binding.close(); store.destroy() }
    }
}
