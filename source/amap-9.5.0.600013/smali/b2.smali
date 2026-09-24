.class public abstract Lb2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public static a()Ljavax/crypto/spec/SecretKeySpec;
    .locals 3

    .line 1
    sget-object v0, Lb2;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/16 v0, 0x1394

    .line 7
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetStringValue(I)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 16
    move-result-object v0

    .line 17
    const-string v2, "AES"

    .line 19
    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 22
    sput-object v1, Lb2;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 24
    :cond_0
    sget-object v0, Lb2;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 26
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "AesEncryptUtils"

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v3

    .line 9
    if-nez v3, :cond_0

    .line 11
    const-string v3, "get decryptAES by Cipher "

    .line 13
    new-array v4, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const-string v3, "AES/ECB/PKCS5Padding"

    .line 20
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 23
    move-result-object v3

    .line 24
    invoke-static {}, Lb2;->a()Ljavax/crypto/spec/SecretKeySpec;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 31
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 38
    move-result-object v3

    .line 39
    new-instance v4, Ljava/lang/String;

    .line 41
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v3

    .line 46
    const-string v4, "get decryptAES:"

    .line 48
    new-array v5, v2, [Ljava/lang/Object;

    .line 50
    invoke-static {v0, v4, v3, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 53
    :cond_0
    move-object v4, p0

    .line 54
    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    aput-object p0, v1, v2

    .line 58
    const/4 p0, 0x1

    .line 59
    aput-object v4, v1, p0

    .line 61
    const-string p0, "get decryptAES encryptedText:{?} plainText:{?}"

    .line 63
    invoke-static {v0, p0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-object v4
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "AesEncryptUtils"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v4

    .line 10
    if-nez v4, :cond_0

    .line 12
    const-string v4, "get encryptAES by Cipher"

    .line 14
    new-array v5, v3, [Ljava/lang/Object;

    .line 16
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    const-string v4, "AES/ECB/PKCS5Padding"

    .line 21
    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 24
    move-result-object v4

    .line 25
    invoke-static {}, Lb2;->a()Ljavax/crypto/spec/SecretKeySpec;

    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v4, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v4, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 39
    move-result-object v4

    .line 40
    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 43
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v4

    .line 46
    const-string v5, "encryptAES Exception:"

    .line 48
    new-array v6, v3, [Ljava/lang/Object;

    .line 50
    invoke-static {v0, v5, v4, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 53
    :cond_0
    move-object v4, p0

    .line 54
    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 56
    aput-object p0, v2, v3

    .line 58
    aput-object v4, v2, v1

    .line 60
    const-string p0, "get decryptAES plainText:{?} encryptedText:{?}"

    .line 62
    invoke-static {v0, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    return-object v4
.end method
