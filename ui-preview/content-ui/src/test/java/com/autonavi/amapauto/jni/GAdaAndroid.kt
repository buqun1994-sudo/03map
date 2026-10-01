package com.autonavi.amapauto.jni

/** Native sound bridge stand-in; production uses the existing map channel. */
object GAdaAndroid {
    var clicks = 0
    @JvmStatic fun playSystemClick(): Boolean { clicks++; return true }
}
