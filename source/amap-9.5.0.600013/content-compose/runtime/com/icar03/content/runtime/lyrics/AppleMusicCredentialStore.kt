package com.icar03.content.runtime.lyrics

import android.content.Context
import android.security.keystore.KeyGenParameterSpec
import android.security.keystore.KeyProperties
import android.util.AtomicFile
import org.json.JSONObject
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.IOException
import java.security.KeyStore
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.spec.GCMParameterSpec

internal interface AppleMusicCredentialStore {
    fun load(): AppleMusicCredential?
    fun save(credential: AppleMusicCredential)
    fun clear()
}

/** Cipher is injectable only inside this module, so wire fixtures never require a real account. */
internal interface AppleMusicCredentialCipher {
    fun encrypt(cleartext: ByteArray): ByteArray
    fun decrypt(envelope: ByteArray): ByteArray
}

/** Private no-backup file; a restored encrypted file must never silently create a new key. */
internal class AppleMusicEncryptedCredentialStore internal constructor(
    file: File,
    private val cipher: AppleMusicCredentialCipher
) : AppleMusicCredentialStore {
    constructor(context: Context) : this(
        File(context.noBackupFilesDir, "applemusic-credential.v1"), AppleMusicAndroidKeyStoreCipher()
    )

    private val atomic = AtomicFile(file)

    override fun load(): AppleMusicCredential? {
        if (!atomic.baseFile.exists()) return null
        val envelope = atomic.openRead().use { input ->
            val output = ByteArrayOutputStream()
            val buffer = ByteArray(4_096)
            while (true) {
                val count = input.read(buffer)
                if (count < 0) break
                if (output.size() + count > MAX_FILE_BYTES) throw IOException("Apple Music credential file too large")
                output.write(buffer, 0, count)
            }
            output.toByteArray()
        }
        val raw = cipher.decrypt(envelope)
        try {
            val root = JSONObject(raw.toString(Charsets.UTF_8))
            val token = root.optString("media_user_token").trim()
            val saved = root.optLong("saved_at_ms", 0L)
            val expires = root.optLong("expires_at_ms", 0L)
            val rejected = root.optLong("rejected_at_ms", 0L)
            val generation = root.optString("generation")
            if (token.isBlank() || token.length > 32_768 || token.any { it == '\r' || it == '\n' || it == '\u0000' } ||
                saved <= 0L || expires <= saved || rejected < 0L || generation.isBlank()) {
                throw IOException("Invalid Apple Music credential metadata")
            }
            return AppleMusicCredential(
                token, appleMusicStorefront(root.optString("storefront")), saved,
                minOf(expires, saved + AppleMusicConnection.TOKEN_LIFETIME_MS), rejected, generation
            )
        } catch (_: Exception) {
            // JSON parse exceptions can include the plaintext input; never propagate that cause.
            throw IOException("Cannot decode Apple Music credential metadata")
        } finally {
            raw.fill(0)
        }
    }

    override fun save(credential: AppleMusicCredential) {
        val raw = JSONObject().put("media_user_token", credential.token)
            .put("storefront", credential.storefront).put("saved_at_ms", credential.savedAtMs)
            .put("expires_at_ms", credential.expiresAtMs).put("rejected_at_ms", credential.rejectedAtMs)
            .put("generation", credential.generation).toString().toByteArray(Charsets.UTF_8)
        val envelope = try { cipher.encrypt(raw) } finally { raw.fill(0) }
        if (envelope.size > MAX_FILE_BYTES) throw IOException("Apple Music credential file too large")
        val parent = atomic.baseFile.parentFile ?: throw IOException("Missing private credential directory")
        if (!parent.isDirectory && !parent.mkdirs()) throw IOException("Cannot create private credential directory")
        val output = atomic.startWrite()
        try {
            output.write(envelope)
            atomic.finishWrite(output)
        } catch (_: Exception) {
            atomic.failWrite(output)
            throw IOException("Cannot save Apple Music credential")
        }
    }

    override fun clear() {
        atomic.delete()
        if (atomic.baseFile.exists()) throw IOException("Cannot remove Apple Music credential")
    }

    private companion object { const val MAX_FILE_BYTES = 64 * 1_024 }
}

/** AES-256-GCM with a non-exportable AndroidKeyStore key and a random 96-bit IV on every save. */
internal class AppleMusicAndroidKeyStoreCipher : AppleMusicCredentialCipher {
    override fun encrypt(cleartext: ByteArray): ByteArray {
        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(Cipher.ENCRYPT_MODE, key(create = true))
        cipher.updateAAD(AAD)
        val encrypted = cipher.doFinal(cleartext)
        val iv = cipher.iv
        if (iv.size != IV_BYTES) throw IOException("Invalid Apple Music credential IV")
        return byteArrayOf(VERSION) + iv + encrypted
    }

    override fun decrypt(envelope: ByteArray): ByteArray {
        if (envelope.size < 1 + IV_BYTES + 16 || envelope[0] != VERSION) {
            throw IOException("Invalid Apple Music credential envelope")
        }
        val cipher = Cipher.getInstance(TRANSFORMATION)
        cipher.init(Cipher.DECRYPT_MODE, key(create = false), GCMParameterSpec(128, envelope, 1, IV_BYTES))
        cipher.updateAAD(AAD)
        return cipher.doFinal(envelope, 1 + IV_BYTES, envelope.size - 1 - IV_BYTES)
    }

    @Synchronized private fun key(create: Boolean): SecretKey {
        val store = KeyStore.getInstance("AndroidKeyStore").apply { load(null) }
        val existing = store.getKey(KEY_ALIAS, null) as? SecretKey
        if (existing != null) return existing
        if (!create) throw IOException("Apple Music credential key is unavailable")
        val generator = KeyGenerator.getInstance(KeyProperties.KEY_ALGORITHM_AES, "AndroidKeyStore")
        generator.init(KeyGenParameterSpec.Builder(KEY_ALIAS,
            KeyProperties.PURPOSE_ENCRYPT or KeyProperties.PURPOSE_DECRYPT)
            .setKeySize(256).setBlockModes(KeyProperties.BLOCK_MODE_GCM)
            .setEncryptionPaddings(KeyProperties.ENCRYPTION_PADDING_NONE)
            .setRandomizedEncryptionRequired(true).build())
        return generator.generateKey()
    }

    private companion object {
        const val KEY_ALIAS = "icar03.applemusic.credential.aesgcm.v1"
        const val TRANSFORMATION = "AES/GCM/NoPadding"
        const val IV_BYTES = 12
        const val VERSION: Byte = 1
        val AAD = "icar03.applemusic.credential.v1".toByteArray(Charsets.US_ASCII)
    }
}

/** Official web developer bearer is public, but still redacted from diagnostic object strings. */
internal class AppleMusicDeveloperToken(val token: String, val expiresAtMs: Long) {
    override fun toString(): String = "AppleMusicDeveloperToken(redacted)"
}

internal interface AppleMusicDeveloperTokenStore {
    fun load(): AppleMusicDeveloperToken?
    fun save(value: AppleMusicDeveloperToken)
    fun clear(expectedToken: String)
}

internal class AppleMusicMemoryDeveloperTokenStore : AppleMusicDeveloperTokenStore {
    private var value: AppleMusicDeveloperToken? = null
    @Synchronized override fun load(): AppleMusicDeveloperToken? = value
    @Synchronized override fun save(value: AppleMusicDeveloperToken) { this.value = value }
    @Synchronized override fun clear(expectedToken: String) {
        if (value?.token == expectedToken) value = null
    }
}

internal class AppleMusicPrivateDeveloperTokenStore(context: Context) : AppleMusicDeveloperTokenStore {
    private val preferences = context.getSharedPreferences("applemusic-web-developer-token.v1", Context.MODE_PRIVATE)
    @Synchronized override fun load(): AppleMusicDeveloperToken? {
        val token = preferences.getString("token", "").orEmpty()
        val expiry = preferences.getLong("expires_at_ms", 0L)
        return token.takeIf { it.isNotBlank() && expiry > 0L }?.let { AppleMusicDeveloperToken(it, expiry) }
    }
    @Synchronized override fun save(value: AppleMusicDeveloperToken) {
        preferences.edit().putString("token", value.token).putLong("expires_at_ms", value.expiresAtMs).apply()
    }
    @Synchronized override fun clear(expectedToken: String) {
        if (preferences.getString("token", "") == expectedToken) preferences.edit().clear().apply()
    }
}
