.class public Lwy;
.super Lhy;
.source "SourceFile"


# instance fields
.field public D:D

.field public E:[D

.field public F:[D

.field public G:[D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lhy;-><init>(Landroid/content/Context;)V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lwy;->D:D

    .line 8
    const/4 p1, 0x3

    .line 9
    new-array v0, p1, [D

    .line 11
    fill-array-data v0, :array_0

    .line 14
    iput-object v0, p0, Lwy;->E:[D

    .line 16
    new-array v0, p1, [D

    .line 18
    fill-array-data v0, :array_1

    .line 21
    iput-object v0, p0, Lwy;->F:[D

    .line 23
    new-array p1, p1, [D

    .line 25
    fill-array-data p1, :array_2

    .line 28
    iput-object p1, p0, Lwy;->G:[D

    .line 30
    return-void

    .line 31
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    .line 47
    :array_1
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    .line 63
    :array_2
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public E()V
    .locals 0

    .line 1
    invoke-super {p0}, Loy;->E()V

    .line 4
    return-void
.end method

.method public I(IJFLcom/amap/location/support/signal/gnss/AmapLocationListener;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Loy;->f:Z

    .line 3
    const-string v1, "LocationbackFusion"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string p1, "LocationbackFusion isModeFrontEndFusionPlayback"

    .line 10
    new-array p2, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :cond_0
    iget-boolean v0, p0, Loy;->e:Z

    .line 18
    if-nez v0, :cond_1

    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    new-array v3, v0, [Ljava/lang/Object;

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v4

    .line 28
    aput-object v4, v3, v2

    .line 30
    const-string v4, "LocationbackFusion requestLocationUpdates,provider={?}"

    .line 32
    invoke-static {v1, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Lzm;->d()Lzm;

    .line 38
    move-result-object v3

    .line 39
    sget-object v4, Lzm;->m:Ljava/lang/String;

    .line 41
    invoke-virtual {v3, v4, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_2

    .line 47
    iget-object v4, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 49
    const/4 v5, 0x1

    .line 50
    move-wide v6, p2

    .line 51
    move v8, p4

    .line 52
    move-object v9, p5

    .line 53
    invoke-virtual/range {v4 .. v9}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->requestLocationUpdates(IJFLcom/amap/location/support/signal/gnss/AmapLocationListener;)V

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v3

    .line 63
    aput-object v3, v0, v2

    .line 65
    const-string v2, "LocationbackFusion,provider={?}"

    .line 67
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v3, p0, Loy;->k:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 72
    move v4, p1

    .line 73
    move-wide v5, p2

    .line 74
    move v7, p4

    .line 75
    move-object v8, p5

    .line 76
    invoke-virtual/range {v3 .. v8}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->requestLocationUpdates(IJFLcom/amap/location/support/signal/gnss/AmapLocationListener;)V

    .line 79
    :goto_0
    return-void
.end method

.method public final M(Landroid/location/Location;)Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 3

    .line 1
    new-instance v0, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v2}, Lcom/amap/location/support/bean/location/AmapLocation;-><init>(Ljava/lang/String;II)V

    .line 11
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/type/location/Location;->setLongitude(D)V

    .line 18
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 21
    move-result-wide v1

    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/type/location/Location;->setLatitude(D)V

    .line 25
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    .line 32
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    .line 35
    move-result-wide v1

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/type/location/Location;->setAltitude(D)V

    .line 39
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/amap/location/type/location/Location;->setSpeed(F)V

    .line 46
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/amap/location/type/location/Location;->setBearing(F)V

    .line 53
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/amap/location/type/location/Location;->setAccuracy(F)V

    .line 60
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Lcom/amap/location/type/location/Location;->setProvider(Ljava/lang/String;)V

    .line 67
    return-object v0
.end method

.method public final N(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "gps"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    iput-object p1, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 12
    invoke-static {}, Lzx;->h()Lzx;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lzx;->r(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 19
    iget-object p1, p0, Loy;->o:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 21
    if-eqz p1, :cond_0

    .line 23
    iget-object v0, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 25
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1, v0}, Lcom/amap/location/type/location/Location;->setProvider(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public c(IDDDIJ)V
    .locals 17

    .line 1
    move-wide/from16 v0, p2

    .line 3
    move-wide/from16 v2, p4

    .line 5
    move-wide/from16 v4, p6

    .line 7
    move-object/from16 v6, p0

    .line 9
    iget-object v7, v6, Lwy;->E:[D

    .line 11
    const/4 v8, 0x0

    .line 12
    aput-wide v2, v7, v8

    .line 14
    const/4 v8, 0x1

    .line 15
    aput-wide v4, v7, v8

    .line 17
    const/4 v8, 0x2

    .line 18
    aput-wide v0, v7, v8

    .line 20
    invoke-static {}, Lzx;->h()Lzx;

    .line 23
    move-result-object v9

    .line 24
    double-to-float v11, v0

    .line 25
    double-to-float v12, v2

    .line 26
    double-to-float v13, v4

    .line 27
    move/from16 v10, p1

    .line 29
    move/from16 v14, p8

    .line 31
    move-wide/from16 v15, p9

    .line 33
    invoke-virtual/range {v9 .. v16}, Lzx;->t(IFFFIJ)V

    .line 36
    return-void
.end method

.method public h(DIJ)V
    .locals 6

    .line 1
    invoke-static {}, Lzx;->h()Lzx;

    .line 4
    move-result-object v0

    .line 5
    move-wide v1, p1

    .line 6
    move v3, p3

    .line 7
    move-wide v4, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lzx;->w(DIJ)V

    .line 11
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(Landroid/location/Location;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    .line 6
    move-result v0

    .line 7
    float-to-double v0, v0

    .line 8
    iput-wide v0, p0, Lwy;->D:D

    .line 10
    invoke-virtual {p0, p1}, Lwy;->M(Landroid/location/Location;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lwy;->N(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 17
    :cond_0
    return-void
.end method

.method public n(Lcom/autonavi/amapauto/location/model/LocGpgsv;)V
    .locals 1

    .line 1
    invoke-static {}, Lzx;->h()Lzx;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lzx;->m(Lcom/autonavi/amapauto/location/model/LocGpgsv;)V

    .line 8
    return-void
.end method

.method public o(IFFFDIJ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lwy;->F:[D

    .line 5
    const/4 v2, 0x0

    .line 6
    move/from16 v8, p3

    .line 8
    float-to-double v3, v8

    .line 9
    aput-wide v3, v1, v2

    .line 11
    const/4 v2, 0x1

    .line 12
    move/from16 v7, p4

    .line 14
    float-to-double v3, v7

    .line 15
    aput-wide v3, v1, v2

    .line 17
    const/4 v2, 0x2

    .line 18
    move/from16 v6, p2

    .line 20
    float-to-double v3, v6

    .line 21
    aput-wide v3, v1, v2

    .line 23
    invoke-static {}, Lzx;->h()Lzx;

    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x0

    .line 28
    move-wide/from16 v1, p5

    .line 30
    double-to-float v9, v1

    .line 31
    move/from16 v5, p1

    .line 33
    move/from16 v10, p7

    .line 35
    move-wide/from16 v11, p8

    .line 37
    invoke-virtual/range {v3 .. v12}, Lzx;->s(IIFFFFIJ)V

    .line 40
    invoke-static {}, Lzx;->h()Lzx;

    .line 43
    move-result-object v10

    .line 44
    iget-wide v11, v0, Lwy;->D:D

    .line 46
    iget-object v15, v0, Lwy;->E:[D

    .line 48
    iget-object v1, v0, Lwy;->F:[D

    .line 50
    iget-object v2, v0, Lwy;->G:[D

    .line 52
    move-wide/from16 v13, p8

    .line 54
    move-object/from16 v16, v1

    .line 56
    move-object/from16 v17, v2

    .line 58
    invoke-virtual/range {v10 .. v17}, Lzx;->n(DJ[D[D[D)V

    .line 61
    return-void
.end method

.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Loy;->f:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1}, Loy;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 9
    return-void
.end method

.method public q(DDDDDDDDIIJ)V
    .locals 10

    .line 1
    invoke-static {}, Lzx;->h()Lzx;

    .line 4
    move-result-object v0

    .line 5
    move-wide v1, p1

    .line 6
    double-to-float v1, v1

    .line 7
    move-wide v2, p3

    .line 8
    double-to-float v2, v2

    .line 9
    move-wide v3, p5

    .line 10
    double-to-float v3, v3

    .line 11
    move-wide/from16 v4, p7

    .line 13
    double-to-float v4, v4

    .line 14
    move-wide/from16 v5, p9

    .line 16
    double-to-float v5, v5

    .line 17
    move-wide/from16 v6, p11

    .line 19
    double-to-float v6, v6

    .line 20
    move-wide/from16 v7, p13

    .line 22
    double-to-float v7, v7

    .line 23
    move-wide/from16 v8, p15

    .line 25
    double-to-float v8, v8

    .line 26
    move-object p1, v0

    .line 27
    move p2, v1

    .line 28
    move p3, v2

    .line 29
    move p4, v3

    .line 30
    move p5, v4

    .line 31
    move/from16 p6, v5

    .line 33
    move/from16 p7, v6

    .line 35
    move/from16 p8, p17

    .line 37
    move/from16 p9, v7

    .line 39
    move/from16 p10, v8

    .line 41
    move/from16 p11, p18

    .line 43
    move-wide/from16 p12, p19

    .line 45
    invoke-virtual/range {p1 .. p13}, Lzx;->v(FFFFFFIFFIJ)V

    .line 48
    return-void
.end method
