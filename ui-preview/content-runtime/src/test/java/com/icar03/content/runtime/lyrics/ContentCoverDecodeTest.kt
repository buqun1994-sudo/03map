package com.icar03.content.runtime.lyrics

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import java.io.ByteArrayOutputStream
import java.nio.ByteBuffer
import java.util.zip.CRC32

@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28])
class ContentCoverDecodeTest {
    private fun png(width: Int = 24, height: Int = 24): ByteArray {
        val source = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        return try {
            val output = ByteArrayOutputStream()
            assertTrue(source.compress(Bitmap.CompressFormat.PNG, 100, output))
            output.toByteArray()
        } finally { source.recycle() }
    }

    private fun header(width: Int, height: Int): ByteArray = png().also { bytes ->
        // Rewrite only IHDR and its CRC: the header must remain parsable to exercise the guard
        // rather than merely passing because BitmapFactory rejected a malformed checksum.
        ByteBuffer.wrap(bytes).putInt(16, width).putInt(20, height)
        val crc = CRC32().apply { update(bytes, 12, 17) }
        ByteBuffer.wrap(bytes).putInt(29, crc.value.toInt())
        val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeByteArray(bytes, 0, bytes.size, bounds)
        assertEquals(width, bounds.outWidth)
        assertEquals(height, bounds.outHeight)
    }

    @Test fun normalPublicImageSamplesToAtMost512WithoutDecodingItsFullRaster() {
        val image = decodeCoverBitmap(png(2048, 128), LyricsCancellationSignal())!!
        try { assertEquals(512, image.width); assertEquals(32, image.height) }
        finally { image.recycle() }
    }

    @Test fun boundedEncodedBytesDoNotAllowHugeHeaderDimensionsOrPixelCounts() {
        assertNull(decodeCoverBitmap(header(16_385, 1), LyricsCancellationSignal()))
        assertNull(decodeCoverBitmap(header(16_384, 8192), LyricsCancellationSignal()))
    }

    @Test fun singleResponseLimitIsIndependentOfTheOneGiBStorageBudget() {
        assertNull(decodeCoverBitmap(ByteArray(ContentCacheBudget.MAX_ENTRY_BYTES.toInt() + 1), LyricsCancellationSignal()))
    }
}
