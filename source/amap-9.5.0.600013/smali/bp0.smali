.class public abstract Lbp0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lbp0;->a:Ljava/nio/charset/Charset;

    .line 9
    return-void
.end method

.method public static a(BBB)B
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x2

    or-int/lit8 p0, p0, 0x0

    shl-int/lit8 p1, p1, 0x1

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method

.method public static b(BBS)B
    .locals 0

    .line 1
    shl-int/lit8 p2, p2, 0x4

    or-int/lit8 p2, p2, 0x0

    shl-int/lit8 p0, p0, 0x1

    or-int/2addr p0, p2

    or-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method public static c(BBBBBBBB)J
    .locals 5

    .line 1
    int-to-long v0, p0

    const/16 p0, 0x38

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide/16 v2, 0xff

    and-long/2addr p0, v2

    const/16 v4, 0x30

    shl-long/2addr p0, v4

    or-long/2addr p0, v0

    int-to-long v0, p2

    and-long/2addr v0, v2

    const/16 p2, 0x28

    shl-long/2addr v0, p2

    or-long/2addr p0, v0

    int-to-long p2, p3

    and-long/2addr p2, v2

    const/16 v0, 0x20

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    int-to-long p2, p4

    and-long/2addr p2, v2

    const/16 p4, 0x18

    shl-long/2addr p2, p4

    or-long/2addr p0, p2

    int-to-long p2, p5

    and-long/2addr p2, v2

    const/16 p4, 0x10

    shl-long/2addr p2, p4

    or-long/2addr p0, p2

    int-to-long p2, p6

    and-long/2addr p2, v2

    const/16 p4, 0x8

    shl-long/2addr p2, p4

    or-long/2addr p0, p2

    int-to-long p2, p7

    and-long/2addr p2, v2

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public static e([B)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 3
    array-length p0, p0

    .line 4
    if-nez p0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 10
    :goto_1
    return p0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lbp0;->d(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 7
    return p0
.end method

.method public static g([B)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lbp0;->e([B)Z

    .line 4
    move-result p0

    .line 5
    xor-int/lit8 p0, p0, 0x1

    .line 7
    return p0
.end method

.method public static h(Ljava/lang/String;)J
    .locals 15

    .line 1
    invoke-static {p0}, Lbp0;->d(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, -0x1

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-wide v1

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 16
    const-wide/16 v3, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    if-ltz v0, :cond_6

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 24
    move-result v6

    .line 25
    int-to-long v6, v6

    .line 26
    const-wide/16 v8, 0x30

    .line 28
    cmp-long v10, v6, v8

    .line 30
    if-ltz v10, :cond_1

    .line 32
    const-wide/16 v10, 0x39

    .line 34
    cmp-long v12, v6, v10

    .line 36
    if-gtz v12, :cond_1

    .line 38
    sub-long/2addr v6, v8

    .line 39
    :goto_1
    shl-long/2addr v6, v5

    .line 40
    add-long/2addr v3, v6

    .line 41
    add-int/lit8 v5, v5, 0x4

    .line 43
    goto :goto_3

    .line 44
    :cond_1
    const-wide/16 v8, 0xa

    .line 46
    const-wide/16 v10, 0x61

    .line 48
    cmp-long v12, v6, v10

    .line 50
    if-ltz v12, :cond_2

    .line 52
    const-wide/16 v12, 0x66

    .line 54
    cmp-long v14, v6, v12

    .line 56
    if-gtz v14, :cond_2

    .line 58
    :goto_2
    sub-long/2addr v6, v10

    .line 59
    add-long/2addr v6, v8

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const-wide/16 v10, 0x41

    .line 63
    cmp-long v12, v6, v10

    .line 65
    if-ltz v12, :cond_3

    .line 67
    const-wide/16 v12, 0x46

    .line 69
    cmp-long v14, v6, v12

    .line 71
    if-gtz v14, :cond_3

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const-wide/16 v8, 0x3a

    .line 76
    cmp-long v10, v6, v8

    .line 78
    if-eqz v10, :cond_5

    .line 80
    const-wide/16 v8, 0x7c

    .line 82
    cmp-long v10, v6, v8

    .line 84
    if-nez v10, :cond_4

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    return-wide v1

    .line 88
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_6
    const/16 p0, 0x30

    .line 93
    if-eq v5, p0, :cond_7

    .line 95
    return-wide v1

    .line 96
    :cond_7
    return-wide v3
.end method

.method public static i([B)J
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    aget-byte v2, p0, v2

    .line 6
    const/4 v3, 0x1

    .line 7
    aget-byte v3, p0, v3

    .line 9
    const/4 v4, 0x2

    .line 10
    aget-byte v4, p0, v4

    .line 12
    const/4 v5, 0x3

    .line 13
    aget-byte v5, p0, v5

    .line 15
    const/4 v6, 0x4

    .line 16
    aget-byte v6, p0, v6

    .line 18
    const/4 v7, 0x5

    .line 19
    aget-byte v7, p0, v7

    .line 21
    invoke-static/range {v0 .. v7}, Lbp0;->c(BBBBBBBB)J

    .line 24
    move-result-wide v0

    .line 25
    return-wide v0
.end method
