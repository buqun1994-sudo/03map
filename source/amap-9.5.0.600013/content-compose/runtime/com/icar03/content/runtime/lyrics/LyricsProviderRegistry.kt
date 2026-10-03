package com.icar03.content.runtime.lyrics


internal const val SOURCE_APPLE_MUSIC = "applemusic"

/** A provider is registered once for both assets. Host UI and transport never own a source list. */
internal object LyricsProviderRegistry {
    enum class Capability { EXACT, CATALOG, LINE, WORD, TRANSLATION, ROMANIZATION, ARTWORK }
    data class Descriptor(val id: String, val requiresLogin: Boolean, val capabilities: Set<Capability>)
    val descriptors: List<Descriptor> = listOf(
        Descriptor(SOURCE_LRCLIB, false, setOf(Capability.EXACT, Capability.CATALOG, Capability.LINE)),
        Descriptor(SOURCE_QQ, false, richCapabilities()),
        Descriptor(SOURCE_NETEASE, false, richCapabilities()),
        Descriptor(SOURCE_KUGOU, false, richCapabilities()),
        Descriptor(SOURCE_KUWO, false, setOf(Capability.CATALOG, Capability.LINE, Capability.WORD, Capability.ARTWORK)),
        Descriptor(SOURCE_MIGU, false, setOf(Capability.CATALOG, Capability.LINE, Capability.WORD, Capability.TRANSLATION, Capability.ARTWORK)),
        Descriptor(SOURCE_SODA, false, richCapabilities()),
        Descriptor(SOURCE_APPLE_MUSIC, true, richCapabilities())
    )
    private fun richCapabilities() = setOf(Capability.CATALOG, Capability.LINE, Capability.WORD,
        Capability.TRANSLATION, Capability.ROMANIZATION, Capability.ARTWORK)

    fun catalogSources(apple: LyricsCatalogSource = AppleMusicLyricsSource()): List<LyricsCatalogSource> =
        listOf(QqLyricsSource(), NetEaseLyricsSource(), KugouLyricsSource(), KuwoLyricsSource(),
            MiguLyricsSource(), SodaLyricsSource(), apple)

    fun ordered(sources: List<LyricsCatalogSource>, preferences: List<String>): List<LyricsCatalogSource> =
        sources.filter { it.isAvailable }.sortedBy { preferences.indexOf(it.sourceName).takeIf { it >= 0 } ?: Int.MAX_VALUE }
}
