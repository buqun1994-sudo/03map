.class Lcom/amap/location/fusion/a/c/a/e$1;
.super Lcom/amap/location/support/signal/gnss/AmapLocationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/a/c/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/a/c/a/e;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/a/c/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/a/c/a/e$1;->a:Lcom/amap/location/fusion/a/c/a/e;

    .line 3
    invoke-direct {p0}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/amap/location/support/bean/location/AmapLocation;->isLocationCorrect(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "gps"

    .line 14
    if-eq v0, v1, :cond_1

    .line 16
    return-void

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAltitude()D

    .line 20
    move-result-wide v0

    .line 21
    iget-object v2, p0, Lcom/amap/location/fusion/a/c/a/e$1;->a:Lcom/amap/location/fusion/a/c/a/e;

    .line 23
    invoke-static {v2}, Lcom/amap/location/fusion/a/c/a/e;->a(Lcom/amap/location/fusion/a/c/a/e;)Ljava/util/Map;

    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v2

    .line 35
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    if-eqz v3, :cond_3

    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Ljava/lang/Integer;

    .line 54
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v5

    .line 58
    iget-object v6, p0, Lcom/amap/location/fusion/a/c/a/e$1;->a:Lcom/amap/location/fusion/a/c/a/e;

    .line 60
    invoke-static {v6}, Lcom/amap/location/fusion/a/c/a/e;->b(Lcom/amap/location/fusion/a/c/a/e;)I

    .line 63
    move-result v6

    .line 64
    sub-int v6, v5, v6

    .line 66
    int-to-double v6, v6

    .line 67
    cmpl-double v8, v0, v6

    .line 69
    if-ltz v8, :cond_2

    .line 71
    iget-object v6, p0, Lcom/amap/location/fusion/a/c/a/e$1;->a:Lcom/amap/location/fusion/a/c/a/e;

    .line 73
    invoke-static {v6}, Lcom/amap/location/fusion/a/c/a/e;->b(Lcom/amap/location/fusion/a/c/a/e;)I

    .line 76
    move-result v6

    .line 77
    add-int/2addr v5, v6

    .line 78
    int-to-double v5, v5

    .line 79
    cmpg-double v7, v0, v5

    .line 81
    if-gtz v7, :cond_2

    .line 83
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/Integer;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 92
    move-result v0

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    const/4 v0, 0x0

    .line 95
    :goto_0
    if-eqz v0, :cond_4

    .line 97
    new-instance v1, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 99
    invoke-direct {v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;-><init>()V

    .line 102
    const-string v2, "indoor"

    .line 104
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setProvider(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 110
    move-result-wide v2

    .line 111
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 114
    move-result-wide v5

    .line 115
    invoke-static {v2, v3, v5, v6}, Lcom/amap/location/support/coord/OffsetVersion3;->wgs84ToGcj02(DD)[D

    .line 118
    move-result-object v2

    .line 119
    const-string v3, "hasgcj"

    .line 121
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 123
    invoke-virtual {v1, v3, v5}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    const/4 v3, 0x1

    .line 127
    aget-wide v5, v2, v3

    .line 129
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 132
    move-result-object v5

    .line 133
    const-string v6, "gcjlat"

    .line 135
    invoke-virtual {v1, v6, v5}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    aget-wide v4, v2, v4

    .line 140
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 143
    move-result-object v2

    .line 144
    const-string v4, "gcjlng"

    .line 146
    invoke-virtual {v1, v4, v2}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 152
    move-result-wide v4

    .line 153
    invoke-virtual {v1, v4, v5}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    .line 156
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationTickTime()J

    .line 159
    move-result-wide v4

    .line 160
    invoke-virtual {v1, v4, v5}, Lcom/amap/location/type/location/Location;->setLocationTickTime(J)V

    .line 163
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAltitude()D

    .line 166
    move-result-wide v4

    .line 167
    invoke-virtual {v1, v4, v5}, Lcom/amap/location/type/location/Location;->setAltitude(D)V

    .line 170
    invoke-virtual {v1, v3}, Lcom/amap/location/type/location/Location;->setType(I)V

    .line 173
    const/4 v2, -0x8

    .line 174
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setSubType(I)V

    .line 177
    const-string v2, "13"

    .line 179
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 182
    move-result v2

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    move-result-object v2

    .line 187
    const-string v3, "loc_code"

    .line 189
    invoke-virtual {v1, v3, v2}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 195
    move-result-wide v2

    .line 196
    invoke-virtual {v1, v2, v3}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLatitude(D)V

    .line 199
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 202
    move-result-wide v2

    .line 203
    invoke-virtual {v1, v2, v3}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLongitude(D)V

    .line 206
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAltitude()D

    .line 209
    move-result-wide v2

    .line 210
    invoke-virtual {v1, v2, v3}, Lcom/amap/location/type/location/Location;->setAltitude(D)V

    .line 213
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    .line 216
    move-result v2

    .line 217
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setSpeed(F)V

    .line 220
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getBearing()F

    .line 223
    move-result v2

    .line 224
    invoke-virtual {v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setBearing(F)V

    .line 227
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 230
    move-result v2

    .line 231
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setAccuracy(F)V

    .line 234
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getVerticalAccuracyMeters()F

    .line 237
    move-result v2

    .line 238
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setVerticalAccuracyMeters(F)V

    .line 241
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSpeedAccuracyMetersPerSecond()F

    .line 244
    move-result v2

    .line 245
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    .line 248
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getBearingAccuracyDegrees()F

    .line 251
    move-result v2

    .line 252
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setBearingAccuracyDegrees(F)V

    .line 255
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getPoiid()Ljava/lang/String;

    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setPoiid(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, v0}, Lcom/amap/location/type/location/Location;->setFloor(I)V

    .line 265
    const-string v0, ""

    .line 267
    invoke-virtual {v1, v0}, Lcom/amap/location/type/location/Location;->setFloorName(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSource()Ljava/lang/String;

    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v1, v0}, Lcom/amap/location/type/location/Location;->setSource(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->isDim()Z

    .line 280
    move-result v0

    .line 281
    invoke-virtual {v1, v0}, Lcom/amap/location/type/location/Location;->setDim(Z)V

    .line 284
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getIod()I

    .line 287
    move-result v0

    .line 288
    invoke-virtual {v1, v0}, Lcom/amap/location/type/location/Location;->setIod(I)V

    .line 291
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getIodConfidence()I

    .line 294
    move-result v0

    .line 295
    invoke-virtual {v1, v0}, Lcom/amap/location/type/location/Location;->setIodConfidence(I)V

    .line 298
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSemantics()Ljava/lang/String;

    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v1, v0}, Lcom/amap/location/type/location/Location;->setSemantics(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->isSpeedKmh()Z

    .line 308
    move-result v0

    .line 309
    invoke-virtual {v1, v0}, Lcom/amap/location/type/location/Location;->setSpeedKmh(Z)V

    .line 312
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->isCoorCanUseInMap()Z

    .line 315
    move-result v0

    .line 316
    invoke-virtual {v1, v0}, Lcom/amap/location/type/location/Location;->setCoorCanUseInMap(Z)V

    .line 319
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getPriority()I

    .line 322
    move-result v0

    .line 323
    invoke-virtual {v1, v0}, Lcom/amap/location/type/location/Location;->setPriority(I)V

    .line 326
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getOptContent()Ljava/lang/String;

    .line 329
    move-result-object p1

    .line 330
    invoke-virtual {v1, p1}, Lcom/amap/location/type/location/Location;->setOptContent(Ljava/lang/String;)V

    .line 333
    iget-object p1, p0, Lcom/amap/location/fusion/a/c/a/e$1;->a:Lcom/amap/location/fusion/a/c/a/e;

    .line 335
    invoke-virtual {p1, v1}, Lcom/amap/location/support/location/AbstractLocator;->report(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 338
    :cond_4
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

.method public onStatusChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
