package com.icar03.content.ui

import android.app.Activity
import android.content.Context
import android.content.ContextWrapper
import android.content.res.Resources
import android.util.DisplayMetrics
import android.graphics.Bitmap
import android.content.res.Configuration
import android.graphics.Canvas
import android.view.WindowManager
import android.view.ViewTreeObserver
import androidx.compose.runtime.DisposableEffect
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.window.DialogWindowProvider
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.width
import androidx.compose.material3.Text
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.Composable
import androidx.compose.runtime.rememberCompositionContext
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.viewinterop.AndroidView
import androidx.compose.runtime.mutableStateOf
import androidx.compose.ui.ExperimentalComposeUiApi
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.ViewRootForTest
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.Density
import androidx.compose.runtime.remember
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.test.*
import androidx.compose.ui.test.junit4.createComposeRule
import androidx.compose.ui.unit.dp
import org.junit.After
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import org.robolectric.annotation.GraphicsMode
import org.robolectric.shadows.ShadowDialog
import java.io.File

/** Exercise the real application dialog without loading a webpage or accessing an account. */
@RunWith(RobolectricTestRunner::class)
@GraphicsMode(GraphicsMode.Mode.NATIVE)
@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
open class AppleMusicLoginPanelTest {
    protected open val dark = false
    @get:Rule val compose = createComposeRule()
    private val open = mutableStateOf(true)
    private val preparing = mutableStateOf(false)
    private var dismissals = 0
    private var embeddedHost: ComposeView? = null
    private data class WindowSetup(val width: Int, val height: Int, val dpi: Int, val screenWidthDp: Int,
        val screenHeightDp: Int, val adjust: Int, val flags: Int, val x: Int, val y: Int,
        val applicationToken: android.os.IBinder?)
    private var activity: Activity? = null
    private val physicalPixels = DisplayMetrics()
    private data class FirstFrame(val width: Int, val height: Int, val contentWidth: Int, val contentHeight: Int)
    private val windowSetups = mutableListOf<WindowSetup>()
    private val firstFrames = mutableListOf<FirstFrame>()

    private fun mount(corruptHostGeometry: Boolean = false, awaitIdle: Boolean = true) {
        compose.setContent {
            val host = LocalContext.current
            activity = host.activity()
            @Suppress("DEPRECATION")
            (host.getSystemService(Context.WINDOW_SERVICE) as WindowManager).defaultDisplay.getRealMetrics(physicalPixels)
            val density = LocalDensity.current
            val mapContext = remember(host) {
                if (corruptHostGeometry) host.createConfigurationContext(Configuration(host.resources.configuration).apply {
                    densityDpi = 320
                    screenWidthDp = 1600
                    screenHeightDp = 2160
                }) else host
            }
            CompositionLocalProvider(LocalContentWindowActivity provides activity) {
                val parentComposition = rememberCompositionContext()
                AndroidView(factory = {
                    ComposeView(mapContext).also { embeddedHost = it }.apply {
                        setParentCompositionContext(parentComposition)
                        setContent { settingsContent(density) }
                    }
                }, modifier = Modifier.fillMaxSize())
            }
        }
        if (awaitIdle) compose.waitForIdle()
    }

    @After
    fun disposeEmbeddedHostComposition() {
        val host = embeddedHost
        embeddedHost = null
        if (host != null) {
            compose.runOnUiThread { host.disposeComposition() }
        }
    }

    @Composable
    private fun settingsContent(density: Density) {
        ContentTheme(dark) {
            CompositionLocalProvider(LocalSettingsDesign provides settingsDesign(dark), LocalDensity provides density) {
                Box(Modifier.fillMaxSize()) {
                    Box(Modifier.width(240.dp).testTag("original-settings-width")) {
                        Text("歌词设置")
                        if (open.value) AppleMusicLoginPanel(preparing = preparing.value,
                            onDismiss = { dismissals++; open.value = false }) {
                            val view = LocalView.current
                            val window = (view.parent as DialogWindowProvider).window
                            val setup = remember(view) {
                                val attrs = window.attributes
                                val config = view.resources.configuration
                                WindowSetup(attrs.width, attrs.height, config.densityDpi,
                                    config.screenWidthDp, config.screenHeightDp,
                                    attrs.softInputMode and WindowManager.LayoutParams.SOFT_INPUT_MASK_ADJUST,
                                    attrs.flags, attrs.x, attrs.y, attrs.token)
                            }
                            DisposableEffect(view) {
                                windowSetups += setup
                                val decor = window.decorView
                                val listener = object : ViewTreeObserver.OnPreDrawListener {
                                    override fun onPreDraw(): Boolean {
                                        firstFrames += FirstFrame(decor.width, decor.height, view.width, view.height)
                                        decor.viewTreeObserver.removeOnPreDrawListener(this)
                                        return true
                                    }
                                }
                                decor.viewTreeObserver.addOnPreDrawListener(listener)
                                onDispose {
                                    if (decor.viewTreeObserver.isAlive) {
                                        decor.viewTreeObserver.removeOnPreDrawListener(listener)
                                    }
                                }
                            }
                            Box(Modifier.fillMaxSize().testTag("official-webpage-slot")) { Text("Apple 官方网页登录区域") }
                        }
                    }
                }
            }
        }
    }

    @Test fun webpageWindowUsesScreenSpaceAndBackReturnsToOriginalSettings() {
        mount()
        val small = compose.onNodeWithTag("original-settings-width").getUnclippedBoundsInRoot()
        val large = compose.onNodeWithTag("settings-apple-login-panel").getUnclippedBoundsInRoot()
        assertTrue("a 240dp settings column cannot constrain the webpage: panel=$large original=$small setup=$windowSetups first=$firstFrames", large.right - large.left > (small.right - small.left) * 2)
        assertTrue(large.bottom - large.top > 800.dp)
        val window = ShadowDialog.getLatestDialog().window ?: error("missing dialog window")
        assertEquals("fullscreen flags must not suppress Android 9 IME resize", 0,
            window.attributes.flags and WindowManager.LayoutParams.FLAG_FULLSCREEN)
        assertEquals(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE,
            window.attributes.softInputMode and WindowManager.LayoutParams.SOFT_INPUT_MASK_ADJUST)
        compose.onNodeWithTag("official-webpage-slot").assertIsDisplayed()
        compose.onNodeWithTag("settings-apple-login-back").assertIsDisplayed()
        compose.onNodeWithTag("settings-apple-login-close").assertIsDisplayed()
        capture()
        compose.onNodeWithTag("settings-apple-login-back").performClick()
        compose.waitForIdle()
        assertEquals(1, dismissals)
        assertFalse(open.value)
        compose.onNodeWithTag("settings-apple-login-panel").assertDoesNotExist()
        compose.onNodeWithText("歌词设置").assertIsDisplayed()
    }

    @Test fun firstOpenAndReopenSharePhysicalBoundsDespiteTheMapResourceGeometry() {
        mount(corruptHostGeometry = true)
        assertFirstWindow(0)
        val first = compose.onNodeWithTag("settings-apple-login-panel").fetchSemanticsNode().boundsInRoot
        compose.onNodeWithTag("settings-apple-login-back").assertIsDisplayed()
        compose.onNodeWithTag("settings-apple-login-close").assertIsDisplayed().performClick()
        compose.waitForIdle()
        compose.runOnIdle { open.value = true }
        compose.waitForIdle()
        val second = compose.onNodeWithTag("settings-apple-login-panel").fetchSemanticsNode().boundsInRoot
        assertFirstWindow(1)
        assertEquals(firstFrames[0], firstFrames[1])
        assertEquals(windowSetups[0], windowSetups[1])
        assertEquals(first, second)
        assertTrue("first window must stay within its physical viewport",
            first.right <= physicalPixels.widthPixels && first.bottom <= physicalPixels.heightPixels)
        val window = ShadowDialog.getLatestDialog().window ?: error("missing dialog window")
        assertEquals(physicalPixels.widthPixels, window.decorView.width)
        assertEquals(physicalPixels.heightPixels, window.decorView.height)
        assertEquals(0, window.attributes.x)
        assertEquals(0, window.attributes.y)
    }

    @Suppress("DEPRECATION")
    private fun assertFirstWindow(index: Int) {
        assertEquals("each open prepares exactly one independent window", index + 1, windowSetups.size)
        val setup = windowSetups[index]
        assertEquals("size must be ready before content/WebView construction", WindowManager.LayoutParams.MATCH_PARENT, setup.width)
        assertEquals(WindowManager.LayoutParams.MATCH_PARENT, setup.height)
        val dpi = Resources.getSystem().displayMetrics.densityDpi
        val scale = dpi / 160f
        assertEquals(dpi, setup.dpi)
        assertEquals((physicalPixels.widthPixels / scale).toInt(), setup.screenWidthDp)
        assertEquals((physicalPixels.heightPixels / scale).toInt(), setup.screenHeightDp)
        assertSame("framework injection must use the existing Activity application token",
            org.robolectric.util.ReflectionHelpers.getField<android.os.IBinder>(activity, "mToken"), setup.applicationToken)
        val dialog = ShadowDialog.getLatestDialog()
        assertSame("the window owner must be the real map Activity", activity, dialog.ownerActivity)
        assertSame("a resource-only Context must never supply the Dialog WindowManager",
            activity!!.getSystemService(Context.WINDOW_SERVICE), dialog.context.getSystemService(Context.WINDOW_SERVICE))
        assertEquals(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE, setup.adjust)
        assertEquals(0, setup.flags and (WindowManager.LayoutParams.FLAG_FULLSCREEN or WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS))
        assertEquals(0, setup.x)
        assertEquals(0, setup.y)
        assertEquals("record the first actual pre-draw, not a later settled frame", index + 1, firstFrames.size)
        val frame = firstFrames[index]
        assertEquals(physicalPixels.widthPixels, frame.width)
        assertEquals(physicalPixels.heightPixels, frame.height)
        assertTrue(frame.contentWidth in 1..physicalPixels.widthPixels)
        assertTrue(frame.contentHeight in 1..physicalPixels.heightPixels)
    }

    @Test fun completingPreparationKeepsTheFirstWindowAndWebpageRoot() {
        preparing.value = true
        compose.mainClock.autoAdvance = false
        mount(corruptHostGeometry = true, awaitIdle = false)
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        assertFirstWindow(0)
        val dialog = ShadowDialog.getLatestDialog()
        val root = compose.onNodeWithTag("official-webpage-slot").fetchSemanticsNode().root
        compose.runOnUiThread { preparing.value = false }
        compose.mainClock.advanceTimeByFrame()
        compose.waitForIdle()
        assertSame(dialog, ShadowDialog.getLatestDialog())
        assertSame(root, compose.onNodeWithTag("official-webpage-slot").fetchSemanticsNode().root)
        assertFirstWindow(0)
    }

    @Test fun explicitCloseDismissesOnceAndRemovesTheWindow() {
        mount()
        val dialog = ShadowDialog.getLatestDialog()
        assertTrue(dialog.isShowing)
        compose.onNodeWithTag("settings-apple-login-close").performClick()
        compose.waitForIdle()
        assertEquals(1, dismissals)
        assertFalse(dialog.isShowing)
        compose.onNodeWithTag("official-webpage-slot").assertDoesNotExist()
    }

    @Suppress("DEPRECATION")
    @Test fun systemBackClosesTheWebpageAndRestoresSettings() {
        mount()
        val dialog = ShadowDialog.getLatestDialog()
        compose.runOnIdle { dialog.onBackPressed() }
        compose.waitForIdle()
        assertEquals(1, dismissals)
        assertFalse(open.value)
        assertFalse(dialog.isShowing)
        compose.onNodeWithText("歌词设置").assertIsDisplayed()
    }

    private tailrec fun Context.activity(): Activity = when (this) {
        is Activity -> this
        is ContextWrapper -> baseContext.activity()
        else -> error("missing test Activity")
    }

    @OptIn(ExperimentalComposeUiApi::class)
    private fun capture() {
        val node = compose.onNodeWithTag("settings-apple-login-panel").fetchSemanticsNode()
        val root = node.root as? ViewRootForTest ?: error("missing native dialog root")
        val area = node.boundsInRoot
        val bitmap = compose.runOnIdle {
            Bitmap.createBitmap(area.width.toInt(), area.height.toInt(), Bitmap.Config.ARGB_8888).also {
                val canvas = Canvas(it)
                canvas.translate(-area.left, -area.top)
                root.view.draw(canvas)
            }
        }
        val directory = File("build/frames").apply { mkdirs() }
        File(directory, "${javaClass.simpleName}-apple-large-window.png").outputStream().use {
            assertTrue(bitmap.compress(Bitmap.CompressFormat.PNG, 100, it))
        }
    }
}

@Config(sdk = [28], qualifiers = "w640dp-h1080dp-mdpi")
class AppleMusicLoginPanelDarkTest : AppleMusicLoginPanelTest() { override val dark = true }
@Config(sdk = [34], qualifiers = "w640dp-h1080dp-mdpi")
class AppleMusicLoginPanelApi34Test : AppleMusicLoginPanelTest()

@Config(sdk = [28], qualifiers = "w2179dp-h1226dp-141dpi")
class AppleMusicLoginPanelVehicleTest : AppleMusicLoginPanelTest()
@Config(sdk = [28], qualifiers = "w2179dp-h1226dp-141dpi")
class AppleMusicLoginPanelVehicleDarkTest : AppleMusicLoginPanelTest() { override val dark = true }
