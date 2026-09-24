.class Lcom/amap/location/fusion/util/h$1;
.super Lcom/amap/location/support/cloud/IAmapCloudListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/fusion/util/h;->a(Lcom/amap/location/support/handler/AmapLooper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/util/h;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/util/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/util/h$1;->a:Lcom/amap/location/fusion/util/h;

    .line 3
    invoke-direct {p0, p2}, Lcom/amap/location/support/cloud/IAmapCloudListener;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method public onDisabled()V
    .locals 0

    return-void
.end method

.method public onUpdated()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/util/h$1;->a:Lcom/amap/location/fusion/util/h;

    .line 3
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lorg/json/JSONObject;

    .line 9
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 12
    const-string v3, "nmea_gga"

    .line 14
    invoke-virtual {v1, v3, v2}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/amap/location/fusion/util/h;->a(Lcom/amap/location/fusion/util/h;Lorg/json/JSONObject;)V

    .line 21
    return-void
.end method
