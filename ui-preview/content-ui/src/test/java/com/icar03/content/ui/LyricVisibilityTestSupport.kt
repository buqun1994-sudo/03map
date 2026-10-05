package com.icar03.content.ui

import android.view.View
import android.view.ViewTreeObserver
import androidx.compose.runtime.snapshots.Snapshot
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.ComposeContentTestRule
import org.junit.Assert.assertEquals

@OptIn(ExperimentalComposeUiApi::class)
internal fun lyricHostView(compose: ComposeContentTestRule, host: String): View =
    (compose.onNodeWithTag(host).fetchSemanticsNode().root as ViewRootForTest).view

/** Send the pre-draw notification from Android's existing traversal, without a layout callback. */
internal fun dispatchLyricPreDraw(view: View) {
    view.viewTreeObserver.dispatchOnPreDraw()
    Snapshot.sendApplyNotifications()
}

internal fun setLyricViewShown(compose: ComposeContentTestRule, host: String, shown: Boolean) {
    val view = lyricHostView(compose, host)
    compose.runOnIdle {
        view.visibility = if (shown) View.VISIBLE else View.INVISIBLE
        assertEquals("the underlying View visibility changed", shown, view.isShown)
        dispatchLyricPreDraw(view)
    }
}

/** Keep the underlying window fact and its notification consistent, including after remount. */
internal fun setLyricWindowFocus(compose: ComposeContentTestRule, host: String, focused: Boolean) {
    val view = lyricHostView(compose, host)
    compose.runOnIdle {
        val info = lyricAttachInfo(view)
        info.javaClass.getDeclaredField("mHasWindowFocus").apply { isAccessible = true }.setBoolean(info, focused)
        ViewTreeObserver::class.java.getDeclaredMethod("dispatchOnWindowFocusChange", java.lang.Boolean.TYPE)
            .apply { isAccessible = true }.invoke(view.viewTreeObserver, focused)
        assertEquals("the native focus fact agrees with the event", focused, view.hasWindowFocus())
        Snapshot.sendApplyNotifications()
    }
}

/** Model a window visibility dispatch with unchanged focus, lifecycle and global layout. */
internal fun setLyricWindowShown(compose: ComposeContentTestRule, host: String, shown: Boolean) {
    val view = lyricHostView(compose, host)
    compose.runOnIdle {
        val visibility = if (shown) View.VISIBLE else View.INVISIBLE
        val info = lyricAttachInfo(view)
        info.javaClass.getDeclaredField("mWindowVisibility").apply { isAccessible = true }.setInt(info, visibility)
        view.dispatchWindowVisibilityChanged(visibility)
        assertEquals("the window fact changed independently of View.visibility", visibility, view.windowVisibility)
        dispatchLyricPreDraw(view)
    }
}

private fun lyricAttachInfo(view: View): Any =
    View::class.java.getDeclaredField("mAttachInfo").apply { isAccessible = true }.get(view)
        ?: error("The lyric fixture must be attached")
