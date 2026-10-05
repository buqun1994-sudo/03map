package com.icar03.content.preview

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.runtime.*
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.icar03.content.ui.ContentPanel
import com.icar03.content.ui.ContentTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            val scope = rememberCoroutineScope()
            val controller = remember { PreviewController(scope) }
            val lifecycle = LocalLifecycleOwner.current.lifecycle
            DisposableEffect(controller, lifecycle) {
                val observer = LifecycleEventObserver { _, event ->
                    when (event) {
                        Lifecycle.Event.ON_START -> controller.resume()
                        Lifecycle.Event.ON_STOP -> controller.pause()
                        else -> Unit
                    }
                }
                lifecycle.addObserver(observer)
                onDispose { lifecycle.removeObserver(observer); controller.close() }
            }
            val state by controller.state.collectAsStateWithLifecycle()
            androidx.activity.compose.BackHandler(enabled = state.settingsOpen || state.sourcesOpen || state.scenariosOpen) {
                controller.dispatch(com.icar03.content.ui.ContentEvent.DismissSheet)
            }
            ContentTheme(state.dark) { ContentPanel(state = state, onEvent = controller::dispatch) }
        }
    }
}
