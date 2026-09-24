.class public Ljy;
.super Loy;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Loy;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Loy;->u:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v2, v0, v1}, Lfo;->c(III)V

    .line 12
    return-void
.end method

.method public I(IJFLcom/amap/location/support/signal/gnss/AmapLocationListener;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Loy;->e:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x0

    .line 14
    aput-object v2, v1, v3

    .line 16
    const-string v2, "LocationInstrument"

    .line 18
    const-string v4, "LocationGpsInstrument requestLocationUpdates,provider={?}"

    .line 20
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Lzm;->d()Lzm;

    .line 26
    move-result-object v1

    .line 27
    sget-object v4, Lzm;->m:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v4, v3}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 35
    iget-object v4, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 37
    const/4 v5, 0x1

    .line 38
    move-wide v6, p2

    .line 39
    move v8, p4

    .line 40
    move-object v9, p5

    .line 41
    invoke-virtual/range {v4 .. v9}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->requestLocationUpdates(IJFLcom/amap/location/support/signal/gnss/AmapLocationListener;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v1

    .line 51
    aput-object v1, v0, v3

    .line 53
    const-string v1, "provider={?}"

    .line 55
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v3, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 60
    move v4, p1

    .line 61
    move-wide v5, p2

    .line 62
    move v7, p4

    .line 63
    move-object v8, p5

    .line 64
    invoke-virtual/range {v3 .. v8}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->requestLocationUpdates(IJFLcom/amap/location/support/signal/gnss/AmapLocationListener;)V

    .line 67
    :goto_0
    return-void
.end method

.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Loy;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 4
    if-eqz p1, :cond_1

    .line 6
    const-string v0, "gps"

    .line 8
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 18
    iget-boolean p1, p0, Loy;->u:Z

    .line 20
    if-nez p1, :cond_0

    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Loy;->u:Z

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    move-result-wide v0

    .line 29
    iget-wide v2, p0, Loy;->v:J

    .line 31
    sub-long/2addr v0, v2

    .line 32
    const-wide/16 v2, 0x3e8

    .line 34
    div-long/2addr v0, v2

    .line 35
    long-to-int v1, v0

    .line 36
    invoke-static {p1, p1, v1}, Lfo;->c(III)V

    .line 39
    :cond_0
    invoke-static {}, Ldy;->k()Ldy;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ldy;->g()V

    .line 46
    :cond_1
    return-void
.end method
