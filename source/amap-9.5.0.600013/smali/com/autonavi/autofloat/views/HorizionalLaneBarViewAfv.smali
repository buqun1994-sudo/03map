.class public Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;
.super Lcom/autonavi/skin/view/SkinImageView;
.source "SourceFile"


# static fields
.field public static final g:I

.field public static final h:I


# instance fields
.field public c:I

.field public d:Z

.field public e:Ljava/util/List;

.field public f:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Ln80;->t:I

    .line 3
    invoke-static {v0}, Lta0;->a(I)I

    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->g:I

    .line 9
    sget v0, Ln80;->u:I

    .line 11
    invoke-static {v0}, Lta0;->a(I)I

    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->h:I

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
    iput-object p1, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

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
    sget p1, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->h:I

    .line 11
    return p1

    .line 12
    :cond_1
    sget p1, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->g:I

    .line 14
    return p1
.end method

.method public final f(I)I
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 12
    const/4 p1, -0x1

    .line 13
    return p1

    .line 14
    :cond_0
    sget p1, Lt80;->D0:I

    .line 16
    return p1

    .line 17
    :cond_1
    sget p1, Lt80;->C0:I

    .line 19
    return p1

    .line 20
    :cond_2
    sget p1, Lt80;->z0:I

    .line 22
    return p1

    .line 23
    :cond_3
    sget p1, Lt80;->A0:I

    .line 25
    return p1
.end method

.method public final g(I)Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->f:Landroid/graphics/Paint;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->f:Landroid/graphics/Paint;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object v0, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->f:Landroid/graphics/Paint;

    .line 18
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->f:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->f:Landroid/graphics/Paint;

    .line 30
    return-object p1
.end method

.method public h(Ljava/util/List;IZ)V
    .locals 0

    .line 1
    iput-boolean p3, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->d:Z

    .line 3
    iget-object p3, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 5
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 8
    iput p2, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->c:I

    .line 10
    if-eqz p1, :cond_0

    .line 12
    iget-object p2, p0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 14
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 20
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    invoke-super/range {p0 .. p1}, Lcom/autonavi/skin/view/SkinImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 11
    move-result v8

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 15
    move-result v9

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v1

    .line 20
    sget v2, Lq80;->b:I

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result v1

    .line 26
    const/16 v2, 0x8

    .line 28
    new-array v3, v2, [F

    .line 30
    const/4 v10, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    aput v4, v3, v10

    .line 34
    const/4 v11, 0x1

    .line 35
    aput v4, v3, v11

    .line 37
    const/4 v12, 0x2

    .line 38
    aput v4, v3, v12

    .line 40
    const/4 v13, 0x3

    .line 41
    aput v4, v3, v13

    .line 43
    int-to-float v1, v1

    .line 44
    const/4 v5, 0x4

    .line 45
    aput v1, v3, v5

    .line 47
    const/4 v5, 0x5

    .line 48
    aput v1, v3, v5

    .line 50
    const/4 v14, 0x6

    .line 51
    aput v1, v3, v14

    .line 53
    const/4 v5, 0x7

    .line 54
    aput v1, v3, v5

    .line 56
    new-instance v1, Landroid/graphics/Path;

    .line 58
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 61
    new-instance v6, Landroid/graphics/RectF;

    .line 63
    int-to-float v15, v8

    .line 64
    int-to-float v13, v9

    .line 65
    invoke-direct {v6, v4, v4, v15, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 68
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 70
    invoke-virtual {v1, v6, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 73
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 76
    iget-object v1, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 78
    if-eqz v1, :cond_18

    .line 80
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 83
    move-result v1

    .line 84
    if-ltz v1, :cond_18

    .line 86
    iget-object v1, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 88
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 91
    move-result v1

    .line 92
    iget-object v3, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 94
    invoke-static {v3}, Lnh0;->b(Ljava/util/List;)I

    .line 97
    move-result v3

    .line 98
    const-string v6, "TollMergeNode.getMergeTotals equals ZERO!!!! "

    .line 100
    const-string v4, "onDraw ocuur a RuntimeException ! "

    .line 102
    const-string v5, "HorizionalLaneBarViewAfv"

    .line 104
    if-nez v3, :cond_0

    .line 106
    new-instance v1, Ljava/lang/RuntimeException;

    .line 108
    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 111
    new-array v2, v10, [Ljava/lang/Object;

    .line 113
    invoke-static {v5, v4, v1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 116
    return-void

    .line 117
    :cond_0
    iget-object v11, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 119
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object v11

    .line 123
    check-cast v11, Lnh0;

    .line 125
    const/16 v18, 0x258

    .line 127
    invoke-static/range {v18 .. v18}, Lib;->u(I)Z

    .line 130
    move-result v18

    .line 131
    if-eqz v18, :cond_1

    .line 133
    iget-object v10, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 135
    invoke-static {v10}, Lnh0;->b(Ljava/util/List;)I

    .line 138
    move-result v10

    .line 139
    if-le v10, v14, :cond_1

    .line 141
    iget-boolean v10, v11, Lnh0;->g:Z

    .line 143
    if-nez v10, :cond_1

    .line 145
    const/4 v10, 0x1

    .line 146
    goto :goto_0

    .line 147
    :cond_1
    const/4 v10, 0x0

    .line 148
    :goto_0
    const/high16 v11, 0x3f800000    # 1.0f

    .line 150
    if-eqz v10, :cond_3

    .line 152
    mul-float v17, v15, v11

    .line 154
    int-to-float v14, v3

    .line 155
    div-float v17, v17, v14

    .line 157
    mul-float v17, v17, v11

    .line 159
    const v14, 0x3f99999a    # 1.2f

    .line 162
    mul-float v17, v17, v14

    .line 164
    iget-object v14, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 166
    invoke-static {v14}, Lnh0;->b(Ljava/util/List;)I

    .line 169
    move-result v14

    .line 170
    if-le v14, v2, :cond_2

    .line 172
    const/16 v16, 0x0

    .line 174
    goto :goto_1

    .line 175
    :cond_2
    move/from16 v16, v17

    .line 177
    :goto_1
    new-array v2, v12, [Ljava/lang/Object;

    .line 179
    const/high16 v14, 0x42f00000    # 120.0f

    .line 181
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 184
    move-result-object v14

    .line 185
    const/16 v17, 0x0

    .line 187
    aput-object v14, v2, v17

    .line 189
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 192
    move-result-object v14

    .line 193
    const/16 v17, 0x1

    .line 195
    aput-object v14, v2, v17

    .line 197
    const-string v14, "shouldFixedWidth and ratioPercent:{?}, fixedWidth:{?}"

    .line 199
    invoke-static {v5, v14, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    goto :goto_2

    .line 203
    :cond_3
    iget-boolean v2, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->d:Z

    .line 205
    if-eqz v2, :cond_4

    .line 207
    iget-object v2, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 209
    invoke-static {v2}, Lnh0;->b(Ljava/util/List;)I

    .line 212
    move-result v2

    .line 213
    const/4 v14, 0x6

    .line 214
    if-gt v2, v14, :cond_4

    .line 216
    iget-object v2, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 218
    invoke-static {v2}, Lnh0;->b(Ljava/util/List;)I

    .line 221
    move-result v2

    .line 222
    if-le v2, v12, :cond_4

    .line 224
    mul-float v2, v15, v11

    .line 226
    int-to-float v14, v3

    .line 227
    div-float/2addr v2, v14

    .line 228
    mul-float v2, v2, v11

    .line 230
    iget-object v14, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 232
    invoke-static {v14}, Lnh0;->b(Ljava/util/List;)I

    .line 235
    move-result v14

    .line 236
    const/16 v16, 0x7

    .line 238
    rsub-int/lit8 v14, v14, 0x7

    .line 240
    int-to-float v14, v14

    .line 241
    const/high16 v16, 0x42480000    # 50.0f

    .line 243
    mul-float v14, v14, v16

    .line 245
    mul-float v16, v14, v11

    .line 247
    const/high16 v17, 0x42c80000    # 100.0f

    .line 249
    div-float v16, v16, v17

    .line 251
    mul-float v2, v2, v16

    .line 253
    new-array v11, v12, [Ljava/lang/Object;

    .line 255
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 258
    move-result-object v14

    .line 259
    const/16 v16, 0x0

    .line 261
    aput-object v14, v11, v16

    .line 263
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 266
    move-result-object v14

    .line 267
    const/16 v16, 0x1

    .line 269
    aput-object v14, v11, v16

    .line 271
    const-string v14, "getMergeTotals lt 7 and ratioPercent:{?}, fixedWidth:{?}"

    .line 273
    invoke-static {v5, v14, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    move/from16 v16, v2

    .line 278
    goto :goto_2

    .line 279
    :cond_4
    const/16 v16, 0x0

    .line 281
    :goto_2
    sub-float v2, v15, v16

    .line 283
    const/high16 v11, 0x3f800000    # 1.0f

    .line 285
    mul-float v2, v2, v11

    .line 287
    int-to-float v3, v3

    .line 288
    div-float/2addr v2, v3

    .line 289
    mul-float v11, v11, v2

    .line 291
    const/4 v2, 0x1

    .line 292
    add-int/lit8 v14, v1, -0x1

    .line 294
    move v2, v14

    .line 295
    const/4 v3, 0x0

    .line 296
    :goto_3
    if-ltz v2, :cond_18

    .line 298
    iget-object v1, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 300
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 303
    move-result-object v1

    .line 304
    check-cast v1, Lnh0;

    .line 306
    invoke-virtual {v1}, Lnh0;->c()I

    .line 309
    iget-object v12, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 311
    invoke-static {v12}, Lnh0;->b(Ljava/util/List;)I

    .line 314
    move-result v12

    .line 315
    move-object/from16 v20, v4

    .line 317
    const-string v4, " \u7ed8\u5236\u8def\u51b5 letf :{?} right:{?} status:{?}"

    .line 319
    move-object/from16 v22, v4

    .line 321
    const/high16 v23, 0x40000000    # 2.0f

    .line 323
    const/4 v4, 0x6

    .line 324
    if-le v12, v4, :cond_b

    .line 326
    invoke-virtual {v1}, Lnh0;->c()I

    .line 329
    move-result v12

    .line 330
    int-to-float v12, v12

    .line 331
    mul-float v12, v12, v11

    .line 333
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 336
    move-result v12

    .line 337
    int-to-float v12, v12

    .line 338
    sub-int v4, v8, v3

    .line 340
    move/from16 v25, v3

    .line 342
    int-to-float v3, v4

    .line 343
    sub-float/2addr v3, v12

    .line 344
    move-object/from16 v26, v6

    .line 346
    div-float v6, v16, v23

    .line 348
    sub-float/2addr v3, v6

    .line 349
    float-to-int v3, v3

    .line 350
    float-to-int v6, v6

    .line 351
    sub-int v6, v4, v6

    .line 353
    if-eqz v10, :cond_5

    .line 355
    if-nez v2, :cond_5

    .line 357
    const-string v3, "shouldFixedWidth idx==0 so tmcLeft set 0"

    .line 359
    move/from16 v27, v4

    .line 361
    move/from16 v23, v6

    .line 363
    const/4 v4, 0x0

    .line 364
    new-array v6, v4, [Ljava/lang/Object;

    .line 366
    invoke-static {v5, v3, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    const/4 v6, 0x0

    .line 370
    goto :goto_4

    .line 371
    :cond_5
    move/from16 v27, v4

    .line 373
    move/from16 v23, v6

    .line 375
    move v6, v3

    .line 376
    :goto_4
    if-eqz v10, :cond_6

    .line 378
    if-ne v2, v14, :cond_6

    .line 380
    move/from16 v4, v27

    .line 382
    goto :goto_5

    .line 383
    :cond_6
    move/from16 v4, v23

    .line 385
    :goto_5
    invoke-static {}, Lib;->n()Z

    .line 388
    move-result v3

    .line 389
    if-eqz v3, :cond_9

    .line 391
    iget-boolean v3, v1, Lnh0;->g:Z

    .line 393
    if-eqz v3, :cond_9

    .line 395
    invoke-static {}, Lib;->o()Z

    .line 398
    move-result v3

    .line 399
    if-nez v3, :cond_8

    .line 401
    iget-boolean v3, v1, Lnh0;->f:Z

    .line 403
    if-eqz v3, :cond_8

    .line 405
    iget v3, v1, Lnh0;->e:I

    .line 407
    invoke-virtual {v0, v3}, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->f(I)I

    .line 410
    move-result v3

    .line 411
    move/from16 v27, v2

    .line 413
    const/4 v2, -0x1

    .line 414
    if-eq v3, v2, :cond_7

    .line 416
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 419
    move-result-object v2

    .line 420
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 423
    move-result-object v2

    .line 424
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 427
    move-result-object v2

    .line 428
    new-instance v3, Landroid/graphics/NinePatch;

    .line 430
    move-object/from16 v24, v5

    .line 432
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    .line 435
    move-result-object v5

    .line 436
    move/from16 v28, v10

    .line 438
    const/4 v10, 0x0

    .line 439
    invoke-direct {v3, v2, v5, v10}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 442
    new-instance v2, Landroid/graphics/Rect;

    .line 444
    const/4 v5, 0x0

    .line 445
    invoke-direct {v2, v6, v5, v4, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 448
    invoke-virtual {v3, v7, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 451
    goto :goto_6

    .line 452
    :cond_7
    move-object/from16 v24, v5

    .line 454
    move/from16 v28, v10

    .line 456
    :goto_6
    move-object/from16 v29, v1

    .line 458
    move/from16 v23, v4

    .line 460
    move/from16 v30, v14

    .line 462
    move-object/from16 v32, v20

    .line 464
    move-object/from16 v31, v22

    .line 466
    move-object/from16 v33, v24

    .line 468
    move/from16 v14, v27

    .line 470
    const/4 v1, 0x3

    .line 471
    const/16 v19, 0x6

    .line 473
    move/from16 v20, v6

    .line 475
    move/from16 v22, v13

    .line 477
    move/from16 v27, v15

    .line 479
    move/from16 v15, v25

    .line 481
    goto :goto_7

    .line 482
    :cond_8
    move/from16 v28, v10

    .line 484
    move-object/from16 v29, v1

    .line 486
    move/from16 v23, v4

    .line 488
    move-object/from16 v33, v5

    .line 490
    move/from16 v30, v14

    .line 492
    move/from16 v27, v15

    .line 494
    move-object/from16 v32, v20

    .line 496
    move-object/from16 v31, v22

    .line 498
    move/from16 v15, v25

    .line 500
    const/4 v1, 0x3

    .line 501
    const/16 v19, 0x6

    .line 503
    move v14, v2

    .line 504
    move/from16 v20, v6

    .line 506
    move/from16 v22, v13

    .line 508
    :goto_7
    move-object/from16 v13, v26

    .line 510
    goto :goto_9

    .line 511
    :cond_9
    move/from16 v27, v2

    .line 513
    move-object/from16 v24, v5

    .line 515
    move/from16 v28, v10

    .line 517
    int-to-float v2, v6

    .line 518
    const/4 v3, 0x0

    .line 519
    int-to-float v5, v4

    .line 520
    iget-boolean v10, v1, Lnh0;->c:Z

    .line 522
    if-eqz v10, :cond_a

    .line 524
    const/4 v10, 0x1

    .line 525
    goto :goto_8

    .line 526
    :cond_a
    const/4 v10, 0x2

    .line 527
    :goto_8
    invoke-virtual {v0, v10}, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e(I)I

    .line 530
    move-result v10

    .line 531
    invoke-virtual {v0, v10}, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->g(I)Landroid/graphics/Paint;

    .line 534
    move-result-object v10

    .line 535
    move-object/from16 v29, v1

    .line 537
    move-object/from16 v1, p1

    .line 539
    move/from16 v30, v14

    .line 541
    move/from16 v14, v27

    .line 543
    move/from16 v27, v15

    .line 545
    move/from16 v15, v25

    .line 547
    move/from16 v23, v4

    .line 549
    move-object/from16 v32, v20

    .line 551
    move-object/from16 v31, v22

    .line 553
    const/16 v19, 0x6

    .line 555
    move v4, v5

    .line 556
    move-object/from16 v33, v24

    .line 558
    move v5, v13

    .line 559
    move/from16 v20, v6

    .line 561
    move/from16 v22, v13

    .line 563
    move-object/from16 v13, v26

    .line 565
    move-object v6, v10

    .line 566
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 569
    const/4 v1, 0x3

    .line 570
    :goto_9
    new-array v2, v1, [Ljava/lang/Object;

    .line 572
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 575
    move-result-object v1

    .line 576
    const/4 v3, 0x0

    .line 577
    aput-object v1, v2, v3

    .line 579
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 582
    move-result-object v1

    .line 583
    const/4 v3, 0x1

    .line 584
    aput-object v1, v2, v3

    .line 586
    move-object/from16 v10, v29

    .line 588
    iget-boolean v1, v10, Lnh0;->c:Z

    .line 590
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 593
    move-result-object v1

    .line 594
    const/4 v3, 0x2

    .line 595
    aput-object v1, v2, v3

    .line 597
    move-object/from16 v6, v31

    .line 599
    move-object/from16 v5, v33

    .line 601
    invoke-static {v5, v6, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    int-to-float v1, v15

    .line 605
    add-float/2addr v1, v12

    .line 606
    float-to-int v1, v1

    .line 607
    move v3, v1

    .line 608
    move-object v12, v5

    .line 609
    move/from16 v21, v8

    .line 611
    move-object/from16 v24, v32

    .line 613
    const/4 v1, 0x3

    .line 614
    const/4 v2, 0x0

    .line 615
    const/4 v5, 0x1

    .line 616
    const/4 v6, 0x2

    .line 617
    goto/16 :goto_12

    .line 619
    :cond_b
    move/from16 v28, v10

    .line 621
    move/from16 v30, v14

    .line 623
    move/from16 v27, v15

    .line 625
    move-object/from16 v32, v20

    .line 627
    const/16 v19, 0x6

    .line 629
    move-object v10, v1

    .line 630
    move v14, v2

    .line 631
    move v15, v3

    .line 632
    move/from16 v40, v13

    .line 634
    move-object v13, v6

    .line 635
    move-object/from16 v6, v22

    .line 637
    move/from16 v22, v40

    .line 639
    iget-object v1, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 641
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 644
    move-result v1

    .line 645
    iget-object v2, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 647
    invoke-static {v2}, Lnh0;->b(Ljava/util/List;)I

    .line 650
    move-result v2

    .line 651
    mul-int v2, v2, v8

    .line 653
    int-to-float v2, v2

    .line 654
    const/high16 v3, 0x40e00000    # 7.0f

    .line 656
    div-float/2addr v2, v3

    .line 657
    float-to-int v2, v2

    .line 658
    iget-boolean v3, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->d:Z

    .line 660
    if-nez v3, :cond_c

    .line 662
    sub-int v2, v8, v2

    .line 664
    int-to-float v2, v2

    .line 665
    div-float v2, v2, v23

    .line 667
    float-to-int v2, v2

    .line 668
    move v12, v2

    .line 669
    goto :goto_a

    .line 670
    :cond_c
    const/4 v12, 0x0

    .line 671
    :goto_a
    iget-object v2, v0, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e:Ljava/util/List;

    .line 673
    invoke-static {v2}, Lnh0;->b(Ljava/util/List;)I

    .line 676
    move-result v2

    .line 677
    if-nez v2, :cond_d

    .line 679
    new-instance v1, Ljava/lang/RuntimeException;

    .line 681
    invoke-direct {v1, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 684
    const/4 v2, 0x0

    .line 685
    new-array v2, v2, [Ljava/lang/Object;

    .line 687
    move-object/from16 v4, v32

    .line 689
    invoke-static {v5, v4, v1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 692
    return-void

    .line 693
    :cond_d
    move-object/from16 v4, v32

    .line 695
    invoke-virtual {v10}, Lnh0;->c()I

    .line 698
    move-result v2

    .line 699
    int-to-float v2, v2

    .line 700
    mul-float v2, v2, v11

    .line 702
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 705
    move-result v2

    .line 706
    int-to-float v3, v2

    .line 707
    sub-int v2, v8, v15

    .line 709
    int-to-float v4, v2

    .line 710
    sub-float/2addr v4, v3

    .line 711
    float-to-int v4, v4

    .line 712
    move/from16 v20, v3

    .line 714
    div-float v3, v16, v23

    .line 716
    float-to-int v3, v3

    .line 717
    sub-int v23, v4, v3

    .line 719
    sub-int v25, v2, v3

    .line 721
    invoke-static {}, Lib;->n()Z

    .line 724
    move-result v2

    .line 725
    const-string v4, ",right:"

    .line 727
    const-string v3, "   left: "

    .line 729
    if-eqz v2, :cond_10

    .line 731
    iget-boolean v2, v10, Lnh0;->g:Z

    .line 733
    if-eqz v2, :cond_10

    .line 735
    invoke-static {}, Lib;->o()Z

    .line 738
    move-result v1

    .line 739
    if-nez v1, :cond_f

    .line 741
    iget v1, v10, Lnh0;->e:I

    .line 743
    invoke-virtual {v0, v1}, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->f(I)I

    .line 746
    move-result v1

    .line 747
    const/4 v2, -0x1

    .line 748
    if-eq v1, v2, :cond_e

    .line 750
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 753
    move-result-object v2

    .line 754
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 757
    move-result-object v2

    .line 758
    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 761
    move-result-object v1

    .line 762
    new-instance v2, Landroid/graphics/NinePatch;

    .line 764
    move-object/from16 v24, v3

    .line 766
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    .line 769
    move-result-object v3

    .line 770
    move-object/from16 v26, v4

    .line 772
    const/4 v4, 0x0

    .line 773
    invoke-direct {v2, v1, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 776
    new-instance v1, Landroid/graphics/Rect;

    .line 778
    sub-int v3, v23, v12

    .line 780
    sub-int v4, v25, v12

    .line 782
    move-object/from16 v33, v5

    .line 784
    const/4 v5, 0x0

    .line 785
    invoke-direct {v1, v3, v5, v4, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 788
    invoke-virtual {v2, v7, v1}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 791
    goto :goto_b

    .line 792
    :cond_e
    move-object/from16 v24, v3

    .line 794
    move-object/from16 v26, v4

    .line 796
    move-object/from16 v33, v5

    .line 798
    :goto_b
    move-object v7, v6

    .line 799
    move/from16 v21, v8

    .line 801
    move-object/from16 v8, v24

    .line 803
    move-object/from16 v39, v26

    .line 805
    move-object/from16 v24, v32

    .line 807
    move-object/from16 v38, v33

    .line 809
    goto/16 :goto_f

    .line 811
    :cond_f
    move-object/from16 v39, v4

    .line 813
    move-object/from16 v38, v5

    .line 815
    move-object v7, v6

    .line 816
    move/from16 v21, v8

    .line 818
    move-object/from16 v24, v32

    .line 820
    move-object v8, v3

    .line 821
    goto/16 :goto_f

    .line 823
    :cond_10
    move-object/from16 v24, v3

    .line 825
    move-object/from16 v26, v4

    .line 827
    move-object/from16 v33, v5

    .line 829
    const/4 v2, 0x1

    .line 830
    sub-int/2addr v1, v2

    .line 831
    if-ne v14, v1, :cond_12

    .line 833
    sub-int v5, v25, v12

    .line 835
    int-to-float v2, v5

    .line 836
    const/4 v3, 0x0

    .line 837
    iget-boolean v1, v10, Lnh0;->c:Z

    .line 839
    if-eqz v1, :cond_11

    .line 841
    const/4 v1, 0x1

    .line 842
    goto :goto_c

    .line 843
    :cond_11
    const/4 v1, 0x2

    .line 844
    :goto_c
    invoke-virtual {v0, v1}, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e(I)I

    .line 847
    move-result v1

    .line 848
    invoke-virtual {v0, v1}, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->g(I)Landroid/graphics/Paint;

    .line 851
    move-result-object v21

    .line 852
    move-object/from16 v1, p1

    .line 854
    move-object/from16 v4, v24

    .line 856
    move-object/from16 v35, v4

    .line 858
    move-object/from16 v34, v26

    .line 860
    move-object/from16 v24, v32

    .line 862
    move/from16 v4, v27

    .line 864
    move/from16 v36, v5

    .line 866
    move-object/from16 v37, v33

    .line 868
    move/from16 v5, v22

    .line 870
    move-object v7, v6

    .line 871
    move-object/from16 v6, v21

    .line 873
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    .line 878
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 881
    move-object/from16 v6, v35

    .line 883
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    move/from16 v2, v36

    .line 888
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 891
    move-object/from16 v5, v34

    .line 893
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 902
    move-result-object v1

    .line 903
    const/4 v2, 0x0

    .line 904
    new-array v3, v2, [Ljava/lang/Object;

    .line 906
    move-object/from16 v4, v37

    .line 908
    invoke-static {v4, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 911
    goto :goto_d

    .line 912
    :cond_12
    move-object v7, v6

    .line 913
    move-object/from16 v6, v24

    .line 915
    move-object/from16 v5, v26

    .line 917
    move-object/from16 v24, v32

    .line 919
    move-object/from16 v4, v33

    .line 921
    :goto_d
    sub-int v1, v23, v12

    .line 923
    int-to-float v2, v1

    .line 924
    sub-int v1, v25, v12

    .line 926
    int-to-float v1, v1

    .line 927
    iget-boolean v3, v10, Lnh0;->c:Z

    .line 929
    if-eqz v3, :cond_13

    .line 931
    const/4 v3, 0x1

    .line 932
    goto :goto_e

    .line 933
    :cond_13
    const/4 v3, 0x2

    .line 934
    :goto_e
    invoke-virtual {v0, v3}, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e(I)I

    .line 937
    move-result v3

    .line 938
    invoke-virtual {v0, v3}, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->g(I)Landroid/graphics/Paint;

    .line 941
    move-result-object v26

    .line 942
    move/from16 v29, v1

    .line 944
    move-object/from16 v1, p1

    .line 946
    const/4 v3, 0x0

    .line 947
    move-object/from16 v38, v4

    .line 949
    move/from16 v4, v29

    .line 951
    move-object/from16 v39, v5

    .line 953
    move/from16 v5, v22

    .line 955
    move/from16 v21, v8

    .line 957
    move-object v8, v6

    .line 958
    move-object/from16 v6, v26

    .line 960
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 963
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 965
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 968
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    sub-int v8, v23, v12

    .line 973
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 976
    move-object/from16 v2, v39

    .line 978
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    sub-int v2, v25, v12

    .line 983
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 989
    move-result-object v1

    .line 990
    const/4 v2, 0x0

    .line 991
    new-array v3, v2, [Ljava/lang/Object;

    .line 993
    move-object/from16 v12, v38

    .line 995
    invoke-static {v12, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 998
    if-nez v14, :cond_17

    .line 1000
    invoke-static {}, Lib;->n()Z

    .line 1003
    move-result v1

    .line 1004
    if-eqz v1, :cond_14

    .line 1006
    iget-boolean v1, v10, Lnh0;->g:Z

    .line 1008
    if-nez v1, :cond_16

    .line 1010
    :cond_14
    const/4 v2, 0x0

    .line 1011
    const/4 v3, 0x0

    .line 1012
    int-to-float v4, v8

    .line 1013
    iget-boolean v1, v10, Lnh0;->c:Z

    .line 1015
    if-eqz v1, :cond_15

    .line 1017
    const/4 v1, 0x1

    .line 1018
    goto :goto_10

    .line 1019
    :cond_15
    const/4 v1, 0x2

    .line 1020
    :goto_10
    invoke-virtual {v0, v1}, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->e(I)I

    .line 1023
    move-result v1

    .line 1024
    invoke-virtual {v0, v1}, Lcom/autonavi/autofloat/views/HorizionalLaneBarViewAfv;->g(I)Landroid/graphics/Paint;

    .line 1027
    move-result-object v6

    .line 1028
    move-object/from16 v1, p1

    .line 1030
    move/from16 v5, v22

    .line 1032
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1035
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1037
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1040
    const-string v2, "   left: 0,right:"

    .line 1042
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1048
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1051
    move-result-object v1

    .line 1052
    const/4 v2, 0x0

    .line 1053
    new-array v3, v2, [Ljava/lang/Object;

    .line 1055
    invoke-static {v12, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1058
    goto :goto_11

    .line 1059
    :cond_17
    const/4 v2, 0x0

    .line 1060
    :goto_11
    const/4 v1, 0x3

    .line 1061
    new-array v3, v1, [Ljava/lang/Object;

    .line 1063
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1066
    move-result-object v4

    .line 1067
    aput-object v4, v3, v2

    .line 1069
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1072
    move-result-object v4

    .line 1073
    const/4 v5, 0x1

    .line 1074
    aput-object v4, v3, v5

    .line 1076
    iget-boolean v4, v10, Lnh0;->c:Z

    .line 1078
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1081
    move-result-object v4

    .line 1082
    const/4 v6, 0x2

    .line 1083
    aput-object v4, v3, v6

    .line 1085
    invoke-static {v12, v7, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1088
    int-to-float v3, v15

    .line 1089
    add-float v3, v3, v20

    .line 1091
    float-to-int v3, v3

    .line 1092
    :goto_12
    add-int/lit8 v4, v14, -0x1

    .line 1094
    move-object/from16 v7, p1

    .line 1096
    move v2, v4

    .line 1097
    move-object v5, v12

    .line 1098
    move-object v6, v13

    .line 1099
    move/from16 v8, v21

    .line 1101
    move/from16 v13, v22

    .line 1103
    move-object/from16 v4, v24

    .line 1105
    move/from16 v15, v27

    .line 1107
    move/from16 v10, v28

    .line 1109
    move/from16 v14, v30

    .line 1111
    const/4 v12, 0x2

    .line 1112
    goto/16 :goto_3

    .line 1114
    :cond_18
    return-void
.end method
