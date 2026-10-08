package com.icar03.content.model

/**
 * Pure source-level media control rule shared by preview and the runtime adapter.
 * A missing source is never command-authorized; 网易云音乐 remains read-only even
 * when its public session advertises PLAYING or transport actions.
 */
object ContentMediaControlPolicy {
    private const val CLOUD_MUSIC = "网易云音乐"

    @JvmStatic
    fun acceptsCommands(source: String?): Boolean {
        val value = source?.trim().orEmpty()
        return value.isNotEmpty() && value != CLOUD_MUSIC
    }

    @JvmStatic
    fun playbackAvailable(source: String?): Boolean = acceptsCommands(source)

    @JvmStatic
    fun nextAvailable(source: String?): Boolean = acceptsCommands(source)
}
