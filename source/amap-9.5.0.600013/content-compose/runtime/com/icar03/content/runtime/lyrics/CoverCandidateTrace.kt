package com.icar03.content.runtime.lyrics

import java.security.MessageDigest

/** Correlates a catalog candidate and its downloaded winner without logging the resource URL. */
internal fun coverCandidateTraceId(url: String): String = MessageDigest.getInstance("SHA-256")
    .digest(url.toByteArray(Charsets.UTF_8)).take(8).joinToString("") { byte ->
        val value = byte.toInt() and 0xff
        "0123456789abcdef"[value ushr 4].toString() + "0123456789abcdef"[value and 15]
    }
