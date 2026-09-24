.class public abstract Ljx0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B[B)[B
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    invoke-static {p0, v0}, Ljx0;->c([BZ)[I

    .line 9
    move-result-object p0

    .line 10
    invoke-static {p1, v0}, Ljx0;->c([BZ)[I

    .line 13
    move-result-object p1

    .line 14
    invoke-static {p0, p1}, Ljx0;->d([I[I)[I

    .line 17
    move-result-object p0

    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-static {p0, p1}, Ljx0;->b([IZ)[B

    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_2

    .line 25
    array-length v1, p0

    .line 26
    sub-int/2addr v1, v0

    .line 27
    :goto_0
    if-lez v1, :cond_2

    .line 29
    aget-byte v2, p0, v1

    .line 31
    if-lez v2, :cond_1

    .line 33
    sub-int/2addr v1, v2

    .line 34
    add-int/2addr v1, v0

    .line 35
    new-array v0, v1, [B

    .line 37
    invoke-static {p0, p1, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    move-object p0, v0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static b([IZ)[B
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    shl-int/lit8 v0, v0, 0x2

    .line 4
    if-eqz p1, :cond_1

    .line 6
    array-length p1, p0

    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 9
    aget p1, p0, p1

    .line 11
    if-le p1, v0, :cond_0

    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    move v0, p1

    .line 16
    :cond_1
    new-array p1, v0, [B

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-ge v1, v0, :cond_2

    .line 21
    ushr-int/lit8 v2, v1, 0x2

    .line 23
    aget v2, p0, v2

    .line 25
    and-int/lit8 v3, v1, 0x3

    .line 27
    shl-int/lit8 v3, v3, 0x3

    .line 29
    ushr-int/2addr v2, v3

    .line 30
    and-int/lit16 v2, v2, 0xff

    .line 32
    int-to-byte v2, v2

    .line 33
    aput-byte v2, p1, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return-object p1
.end method

.method public static c([BZ)[I
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    rem-int/lit8 v0, v0, 0x4

    .line 4
    rsub-int/lit8 v0, v0, 0x4

    .line 6
    if-eqz p1, :cond_1

    .line 8
    array-length p1, p0

    .line 9
    and-int/lit8 p1, p1, 0x3

    .line 11
    if-nez p1, :cond_0

    .line 13
    array-length p1, p0

    .line 14
    ushr-int/lit8 p1, p1, 0x2

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    array-length p1, p0

    .line 18
    ushr-int/lit8 p1, p1, 0x2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    array-length p1, p0

    .line 22
    div-int/lit8 p1, p1, 0x4

    .line 24
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 26
    :goto_1
    shl-int/lit8 v1, v0, 0x18

    .line 28
    shl-int/lit8 v2, v0, 0x10

    .line 30
    add-int/2addr v1, v2

    .line 31
    shl-int/lit8 v2, v0, 0x8

    .line 33
    add-int/2addr v1, v2

    .line 34
    add-int/2addr v1, v0

    .line 35
    new-array v0, p1, [I

    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_2
    if-ge v3, p1, :cond_2

    .line 41
    aput v1, v0, v3

    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    array-length p1, p0

    .line 47
    :goto_3
    if-ge v2, p1, :cond_3

    .line 49
    ushr-int/lit8 v1, v2, 0x2

    .line 51
    aget v3, v0, v1

    .line 53
    and-int/lit8 v4, v2, 0x3

    .line 55
    shl-int/lit8 v4, v4, 0x3

    .line 57
    const/16 v5, 0xff

    .line 59
    shl-int v6, v5, v4

    .line 61
    not-int v6, v6

    .line 62
    and-int/2addr v3, v6

    .line 63
    aput v3, v0, v1

    .line 65
    aget-byte v6, p0, v2

    .line 67
    and-int/2addr v5, v6

    .line 68
    shl-int v4, v5, v4

    .line 70
    or-int/2addr v3, v4

    .line 71
    aput v3, v0, v1

    .line 73
    add-int/lit8 v2, v2, 0x1

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    return-object v0
.end method

.method public static d([I[I)[I
    .locals 12

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    sub-int/2addr v0, v1

    .line 4
    if-ge v0, v1, :cond_0

    .line 6
    return-object p0

    .line 7
    :cond_0
    array-length v1, p1

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x4

    .line 10
    if-ge v1, v3, :cond_1

    .line 12
    new-array v1, v3, [I

    .line 14
    array-length v3, p1

    .line 15
    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    move-object p1, v1

    .line 19
    :cond_1
    aget v1, p0, v0

    .line 21
    aget v1, p0, v2

    .line 23
    add-int/lit8 v3, v0, 0x1

    .line 25
    const/16 v4, 0x34

    .line 27
    div-int/2addr v4, v3

    .line 28
    add-int/lit8 v4, v4, 0x6

    .line 30
    const v3, -0x61c88647

    .line 33
    mul-int v4, v4, v3

    .line 35
    :goto_0
    if-eqz v4, :cond_3

    .line 37
    ushr-int/lit8 v5, v4, 0x2

    .line 39
    and-int/lit8 v5, v5, 0x3

    .line 41
    move v6, v0

    .line 42
    :goto_1
    if-lez v6, :cond_2

    .line 44
    add-int/lit8 v7, v6, -0x1

    .line 46
    aget v7, p0, v7

    .line 48
    aget v8, p0, v6

    .line 50
    ushr-int/lit8 v9, v7, 0x5

    .line 52
    shl-int/lit8 v10, v1, 0x2

    .line 54
    xor-int/2addr v9, v10

    .line 55
    ushr-int/lit8 v10, v1, 0x3

    .line 57
    shl-int/lit8 v11, v7, 0x4

    .line 59
    xor-int/2addr v10, v11

    .line 60
    add-int/2addr v9, v10

    .line 61
    xor-int/2addr v1, v4

    .line 62
    and-int/lit8 v10, v6, 0x3

    .line 64
    xor-int/2addr v10, v5

    .line 65
    aget v10, p1, v10

    .line 67
    xor-int/2addr v7, v10

    .line 68
    add-int/2addr v1, v7

    .line 69
    xor-int/2addr v1, v9

    .line 70
    sub-int v1, v8, v1

    .line 72
    aput v1, p0, v6

    .line 74
    add-int/lit8 v6, v6, -0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    aget v7, p0, v0

    .line 79
    aget v8, p0, v2

    .line 81
    ushr-int/lit8 v9, v7, 0x5

    .line 83
    shl-int/lit8 v10, v1, 0x2

    .line 85
    xor-int/2addr v9, v10

    .line 86
    ushr-int/lit8 v10, v1, 0x3

    .line 88
    shl-int/lit8 v11, v7, 0x4

    .line 90
    xor-int/2addr v10, v11

    .line 91
    add-int/2addr v9, v10

    .line 92
    xor-int/2addr v1, v4

    .line 93
    and-int/lit8 v6, v6, 0x3

    .line 95
    xor-int/2addr v5, v6

    .line 96
    aget v5, p1, v5

    .line 98
    xor-int/2addr v5, v7

    .line 99
    add-int/2addr v1, v5

    .line 100
    xor-int/2addr v1, v9

    .line 101
    sub-int v1, v8, v1

    .line 103
    aput v1, p0, v2

    .line 105
    sub-int/2addr v4, v3

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    return-object p0
.end method
