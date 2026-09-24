.class public abstract Lnz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "MD5"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 10
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 13
    move-result-object p0

    .line 14
    new-instance v0, Ljava/lang/StringBuffer;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    array-length v2, p0

    .line 21
    if-ge v1, v2, :cond_1

    .line 23
    aget-byte v2, p0, v1

    .line 25
    and-int/lit16 v2, v2, 0xff

    .line 27
    const/16 v3, 0x10

    .line 29
    if-ge v2, v3, :cond_0

    .line 31
    const-string v3, "0"

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-object p0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public static b([C)Ljava/lang/String;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-array v0, v0, [B

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    .line 6
    if-ge v1, v2, :cond_0

    .line 8
    aget-char v2, p0, v1

    .line 10
    int-to-byte v2, v2

    .line 11
    aput-byte v2, v0, v1

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {v0}, Lnz;->a([B)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static c(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    const-string p0, "MD5"

    .line 9
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 12
    move-result-object p0

    .line 13
    const/16 v2, 0x400

    .line 15
    new-array v2, v2, [B

    .line 17
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 20
    move-result v3

    .line 21
    const/4 v4, -0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    if-eq v3, v4, :cond_0

    .line 25
    invoke-virtual {p0, v2, v5, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 32
    move-result-object p0

    .line 33
    new-instance v2, Ljava/lang/StringBuffer;

    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    :goto_1
    array-length v3, p0

    .line 39
    if-ge v5, v3, :cond_2

    .line 41
    aget-byte v3, p0, v5

    .line 43
    and-int/lit16 v3, v3, 0xff

    .line 45
    const/16 v4, 0x10

    .line 47
    if-ge v3, v4, :cond_1

    .line 49
    const-string v4, "0"

    .line 51
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    invoke-static {v1}, Lns;->a(Ljava/io/Closeable;)V

    .line 71
    return-object p0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_3

    .line 76
    :catch_1
    move-exception p0

    .line 77
    move-object v1, v0

    .line 78
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    invoke-static {v1}, Lns;->a(Ljava/io/Closeable;)V

    .line 84
    return-object v0

    .line 85
    :catchall_1
    move-exception p0

    .line 86
    move-object v0, v1

    .line 87
    :goto_3
    invoke-static {v0}, Lns;->a(Ljava/io/Closeable;)V

    .line 90
    throw p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lnz;->b([C)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/16 v0, 0x10

    .line 3
    new-array v1, v0, [C

    .line 5
    fill-array-data v1, :array_0

    .line 8
    :try_start_0
    const-string v2, "MD5"

    .line 10
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "UTF-8"

    .line 16
    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 23
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 26
    move-result-object p0

    .line 27
    const/16 v2, 0x20

    .line 29
    new-array v2, v2, [C

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    :goto_0
    if-ge v3, v0, :cond_0

    .line 35
    aget-byte v5, p0, v3

    .line 37
    add-int/lit8 v6, v4, 0x1

    .line 39
    ushr-int/lit8 v7, v5, 0x4

    .line 41
    and-int/lit8 v7, v7, 0xf

    .line 43
    aget-char v7, v1, v7

    .line 45
    aput-char v7, v2, v4

    .line 47
    add-int/lit8 v4, v6, 0x1

    .line 49
    and-int/lit8 v5, v5, 0xf

    .line 51
    aget-char v5, v1, v5

    .line 53
    aput-char v5, v2, v6

    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 60
    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    const/4 p0, 0x0

    .line 65
    :goto_1
    return-object p0

    .line 66
    nop

    .line 67
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method
