.class public abstract Lam0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;

.field public static final b:Ljava/util/Map;

.field public static final c:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lam0$a;

    .line 3
    invoke-direct {v0}, Lam0$a;-><init>()V

    .line 6
    sput-object v0, Lam0;->a:Ljava/util/Map;

    .line 8
    new-instance v0, Lam0$b;

    .line 10
    invoke-direct {v0}, Lam0$b;-><init>()V

    .line 13
    sput-object v0, Lam0;->b:Ljava/util/Map;

    .line 15
    const/16 v0, 0x1b

    .line 17
    new-array v0, v0, [I

    .line 19
    fill-array-data v0, :array_0

    .line 22
    sput-object v0, Lam0;->c:[I

    .line 24
    return-void

    .line 25
    :array_0
    .array-data 4
        0x0
        0x1
        0xe
        0x17
        0x2
        0x3
        0x4
        0x5
        0x6
        0xb
        0xc
        0xd
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
    .end array-data
.end method

.method public static a(I)Z
    .locals 5

    .line 1
    sget-object v0, Lam0;->c:[I

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 8
    aget v4, v0, v3

    .line 10
    if-ne v4, p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v2
.end method
