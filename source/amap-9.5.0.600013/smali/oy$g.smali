.class public Loy$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/sdk/fusion/ILocationExternalProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Loy$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loy$g;-><init>()V

    return-void
.end method


# virtual methods
.method public aosEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LocationInstrument"

    const-string v2, "EncryptProvider, aosEncrypt string"

    .line 1
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/autonavi/amapauto/encrypt/Encrypt;->amapEncodeV2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public aosEncrypt([B)[B
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LocationInstrument"

    const-string v2, "EncryptProvider, aosEncrypt binary"

    .line 3
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lcom/autonavi/amapauto/encrypt/Encrypt;->amapEncodeBinaryV2([B)[B

    move-result-object p1

    return-object p1
.end method
