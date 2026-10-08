package com.icar03.content.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import androidx.compose.runtime.staticCompositionLocalOf

/** The existing host Activity owns application windows; resource-only contexts cannot replace it. */
val LocalContentWindowActivity = staticCompositionLocalOf<Activity?> { null }

/** Unwrap only a real Activity identity; never infer it from a ViewRootImpl binder or DecorContext. */
tailrec fun findContentWindowActivity(context: Context): Activity? = when (context) {
    is Activity -> context
    is ContextWrapper -> if (context.baseContext !== context) findContentWindowActivity(context.baseContext) else null
    else -> null
}
