package com.icar03.content.host

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

/** Supplies local owners to a plain map Activity without changing its inheritance. */
@OptIn(ExperimentalComposeUiApi::class)
class ContentComposeHost(context: Context, private val host: ViewGroup, private val store: ContentStore) {
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
    private val view = ComposeView(context)
    private var destroyed = false
    private var divider = Float.NaN
    private val layoutListener = android.view.View.OnLayoutChangeListener { _, _, _, _, _, _, _, _, _ -> applyViewport() }

    init {
        view.setViewTreeLifecycleOwner(owners)
        view.setViewTreeSavedStateRegistryOwner(owners)
        view.setViewTreeViewModelStoreOwner(owners)
        view.setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed)
        view.setParentCompositionContext(view.createLifecycleAwareWindowRecomposer(lifecycle = owners.lifecycle))
        val metrics = Resources.getSystem().displayMetrics
        val density = metrics.density.takeIf { it > 0f } ?: context.resources.displayMetrics.density
        val fontScale = Resources.getSystem().configuration.fontScale.takeIf { it > 0f } ?: 1f
        view.setContent {
            CompositionLocalProvider(LocalDensity provides Density(density, fontScale)) {
                BoundBindingPanel(binding)
            }
        }
        host.addView(view, FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT))
        host.addOnLayoutChangeListener(layoutListener)
        owners.resume()
        applyViewport()
    }

    fun updateDivider(dividerX: Float, expandedDivider: Float, mapWidth: Float) {
        if (destroyed || !dividerX.isFinite()) return
        divider = dividerX
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
    }
    fun handleBack(): Boolean {
        if (destroyed || !binding.state.value.sourcesOpen) return false
        binding.dispatch(com.icar03.content.ui.ContentEvent.DismissSheet)
        return true
    }
    fun pause() { if (!destroyed) owners.pause() }
    fun resume() { if (!destroyed) owners.resume() }
    fun destroy() {
        if (destroyed) return
        destroyed = true
        owners.destroy()
        view.disposeComposition()
        binding.close()
        host.removeOnLayoutChangeListener(layoutListener)
        host.removeView(view)
        host.clipBounds = null
    }
}
