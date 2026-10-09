package com.icar03.content.ui

import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.selection.selectableGroup
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AutoAwesome
import androidx.compose.material.icons.filled.Close
import androidx.compose.material3.Button
import androidx.compose.material3.Icon
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.ui.text.rememberTextMeasurer
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.Immutable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.role
import androidx.compose.ui.semantics.selected
import androidx.compose.ui.semantics.stateDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.dp
import java.util.Locale
import android.view.View
import android.app.Activity
import android.content.Context
import android.view.ContextThemeWrapper
import android.content.res.Configuration
import android.content.res.Resources
import android.util.DisplayMetrics
import android.view.Gravity
import android.view.WindowManager
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.HorizontalDivider
import android.view.ViewGroup
import android.view.Window
import androidx.activity.ComponentDialog
import androidx.activity.addCallback
import androidx.compose.runtime.CompositionContext
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.rememberCompositionContext
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.ui.platform.AbstractComposeView
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.window.DialogWindowProvider
import androidx.compose.ui.semantics.dialog
import androidx.core.view.WindowCompat
import androidx.lifecycle.findViewTreeLifecycleOwner
import androidx.lifecycle.findViewTreeViewModelStoreOwner
import androidx.lifecycle.setViewTreeLifecycleOwner
import androidx.lifecycle.setViewTreeViewModelStoreOwner
import androidx.savedstate.findViewTreeSavedStateRegistryOwner
import androidx.savedstate.setViewTreeSavedStateRegistryOwner

/** Stable settings projection; it contains no runtime or credential details. */
@Immutable
data class LyricsProviderUiState(
    val preferredPlatform: String = "auto",
    val appleStatus: String = "disconnected",
    val appleNeedsRenewal: Boolean = false,
    val appleStorefront: String = "",
    val appleLoginOpen: Boolean = false,
    val applePreparing: Boolean = false,
    val available: Boolean = false,
)

/** Provider selection intents are leaves so the existing ContentBinding remains the owner. */
data class LyricsPlatformSelected(val id: String) : ContentEvent
data object AppleMusicConnectRequested : ContentEvent
data object AppleMusicLoginDismissed : ContentEvent
data object AppleMusicDisconnectRequested : ContentEvent

private data class LyricsProviderOption(
    val id: String,
    val label: String,
    val iconRes: Int? = null,
)

private val lyricsProviderOptions = listOf(
    LyricsProviderOption("auto", "自动"),
    LyricsProviderOption("lrclib", "LRCLIB", R.drawable.content_provider_lrclib),
    LyricsProviderOption("qq", "QQ音乐", R.drawable.content_provider_qq),
    LyricsProviderOption("netease", "网易云音乐", R.drawable.content_provider_netease),
    LyricsProviderOption("kugou", "酷狗音乐", R.drawable.content_provider_kugou),
    LyricsProviderOption("kuwo", "酷我音乐", R.drawable.content_provider_kuwo),
    LyricsProviderOption("migu", "咪咕音乐", R.drawable.content_provider_migu),
    LyricsProviderOption("soda", "汽水音乐", R.drawable.content_provider_soda),
    LyricsProviderOption("applemusic", "Apple Music", R.drawable.content_provider_applemusic),
)

/**
 * Standard Material3 provider preference section. The selection is single-owner: tapping the
 * already selected chip is intentionally a no-op and can never toggle the preference off.
 */
@Composable
fun LyricsProviderSettings(
    state: LyricsProviderUiState,
    onEvent: (ContentEvent) -> Unit,
    enabled: Boolean,
    modifier: Modifier = Modifier,
    loginEnabled: Boolean = enabled,
) {
    val design = LocalSettingsDesign.current
    val selectedOption = lyricsProviderOptions.firstOrNull { it.id == state.preferredPlatform } ?: lyricsProviderOptions.first()
    val selectionEnabled = enabled && state.available
    val textMeasurer = rememberTextMeasurer()
    val density = LocalDensity.current
    val providerStyle = design.providerOptionStyle
    val groupWidth = remember(textMeasurer, density, providerStyle, design.providerIconSize, design.smallGap) {
        with(density) {
            lyricsProviderOptions.maxOf {
                textMeasurer.measure(it.label, style = providerStyle, maxLines = 1, softWrap = false).size.width
            }.toDp()
        } + design.providerIconSize + design.smallGap
    }
    Column(modifier.fillMaxWidth(), verticalArrangement = Arrangement.spacedBy(design.itemGap)) {
        Text("歌词平台", style = design.optionStyle, color = design.text,
            modifier = Modifier.testTag("settings-label-歌曲平台倾向").semantics { stateDescription = "歌词平台·${selectedOption.label}" })
        BoxWithConstraints(Modifier.fillMaxWidth().selectableGroup()) {
            val minimumChoiceWidth = groupWidth + design.smallGap * 2
            val columns = if (maxWidth >= minimumChoiceWidth * 2 + design.itemGap) 2 else 1
            Column(verticalArrangement = Arrangement.spacedBy(design.itemGap)) {
                lyricsProviderOptions.chunked(columns).forEach { rowOptions ->
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(design.itemGap)) {
                        rowOptions.forEach { option ->
                            ProviderChoice(option, option.id == selectedOption.id, selectionEnabled, groupWidth,
                                onSelect = { onEvent(LyricsPlatformSelected(option.id)) }, modifier = Modifier.weight(1f))
                        }
                        if (rowOptions.size < columns) Spacer(Modifier.weight(1f))
                    }
                }
            }
        }
        SettingsDivider()
        if (selectedOption.id == "applemusic") {
            AppleMusicStatusSection(state, loginEnabled && state.available, onEvent)
        }
    }
}

@Composable
private fun ProviderChoice(
    option: LyricsProviderOption, selected: Boolean, enabled: Boolean,
    groupWidth: androidx.compose.ui.unit.Dp, onSelect: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val design = LocalSettingsDesign.current
    val interactions = remember { androidx.compose.foundation.interaction.MutableInteractionSource() }
    val shape = design.segmentShape
    Box(
        modifier.heightIn(min = 56.dp).testTag("settings-platform-${option.id}")
            .clip(shape)
            .background(interfaceSurfaceColor((if (selected) design.selected else design.card).copy(alpha = if (enabled) 1f else .38f), design.surfaceOpacity))
            .clickable(interactionSource = interactions, indication = null, enabled = enabled && !selected,
                role = Role.RadioButton, onClick = { if (enabled && !selected) onSelect() })
            .semantics {
                role = Role.RadioButton
                this.selected = selected
                stateDescription = if (selected) "已选中" else "未选中"
            },
        contentAlignment = Alignment.Center,
    ) {
        Row(
            Modifier.width(groupWidth).padding(vertical = design.smallGap)
                .testTag("settings-platform-${option.id}-group"),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(design.smallGap),
        ) {
            val iconModifier = Modifier.size(design.providerIconSize).testTag("settings-platform-${option.id}-icon")
            if (option.iconRes == null) Icon(Icons.Default.AutoAwesome, null, iconModifier,
                tint = if (selected) design.selectedText else design.text)
            else Image(painterResource(option.iconRes), null, iconModifier)
            Text(option.label, style = design.providerOptionStyle,
                modifier = Modifier.testTag("settings-platform-${option.id}-label"),
                color = (if (selected) design.selectedText else design.text).copy(alpha = if (enabled) 1f else .38f),
                maxLines = 1, softWrap = false)
        }
    }
}

@Composable
private fun AppleMusicStatusSection(state: LyricsProviderUiState, enabled: Boolean, onEvent: (ContentEvent) -> Unit) {
    val design = LocalSettingsDesign.current
    val status = state.appleStatus.trim().lowercase(Locale.ROOT)
    val connected = status == "connected"
    val opening = state.appleLoginOpen || state.applePreparing || status == "connecting"
    val statusLabel = when {
        !state.available -> "暂不可用"
        state.applePreparing -> "正在准备登录页面…"
        state.appleLoginOpen -> "登录页面已打开"
        connected -> "已连接"
        status == "expired" -> "登录已过期"
        status == "rejected" -> "登录已失效"
        else -> "未连接"
    }
    Column(Modifier.fillMaxWidth(), verticalArrangement = Arrangement.spacedBy(design.itemGap)) {
        Text("Apple Music", style = design.labelStyle, color = design.text)
        Text(if (state.appleStorefront.isBlank()) statusLabel else "$statusLabel · ${state.appleStorefront.uppercase(Locale.ROOT)}",
            style = design.supportingStyle, color = design.secondaryText)
        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(design.smallGap), verticalAlignment = Alignment.CenterVertically) {
            Spacer(Modifier.weight(1f))
            Button(
                onClick = { onEvent(if (opening) AppleMusicLoginDismissed else AppleMusicConnectRequested) }, enabled = enabled,
                modifier = Modifier.width(150.dp).heightIn(min = 56.dp).testTag("settings-apple-login"),
                shape = RoundedCornerShape(8.dp), colors = ButtonDefaults.buttonColors(containerColor = interfaceSurfaceColor(design.track, design.surfaceOpacity), contentColor = design.text),
                contentPadding = androidx.compose.foundation.layout.PaddingValues(12.dp),
            ) {
                Text("登录", style = design.optionStyle, maxLines = 1, softWrap = false, overflow = androidx.compose.ui.text.style.TextOverflow.Clip)
            }
        }
        if (connected) OutlinedButton(onClick = { onEvent(AppleMusicDisconnectRequested) }, enabled = enabled,
            modifier = Modifier.align(Alignment.End).heightIn(min = design.minimumTouchHeight).testTag("settings-apple-disconnect"),
            shape = RoundedCornerShape(4.dp)) { Text("断开", style = design.optionStyle) }
    }
}

/** A separate application window lets the webpage use the screen, independently of split settings. */
@Composable
fun AppleMusicLoginPanel(
    preparing: Boolean,
    onDismiss: () -> Unit,
    modifier: Modifier = Modifier,
    content: @Composable () -> Unit,
) {
    val design = LocalSettingsDesign.current
    AppleMusicScreenDialog(onDismiss) {
        Box(
            modifier.fillMaxSize().padding(design.pagePadding)
                .settingsSurfaceShadow(design.card, design.dark, design.pageCornerRadius, design.surfaceOpacity)
                .clip(design.pageShape).background(interfaceSurfaceColor(design.card, design.surfaceOpacity))
                .testTag("settings-apple-login-panel"),
        ) {
            Column(Modifier.fillMaxSize()) {
                Row(
                    Modifier.fillMaxWidth().height(72.dp).padding(horizontal = 12.dp),
                    verticalAlignment = Alignment.CenterVertically,
                ) {
                    SettingsIconButton(
                        onClick = onDismiss,
                        contentDescription = "返回设置",
                        tag = "settings-apple-login-back",
                    ) { iconModifier ->
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, null, iconModifier, tint = design.text)
                    }
                    Box(Modifier.weight(1f).padding(horizontal = 8.dp), contentAlignment = Alignment.Center) {
                        Text("登录 Apple Music", style = design.pageTitleStyle, color = design.text,
                            textAlign = androidx.compose.ui.text.style.TextAlign.Center,
                            maxLines = 1, softWrap = false,
                            overflow = androidx.compose.ui.text.style.TextOverflow.Ellipsis)
                    }
                    SettingsIconButton(
                        onClick = onDismiss,
                        contentDescription = "关闭登录",
                        tag = "settings-apple-login-close",
                    ) { iconModifier ->
                        Icon(Icons.Default.Close, null, iconModifier, tint = design.text)
                    }
                }
                HorizontalDivider(color = design.divider)
                if (preparing) Column(Modifier.fillMaxWidth().padding(design.pagePadding), verticalArrangement = Arrangement.spacedBy(design.smallGap)) {
                    Text("正在准备 Apple 登录页面…", style = design.supportingStyle, color = design.secondaryText)
                    LinearProgressIndicator(Modifier.fillMaxWidth(), color = design.text, trackColor = interfaceSurfaceColor(design.track, design.surfaceOpacity))
                }
                Box(Modifier.fillMaxWidth().weight(1f).padding(design.pagePadding)
                    .clip(design.cardShape).background(interfaceSurfaceColor(design.track, design.surfaceOpacity)), contentAlignment = Alignment.Center) { content() }
            }
        }
    }
}

/** Configure the actual window and view context before any content or WindowManager traversal. */
@Composable
private fun AppleMusicScreenDialog(onDismiss: () -> Unit, content: @Composable () -> Unit) {
    val hostView = LocalView.current
    val hostContext = LocalContext.current
    val windowActivity = LocalContentWindowActivity.current
    val hostActivity = remember(hostContext, windowActivity) {
        requireNotNull(windowActivity ?: findContentWindowActivity(hostContext)) {
            "Apple Music login requires the host Activity"
        }
    }
    // Capture physical content resources per open; map invalidations must not rebuild the window.
    val contentContext = remember(hostView, hostActivity) { appleLoginContentContext(hostActivity) }
    val parentComposition = rememberCompositionContext()
    val currentDismiss = rememberUpdatedState(onDismiss)
    val currentContent = rememberUpdatedState(content)
    val dialog = remember(hostView, hostActivity, contentContext, parentComposition) {
        AppleMusicDialogWindow(hostActivity, contentContext, hostView) { currentDismiss.value() }.apply {
            setContent(parentComposition) { currentContent.value() }
        }
    }
    DisposableEffect(dialog) {
        dialog.show()
        onDispose {
            dialog.dismiss()
            dialog.disposeComposition()
        }
    }
}

@Suppress("DEPRECATION")
private class AppleMusicDialogWindow(
    hostActivity: Activity, contentContext: Context, hostView: View, onDismissRequest: () -> Unit,
) : ComponentDialog(hostActivity, android.R.style.Theme_Material_Light_NoActionBar) {
    private val dialogLayout: AppleMusicDialogLayout

    init {
        setOwnerActivity(hostActivity)
        val dialogWindow = requireNotNull(window)
        dialogWindow.requestFeature(Window.FEATURE_NO_TITLE)
        dialogWindow.setBackgroundDrawableResource(android.R.color.transparent)
        WindowCompat.setDecorFitsSystemWindows(dialogWindow, true)
        dialogWindow.clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN or
            WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS)
        dialogWindow.addFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND)
        dialogWindow.attributes = dialogWindow.attributes.apply {
            // MATCH_PARENT lets the real WindowManager viewport also shrink for the system IME.
            width = WindowManager.LayoutParams.MATCH_PARENT
            height = WindowManager.LayoutParams.MATCH_PARENT
            gravity = Gravity.CENTER
            x = 0
            y = 0
            dimAmount = .32f
        }
        val hostFlags = (hostView.rootView.layoutParams as? WindowManager.LayoutParams)?.flags ?: 0
        if (hostFlags and WindowManager.LayoutParams.FLAG_SECURE != 0) {
            dialogWindow.addFlags(WindowManager.LayoutParams.FLAG_SECURE)
        }
        dialogWindow.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_VISIBLE
        dialogWindow.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE)
        setCanceledOnTouchOutside(false)
        val themedContentContext = ContextThemeWrapper(contentContext, android.R.style.Theme_Material_Light_NoActionBar)
        dialogLayout = AppleMusicDialogLayout(themedContentContext, dialogWindow).apply {
            id = View.generateViewId()
            layoutDirection = hostView.layoutDirection
            setViewTreeLifecycleOwner(hostView.findViewTreeLifecycleOwner())
            setViewTreeViewModelStoreOwner(hostView.findViewTreeViewModelStoreOwner())
            setViewTreeSavedStateRegistryOwner(hostView.findViewTreeSavedStateRegistryOwner())
        }
        setContentView(dialogLayout, ViewGroup.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT))
        onBackPressedDispatcher.addCallback(this) { onDismissRequest() }
    }

    fun setContent(parent: CompositionContext, content: @Composable () -> Unit) {
        dialogLayout.setContent(parent, content)
    }

    fun disposeComposition() = dialogLayout.disposeComposition()

    // Dismissal remains a state change owned by the existing login binding.
    override fun cancel() = Unit
}

/** Standard WMS measure specs avoid Compose Dialog's map-resource-derived screen remeasurement. */
private class AppleMusicDialogLayout(context: Context, override val window: Window) :
    AbstractComposeView(context), DialogWindowProvider {
    private val content = mutableStateOf<@Composable () -> Unit>({})
    override var shouldCreateCompositionOnAttachedToWindow = false
        private set

    fun setContent(parent: CompositionContext, content: @Composable () -> Unit) {
        setParentCompositionContext(parent)
        this.content.value = content
        shouldCreateCompositionOnAttachedToWindow = true
        createComposition()
    }

    @Composable
    override fun Content() {
        Box(Modifier.fillMaxSize().semantics { dialog() }) { content.value() }
    }
}

/** Physical resources belong to the content; the Dialog itself keeps the Activity's WindowManager. */
@Suppress("DEPRECATION")
internal fun appleLoginContentContext(host: Activity): Context {
    val display = (host.getSystemService(Context.WINDOW_SERVICE) as WindowManager).defaultDisplay
    val pixels = DisplayMetrics().also(display::getRealMetrics)
    val systemDpi = Resources.getSystem().displayMetrics.densityDpi.coerceAtLeast(1)
    val scale = systemDpi / 160f
    val configuration = Configuration(host.resources.configuration).apply {
        densityDpi = systemDpi
        screenWidthDp = (pixels.widthPixels / scale).toInt()
        screenHeightDp = (pixels.heightPixels / scale).toInt()
        smallestScreenWidthDp = minOf(screenWidthDp, screenHeightDp)
        orientation = if (pixels.widthPixels >= pixels.heightPixels) Configuration.ORIENTATION_LANDSCAPE
            else Configuration.ORIENTATION_PORTRAIT
    }
    return host.createConfigurationContext(configuration)
}
