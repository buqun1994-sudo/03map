.class public abstract Ldn;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BI)I
    .locals 3

    .line 1
    add-int/lit8 v0, p1, 0x3

    .line 3
    aget-byte v0, p0, v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 7
    add-int/lit8 v1, p1, 0x2

    .line 9
    aget-byte v1, p0, v1

    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 13
    add-int/lit8 v2, p1, 0x1

    .line 15
    aget-byte v2, p0, v2

    .line 17
    and-int/lit16 v2, v2, 0xff

    .line 19
    add-int/lit8 p1, p1, 0x0

    .line 21
    aget-byte p0, p0, p1

    .line 23
    and-int/lit16 p0, p0, 0xff

    .line 25
    shl-int/lit8 p1, v0, 0x18

    .line 27
    shl-int/lit8 v0, v1, 0x10

    .line 29
    add-int/2addr p1, v0

    .line 30
    shl-int/lit8 v0, v2, 0x8

    .line 32
    add-int/2addr p1, v0

    .line 33
    shl-int/lit8 p0, p0, 0x0

    .line 35
    add-int/2addr p1, p0

    .line 36
    return p1
.end method
