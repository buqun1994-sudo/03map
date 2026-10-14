package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Canvas
import android.os.Build
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.*
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Rect
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.Density
import androidx.compose.ui.unit.dp
import java.io.File
import java.security.MessageDigest
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

/** Real original HMI images, natural widths and actual inline frames on both target APIs. */
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [28, 34], qualifiers = "w640dp-h1080dp-mdpi")
class CruiseSignalBarTest {
    @get:Rule val compose = createComposeRule()
    private var state by mutableStateOf(CruiseSignalState())
    private var dark by mutableStateOf(false)
    private var width by mutableIntStateOf(320)
    private var compact by mutableStateOf(false)

    private fun mount() {
        compose.setContent {
            CompositionLocalProvider(LocalDensity provides Density(1f, 1f)) {
                ContentTheme(dark) {
                    Column(Modifier.width(480.dp).height(80.dp)
                        .background(MaterialTheme.colorScheme.background).testTag("signal-frame")) {
                        Box(Modifier.width(width.dp)) { CruiseSignalBar(state, compact = compact) }
                        Box(Modifier.size(4.dp).testTag("after-signal"))
                    }
                }
            }
        }
        compose.waitForIdle()
    }

    @Test fun emptyBatchConsumesNoSpaceAndClearingRestoresTheFollowingRow() {
        mount()
        compose.onNodeWithTag("cruise-signal-bar").assertDoesNotExist()
        assertEquals(0f, bounds("after-signal").top, .01f)
        compose.runOnIdle {
            state = CruiseSignalState(listOf(CruiseSignalItem(CruiseSignalDirection.Straight, CruiseSignalColor.Red, 18)))
        }
        compose.onNodeWithContentDescription("直行红灯，18秒").assertIsDisplayed().assertHasNoClickAction()
        assertEquals(44f, bounds("after-signal").top, .01f)
        compose.runOnIdle { state = CruiseSignalState() }
        compose.onNodeWithTag("cruise-signal-bar").assertDoesNotExist()
        compose.onNodeWithTag("cruise-signal-Straight").assertDoesNotExist()
        assertEquals(0f, bounds("after-signal").top, .01f)
    }

    @Test fun absentSecondsRemainAbsentAndNativeUpdatesOwnAllNumbersIncludingZero() {
        state = CruiseSignalState(listOf(CruiseSignalItem(CruiseSignalDirection.Left, CruiseSignalColor.Green),
            CruiseSignalItem(CruiseSignalDirection.Straight, CruiseSignalColor.Red, 18)))
        mount()
        compose.onNodeWithContentDescription("左转绿灯，暂无倒计时").assertIsDisplayed()
        compose.onNodeWithTag("cruise-signal-seconds-Left", useUnmergedTree = true).assertDoesNotExist()
        assertEquals(36f, bounds("cruise-signal-Left").width, .01f)
        compose.onNodeWithTag("cruise-signal-Right").assertDoesNotExist()
        compose.onNodeWithTag("cruise-signal-UTurn").assertDoesNotExist()
        compose.onNodeWithText("下个路口").assertDoesNotExist()
        compose.mainClock.advanceTimeBy(2_000)
        compose.onNodeWithContentDescription("直行红灯，18秒").assertIsDisplayed()
        compose.runOnIdle {
            state = CruiseSignalState(listOf(CruiseSignalItem(CruiseSignalDirection.Straight, CruiseSignalColor.Green, 0)))
        }
        compose.onNodeWithContentDescription("直行绿灯，暂无倒计时").assertIsDisplayed()
        compose.onNodeWithContentDescription("直行红灯，18秒").assertDoesNotExist()
        compose.runOnIdle {
            state = CruiseSignalState(listOf(CruiseSignalItem(CruiseSignalDirection.Straight, CruiseSignalColor.Red, -1)))
        }
        compose.onNodeWithContentDescription("直行红灯，暂无倒计时").assertIsDisplayed()
        compose.onNodeWithTag("cruise-signal-seconds-Straight", useUnmergedTree = true).assertDoesNotExist()
    }

    @Test fun realLampAndCountdownPixelsMatchRedGreenAndYellowOnBothThemes() {
        state = CruiseSignalState(listOf(
            CruiseSignalItem(CruiseSignalDirection.Left, CruiseSignalColor.Red, 28),
            CruiseSignalItem(CruiseSignalDirection.Straight, CruiseSignalColor.Green, 12),
            CruiseSignalItem(CruiseSignalDirection.Right, CruiseSignalColor.Yellow, 3)))
        mount()
        for (theme in listOf(false, true)) {
            compose.runOnIdle { dark = theme }
            compose.waitForIdle()
            val bitmap = frame()
            val accepts = listOf<(Int) -> Boolean>(
                { pixel -> android.graphics.Color.red(pixel) > 140 &&
                    android.graphics.Color.red(pixel) > android.graphics.Color.green(pixel) * 1.5 },
                { pixel -> android.graphics.Color.green(pixel) > 100 &&
                    android.graphics.Color.green(pixel) > android.graphics.Color.red(pixel) * 1.5 },
                { pixel -> android.graphics.Color.red(pixel) > 120 && android.graphics.Color.green(pixel) > 80 &&
                    android.graphics.Color.red(pixel) > android.graphics.Color.green(pixel) * 1.2 &&
                    android.graphics.Color.green(pixel) > android.graphics.Color.blue(pixel) * 2 })
            listOf("Left", "Straight", "Right").forEachIndexed { index, direction ->
                assertTrue("lamp $direction theme=$theme", countPixels(bitmap,
                    bounds("cruise-signal-lamp-$direction"), accepts[index]) > 100)
                assertTrue("digits $direction theme=$theme", countPixels(bitmap,
                    bounds("cruise-signal-seconds-$direction"), accepts[index]) > 5)
            }
            val output = File(System.getProperty("user.dir"),
                "build/cruise-signal-colors-api${Build.VERSION.SDK_INT}-${if (theme) "dark" else "light"}.png")
            output.parentFile.mkdirs()
            output.outputStream().use { bitmap.compress(Bitmap.CompressFormat.PNG, 100, it) }
        }
    }

    @Test fun originalOemPngBytesAndPixelsArePreservedExactly() {
        val root = generateSequence(File(System.getProperty("user.dir")).canonicalFile) { it.parentFile }
            .first { File(it, "source/amap-9.5.0.600013/assets/content-oem").isDirectory }
        val source = File(root, "source/amap-9.5.0.600013/res")
        val sizes = mapOf("red" to (60 to 60), "green" to (60 to 60), "left" to (27 to 19),
            "straight" to (19 to 27), "right" to (27 to 19))
        val hashes = mapOf(
            "red" to "c2169186732ac491debaa350b7cf1f76f59b0a75830b505c40d263673b049ec0",
            "green" to "84b43f38796d654d2fdd58402d75b35acb34aa6c5ca146a5bf72172bf9966cc2",
            "left" to "eba3840a3d2be328c425bd65bb438cb21e84a7a8f005c88e0d6851fa17ac6686",
            "straight" to "c1b396ac6aaecec063ad5fd4597ac7c985fa3a797842326fde7787e97c4b34ca",
            "right" to "e11d153b38dc331f1a9a414e724c99d9906441adfa54b97af947d1c139ab8b7d",
        )
        sizes.forEach { (name, size) ->
            val original = File(source, "drawable-xxhdpi/${name}_night.png").readBytes()
            val deployed = File(source, "drawable/content_oem_cruise_$name.png").readBytes()
            assertArrayEquals("original bytes: $name", original, deployed)
            assertEquals(hashes.getValue(name), MessageDigest.getInstance("SHA-256").digest(deployed)
                .joinToString("") { "%02x".format(it) })
            assertArrayEquals(byteArrayOf(-119, 80, 78, 71, 13, 10, 26, 10), deployed.take(8).toByteArray())
            val bitmap = BitmapFactory.decodeByteArray(deployed, 0, deployed.size)
            assertEquals(size.first, bitmap.width)
            assertEquals(size.second, bitmap.height)
            val originalBitmap = BitmapFactory.decodeByteArray(original, 0, original.size)
            assertTrue("decoded original pixels: $name", bitmap.sameAs(originalBitmap))
        }
    }

    @Test fun inlineOriginalLampsAndDigitsStayAdjacentAcrossSizesThemesAndParentWidths() {
        val lights = listOf(
            CruiseSignalItem(CruiseSignalDirection.Left, CruiseSignalColor.Red, 123),
            CruiseSignalItem(CruiseSignalDirection.Straight, CruiseSignalColor.Green),
            CruiseSignalItem(CruiseSignalDirection.Right, CruiseSignalColor.Red, 8),
            CruiseSignalItem(CruiseSignalDirection.UTurn, CruiseSignalColor.Green, 99),
        )
        state = CruiseSignalState(lights.take(2).reversed())
        mount()
        for (small in listOf(false, true)) for (count in 2..4) for (theme in listOf(false, true)) {
            var naturalWidth: Float? = null
            for (panelWidth in listOf(320, 480)) {
                compose.runOnIdle {
                    state = CruiseSignalState(lights.take(count).reversed()); dark = theme; width = panelWidth; compact = small
                }
                compose.waitForIdle()
                val bar = bounds("cruise-signal-bar")
                val lampSize = CruiseSignalMetrics.lampSize(small).value
                val rowHeight = CruiseSignalMetrics.height(small).value
                assertEquals(rowHeight, bar.height, .01f)
                assertTrue("inline group must wrap content", bar.width < panelWidth - 20f)
                naturalWidth?.let { assertEquals("wider parent does not spread items", it, bar.width, .01f) }
                naturalWidth = bar.width
                compose.onNodeWithText("下个路口").assertDoesNotExist()
                var previousRight: Float? = null
                val bitmap = frame()
                lights.take(count).forEach { light ->
                    val name = light.direction.name
                    val item = bounds("cruise-signal-$name")
                    val lamp = bounds("cruise-signal-lamp-$name")
                    previousRight?.let { assertEquals("inter-item gap", CruiseSignalMetrics.itemGap(small).value, item.left - it, .01f) }
                    assertEquals(rowHeight, item.height, .01f)
                    assertEquals(lampSize, lamp.width, .01f)
                    assertEquals(lampSize, lamp.height, .01f)
                    assertEquals(item.left, lamp.left, .01f)
                    assertEquals(item.center.y, lamp.center.y, .01f)
                    if (light.seconds != null) {
                        val number = bounds("cruise-signal-seconds-$name")
                        assertEquals("digits immediately beside lamp", CruiseSignalMetrics.numberGap(small).value, number.left - lamp.right, .01f)
                        assertEquals("no capsule padding", item.right, number.right, .01f)
                    } else assertEquals(lampSize, item.width, .01f)
                    assertTrue("visible original colored lamp body: $name", coloredPixels(bitmap, lamp, light.color) > 300)
                    if (light.direction != CruiseSignalDirection.UTurn)
                        assertTrue("original white arrow inside lamp: $name", whitePixels(bitmap, lamp) > 10)
                    else assertEquals("original HMI has no UTurn arrow", 0, whitePixels(bitmap, lamp))
                    assertTrue(item.right <= bar.right && item.bottom <= bar.bottom)
                    previousRight = item.right
                }
                val dir = File("build/outputs/cruise-signal").apply { mkdirs() }
                File(dir, "inline-oem-api${Build.VERSION.SDK_INT}-${if (theme) "dark" else "light"}-${if (small) "compact" else "regular"}-$count-$panelWidth.png")
                    .outputStream().use { assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it)) }
            }
        }
    }

    private fun bounds(tag: String): Rect = compose.onNodeWithTag(tag, useUnmergedTree = true)
        .fetchSemanticsNode().boundsInRoot

    private fun coloredPixels(bitmap: Bitmap, bounds: Rect, color: CruiseSignalColor): Int = countPixels(bitmap, bounds) {
        val r = android.graphics.Color.red(it); val g = android.graphics.Color.green(it); val b = android.graphics.Color.blue(it)
        if (color == CruiseSignalColor.Red) r > 100 && r > g * 2 && r > b * 2
        else g > 100 && g > r * 2 && g > b * 2
    }
    private fun whitePixels(bitmap: Bitmap, bounds: Rect): Int = countPixels(bitmap, bounds) {
        android.graphics.Color.red(it) > 240 && android.graphics.Color.green(it) > 240 && android.graphics.Color.blue(it) > 240
    }
    private fun countPixels(bitmap: Bitmap, bounds: Rect, accepts: (Int) -> Boolean): Int {
        var count = 0
        for (y in bounds.top.toInt() until bounds.bottom.toInt())
            for (x in bounds.left.toInt() until bounds.right.toInt())
                if (accepts(bitmap.getPixel(x, y))) count++
        return count
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun frame(): Bitmap = compose.runOnIdle {
        val node = compose.onNodeWithTag("signal-frame").fetchSemanticsNode()
        val root = node.root as ViewRootForTest
        val bounds = node.boundsInRoot
        Bitmap.createBitmap(bounds.width.toInt(), bounds.height.toInt(), Bitmap.Config.ARGB_8888).also {
            val canvas = Canvas(it)
            canvas.translate(-bounds.left, -bounds.top)
            root.view.draw(canvas)
        }
    }
}
