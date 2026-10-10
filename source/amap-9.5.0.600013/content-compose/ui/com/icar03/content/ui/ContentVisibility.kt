package com.icar03.content.ui

import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.platform.LocalView
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner

/** One window/lifecycle observer for the panel; standalone glyphs keep the same fallback. */
internal val LocalContentWindowActive = staticCompositionLocalOf<Boolean?> { null }

/** Icon/metadata occlusion never cancels the lyrics' independent follow/visibility contract. */
internal val LocalContentDrawingVisible = staticCompositionLocalOf { true }

@Composable
internal fun rememberContentWindowActive(): Boolean {
    val owner = LocalLifecycleOwner.current
    val view = LocalView.current
    var resumed by remember(owner) { mutableStateOf(owner.lifecycle.currentState.isAtLeast(Lifecycle.State.RESUMED)) }
    var focused by remember(view) { mutableStateOf(view.hasWindowFocus()) }
    DisposableEffect(owner, view) {
        val observer = LifecycleEventObserver { _, _ ->
            resumed = owner.lifecycle.currentState.isAtLeast(Lifecycle.State.RESUMED)
        }
        val tree = view.viewTreeObserver
        val focus = android.view.ViewTreeObserver.OnWindowFocusChangeListener { focused = it }
        owner.lifecycle.addObserver(observer)
        tree.addOnWindowFocusChangeListener(focus)
        onDispose {
            owner.lifecycle.removeObserver(observer)
            if (tree.isAlive) tree.removeOnWindowFocusChangeListener(focus)
        }
    }
    return resumed && focused
}

@Composable
internal fun contentDrawingVisible(): Boolean {
    val active = LocalContentWindowActive.current ?: rememberContentWindowActive()
    return active && LocalIconVisible.current && LocalContentDrawingVisible.current
}
