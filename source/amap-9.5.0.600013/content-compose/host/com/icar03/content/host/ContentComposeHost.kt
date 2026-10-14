package com.icar03.content.host

import android.app.Activity
import android.content.Context
import android.content.res.Resources
import android.graphics.Rect
import android.view.ViewGroup
import android.widget.FrameLayout
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.ViewCompositionStrategy
import androidx.compose.ui.platform.createLifecycleAwareWindowRecomposer
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.unit.Density
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.ViewModelStore
import androidx.lifecycle.ViewModelStoreOwner
import androidx.lifecycle.setViewTreeLifecycleOwner
import androidx.lifecycle.setViewTreeViewModelStoreOwner
import androidx.savedstate.SavedStateRegistry
import androidx.savedstate.SavedStateRegistryController
import androidx.savedstate.SavedStateRegistryOwner
import androidx.savedstate.setViewTreeSavedStateRegistryOwner
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.runtime.BoundBindingPanel
import com.icar03.content.ui.PanelPage
import com.icar03.content.ui.supportsImmersive
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.flow.collect
import kotlinx.coroutines.launch

/** Supplies local owners to a plain map Activity without changing its inheritance. */
@OptIn(ExperimentalComposeUiApi::class)
class ContentComposeHost @JvmOverloads constructor(
    context: Context, private val host: ViewGroup, private val store: ContentStore,
    private val windowActivity: Activity? = com.icar03.content.ui.findContentWindowActivity(context),
) {
    private class Owners : LifecycleOwner, SavedStateRegistryOwner, ViewModelStoreOwner {
        private val registry = LifecycleRegistry(this)
        private val saved = SavedStateRegistryController.create(this)
        override val lifecycle: Lifecycle get() = registry
        override val savedStateRegistry: SavedStateRegistry get() = saved.savedStateRegistry
        override val viewModelStore = ViewModelStore()
        init {
            saved.performAttach()
            saved.performRestore(null)
            registry.currentState = Lifecycle.State.CREATED
        }
        fun resume() { registry.currentState = Lifecycle.State.RESUMED }
        fun pause() { registry.currentState = Lifecycle.State.CREATED }
        fun destroy() { registry.currentState = Lifecycle.State.DESTROYED; viewModelStore.clear() }
    }
    private val owners = Owners()
    private val binding = com.icar03.content.runtime.ContentBinding(store)
    private val presentation = com.icar03.content.ui.ContentPresentation()
    private var mapPresentation: com.icar03.content.model.MapPresentationPort? = null
    private var expandedDivider = Float.NaN
    private var mapWidth = Float.NaN
    private val view = ComposeView(context)
    private var destroyed = false
    private val gestureScope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private var gestureStateJob: Job? = null
    private val attachListener = object : android.view.View.OnAttachStateChangeListener {
        override fun onViewAttachedToWindow(v: android.view.View) {
            refreshGestureState()
        }
        override fun onViewDetachedFromWindow(v: android.view.View) {
            mapPresentation?.updateGestureState(false, binding.state.value.dark, false, false)
        }
    }
    private var divider = Float.NaN
    private val layoutListener = android.view.View.OnLayoutChangeListener { _, _, _, _, _, _, _, _, _ -> applyViewport() }

    init {
        presentation.onGestureStateChanged = { refreshGestureState() }
        view.setViewTreeLifecycleOwner(owners)
        view.setViewTreeSavedStateRegistryOwner(owners)
        view.setViewTreeViewModelStoreOwner(owners)
        view.setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed)
        view.setParentCompositionContext(view.createLifecycleAwareWindowRecomposer(lifecycle = owners.lifecycle))
        val metrics = Resources.getSystem().displayMetrics
        val density = metrics.density.takeIf { it > 0f } ?: context.resources.displayMetrics.density
        val fontScale = Resources.getSystem().configuration.fontScale.takeIf { it > 0f } ?: 1f
        view.setContent {
            CompositionLocalProvider(
                LocalDensity provides Density(density, fontScale),
                com.icar03.content.ui.LocalContentWindowActivity provides windowActivity,
            ) {
                BoundBindingPanel(binding, presentation = presentation, onPresentationEvent = ::dispatchPresentation)
            }
        }
        view.addOnAttachStateChangeListener(attachListener)
        gestureStateJob = gestureScope.launch {
            binding.state.collect { refreshGestureState() }
        }
        host.addView(view, FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT))
        host.addOnLayoutChangeListener(layoutListener)
        owners.resume()
        applyViewport()
        refreshGestureState()
    }

    fun bindMapPresentation(port: com.icar03.content.model.MapPresentationPort?) {
        if (destroyed) return
        val previous = mapPresentation
        if (previous !== port) {
            previous?.updateGestureState(false, binding.state.value.dark, false, false)
            presentation.invalidateInput()
            presentation.cancelEntry()
        }
        mapPresentation = port
        presentation.updateGestureWidth(port?.reservedGestureWidthPx() ?: 0)
        presentation.onEntryReady = {
            if (canPresentPage()) {
                refreshGestureState()
                mapPresentation?.settleToCollapsed()
            } else presentation.cancelEntry()
        }
        refreshGestureState()
    }

    private fun canPresentPage(current: com.icar03.content.ui.ContentUiState? = binding.currentPresentationState()): Boolean {
        if (current == null || destroyed || !view.isAttachedToWindow ||
            !owners.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)) return false
        return current.page.supportsImmersive && !current.sourcesOpen && !current.scenariosOpen &&
            !current.settingsOpen && !current.lyricsProviderSettings.appleLoginOpen &&
            !presentation.modalActive && !presentation.pagerMotion
    }

    private fun isMapGestureAllowed(current: com.icar03.content.ui.ContentUiState?): Boolean = canPresentPage(current) &&
        !presentation.buttonTransitionActive && presentation.pendingEnter == 0L

    /** Called by the map controller on its UI-thread touch path. */
    fun isMapGestureAllowed(): Boolean = isMapGestureAllowed(binding.currentPresentationState())

    private fun refreshGestureState() {
        if (destroyed) return
        val port = mapPresentation ?: return
        val current = binding.currentPresentationState()
        port.updateGestureState(isMapGestureAllowed(current), current?.dark ?: binding.state.value.dark, false, false)
        port.ensureGestureOnTop()
    }

    private fun dispatchPresentation(event: com.icar03.content.ui.ContentEvent) {
        if (destroyed) return
        when (event) {
            is com.icar03.content.ui.ContentEvent.GesturePerformed -> {
                val current = binding.currentPresentationState() ?: return
                val intent = com.icar03.content.ui.MultiFingerGestureRouting.resolve(
                    event.command, current, presentation, interactive = canPresentPage(current)) ?: return
                dispatchPresentation(intent)
            }
            com.icar03.content.ui.ContentEvent.EnterLyricsImmersive -> {
                if (!canPresentPage() || !presentation.geometryReady || presentation.moving || mapPresentation == null) return
                binding.dispatch(com.icar03.content.ui.ContentEvent.DismissSheet)
                presentation.requestEnter()
            }
            com.icar03.content.ui.ContentEvent.ExitLyricsImmersive -> {
                presentation.invalidateInput()
                presentation.cancelEntry()
                mapPresentation?.settleToExpanded()
            }
            else -> Unit
        }
    }

    fun updatePanelPhase(phase: Int) {
        if (destroyed) return
        presentation.updatePhase(phase)
        if (phase == 1) {
            val current = binding.currentPresentationState()
            if (current != null && !current.page.supportsImmersive) mapPresentation?.settleToExpanded()
        }
    }

    fun updateDivider(dividerX: Float, expandedDivider: Float, mapWidth: Float) {
        if (destroyed || !dividerX.isFinite()) return
        divider = dividerX
        this.expandedDivider = expandedDivider
        this.mapWidth = mapWidth
        applyViewport()
    }
    private fun applyViewport() {
        if (destroyed) return
        val parentWidth = (host.parent as? android.view.View)?.width ?: host.width
        if (parentWidth <= 0) return
        val width = (if (divider.isFinite()) divider.toInt() else parentWidth / 3).coerceIn(1, parentWidth)
        val params = host.layoutParams
        if (params != null && params.width != width) { params.width = width; host.layoutParams = params }
        if (host.height > 0) host.clipBounds = Rect(0, 0, width, host.height)
        presentation.updateGeometry(divider, expandedDivider, mapWidth, (host.parent as? android.view.View)?.height ?: host.height)
        mapPresentation?.ensureGestureOnTop()
    }
    fun handleBack(): Boolean {
        if (destroyed) return false
        val current = binding.state.value
        if (current.lyricsProviderSettings.appleLoginOpen) {
            binding.dispatch(com.icar03.content.ui.AppleMusicLoginDismissed)
            return true
        }
        if (current.settingsOpen) {
            binding.dispatch(com.icar03.content.ui.ContentEvent.SettingsBack)
            return true
        }
        if (current.sourcesOpen) {
            binding.dispatch(com.icar03.content.ui.ContentEvent.DismissSheet)
            return true
        }
        if (presentation.pendingEnter != 0L || presentation.progress > .001f) {
            dispatchPresentation(com.icar03.content.ui.ContentEvent.ExitLyricsImmersive)
            return true
        }
        return false
    }
    fun pause() {
        if (!destroyed) {
            presentation.invalidateInput()
            presentation.cancelEntry()
            mapPresentation?.updateGestureState(false, binding.state.value.dark, false, false)
            owners.pause()
        }
    }
    fun resume() {
        if (!destroyed) {
            owners.resume()
            refreshGestureState()
        }
    }
    fun destroy() {
        if (destroyed) return
        destroyed = true
        presentation.stop()
        mapPresentation?.updateGestureState(false, binding.state.value.dark, false, false)
        mapPresentation = null
        gestureStateJob?.cancel()
        gestureScope.cancel()
        view.removeOnAttachStateChangeListener(attachListener)
        owners.destroy()
        view.disposeComposition()
        binding.close()
        host.removeOnLayoutChangeListener(layoutListener)
        host.removeView(view)
        host.clipBounds = null
    }
}
