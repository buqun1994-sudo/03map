package com.icar03.content.runtime.lyrics

/**
 * Derives stable vocal lanes from structured TTML metadata.
 * Solo lanes follow the first real solo occurrence; shared/group rows stay left.
 */
internal object TtmlSpeakerLayout {
    const val UNSPECIFIED = 0
    const val LEADING = 1
    const val TRAILING = 2
    const val CENTER = 3

    fun sides(document: TtmlLyricsDocument): List<Int> {
        val groupIds = document.agentTypes
            .filterValues { it.equals("group", ignoreCase = true) }
            .keys
        val references = document.lines.map { line ->
            line.agent.trim().split(Regex("\\s+"))
                .filter(String::isNotBlank)
                .distinct()
        }
        val persons = references.asSequence()
            .filter { it.size == 1 }
            .flatten()
            .filter { it !in groupIds }
            .distinct()
            .toList()
        if (persons.size < 2) return List(document.lines.size) { UNSPECIFIED }
        val lanes = persons.withIndex().associate { (index, identity) ->
            identity to if (index % 2 == 0) LEADING else TRAILING
        }
        var inherited = UNSPECIFIED
        return references.map { identities ->
            val side = when {
                identities.isEmpty() -> inherited
                identities.size > 1 -> LEADING
                identities.single() in groupIds -> LEADING
                else -> lanes.getValue(identities.single())
            }
            inherited = side
            side
        }
    }
}
