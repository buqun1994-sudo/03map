package com.icar03.content.runtime

import android.app.Activity
import android.app.PendingIntent
import android.content.Intent
import android.content.pm.ActivityInfo
import android.content.pm.ApplicationInfo
import android.os.Looper
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.Modifier
import androidx.compose.ui.semantics.SemanticsProperties
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import com.autonavi.amapauto.content.ContentPorts
import com.autonavi.amapauto.content.ContentStore
import com.icar03.content.runtime.lyrics.*
import com.icar03.content.ui.ContentEvent
import com.icar03.content.ui.LyricsPlatformSelected
import com.icar03.content.ui.SettingsSection
import org.json.JSONArray
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.Shadows.shadowOf
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** The real bound settings composition must survive browser stops, transient resumes and delivery. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class AppleMusicBrowserReturnSettingsTest {
    @get:Rule val compose = createComposeRule()
    private val context get() = RuntimeEnvironment.getApplication()

    @Test fun canceledBrowserReturnKeepsTheOpenLyricsPageAndItsScrollPosition() = exerciseReturn(success = false)

    @Test fun verifiedBrowserReturnKeepsTheOpenLyricsPageAndItsScrollPosition() = exerciseReturn(success = true)

    private fun exerciseReturn(success: Boolean) {
        val rig = AppleMusicFixtureRig(null).apply { seedDeveloper() }
        val transport = AppleMusicFixtureTransport {
            check(success) { "A canceled browser result must not start verification" }
            """{"data":[{"id":"cn"}]}""".toByteArray()
        }
        val broker = AppleMusicAuthBroker(rig.connection, transport, rig.clock)
        // Both production facades need the same synthetic account, without turning on embedded-fixture mode.
        val shared = AppleMusicAuthBroker::class.java.getDeclaredField("shared").apply { isAccessible = true }
        val previousBroker = shared.get(null)
        shared.set(null, broker)
        AppleMusicBrowserLogin.brokerFactory = { broker }
        val store = ContentStore(context, ContentPorts.PreviewVehiclePort(), ContentPorts.PreviewMediaPort(),
            object : ContentPorts.SystemPort {
                override fun read(kind: Int) = ContentPorts.SystemSnapshot(false, 0)
                override fun write(kind: Int, percent: Int) = false
            })
        val binding = ContentBinding(store)
        val visible = mutableStateOf(true)
        try {
            shadowOf(context.packageManager).addOrUpdateActivity(ActivityInfo().apply {
                packageName = AppleMusicBrowserLoginContract.BROWSER_PACKAGE
                name = AppleMusicBrowserLoginContract.component.className
                enabled = true; exported = true
                applicationInfo = ApplicationInfo().apply {
                    packageName = AppleMusicBrowserLoginContract.BROWSER_PACKAGE
                    enabled = true
                }
            })
            compose.setContent { if (visible.value) BoundBindingPanel(binding, Modifier.fillMaxSize()) }
            compose.runOnIdle {
                binding.dispatch(ContentEvent.SettingsTapped)
                binding.dispatch(ContentEvent.SettingsSectionSelected(SettingsSection.Lyrics))
                binding.dispatch(LyricsPlatformSelected("applemusic"))
            }
            compose.onNodeWithTag("settings-apple-login").performScrollTo().assertIsDisplayed()
            compose.onNodeWithTag("settings-detail-scroll").performSemanticsAction(androidx.compose.ui.semantics.SemanticsActions.ScrollBy) {
                it(0f, 120f * compose.density.density)
            }
            compose.waitForIdle()
            compose.onNodeWithTag("settings-apple-login").assertIsDisplayed()
            val originalScroll = scrollPosition()
            assertTrue("The regression must retain a genuinely scrolled page", originalScroll > 0f)
            assertOpenLyricsAt(binding, originalScroll)

            compose.onNodeWithTag("settings-apple-login").assertTextEquals("登录").performClick()
            compose.runOnIdle { assertTrue(rig.connection.state.value.isConnecting) }
            val request = shadowOf(context).nextStartedActivity
            assertEquals(AppleMusicBrowserLoginContract.component, request.component)
            val callback = request.getParcelableExtra<PendingIntent>("result_callback")!!
            val data = Intent(shadowOf(callback).savedIntent).putExtra("result_code",
                if (success) Activity.RESULT_OK else Activity.RESULT_CANCELED)
            if (success) data.putExtra("credentials_json", receipt(request.getStringExtra("request_id")!!))

            compose.runOnIdle { binding.stop() }
            assertOpenLyricsAt(binding, originalScroll)
            compose.runOnIdle {
                assertFalse(binding.active.value)
                assertFalse(binding.state.value.lyricsProviderSettings.available)
                binding.start()
            }
            // A brief map resume during browser startup must not consume the final return marker.
            assertOpenLyricsAt(binding, originalScroll)
            compose.runOnIdle { binding.stop() }
            assertOpenLyricsAt(binding, originalScroll)
            compose.runOnIdle {
                AppleMusicBrowserLogin.receive(context, if (success) Activity.RESULT_OK else Activity.RESULT_CANCELED, data)
                binding.start()
            }
            assertOpenLyricsAt(binding, originalScroll)
            if (success) {
                compose.waitUntil(timeoutMillis = 5_000L) {
                    shadowOf(Looper.getMainLooper()).idle()
                    rig.connection.state.value.status == AppleMusicConnection.Status.CONNECTED &&
                        binding.state.value.lyricsProviderSettings.appleStatus == "connected"
                }
                compose.onNodeWithTag("settings-apple-status").assertTextEquals("已登录 · 中国大陆")
                compose.onNodeWithTag("settings-apple-login").assertTextEquals("断开")
                assertEquals("cn", rig.store.value?.storefront)
                assertEquals(1, transport.calls.size)
            } else {
                compose.onNodeWithTag("settings-apple-login").assertTextEquals("登录")
                assertFalse(rig.connection.state.value.isConnecting)
                assertNull(rig.store.value)
                assertTrue(transport.calls.isEmpty())
            }
            assertOpenLyricsAt(binding, originalScroll)
        } finally {
            compose.runOnIdle { visible.value = false }
            binding.close()
            store.destroy()
            AppleMusicBrowserLogin.resetForTest(context)
            shared.set(null, previousBroker)
        }
    }

    private fun scrollPosition(): Float = compose.onNodeWithTag("settings-detail-scroll")
        .fetchSemanticsNode().config[SemanticsProperties.VerticalScrollAxisRange].value()

    private fun assertOpenLyricsAt(binding: ContentBinding, expectedScroll: Float) {
        compose.waitForIdle()
        assertTrue(binding.state.value.settingsOpen)
        assertFalse(binding.state.value.settingsCollapsed)
        assertEquals(SettingsSection.Lyrics, binding.state.value.settingsSection)
        compose.onNodeWithTag("settings-apple-account").assertExists()
        compose.onNodeWithTag("settings-apple-login").assertExists()
        assertEquals("The existing settings scroll owner must survive the handoff", expectedScroll, scrollPosition(), 1f)
    }

    private fun receipt(id: String): String = JSONObject().put("protocol_version", 1)
        .put("site_url", AppleMusicBrowserLoginContract.SITE_URL).put("request_id", id).put("status", "complete")
        .put("cookies", JSONArray().put(JSONObject().put("name", "media-user-token")
            .put("value", "synthetic-user-token").put("domain", ".music.apple.com").put("path", "/")
            .put("secure", true).put("http_only", true))).toString()
}
