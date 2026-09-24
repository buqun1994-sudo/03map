.class public Lcom/amap/location/support/network/gateway/LocalGatewayConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public allowDomainProxy:Z

.field public allowRequestLimit:Z

.field public domainPairs:Ljava/lang/String;

.field public enable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build()Lcom/amap/location/support/network/gateway/LocalGatewayConfig;
    .locals 4

    .line 1
    new-instance v0, Lcom/amap/location/support/network/gateway/LocalGatewayConfig;

    .line 3
    invoke-direct {v0}, Lcom/amap/location/support/network/gateway/LocalGatewayConfig;-><init>()V

    .line 6
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "gateway"

    .line 12
    new-instance v3, Lorg/json/JSONObject;

    .line 14
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    const-string v2, "enable"

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 29
    move-result v2

    .line 30
    iput-boolean v2, v0, Lcom/amap/location/support/network/gateway/LocalGatewayConfig;->enable:Z

    .line 32
    if-eqz v2, :cond_0

    .line 34
    const-string v2, "domainpxy"

    .line 36
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 39
    move-result v2

    .line 40
    iput-boolean v2, v0, Lcom/amap/location/support/network/gateway/LocalGatewayConfig;->allowDomainProxy:Z

    .line 42
    const-string v2, "limit"

    .line 44
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 47
    move-result v2

    .line 48
    iput-boolean v2, v0, Lcom/amap/location/support/network/gateway/LocalGatewayConfig;->allowRequestLimit:Z

    .line 50
    iget-boolean v2, v0, Lcom/amap/location/support/network/gateway/LocalGatewayConfig;->allowDomainProxy:Z

    .line 52
    if-eqz v2, :cond_0

    .line 54
    const-string v2, "domainpairs"

    .line 56
    const-string v3, ""

    .line 58
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    iput-object v1, v0, Lcom/amap/location/support/network/gateway/LocalGatewayConfig;->domainPairs:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 69
    :cond_0
    :goto_0
    return-object v0
.end method
