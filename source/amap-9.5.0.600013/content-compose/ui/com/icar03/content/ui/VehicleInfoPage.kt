package com.icar03.content.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.icar03.content.model.ControlCatalog

/** Vehicle information is a page projection; it never owns or dispatches vehicle commands. */
@Composable
internal fun VehicleInfoPage(state: ContentUiState, onEvent: (ContentEvent) -> Unit = {}, interactionEnabled: Boolean = true) {
    Column(
        modifier = Modifier.fillMaxSize().verticalScroll(rememberScrollState()).padding(20.dp),
        verticalArrangement = Arrangement.spacedBy(14.dp),
    ) {
        Text("车辆信息", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.SemiBold)
        Card(colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = .72f))) {
            Column(Modifier.fillMaxWidth().padding(16.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                Text(state.vehicleProfileDisplayName.ifBlank { "iCAR 03" }, style = MaterialTheme.typography.titleLarge)
                Text("配置文件：${state.vehicleConfigFileName.ifBlank { "未加载" }}", style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant)
                Text(
                    if (state.vehicleConfigValid) "车型配置已通过只读自检" else state.vehicleConfigMessage,
                    style = MaterialTheme.typography.bodyMedium,
                    color = if (state.vehicleConfigValid) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.error,
                )
                Text(
                    if (state.vehicleConfigSelfCheckCacheHit) "自检：复用同一配置与环境指纹"
                    else if (state.vehicleConfigSelfCheckRan) "配置自检：本次冷启动已执行（只读）"
                    else "配置自检将在冷启动时执行",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                )
                TextButton(
                    onClick = { if (interactionEnabled) onEvent(ContentEvent.OpenVehicleConfigSettings) },
                    enabled = interactionEnabled,
                    modifier = Modifier.testTag("vehicle-config-settings"),
                ) { Text("配置文件") }
            }
        }
        Text("当前车型功能", style = MaterialTheme.typography.titleMedium, fontWeight = FontWeight.Medium)
        state.controlCenterAvailableItems.mapNotNull { ControlCatalog.find(it) }.forEach { definition ->
            val declared = definition.id in (state.enabledControlIds + state.enabledFeatureIds + state.enabledSystemIds + state.enabledContentIds)
            val available = definition.implemented && state.vehicleConfigValid && declared && when (definition.id) {
                "brightness" -> state.brightness.available
                "volume" -> state.volume.available
                "call_volume" -> state.systemLevels[SystemQuickControl.CallVolume]?.available == true
                "navigation_volume" -> state.systemLevels[SystemQuickControl.NavigationVolume]?.available == true
                "voice_volume" -> state.systemLevels[SystemQuickControl.VoiceVolume]?.available == true
                "system_control_center" -> state.controlCenterAvailable
                "media" -> state.media.available
                "auto_wiper" -> state.controls[ControlId.Wiper]?.available == true
                else -> ControlId.entries.firstOrNull { it.id == definition.id }?.let { state.controls[it]?.available }
                    ?: com.icar03.content.model.VehicleFeature.entries.firstOrNull { it.id == definition.id }?.let { state.features[it]?.available }
                    ?: false
            }
            Row(
                modifier = Modifier.fillMaxWidth().background(
                    MaterialTheme.colorScheme.surfaceVariant.copy(alpha = .38f), RoundedCornerShape(12.dp),
                ).padding(horizontal = 14.dp, vertical = 12.dp),
                verticalAlignment = Alignment.CenterVertically,
            ) {
                Spacer(Modifier.size(8.dp).background(if (available) Color(0xFF39C78A) else Color(0xFF9AA0A6), RoundedCornerShape(8.dp)))
                Spacer(Modifier.width(10.dp))
                Column(Modifier.weight(1f)) {
                    Text(definition.label, style = MaterialTheme.typography.bodyLarge)
                    Text(
                        when {
                            available -> "当前可用"
                            !definition.implemented -> "未配置 · 不可用"
                            !declared || !state.vehicleConfigValid -> "配置未启用"
                            else -> "已登记 · 当前不可用"
                        },
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                    )
                }
            }
        }
    }
}

@Composable
internal fun ProjectionPage(state: ContentUiState) {
    Column(
        modifier = Modifier.fillMaxSize().padding(20.dp),
        verticalArrangement = Arrangement.spacedBy(14.dp),
    ) {
        Text("投影", style = MaterialTheme.typography.headlineSmall, fontWeight = FontWeight.SemiBold)
        Card(colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = .72f))) {
            Column(Modifier.fillMaxWidth().padding(16.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
                Text("当前媒体", style = MaterialTheme.typography.titleMedium)
                Text(state.media.title ?: "暂无媒体", style = MaterialTheme.typography.bodyLarge)
                Text(state.media.artist ?: "等待投影来源", style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
                Text(
                    if (state.media.available) "媒体投影可用" else "媒体服务不可用",
                    style = MaterialTheme.typography.bodySmall,
                    color = if (state.media.available) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.error,
                )
            }
        }
        Text("投影页保留媒体信息与来源状态，车辆控制统一进入控制中心。", style = MaterialTheme.typography.bodyMedium)
    }
}
