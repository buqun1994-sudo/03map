.class Lcom/amap/location/g/i$3;
.super Lcom/amap/location/support/cloud/IAmapCloudListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/g/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/g/i;


# direct methods
.method public constructor <init>(Lcom/amap/location/g/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/g/i$3;->a:Lcom/amap/location/g/i;

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
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    const-string v2, "nl"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/amap/location/g/a;->a(Lorg/json/JSONObject;)V

    .line 19
    return-void
.end method
