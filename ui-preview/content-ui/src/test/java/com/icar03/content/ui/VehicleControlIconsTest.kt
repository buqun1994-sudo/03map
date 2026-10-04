package com.icar03.content.ui

import android.graphics.Bitmap
import android.graphics.Canvas
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.toArgb
import com.airbnb.lottie.LottieCompositionFactory
import com.airbnb.lottie.LottieDrawable
import com.airbnb.lottie.LottieProperty
import com.airbnb.lottie.model.KeyPath
import com.airbnb.lottie.value.LottieValueCallback
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.RuntimeEnvironment
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode

class VehicleControlIconsTest {
    @Test fun wiperRecipesKeepMatteWhiteAndUseIndependentManualAutoAndOffProjection() {
        for (dark in listOf(false, true)) for (level in 0..5) {
            val base = if (dark) Color.White else Color.Black
            val recipe = vehicleControlIconRecipe(ControlId.Wiper, level, dark, base)
            assertEquals(0..29, recipe.frames)
            assertEquals(1f, recipe.playbackSpeed)
            if (level == 5) {
                assertEquals("", recipe.asset)
                assertTrue(recipe.animationColors.isEmpty()); assertTrue(recipe.animationStrokePathColors.isEmpty())
            } else {
                assertEquals("ico_wiper_${level.coerceIn(1, 4)}.json", recipe.asset)
                assertTrue(recipe.animationColors.keys.all { it.first() == "color1" })
                assertTrue(recipe.animationStrokePathColors.keys.all { it.first() == "color1" })
                assertTrue(recipe.animationStrokePathColors.values.all { it == if (level == 0) base else Color(0xFF3FA9FF) })
                assertEquals(if (level == 0) mapOf(listOf("color1", "**", "Lv1", "描边 1") to 0) else emptyMap<List<String>, Int>(), recipe.animationPathOpacities)
            }
        }
    }

    @Test fun rearRecipesColorOnlyVisibleLayersAndUseTheirOwnCompleteCycle() {
        for (selected in listOf(false, true)) for (dark in listOf(false, true)) {
            val rear = rearWiperIconRecipe(selected, dark)
            assertEquals("ico_rear_wiper.json", rear.asset); assertEquals(0..29, rear.frames)
            val wash = rearWashIconRecipe(selected, dark)
            assertEquals("ico_wash_rear_derived.json", wash.asset); assertEquals(0..59, wash.frames)
            assertEquals(2f, wash.playbackSpeed)
            assertEquals(setOf(listOf("color1", "**", "填充 1")), wash.animationColors.keys)
            assertTrue(wash.animationStrokePathColors.isEmpty()); assertTrue(wash.animationPathOpacities.isEmpty())
        }
    }

    @Test fun originalConsumerFramesCoverBothSeatSidesAndAllWheelModes() {
        for (dark in listOf(false, true)) {
            val suffix = if (dark) "wh" else "bk"
            for ((id, side) in mapOf(ControlId.Heating to "l", ControlId.PassengerHeating to "r")) {
                val frames = mapOf(0 to 121..150, 1 to 61..90, 2 to 31..60, 3 to 1..30)
                frames.forEach { (level, expected) ->
                    val recipe = vehicleControlIconRecipe(id, level, dark)
                    assertEquals(expected, recipe.frames)
                    assertEquals("ico_skin_seat_heat_${side}_$suffix.json", recipe.asset)
                }
                val automatic = vehicleControlIconRecipe(id, 4, dark)
                assertEquals(91..120, automatic.frames)
                assertEquals(if (id == ControlId.Heating && !dark) "ico_skin_heat_l_auto_bk.json"
                    else "ico_skin_seat_heat_${side}_auto_$suffix.json", automatic.asset)
                assertEquals(Color(0xFFFF6400), automatic.animationColors[listOf("color3", "**", "填充 1")])
            }
            val wheelFrames = mapOf(0 to 91..120, 1 to 31..60, 2 to 1..30, 3 to 61..90)
            wheelFrames.forEach { (level, expected) ->
                val recipe = vehicleControlIconRecipe(ControlId.SteeringHeat, level, dark)
                assertEquals(expected, recipe.frames)
                assertEquals("ico_skin_stwh_heat${if (level == 3) "_auto" else ""}_$suffix.json", recipe.asset)
            }
        }
    }

    @Test fun massageRecolorsOnlyNamedWaveStrokesAndKeepsAcceptedPalette() {
        for (dark in listOf(false, true)) for (level in 0..3) {
            val recipe = vehicleControlIconRecipe(ControlId.Massage, level, dark)
            val expected = if (level == 0) if (dark) Color.White else Color.Black else Color(0xFFA14FEC)
            assertEquals(setOf(listOf("color1", "**", "填充 1")), recipe.animationColors.keys)
            assertEquals((2..11).map { listOf("color$it", "**", "描边 1") }.toSet(), recipe.animationStrokePathColors.keys)
            assertTrue(recipe.animationStrokePathColors.values.all { it == expected })
            assertEquals(expected, recipe.pathColors[0])
        }
    }

    @Test fun ventilationKeepsProvenGroupPathsAndColoredFallbacks() {
        for (dark in listOf(false, true)) for (level in 1..3) {
            val recipe = vehicleControlIconRecipe(ControlId.Ventilation, level, dark)
            val blue = Color(0xFF3FA9FF)
            val base = if (dark) Color.White else Color.Black
            assertEquals(blue, recipe.animationColors[listOf("**", "组 4", "填充 1")])
            assertEquals(blue, recipe.animationColors[listOf("**", "组 5", "填充 1")])
            for (wave in 1..3) assertEquals(if (level >= 4 - wave) blue else base,
                recipe.animationColors[listOf("**", "组 6", "组 $wave", "填充 1")])
            val expected = if (dark) when (level) {
                1 -> R.drawable.content_oem_ico_skin_seat_ventilate_l_1_color_night
                2 -> R.drawable.content_oem_ico_skin_seat_ventilate_l_2_color_night
                else -> R.drawable.content_oem_ico_skin_seat_ventilate_l_3_color_night
            } else when (level) {
                1 -> R.drawable.content_oem_ico_skin_seat_ventilate_l_1_color_day
                2 -> R.drawable.content_oem_ico_skin_seat_ventilate_l_2_color_day
                else -> R.drawable.content_oem_ico_skin_seat_ventilate_l_3_color_day
            }
            assertEquals(expected, recipe.resource)
        }
    }

    @Test fun sevenNamesComeFromTheSharedOwnerAndPreviewUnknownStaysUnknown() {
        assertEquals(listOf("车锁", "方向盘加热", "座椅通风", "主驾座椅加热", "副驾座椅加热", "座椅按摩", "设置",
            "自动雨刮器", "后窗雨刮器", "后窗洗涤", "雨刮器"), ShortcutId.entries.map { it.label })
        ShortcutId.entries.filter { it.control != null && it != ShortcutId.AutoWiper }.forEach { assertEquals(it.control!!.label, it.label) }
        val passenger = previewState(PreviewScenario.NoData).controls.getValue(ControlId.PassengerHeating)
        assertFalse(passenger.known); assertFalse(passenger.available); assertEquals(-1, passenger.displayed)
    }
}

/** Actual original Lottie path pixels, without Compose press/micro-transition scale. */
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@RunWith(RobolectricTestRunner::class)
@Config(sdk = [34], qualifiers = "mdpi")
class VehicleControlIconNativeTest {
    private fun render(recipe: VehicleControlIconRecipe, frame: Int, recolor: Boolean = true): IntArray {
        val result = LottieCompositionFactory.fromAssetSync(RuntimeEnvironment.getApplication(), "content-oem/${recipe.asset}")
        val composition = requireNotNull(result.value) { "${recipe.asset}: ${result.exception}" }
        assertTrue("chosen original frame must be inside its source timeline", frame >= composition.startFrame && frame <= composition.endFrame)
        val drawable = LottieDrawable().apply {
            setComposition(composition)
            @Suppress("DEPRECATION")
            enableMergePathsForKitKatAndAbove(true)
            if (recolor) {
                recipe.animationColors.forEach { (path, color) ->
                    val key = KeyPath(*path.toTypedArray())
                    addValueCallback(key, LottieProperty.COLOR, LottieValueCallback(color.toArgb()))
                    addValueCallback(key, LottieProperty.STROKE_COLOR, LottieValueCallback(color.toArgb()))
                }
                recipe.animationStrokePathColors.forEach { (path, color) ->
                    val key = KeyPath(*path.toTypedArray())
                    assertTrue("original wave path must resolve, not silently miss: $path", resolveKeyPath(key).isNotEmpty())
                    addValueCallback(key, LottieProperty.STROKE_COLOR, LottieValueCallback(color.toArgb()))
                }
            }
            setBounds(0, 0, 300, 300)
            this.frame = frame
        }
        val image = Bitmap.createBitmap(300, 300, Bitmap.Config.ARGB_8888)
        drawable.draw(Canvas(image))
        val pixels = IntArray(300 * 300)
        image.getPixels(pixels, 0, 300, 0, 0, 300, 300)
        return pixels
    }

    @Test fun autoIdleSegmentsMoveActualPixelsAndKeepStableTailsWithoutSyntheticScale() {
        for (dark in listOf(false, true)) for (id in listOf(ControlId.Heating, ControlId.PassengerHeating, ControlId.SteeringHeat)) {
            val recipe = vehicleControlIconRecipe(id, id.automaticLevel, dark)
            val earlyFrame = if (id == ControlId.SteeringHeat) 65 else 95
            val tailFrame = if (id == ControlId.SteeringHeat) 89 else 119
            val early = render(recipe, earlyFrame)
            val tail = render(recipe, tailFrame)
            assertTrue("$id/$dark AUTO must have real OEM geometry/alpha motion, not just progress/press scale", !early.contentEquals(tail))
            assertArrayEquals("same exact original tail is stable", tail, render(recipe, tailFrame))
            assertTrue("complete original AUTO icon must remain visible", tail.count { android.graphics.Color.alpha(it) > 100 } > 1000)
        }
    }

    @Test fun everyMassageWaveStaysPurpleThroughTransferFramesAndRetainsOriginalAlpha() {
        for (dark in listOf(false, true)) for (level in 1..3) {
            val recipe = vehicleControlIconRecipe(ControlId.Massage, level, dark)
            // +2 catches the former white second-wave t31..37 and t61..67.
            for (frame in listOf(recipe.frames.first + 2, recipe.frames.first + 12, recipe.frames.last)) {
                val raw = render(recipe, frame, recolor = false)
                val themed = render(recipe, frame)
                assertArrayEquals("$dark/$level/$frame preserves OEM opacity, width, path and trim",
                    IntArray(raw.size) { android.graphics.Color.alpha(raw[it]) },
                    IntArray(themed.size) { android.graphics.Color.alpha(themed[it]) })
                val visible = themed.filter { android.graphics.Color.alpha(it) >= 24 }
                assertTrue("original body/waves must actually draw", visible.size > 1000)
                val expected = android.graphics.Color.valueOf(Color(0xFFA14FEC).toArgb())
                assertTrue("$dark/$level/$frame has no white/neutral transfer-wave pixels", visible.all {
                    kotlin.math.abs(android.graphics.Color.red(it) - (expected.red() * 255).toInt()) <= 12 &&
                        kotlin.math.abs(android.graphics.Color.green(it) - (expected.green() * 255).toInt()) <= 12 &&
                        kotlin.math.abs(android.graphics.Color.blue(it) - (expected.blue() * 255).toInt()) <= 12
                })
            }
        }
        for (dark in listOf(false, true)) {
            val recipe = vehicleControlIconRecipe(ControlId.Massage, 0, dark)
            val expected = if (dark) 255 else 0
            assertTrue("OFF retains neutral theme outline/waves, not purple", render(recipe, recipe.frames.last).filter {
                android.graphics.Color.alpha(it) >= 24
            }.all { kotlin.math.abs(android.graphics.Color.red(it) - expected) <= 12 &&
                kotlin.math.abs(android.graphics.Color.green(it) - expected) <= 12 &&
                kotlin.math.abs(android.graphics.Color.blue(it) - expected) <= 12 })
        }
    }
}
