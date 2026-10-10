package com.icar03.content.ui

import android.os.SystemClock
import androidx.annotation.DrawableRes
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.PressInteraction
import androidx.compose.foundation.interaction.collectIsPressedAsState
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.Stable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.key
import androidx.compose.runtime.mutableLongStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.setValue
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.drawBehind
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.Role
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.unit.dp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.collect

/** An action on the current page. The caller owns resources and dispatch. */
data class PageActionDescriptor(
    val id: String,
    val label: String,
    @DrawableRes val iconRes: Int,
    val enabled: Boolean = true,
)

internal const val PAGE_ACTIONS_LIFETIME_MS = 3_000L
internal val PageActionsDeadline = SemanticsPropertyKey<Long>("PageActionsDeadline")
internal val PageActionsHeld = SemanticsPropertyKey<Boolean>("PageActionsHeld")
internal val LocalPageActionsClock = staticCompositionLocalOf<() -> Long> { { SystemClock.uptimeMillis() } }

/** A bounded, event-driven lease. No ticker and no media/feedback state is owned here. */
@Stable
internal class PageActionsLease(private val nowMillis: () -> Long) {
    var visible by mutableStateOf(false)
        private set
    var deadlineMillis by mutableLongStateOf(0L)
        private set
    var revision by mutableLongStateOf(0L)
        private set
    var pressedIds by mutableStateOf(emptySet<String>())
        private set

    fun reveal() {
        visible = true
        deadlineMillis = nowMillis() + PAGE_ACTIONS_LIFETIME_MS
        revision++
    }

    fun toggle() {
        if (visible) clear() else reveal()
    }

    fun press(id: String) {
        if (!visible || id in pressedIds) return
        pressedIds = pressedIds + id
        revision++
    }

    fun release(id: String) {
        if (id !in pressedIds) return
        pressedIds = pressedIds - id
        if (visible && pressedIds.isEmpty()) deadlineMillis = nowMillis() + PAGE_ACTIONS_LIFETIME_MS
        revision++
    }

    fun remainingMillis(): Long = (deadlineMillis - nowMillis()).coerceAtLeast(0L)

    fun expire(expectedRevision: Long) {
        if (expectedRevision == revision && visible && pressedIds.isEmpty() && remainingMillis() == 0L) clear()
    }

    fun clear() {
        if (!visible && pressedIds.isEmpty()) return
        visible = false
        deadlineMillis = 0L
        pressedIds = emptySet()
        revision++
    }
}

/**
 * Renders only its actual button row, never a full-page touch surface or system overlay.
 * Increment blankTapRevision after the caller confirms an unconsumed blank-area tap.
 * pageKey should include the page's presentation mode when its actions change with that mode.
 * onAction delegates to the caller's shared event/sound route, avoiding a second click sound.
 */
@Composable
fun PageActionsOverlay(
    actions: List<PageActionDescriptor>,
    pageKey: Any,
    blankTapRevision: Long,
    enabled: Boolean = true,
    modalActive: Boolean = false,
    modifier: Modifier = Modifier,
    compact: Boolean = false,
    onAction: (String) -> Unit,
) {
    require(actions.map { it.id }.distinct().size == actions.size) { "Page action IDs must be unique" }
    val owner = LocalLifecycleOwner.current
    val clock = LocalPageActionsClock.current
    val lease = remember(clock) { PageActionsLease(clock) }
    var started by remember(owner) { mutableStateOf(owner.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)) }
    var lastPageKey by remember(lease) { mutableStateOf(pageKey) }
    var consumedTapRevision by remember(lease, pageKey) { mutableLongStateOf(blankTapRevision) }
    val currentAction by rememberUpdatedState(onAction)
    val eligible = enabled && !modalActive && started && actions.isNotEmpty()

    DisposableEffect(owner, lease) {
        val observer = LifecycleEventObserver { _, _ ->
            started = owner.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)
            if (!started) lease.clear()
        }
        owner.lifecycle.addObserver(observer)
        onDispose { owner.lifecycle.removeObserver(observer); lease.clear() }
    }
    LaunchedEffect(pageKey, blankTapRevision, eligible) {
        if (lastPageKey != pageKey) {
            lastPageKey = pageKey
            consumedTapRevision = blankTapRevision
            lease.clear()
        } else if (!eligible) {
            consumedTapRevision = blankTapRevision
            lease.clear()
        } else if (blankTapRevision != consumedTapRevision) {
            val taps = blankTapRevision - consumedTapRevision
            consumedTapRevision = blankTapRevision
            if (taps and 1L != 0L) lease.toggle()
        }
    }
    // Press/tap/clear changes cancel this single delay before scheduling another deadline.
    LaunchedEffect(lease.revision, eligible) {
        if (eligible && lease.visible && lease.pressedIds.isEmpty()) {
            val revision = lease.revision
            delay(lease.remainingMillis())
            lease.expire(revision)
        }
    }
    val requested = eligible && lastPageKey == pageKey && lease.visible
    val opacity = key(pageKey, eligible) {
        animateFloatAsState(if (requested) 1f else 0f,
            tween(if (requested) 180 else 200), label = "page-actions-opacity")
    }
    if (!eligible || lastPageKey != pageKey || !requested && opacity.value <= 0f) return

    Row(modifier.graphicsLayer { alpha = opacity.value }.testTag("page-actions-overlay").semantics {
        this[PageActionsDeadline] = lease.deadlineMillis
        this[PageActionsHeld] = lease.pressedIds.isNotEmpty()
    }, horizontalArrangement = Arrangement.spacedBy(8.dp), verticalAlignment = Alignment.CenterVertically) {
        for (action in actions) key(action.id) {
            PageActionButton(action, compact, requested && action.enabled,
                onPress = { lease.press(action.id) }, onRelease = { lease.release(action.id) },
                onClick = { currentAction(action.id) })
        }
    }
}

@Composable
private fun PageActionButton(
    action: PageActionDescriptor,
    compact: Boolean,
    enabled: Boolean,
    onPress: () -> Unit,
    onRelease: () -> Unit,
    onClick: () -> Unit,
) {
    val interactions = remember(action.id) { MutableInteractionSource() }
    val pressed by interactions.collectIsPressedAsState()
    val currentPress by rememberUpdatedState(onPress)
    val currentRelease by rememberUpdatedState(onRelease)
    LaunchedEffect(interactions) {
        interactions.interactions.collect { event ->
            when (event) {
                is PressInteraction.Press -> currentPress()
                is PressInteraction.Release, is PressInteraction.Cancel -> currentRelease()
                else -> Unit
            }
        }
    }
    DisposableEffect(interactions) { onDispose { currentRelease() } }
    val colors = LocalContentColors.current
    val geometry = LocalContentGeometry.current
     val interfaceOpacity = LocalInterfaceOpacity.current
     val scale = pressScale(pressed)
    val pressedOpacity = animateFloatAsState(if (pressed) 1f else 0f, tween(if (pressed) 200 else 240), label = "page-action-press")
    val shape = RoundedCornerShape(if (compact) 14.dp else 16.dp)
    Box(Modifier.size(if (compact) 56.dp else 64.dp)
        .graphicsLayer { scaleX = scale.value; scaleY = scale.value }
        .clip(shape)
        .drawBehind {
            drawRect(interfaceSurfaceColor(colors.selectedSurface.copy(alpha = pressedOpacity.value), interfaceOpacity))
        }
        .clickable(enabled = enabled, interactionSource = interactions, indication = null, role = Role.Button, onClick = onClick)
        .excludeDisabledActionTap(enabled)
        .semantics { contentDescription = action.label }
        .testTag("page-action-${action.id}"), contentAlignment = Alignment.Center) {
        OemIcon(action.iconRes, Modifier, glyphHeight = geometry.fullscreenIcon,
            tint = MaterialTheme.colorScheme.onSurface.copy(alpha = if (action.enabled) 1f else .38f),
            animateOnPress = false, animateOnAction = false)
    }
}
