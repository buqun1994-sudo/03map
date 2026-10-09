package com.icar03.content.runtime.lyrics

import android.net.Uri
import android.webkit.WebResourceRequest
import java.io.ByteArrayInputStream
import java.io.IOException
import java.security.MessageDigest
import org.json.JSONObject
import org.robolectric.RuntimeEnvironment
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28])
class AppleMusicAuthorizationCompatAssetsTest {
    private val host = "https://appleid.cdn-apple.com"
    private val base = "/appleauth/static/module-assets/"
    private val home = "home-76bd5c25830b7078b52d.js"
    private val identity = "identityWidget-e48dc0b32509f79e9025.js"

    private fun request(url: String, method: String = "GET", mainFrame: Boolean = false) = object : WebResourceRequest {
        override fun getUrl() = Uri.parse(url)
        override fun isForMainFrame() = mainFrame
        override fun isRedirect() = false
        override fun hasGesture() = false
        override fun getMethod() = method
        override fun getRequestHeaders() = emptyMap<String, String>()
    }

    @Test fun exactKnownHttpsResourcesUseOnlyTheirCorrespondingPackagedAssets() {
        for (name in listOf(home, identity)) {
            for (authority in listOf(host, "$host:443")) {
                var opened = ""
                val response = AppleMusicAuthorizationCompatAssets.response(request("$authority$base$name")) {
                    opened = it
                    ByteArrayInputStream("official compatible script".toByteArray())
                }
                assertEquals("content-apple-authorize/$name", opened)
                assertNotNull(response)
                assertEquals("text/javascript", response!!.mimeType)
                assertEquals("UTF-8", response.encoding)
                assertEquals(200, response.statusCode)
                assertEquals("official compatible script", response.data.bufferedReader().use { it.readText() })
            }
        }
    }

    @Test fun completePackagedWoaGraphAndWidgetsMatchTheirLockedCompiledHashes() {
        val context = RuntimeEnvironment.getApplication()
        val provenance = context.assets.open("content-apple-authorize/provenance.json")
            .bufferedReader().use { JSONObject(it.readText()) }.getJSONArray("sources")
        assertEquals("eight WOA modern/legacy modules and two IDMS widgets", 10, provenance.length())
        for (index in 0 until provenance.length()) {
            val source = provenance.getJSONObject(index)
            val url = source.getString("url")
            for (authority in listOf(url, url.replace(".com/", ".com:443/"))) {
                val response = AppleMusicAuthorizationCompatAssets.response(context, request(authority))
                assertNotNull("formal asset must be included and admitted: $authority", response)
                assertEquals(200, response!!.statusCode)
                val bytes = response.data.use { it.readBytes() }
                val actual = MessageDigest.getInstance("SHA-256").digest(bytes)
                    .joinToString("") { "%02x".format(it.toInt() and 0xff) }
                assertEquals(source.getString("assetSha256"), actual)
                assertEquals(source.getLong("assetBytes"), bytes.size.toLong())
            }
        }
    }

    @Test fun alteredOriginsCredentialsPortsQueriesFragmentsAndPathsNeverOpenAssets() {
        val invalid = listOf(
            "http://appleid.cdn-apple.com$base$home",
            "https://other.apple.com$base$home",
            "https://appleid.cdn-apple.com.evil.example$base$home",
            "https://user@appleid.cdn-apple.com$base$home",
            "https://appleid.cdn-apple.com:8443$base$home",
            "https://%61ppleid.cdn-apple.com$base$home",
            "$host$base$home?", "$host$base$home?version=2",
            "$host$base$home#", "$host$base$home#fragment",
            "$host${base}%68ome-76bd5c25830b7078b52d.js", "$host$base$home/extra",
            "$host/appleauth/static/other/$home", "file:///android_asset/content-apple-authorize/$home",
            "https://activate.apple.com/assets/index.08057262.js",
            "https://music.apple.com/assets/index~c10ba4a68d.js",
        )
        var opened = 0
        for (url in invalid) assertNull(url, AppleMusicAuthorizationCompatAssets.response(request(url)) {
            opened++
            ByteArrayInputStream(byteArrayOf())
        })
        assertEquals(0, opened)
    }

    @Test fun nonGetRequestsAndDocumentsNeverReplaceOfficialNetworkResponses() {
        for (method in listOf("POST", "HEAD", "OPTIONS", "get")) {
            assertNull(method, AppleMusicAuthorizationCompatAssets.response(request("$host$base$home", method)) {
                fail("rejected methods must not open a packaged resource")
                ByteArrayInputStream(byteArrayOf())
            })
        }
        assertNull(AppleMusicAuthorizationCompatAssets.response(request("$host$base$home", mainFrame = true)) {
            fail("documents stay online")
            ByteArrayInputStream(byteArrayOf())
        })
    }

    @Test fun unknownVersionsInTheControlledRootsFailExplicitlyWithoutRemappingAnOlderAsset() {
        for (url in listOf("$host${base}home-new.js", "https://authorize.music.apple.com/assets/index.ffffffff.js")) {
            var failure: AppleMusicAuthorizationCompatAssets.Failure? = null
            val response = AppleMusicAuthorizationCompatAssets.response(request(url), { reason, source ->
                failure = reason
                assertEquals(url, source.toString())
            }) { fail("an unknown URL cannot map to old code"); ByteArrayInputStream(byteArrayOf()) }
            assertEquals(AppleMusicAuthorizationCompatAssets.Failure.VERSION_CHANGED, failure)
            assertEquals(503, response!!.statusCode)
            assertEquals(0, response.data.use { it.readBytes() }.size)
        }
    }

    @Test fun missingAssetFailsExplicitlyWithoutFallingBackToIncompatiblePublicCode() {
        var failure: AppleMusicAuthorizationCompatAssets.Failure? = null
        val response = AppleMusicAuthorizationCompatAssets.response(request("$host$base$home"), { reason, _ -> failure = reason }) {
            throw IOException("missing")
        }
        assertEquals(AppleMusicAuthorizationCompatAssets.Failure.ASSET_MISSING, failure)
        assertEquals(503, response!!.statusCode)
    }
}
