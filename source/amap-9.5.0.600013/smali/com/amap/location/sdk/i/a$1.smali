.class Lcom/amap/location/sdk/i/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/i/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/i/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/i/a$1;->a:Lcom/amap/location/sdk/i/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/amap/location/sdk/i/a$1;->a:Lcom/amap/location/sdk/i/a;

    .line 5
    invoke-static {v0, p1}, Lcom/amap/location/sdk/i/a;->a(Lcom/amap/location/sdk/i/a;Landroid/location/Location;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 11
    const-string v0, "gps"

    .line 13
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/amap/location/support/gnssblockstate/GnssBlockState;->getGnssBlockState()I

    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    if-ne v0, v1, :cond_1

    .line 31
    return-void

    .line 32
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    move-result-wide v0

    .line 36
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 39
    move-result-wide v2

    .line 40
    sub-long v2, v0, v2

    .line 42
    const-wide/16 v4, 0x7d0

    .line 44
    cmp-long v6, v2, v4

    .line 46
    if-lez v6, :cond_2

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v3, "sys gps invalid :"

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 61
    move-result-wide v3

    .line 62
    sub-long/2addr v0, v3

    .line 63
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    const-string v0, "LocMonitor"

    .line 72
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 76
    :cond_2
    iget-object p1, p0, Lcom/amap/location/sdk/i/a$1;->a:Lcom/amap/location/sdk/i/a;

    .line 78
    invoke-static {p1, v0, v1}, Lcom/amap/location/sdk/i/a;->a(Lcom/amap/location/sdk/i/a;J)J

    .line 81
    :cond_3
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
