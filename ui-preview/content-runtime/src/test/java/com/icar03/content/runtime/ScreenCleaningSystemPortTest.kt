package com.icar03.content.runtime

import android.Manifest
import android.app.ActivityOptions
import android.content.ActivityNotFoundException
import android.content.ComponentName
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.pm.ActivityInfo
import android.content.pm.ApplicationInfo
import android.graphics.Rect
import android.os.Bundle
import com.autonavi.amapauto.content.ContentPorts
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class ScreenCleaningSystemPortTest {
    private val component = ComponentName(
        "com.mengbo.smartscene", "com.chery.smartscene.UI.ScreenCleanActivity")

    private fun activityInfo() = ActivityInfo().apply {
        name = component.className
        packageName = component.packageName
        enabled = true
        exported = true
        applicationInfo = ApplicationInfo().apply {
            packageName = component.packageName
            enabled = true
        }
    }

    @Test fun nativeEntryRequiresAnEnabledExportedCallableActivityAndOpenPort() {
        val app = RuntimeEnvironment.getApplication()
        val packages = shadowOf(app.packageManager)
        val port = ContentPorts.AndroidSystemPort(app)
        fun assertUnavailable() {
            assertFalse(port.screenCleaningAvailable())
            assertFalse(port.startScreenCleaning())
            assertNull("unavailable entry must never launch an activity", shadowOf(app).nextStartedActivity)
        }
        try {
            assertUnavailable()
            val info = activityInfo()
            packages.addOrUpdateActivity(info)
            assertTrue(port.screenCleaningAvailable())

            info.enabled = false
            packages.addOrUpdateActivity(info)
            assertUnavailable()
            info.enabled = true
            info.applicationInfo.enabled = false
            packages.addOrUpdateActivity(info)
            assertUnavailable()
            info.applicationInfo.enabled = true
            info.exported = false
            packages.addOrUpdateActivity(info)
            assertUnavailable()
            info.exported = true
            info.permission = Manifest.permission.READ_CONTACTS
            packages.addOrUpdateActivity(info)
            shadowOf(app).denyPermissions(Manifest.permission.READ_CONTACTS)
            assertUnavailable()
            shadowOf(app).grantPermissions(Manifest.permission.READ_CONTACTS)
            assertTrue(port.screenCleaningAvailable())

            port.close()
            assertUnavailable()
        } finally {
            port.close()
        }
    }

    @Test fun nativeLaunchUsesExactOptionsAndReportsStartFailuresWithoutRetry() {
        val app = RuntimeEnvironment.getApplication()
        shadowOf(app.packageManager).addOrUpdateActivity(activityInfo())
        val port = ContentPorts.AndroidSystemPort(app)
        try {
            assertTrue(port.screenCleaningAvailable())
            assertTrue(port.startScreenCleaning())
            val started = requireNotNull(shadowOf(app).nextStartedActivityForResult)
            assertEquals(component, started.intent.component)
            assertEquals(Intent.FLAG_ACTIVITY_NEW_TASK, started.intent.flags)
            val bundle = requireNotNull(started.options)
            val options = ActivityOptions::class.java.getMethod("fromBundle", Bundle::class.java)
                .invoke(null, bundle) as ActivityOptions
            assertEquals(0, options.launchDisplayId)
            assertEquals(Rect(0, 0, 1920, 1080), options.launchBounds)
            assertEquals(5, ActivityOptions::class.java.getMethod("getLaunchWindowingMode")
                .invoke(options) as Int)
            assertNull("accepted launch emits exactly one activity request", shadowOf(app).nextStartedActivityForResult)
            val recordedIntent = requireNotNull(shadowOf(app).nextStartedActivity)
            assertEquals(component, recordedIntent.component)
            assertEquals(Intent.FLAG_ACTIVITY_NEW_TASK, recordedIntent.flags)
            assertNull("ordinary launch history also contains exactly one request", shadowOf(app).nextStartedActivity)
        } finally {
            port.close()
        }
        for (failure in listOf(ActivityNotFoundException("activity removed"), SecurityException("launch denied"))) {
            val context = FailingLaunchContext(app, failure)
            val port = ContentPorts.AndroidSystemPort(context)
            try {
                assertTrue("installed entry is callable before the launch races", port.screenCleaningAvailable())
                assertFalse(port.startScreenCleaning())
                assertEquals("failed launch must not retry in another mode", 1, context.launches)
                assertNull(shadowOf(app).nextStartedActivity)
            } finally {
                port.close()
            }
        }
    }

    private class FailingLaunchContext(base: Context, private val failure: RuntimeException) : ContextWrapper(base) {
        var launches = 0
        override fun getApplicationContext(): Context = this
        override fun startActivity(intent: Intent, options: Bundle?) {
            launches++
            throw failure
        }
    }
}
