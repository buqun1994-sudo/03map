package com.icar03.content.runtime.lyrics

import android.app.Activity
import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.util.UUID
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicBoolean

/** Application-owned one-shot callback: login has no intermediate map Activity or window. */
internal object AppleMusicBrowserLogin {
    private const val PREFS = "applemusic.browser-login.pending"
    private const val ACTION = "com.autonavi.amapautolite.APPLE_MUSIC_LOGIN_RESULT"
    private val work = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private val returnToLyrics = AtomicBoolean(false)
    private var active: AppleMusicConnection.LoginAttempt? = null
    private var cancellation: LyricsCancellationSignal? = null
    private var receiptCallback: PendingIntent? = null
    private var returnCallback: PendingIntent? = null
    internal var brokerFactory: ((Context) -> AppleMusicAuthBroker)? = null
    private fun broker(context: Context) = brokerFactory?.invoke(context) ?: AppleMusicAuthBroker.get(context)
    private fun preferences(context: Context) = context.applicationContext.getSharedPreferences(PREFS, Context.MODE_PRIVATE)

    fun begin(context: Context): Boolean {
        val app = context.applicationContext
        val account = broker(app).connection?.account ?: return false
        val id = UUID.randomUUID().toString()
        val attempt = account.prepareExternalLoginAttempt(id) ?: return false
        cancellation?.cancel()
        active = attempt
        val mutable = if (Build.VERSION.SDK_INT >= 31) PendingIntent.FLAG_MUTABLE else 0
        val result = PendingIntent.getBroadcast(app, 7303,
            Intent(app, AppleMusicBrowserLoginReceiver::class.java).setAction(ACTION)
                .setData(Uri.parse("icar03-apple-login://result/$id")),
            PendingIntent.FLAG_ONE_SHOT or PendingIntent.FLAG_CANCEL_CURRENT or mutable)
        val back = PendingIntent.getActivity(app, 7304,
            Intent().setClassName(app.packageName, "com.autonavi.amapauto.MainMapActivity")
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_REORDER_TO_FRONT or Intent.FLAG_ACTIVITY_SINGLE_TOP),
            PendingIntent.FLAG_ONE_SHOT or PendingIntent.FLAG_CANCEL_CURRENT or PendingIntent.FLAG_IMMUTABLE)
        receiptCallback = result
        returnCallback = back
        preferences(app).edit().putString("request_id", id).putBoolean("return_to_lyrics", true).apply()
        returnToLyrics.set(true)
        return try {
            app.startActivity(AppleMusicBrowserLoginContract.request(id)
                .putExtra("result_callback", result).putExtra("return_callback", back)
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
            true
        } catch (_: Exception) {
            cancel(app, "无法打开03浏览器登录，请安装或更新03浏览器")
            false
        }
    }

    /** Only the private explicit receiver's one-shot PendingIntent grants the browser this path. */
    fun receive(context: Context, resultCode: Int, data: Intent?) {
        val app = context.applicationContext
        val prefs = preferences(app)
        val id = prefs.getString("request_id", null) ?: return
        if (data?.action != ACTION || data.data?.lastPathSegment != id) return
        // Consume before launching asynchronous verification; duplicate and old callbacks cannot commit.
        prefs.edit().remove("request_id").putBoolean("return_to_lyrics", true).apply()
        returnToLyrics.set(true)
        val account = broker(app).connection?.account ?: return
        val attempt = account.prepareExternalLoginAttempt(id) ?: return
        active = attempt
        val code = data.getIntExtra("result_code", resultCode)
        if (code != Activity.RESULT_OK) {
            fail(account, attempt, "Apple Music 登录已取消，可重新登录")
            return
        }
        val candidate = AppleMusicBrowserLoginContract.parse(code, data, id)
        if (candidate == null) {
            fail(account, attempt, "未收到登录信息，请重新登录")
            return
        }
        account.updateExternalLoginMessage(attempt, "正在验证 Apple Music 登录…")
        val signal = LyricsCancellationSignal().also { cancellation = it }
        work.launch {
            try {
                val result = withContext(Dispatchers.IO) {
                    broker(app).verifyExternalCandidate(attempt, candidate,
                        System.nanoTime() + TimeUnit.SECONDS.toNanos(60), signal)
                }
                if (signal.isCancelled || active !== attempt) return@launch
                if (result == AppleMusicConnection.CookieAcceptance.ACCEPTED) {
                    active = null
                } else fail(account, attempt, if (result == AppleMusicConnection.CookieAcceptance.STORAGE_FAILED)
                    "登录信息无法保存，请重试" else "登录会话已失效，请重新登录")
            } catch (_: CancellationException) {
                // A canceled/obsolete candidate never commits.
            } catch (error: Exception) {
                if (active !== attempt || signal.isCancelled) return@launch
                fail(account, attempt, if (error is AppleMusicAuthenticationException)
                    "Apple Music 未接受本次登录，请重试" else "登录验证暂时失败，请检查网络后重试")
            } finally {
                if (cancellation === signal) cancellation = null
            }
        }
    }

    private fun fail(account: AppleMusicAccount, attempt: AppleMusicConnection.LoginAttempt, message: String) {
        account.finishExternalLogin(attempt, message)
        if (active === attempt) active = null
    }

    fun cancel(context: Context, message: String = "Apple Music 登录已取消，可重新登录") {
        cancellation?.cancel()
        cancellation = null
        val account = broker(context).connection?.account
        val prefs = preferences(context)
        val id = prefs.getString("request_id", null)
        val attempt = active ?: id?.let { account?.prepareExternalLoginAttempt(it) }
        if (account != null && attempt != null) fail(account, attempt, message)
        active = null
        receiptCallback?.cancel(); receiptCallback = null
        returnCallback?.cancel(); returnCallback = null
        prefs.edit().remove("request_id").remove("return_to_lyrics").apply()
        returnToLyrics.set(false)
    }

    fun shouldPreserveSettings(context: Context?): Boolean {
        val prefs = context?.let(::preferences)
        return active != null || returnToLyrics.get() ||
            prefs?.contains("request_id") == true || prefs?.getBoolean("return_to_lyrics", false) == true
    }

    fun consumeReturnToLyrics(context: Context?): Boolean {
        val prefs = context?.let(::preferences)
        val pending = returnToLyrics.get() || prefs?.getBoolean("return_to_lyrics", false) == true
        // A launch may briefly resume the map before Chrome opens. Retain the marker until delivery.
        if (pending && prefs?.contains("request_id") != true) {
            returnToLyrics.set(false)
            prefs?.edit()?.remove("return_to_lyrics")?.apply()
        }
        return pending
    }

    internal fun resetForTest(context: Context) {
        cancel(context)
        preferences(context).edit().clear().commit()
        returnToLyrics.set(false)
        brokerFactory = null
    }
}

/** Non-exported receiver, started by a capability created by the map itself. */
class AppleMusicBrowserLoginReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        AppleMusicBrowserLogin.receive(context, resultCode, intent)
    }
}
