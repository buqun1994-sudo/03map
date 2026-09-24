.class Lcom/amap/location/sdk/i/a$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/i/a$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/i/a$4;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/i/a$4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/i/a$4$1;->a:Lcom/amap/location/sdk/i/a$4;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 1
    const-string v0, "LocMonitor"

    .line 3
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$4$1;->a:Lcom/amap/location/sdk/i/a$4;

    .line 5
    iget-object v1, v1, Lcom/amap/location/sdk/i/a$4;->b:Lcom/amap/location/sdk/i/a;

    .line 7
    invoke-static {v1}, Lcom/amap/location/sdk/i/a;->n(Lcom/amap/location/sdk/i/a;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_1

    .line 13
    if-eqz p1, :cond_1

    .line 15
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$4$1;->a:Lcom/amap/location/sdk/i/a$4;

    .line 17
    iget-object v1, v1, Lcom/amap/location/sdk/i/a$4;->b:Lcom/amap/location/sdk/i/a;

    .line 19
    invoke-static {v1, p1}, Lcom/amap/location/sdk/i/a;->a(Lcom/amap/location/sdk/i/a;Landroid/location/Location;)Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$4$1;->a:Lcom/amap/location/sdk/i/a$4;

    .line 28
    invoke-static {v1, p1}, Lcom/amap/location/sdk/i/a$4;->a(Lcom/amap/location/sdk/i/a$4;Landroid/location/Location;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 31
    move-result-object p1

    .line 32
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$4$1;->a:Lcom/amap/location/sdk/i/a$4;

    .line 34
    iget-object v1, v1, Lcom/amap/location/sdk/i/a$4;->b:Lcom/amap/location/sdk/i/a;

    .line 36
    invoke-static {v1}, Lcom/amap/location/sdk/i/a;->n(Lcom/amap/location/sdk/i/a;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v2, "get fuse loc callback:"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->getLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
