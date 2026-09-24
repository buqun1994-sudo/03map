.class public Lig$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsc$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Lig;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Lig;


# direct methods
.method public constructor <init>(Lig;Lig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lig$c;->h:Lig;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lig$c;->a:Lig;

    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lig$c;->a:Lig;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    iget-object v3, p0, Lig$c;->a:Lig;

    .line 13
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lig$c;->a:Lig;

    .line 21
    invoke-static {v0}, Lig;->b(Lig;)Ljava/util/ArrayList;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_1

    .line 31
    :goto_1
    if-ge v1, v0, :cond_1

    .line 33
    iget-object v2, p0, Lig$c;->a:Lig;

    .line 35
    invoke-static {v2}, Lig;->b(Lig;)Ljava/util/ArrayList;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lhg;

    .line 45
    iget-object v3, p0, Lig$c;->a:Lig;

    .line 47
    invoke-virtual {v2, v3}, Lhg;->i(Lig;)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    return-void
.end method

.method public final b(Llg;Lsc$a;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    if-nez v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual/range {p1 .. p1}, Llg;->Q()I

    .line 13
    move-result v3

    .line 14
    const/16 v4, 0x8

    .line 16
    const/4 v5, 0x0

    .line 17
    if-ne v3, v4, :cond_1

    .line 19
    invoke-virtual/range {p1 .. p1}, Llg;->a0()Z

    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1

    .line 25
    iput v5, v2, Lsc$a;->e:I

    .line 27
    iput v5, v2, Lsc$a;->f:I

    .line 29
    iput v5, v2, Lsc$a;->g:I

    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual/range {p1 .. p1}, Llg;->I()Llg;

    .line 35
    move-result-object v3

    .line 36
    if-nez v3, :cond_2

    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v3, v2, Lsc$a;->a:Llg$b;

    .line 41
    iget-object v4, v2, Lsc$a;->b:Llg$b;

    .line 43
    iget v6, v2, Lsc$a;->c:I

    .line 45
    iget v7, v2, Lsc$a;->d:I

    .line 47
    iget v8, v0, Lig$c;->b:I

    .line 49
    iget v9, v0, Lig$c;->c:I

    .line 51
    add-int/2addr v8, v9

    .line 52
    iget v9, v0, Lig$c;->d:I

    .line 54
    invoke-virtual/range {p1 .. p1}, Llg;->q()Ljava/lang/Object;

    .line 57
    move-result-object v10

    .line 58
    check-cast v10, Landroid/view/View;

    .line 60
    sget-object v11, Lig$a;->a:[I

    .line 62
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 65
    move-result v12

    .line 66
    aget v12, v11, v12

    .line 68
    const/4 v13, 0x4

    .line 69
    const/4 v14, 0x3

    .line 70
    const/4 v15, 0x2

    .line 71
    const/4 v5, 0x1

    .line 72
    if-eq v12, v5, :cond_c

    .line 74
    if-eq v12, v15, :cond_b

    .line 76
    if-eq v12, v14, :cond_a

    .line 78
    if-eq v12, v13, :cond_3

    .line 80
    const/4 v6, 0x0

    .line 81
    goto :goto_4

    .line 82
    :cond_3
    iget v6, v0, Lig$c;->f:I

    .line 84
    const/4 v12, -0x2

    .line 85
    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 88
    move-result v6

    .line 89
    iget v9, v1, Llg;->p:I

    .line 91
    if-ne v9, v5, :cond_4

    .line 93
    const/4 v9, 0x1

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    const/4 v9, 0x0

    .line 96
    :goto_0
    iget v12, v2, Lsc$a;->j:I

    .line 98
    sget v13, Lsc$a;->l:I

    .line 100
    if-eq v12, v13, :cond_5

    .line 102
    sget v13, Lsc$a;->m:I

    .line 104
    if-ne v12, v13, :cond_d

    .line 106
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 109
    move-result v12

    .line 110
    invoke-virtual/range {p1 .. p1}, Llg;->v()I

    .line 113
    move-result v13

    .line 114
    if-ne v12, v13, :cond_6

    .line 116
    const/4 v12, 0x1

    .line 117
    goto :goto_1

    .line 118
    :cond_6
    const/4 v12, 0x0

    .line 119
    :goto_1
    iget v13, v2, Lsc$a;->j:I

    .line 121
    sget v14, Lsc$a;->m:I

    .line 123
    if-eq v13, v14, :cond_9

    .line 125
    if-eqz v9, :cond_9

    .line 127
    if-eqz v9, :cond_7

    .line 129
    if-nez v12, :cond_9

    .line 131
    :cond_7
    invoke-virtual/range {p1 .. p1}, Llg;->e0()Z

    .line 134
    move-result v9

    .line 135
    if-eqz v9, :cond_8

    .line 137
    goto :goto_2

    .line 138
    :cond_8
    const/4 v9, 0x0

    .line 139
    goto :goto_3

    .line 140
    :cond_9
    :goto_2
    const/4 v9, 0x1

    .line 141
    :goto_3
    if-eqz v9, :cond_d

    .line 143
    invoke-virtual/range {p1 .. p1}, Llg;->R()I

    .line 146
    move-result v6

    .line 147
    const/high16 v9, 0x40000000    # 2.0f

    .line 149
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 152
    move-result v6

    .line 153
    goto :goto_4

    .line 154
    :cond_a
    iget v6, v0, Lig$c;->f:I

    .line 156
    invoke-virtual/range {p1 .. p1}, Llg;->z()I

    .line 159
    move-result v12

    .line 160
    add-int/2addr v9, v12

    .line 161
    const/4 v12, -0x1

    .line 162
    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 165
    move-result v6

    .line 166
    goto :goto_4

    .line 167
    :cond_b
    iget v6, v0, Lig$c;->f:I

    .line 169
    const/4 v12, -0x2

    .line 170
    invoke-static {v6, v9, v12}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 173
    move-result v6

    .line 174
    goto :goto_4

    .line 175
    :cond_c
    const/high16 v9, 0x40000000    # 2.0f

    .line 177
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 180
    move-result v6

    .line 181
    :cond_d
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 184
    move-result v9

    .line 185
    aget v9, v11, v9

    .line 187
    if-eq v9, v5, :cond_17

    .line 189
    if-eq v9, v15, :cond_16

    .line 191
    const/4 v7, 0x3

    .line 192
    if-eq v9, v7, :cond_15

    .line 194
    const/4 v7, 0x4

    .line 195
    if-eq v9, v7, :cond_e

    .line 197
    const/4 v7, 0x0

    .line 198
    goto :goto_9

    .line 199
    :cond_e
    iget v7, v0, Lig$c;->g:I

    .line 201
    const/4 v9, -0x2

    .line 202
    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 205
    move-result v7

    .line 206
    iget v8, v1, Llg;->q:I

    .line 208
    if-ne v8, v5, :cond_f

    .line 210
    const/4 v8, 0x1

    .line 211
    goto :goto_5

    .line 212
    :cond_f
    const/4 v8, 0x0

    .line 213
    :goto_5
    iget v9, v2, Lsc$a;->j:I

    .line 215
    sget v11, Lsc$a;->l:I

    .line 217
    if-eq v9, v11, :cond_10

    .line 219
    sget v11, Lsc$a;->m:I

    .line 221
    if-ne v9, v11, :cond_18

    .line 223
    :cond_10
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 226
    move-result v9

    .line 227
    invoke-virtual/range {p1 .. p1}, Llg;->R()I

    .line 230
    move-result v11

    .line 231
    if-ne v9, v11, :cond_11

    .line 233
    const/4 v9, 0x1

    .line 234
    goto :goto_6

    .line 235
    :cond_11
    const/4 v9, 0x0

    .line 236
    :goto_6
    iget v11, v2, Lsc$a;->j:I

    .line 238
    sget v12, Lsc$a;->m:I

    .line 240
    if-eq v11, v12, :cond_14

    .line 242
    if-eqz v8, :cond_14

    .line 244
    if-eqz v8, :cond_12

    .line 246
    if-nez v9, :cond_14

    .line 248
    :cond_12
    invoke-virtual/range {p1 .. p1}, Llg;->f0()Z

    .line 251
    move-result v8

    .line 252
    if-eqz v8, :cond_13

    .line 254
    goto :goto_7

    .line 255
    :cond_13
    const/4 v8, 0x0

    .line 256
    goto :goto_8

    .line 257
    :cond_14
    :goto_7
    const/4 v8, 0x1

    .line 258
    :goto_8
    if-eqz v8, :cond_18

    .line 260
    invoke-virtual/range {p1 .. p1}, Llg;->v()I

    .line 263
    move-result v7

    .line 264
    const/high16 v8, 0x40000000    # 2.0f

    .line 266
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 269
    move-result v7

    .line 270
    goto :goto_9

    .line 271
    :cond_15
    iget v7, v0, Lig$c;->g:I

    .line 273
    invoke-virtual/range {p1 .. p1}, Llg;->P()I

    .line 276
    move-result v9

    .line 277
    add-int/2addr v8, v9

    .line 278
    const/4 v9, -0x1

    .line 279
    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 282
    move-result v7

    .line 283
    goto :goto_9

    .line 284
    :cond_16
    iget v7, v0, Lig$c;->g:I

    .line 286
    const/4 v9, -0x2

    .line 287
    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 290
    move-result v7

    .line 291
    goto :goto_9

    .line 292
    :cond_17
    const/high16 v8, 0x40000000    # 2.0f

    .line 294
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 297
    move-result v7

    .line 298
    :cond_18
    :goto_9
    invoke-virtual/range {p1 .. p1}, Llg;->I()Llg;

    .line 301
    move-result-object v8

    .line 302
    check-cast v8, Lmg;

    .line 304
    if-eqz v8, :cond_1a

    .line 306
    iget-object v9, v0, Lig$c;->h:Lig;

    .line 308
    invoke-static {v9}, Lig;->a(Lig;)I

    .line 311
    move-result v9

    .line 312
    const/16 v11, 0x100

    .line 314
    invoke-static {v9, v11}, Lc50;->b(II)Z

    .line 317
    move-result v9

    .line 318
    if-eqz v9, :cond_1a

    .line 320
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 323
    move-result v9

    .line 324
    invoke-virtual/range {p1 .. p1}, Llg;->R()I

    .line 327
    move-result v11

    .line 328
    if-ne v9, v11, :cond_1a

    .line 330
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 333
    move-result v9

    .line 334
    invoke-virtual {v8}, Llg;->R()I

    .line 337
    move-result v11

    .line 338
    if-ge v9, v11, :cond_1a

    .line 340
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 343
    move-result v9

    .line 344
    invoke-virtual/range {p1 .. p1}, Llg;->v()I

    .line 347
    move-result v11

    .line 348
    if-ne v9, v11, :cond_1a

    .line 350
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 353
    move-result v9

    .line 354
    invoke-virtual {v8}, Llg;->v()I

    .line 357
    move-result v8

    .line 358
    if-ge v9, v8, :cond_1a

    .line 360
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 363
    move-result v8

    .line 364
    invoke-virtual/range {p1 .. p1}, Llg;->n()I

    .line 367
    move-result v9

    .line 368
    if-ne v8, v9, :cond_1a

    .line 370
    invoke-virtual/range {p1 .. p1}, Llg;->d0()Z

    .line 373
    move-result v8

    .line 374
    if-nez v8, :cond_1a

    .line 376
    invoke-virtual/range {p1 .. p1}, Llg;->A()I

    .line 379
    move-result v8

    .line 380
    invoke-virtual/range {p1 .. p1}, Llg;->R()I

    .line 383
    move-result v9

    .line 384
    invoke-virtual {v0, v8, v6, v9}, Lig$c;->d(III)Z

    .line 387
    move-result v8

    .line 388
    if-eqz v8, :cond_19

    .line 390
    invoke-virtual/range {p1 .. p1}, Llg;->B()I

    .line 393
    move-result v8

    .line 394
    invoke-virtual/range {p1 .. p1}, Llg;->v()I

    .line 397
    move-result v9

    .line 398
    invoke-virtual {v0, v8, v7, v9}, Lig$c;->d(III)Z

    .line 401
    move-result v8

    .line 402
    if-eqz v8, :cond_19

    .line 404
    const/4 v8, 0x1

    .line 405
    goto :goto_a

    .line 406
    :cond_19
    const/4 v8, 0x0

    .line 407
    :goto_a
    if-eqz v8, :cond_1a

    .line 409
    invoke-virtual/range {p1 .. p1}, Llg;->R()I

    .line 412
    move-result v3

    .line 413
    iput v3, v2, Lsc$a;->e:I

    .line 415
    invoke-virtual/range {p1 .. p1}, Llg;->v()I

    .line 418
    move-result v3

    .line 419
    iput v3, v2, Lsc$a;->f:I

    .line 421
    invoke-virtual/range {p1 .. p1}, Llg;->n()I

    .line 424
    move-result v1

    .line 425
    iput v1, v2, Lsc$a;->g:I

    .line 427
    return-void

    .line 428
    :cond_1a
    sget-object v8, Llg$b;->c:Llg$b;

    .line 430
    if-ne v3, v8, :cond_1b

    .line 432
    const/4 v9, 0x1

    .line 433
    goto :goto_b

    .line 434
    :cond_1b
    const/4 v9, 0x0

    .line 435
    :goto_b
    if-ne v4, v8, :cond_1c

    .line 437
    const/4 v8, 0x1

    .line 438
    goto :goto_c

    .line 439
    :cond_1c
    const/4 v8, 0x0

    .line 440
    :goto_c
    sget-object v11, Llg$b;->d:Llg$b;

    .line 442
    if-eq v4, v11, :cond_1e

    .line 444
    sget-object v12, Llg$b;->a:Llg$b;

    .line 446
    if-ne v4, v12, :cond_1d

    .line 448
    goto :goto_d

    .line 449
    :cond_1d
    const/4 v4, 0x0

    .line 450
    goto :goto_e

    .line 451
    :cond_1e
    :goto_d
    const/4 v4, 0x1

    .line 452
    :goto_e
    if-eq v3, v11, :cond_20

    .line 454
    sget-object v11, Llg$b;->a:Llg$b;

    .line 456
    if-ne v3, v11, :cond_1f

    .line 458
    goto :goto_f

    .line 459
    :cond_1f
    const/4 v3, 0x0

    .line 460
    goto :goto_10

    .line 461
    :cond_20
    :goto_f
    const/4 v3, 0x1

    .line 462
    :goto_10
    const/4 v11, 0x0

    .line 463
    if-eqz v9, :cond_21

    .line 465
    iget v12, v1, Llg;->W:F

    .line 467
    cmpl-float v12, v12, v11

    .line 469
    if-lez v12, :cond_21

    .line 471
    const/4 v12, 0x1

    .line 472
    goto :goto_11

    .line 473
    :cond_21
    const/4 v12, 0x0

    .line 474
    :goto_11
    if-eqz v8, :cond_22

    .line 476
    iget v13, v1, Llg;->W:F

    .line 478
    cmpl-float v11, v13, v11

    .line 480
    if-lez v11, :cond_22

    .line 482
    const/4 v11, 0x1

    .line 483
    goto :goto_12

    .line 484
    :cond_22
    const/4 v11, 0x0

    .line 485
    :goto_12
    if-nez v10, :cond_23

    .line 487
    return-void

    .line 488
    :cond_23
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 491
    move-result-object v13

    .line 492
    check-cast v13, Lig$b;

    .line 494
    iget v14, v2, Lsc$a;->j:I

    .line 496
    sget v15, Lsc$a;->l:I

    .line 498
    if-eq v14, v15, :cond_25

    .line 500
    sget v15, Lsc$a;->m:I

    .line 502
    if-eq v14, v15, :cond_25

    .line 504
    if-eqz v9, :cond_25

    .line 506
    iget v9, v1, Llg;->p:I

    .line 508
    if-nez v9, :cond_25

    .line 510
    if-eqz v8, :cond_25

    .line 512
    iget v8, v1, Llg;->q:I

    .line 514
    if-eqz v8, :cond_24

    .line 516
    goto :goto_13

    .line 517
    :cond_24
    const/4 v0, -0x1

    .line 518
    const/4 v5, 0x0

    .line 519
    const/4 v14, 0x0

    .line 520
    const/4 v15, 0x0

    .line 521
    goto/16 :goto_1a

    .line 523
    :cond_25
    :goto_13
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 526
    invoke-virtual {v1, v6, v7}, Llg;->E0(II)V

    .line 529
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 532
    move-result v8

    .line 533
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 536
    move-result v9

    .line 537
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 540
    move-result v14

    .line 541
    iget v15, v1, Llg;->s:I

    .line 543
    if-lez v15, :cond_26

    .line 545
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    .line 548
    move-result v15

    .line 549
    goto :goto_14

    .line 550
    :cond_26
    move v15, v8

    .line 551
    :goto_14
    iget v5, v1, Llg;->t:I

    .line 553
    if-lez v5, :cond_27

    .line 555
    invoke-static {v5, v15}, Ljava/lang/Math;->min(II)I

    .line 558
    move-result v15

    .line 559
    :cond_27
    iget v5, v1, Llg;->v:I

    .line 561
    if-lez v5, :cond_28

    .line 563
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    .line 566
    move-result v5

    .line 567
    move/from16 v16, v6

    .line 569
    goto :goto_15

    .line 570
    :cond_28
    move/from16 v16, v6

    .line 572
    move v5, v9

    .line 573
    :goto_15
    iget v6, v1, Llg;->w:I

    .line 575
    if-lez v6, :cond_29

    .line 577
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 580
    move-result v5

    .line 581
    :cond_29
    iget-object v6, v0, Lig$c;->h:Lig;

    .line 583
    invoke-static {v6}, Lig;->a(Lig;)I

    .line 586
    move-result v6

    .line 587
    const/4 v0, 0x1

    .line 588
    invoke-static {v6, v0}, Lc50;->b(II)Z

    .line 591
    move-result v6

    .line 592
    if-nez v6, :cond_2b

    .line 594
    const/high16 v0, 0x3f000000    # 0.5f

    .line 596
    if-eqz v12, :cond_2a

    .line 598
    if-eqz v4, :cond_2a

    .line 600
    iget v3, v1, Llg;->W:F

    .line 602
    int-to-float v4, v5

    .line 603
    mul-float v4, v4, v3

    .line 605
    add-float/2addr v4, v0

    .line 606
    float-to-int v15, v4

    .line 607
    goto :goto_16

    .line 608
    :cond_2a
    if-eqz v11, :cond_2b

    .line 610
    if-eqz v3, :cond_2b

    .line 612
    iget v3, v1, Llg;->W:F

    .line 614
    int-to-float v4, v15

    .line 615
    div-float/2addr v4, v3

    .line 616
    add-float/2addr v4, v0

    .line 617
    float-to-int v5, v4

    .line 618
    :cond_2b
    :goto_16
    if-ne v8, v15, :cond_2d

    .line 620
    if-eq v9, v5, :cond_2c

    .line 622
    goto :goto_18

    .line 623
    :cond_2c
    :goto_17
    const/4 v0, -0x1

    .line 624
    goto :goto_1a

    .line 625
    :cond_2d
    :goto_18
    const/high16 v0, 0x40000000    # 2.0f

    .line 627
    if-eq v8, v15, :cond_2e

    .line 629
    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 632
    move-result v6

    .line 633
    goto :goto_19

    .line 634
    :cond_2e
    move/from16 v6, v16

    .line 636
    :goto_19
    if-eq v9, v5, :cond_2f

    .line 638
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 641
    move-result v7

    .line 642
    :cond_2f
    invoke-virtual {v10, v6, v7}, Landroid/view/View;->measure(II)V

    .line 645
    invoke-virtual {v1, v6, v7}, Llg;->E0(II)V

    .line 648
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    .line 651
    move-result v15

    .line 652
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    .line 655
    move-result v5

    .line 656
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    .line 659
    move-result v14

    .line 660
    goto :goto_17

    .line 661
    :goto_1a
    if-eq v14, v0, :cond_30

    .line 663
    const/4 v0, 0x1

    .line 664
    goto :goto_1b

    .line 665
    :cond_30
    const/4 v0, 0x0

    .line 666
    :goto_1b
    iget v3, v2, Lsc$a;->c:I

    .line 668
    if-ne v15, v3, :cond_32

    .line 670
    iget v3, v2, Lsc$a;->d:I

    .line 672
    if-eq v5, v3, :cond_31

    .line 674
    goto :goto_1c

    .line 675
    :cond_31
    const/4 v3, 0x0

    .line 676
    goto :goto_1d

    .line 677
    :cond_32
    :goto_1c
    const/4 v3, 0x1

    .line 678
    :goto_1d
    iput-boolean v3, v2, Lsc$a;->i:Z

    .line 680
    iget-boolean v3, v13, Lig$b;->Y:Z

    .line 682
    if-eqz v3, :cond_33

    .line 684
    const/4 v0, 0x1

    .line 685
    :cond_33
    if-eqz v0, :cond_34

    .line 687
    const/4 v3, -0x1

    .line 688
    if-eq v14, v3, :cond_34

    .line 690
    invoke-virtual/range {p1 .. p1}, Llg;->n()I

    .line 693
    move-result v1

    .line 694
    if-eq v1, v14, :cond_34

    .line 696
    const/4 v1, 0x1

    .line 697
    iput-boolean v1, v2, Lsc$a;->i:Z

    .line 699
    :cond_34
    iput v15, v2, Lsc$a;->e:I

    .line 701
    iput v5, v2, Lsc$a;->f:I

    .line 703
    iput-boolean v0, v2, Lsc$a;->h:Z

    .line 705
    iput v14, v2, Lsc$a;->g:I

    .line 707
    return-void
.end method

.method public c(IIIIII)V
    .locals 0

    .line 1
    iput p3, p0, Lig$c;->b:I

    .line 3
    iput p4, p0, Lig$c;->c:I

    .line 5
    iput p5, p0, Lig$c;->d:I

    .line 7
    iput p6, p0, Lig$c;->e:I

    .line 9
    iput p1, p0, Lig$c;->f:I

    .line 11
    iput p2, p0, Lig$c;->g:I

    .line 13
    return-void
.end method

.method public final d(III)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    move-result v1

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 15
    move-result p1

    .line 16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 19
    move-result p2

    .line 20
    const/high16 v2, 0x40000000    # 2.0f

    .line 22
    if-ne p1, v2, :cond_2

    .line 24
    const/high16 p1, -0x80000000

    .line 26
    if-eq v1, p1, :cond_1

    .line 28
    if-nez v1, :cond_2

    .line 30
    :cond_1
    if-ne p3, p2, :cond_2

    .line 32
    return v0

    .line 33
    :cond_2
    const/4 p1, 0x0

    .line 34
    return p1
.end method
