package com.icar03.content.runtime.lyrics

import android.content.Context
import android.content.res.AssetManager
import android.net.Uri
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import java.io.ByteArrayInputStream
import java.io.IOException
import java.io.InputStream

/** Exact locked public modules only; official documents, forms and authentication stay online. */
internal object AppleMusicAuthorizationCompatAssets {
    internal enum class Failure { VERSION_CHANGED, ASSET_MISSING }
    private const val WIDGET_HOST = "appleid.cdn-apple.com"
    private const val WOA_HOST = "authorize.music.apple.com"
    private const val WIDGET_BASE = "/appleauth/static/module-assets/"
    private const val ASSET_BASE = "content-apple-authorize/"
    private val resources = mapOf(
        WIDGET_HOST to listOf("home-76bd5c25830b7078b52d.js", "identityWidget-e48dc0b32509f79e9025.js")
            .associateBy { "$WIDGET_BASE$it" },
        WOA_HOST to listOf(
            "polyfills-modern.2a0ac662.js", "index.08057262.js", "vendor.c5b156fd.js",
            "idtoken-verifier.esm.61302cb6.js", "polyfills-legacy.a17ec079.js", "index-legacy.b2eb8295.js",
            "vendor-legacy.9c0241d1.js", "idtoken-verifier.esm-legacy.a1cbf4ce.js",
        ).associateBy { "/assets/$it" },
    )

    fun response(context: Context, request: WebResourceRequest,
        onUnavailable: (Failure, Uri) -> Unit = { _, _ -> }): WebResourceResponse? =
        response(request, onUnavailable) { name -> context.assets.open(name, AssetManager.ACCESS_STREAMING) }

    internal fun response(request: WebResourceRequest,
        onUnavailable: (Failure, Uri) -> Unit = { _, _ -> },
        openAsset: (String) -> InputStream): WebResourceResponse? {
        val uri = request.url
        val host = uri.host ?: return null
        if (request.method != "GET" || request.isForMainFrame || !uri.isHierarchical || uri.scheme != "https" ||
            host !in resources || uri.encodedAuthority !in setOf(host, "$host:443") || uri.userInfo != null ||
            uri.port !in listOf(-1, 443) || uri.encodedQuery != null || uri.encodedFragment != null) return null
        val path = uri.encodedPath ?: return null
        // Do not intercept other APIs, documents, fonts or images. Escaped paths are never aliases.
        if ('%' in path || !path.endsWith(".js") ||
            !(host == WIDGET_HOST && path.startsWith(WIDGET_BASE) || host == WOA_HOST && path.startsWith("/assets/"))) return null
        val name = resources.getValue(host)[path]
            ?: return unavailable(Failure.VERSION_CHANGED, uri, onUnavailable)
        return try {
            WebResourceResponse("text/javascript", "UTF-8", 200, "OK",
                mapOf("Cache-Control" to "no-store"), openAsset("$ASSET_BASE$name"))
        } catch (_: IOException) {
            unavailable(Failure.ASSET_MISSING, uri, onUnavailable)
        }
    }

    private fun unavailable(reason: Failure, uri: Uri, callback: (Failure, Uri) -> Unit): WebResourceResponse {
        callback(reason, uri)
        // Never feed an unknown modern script to the old engine or silently substitute an older one.
        return WebResourceResponse("text/plain", "UTF-8", 503, "Service Unavailable",
            mapOf("Cache-Control" to "no-store"), ByteArrayInputStream(byteArrayOf()))
    }
}
