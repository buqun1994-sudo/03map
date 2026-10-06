package com.icar03.content.runtime

import android.annotation.SuppressLint
import android.content.Context
import android.net.Uri
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.webkit.SslErrorHandler
import android.webkit.WebChromeClient
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import android.webkit.RenderProcessGoneDetail
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.runtime.key
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.icar03.content.runtime.lyrics.AppleMusicConnection
import com.icar03.content.runtime.lyrics.ContentLyricsPreferences
import com.icar03.content.ui.AppleMusicConnectRequested
import com.icar03.content.ui.AppleMusicDisconnectRequested
import com.icar03.content.ui.AppleMusicLoginPanel
import com.icar03.content.ui.AppleMusicLoginDismissed
import com.icar03.content.ui.ContentEvent
import com.icar03.content.ui.LyricsPlatformSelected
import com.icar03.content.ui.LyricsProviderUiState
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import java.util.Locale

/**
 * Settings-session owner for provider preference and the official Apple Music login surface.
 * It owns only the UI session; source ordering and credential policy remain in existing facades.
 */
class LyricsSettingsBinding(
    context: Context,
    private val onChanged: () -> Unit,
    private val onFeedback: (String) -> Unit,
) : AutoCloseable {
    private val mainHandler = Handler(Looper.getMainLooper())
    private val appContext = context.applicationContext
    private val preferences = ContentLyricsPreferences(appContext)
    private val appleConnection by lazy(LazyThreadSafetyMode.NONE) { AppleMusicConnection(appContext) }

    private var currentState = LyricsProviderUiState()
    private var started = false
    private var closed = false
    private var scope: CoroutineScope? = null
    private var lifecycleEpoch = 0L
    private var loginEpoch = 0L
    private var preparing = false
    private var activeAttempt: AppleMusicConnection.LoginAttempt? = null
    private var pollJob: Job? = null
    private var loginWebView: WebView? = null
    private var pollErrorShown = false

    /** UI projection; it contains no cookies, token, or opaque attempt id. */
    val state: LyricsProviderUiState
        get() = currentState

    fun start() {
        check(!closed) { "LyricsSettingsBinding is closed" }
        if (started) return
        started = true
        val epoch = ++lifecycleEpoch
        val sessionScope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
        scope = sessionScope
        runCatching { appleConnection.refresh() }
        sessionScope.launch {
            preferences.revisionChanges.collectLatest {
                if (isCurrentLifecycle(epoch)) refreshState()
            }
        }
        sessionScope.launch {
            val changes = try {
                appleConnection.state
            } catch (_: Exception) {
                return@launch
            }
            try {
                changes.collectLatest {
                    if (isCurrentLifecycle(epoch)) refreshState()
                }
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (_: Exception) {
                // The facade remains the owner of credential/storage failures; keep the UI session alive.
            }
        }
        refreshState()
    }

    fun stop() {
        val wasActive = started || preparing || activeAttempt != null
        started = false
        lifecycleEpoch++
        loginEpoch++
        pollJob?.cancel()
        pollJob = null
        activeAttempt?.let(::cancelAttempt)
        activeAttempt = null
        preparing = false
        pollErrorShown = false
        destroyLoginWebView()
        scope?.cancel()
        scope = null
        if (wasActive) refreshState()
    }

    override fun close() {
        if (closed) return
        stop()
        closed = true
    }

    /** Returns true only for this binding's four settings events. */
    fun dispatch(event: ContentEvent): Boolean = when (event) {
        is LyricsPlatformSelected -> {
            val platform = platformForId(event.id)
            if (platform == null) {
                feedback("不支持的歌词平台")
            } else if (!started || closed) {
                // The parent may deliver a late event while the settings surface is leaving.
                Unit
            } else {
                runCatching { preferences.setPreferredPlatform(platform) }
                    .onFailure { feedback("歌词平台设置失败") }
                refreshState()
            }
            true
        }
        AppleMusicConnectRequested -> {
            beginAppleLogin()
            true
        }
        AppleMusicLoginDismissed -> {
            cancelAppleLogin()
            true
        }
        AppleMusicDisconnectRequested -> {
            disconnectApple()
            true
        }
        else -> false
    }

    /**
     * Renders the official login surface only while the current login request is open.
     * The WebView is created after [AppleMusicConnection.prepareLogin] returns its opaque attempt.
     */
    @Composable
    fun LoginContent(onEvent: (ContentEvent) -> Unit = { dispatch(it) }) {
        val snapshot = state
        if (!snapshot.appleLoginOpen || !started) return
        val attempt = activeAttempt
        val ownerLifecycle = lifecycleEpoch
        val ownerLogin = loginEpoch
        AppleMusicLoginPanel(
            preparing = snapshot.applePreparing,
            onDismiss = { onEvent(AppleMusicLoginDismissed) },
        ) {
            // During prepareLogin there is intentionally no WebView and therefore no URL load.
            if (attempt != null && !snapshot.applePreparing) {
                key(attempt) {
                    AndroidView(
                        factory = { context ->
                            createLoginWebView(context, attempt, ownerLifecycle, ownerLogin)
                        },
                        modifier = Modifier.fillMaxSize(),
                        update = {},
                        onRelease = ::releaseLoginWebView,
                    )
                }
            }
        }
    }

    private fun beginAppleLogin() {
        if (!started || closed) {
            feedback("歌词设置当前不可用")
            return
        }
        if (preparing || activeAttempt != null) return
        val ownerLifecycle = lifecycleEpoch
        val ownerLogin = ++loginEpoch
        pollErrorShown = false
        preparing = true
        refreshState()
        val accepted = runCatching {
            appleConnection.prepareLogin { attempt ->
                if (!mainHandler.post { onLoginReady(ownerLifecycle, ownerLogin, attempt) }) {
                    cancelAttempt(attempt)
                }
            }
        }.getOrElse { false }
        if (!accepted && isCurrentLogin(ownerLifecycle, ownerLogin)) {
            preparing = false
            activeAttempt = null
            refreshState()
            feedback("无法打开 Apple Music 官方登录页面")
        }
    }

    private fun onLoginReady(
        ownerLifecycle: Long,
        ownerLogin: Long,
        attempt: AppleMusicConnection.LoginAttempt,
    ) {
        if (!isCurrentLogin(ownerLifecycle, ownerLogin) || !preparing) {
            cancelAttempt(attempt)
            return
        }
        preparing = false
        activeAttempt = attempt
        refreshState()
        startPolling(ownerLifecycle, ownerLogin, attempt)
    }

    private fun startPolling(
        ownerLifecycle: Long,
        ownerLogin: Long,
        attempt: AppleMusicConnection.LoginAttempt,
    ) {
        pollJob?.cancel()
        pollJob = scope?.launch {
            while (isActive && isCurrentLogin(ownerLifecycle, ownerLogin, attempt)) {
                pollOfficialCookies(ownerLifecycle, ownerLogin, attempt)
                if (!isActive || !isCurrentLogin(ownerLifecycle, ownerLogin, attempt)) break
                delay(POLL_INTERVAL_MS)
            }
        }
    }

    private fun pollOfficialCookies(
        ownerLifecycle: Long,
        ownerLogin: Long,
        attempt: AppleMusicConnection.LoginAttempt,
    ) {
        if (!isCurrentLogin(ownerLifecycle, ownerLogin, attempt)) return
        val acceptance = try {
            appleConnection.pollOfficialLoginCookies(attempt)
        } catch (cancelled: CancellationException) {
            throw cancelled
        } catch (_: Exception) {
            if (!isCurrentLogin(ownerLifecycle, ownerLogin, attempt)) return
            if (!pollErrorShown) {
                pollErrorShown = true
                feedback("Apple Music 登录状态暂时无法检查")
            }
            return
        }
        when (acceptance) {
            AppleMusicConnection.CookieAcceptance.ACCEPTED -> finishAppleLogin(ownerLifecycle, ownerLogin, attempt)
            AppleMusicConnection.CookieAcceptance.STORAGE_FAILED -> failAppleLogin(
                ownerLifecycle,
                ownerLogin,
                attempt,
                "Apple Music 登录信息无法安全保存",
            )
            // The backend intentionally owns token, storefront, expiry, and stale-attempt policy.
            AppleMusicConnection.CookieAcceptance.WAITING_FOR_TOKEN,
            AppleMusicConnection.CookieAcceptance.WAITING_FOR_STOREFRONT,
            AppleMusicConnection.CookieAcceptance.INVALID_ORIGIN,
            AppleMusicConnection.CookieAcceptance.STALE_COOKIE,
            AppleMusicConnection.CookieAcceptance.EXPIRED_COOKIE,
            AppleMusicConnection.CookieAcceptance.STALE_ATTEMPT -> Unit
        }
    }

    private fun finishAppleLogin(
        ownerLifecycle: Long,
        ownerLogin: Long,
        attempt: AppleMusicConnection.LoginAttempt,
    ) {
        if (!isCurrentLogin(ownerLifecycle, ownerLogin, attempt)) return
        pollJob?.cancel()
        pollJob = null
        activeAttempt = null
        preparing = false
        destroyLoginWebView()
        refreshState()
        feedback("Apple Music 已连接")
    }

    private fun failAppleLogin(
        ownerLifecycle: Long,
        ownerLogin: Long,
        attempt: AppleMusicConnection.LoginAttempt,
        message: String,
    ) {
        if (!isCurrentLogin(ownerLifecycle, ownerLogin, attempt)) return
        cancelAppleLogin()
        feedback(message)
    }

    private fun cancelAppleLogin() {
        loginEpoch++
        pollJob?.cancel()
        pollJob = null
        activeAttempt?.let(::cancelAttempt)
        activeAttempt = null
        preparing = false
        pollErrorShown = false
        destroyLoginWebView()
        refreshState()
    }

    private fun disconnectApple() {
        if (!started || closed) return
        cancelAppleLogin()
        val ownerLifecycle = lifecycleEpoch
        val connection = runCatching { appleConnection }.getOrElse {
            feedback("Apple Music 当前无法断开")
            return
        }
        runCatching {
            connection.disconnect { success ->
                val session = scope ?: return@disconnect
                session.launch {
                    if (!isCurrentLifecycle(ownerLifecycle)) return@launch
                    refreshState()
                    if (!success) feedback("Apple Music 账号断开失败")
                }
            }
        }.onFailure { feedback("Apple Music 账号断开失败") }
    }

    private fun refreshState() {
        val appleState = runCatching { appleConnection.state.value }
            .getOrElse { AppleMusicConnection.State() }
        val preferred = runCatching { preferences.getPreferredPlatform() }
            .getOrDefault(ContentLyricsPreferences.Platform.AUTO)
        val next = LyricsProviderUiState(
            preferredPlatform = platformId(preferred),
            appleStatus = appleUiStatus(appleState),
            appleNeedsRenewal = appleState.needsRenewal,
            appleStorefront = appleState.storefront,
            appleLoginOpen = preparing || activeAttempt != null,
            applePreparing = preparing,
            available = started && !closed,
        )
        if (next == currentState) return
        currentState = next
        runCatching { onChanged() }
    }

    private fun createLoginWebView(
        context: Context,
        attempt: AppleMusicConnection.LoginAttempt,
        ownerLifecycle: Long,
        ownerLogin: Long,
    ): WebView = WebView(context).also { webView ->
        loginWebView = webView
        configureWebView(webView, attempt, ownerLifecycle, ownerLogin)
        // This is the first load and uses only the opaque attempt's official URL.
        webView.loadUrl(attempt.loginUrl)
    }

    @SuppressLint("SetJavaScriptEnabled")
    private fun configureWebView(
        webView: WebView,
        attempt: AppleMusicConnection.LoginAttempt,
        ownerLifecycle: Long,
        ownerLogin: Long,
    ) {
        webView.settings.apply {
            javaScriptEnabled = true
            domStorageEnabled = true
            allowFileAccess = false
            allowContentAccess = false
            javaScriptCanOpenWindowsAutomatically = false
            setSupportMultipleWindows(false)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                mixedContentMode = WebSettings.MIXED_CONTENT_NEVER_ALLOW
            }
        }
        webView.webViewClient = object : WebViewClient() {
            override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean =
                !isAllowedAppleUrl(request.url)

            @Suppress("OverridingDeprecatedMember")
            override fun shouldOverrideUrlLoading(view: WebView, url: String): Boolean =
                !isAllowedAppleUrl(Uri.parse(url))

            override fun onPageFinished(view: WebView, url: String) {
                if (isCurrentLogin(ownerLifecycle, ownerLogin, attempt) && isAllowedAppleUrl(Uri.parse(url))) {
                    // Page completion is an additional trigger; the bounded timer handles SPA pages.
                    pollOfficialCookies(ownerLifecycle, ownerLogin, attempt)
                }
            }

            override fun onReceivedSslError(view: WebView, handler: SslErrorHandler, error: android.net.http.SslError) {
                handler.cancel()
                if (isCurrentLogin(ownerLifecycle, ownerLogin, attempt)) {
                    feedback("Apple Music 登录安全连接失败")
                }
            }

            override fun onReceivedError(view: WebView, request: WebResourceRequest, error: WebResourceError) {
                if (request.isForMainFrame && isCurrentLogin(ownerLifecycle, ownerLogin, attempt)) {
                    feedback("Apple Music 官方登录页面加载失败")
                }
            }

            override fun onRenderProcessGone(view: WebView, detail: RenderProcessGoneDetail): Boolean {
                if (isCurrentLogin(ownerLifecycle, ownerLogin, attempt)) {
                    failAppleLogin(ownerLifecycle, ownerLogin, attempt, "Apple Music 登录页面已停止")
                }
                return true
            }
        }
        webView.webChromeClient = WebChromeClient()
    }

    private fun isAllowedAppleUrl(uri: Uri): Boolean {
        if (!uri.scheme.equals("https", ignoreCase = true)) return false
        if (uri.port != -1 && uri.port != 443) return false
        val host = uri.host?.lowercase(Locale.ROOT) ?: return false
        return host == "apple.com" || host.endsWith(".apple.com")
    }

    private fun releaseLoginWebView(view: WebView) {
        if (loginWebView !== view) return
        loginWebView = null
        view.stopLoading()
        view.webChromeClient = null
        view.webViewClient = WebViewClient()
        view.destroy()
    }

    private fun destroyLoginWebView() {
        loginWebView?.let(::releaseLoginWebView)
    }

    private fun cancelAttempt(attempt: AppleMusicConnection.LoginAttempt) {
        runCatching { appleConnection.cancelLogin(attempt) }
    }

    private fun isCurrentLifecycle(epoch: Long): Boolean = started && !closed && lifecycleEpoch == epoch

    private fun isCurrentLogin(
        ownerLifecycle: Long,
        ownerLogin: Long,
        attempt: AppleMusicConnection.LoginAttempt? = null,
    ): Boolean = isCurrentLifecycle(ownerLifecycle) && loginEpoch == ownerLogin &&
        (attempt == null || activeAttempt === attempt)

    private fun feedback(message: String) {
        if (message.isBlank()) return
        runCatching { onFeedback(message) }
    }

    private companion object {
        const val POLL_INTERVAL_MS = 750L

        fun platformForId(id: String): ContentLyricsPreferences.Platform? = when (id.trim().lowercase(Locale.ROOT)) {
            "auto" -> ContentLyricsPreferences.Platform.AUTO
            "lrclib" -> ContentLyricsPreferences.Platform.LRCLIB
            "qq" -> ContentLyricsPreferences.Platform.QQ
            "netease" -> ContentLyricsPreferences.Platform.NETEASE
            "kugou" -> ContentLyricsPreferences.Platform.KUGOU
            "kuwo" -> ContentLyricsPreferences.Platform.KUWO
            "migu" -> ContentLyricsPreferences.Platform.MIGU
            "soda" -> ContentLyricsPreferences.Platform.SODA
            "applemusic" -> ContentLyricsPreferences.Platform.APPLE_MUSIC
            else -> null
        }

        // Provider ids predate this UI and include Chinese names; never expose them as chip ids.
        fun platformId(platform: ContentLyricsPreferences.Platform): String = when (platform) {
            ContentLyricsPreferences.Platform.AUTO -> "auto"
            ContentLyricsPreferences.Platform.LRCLIB -> "lrclib"
            ContentLyricsPreferences.Platform.QQ -> "qq"
            ContentLyricsPreferences.Platform.NETEASE -> "netease"
            ContentLyricsPreferences.Platform.KUGOU -> "kugou"
            ContentLyricsPreferences.Platform.KUWO -> "kuwo"
            ContentLyricsPreferences.Platform.MIGU -> "migu"
            ContentLyricsPreferences.Platform.SODA -> "soda"
            ContentLyricsPreferences.Platform.APPLE_MUSIC -> "applemusic"
        }

        fun appleUiStatus(state: AppleMusicConnection.State): String = when {
            state.isConnecting && state.status == AppleMusicConnection.Status.DISCONNECTED -> "connecting"
            else -> state.status.name.lowercase(Locale.ROOT)
        }
    }
}
