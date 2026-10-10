package com.icar03.content.ui

import androidx.compose.runtime.Immutable
import androidx.compose.ui.geometry.Rect

/** Visible OEM path bounds in the original asset viewBox; geometry and source bytes stay intact. */
@Immutable
internal data class OemGlyphViewport(
    val normalizedRect: Rect,
    val sourceAspectRatio: Float = 1f,
) {
    val aspectRatio: Float get() = normalizedRect.width * sourceAspectRatio / normalizedRect.height
}

/**
 * Native calibration: OemGlyphCalibrationNativeTest, 960px transparent tails, alpha >= 8.
 * Each resource/asset/segment is measured separately, including OFF path-opacity recipes.
 * Reproduce the full bounds and canonical source hashes in build/reports/glyph-calibration.json.
 * Calibration report SHA-256: 797f66a7d65006b0038e839e49bf72185e246d9bfec0972929f0e1c942e5ebf3
 * Lookup and rendering never rasterize, scan pixels or construct per-frame registry keys.
 */
internal fun oemGlyphViewport(resource: Int, asset: String?, frames: IntRange?): OemGlyphViewport? {
    if (asset == null) return vectorViewports[resource]
    val entry = lottieViewports[resource] ?: return null
    return if (entry.asset == asset && entry.first == frames?.first && entry.last == frames?.last)
        entry.viewport else null
}

private data class AnimatedViewport(
    val asset: String,
    val first: Int?,
    val last: Int?,
    val viewport: OemGlyphViewport,
)

// Integer bounds retain the exact measured 960px grid instead of rounded hand-picked ratios.
private fun v(left: Int, top: Int, right: Int, bottom: Int) = OemGlyphViewport(
    Rect(left / 960f, top / 960f, right / 960f, bottom / 960f),
)

private val vectorViewports = mapOf(
    R.drawable.content_oem_ico_lock_close to v(180, 80, 780, 820),
    R.drawable.content_oem_ico_lock_open to v(60, 80, 840, 820),
    R.drawable.content_oem_ico_wiper_0_day to v(66, 190, 894, 880),
    R.drawable.content_oem_ico_wiper_1_day to v(66, 190, 894, 880),
    R.drawable.content_oem_ico_wiper_2_day to v(66, 90, 894, 880),
    R.drawable.content_oem_ico_wiper_3_day to v(66, 90, 894, 880),
    R.drawable.content_oem_ico_wiper_4_day to v(66, 90, 894, 880),
    R.drawable.content_oem_ico_wiper_auto_day to v(66, 190, 922, 920),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_off_day to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_1_color_day to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_2_color_day to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_3_color_day to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_heat_l_off_day to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_heat_l_1_day to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_heat_l_2_day to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_heat_l_3_day to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_heat_l_auto_off_day to v(113, 100, 860, 870),
    R.drawable.content_oem_ico_skin_seat_massage_l_off_day to v(100, 100, 847, 830),
    R.drawable.content_oem_ico_skin_seat_massage_l_1_day to v(100, 100, 847, 830),
    R.drawable.content_oem_ico_skin_seat_massage_l_2_day to v(100, 100, 847, 830),
    R.drawable.content_oem_ico_skin_seat_massage_l_3_day to v(100, 100, 847, 830),
    R.drawable.content_oem_ico_wiper_0_night to v(66, 190, 894, 880),
    R.drawable.content_oem_ico_wiper_1_night to v(66, 190, 894, 880),
    R.drawable.content_oem_ico_wiper_2_night to v(66, 90, 894, 880),
    R.drawable.content_oem_ico_wiper_3_night to v(66, 90, 894, 880),
    R.drawable.content_oem_ico_wiper_4_night to v(66, 90, 894, 880),
    R.drawable.content_oem_ico_wiper_auto_night to v(66, 190, 922, 920),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_off_night to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_1_color_night to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_2_color_night to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_3_color_night to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_heat_l_off_night to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_heat_l_1_night to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_heat_l_2_night to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_heat_l_3_night to v(113, 100, 860, 830),
    R.drawable.content_oem_ico_skin_seat_heat_l_auto_off_night to v(113, 100, 860, 870),
    R.drawable.content_oem_ico_skin_seat_massage_l_off_night to v(100, 100, 847, 830),
    R.drawable.content_oem_ico_skin_seat_massage_l_1_night to v(100, 100, 847, 830),
    R.drawable.content_oem_ico_skin_seat_massage_l_2_night to v(100, 100, 847, 830),
    R.drawable.content_oem_ico_skin_seat_massage_l_3_night to v(100, 100, 847, 830),
    R.drawable.content_oem_ic_settings to v(79, 70, 881, 890),
    R.drawable.content_ic_fullscreen to v(60, 60, 900, 900),
    R.drawable.content_ic_fullscreen_exit to v(36, 45, 924, 915),
    R.drawable.content_oem_ico_media_play_f to v(270, 126, 800, 834),
    R.drawable.content_oem_ico_media_pause_f to v(260, 180, 700, 780),
    R.drawable.content_oem_ico_media_next_f to v(180, 151, 780, 809),
    R.drawable.content_oem_ico_bluetooth to v(209, 91, 745, 869),
    R.drawable.content_oem_ico_media_aiquting to v(89, 110, 850, 830),
    R.drawable.content_oem_ico_media_neteasy to v(139, 100, 820, 840),
    R.drawable.content_oem_ico_devices_usb to v(140, 140, 820, 820),
    R.drawable.content_oem_ico_media_local to v(139, 108, 820, 820),
)

private val lottieViewports = mapOf(
    R.drawable.content_oem_ico_lock_close to AnimatedViewport(
        "ico_lock_close_f.json", null, null, v(211, 134, 749, 807)),
    R.drawable.content_oem_ico_lock_open to AnimatedViewport(
        "ico_lock_open_f.json", null, null, v(76, 117, 844, 807)),
    R.drawable.content_oem_ico_wiper_0_day to AnimatedViewport(
        "ico_wiper_1.json", 0, 29, v(77, 211, 880, 880)),
    R.drawable.content_oem_ico_wiper_1_day to AnimatedViewport(
        "ico_wiper_1.json", 0, 29, v(77, 90, 880, 880)),
    R.drawable.content_oem_ico_wiper_2_day to AnimatedViewport(
        "ico_wiper_2.json", 0, 29, v(77, 90, 880, 880)),
    R.drawable.content_oem_ico_wiper_3_day to AnimatedViewport(
        "ico_wiper_3.json", 0, 29, v(77, 90, 880, 880)),
    R.drawable.content_oem_ico_wiper_4_day to AnimatedViewport(
        "ico_wiper_4.json", 0, 29, v(77, 90, 880, 880)),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_off_day to AnimatedViewport(
        "ico_skin_seat_ventilate_l_bk.json", 91, 120, v(106, 114, 854, 845)),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_1_color_day to AnimatedViewport(
        "ico_skin_seat_ventilate_l_bk.json", 61, 90, v(106, 114, 854, 845)),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_2_color_day to AnimatedViewport(
        "ico_skin_seat_ventilate_l_bk.json", 31, 60, v(106, 114, 854, 845)),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_3_color_day to AnimatedViewport(
        "ico_skin_seat_ventilate_l_bk.json", 1, 30, v(106, 114, 854, 845)),
    R.drawable.content_oem_ico_skin_seat_heat_l_off_day to AnimatedViewport(
        "ico_skin_seat_heat_l_bk.json", 121, 150, v(113, 98, 860, 829)),
    R.drawable.content_oem_ico_skin_seat_heat_l_1_day to AnimatedViewport(
        "ico_skin_seat_heat_l_bk.json", 61, 90, v(113, 98, 860, 829)),
    R.drawable.content_oem_ico_skin_seat_heat_l_2_day to AnimatedViewport(
        "ico_skin_seat_heat_l_bk.json", 31, 60, v(113, 98, 860, 829)),
    R.drawable.content_oem_ico_skin_seat_heat_l_3_day to AnimatedViewport(
        "ico_skin_seat_heat_l_bk.json", 1, 30, v(113, 98, 860, 829)),
    R.drawable.content_oem_ico_skin_seat_heat_l_auto_off_day to AnimatedViewport(
        "ico_skin_heat_l_auto_bk.json", 91, 120, v(113, 98, 860, 874)),
    R.drawable.content_oem_ico_skin_seat_massage_l_off_day to AnimatedViewport(
        "ico_skin_seat_massage_l_bk.json", 91, 120, v(100, 100, 848, 830)),
    R.drawable.content_oem_ico_skin_seat_massage_l_1_day to AnimatedViewport(
        "ico_skin_seat_massage_l_bk.json", 1, 30, v(100, 100, 848, 830)),
    R.drawable.content_oem_ico_skin_seat_massage_l_2_day to AnimatedViewport(
        "ico_skin_seat_massage_l_bk.json", 31, 60, v(100, 100, 848, 830)),
    R.drawable.content_oem_ico_skin_seat_massage_l_3_day to AnimatedViewport(
        "ico_skin_seat_massage_l_bk.json", 61, 90, v(100, 100, 848, 830)),
    R.drawable.content_oem_ico_wiper_0_night to AnimatedViewport(
        "ico_wiper_1.json", 0, 29, v(77, 211, 880, 880)),
    R.drawable.content_oem_ico_wiper_1_night to AnimatedViewport(
        "ico_wiper_1.json", 0, 29, v(77, 90, 880, 880)),
    R.drawable.content_oem_ico_wiper_2_night to AnimatedViewport(
        "ico_wiper_2.json", 0, 29, v(77, 90, 880, 880)),
    R.drawable.content_oem_ico_wiper_3_night to AnimatedViewport(
        "ico_wiper_3.json", 0, 29, v(77, 90, 880, 880)),
    R.drawable.content_oem_ico_wiper_4_night to AnimatedViewport(
        "ico_wiper_4.json", 0, 29, v(77, 90, 880, 880)),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_off_night to AnimatedViewport(
        "ico_skin_seat_ventilate_l_wh.json", 91, 120, v(106, 114, 854, 845)),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_1_color_night to AnimatedViewport(
        "ico_skin_seat_ventilate_l_wh.json", 61, 90, v(106, 114, 854, 845)),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_2_color_night to AnimatedViewport(
        "ico_skin_seat_ventilate_l_wh.json", 31, 60, v(106, 114, 854, 845)),
    R.drawable.content_oem_ico_skin_seat_ventilate_l_3_color_night to AnimatedViewport(
        "ico_skin_seat_ventilate_l_wh.json", 1, 30, v(106, 114, 854, 845)),
    R.drawable.content_oem_ico_skin_seat_heat_l_off_night to AnimatedViewport(
        "ico_skin_seat_heat_l_wh.json", 121, 150, v(113, 98, 860, 829)),
    R.drawable.content_oem_ico_skin_seat_heat_l_1_night to AnimatedViewport(
        "ico_skin_seat_heat_l_wh.json", 61, 90, v(113, 98, 860, 829)),
    R.drawable.content_oem_ico_skin_seat_heat_l_2_night to AnimatedViewport(
        "ico_skin_seat_heat_l_wh.json", 31, 60, v(113, 98, 860, 829)),
    R.drawable.content_oem_ico_skin_seat_heat_l_3_night to AnimatedViewport(
        "ico_skin_seat_heat_l_wh.json", 1, 30, v(113, 98, 860, 829)),
    R.drawable.content_oem_ico_skin_seat_heat_l_auto_off_night to AnimatedViewport(
        "ico_skin_seat_heat_l_auto_wh.json", 91, 120, v(113, 98, 860, 874)),
    R.drawable.content_oem_ico_skin_seat_massage_l_off_night to AnimatedViewport(
        "ico_skin_seat_massage_l_wh.json", 91, 120, v(100, 100, 848, 830)),
    R.drawable.content_oem_ico_skin_seat_massage_l_1_night to AnimatedViewport(
        "ico_skin_seat_massage_l_wh.json", 1, 30, v(100, 100, 848, 830)),
    R.drawable.content_oem_ico_skin_seat_massage_l_2_night to AnimatedViewport(
        "ico_skin_seat_massage_l_wh.json", 31, 60, v(100, 100, 848, 830)),
    R.drawable.content_oem_ico_skin_seat_massage_l_3_night to AnimatedViewport(
        "ico_skin_seat_massage_l_wh.json", 61, 90, v(100, 100, 848, 830)),
    R.drawable.content_oem_ico_media_play_f to AnimatedViewport(
        "ico_media_pause_02_f.json", null, null, v(359, 285, 669, 675)),
    R.drawable.content_oem_ico_media_pause_f to AnimatedViewport(
        "ico_media_play_02_f.json", null, null, v(334, 325, 626, 635)),
    R.drawable.content_oem_ico_media_next_f to AnimatedViewport(
        "ico_media_next_f.json", null, null, v(179, 151, 780, 809)),
    R.drawable.content_oem_ico_bluetooth to AnimatedViewport(
        "ico_bluetooth_1.json", null, null, v(179, 165, 781, 795)),
    R.drawable.content_oem_ico_media_aiquting to AnimatedViewport(
        "ico_media_aiquting.json", null, null, v(108, 130, 830, 811)),
    R.drawable.content_oem_ico_media_neteasy to AnimatedViewport(
        "ico_media_neteasy.json", null, null, v(139, 100, 820, 840)),
    R.drawable.content_oem_ico_devices_usb to AnimatedViewport(
        "ico_devices_usb.json", null, null, v(140, 142, 820, 821)),
    R.drawable.content_oem_ico_media_local to AnimatedViewport(
        "ico_media_local.json", null, null, v(139, 108, 821, 821)),
)
