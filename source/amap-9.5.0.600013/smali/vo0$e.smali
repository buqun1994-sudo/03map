.class public Lvo0$e;
.super Lcom/amap/location/support/signal/gnss/AmapLocationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lvo0;


# direct methods
.method public constructor <init>(Lvo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0$e;->d:Lvo0;

    .line 3
    invoke-direct {p0}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    if-nez v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getDiagnosisType()I

    .line 11
    move-result v2

    .line 12
    if-lez v2, :cond_1

    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const-string v3, "gps"

    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_2

    .line 27
    return-void

    .line 28
    :cond_2
    iget-object v2, v0, Lvo0$e;->d:Lvo0;

    .line 30
    invoke-static {v2, v1}, Lvo0;->g(Lvo0;Lcom/amap/location/support/bean/location/AmapLocation;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 36
    move-result-wide v3

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLocationTickTime()J

    .line 40
    move-result-wide v5

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 44
    move-result-wide v7

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 48
    move-result-wide v9

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getAltitude()D

    .line 52
    move-result-wide v11

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    .line 56
    move-result v13

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getBearing()F

    .line 60
    move-result v14

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 64
    move-result v15

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getVerticalAccuracyMeters()F

    .line 68
    move-result v16

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getSpeedAccuracyMetersPerSecond()F

    .line 72
    move-result v17

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getBearingAccuracyDegrees()F

    .line 76
    move-result v18

    .line 77
    invoke-static/range {v3 .. v18}, Lcom/amap/ams/jni/gnss/NativeGnssLocator;->sendGnssLocation(JJDDDFFFFFF)V

    .line 80
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDiffGnssDataProvider()Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    .line 83
    move-result-object v2

    .line 84
    if-eqz v2, :cond_3

    .line 86
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDiffGnssDataProvider()Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v2, v1}, Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;->sendLocation(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 93
    :cond_3
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 96
    move-result-object v2

    .line 97
    const/4 v3, 0x1

    .line 98
    if-eqz v2, :cond_7

    .line 100
    iget-object v4, v0, Lvo0$e;->d:Lvo0;

    .line 102
    invoke-static {v4}, Lvo0;->e0(Lvo0;)Ljava/lang/String;

    .line 105
    move-result-object v4

    .line 106
    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 109
    move-result v4

    .line 110
    if-nez v4, :cond_7

    .line 112
    iget-object v4, v0, Lvo0$e;->d:Lvo0;

    .line 114
    invoke-static {v4}, Lvo0;->e0(Lvo0;)Ljava/lang/String;

    .line 117
    move-result-object v4

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    const-string v6, "#"

    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v2}, Lcom/amap/location/type/location/LocationMatch;->getRoadClass()B

    .line 131
    move-result v2

    .line 132
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 145
    move-result v2

    .line 146
    iget-object v4, v0, Lvo0$e;->d:Lvo0;

    .line 148
    invoke-static {v4}, Lvo0;->f0(Lvo0;)Z

    .line 151
    move-result v4

    .line 152
    if-eqz v4, :cond_4

    .line 154
    if-nez v2, :cond_4

    .line 156
    const/4 v4, 0x1

    .line 157
    goto :goto_0

    .line 158
    :cond_4
    iget-object v4, v0, Lvo0$e;->d:Lvo0;

    .line 160
    invoke-static {v4}, Lvo0;->f0(Lvo0;)Z

    .line 163
    move-result v4

    .line 164
    if-nez v4, :cond_5

    .line 166
    if-eqz v2, :cond_5

    .line 168
    const/4 v4, 0x2

    .line 169
    goto :goto_0

    .line 170
    :cond_5
    const/4 v4, 0x0

    .line 171
    :goto_0
    if-lez v4, :cond_6

    .line 173
    invoke-static {v4}, Lcom/amap/ams/jni/gnss/NativeGnssLocator;->sendRCscene(I)V

    .line 176
    new-instance v5, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 178
    invoke-direct {v5, v1}, Lcom/amap/location/support/bean/location/AmapLocation;-><init>(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 181
    mul-int/lit16 v4, v4, 0x3e8

    .line 183
    invoke-virtual {v5, v4}, Lcom/amap/location/type/location/Location;->setSubType(I)V

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    .line 188
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    const-string v7, "rc changed:"

    .line 193
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v5}, Lcom/amap/location/type/location/Location;->getSubType()I

    .line 199
    move-result v7

    .line 200
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getSubType()I

    .line 209
    move-result v1

    .line 210
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v1

    .line 217
    const-string v4, "GnssSoftLocator"

    .line 219
    invoke-static {v4, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    move-object v1, v5

    .line 223
    :cond_6
    iget-object v4, v0, Lvo0$e;->d:Lvo0;

    .line 225
    invoke-static {v4, v2}, Lvo0;->H(Lvo0;Z)Z

    .line 228
    :cond_7
    iget-object v2, v0, Lvo0$e;->d:Lvo0;

    .line 230
    invoke-static {v2}, Lvo0;->Z(Lvo0;)I

    .line 233
    move-result v2

    .line 234
    if-le v2, v3, :cond_8

    .line 236
    iget-object v2, v0, Lvo0$e;->d:Lvo0;

    .line 238
    invoke-static {v2}, Lvo0;->a0(Lvo0;)Lgw0;

    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v2, v1}, Lgw0;->c(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 245
    :cond_8
    iget-object v1, v0, Lvo0$e;->d:Lvo0;

    .line 247
    invoke-static {v1}, Lvo0;->a(Lvo0;)Ljava/lang/Runnable;

    .line 250
    move-result-object v2

    .line 251
    invoke-static {v1, v2}, Lvo0;->o(Lvo0;Ljava/lang/Runnable;)V

    .line 254
    iget-object v1, v0, Lvo0$e;->d:Lvo0;

    .line 256
    invoke-static {v1}, Lvo0;->a(Lvo0;)Ljava/lang/Runnable;

    .line 259
    move-result-object v2

    .line 260
    const-wide/32 v3, 0xea60

    .line 263
    invoke-static {v1, v2, v3, v4}, Lvo0;->p(Lvo0;Ljava/lang/Runnable;J)V

    .line 266
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method
