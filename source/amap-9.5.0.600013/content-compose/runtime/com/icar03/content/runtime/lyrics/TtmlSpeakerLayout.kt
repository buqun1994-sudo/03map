package com.icar03.content.runtime.lyrics

/** Extract structured references; the common owner decides layout admission and positions. */
internal object TtmlSpeakerLayout {
    fun sides(document: TtmlLyricsDocument): List<Int> = LyricSpeakerLayout.sides(
        document.lines.map { line ->
            line.agent.trim().split(Regex("\\s+"))
                .filter(String::isNotBlank)
                .distinct()
        },
        document.agentTypes.filterValues { it.equals("group", ignoreCase = true) }.keys
    )
}
