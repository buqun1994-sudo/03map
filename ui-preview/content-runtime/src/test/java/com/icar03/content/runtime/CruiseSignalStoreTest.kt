package com.icar03.content.runtime

import android.content.Context
import android.os.Looper
import android.os.SystemClock
import com.autonavi.amapauto.content.*
import com.icar03.content.ui.*
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.time.Duration

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class CruiseSignalStoreTest {
    @Before fun preferences() {
        RuntimeEnvironment.getApplication().getSharedPreferences("content_preferences_v1", Context.MODE_PRIVATE)
            .edit().clear().commit()
    }
    private fun store() = ContentStore(RuntimeEnvironment.getApplication(), ContentPorts.PreviewVehiclePort(),
        ContentPorts.PreviewMediaPort(), object : ContentPorts.SystemPort {
            override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
            override fun write(kind: Int, percent: Int) = false
        })
    private fun raw(seconds: Int = 18, show: Int = 1) = intArrayOf(2, 2, 0, seconds, show)
    private fun accept(store: ContentStore, seconds: Int = 18, inCruise: Boolean = true) {
        store.acceptCruiseMapSignals(intArrayOf(3, 8, seconds, 2), 1, false,
            inCruise, SystemClock.elapsedRealtime())
    }

    @Test fun snapshotCopiesSourceAndPreservesColorWithoutQualifiedSeconds() {
        val source = intArrayOf(2, 1, 0, 33, 1, 0, 2, 1, 15, 0, 0, 3, 0, 0, 1)
        val snapshot = ContentPorts.CruiseSignalSnapshot.fromRaw(source, 123L)
        source.fill(-1)
        assertEquals(listOf(1, 2, 3), snapshot.lights.map { it.direction })
        assertEquals(listOf(33, -1, -1), snapshot.lights.map { it.seconds })
        assertEquals(listOf(0, 1, 0), snapshot.lights.map { it.color })
        assertEquals(2, snapshot.lights[0].waitNum)
        try {
            (snapshot.lights as MutableList).clear()
            fail("immutable snapshot")
        } catch (_: UnsupportedOperationException) { }
        val state = ContentState().apply { cruiseSignals = snapshot }
        assertSame(snapshot, state.copy().cruiseSignals)
    }

    @Test fun mapDisplayDtoUsesNativeManeuverAndStatusEnums() {
        val source = intArrayOf(3, 1, 28, 2, 3, 8, 9, 8, 3, 2, 12, 4)
        val snapshot = ContentPorts.CruiseSignalSnapshot.fromMapRaw(source, 3, false, 123L)
        source.fill(-1)
        assertEquals(listOf(1, 2, 3), snapshot.lights.map { it.direction })
        assertEquals(listOf(28, -1, 12), snapshot.lights.map { it.seconds })
        assertEquals(listOf(0, 2, 1), snapshot.lights.map { it.color })

        val secondary = ContentPorts.CruiseSignalSnapshot.fromMapRaw(
            intArrayOf(2, 8, 7, 8), 1, false, 123L)
        assertEquals(2, secondary.lights.single().direction)
        assertEquals(2, secondary.lights.single().color)
        assertEquals(7, secondary.lights.single().seconds)
    }

    @Test fun mapDisplayDtoRejectsUnknownEnumsAndSecondarySideDirections() {
        val bad = intArrayOf(
            3, 3, 18, 2,   // unknown maneuver; never guess straight
            3, 1, 18, 0,   // legacy red value; not a map status
            3, 1, 18, 1,   // legacy green value; not a map status
            3, 1, 18, 7,   // filtered native status
            3, 1, 18, 9,   // unknown map status
            2, 1, 18, 2,   // secondary light is only emitted for straight
            1, 8, 18, 2)    // legacy showType
        assertTrue(ContentPorts.CruiseSignalSnapshot.fromMapRaw(bad, 3, false, 123L).lights.isEmpty())
    }

    @Test fun mapSubstatesPreserveColorsAndFollowModeSpecificCountdownVisibility() {
        val colors = mapOf(2 to 0, 3 to 0, 4 to 1, 5 to 1, 6 to 1, 8 to 2)
        for ((status, color) in colors) for (sdType in listOf(false, true)) {
            val main = ContentPorts.CruiseSignalSnapshot.fromMapRaw(
                intArrayOf(3, 8, 5, status), 1, sdType, 123L).lights.single()
            assertEquals("native status=$status mode=$sdType", color, main.color)
            assertEquals(if (status == 8 || status == 6 && !sdType) -1 else 5, main.seconds)
            val secondary = ContentPorts.CruiseSignalSnapshot.fromMapRaw(
                intArrayOf(2, 8, 5, status), 1, sdType, 123L).lights.single()
            assertEquals(color, secondary.color)
            assertEquals(5, secondary.seconds)
        }
        for (seconds in listOf(0, -1)) {
            val light = ContentPorts.CruiseSignalSnapshot.fromMapRaw(
                intArrayOf(3, 8, seconds, 4), 1, false, 123L).lights.single()
            assertEquals(1, light.color)
            assertEquals(-1, light.seconds)
        }
    }

    @Test fun mapLightCountOwnsMainSecondarySelectionAndAmbiguousDirectionsAreHidden() {
        val raw = intArrayOf(2, 8, 9, 2, 3, 1, 28, 2, 3, 2, 12, 4)
        val combo = ContentPorts.CruiseSignalSnapshot.fromMapRaw(raw, 2, false, 123L)
        assertEquals(listOf(1, 3), combo.lights.map { it.direction })
        assertTrue(ContentPorts.CruiseSignalSnapshot.fromMapRaw(raw, 0, false, 123L).lights.isEmpty())
        assertTrue(ContentPorts.CruiseSignalSnapshot.fromMapRaw(
            intArrayOf(3, 8, 5, 2, 3, 8, 4, 4), 2, false, 123L).lights.isEmpty())
    }

    @Test fun unknownDirectionsColorsAndAmbiguousDuplicatesDoNotBecomeAValidLight() {
        assertTrue(ContentPorts.CruiseSignalSnapshot.fromRaw(null, 0).lights.isEmpty())
        assertTrue(ContentPorts.CruiseSignalSnapshot.fromRaw(intArrayOf(1), 0).lights.isEmpty())
        val bad = intArrayOf(0, 0, 0, 18, 1, 0, 4, 1, 18, 1, 0, 1, 4, 18, 1,
            0, 2, 0, 18, 1, 0, 2, 1, 17, 1, 0, 3, 1, 20, -1)
        assertTrue(ContentPorts.CruiseSignalSnapshot.fromRaw(bad, 0).lights.isEmpty())
        assertTrue(ContentPorts.CruiseSignalSnapshot.fromRaw(raw(), -1).lights.isEmpty())
    }

    @Test fun callbackAndModeTransitionsOwnClearingAndNeverInferAGreenTransition() {
        val store = store()
        try {
            store.startCruiseSignals(); accept(store)
            assertEquals(18, store.snapshot().cruiseSignals.lights.single().seconds)
            accept(store, 0)
            assertEquals(0, store.snapshot().cruiseSignals.lights.single().color)
            assertEquals(-1, store.snapshot().cruiseSignals.lights.single().seconds)
            accept(store, inCruise = false)
            assertTrue(store.snapshot().cruiseSignals.lights.isEmpty())
            accept(store); store.invalidateCruiseSignals()
            assertTrue(store.snapshot().cruiseSignals.lights.isEmpty())
            accept(store); store.acceptCruiseMapSignals(null, 0, false, true, SystemClock.elapsedRealtime())
            assertTrue(store.snapshot().cruiseSignals.lights.isEmpty())
        } finally { store.destroy() }
    }

    @Test fun missedPublicationsExpireButNativeRefreshRestartsTheFreshnessDeadline() {
        val store = store()
        try {
            store.startCruiseSignals(); accept(store)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(2000))
            assertEquals(18, store.snapshot().cruiseSignals.lights.single().seconds)
            accept(store, 16)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(2000))
            assertEquals(16, store.snapshot().cruiseSignals.lights.single().seconds)
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(1000))
            assertTrue(store.snapshot().cruiseSignals.lights.isEmpty())
        } finally { store.destroy() }
    }

    @Test fun stoppingOrDisablingRequiresANewBatchAndRejectsOldOrFutureReceiptTimes() {
        val store = store()
        try {
            store.startCruiseSignals(); accept(store)
            val oldTime = SystemClock.elapsedRealtime()
            store.stopCruiseSignals()
            accept(store)
            assertTrue(store.snapshot().cruiseSignals.lights.isEmpty())
            shadowOf(Looper.getMainLooper()).idleFor(Duration.ofMillis(10))
            store.startCruiseSignals()
            store.acceptCruiseMapSignals(intArrayOf(3, 8, 18, 2), 1, false, true, oldTime)
            assertTrue(store.snapshot().cruiseSignals.lights.isEmpty())
            store.acceptCruiseMapSignals(intArrayOf(3, 8, 18, 2), 1, false, true, SystemClock.elapsedRealtime() + 1)
            assertTrue(store.snapshot().cruiseSignals.lights.isEmpty())
            accept(store); store.setShowCruiseSignals(false)
            assertTrue(store.snapshot().cruiseSignals.lights.isEmpty())
            accept(store)
            assertTrue(store.snapshot().cruiseSignals.lights.isEmpty())
            store.setShowCruiseSignals(true)
            assertTrue(store.snapshot().cruiseSignals.lights.isEmpty())
            accept(store)
            assertEquals(18, store.snapshot().cruiseSignals.lights.single().seconds)
            store.destroy()
            accept(store)
            assertTrue(store.snapshot().cruiseSignals.lights.isEmpty())
        } finally { store.destroy() }
    }

    @Test fun cruiseSecondsPublishOnlyTheirOwnDomainAndBindingStopClearsThem() {
        val store = store()
        val mapper = ContentUiMapper()
        val binding = ContentBinding(store, mapper = mapper)
        try {
            binding.start()
            val shell = binding.state.value
            val lyrics = binding.lyrics.value
            val shellCount = mapper.shellProjectionCount
            val lyricsCount = mapper.lyricsProjectionCount
            accept(store, 18)
            assertTrue(binding.cruiseSignalsVisible.value)
            assertEquals(CruiseSignalItem(CruiseSignalDirection.Straight, CruiseSignalColor.Red, 18),
                binding.cruiseSignals.value.lights.single())
            accept(store, 17)
            assertEquals(17, binding.cruiseSignals.value.lights.single().seconds)
            assertSame(shell, binding.state.value)
            assertSame(lyrics, binding.lyrics.value)
            assertEquals(shellCount, mapper.shellProjectionCount)
            assertEquals(lyricsCount, mapper.lyricsProjectionCount)
            binding.stop()
            assertFalse(binding.cruiseSignalsVisible.value)
            assertTrue(binding.cruiseSignals.value.lights.isEmpty())
            binding.start()
            assertTrue(binding.cruiseSignals.value.lights.isEmpty())
        } finally { binding.close(); store.destroy() }
    }

    @Test fun settingsRejectDisabledSignalToggleAndRetainChoiceWhenStatusBarIsOff() {
        val store = store()
        val binding = ContentBinding(store)
        try {
            binding.start()
            binding.dispatch(ContentEvent.SettingsTapped)
            binding.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.TopBar))
            assertTrue(binding.canDispatch(ContentEvent.ShowCruiseSignalsChanged(false)))
            binding.dispatch(ContentEvent.ShowCruiseSignalsChanged(false))
            assertFalse(store.snapshot().showCruiseSignals)
            binding.dispatch(ContentEvent.ImmersiveShowTopBarChanged(false))
            assertFalse(binding.canDispatch(ContentEvent.ShowCruiseSignalsChanged(true)))
            binding.dispatch(ContentEvent.ShowCruiseSignalsChanged(true))
            assertFalse(store.snapshot().showCruiseSignals)
            binding.dispatch(ContentEvent.ImmersiveShowTopBarChanged(true))
            assertTrue(binding.canDispatch(ContentEvent.ShowCruiseSignalsChanged(true)))
            binding.dispatch(ContentEvent.ShowCruiseSignalsChanged(true))
            assertTrue(store.snapshot().showCruiseSignals)
            assertTrue(ContentEvent.ShowCruiseSignalsChanged(false).isSettingsInteraction())
        } finally { binding.close(); store.destroy() }
    }
}
