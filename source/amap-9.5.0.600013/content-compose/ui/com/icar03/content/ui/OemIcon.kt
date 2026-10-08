package com.icar03.content.ui

import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import androidx.compose.runtime.remember
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.compositionLocalOf
import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.tween
import androidx.compose.animation.core.CubicBezierEasing
import androidx.compose.foundation.Canvas
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.SolidColor
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.graphics.nativeCanvas
import androidx.compose.ui.graphics.drawscope.drawIntoCanvas
import androidx.compose.ui.graphics.drawscope.scale
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.graphics.vector.VectorGroup
import androidx.compose.ui.graphics.vector.VectorPath
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.res.vectorResource
import androidx.compose.ui.semantics.SemanticsPropertyKey
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.airbnb.lottie.LottieComposition
import com.airbnb.lottie.LottieCompositionFactory
import com.airbnb.lottie.LottieListener
import com.airbnb.lottie.LottieDrawable
import com.airbnb.lottie.LottieProperty
import com.airbnb.lottie.SimpleColorFilter
import com.airbnb.lottie.model.KeyPath
import com.airbnb.lottie.value.LottieValueCallback
import com.airbnb.lottie.value.LottieFrameInfo
import kotlin.math.roundToInt

internal val OemTint = SemanticsPropertyKey<Long>("OemTint")
internal val IconMotion = SemanticsPropertyKey<Float>("IconMotion")
internal val IconAnimationReady = SemanticsPropertyKey<Boolean>("IconAnimationReady")
internal val IconAnimationVisible = SemanticsPropertyKey<Boolean>("IconAnimationVisible")
internal val IconAnimationPlaying = SemanticsPropertyKey<Boolean>("IconAnimationPlaying")
internal val IconAnimationRetained = SemanticsPropertyKey<Boolean>("IconAnimationRetained")
internal val IconAnimationProgress = SemanticsPropertyKey<Float>("IconAnimationProgress")
internal val IconAnimationAsset = SemanticsPropertyKey<String>("IconAnimationAsset")
internal val LocalIconVisible = compositionLocalOf { true }
internal val LocalIconPressed = compositionLocalOf { false }
internal val LocalIconAction = compositionLocalOf { 0 }
internal val OemResource = SemanticsPropertyKey<Int>("OemResource")

/** Recolor registered OEM layers only; geometry, clipping and level alpha stay intact. */
internal fun oemLayerColors(original: ImageVector, colors: Map<Int, Color>): ImageVector {
    var pathIndex = 0
    val builder = ImageVector.Builder(original.name, original.defaultWidth, original.defaultHeight,
        original.viewportWidth, original.viewportHeight, original.tintColor, original.tintBlendMode, original.autoMirror)
    fun append(group: VectorGroup) {
        builder.addGroup(group.name, group.rotation, group.pivotX, group.pivotY, group.scaleX, group.scaleY,
            group.translationX, group.translationY, group.clipPathData)
        group.forEach { node ->
            when (node) {
                is VectorGroup -> append(node)
                is VectorPath -> {
                    val fill = colors[pathIndex++]?.let { SolidColor(it) } ?: node.fill
                    builder.addPath(node.pathData, node.pathFillType, node.name, fill, node.fillAlpha,
                        node.stroke, node.strokeAlpha, node.strokeLineWidth, node.strokeLineCap,
                        node.strokeLineJoin, node.strokeLineMiter, node.trimPathStart, node.trimPathEnd, node.trimPathOffset)
                }
            }
        }
        builder.clearGroup()
    }
    append(original.root)
    return builder.build()
}

/** Theme only the neutral black fills. OEM orange, gray levels, fill alpha,
 * paths and transforms remain byte-for-byte in their registered source assets. */
internal fun oemNeutralLayerColors(original: ImageVector, base: Color): Map<Int, Color> {
    val colors = mutableMapOf<Int, Color>()
    var index = 0
    fun visit(group: VectorGroup) {
        group.forEach { node ->
            when (node) {
                is VectorGroup -> visit(node)
                is VectorPath -> {
                    if ((node.fill as? SolidColor)?.value?.toArgb() == Color.Black.toArgb()) colors[index] = base
                    index++
                }
            }
        }
    }
    visit(original.root)
    return colors
}

private fun animationFor(resource: Int): String? = when (resource) {
    R.drawable.content_oem_ico_lock_close -> "ico_lock_close_f.json"
    R.drawable.content_oem_ico_lock_open -> "ico_lock_open_f.json"
    R.drawable.content_oem_ico_media_next_f -> "ico_media_next_f.json"
    // OEM names describe the command; their last frame is the opposite button.
    R.drawable.content_oem_ico_media_play_f -> "ico_media_pause_02_f.json"
    R.drawable.content_oem_ico_media_pause_f -> "ico_media_play_02_f.json"
    R.drawable.content_oem_ico_bluetooth -> "ico_bluetooth_1.json"
    R.drawable.content_oem_ico_media_aiquting -> "ico_media_aiquting.json"
    R.drawable.content_oem_ico_media_neteasy -> "ico_media_neteasy.json"
    R.drawable.content_oem_ico_devices_usb -> "ico_devices_usb.json"
    R.drawable.content_oem_ico_media_local -> "ico_media_local.json"
    R.drawable.content_oem_ico_light_fog_rear -> "ico_light_fog_rear.json"
    R.drawable.content_oem_ico_window_dis -> "ico_window_dis.json"
    R.drawable.content_oem_ico_window_close -> "ico_window_close.json"
    R.drawable.content_oem_ico_window_half -> "ico_window_half.json"
    R.drawable.content_oem_ico_glove_box -> "ico_glove_box.json"
    R.drawable.content_oem_ico_door_baby_l -> "ico_door_baby_l.json"
    R.drawable.content_oem_ico_door_baby_r -> "ico_door_baby_r.json"
    R.drawable.content_oem_ico_brightness_lo -> "ico_brightness_lo.json"
    R.drawable.content_oem_ico_volume_2 -> "ico_volume_2.json"
    R.drawable.content_oem_ico_screen_clean -> "ico_screen_clean.json"
    R.drawable.content_oem_ico_sys_power -> "ico_sys_power.json"
    R.drawable.content_oem_ico_volume_0 -> "ico_volume_0.json"
    R.drawable.content_oem_ico_volume_1 -> "ico_volume_1.json"
    R.drawable.content_oem_ico_volume_3 -> "ico_volume_3.json"
    R.drawable.content_oem_ico_volume_mute -> "ico_volume_mute.json"
    R.drawable.content_oem_ico_seat_set -> "ico_seat_set.json"
    else -> null
}

/** One displayed frame; the next asset may load without replacing this image. */
private data class OemFrame(
    val resource: Int,
    val tint: Color,
    val pathColors: Map<Int, Color>,
    val asset: String?,
    val frames: IntRange?,
    val colors: Map<List<String>, Color>,
    val strokeColors: Map<Int, Color>,
    val strokePathColors: Map<List<String>, Color>,
    val pathOpacities: Map<List<String>, Int>,
    val playbackSpeed: Float,
    val mediaGlyph: Boolean,
    val composition: LottieComposition? = null,
) {
    /** Compare the resource/theme recipe while deliberately ignoring the loaded composition. */
    fun hasSameRecipe(other: OemFrame): Boolean =
        resource == other.resource && tint == other.tint && pathColors == other.pathColors &&
            asset == other.asset && frames == other.frames && colors == other.colors &&
            strokeColors == other.strokeColors && strokePathColors == other.strokePathColors &&
            pathOpacities == other.pathOpacities && playbackSpeed == other.playbackSpeed && mediaGlyph == other.mediaGlyph

    // Recoloring an in-flight glyph is not a new playback recipe. Keeping these
    // keys separate prevents pending -> known readback/theme color interpolation
    // from canceling the one-shot at an intermediate frame (notably the lock).
    val playbackRecipe: List<Any?> get() = listOf(asset, frames, playbackSpeed, mediaGlyph)
    fun hasSamePlaybackRecipe(other: OemFrame): Boolean = playbackRecipe == other.playbackRecipe
}

/** Shared asset consumer. Triggers are presentation events, never business truth. */
@Composable
internal fun OemIcon(
    resource: Int, modifier: Modifier, description: String? = null,
    tint: Color = MaterialTheme.colorScheme.primary, pathColors: Map<Int, Color> = emptyMap(),
    motionKey: Any? = null, animationAsset: String? = animationFor(resource),
    animationColors: Map<List<String>, Color> = emptyMap(), animationFrames: IntRange? = null,
    animationStrokeColors: Map<Int, Color> = emptyMap(),
    animationStrokePathColors: Map<List<String>, Color> = emptyMap(),
    animationPathOpacities: Map<List<String>, Int> = emptyMap(),
    playbackSpeed: Float = 1f,
    animateOnPress: Boolean = false, animateOnAction: Boolean = true,
    acceptedActionOnly: Boolean = false,
) {
    val mediaGlyph = resource == R.drawable.content_oem_ico_media_play_f || resource == R.drawable.content_oem_ico_media_pause_f
    val action = LocalIconAction.current
    val stateTrigger = motionKey ?: resource
    val transition = remember { Animatable(1f) }
    val owner = LocalLifecycleOwner.current
    val view = LocalView.current
    var started by remember(owner) { mutableStateOf(owner.lifecycle.currentState.isAtLeast(Lifecycle.State.RESUMED)) }
    var focused by remember(view) { mutableStateOf(view.hasWindowFocus()) }
    val visible = started && focused && LocalIconVisible.current
    val pressed = LocalIconPressed.current && visible
    val scale by pressScale(pressed)
    DisposableEffect(owner, view) {
        val observer = LifecycleEventObserver { _, _ -> started = owner.lifecycle.currentState.isAtLeast(Lifecycle.State.RESUMED) }
        val tree = view.viewTreeObserver
        val focus = android.view.ViewTreeObserver.OnWindowFocusChangeListener { focused = it }
        owner.lifecycle.addObserver(observer)
        tree.addOnWindowFocusChangeListener(focus)
        onDispose {
            owner.lifecycle.removeObserver(observer)
            if (tree.isAlive) tree.removeOnWindowFocusChangeListener(focus)
        }
    }
    // Menu rows leave after a selection. Their path animation begins on DOWN;
    // the persistent source button plays the new target through the same consumer.
    var pressAction by remember { mutableIntStateOf(0) }
    LaunchedEffect(pressed) { if (animateOnPress && pressed) pressAction++ }

    // The trigger is the business/presentation event that is allowed to play an
    // animation. It intentionally excludes the current resource/theme recipe so
    // a day/night resource swap cannot replay a completed gear transition.
    val triggerKey = if (acceptedActionOnly) listOf(action, pressAction)
    else listOf(stateTrigger, if (animateOnAction) action else 0, pressAction)
    var previous by remember { mutableStateOf(triggerKey) }
    LaunchedEffect(triggerKey, visible) {
        val changed = previous != triggerKey
        previous = triggerKey
        if (changed && visible) {
            transition.snapTo(.9f)
            transition.animateTo(1f, tween(260, easing = CubicBezierEasing(.32f, .72f, 0f, 1f)))
        } else transition.snapTo(1f)
    }

    val context = LocalContext.current.applicationContext
    var composition by remember(animationAsset) { mutableStateOf<LottieComposition?>(null) }
    var loadFailed by remember(animationAsset) { mutableStateOf(false) }
    DisposableEffect(animationAsset) {
        if (animationAsset == null) onDispose { } else {
            val task = LottieCompositionFactory.fromAsset(context, "content-oem/$animationAsset")
            val listener = LottieListener<LottieComposition> { composition = it }
            val failure = LottieListener<Throwable> { loadFailed = true }
            task.addListener(listener).addFailureListener(failure)
            onDispose { task.removeListener(listener); task.removeFailureListener(failure) }
        }
    }

    val progress = remember { Animatable(1f) }
    var drawing by remember { mutableStateOf(false) }
    val targetFrame = OemFrame(resource, tint, pathColors, animationAsset, animationFrames,
        animationColors, animationStrokeColors, animationStrokePathColors, animationPathOpacities,
        if (playbackSpeed.isFinite() && playbackSpeed > 0f) playbackSpeed else 1f, mediaGlyph)
    var renderedFrame by remember { mutableStateOf(targetFrame) }
    // Mounting/rebinding publishes an existing state, not a user or readback
    // transition. Only a later change of this icon's own trigger may play.
    var playedKey by remember { mutableStateOf(triggerKey) }
    var cancelledTrigger by remember { mutableStateOf<List<Any?>?>(null) }
    val loaded = composition
    val canRender = visible

    LaunchedEffect(triggerKey, targetFrame.playbackRecipe, loaded, loadFailed, canRender) {
        drawing = false
        val sameTrigger = playedKey == triggerKey
        val sameRecipe = renderedFrame.hasSamePlaybackRecipe(targetFrame)

        if (!canRender) {
            // Lifecycle/focus/page cancellation settles the visible state. A
            // later resume must not synthesize a replay of this old trigger.
            cancelledTrigger = triggerKey
            playedKey = triggerKey
            renderedFrame = targetFrame
            progress.snapTo(1f)
            return@LaunchedEffect
        }
        if (cancelledTrigger != null) {
            if (cancelledTrigger == triggerKey) {
                // Keep the cancellation sticky while a late composition result
                // arrives. A stable Vector is preferable to silently resuming
                // an animation that was explicitly canceled by lifecycle.
                if (!renderedFrame.hasSameRecipe(targetFrame) || renderedFrame.composition != null) {
                    renderedFrame = targetFrame
                    progress.snapTo(1f)
                }
                return@LaunchedEffect
            }
            cancelledTrigger = null
        }

        if (sameTrigger) {
            if (sameRecipe) {
                // The initial Lottie load and A→coldB→A can both arrive after
                // the trigger was already consumed. Reattach the loaded recipe
                // at its stable tail instead of leaving a null composition or
                // replaying the animation.
                if (targetFrame.asset != null && loaded != null && renderedFrame.composition == null) {
                    renderedFrame = targetFrame.copy(composition = loaded)
                    progress.snapTo(1f)
                } else if (renderedFrame.composition != null && progress.value < 1f) {
                    progress.snapTo(1f)
                }
                return@LaunchedEffect
            }

            // The business state is unchanged while the resource/theme recipe
            // changed. Static vectors are adopted immediately. Lottie theme
            // variants retain the old drawn frame until the new composition is
            // ready, then switch atomically to its tail without replaying.
            if (targetFrame.asset == null || loadFailed) {
                renderedFrame = targetFrame
                progress.snapTo(1f)
                return@LaunchedEffect
            }
            if (loaded == null) return@LaunchedEffect
            renderedFrame = targetFrame.copy(composition = loaded)
            progress.snapTo(1f)
            return@LaunchedEffect
        }

        // A new business trigger owns a fresh one-shot animation. Cold loading
        // deliberately leaves the last valid rendered frame on screen.
        if (targetFrame.asset == null || loadFailed) {
            playedKey = triggerKey
            renderedFrame = targetFrame
            progress.snapTo(1f)
            return@LaunchedEffect
        }
        if (loaded == null) return@LaunchedEffect

        val playing = triggerKey
        playedKey = playing
        progress.snapTo(0f)
        renderedFrame = targetFrame.copy(composition = loaded)
        drawing = true
        try {
            val duration = animationFrames?.let { (it.last - it.first) * 1000f / loaded.frameRate } ?: loaded.duration
            progress.animateTo(1f, tween((duration / targetFrame.playbackSpeed).toInt().coerceAtLeast(200),
                easing = androidx.compose.animation.core.LinearEasing))
        } finally {
            if (playing == playedKey) drawing = false
        }
    }

    // Theme interpolation may recolor the same displayed state without changing
    // playback keys or resetting its progress. A pending different state holds
    // the complete old frame recipe until its asset can enter at progress zero.
    val frame = if (renderedFrame.hasSamePlaybackRecipe(targetFrame)) {
        targetFrame.copy(composition = renderedFrame.composition)
    } else renderedFrame
    val semantics = modifier.graphicsLayer { scaleX = scale * transition.value; scaleY = scale * transition.value }
        .semantics {
            this[OemTint] = frame.tint.value.toLong(); this[OemResource] = frame.resource
            this[IconMotion] = scale * transition.value
            this[IconAnimationReady] = composition != null && frame.composition != null && frame.hasSameRecipe(targetFrame)
            this[IconAnimationVisible] = visible
            this[IconAnimationPlaying] = drawing && canRender && frame.composition != null
            this[IconAnimationRetained] = frame.composition != null && canRender
            this[IconAnimationProgress] = if (frame.composition != null && canRender) progress.value else 1f
            this[IconAnimationAsset] = if (frame.composition != null && canRender) frame.asset ?: "" else ""
            if (description != null) contentDescription = description
        }
    if (canRender && frame.composition != null) {
        val drawable = remember(frame) {
            LottieDrawable().apply {
                setComposition(frame.composition!!)
                @Suppress("DEPRECATION")
                enableMergePathsForKitKatAndAbove(!frame.mediaGlyph)
                if (frame.tint != Color.Unspecified) addValueCallback(KeyPath("**"), LottieProperty.COLOR_FILTER,
                    LottieValueCallback<android.graphics.ColorFilter>(SimpleColorFilter(frame.tint.toArgb())))
                // These two OEM assets contain the old button disc as path 1.
                // Keep their original symbol paths 2/3 and baked transforms; the
                // content panel already supplies the button's press surface.
                if (frame.mediaGlyph) addValueCallback(KeyPath("**", "路径 1"), LottieProperty.PATH,
                    LottieValueCallback(android.graphics.Path()))
                if (frame.strokeColors.isNotEmpty()) addValueCallback(KeyPath("**"), LottieProperty.STROKE_COLOR,
                    object : LottieValueCallback<Int>() {
                        override fun getValue(frameInfo: LottieFrameInfo<Int>): Int {
                            val original = frameInfo.startValue ?: frameInfo.endValue ?: 0
                            return frame.strokeColors[original]?.toArgb() ?: original
                        }
                    })
                frame.colors.forEach { (path, color) ->
                    val keyPath = KeyPath(*path.toTypedArray())
                    addValueCallback(keyPath, LottieProperty.COLOR, LottieValueCallback(color.toArgb()))
                    addValueCallback(keyPath, LottieProperty.STROKE_COLOR, LottieValueCallback(color.toArgb()))
                }
                // Narrow, explicit stroke recipes take precedence over any legacy
                // source-color mapping and leave stroke alpha/width/path untouched.
                frame.strokePathColors.forEach { (path, color) ->
                    addValueCallback(KeyPath(*path.toTypedArray()), LottieProperty.STROKE_COLOR,
                        LottieValueCallback(color.toArgb()))
                }
                frame.pathOpacities.forEach { (path, opacity) ->
                    addValueCallback(KeyPath(*path.toTypedArray()), LottieProperty.OPACITY,
                        LottieValueCallback(opacity.coerceIn(0, 100)))
                }
            }
        }
        DisposableEffect(drawable) { onDispose { drawable.cancelAnimation() } }
        Canvas(semantics) {
            drawable.setBounds(0, 0, size.width.toInt(), size.height.toInt())
            if (frame.frames == null) drawable.progress = progress.value
            else frame.frames.let { drawable.frame = (it.first + progress.value * (it.last - it.first)).roundToInt() }
            if (frame.mediaGlyph) scale(1.6f) { drawIntoCanvas { drawable.draw(it.nativeCanvas) } }
            else drawIntoCanvas { drawable.draw(it.nativeCanvas) }
        }
    } else if (frame.pathColors.isEmpty()) Icon(painter = painterResource(frame.resource), contentDescription = description, modifier = semantics, tint = frame.tint)
    else {
        val original = androidx.compose.ui.graphics.vector.ImageVector.vectorResource(frame.resource)
        val layered = remember(original, frame.pathColors) { oemLayerColors(original, frame.pathColors) }
        Icon(imageVector = layered, contentDescription = description, modifier = semantics, tint = Color.Unspecified)
    }
}
