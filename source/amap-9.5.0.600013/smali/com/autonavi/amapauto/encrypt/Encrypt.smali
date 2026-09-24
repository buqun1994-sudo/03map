.class public Lcom/autonavi/amapauto/encrypt/Encrypt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static amapDecodeV2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/encrypt/Encrypt;->nativeAmapDecodeV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static amapDecodeV2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/encrypt/Encrypt;->nativeAmapDecodeV2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static amapEncodeBinaryV2([B)[B
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/encrypt/Encrypt;->nativeAmapEncodeBinaryV2([B)[B

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static amapEncodeV2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/encrypt/Encrypt;->nativeAmapEncodeV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static amapEncodeV2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/encrypt/Encrypt;->nativeAmapEncodeV2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeAmapDecodeV2(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeAmapDecodeV2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeAmapEncodeBinaryV2([B)[B
.end method

.method private static native nativeAmapEncodeV2(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeAmapEncodeV2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
