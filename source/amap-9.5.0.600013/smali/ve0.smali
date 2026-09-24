.class public abstract Lve0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BI)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :goto_0
    const/16 v3, 0x10

    .line 7
    if-ge v0, v3, :cond_0

    .line 9
    int-to-long v3, v1

    .line 10
    add-int v1, p1, v2

    .line 12
    aget-byte v1, p0, v1

    .line 14
    and-int/lit16 v1, v1, 0xff

    .line 16
    int-to-long v5, v1

    .line 17
    shl-long/2addr v5, v0

    .line 18
    or-long/2addr v3, v5

    .line 19
    long-to-int v1, v3

    .line 20
    add-int/lit8 v2, v2, -0x1

    .line 22
    add-int/lit8 v0, v0, 0x8

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return v1
.end method

.method public static b([BI)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    const/16 v4, 0x20

    .line 7
    if-ge v3, v4, :cond_0

    .line 9
    add-int v4, p1, v2

    .line 11
    aget-byte v4, p0, v4

    .line 13
    and-int/lit16 v4, v4, 0xff

    .line 15
    int-to-long v4, v4

    .line 16
    shl-long/2addr v4, v3

    .line 17
    or-long/2addr v0, v4

    .line 18
    add-int/lit8 v2, v2, -0x1

    .line 20
    add-int/lit8 v3, v3, 0x8

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-wide v0
.end method

.method public static c(I)[B
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static d(J)[B
    .locals 2

    .line 1
    long-to-int p1, p0

    const/4 p0, 0x4

    new-array p0, p0, [B

    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p0, v1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p0, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x3

    aput-byte p1, p0, v0

    return-object p0
.end method
