package com.icar03.content.runtime.lyrics

import android.content.Context
import android.content.res.AssetManager
import android.webkit.WebResourceRequest
import android.webkit.WebResourceResponse
import java.io.IOException
import java.io.InputStream

/** Locked public Apple widget code; official documents, forms and authentication stay online. */
internal object AppleMusicAuthorizationCompatAssets {
    private const val OFFICIAL_HOST = "appleid.cdn-apple.com"
    private const val PATH_BASE = "/appleauth/static/module-assets/"
    private const val ASSET_BASE = "content-apple-authorize/"
    private val authorities = setOf(OFFICIAL_HOST, "$OFFICIAL_HOST:443")
    private val resources = mapOf(
        "${PATH_BASE}home-76bd5c25830b7078b52d.js" to "${ASSET_BASE}home-76bd5c25830b7078b52d.js",
        "${PATH_BASE}identityWidget-e48dc0b32509f79e9025.js" to "${ASSET_BASE}identityWidget-e48dc0b32509f79e9025.js",
    )

    fun response(context: Context, request: WebResourceRequest): WebResourceResponse? =
        response(request) { name -> context.assets.open(name, AssetManager.ACCESS_STREAMING) }

    internal fun response(request: WebResourceRequest, openAsset: (String) -> InputStream): WebResourceResponse? {
        val uri = request.url
        if (request.method != "GET" || !uri.isHierarchical || uri.scheme != "https" ||
            uri.host != OFFICIAL_HOST || uri.encodedAuthority !in authorities || uri.userInfo != null ||
            uri.port !in listOf(-1, 443) || uri.encodedQuery != null || uri.encodedFragment != null) return null
        val asset = resources[uri.encodedPath ?: return null] ?: return null
        return try {
            WebResourceResponse("text/javascript", "UTF-8", 200, "OK", mapOf("Cache-Control" to "no-store"), openAsset(asset))
        } catch (_: IOException) {
            // A missing packaged resource must not replace another official resource or origin.
            null
        }
    }
}
