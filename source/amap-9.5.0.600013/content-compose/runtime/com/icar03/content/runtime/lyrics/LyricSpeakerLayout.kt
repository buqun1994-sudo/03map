package com.icar03.content.runtime.lyrics

/** One layout policy for every format, applied only to recognized, rendered body rows. */
internal object LyricSpeakerLayout {
    const val UNSPECIFIED = 0
    const val LEADING = 1
    const val TRAILING = 2
    const val CENTER = 3 // Retained for legacy snapshots; never emitted.

    fun sides(references: List<List<String>>, groupIds: Set<String>): List<Int> {
        val persons = references.asSequence()
            .filter { it.size == 1 }
            .flatten()
            .filter { it !in groupIds }
            .distinct()
            .toList()
        // Identity evidence alone does not establish a divided layout.
        if (persons.size < 2) return List(references.size) { UNSPECIFIED }
        val lanes = persons.withIndex().associate { (index, identity) ->
            identity to if (index % 2 == 0) LEADING else TRAILING
        }
        var inherited = UNSPECIFIED
        return references.map { identities ->
            val side = when {
                identities.isEmpty() -> inherited
                identities.size > 1 || identities.single() in groupIds -> LEADING
                else -> lanes.getValue(identities.single())
            }
            inherited = side
            side
        }
    }
}
