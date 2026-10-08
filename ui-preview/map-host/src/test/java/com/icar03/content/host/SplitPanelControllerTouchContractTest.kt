package com.icar03.content.host

import java.io.File
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * The formal map controller is maintained as Smali, so this contract test keeps
 * the touch-to-presentation boundary reviewable in the host module. A touch
 * may use panelState=2/6 internally, but only a horizontal drag crossing slop
 * may notify ContentPresentation and start the ambient presentation path.
 */
class SplitPanelControllerTouchContractTest {
    private fun controllerSource(): String {
        val start = File(requireNotNull(System.getProperty("user.dir")))
        return generateSequence(start) { it.parentFile }
            .map { File(it, "source/amap-9.5.0.600013/smali/SplitPanelController.smali") }
            .firstOrNull { it.isFile }
            ?.readText()
            ?: error("formal SplitPanelController.smali is not reachable from ${start.absolutePath}")
    }

    private fun section(source: String, start: String, end: String): String {
        val lineBreak = System.lineSeparator()
        val startMarker = if (start.startsWith(".")) start else lineBreak + "    $start" + lineBreak
        val endMarker = if (end.startsWith(".")) end else lineBreak + "    $end" + lineBreak
        val from = source.indexOf(startMarker).also { require(it >= 0) { "missing $start" } }
        val to = source.indexOf(endMarker, from + startMarker.length).also { require(it >= 0) { "missing $end" } }
        return source.substring(from, to)
    }

    @Test fun downAndBlockedDirectionDoNotArmPresentationOrHideHint() {
        val source = controllerSource()
        val down = section(source, ":action_down", ":action_move")
        assertFalse("sub-slop DOWN must not start ambient presentation", down.contains("notifyPresentationPhase"))
        assertFalse("sub-slop DOWN must not hide the existing hint", down.contains("fadeOutHint"))
        assertFalse("sub-slop DOWN must not cancel an existing settle", down.contains("cancelPanelAnimation"))

        val blocked = section(source, ":block_gesture", ":drag_move")
        assertFalse("vertical/error direction must not start ambient presentation", blocked.contains("notifyPresentationPhase"))

        val drag = section(source, ":horizontal_started", ":block_gesture")
        assertTrue("only a real horizontal drag hides the hint", drag.contains("fadeOutHint"))
        assertTrue("only a real horizontal drag cancels the old animator", drag.contains("cancelPanelAnimation"))
        assertTrue("drag takeover refreshes the divider baseline", drag.contains("currentDividerX"))
        assertTrue("drag takeover keeps the original pointer delta", drag.contains("downDividerX"))
        assertTrue("the first over-slop event still applies its real delta", drag.contains("applyDividerX"))
        assertTrue("only a real horizontal drag enters presentation phase", drag.contains("notifyPresentationPhase"))

        val animationEnd = section(source, ".method public onAnimationEnd(Landroid/animation/Animator;)V", ".end method")
        assertTrue("settling completion must leave panelState=2 while the finger is down",
            animationEnd.contains("gestureActive") && animationEnd.contains("if-nez v0, :animation_done"))
    }

    @Test fun tapCancelAndBlockedReleaseDoNotStartSettlingAnimation() {
        val source = controllerSource()
        val pressedCancel = section(source, ":not_dragging", ":not_pressed")
        assertTrue("cancel before slop returns to the stable state when no animator remains", pressedCancel.contains("setStableStateFromCurrent"))
        assertTrue("cancel before slop lets an existing animator publish its own final state",
            pressedCancel.contains("panelAnimator") && pressedCancel.contains("if-eqz v0, :cancel_release_stable"))
        assertFalse("cancel before slop must not start settling", pressedCancel.contains("settleToStableState"))

        val blockedRelease = section(source, ":not_pressed", ".end method")
        assertTrue("blocked release returns to the stable state when no animator remains", blockedRelease.contains("setStableStateFromCurrent"))
        assertTrue("blocked release lets an existing animator publish its own final state",
            blockedRelease.contains("panelAnimator") && blockedRelease.contains("if-eqz v0, :blocked_release_stable"))
        assertFalse("blocked release must not start settling", blockedRelease.contains("settleToStableState"))
    }
}
