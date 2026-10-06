package com.icar03.content.ui

import android.view.SoundEffectConstants
import android.view.View
import androidx.compose.runtime.staticCompositionLocalOf

/** Buttons and accepted blank-page taps share one sound path, independent of state readback. */
internal val LocalContentClickSound = staticCompositionLocalOf<(View) -> Unit> { ::playContentClickSound }

private fun playContentClickSound(view: View) {
    if (!view.isSoundEffectsEnabled) return
    val handled = try {
        Class.forName("com.autonavi.amapauto.jni.GAdaAndroid")
            .getMethod("playSystemClick").invoke(null) == true
    } catch (_: ReflectiveOperationException) { false }
      catch (_: LinkageError) { false }
    if (!handled) view.playSoundEffect(SoundEffectConstants.CLICK)
}
