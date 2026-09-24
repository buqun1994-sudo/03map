.class public Lne;
.super Lkm0;
.source "SourceFile"


# instance fields
.field public k:Ljava/util/ArrayList;

.field public l:I


# direct methods
.method public constructor <init>(Llg;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkm0;-><init>(Llg;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lne;->k:Ljava/util/ArrayList;

    .line 11
    iput p2, p0, Lkm0;->f:I

    .line 13
    invoke-virtual {p0}, Lne;->q()V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lji;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lkm0;->h:Lli;

    .line 5
    iget-boolean v1, v1, Lli;->j:Z

    .line 7
    if-eqz v1, :cond_58

    .line 9
    iget-object v1, v0, Lkm0;->i:Lli;

    .line 11
    iget-boolean v1, v1, Lli;->j:Z

    .line 13
    if-nez v1, :cond_0

    .line 15
    goto/16 :goto_34

    .line 17
    :cond_0
    iget-object v1, v0, Lkm0;->b:Llg;

    .line 19
    invoke-virtual {v1}, Llg;->I()Llg;

    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 25
    instance-of v3, v1, Lmg;

    .line 27
    if-eqz v3, :cond_1

    .line 29
    check-cast v1, Lmg;

    .line 31
    invoke-virtual {v1}, Lmg;->w1()Z

    .line 34
    move-result v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    iget-object v3, v0, Lkm0;->i:Lli;

    .line 39
    iget v3, v3, Lli;->g:I

    .line 41
    iget-object v4, v0, Lkm0;->h:Lli;

    .line 43
    iget v4, v4, Lli;->g:I

    .line 45
    sub-int/2addr v3, v4

    .line 46
    iget-object v4, v0, Lne;->k:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v4

    .line 52
    const/4 v5, 0x0

    .line 53
    :goto_1
    const/4 v6, -0x1

    .line 54
    const/16 v7, 0x8

    .line 56
    if-ge v5, v4, :cond_2

    .line 58
    iget-object v8, v0, Lne;->k:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v8

    .line 64
    check-cast v8, Lkm0;

    .line 66
    iget-object v8, v8, Lkm0;->b:Llg;

    .line 68
    invoke-virtual {v8}, Llg;->Q()I

    .line 71
    move-result v8

    .line 72
    if-ne v8, v7, :cond_3

    .line 74
    add-int/lit8 v5, v5, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 v5, -0x1

    .line 78
    :cond_3
    add-int/lit8 v8, v4, -0x1

    .line 80
    move v9, v8

    .line 81
    :goto_2
    if-ltz v9, :cond_5

    .line 83
    iget-object v10, v0, Lne;->k:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v10

    .line 89
    check-cast v10, Lkm0;

    .line 91
    iget-object v10, v10, Lkm0;->b:Llg;

    .line 93
    invoke-virtual {v10}, Llg;->Q()I

    .line 96
    move-result v10

    .line 97
    if-ne v10, v7, :cond_4

    .line 99
    add-int/lit8 v9, v9, -0x1

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    move v6, v9

    .line 103
    :cond_5
    const/4 v9, 0x0

    .line 104
    :goto_3
    const/4 v11, 0x2

    .line 105
    if-ge v9, v11, :cond_14

    .line 107
    const/4 v13, 0x0

    .line 108
    const/4 v14, 0x0

    .line 109
    const/4 v15, 0x0

    .line 110
    const/16 v16, 0x0

    .line 112
    const/16 v17, 0x0

    .line 114
    :goto_4
    if-ge v13, v4, :cond_11

    .line 116
    iget-object v2, v0, Lne;->k:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lkm0;

    .line 124
    iget-object v11, v2, Lkm0;->b:Llg;

    .line 126
    invoke-virtual {v11}, Llg;->Q()I

    .line 129
    move-result v11

    .line 130
    if-ne v11, v7, :cond_6

    .line 132
    goto/16 :goto_a

    .line 134
    :cond_6
    add-int/lit8 v16, v16, 0x1

    .line 136
    if-lez v13, :cond_7

    .line 138
    if-lt v13, v5, :cond_7

    .line 140
    iget-object v11, v2, Lkm0;->h:Lli;

    .line 142
    iget v11, v11, Lli;->f:I

    .line 144
    add-int/2addr v14, v11

    .line 145
    :cond_7
    iget-object v11, v2, Lkm0;->e:Lhj;

    .line 147
    iget v7, v11, Lli;->g:I

    .line 149
    iget-object v10, v2, Lkm0;->d:Llg$b;

    .line 151
    sget-object v12, Llg$b;->c:Llg$b;

    .line 153
    if-eq v10, v12, :cond_8

    .line 155
    const/4 v10, 0x1

    .line 156
    goto :goto_5

    .line 157
    :cond_8
    const/4 v10, 0x0

    .line 158
    :goto_5
    if-eqz v10, :cond_b

    .line 160
    iget v11, v0, Lkm0;->f:I

    .line 162
    if-nez v11, :cond_9

    .line 164
    iget-object v12, v2, Lkm0;->b:Llg;

    .line 166
    iget-object v12, v12, Llg;->e:Lqp;

    .line 168
    iget-object v12, v12, Lkm0;->e:Lhj;

    .line 170
    iget-boolean v12, v12, Lli;->j:Z

    .line 172
    if-nez v12, :cond_9

    .line 174
    return-void

    .line 175
    :cond_9
    const/4 v12, 0x1

    .line 176
    if-ne v11, v12, :cond_a

    .line 178
    iget-object v11, v2, Lkm0;->b:Llg;

    .line 180
    iget-object v11, v11, Llg;->f:Luk0;

    .line 182
    iget-object v11, v11, Lkm0;->e:Lhj;

    .line 184
    iget-boolean v11, v11, Lli;->j:Z

    .line 186
    if-nez v11, :cond_a

    .line 188
    return-void

    .line 189
    :cond_a
    move/from16 v19, v7

    .line 191
    goto :goto_7

    .line 192
    :cond_b
    move/from16 v19, v7

    .line 194
    const/4 v12, 0x1

    .line 195
    iget v7, v2, Lkm0;->a:I

    .line 197
    if-ne v7, v12, :cond_c

    .line 199
    if-nez v9, :cond_c

    .line 201
    iget v7, v11, Lhj;->m:I

    .line 203
    add-int/lit8 v15, v15, 0x1

    .line 205
    goto :goto_6

    .line 206
    :cond_c
    iget-boolean v7, v11, Lli;->j:Z

    .line 208
    if-eqz v7, :cond_d

    .line 210
    move/from16 v7, v19

    .line 212
    :goto_6
    const/4 v10, 0x1

    .line 213
    goto :goto_8

    .line 214
    :cond_d
    :goto_7
    move/from16 v7, v19

    .line 216
    :goto_8
    if-nez v10, :cond_e

    .line 218
    add-int/lit8 v15, v15, 0x1

    .line 220
    iget-object v7, v2, Lkm0;->b:Llg;

    .line 222
    iget-object v7, v7, Llg;->v0:[F

    .line 224
    iget v10, v0, Lkm0;->f:I

    .line 226
    aget v7, v7, v10

    .line 228
    const/4 v10, 0x0

    .line 229
    cmpl-float v11, v7, v10

    .line 231
    if-ltz v11, :cond_f

    .line 233
    add-float v17, v17, v7

    .line 235
    goto :goto_9

    .line 236
    :cond_e
    add-int/2addr v14, v7

    .line 237
    :cond_f
    :goto_9
    if-ge v13, v8, :cond_10

    .line 239
    if-ge v13, v6, :cond_10

    .line 241
    iget-object v2, v2, Lkm0;->i:Lli;

    .line 243
    iget v2, v2, Lli;->f:I

    .line 245
    neg-int v2, v2

    .line 246
    add-int/2addr v14, v2

    .line 247
    :cond_10
    :goto_a
    add-int/lit8 v13, v13, 0x1

    .line 249
    const/16 v7, 0x8

    .line 251
    const/4 v11, 0x2

    .line 252
    goto/16 :goto_4

    .line 254
    :cond_11
    if-lt v14, v3, :cond_13

    .line 256
    if-nez v15, :cond_12

    .line 258
    goto :goto_b

    .line 259
    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 261
    const/16 v7, 0x8

    .line 263
    goto/16 :goto_3

    .line 265
    :cond_13
    :goto_b
    move/from16 v2, v16

    .line 267
    goto :goto_c

    .line 268
    :cond_14
    const/4 v2, 0x0

    .line 269
    const/4 v14, 0x0

    .line 270
    const/4 v15, 0x0

    .line 271
    const/16 v17, 0x0

    .line 273
    :goto_c
    iget-object v7, v0, Lkm0;->h:Lli;

    .line 275
    iget v7, v7, Lli;->g:I

    .line 277
    if-eqz v1, :cond_15

    .line 279
    iget-object v7, v0, Lkm0;->i:Lli;

    .line 281
    iget v7, v7, Lli;->g:I

    .line 283
    :cond_15
    const/high16 v9, 0x3f000000    # 0.5f

    .line 285
    if-le v14, v3, :cond_17

    .line 287
    const/high16 v10, 0x40000000    # 2.0f

    .line 289
    if-eqz v1, :cond_16

    .line 291
    sub-int v11, v14, v3

    .line 293
    int-to-float v11, v11

    .line 294
    div-float/2addr v11, v10

    .line 295
    add-float/2addr v11, v9

    .line 296
    float-to-int v10, v11

    .line 297
    add-int/2addr v7, v10

    .line 298
    goto :goto_d

    .line 299
    :cond_16
    sub-int v11, v14, v3

    .line 301
    int-to-float v11, v11

    .line 302
    div-float/2addr v11, v10

    .line 303
    add-float/2addr v11, v9

    .line 304
    float-to-int v10, v11

    .line 305
    sub-int/2addr v7, v10

    .line 306
    :cond_17
    :goto_d
    if-lez v15, :cond_28

    .line 308
    sub-int v10, v3, v14

    .line 310
    int-to-float v10, v10

    .line 311
    int-to-float v11, v15

    .line 312
    div-float v11, v10, v11

    .line 314
    add-float/2addr v11, v9

    .line 315
    float-to-int v11, v11

    .line 316
    const/4 v12, 0x0

    .line 317
    const/4 v13, 0x0

    .line 318
    :goto_e
    if-ge v12, v4, :cond_21

    .line 320
    iget-object v9, v0, Lne;->k:Ljava/util/ArrayList;

    .line 322
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    move-result-object v9

    .line 326
    check-cast v9, Lkm0;

    .line 328
    move/from16 v19, v11

    .line 330
    iget-object v11, v9, Lkm0;->b:Llg;

    .line 332
    invoke-virtual {v11}, Llg;->Q()I

    .line 335
    move-result v11

    .line 336
    move/from16 v20, v14

    .line 338
    const/16 v14, 0x8

    .line 340
    if-ne v11, v14, :cond_18

    .line 342
    goto/16 :goto_13

    .line 344
    :cond_18
    iget-object v11, v9, Lkm0;->d:Llg$b;

    .line 346
    sget-object v14, Llg$b;->c:Llg$b;

    .line 348
    if-ne v11, v14, :cond_20

    .line 350
    iget-object v11, v9, Lkm0;->e:Lhj;

    .line 352
    iget-boolean v14, v11, Lli;->j:Z

    .line 354
    if-nez v14, :cond_20

    .line 356
    const/4 v14, 0x0

    .line 357
    cmpl-float v18, v17, v14

    .line 359
    if-lez v18, :cond_19

    .line 361
    iget-object v14, v9, Lkm0;->b:Llg;

    .line 363
    iget-object v14, v14, Llg;->v0:[F

    .line 365
    move/from16 v21, v7

    .line 367
    iget v7, v0, Lkm0;->f:I

    .line 369
    aget v7, v14, v7

    .line 371
    mul-float v7, v7, v10

    .line 373
    div-float v7, v7, v17

    .line 375
    const/high16 v14, 0x3f000000    # 0.5f

    .line 377
    add-float/2addr v7, v14

    .line 378
    float-to-int v7, v7

    .line 379
    goto :goto_f

    .line 380
    :cond_19
    move/from16 v21, v7

    .line 382
    move/from16 v7, v19

    .line 384
    :goto_f
    iget v14, v0, Lkm0;->f:I

    .line 386
    if-nez v14, :cond_1c

    .line 388
    iget-object v14, v9, Lkm0;->b:Llg;

    .line 390
    move/from16 v22, v10

    .line 392
    iget v10, v14, Llg;->t:I

    .line 394
    iget v14, v14, Llg;->s:I

    .line 396
    move/from16 v23, v1

    .line 398
    iget v1, v9, Lkm0;->a:I

    .line 400
    move/from16 v24, v2

    .line 402
    const/4 v2, 0x1

    .line 403
    if-ne v1, v2, :cond_1a

    .line 405
    iget v1, v11, Lhj;->m:I

    .line 407
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    .line 410
    move-result v1

    .line 411
    goto :goto_10

    .line 412
    :cond_1a
    move v1, v7

    .line 413
    :goto_10
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    .line 416
    move-result v1

    .line 417
    if-lez v10, :cond_1b

    .line 419
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    .line 422
    move-result v1

    .line 423
    :cond_1b
    if-eq v1, v7, :cond_1f

    .line 425
    goto :goto_12

    .line 426
    :cond_1c
    move/from16 v23, v1

    .line 428
    move/from16 v24, v2

    .line 430
    move/from16 v22, v10

    .line 432
    iget-object v1, v9, Lkm0;->b:Llg;

    .line 434
    iget v2, v1, Llg;->w:I

    .line 436
    iget v1, v1, Llg;->v:I

    .line 438
    iget v10, v9, Lkm0;->a:I

    .line 440
    const/4 v14, 0x1

    .line 441
    if-ne v10, v14, :cond_1d

    .line 443
    iget v10, v11, Lhj;->m:I

    .line 445
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    .line 448
    move-result v10

    .line 449
    goto :goto_11

    .line 450
    :cond_1d
    move v10, v7

    .line 451
    :goto_11
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    .line 454
    move-result v1

    .line 455
    if-lez v2, :cond_1e

    .line 457
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 460
    move-result v1

    .line 461
    :cond_1e
    if-eq v1, v7, :cond_1f

    .line 463
    :goto_12
    add-int/lit8 v13, v13, 0x1

    .line 465
    move v7, v1

    .line 466
    :cond_1f
    iget-object v1, v9, Lkm0;->e:Lhj;

    .line 468
    invoke-virtual {v1, v7}, Lhj;->d(I)V

    .line 471
    goto :goto_14

    .line 472
    :cond_20
    :goto_13
    move/from16 v23, v1

    .line 474
    move/from16 v24, v2

    .line 476
    move/from16 v21, v7

    .line 478
    move/from16 v22, v10

    .line 480
    :goto_14
    add-int/lit8 v12, v12, 0x1

    .line 482
    move/from16 v11, v19

    .line 484
    move/from16 v14, v20

    .line 486
    move/from16 v7, v21

    .line 488
    move/from16 v10, v22

    .line 490
    move/from16 v1, v23

    .line 492
    move/from16 v2, v24

    .line 494
    const/high16 v9, 0x3f000000    # 0.5f

    .line 496
    goto/16 :goto_e

    .line 498
    :cond_21
    move/from16 v23, v1

    .line 500
    move/from16 v24, v2

    .line 502
    move/from16 v21, v7

    .line 504
    move/from16 v20, v14

    .line 506
    if-lez v13, :cond_26

    .line 508
    sub-int/2addr v15, v13

    .line 509
    const/4 v1, 0x0

    .line 510
    const/4 v2, 0x0

    .line 511
    :goto_15
    if-ge v1, v4, :cond_25

    .line 513
    iget-object v7, v0, Lne;->k:Ljava/util/ArrayList;

    .line 515
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 518
    move-result-object v7

    .line 519
    check-cast v7, Lkm0;

    .line 521
    iget-object v9, v7, Lkm0;->b:Llg;

    .line 523
    invoke-virtual {v9}, Llg;->Q()I

    .line 526
    move-result v9

    .line 527
    const/16 v10, 0x8

    .line 529
    if-ne v9, v10, :cond_22

    .line 531
    goto :goto_16

    .line 532
    :cond_22
    if-lez v1, :cond_23

    .line 534
    if-lt v1, v5, :cond_23

    .line 536
    iget-object v9, v7, Lkm0;->h:Lli;

    .line 538
    iget v9, v9, Lli;->f:I

    .line 540
    add-int/2addr v2, v9

    .line 541
    :cond_23
    iget-object v9, v7, Lkm0;->e:Lhj;

    .line 543
    iget v9, v9, Lli;->g:I

    .line 545
    add-int/2addr v2, v9

    .line 546
    if-ge v1, v8, :cond_24

    .line 548
    if-ge v1, v6, :cond_24

    .line 550
    iget-object v7, v7, Lkm0;->i:Lli;

    .line 552
    iget v7, v7, Lli;->f:I

    .line 554
    neg-int v7, v7

    .line 555
    add-int/2addr v2, v7

    .line 556
    :cond_24
    :goto_16
    add-int/lit8 v1, v1, 0x1

    .line 558
    goto :goto_15

    .line 559
    :cond_25
    move v14, v2

    .line 560
    goto :goto_17

    .line 561
    :cond_26
    move/from16 v14, v20

    .line 563
    :goto_17
    iget v1, v0, Lne;->l:I

    .line 565
    const/4 v2, 0x2

    .line 566
    if-ne v1, v2, :cond_27

    .line 568
    if-nez v13, :cond_27

    .line 570
    const/4 v1, 0x0

    .line 571
    iput v1, v0, Lne;->l:I

    .line 573
    goto :goto_18

    .line 574
    :cond_27
    const/4 v1, 0x0

    .line 575
    goto :goto_18

    .line 576
    :cond_28
    move/from16 v23, v1

    .line 578
    move/from16 v24, v2

    .line 580
    move/from16 v21, v7

    .line 582
    move/from16 v20, v14

    .line 584
    const/4 v1, 0x0

    .line 585
    const/4 v2, 0x2

    .line 586
    :goto_18
    if-le v14, v3, :cond_29

    .line 588
    iput v2, v0, Lne;->l:I

    .line 590
    :cond_29
    if-lez v24, :cond_2a

    .line 592
    if-nez v15, :cond_2a

    .line 594
    if-ne v5, v6, :cond_2a

    .line 596
    iput v2, v0, Lne;->l:I

    .line 598
    :cond_2a
    iget v2, v0, Lne;->l:I

    .line 600
    const/4 v7, 0x1

    .line 601
    if-ne v2, v7, :cond_3a

    .line 603
    move/from16 v9, v24

    .line 605
    if-le v9, v7, :cond_2b

    .line 607
    sub-int/2addr v3, v14

    .line 608
    add-int/lit8 v2, v9, -0x1

    .line 610
    div-int/2addr v3, v2

    .line 611
    goto :goto_19

    .line 612
    :cond_2b
    if-ne v9, v7, :cond_2c

    .line 614
    sub-int/2addr v3, v14

    .line 615
    const/4 v2, 0x2

    .line 616
    div-int/2addr v3, v2

    .line 617
    goto :goto_19

    .line 618
    :cond_2c
    const/4 v3, 0x0

    .line 619
    :goto_19
    if-lez v15, :cond_2d

    .line 621
    const/4 v3, 0x0

    .line 622
    :cond_2d
    move/from16 v7, v21

    .line 624
    const/4 v2, 0x0

    .line 625
    :goto_1a
    if-ge v2, v4, :cond_58

    .line 627
    if-eqz v23, :cond_2e

    .line 629
    add-int/lit8 v1, v2, 0x1

    .line 631
    sub-int v1, v4, v1

    .line 633
    goto :goto_1b

    .line 634
    :cond_2e
    move v1, v2

    .line 635
    :goto_1b
    iget-object v9, v0, Lne;->k:Ljava/util/ArrayList;

    .line 637
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 640
    move-result-object v1

    .line 641
    check-cast v1, Lkm0;

    .line 643
    iget-object v9, v1, Lkm0;->b:Llg;

    .line 645
    invoke-virtual {v9}, Llg;->Q()I

    .line 648
    move-result v9

    .line 649
    const/16 v10, 0x8

    .line 651
    if-ne v9, v10, :cond_2f

    .line 653
    iget-object v9, v1, Lkm0;->h:Lli;

    .line 655
    invoke-virtual {v9, v7}, Lli;->d(I)V

    .line 658
    iget-object v1, v1, Lkm0;->i:Lli;

    .line 660
    invoke-virtual {v1, v7}, Lli;->d(I)V

    .line 663
    goto :goto_21

    .line 664
    :cond_2f
    if-lez v2, :cond_31

    .line 666
    if-eqz v23, :cond_30

    .line 668
    sub-int/2addr v7, v3

    .line 669
    goto :goto_1c

    .line 670
    :cond_30
    add-int/2addr v7, v3

    .line 671
    :cond_31
    :goto_1c
    if-lez v2, :cond_33

    .line 673
    if-lt v2, v5, :cond_33

    .line 675
    if-eqz v23, :cond_32

    .line 677
    iget-object v9, v1, Lkm0;->h:Lli;

    .line 679
    iget v9, v9, Lli;->f:I

    .line 681
    sub-int/2addr v7, v9

    .line 682
    goto :goto_1d

    .line 683
    :cond_32
    iget-object v9, v1, Lkm0;->h:Lli;

    .line 685
    iget v9, v9, Lli;->f:I

    .line 687
    add-int/2addr v7, v9

    .line 688
    :cond_33
    :goto_1d
    if-eqz v23, :cond_34

    .line 690
    iget-object v9, v1, Lkm0;->i:Lli;

    .line 692
    invoke-virtual {v9, v7}, Lli;->d(I)V

    .line 695
    goto :goto_1e

    .line 696
    :cond_34
    iget-object v9, v1, Lkm0;->h:Lli;

    .line 698
    invoke-virtual {v9, v7}, Lli;->d(I)V

    .line 701
    :goto_1e
    iget-object v9, v1, Lkm0;->e:Lhj;

    .line 703
    iget v10, v9, Lli;->g:I

    .line 705
    iget-object v11, v1, Lkm0;->d:Llg$b;

    .line 707
    sget-object v12, Llg$b;->c:Llg$b;

    .line 709
    if-ne v11, v12, :cond_35

    .line 711
    iget v11, v1, Lkm0;->a:I

    .line 713
    const/4 v12, 0x1

    .line 714
    if-ne v11, v12, :cond_35

    .line 716
    iget v10, v9, Lhj;->m:I

    .line 718
    :cond_35
    if-eqz v23, :cond_36

    .line 720
    sub-int/2addr v7, v10

    .line 721
    goto :goto_1f

    .line 722
    :cond_36
    add-int/2addr v7, v10

    .line 723
    :goto_1f
    if-eqz v23, :cond_37

    .line 725
    iget-object v9, v1, Lkm0;->h:Lli;

    .line 727
    invoke-virtual {v9, v7}, Lli;->d(I)V

    .line 730
    goto :goto_20

    .line 731
    :cond_37
    iget-object v9, v1, Lkm0;->i:Lli;

    .line 733
    invoke-virtual {v9, v7}, Lli;->d(I)V

    .line 736
    :goto_20
    const/4 v9, 0x1

    .line 737
    iput-boolean v9, v1, Lkm0;->g:Z

    .line 739
    if-ge v2, v8, :cond_39

    .line 741
    if-ge v2, v6, :cond_39

    .line 743
    if-eqz v23, :cond_38

    .line 745
    iget-object v1, v1, Lkm0;->i:Lli;

    .line 747
    iget v1, v1, Lli;->f:I

    .line 749
    neg-int v1, v1

    .line 750
    sub-int/2addr v7, v1

    .line 751
    goto :goto_21

    .line 752
    :cond_38
    iget-object v1, v1, Lkm0;->i:Lli;

    .line 754
    iget v1, v1, Lli;->f:I

    .line 756
    neg-int v1, v1

    .line 757
    add-int/2addr v7, v1

    .line 758
    :cond_39
    :goto_21
    add-int/lit8 v2, v2, 0x1

    .line 760
    goto/16 :goto_1a

    .line 762
    :cond_3a
    move/from16 v9, v24

    .line 764
    if-nez v2, :cond_47

    .line 766
    sub-int/2addr v3, v14

    .line 767
    const/4 v2, 0x1

    .line 768
    add-int/lit8 v7, v9, 0x1

    .line 770
    div-int/2addr v3, v7

    .line 771
    if-lez v15, :cond_3b

    .line 773
    const/4 v3, 0x0

    .line 774
    :cond_3b
    move/from16 v7, v21

    .line 776
    const/4 v2, 0x0

    .line 777
    :goto_22
    if-ge v2, v4, :cond_58

    .line 779
    if-eqz v23, :cond_3c

    .line 781
    add-int/lit8 v1, v2, 0x1

    .line 783
    sub-int v1, v4, v1

    .line 785
    goto :goto_23

    .line 786
    :cond_3c
    move v1, v2

    .line 787
    :goto_23
    iget-object v9, v0, Lne;->k:Ljava/util/ArrayList;

    .line 789
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 792
    move-result-object v1

    .line 793
    check-cast v1, Lkm0;

    .line 795
    iget-object v9, v1, Lkm0;->b:Llg;

    .line 797
    invoke-virtual {v9}, Llg;->Q()I

    .line 800
    move-result v9

    .line 801
    const/16 v10, 0x8

    .line 803
    if-ne v9, v10, :cond_3d

    .line 805
    iget-object v9, v1, Lkm0;->h:Lli;

    .line 807
    invoke-virtual {v9, v7}, Lli;->d(I)V

    .line 810
    iget-object v1, v1, Lkm0;->i:Lli;

    .line 812
    invoke-virtual {v1, v7}, Lli;->d(I)V

    .line 815
    goto :goto_29

    .line 816
    :cond_3d
    if-eqz v23, :cond_3e

    .line 818
    sub-int/2addr v7, v3

    .line 819
    goto :goto_24

    .line 820
    :cond_3e
    add-int/2addr v7, v3

    .line 821
    :goto_24
    if-lez v2, :cond_40

    .line 823
    if-lt v2, v5, :cond_40

    .line 825
    if-eqz v23, :cond_3f

    .line 827
    iget-object v9, v1, Lkm0;->h:Lli;

    .line 829
    iget v9, v9, Lli;->f:I

    .line 831
    sub-int/2addr v7, v9

    .line 832
    goto :goto_25

    .line 833
    :cond_3f
    iget-object v9, v1, Lkm0;->h:Lli;

    .line 835
    iget v9, v9, Lli;->f:I

    .line 837
    add-int/2addr v7, v9

    .line 838
    :cond_40
    :goto_25
    if-eqz v23, :cond_41

    .line 840
    iget-object v9, v1, Lkm0;->i:Lli;

    .line 842
    invoke-virtual {v9, v7}, Lli;->d(I)V

    .line 845
    goto :goto_26

    .line 846
    :cond_41
    iget-object v9, v1, Lkm0;->h:Lli;

    .line 848
    invoke-virtual {v9, v7}, Lli;->d(I)V

    .line 851
    :goto_26
    iget-object v9, v1, Lkm0;->e:Lhj;

    .line 853
    iget v10, v9, Lli;->g:I

    .line 855
    iget-object v11, v1, Lkm0;->d:Llg$b;

    .line 857
    sget-object v12, Llg$b;->c:Llg$b;

    .line 859
    if-ne v11, v12, :cond_42

    .line 861
    iget v11, v1, Lkm0;->a:I

    .line 863
    const/4 v12, 0x1

    .line 864
    if-ne v11, v12, :cond_42

    .line 866
    iget v9, v9, Lhj;->m:I

    .line 868
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    .line 871
    move-result v10

    .line 872
    :cond_42
    if-eqz v23, :cond_43

    .line 874
    sub-int/2addr v7, v10

    .line 875
    goto :goto_27

    .line 876
    :cond_43
    add-int/2addr v7, v10

    .line 877
    :goto_27
    if-eqz v23, :cond_44

    .line 879
    iget-object v9, v1, Lkm0;->h:Lli;

    .line 881
    invoke-virtual {v9, v7}, Lli;->d(I)V

    .line 884
    goto :goto_28

    .line 885
    :cond_44
    iget-object v9, v1, Lkm0;->i:Lli;

    .line 887
    invoke-virtual {v9, v7}, Lli;->d(I)V

    .line 890
    :goto_28
    if-ge v2, v8, :cond_46

    .line 892
    if-ge v2, v6, :cond_46

    .line 894
    if-eqz v23, :cond_45

    .line 896
    iget-object v1, v1, Lkm0;->i:Lli;

    .line 898
    iget v1, v1, Lli;->f:I

    .line 900
    neg-int v1, v1

    .line 901
    sub-int/2addr v7, v1

    .line 902
    goto :goto_29

    .line 903
    :cond_45
    iget-object v1, v1, Lkm0;->i:Lli;

    .line 905
    iget v1, v1, Lli;->f:I

    .line 907
    neg-int v1, v1

    .line 908
    add-int/2addr v7, v1

    .line 909
    :cond_46
    :goto_29
    add-int/lit8 v2, v2, 0x1

    .line 911
    goto/16 :goto_22

    .line 913
    :cond_47
    const/4 v7, 0x2

    .line 914
    if-ne v2, v7, :cond_58

    .line 916
    iget v2, v0, Lkm0;->f:I

    .line 918
    if-nez v2, :cond_48

    .line 920
    iget-object v2, v0, Lkm0;->b:Llg;

    .line 922
    invoke-virtual {v2}, Llg;->w()F

    .line 925
    move-result v2

    .line 926
    goto :goto_2a

    .line 927
    :cond_48
    iget-object v2, v0, Lkm0;->b:Llg;

    .line 929
    invoke-virtual {v2}, Llg;->M()F

    .line 932
    move-result v2

    .line 933
    :goto_2a
    if-eqz v23, :cond_49

    .line 935
    const/high16 v7, 0x3f800000    # 1.0f

    .line 937
    sub-float v2, v7, v2

    .line 939
    :cond_49
    sub-int/2addr v3, v14

    .line 940
    int-to-float v3, v3

    .line 941
    mul-float v3, v3, v2

    .line 943
    const/high16 v2, 0x3f000000    # 0.5f

    .line 945
    add-float/2addr v3, v2

    .line 946
    float-to-int v2, v3

    .line 947
    if-ltz v2, :cond_4a

    .line 949
    if-lez v15, :cond_4b

    .line 951
    :cond_4a
    const/4 v2, 0x0

    .line 952
    :cond_4b
    if-eqz v23, :cond_4c

    .line 954
    sub-int v7, v21, v2

    .line 956
    goto :goto_2b

    .line 957
    :cond_4c
    add-int v7, v21, v2

    .line 959
    :goto_2b
    const/4 v2, 0x0

    .line 960
    :goto_2c
    if-ge v2, v4, :cond_58

    .line 962
    if-eqz v23, :cond_4d

    .line 964
    add-int/lit8 v1, v2, 0x1

    .line 966
    sub-int v1, v4, v1

    .line 968
    goto :goto_2d

    .line 969
    :cond_4d
    move v1, v2

    .line 970
    :goto_2d
    iget-object v3, v0, Lne;->k:Ljava/util/ArrayList;

    .line 972
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 975
    move-result-object v1

    .line 976
    check-cast v1, Lkm0;

    .line 978
    iget-object v3, v1, Lkm0;->b:Llg;

    .line 980
    invoke-virtual {v3}, Llg;->Q()I

    .line 983
    move-result v3

    .line 984
    const/16 v9, 0x8

    .line 986
    if-ne v3, v9, :cond_4e

    .line 988
    iget-object v3, v1, Lkm0;->h:Lli;

    .line 990
    invoke-virtual {v3, v7}, Lli;->d(I)V

    .line 993
    iget-object v1, v1, Lkm0;->i:Lli;

    .line 995
    invoke-virtual {v1, v7}, Lli;->d(I)V

    .line 998
    const/4 v12, 0x1

    .line 999
    goto :goto_33

    .line 1000
    :cond_4e
    if-lez v2, :cond_50

    .line 1002
    if-lt v2, v5, :cond_50

    .line 1004
    if-eqz v23, :cond_4f

    .line 1006
    iget-object v3, v1, Lkm0;->h:Lli;

    .line 1008
    iget v3, v3, Lli;->f:I

    .line 1010
    sub-int/2addr v7, v3

    .line 1011
    goto :goto_2e

    .line 1012
    :cond_4f
    iget-object v3, v1, Lkm0;->h:Lli;

    .line 1014
    iget v3, v3, Lli;->f:I

    .line 1016
    add-int/2addr v7, v3

    .line 1017
    :cond_50
    :goto_2e
    if-eqz v23, :cond_51

    .line 1019
    iget-object v3, v1, Lkm0;->i:Lli;

    .line 1021
    invoke-virtual {v3, v7}, Lli;->d(I)V

    .line 1024
    goto :goto_2f

    .line 1025
    :cond_51
    iget-object v3, v1, Lkm0;->h:Lli;

    .line 1027
    invoke-virtual {v3, v7}, Lli;->d(I)V

    .line 1030
    :goto_2f
    iget-object v3, v1, Lkm0;->e:Lhj;

    .line 1032
    iget v10, v3, Lli;->g:I

    .line 1034
    iget-object v11, v1, Lkm0;->d:Llg$b;

    .line 1036
    sget-object v12, Llg$b;->c:Llg$b;

    .line 1038
    if-ne v11, v12, :cond_52

    .line 1040
    iget v11, v1, Lkm0;->a:I

    .line 1042
    const/4 v12, 0x1

    .line 1043
    if-ne v11, v12, :cond_53

    .line 1045
    iget v10, v3, Lhj;->m:I

    .line 1047
    goto :goto_30

    .line 1048
    :cond_52
    const/4 v12, 0x1

    .line 1049
    :cond_53
    :goto_30
    if-eqz v23, :cond_54

    .line 1051
    sub-int/2addr v7, v10

    .line 1052
    goto :goto_31

    .line 1053
    :cond_54
    add-int/2addr v7, v10

    .line 1054
    :goto_31
    if-eqz v23, :cond_55

    .line 1056
    iget-object v3, v1, Lkm0;->h:Lli;

    .line 1058
    invoke-virtual {v3, v7}, Lli;->d(I)V

    .line 1061
    goto :goto_32

    .line 1062
    :cond_55
    iget-object v3, v1, Lkm0;->i:Lli;

    .line 1064
    invoke-virtual {v3, v7}, Lli;->d(I)V

    .line 1067
    :goto_32
    if-ge v2, v8, :cond_57

    .line 1069
    if-ge v2, v6, :cond_57

    .line 1071
    if-eqz v23, :cond_56

    .line 1073
    iget-object v1, v1, Lkm0;->i:Lli;

    .line 1075
    iget v1, v1, Lli;->f:I

    .line 1077
    neg-int v1, v1

    .line 1078
    sub-int/2addr v7, v1

    .line 1079
    goto :goto_33

    .line 1080
    :cond_56
    iget-object v1, v1, Lkm0;->i:Lli;

    .line 1082
    iget v1, v1, Lli;->f:I

    .line 1084
    neg-int v1, v1

    .line 1085
    add-int/2addr v7, v1

    .line 1086
    :cond_57
    :goto_33
    add-int/lit8 v2, v2, 0x1

    .line 1088
    goto/16 :goto_2c

    .line 1090
    :cond_58
    :goto_34
    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lne;->k:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lkm0;

    .line 19
    invoke-virtual {v1}, Lkm0;->d()V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lne;->k:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ge v0, v1, :cond_1

    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v2, p0, Lne;->k:Ljava/util/ArrayList;

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lkm0;

    .line 42
    iget-object v2, v2, Lkm0;->b:Llg;

    .line 44
    iget-object v4, p0, Lne;->k:Ljava/util/ArrayList;

    .line 46
    sub-int/2addr v0, v1

    .line 47
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lkm0;

    .line 53
    iget-object v0, v0, Lkm0;->b:Llg;

    .line 55
    iget v4, p0, Lkm0;->f:I

    .line 57
    if-nez v4, :cond_5

    .line 59
    iget-object v1, v2, Llg;->H:Lfg;

    .line 61
    iget-object v0, v0, Llg;->J:Lfg;

    .line 63
    invoke-virtual {p0, v1, v3}, Lkm0;->i(Lfg;I)Lli;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1}, Lfg;->e()I

    .line 70
    move-result v1

    .line 71
    invoke-virtual {p0}, Lne;->r()Llg;

    .line 74
    move-result-object v4

    .line 75
    if-eqz v4, :cond_2

    .line 77
    iget-object v1, v4, Llg;->H:Lfg;

    .line 79
    invoke-virtual {v1}, Lfg;->e()I

    .line 82
    move-result v1

    .line 83
    :cond_2
    if-eqz v2, :cond_3

    .line 85
    iget-object v4, p0, Lkm0;->h:Lli;

    .line 87
    invoke-virtual {p0, v4, v2, v1}, Lkm0;->b(Lli;Lli;I)V

    .line 90
    :cond_3
    invoke-virtual {p0, v0, v3}, Lkm0;->i(Lfg;I)Lli;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0}, Lfg;->e()I

    .line 97
    move-result v0

    .line 98
    invoke-virtual {p0}, Lne;->s()Llg;

    .line 101
    move-result-object v2

    .line 102
    if-eqz v2, :cond_4

    .line 104
    iget-object v0, v2, Llg;->J:Lfg;

    .line 106
    invoke-virtual {v0}, Lfg;->e()I

    .line 109
    move-result v0

    .line 110
    :cond_4
    if-eqz v1, :cond_9

    .line 112
    iget-object v2, p0, Lkm0;->i:Lli;

    .line 114
    neg-int v0, v0

    .line 115
    invoke-virtual {p0, v2, v1, v0}, Lkm0;->b(Lli;Lli;I)V

    .line 118
    goto :goto_1

    .line 119
    :cond_5
    iget-object v2, v2, Llg;->I:Lfg;

    .line 121
    iget-object v0, v0, Llg;->K:Lfg;

    .line 123
    invoke-virtual {p0, v2, v1}, Lkm0;->i(Lfg;I)Lli;

    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v2}, Lfg;->e()I

    .line 130
    move-result v2

    .line 131
    invoke-virtual {p0}, Lne;->r()Llg;

    .line 134
    move-result-object v4

    .line 135
    if-eqz v4, :cond_6

    .line 137
    iget-object v2, v4, Llg;->I:Lfg;

    .line 139
    invoke-virtual {v2}, Lfg;->e()I

    .line 142
    move-result v2

    .line 143
    :cond_6
    if-eqz v3, :cond_7

    .line 145
    iget-object v4, p0, Lkm0;->h:Lli;

    .line 147
    invoke-virtual {p0, v4, v3, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 150
    :cond_7
    invoke-virtual {p0, v0, v1}, Lkm0;->i(Lfg;I)Lli;

    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0}, Lfg;->e()I

    .line 157
    move-result v0

    .line 158
    invoke-virtual {p0}, Lne;->s()Llg;

    .line 161
    move-result-object v2

    .line 162
    if-eqz v2, :cond_8

    .line 164
    iget-object v0, v2, Llg;->K:Lfg;

    .line 166
    invoke-virtual {v0}, Lfg;->e()I

    .line 169
    move-result v0

    .line 170
    :cond_8
    if-eqz v1, :cond_9

    .line 172
    iget-object v2, p0, Lkm0;->i:Lli;

    .line 174
    neg-int v0, v0

    .line 175
    invoke-virtual {p0, v2, v1, v0}, Lkm0;->b(Lli;Lli;I)V

    .line 178
    :cond_9
    :goto_1
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 180
    iput-object p0, v0, Lli;->a:Lji;

    .line 182
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 184
    iput-object p0, v0, Lli;->a:Lji;

    .line 186
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lne;->k:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 10
    iget-object v1, p0, Lne;->k:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lkm0;

    .line 18
    invoke-virtual {v1}, Lkm0;->e()V

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lkm0;->c:Lpb0;

    .line 4
    iget-object v0, p0, Lne;->k:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lkm0;

    .line 22
    invoke-virtual {v1}, Lkm0;->f()V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public j()J
    .locals 7

    .line 1
    iget-object v0, p0, Lne;->k:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_0

    .line 12
    iget-object v4, p0, Lne;->k:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lkm0;

    .line 20
    iget-object v5, v4, Lkm0;->h:Lli;

    .line 22
    iget v5, v5, Lli;->f:I

    .line 24
    int-to-long v5, v5

    .line 25
    add-long/2addr v1, v5

    .line 26
    invoke-virtual {v4}, Lkm0;->j()J

    .line 29
    move-result-wide v5

    .line 30
    add-long/2addr v1, v5

    .line 31
    iget-object v4, v4, Lkm0;->i:Lli;

    .line 33
    iget v4, v4, Lli;->f:I

    .line 35
    int-to-long v4, v4

    .line 36
    add-long/2addr v1, v4

    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-wide v1
.end method

.method public m()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lne;->k:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    iget-object v3, p0, Lne;->k:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lkm0;

    .line 19
    invoke-virtual {v3}, Lkm0;->m()Z

    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 25
    return v1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    return v0
.end method

.method public final q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 3
    iget v1, p0, Lkm0;->f:I

    .line 5
    invoke-virtual {v0, v1}, Llg;->J(I)Llg;

    .line 8
    move-result-object v1

    .line 9
    :goto_0
    move-object v4, v1

    .line 10
    move-object v1, v0

    .line 11
    move-object v0, v4

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget v1, p0, Lkm0;->f:I

    .line 16
    invoke-virtual {v0, v1}, Llg;->J(I)Llg;

    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-object v1, p0, Lkm0;->b:Llg;

    .line 23
    iget-object v0, p0, Lne;->k:Ljava/util/ArrayList;

    .line 25
    iget v2, p0, Lkm0;->f:I

    .line 27
    invoke-virtual {v1, v2}, Llg;->L(I)Lkm0;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget v0, p0, Lkm0;->f:I

    .line 36
    invoke-virtual {v1, v0}, Llg;->H(I)Llg;

    .line 39
    move-result-object v0

    .line 40
    :goto_1
    if-eqz v0, :cond_1

    .line 42
    iget-object v1, p0, Lne;->k:Ljava/util/ArrayList;

    .line 44
    iget v2, p0, Lkm0;->f:I

    .line 46
    invoke-virtual {v0, v2}, Llg;->L(I)Lkm0;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget v1, p0, Lkm0;->f:I

    .line 55
    invoke-virtual {v0, v1}, Llg;->H(I)Llg;

    .line 58
    move-result-object v0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v0, p0, Lne;->k:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v0

    .line 66
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v1

    .line 70
    const/4 v2, 0x1

    .line 71
    if-eqz v1, :cond_4

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lkm0;

    .line 79
    iget v3, p0, Lkm0;->f:I

    .line 81
    if-nez v3, :cond_3

    .line 83
    iget-object v1, v1, Lkm0;->b:Llg;

    .line 85
    iput-object p0, v1, Llg;->c:Lne;

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    if-ne v3, v2, :cond_2

    .line 90
    iget-object v1, v1, Lkm0;->b:Llg;

    .line 92
    iput-object p0, v1, Llg;->d:Lne;

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    iget v0, p0, Lkm0;->f:I

    .line 97
    if-nez v0, :cond_5

    .line 99
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 101
    invoke-virtual {v0}, Llg;->I()Llg;

    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lmg;

    .line 107
    invoke-virtual {v0}, Lmg;->w1()Z

    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_5

    .line 113
    const/4 v0, 0x1

    .line 114
    goto :goto_3

    .line 115
    :cond_5
    const/4 v0, 0x0

    .line 116
    :goto_3
    if-eqz v0, :cond_6

    .line 118
    iget-object v0, p0, Lne;->k:Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 123
    move-result v0

    .line 124
    if-le v0, v2, :cond_6

    .line 126
    iget-object v0, p0, Lne;->k:Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 131
    move-result v1

    .line 132
    sub-int/2addr v1, v2

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Lkm0;

    .line 139
    iget-object v0, v0, Lkm0;->b:Llg;

    .line 141
    iput-object v0, p0, Lkm0;->b:Llg;

    .line 143
    :cond_6
    iget v0, p0, Lkm0;->f:I

    .line 145
    if-nez v0, :cond_7

    .line 147
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 149
    invoke-virtual {v0}, Llg;->x()I

    .line 152
    move-result v0

    .line 153
    goto :goto_4

    .line 154
    :cond_7
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 156
    invoke-virtual {v0}, Llg;->N()I

    .line 159
    move-result v0

    .line 160
    :goto_4
    iput v0, p0, Lne;->l:I

    .line 162
    return-void
.end method

.method public final r()Llg;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lne;->k:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Lne;->k:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lkm0;

    .line 18
    iget-object v2, v1, Lkm0;->b:Llg;

    .line 20
    invoke-virtual {v2}, Llg;->Q()I

    .line 23
    move-result v2

    .line 24
    const/16 v3, 0x8

    .line 26
    if-eq v2, v3, :cond_0

    .line 28
    iget-object v0, v1, Lkm0;->b:Llg;

    .line 30
    return-object v0

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    return-object v0
.end method

.method public final s()Llg;
    .locals 4

    .line 1
    iget-object v0, p0, Lne;->k:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 11
    iget-object v1, p0, Lne;->k:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lkm0;

    .line 19
    iget-object v2, v1, Lkm0;->b:Llg;

    .line 21
    invoke-virtual {v2}, Llg;->Q()I

    .line 24
    move-result v2

    .line 25
    const/16 v3, 0x8

    .line 27
    if-eq v2, v3, :cond_0

    .line 29
    iget-object v0, v1, Lkm0;->b:Llg;

    .line 31
    return-object v0

    .line 32
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "ChainRun "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lkm0;->f:I

    .line 13
    if-nez v1, :cond_0

    .line 15
    const-string v1, "horizontal : "

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "vertical : "

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lne;->k:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v1

    .line 33
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lkm0;

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v0, "<"

    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v0, "> "

    .line 87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    return-object v0
.end method
