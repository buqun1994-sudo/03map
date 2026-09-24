.class public abstract Ljd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a([D)Ljava/lang/StringBuffer;
    .locals 6

    .line 1
    if-eqz p0, :cond_2

    .line 3
    array-length v0, p0

    .line 4
    if-lez v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuffer;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    add-int/lit8 v3, v1, -0x1

    .line 17
    if-ne v2, v3, :cond_0

    .line 19
    aget-wide v3, p0, v2

    .line 21
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    aget-wide v4, p0, v2

    .line 32
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 35
    const-string v4, "#"

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-object v0

    .line 51
    :cond_2
    const/4 p0, 0x0

    .line 52
    return-object p0
.end method

.method public static final b(ILandroid/content/Intent;)Ljava/lang/String;
    .locals 26

    .line 1
    move/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    const-string v2, "[ALSimulate] BroadcastSimulateDataParserUtil"

    .line 7
    const/4 v3, 0x0

    .line 8
    const-string v4, ""

    .line 10
    if-eqz v1, :cond_8

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 15
    move-result-object v5

    .line 16
    if-eqz v5, :cond_7

    .line 18
    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 21
    move-result-object v4

    .line 22
    if-eqz v4, :cond_6

    .line 24
    const-string v5, "Bundle[{"

    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 32
    const-string v5, "}]"

    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_0

    .line 40
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 43
    move-result v5

    .line 44
    add-int/lit8 v5, v5, -0x2

    .line 46
    const/16 v6, 0x8

    .line 48
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    :cond_0
    const/16 v5, 0x32de

    .line 54
    if-eq v0, v5, :cond_1

    .line 56
    goto/16 :goto_0

    .line 58
    :cond_1
    const-string v4, "INITIAL_HV_BATTENERGY"

    .line 60
    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    .line 62
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    .line 65
    move-result-wide v7

    .line 66
    const-string v4, "IS_CHARGE"

    .line 68
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 71
    move-result v4

    .line 72
    const-string v9, "CUR_DRIVE_MODE"

    .line 74
    invoke-virtual {v1, v9, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 77
    move-result v9

    .line 78
    const-string v10, "MAX_BATT_ENERGY"

    .line 80
    invoke-virtual {v1, v10, v5, v6}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    .line 83
    move-result-wide v5

    .line 84
    const-string v10, "VEHICLE_WEIGHT"

    .line 86
    invoke-virtual {v1, v10, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 89
    move-result v10

    .line 90
    const-string v11, "LOW_ENERGY_ALERT"

    .line 92
    invoke-virtual {v1, v11, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 95
    move-result v11

    .line 96
    const-string v12, "RANGE_DIST"

    .line 98
    invoke-virtual {v1, v12, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 101
    move-result v12

    .line 102
    const-string v13, "ENERGY_UNIT"

    .line 104
    const/4 v14, 0x1

    .line 105
    invoke-virtual {v1, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 108
    move-result v13

    .line 109
    const-string v15, "TOP_SPEED"

    .line 111
    const/16 v3, 0x78

    .line 113
    invoke-virtual {v1, v15, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 116
    move-result v3

    .line 117
    const-string v15, "SLOPE_COSTLIST"

    .line 119
    invoke-virtual {v1, v15}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    .line 122
    move-result-object v15

    .line 123
    const-string v14, "SPEED_COSTLIST"

    .line 125
    invoke-virtual {v1, v14}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    .line 128
    move-result-object v14

    .line 129
    move-object/from16 v16, v2

    .line 131
    const-string v2, "TRANS_COSTLIST"

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    .line 136
    move-result-object v2

    .line 137
    move-object/from16 v17, v2

    .line 139
    const-string v2, "CURVE_COSTLIST"

    .line 141
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    .line 144
    move-result-object v2

    .line 145
    move-object/from16 v18, v2

    .line 147
    const-string v2, "AUX_COST"

    .line 149
    move-object/from16 v20, v14

    .line 151
    move-object/from16 v19, v15

    .line 153
    const-wide/16 v14, 0x0

    .line 155
    move/from16 v21, v3

    .line 157
    invoke-virtual {v1, v2, v14, v15}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    .line 160
    move-result-wide v2

    .line 161
    move-wide/from16 v22, v2

    .line 163
    const-string v2, "FERRYRATE_COST"

    .line 165
    invoke-virtual {v1, v2, v14, v15}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    .line 168
    move-result-wide v2

    .line 169
    move-wide/from16 v24, v2

    .line 171
    const-string v2, "PERCENT_OF_RESIDUAL_ENERGY"

    .line 173
    invoke-virtual {v1, v2, v14, v15}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    .line 176
    move-result-wide v1

    .line 177
    new-instance v3, Ljava/lang/StringBuffer;

    .line 179
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    new-instance v14, Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const-string v15, "KEY_TYPE:"

    .line 189
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v0, ","

    .line 197
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v14

    .line 204
    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    new-instance v14, Ljava/lang/StringBuilder;

    .line 209
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    const-string v15, "INITIAL_HV_BATTENERGY:"

    .line 214
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object v7

    .line 227
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    new-instance v7, Ljava/lang/StringBuilder;

    .line 232
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    const-string v8, "IS_CHARGE:"

    .line 237
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    .line 255
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    const-string v7, "CUR_DRIVE_MODE:"

    .line 260
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object v4

    .line 273
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    new-instance v4, Ljava/lang/StringBuilder;

    .line 278
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    const-string v7, "MAX_BATT_ENERGY:"

    .line 283
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    move-result-object v4

    .line 296
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    .line 301
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    const-string v5, "VEHICLE_WEIGHT:"

    .line 306
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    move-result-object v4

    .line 319
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    .line 324
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    const-string v5, "LOW_ENERGY_ALERT:"

    .line 329
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    move-result-object v4

    .line 342
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    .line 347
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    const-string v5, "RANGE_DIST:"

    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    move-result-object v4

    .line 365
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    .line 370
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    const-string v5, "ENERGY_UNIT:"

    .line 375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    .line 393
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    const-string v5, "TOP_SPEED:"

    .line 398
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    move/from16 v5, v21

    .line 403
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    move-result-object v4

    .line 413
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    invoke-static/range {v19 .. v19}, Ljd;->a([D)Ljava/lang/StringBuffer;

    .line 419
    move-result-object v4

    .line 420
    if-eqz v4, :cond_2

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    .line 424
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    const-string v6, "SLOPE_COSTLIST:"

    .line 429
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 435
    move-result-object v4

    .line 436
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    move-result-object v4

    .line 446
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    :cond_2
    invoke-static/range {v20 .. v20}, Ljd;->a([D)Ljava/lang/StringBuffer;

    .line 452
    move-result-object v4

    .line 453
    if-eqz v4, :cond_3

    .line 455
    new-instance v5, Ljava/lang/StringBuilder;

    .line 457
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    const-string v6, "SPEED_COSTLIST:"

    .line 462
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 468
    move-result-object v4

    .line 469
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    move-result-object v4

    .line 479
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 482
    :cond_3
    invoke-static/range {v17 .. v17}, Ljd;->a([D)Ljava/lang/StringBuffer;

    .line 485
    move-result-object v4

    .line 486
    if-eqz v4, :cond_4

    .line 488
    new-instance v5, Ljava/lang/StringBuilder;

    .line 490
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    const-string v6, "TRANS_COSTLIST:"

    .line 495
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 501
    move-result-object v4

    .line 502
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    move-result-object v4

    .line 512
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    :cond_4
    invoke-static/range {v18 .. v18}, Ljd;->a([D)Ljava/lang/StringBuffer;

    .line 518
    move-result-object v4

    .line 519
    if-eqz v4, :cond_5

    .line 521
    new-instance v5, Ljava/lang/StringBuilder;

    .line 523
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    const-string v6, "CURVE_COSTLIST:"

    .line 528
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 534
    move-result-object v4

    .line 535
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    move-result-object v4

    .line 545
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 550
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    const-string v5, "AUX_COST:"

    .line 555
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    move-wide/from16 v5, v22

    .line 560
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    move-result-object v4

    .line 570
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    .line 575
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    const-string v5, "FERRYRATE_COST:"

    .line 580
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    move-wide/from16 v5, v24

    .line 585
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    move-result-object v0

    .line 595
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    .line 600
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    const-string v4, "PERCENT_OF_RESIDUAL_ENERGY:"

    .line 605
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    move-result-object v0

    .line 615
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 621
    move-result-object v0

    .line 622
    const/4 v1, 0x1

    .line 623
    new-array v1, v1, [Ljava/lang/Object;

    .line 625
    const/4 v2, 0x0

    .line 626
    aput-object v0, v1, v2

    .line 628
    const-string v2, "makeSimulateIntentData bundleExtrasString after double array convert bundleExtrasString = {?}"

    .line 630
    move-object/from16 v3, v16

    .line 632
    invoke-static {v3, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    move-object v4, v0

    .line 636
    goto :goto_0

    .line 637
    :cond_6
    move-object v3, v2

    .line 638
    const/4 v2, 0x0

    .line 639
    const-string v0, "makeSimulateIntentData bundleExtrasString==null"

    .line 641
    new-array v1, v2, [Ljava/lang/Object;

    .line 643
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    goto :goto_0

    .line 647
    :cond_7
    move-object v3, v2

    .line 648
    const/4 v2, 0x0

    .line 649
    const-string v0, "makeSimulateIntentData not hasExtra"

    .line 651
    new-array v1, v2, [Ljava/lang/Object;

    .line 653
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 656
    goto :goto_0

    .line 657
    :cond_8
    move-object v3, v2

    .line 658
    const/4 v2, 0x0

    .line 659
    const-string v0, "makeSimulateIntentData intent==null"

    .line 661
    new-array v1, v2, [Ljava/lang/Object;

    .line 663
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    :goto_0
    return-object v4
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p1, v0, v1

    .line 10
    const-string v1, "[ALSimulate] BroadcastSimulateDataParserUtil"

    .line 12
    const-string v2, "parseSimulateIntentData simulateJsonString = {?},version = {?}"

    .line 14
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-static {p1}, Lpe0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-static {p0, p1}, Ljd;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const/4 v3, 0x1

    .line 8
    aput-object p1, v1, v3

    .line 10
    const-string v4, "[ALSimulate] BroadcastSimulateDataParserUtil"

    .line 12
    const-string v5, "parseSimulateIntentData simulateJsonString = {?},splitSymbol = {?}"

    .line 14
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    if-eqz p0, :cond_3

    .line 24
    if-eqz p1, :cond_3

    .line 26
    const-string v5, ","

    .line 28
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_4

    .line 34
    array-length v5, p0

    .line 35
    const/4 v6, 0x0

    .line 36
    :goto_0
    if-ge v6, v5, :cond_4

    .line 38
    aget-object v7, p0, v6

    .line 40
    invoke-virtual {v7, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 43
    move-result-object v7

    .line 44
    if-eqz v7, :cond_2

    .line 46
    array-length v8, v7

    .line 47
    if-ne v8, v0, :cond_2

    .line 49
    aget-object v8, v7, v2

    .line 51
    if-eqz v8, :cond_0

    .line 53
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 56
    move-result-object v8

    .line 57
    aput-object v8, v7, v2

    .line 59
    :cond_0
    aget-object v8, v7, v3

    .line 61
    if-eqz v8, :cond_1

    .line 63
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 66
    move-result-object v8

    .line 67
    aput-object v8, v7, v3

    .line 69
    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const-string v7, "parseSimulateIntentData subIntentStringArray==null || subIntentStringArray.length != 2"

    .line 75
    new-array v8, v2, [Ljava/lang/Object;

    .line 77
    invoke-static {v4, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const-string p0, "parseSimulateIntentData simulateJsonString == null || splitSymbol == null"

    .line 85
    new-array p1, v2, [Ljava/lang/Object;

    .line 87
    invoke-static {v4, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_4
    return-object v1
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p1, v0, v1

    .line 10
    const-string v1, "[ALSimulate] BroadcastSimulateDataParserUtil"

    .line 12
    const-string v2, "parseSimulateProtocolId simulateJsonString={?},version={?}"

    .line 14
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-static {p1}, Lpe0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-static {p0, p1}, Ljd;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    move-result p0

    .line 25
    return p0
.end method

.method public static final f(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const/4 v3, 0x1

    .line 8
    aput-object p1, v1, v3

    .line 10
    const-string v4, "[ALSimulate] BroadcastSimulateDataParserUtil"

    .line 12
    const-string v5, "parseSimulateProtocolId simulateJsonString={?},splitSymbol={?}"

    .line 14
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    if-eqz p0, :cond_4

    .line 19
    if-eqz p1, :cond_4

    .line 21
    const-string v1, "parseSimulateProtocolId simulateIntentString!=null && splitSymbol != null"

    .line 23
    new-array v5, v2, [Ljava/lang/Object;

    .line 25
    invoke-static {v4, v1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    const-string v1, ","

    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_5

    .line 36
    const-string v1, "parseSimulateProtocolId intentStringArray!=null"

    .line 38
    new-array v5, v2, [Ljava/lang/Object;

    .line 40
    invoke-static {v4, v1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    array-length v1, p0

    .line 44
    const/4 v5, 0x0

    .line 45
    :goto_0
    if-ge v5, v1, :cond_5

    .line 47
    aget-object v6, p0, v5

    .line 49
    invoke-virtual {v6, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    move-result-object v6

    .line 53
    if-eqz v6, :cond_2

    .line 55
    array-length v7, v6

    .line 56
    if-ne v7, v0, :cond_2

    .line 58
    aget-object v7, v6, v2

    .line 60
    if-eqz v7, :cond_0

    .line 62
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    move-result-object v7

    .line 66
    aput-object v7, v6, v2

    .line 68
    :cond_0
    aget-object v7, v6, v3

    .line 70
    if-eqz v7, :cond_1

    .line 72
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 75
    move-result-object v7

    .line 76
    aput-object v7, v6, v3

    .line 78
    :cond_1
    const-string v7, "KEY_TYPE"

    .line 80
    aget-object v8, v6, v2

    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_3

    .line 88
    aget-object p0, v6, v3

    .line 90
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 93
    move-result p0

    .line 94
    new-array p1, v3, [Ljava/lang/Object;

    .line 96
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v0

    .line 100
    aput-object v0, p1, v2

    .line 102
    const-string v0, "parseSimulateProtocolId protocolId = {?}"

    .line 104
    invoke-static {v4, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return p0

    .line 108
    :cond_2
    const-string v6, "parseSimulateProtocolId subIntentStringArray==null || subIntentStringArray.length != 2"

    .line 110
    new-array v7, v2, [Ljava/lang/Object;

    .line 112
    invoke-static {v4, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 117
    goto :goto_0

    .line 118
    :cond_4
    const-string p0, "parseSimulateProtocolIdWithSplitSymbol simulateIntentString == null || splitSymbol == null"

    .line 120
    new-array p1, v2, [Ljava/lang/Object;

    .line 122
    invoke-static {v4, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_5
    const/high16 p0, -0x80000000

    .line 127
    return p0
.end method
