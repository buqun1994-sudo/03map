package com.icar03.content.ui

import androidx.compose.runtime.compositionLocalOf
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.unit.TextUnit

/**
 * Geometry shared by the content surface. Design measurements in the product
 * screenshots are physical reference pixels; only this owner converts them to
 * Compose dp. The map surface keeps its own density and never enters this type.
 */
internal const val CONTENT_REFERENCE_WIDTH_PX = 640f
internal const val CONTENT_REFERENCE_DOCK_WIDTH_PX = 616f
internal const val CONTENT_REFERENCE_DOCK_SURFACE_HEIGHT_PX = 120f
internal const val CONTENT_REFERENCE_MEDIA_WIDTH_PX = 600f
internal const val CONTENT_REFERENCE_MEDIA_SURFACE_HEIGHT_PX = 100f
internal const val CONTENT_REFERENCE_MEDIA_EDGE_PX =
    (CONTENT_REFERENCE_WIDTH_PX - CONTENT_REFERENCE_MEDIA_WIDTH_PX) / 2f
internal const val CONTENT_REFERENCE_MEDIA_DOCK_GAP_PX = 16f
internal const val CONTENT_REFERENCE_DOCK_LOCK_WIDTH_PX = 136f
internal const val CONTENT_REFERENCE_EDGE_PX = 12f
internal const val CONTENT_REFERENCE_FULLSCREEN_ICON_PX = 32f

internal data class ContentGeometry(
    val viewportWidthPx: Float,
    val density: Float,
) {
    /** Width is the stable design axis for the fixed 640px content canvas. */
    val referenceScale: Float = (viewportWidthPx / CONTENT_REFERENCE_WIDTH_PX)
        .takeIf { it.isFinite() && it > 0f } ?: 1f

    fun dp(referencePx: Float): Dp = Dp(referencePx * referenceScale / density.coerceAtLeast(0.01f))

    val edge: Dp get() = dp(CONTENT_REFERENCE_EDGE_PX)
    val dockWidth: Dp get() = dp(CONTENT_REFERENCE_DOCK_WIDTH_PX)
    val dockSurfaceHeight: Dp get() = dp(CONTENT_REFERENCE_DOCK_SURFACE_HEIGHT_PX).coerceAtLeast(48.dp)
    val dockLockWidth: Dp get() = dp(CONTENT_REFERENCE_DOCK_LOCK_WIDTH_PX).coerceAtLeast(48.dp)
    val dockLockGlyphHeight: Dp get() = dp(36f)
    val dockGlyphHeight: Dp get() = dp(32f)
    val dockLockFeedbackSize: Dp get() = dp(88f)
    val dockFeedbackSize: Dp get() = dp(72f)
    val dockCorner: Dp get() = dp(12f)
    val feedbackCorner: Dp get() = dp(12f)
    val mediaSurfaceHeight: Dp get() = dp(CONTENT_REFERENCE_MEDIA_SURFACE_HEIGHT_PX)
    val mediaPlayGlyphHeight: Dp get() = dp(32f)
    val mediaActionGlyphHeight: Dp get() = dp(30f)
    val mediaFeedbackSize: Dp get() = dp(72f)
    val mediaCorner: Dp get() = dp(8f)
    val fullscreenIcon: Dp get() = dp(CONTENT_REFERENCE_FULLSCREEN_ICON_PX)

    /** Only fixed-height metadata caps system text growth; other text keeps normal sp semantics. */
    fun mediaSp(referencePx: Float, fontScale: Float): TextUnit {
        val requested = fontScale.coerceAtLeast(0.01f)
        val fitted = requested.coerceAtMost((100f - 16f - 4f) / (30f + 26f))
        return (dp(referencePx).value * fitted / requested).sp
    }

    /** Preserve the host-density breakpoint used by the existing grid and immersive layout. */
    val compact: Boolean get() = viewportWidthPx / density.coerceAtLeast(0.01f) < 600f
}

internal val LocalContentGeometry = compositionLocalOf {
    ContentGeometry(CONTENT_REFERENCE_WIDTH_PX, 1f)
}

internal fun contentGeometry(viewportWidthDp: Dp, density: Float): ContentGeometry =
    ContentGeometry(viewportWidthDp.value * density, density)
