.class public Lob$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lob;->l(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/widget/jni/LaneInfo;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lob$b;->a:Lcom/autonavi/amapauto/widget/jni/LaneInfo;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lob$b;->a:Lcom/autonavi/amapauto/widget/jni/LaneInfo;

    .line 5
    iget-object v2, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->backLane:[I

    .line 7
    iget-object v3, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->frontLane:[I

    .line 9
    iget-object v1, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->extFlags:[I

    .line 11
    const/4 v4, 0x3

    .line 12
    new-array v5, v4, [Ljava/lang/Object;

    .line 14
    const/4 v6, 0x0

    .line 15
    aput-object v2, v5, v6

    .line 17
    const/4 v7, 0x1

    .line 18
    aput-object v3, v5, v7

    .line 20
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 23
    move-result-object v8

    .line 24
    invoke-virtual {v8}, Lhm0;->h()Z

    .line 27
    move-result v8

    .line 28
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object v8

    .line 32
    const/4 v9, 0x2

    .line 33
    aput-object v8, v5, v9

    .line 35
    const-string v8, "AutoWidgetUtils"

    .line 37
    const-string v10, "onLaneInfoShow(). laneBackInfo={?}, laneSelectInfo={?}. isNaviOnBg={?}"

    .line 39
    invoke-static {v8, v10, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sput-object v2, Lco;->g:[I

    .line 44
    sput-object v3, Lco;->h:[I

    .line 46
    sput-object v1, Lco;->i:[I

    .line 48
    invoke-static {}, Lib;->n()Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 54
    iget-object v1, v0, Lob$b;->a:Lcom/autonavi/amapauto/widget/jni/LaneInfo;

    .line 56
    iget-object v1, v1, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->recommend:[Z

    .line 58
    sput-object v1, Lco;->j:[Z

    .line 60
    :cond_0
    sget-boolean v1, Lzl0;->a:Z

    .line 62
    const/16 v5, 0x26c

    .line 64
    if-eqz v1, :cond_7

    .line 66
    invoke-static {}, Lob;->c()Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_7

    .line 72
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Lhm0;->h()Z

    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_7

    .line 82
    invoke-static {}, Lnb;->j()Lnb;

    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lnb;->r()Z

    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_2

    .line 92
    invoke-static {}, Lnb;->j()Lnb;

    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lnb;->p()Z

    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_1

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Lco;->e()V

    .line 106
    new-array v1, v9, [Ljava/lang/Object;

    .line 108
    invoke-static {}, Lnb;->j()Lnb;

    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lnb;->r()Z

    .line 115
    move-result v2

    .line 116
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 119
    move-result-object v2

    .line 120
    aput-object v2, v1, v6

    .line 122
    invoke-static {}, Lnb;->j()Lnb;

    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lnb;->p()Z

    .line 129
    move-result v2

    .line 130
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    move-result-object v2

    .line 134
    aput-object v2, v1, v7

    .line 136
    const-string v2, "onLaneInfoShow(). isInNavi={?}, isInCruise={?}"

    .line 138
    invoke-static {v8, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    goto/16 :goto_1

    .line 143
    :cond_2
    :goto_0
    invoke-static {v5}, Lib;->u(I)Z

    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_3

    .line 149
    return-void

    .line 150
    :cond_3
    sget-object v1, Lco;->h:[I

    .line 152
    if-eqz v1, :cond_6

    .line 154
    sget-object v1, Lco;->g:[I

    .line 156
    if-eqz v1, :cond_6

    .line 158
    invoke-static {}, Lrv;->H()Lrv;

    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 169
    move-result-object v1

    .line 170
    sget v2, Lq80;->j:I

    .line 172
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 175
    move-result v1

    .line 176
    float-to-int v1, v1

    .line 177
    invoke-static {}, Lrv;->H()Lrv;

    .line 180
    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 188
    move-result-object v2

    .line 189
    sget v3, Lq80;->n:I

    .line 191
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 194
    move-result v2

    .line 195
    float-to-int v2, v2

    .line 196
    new-instance v3, Lhh;

    .line 198
    invoke-static {}, Lrv;->H()Lrv;

    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v5}, Lrv;->z()Landroid/content/Context;

    .line 205
    move-result-object v5

    .line 206
    invoke-direct {v3, v5, v1, v2}, Lhh;-><init>(Landroid/content/Context;II)V

    .line 209
    sget-object v11, Lco;->g:[I

    .line 211
    sget-object v12, Lco;->h:[I

    .line 213
    sget-object v13, Lco;->i:[I

    .line 215
    sget-object v14, Lco;->j:[Z

    .line 217
    const/16 v15, 0x1f4

    .line 219
    const/16 v16, 0x168

    .line 221
    invoke-static {}, Lnb;->j()Lnb;

    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lnb;->r()Z

    .line 228
    move-result v17

    .line 229
    move-object v10, v3

    .line 230
    invoke-virtual/range {v10 .. v17}, Lhh;->t([I[I[I[ZIIZ)Z

    .line 233
    move-result v1

    .line 234
    const-string v2, "onLaneInfoShow().needShowFlag:{?} naviRoadLineBitmap={?} "

    .line 236
    if-eqz v1, :cond_5

    .line 238
    invoke-virtual {v3}, Lge;->getDriveWaysWidth()I

    .line 241
    move-result v5

    .line 242
    invoke-virtual {v3}, Lge;->getDriveWaysHeight()I

    .line 245
    move-result v10

    .line 246
    invoke-virtual {v3, v5, v10}, Landroid/view/View;->measure(II)V

    .line 249
    invoke-virtual {v3, v6, v6, v5, v10}, Landroid/view/View;->layout(IIII)V

    .line 252
    invoke-virtual {v3, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 255
    sget-object v5, Lco;->l:Landroid/graphics/Bitmap;

    .line 257
    sput-object v5, Lco;->k:Landroid/graphics/Bitmap;

    .line 259
    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 262
    move-result-object v3

    .line 263
    sput-object v3, Lco;->l:Landroid/graphics/Bitmap;

    .line 265
    invoke-static {}, Lib;->n()Z

    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_4

    .line 271
    sget-object v3, Lco;->l:Landroid/graphics/Bitmap;

    .line 273
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 276
    move-result v3

    .line 277
    sget-object v5, Lco;->l:Landroid/graphics/Bitmap;

    .line 279
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 282
    move-result v5

    .line 283
    sget-object v10, Lco;->l:Landroid/graphics/Bitmap;

    .line 285
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 288
    move-result-object v10

    .line 289
    invoke-static {v3, v5, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 292
    move-result-object v3

    .line 293
    new-instance v5, Landroid/graphics/Canvas;

    .line 295
    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 298
    invoke-static {}, Lrv;->H()Lrv;

    .line 301
    move-result-object v10

    .line 302
    invoke-virtual {v10}, Lrv;->z()Landroid/content/Context;

    .line 305
    move-result-object v10

    .line 306
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 309
    move-result-object v10

    .line 310
    sget v11, Lq80;->r:I

    .line 312
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 315
    move-result v10

    .line 316
    const/16 v11, 0x8

    .line 318
    new-array v11, v11, [F

    .line 320
    int-to-float v10, v10

    .line 321
    aput v10, v11, v6

    .line 323
    aput v10, v11, v7

    .line 325
    aput v10, v11, v9

    .line 327
    aput v10, v11, v4

    .line 329
    const/4 v4, 0x4

    .line 330
    aput v10, v11, v4

    .line 332
    const/4 v4, 0x5

    .line 333
    aput v10, v11, v4

    .line 335
    const/4 v4, 0x6

    .line 336
    aput v10, v11, v4

    .line 338
    const/4 v4, 0x7

    .line 339
    aput v10, v11, v4

    .line 341
    new-instance v4, Landroid/graphics/Path;

    .line 343
    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 346
    new-instance v10, Landroid/graphics/RectF;

    .line 348
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 351
    move-result v12

    .line 352
    int-to-float v12, v12

    .line 353
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 356
    move-result v13

    .line 357
    int-to-float v13, v13

    .line 358
    const/4 v14, 0x0

    .line 359
    invoke-direct {v10, v14, v14, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 362
    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 364
    invoke-virtual {v4, v10, v11, v12}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 367
    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 370
    sget-object v4, Lco;->l:Landroid/graphics/Bitmap;

    .line 372
    const/4 v10, 0x0

    .line 373
    invoke-virtual {v5, v4, v14, v14, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 376
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 379
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 382
    sput-object v3, Lco;->l:Landroid/graphics/Bitmap;

    .line 384
    :cond_4
    new-array v3, v9, [Ljava/lang/Object;

    .line 386
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 389
    move-result-object v1

    .line 390
    aput-object v1, v3, v6

    .line 392
    sget-object v1, Lco;->l:Landroid/graphics/Bitmap;

    .line 394
    aput-object v1, v3, v7

    .line 396
    invoke-static {v8, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    goto :goto_1

    .line 400
    :cond_5
    invoke-static {}, Lco;->e()V

    .line 403
    new-array v3, v9, [Ljava/lang/Object;

    .line 405
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 408
    move-result-object v1

    .line 409
    aput-object v1, v3, v6

    .line 411
    sget-object v1, Lco;->l:Landroid/graphics/Bitmap;

    .line 413
    aput-object v1, v3, v7

    .line 415
    invoke-static {v8, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    goto :goto_1

    .line 419
    :cond_6
    invoke-static {}, Lco;->e()V

    .line 422
    new-array v1, v9, [Ljava/lang/Object;

    .line 424
    aput-object v2, v1, v6

    .line 426
    aput-object v3, v1, v7

    .line 428
    const-string v2, "onLaneInfoShow(). invalid road line info. laneBackInfo={?}, laneSelectInfo={?}"

    .line 430
    invoke-static {v8, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    goto :goto_1

    .line 434
    :cond_7
    invoke-static {v5}, Lib;->u(I)Z

    .line 437
    move-result v1

    .line 438
    if-nez v1, :cond_8

    .line 440
    invoke-static {}, Lco;->e()V

    .line 443
    :cond_8
    new-array v1, v7, [Ljava/lang/Object;

    .line 445
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 448
    move-result-object v2

    .line 449
    invoke-virtual {v2}, Lhm0;->h()Z

    .line 452
    move-result v2

    .line 453
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 456
    move-result-object v2

    .line 457
    aput-object v2, v1, v6

    .line 459
    const-string v2, "onLaneInfoShow(). isNaviOnBg={?}"

    .line 461
    invoke-static {v8, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    :goto_1
    return-void
.end method
