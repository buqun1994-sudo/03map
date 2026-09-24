.class public Lcom/amap/location/support/fpsage/CloudConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sCellLimitSize:I = 0x64

.field public static sCellLimitTime:I = 0x927c0

.field public static sUseNewFreshness:Z = true

.field public static sWifLimitSize:I = 0x3e8

.field public static sWifLimitTime:I = 0xea60


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static update(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    const-string v0, "wlt"

    .line 5
    sget v1, Lcom/amap/location/support/fpsage/CloudConfig;->sWifLimitTime:I

    .line 7
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 10
    move-result v0

    .line 11
    sput v0, Lcom/amap/location/support/fpsage/CloudConfig;->sWifLimitTime:I

    .line 13
    const-string v0, "wls"

    .line 15
    sget v1, Lcom/amap/location/support/fpsage/CloudConfig;->sWifLimitSize:I

    .line 17
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 20
    move-result v0

    .line 21
    sput v0, Lcom/amap/location/support/fpsage/CloudConfig;->sWifLimitSize:I

    .line 23
    const-string v0, "clt"

    .line 25
    sget v1, Lcom/amap/location/support/fpsage/CloudConfig;->sCellLimitTime:I

    .line 27
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 30
    move-result v0

    .line 31
    sput v0, Lcom/amap/location/support/fpsage/CloudConfig;->sCellLimitTime:I

    .line 33
    const-string v0, "cls"

    .line 35
    sget v1, Lcom/amap/location/support/fpsage/CloudConfig;->sCellLimitSize:I

    .line 37
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 40
    move-result v0

    .line 41
    sput v0, Lcom/amap/location/support/fpsage/CloudConfig;->sCellLimitSize:I

    .line 43
    const-string v0, "fresh"

    .line 45
    sget-boolean v1, Lcom/amap/location/support/fpsage/CloudConfig;->sUseNewFreshness:Z

    .line 47
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 50
    move-result p0

    .line 51
    sput-boolean p0, Lcom/amap/location/support/fpsage/CloudConfig;->sUseNewFreshness:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :catchall_0
    :cond_0
    return-void
.end method
