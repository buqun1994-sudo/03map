package com.icar03.content.ui

import org.junit.Assert.*
import org.junit.Test

/** Deadline/press interruption contract without a real-time wait or a second scheduler. */
class PageActionsLeaseTest {
    @Test fun leaseExpiresAtThreeSecondsAndEarlyOrObsoleteCallbacksCannotHideIt() {
        var now = 10_000L
        val lease = PageActionsLease { now }
        lease.reveal()
        val first = lease.revision
        assertTrue(lease.visible)
        assertEquals(13_000L, lease.deadlineMillis)
        now = 12_999L
        lease.expire(first)
        assertTrue(lease.visible)
        now = 13_000L
        lease.expire(first)
        assertFalse(lease.visible)
        assertEquals(0L, lease.deadlineMillis)
    }

    @Test fun anotherBlankTapHidesAndFreshTapCannotBeExpiredByTheOldCallback() {
        var now = 0L
        val lease = PageActionsLease { now }
        lease.toggle()
        val first = lease.revision
        now = 2_800L
        lease.toggle()
        assertFalse(lease.visible)
        assertEquals(0L, lease.deadlineMillis)
        now = 3_000L
        lease.expire(first)
        assertFalse(lease.visible)
        lease.toggle()
        val replacement = lease.revision
        assertEquals(6_000L, lease.deadlineMillis)
        lease.expire(first)
        assertTrue(lease.visible)
        now = 6_000L
        lease.expire(replacement)
        assertFalse(lease.visible)
    }

    @Test fun holdingOneOrSeveralButtonsSuspendsExpiryUntilTheLastRelease() {
        var now = 0L
        val lease = PageActionsLease { now }
        lease.reveal()
        now = 2_900L
        lease.press("settings")
        lease.press("fullscreen")
        now = 20_000L
        lease.expire(lease.revision)
        assertTrue(lease.visible)
        lease.release("settings")
        assertEquals(setOf("fullscreen"), lease.pressedIds)
        lease.expire(lease.revision)
        assertTrue(lease.visible)
        lease.release("fullscreen")
        assertEquals(23_000L, lease.deadlineMillis)
        val released = lease.revision
        now = 22_999L
        lease.expire(released)
        assertTrue(lease.visible)
        now = 23_000L
        lease.expire(released)
        assertFalse(lease.visible)
    }

    @Test fun duplicateReleaseCannotExtendADeadlineAndReleaseAfterClearCannotResurrectIt() {
        var now = 0L
        val lease = PageActionsLease { now }
        lease.reveal()
        lease.press("settings")
        now = 100L
        lease.release("settings")
        val releaseRevision = lease.revision
        now = 1_000L
        lease.release("settings")
        assertEquals(releaseRevision, lease.revision)
        assertEquals(3_100L, lease.deadlineMillis)
        lease.press("settings")
        lease.clear()
        lease.release("settings")
        assertFalse(lease.visible)
        assertTrue(lease.pressedIds.isEmpty())
        assertEquals(0L, lease.deadlineMillis)
    }

    @Test fun pageOrModalClearInvalidatesTheOldDeadlineAndFreshRequestsStillWork() {
        var now = 0L
        val lease = PageActionsLease { now }
        lease.reveal()
        val previous = lease.revision
        lease.clear()
        now = 6_000L
        lease.reveal()
        lease.expire(previous)
        assertTrue(lease.visible)
        assertEquals(9_000L, lease.deadlineMillis)
    }
}
