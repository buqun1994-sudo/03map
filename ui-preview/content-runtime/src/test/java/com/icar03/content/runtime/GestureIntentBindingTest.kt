package com.icar03.content.runtime

import android.content.Context
import android.os.Looper
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.model.GestureAction
import com.icar03.content.model.GestureCommand
import com.icar03.content.ui.ContentEvent
import com.icar03.content.ui.ContentUiState
import com.icar03.content.ui.PanelPage
import com.icar03.content.ui.SettingsSection
import com.icar03.content.ui.supportsImmersive
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.LooperMode
import java.util.concurrent.ExecutorService
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger
import java.util.concurrent.atomic.AtomicReference

/** Real reducer writes can precede the coalesced UI frame; intent acceptance samples the Store. */
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
@LooperMode(LooperMode.Mode.PAUSED)
class GestureIntentBindingTest {
    private val app: Context get() = RuntimeEnvironment.getApplication()
    private val preferences get() = app.getSharedPreferences("content_preferences_v1", Context.MODE_PRIVATE)
    @Before fun reset() { assertTrue(preferences.edit().clear().commit()) }
    @After fun cleanup() { assertTrue(preferences.edit().clear().commit()) }
    private class Fixture(context: Context) : AutoCloseable {
        val systemReads = AtomicInteger()
        val store = ContentStore(context, ContentPorts.PreviewVehiclePort(), object : ContentPorts.MediaPort {
            override fun isAvailable() = false
            override fun isSourceAvailable() = true
            override fun requestPlayback(playing: Boolean) = false
            override fun requestNext() = false
            override fun requestSource(source: String) = false
            override fun start(listener: ContentPorts.MediaSnapshotListener) {}
            override fun stop() {}
        }, object : ContentPorts.SystemPort {
            override fun read(kind: Int): ContentPorts.SystemSnapshot {
                systemReads.incrementAndGet()
                return ContentPorts.SystemSnapshot(false, 0)
            }
            override fun write(kind: Int, percent: Int) = false
        })
        val binding = ContentBinding(store)
        fun start() {
            binding.start()
            val worker = ContentBinding::class.java.getDeclaredField("systemWorker")
                .apply { isAccessible = true }.get(binding) as ExecutorService
            repeat(2) { worker.submit {}.get(2, TimeUnit.SECONDS); shadowOf(Looper.getMainLooper()).idle() }
        }
        fun queuedWrite(change: (ContentStore) -> Unit): ContentUiState {
            val displayed = binding.state.value
            val error = AtomicReference<Throwable?>()
            val producer = Thread { try { change(store) } catch (failure: Throwable) { error.set(failure) } }
            producer.start(); producer.join(2_000)
            assertFalse("the actual Store producer must complete before main publication", producer.isAlive)
            assertNull(error.get())
            assertSame("main Handler has not published a new UI frame", displayed, binding.state.value)
            return displayed
        }
        override fun close() { binding.close(); store.destroy() }
    }

    @Test fun queuedEnterToNoneRejectsTheGestureWhileThePublishedFrameStillContainsEnter() {
        Fixture(app).use { fixture ->
            fixture.start()
            val event = ContentEvent.GesturePerformed(GestureCommand.TwoRight)
            assertTrue(fixture.binding.canDispatch(event))
            val displayed = fixture.queuedWrite { it.setGestureAction(GestureCommand.TwoRight, GestureAction.None) }
            assertSame(GestureAction.EnterImmersive, displayed.gestureActions[GestureCommand.TwoRight])
            val fresh = fixture.store.snapshot()
            assertSame(GestureAction.None, fresh.gestureActions[GestureCommand.TwoRight])
            val saved = preferences.all.toMap()
            val reads = fixture.systemReads.get()
            val current = checkNotNull(fixture.binding.currentPresentationState())
            assertSame(fresh.gestureActions, current.gestureActions)
            assertFalse(fixture.binding.canDispatch(event))
            assertSame(displayed, fixture.binding.state.value)
            assertEquals(saved, preferences.all)
            assertEquals("intent projection never reads a system service", reads, fixture.systemReads.get())
            shadowOf(Looper.getMainLooper()).idle()
            assertSame(GestureAction.None, fixture.binding.state.value.gestureActions[GestureCommand.TwoRight])
        }
    }

    @Test fun queuedNoneToEnterAcceptsTheGestureBeforeTheNewPreferenceReachesThePublishedFrame() {
        Fixture(app).use { fixture ->
            fixture.start()
            val event = ContentEvent.GesturePerformed(GestureCommand.TwoUp)
            assertFalse(fixture.binding.canDispatch(event))
            val displayed = fixture.queuedWrite { it.setGestureAction(GestureCommand.TwoUp, GestureAction.EnterImmersive) }
            assertSame(GestureAction.None, displayed.gestureActions[GestureCommand.TwoUp])
            val fresh = fixture.store.snapshot()
            assertSame(GestureAction.EnterImmersive, fresh.gestureActions[GestureCommand.TwoUp])
            val current = checkNotNull(fixture.binding.currentPresentationState())
            assertSame(fresh.gestureActions, current.gestureActions)
            assertTrue(fixture.binding.canDispatch(event))
            assertSame(displayed, fixture.binding.state.value)
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(current.gestureActions, fixture.binding.state.value.gestureActions)
        }
    }

    @Test fun aQueuedPageWithoutImmersiveCapabilityRejectsTheIntentEvenThoughLyricsIsStillPublished() {
        Fixture(app).use { fixture ->
            fixture.start()
            val event = ContentEvent.GesturePerformed(GestureCommand.TwoRight)
            assertEquals(PanelPage.Lyrics, fixture.binding.state.value.page)
            val displayed = fixture.queuedWrite { it.setPageIndex(0) }
            assertEquals(0, fixture.store.snapshot().pageIndex)
            assertEquals(PanelPage.Lyrics, displayed.page)
            val current = checkNotNull(fixture.binding.currentPresentationState())
            assertEquals(PanelPage.Shortcuts, current.page)
            assertFalse(current.page.supportsImmersive)
            assertFalse(fixture.binding.canDispatch(event))
            assertSame(displayed, fixture.binding.state.value)
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(PanelPage.Shortcuts, fixture.binding.state.value.page)
        }
    }

    @Test fun coalescedPreferenceAndPageWritesAreSampledTogetherWithoutPublishingOrSavingAnotherValue() {
        Fixture(app).use { fixture ->
            fixture.start()
            val displayed = fixture.queuedWrite {
                it.setGestureAction(GestureCommand.ThreeRight, GestureAction.ExitImmersive)
                it.setPageIndex(0)
            }
            val saved = preferences.all.toMap()
            val current = checkNotNull(fixture.binding.currentPresentationState())
            assertEquals(PanelPage.Shortcuts, current.page)
            assertSame(GestureAction.ExitImmersive, current.gestureActions[GestureCommand.ThreeRight])
            assertSame(fixture.store.snapshot().gestureActions, current.gestureActions)
            assertSame(displayed, fixture.binding.state.value)
            assertEquals(saved, preferences.all)
        }
    }

    @Test fun currentProjectionUsesBindingModalOwnersAndStoppedOrClosedOwnersExposeNoPresentationSnapshot() {
        Fixture(app).use { fixture ->
            assertNull(fixture.binding.currentPresentationState())
            fixture.start()
            fixture.binding.dispatch(ContentEvent.SettingsTapped)
            fixture.binding.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.Gestures))
            val settings = checkNotNull(fixture.binding.currentPresentationState())
            assertTrue(settings.settingsOpen)
            assertFalse(settings.settingsCollapsed)
            assertEquals(SettingsSection.Gestures, settings.settingsSection)
            fixture.binding.dispatch(ContentEvent.SettingsDismissed)
            fixture.binding.dispatch(ContentEvent.OpenSources)
            assertTrue(checkNotNull(fixture.binding.currentPresentationState()).sourcesOpen)
            fixture.binding.stop()
            val stopped = fixture.binding.state.value
            assertNull(fixture.binding.currentPresentationState())
            assertSame(stopped, fixture.binding.state.value)
            fixture.binding.close()
            assertNull(fixture.binding.currentPresentationState())
        }
    }
}
