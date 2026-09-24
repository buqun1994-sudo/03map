.class public Lcom/amap/location/support/bean/location/AmapLocation;
.super Lcom/amap/location/type/location/Location;
.source "SourceFile"


# static fields
.field public static final INIT_INVALID_COORDINATE:D = -9999999.0

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/amap/location/type/location/Location;-><init>(Lcom/amap/location/type/location/Location;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/location/type/location/Location;-><init>(Ljava/lang/String;II)V

    .line 2
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/amap/location/type/location/Location;->mLocationUtcTime:J

    .line 4
    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/amap/location/type/location/Location;->mLocationTickTime:J

    :cond_0
    return-void
.end method

.method public static isLocationCorrect(Lcom/amap/location/support/bean/location/AmapLocation;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 12
    move-result-wide v3

    .line 13
    const-string v5, "gps"

    .line 15
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 18
    move-result-object v6

    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v5

    .line 23
    const-wide v6, -0x3e9ced3020000000L    # -9999999.0

    .line 28
    cmpl-double v8, v1, v6

    .line 30
    if-nez v8, :cond_1

    .line 32
    cmpl-double v8, v3, v6

    .line 34
    if-nez v8, :cond_1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-wide v6, 0x4066800000000000L    # 180.0

    .line 42
    cmpl-double v8, v1, v6

    .line 44
    if-gtz v8, :cond_7

    .line 46
    const-wide v6, 0x4056800000000000L    # 90.0

    .line 51
    cmpl-double v8, v3, v6

    .line 53
    if-lez v8, :cond_2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-wide v6, -0x3f99800000000000L    # -180.0

    .line 61
    cmpg-double v8, v1, v6

    .line 63
    if-ltz v8, :cond_7

    .line 65
    const-wide v6, -0x3fa9800000000000L    # -90.0

    .line 70
    cmpg-double v8, v3, v6

    .line 72
    if-gez v8, :cond_3

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    if-eqz v5, :cond_4

    .line 77
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 80
    move-result v6

    .line 81
    const v7, -0x4dd43389    # -1.0E-8f

    .line 84
    cmpg-float v6, v6, v7

    .line 86
    if-gez v6, :cond_4

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    if-nez v5, :cond_5

    .line 91
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 94
    move-result p0

    .line 95
    const/4 v5, 0x0

    .line 96
    cmpg-float p0, p0, v5

    .line 98
    if-gtz p0, :cond_5

    .line 100
    goto :goto_0

    .line 101
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 104
    move-result p0

    .line 105
    if-nez p0, :cond_7

    .line 107
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    .line 110
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-eqz p0, :cond_6

    .line 113
    goto :goto_0

    .line 114
    :cond_6
    const/4 p0, 0x1

    .line 115
    const/4 v0, 0x1

    .line 116
    :catchall_0
    :cond_7
    :goto_0
    return v0
.end method

.method public static isMainChannelLocation(Lcom/amap/location/support/bean/location/AmapLocation;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const-string v1, "network"

    .line 7
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    const-string v2, "gps"

    .line 17
    if-nez v1, :cond_1

    .line 19
    const-string v1, "indoor"

    .line 21
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_1

    .line 41
    return v0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 52
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getType()I

    .line 55
    move-result v1

    .line 56
    const/16 v2, 0xe

    .line 58
    if-eq v1, v2, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getType()I

    .line 63
    move-result v1

    .line 64
    const/16 v2, 0xf

    .line 66
    if-eq v1, v2, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/amap/location/type/location/Location;->getType()I

    .line 71
    move-result p0

    .line 72
    const/16 v1, -0x3e6

    .line 74
    if-ne p0, v1, :cond_3

    .line 76
    :cond_2
    return v0

    .line 77
    :cond_3
    const/4 p0, 0x1

    .line 78
    return p0
.end method


# virtual methods
.method public bearingTo(Lcom/amap/location/support/bean/location/AmapLocation;)D
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/amap/location/type/location/Location;->mLatitude:D

    .line 5
    iget-wide v2, p0, Lcom/amap/location/type/location/Location;->mLongitude:D

    .line 7
    iget-wide v4, p1, Lcom/amap/location/type/location/Location;->mLatitude:D

    .line 9
    iget-wide v6, p1, Lcom/amap/location/type/location/Location;->mLongitude:D

    .line 11
    invoke-static/range {v0 .. v7}, Lcom/amap/location/support/util/GeoUtils;->bearing(DDDD)F

    .line 14
    move-result p1

    .line 15
    float-to-double v0, p1

    .line 16
    return-wide v0

    .line 17
    :cond_0
    const-wide/16 v0, 0x0

    .line 19
    return-wide v0
.end method

.method public distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D
    .locals 8

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/amap/location/type/location/Location;->mLatitude:D

    .line 5
    iget-wide v2, p0, Lcom/amap/location/type/location/Location;->mLongitude:D

    .line 7
    iget-wide v4, p1, Lcom/amap/location/type/location/Location;->mLatitude:D

    .line 9
    iget-wide v6, p1, Lcom/amap/location/type/location/Location;->mLongitude:D

    .line 11
    invoke-static/range {v0 .. v7}, Lcom/amap/location/support/util/GeoUtils;->distance(DDDD)D

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    :cond_0
    const-wide/16 v0, 0x0

    .line 18
    return-wide v0
.end method
