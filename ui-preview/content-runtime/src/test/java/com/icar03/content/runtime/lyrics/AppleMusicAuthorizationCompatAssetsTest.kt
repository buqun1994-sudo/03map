package com.icar03.content.runtime.lyrics

import android.net.Uri
import android.webkit.WebResourceRequest
import java.io.ByteArrayInputStream
import java.io.IOException
import java.security.MessageDigest
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

    private fun request(url: String, method: String = "GET") = object : WebResourceRequest {
        override fun getUrl() = Uri.parse(url)
        override fun isForMainFrame() = false
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

    @Test fun actualPackagedResourcesHaveTheVerifiedCompiledHashes() {
        val hashes = mapOf(
            home to "839c4c5eaf3f43a9e799a048fe4617ee044029c3ff244ed0da49b15e5b404a98",
            identity to "6e535986e45925207daeccf499488f0ae19f7314c2b5ab2e2fc9fa37ff286345",
        )
        for ((name, expected) in hashes) {
            val response = AppleMusicAuthorizationCompatAssets.response(
                RuntimeEnvironment.getApplication(), request("$host$base$name"),
            )
            assertNotNull("formal asset must be included in the runtime preview", response)
            val bytes = response!!.data.use { it.readBytes() }
            val actual = MessageDigest.getInstance("SHA-256").digest(bytes)
                .joinToString("") { "%02x".format(it.toInt() and 0xff) }
            assertEquals(expected, actual)
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
            "$host$base$home?",
            "$host$base$home?version=2",
            "$host$base$home#",
            "$host$base$home#fragment",
            "$host${base}home-new.js",
            "$host${base}%68ome-76bd5c25830b7078b52d.js",
            "$host$base$home/extra",
            "$host/appleauth/static/other/$home",
            "file:///android_asset/content-apple-authorize/$home",
        )
        var opened = 0
        for (url in invalid) assertNull(url, AppleMusicAuthorizationCompatAssets.response(request(url)) {
            opened++
            ByteArrayInputStream(byteArrayOf())
        })
        assertEquals(0, opened)
    }

    @Test fun nonGetRequestsNeverReplaceOfficialNetworkResponses() {
        for (method in listOf("POST", "HEAD", "OPTIONS", "get")) {
            assertNull(method, AppleMusicAuthorizationCompatAssets.response(request("$host$base$home", method)) {
                fail("rejected methods must not open a packaged resource")
                ByteArrayInputStream(byteArrayOf())
            })
        }
    }

    @Test fun missingAssetFallsBackWithoutClaimingAReplacementResponse() {
        assertNull(AppleMusicAuthorizationCompatAssets.response(request("$host$base$home")) {
            throw IOException("missing")
        })
    }
}
