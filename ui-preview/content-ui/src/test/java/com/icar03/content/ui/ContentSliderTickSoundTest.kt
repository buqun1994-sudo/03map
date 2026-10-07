package com.icar03.content.ui

import android.content.Context
import android.os.Looper
import android.provider.Settings
import android.view.View
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.width
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.SideEffect
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.semantics.SemanticsActions
import androidx.compose.ui.test.assertIsNotEnabled
import androidx.compose.ui.test.click
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.test.onNodeWithTag
import androidx.compose.ui.test.performSemanticsAction
import androidx.compose.ui.test.performTouchInput
import androidx.compose.ui.unit.dp
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.test.core.app.ApplicationProvider
import org.junit.Assert.*
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.IOException
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Verify supplied audio, asynchronous admission and actual slider actions without audible test output. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
open class ContentSliderTickSoundTest {
    @get:Rule val compose = createComposeRule()
    private val context: Context get() = ApplicationProvider.getApplicationContext()

    @Before fun enableSystemEffects() {
        Settings.System.putInt(context.contentResolver, Settings.System.SOUND_EFFECTS_ENABLED, 1)
    }

    @Test fun packagedSampleHasNoExtraSilenceOrGainAndBothEdgesReachZero() {
        val bytes = context.assets.open(SLIDER_TICK_ASSET).use { it.readBytes() }
        val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
        assertEquals("RIFF", String(bytes, 0, 4, Charsets.US_ASCII))
        assertEquals("WAVE", String(bytes, 8, 4, Charsets.US_ASCII))
        assertEquals(1, buffer.getShort(20).toInt())
        assertEquals(2, buffer.getShort(22).toInt())
        assertEquals(48_000, buffer.getInt(24))
        assertEquals(16, buffer.getShort(34).toInt())
        assertEquals("data", String(bytes, 36, 4, Charsets.US_ASCII))
        val dataBytes = buffer.getInt(40)
        assertEquals(bytes.size - 44, dataBytes)
        assertEquals(49.0, dataBytes / 4.0 / 48_000.0 * 1_000.0, .00001)
        val samples = (44 until bytes.size step 2).map { buffer.getShort(it).toInt() }
        assertEquals(1_929, samples.maxOf { kotlin.math.abs(it) })
        assertEquals(listOf(0, 0), samples.take(2))
        assertEquals(listOf(0, 0), samples.takeLast(2))
        // The same API used by SoundPool must receive an uncompressed descriptor.
        context.assets.openFd(SLIDER_TICK_ASSET).use { assertEquals(bytes.size.toLong(), it.length) }
    }

    @Test fun preloadingNeverReplaysMissedTicksAndEachAcceptedCallPlaysOnce() {
        val pool = RecordingPool()
        val player = ContentSliderTickPlayer(context) { pool }
        val view = View(context)
        player.play(view)
        assertEquals(0, pool.loads)
        player.start()
        player.start()
        assertEquals(1, pool.loads)
        player.play(view)
        player.play(view)
        assertEquals(0, pool.plays)
        pool.complete(true)
        assertEquals(0, pool.plays)
        repeat(3) { player.play(view) }
        assertEquals(3, pool.plays)
        player.stop()
    }

    @Test fun systemPreferenceAndViewFlagBothSuppressSoundWithoutDelayedReplay() {
        val pool = RecordingPool()
        val player = ContentSliderTickPlayer(context) { pool }
        val view = View(context)
        player.start()
        pool.complete(true)
        player.play(view)
        assertEquals(1, pool.plays)
        Settings.System.putInt(context.contentResolver, Settings.System.SOUND_EFFECTS_ENABLED, 0)
        shadowOf(Looper.getMainLooper()).idle()
        player.play(view)
        assertEquals(1, pool.plays)
        Settings.System.putInt(context.contentResolver, Settings.System.SOUND_EFFECTS_ENABLED, 1)
        shadowOf(Looper.getMainLooper()).idle()
        view.isSoundEffectsEnabled = false
        player.play(view)
        assertEquals(1, pool.plays)
        view.isSoundEffectsEnabled = true
        assertEquals(1, pool.plays)
        player.play(view)
        assertEquals(2, pool.plays)
        player.stop()
    }

    @Test fun stopReleasesExactlyOnceAndOldLoadCannotEnableANewSession() {
        val pools = mutableListOf<RecordingPool>()
        val player = ContentSliderTickPlayer(context) { RecordingPool().also(pools::add) }
        val view = View(context)
        player.start()
        val first = pools.single()
        player.stop()
        player.stop()
        assertEquals(1, first.releases)
        first.complete(true)
        player.play(view)
        assertEquals(0, first.plays)
        player.start()
        val second = pools.last()
        first.complete(true)
        player.play(view)
        assertEquals(0, second.plays)
        second.complete(true)
        assertEquals(0, second.plays)
        player.play(view)
        assertEquals(1, second.plays)
        player.stop()
        assertEquals(1, second.releases)
    }

    @Test fun loadFailureStaysSilentAndMissingAssetReleasesItsPool() {
        val failed = RecordingPool()
        val first = ContentSliderTickPlayer(context) { failed }
        first.start()
        failed.complete(false)
        first.play(View(context))
        assertEquals(0, failed.plays)
        first.stop()
        assertEquals(1, failed.releases)
        val missing = RecordingPool(failLoad = true)
        val second = ContentSliderTickPlayer(context) { missing }
        second.start()
        second.play(View(context))
        assertEquals(0, missing.plays)
        assertEquals(1, missing.releases)
        second.stop()
        assertEquals(1, missing.releases)
    }

    @Test fun providerUsesTheHostLifecycleAndDisposalClosesThePool() {
        val owner = TickLifecycleOwner()
        val visible = mutableStateOf(true)
        val pools = mutableListOf<RecordingPool>()
        lateinit var tick: (View) -> Unit
        lateinit var view: View
        compose.setContent {
            CompositionLocalProvider(LocalLifecycleOwner provides owner) {
                if (visible.value) ProvideContentSliderTickSound(
                    createPlayer = { ContentSliderTickPlayer(it) { RecordingPool().also(pools::add) } },
                ) {
                    val sound = LocalContentSliderTickSound.current
                    val localView = LocalView.current
                    SideEffect { tick = sound; view = localView }
                }
            }
        }
        compose.waitForIdle()
        assertTrue(pools.isEmpty())
        compose.runOnIdle { owner.registry.currentState = Lifecycle.State.STARTED }
        val first = pools.single()
        compose.runOnIdle { first.complete(true); tick(view) }
        assertEquals(1, first.plays)
        compose.runOnIdle { owner.registry.currentState = Lifecycle.State.CREATED }
        assertEquals(1, first.releases)
        compose.runOnIdle { tick(view); owner.registry.currentState = Lifecycle.State.STARTED }
        assertEquals(1, first.plays)
        assertEquals(2, pools.size)
        val second = pools.last()
        compose.runOnIdle { first.complete(true); tick(view) }
        assertEquals(0, second.plays)
        compose.runOnIdle { second.complete(true); tick(view) }
        assertEquals(1, second.plays)
        compose.runOnIdle { visible.value = false }
        compose.waitForIdle()
        assertEquals(1, second.releases)
        compose.runOnIdle { tick(view) }
        assertEquals(1, second.plays)
    }

    @Test fun providerPreservesAnExternalTickOverrideWithoutLoadingAPool() {
        var poolsCreated = 0
        var ticks = 0
        compose.setContent {
            CompositionLocalProvider(LocalContentSliderTickSound provides { ticks++ }) {
                ProvideContentSliderTickSound(createPlayer = {
                    poolsCreated++
                    ContentSliderTickPlayer(it) { RecordingPool() }
                }) {
                    val tick = LocalContentSliderTickSound.current
                    val view = LocalView.current
                    SideEffect { tick(view) }
                }
            }
        }
        compose.waitForIdle()
        assertEquals(0, poolsCreated)
        assertEquals(1, ticks)
    }

    @Test fun settingsSliderPlaysPerChangedTickAndCancelDisableOrReadbackAddsNothing() {
        val value = mutableStateOf(0f)
        val enabled = mutableStateOf(true)
        var ticks = 0
        var commits = 0
        compose.setContent {
            ContentTheme(false) {
                CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(false),
                    LocalContentSliderTickSound provides { ticks++ }) {
                    Column(Modifier.width(360.dp)) {
                        SettingsSlider(value.value, 0f..4f, { value.value = it },
                            { commits++ }, enabled = enabled.value,
                            steps = 3, tag = "tick-slider")
                    }
                }
            }
        }
        compose.waitForIdle()
        assertEquals(0, ticks)
        val slider = compose.onNodeWithTag("tick-slider")
        slider.performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(1f)) }
        assertEquals(1, ticks)
        slider.performSemanticsAction(SemanticsActions.SetProgress) { assertFalse(it(1f)) }
        assertEquals(1, ticks)
        slider.performSemanticsAction(SemanticsActions.SetProgress) { assertTrue(it(2f)) }
        assertEquals(2, ticks)
        assertEquals(2, commits)
        compose.runOnIdle { value.value = 3f }
        compose.waitForIdle()
        assertEquals(2, ticks)
        slider.performTouchInput { down(Offset(width * .75f, center.y)); cancel() }
        assertEquals(2, ticks)
        assertEquals(2, commits)
        compose.runOnIdle { enabled.value = false }
        slider.assertIsNotEnabled().performTouchInput { click(center) }
        assertEquals(2, ticks)
        assertEquals(2, commits)
    }

    @Test fun steppedDragDeduplicatesTicksAndCancellationNeverAddsAnExtraTick() {
        val level = mutableStateOf<Int?>(1)
        val enabled = mutableStateOf(true)
        var ticks = 0
        var commits = 0
        compose.setContent {
            ContentTheme(false) {
                CompositionLocalProvider(LocalContentSliderTickSound provides { ticks++ }) {
                    Column(Modifier.width(140.dp)) {
                        SteppedVerticalControl("刻度", 4, level.value, "tick-stepped", enabled = enabled.value,
                            onPower = {}, onCommit = { level.value = it; commits++ }, icon = { _, _ -> })
                    }
                }
            }
        }
        compose.waitForIdle()
        val slider = compose.onNodeWithTag("tick-stepped")
        slider.performTouchInput {
            down(Offset(center.x, height * .875f))
            moveTo(Offset(center.x, height * .625f))
            moveTo(Offset(center.x, height * .615f))
            moveTo(Offset(center.x, height * .375f))
        }
        assertEquals(2, ticks)
        slider.performTouchInput { cancel() }
        assertEquals(2, ticks)
        assertEquals(0, commits)
        compose.runOnIdle { level.value = 3 }
        compose.waitForIdle()
        assertEquals(2, ticks)
        compose.runOnIdle { enabled.value = false }
        slider.performTouchInput {
            down(center)
            moveTo(Offset(center.x, height * .1f))
            up()
        }
        assertEquals(2, ticks)
        assertEquals(0, commits)
    }
}

@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class ContentSliderTickSoundApi34Test : ContentSliderTickSoundTest()

private class TickLifecycleOwner : LifecycleOwner {
    val registry = LifecycleRegistry(this).apply { currentState = Lifecycle.State.CREATED }
    override val lifecycle: Lifecycle get() = registry
}

private class RecordingPool(private val failLoad: Boolean = false) : SliderTickSoundPool {
    var loads = 0
    var plays = 0
    var releases = 0
    private lateinit var onLoaded: (Boolean) -> Unit
    override fun load(onComplete: (Boolean) -> Unit) {
        loads++
        if (failLoad) throw IOException("missing test audio")
        onLoaded = onComplete
    }
    fun complete(success: Boolean) = onLoaded(success)
    override fun play() { plays++ }
    override fun release() { releases++ }
}
