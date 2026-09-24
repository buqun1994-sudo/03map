.class Lcom/amap/location/fusion/a/a/a$1;
.super Lcom/amap/location/support/cloud/IAmapCloudListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/fusion/a/a/a;-><init>(ZLcom/amap/location/support/handler/AmapLooper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/a/a/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/a/a/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$1;->a:Lcom/amap/location/fusion/a/a/a;

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
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 10
    const-string v2, "heartbeat"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 15
    move-result-object v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$1;->a:Lcom/amap/location/fusion/a/a/a;

    .line 18
    const-string v2, "enable"

    .line 20
    invoke-static {v1}, Lcom/amap/location/fusion/a/a/a;->a(Lcom/amap/location/fusion/a/a/a;)Z

    .line 23
    move-result v3

    .line 24
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 27
    move-result v2

    .line 28
    invoke-static {v1, v2}, Lcom/amap/location/fusion/a/a/a;->a(Lcom/amap/location/fusion/a/a/a;Z)Z

    .line 31
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$1;->a:Lcom/amap/location/fusion/a/a/a;

    .line 33
    const-string v2, "default_time"

    .line 35
    invoke-static {v1}, Lcom/amap/location/fusion/a/a/a;->b(Lcom/amap/location/fusion/a/a/a;)I

    .line 38
    move-result v3

    .line 39
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 42
    move-result v2

    .line 43
    invoke-static {v1, v2}, Lcom/amap/location/fusion/a/a/a;->a(Lcom/amap/location/fusion/a/a/a;I)I

    .line 46
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$1;->a:Lcom/amap/location/fusion/a/a/a;

    .line 48
    const-string v2, "high_frequency"

    .line 50
    invoke-static {v1}, Lcom/amap/location/fusion/a/a/a;->c(Lcom/amap/location/fusion/a/a/a;)I

    .line 53
    move-result v3

    .line 54
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 57
    move-result v2

    .line 58
    invoke-static {v1, v2}, Lcom/amap/location/fusion/a/a/a;->b(Lcom/amap/location/fusion/a/a/a;I)I

    .line 61
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$1;->a:Lcom/amap/location/fusion/a/a/a;

    .line 63
    const-string v2, "dis_threshold"

    .line 65
    invoke-static {v1}, Lcom/amap/location/fusion/a/a/a;->d(Lcom/amap/location/fusion/a/a/a;)I

    .line 68
    move-result v3

    .line 69
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 72
    move-result v0

    .line 73
    invoke-static {v1, v0}, Lcom/amap/location/fusion/a/a/a;->c(Lcom/amap/location/fusion/a/a/a;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    return-void
.end method
