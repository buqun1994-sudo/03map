package com.icar03.content.runtime

/**
 * Read-only projection of the public iCAR theme key used by 03lyrics.
 * The dark/light argument comes from AMap's ContentState.themeMode, never uiMode.
 */
object IcarThemeAccent {
    const val GLOBAL_THEME_KEY: String = "com.mb.provider.theme_key"
    const val DEFAULT_ACCENT: Int = -15037185

    private const val CYAN = 31
    private const val METAL = 34
    private const val ORANGE_LEGACY = 8
    private const val PINK_LEGACY = 16
    private const val PURPLE = 32
    private const val PINK = 33
    private const val YELLOW = 35

    @JvmStatic
    fun resolve(themeKey: Int?, nightMode: Boolean): Int = when (themeKey) {
        CYAN -> if (nightMode) -4860958 else -7162419
        METAL -> if (nightMode) -4814239 else -6328245
        ORANGE_LEGACY -> if (nightMode) -1657335 else -341997
        PINK_LEGACY, PINK -> if (nightMode) -2207355 else -293207
        PURPLE -> -10721601
        YELLOW -> if (nightMode) -134656 else -131756
        else -> DEFAULT_ACCENT
    }
}
