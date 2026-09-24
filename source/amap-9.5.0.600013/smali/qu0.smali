.class public abstract Lqu0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)[B
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    .line 3
    div-int/lit8 v1, v1, 0x2

    .line 5
    if-ge v0, v1, :cond_0

    .line 7
    array-length v1, p0

    .line 8
    sub-int/2addr v1, v0

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 11
    aget-byte v1, p0, v1

    .line 13
    array-length v2, p0

    .line 14
    sub-int/2addr v2, v0

    .line 15
    add-int/lit8 v2, v2, -0x1

    .line 17
    aget-byte v3, p0, v0

    .line 19
    aput-byte v3, p0, v2

    .line 21
    aput-byte v1, p0, v0

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-object p0
.end method
