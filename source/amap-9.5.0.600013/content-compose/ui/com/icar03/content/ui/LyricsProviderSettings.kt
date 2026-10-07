package com.icar03.content.ui

import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
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
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilterChip
import androidx.compose.material3.FilterChipDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
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
import androidx.compose.ui.semantics.stateDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.dp
import java.util.Locale
import android.view.View
import android.view.WindowManager
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.HorizontalDivider
import androidx.compose.runtime.SideEffect
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.compose.ui.window.DialogWindowProvider

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
@OptIn(ExperimentalMaterial3Api::class)
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
    Column(modifier.fillMaxWidth(), verticalArrangement = Arrangement.spacedBy(design.itemGap)) {
        Text("选择更倾向使用的歌词来源", style = design.optionStyle, color = design.text,
            modifier = Modifier.testTag("settings-label-歌曲平台倾向").semantics { stateDescription = "歌曲平台倾向·${selectedOption.label}" })
        BoxWithConstraints(Modifier.fillMaxWidth().selectableGroup()) {
            val columns = if (maxWidth >= 360.dp) 2 else 1
            Column(verticalArrangement = Arrangement.spacedBy(design.itemGap)) {
                lyricsProviderOptions.chunked(columns).forEach { rowOptions ->
                    Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(design.itemGap)) {
                        rowOptions.forEach { option ->
                            ProviderChoice(option, option.id == selectedOption.id, selectionEnabled,
                                onSelect = { onEvent(LyricsPlatformSelected(option.id)) }, modifier = Modifier.weight(1f))
                        }
                        if (rowOptions.size < columns) Spacer(Modifier.weight(1f))
                    }
                }
            }
        }
        SettingsDivider()
        AppleMusicStatusSection(state, loginEnabled && state.available, onEvent)
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun ProviderChoice(
    option: LyricsProviderOption, selected: Boolean, enabled: Boolean, onSelect: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val design = LocalSettingsDesign.current
    FilterChip(
        selected = selected, onClick = { if (enabled && !selected) onSelect() }, enabled = enabled,
        shape = RoundedCornerShape(4.dp), border = null,
        modifier = modifier.heightIn(min = 56.dp).testTag("settings-platform-${option.id}").semantics {
            role = Role.RadioButton; stateDescription = if (selected) "已选中" else "未选中"
        },
        label = {
            Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(design.smallGap)) {
                if (option.iconRes == null) Icon(Icons.Default.AutoAwesome, null, Modifier.size(24.dp), tint = design.text)
                else Image(painterResource(option.iconRes), null, Modifier.size(24.dp))
                Text(option.label, style = design.optionStyle, maxLines = 2)
            }
        },
        colors = FilterChipDefaults.filterChipColors(
            containerColor = design.card, labelColor = design.text, iconColor = design.text,
            selectedContainerColor = design.track, selectedLabelColor = design.text, selectedLeadingIconColor = design.text,
            disabledContainerColor = design.card, disabledLabelColor = design.secondaryText.copy(alpha = .38f),
            disabledLeadingIconColor = design.secondaryText.copy(alpha = .38f),
        ),
    )
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
                shape = RoundedCornerShape(4.dp), colors = ButtonDefaults.buttonColors(containerColor = design.track, contentColor = design.text),
                contentPadding = androidx.compose.foundation.layout.PaddingValues(12.dp),
            ) { Text(if (opening) "取消登录" else if (connected || state.appleNeedsRenewal) "重新登录" else "登录 Apple Music", style = design.optionStyle) }
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
    Dialog(onDismissRequest = onDismiss, properties = DialogProperties(
        usePlatformDefaultWidth = false, dismissOnBackPress = true,
        dismissOnClickOutside = false, decorFitsSystemWindows = true,
    )) {
        val view = LocalView.current
        @Suppress("DEPRECATION")
        SideEffect {
            (view.parent as? DialogWindowProvider)?.window?.let { window ->
                // Keep the system's IME resize behavior, especially on Android 9 WebView.
                // A large independent app window does not require hiding system bars.
                window.clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
                window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_VISIBLE
                window.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE)
            }
        }
        Surface(modifier.fillMaxSize().padding(design.pagePadding).testTag("settings-apple-login-panel"),
            shape = design.pageShape, color = design.card, contentColor = design.text,
            tonalElevation = 0.dp, shadowElevation = design.shadowElevation) {
            Column(Modifier.fillMaxSize()) {
                Row(Modifier.fillMaxWidth().height(84.dp).padding(horizontal = design.pagePadding),
                    verticalAlignment = Alignment.CenterVertically) {
                    IconButton(onClick = onDismiss, Modifier.size(design.minimumTouchHeight).testTag("settings-apple-login-back")) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, "返回设置", tint = design.text)
                    }
                    Text("登录 Apple Music", Modifier.weight(1f), style = design.pageTitleStyle, color = design.text,
                        textAlign = androidx.compose.ui.text.style.TextAlign.Center, maxLines = 2)
                    IconButton(onClick = onDismiss, Modifier.size(design.minimumTouchHeight).testTag("settings-apple-login-close")) {
                        Icon(Icons.Default.Close, "关闭登录", tint = design.text)
                    }
                }
                HorizontalDivider(color = design.divider)
                if (preparing) Column(Modifier.fillMaxWidth().padding(design.pagePadding), verticalArrangement = Arrangement.spacedBy(design.smallGap)) {
                    Text("正在准备 Apple 登录页面…", style = design.supportingStyle, color = design.secondaryText)
                    LinearProgressIndicator(Modifier.fillMaxWidth(), color = design.text, trackColor = design.track)
                }
                Box(Modifier.fillMaxWidth().weight(1f).padding(design.pagePadding).clip(design.cardShape).background(design.track),
                    contentAlignment = Alignment.Center) { content() }
            }
        }
    }
}
