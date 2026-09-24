.class Lcom/amap/location/e/f$1;
.super Lcom/amap/location/support/cloud/IAmapCloudListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/e/f;->a(Lcom/amap/location/support/handler/AmapLooper;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/f;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/f$1;->a:Lcom/amap/location/e/f;

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
    iget-object v0, p0, Lcom/amap/location/e/f$1;->a:Lcom/amap/location/e/f;

    .line 3
    invoke-static {v0}, Lcom/amap/location/e/f;->a(Lcom/amap/location/e/f;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lorg/json/JSONObject;

    .line 16
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 19
    const-string v2, "restrictor"

    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/amap/location/e/f$1;->a:Lcom/amap/location/e/f;

    .line 27
    const-string v2, "enable"

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 33
    move-result v2

    .line 34
    invoke-static {v1, v2}, Lcom/amap/location/e/f;->a(Lcom/amap/location/e/f;Z)Z

    .line 37
    iget-object v1, p0, Lcom/amap/location/e/f$1;->a:Lcom/amap/location/e/f;

    .line 39
    invoke-static {v1}, Lcom/amap/location/e/f;->a(Lcom/amap/location/e/f;)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/amap/location/e/f$1;->a:Lcom/amap/location/e/f;

    .line 47
    const-string v2, "url"

    .line 49
    invoke-static {v1}, Lcom/amap/location/e/f;->b(Lcom/amap/location/e/f;)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, v0}, Lcom/amap/location/e/f;->a(Lcom/amap/location/e/f;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/amap/location/e/f$1;->a:Lcom/amap/location/e/f;

    .line 62
    invoke-static {v0}, Lcom/amap/location/e/f;->c(Lcom/amap/location/e/f;)V

    .line 65
    :cond_1
    return-void
.end method
