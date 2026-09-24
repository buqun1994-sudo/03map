.class Lcom/amap/api/service/AMapServiceHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/service/AMapServiceHelper;->onDestroy()V
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
    iput-object p1, p0, Lcom/amap/api/service/AMapServiceHelper$2;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$2;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 3
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->f(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/fusion/LocationProvider;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/amap/location/fusion/LocationProvider;->updateNaviStatus(Z)V

    .line 11
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$2;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 13
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->f(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/fusion/LocationProvider;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/amap/location/fusion/LocationProvider;->removeFromMain()V

    .line 20
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$2;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 22
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->f(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/fusion/LocationProvider;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/amap/location/fusion/LocationProvider;->destroy()V

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$2;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 31
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->k(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/sdk/b/b;

    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$2;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 39
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->k(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/sdk/b/b;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/amap/location/sdk/b/b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 51
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$2;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 53
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->i(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/sdk/c/a;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/amap/location/sdk/c/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    goto :goto_1

    .line 61
    :catch_1
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 65
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/service/AMapServiceHelper$2;->a:Lcom/amap/api/service/AMapServiceHelper;

    .line 67
    invoke-static {v0}, Lcom/amap/api/service/AMapServiceHelper;->d(Lcom/amap/api/service/AMapServiceHelper;)Lcom/amap/location/sdk/d/a;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/amap/location/sdk/d/a;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 74
    goto :goto_2

    .line 75
    :catch_2
    move-exception v0

    .line 76
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 79
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/amap/location/sdk/c/a/c;->a()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 82
    goto :goto_3

    .line 83
    :catch_3
    move-exception v0

    .line 84
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 87
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/amap/location/icecream/IcecreamCart;->getInstance()Lcom/amap/location/icecream/IcecreamCart;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/amap/location/icecream/IcecreamCart;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 94
    goto :goto_4

    .line 95
    :catch_4
    move-exception v0

    .line 96
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 99
    :goto_4
    const-string v0, "amapservicehelper"

    .line 101
    const-string v1, "destroy finish"

    .line 103
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method
