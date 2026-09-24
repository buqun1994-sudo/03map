.class public Liy;
.super Lhy;
.source "SourceFile"


# instance fields
.field public D:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lhy;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public E()V
    .locals 0

    .line 1
    invoke-super {p0}, Loy;->E()V

    .line 4
    invoke-virtual {p0}, Liy;->P()V

    .line 7
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
    iget-boolean v0, p0, Loy;->g:Z

    .line 8
    const-string v1, "LocationFrontEndFusion"

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    const-string p1, "LocationFrontEndFusion isModeFrontEndFusionPlayback"

    .line 15
    new-array p2, v2, [Ljava/lang/Object;

    .line 17
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

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
    const-string v4, "LocationFrontEndFusion requestLocationUpdates,provider={?}"

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
    const-string v2, "LocationFrontEndFusion,provider={?}"

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

.method public final M(Lcom/autonavi/amapauto/location/model/LocDrPos;)Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 3

    .line 1
    new-instance v0, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 3
    iget-object v1, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 5
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v2}, Lcom/amap/location/support/bean/location/AmapLocation;-><init>(Ljava/lang/String;II)V

    .line 13
    iget-object v1, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 15
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 18
    move-result-wide v1

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/type/location/Location;->setLongitude(D)V

    .line 22
    iget-object v1, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 24
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/type/location/Location;->setLatitude(D)V

    .line 31
    iget-object v1, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 33
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 36
    move-result-wide v1

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    .line 40
    iget-object v1, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 42
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getAltitude()D

    .line 45
    move-result-wide v1

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/type/location/Location;->setAltitude(D)V

    .line 49
    iget-object v1, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 51
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getBearing()F

    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/amap/location/type/location/Location;->setBearing(F)V

    .line 58
    iget-object v1, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 60
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/amap/location/type/location/Location;->setProvider(Ljava/lang/String;)V

    .line 67
    iget p1, p1, Lcom/autonavi/amapauto/location/model/LocDrPos;->speed:F

    .line 69
    invoke-virtual {v0, p1}, Lcom/amap/location/type/location/Location;->setSpeed(F)V

    .line 72
    return-object v0
.end method

.method public final N(Ljava/lang/String;B)B
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return p2

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_2

    .line 14
    array-length v0, p1

    .line 15
    if-gtz v0, :cond_1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p2, 0x0

    .line 19
    aget-byte p1, p1, p2

    .line 21
    return p1

    .line 22
    :cond_2
    :goto_0
    return p2
.end method

.method public final O(Ljava/lang/String;)V
    .locals 42

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const-string v2, "gps"

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v3, Lcom/autonavi/amapauto/location/model/LocDrPos;

    .line 12
    invoke-direct {v3}, Lcom/autonavi/amapauto/location/model/LocDrPos;-><init>()V

    .line 15
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 17
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v0, "lon"

    .line 22
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 25
    move-result-wide v5

    .line 26
    const-string v0, "lat"

    .line 28
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 31
    move-result-wide v7

    .line 32
    const-string v0, "course"

    .line 34
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 37
    move-result-wide v9

    .line 38
    double-to-float v0, v9

    .line 39
    const-string v9, "time"

    .line 41
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 44
    move-result-wide v9

    .line 45
    const-string v11, "alt"

    .line 47
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 50
    move-result-wide v11

    .line 51
    double-to-float v11, v11

    .line 52
    float-to-double v11, v11

    .line 53
    const-string v13, "speed"

    .line 55
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 58
    move-result-wide v13

    .line 59
    double-to-float v13, v13

    .line 60
    const-string v14, "satnum"

    .line 62
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 65
    move-result v14

    .line 66
    const-string v15, "gpsStatus"

    .line 68
    move/from16 p1, v0

    .line 70
    const-string v0, "A"

    .line 72
    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    iget v15, v1, Loy;->q:I

    .line 78
    move/from16 v16, v14

    .line 80
    int-to-long v14, v15

    .line 81
    const-wide/32 v17, 0x36ee80

    .line 84
    mul-long v14, v14, v17

    .line 86
    add-long/2addr v9, v14

    .line 87
    const-string v14, "ticktime64"

    .line 89
    move-wide/from16 v17, v11

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 94
    move-result-wide v11

    .line 95
    invoke-virtual {v4, v14, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 98
    move-result-wide v11

    .line 99
    const-string v14, "ns"

    .line 101
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    move-result-object v14

    .line 105
    const-string v15, "====zwb LocationFrontEndFusion ns = {?}"

    .line 107
    move-wide/from16 v19, v11

    .line 109
    const/4 v11, 0x1

    .line 110
    new-array v12, v11, [Ljava/lang/Object;

    .line 112
    const/4 v11, 0x0

    .line 113
    aput-object v14, v12, v11

    .line 115
    invoke-static {v15, v12}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    const/16 v12, 0x4e

    .line 120
    invoke-virtual {v1, v14, v12}, Liy;->N(Ljava/lang/String;B)B

    .line 123
    move-result v12

    .line 124
    const-string v14, "====zwb LocationFrontEndFusion nsByte = {?}"

    .line 126
    const/4 v15, 0x1

    .line 127
    new-array v11, v15, [Ljava/lang/Object;

    .line 129
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 132
    move-result-object v15

    .line 133
    const/16 v21, 0x0

    .line 135
    aput-object v15, v11, v21

    .line 137
    invoke-static {v14, v11}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    const-string v11, "ew"

    .line 142
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object v11

    .line 146
    const/16 v14, 0x45

    .line 148
    invoke-virtual {v1, v11, v14}, Liy;->N(Ljava/lang/String;B)B

    .line 151
    move-result v11

    .line 152
    const-string v14, "hdop"

    .line 154
    move/from16 v22, v11

    .line 156
    move v15, v12

    .line 157
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 159
    move/from16 v23, v15

    .line 161
    invoke-virtual {v4, v14, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 164
    move-result-wide v14

    .line 165
    double-to-float v14, v14

    .line 166
    const-string v15, "vdop"

    .line 168
    move/from16 v24, v14

    .line 170
    invoke-virtual {v4, v15, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 173
    move-result-wide v14

    .line 174
    double-to-float v14, v14

    .line 175
    const-string v15, "pdop"

    .line 177
    invoke-virtual {v4, v15, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 180
    move-result-wide v11

    .line 181
    double-to-float v11, v11

    .line 182
    const/16 v12, 0x41

    .line 184
    invoke-virtual {v1, v0, v12}, Liy;->N(Ljava/lang/String;B)B

    .line 187
    move-result v0

    .line 188
    const-string v12, "posAcc"

    .line 190
    move v15, v11

    .line 191
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 194
    move-result-wide v11

    .line 195
    double-to-float v11, v11

    .line 196
    const-string v12, "courseAcc"

    .line 198
    move/from16 v25, v11

    .line 200
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 203
    move-result-wide v11

    .line 204
    double-to-float v11, v11

    .line 205
    const-string v12, "altAcc"

    .line 207
    move/from16 v26, v11

    .line 209
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 212
    move-result-wide v11

    .line 213
    double-to-float v11, v11

    .line 214
    const-string v12, "speedAcc"

    .line 216
    move/from16 v27, v11

    .line 218
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 221
    move-result-wide v11

    .line 222
    double-to-float v11, v11

    .line 223
    const-string v12, "DRStatus"

    .line 225
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 228
    move-result v12

    .line 229
    move/from16 v28, v15

    .line 231
    const-string v15, "moveStatus"

    .line 233
    move/from16 v29, v11

    .line 235
    const/4 v11, 0x0

    .line 236
    invoke-virtual {v4, v15, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 239
    move-result v15

    .line 240
    const-string v11, "isDeltaAltValid"

    .line 242
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 245
    move-result v11

    .line 246
    move/from16 v30, v11

    .line 248
    const-string v11, "deltaAlt"

    .line 250
    move/from16 v31, v12

    .line 252
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 255
    move-result-wide v11

    .line 256
    double-to-float v11, v11

    .line 257
    const-string v12, "isDeltaAltAccValid"

    .line 259
    move/from16 v32, v11

    .line 261
    const/4 v11, 0x0

    .line 262
    invoke-virtual {v4, v12, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 265
    move-result v12

    .line 266
    const-string v11, "deltaAltAcc"

    .line 268
    move/from16 v33, v12

    .line 270
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 273
    move-result-wide v11

    .line 274
    double-to-float v11, v11

    .line 275
    const-string v12, "isSlopeValueValid"

    .line 277
    move/from16 v34, v11

    .line 279
    const/4 v11, 0x0

    .line 280
    invoke-virtual {v4, v12, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 283
    move-result v12

    .line 284
    const-string v11, "slopeValue"

    .line 286
    move/from16 v35, v12

    .line 288
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 291
    move-result-wide v11

    .line 292
    double-to-float v11, v11

    .line 293
    const-string v12, "isSlopeAccValid"

    .line 295
    move/from16 v36, v15

    .line 297
    const/4 v15, 0x0

    .line 298
    invoke-virtual {v4, v12, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 301
    move-result v12

    .line 302
    const-string v15, "slopeAcc"

    .line 304
    move/from16 v37, v14

    .line 306
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 309
    move-result-wide v14

    .line 310
    double-to-float v14, v14

    .line 311
    const-string v15, "isMoveDistValid"

    .line 313
    move/from16 v38, v14

    .line 315
    const/4 v14, 0x0

    .line 316
    invoke-virtual {v4, v15, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 319
    move-result v15

    .line 320
    const-string v14, "moveDist"

    .line 322
    move/from16 v39, v15

    .line 324
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 327
    move-result-wide v14

    .line 328
    new-instance v4, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 330
    move-wide/from16 v40, v14

    .line 332
    const/4 v14, 0x0

    .line 333
    invoke-direct {v4, v2, v14, v14}, Lcom/amap/location/support/bean/location/AmapLocation;-><init>(Ljava/lang/String;II)V

    .line 336
    invoke-virtual {v4, v5, v6}, Lcom/amap/location/type/location/Location;->setLongitude(D)V

    .line 339
    invoke-virtual {v4, v7, v8}, Lcom/amap/location/type/location/Location;->setLatitude(D)V

    .line 342
    invoke-virtual {v4, v9, v10}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    .line 345
    move-wide/from16 v14, v17

    .line 347
    invoke-virtual {v4, v14, v15}, Lcom/amap/location/type/location/Location;->setAltitude(D)V

    .line 350
    invoke-virtual {v4, v11}, Lcom/amap/location/type/location/Location;->setBearing(F)V

    .line 353
    invoke-virtual {v4, v2}, Lcom/amap/location/type/location/Location;->setProvider(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v4, v13}, Lcom/amap/location/type/location/Location;->setSpeed(F)V

    .line 359
    iput-object v4, v1, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 361
    new-instance v2, Landroid/text/format/Time;

    .line 363
    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 366
    invoke-virtual {v2, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 369
    new-instance v4, Lcom/autonavi/amapauto/location/model/GPSDatetime;

    .line 371
    invoke-direct {v4}, Lcom/autonavi/amapauto/location/model/GPSDatetime;-><init>()V

    .line 374
    iget v9, v2, Landroid/text/format/Time;->year:I

    .line 376
    iput v9, v4, Lcom/autonavi/amapauto/location/model/GPSDatetime;->year:I

    .line 378
    iget v9, v2, Landroid/text/format/Time;->month:I

    .line 380
    const/4 v10, 0x1

    .line 381
    add-int/2addr v9, v10

    .line 382
    iput v9, v4, Lcom/autonavi/amapauto/location/model/GPSDatetime;->month:I

    .line 384
    iget v9, v2, Landroid/text/format/Time;->monthDay:I

    .line 386
    iput v9, v4, Lcom/autonavi/amapauto/location/model/GPSDatetime;->day:I

    .line 388
    iget v9, v2, Landroid/text/format/Time;->hour:I

    .line 390
    iput v9, v4, Lcom/autonavi/amapauto/location/model/GPSDatetime;->hour:I

    .line 392
    iget v9, v2, Landroid/text/format/Time;->minute:I

    .line 394
    iput v9, v4, Lcom/autonavi/amapauto/location/model/GPSDatetime;->minute:I

    .line 396
    iget v2, v2, Landroid/text/format/Time;->second:I

    .line 398
    iput v2, v4, Lcom/autonavi/amapauto/location/model/GPSDatetime;->second:I

    .line 400
    iput-object v4, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->dateTime:Lcom/autonavi/amapauto/location/model/GPSDatetime;

    .line 402
    const/16 v2, 0x200

    .line 404
    iput v2, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->dataType:I

    .line 406
    iput-wide v7, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->stLat:D

    .line 408
    iput-wide v5, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->stLon:D

    .line 410
    double-to-float v2, v14

    .line 411
    iput v2, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->alt:F

    .line 413
    iput v11, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->slopeValue:F

    .line 415
    iput v13, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->speed:F

    .line 417
    move-wide/from16 v4, v19

    .line 419
    iput-wide v4, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->tickTime:J

    .line 421
    move/from16 v2, v23

    .line 423
    iput-byte v2, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->NS:B

    .line 425
    move/from16 v2, v22

    .line 427
    iput-byte v2, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->EW:B

    .line 429
    move/from16 v2, v16

    .line 431
    iput v2, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->satNum:I

    .line 433
    move/from16 v2, v24

    .line 435
    iput v2, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->hdop:F

    .line 437
    move/from16 v2, v37

    .line 439
    iput v2, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->vdop:F

    .line 441
    move/from16 v2, v28

    .line 443
    iput v2, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->pdop:F

    .line 445
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->gpsStatus:I

    .line 447
    move/from16 v0, v36

    .line 449
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->moveStatus:I

    .line 451
    move/from16 v0, v31

    .line 453
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->drType:I

    .line 455
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocViaductValid;

    .line 457
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocViaductValid;-><init>()V

    .line 460
    move/from16 v2, v30

    .line 462
    iput-boolean v2, v0, Lcom/autonavi/amapauto/location/model/LocViaductValid;->deltaAlt:Z

    .line 464
    move/from16 v2, v33

    .line 466
    iput-boolean v2, v0, Lcom/autonavi/amapauto/location/model/LocViaductValid;->deltaAltAcc:Z

    .line 468
    move/from16 v2, v35

    .line 470
    iput-boolean v2, v0, Lcom/autonavi/amapauto/location/model/LocViaductValid;->slopeValue:Z

    .line 472
    iput-boolean v12, v0, Lcom/autonavi/amapauto/location/model/LocViaductValid;->slopeAcc:Z

    .line 474
    move/from16 v2, v39

    .line 476
    iput-boolean v2, v0, Lcom/autonavi/amapauto/location/model/LocViaductValid;->moveDist:Z

    .line 478
    iput-object v0, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->validField:Lcom/autonavi/amapauto/location/model/LocViaductValid;

    .line 480
    move/from16 v0, v32

    .line 482
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->deltaAlt:F

    .line 484
    move/from16 v0, v34

    .line 486
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->deltaAltAcc:F

    .line 488
    iput v11, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->slopeValue:F

    .line 490
    move/from16 v0, v38

    .line 492
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->slopeAcc:F

    .line 494
    move-wide/from16 v4, v40

    .line 496
    iput-wide v4, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->moveDist:D

    .line 498
    move/from16 v0, v25

    .line 500
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->posAcc:F

    .line 502
    move/from16 v0, v26

    .line 504
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->courseAcc:F

    .line 506
    move/from16 v0, v27

    .line 508
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->altAcc:F

    .line 510
    move/from16 v0, v29

    .line 512
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->speedAcc:F

    .line 514
    move/from16 v0, p1

    .line 516
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->course:F

    .line 518
    invoke-static {}, Lse;->c()Lse;

    .line 521
    move-result-object v0

    .line 522
    iget v2, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->speed:F

    .line 524
    invoke-virtual {v0, v2}, Lse;->getSpeedoMeter(F)F

    .line 527
    move-result v0

    .line 528
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->speedoMeter:F

    .line 530
    iget-wide v4, v1, Liy;->D:J

    .line 532
    const-wide/16 v6, 0x0

    .line 534
    cmp-long v0, v4, v6

    .line 536
    if-nez v0, :cond_1

    .line 538
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 541
    move-result-wide v4

    .line 542
    goto :goto_0

    .line 543
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 546
    move-result-wide v4

    .line 547
    iget-wide v6, v1, Liy;->D:J

    .line 549
    sub-long/2addr v4, v6

    .line 550
    :goto_0
    long-to-int v0, v4

    .line 551
    int-to-long v4, v0

    .line 552
    iput-wide v4, v1, Liy;->D:J

    .line 554
    long-to-int v0, v4

    .line 555
    iput v0, v3, Lcom/autonavi/amapauto/location/model/LocDrPos;->interval:I

    .line 557
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 560
    move-result-wide v4

    .line 561
    iput-wide v4, v1, Liy;->D:J

    .line 563
    invoke-static {}, Lzx;->h()Lzx;

    .line 566
    move-result-object v0

    .line 567
    invoke-virtual {v0, v3}, Lzx;->u(Lcom/autonavi/amapauto/location/model/LocDrPos;)V

    .line 570
    iget-object v0, v1, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 572
    if-eqz v0, :cond_2

    .line 574
    iget-object v2, v1, Loy;->o:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 576
    if-eqz v2, :cond_2

    .line 578
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 581
    move-result-object v0

    .line 582
    invoke-virtual {v2, v0}, Lcom/amap/location/type/location/Location;->setProvider(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    goto :goto_1

    .line 586
    :catch_0
    move-exception v0

    .line 587
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 590
    :cond_2
    :goto_1
    return-void
.end method

.method public final P()V
    .locals 0

    .line 1
    return-void
.end method

.method public final Q(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "====zwb LocationFrontEndFusion sendMapMatchFeedback locMMFeedback = {?}"

    .line 9
    invoke-static {v3, v1}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    if-nez p1, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v3

    .line 22
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    move-result-object v3

    .line 26
    aput-object v3, v1, v2

    .line 28
    iget-wide v3, p1, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->ticktime:J

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    move-result-object v3

    .line 34
    aput-object v3, v1, v0

    .line 36
    const-string v3, "DRS sendMapMatchFeedback elapsedRealtime = {?} ticktime = {?}"

    .line 38
    invoke-static {v3, v1}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Lse;->c()Lse;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, p1}, Lse;->getMapMatchFeedbackInfo(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 55
    return-void

    .line 56
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    aput-object p1, v0, v2

    .line 60
    const-string v1, "====zwb LocationFrontEndFusion sendMapMatchFeedback json = {?}"

    .line 62
    invoke-static {v1, v0}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    new-instance v0, Landroid/os/Bundle;

    .line 67
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v1, "AmapAutoMMF"

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lrv;->H()Lrv;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 82
    move-result-object p1

    .line 83
    const-string v2, "location"

    .line 85
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Landroid/location/LocationManager;

    .line 91
    const-string v2, "gps"

    .line 93
    invoke-virtual {p1, v2, v1, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 96
    return-void
.end method

.method public final R()V
    .locals 11

    .line 1
    iget-object v0, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lse;->c()Lse;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Le;

    .line 11
    iget-object v2, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 13
    invoke-direct {v1, v2}, Le;-><init>(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 16
    invoke-virtual {v0, v1}, Lse;->getLocationInfoV2(Le;)Lcom/autonavi/amapauto/location/model/LocDrPos;

    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_1

    .line 25
    const-string v0, "DRS setLocDRPos locationInfo is null"

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    invoke-static {v0, v1}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return-void

    .line 33
    :cond_1
    const/4 v2, 0x3

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    move-result-wide v3

    .line 40
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    move-result-object v3

    .line 44
    aput-object v3, v2, v1

    .line 46
    iget-wide v3, v0, Lcom/autonavi/amapauto/location/model/LocDrPos;->tickTime:J

    .line 48
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    move-result-object v3

    .line 52
    const/4 v4, 0x1

    .line 53
    aput-object v3, v2, v4

    .line 55
    iget v3, v0, Lcom/autonavi/amapauto/location/model/LocDrPos;->moveStatus:I

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v3

    .line 61
    const/4 v5, 0x2

    .line 62
    aput-object v3, v2, v5

    .line 64
    const-string v3, "DRS setLocDRPos elapsedRealtime = {?} ticktime = {?} moveStatus = {?}"

    .line 66
    invoke-static {v3, v2}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0, v0}, Liy;->M(Lcom/autonavi/amapauto/location/model/LocDrPos;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 72
    move-result-object v2

    .line 73
    iget v3, v0, Lcom/autonavi/amapauto/location/model/LocDrPos;->drType:I

    .line 75
    iget-object v6, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 77
    invoke-virtual {v6}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 80
    move-result-object v6

    .line 81
    const-string v7, "network"

    .line 83
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_2

    .line 89
    invoke-static {}, Lzx;->h()Lzx;

    .line 92
    move-result-object v0

    .line 93
    iget-object v3, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 95
    invoke-virtual {v0, v3}, Lzx;->r(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 98
    const/4 v3, 0x0

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    invoke-static {}, Lse;->c()Lse;

    .line 103
    move-result-object v6

    .line 104
    iget v7, v0, Lcom/autonavi/amapauto/location/model/LocDrPos;->speed:F

    .line 106
    invoke-virtual {v6, v7}, Lse;->getSpeedoMeter(F)F

    .line 109
    move-result v6

    .line 110
    iput v6, v0, Lcom/autonavi/amapauto/location/model/LocDrPos;->speedoMeter:F

    .line 112
    iget-wide v6, p0, Loy;->r:J

    .line 114
    const-wide/16 v8, 0x0

    .line 116
    cmp-long v10, v6, v8

    .line 118
    if-nez v10, :cond_3

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 123
    move-result-wide v6

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 128
    move-result-wide v6

    .line 129
    iget-wide v8, p0, Loy;->r:J

    .line 131
    sub-long/2addr v6, v8

    .line 132
    :goto_1
    long-to-int v7, v6

    .line 133
    int-to-long v6, v7

    .line 134
    iput-wide v6, p0, Loy;->r:J

    .line 136
    long-to-int v7, v6

    .line 137
    iput v7, v0, Lcom/autonavi/amapauto/location/model/LocDrPos;->interval:I

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 142
    move-result-wide v6

    .line 143
    iput-wide v6, p0, Loy;->r:J

    .line 145
    invoke-static {}, Lzx;->h()Lzx;

    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v6, v0}, Lzx;->u(Lcom/autonavi/amapauto/location/model/LocDrPos;)V

    .line 152
    :goto_2
    new-array v0, v4, [Ljava/lang/Object;

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object v6

    .line 158
    aput-object v6, v0, v1

    .line 160
    const-string v6, "LocationFrontEndFusion"

    .line 162
    const-string v7, "handleCalibration calibrationStatus = {?},{?},"

    .line 164
    invoke-static {v6, v7, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    if-eq v3, v5, :cond_5

    .line 169
    if-ne v3, v4, :cond_4

    .line 171
    goto :goto_3

    .line 172
    :cond_4
    const/4 v1, 0x1

    .line 173
    :cond_5
    :goto_3
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/PosService;->drCalibration(I)V

    .line 176
    iput-object v2, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 178
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "LocationFrontEndFusion"

    .line 9
    const-string v2, "DR LocationFrontEndFusion notifyLocDrPos drPos = {?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0, p1}, Liy;->O(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Loy;->g:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x0

    .line 14
    cmpl-double v4, v0, v2

    .line 16
    if-nez v4, :cond_1

    .line 18
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 21
    move-result-wide v0

    .line 22
    cmpl-double v4, v0, v2

    .line 24
    if-nez v4, :cond_1

    .line 26
    goto/16 :goto_1

    .line 28
    :cond_1
    const-string v0, "LocationFrontEndFusion"

    .line 30
    const-string v1, "onLocationChanged: longitude and latitude is {?},{?},"

    .line 32
    const/4 v2, 0x2

    .line 33
    new-array v3, v2, [Ljava/lang/Object;

    .line 35
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 38
    move-result-wide v4

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 42
    move-result-object v4

    .line 43
    const/4 v5, 0x0

    .line 44
    aput-object v4, v3, v5

    .line 46
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 49
    move-result-wide v6

    .line 50
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 53
    move-result-object v4

    .line 54
    const/4 v6, 0x1

    .line 55
    aput-object v4, v3, v6

    .line 57
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    const-string v0, "LocationFrontEndFusion"

    .line 62
    const-string v1, "onLocationChanged: time={?}, direction={?}, speed={?}, isGPS={?}"

    .line 64
    const/4 v3, 0x4

    .line 65
    new-array v3, v3, [Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 70
    move-result-wide v7

    .line 71
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    move-result-object v4

    .line 75
    aput-object v4, v3, v5

    .line 77
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getBearing()F

    .line 80
    move-result v4

    .line 81
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    move-result-object v4

    .line 85
    aput-object v4, v3, v6

    .line 87
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    .line 90
    move-result v4

    .line 91
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 94
    move-result-object v4

    .line 95
    aput-object v4, v3, v2

    .line 97
    const-string v2, "gps"

    .line 99
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v2

    .line 107
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    move-result-object v2

    .line 111
    const/4 v4, 0x3

    .line 112
    aput-object v2, v3, v4

    .line 114
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    const-string v0, "gps"

    .line 119
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_2

    .line 129
    iget v0, p0, Loy;->q:I

    .line 131
    int-to-long v0, v0

    .line 132
    const-wide/32 v2, 0x36ee80

    .line 135
    mul-long v0, v0, v2

    .line 137
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 140
    move-result-wide v2

    .line 141
    add-long/2addr v2, v0

    .line 142
    invoke-virtual {p1, v2, v3}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Loy;->B:Landroid/os/Handler;

    .line 148
    const/16 v1, 0xf3

    .line 150
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 157
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {p0, v5}, Loy;->J(I)V

    .line 161
    goto :goto_0

    .line 162
    :catchall_0
    move-exception p1

    .line 163
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    throw p1

    .line 165
    :cond_2
    :goto_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 172
    move-result-object v0

    .line 173
    invoke-static {v0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 180
    move-result-wide v1

    .line 181
    const-wide v3, 0x412e848000000000L    # 1000000.0

    .line 186
    mul-double v1, v1, v3

    .line 188
    double-to-int v1, v1

    .line 189
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 192
    move-result-wide v5

    .line 193
    mul-double v5, v5, v3

    .line 195
    double-to-int v2, v5

    .line 196
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 199
    move-result v3

    .line 200
    float-to-int v3, v3

    .line 201
    invoke-virtual {v0, v1, v2, v3}, Lsi;->X(III)V

    .line 204
    iget-object v0, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 206
    if-eqz v0, :cond_3

    .line 208
    iget-object v1, p0, Loy;->o:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 210
    if-eqz v1, :cond_3

    .line 212
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v1, v0}, Lcom/amap/location/type/location/Location;->setProvider(Ljava/lang/String;)V

    .line 219
    :cond_3
    const-string v0, "gps"

    .line 221
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Loy;->B:Landroid/os/Handler;

    .line 233
    const/16 v1, 0xf2

    .line 235
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 242
    :cond_4
    iput-object p1, p0, Loy;->p:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 244
    invoke-virtual {p0}, Liy;->R()V

    .line 247
    :cond_5
    :goto_1
    return-void
.end method

.method public onMapMatchFeedbackUpdate(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Loy;->onMapMatchFeedbackUpdate(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const/4 v1, 0x0

    .line 8
    aput-object p1, v0, v1

    .line 10
    const-string v1, "====zwb LocationFrontEndFusion onMapMatchFeedbackUpdate locMMFeedbackInfo = {?}"

    .line 12
    invoke-static {v1, v0}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p0, p1}, Liy;->Q(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)V

    .line 18
    return-void
.end method
