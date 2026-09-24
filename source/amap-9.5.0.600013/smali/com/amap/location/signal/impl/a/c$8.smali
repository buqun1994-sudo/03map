.class Lcom/amap/location/signal/impl/a/c$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/signal/impl/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/signal/impl/a/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/signal/impl/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/c$8;->a:Lcom/amap/location/signal/impl/a/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 3
    const-string v0, "gps"

    .line 5
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c$8;->a:Lcom/amap/location/signal/impl/a/c;

    .line 18
    invoke-static {v0}, Lcom/amap/location/signal/impl/a/c;->h(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c$8;->a:Lcom/amap/location/signal/impl/a/c;

    .line 26
    invoke-static {v0, p1}, Lcom/amap/location/signal/impl/a/c;->a(Lcom/amap/location/signal/impl/a/c;Landroid/location/Location;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 32
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c$8;->a:Lcom/amap/location/signal/impl/a/c;

    .line 34
    invoke-static {v0}, Lcom/amap/location/signal/impl/a/c;->h(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c$8;->a:Lcom/amap/location/signal/impl/a/c;

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/a/c;->h(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c$8;->a:Lcom/amap/location/signal/impl/a/c;

    .line 11
    invoke-static {v0}, Lcom/amap/location/signal/impl/a/c;->h(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c$8;->a:Lcom/amap/location/signal/impl/a/c;

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/a/c;->h(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c$8;->a:Lcom/amap/location/signal/impl/a/c;

    .line 11
    invoke-static {v0}, Lcom/amap/location/signal/impl/a/c;->h(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/amap/location/signal/impl/a/c$8;->a:Lcom/amap/location/signal/impl/a/c;

    .line 3
    invoke-static {p3}, Lcom/amap/location/signal/impl/a/c;->h(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 6
    move-result-object p3

    .line 7
    if-eqz p3, :cond_0

    .line 9
    iget-object p3, p0, Lcom/amap/location/signal/impl/a/c$8;->a:Lcom/amap/location/signal/impl/a/c;

    .line 11
    invoke-static {p3}, Lcom/amap/location/signal/impl/a/c;->h(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {p3, p1, p2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onStatusChanged(Ljava/lang/String;I)V

    .line 18
    :cond_0
    return-void
.end method
