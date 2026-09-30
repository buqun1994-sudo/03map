package com.icar03.content.host

import android.app.Activity
import android.os.Looper
import android.widget.FrameLayout
import com.autonavi.amapauto.content.ContentRuntime
import com.autonavi.amapauto.content.ContentState
import com.autonavi.amapauto.content.ContentStore
import com.autonavi.amapauto.jni.GAdaAndroid
import com.autonavi.amapauto.jni.protocol.AndroidProtocolExe
import org.junit.After
import org.junit.Assert.*
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.Robolectric
import org.robolectric.RobolectricTestRunner
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class ContentRuntimeThemeTest {
    @Before fun reset() {
        ContentRuntime.detach(null)
        staticField("lastAmapThemeMode").setInt(null, staticField("THEME_UNKNOWN").getInt(null))
        staticField("hasAmapThemeCallback").setBoolean(null, false)
        GAdaAndroid.reset()
        AndroidProtocolExe.reset()
    }

    @After fun release() {
        ContentRuntime.detach(null)
        shadowOf(Looper.getMainLooper()).idle()
        GAdaAndroid.reset()
        AndroidProtocolExe.reset()
        staticField("lastAmapThemeMode").setInt(null, staticField("THEME_UNKNOWN").getInt(null))
        staticField("hasAmapThemeCallback").setBoolean(null, false)
    }

    @Test fun coldAttachKeepsUnknownUntilResolvedCallback() {
        assertEquals(Boolean::class.javaPrimitiveType,
            GAdaAndroid::class.java.getMethod("nativeIsNightMode").returnType)
        GAdaAndroid.failure = null
        withHost { _, root ->
            GAdaAndroid.nightMode = false
            ContentRuntime.attach(root)
            assertNull(staticField("activeRuntime").get(null))
            assertNotEquals(ContentState.THEME_LIGHT, staticField("THEME_UNKNOWN").getInt(null))
            AndroidProtocolExe.resolvedMode = 1
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(listOf(-1), AndroidProtocolExe.requestedIds)
            assertEquals(ContentState.THEME_LIGHT, store().snapshot().themeMode)
        }
    }

    @Test fun callbackBeforeAttachOverridesStaleNativeBootstrapAndSurvivesReattach() {
        GAdaAndroid.failure = null
        GAdaAndroid.nightMode = false
        ContentRuntime.onAmapThemeChanged(2)
        withHost { _, root ->
            ContentRuntime.attach(root)
            assertEquals(ContentState.THEME_DARK, store().snapshot().themeMode)
            ContentRuntime.detach(null)
            ContentRuntime.attach(root)
            assertEquals(ContentState.THEME_DARK, store().snapshot().themeMode)
            assertEquals(0, GAdaAndroid.queries)
        }
    }

    @Test fun pauseResumeCannotOverwriteCallbackAndExplicitDayStillWorks() {
        GAdaAndroid.failure = null
        GAdaAndroid.nightMode = true
        withHost { activity, root ->
            ContentRuntime.attach(root)
            ContentRuntime.onAmapThemeChanged(2)
            GAdaAndroid.nightMode = false
            repeat(3) {
                ContentRuntime.onHostPaused(activity)
                ContentRuntime.onHostResumed(activity)
                ContentRuntime.attach(root)
                assertEquals(ContentState.THEME_DARK, store().snapshot().themeMode)
            }
            assertEquals(1, GAdaAndroid.queries)
            ContentRuntime.onAmapThemeChanged(1)
            assertEquals(ContentState.THEME_LIGHT, store().snapshot().themeMode)
            ContentRuntime.onHostResumed(activity)
            assertEquals(ContentState.THEME_LIGHT, store().snapshot().themeMode)
        }
    }

    @Test fun unknownCallbacksAndUnavailableEnginePreserveKnownTheme() {
        GAdaAndroid.failure = null
        GAdaAndroid.nightMode = true
        withHost { activity, root ->
            ContentRuntime.attach(root)
            for (unknown in listOf(-1, 0, 3, Int.MAX_VALUE)) {
                ContentRuntime.onAmapThemeChanged(unknown)
                assertEquals(ContentState.THEME_DARK, store().snapshot().themeMode)
            }
            GAdaAndroid.failure = UnsatisfiedLinkError("engine unavailable")
            ContentRuntime.onHostResumed(activity)
            assertEquals(ContentState.THEME_DARK, store().snapshot().themeMode)
            assertFalse(staticField("hasAmapThemeCallback").getBoolean(null))
        }
    }

    @Test fun callbackDuringNativeQueryWinsOverStaleQueryResult() {
        GAdaAndroid.failure = null
        GAdaAndroid.nightMode = false
        GAdaAndroid.duringQuery = { ContentRuntime.onAmapThemeChanged(2) }
        withHost { _, root ->
            ContentRuntime.attach(root)
            assertEquals(ContentState.THEME_DARK, store().snapshot().themeMode)
        }
    }

    @Test fun workerCallbacksApplyOnlyLatestResolvedTheme() {
        withHost { _, root ->
            ContentRuntime.attach(root)
            val worker = Thread {
                ContentRuntime.onAmapThemeChanged(2)
                ContentRuntime.onAmapThemeChanged(1)
                ContentRuntime.onAmapThemeChanged(0)
            }
            worker.start()
            worker.join()
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(ContentState.THEME_LIGHT, store().snapshot().themeMode)
            val nightWorker = Thread { ContentRuntime.onAmapThemeChanged(2) }
            nightWorker.start()
            nightWorker.join()
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(ContentState.THEME_DARK, store().snapshot().themeMode)
        }
    }

    @Test fun amapReadyRetriesUnavailableInitialRequestAndStopsOnceResolved() {
        GAdaAndroid.failure = null
        AndroidProtocolExe.failure = UnsatisfiedLinkError("request not registered yet")
        withHost { activity, root ->
            ContentRuntime.attach(root)
            shadowOf(Looper.getMainLooper()).idle()
            assertNull(staticField("activeRuntime").get(null))
            assertEquals(listOf(-1), AndroidProtocolExe.requestedIds)
            AndroidProtocolExe.failure = null
            AndroidProtocolExe.resolvedMode = 1
            ContentRuntime.onAmapReady()
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(ContentState.THEME_LIGHT, store().snapshot().themeMode)
            assertEquals(listOf(-1, -1), AndroidProtocolExe.requestedIds)
            ContentRuntime.onAmapReady()
            ContentRuntime.onHostResumed(activity)
            shadowOf(Looper.getMainLooper()).idle()
            assertEquals(2, AndroidProtocolExe.requestedIds.size)
        }
    }

    @Test fun amapReadyBeforeAttachLatchesResolvedThemeForFirstHost() {
        AndroidProtocolExe.resolvedMode = 2
        ContentRuntime.onAmapReady()
        shadowOf(Looper.getMainLooper()).idle()
        assertNull(staticField("activeRuntime").get(null))
        withHost { _, root ->
            ContentRuntime.attach(root)
            assertEquals(ContentState.THEME_DARK, store().snapshot().themeMode)
            assertEquals(0, GAdaAndroid.queries)
            assertEquals(listOf(-1), AndroidProtocolExe.requestedIds)
        }
    }

    @Test fun pendingRequestCanResolveInBackgroundButWaitsForOwnerResumeToMount() {
        GAdaAndroid.failure = null
        AndroidProtocolExe.resolvedMode = 1
        withHost { activity, root ->
            ContentRuntime.attach(root)
            ContentRuntime.onHostPaused(activity)
            shadowOf(Looper.getMainLooper()).idle()
            assertNull(staticField("activeRuntime").get(null))
            assertEquals(ContentState.THEME_LIGHT, staticField("lastAmapThemeMode").getInt(null))
            val unrelated = Robolectric.buildActivity(Activity::class.java).setup()
            try {
                ContentRuntime.onHostResumed(unrelated.get())
                assertNull(staticField("activeRuntime").get(null))
            } finally { unrelated.pause().stop().destroy() }
            ContentRuntime.onHostResumed(activity)
            assertEquals(ContentState.THEME_LIGHT, store().snapshot().themeMode)
            assertEquals(1, AndroidProtocolExe.requestedIds.size)
        }
    }

    @Test fun detachClearsPendingOwnerAndLateCallbackCannotRecreateDestroyedHost() {
        withHost { activity, root ->
            ContentRuntime.attach(root)
            shadowOf(Looper.getMainLooper()).idle()
            val unrelated = Robolectric.buildActivity(Activity::class.java).setup()
            try {
                ContentRuntime.detach(unrelated.get())
                val pending = staticField("pendingContentRoot").get(null) as java.lang.ref.WeakReference<*>
                assertSame(root, pending.get())
            } finally { unrelated.pause().stop().destroy() }
            ContentRuntime.detach(activity)
            ContentRuntime.onAmapThemeChanged(2)
            assertNull(staticField("activeRuntime").get(null))
            staticField("lastAmapThemeMode").setInt(null, staticField("THEME_UNKNOWN").getInt(null))
            staticField("hasAmapThemeCallback").setBoolean(null, false)
            ContentRuntime.attach(root)
            ContentRuntime.detach(null)
            ContentRuntime.onAmapThemeChanged(1)
            shadowOf(Looper.getMainLooper()).idle()
            assertNull(staticField("activeRuntime").get(null))
        }
    }

    private fun withHost(check: (Activity, FrameLayout) -> Unit) {
        val controller = Robolectric.buildActivity(Activity::class.java).setup()
        val activity = controller.get()
        val root = FrameLayout(activity)
        val host = FrameLayout(activity)
        host.id = activity.resources.getIdentifier("content_host", "id", activity.packageName)
        assertNotEquals(0, host.id)
        root.addView(host, FrameLayout.LayoutParams(-1, -1))
        activity.setContentView(root)
        try { check(activity, root) }
        finally { ContentRuntime.detach(activity); controller.pause().stop().destroy() }
    }

    private fun staticField(name: String) = ContentRuntime::class.java.getDeclaredField(name).apply {
        isAccessible = true
    }

    private fun store(): ContentStore {
        val runtime = checkNotNull(staticField("activeRuntime").get(null))
        return runtime.javaClass.getDeclaredField("store").apply { isAccessible = true }
            .get(runtime) as ContentStore
    }
}
