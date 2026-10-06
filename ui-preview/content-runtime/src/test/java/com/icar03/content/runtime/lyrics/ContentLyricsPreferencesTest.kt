package com.icar03.content.runtime.lyrics

import android.content.Context
import android.os.Looper
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class ContentLyricsPreferencesTest {
    private val context: Context get() = RuntimeEnvironment.getApplication()

    @Before fun reset() {
        context.getSharedPreferences("content.lyrics.providers", Context.MODE_PRIVATE).edit().clear().commit()
        shadowOf(Looper.getMainLooper()).idle()
    }

    @Test fun oneStoredPlatformFeedsIndependentOwnersAndReactiveRevision() {
        val settings = ContentLyricsPreferences(context)
        val runtime = ContentLyricsPreferences(context)
        assertEquals(ContentLyricsPreferences.Platform.AUTO, runtime.getPreferredPlatform())
        settings.setPreferredPlatform(ContentLyricsPreferences.Platform.QQ)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals(ContentLyricsPreferences.Platform.QQ, runtime.getPreferredPlatform())
        assertEquals(listOf(SOURCE_QQ), runtime.preferredSources())
        assertTrue(runtime.revision > 0L)
        assertEquals(runtime.revision, runtime.revisionChanges.value)
        assertEquals(ContentLyricsPreferences.Platform.QQ, ContentLyricsPreferences(context).getPreferredPlatform())
        val revision = runtime.revision
        settings.setPreferredPlatform(ContentLyricsPreferences.Platform.QQ)
        shadowOf(Looper.getMainLooper()).idle()
        assertEquals("Unchanged preferences must not cause another network round", revision, runtime.revision)
    }

    @Test fun unknownStoredProviderFallsBackToAuto() {
        context.getSharedPreferences("content.lyrics.providers", Context.MODE_PRIVATE).edit()
            .putString("preferred_platform", "unsupported-provider").commit()
        val preferences = ContentLyricsPreferences(context)
        assertEquals(ContentLyricsPreferences.Platform.AUTO, preferences.getPreferredPlatform())
        assertTrue(preferences.preferredSources().isEmpty())
    }

    @Test fun wrongTypedPlatformFallsBackWithoutThrowingForUiOrResources() {
        context.getSharedPreferences("content.lyrics.providers", Context.MODE_PRIVATE).edit()
            .putInt("preferred_platform", 99).commit()
        val preferences = ContentLyricsPreferences(context)
        assertEquals(ContentLyricsPreferences.Platform.AUTO, preferences.getPreferredPlatform())
        assertTrue(preferences.preferredSources().isEmpty())
    }

    @Test fun registryContainsExactlyTheEightSupportedPlatforms() {
        val expected = setOf(SOURCE_LRCLIB, SOURCE_QQ, SOURCE_NETEASE, SOURCE_KUGOU,
            SOURCE_KUWO, SOURCE_MIGU, SOURCE_SODA, SOURCE_APPLE_MUSIC)
        assertEquals(expected, LyricsProviderRegistry.descriptors.map { it.id }.toSet())
        assertEquals(expected.size, LyricsProviderRegistry.descriptors.size)
        assertEquals(listOf(SOURCE_APPLE_MUSIC), LyricsProviderRegistry.descriptors.filter { it.requiresLogin }.map { it.id })
        assertEquals(expected, ContentLyricsPreferences.Platform.values().map { it.providerId }.filter(String::isNotBlank).toSet())
    }

    @Test fun unavailablePreferredAppleIsSkippedWhileAvailablePreferencesAreStable() {
        val qq = source(SOURCE_QQ)
        val netease = source(SOURCE_NETEASE)
        val apple = source(SOURCE_APPLE_MUSIC, available = false)
        assertEquals(listOf(qq, netease), LyricsProviderRegistry.ordered(listOf(qq, netease, apple), listOf(SOURCE_APPLE_MUSIC)))
        assertEquals(listOf(netease, qq), LyricsProviderRegistry.ordered(listOf(qq, netease, apple), listOf(SOURCE_NETEASE)))
    }

    private fun source(name: String, available: Boolean = true) = object : LyricsCatalogSource {
        override val sourceName: String = name
        override val isAvailable: Boolean = available
        override fun search(request: LyricsCatalogSearchRequest, deadlineNanos: Long,
            cancellation: LyricsCancellationSignal): List<LyricsResult> = error("Ordering must not request the network")
        override fun loadLyrics(candidate: LyricsResult, deadlineNanos: Long,
            cancellation: LyricsCancellationSignal): LyricsResult? = error("Ordering must not request a body")
    }
}
