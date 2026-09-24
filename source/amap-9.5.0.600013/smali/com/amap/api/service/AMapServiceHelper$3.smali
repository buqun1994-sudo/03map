.class Lcom/amap/api/service/AMapServiceHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/service/AMapServiceHelper;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/service/AMapServiceHelper;


# direct methods
.method public constructor <init>(Lcom/amap/api/service/AMapServiceHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/service/AMapServiceHelper$3;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$3;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 3
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->f(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/fusion/LocationProvider;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/amap/location/fusion/LocationProvider;->updateNaviStatus(Z)V

    .line 11
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$3;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 13
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->f(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/fusion/LocationProvider;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/amap/location/fusion/LocationProvider;->removeFromMain()V

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$3;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 22
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->d(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/sdk/d/a;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/amap/location/sdk/d/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 34
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/amap/location/icecream/IcecreamCart;->getInstance()Lcom/amap/location/icecream/IcecreamCart;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/amap/location/icecream/IcecreamCart;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    goto :goto_1

    .line 42
    :catch_1
    move-exception v0

    .line 43
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 46
    :goto_1
    const-string v0, "amapservicehelper"

    .line 48
    const-string v1, "stop finish"

    .line 50
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
