.class public Lcom/amap/location/e/a/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;ILcom/amap/location/support/bean/location/AmapLocation;[D)[D
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;",
            ">;",
            "Lcom/amap/location/support/bean/gnss/AmapGnssClock;",
            "I",
            "Lcom/amap/location/support/bean/location/AmapLocation;",
            "[D)[D"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 3
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x1a

    .line 9
    if-lt v1, v2, :cond_e

    .line 11
    if-eqz p0, :cond_e

    .line 13
    if-nez v0, :cond_0

    .line 15
    goto/16 :goto_8

    .line 17
    :cond_0
    const/16 v1, 0x11

    .line 19
    new-array v1, v1, [D

    .line 21
    iget v0, v0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->hardwareClockDiscontinuityCount:I

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz p2, :cond_1

    .line 27
    int-to-double v6, v0

    .line 28
    aget-wide v8, p4, v2

    .line 30
    sub-double/2addr v6, v8

    .line 31
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    .line 34
    move-result-wide v6

    .line 35
    if-eqz p3, :cond_2

    .line 37
    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/type/location/Location;->getAltitude()D

    .line 40
    move-result-wide v8

    .line 41
    aget-wide v10, p4, v3

    .line 43
    sub-double/2addr v8, v10

    .line 44
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    .line 47
    move-result-wide v8

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-wide/16 v6, 0x0

    .line 51
    :cond_2
    const-wide/16 v8, 0x0

    .line 53
    :goto_0
    int-to-double v10, v0

    .line 54
    aput-wide v10, p4, v2

    .line 56
    if-eqz p3, :cond_3

    .line 58
    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/type/location/Location;->getAltitude()D

    .line 61
    move-result-wide v12

    .line 62
    aput-wide v12, p4, v3

    .line 64
    :cond_3
    new-instance v0, Ljava/util/TreeMap;

    .line 66
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 69
    new-instance v12, Ljava/util/TreeMap;

    .line 71
    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    .line 74
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 77
    move-result v13

    .line 78
    const/16 v14, 0xe

    .line 80
    const/16 v15, 0xd

    .line 82
    if-nez v13, :cond_4

    .line 84
    aput-wide v10, v1, v2

    .line 86
    aput-wide v6, v1, v15

    .line 88
    aput-wide v8, v1, v14

    .line 90
    return-object v1

    .line 91
    :cond_4
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    move-result-object v13

    .line 95
    const/4 v4, 0x0

    .line 96
    const/4 v5, 0x0

    .line 97
    const/4 v14, 0x0

    .line 98
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result v18

    .line 102
    if-eqz v18, :cond_9

    .line 104
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    move-result-object v18

    .line 108
    move-object/from16 v15, v18

    .line 110
    check-cast v15, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;

    .line 112
    add-int/lit8 v5, v5, 0x1

    .line 114
    iget-wide v2, v15, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->pseudorangeRateUncertaintyMetersPerSecond:D

    .line 116
    const-wide v19, 0x41b1d260c0000000L    # 2.99E8

    .line 121
    const-wide/16 v21, 0x1

    .line 123
    cmpg-double v23, v2, v19

    .line 125
    if-gez v23, :cond_6

    .line 127
    add-int/lit8 v4, v4, 0x1

    .line 129
    move/from16 p0, v4

    .line 131
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_5

    .line 141
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Ljava/lang/Long;

    .line 151
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 154
    move-result-wide v19

    .line 155
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 158
    move-result-object v2

    .line 159
    add-long v19, v19, v21

    .line 161
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    goto :goto_2

    .line 169
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 172
    move-result-object v2

    .line 173
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :goto_2
    move/from16 v4, p0

    .line 182
    :cond_6
    iget-wide v2, v15, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->receivedSvTimeUncertaintyNanos:J

    .line 184
    long-to-double v2, v2

    .line 185
    const-wide v19, 0x41cdcd64ff800000L    # 9.99999999E8

    .line 190
    cmpg-double v15, v2, v19

    .line 192
    if-gez v15, :cond_8

    .line 194
    add-int/lit8 v14, v14, 0x1

    .line 196
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 199
    move-result-object v15

    .line 200
    invoke-virtual {v12, v15}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 203
    move-result v15

    .line 204
    if-eqz v15, :cond_7

    .line 206
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 209
    move-result-object v15

    .line 210
    invoke-virtual {v12, v15}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    move-result-object v15

    .line 214
    check-cast v15, Ljava/lang/Long;

    .line 216
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 219
    move-result-wide v19

    .line 220
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 223
    move-result-object v2

    .line 224
    add-long v19, v19, v21

    .line 226
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v12, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    goto :goto_3

    .line 234
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 237
    move-result-object v2

    .line 238
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v12, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_8
    :goto_3
    const/4 v2, 0x0

    .line 246
    const/4 v3, 0x1

    .line 247
    const/16 v15, 0xd

    .line 249
    goto/16 :goto_1

    .line 251
    :cond_9
    const-string v13, "0.25,0.5,0.75"

    .line 253
    const-string v15, "e"

    .line 255
    if-lez v4, :cond_b

    .line 257
    invoke-static {v0, v13, v15}, Lcom/amap/location/e/a/a/f;->a(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 260
    move-result-object v2

    .line 261
    const/4 v3, 0x1

    .line 262
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 265
    move-result-object v22

    .line 266
    check-cast v22, Ljava/lang/Double;

    .line 268
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    .line 271
    move-result-wide v22

    .line 272
    const/4 v3, 0x3

    .line 273
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 276
    move-result-object v24

    .line 277
    check-cast v24, Ljava/lang/Double;

    .line 279
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    .line 282
    move-result-wide v24

    .line 283
    const/4 v3, 0x4

    .line 284
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 287
    move-result-object v26

    .line 288
    check-cast v26, Ljava/lang/Double;

    .line 290
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Double;->doubleValue()D

    .line 293
    move-result-wide v26

    .line 294
    const/4 v3, 0x5

    .line 295
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 298
    move-result-object v28

    .line 299
    check-cast v28, Ljava/lang/Double;

    .line 301
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->doubleValue()D

    .line 304
    move-result-wide v28

    .line 305
    const/4 v3, 0x6

    .line 306
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 309
    move-result-object v2

    .line 310
    check-cast v2, Ljava/lang/Double;

    .line 312
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 315
    move-result-wide v2

    .line 316
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 319
    move-result-object v0

    .line 320
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 323
    move-result-object v0

    .line 324
    const-wide/16 v30, 0x0

    .line 326
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 329
    move-result v32

    .line 330
    if-eqz v32, :cond_a

    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 335
    move-result-object v32

    .line 336
    check-cast v32, Ljava/util/Map$Entry;

    .line 338
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 341
    move-result-object v33

    .line 342
    check-cast v33, Ljava/lang/Double;

    .line 344
    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 347
    move-result-object v32

    .line 348
    check-cast v32, Ljava/lang/Long;

    .line 350
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Double;->doubleValue()D

    .line 353
    move-result-wide v33

    .line 354
    move-wide/from16 v35, v2

    .line 356
    sub-double v2, v33, v24

    .line 358
    move-wide/from16 v33, v8

    .line 360
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 362
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 365
    move-result-wide v2

    .line 366
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    .line 369
    move-result-wide v8

    .line 370
    long-to-double v8, v8

    .line 371
    mul-double v2, v2, v8

    .line 373
    add-double v30, v30, v2

    .line 375
    move-wide/from16 v8, v33

    .line 377
    move-wide/from16 v2, v35

    .line 379
    goto :goto_4

    .line 380
    :cond_a
    move-wide/from16 v35, v2

    .line 382
    move-wide/from16 v33, v8

    .line 384
    int-to-double v2, v4

    .line 385
    div-double v30, v30, v2

    .line 387
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->sqrt(D)D

    .line 390
    move-result-wide v2

    .line 391
    move-wide v8, v2

    .line 392
    move-wide/from16 v2, v35

    .line 394
    goto :goto_5

    .line 395
    :cond_b
    move-wide/from16 v33, v8

    .line 397
    const-wide/16 v2, 0x0

    .line 399
    const-wide/16 v8, 0x0

    .line 401
    const-wide/16 v22, 0x0

    .line 403
    const-wide/16 v24, 0x0

    .line 405
    const-wide/16 v26, 0x0

    .line 407
    const-wide/16 v28, 0x0

    .line 409
    :goto_5
    if-lez v14, :cond_d

    .line 411
    invoke-static {v12, v13, v15}, Lcom/amap/location/e/a/a/f;->a(Ljava/util/TreeMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 414
    move-result-object v0

    .line 415
    const/4 v13, 0x1

    .line 416
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 419
    move-result-object v15

    .line 420
    check-cast v15, Ljava/lang/Double;

    .line 422
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    .line 425
    move-result-wide v30

    .line 426
    const/4 v13, 0x3

    .line 427
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 430
    move-result-object v15

    .line 431
    check-cast v15, Ljava/lang/Double;

    .line 433
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    .line 436
    move-result-wide v35

    .line 437
    const/4 v13, 0x4

    .line 438
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 441
    move-result-object v15

    .line 442
    check-cast v15, Ljava/lang/Double;

    .line 444
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    .line 447
    move-result-wide v37

    .line 448
    const/4 v13, 0x5

    .line 449
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 452
    move-result-object v15

    .line 453
    check-cast v15, Ljava/lang/Double;

    .line 455
    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    .line 458
    move-result-wide v39

    .line 459
    const/4 v13, 0x6

    .line 460
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 463
    move-result-object v0

    .line 464
    check-cast v0, Ljava/lang/Double;

    .line 466
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 469
    move-result-wide v41

    .line 470
    invoke-virtual {v12}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 473
    move-result-object v0

    .line 474
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 477
    move-result-object v0

    .line 478
    const-wide/16 v16, 0x0

    .line 480
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 483
    move-result v12

    .line 484
    if-eqz v12, :cond_c

    .line 486
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 489
    move-result-object v12

    .line 490
    check-cast v12, Ljava/util/Map$Entry;

    .line 492
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 495
    move-result-object v13

    .line 496
    check-cast v13, Ljava/lang/Double;

    .line 498
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 501
    move-result-object v12

    .line 502
    check-cast v12, Ljava/lang/Long;

    .line 504
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    .line 507
    move-result-wide v43

    .line 508
    move v15, v4

    .line 509
    move v13, v5

    .line 510
    sub-double v4, v43, v35

    .line 512
    move-wide/from16 v43, v6

    .line 514
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 516
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    .line 519
    move-result-wide v4

    .line 520
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 523
    move-result-wide v6

    .line 524
    long-to-double v6, v6

    .line 525
    mul-double v4, v4, v6

    .line 527
    add-double v16, v16, v4

    .line 529
    move v5, v13

    .line 530
    move v4, v15

    .line 531
    move-wide/from16 v6, v43

    .line 533
    goto :goto_6

    .line 534
    :cond_c
    move v15, v4

    .line 535
    move v13, v5

    .line 536
    move-wide/from16 v43, v6

    .line 538
    int-to-double v4, v14

    .line 539
    div-double v16, v16, v4

    .line 541
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    .line 544
    move-result-wide v4

    .line 545
    move-wide v6, v4

    .line 546
    move-wide/from16 v4, v30

    .line 548
    move-wide/from16 v16, v35

    .line 550
    const/4 v0, 0x0

    .line 551
    goto :goto_7

    .line 552
    :cond_d
    move v15, v4

    .line 553
    move v13, v5

    .line 554
    move-wide/from16 v43, v6

    .line 556
    const/4 v0, 0x0

    .line 557
    const-wide/16 v4, 0x0

    .line 559
    const-wide/16 v6, 0x0

    .line 561
    const-wide/16 v16, 0x0

    .line 563
    const-wide/16 v37, 0x0

    .line 565
    const-wide/16 v39, 0x0

    .line 567
    const-wide/16 v41, 0x0

    .line 569
    :goto_7
    aput-wide v10, v1, v0

    .line 571
    const/4 v0, 0x1

    .line 572
    aput-wide v22, v1, v0

    .line 574
    const/4 v0, 0x2

    .line 575
    aput-wide v24, v1, v0

    .line 577
    const/4 v0, 0x3

    .line 578
    aput-wide v8, v1, v0

    .line 580
    const/4 v0, 0x4

    .line 581
    aput-wide v26, v1, v0

    .line 583
    const/4 v0, 0x5

    .line 584
    aput-wide v28, v1, v0

    .line 586
    const/4 v0, 0x6

    .line 587
    aput-wide v2, v1, v0

    .line 589
    const/4 v0, 0x7

    .line 590
    aput-wide v4, v1, v0

    .line 592
    const/16 v0, 0x8

    .line 594
    aput-wide v16, v1, v0

    .line 596
    const/16 v0, 0x9

    .line 598
    aput-wide v6, v1, v0

    .line 600
    const/16 v0, 0xa

    .line 602
    aput-wide v37, v1, v0

    .line 604
    const/16 v0, 0xb

    .line 606
    aput-wide v39, v1, v0

    .line 608
    const/16 v0, 0xc

    .line 610
    aput-wide v41, v1, v0

    .line 612
    const/16 v0, 0xd

    .line 614
    aput-wide v43, v1, v0

    .line 616
    const/16 v0, 0xe

    .line 618
    aput-wide v33, v1, v0

    .line 620
    move v2, v15

    .line 621
    int-to-double v2, v2

    .line 622
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 624
    mul-double v2, v2, v4

    .line 626
    move v0, v13

    .line 627
    int-to-double v6, v0

    .line 628
    div-double/2addr v2, v6

    .line 629
    const/16 v0, 0xf

    .line 631
    aput-wide v2, v1, v0

    .line 633
    int-to-double v2, v14

    .line 634
    mul-double v2, v2, v4

    .line 636
    div-double/2addr v2, v6

    .line 637
    const/16 v0, 0x10

    .line 639
    aput-wide v2, v1, v0

    .line 641
    return-object v1

    .line 642
    :cond_e
    :goto_8
    const/4 v0, 0x0

    .line 643
    return-object v0
.end method
