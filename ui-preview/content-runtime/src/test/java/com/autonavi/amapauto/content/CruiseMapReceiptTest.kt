package com.autonavi.amapauto.content

import java.nio.ByteBuffer
import java.nio.ByteOrder
import org.junit.Assert.*
import org.junit.Test

class CruiseMapReceiptTest {
    private val pid = 2345
    private val stamp = 10_000_000_000L
    private val now = stamp + 250_000_000L
    private fun wire(raw: IntArray = intArrayOf(3, 8, 5, 6), lights: Int = 1, sd: Int = 0): ByteArray =
        ByteBuffer.allocate(32 + raw.size * 4).order(ByteOrder.LITTLE_ENDIAN).apply {
            putInt(0x43534d31); putInt(2); putInt(pid); putInt(raw.size / 4); putLong(stamp)
            putInt(lights); putInt(sd); raw.forEach { putInt(it) }
        }.array()
    private fun decode(bytes: ByteArray, length: Int = bytes.size) =
        ContentCruiseMapBridge.decodeReceipt(bytes, length, pid, now)
    private fun changeInt(bytes: ByteArray, offset: Int, value: Int): ByteArray = bytes.copyOf().also {
        ByteBuffer.wrap(it).order(ByteOrder.LITTLE_ENDIAN).putInt(offset, value)
    }

    @Test fun v2ReadsQualificationAndCopiesRowsAndAcceptsAnEmptyPublication() {
        val bytes = wire(sd = 1)
        val receipt = decode(bytes)!!
        bytes.fill(0)
        assertArrayEquals(intArrayOf(3, 8, 5, 6), receipt.raw)
        assertEquals(1, receipt.lightCount)
        assertTrue(receipt.sdType)
        assertEquals(stamp, receipt.timestampNs)
        val empty = decode(wire(intArrayOf(), 0))!!
        assertEquals(0, empty.raw.size)
        assertEquals(0, empty.lightCount)
    }

    @Test fun wrongVersionProcessShapeAndUnknownQualificationNeverProduceAFact() {
        val bytes = wire()
        for (invalid in listOf(
            changeInt(bytes, 0, 0), changeInt(bytes, 4, 1), changeInt(bytes, 8, pid + 1),
            changeInt(bytes, 12, -1), changeInt(bytes, 12, 17), changeInt(bytes, 12, 0),
            changeInt(bytes, 24, -1), changeInt(bytes, 24, 17), changeInt(bytes, 28, 2),
            bytes.copyOf(bytes.size - 1), bytes.copyOf(bytes.size + 1))) {
            assertNull(decode(invalid))
        }
        assertNull(decode(bytes, 24))
        assertNull(decode(bytes, bytes.size + 1))
    }

    @Test fun futureAndExpiredTimestampsCannotRefreshTheStore() {
        val bytes = wire()
        assertNull(ContentCruiseMapBridge.decodeReceipt(bytes, bytes.size, pid, stamp - 1))
        assertNull(ContentCruiseMapBridge.decodeReceipt(bytes, bytes.size, pid, stamp + 3_000_000_001L))
        assertNotNull(ContentCruiseMapBridge.decodeReceipt(bytes, bytes.size, pid, stamp + 3_000_000_000L))
    }
}
