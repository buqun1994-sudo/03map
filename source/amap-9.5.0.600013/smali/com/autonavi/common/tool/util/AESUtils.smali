.class public Lcom/autonavi/common/tool/util/AESUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/autonavi/common/tool/util/AESUtils;->b([B)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 3
    invoke-static {}, Lcom/autonavi/common/tool/util/AESUtils;->g()[B

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "AES"

    .line 9
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 12
    const-string v1, "AES/CBC/PKCS5Padding"

    .line 14
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    .line 20
    invoke-static {}, Lcom/autonavi/common/tool/util/AESUtils;->f()[B

    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 31
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lyb;->a([B)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static c([B)[B
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 3
    invoke-static {}, Lcom/autonavi/common/tool/util/AESUtils;->g()[B

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "AES"

    .line 9
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 12
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 14
    invoke-static {}, Lcom/autonavi/common/tool/util/AESUtils;->f()[B

    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 21
    const-string v2, "AES/CTR/NoPadding"

    .line 23
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x2

    .line 28
    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 31
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 34
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object p0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v1, "blockDecode:"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 61
    const/4 p0, 0x0

    .line 62
    return-object p0
.end method

.method public static d(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 5
    move-result-object p0

    .line 6
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    .line 8
    invoke-static {}, Lcom/autonavi/common/tool/util/AESUtils;->g()[B

    .line 11
    move-result-object v2

    .line 12
    const-string v3, "AES"

    .line 14
    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 17
    if-eqz p1, :cond_0

    .line 19
    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    .line 21
    invoke-static {}, Lcom/autonavi/common/tool/util/AESUtils;->f()[B

    .line 24
    move-result-object v3

    .line 25
    const/16 v4, 0x80

    .line 27
    invoke-direct {v2, v4, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    .line 33
    invoke-static {}, Lcom/autonavi/common/tool/util/AESUtils;->f()[B

    .line 36
    move-result-object v3

    .line 37
    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 40
    :goto_0
    if-eqz p1, :cond_1

    .line 42
    const-string p1, "AES/GCM/NoPadding"

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string p1, "AES/CBC/PKCS5Padding"

    .line 47
    :goto_1
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 54
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 57
    move-result-object p0

    .line 58
    new-instance p1, Ljava/lang/String;

    .line 60
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object p1

    .line 64
    :catch_0
    move-exception p0

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v0, "decryptAES:"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Lbz;->d(Ljava/lang/String;)V

    .line 89
    const/4 p0, 0x0

    .line 90
    return-object p0
.end method

.method public static e(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 3
    invoke-static {}, Lcom/autonavi/common/tool/util/AESUtils;->g()[B

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "AES"

    .line 9
    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 12
    if-eqz p1, :cond_0

    .line 14
    const-string v1, "AES/GCM/NoPadding"

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "AES/CBC/PKCS5Padding"

    .line 19
    :goto_0
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 22
    move-result-object v1

    .line 23
    if-eqz p1, :cond_1

    .line 25
    new-instance p1, Ljavax/crypto/spec/GCMParameterSpec;

    .line 27
    const/16 v2, 0x80

    .line 29
    invoke-static {}, Lcom/autonavi/common/tool/util/AESUtils;->f()[B

    .line 32
    move-result-object v3

    .line 33
    invoke-direct {p1, v2, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    .line 39
    invoke-static {}, Lcom/autonavi/common/tool/util/AESUtils;->f()[B

    .line 42
    move-result-object v2

    .line 43
    invoke-direct {p1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 46
    :goto_1
    const/4 v2, 0x1

    .line 47
    invoke-virtual {v1, v2, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 57
    move-result-object p0

    .line 58
    const/4 p1, 0x2

    .line 59
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method

.method public static f()[B
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/util/AESUtils;->getIV()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "utf-8"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static g()[B
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/util/AESUtils;->getKEY()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "utf-8"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private static native getIV()Ljava/lang/String;
.end method

.method private static native getKEY()Ljava/lang/String;
.end method
