package com.icar03.content.runtime

import android.Manifest
import android.content.ComponentName
import android.content.pm.ApplicationInfo
import android.content.pm.ServiceInfo
import android.graphics.Bitmap
import android.graphics.Color
import com.autonavi.amapauto.content.*
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class ExistingPortsTest {
    @Test fun realSourceAdapterChecksServiceVisibilityExportAndPermission() {
        val app = RuntimeEnvironment.getApplication()
        val adapter = ContentMediaAdapter(app)
        val pm = shadowOf(app.packageManager)
        val component = ComponentName("com.tencent.wecarflow", "com.mengbo.service.MediaCenterPlayService")
        assertFalse(adapter.isSourceAvailable)
        val info = ServiceInfo().apply {
            name = component.className; packageName = component.packageName; enabled = true; exported = true
            applicationInfo = ApplicationInfo().apply { packageName = component.packageName; enabled = true }
        }
        pm.addOrUpdateService(info)
        assertTrue(adapter.isSourceAvailable)
        info.exported = false; pm.addOrUpdateService(info)
        assertFalse(adapter.isSourceAvailable)
        info.exported = true; info.enabled = false; pm.addOrUpdateService(info)
        assertFalse(adapter.isSourceAvailable)
        info.enabled = true; info.permission = Manifest.permission.READ_CONTACTS; pm.addOrUpdateService(info)
        shadowOf(app).denyPermissions(Manifest.permission.READ_CONTACTS)
        assertFalse(adapter.isSourceAvailable)
        shadowOf(app).grantPermissions(Manifest.permission.READ_CONTACTS)
        assertTrue(adapter.isSourceAvailable)
        adapter.stop()
    }

    @Test fun realSystemPortDoesNotAdvertiseVolumeWriteWithoutPermission() {
        val app = RuntimeEnvironment.getApplication()
        val port = ContentPorts.AndroidSystemPort(app)
        shadowOf(app).denyPermissions(Manifest.permission.MODIFY_AUDIO_SETTINGS)
        assertFalse(port.read(1).available)
        shadowOf(app).grantPermissions(Manifest.permission.MODIFY_AUDIO_SETTINGS)
        assertTrue(port.read(1).available)
    }

    @Test fun actualArtworkIsSoftenedOnAndroid9WithoutRecyclingInput() {
        val source = Bitmap.createBitmap(64, 64, Bitmap.Config.ARGB_8888)
        source.eraseColor(Color.RED)
        for (y in 0 until 64) for (x in 32 until 64) source.setPixel(x, y, Color.BLUE)
        val blurred = softenArtwork(source)!!
        assertNotSame(source, blurred)
        assertEquals(32, blurred.width)
        assertFalse(source.isRecycled)
        val pixel = blurred.getPixel(16, 16)
        assertTrue(Color.red(pixel) > 0)
        assertTrue(Color.blue(pixel) > 0)
    }
}
