.class public abstract Lvy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/location/Location;)Lcom/autonavi/amapauto/location/model/LocDrPos;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lvy;->b(Landroid/location/Location;I)Lcom/autonavi/amapauto/location/model/LocDrPos;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static b(Landroid/location/Location;I)Lcom/autonavi/amapauto/location/model/LocDrPos;
    .locals 47

    .line 1
    const-string v0, "DR"

    .line 3
    new-instance v1, Lcom/autonavi/amapauto/location/model/LocDrPos;

    .line 5
    invoke-direct {v1}, Lcom/autonavi/amapauto/location/model/LocDrPos;-><init>()V

    .line 8
    if-nez p0, :cond_0

    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    .line 14
    move-result-wide v2

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    .line 18
    move-result-wide v4

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    .line 22
    move-result-wide v6

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    .line 26
    move-result v8

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    .line 30
    move-result-wide v9

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    .line 34
    move-result v11

    .line 35
    invoke-static {}, Lzm;->d()Lzm;

    .line 38
    move-result-object v12

    .line 39
    invoke-virtual {v12}, Lzm;->b()I

    .line 42
    move-result v12

    .line 43
    int-to-long v12, v12

    .line 44
    const-wide/32 v14, 0x36ee80

    .line 47
    mul-long v12, v12, v14

    .line 49
    add-long/2addr v12, v9

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 53
    move-result-wide v16

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    .line 57
    move-result v18

    .line 58
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    .line 61
    move-result-object v14

    .line 62
    if-eqz v14, :cond_1

    .line 64
    const-string v15, "AmapAutoDRPos"

    .line 66
    invoke-virtual {v14, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v14

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 v14, 0x0

    .line 72
    :goto_0
    const-string v15, "LocationUtils getLocationInfo drPos:{?}, speedRate:{?} ,timeLong:{?} ,timeReal:{?}"

    .line 74
    move-wide/from16 v21, v2

    .line 76
    const/4 v2, 0x4

    .line 77
    new-array v2, v2, [Ljava/lang/Object;

    .line 79
    const/4 v3, 0x0

    .line 80
    aput-object v14, v2, v3

    .line 82
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v23

    .line 86
    const/4 v3, 0x1

    .line 87
    aput-object v23, v2, v3

    .line 89
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    move-result-object v9

    .line 93
    const/4 v10, 0x2

    .line 94
    aput-object v9, v2, v10

    .line 96
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    move-result-object v9

    .line 100
    const/16 v23, 0x3

    .line 102
    aput-object v9, v2, v23

    .line 104
    invoke-static {v0, v15, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    const-string v9, "network"

    .line 113
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    move-result v2

    .line 117
    const/16 v15, 0x45

    .line 119
    if-nez v2, :cond_2

    .line 121
    if-eqz v14, :cond_2

    .line 123
    new-instance v2, Lorg/json/JSONObject;

    .line 125
    invoke-direct {v2, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    .line 131
    move-result-wide v4

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    .line 135
    move-result-wide v6

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    .line 139
    move-result-wide v11

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    .line 143
    move-result v8

    .line 144
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    .line 147
    move-result-wide v13

    .line 148
    const-string v3, "speed"

    .line 150
    move-wide/from16 v16, v11

    .line 152
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 155
    move-result-wide v10

    .line 156
    double-to-float v11, v10

    .line 157
    invoke-static {}, Lzm;->d()Lzm;

    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v3}, Lzm;->b()I

    .line 164
    move-result v3

    .line 165
    int-to-long v9, v3

    .line 166
    const-wide/32 v18, 0x36ee80

    .line 169
    mul-long v9, v9, v18

    .line 171
    add-long v12, v13, v9

    .line 173
    const-string v3, "ticktime64"

    .line 175
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 178
    move-result-wide v9

    .line 179
    invoke-virtual {v2, v3, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 182
    move-result-wide v9

    .line 183
    const-string v3, "ns"

    .line 185
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v3

    .line 189
    const/16 v14, 0x4e

    .line 191
    invoke-static {v3, v14}, Lvy;->c(Ljava/lang/String;B)B

    .line 194
    move-result v3

    .line 195
    const-string v14, "ew"

    .line 197
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    move-result-object v14

    .line 201
    invoke-static {v14, v15}, Lvy;->c(Ljava/lang/String;B)B

    .line 204
    move-result v15

    .line 205
    const-string v14, "satnum"

    .line 207
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 210
    move-result v14

    .line 211
    move/from16 p0, v3

    .line 213
    const-string v3, "hdop"

    .line 215
    move-wide/from16 v18, v4

    .line 217
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 219
    move-wide/from16 v20, v6

    .line 221
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 224
    move-result-wide v6

    .line 225
    double-to-float v3, v6

    .line 226
    const-string v6, "vdop"

    .line 228
    invoke-virtual {v2, v6, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 231
    move-result-wide v6

    .line 232
    double-to-float v6, v6

    .line 233
    const-string v7, "pdop"

    .line 235
    invoke-virtual {v2, v7, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 238
    move-result-wide v4

    .line 239
    double-to-float v4, v4

    .line 240
    const-string v5, "gpsStatus"

    .line 242
    const-string v7, "A"

    .line 244
    invoke-virtual {v2, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    move-result-object v5

    .line 248
    const/16 v7, 0x41

    .line 250
    invoke-static {v5, v7}, Lvy;->c(Ljava/lang/String;B)B

    .line 253
    move-result v5

    .line 254
    const-string v7, "posAcc"

    .line 256
    move/from16 v22, v3

    .line 258
    move/from16 v25, v4

    .line 260
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 263
    move-result-wide v3

    .line 264
    double-to-float v3, v3

    .line 265
    const-string v4, "courseAcc"

    .line 267
    move v7, v3

    .line 268
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 271
    move-result-wide v3

    .line 272
    double-to-float v3, v3

    .line 273
    const-string v4, "altAcc"

    .line 275
    move/from16 v26, v3

    .line 277
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 280
    move-result-wide v3

    .line 281
    double-to-float v3, v3

    .line 282
    const-string v4, "speedAcc"

    .line 284
    move/from16 v27, v3

    .line 286
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 289
    move-result-wide v3

    .line 290
    double-to-float v3, v3

    .line 291
    const-string v4, "DRStatus"

    .line 293
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 296
    move-result v4

    .line 297
    move/from16 v28, v3

    .line 299
    const-string v3, "moveStatus"

    .line 301
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 304
    move-result v3

    .line 305
    move/from16 v29, v3

    .line 307
    const-string v3, "isDeltaAltValid"

    .line 309
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 312
    move-result v3

    .line 313
    move/from16 v30, v3

    .line 315
    const-string v3, "deltaAlt"

    .line 317
    move/from16 v31, v4

    .line 319
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 322
    move-result-wide v3

    .line 323
    double-to-float v3, v3

    .line 324
    const-string v4, "isDeltaAltAccValid"

    .line 326
    move/from16 v32, v3

    .line 328
    const/4 v3, 0x0

    .line 329
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 332
    move-result v4

    .line 333
    const-string v3, "deltaAltAcc"

    .line 335
    move/from16 v33, v4

    .line 337
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 340
    move-result-wide v3

    .line 341
    double-to-float v3, v3

    .line 342
    const-string v4, "isSlopeValueValid"

    .line 344
    move/from16 v34, v3

    .line 346
    const/4 v3, 0x0

    .line 347
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 350
    move-result v4

    .line 351
    const-string v3, "slopeValue"

    .line 353
    move/from16 v35, v4

    .line 355
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 358
    move-result-wide v3

    .line 359
    double-to-float v3, v3

    .line 360
    const-string v4, "isSlopeAccValid"

    .line 362
    move/from16 v36, v3

    .line 364
    const/4 v3, 0x0

    .line 365
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 368
    move-result v4

    .line 369
    const-string v3, "slopeAcc"

    .line 371
    move/from16 v37, v4

    .line 373
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 376
    move-result-wide v3

    .line 377
    double-to-float v3, v3

    .line 378
    const-string v4, "isMoveDistValid"

    .line 380
    move/from16 v38, v3

    .line 382
    const/4 v3, 0x0

    .line 383
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 386
    move-result v4

    .line 387
    const-string v3, "moveDist"

    .line 389
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 392
    move-result-wide v2

    .line 393
    move/from16 v42, v7

    .line 395
    move/from16 v41, v8

    .line 397
    move-wide v7, v12

    .line 398
    move-wide/from16 v12, v16

    .line 400
    move/from16 v39, v27

    .line 402
    move/from16 v40, v28

    .line 404
    move/from16 v28, v30

    .line 406
    move/from16 v27, v33

    .line 408
    move-wide/from16 v16, v2

    .line 410
    move/from16 v33, v6

    .line 412
    move-wide/from16 v2, v18

    .line 414
    move/from16 v19, v26

    .line 416
    move/from16 v30, v29

    .line 418
    move/from16 v29, v31

    .line 420
    move/from16 v26, v35

    .line 422
    move/from16 v18, v38

    .line 424
    move/from16 v31, v5

    .line 426
    move/from16 v35, v15

    .line 428
    move v15, v14

    .line 429
    move v14, v11

    .line 430
    move-wide v10, v9

    .line 431
    move/from16 v9, v36

    .line 433
    move/from16 v36, v22

    .line 435
    move/from16 v22, v37

    .line 437
    move/from16 v45, v34

    .line 439
    move/from16 v34, p0

    .line 441
    move/from16 v46, v25

    .line 443
    move/from16 v25, v4

    .line 445
    move-wide/from16 v4, v20

    .line 447
    move/from16 v21, v32

    .line 449
    move/from16 v20, v45

    .line 451
    move/from16 v32, v46

    .line 453
    goto :goto_1

    .line 454
    :cond_2
    const/16 v2, 0x41

    .line 456
    const/16 v14, 0x4e

    .line 458
    const/high16 v3, -0x40800000    # -1.0f

    .line 460
    const/4 v9, 0x0

    .line 461
    const-wide/16 v19, 0x0

    .line 463
    move/from16 v41, v8

    .line 465
    move v14, v11

    .line 466
    move-wide/from16 v10, v16

    .line 468
    move/from16 v42, v18

    .line 470
    move-wide/from16 v16, v19

    .line 472
    move-wide/from16 v2, v21

    .line 474
    const/4 v15, 0x0

    .line 475
    const/16 v18, 0x0

    .line 477
    const/16 v19, 0x0

    .line 479
    const/16 v20, 0x0

    .line 481
    const/16 v21, 0x0

    .line 483
    const/16 v22, 0x0

    .line 485
    const/16 v25, 0x0

    .line 487
    const/16 v26, 0x0

    .line 489
    const/16 v27, 0x0

    .line 491
    const/16 v28, 0x0

    .line 493
    const/16 v29, 0x2

    .line 495
    const/16 v30, 0x0

    .line 497
    const/16 v31, 0x41

    .line 499
    const/high16 v32, -0x40800000    # -1.0f

    .line 501
    const/high16 v33, -0x40800000    # -1.0f

    .line 503
    const/16 v34, 0x4e

    .line 505
    const/16 v35, 0x45

    .line 507
    const/high16 v36, -0x40800000    # -1.0f

    .line 509
    const/16 v39, 0x0

    .line 511
    const/16 v40, 0x0

    .line 513
    move-wide/from16 v45, v6

    .line 515
    move-wide v7, v12

    .line 516
    move-wide/from16 v12, v45

    .line 518
    :goto_1
    new-instance v6, Landroid/text/format/Time;

    .line 520
    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 523
    move/from16 v37, v15

    .line 525
    const-string v15, "LocationUtils getLocationInfo zoneId:{?}"

    .line 527
    move-wide/from16 v43, v10

    .line 529
    const/4 v10, 0x1

    .line 530
    new-array v11, v10, [Ljava/lang/Object;

    .line 532
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 535
    move-result-object v10

    .line 536
    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 539
    move-result-object v10

    .line 540
    const/16 v24, 0x0

    .line 542
    aput-object v10, v11, v24

    .line 544
    invoke-static {v0, v15, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    invoke-virtual {v6, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 550
    new-instance v0, Lcom/autonavi/amapauto/location/model/GPSDatetime;

    .line 552
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/GPSDatetime;-><init>()V

    .line 555
    iget v7, v6, Landroid/text/format/Time;->year:I

    .line 557
    iput v7, v0, Lcom/autonavi/amapauto/location/model/GPSDatetime;->year:I

    .line 559
    iget v7, v6, Landroid/text/format/Time;->month:I

    .line 561
    const/4 v8, 0x1

    .line 562
    add-int/2addr v7, v8

    .line 563
    iput v7, v0, Lcom/autonavi/amapauto/location/model/GPSDatetime;->month:I

    .line 565
    iget v7, v6, Landroid/text/format/Time;->monthDay:I

    .line 567
    iput v7, v0, Lcom/autonavi/amapauto/location/model/GPSDatetime;->day:I

    .line 569
    iget v7, v6, Landroid/text/format/Time;->hour:I

    .line 571
    iput v7, v0, Lcom/autonavi/amapauto/location/model/GPSDatetime;->hour:I

    .line 573
    iget v7, v6, Landroid/text/format/Time;->minute:I

    .line 575
    iput v7, v0, Lcom/autonavi/amapauto/location/model/GPSDatetime;->minute:I

    .line 577
    iget v6, v6, Landroid/text/format/Time;->second:I

    .line 579
    iput v6, v0, Lcom/autonavi/amapauto/location/model/GPSDatetime;->second:I

    .line 581
    iput-object v0, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->dateTime:Lcom/autonavi/amapauto/location/model/GPSDatetime;

    .line 583
    const/16 v0, 0x200

    .line 585
    iput v0, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->dataType:I

    .line 587
    iput-wide v4, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->stLat:D

    .line 589
    iput-wide v2, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->stLon:D

    .line 591
    double-to-float v0, v12

    .line 592
    iput v0, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->alt:F

    .line 594
    iput v9, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->slopeAcc:F

    .line 596
    iput v14, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->speed:F

    .line 598
    move-wide/from16 v2, v43

    .line 600
    iput-wide v2, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->tickTime:J

    .line 602
    move/from16 v14, v34

    .line 604
    iput-byte v14, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->NS:B

    .line 606
    move/from16 v15, v35

    .line 608
    iput-byte v15, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->EW:B

    .line 610
    move/from16 v14, v37

    .line 612
    iput v14, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->satNum:I

    .line 614
    move/from16 v3, v36

    .line 616
    iput v3, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->hdop:F

    .line 618
    move/from16 v3, v33

    .line 620
    iput v3, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->vdop:F

    .line 622
    move/from16 v3, v32

    .line 624
    iput v3, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->pdop:F

    .line 626
    move/from16 v2, v31

    .line 628
    iput v2, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->gpsStatus:I

    .line 630
    if-gez p1, :cond_3

    .line 632
    const/4 v0, 0x2

    .line 633
    iput v0, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->moveStatus:I

    .line 635
    goto :goto_2

    .line 636
    :cond_3
    move/from16 v0, v30

    .line 638
    iput v0, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->moveStatus:I

    .line 640
    :goto_2
    move/from16 v0, v29

    .line 642
    iput v0, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->drType:I

    .line 644
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocViaductValid;

    .line 646
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocViaductValid;-><init>()V

    .line 649
    move/from16 v2, v28

    .line 651
    iput-boolean v2, v0, Lcom/autonavi/amapauto/location/model/LocViaductValid;->deltaAlt:Z

    .line 653
    move/from16 v2, v27

    .line 655
    iput-boolean v2, v0, Lcom/autonavi/amapauto/location/model/LocViaductValid;->deltaAltAcc:Z

    .line 657
    move/from16 v2, v26

    .line 659
    iput-boolean v2, v0, Lcom/autonavi/amapauto/location/model/LocViaductValid;->slopeValue:Z

    .line 661
    move/from16 v2, v22

    .line 663
    iput-boolean v2, v0, Lcom/autonavi/amapauto/location/model/LocViaductValid;->slopeAcc:Z

    .line 665
    move/from16 v4, v25

    .line 667
    iput-boolean v4, v0, Lcom/autonavi/amapauto/location/model/LocViaductValid;->moveDist:Z

    .line 669
    iput-object v0, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->validField:Lcom/autonavi/amapauto/location/model/LocViaductValid;

    .line 671
    move/from16 v0, v21

    .line 673
    iput v0, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->deltaAlt:F

    .line 675
    move/from16 v0, v20

    .line 677
    iput v0, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->deltaAltAcc:F

    .line 679
    iput v9, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->slopeValue:F

    .line 681
    move/from16 v9, v18

    .line 683
    iput v9, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->slopeAcc:F

    .line 685
    move-wide/from16 v2, v16

    .line 687
    iput-wide v2, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->moveDist:D

    .line 689
    move/from16 v7, v42

    .line 691
    iput v7, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->posAcc:F

    .line 693
    move/from16 v9, v19

    .line 695
    iput v9, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->courseAcc:F

    .line 697
    move/from16 v9, v39

    .line 699
    iput v9, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->altAcc:F

    .line 701
    move/from16 v9, v40

    .line 703
    iput v9, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->speedAcc:F

    .line 705
    move/from16 v8, v41

    .line 707
    iput v8, v1, Lcom/autonavi/amapauto/location/model/LocDrPos;->course:F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    goto :goto_3

    .line 710
    :catch_0
    move-exception v0

    .line 711
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 714
    :goto_3
    return-object v1
.end method

.method public static c(Ljava/lang/String;B)B
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_2

    .line 14
    array-length v0, p0

    .line 15
    if-gtz v0, :cond_1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    aget-byte p0, p0, p1

    .line 21
    return p0

    .line 22
    :cond_2
    :goto_0
    return p1
.end method

.method public static d(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)Ljava/lang/String;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v2, v1, v3

    .line 19
    iget-wide v4, p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->ticktime:J

    .line 21
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    move-result-object v2

    .line 25
    const/4 v4, 0x1

    .line 26
    aput-object v2, v1, v4

    .line 28
    const-string v2, "DR"

    .line 30
    const-string v5, "DRS LocationUtils sendMapMatchFeedback elapsedRealtime = {?} ticktime = {?}"

    .line 32
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 37
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 40
    const-string v2, "ticktime"

    .line 42
    iget-wide v5, p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->ticktime:J

    .line 44
    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 47
    new-instance v2, Lorg/json/JSONArray;

    .line 49
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 52
    iget-object p0, p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->feedbackNodes:Ljava/util/List;

    .line 54
    if-eqz p0, :cond_3

    .line 56
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 59
    move-result v5

    .line 60
    if-gtz v5, :cond_1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object p0

    .line 67
    check-cast p0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;

    .line 69
    new-instance v5, Lorg/json/JSONObject;

    .line 71
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 74
    iget-object v6, p0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->deltaPoint:Lcom/autonavi/amapauto/common/Coord3DDouble;

    .line 76
    if-eqz v6, :cond_2

    .line 78
    iget-wide v7, v6, Lcom/autonavi/amapauto/common/Coord3DDouble;->lon:D

    .line 80
    double-to-int v7, v7

    .line 81
    iget-wide v8, v6, Lcom/autonavi/amapauto/common/Coord3DDouble;->lat:D

    .line 83
    double-to-int v8, v8

    .line 84
    const-string v9, "lon"

    .line 86
    invoke-virtual {v5, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v7, "lat"

    .line 91
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v7, "zLevel"

    .line 96
    iget-wide v8, v6, Lcom/autonavi/amapauto/common/Coord3DDouble;->z:D

    .line 98
    invoke-virtual {v5, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 101
    :cond_2
    const-string v6, "roadAzi"

    .line 103
    iget v7, p0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->roadAzi:F

    .line 105
    float-to-double v7, v7

    .line 106
    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 109
    const-string v6, "probability"

    .line 111
    iget v7, p0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->probability:F

    .line 113
    float-to-double v7, v7

    .line 114
    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 117
    const-string v6, "feedBackType"

    .line 119
    iget v7, p0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->type:I

    .line 121
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    const-string v6, "roadWidth"

    .line 126
    iget v7, p0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->roadWidth:I

    .line 128
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string v6, "aziDiffRoad2DR"

    .line 133
    iget p0, p0, Lcom/autonavi/amapauto/location/model/LocFeedbackNode;->aziDiffRoad2DR:F

    .line 135
    float-to-double v7, p0

    .line 136
    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 139
    const-string p0, "headAccMM"

    .line 141
    invoke-virtual {v5, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    const-string p0, "posAccMM"

    .line 146
    invoke-virtual {v5, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 152
    const-string p0, "count"

    .line 154
    invoke-virtual {v1, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string p0, "feedbackNodes"

    .line 159
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 165
    move-result-object v0

    .line 166
    const-string p0, "DRS LocationUtils ====zwb LocationFrontEndFusion sendMapMatchFeedback json = {?}"

    .line 168
    new-array v1, v4, [Ljava/lang/Object;

    .line 170
    aput-object v0, v1, v3

    .line 172
    invoke-static {p0, v1}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_1

    .line 176
    :cond_3
    :goto_0
    return-object v0

    .line 177
    :catch_0
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    :goto_1
    return-object v0
.end method
