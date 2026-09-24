.class Lcom/autonavi/floatwindow/FloatViewUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/floatwindow/FloatViewUtils;->refreshLightsGroup(Landroid/view/View;Landroid/content/Context;Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$cameraLightInfoWrapper:Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;

.field final synthetic val$cameraType:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;ILandroid/view/View;Landroid/content/Context;Lcom/google/android/flexbox/FlexboxLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$cameraLightInfoWrapper:Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;

    .line 3
    iput p2, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$cameraType:I

    .line 5
    iput-object p3, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$root:Landroid/view/View;

    .line 7
    iput-object p4, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$context:Landroid/content/Context;

    .line 9
    iput-object p5, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$cameraLightInfoWrapper:Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;

    .line 8
    iget-object v1, v1, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;->a:Ljava/util/List;

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_3

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;

    .line 26
    iget v3, v2, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;->e:I

    .line 28
    if-nez v3, :cond_0

    .line 30
    const/4 v3, -0x1

    .line 31
    iput v3, v2, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;->d:I

    .line 33
    :cond_0
    new-instance v3, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;

    .line 35
    iget v4, v2, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;->d:I

    .line 37
    if-lez v4, :cond_1

    .line 39
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    if-nez v4, :cond_2

    .line 46
    const-string v4, "\u901a\u884c"

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const-string v4, ""

    .line 51
    :goto_1
    iget v5, v2, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;->c:I

    .line 53
    iget v2, v2, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;->b:I

    .line 55
    invoke-direct {v3, v4, v5, v2}, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;-><init>(Ljava/lang/String;II)V

    .line 58
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 v1, 0x2

    .line 63
    new-array v2, v1, [Ljava/lang/Object;

    .line 65
    const/4 v3, 0x0

    .line 66
    aput-object v0, v2, v3

    .line 68
    iget v4, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$cameraType:I

    .line 70
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v4

    .line 74
    const/4 v5, 0x1

    .line 75
    aput-object v4, v2, v5

    .line 77
    const-string v4, "FloatViewUtils"

    .line 79
    const-string v6, "refreshLightsGroup electicCameraInfoList:{?},cameraType:{?}"

    .line 81
    invoke-static {v4, v6, v2}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v2, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$root:Landroid/view/View;

    .line 86
    sget v4, Lcom/autonavi/floatwindow/R$id;->cl_speed_content_container:I

    .line 88
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lig;

    .line 94
    new-instance v4, Lkg;

    .line 96
    invoke-direct {v4}, Lkg;-><init>()V

    .line 99
    invoke-virtual {v4, v2}, Lkg;->f(Lig;)V

    .line 102
    iget v6, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$cameraType:I

    .line 104
    if-gtz v6, :cond_4

    .line 106
    sget v7, Lcom/autonavi/floatwindow/R$id;->flexbox_layout:I

    .line 108
    const/4 v8, 0x6

    .line 109
    sget v9, Lcom/autonavi/floatwindow/R$id;->stv_street_name:I

    .line 111
    const/4 v10, 0x6

    .line 112
    const/4 v11, 0x0

    .line 113
    move-object v6, v4

    .line 114
    invoke-virtual/range {v6 .. v11}, Lkg;->h(IIIII)V

    .line 117
    goto/16 :goto_4

    .line 119
    :cond_4
    const/4 v7, 0x4

    .line 120
    if-eq v6, v7, :cond_7

    .line 122
    const/4 v7, 0x5

    .line 123
    if-eq v6, v7, :cond_6

    .line 125
    const/4 v7, 0x6

    .line 126
    if-eq v6, v7, :cond_5

    .line 128
    const/4 v7, 0x7

    .line 129
    if-eq v6, v7, :cond_6

    .line 131
    const/4 v11, 0x0

    .line 132
    goto :goto_3

    .line 133
    :cond_5
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$context:Landroid/content/Context;

    .line 135
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 138
    move-result-object v6

    .line 139
    sget v7, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_10:I

    .line 141
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 144
    move-result v6

    .line 145
    iget-object v7, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$root:Landroid/view/View;

    .line 147
    sget v8, Lcom/autonavi/floatwindow/R$id;->cl_one:I

    .line 149
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Lig;

    .line 155
    iget-object v8, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$root:Landroid/view/View;

    .line 157
    sget v9, Lcom/autonavi/floatwindow/R$id;->ce_one_first:I

    .line 159
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v8

    .line 163
    invoke-static {v7, v8, v5}, Lcom/autonavi/floatwindow/FloatViewUtils;->access$000(Lig;Landroid/view/View;Z)V

    .line 166
    goto :goto_2

    .line 167
    :cond_6
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$context:Landroid/content/Context;

    .line 169
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 172
    move-result-object v6

    .line 173
    sget v7, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_10:I

    .line 175
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 178
    move-result v6

    .line 179
    iget-object v7, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$root:Landroid/view/View;

    .line 181
    sget v8, Lcom/autonavi/floatwindow/R$id;->cl_two:I

    .line 183
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    move-result-object v7

    .line 187
    check-cast v7, Lig;

    .line 189
    iget-object v8, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$root:Landroid/view/View;

    .line 191
    sget v9, Lcom/autonavi/floatwindow/R$id;->ce_two_first:I

    .line 193
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    move-result-object v8

    .line 197
    invoke-static {v7, v8, v5}, Lcom/autonavi/floatwindow/FloatViewUtils;->access$000(Lig;Landroid/view/View;Z)V

    .line 200
    goto :goto_2

    .line 201
    :cond_7
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$context:Landroid/content/Context;

    .line 203
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 206
    move-result-object v6

    .line 207
    sget v7, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_10:I

    .line 209
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 212
    move-result v6

    .line 213
    iget-object v7, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$root:Landroid/view/View;

    .line 215
    sget v8, Lcom/autonavi/floatwindow/R$id;->cl_three:I

    .line 217
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 220
    move-result-object v7

    .line 221
    check-cast v7, Lig;

    .line 223
    iget-object v8, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$root:Landroid/view/View;

    .line 225
    sget v9, Lcom/autonavi/floatwindow/R$id;->ce_three_first:I

    .line 227
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    move-result-object v8

    .line 231
    invoke-static {v7, v8, v5}, Lcom/autonavi/floatwindow/FloatViewUtils;->access$000(Lig;Landroid/view/View;Z)V

    .line 234
    :goto_2
    move v11, v6

    .line 235
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 238
    move-result v6

    .line 239
    if-le v6, v1, :cond_8

    .line 241
    sget v7, Lcom/autonavi/floatwindow/R$id;->flexbox_layout:I

    .line 243
    const/4 v8, 0x6

    .line 244
    sget v9, Lcom/autonavi/floatwindow/R$id;->cl_electronic_eye:I

    .line 246
    const/4 v10, 0x6

    .line 247
    const/4 v11, 0x0

    .line 248
    move-object v6, v4

    .line 249
    invoke-virtual/range {v6 .. v11}, Lkg;->h(IIIII)V

    .line 252
    goto :goto_4

    .line 253
    :cond_8
    if-nez v11, :cond_9

    .line 255
    sget v7, Lcom/autonavi/floatwindow/R$id;->flexbox_layout:I

    .line 257
    const/4 v8, 0x6

    .line 258
    const/4 v9, 0x0

    .line 259
    const/4 v10, 0x6

    .line 260
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$context:Landroid/content/Context;

    .line 262
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 265
    move-result-object v6

    .line 266
    sget v11, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_80:I

    .line 268
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 271
    move-result v11

    .line 272
    move-object v6, v4

    .line 273
    invoke-virtual/range {v6 .. v11}, Lkg;->h(IIIII)V

    .line 276
    goto :goto_4

    .line 277
    :cond_9
    sget v7, Lcom/autonavi/floatwindow/R$id;->flexbox_layout:I

    .line 279
    const/4 v8, 0x6

    .line 280
    sget v9, Lcom/autonavi/floatwindow/R$id;->cl_electronic_eye:I

    .line 282
    const/4 v10, 0x6

    .line 283
    move-object v6, v4

    .line 284
    invoke-virtual/range {v6 .. v11}, Lkg;->h(IIIII)V

    .line 287
    :goto_4
    invoke-virtual {v4, v2}, Lkg;->c(Lig;)V

    .line 290
    iget v4, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$cameraType:I

    .line 292
    if-gtz v4, :cond_d

    .line 294
    iget-object v4, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$root:Landroid/view/View;

    .line 296
    invoke-static {}, Lcom/autonavi/floatwindow/FloatViewUtils;->getRoadNamePlaceId()I

    .line 299
    move-result v6

    .line 300
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 303
    move-result-object v4

    .line 304
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v4, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$root:Landroid/view/View;

    .line 309
    sget v6, Lcom/autonavi/floatwindow/R$id;->stv_street_name:I

    .line 311
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 314
    move-result-object v4

    .line 315
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 318
    move-result v4

    .line 319
    const/16 v6, 0x8

    .line 321
    if-ne v4, v6, :cond_b

    .line 323
    iget-object v4, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$context:Landroid/content/Context;

    .line 325
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 327
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 330
    move-result v7

    .line 331
    if-le v7, v1, :cond_a

    .line 333
    const/4 v7, 0x1

    .line 334
    goto :goto_5

    .line 335
    :cond_a
    const/4 v7, 0x0

    .line 336
    :goto_5
    invoke-static {v4, v2, v6, v3, v7}, Lcom/autonavi/floatwindow/FloatViewUtils;->access$100(Landroid/content/Context;Lig;Landroid/view/View;ZZ)V

    .line 339
    goto :goto_8

    .line 340
    :cond_b
    iget-object v4, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$context:Landroid/content/Context;

    .line 342
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 344
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 347
    move-result v7

    .line 348
    if-le v7, v1, :cond_c

    .line 350
    const/4 v7, 0x1

    .line 351
    goto :goto_6

    .line 352
    :cond_c
    const/4 v7, 0x0

    .line 353
    :goto_6
    invoke-static {v4, v2, v6, v5, v7}, Lcom/autonavi/floatwindow/FloatViewUtils;->access$100(Landroid/content/Context;Lig;Landroid/view/View;ZZ)V

    .line 356
    goto :goto_8

    .line 357
    :cond_d
    iget-object v4, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$context:Landroid/content/Context;

    .line 359
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 361
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 364
    move-result v7

    .line 365
    if-le v7, v1, :cond_e

    .line 367
    const/4 v7, 0x1

    .line 368
    goto :goto_7

    .line 369
    :cond_e
    const/4 v7, 0x0

    .line 370
    :goto_7
    invoke-static {v4, v2, v6, v5, v7}, Lcom/autonavi/floatwindow/FloatViewUtils;->access$100(Landroid/content/Context;Lig;Landroid/view/View;ZZ)V

    .line 373
    :goto_8
    iget-object v2, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 375
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 378
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 381
    move-result-object v0

    .line 382
    :cond_f
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    move-result v2

    .line 386
    if-eqz v2, :cond_12

    .line 388
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    move-result-object v2

    .line 392
    check-cast v2, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;

    .line 394
    new-instance v4, Landroid/widget/ImageView;

    .line 396
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$context:Landroid/content/Context;

    .line 398
    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 401
    sget-object v6, Lcom/autonavi/floatwindow/FloatViewUtils;->TYPE_BGS:[I

    .line 403
    iget v7, v2, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;->type:I

    .line 405
    aget v6, v6, v7

    .line 407
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 410
    sget-object v6, Lcom/autonavi/floatwindow/FloatViewUtils;->TYPE_DIRECTIONS:[I

    .line 412
    iget v7, v2, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;->direction:I

    .line 414
    aget v6, v6, v7

    .line 416
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 421
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 424
    new-instance v6, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 426
    const/4 v7, -0x2

    .line 427
    invoke-direct {v6, v7, v7}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    .line 430
    iget-object v8, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$context:Landroid/content/Context;

    .line 432
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 435
    move-result-object v8

    .line 436
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 439
    move-result-object v8

    .line 440
    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    .line 442
    if-ne v8, v5, :cond_10

    .line 444
    const/4 v8, 0x1

    .line 445
    goto :goto_a

    .line 446
    :cond_10
    const/4 v8, 0x0

    .line 447
    :goto_a
    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 450
    iget-object v9, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 452
    invoke-virtual {v9, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 455
    iget-object v4, v2, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;->desc:Ljava/lang/String;

    .line 457
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 460
    move-result v4

    .line 461
    if-nez v4, :cond_f

    .line 463
    new-instance v4, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 465
    invoke-direct {v4, v7, v7}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    .line 468
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 471
    invoke-virtual {v4, v5}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->r(I)V

    .line 474
    new-instance v6, Landroid/widget/TextView;

    .line 476
    iget-object v7, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$context:Landroid/content/Context;

    .line 478
    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 481
    iget-object v7, v2, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;->desc:Ljava/lang/String;

    .line 483
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    sget-object v7, Lcom/autonavi/floatwindow/FloatViewUtils;->TEXT_TYPE_COLORS:[I

    .line 488
    iget v2, v2, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;->type:I

    .line 490
    aget v2, v7, v2

    .line 492
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 495
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 497
    iget-object v7, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$context:Landroid/content/Context;

    .line 499
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 502
    move-result-object v7

    .line 503
    if-eqz v8, :cond_11

    .line 505
    sget v8, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_21:I

    .line 507
    goto :goto_b

    .line 508
    :cond_11
    sget v8, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_27:I

    .line 510
    :goto_b
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 513
    move-result v7

    .line 514
    int-to-float v7, v7

    .line 515
    div-float/2addr v7, v2

    .line 516
    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 519
    iget-object v2, p0, Lcom/autonavi/floatwindow/FloatViewUtils$2;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 521
    invoke-virtual {v2, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    goto/16 :goto_9

    .line 526
    :cond_12
    return-void
.end method
