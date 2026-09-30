package com.autonavi.amapauto.jni

/** Test-only stand-in with the production JNI primitive-boolean signature. */
object GAdaAndroid {
    var nightMode = false
    var failure: Throwable? = UnsatisfiedLinkError("No native engine in host tests")
    var duringQuery: (() -> Unit)? = null
    var queries = 0

    @JvmStatic fun nativeIsNightMode(): Boolean {
        queries++
        failure?.let { throw it }
        duringQuery?.invoke()
        return nightMode
    }

    fun reset() {
        nightMode = false
        failure = UnsatisfiedLinkError("No native engine in host tests")
        duringQuery = null
        queries = 0
    }
}
