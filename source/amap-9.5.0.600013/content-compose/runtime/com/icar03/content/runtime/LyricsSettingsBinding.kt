package com.icar03.content.runtime

import android.annotation.SuppressLint
import android.content.Context
import android.net.Uri
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.webkit.CookieManager
import android.webkit.ConsoleMessage
import android.webkit.SslErrorHandler
import android.webkit.WebChromeClient
import android.webkit.WebResourceError
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import android.webkit.WebSettings
import android.webkit.WebView
import android.webkit.WebViewClient
import android.webkit.RenderProcessGoneDetail
import android.widget.ProgressBar
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.ui.platform.LocalView
import com.icar03.content.ui.LocalContentClickSound
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.text.BasicText
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.key
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.icar03.content.runtime.lyrics.AppleMusicConnection
import com.icar03.content.runtime.lyrics.AppleMusicAuthBroker
import com.icar03.content.runtime.lyrics.AppleMusicWebAuthorization
import com.icar03.content.runtime.lyrics.AppleMusicAuthorizationCompatAssets
import com.icar03.content.runtime.lyrics.LyricsCancellationSignal
import com.icar03.content.runtime.lyrics.ContentLyricsPreferences
import com.icar03.content.ui.AppleMusicConnectRequested
import com.icar03.content.ui.AppleMusicDisconnectRequested
import com.icar03.content.ui.AppleMusicLoginPanel
import com.icar03.content.ui.AppleMusicLoginDismissed
import com.icar03.content.ui.ContentEvent
import com.icar03.content.ui.LyricsPlatformSelected
import com.icar03.content.ui.LyricsProviderUiState
import com.icar03.content.ui.LocalSettingsDesign
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
import kotlinx.coroutines.withContext
import java.util.Locale

/**
 * Settings-session owner for provider preference and the official Apple Music login surface.
 * It owns only the UI session; source ordering and credential policy remain in existing facades.
 */
class LyricsSettingsBinding internal constructor(
    context: Context,
    private val onChanged: () -> Unit,
    private val onFeedback: (String) -> Unit,
    connection: AppleMusicConnection?,
    private val authorizationConfiguration: (suspend (AppleMusicConnection.LoginAttempt) -> AppleMusicWebAuthorization.Configuration)? = null,
) : AutoCloseable {
    constructor(context: Context, onChanged: () -> Unit, onFeedback: (String) -> Unit) :
        this(context, onChanged, onFeedback, null)

    private val mainHandler = Handler(Looper.getMainLooper())
    private val appContext = context.applicationContext
    private val preferences = ContentLyricsPreferences(appContext)
    private val appleConnection by lazy(LazyThreadSafetyMode.NONE) { connection ?: AppleMusicConnection(appContext) }

    private var currentState = LyricsProviderUiState()
    private var started = false
    private var closed = false
    private var scope: CoroutineScope? = null
    private var lifecycleEpoch = 0L
    private var loginEpoch = 0L
    private var preparing = false
    private var activeAttempt: AppleMusicConnection.LoginAttempt? = null
    private var pollJob: Job? = null
    private var authorizationJob: Job? = null
    private var authorizationCancellation: LyricsCancellationSignal? = null
    private var loginWebView: WebView? = null
    private var pageLoadTimeout: Runnable? = null
    private var currentMusicPageUrl = AppleMusicConnection.LOGIN_URL
    // Readiness requires visible interactions, rather than a finished document containing a logo.
    private var initialPageFinished = false
    private var pageReadinessProbe: Runnable? = null
    private var documentRevision = 0L
    private var pollErrorShown = false
    private var pageProgress by mutableIntStateOf(0)
    private var pageError by mutableStateOf<String?>(null)
    private var loginContentRevision by mutableIntStateOf(0)

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
        resetLoginPage()
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
     * Supplies the official webpage to the shared login window; its parent owns window geometry.
     * The WebView is created after [AppleMusicConnection.prepareLogin] returns its opaque attempt.
     */
    @Composable
    fun LoginContent(onEvent: (ContentEvent) -> Unit = { dispatch(it) }) {
        @Suppress("UNUSED_VARIABLE")
        val _loginContentRevision = loginContentRevision
        val snapshot = state
        if (!snapshot.appleLoginOpen || !started) return
        val attempt = activeAttempt
        val ownerLifecycle = lifecycleEpoch
        val ownerLogin = loginEpoch
        val design = LocalSettingsDesign.current
        val view = LocalView.current
        val clickSound = LocalContentClickSound.current
        DisposableEffect(ownerLifecycle, ownerLogin) {
            // A removed window must not leave a cookie poller running without its login surface.
            onDispose { releaseLoginContent(ownerLifecycle, ownerLogin) }
        }
        AppleMusicLoginPanel(
            preparing = snapshot.applePreparing,
            onDismiss = { onEvent(AppleMusicLoginDismissed) },
        ) {
            Box(Modifier.fillMaxSize().testTag("settings-apple-login-web-content")) {
                // During prepareLogin there is intentionally no WebView and therefore no URL load.
                if (attempt != null && !snapshot.applePreparing) {
                    key(attempt) {
                        AndroidView(
                            factory = { context ->
                                createLoginWebView(context, attempt, ownerLifecycle, ownerLogin)
                            },
                            modifier = Modifier.fillMaxSize().testTag("settings-apple-login-webview"),
                            update = {},
                            onRelease = ::releaseLoginWebView,
                        )
                    }
                }
                val error = pageError
                if (error != null) {
                    Box(
                        Modifier.fillMaxSize().background(design.card).padding(24.dp)
                            .testTag("settings-apple-login-web-error"),
                        contentAlignment = Alignment.Center,
                    ) {
                        Column(horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.spacedBy(16.dp)) {
                            BasicText(error, style = design.supportingStyle.copy(
                                color = design.text, textAlign = TextAlign.Center,
                            ))
                            BasicText("重试", modifier = Modifier
                                .testTag("settings-apple-login-retry")
                                .clickable {
                                    if (isCurrentLogin(ownerLifecycle, ownerLogin) && pageError != null &&
                                        !preparing && activeAttempt == null) {
                                        clickSound(view)
                                        beginAppleLogin()
                                    }
                                }, style = design.supportingStyle.copy(color = design.text))
                        }
                    }
                } else if (!snapshot.applePreparing && pageProgress < 100) {
                    AndroidView(
                        factory = { context ->
                            ProgressBar(context, null, android.R.attr.progressBarStyleHorizontal).apply { max = 100 }
                        },
                        modifier = Modifier.align(Alignment.TopCenter).fillMaxWidth().height(4.dp)
                            .testTag("settings-apple-login-web-progress"),
                        update = { progressBar ->
                            progressBar.isIndeterminate = pageProgress == 0
                            progressBar.progress = pageProgress
                        },
                    )
                }
            }
        }
    }

    private fun releaseLoginContent(ownerLifecycle: Long, ownerLogin: Long) {
        if (isCurrentLogin(ownerLifecycle, ownerLogin) && (preparing || activeAttempt != null || pageError != null)) {
            cancelAppleLogin()
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
        resetLoginPage()
        preparing = true
        refreshState()
        val attempt = runCatching {
            appleConnection.prepareLoginAttempt { result ->
                if (!mainHandler.post { onPreparationResult(ownerLifecycle, ownerLogin, result) }) {
                    cancelAttempt(result.attempt)
                }
            }
        }.getOrNull()
        if (isCurrentLogin(ownerLifecycle, ownerLogin)) {
            activeAttempt = attempt
            if (attempt == null) showLoginPageError("无法准备 Apple Music 官方登录页面，请重试")
            else refreshState()
        } else if (attempt != null) {
            cancelAttempt(attempt)
        }
    }

    private fun onPreparationResult(
        ownerLifecycle: Long,
        ownerLogin: Long,
        result: AppleMusicConnection.PreparationResult,
    ) {
        val attempt = result.attempt
        if (!isCurrentLogin(ownerLifecycle, ownerLogin, attempt) || !preparing) {
            if (result is AppleMusicConnection.PreparationResult.Ready) cancelAttempt(attempt)
            return
        }
        when (result) {
            is AppleMusicConnection.PreparationResult.Ready -> {
                preparing = false
                refreshState(force = true)
                startPolling(ownerLifecycle, ownerLogin, attempt)
            }
            is AppleMusicConnection.PreparationResult.Failed -> showLoginPageError(when (result.reason) {
                AppleMusicConnection.PreparationFailure.COOKIE_CLEAR_FAILED -> "无法清理 Apple Music 登录会话，请重试"
                AppleMusicConnection.PreparationFailure.CANCELLED -> "Apple Music 登录准备已取消，请重试"
            })
        }
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
            appleConnection.pollOfficialLoginCookies(attempt, currentMusicPageUrl)
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
            AppleMusicConnection.CookieAcceptance.WAITING_FOR_TOKEN,
            AppleMusicConnection.CookieAcceptance.WAITING_FOR_STOREFRONT -> Unit
            AppleMusicConnection.CookieAcceptance.INVALID_ORIGIN,
            AppleMusicConnection.CookieAcceptance.STALE_COOKIE,
            AppleMusicConnection.CookieAcceptance.EXPIRED_COOKIE,
            AppleMusicConnection.CookieAcceptance.STALE_ATTEMPT -> failAppleLogin(
                ownerLifecycle, ownerLogin, attempt, "Apple Music 登录会话已失效，请重试",
            )
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
        resetLoginPage()
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
        showLoginPageError(message)
    }

    private fun cancelAppleLogin() {
        loginEpoch++
        pollJob?.cancel()
        pollJob = null
        activeAttempt?.let(::cancelAttempt)
        activeAttempt = null
        preparing = false
        pollErrorShown = false
        resetLoginPage()
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

    private fun refreshState(force: Boolean = false) {
        val appleState = runCatching { appleConnection.state.value }
            .getOrElse { AppleMusicConnection.State() }
        val preferred = runCatching { preferences.getPreferredPlatform() }
            .getOrDefault(ContentLyricsPreferences.Platform.AUTO)
        val next = LyricsProviderUiState(
            preferredPlatform = platformId(preferred),
            appleStatus = appleUiStatus(appleState),
            appleNeedsRenewal = appleState.needsRenewal,
            appleStorefront = appleState.storefront,
            appleLoginOpen = preparing || activeAttempt != null || pageError != null,
            applePreparing = preparing,
            available = started && !closed,
        )
        if (!force && next == currentState) return
        currentState = next
        loginContentRevision++
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
        val cancellation = LyricsCancellationSignal()
        authorizationCancellation = cancellation
        authorizationJob = scope?.launch {
            try {
                val configuration = authorizationConfiguration?.invoke(attempt) ?: withContext(Dispatchers.IO) {
                    val deadline = System.nanoTime() + 15_000_000_000L
                    val developer = AppleMusicAuthBroker.get(appContext).ensureDeveloper(deadline, cancellation)
                    AppleMusicWebAuthorization.configuration(attempt, developer.token)
                }
                if (isCurrentLoginView(webView, ownerLifecycle, ownerLogin, attempt)) {
                    webView.loadUrl(configuration.startUrl, mapOf("Referer" to configuration.referrerUrl))
                    webView.requestFocus()
                }
            } catch (cancelled: CancellationException) {
                throw cancelled
            } catch (_: Exception) {
                failAppleLogin(ownerLifecycle, ownerLogin, attempt, "无法准备 Apple Music 官方授权，请检查网络后重试")
            } finally {
                if (authorizationCancellation === cancellation) authorizationCancellation = null
            }
        }
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
            builtInZoomControls = false
            displayZoomControls = false
            loadsImagesAutomatically = true
            val userAgent = userAgentString.orEmpty()
            if (userAgent.contains("; wv", ignoreCase = true)) {
                userAgentString = userAgent.replace("; wv", "", ignoreCase = true)
            }
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                mixedContentMode = WebSettings.MIXED_CONTENT_NEVER_ALLOW
            }
        }
        CookieManager.getInstance().apply {
            setAcceptCookie(true)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                setAcceptThirdPartyCookies(webView, true)
            }
        }
        webView.isFocusable = true
        webView.isFocusableInTouchMode = true
        webView.webViewClient = object : WebViewClient() {
            override fun shouldInterceptRequest(view: WebView, request: WebResourceRequest): WebResourceResponse? =
                AppleMusicAuthorizationCompatAssets.response(appContext, request)

            override fun shouldOverrideUrlLoading(view: WebView, request: WebResourceRequest): Boolean {
                if (!isCurrentLoginView(view, ownerLifecycle, ownerLogin, attempt)) return true
                if (request.isForMainFrame && acceptAuthorizationCallback(request.url.toString(), ownerLifecycle, ownerLogin, attempt)) return true
                val blocked = !isAllowedAppleUrl(request.url)
                if (blocked && request.isForMainFrame) showLoginPageError("Apple Music 登录页面无法继续跳转，请重试")
                return blocked
            }

            @Suppress("OverridingDeprecatedMember")
            override fun shouldOverrideUrlLoading(view: WebView, url: String): Boolean {
                if (!isCurrentLoginView(view, ownerLifecycle, ownerLogin, attempt)) return true
                if (acceptAuthorizationCallback(url, ownerLifecycle, ownerLogin, attempt)) return true
                val blocked = !isAllowedAppleUrl(Uri.parse(url))
                if (blocked) showLoginPageError("Apple Music 登录页面无法继续跳转，请重试")
                return blocked
            }

            override fun onPageStarted(view: WebView, url: String, favicon: android.graphics.Bitmap?) {
                if (isCurrentLoginView(view, ownerLifecycle, ownerLogin, attempt) &&
                    acceptAuthorizationCallback(url, ownerLifecycle, ownerLogin, attempt)) return
                if (isCurrentLoginView(view, ownerLifecycle, ownerLogin, attempt) && isAllowedAppleUrl(Uri.parse(url))) {
                    pageProgress = 0
                    initialPageFinished = false
                    documentRevision++
                    cancelPageReadinessProbe()
                    armPageLoadTimeout(view, attempt, ownerLifecycle, ownerLogin)
                    updateMusicPageUrl(url)
                }
            }

            override fun onPageFinished(view: WebView, url: String) {
                if (isCurrentLoginView(view, ownerLifecycle, ownerLogin, attempt) && isAllowedAppleUrl(Uri.parse(url))) {
                    updateMusicPageUrl(url)
                    pollOfficialCookies(ownerLifecycle, ownerLogin, attempt)
                    if (isCurrentLoginView(view, ownerLifecycle, ownerLogin, attempt) && !initialPageFinished) {
                        pageProgress = maxOf(pageProgress, 95).coerceAtMost(99)
                        probeLoginPageReadiness(view, attempt, ownerLifecycle, ownerLogin, documentRevision)
                    }
                }
            }

            override fun onReceivedSslError(view: WebView, handler: SslErrorHandler, error: android.net.http.SslError) {
                handler.cancel()
                if (isCurrentLoginView(view, ownerLifecycle, ownerLogin, attempt)) {
                    showLoginPageError("Apple Music 登录安全连接失败，请重试")
                }
            }

            override fun onReceivedError(view: WebView, request: WebResourceRequest, error: WebResourceError) {
                if (request.isForMainFrame && isCurrentLoginView(view, ownerLifecycle, ownerLogin, attempt)) {
                    showLoginPageError("Apple Music 官方登录页面加载失败，请重试")
                }
            }

            override fun onReceivedHttpError(view: WebView, request: WebResourceRequest, response: WebResourceResponse) {
                if (request.isForMainFrame && isCurrentLoginView(view, ownerLifecycle, ownerLogin, attempt)) {
                    showLoginPageError("Apple Music 官方登录页面返回 HTTP ${response.statusCode}，请重试")
                }
            }

            override fun onRenderProcessGone(view: WebView, detail: RenderProcessGoneDetail): Boolean {
                if (isCurrentLoginView(view, ownerLifecycle, ownerLogin, attempt)) {
                    failAppleLogin(ownerLifecycle, ownerLogin, attempt, "Apple Music 登录页面已停止，请重试")
                }
                return true
            }
        }
        webView.webChromeClient = object : WebChromeClient() {
            override fun onConsoleMessage(message: ConsoleMessage): Boolean {
                if (isCurrentLoginView(webView, ownerLifecycle, ownerLogin, attempt) &&
                    message.messageLevel() == ConsoleMessage.MessageLevel.ERROR &&
                    (isAllowedAppleUrl(Uri.parse(message.sourceId().orEmpty())) ||
                        Uri.parse(message.sourceId().orEmpty()).let { it.scheme == "https" && it.host == "appleid.cdn-apple.com" }) &&
                    message.message().orEmpty().contains("SyntaxError", ignoreCase = true)) {
                    // Do not log console payloads, page text, URL queries or credentials.
                    showLoginPageError(LOGIN_SCRIPT_FAILURE_MESSAGE)
                    return true
                }
                return false
            }

            override fun onProgressChanged(view: WebView, newProgress: Int) {
                if (isCurrentLoginView(view, ownerLifecycle, ownerLogin, attempt)) {
                    pageProgress = newProgress.coerceIn(0, if (initialPageFinished) 100 else 99)
                }
            }
        }
        armPageLoadTimeout(webView, attempt, ownerLifecycle, ownerLogin)
    }

    private fun armPageLoadTimeout(
        view: WebView, attempt: AppleMusicConnection.LoginAttempt, lifecycle: Long, login: Long,
    ) {
        if (initialPageFinished || pageLoadTimeout != null) return
        val timeout = Runnable {
            if (!initialPageFinished && isCurrentLoginView(view, lifecycle, login, attempt)) {
                showLoginPageError("Apple Music 官方登录页面加载超时，请检查网络后重试")
            }
        }
        pageLoadTimeout = timeout
        mainHandler.postDelayed(timeout, INITIAL_PAGE_TIMEOUT_MS)
    }

    private fun probeLoginPageReadiness(
        view: WebView, attempt: AppleMusicConnection.LoginAttempt,
        lifecycle: Long, login: Long, document: Long,
    ) {
        cancelPageReadinessProbe()
        if (initialPageFinished || documentRevision != document ||
            !isCurrentLoginView(view, lifecycle, login, attempt)) return
        view.evaluateJavascript(LOGIN_READINESS_SCRIPT) { raw ->
            if (initialPageFinished || documentRevision != document ||
                !isCurrentLoginView(view, lifecycle, login, attempt)) return@evaluateJavascript
            when (raw) {
                "\"ready\"" -> {
                    initialPageFinished = true
                    pageProgress = 100
                    cancelPageLoadTimeout()
                }
                else -> {
                    val probe = Runnable { probeLoginPageReadiness(view, attempt, lifecycle, login, document) }
                    pageReadinessProbe = probe
                    mainHandler.postDelayed(probe, PAGE_READINESS_INTERVAL_MS)
                }
            }
        }
    }

    private fun acceptAuthorizationCallback(
        value: String, ownerLifecycle: Long, ownerLogin: Long, attempt: AppleMusicConnection.LoginAttempt,
    ): Boolean {
        val uri = Uri.parse(value)
        if (!uri.host.equals("music.apple.com", true) || !uri.path.orEmpty().startsWith("/__icar03_authorization/")) return false
        when (runCatching { appleConnection.acceptAuthorizationCallback(attempt, value) }.getOrNull()) {
            AppleMusicConnection.CookieAcceptance.ACCEPTED -> finishAppleLogin(ownerLifecycle, ownerLogin, attempt)
            AppleMusicConnection.CookieAcceptance.STORAGE_FAILED ->
                failAppleLogin(ownerLifecycle, ownerLogin, attempt, "Apple Music 授权保存失败，请重试")
            else -> failAppleLogin(ownerLifecycle, ownerLogin, attempt, "Apple Music 授权结果已失效，请重试")
        }
        return true
    }

    private fun cancelPageReadinessProbe() {
        pageReadinessProbe?.let(mainHandler::removeCallbacks)
        pageReadinessProbe = null
    }

    private fun cancelPageLoadTimeout() {
        pageLoadTimeout?.let(mainHandler::removeCallbacks)
        pageLoadTimeout = null
    }

    private fun resetLoginPage() {
        cancelPageLoadTimeout()
        cancelPageReadinessProbe()
        documentRevision++
        currentMusicPageUrl = AppleMusicConnection.LOGIN_URL
        initialPageFinished = false
        pageProgress = 0
        pageError = null
    }

    private fun showLoginPageError(message: String) {
        cancelPageLoadTimeout()
        cancelPageReadinessProbe()
        pollJob?.cancel()
        pollJob = null
        activeAttempt?.let(::cancelAttempt)
        activeAttempt = null
        preparing = false
        pageProgress = 100
        pageError = message
        destroyLoginWebView()
        refreshState(force = true)
        feedback(message)
    }

    private fun updateMusicPageUrl(value: String) {
        val uri = Uri.parse(value)
        if (isAllowedAppleUrl(uri) && uri.host.equals("music.apple.com", true)) currentMusicPageUrl = value
    }

    private fun isCurrentLoginView(view: WebView, lifecycle: Long, login: Long,
        attempt: AppleMusicConnection.LoginAttempt): Boolean = loginWebView === view && pageError == null &&
        !preparing && isCurrentLogin(lifecycle, login, attempt)

    private fun isAllowedAppleUrl(uri: Uri): Boolean {
        if (!uri.scheme.equals("https", ignoreCase = true) || uri.encodedUserInfo != null) return false
        if (uri.port != -1 && uri.port != 443) return false
        val host = uri.host?.lowercase(Locale.ROOT) ?: return false
        return host == "apple.com" || host.endsWith(".apple.com")
    }

    private fun releaseLoginWebView(view: WebView) {
        if (loginWebView !== view) return
        cancelPageLoadTimeout()
        cancelPageReadinessProbe()
        authorizationCancellation?.cancel()
        authorizationCancellation = null
        authorizationJob?.cancel()
        authorizationJob = null
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
        const val INITIAL_PAGE_TIMEOUT_MS = 30_000L
        private const val PAGE_READINESS_INTERVAL_MS = 750L
        private const val LOGIN_SCRIPT_FAILURE_MESSAGE = "Apple Music 官方授权页面暂时无法运行，请重试"
        // ES5 outer syntax deliberately runs on the old engine. Inspect presence/geometry only.
        private val LOGIN_READINESS_SCRIPT = """
            (function() {
                function interactive(doc, depth) {
                    var nodes = doc.querySelectorAll('button, input:not([type="hidden"])');
                    for (var i = 0; i < nodes.length; i++) {
                        var node = nodes[i], rect = node.getBoundingClientRect();
                        var style = doc.defaultView.getComputedStyle(node);
                        if (rect.width > 0 && rect.height > 0 && style.display !== 'none' &&
                            style.visibility !== 'hidden' && !node.disabled) return true;
                    }
                    if (depth < 2) {
                        var frames = doc.querySelectorAll('iframe');
                        for (var j = 0; j < frames.length; j++) {
                            try {
                                var frame = frames[j], bounds = frame.getBoundingClientRect();
                                if (bounds.width > 0 && bounds.height > 0 && frame.contentDocument &&
                                    interactive(frame.contentDocument, depth + 1)) return true;
                            } catch (e) { /* Cross-origin frames remain opaque. */ }
                        }
                    }
                    return false;
                }
                return interactive(document, 0) ? 'ready' : 'loading';
            })();
        """.trimIndent()

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
