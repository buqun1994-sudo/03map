.class public Lcom/autonavi/autofloat/views/HorizionalLaneBarView;
.super Lcom/autonavi/skin/view/SkinImageView;
.source "SourceFile"


# static fields
.field public static final f:I

.field public static final g:I


# instance fields
.field public c:I

.field public d:Ljava/util/List;

.field public e:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Ln80;->m:I

    .line 3
    invoke-static {v0}, Lta0;->a(I)I

    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->f:I

    .line 9
    sget v0, Ln80;->n:I

    .line 11
    invoke-static {v0}, Lta0;->a(I)I

    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->g:I

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/skin/view/SkinImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->d:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public final e(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    sget p1, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->g:I

    .line 11
    return p1

    .line 12
    :cond_1
    sget p1, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->f:I

    .line 14
    return p1
.end method

.method public final f(I)Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->e:Landroid/graphics/Paint;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->e:Landroid/graphics/Paint;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object v0, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->e:Landroid/graphics/Paint;

    .line 18
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->e:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->e:Landroid/graphics/Paint;

    .line 30
    return-object p1
.end method

.method public g(Ljava/util/List;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->d:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iput p2, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->c:I

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object p2, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->d:Ljava/util/List;

    .line 12
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 18
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-super/range {p0 .. p1}, Lcom/autonavi/skin/view/SkinImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 13
    move-result v2

    .line 14
    iget-object v3, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->d:Ljava/util/List;

    .line 16
    if-eqz v3, :cond_9

    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 21
    move-result v3

    .line 22
    if-ltz v3, :cond_9

    .line 24
    iget-object v3, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->d:Ljava/util/List;

    .line 26
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 29
    move-result v3

    .line 30
    iget-object v4, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->d:Ljava/util/List;

    .line 32
    invoke-static {v4}, Lnh0;->b(Ljava/util/List;)I

    .line 35
    move-result v4

    .line 36
    const-string v5, "TollMergeNode.getMergeTotals equals ZERO!!!! "

    .line 38
    const-string v6, "onDraw ocuur a RuntimeException ! "

    .line 40
    const-string v7, "HorizionalLaneBarView"

    .line 42
    const/4 v8, 0x0

    .line 43
    if-nez v4, :cond_0

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    .line 47
    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    new-array v2, v8, [Ljava/lang/Object;

    .line 52
    invoke-static {v7, v6, v1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 55
    return-void

    .line 56
    :cond_0
    int-to-float v15, v1

    .line 57
    const/high16 v16, 0x3f800000    # 1.0f

    .line 59
    mul-float v9, v15, v16

    .line 61
    int-to-float v4, v4

    .line 62
    div-float/2addr v9, v4

    .line 63
    mul-float v9, v9, v16

    .line 65
    const/4 v4, 0x1

    .line 66
    sub-int/2addr v3, v4

    .line 67
    const/4 v14, 0x0

    .line 68
    :goto_0
    if-ltz v3, :cond_9

    .line 70
    iget-object v10, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->d:Ljava/util/List;

    .line 72
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    move-result-object v10

    .line 76
    move-object v13, v10

    .line 77
    check-cast v13, Lnh0;

    .line 79
    invoke-virtual {v13}, Lnh0;->c()I

    .line 82
    iget-object v10, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->d:Ljava/util/List;

    .line 84
    invoke-static {v10}, Lnh0;->b(Ljava/util/List;)I

    .line 87
    move-result v10

    .line 88
    const/4 v11, 0x6

    .line 89
    const-string v4, " \u7ed8\u5236\u8def\u51b5 letf :{?} right:{?} status:{?}"

    .line 91
    const/16 v17, 0x2

    .line 93
    if-le v10, v11, :cond_2

    .line 95
    invoke-virtual {v13}, Lnh0;->c()I

    .line 98
    move-result v10

    .line 99
    int-to-float v10, v10

    .line 100
    mul-float v10, v10, v9

    .line 102
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 105
    move-result v10

    .line 106
    int-to-float v10, v10

    .line 107
    sub-int v11, v1, v14

    .line 109
    int-to-float v8, v11

    .line 110
    sub-float v12, v8, v10

    .line 112
    float-to-int v12, v12

    .line 113
    move/from16 v24, v9

    .line 115
    int-to-float v9, v12

    .line 116
    const/16 v20, 0x0

    .line 118
    move/from16 v25, v15

    .line 120
    int-to-float v15, v2

    .line 121
    move/from16 v26, v2

    .line 123
    iget-boolean v2, v13, Lnh0;->c:Z

    .line 125
    if-eqz v2, :cond_1

    .line 127
    const/4 v2, 0x1

    .line 128
    goto :goto_1

    .line 129
    :cond_1
    const/4 v2, 0x2

    .line 130
    :goto_1
    invoke-virtual {v0, v2}, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->e(I)I

    .line 133
    move-result v2

    .line 134
    invoke-virtual {v0, v2}, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->f(I)Landroid/graphics/Paint;

    .line 137
    move-result-object v23

    .line 138
    move-object/from16 v18, p1

    .line 140
    move/from16 v19, v9

    .line 142
    move/from16 v21, v8

    .line 144
    move/from16 v22, v15

    .line 146
    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 149
    const/4 v2, 0x3

    .line 150
    new-array v2, v2, [Ljava/lang/Object;

    .line 152
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v8

    .line 156
    const/4 v9, 0x0

    .line 157
    aput-object v8, v2, v9

    .line 159
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    move-result-object v8

    .line 163
    const/4 v9, 0x1

    .line 164
    aput-object v8, v2, v9

    .line 166
    iget-boolean v8, v13, Lnh0;->c:Z

    .line 168
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 171
    move-result-object v8

    .line 172
    aput-object v8, v2, v17

    .line 174
    invoke-static {v7, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    int-to-float v2, v14

    .line 178
    add-float/2addr v2, v10

    .line 179
    float-to-int v2, v2

    .line 180
    move v14, v2

    .line 181
    move-object/from16 v19, v5

    .line 183
    move-object/from16 v22, v6

    .line 185
    move/from16 v18, v24

    .line 187
    move/from16 v4, v26

    .line 189
    const/4 v8, 0x0

    .line 190
    const/4 v9, 0x1

    .line 191
    goto/16 :goto_7

    .line 193
    :cond_2
    move/from16 v26, v2

    .line 195
    move/from16 v25, v15

    .line 197
    const/4 v2, 0x3

    .line 198
    iget-object v8, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->d:Ljava/util/List;

    .line 200
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 203
    move-result v8

    .line 204
    iget-object v9, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->d:Ljava/util/List;

    .line 206
    invoke-static {v9}, Lnh0;->b(Ljava/util/List;)I

    .line 209
    move-result v9

    .line 210
    mul-int v9, v9, v1

    .line 212
    int-to-float v9, v9

    .line 213
    const/high16 v10, 0x40e00000    # 7.0f

    .line 215
    div-float/2addr v9, v10

    .line 216
    float-to-int v9, v9

    .line 217
    sub-int v10, v1, v9

    .line 219
    int-to-float v10, v10

    .line 220
    const/high16 v11, 0x40000000    # 2.0f

    .line 222
    div-float/2addr v10, v11

    .line 223
    float-to-int v15, v10

    .line 224
    iget-object v10, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->d:Ljava/util/List;

    .line 226
    invoke-static {v10}, Lnh0;->b(Ljava/util/List;)I

    .line 229
    move-result v10

    .line 230
    if-nez v10, :cond_3

    .line 232
    new-instance v1, Ljava/lang/RuntimeException;

    .line 234
    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 237
    const/4 v2, 0x0

    .line 238
    new-array v2, v2, [Ljava/lang/Object;

    .line 240
    invoke-static {v7, v6, v1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 243
    return-void

    .line 244
    :cond_3
    int-to-float v9, v9

    .line 245
    mul-float v9, v9, v16

    .line 247
    int-to-float v10, v10

    .line 248
    div-float/2addr v9, v10

    .line 249
    mul-float v18, v9, v16

    .line 251
    invoke-virtual {v13}, Lnh0;->c()I

    .line 254
    move-result v9

    .line 255
    int-to-float v9, v9

    .line 256
    mul-float v9, v9, v18

    .line 258
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 261
    move-result v9

    .line 262
    int-to-float v12, v9

    .line 263
    sub-int v11, v1, v14

    .line 265
    int-to-float v9, v11

    .line 266
    sub-float/2addr v9, v12

    .line 267
    float-to-int v10, v9

    .line 268
    const/4 v9, 0x1

    .line 269
    sub-int/2addr v8, v9

    .line 270
    const-string v9, ",right:"

    .line 272
    const-string v2, "   left: "

    .line 274
    if-ne v3, v8, :cond_5

    .line 276
    sub-int v8, v11, v15

    .line 278
    move-object/from16 v19, v5

    .line 280
    int-to-float v5, v8

    .line 281
    const/16 v20, 0x0

    .line 283
    move-object/from16 v22, v6

    .line 285
    move/from16 v21, v11

    .line 287
    move/from16 v11, v26

    .line 289
    int-to-float v6, v11

    .line 290
    move-object/from16 v23, v9

    .line 292
    iget-boolean v9, v13, Lnh0;->c:Z

    .line 294
    if-eqz v9, :cond_4

    .line 296
    const/4 v9, 0x1

    .line 297
    goto :goto_2

    .line 298
    :cond_4
    const/4 v9, 0x2

    .line 299
    :goto_2
    invoke-virtual {v0, v9}, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->e(I)I

    .line 302
    move-result v9

    .line 303
    invoke-virtual {v0, v9}, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->f(I)Landroid/graphics/Paint;

    .line 306
    move-result-object v24

    .line 307
    move-object/from16 v27, v23

    .line 309
    move-object/from16 v9, p1

    .line 311
    move/from16 v23, v10

    .line 313
    move v10, v5

    .line 314
    move/from16 v5, v21

    .line 316
    move-object/from16 v21, v4

    .line 318
    move v4, v11

    .line 319
    move/from16 v11, v20

    .line 321
    move/from16 v20, v12

    .line 323
    move/from16 v12, v25

    .line 325
    move-object/from16 v28, v13

    .line 327
    move v13, v6

    .line 328
    move v6, v14

    .line 329
    move-object/from16 v14, v24

    .line 331
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 334
    new-instance v9, Ljava/lang/StringBuilder;

    .line 336
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    move-object/from16 v8, v27

    .line 347
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    move-result-object v9

    .line 357
    const/4 v10, 0x0

    .line 358
    new-array v11, v10, [Ljava/lang/Object;

    .line 360
    invoke-static {v7, v9, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    goto :goto_3

    .line 364
    :cond_5
    move-object/from16 v21, v4

    .line 366
    move-object/from16 v19, v5

    .line 368
    move-object/from16 v22, v6

    .line 370
    move-object v8, v9

    .line 371
    move/from16 v23, v10

    .line 373
    move v5, v11

    .line 374
    move/from16 v20, v12

    .line 376
    move-object/from16 v28, v13

    .line 378
    move v6, v14

    .line 379
    move/from16 v4, v26

    .line 381
    :goto_3
    sub-int v10, v23, v15

    .line 383
    int-to-float v9, v10

    .line 384
    const/16 v31, 0x0

    .line 386
    sub-int v11, v5, v15

    .line 388
    int-to-float v12, v11

    .line 389
    int-to-float v13, v4

    .line 390
    move-object/from16 v14, v28

    .line 392
    iget-boolean v15, v14, Lnh0;->c:Z

    .line 394
    if-eqz v15, :cond_6

    .line 396
    const/4 v15, 0x1

    .line 397
    goto :goto_4

    .line 398
    :cond_6
    const/4 v15, 0x2

    .line 399
    :goto_4
    invoke-virtual {v0, v15}, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->e(I)I

    .line 402
    move-result v15

    .line 403
    invoke-virtual {v0, v15}, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->f(I)Landroid/graphics/Paint;

    .line 406
    move-result-object v34

    .line 407
    move-object/from16 v29, p1

    .line 409
    move/from16 v30, v9

    .line 411
    move/from16 v32, v12

    .line 413
    move/from16 v33, v13

    .line 415
    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 418
    new-instance v12, Ljava/lang/StringBuilder;

    .line 420
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    move-result-object v2

    .line 439
    const/4 v8, 0x0

    .line 440
    new-array v11, v8, [Ljava/lang/Object;

    .line 442
    invoke-static {v7, v2, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    if-nez v3, :cond_8

    .line 447
    const/16 v30, 0x0

    .line 449
    const/16 v31, 0x0

    .line 451
    iget-boolean v2, v14, Lnh0;->c:Z

    .line 453
    if-eqz v2, :cond_7

    .line 455
    const/4 v2, 0x1

    .line 456
    goto :goto_5

    .line 457
    :cond_7
    const/4 v2, 0x2

    .line 458
    :goto_5
    invoke-virtual {v0, v2}, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->e(I)I

    .line 461
    move-result v2

    .line 462
    invoke-virtual {v0, v2}, Lcom/autonavi/autofloat/views/HorizionalLaneBarView;->f(I)Landroid/graphics/Paint;

    .line 465
    move-result-object v34

    .line 466
    move-object/from16 v29, p1

    .line 468
    move/from16 v32, v9

    .line 470
    move/from16 v33, v13

    .line 472
    invoke-virtual/range {v29 .. v34}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    .line 477
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    const-string v8, "   left: 0,right:"

    .line 482
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    move-result-object v2

    .line 492
    const/4 v8, 0x0

    .line 493
    new-array v9, v8, [Ljava/lang/Object;

    .line 495
    invoke-static {v7, v2, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    goto :goto_6

    .line 499
    :cond_8
    const/4 v8, 0x0

    .line 500
    :goto_6
    const/4 v2, 0x3

    .line 501
    new-array v2, v2, [Ljava/lang/Object;

    .line 503
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 506
    move-result-object v9

    .line 507
    aput-object v9, v2, v8

    .line 509
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 512
    move-result-object v5

    .line 513
    const/4 v9, 0x1

    .line 514
    aput-object v5, v2, v9

    .line 516
    iget-boolean v5, v14, Lnh0;->c:Z

    .line 518
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 521
    move-result-object v5

    .line 522
    aput-object v5, v2, v17

    .line 524
    move-object/from16 v5, v21

    .line 526
    invoke-static {v7, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    int-to-float v2, v6

    .line 530
    add-float v2, v2, v20

    .line 532
    float-to-int v2, v2

    .line 533
    move v14, v2

    .line 534
    :goto_7
    add-int/lit8 v3, v3, -0x1

    .line 536
    move v2, v4

    .line 537
    move/from16 v9, v18

    .line 539
    move-object/from16 v5, v19

    .line 541
    move-object/from16 v6, v22

    .line 543
    move/from16 v15, v25

    .line 545
    const/4 v4, 0x1

    .line 546
    goto/16 :goto_0

    .line 548
    :cond_9
    return-void
.end method
