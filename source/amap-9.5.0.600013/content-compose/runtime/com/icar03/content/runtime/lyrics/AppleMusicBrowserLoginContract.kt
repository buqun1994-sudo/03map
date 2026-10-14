package com.icar03.content.runtime.lyrics

import android.app.Activity
import android.content.ComponentName
import android.content.Intent
import org.json.JSONObject
import org.json.JSONTokener

/** Local candidate; deliberately has no generated token-bearing toString. */
internal class AppleMusicBrowserCredential(val token: String, val alternatives: List<String> = emptyList()) {
    override fun toString(): String = "AppleMusicBrowserCredential(redacted)"
}

internal object AppleMusicBrowserLoginContract {
    const val BROWSER_PACKAGE = "com.ninepointnine.browser"
    const val SITE_URL = "https://music.apple.com/"
    const val MAX_JSON_BYTES = 96 * 1024
    val component = ComponentName(BROWSER_PACKAGE, "$BROWSER_PACKAGE.CredentialLoginLaunchActivity")
    val names = setOf("media-user-token", "itua")

    fun request(id: String): Intent = Intent("com.ninepointnine.browser.action.REQUEST_SITE_CREDENTIAL")
        .setComponent(component)
        .putExtra("site_url", SITE_URL)
        .putExtra("login_url", AppleMusicConnection.LOGIN_URL)
        .putStringArrayListExtra("cookie_names", arrayListOf("media-user-token", "itua"))
        .putStringArrayListExtra("required_cookie_names", arrayListOf("media-user-token"))
        .putExtra("request_id", id)
        .putExtra("login_flow", true)
        .putExtra("caller_display_name", "03地图")

    fun parse(resultCode: Int, data: Intent?, id: String): AppleMusicBrowserCredential? {
        if (resultCode != Activity.RESULT_OK || data == null) return null
        return runCatching {
            val raw = data.getStringExtra("credentials_json") ?: return null
            if (raw.length > MAX_JSON_BYTES || raw.toByteArray(Charsets.UTF_8).size > MAX_JSON_BYTES) return null
            val tokener = JSONTokener(raw)
            val root = tokener.nextValue() as? JSONObject ?: return null
            if (tokener.nextClean() != '\u0000' || root.optString("request_id") != id) return null
            val site = root.optString("site_url")
            if (site.isNotBlank()) {
                val uri = java.net.URI(site)
                if (!uri.scheme.equals("https", ignoreCase = true) || !uri.host.equals("music.apple.com", ignoreCase = true) ||
                    uri.userInfo != null || uri.port !in setOf(-1, 443)) return null
            }
            val cookies = root.optJSONArray("cookies") ?: return null
            val tokens = mutableListOf<Pair<Int, String>>()
            for (i in 0 until minOf(cookies.length(), 128)) {
                val cookie = cookies.optJSONObject(i) ?: continue
                if (cookie.optString("name") != "media-user-token" || cookie.opt("value") !is String) continue
                val domain = cookie.optString("domain").lowercase(java.util.Locale.ROOT)
                if (domain.isNotBlank() && domain !in setOf("music.apple.com", ".music.apple.com", ".apple.com")) continue
                val path = cookie.optString("path")
                if (path.isNotBlank() && path != "/") continue
                val value = cookie.getString("value").trim()
                val decoded = if ('%' in value) runCatching {
                    java.net.URLDecoder.decode(value.replace("+", "%2B"), "UTF-8")
                }.getOrNull() else null
                val rank = if (domain in setOf("music.apple.com", ".music.apple.com")) 2 else 1
                for (candidate in listOfNotNull(decoded, value).distinct()) {
                    if (validAppleMusicUserToken(candidate)) tokens += rank to candidate
                }
            }
            // Auxiliary metadata never vetoes a usable token; Apple decides which candidate is valid.
            val candidates = tokens.sortedByDescending { it.first }.map { it.second }.distinct()
            candidates.firstOrNull()?.let { AppleMusicBrowserCredential(it, candidates.drop(1)) }
        }.getOrNull()
    }
}
