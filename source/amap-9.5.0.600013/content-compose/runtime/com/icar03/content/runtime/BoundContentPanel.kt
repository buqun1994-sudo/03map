package com.icar03.content.runtime

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.ui.ContentPanel
import com.icar03.content.ui.ContentTheme
import com.icar03.content.ui.MediaAmbientBackground

/** Does not create a store or connect a device; the caller supplies the existing store. */
@Composable
fun BoundContentPanel(
    store: ContentStore,
    modifier: Modifier = Modifier,
    ownership: StoreOwnership = StoreOwnership.Shared,
) {
    val fixedOwnership = remember(store) { ownership }
    require(fixedOwnership == ownership) { "Store ownership cannot change while the same store is bound" }
    val binding = remember(store) { ContentBinding(store, fixedOwnership) }
    BoundBindingPanel(binding, modifier)
}

/** The supplied binding is closed when this composition is disposed. */
@Composable
fun BoundBindingPanel(binding: ContentBinding, modifier: Modifier = Modifier) {
    val owner = LocalLifecycleOwner.current
    val context = LocalContext.current
    DisposableEffect(binding, owner, context) {
        binding.observeEnvironment(context)
        val observer = LifecycleEventObserver { _, _ ->
            if (owner.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)) binding.start() else binding.stop()
        }
        owner.lifecycle.addObserver(observer)
        if (owner.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)) binding.start()
        onDispose { owner.lifecycle.removeObserver(observer); binding.stop(); binding.clearEnvironment() }
    }
    DisposableEffect(binding) { onDispose { binding.close() } }
    val state by binding.state.collectAsState()
    val artwork by binding.artwork.collectAsState()
    val ambient by binding.ambientArtwork.collectAsState()
    val active by binding.active.collectAsState()
    val bitmap = artwork?.takeUnless { it.isRecycled }?.asImageBitmap()
    ContentTheme(dark = state.dark) {
        ContentPanel(state, binding::dispatch, modifier,
            artwork = bitmap?.let { image -> { Image(image, contentDescription = null, modifier = Modifier.fillMaxSize(), contentScale = ContentScale.Crop) } },
            ambientBackground = {
                MediaAmbientBackground(ambient, state.dark, active = active, animating = state.media.playing)
            },
            clockText = { val text by binding.clock.collectAsState(); text },
            lyricsState = { val lyrics by binding.lyrics.collectAsState(); lyrics })
    }
}
