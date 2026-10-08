package com.icar03.content.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.graphics.Bitmap
import android.graphics.Canvas
import android.view.View
import android.view.WindowManager
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.runtime.*
import androidx.compose.runtime.snapshots.Snapshot
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.semantics.SemanticsConfiguration
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.airbnb.lottie.LottieCompositionFactory
import com.icar03.content.model.VehicleFeature
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Production adapters with independent actual/target, real clicks and native OEM drawing. */
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
open class ShortcutIdentityNativeTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    private val owner = object : LifecycleOwner {
        override val lifecycle = LifecycleRegistry.createUnsafe(this).apply { currentState = Lifecycle.State.RESUMED }
    }
    private val neutral get() = Color(if (dark) 0xFFE8E8E8 else 0xFF27303B)

    @Composable private fun Host(content: @Composable () -> Unit) {
        val view = LocalView.current
        SideEffect {
            @Suppress("DEPRECATION")
            view.context.activity().window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
        }
        CompositionLocalProvider(LocalLifecycleOwner provides owner) { ContentTheme(dark, content) }
    }

    private fun state() = ContentUiState(previewMode = false, dark = dark,
        shortcutButtons = ShortcutGrid.productionButtons, systemControls = SystemQuickControl.entries,
        features = VehicleFeature.entries.associateWith {
            FeatureState(actual = if (it.action) -1 else 0, known = !it.action, available = true)
        }, systemLevels = SystemQuickControl.entries.associateWith { LevelState(.4f) })

    private fun preload(state: ContentUiState) {
        val assets = state.controls.filterKeys { it != ControlId.Lock }.map { (id, value) -> vehicleControlIconRecipe(id, value.displayed, dark).asset } +
            state.features.map { (id, value) -> vehicleFeatureIconRecipe(id, value.displayed, dark).asset }
        assets.filter { it.isNotBlank() }.distinct().forEach {
            assertNotNull(it, LottieCompositionFactory.fromAssetSync(RuntimeEnvironment.getApplication(), "content-oem/$it").value)
        }
    }

    @Test fun aRealFeatureClickKeepsRegistrationGeometryAndOtherPlaybackThroughoutPendingAndReadback() {
        val state = mutableStateOf(state())
        preload(state.value)
        var accepted = 0
        compose.setContent {
            Host {
                ContentPanel(state.value, { event ->
                    if (event == ContentEvent.FeatureTapped(ShortcutId.RearFog)) {
                        accepted++
                        state.value = state.value.copy(
                            features = state.value.features.mapValues { (feature, value) ->
                                value.copy(available = false, target = if (feature == VehicleFeature.RearFog) 1 else null)
                            }, systemLevels = state.value.systemLevels.mapValues { it.value.copy(available = false) })
                    }
                }, Modifier.testTag("identity-host"))
            }
        }
        compose.waitForIdle()
        compose.mainClock.autoAdvance = false
        val tags = listOf("control-Lock", "control-Heating", "shortcut-RearFog", "shortcut-GloveBox", "shortcut-WirelessCharging")
        val bounds = tags.associateWith { compose.onNodeWithTag(it).getUnclippedBoundsInRoot() }
        val unrelated = listOf("shortcut-icon-Lock", "shortcut-icon-Heating", "shortcut-icon-PassengerWindowLock", "dock-icon-Lock")
        fun stable() {
            tags.forEach { assertEquals("$it keeps its registered cell", bounds.getValue(it), compose.onNodeWithTag(it).getUnclippedBoundsInRoot()) }
            ShortcutGrid.productionButtons.forEach { id ->
                compose.onNodeWithTag(if (id.control != null) "control-${id.control!!.name}" else "shortcut-${id.name}").assertExists()
            }
            unrelated.forEach { tag ->
                compose.onNodeWithTag(tag, useUnmergedTree = true)
                    .assert(SemanticsMatcher.expectValue(IconAnimationPlaying, false))
                    .assert(SemanticsMatcher.expectValue(IconAnimationProgress, 1f))
            }
        }
        stable()
        compose.onNodeWithTag("shortcut-RearFog").performClick()
        compose.mainClock.advanceTimeBy(96)
        assertEquals(1, accepted)
        stable()
        compose.onNodeWithTag("shortcut-icon-RearFog", useUnmergedTree = true)
            .assert(SemanticsMatcher.expectValue(IconAnimationPlaying, true))
        compose.runOnIdle {
            state.value = state.value.copy(features = state.value.features.mapValues { (feature, value) ->
                value.copy(actual = if (feature == VehicleFeature.RearFog) 1 else value.actual, target = null, available = true)
            })
        }
        compose.mainClock.advanceTimeBy(96)
        stable()
        compose.runOnIdle { state.value = state.value.copy(time = "12:26", systemLevels = state.value.systemLevels.mapValues { it.value.copy(available = true) }) }
        compose.mainClock.advanceTimeBy(96)
        stable()
        compose.mainClock.autoAdvance = true
    }

    @OptIn(ExperimentalComposeUiApi::class)
    @Test fun staticAndAnimatedFeatureGlyphsUseTheSameOffAndOnPalette() {
        val state = mutableStateOf(state())
        val action = mutableIntStateOf(0)
        val ids = listOf(ShortcutId.RearFog, ShortcutId.LeftChildLock, ShortcutId.WirelessCharging, ShortcutId.WindowVent)
        val features = ids.map { requireNotNull(it.feature) }.toSet()
        val recipes = (0..1).associateWith { displayed ->
            ids.associateWith { id -> vehicleFeatureIconRecipe(requireNotNull(id.feature), displayed, dark) }
        }
        // WindowVent changes asset as well as tint. Warm both recipes, then still
        // await their publication through the production asynchronous consumer.
        recipes.values.flatMap { it.values }.map { it.asset }.filter { it.isNotBlank() }.distinct().forEach { asset ->
            assertNotNull(asset, LottieCompositionFactory.fromAssetSync(
                RuntimeEnvironment.getApplication(), "content-oem/$asset").value)
        }
        fun node(id: ShortcutId) = compose.onNodeWithTag("palette-${id.name}", useUnmergedTree = true)
        fun semantics() = ids.associateWith { node(it).fetchSemanticsNode().config }
        fun matches(displayed: Int, color: Color,
            frames: Map<ShortcutId, SemanticsConfiguration>) = ids.all { id ->
            val recipe = recipes.getValue(displayed).getValue(id)
            val frame = frames.getValue(id)
            frame[OemResource] == recipe.resource && frame[OemTint] == color.value.toLong() &&
                frame[IconAnimationVisible] && frame[IconAnimationReady] == recipe.asset.isNotEmpty() &&
                frame[IconAnimationAsset] == recipe.asset
        }
        fun assertNoPlayback(frames: Map<ShortcutId, SemanticsConfiguration>, phase: String) {
            ids.forEach { id ->
                val frame = frames.getValue(id)
                assertFalse("$phase: ${id.name} state publication must not play", frame[IconAnimationPlaying])
                assertEquals("$phase: ${id.name} stays at its settled frame", 1f, frame[IconAnimationProgress], 0f)
            }
        }
        fun awaitFrame(phase: String,
            condition: (Map<ShortcutId, SemanticsConfiguration>) -> Boolean) {
            // The clock drives recomposition; idle yields to Android's layout/draw
            // and cached Lottie callbacks before observing the same displayed frame.
            compose.waitUntil(phase, timeoutMillis = 5_000) {
                compose.mainClock.advanceTimeByFrame()
                compose.waitForIdle()
                condition(semantics())
            }
        }
        fun awaitStable(displayed: Int, color: Color, phase: String, rejectPlayback: Boolean = false) {
            awaitFrame(phase) { frames ->
                // Check every observed frame, rather than waiting out an accidental
                // animation and mistaking its completed tail for a static update.
                if (rejectPlayback) assertNoPlayback(frames, phase)
                matches(displayed, color, frames) && ids.all { id ->
                    !frames.getValue(id)[IconAnimationPlaying] && frames.getValue(id)[IconAnimationProgress] == 1f
                }
            }
        }
        fun project(displayed: Int, accepted: Boolean = false) {
            compose.runOnIdle {
                state.value = state.value.copy(features = state.value.features.mapValues { (feature, value) ->
                    if (feature !in features) value
                    else if (accepted) value.copy(target = displayed)
                    else value.copy(actual = displayed, target = null, known = true)
                })
                if (accepted) action.intValue++
                Snapshot.sendApplyNotifications()
            }
        }
        fun assertPixels(displayed: Int, color: Color, phase: String, middle: Boolean = false) {
            compose.waitForIdle()
            // Freeze the diagnostics and bounds before drawing; later semantics
            // fetches must not describe a newer frame than this native bitmap.
            val frames = ids.associateWith { id ->
                val recipe = recipes.getValue(displayed).getValue(id)
                val captured = node(id)
                    .assert(SemanticsMatcher.expectValue(OemResource, recipe.resource))
                    .assert(SemanticsMatcher.expectValue(OemTint, color.value.toLong()))
                    .assert(SemanticsMatcher.expectValue(IconAnimationReady, recipe.asset.isNotEmpty()))
                    .assert(SemanticsMatcher.expectValue(IconAnimationAsset, recipe.asset))
                    .fetchSemanticsNode()
                val config = captured.config
                val animated = middle && recipe.asset.isNotEmpty()
                assertEquals("$phase: ${id.name} playback phase", animated, config[IconAnimationPlaying])
                if (animated) assertTrue("$phase: ${id.name} must be an animated middle frame",
                    config[IconAnimationProgress] >= .5f && config[IconAnimationProgress] < .75f)
                else assertEquals("$phase: ${id.name} static/settled progress", 1f, config[IconAnimationProgress], 0f)
                captured.boundsInRoot to config
            }
            val root = compose.onNodeWithTag("palette-host").fetchSemanticsNode().root as ViewRootForTest
            val bitmap = compose.runOnIdle {
                Bitmap.createBitmap(root.view.width, root.view.height, Bitmap.Config.ARGB_8888).also { root.view.draw(Canvas(it)) }
            }
            val directory = java.io.File("build/frames").apply { assertTrue(isDirectory || mkdirs()) }
            java.io.File(directory, "feature-palette-${if (dark) "dark" else "light"}-$phase.png")
                .outputStream().use { assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it)) }
            ids.forEach { id ->
                val (bounds, config) = frames.getValue(id)
                val expected = color.toArgb()
                var pixels = 0
                for (y in bounds.top.toInt() until bounds.bottom.toInt()) for (x in bounds.left.toInt() until bounds.right.toInt()) {
                    val actual = bitmap.getPixel(x, y)
                    if (kotlin.math.abs(android.graphics.Color.red(actual) - android.graphics.Color.red(expected)) <= 3 &&
                        kotlin.math.abs(android.graphics.Color.green(actual) - android.graphics.Color.green(expected)) <= 3 &&
                        kotlin.math.abs(android.graphics.Color.blue(actual) - android.graphics.Color.blue(expected)) <= 3) pixels++
                }
                assertTrue("$phase: ${id.name} paints its functional palette in native pixels: $pixels " +
                    "tint=${config[OemTint]} resource=${config[OemResource]} asset=${config[IconAnimationAsset]} " +
                    "ready=${config[IconAnimationReady]} progress=${config[IconAnimationProgress]}", pixels > 12)
            }
        }
        compose.setContent {
            Host {
                Row(Modifier.fillMaxWidth().height(140.dp).background(Color(0xFF808080)).testTag("palette-host")) {
                    ids.forEach { id -> key(id) {
                        CompositionLocalProvider(LocalIconAction provides action.intValue) {
                            ShortcutOemIcon(id, state.value, recipes.getValue(0).getValue(id).resource,
                                Modifier.size(120.dp).testTag("palette-${id.name}"))
                        }
                    } }
                }
            }
        }
        compose.waitForIdle()
        compose.mainClock.autoAdvance = false
        try {
            awaitStable(0, neutral, "off-initial", rejectPlayback = true)
            assertPixels(0, neutral, "off-initial")
            // Independent vehicle readback changes the palette, never the action token.
            project(1)
            awaitStable(1, ContentFunctionalBlue, "on-readback", rejectPlayback = true)
            assertPixels(1, ContentFunctionalBlue, "on-readback")
            project(0)
            awaitStable(0, neutral, "off-readback", rejectPlayback = true)
            assertPixels(0, neutral, "off-readback")

            for (displayed in listOf(1, 0)) {
                val color = if (displayed == 1) ContentFunctionalBlue else neutral
                val phase = if (displayed == 1) "on-action" else "off-action"
                project(displayed, accepted = true)
                awaitFrame("$phase-middle") { frames ->
                    matches(displayed, color, frames) && ids.all { id ->
                        val frame = frames.getValue(id)
                        if (recipes.getValue(displayed).getValue(id).asset.isEmpty())
                            !frame[IconAnimationPlaying] && frame[IconAnimationProgress] == 1f
                        else frame[IconAnimationPlaying] && frame[IconAnimationProgress] >= .5f && frame[IconAnimationProgress] < .75f
                    }
                }
                assertPixels(displayed, color, "$phase-middle", middle = true)
                awaitStable(displayed, color, "$phase-tail")
                assertPixels(displayed, color, "$phase-tail")
                project(displayed)
                awaitStable(displayed, color, "$phase-readback", rejectPlayback = true)
                assertPixels(displayed, color, "$phase-readback")
            }
        } finally {
            compose.mainClock.autoAdvance = true
        }
    }

    private tailrec fun Context.activity(): Activity = when (this) {
        is Activity -> this
        is ContextWrapper -> baseContext.activity()
        else -> error("Missing activity")
    }
}

@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class ShortcutIdentityDarkNativeTest : ShortcutIdentityNativeTest() {
    override val dark = true
}
