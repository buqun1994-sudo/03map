package com.autonavi.amapauto.jni.protocol

import com.autonavi.amapauto.content.ContentRuntime

/** Models the existing request -> resolved GAdaAndroid callback protocol. */
object AndroidProtocolExe {
    var requestedIds = mutableListOf<Int>()
    var resolvedMode: Int? = null
    var failure: Throwable? = null

    @JvmStatic fun nativeRequestDayNightMode(requestId: Int) {
        requestedIds += requestId
        failure?.let { throw it }
        resolvedMode?.let(ContentRuntime::onAmapThemeChanged)
    }

    fun reset() {
        requestedIds.clear()
        resolvedMode = null
        failure = null
    }
}
