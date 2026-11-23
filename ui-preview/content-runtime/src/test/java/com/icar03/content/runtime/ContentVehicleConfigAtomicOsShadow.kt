package com.icar03.content.runtime

import android.system.ErrnoException
import android.system.Os
import android.system.OsConstants
import org.robolectric.annotation.Implementation
import org.robolectric.annotation.Implements
import org.robolectric.annotation.Resetter
import java.io.IOException
import java.nio.file.Files
import java.nio.file.Path
import java.nio.file.StandardCopyOption

/**
 * Robolectric 4.14's default ShadowOs does not implement rename. Exercise the same-directory
 * atomic replacement on the host filesystem and allow fault injection before the rename.
 * The production profile loader uses android.system.Os, available since API 21.
 */
@Implements(Os::class)
class ContentVehicleConfigAtomicOsShadow {
    companion object {
        var renameCalls = 0
        var failNextRename = false

        @JvmStatic
        @Implementation(minSdk = 21)
        fun rename(oldPath: String, newPath: String) {
            renameCalls++
            if (failNextRename) {
                failNextRename = false
                throw ErrnoException("rename", OsConstants.EACCES)
            }
            try {
                val old = Path.of(oldPath)
                val new = Path.of(newPath)
                check(old.parent == new.parent) { "Profile rename must use the same directory" }
                Files.move(old, new, StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING)
            } catch (failure: IOException) {
                throw ErrnoException("rename", OsConstants.EIO, failure)
            }
        }

        @JvmStatic
        @Resetter
        fun reset() {
            renameCalls = 0
            failNextRename = false
        }
    }
}
