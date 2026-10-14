package com.icar03.content.runtime

import android.content.Context
import android.net.Uri
import android.os.Looper
import android.webkit.RenderProcessGoneDetail
import android.webkit.FixtureWebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebView
import android.webkit.ValueCallback
import android.webkit.WebViewClient
import android.webkit.WebResourceResponse
import androidx.compose.ui.test.assertIsDisplayed
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performClick
import com.icar03.content.runtime.lyrics.AppleMusicFixtureRig
import kotlinx.coroutines.CompletableDeferred
import java.io.ByteArrayInputStream
import java.time.Duration
import java.util.concurrent.TimeUnit
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.test.junit4.createComposeRule
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.runtime.lyrics.AppleMusicConnection
import com.icar03.content.runtime.lyrics.ContentLyricsPreferences
import com.icar03.content.ui.AppleMusicConnectRequested
import com.icar03.content.ui.AppleMusicLoginDismissed
import com.icar03.content.ui.ContentEvent
import com.icar03.content.ui.ContentTheme
import com.icar03.content.ui.LocalSettingsDesign
import com.icar03.content.ui.LyricsPlatformSelected
import com.icar03.content.ui.SettingsSection
import com.icar03.content.ui.settingsDesign
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.shadows.ShadowWebView
import org.robolectric.Shadows.shadowOf
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import org.robolectric.annotation.Implementation
import org.robolectric.annotation.Implements

/** Real facade/Binding bridges; lifecycle fixtures never load a URL or fabricate an account. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], shadows = [LoginWebViewShadow::class])
class LyricsSettingsBindingTest {
    @get:Rule val compose = createComposeRule()

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

    @Test fun officialWindowBackCloseAndStopReleaseOnlyTheirCurrentLogin() {
        val context = RuntimeEnvironment.getApplication()
        val store = ContentStore(context)
        val binding = ContentBinding(store)
        try {
            binding.observeEnvironment(context)
            binding.start()
            assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
            binding.dispatch(ContentEvent.OpenLyricsSettings)
            beginLogin(binding)
            val owner = settingsOwner(binding)
            val first = attachWithoutLoading(owner)
            val firstCallbacks = first.webViewClient
            binding.dispatch(ContentEvent.SettingsBack)
            assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
            assertTrue(binding.state.value.settingsOpen)
            assertEquals(SettingsSection.Lyrics, binding.state.value.settingsSection)
            assertReleased(first)

            beginLogin(binding)
            val second = attachWithoutLoading(owner)
            deliverLateCallbacks(firstCallbacks, first)
            assertTrue(binding.state.value.lyricsProviderSettings.appleLoginOpen)
            assertEquals(0, second.destroyCalls)
            binding.dispatch(AppleMusicLoginDismissed)
            assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
            assertTrue(binding.state.value.settingsOpen)
            assertReleased(second)

            beginLogin(binding)
            val third = attachWithoutLoading(owner)
            binding.stop()
            assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
            assertFalse(binding.state.value.lyricsProviderSettings.available)
            assertReleased(third)
            binding.dispatch(AppleMusicConnectRequested)
            assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
            binding.close()
            assertReleased(third)
        } finally { binding.close(); store.destroy() }
    }

    @Test fun productionLoginWithoutBrowserLeavesSettingsAvailableWithoutEmbeddedWindow() {
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
            assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
            assertNull(field(settingsOwner(binding), "loginWebView"))
            assertTrue(binding.state.value.settingsOpen)
            assertEquals(SettingsSection.Lyrics, binding.state.value.settingsSection)
        } finally { binding.close(); store.destroy() }
    }
    @Test fun confirmedParkDepartureClosesSettingsAndReleasesOnlyTheCurrentLoginWindow() {
        val context = RuntimeEnvironment.getApplication()
        val store = ContentStore(context)
        val binding = ContentBinding(store)
        try {
            binding.observeEnvironment(context)
            binding.start()
            binding.dispatch(ContentEvent.OpenLyricsSettings)
            beginLogin(binding)
            val view = attachWithoutLoading(settingsOwner(binding))
            val callbacks = view.webViewClient
            store.setAutoCloseSettingsOnDrive(true)
            store.acceptVehicleSnapshot(com.autonavi.amapauto.content.ContentPorts.VehicleSnapshot.unavailable()
                .withGear(com.icar03.content.model.VehicleGear.Park))
            store.acceptVehicleSnapshot(com.autonavi.amapauto.content.ContentPorts.VehicleSnapshot.unavailable()
                .withGear(com.icar03.content.model.VehicleGear.Drive))
            shadowOf(Looper.getMainLooper()).idle()
            assertFalse(binding.state.value.settingsOpen)
            assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
            assertFalse(binding.state.value.settingsCollapsed)
            assertReleased(view)
            deliverLateCallbacks(callbacks, view)
            assertFalse(binding.state.value.settingsOpen)
            assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
        } finally { binding.close(); store.destroy() }
    }

    @Test fun settingsDismissalEventsReleaseCurrentLogin() {
        for (dismiss in listOf(ContentEvent.SettingsDismissed, ContentEvent.DismissSheet, ContentEvent.SettingsTapped)) {
            val context = RuntimeEnvironment.getApplication()
            val store = ContentStore(context)
            val binding = ContentBinding(store)
            try {
                binding.observeEnvironment(context)
                binding.start()
                binding.dispatch(ContentEvent.OpenLyricsSettings)
                beginLogin(binding)
                val view = attachWithoutLoading(settingsOwner(binding))
                val callbacks = view.webViewClient
                binding.dispatch(dismiss)
                assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
                assertFalse(binding.state.value.settingsOpen)
                assertReleased(view)
                deliverLateCallbacks(callbacks, view)
                assertFalse(binding.state.value.lyricsProviderSettings.appleLoginOpen)
                assertFalse(binding.state.value.settingsOpen)
            } finally { binding.close(); store.destroy() }
        }
    }

    @Test fun removingRealLoginCompositionCancelsAndDestroysItsWebView() {
        LoginWebViewShadow.reset()
        val context = RuntimeEnvironment.getApplication()
        val visible = mutableStateOf(true)
        val revision = mutableStateOf(0)
        val owner = LyricsSettingsBinding(context, onChanged = { revision.value++ }, onFeedback = {}, connection = null,
            authorizationConfiguration = { com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(it, "fixture-developer-token") })
        try {
            owner.start()
            openSyntheticLogin(owner)
            compose.setContent {
                revision.value
                ContentTheme(false) {
                    CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(false)) {
                        if (visible.value) owner.LoginContent()
                    }
                }
            }
            compose.waitForIdle()
            assertNotNull(field(owner, "loginWebView"))
            assertEquals(1, LoginWebViewShadow.loadedUrls.size)
            val loaded = Uri.parse(LoginWebViewShadow.loadedUrls.single())
            assertEquals("https", loaded.scheme)
            assertEquals("authorize.music.apple.com", loaded.host)
            assertEquals("/woa", loaded.path)
            assertEquals(loaded.getQueryParameter("referrer"), LoginWebViewShadow.loadedHeaders.single()["Referer"])
            compose.runOnIdle { visible.value = false }
            compose.waitForIdle()
            assertFalse(owner.state.appleLoginOpen)
            assertNull(field(owner, "pollJob"))
            assertNull(field(owner, "loginWebView"))
            assertEquals(1, LoginWebViewShadow.stopCalls)
            assertEquals(1, LoginWebViewShadow.destroyCalls)
        } finally { owner.close() }
    }

    @Test fun stoppingOwnerWhileLoginCompositionIsMountedDestroysItsWebView() {
        LoginWebViewShadow.reset()
        val context = RuntimeEnvironment.getApplication()
        val visible = mutableStateOf(true)
        val revision = mutableStateOf(0)
        val owner = LyricsSettingsBinding(context, onChanged = { revision.value++ }, onFeedback = {}, connection = null,
            authorizationConfiguration = { com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(it, "fixture-developer-token") })
        try {
            owner.start()
            openSyntheticLogin(owner)
            compose.setContent {
                revision.value
                ContentTheme(false) {
                    CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(false)) {
                        if (visible.value) owner.LoginContent()
                    }
                }
            }
            compose.waitForIdle()
            owner.stop()
            compose.waitForIdle()
            assertFalse(owner.state.appleLoginOpen)
            assertFalse(owner.state.available)
            assertNull(field(owner, "pollJob"))
            assertNull(field(owner, "loginWebView"))
            assertEquals(1, LoginWebViewShadow.stopCalls)
            assertEquals(1, LoginWebViewShadow.destroyCalls)
        } finally { owner.close() }
    }

    @Test fun removedWindowCancelsItsPollerAndOldWindowDisposalCannotCancelAReplacement() {
        val context = RuntimeEnvironment.getApplication()
        val feedback = mutableListOf<String>()
        val owner = LyricsSettingsBinding(context, onChanged = {}, onFeedback = feedback::add)
        try {
            owner.start()
            openSyntheticLogin(owner)
            val lifecycle = longField(owner, "lifecycleEpoch")
            val login = longField(owner, "loginEpoch")
            val first = attachWithoutLoading(owner)
            val oldCallbacks = first.webViewClient
            releaseContent(owner, lifecycle, login)
            assertFalse(owner.state.appleLoginOpen)
            assertNull(field(owner, "pollJob"))
            assertReleased(first)

            openSyntheticLogin(owner)
            val second = attachWithoutLoading(owner)
            releaseContent(owner, lifecycle, login)
            deliverLateCallbacks(oldCallbacks, first)
            assertTrue(owner.state.appleLoginOpen)
            assertEquals(0, second.destroyCalls)
            assertTrue(feedback.isEmpty())
            owner.close()
            assertFalse(owner.state.appleLoginOpen)
            assertFalse(owner.state.available)
            assertNull(field(owner, "pollJob"))
            assertReleased(second)
        } finally { owner.close() }
    }

    @Test fun clearFailureSyncOrDelayedLeavesPreparingAndCanBeRetriedWithoutLosingCredential() {
        for (deferred in listOf(false, true)) {
            val rig = AppleMusicFixtureRig()
            val original = rig.store.value
            rig.cookies.deferred = deferred
            rig.cookies.clearResult = false
            val messages = mutableListOf<String>()
            val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, messages::add, rig.connection, authorizationConfiguration = { com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(it, "fixture-developer-token") })
            try {
                owner.start()
                owner.dispatch(AppleMusicConnectRequested)
                assertTrue(owner.state.applePreparing)
                assertNotNull(field(owner, "activeAttempt"))
                if (deferred) rig.cookies.pending[0](false)
                shadowOf(Looper.getMainLooper()).idle()
                assertFalse(owner.state.applePreparing)
                assertTrue(owner.state.appleLoginOpen)
                assertNull(field(owner, "activeAttempt"))
                assertNull(field(owner, "loginWebView"))
                assertNull(field(owner, "pollJob"))
                assertFalse(rig.connection.refresh().isConnecting)
                assertSame(original, rig.store.value)
                assertEquals(1, messages.size)
                assertTrue(messages.single().contains("清理"))
                rig.cookies.deferred = false
                rig.cookies.clearResult = true
                owner.dispatch(AppleMusicConnectRequested)
                shadowOf(Looper.getMainLooper()).idle()
                assertFalse(owner.state.applePreparing)
                assertNull(pageError(owner))
                assertNotNull(field(owner, "activeAttempt"))
                assertTrue(rig.connection.refresh().isConnecting)
                if (deferred) {
                    rig.cookies.pending[0](true)
                    shadowOf(Looper.getMainLooper()).idle()
                    assertNull(pageError(owner))
                    assertEquals(1, messages.size)
                }
            } finally { owner.close() }
        }
    }

    @Test fun dismissWhilePreparingImmediatelyReleasesTheSlotAndOldCallbacksCannotCancelRetry() {
        val rig = AppleMusicFixtureRig(null)
        rig.cookies.deferred = true
        val messages = mutableListOf<String>()
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, messages::add, rig.connection, authorizationConfiguration = { com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(it, "fixture-developer-token") })
        try {
            owner.start()
            owner.dispatch(AppleMusicConnectRequested)
            val first = field(owner, "activeAttempt")
            owner.dispatch(AppleMusicLoginDismissed)
            assertFalse(owner.state.appleLoginOpen)
            assertFalse(rig.connection.refresh().isConnecting)
            owner.dispatch(AppleMusicConnectRequested)
            val second = field(owner, "activeAttempt")
            assertNotNull(second)
            assertNotSame(first, second)
            rig.cookies.pending[0](true)
            rig.cookies.pending[0](false)
            shadowOf(Looper.getMainLooper()).idle()
            assertTrue(owner.state.applePreparing)
            assertSame(second, field(owner, "activeAttempt"))
            assertTrue(messages.isEmpty())
            rig.cookies.pending[1](true)
            rig.cookies.pending[1](false)
            shadowOf(Looper.getMainLooper()).idle()
            assertFalse(owner.state.applePreparing)
            assertSame(second, field(owner, "activeAttempt"))
            assertNull(pageError(owner))
            assertTrue(messages.isEmpty())
        } finally { owner.close() }
    }

    @Test fun stoppingDuringPreparationCancelsBackendBeforeItsCookieCallback() {
        val rig = AppleMusicFixtureRig(null)
        rig.cookies.deferred = true
        val messages = mutableListOf<String>()
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, messages::add, rig.connection, authorizationConfiguration = { com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(it, "fixture-developer-token") })
        try {
            owner.start()
            owner.dispatch(AppleMusicConnectRequested)
            owner.stop()
            assertFalse(rig.connection.refresh().isConnecting)
            assertFalse(owner.state.appleLoginOpen)
            owner.start()
            owner.dispatch(AppleMusicConnectRequested)
            val replacement = field(owner, "activeAttempt")
            rig.cookies.pending[0](false)
            rig.cookies.pending[1](true)
            shadowOf(Looper.getMainLooper()).idle()
            assertFalse(owner.state.applePreparing)
            assertSame(replacement, field(owner, "activeAttempt"))
            assertTrue(messages.isEmpty())
            owner.close()
            assertFalse(rig.connection.refresh().isConnecting)
        } finally { owner.close() }
    }

    @Test fun realFailureWindowRetriesOnceAndSuccessReleasesItsOnlyWebView() {
        LoginWebViewShadow.reset()
        val rig = AppleMusicFixtureRig(null)
        rig.cookies.clearResult = false
        val revision = mutableStateOf(0)
        val messages = mutableListOf<String>()
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), { revision.value++ }, messages::add, rig.connection, authorizationConfiguration = { com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(it, "fixture-developer-token") })
        try {
            owner.start()
            owner.dispatch(AppleMusicConnectRequested)
            shadowOf(Looper.getMainLooper()).idle()
            compose.setContent {
                revision.value
                ContentTheme(false) {
                    CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(false)) { owner.LoginContent() }
                }
            }
            compose.waitForIdle()
            compose.onNodeWithTag("settings-apple-login-web-error").assertIsDisplayed()
            compose.onNodeWithTag("settings-apple-login-retry").assertIsDisplayed()
            assertTrue(LoginWebViewShadow.loadedUrls.isEmpty())
            rig.cookies.clearResult = true
            compose.onNodeWithTag("settings-apple-login-retry").performClick()
            shadowOf(Looper.getMainLooper()).idle()
            compose.waitForIdle()
            assertEquals(2, rig.cookies.clears)
            assertFalse(owner.state.applePreparing)
            assertNull(pageError(owner))
            assertNotNull(field(owner, "activeAttempt"))
            assertNotNull(field(owner, "loginWebView"))
            assertFalse(owner.state.applePreparing)
            val view = field(owner, "loginWebView") as WebView
            rig.cookies.current = loginCookies()
            compose.runOnIdle { view.webViewClient.onPageFinished(view, AppleMusicConnection.LOGIN_URL) }
            compose.waitForIdle()
            assertFalse(owner.state.appleLoginOpen)
            assertEquals(AppleMusicConnection.Status.CONNECTED, rig.connection.refresh().status)
            assertNull(field(owner, "pollJob"))
            assertNull(field(owner, "loginWebView"))
            assertEquals(1, LoginWebViewShadow.stopCalls)
            assertEquals(1, LoginWebViewShadow.destroyCalls)
        } finally { owner.close() }
    }

    @Test fun bootstrapFailureRetryUsesTheRealBrokerAndLoadsOnlyTheReplacementAuthorization() {
        LoginWebViewShadow.reset()
        val rig = AppleMusicFixtureRig(null)
        val transport = com.icar03.content.runtime.lyrics.AppleMusicFixtureTransport {
            throw com.icar03.content.runtime.lyrics.LyricsHttpStatusException(503,
                com.icar03.content.runtime.lyrics.LyricsFailureReason.SERVER, true)
        }
        val broker = com.icar03.content.runtime.lyrics.AppleMusicAuthBroker(rig.connection, transport, rig.clock)
        val revision = mutableStateOf(0)
        val messages = mutableListOf<String>()
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), { revision.value++ }, messages::add,
            rig.connection, authorizationConfiguration = { attempt -> broker.prepareWebAuthorization(attempt,
                System.nanoTime() + java.util.concurrent.TimeUnit.SECONDS.toNanos(10),
                com.icar03.content.runtime.lyrics.LyricsCancellationSignal()) })
        try {
            beginRealLogin(owner)
            compose.setContent {
                revision.value
                ContentTheme(false) {
                    CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(false)) { owner.LoginContent() }
                }
            }
            compose.waitForIdle()
            compose.onNodeWithTag("settings-apple-login-web-error").assertIsDisplayed()
            assertEquals(1, transport.calls.size)
             assertEquals("Apple Music 登录准备失败，请重试", pageError(owner))
             assertTrue(messages.contains("Apple Music 登录准备失败，请重试"))
            assertTrue(LoginWebViewShadow.loadedUrls.isEmpty())
            assertFalse(rig.connection.refresh().isConnecting)
            assertNull(field(owner, "activeAttempt"))
            assertNull(field(owner, "loginWebView"))
            transport.response = com.icar03.content.runtime.lyrics.AppleMusicFixture::bootstrapResponse
            compose.onNodeWithTag("settings-apple-login-retry").performClick()
            shadowOf(Looper.getMainLooper()).idle()
            compose.waitForIdle()
            assertNull(pageError(owner))
            assertEquals(4, transport.calls.size)
            assertEquals(2, rig.cookies.clears)
            assertEquals(1, LoginWebViewShadow.loadedUrls.size)
            val attempt = field(owner, "activeAttempt") as AppleMusicConnection.LoginAttempt
            val start = Uri.parse(LoginWebViewShadow.loadedUrls.single())
            assertEquals("authorize.music.apple.com", start.host)
            assertTrue(checkNotNull(start.getQueryParameter("referrer")).endsWith(attempt.id))
            assertEquals(start.getQueryParameter("referrer"), LoginWebViewShadow.loadedHeaders.single()["Referer"])
            assertEquals(AppleMusicConnection.Status.DISCONNECTED, rig.connection.refresh().status)
            assertNull(rig.store.value)
            assertEquals(1, messages.size)
        } finally { owner.close() }
    }

    @Test fun defaultLoginLoadsOfficialPageWithoutHeadersOrAuthorizationBootstrap() {
        LoginWebViewShadow.reset()
        val rig = AppleMusicFixtureRig(null)
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, {}, rig.connection)
        try {
            beginRealLogin(owner)
            val attempt = field(owner, "activeAttempt") as AppleMusicConnection.LoginAttempt
            LyricsSettingsBinding::class.java.getDeclaredMethod("createLoginWebView", Context::class.java,
                AppleMusicConnection.LoginAttempt::class.java, java.lang.Long.TYPE, java.lang.Long.TYPE)
                .apply { isAccessible = true }.invoke(owner, RuntimeEnvironment.getApplication(), attempt,
                    longField(owner, "lifecycleEpoch"), longField(owner, "loginEpoch"))
            assertEquals(listOf(AppleMusicConnection.LOGIN_URL), LoginWebViewShadow.loadedUrls)
            assertTrue(LoginWebViewShadow.loadedHeaders.single().isEmpty())
            assertNull(field(owner, "authorizationJob"))
            assertNull(field(owner, "authorizationCancellation"))
            assertNotNull(field(owner, "pageLoadTimeout"))
            assertNull(rig.store.value)
        } finally { owner.close() }
    }

    @Test fun authorizationBootstrapOwnsItsDeadlineBeforePageTimeoutBegins() {
        LoginWebViewShadow.reset()
        val rig = AppleMusicFixtureRig(null)
        val gate = CompletableDeferred<com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.Configuration>()
        var bootstrapDeadline = 0L
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, {}, rig.connection,
            authorizationBuilder = { attempt, deadline, _ ->
                bootstrapDeadline = deadline
                gate.await()
            })
        try {
            beginRealLogin(owner)
            val attempt = field(owner, "activeAttempt") as AppleMusicConnection.LoginAttempt
            LyricsSettingsBinding::class.java.getDeclaredMethod("createLoginWebView", Context::class.java,
                AppleMusicConnection.LoginAttempt::class.java, java.lang.Long.TYPE, java.lang.Long.TYPE)
                .apply { isAccessible = true }.invoke(owner, RuntimeEnvironment.getApplication(), attempt,
                    longField(owner, "lifecycleEpoch"), longField(owner, "loginEpoch"))
            assertTrue(bootstrapDeadline - System.nanoTime() > TimeUnit.SECONDS.toNanos(50))
            assertTrue(LoginWebViewShadow.loadedUrls.isEmpty())
            assertNull(field(owner, "pageLoadTimeout"))
            gate.complete(com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(attempt, "fixture-developer"))
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals("authorize.music.apple.com", Uri.parse(LoginWebViewShadow.loadedUrls.single()).host)
            assertNotNull(field(owner, "pageLoadTimeout"))
        } finally { owner.close() }
    }

    @Test fun currentOfficialScriptsPassThroughWithoutAStaticCompatibilityManifest() {
        val rig = AppleMusicFixtureRig(null)
        val messages = mutableListOf<String>()
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, messages::add, rig.connection)
        try {
            beginRealLogin(owner)
            val view = attachWithoutLoading(owner)
            for (script in listOf("https://authorize.music.apple.com/assets/unknown-version.js",
                "https://appleid.cdn-apple.com/appleauth/static/module-assets/current-widget.js",
                "https://music.apple.com/assets/current-index.js")) {
                assertNull(view.webViewClient.shouldInterceptRequest(view, requestFor(script, mainFrame = false)))
            }
            shadowOf(Looper.getMainLooper()).idle()
            assertTrue(messages.isEmpty())
            assertNotNull(field(owner, "activeAttempt"))
            assertTrue(owner.state.appleLoginOpen)
        } finally { owner.close() }
    }

    @Test fun officialAuthorizationReturnCompletesTheConnectionAndRejectsAnOldWindow() {
        val rig = AppleMusicFixtureRig(null)
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, {}, rig.connection)
        try {
            beginRealLogin(owner)
            val attempt = field(owner, "activeAttempt") as AppleMusicConnection.LoginAttempt
            val view = attachWithoutLoading(owner)
            val callbacks = view.webViewClient
            val payload = org.json.JSONObject().put("musicUserToken", "fixture-official-return").toString()
            val callback = com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(attempt, "fixture-developer").referrerUrl +
                "#" + android.util.Base64.encodeToString(payload.toByteArray(), android.util.Base64.NO_WRAP)
            assertTrue(callbacks.shouldOverrideUrlLoading(view, requestFor(callback)))
            assertEquals(AppleMusicConnection.Status.CONNECTED, rig.connection.refresh().status)
            assertNotNull(rig.store.value)
            assertFalse(owner.state.appleLoginOpen)
            assertReleased(view)
            owner.dispatch(AppleMusicConnectRequested); shadowOf(Looper.getMainLooper()).idle()
            val replacement = attachWithoutLoading(owner)
            assertTrue(callbacks.shouldOverrideUrlLoading(view, requestFor(callback)))
            assertTrue(owner.state.appleLoginOpen)
            assertTrue(rig.connection.refresh().isConnecting)
            assertEquals(0, replacement.destroyCalls)
        } finally { owner.close() }
    }

    @Test fun dismissWhileAuthorizationConfigurationIsInFlightNeverNavigatesAfterRelease() {
        LoginWebViewShadow.reset()
        val rig = AppleMusicFixtureRig(null)
        val result = kotlinx.coroutines.CompletableDeferred<com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.Configuration>()
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, {}, rig.connection,
            authorizationConfiguration = { result.await() })
        try {
            beginRealLogin(owner)
            val attempt = field(owner, "activeAttempt") as AppleMusicConnection.LoginAttempt
            LyricsSettingsBinding::class.java.getDeclaredMethod("createLoginWebView", Context::class.java,
                AppleMusicConnection.LoginAttempt::class.java, java.lang.Long.TYPE, java.lang.Long.TYPE)
                .apply { isAccessible = true }.invoke(owner, RuntimeEnvironment.getApplication(), attempt,
                    longField(owner, "lifecycleEpoch"), longField(owner, "loginEpoch"))
            assertNotNull(field(owner, "authorizationJob"))
            assertTrue(LoginWebViewShadow.loadedUrls.isEmpty())
            owner.dispatch(AppleMusicLoginDismissed)
            result.complete(com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(attempt, "fixture-developer"))
            shadowOf(Looper.getMainLooper()).idle()
            assertFalse(owner.state.appleLoginOpen)
            assertNull(field(owner, "authorizationJob"))
            assertNull(field(owner, "loginWebView"))
            assertTrue(LoginWebViewShadow.loadedUrls.isEmpty())
            assertEquals(1, LoginWebViewShadow.destroyCalls)
        } finally { owner.close() }
    }

    @Test fun mainframeHttpFailureIsVisibleAndRetryIgnoresOldHttpCallbacks() {
        val rig = AppleMusicFixtureRig(null)
        val messages = mutableListOf<String>()
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, messages::add, rig.connection, authorizationConfiguration = { com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(it, "fixture-developer-token") })
        try {
            beginRealLogin(owner)
            val first = attachWithoutLoading(owner)
            val callbacks = first.webViewClient
            val error = httpError()
            callbacks.onReceivedHttpError(first, requestFor("https://music.apple.com/assets/app.js", false), error)
            callbacks.onReceivedError(first, requestFor("https://music.apple.com/assets/app.js", false), pageError)
            assertNull(pageError(owner))
            assertTrue(rig.connection.refresh().isConnecting)
            callbacks.onReceivedHttpError(first, request, error)
            assertTrue((pageError(owner) as String).contains("503"))
            assertTrue(owner.state.appleLoginOpen)
            assertFalse(owner.state.applePreparing)
            assertFalse(rig.connection.refresh().isConnecting)
            assertNull(field(owner, "pollJob"))
            assertReleased(first)
            owner.dispatch(AppleMusicConnectRequested)
            shadowOf(Looper.getMainLooper()).idle()
            val replacement = attachWithoutLoading(owner)
            callbacks.onReceivedHttpError(first, request, error)
            deliverLateCallbacks(callbacks, first)
            assertNull(pageError(owner))
            assertNotNull(field(owner, "activeAttempt"))
            assertEquals(0, replacement.destroyCalls)
            assertEquals(1, messages.size)
        } finally { owner.close() }
    }

    @Test fun initialPageLoadHasOneDeadlineAcrossRedirectsAndCannotCompleteAfterTimeout() {
        val rig = AppleMusicFixtureRig(null)
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, {}, rig.connection, authorizationConfiguration = { com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(it, "fixture-developer-token") })
        try {
            beginRealLogin(owner)
            val view = attachWithoutLoading(owner)
            val callbacks = view.webViewClient
            callbacks.onPageStarted(view, AppleMusicConnection.LOGIN_URL, null)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(20))
            callbacks.onPageStarted(view, "https://idmsa.apple.com/appleauth/auth/", null)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(9_999))
            assertNull(pageError(owner))
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1))
            assertTrue((pageError(owner) as String).contains("超时"))
            assertFalse(rig.connection.refresh().isConnecting)
            assertReleased(view)
            assertNull(field(owner, "pollJob"))
            assertNull(field(owner, "pageLoadTimeout"))
            val failure = pageError(owner)
            rig.cookies.current = loginCookies()
            callbacks.onPageFinished(view, AppleMusicConnection.LOGIN_URL)
            assertSame(failure, pageError(owner))
            assertNull(rig.store.value)
        } finally { owner.close() }
    }

    @Test fun completedInitialDocumentDoesNotTimeOutPasswordOrTwoFactorInput() {
        val rig = AppleMusicFixtureRig(null)
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, {}, rig.connection, authorizationConfiguration = { com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(it, "fixture-developer-token") })
        try {
            beginRealLogin(owner)
            val view = attachWithoutLoading(owner)
            view.webViewClient.onPageFinished(view, "https://idmsa.apple.com/appleauth/auth/")
            assertNull(field(owner, "pageLoadTimeout"))
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofSeconds(65))
            assertNull(pageError(owner))
            assertTrue(owner.state.appleLoginOpen)
            assertTrue(rig.connection.refresh().isConnecting)
            assertEquals(0, view.destroyCalls)
        } finally { owner.close() }
    }

    @Test fun logoOnlyDocumentKeepsLoadingUntilInteractiveContentAppears() {
        val rig = AppleMusicFixtureRig(null)
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, {}, rig.connection, authorizationConfiguration = { com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(it, "fixture-developer-token") })
        try {
            beginRealLogin(owner)
            val view = attachWithoutLoading(owner)
            view.readiness = "\"loading\""
            checkNotNull(view.webChromeClient).onProgressChanged(view, 100)
            view.webViewClient.onPageStarted(view, AppleMusicConnection.LOGIN_URL, null)
            view.webViewClient.onPageFinished(view, AppleMusicConnection.LOGIN_URL)
            assertFalse(field(owner, "initialPageFinished") as Boolean)
            assertNotNull(field(owner, "pageLoadTimeout"))
            assertNotNull(field(owner, "pageReadinessProbe"))
            assertTrue(pageProgress(owner) < 100)
            view.readiness = "\"ready\""
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(750))
            assertTrue(field(owner, "initialPageFinished") as Boolean)
            assertNull(field(owner, "pageLoadTimeout"))
            assertNull(field(owner, "pageReadinessProbe"))
            assertEquals(100, pageProgress(owner))
            assertTrue(owner.state.appleLoginOpen)
            view.webViewClient.onPageStarted(view, "https://idmsa.apple.com/appleauth/auth/", null)
            assertFalse(field(owner, "initialPageFinished") as Boolean)
            val redirectedDeadline = field(owner, "pageLoadTimeout")
            assertNotNull(redirectedDeadline)
            view.readiness = "\"loading\""
            view.webViewClient.onPageFinished(view, "https://idmsa.apple.com/appleauth/auth/")
            assertSame(redirectedDeadline, field(owner, "pageLoadTimeout"))
            assertTrue(pageProgress(owner) < 100)
        } finally { owner.close() }
    }

    @Test fun actualOfficialScriptFailureCancelsLoginWithoutCredential() {
        val rig = AppleMusicFixtureRig(null)
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, {}, rig.connection, authorizationConfiguration = { com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(it, "fixture-developer-token") })
        try {
            beginRealLogin(owner)
            val view = attachWithoutLoading(owner)
            val handled = checkNotNull(view.webChromeClient).onConsoleMessage(android.webkit.ConsoleMessage(
                "Uncaught SyntaxError: Unexpected token secret-token", "https://appleid.cdn-apple.com/appleauth/static/module-assets/future.js?query=do-not-log",
                1, android.webkit.ConsoleMessage.MessageLevel.ERROR,
            ))
            assertTrue(handled)
            assertTrue((pageError(owner) as String).contains("不兼容"))
            val log = org.robolectric.shadows.ShadowLog.getLogsForTag("LyricsSettingsBinding").last().msg
            assertFalse(log.contains("secret-token"))
            assertFalse(log.contains("do-not-log"))
            assertTrue(owner.state.appleLoginOpen)
            assertFalse(rig.connection.refresh().isConnecting)
            assertNull(rig.store.value)
            assertNull(field(owner, "pageLoadTimeout"))
            assertNull(field(owner, "pageReadinessProbe"))
            assertReleased(view)
        } finally { owner.close() }
    }

    @Test fun readinessFromAnOldDocumentCannotCompleteTheRedirectOrReplacement() {
        val rig = AppleMusicFixtureRig(null)
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, {}, rig.connection, authorizationConfiguration = { com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(it, "fixture-developer-token") })
        try {
            beginRealLogin(owner)
            val view = attachWithoutLoading(owner)
            view.holdReadiness = true
            val callbacks = view.webViewClient
            callbacks.onPageFinished(view, AppleMusicConnection.LOGIN_URL)
            val late = checkNotNull(view.readinessCallback)
            callbacks.onPageStarted(view, "https://idmsa.apple.com/appleauth/auth/", null)
            late.onReceiveValue("\"ready\"")
            assertFalse(field(owner, "initialPageFinished") as Boolean)
            assertNotNull(field(owner, "pageLoadTimeout"))
            owner.dispatch(AppleMusicLoginDismissed)
            late.onReceiveValue("\"ready\"")
            assertFalse(owner.state.appleLoginOpen)
            assertNull(field(owner, "pageReadinessProbe"))
            assertNull(rig.store.value)
        } finally { owner.close() }
    }

    @Test fun currentOfficialMusicPageCookiesCompleteLoginWithoutAssumingLoginPath() {
        val rig = AppleMusicFixtureRig(null)
        val owner = LyricsSettingsBinding(RuntimeEnvironment.getApplication(), {}, {}, rig.connection, authorizationConfiguration = { com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization.configuration(it, "fixture-developer-token") })
        try {
            beginRealLogin(owner)
            val view = attachWithoutLoading(owner)
            val page = "https://music.apple.com/cn/browse"
            rig.cookies.byUrl[page] = loginCookies("/cn")
            view.webViewClient.onPageStarted(view, page, null)
            view.webViewClient.onPageFinished(view, page)
            assertFalse(owner.state.appleLoginOpen)
            assertEquals(AppleMusicConnection.Status.CONNECTED, rig.connection.refresh().status)
            assertTrue(rig.cookies.reads.contains(page))
            assertReleased(view)
        } finally { owner.close() }
    }

    private fun beginRealLogin(owner: LyricsSettingsBinding) {
        owner.start()
        owner.dispatch(AppleMusicConnectRequested)
        shadowOf(Looper.getMainLooper()).idle()
        assertFalse(owner.state.applePreparing)
        assertNotNull(field(owner, "activeAttempt"))
    }

    private fun loginCookies(path: String = "/") = listOf(
        AppleMusicConnection.Cookie("media-user-token", "synthetic-login", ".music.apple.com", path),
        AppleMusicConnection.Cookie("itua", "cn", ".apple.com", path),
    )

    private fun httpError() = WebResourceResponse("text/html", "UTF-8", 503, "Service Unavailable", emptyMap(),
        ByteArrayInputStream(ByteArray(0)))

    private fun beginLogin(binding: ContentBinding) {
        openSyntheticLogin(settingsOwner(binding))
        assertTrue(binding.state.value.lyricsProviderSettings.appleLoginOpen)
    }

    private fun openSyntheticLogin(owner: LyricsSettingsBinding) {
        val login = longField(owner, "loginEpoch")
        setField(owner, "activeAttempt", AppleMusicConnection.LoginAttempt(java.util.UUID.randomUUID().toString(), ""))
        setField(owner, "preparing", false)
        LyricsSettingsBinding::class.java.getDeclaredMethod("refreshState", java.lang.Boolean.TYPE).apply { isAccessible = true }
            .invoke(owner, false)
        assertTrue(owner.state.appleLoginOpen)
    }
    private fun setField(owner: LyricsSettingsBinding, name: String, value: Any?) {
        LyricsSettingsBinding::class.java.getDeclaredField(name).apply {
            isAccessible = true
            set(owner, value)
        }
    }

    private fun settingsOwner(binding: ContentBinding): LyricsSettingsBinding =
        ContentBinding::class.java.getDeclaredField("lyricsSettings").apply { isAccessible = true }
            .get(binding) as LyricsSettingsBinding

    /** Exercise the real WebView configuration without invoking createLoginWebView/loadUrl. */
    private fun attachWithoutLoading(owner: LyricsSettingsBinding): TrackingWebView {
        val attempt = checkNotNull(field(owner, "activeAttempt")) as AppleMusicConnection.LoginAttempt
        val view = TrackingWebView(RuntimeEnvironment.getApplication())
        LyricsSettingsBinding::class.java.getDeclaredField("loginWebView").apply {
            isAccessible = true
            set(owner, view)
        }
        LyricsSettingsBinding::class.java.getDeclaredMethod(
            "configureWebView", WebView::class.java, AppleMusicConnection.LoginAttempt::class.java,
            java.lang.Long.TYPE, java.lang.Long.TYPE,
        ).apply { isAccessible = true }.invoke(
            owner, view, attempt, longField(owner, "lifecycleEpoch"), longField(owner, "loginEpoch"),
        )
        assertNull(view.url)
        return view
    }

    private fun releaseContent(owner: LyricsSettingsBinding, lifecycle: Long, login: Long) {
        LyricsSettingsBinding::class.java.getDeclaredMethod(
            "releaseLoginContent", java.lang.Long.TYPE, java.lang.Long.TYPE,
        ).apply { isAccessible = true }.invoke(owner, lifecycle, login)
    }

    private fun pageProgress(owner: LyricsSettingsBinding): Int =
        (field(owner, "pageProgress\$delegate") as androidx.compose.runtime.MutableIntState).intValue

    private fun pageError(owner: LyricsSettingsBinding): String? =
        (field(owner, "pageError\$delegate") as androidx.compose.runtime.MutableState<*>).value as String?

    private fun field(owner: LyricsSettingsBinding, name: String): Any? =
        LyricsSettingsBinding::class.java.getDeclaredField(name).apply { isAccessible = true }.get(owner)

    private fun longField(owner: LyricsSettingsBinding, name: String): Long =
        LyricsSettingsBinding::class.java.getDeclaredField(name).apply { isAccessible = true }.getLong(owner)

    private fun deliverLateCallbacks(callbacks: WebViewClient, view: WebView) {
        callbacks.onPageFinished(view, AppleMusicConnection.LOGIN_URL)
        callbacks.onReceivedError(view, request, pageError)
        assertTrue(callbacks.onRenderProcessGone(view, object : RenderProcessGoneDetail() {
            override fun didCrash() = true
            override fun rendererPriorityAtExit() = 0
        }))
    }

    private fun assertReleased(view: TrackingWebView) {
        assertEquals(1, view.stopCalls)
        assertEquals(1, view.destroyCalls)
        assertNull(view.webChromeClient)
    }

    private class TrackingWebView(context: Context) : WebView(context) {
        var readiness = "\"ready\""
        var holdReadiness = false
        var readinessCallback: ValueCallback<String>? = null
        override fun evaluateJavascript(script: String, callback: ValueCallback<String>?) {
            if (holdReadiness) readinessCallback = callback else callback?.onReceiveValue(readiness)
        }
        var stopCalls = 0
        var destroyCalls = 0
        override fun stopLoading() { stopCalls++; super.stopLoading() }
        override fun destroy() { destroyCalls++; super.destroy() }
    }

    private fun requestFor(url: String, mainFrame: Boolean = true) = object : WebResourceRequest {
        override fun getUrl() = Uri.parse(url)
        override fun isForMainFrame() = mainFrame
        override fun isRedirect() = false
        override fun hasGesture() = false
        override fun getMethod() = "GET"
        override fun getRequestHeaders(): Map<String, String> = emptyMap()
    }
    private val request = requestFor(AppleMusicConnection.LOGIN_URL)
    private val pageError = FixtureWebResourceError()
}

@Implements(WebView::class)
class LoginWebViewShadow : ShadowWebView() {
    companion object {
        val loadedUrls = mutableListOf<String>()
        val loadedHeaders = mutableListOf<Map<String, String>>()
        var stopCalls = 0
        var destroyCalls = 0

        fun reset() {
            loadedUrls.clear()
            loadedHeaders.clear()
            stopCalls = 0
            destroyCalls = 0
        }
    }

    @Implementation
    protected override fun loadUrl(url: String) {
        loadedUrls += url
        loadedHeaders += emptyMap()
    }

    @Implementation
    protected override fun loadUrl(url: String, additionalHttpHeaders: MutableMap<String, String>?) {
        loadedUrls += url
        loadedHeaders += additionalHttpHeaders.orEmpty().toMap()
    }

    @Implementation
    fun stopLoading() {
        stopCalls++
    }

    @Implementation
    protected override fun destroy() {
        destroyCalls++
    }
}
