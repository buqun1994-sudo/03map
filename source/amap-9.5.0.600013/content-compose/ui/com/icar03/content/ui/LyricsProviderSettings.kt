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
) {
    val design = LocalSettingsDesign.current
    val selectedOption = lyricsProviderOptions.firstOrNull { it.id == state.preferredPlatform }
        ?: lyricsProviderOptions.first()
    val selectionEnabled = enabled && state.available

    Column(
        modifier = modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(design.itemGap),
    ) {
        SettingsValueLabel(
            title = "歌曲平台倾向",
            value = selectedOption.label,
            modifier = Modifier.testTag("settings-label-歌曲平台倾向"),
        )
        BoxWithConstraints(Modifier.fillMaxWidth().selectableGroup()) {
            val twoColumns = maxWidth >= 240.dp
            if (twoColumns) {
                Column(verticalArrangement = Arrangement.spacedBy(design.itemGap)) {
                    lyricsProviderOptions.chunked(2).forEach { rowOptions ->
                        Row(
                            Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(design.itemGap),
                        ) {
                            rowOptions.forEach { option ->
                                ProviderChoice(
                                    option = option,
                                    selected = option.id == selectedOption.id,
                                    enabled = selectionEnabled,
                                    onSelect = { onEvent(LyricsPlatformSelected(option.id)) },
                                    modifier = Modifier.weight(1f),
                                )
                            }
                            if (rowOptions.size == 1) Spacer(Modifier.weight(1f))
                        }
                    }
                }
            } else {
                Column(verticalArrangement = Arrangement.spacedBy(design.itemGap)) {
                    lyricsProviderOptions.forEach { option ->
                        ProviderChoice(
                            option = option,
                            selected = option.id == selectedOption.id,
                            enabled = selectionEnabled,
                            onSelect = { onEvent(LyricsPlatformSelected(option.id)) },
                            modifier = Modifier.fillMaxWidth(),
                        )
                    }
                }
            }
        }
        AppleMusicStatusSection(
            state = state,
            enabled = enabled && state.available,
            onEvent = onEvent,
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun ProviderChoice(
    option: LyricsProviderOption,
    selected: Boolean,
    enabled: Boolean,
    onSelect: () -> Unit,
    modifier: Modifier = Modifier,
) {
    val design = LocalSettingsDesign.current
    FilterChip(
        selected = selected,
        onClick = { if (enabled && !selected) onSelect() },
        enabled = enabled,
        shape = design.controlShape,
        border = null,
        modifier = modifier
            .heightIn(min = 56.dp)
            .testTag("settings-platform-${option.id}")
            .semantics {
                role = Role.RadioButton
                stateDescription = if (selected) "已选中" else "未选中"
            },
        label = { Text(option.label, style = design.optionStyle, maxLines = 2) },
        leadingIcon = {
            if (option.iconRes == null) {
                Icon(
                    Icons.Default.AutoAwesome,
                    contentDescription = null,
                    modifier = Modifier.size(24.dp),
                )
            } else {
                Image(
                    painter = painterResource(option.iconRes),
                    contentDescription = null,
                    modifier = Modifier.size(24.dp),
                )
            }
        },
        colors = FilterChipDefaults.filterChipColors(
            containerColor = design.track,
            labelColor = design.text,
            iconColor = design.secondaryText,
            selectedContainerColor = design.selected,
            selectedLabelColor = design.text,
            selectedLeadingIconColor = design.text,
            disabledContainerColor = design.track.copy(alpha = .38f),
            disabledLabelColor = design.secondaryText.copy(alpha = .38f),
            disabledLeadingIconColor = design.secondaryText.copy(alpha = .38f),
        ),
    )
}

@Composable
private fun AppleMusicStatusSection(
    state: LyricsProviderUiState,
    enabled: Boolean,
    onEvent: (ContentEvent) -> Unit,
) {
    val design = LocalSettingsDesign.current
    val status = state.appleStatus.trim().lowercase(Locale.ROOT)
    val connected = status == "connected"
    val opening = state.appleLoginOpen || state.applePreparing || status == "connecting"
    val statusLabel = when {
        !state.available -> "暂不可用"
        state.applePreparing -> "准备官方登录页面…"
        state.appleLoginOpen -> "官方登录页面已打开"
        connected -> "已连接"
        status == "expired" -> "登录已过期"
        status == "rejected" -> "登录已失效"
        else -> "未连接"
    }
    Column(
        Modifier.fillMaxWidth().padding(top = design.itemGap),
        verticalArrangement = Arrangement.spacedBy(8.dp),
    ) {
        Text("Apple Music", style = design.optionStyle, color = design.text)
        Text(
            text = if (state.appleStorefront.isBlank()) statusLabel
            else "$statusLabel · ${state.appleStorefront.uppercase(Locale.ROOT)}",
            style = design.supportingStyle,
            color = design.secondaryText,
        )
        Row(
            Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(design.itemGap),
            verticalAlignment = Alignment.CenterVertically,
        ) {
            when {
                opening -> TextButton(
                    onClick = { onEvent(AppleMusicLoginDismissed) },
                    enabled = enabled,
                    modifier = Modifier.heightIn(min = 48.dp).testTag("settings-apple-login"),
                ) { Text("取消登录") }
                connected || state.appleNeedsRenewal -> Button(
                    onClick = { onEvent(AppleMusicConnectRequested) },
                    enabled = enabled,
                    modifier = Modifier.heightIn(min = 48.dp).testTag("settings-apple-login"),
                ) { Text("重新登录") }
                else -> Button(
                    onClick = { onEvent(AppleMusicConnectRequested) },
                    enabled = enabled,
                    modifier = Modifier.heightIn(min = 48.dp).testTag("settings-apple-login"),
                ) { Text("登录 Apple Music") }
            }
            if (connected) {
                OutlinedButton(
                    onClick = { onEvent(AppleMusicDisconnectRequested) },
                    enabled = enabled,
                    modifier = Modifier.heightIn(min = 48.dp).testTag("settings-apple-disconnect"),
                ) { Text("断开") }
            }
        }
    }
}

/**
 * Shared Material3 panel for the official login surface. The parent settings sheet supplies the
 * bounded size; the no-op clickable backdrop consumes taps without adding a second sound path.
 */
@Composable
fun AppleMusicLoginPanel(
    preparing: Boolean,
    onDismiss: () -> Unit,
    modifier: Modifier = Modifier,
    content: @Composable () -> Unit,
) {
    val design = LocalSettingsDesign.current
    val backdropInteraction = remember { MutableInteractionSource() }
    Surface(
        modifier = modifier.fillMaxSize()
            .testTag("settings-apple-login-panel")
            .clickable(
                interactionSource = backdropInteraction,
                indication = null,
                onClick = {},
            ),
        shape = design.cardShape,
        color = design.card,
        contentColor = design.text,
        tonalElevation = 0.dp,
        shadowElevation = design.shadowElevation,
    ) {
        Column(Modifier.fillMaxSize().padding(design.paddingFor(640.dp))) {
            Row(
                Modifier.fillMaxWidth().heightIn(min = 48.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Text(
                    "登录 Apple Music",
                    style = design.pageTitleStyle,
                    color = design.text,
                    modifier = Modifier.weight(1f),
                )
                IconButton(
                    onClick = onDismiss,
                    modifier = Modifier.size(48.dp).testTag("settings-apple-login-close"),
                ) {
                    Icon(Icons.Default.Close, contentDescription = "关闭登录")
                }
            }
            if (preparing) {
                Text(
                    "正在准备 Apple 官方登录页面…",
                    style = design.supportingStyle,
                    color = design.secondaryText,
                )
                LinearProgressIndicator(
                    modifier = Modifier.fillMaxWidth().heightIn(min = 4.dp).padding(vertical = 8.dp),
                    color = design.text,
                    trackColor = design.track,
                )
            } else {
                Spacer(Modifier.size(12.dp))
            }
            Box(
                Modifier.fillMaxWidth().weight(1f).clip(design.cardShape).background(design.track),
                contentAlignment = Alignment.Center,
            ) { content() }
        }
    }
}
