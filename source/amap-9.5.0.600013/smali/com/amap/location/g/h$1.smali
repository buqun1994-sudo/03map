.class final Lcom/amap/location/g/h$1;
.super Lcom/amap/location/support/cloud/IAmapCloudListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/g/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/location/support/cloud/IAmapCloudListener;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method


# virtual methods
.method public onDisabled()V
    .locals 2

    .line 1
    const-string v0, "offline_peaktime_key"

    .line 3
    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Lcom/amap/location/support/util/PeakTimesHelper;->getPeakTimes(Ljava/lang/String;Ljava/lang/String;)[[I

    .line 8
    const-string v0, "offline_randomtime_key"

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/amap/location/support/util/PeakTimesHelper;->saveDelayRandomTime(Ljava/lang/String;I)V

    .line 14
    const-string v0, "sp_offline_switch"

    .line 16
    invoke-static {v0, v1}, Lcom/amap/location/support/app/GlobalStorageSync;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    return-void
.end method

.method public onUpdated()V
    .locals 4

    .line 1
    new-instance v0, Lcom/amap/location/g/b/c;

    .line 3
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lorg/json/JSONObject;

    .line 9
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 12
    const-string v3, "l"

    .line 14
    invoke-virtual {v1, v3, v2}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Lcom/amap/location/g/b/c;-><init>(Lorg/json/JSONObject;)V

    .line 21
    invoke-static {v0}, Lcom/amap/location/g/b/d;->a(Lcom/amap/location/g/b/a;)V

    .line 24
    return-void
.end method
