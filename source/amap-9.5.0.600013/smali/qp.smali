.class public Lqp;
.super Lkm0;
.source "SourceFile"


# static fields
.field public static k:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 4
    sput-object v0, Lqp;->k:[I

    .line 6
    return-void
.end method

.method public constructor <init>(Llg;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lkm0;-><init>(Llg;)V

    .line 4
    iget-object p1, p0, Lkm0;->h:Lli;

    .line 6
    sget-object v0, Lli$a;->d:Lli$a;

    .line 8
    iput-object v0, p1, Lli;->e:Lli$a;

    .line 10
    iget-object p1, p0, Lkm0;->i:Lli;

    .line 12
    sget-object v0, Lli$a;->e:Lli$a;

    .line 14
    iput-object v0, p1, Lli;->e:Lli$a;

    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lkm0;->f:I

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lji;)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 3
    sget-object v0, Lqp$a;->a:[I

    .line 5
    iget-object v1, v8, Lkm0;->j:Lkm0$b;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 11
    aget v0, v0, v1

    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v9, 0x1

    .line 16
    const/4 v10, 0x0

    .line 17
    if-eq v0, v9, :cond_2

    .line 19
    if-eq v0, v1, :cond_1

    .line 21
    if-eq v0, v2, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 26
    iget-object v1, v0, Llg;->H:Lfg;

    .line 28
    iget-object v0, v0, Llg;->J:Lfg;

    .line 30
    move-object/from16 v3, p1

    .line 32
    invoke-virtual {v8, v3, v1, v0, v10}, Lkm0;->n(Lji;Lfg;Lfg;I)V

    .line 35
    return-void

    .line 36
    :cond_1
    move-object/from16 v3, p1

    .line 38
    invoke-virtual/range {p0 .. p1}, Lkm0;->o(Lji;)V

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object/from16 v3, p1

    .line 44
    invoke-virtual/range {p0 .. p1}, Lkm0;->p(Lji;)V

    .line 47
    :goto_0
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 49
    iget-boolean v0, v0, Lli;->j:Z

    .line 51
    const/high16 v11, 0x3f000000    # 0.5f

    .line 53
    if-nez v0, :cond_24

    .line 55
    iget-object v0, v8, Lkm0;->d:Llg$b;

    .line 57
    sget-object v3, Llg$b;->c:Llg$b;

    .line 59
    if-ne v0, v3, :cond_24

    .line 61
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 63
    iget v3, v0, Llg;->p:I

    .line 65
    if-eq v3, v1, :cond_23

    .line 67
    if-eq v3, v2, :cond_3

    .line 69
    goto/16 :goto_f

    .line 71
    :cond_3
    iget v1, v0, Llg;->q:I

    .line 73
    const/4 v3, -0x1

    .line 74
    if-eqz v1, :cond_8

    .line 76
    if-ne v1, v2, :cond_4

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    invoke-virtual {v0}, Llg;->u()I

    .line 82
    move-result v0

    .line 83
    if-eq v0, v3, :cond_7

    .line 85
    if-eqz v0, :cond_6

    .line 87
    if-eq v0, v9, :cond_5

    .line 89
    const/4 v0, 0x0

    .line 90
    goto :goto_3

    .line 91
    :cond_5
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 93
    iget-object v1, v0, Llg;->f:Luk0;

    .line 95
    iget-object v1, v1, Lkm0;->e:Lhj;

    .line 97
    iget v1, v1, Lli;->g:I

    .line 99
    int-to-float v1, v1

    .line 100
    invoke-virtual {v0}, Llg;->t()F

    .line 103
    move-result v0

    .line 104
    goto :goto_1

    .line 105
    :cond_6
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 107
    iget-object v1, v0, Llg;->f:Luk0;

    .line 109
    iget-object v1, v1, Lkm0;->e:Lhj;

    .line 111
    iget v1, v1, Lli;->g:I

    .line 113
    int-to-float v1, v1

    .line 114
    invoke-virtual {v0}, Llg;->t()F

    .line 117
    move-result v0

    .line 118
    div-float/2addr v1, v0

    .line 119
    goto :goto_2

    .line 120
    :cond_7
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 122
    iget-object v1, v0, Llg;->f:Luk0;

    .line 124
    iget-object v1, v1, Lkm0;->e:Lhj;

    .line 126
    iget v1, v1, Lli;->g:I

    .line 128
    int-to-float v1, v1

    .line 129
    invoke-virtual {v0}, Llg;->t()F

    .line 132
    move-result v0

    .line 133
    :goto_1
    mul-float v1, v1, v0

    .line 135
    :goto_2
    add-float/2addr v1, v11

    .line 136
    float-to-int v0, v1

    .line 137
    :goto_3
    iget-object v1, v8, Lkm0;->e:Lhj;

    .line 139
    invoke-virtual {v1, v0}, Lhj;->d(I)V

    .line 142
    goto/16 :goto_f

    .line 144
    :cond_8
    :goto_4
    iget-object v1, v0, Llg;->f:Luk0;

    .line 146
    iget-object v12, v1, Lkm0;->h:Lli;

    .line 148
    iget-object v13, v1, Lkm0;->i:Lli;

    .line 150
    iget-object v1, v0, Llg;->H:Lfg;

    .line 152
    iget-object v1, v1, Lfg;->f:Lfg;

    .line 154
    if-eqz v1, :cond_9

    .line 156
    const/4 v1, 0x1

    .line 157
    goto :goto_5

    .line 158
    :cond_9
    const/4 v1, 0x0

    .line 159
    :goto_5
    iget-object v2, v0, Llg;->I:Lfg;

    .line 161
    iget-object v2, v2, Lfg;->f:Lfg;

    .line 163
    if-eqz v2, :cond_a

    .line 165
    const/4 v2, 0x1

    .line 166
    goto :goto_6

    .line 167
    :cond_a
    const/4 v2, 0x0

    .line 168
    :goto_6
    iget-object v4, v0, Llg;->J:Lfg;

    .line 170
    iget-object v4, v4, Lfg;->f:Lfg;

    .line 172
    if-eqz v4, :cond_b

    .line 174
    const/4 v4, 0x1

    .line 175
    goto :goto_7

    .line 176
    :cond_b
    const/4 v4, 0x0

    .line 177
    :goto_7
    iget-object v5, v0, Llg;->K:Lfg;

    .line 179
    iget-object v5, v5, Lfg;->f:Lfg;

    .line 181
    if-eqz v5, :cond_c

    .line 183
    const/4 v5, 0x1

    .line 184
    goto :goto_8

    .line 185
    :cond_c
    const/4 v5, 0x0

    .line 186
    :goto_8
    invoke-virtual {v0}, Llg;->u()I

    .line 189
    move-result v14

    .line 190
    if-eqz v1, :cond_15

    .line 192
    if-eqz v2, :cond_15

    .line 194
    if-eqz v4, :cond_15

    .line 196
    if-eqz v5, :cond_15

    .line 198
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 200
    invoke-virtual {v0}, Llg;->t()F

    .line 203
    move-result v15

    .line 204
    iget-boolean v0, v12, Lli;->j:Z

    .line 206
    if-eqz v0, :cond_f

    .line 208
    iget-boolean v0, v13, Lli;->j:Z

    .line 210
    if-eqz v0, :cond_f

    .line 212
    iget-object v0, v8, Lkm0;->h:Lli;

    .line 214
    iget-boolean v1, v0, Lli;->c:Z

    .line 216
    if-eqz v1, :cond_e

    .line 218
    iget-object v1, v8, Lkm0;->i:Lli;

    .line 220
    iget-boolean v1, v1, Lli;->c:Z

    .line 222
    if-nez v1, :cond_d

    .line 224
    goto :goto_9

    .line 225
    :cond_d
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 227
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Lli;

    .line 233
    iget v0, v0, Lli;->g:I

    .line 235
    iget-object v1, v8, Lkm0;->h:Lli;

    .line 237
    iget v1, v1, Lli;->f:I

    .line 239
    add-int v2, v0, v1

    .line 241
    iget-object v0, v8, Lkm0;->i:Lli;

    .line 243
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 245
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Lli;

    .line 251
    iget v0, v0, Lli;->g:I

    .line 253
    iget-object v1, v8, Lkm0;->i:Lli;

    .line 255
    iget v1, v1, Lli;->f:I

    .line 257
    sub-int v3, v0, v1

    .line 259
    iget v0, v12, Lli;->g:I

    .line 261
    iget v1, v12, Lli;->f:I

    .line 263
    add-int v4, v0, v1

    .line 265
    iget v0, v13, Lli;->g:I

    .line 267
    iget v1, v13, Lli;->f:I

    .line 269
    sub-int v5, v0, v1

    .line 271
    sget-object v1, Lqp;->k:[I

    .line 273
    move-object/from16 v0, p0

    .line 275
    move v6, v15

    .line 276
    move v7, v14

    .line 277
    invoke-virtual/range {v0 .. v7}, Lqp;->q([IIIIIFI)V

    .line 280
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 282
    sget-object v1, Lqp;->k:[I

    .line 284
    aget v1, v1, v10

    .line 286
    invoke-virtual {v0, v1}, Lhj;->d(I)V

    .line 289
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 291
    iget-object v0, v0, Llg;->f:Luk0;

    .line 293
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 295
    sget-object v1, Lqp;->k:[I

    .line 297
    aget v1, v1, v9

    .line 299
    invoke-virtual {v0, v1}, Lhj;->d(I)V

    .line 302
    :cond_e
    :goto_9
    return-void

    .line 303
    :cond_f
    iget-object v0, v8, Lkm0;->h:Lli;

    .line 305
    iget-boolean v1, v0, Lli;->j:Z

    .line 307
    if-eqz v1, :cond_12

    .line 309
    iget-object v1, v8, Lkm0;->i:Lli;

    .line 311
    iget-boolean v2, v1, Lli;->j:Z

    .line 313
    if-eqz v2, :cond_12

    .line 315
    iget-boolean v2, v12, Lli;->c:Z

    .line 317
    if-eqz v2, :cond_11

    .line 319
    iget-boolean v2, v13, Lli;->c:Z

    .line 321
    if-nez v2, :cond_10

    .line 323
    goto :goto_a

    .line 324
    :cond_10
    iget v2, v0, Lli;->g:I

    .line 326
    iget v0, v0, Lli;->f:I

    .line 328
    add-int/2addr v2, v0

    .line 329
    iget v0, v1, Lli;->g:I

    .line 331
    iget v1, v1, Lli;->f:I

    .line 333
    sub-int v3, v0, v1

    .line 335
    iget-object v0, v12, Lli;->l:Ljava/util/List;

    .line 337
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 340
    move-result-object v0

    .line 341
    check-cast v0, Lli;

    .line 343
    iget v0, v0, Lli;->g:I

    .line 345
    iget v1, v12, Lli;->f:I

    .line 347
    add-int v4, v0, v1

    .line 349
    iget-object v0, v13, Lli;->l:Ljava/util/List;

    .line 351
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 354
    move-result-object v0

    .line 355
    check-cast v0, Lli;

    .line 357
    iget v0, v0, Lli;->g:I

    .line 359
    iget v1, v13, Lli;->f:I

    .line 361
    sub-int v5, v0, v1

    .line 363
    sget-object v1, Lqp;->k:[I

    .line 365
    move-object/from16 v0, p0

    .line 367
    move v6, v15

    .line 368
    move v7, v14

    .line 369
    invoke-virtual/range {v0 .. v7}, Lqp;->q([IIIIIFI)V

    .line 372
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 374
    sget-object v1, Lqp;->k:[I

    .line 376
    aget v1, v1, v10

    .line 378
    invoke-virtual {v0, v1}, Lhj;->d(I)V

    .line 381
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 383
    iget-object v0, v0, Llg;->f:Luk0;

    .line 385
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 387
    sget-object v1, Lqp;->k:[I

    .line 389
    aget v1, v1, v9

    .line 391
    invoke-virtual {v0, v1}, Lhj;->d(I)V

    .line 394
    goto :goto_b

    .line 395
    :cond_11
    :goto_a
    return-void

    .line 396
    :cond_12
    :goto_b
    iget-object v0, v8, Lkm0;->h:Lli;

    .line 398
    iget-boolean v1, v0, Lli;->c:Z

    .line 400
    if-eqz v1, :cond_14

    .line 402
    iget-object v1, v8, Lkm0;->i:Lli;

    .line 404
    iget-boolean v1, v1, Lli;->c:Z

    .line 406
    if-eqz v1, :cond_14

    .line 408
    iget-boolean v1, v12, Lli;->c:Z

    .line 410
    if-eqz v1, :cond_14

    .line 412
    iget-boolean v1, v13, Lli;->c:Z

    .line 414
    if-nez v1, :cond_13

    .line 416
    goto :goto_c

    .line 417
    :cond_13
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 419
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 422
    move-result-object v0

    .line 423
    check-cast v0, Lli;

    .line 425
    iget v0, v0, Lli;->g:I

    .line 427
    iget-object v1, v8, Lkm0;->h:Lli;

    .line 429
    iget v1, v1, Lli;->f:I

    .line 431
    add-int v2, v0, v1

    .line 433
    iget-object v0, v8, Lkm0;->i:Lli;

    .line 435
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 437
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 440
    move-result-object v0

    .line 441
    check-cast v0, Lli;

    .line 443
    iget v0, v0, Lli;->g:I

    .line 445
    iget-object v1, v8, Lkm0;->i:Lli;

    .line 447
    iget v1, v1, Lli;->f:I

    .line 449
    sub-int v3, v0, v1

    .line 451
    iget-object v0, v12, Lli;->l:Ljava/util/List;

    .line 453
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 456
    move-result-object v0

    .line 457
    check-cast v0, Lli;

    .line 459
    iget v0, v0, Lli;->g:I

    .line 461
    iget v1, v12, Lli;->f:I

    .line 463
    add-int v4, v0, v1

    .line 465
    iget-object v0, v13, Lli;->l:Ljava/util/List;

    .line 467
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 470
    move-result-object v0

    .line 471
    check-cast v0, Lli;

    .line 473
    iget v0, v0, Lli;->g:I

    .line 475
    iget v1, v13, Lli;->f:I

    .line 477
    sub-int v5, v0, v1

    .line 479
    sget-object v1, Lqp;->k:[I

    .line 481
    move-object/from16 v0, p0

    .line 483
    move v6, v15

    .line 484
    move v7, v14

    .line 485
    invoke-virtual/range {v0 .. v7}, Lqp;->q([IIIIIFI)V

    .line 488
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 490
    sget-object v1, Lqp;->k:[I

    .line 492
    aget v1, v1, v10

    .line 494
    invoke-virtual {v0, v1}, Lhj;->d(I)V

    .line 497
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 499
    iget-object v0, v0, Llg;->f:Luk0;

    .line 501
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 503
    sget-object v1, Lqp;->k:[I

    .line 505
    aget v1, v1, v9

    .line 507
    invoke-virtual {v0, v1}, Lhj;->d(I)V

    .line 510
    goto/16 :goto_f

    .line 512
    :cond_14
    :goto_c
    return-void

    .line 513
    :cond_15
    if-eqz v1, :cond_1c

    .line 515
    if-eqz v4, :cond_1c

    .line 517
    iget-object v0, v8, Lkm0;->h:Lli;

    .line 519
    iget-boolean v0, v0, Lli;->c:Z

    .line 521
    if-eqz v0, :cond_1b

    .line 523
    iget-object v0, v8, Lkm0;->i:Lli;

    .line 525
    iget-boolean v0, v0, Lli;->c:Z

    .line 527
    if-nez v0, :cond_16

    .line 529
    goto/16 :goto_d

    .line 531
    :cond_16
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 533
    invoke-virtual {v0}, Llg;->t()F

    .line 536
    move-result v0

    .line 537
    iget-object v1, v8, Lkm0;->h:Lli;

    .line 539
    iget-object v1, v1, Lli;->l:Ljava/util/List;

    .line 541
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 544
    move-result-object v1

    .line 545
    check-cast v1, Lli;

    .line 547
    iget v1, v1, Lli;->g:I

    .line 549
    iget-object v2, v8, Lkm0;->h:Lli;

    .line 551
    iget v2, v2, Lli;->f:I

    .line 553
    add-int/2addr v1, v2

    .line 554
    iget-object v2, v8, Lkm0;->i:Lli;

    .line 556
    iget-object v2, v2, Lli;->l:Ljava/util/List;

    .line 558
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 561
    move-result-object v2

    .line 562
    check-cast v2, Lli;

    .line 564
    iget v2, v2, Lli;->g:I

    .line 566
    iget-object v4, v8, Lkm0;->i:Lli;

    .line 568
    iget v4, v4, Lli;->f:I

    .line 570
    sub-int/2addr v2, v4

    .line 571
    if-eq v14, v3, :cond_19

    .line 573
    if-eqz v14, :cond_19

    .line 575
    if-eq v14, v9, :cond_17

    .line 577
    goto/16 :goto_f

    .line 579
    :cond_17
    sub-int/2addr v2, v1

    .line 580
    invoke-virtual {v8, v2, v10}, Lkm0;->g(II)I

    .line 583
    move-result v1

    .line 584
    int-to-float v2, v1

    .line 585
    div-float/2addr v2, v0

    .line 586
    add-float/2addr v2, v11

    .line 587
    float-to-int v2, v2

    .line 588
    invoke-virtual {v8, v2, v9}, Lkm0;->g(II)I

    .line 591
    move-result v3

    .line 592
    if-eq v2, v3, :cond_18

    .line 594
    int-to-float v1, v3

    .line 595
    mul-float v1, v1, v0

    .line 597
    add-float/2addr v1, v11

    .line 598
    float-to-int v1, v1

    .line 599
    :cond_18
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 601
    invoke-virtual {v0, v1}, Lhj;->d(I)V

    .line 604
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 606
    iget-object v0, v0, Llg;->f:Luk0;

    .line 608
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 610
    invoke-virtual {v0, v3}, Lhj;->d(I)V

    .line 613
    goto/16 :goto_f

    .line 615
    :cond_19
    sub-int/2addr v2, v1

    .line 616
    invoke-virtual {v8, v2, v10}, Lkm0;->g(II)I

    .line 619
    move-result v1

    .line 620
    int-to-float v2, v1

    .line 621
    mul-float v2, v2, v0

    .line 623
    add-float/2addr v2, v11

    .line 624
    float-to-int v2, v2

    .line 625
    invoke-virtual {v8, v2, v9}, Lkm0;->g(II)I

    .line 628
    move-result v3

    .line 629
    if-eq v2, v3, :cond_1a

    .line 631
    int-to-float v1, v3

    .line 632
    div-float/2addr v1, v0

    .line 633
    add-float/2addr v1, v11

    .line 634
    float-to-int v1, v1

    .line 635
    :cond_1a
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 637
    invoke-virtual {v0, v1}, Lhj;->d(I)V

    .line 640
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 642
    iget-object v0, v0, Llg;->f:Luk0;

    .line 644
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 646
    invoke-virtual {v0, v3}, Lhj;->d(I)V

    .line 649
    goto/16 :goto_f

    .line 651
    :cond_1b
    :goto_d
    return-void

    .line 652
    :cond_1c
    if-eqz v2, :cond_24

    .line 654
    if-eqz v5, :cond_24

    .line 656
    iget-boolean v0, v12, Lli;->c:Z

    .line 658
    if-eqz v0, :cond_22

    .line 660
    iget-boolean v0, v13, Lli;->c:Z

    .line 662
    if-nez v0, :cond_1d

    .line 664
    goto :goto_e

    .line 665
    :cond_1d
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 667
    invoke-virtual {v0}, Llg;->t()F

    .line 670
    move-result v0

    .line 671
    iget-object v1, v12, Lli;->l:Ljava/util/List;

    .line 673
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 676
    move-result-object v1

    .line 677
    check-cast v1, Lli;

    .line 679
    iget v1, v1, Lli;->g:I

    .line 681
    iget v2, v12, Lli;->f:I

    .line 683
    add-int/2addr v1, v2

    .line 684
    iget-object v2, v13, Lli;->l:Ljava/util/List;

    .line 686
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 689
    move-result-object v2

    .line 690
    check-cast v2, Lli;

    .line 692
    iget v2, v2, Lli;->g:I

    .line 694
    iget v4, v13, Lli;->f:I

    .line 696
    sub-int/2addr v2, v4

    .line 697
    if-eq v14, v3, :cond_20

    .line 699
    if-eqz v14, :cond_1e

    .line 701
    if-eq v14, v9, :cond_20

    .line 703
    goto :goto_f

    .line 704
    :cond_1e
    sub-int/2addr v2, v1

    .line 705
    invoke-virtual {v8, v2, v9}, Lkm0;->g(II)I

    .line 708
    move-result v1

    .line 709
    int-to-float v2, v1

    .line 710
    mul-float v2, v2, v0

    .line 712
    add-float/2addr v2, v11

    .line 713
    float-to-int v2, v2

    .line 714
    invoke-virtual {v8, v2, v10}, Lkm0;->g(II)I

    .line 717
    move-result v3

    .line 718
    if-eq v2, v3, :cond_1f

    .line 720
    int-to-float v1, v3

    .line 721
    div-float/2addr v1, v0

    .line 722
    add-float/2addr v1, v11

    .line 723
    float-to-int v1, v1

    .line 724
    :cond_1f
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 726
    invoke-virtual {v0, v3}, Lhj;->d(I)V

    .line 729
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 731
    iget-object v0, v0, Llg;->f:Luk0;

    .line 733
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 735
    invoke-virtual {v0, v1}, Lhj;->d(I)V

    .line 738
    goto :goto_f

    .line 739
    :cond_20
    sub-int/2addr v2, v1

    .line 740
    invoke-virtual {v8, v2, v9}, Lkm0;->g(II)I

    .line 743
    move-result v1

    .line 744
    int-to-float v2, v1

    .line 745
    div-float/2addr v2, v0

    .line 746
    add-float/2addr v2, v11

    .line 747
    float-to-int v2, v2

    .line 748
    invoke-virtual {v8, v2, v10}, Lkm0;->g(II)I

    .line 751
    move-result v3

    .line 752
    if-eq v2, v3, :cond_21

    .line 754
    int-to-float v1, v3

    .line 755
    mul-float v1, v1, v0

    .line 757
    add-float/2addr v1, v11

    .line 758
    float-to-int v1, v1

    .line 759
    :cond_21
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 761
    invoke-virtual {v0, v3}, Lhj;->d(I)V

    .line 764
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 766
    iget-object v0, v0, Llg;->f:Luk0;

    .line 768
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 770
    invoke-virtual {v0, v1}, Lhj;->d(I)V

    .line 773
    goto :goto_f

    .line 774
    :cond_22
    :goto_e
    return-void

    .line 775
    :cond_23
    invoke-virtual {v0}, Llg;->I()Llg;

    .line 778
    move-result-object v0

    .line 779
    if-eqz v0, :cond_24

    .line 781
    iget-object v0, v0, Llg;->e:Lqp;

    .line 783
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 785
    iget-boolean v1, v0, Lli;->j:Z

    .line 787
    if-eqz v1, :cond_24

    .line 789
    iget-object v1, v8, Lkm0;->b:Llg;

    .line 791
    iget v1, v1, Llg;->u:F

    .line 793
    iget v0, v0, Lli;->g:I

    .line 795
    int-to-float v0, v0

    .line 796
    mul-float v0, v0, v1

    .line 798
    add-float/2addr v0, v11

    .line 799
    float-to-int v0, v0

    .line 800
    iget-object v1, v8, Lkm0;->e:Lhj;

    .line 802
    invoke-virtual {v1, v0}, Lhj;->d(I)V

    .line 805
    :cond_24
    :goto_f
    iget-object v0, v8, Lkm0;->h:Lli;

    .line 807
    iget-boolean v1, v0, Lli;->c:Z

    .line 809
    if-eqz v1, :cond_2c

    .line 811
    iget-object v1, v8, Lkm0;->i:Lli;

    .line 813
    iget-boolean v2, v1, Lli;->c:Z

    .line 815
    if-nez v2, :cond_25

    .line 817
    goto/16 :goto_10

    .line 819
    :cond_25
    iget-boolean v0, v0, Lli;->j:Z

    .line 821
    if-eqz v0, :cond_26

    .line 823
    iget-boolean v0, v1, Lli;->j:Z

    .line 825
    if-eqz v0, :cond_26

    .line 827
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 829
    iget-boolean v0, v0, Lli;->j:Z

    .line 831
    if-eqz v0, :cond_26

    .line 833
    return-void

    .line 834
    :cond_26
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 836
    iget-boolean v0, v0, Lli;->j:Z

    .line 838
    if-nez v0, :cond_27

    .line 840
    iget-object v0, v8, Lkm0;->d:Llg$b;

    .line 842
    sget-object v1, Llg$b;->c:Llg$b;

    .line 844
    if-ne v0, v1, :cond_27

    .line 846
    iget-object v0, v8, Lkm0;->b:Llg;

    .line 848
    iget v1, v0, Llg;->p:I

    .line 850
    if-nez v1, :cond_27

    .line 852
    invoke-virtual {v0}, Llg;->Z()Z

    .line 855
    move-result v0

    .line 856
    if-nez v0, :cond_27

    .line 858
    iget-object v0, v8, Lkm0;->h:Lli;

    .line 860
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 862
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 865
    move-result-object v0

    .line 866
    check-cast v0, Lli;

    .line 868
    iget-object v1, v8, Lkm0;->i:Lli;

    .line 870
    iget-object v1, v1, Lli;->l:Ljava/util/List;

    .line 872
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 875
    move-result-object v1

    .line 876
    check-cast v1, Lli;

    .line 878
    iget v0, v0, Lli;->g:I

    .line 880
    iget-object v2, v8, Lkm0;->h:Lli;

    .line 882
    iget v3, v2, Lli;->f:I

    .line 884
    add-int/2addr v0, v3

    .line 885
    iget v1, v1, Lli;->g:I

    .line 887
    iget-object v3, v8, Lkm0;->i:Lli;

    .line 889
    iget v3, v3, Lli;->f:I

    .line 891
    add-int/2addr v1, v3

    .line 892
    sub-int v3, v1, v0

    .line 894
    invoke-virtual {v2, v0}, Lli;->d(I)V

    .line 897
    iget-object v0, v8, Lkm0;->i:Lli;

    .line 899
    invoke-virtual {v0, v1}, Lli;->d(I)V

    .line 902
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 904
    invoke-virtual {v0, v3}, Lhj;->d(I)V

    .line 907
    return-void

    .line 908
    :cond_27
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 910
    iget-boolean v0, v0, Lli;->j:Z

    .line 912
    if-nez v0, :cond_29

    .line 914
    iget-object v0, v8, Lkm0;->d:Llg$b;

    .line 916
    sget-object v1, Llg$b;->c:Llg$b;

    .line 918
    if-ne v0, v1, :cond_29

    .line 920
    iget v0, v8, Lkm0;->a:I

    .line 922
    if-ne v0, v9, :cond_29

    .line 924
    iget-object v0, v8, Lkm0;->h:Lli;

    .line 926
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 928
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 931
    move-result v0

    .line 932
    if-lez v0, :cond_29

    .line 934
    iget-object v0, v8, Lkm0;->i:Lli;

    .line 936
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 938
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 941
    move-result v0

    .line 942
    if-lez v0, :cond_29

    .line 944
    iget-object v0, v8, Lkm0;->h:Lli;

    .line 946
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 948
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 951
    move-result-object v0

    .line 952
    check-cast v0, Lli;

    .line 954
    iget-object v1, v8, Lkm0;->i:Lli;

    .line 956
    iget-object v1, v1, Lli;->l:Ljava/util/List;

    .line 958
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 961
    move-result-object v1

    .line 962
    check-cast v1, Lli;

    .line 964
    iget v0, v0, Lli;->g:I

    .line 966
    iget-object v2, v8, Lkm0;->h:Lli;

    .line 968
    iget v2, v2, Lli;->f:I

    .line 970
    add-int/2addr v0, v2

    .line 971
    iget v1, v1, Lli;->g:I

    .line 973
    iget-object v2, v8, Lkm0;->i:Lli;

    .line 975
    iget v2, v2, Lli;->f:I

    .line 977
    add-int/2addr v1, v2

    .line 978
    sub-int/2addr v1, v0

    .line 979
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 981
    iget v0, v0, Lhj;->m:I

    .line 983
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 986
    move-result v0

    .line 987
    iget-object v1, v8, Lkm0;->b:Llg;

    .line 989
    iget v2, v1, Llg;->t:I

    .line 991
    iget v1, v1, Llg;->s:I

    .line 993
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 996
    move-result v0

    .line 997
    if-lez v2, :cond_28

    .line 999
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 1002
    move-result v0

    .line 1003
    :cond_28
    iget-object v1, v8, Lkm0;->e:Lhj;

    .line 1005
    invoke-virtual {v1, v0}, Lhj;->d(I)V

    .line 1008
    :cond_29
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 1010
    iget-boolean v0, v0, Lli;->j:Z

    .line 1012
    if-nez v0, :cond_2a

    .line 1014
    return-void

    .line 1015
    :cond_2a
    iget-object v0, v8, Lkm0;->h:Lli;

    .line 1017
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 1019
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1022
    move-result-object v0

    .line 1023
    check-cast v0, Lli;

    .line 1025
    iget-object v1, v8, Lkm0;->i:Lli;

    .line 1027
    iget-object v1, v1, Lli;->l:Ljava/util/List;

    .line 1029
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1032
    move-result-object v1

    .line 1033
    check-cast v1, Lli;

    .line 1035
    iget v2, v0, Lli;->g:I

    .line 1037
    iget-object v3, v8, Lkm0;->h:Lli;

    .line 1039
    iget v3, v3, Lli;->f:I

    .line 1041
    add-int/2addr v2, v3

    .line 1042
    iget v3, v1, Lli;->g:I

    .line 1044
    iget-object v4, v8, Lkm0;->i:Lli;

    .line 1046
    iget v4, v4, Lli;->f:I

    .line 1048
    add-int/2addr v3, v4

    .line 1049
    iget-object v4, v8, Lkm0;->b:Llg;

    .line 1051
    invoke-virtual {v4}, Llg;->w()F

    .line 1054
    move-result v4

    .line 1055
    if-ne v0, v1, :cond_2b

    .line 1057
    iget v2, v0, Lli;->g:I

    .line 1059
    iget v3, v1, Lli;->g:I

    .line 1061
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1063
    :cond_2b
    sub-int/2addr v3, v2

    .line 1064
    iget-object v0, v8, Lkm0;->e:Lhj;

    .line 1066
    iget v0, v0, Lli;->g:I

    .line 1068
    sub-int/2addr v3, v0

    .line 1069
    iget-object v0, v8, Lkm0;->h:Lli;

    .line 1071
    int-to-float v1, v2

    .line 1072
    add-float/2addr v1, v11

    .line 1073
    int-to-float v2, v3

    .line 1074
    mul-float v2, v2, v4

    .line 1076
    add-float/2addr v1, v2

    .line 1077
    float-to-int v1, v1

    .line 1078
    invoke-virtual {v0, v1}, Lli;->d(I)V

    .line 1081
    iget-object v0, v8, Lkm0;->i:Lli;

    .line 1083
    iget-object v1, v8, Lkm0;->h:Lli;

    .line 1085
    iget v1, v1, Lli;->g:I

    .line 1087
    iget-object v2, v8, Lkm0;->e:Lhj;

    .line 1089
    iget v2, v2, Lli;->g:I

    .line 1091
    add-int/2addr v1, v2

    .line 1092
    invoke-virtual {v0, v1}, Lli;->d(I)V

    .line 1095
    :cond_2c
    :goto_10
    return-void
.end method

.method public d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 3
    iget-boolean v1, v0, Llg;->a:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 9
    invoke-virtual {v0}, Llg;->R()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {v1, v0}, Lhj;->d(I)V

    .line 16
    :cond_0
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 18
    iget-boolean v0, v0, Lli;->j:Z

    .line 20
    if-nez v0, :cond_4

    .line 22
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 24
    invoke-virtual {v0}, Llg;->y()Llg$b;

    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lkm0;->d:Llg$b;

    .line 30
    sget-object v1, Llg$b;->c:Llg$b;

    .line 32
    if-eq v0, v1, :cond_7

    .line 34
    sget-object v1, Llg$b;->d:Llg$b;

    .line 36
    if-ne v0, v1, :cond_3

    .line 38
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 40
    invoke-virtual {v0}, Llg;->I()Llg;

    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Llg;->y()Llg$b;

    .line 49
    move-result-object v2

    .line 50
    sget-object v3, Llg$b;->a:Llg$b;

    .line 52
    if-eq v2, v3, :cond_2

    .line 54
    :cond_1
    invoke-virtual {v0}, Llg;->y()Llg$b;

    .line 57
    move-result-object v2

    .line 58
    if-ne v2, v1, :cond_3

    .line 60
    :cond_2
    invoke-virtual {v0}, Llg;->R()I

    .line 63
    move-result v1

    .line 64
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 66
    iget-object v2, v2, Llg;->H:Lfg;

    .line 68
    invoke-virtual {v2}, Lfg;->e()I

    .line 71
    move-result v2

    .line 72
    sub-int/2addr v1, v2

    .line 73
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 75
    iget-object v2, v2, Llg;->J:Lfg;

    .line 77
    invoke-virtual {v2}, Lfg;->e()I

    .line 80
    move-result v2

    .line 81
    sub-int/2addr v1, v2

    .line 82
    iget-object v2, p0, Lkm0;->h:Lli;

    .line 84
    iget-object v3, v0, Llg;->e:Lqp;

    .line 86
    iget-object v3, v3, Lkm0;->h:Lli;

    .line 88
    iget-object v4, p0, Lkm0;->b:Llg;

    .line 90
    iget-object v4, v4, Llg;->H:Lfg;

    .line 92
    invoke-virtual {v4}, Lfg;->e()I

    .line 95
    move-result v4

    .line 96
    invoke-virtual {p0, v2, v3, v4}, Lkm0;->b(Lli;Lli;I)V

    .line 99
    iget-object v2, p0, Lkm0;->i:Lli;

    .line 101
    iget-object v0, v0, Llg;->e:Lqp;

    .line 103
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 105
    iget-object v3, p0, Lkm0;->b:Llg;

    .line 107
    iget-object v3, v3, Llg;->J:Lfg;

    .line 109
    invoke-virtual {v3}, Lfg;->e()I

    .line 112
    move-result v3

    .line 113
    neg-int v3, v3

    .line 114
    invoke-virtual {p0, v2, v0, v3}, Lkm0;->b(Lli;Lli;I)V

    .line 117
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 119
    invoke-virtual {v0, v1}, Lhj;->d(I)V

    .line 122
    return-void

    .line 123
    :cond_3
    iget-object v0, p0, Lkm0;->d:Llg$b;

    .line 125
    sget-object v1, Llg$b;->a:Llg$b;

    .line 127
    if-ne v0, v1, :cond_7

    .line 129
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 131
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 133
    invoke-virtual {v1}, Llg;->R()I

    .line 136
    move-result v1

    .line 137
    invoke-virtual {v0, v1}, Lhj;->d(I)V

    .line 140
    goto :goto_0

    .line 141
    :cond_4
    iget-object v0, p0, Lkm0;->d:Llg$b;

    .line 143
    sget-object v1, Llg$b;->d:Llg$b;

    .line 145
    if-ne v0, v1, :cond_7

    .line 147
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 149
    invoke-virtual {v0}, Llg;->I()Llg;

    .line 152
    move-result-object v0

    .line 153
    if-eqz v0, :cond_5

    .line 155
    invoke-virtual {v0}, Llg;->y()Llg$b;

    .line 158
    move-result-object v2

    .line 159
    sget-object v3, Llg$b;->a:Llg$b;

    .line 161
    if-eq v2, v3, :cond_6

    .line 163
    :cond_5
    invoke-virtual {v0}, Llg;->y()Llg$b;

    .line 166
    move-result-object v2

    .line 167
    if-ne v2, v1, :cond_7

    .line 169
    :cond_6
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 171
    iget-object v2, v0, Llg;->e:Lqp;

    .line 173
    iget-object v2, v2, Lkm0;->h:Lli;

    .line 175
    iget-object v3, p0, Lkm0;->b:Llg;

    .line 177
    iget-object v3, v3, Llg;->H:Lfg;

    .line 179
    invoke-virtual {v3}, Lfg;->e()I

    .line 182
    move-result v3

    .line 183
    invoke-virtual {p0, v1, v2, v3}, Lkm0;->b(Lli;Lli;I)V

    .line 186
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 188
    iget-object v0, v0, Llg;->e:Lqp;

    .line 190
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 192
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 194
    iget-object v2, v2, Llg;->J:Lfg;

    .line 196
    invoke-virtual {v2}, Lfg;->e()I

    .line 199
    move-result v2

    .line 200
    neg-int v2, v2

    .line 201
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 204
    return-void

    .line 205
    :cond_7
    :goto_0
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 207
    iget-boolean v1, v0, Lli;->j:Z

    .line 209
    const/4 v2, 0x0

    .line 210
    const/4 v3, 0x1

    .line 211
    if-eqz v1, :cond_e

    .line 213
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 215
    iget-boolean v4, v1, Llg;->a:Z

    .line 217
    if-eqz v4, :cond_e

    .line 219
    iget-object v0, v1, Llg;->P:[Lfg;

    .line 221
    aget-object v4, v0, v2

    .line 223
    iget-object v5, v4, Lfg;->f:Lfg;

    .line 225
    if-eqz v5, :cond_b

    .line 227
    aget-object v6, v0, v3

    .line 229
    iget-object v6, v6, Lfg;->f:Lfg;

    .line 231
    if-eqz v6, :cond_b

    .line 233
    invoke-virtual {v1}, Llg;->Z()Z

    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_8

    .line 239
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 241
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 243
    iget-object v1, v1, Llg;->P:[Lfg;

    .line 245
    aget-object v1, v1, v2

    .line 247
    invoke-virtual {v1}, Lfg;->e()I

    .line 250
    move-result v1

    .line 251
    iput v1, v0, Lli;->f:I

    .line 253
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 255
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 257
    iget-object v1, v1, Llg;->P:[Lfg;

    .line 259
    aget-object v1, v1, v3

    .line 261
    invoke-virtual {v1}, Lfg;->e()I

    .line 264
    move-result v1

    .line 265
    neg-int v1, v1

    .line 266
    iput v1, v0, Lli;->f:I

    .line 268
    goto/16 :goto_2

    .line 270
    :cond_8
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 272
    iget-object v0, v0, Llg;->P:[Lfg;

    .line 274
    aget-object v0, v0, v2

    .line 276
    invoke-virtual {p0, v0}, Lkm0;->h(Lfg;)Lli;

    .line 279
    move-result-object v0

    .line 280
    if-eqz v0, :cond_9

    .line 282
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 284
    iget-object v4, p0, Lkm0;->b:Llg;

    .line 286
    iget-object v4, v4, Llg;->P:[Lfg;

    .line 288
    aget-object v2, v4, v2

    .line 290
    invoke-virtual {v2}, Lfg;->e()I

    .line 293
    move-result v2

    .line 294
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 297
    :cond_9
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 299
    iget-object v0, v0, Llg;->P:[Lfg;

    .line 301
    aget-object v0, v0, v3

    .line 303
    invoke-virtual {p0, v0}, Lkm0;->h(Lfg;)Lli;

    .line 306
    move-result-object v0

    .line 307
    if-eqz v0, :cond_a

    .line 309
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 311
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 313
    iget-object v2, v2, Llg;->P:[Lfg;

    .line 315
    aget-object v2, v2, v3

    .line 317
    invoke-virtual {v2}, Lfg;->e()I

    .line 320
    move-result v2

    .line 321
    neg-int v2, v2

    .line 322
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 325
    :cond_a
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 327
    iput-boolean v3, v0, Lli;->b:Z

    .line 329
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 331
    iput-boolean v3, v0, Lli;->b:Z

    .line 333
    goto/16 :goto_2

    .line 335
    :cond_b
    if-eqz v5, :cond_c

    .line 337
    invoke-virtual {p0, v4}, Lkm0;->h(Lfg;)Lli;

    .line 340
    move-result-object v0

    .line 341
    if-eqz v0, :cond_1a

    .line 343
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 345
    iget-object v3, p0, Lkm0;->b:Llg;

    .line 347
    iget-object v3, v3, Llg;->P:[Lfg;

    .line 349
    aget-object v2, v3, v2

    .line 351
    invoke-virtual {v2}, Lfg;->e()I

    .line 354
    move-result v2

    .line 355
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 358
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 360
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 362
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 364
    iget v2, v2, Lli;->g:I

    .line 366
    invoke-virtual {p0, v0, v1, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 369
    goto/16 :goto_2

    .line 371
    :cond_c
    aget-object v0, v0, v3

    .line 373
    iget-object v2, v0, Lfg;->f:Lfg;

    .line 375
    if-eqz v2, :cond_d

    .line 377
    invoke-virtual {p0, v0}, Lkm0;->h(Lfg;)Lli;

    .line 380
    move-result-object v0

    .line 381
    if-eqz v0, :cond_1a

    .line 383
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 385
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 387
    iget-object v2, v2, Llg;->P:[Lfg;

    .line 389
    aget-object v2, v2, v3

    .line 391
    invoke-virtual {v2}, Lfg;->e()I

    .line 394
    move-result v2

    .line 395
    neg-int v2, v2

    .line 396
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 399
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 401
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 403
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 405
    iget v2, v2, Lli;->g:I

    .line 407
    neg-int v2, v2

    .line 408
    invoke-virtual {p0, v0, v1, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 411
    goto/16 :goto_2

    .line 413
    :cond_d
    instance-of v0, v1, Lep;

    .line 415
    if-nez v0, :cond_1a

    .line 417
    invoke-virtual {v1}, Llg;->I()Llg;

    .line 420
    move-result-object v0

    .line 421
    if-eqz v0, :cond_1a

    .line 423
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 425
    sget-object v1, Lfg$b;->g:Lfg$b;

    .line 427
    invoke-virtual {v0, v1}, Llg;->m(Lfg$b;)Lfg;

    .line 430
    move-result-object v0

    .line 431
    iget-object v0, v0, Lfg;->f:Lfg;

    .line 433
    if-nez v0, :cond_1a

    .line 435
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 437
    invoke-virtual {v0}, Llg;->I()Llg;

    .line 440
    move-result-object v0

    .line 441
    iget-object v0, v0, Llg;->e:Lqp;

    .line 443
    iget-object v0, v0, Lkm0;->h:Lli;

    .line 445
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 447
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 449
    invoke-virtual {v2}, Llg;->S()I

    .line 452
    move-result v2

    .line 453
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 456
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 458
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 460
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 462
    iget v2, v2, Lli;->g:I

    .line 464
    invoke-virtual {p0, v0, v1, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 467
    goto/16 :goto_2

    .line 469
    :cond_e
    iget-object v1, p0, Lkm0;->d:Llg$b;

    .line 471
    sget-object v4, Llg$b;->c:Llg$b;

    .line 473
    if-ne v1, v4, :cond_15

    .line 475
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 477
    iget v4, v1, Llg;->p:I

    .line 479
    const/4 v5, 0x2

    .line 480
    if-eq v4, v5, :cond_13

    .line 482
    const/4 v5, 0x3

    .line 483
    if-eq v4, v5, :cond_f

    .line 485
    goto/16 :goto_1

    .line 487
    :cond_f
    iget v4, v1, Llg;->q:I

    .line 489
    if-ne v4, v5, :cond_12

    .line 491
    iget-object v4, p0, Lkm0;->h:Lli;

    .line 493
    iput-object p0, v4, Lli;->a:Lji;

    .line 495
    iget-object v4, p0, Lkm0;->i:Lli;

    .line 497
    iput-object p0, v4, Lli;->a:Lji;

    .line 499
    iget-object v4, v1, Llg;->f:Luk0;

    .line 501
    iget-object v5, v4, Lkm0;->h:Lli;

    .line 503
    iput-object p0, v5, Lli;->a:Lji;

    .line 505
    iget-object v4, v4, Lkm0;->i:Lli;

    .line 507
    iput-object p0, v4, Lli;->a:Lji;

    .line 509
    iput-object p0, v0, Lli;->a:Lji;

    .line 511
    invoke-virtual {v1}, Llg;->b0()Z

    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_10

    .line 517
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 519
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 521
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 523
    iget-object v1, v1, Llg;->f:Luk0;

    .line 525
    iget-object v1, v1, Lkm0;->e:Lhj;

    .line 527
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 532
    iget-object v0, v0, Llg;->f:Luk0;

    .line 534
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 536
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 538
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 540
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 545
    iget-object v0, v0, Llg;->f:Luk0;

    .line 547
    iget-object v1, v0, Lkm0;->e:Lhj;

    .line 549
    iput-object p0, v1, Lli;->a:Lji;

    .line 551
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 553
    iget-object v1, v1, Lli;->l:Ljava/util/List;

    .line 555
    iget-object v0, v0, Lkm0;->h:Lli;

    .line 557
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 562
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 564
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 566
    iget-object v1, v1, Llg;->f:Luk0;

    .line 568
    iget-object v1, v1, Lkm0;->i:Lli;

    .line 570
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 575
    iget-object v0, v0, Llg;->f:Luk0;

    .line 577
    iget-object v0, v0, Lkm0;->h:Lli;

    .line 579
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 581
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 583
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 588
    iget-object v0, v0, Llg;->f:Luk0;

    .line 590
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 592
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 594
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 596
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    goto/16 :goto_1

    .line 601
    :cond_10
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 603
    invoke-virtual {v0}, Llg;->Z()Z

    .line 606
    move-result v0

    .line 607
    if-eqz v0, :cond_11

    .line 609
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 611
    iget-object v0, v0, Llg;->f:Luk0;

    .line 613
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 615
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 617
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 619
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 624
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 626
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 628
    iget-object v1, v1, Llg;->f:Luk0;

    .line 630
    iget-object v1, v1, Lkm0;->e:Lhj;

    .line 632
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    goto/16 :goto_1

    .line 637
    :cond_11
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 639
    iget-object v0, v0, Llg;->f:Luk0;

    .line 641
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 643
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 645
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 647
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    goto/16 :goto_1

    .line 652
    :cond_12
    iget-object v1, v1, Llg;->f:Luk0;

    .line 654
    iget-object v1, v1, Lkm0;->e:Lhj;

    .line 656
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 658
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    iget-object v0, v1, Lli;->k:Ljava/util/List;

    .line 663
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 665
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 670
    iget-object v0, v0, Llg;->f:Luk0;

    .line 672
    iget-object v0, v0, Lkm0;->h:Lli;

    .line 674
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 676
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 678
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 683
    iget-object v0, v0, Llg;->f:Luk0;

    .line 685
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 687
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 689
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 691
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 696
    iput-boolean v3, v0, Lli;->b:Z

    .line 698
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 700
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 702
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 707
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 709
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 711
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 716
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 718
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 720
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 725
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 727
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 729
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    goto :goto_1

    .line 733
    :cond_13
    invoke-virtual {v1}, Llg;->I()Llg;

    .line 736
    move-result-object v0

    .line 737
    if-nez v0, :cond_14

    .line 739
    goto :goto_1

    .line 740
    :cond_14
    iget-object v0, v0, Llg;->f:Luk0;

    .line 742
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 744
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 746
    iget-object v1, v1, Lli;->l:Ljava/util/List;

    .line 748
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 753
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 755
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 760
    iput-boolean v3, v0, Lli;->b:Z

    .line 762
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 764
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 766
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 771
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 773
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 775
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_15
    :goto_1
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 780
    iget-object v1, v0, Llg;->P:[Lfg;

    .line 782
    aget-object v4, v1, v2

    .line 784
    iget-object v5, v4, Lfg;->f:Lfg;

    .line 786
    if-eqz v5, :cond_17

    .line 788
    aget-object v6, v1, v3

    .line 790
    iget-object v6, v6, Lfg;->f:Lfg;

    .line 792
    if-eqz v6, :cond_17

    .line 794
    invoke-virtual {v0}, Llg;->Z()Z

    .line 797
    move-result v0

    .line 798
    if-eqz v0, :cond_16

    .line 800
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 802
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 804
    iget-object v1, v1, Llg;->P:[Lfg;

    .line 806
    aget-object v1, v1, v2

    .line 808
    invoke-virtual {v1}, Lfg;->e()I

    .line 811
    move-result v1

    .line 812
    iput v1, v0, Lli;->f:I

    .line 814
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 816
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 818
    iget-object v1, v1, Llg;->P:[Lfg;

    .line 820
    aget-object v1, v1, v3

    .line 822
    invoke-virtual {v1}, Lfg;->e()I

    .line 825
    move-result v1

    .line 826
    neg-int v1, v1

    .line 827
    iput v1, v0, Lli;->f:I

    .line 829
    goto/16 :goto_2

    .line 831
    :cond_16
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 833
    iget-object v0, v0, Llg;->P:[Lfg;

    .line 835
    aget-object v0, v0, v2

    .line 837
    invoke-virtual {p0, v0}, Lkm0;->h(Lfg;)Lli;

    .line 840
    move-result-object v0

    .line 841
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 843
    iget-object v1, v1, Llg;->P:[Lfg;

    .line 845
    aget-object v1, v1, v3

    .line 847
    invoke-virtual {p0, v1}, Lkm0;->h(Lfg;)Lli;

    .line 850
    move-result-object v1

    .line 851
    invoke-virtual {v0, p0}, Lli;->b(Lji;)V

    .line 854
    invoke-virtual {v1, p0}, Lli;->b(Lji;)V

    .line 857
    sget-object v0, Lkm0$b;->d:Lkm0$b;

    .line 859
    iput-object v0, p0, Lkm0;->j:Lkm0$b;

    .line 861
    goto :goto_2

    .line 862
    :cond_17
    if-eqz v5, :cond_18

    .line 864
    invoke-virtual {p0, v4}, Lkm0;->h(Lfg;)Lli;

    .line 867
    move-result-object v0

    .line 868
    if-eqz v0, :cond_1a

    .line 870
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 872
    iget-object v4, p0, Lkm0;->b:Llg;

    .line 874
    iget-object v4, v4, Llg;->P:[Lfg;

    .line 876
    aget-object v2, v4, v2

    .line 878
    invoke-virtual {v2}, Lfg;->e()I

    .line 881
    move-result v2

    .line 882
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 885
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 887
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 889
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 891
    invoke-virtual {p0, v0, v1, v3, v2}, Lkm0;->c(Lli;Lli;ILhj;)V

    .line 894
    goto :goto_2

    .line 895
    :cond_18
    aget-object v1, v1, v3

    .line 897
    iget-object v2, v1, Lfg;->f:Lfg;

    .line 899
    if-eqz v2, :cond_19

    .line 901
    invoke-virtual {p0, v1}, Lkm0;->h(Lfg;)Lli;

    .line 904
    move-result-object v0

    .line 905
    if-eqz v0, :cond_1a

    .line 907
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 909
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 911
    iget-object v2, v2, Llg;->P:[Lfg;

    .line 913
    aget-object v2, v2, v3

    .line 915
    invoke-virtual {v2}, Lfg;->e()I

    .line 918
    move-result v2

    .line 919
    neg-int v2, v2

    .line 920
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 923
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 925
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 927
    const/4 v2, -0x1

    .line 928
    iget-object v3, p0, Lkm0;->e:Lhj;

    .line 930
    invoke-virtual {p0, v0, v1, v2, v3}, Lkm0;->c(Lli;Lli;ILhj;)V

    .line 933
    goto :goto_2

    .line 934
    :cond_19
    instance-of v1, v0, Lep;

    .line 936
    if-nez v1, :cond_1a

    .line 938
    invoke-virtual {v0}, Llg;->I()Llg;

    .line 941
    move-result-object v0

    .line 942
    if-eqz v0, :cond_1a

    .line 944
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 946
    invoke-virtual {v0}, Llg;->I()Llg;

    .line 949
    move-result-object v0

    .line 950
    iget-object v0, v0, Llg;->e:Lqp;

    .line 952
    iget-object v0, v0, Lkm0;->h:Lli;

    .line 954
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 956
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 958
    invoke-virtual {v2}, Llg;->S()I

    .line 961
    move-result v2

    .line 962
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 965
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 967
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 969
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 971
    invoke-virtual {p0, v0, v1, v3, v2}, Lkm0;->c(Lli;Lli;ILhj;)V

    .line 974
    :cond_1a
    :goto_2
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 3
    iget-boolean v1, v0, Lli;->j:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 9
    iget v0, v0, Lli;->g:I

    .line 11
    invoke-virtual {v1, v0}, Llg;->U0(I)V

    .line 14
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lkm0;->c:Lpb0;

    .line 4
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 6
    invoke-virtual {v0}, Lli;->c()V

    .line 9
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 11
    invoke-virtual {v0}, Lli;->c()V

    .line 14
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 16
    invoke-virtual {v0}, Lli;->c()V

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lkm0;->g:Z

    .line 22
    return-void
.end method

.method public m()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkm0;->d:Llg$b;

    .line 3
    sget-object v1, Llg$b;->c:Llg$b;

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 10
    iget v0, v0, Llg;->p:I

    .line 12
    if-nez v0, :cond_0

    .line 14
    return v2

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_1
    return v2
.end method

.method public final q([IIIIIFI)V
    .locals 2

    .line 1
    sub-int/2addr p3, p2

    .line 2
    sub-int/2addr p5, p4

    .line 3
    const/4 p2, -0x1

    .line 4
    const/4 p4, 0x0

    .line 5
    const/high16 v0, 0x3f000000    # 0.5f

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p7, p2, :cond_2

    .line 10
    if-eqz p7, :cond_1

    .line 12
    if-eq p7, v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    int-to-float p2, p3

    .line 16
    mul-float p2, p2, p6

    .line 18
    add-float/2addr p2, v0

    .line 19
    float-to-int p2, p2

    .line 20
    aput p3, p1, p4

    .line 22
    aput p2, p1, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    int-to-float p2, p5

    .line 26
    mul-float p2, p2, p6

    .line 28
    add-float/2addr p2, v0

    .line 29
    float-to-int p2, p2

    .line 30
    aput p2, p1, p4

    .line 32
    aput p5, p1, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    int-to-float p2, p5

    .line 36
    mul-float p2, p2, p6

    .line 38
    add-float/2addr p2, v0

    .line 39
    float-to-int p2, p2

    .line 40
    int-to-float p7, p3

    .line 41
    div-float/2addr p7, p6

    .line 42
    add-float/2addr p7, v0

    .line 43
    float-to-int p6, p7

    .line 44
    if-gt p2, p3, :cond_3

    .line 46
    aput p2, p1, p4

    .line 48
    aput p5, p1, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    if-gt p6, p5, :cond_4

    .line 53
    aput p3, p1, p4

    .line 55
    aput p6, p1, v1

    .line 57
    :cond_4
    :goto_0
    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lkm0;->g:Z

    .line 4
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 6
    invoke-virtual {v1}, Lli;->c()V

    .line 9
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 11
    iput-boolean v0, v1, Lli;->j:Z

    .line 13
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 15
    invoke-virtual {v1}, Lli;->c()V

    .line 18
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 20
    iput-boolean v0, v1, Lli;->j:Z

    .line 22
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 24
    iput-boolean v0, v1, Lli;->j:Z

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "HorizontalRun "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 13
    invoke-virtual {v1}, Llg;->r()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
