package com.icar03.content.ui

import android.content.Context
import android.database.ContentObserver
import android.media.AudioAttributes
import android.media.SoundPool
import android.os.Handler
import android.os.Looper
import android.provider.Settings
import android.view.SoundEffectConstants
import android.view.View
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.remember
import androidx.compose.runtime.staticCompositionLocalOf
import androidx.compose.ui.platform.LocalContext
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import java.io.IOException

/** Buttons and accepted blank-page taps share one sound path, independent of state readback. */
val LocalContentClickSound = staticCompositionLocalOf<(View) -> Unit> { ::playContentClickSound }

// The panel provides the preloaded player. An unmounted or stopped owner stays silent.
private val defaultSliderTickSound: (View) -> Unit = {}
internal val LocalContentSliderTickSound = staticCompositionLocalOf { defaultSliderTickSound }
internal const val SLIDER_TICK_ASSET = "content/sounds/slider_tick.wav"

private fun playContentClickSound(view: View) {
    if (!view.isSoundEffectsEnabled) return
    val handled = try {
        Class.forName("com.autonavi.amapauto.jni.GAdaAndroid")
            .getMethod("playSystemClick").invoke(null) == true
    } catch (_: ReflectiveOperationException) { false }
      catch (_: LinkageError) { false }
    if (!handled) view.playSoundEffect(SoundEffectConstants.CLICK)
}

/** One pool for all panel sliders; load before interaction and release with the host. */
@Composable
internal fun ProvideContentSliderTickSound(
    createPlayer: (Context) -> ContentSliderTickPlayer = { ContentSliderTickPlayer(it) },
    content: @Composable () -> Unit,
) {
    // Preserve caller-provided sound recorders and previews without allocating a real pool.
    if (LocalContentSliderTickSound.current !== defaultSliderTickSound) {
        content()
        return
    }
    val context = LocalContext.current.applicationContext
    val owner = LocalLifecycleOwner.current
    val player = remember(context, owner) { createPlayer(context) }
    DisposableEffect(player, owner) {
        fun syncLifecycle() {
            if (owner.lifecycle.currentState.isAtLeast(Lifecycle.State.STARTED)) player.start() else player.stop()
        }
        val observer = LifecycleEventObserver { _, _ -> syncLifecycle() }
        owner.lifecycle.addObserver(observer)
        syncLifecycle()
        onDispose {
            owner.lifecycle.removeObserver(observer)
            player.stop()
        }
    }
    val tick = remember(player) { player::play }
    CompositionLocalProvider(LocalContentSliderTickSound provides tick, content = content)
}

/** The controls own tick deduplication; this consumer never queues or synthesizes ticks. */
internal class ContentSliderTickPlayer(
    private val context: Context,
    private val createPool: () -> SliderTickSoundPool = { AndroidSliderTickSoundPool(context) },
) {
    private var pool: SliderTickSoundPool? = null
    private var ready = false
    private var active = false
    private var observingSettings = false
    private var systemSoundEnabled = false
    private val settingsObserver = object : ContentObserver(Handler(Looper.getMainLooper())) {
        override fun onChange(selfChange: Boolean) {
            if (active) systemSoundEnabled = readSystemSoundEnabled()
        }
    }

    fun start() {
        if (active) return
        active = true
        systemSoundEnabled = readSystemSoundEnabled()
        observingSettings = try {
            context.contentResolver.registerContentObserver(
                Settings.System.getUriFor(Settings.System.SOUND_EFFECTS_ENABLED), false, settingsObserver)
            true
        } catch (_: SecurityException) { false }
        val next = try { createPool() } catch (_: RuntimeException) {
            stop()
            return
        }
        pool = next
        try {
            next.load { success -> if (active && pool === next) ready = success }
        } catch (_: IOException) {
            stop()
        } catch (_: RuntimeException) {
            stop()
        }
    }

    fun play(view: View) {
        if (!active || !ready || !view.isSoundEffectsEnabled) return
        // A denied observer still respects the current setting, without caching an unknown state.
        if (!observingSettings) systemSoundEnabled = readSystemSoundEnabled()
        if (systemSoundEnabled) pool?.play()
    }

    fun stop() {
        active = false
        if (observingSettings) {
            context.contentResolver.unregisterContentObserver(settingsObserver)
            observingSettings = false
        }
        releasePool()
    }

    private fun releasePool() {
        ready = false
        val previous = pool
        pool = null
        previous?.release()
    }

    private fun readSystemSoundEnabled(): Boolean = try {
        Settings.System.getInt(context.contentResolver, Settings.System.SOUND_EFFECTS_ENABLED, 1) != 0
    } catch (_: SecurityException) { false }
}

internal interface SliderTickSoundPool {
    fun load(onComplete: (Boolean) -> Unit)
    fun play()
    fun release()
}

private class AndroidSliderTickSoundPool(private val context: Context) : SliderTickSoundPool {
    private val pool = SoundPool.Builder().setMaxStreams(4)
        .setAudioAttributes(AudioAttributes.Builder()
            .setUsage(AudioAttributes.USAGE_ASSISTANCE_SONIFICATION)
            .setContentType(AudioAttributes.CONTENT_TYPE_SONIFICATION).build())
        .build()
    private var soundId = 0

    override fun load(onComplete: (Boolean) -> Unit) {
        pool.setOnLoadCompleteListener { _, sampleId, status ->
            if (sampleId == soundId) onComplete(status == 0)
        }
        // WAV is uncompressed in both the Gradle asset package and the formal APK.
        context.assets.openFd(SLIDER_TICK_ASSET).use { soundId = pool.load(it, 1) }
        if (soundId == 0) onComplete(false)
    }

    override fun play() {
        // Unity playback preserves the supplied sample's level and the system stream volume.
        pool.play(soundId, 1f, 1f, 1, 0, 1f)
    }

    override fun release() {
        pool.setOnLoadCompleteListener(null)
        pool.release()
    }
}
