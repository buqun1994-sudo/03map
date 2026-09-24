.class Lcom/autonavi/floatwindow/FloatViewHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/floatwindow/FloatViewHelper;->refreshLightsGroup(Landroid/view/View;Landroid/content/Context;Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;I)V
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
    iput-object p1, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$cameraLightInfoWrapper:Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;

    .line 3
    iput p2, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$cameraType:I

    .line 5
    iput-object p3, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$root:Landroid/view/View;

    .line 7
    iput-object p4, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$context:Landroid/content/Context;

    .line 9
    iput-object p5, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

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
    iget-object v1, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$cameraLightInfoWrapper:Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;

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
    iget v3, v2, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;->d:I

    .line 35
    if-lez v3, :cond_1

    .line 37
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-nez v3, :cond_2

    .line 44
    const-string v3, "\u901a\u884c"

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const-string v3, ""

    .line 49
    :goto_1
    new-instance v4, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;

    .line 51
    iget v5, v2, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;->c:I

    .line 53
    iget v2, v2, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfo;->b:I

    .line 55
    invoke-direct {v4, v3, v5, v2}, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;-><init>(Ljava/lang/String;II)V

    .line 58
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    iget v4, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$cameraType:I

    .line 70
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v4

    .line 74
    const/4 v5, 0x1

    .line 75
    aput-object v4, v2, v5

    .line 77
    const-string v4, "FloatViewHelper"

    .line 79
    const-string v6, "refreshLightsGroup electicCameraInfoList:{?},cameraType:{?}"

    .line 81
    invoke-static {v4, v6, v2}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v2, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$root:Landroid/view/View;

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
    iget v6, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$cameraType:I

    .line 104
    if-gtz v6, :cond_4

    .line 106
    sget v7, Lcom/autonavi/floatwindow/R$id;->flexbox_layout:I

    .line 108
    const/4 v8, 0x6

    .line 109
    sget v9, Lcom/autonavi/floatwindow/R$id;->stv_street_name_place:I

    .line 111
    const/4 v10, 0x6

    .line 112
    const/4 v11, 0x0

    .line 113
    move-object v6, v4

    .line 114
    invoke-virtual/range {v6 .. v11}, Lkg;->h(IIIII)V

    .line 117
    goto/16 :goto_7

    .line 119
    :cond_4
    const/4 v7, 0x4

    .line 120
    const/4 v8, 0x7

    .line 121
    if-eq v6, v7, :cond_7

    .line 123
    const/4 v7, 0x5

    .line 124
    if-eq v6, v7, :cond_6

    .line 126
    const/4 v7, 0x6

    .line 127
    if-eq v6, v7, :cond_5

    .line 129
    if-eq v6, v8, :cond_6

    .line 131
    const/4 v11, 0x0

    .line 132
    goto :goto_3

    .line 133
    :cond_5
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$context:Landroid/content/Context;

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
    iget-object v7, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$root:Landroid/view/View;

    .line 147
    sget v9, Lcom/autonavi/floatwindow/R$id;->cl_one:I

    .line 149
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    move-result-object v7

    .line 153
    check-cast v7, Lig;

    .line 155
    iget-object v9, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$root:Landroid/view/View;

    .line 157
    sget v10, Lcom/autonavi/floatwindow/R$id;->ce_one_first:I

    .line 159
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object v9

    .line 163
    invoke-static {v7, v9, v5}, Lcom/autonavi/floatwindow/FloatViewHelper;->access$000(Lig;Landroid/view/View;Z)V

    .line 166
    goto :goto_2

    .line 167
    :cond_6
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$context:Landroid/content/Context;

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
    iget-object v7, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$root:Landroid/view/View;

    .line 181
    sget v9, Lcom/autonavi/floatwindow/R$id;->cl_two:I

    .line 183
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    move-result-object v7

    .line 187
    check-cast v7, Lig;

    .line 189
    iget-object v9, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$root:Landroid/view/View;

    .line 191
    sget v10, Lcom/autonavi/floatwindow/R$id;->ce_two_first:I

    .line 193
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    move-result-object v9

    .line 197
    invoke-static {v7, v9, v5}, Lcom/autonavi/floatwindow/FloatViewHelper;->access$000(Lig;Landroid/view/View;Z)V

    .line 200
    goto :goto_2

    .line 201
    :cond_7
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$context:Landroid/content/Context;

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
    iget-object v7, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$root:Landroid/view/View;

    .line 215
    sget v9, Lcom/autonavi/floatwindow/R$id;->cl_three:I

    .line 217
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 220
    move-result-object v7

    .line 221
    check-cast v7, Lig;

    .line 223
    iget-object v9, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$root:Landroid/view/View;

    .line 225
    sget v10, Lcom/autonavi/floatwindow/R$id;->ce_three_first:I

    .line 227
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 230
    move-result-object v9

    .line 231
    invoke-static {v7, v9, v5}, Lcom/autonavi/floatwindow/FloatViewHelper;->access$000(Lig;Landroid/view/View;Z)V

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
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 244
    move-result-object v6

    .line 245
    check-cast v6, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;

    .line 247
    iget-object v6, v6, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;->desc:Ljava/lang/String;

    .line 249
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 252
    move-result v6

    .line 253
    if-nez v6, :cond_8

    .line 255
    const/4 v6, 0x1

    .line 256
    goto :goto_4

    .line 257
    :cond_8
    const/4 v6, 0x0

    .line 258
    :goto_4
    sget v9, Lcom/autonavi/floatwindow/R$id;->cl_electronic_eye:I

    .line 260
    iget-object v7, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$context:Landroid/content/Context;

    .line 262
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 265
    move-result-object v7

    .line 266
    if-eqz v6, :cond_9

    .line 268
    sget v10, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_150:I

    .line 270
    goto :goto_5

    .line 271
    :cond_9
    sget v10, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_120:I

    .line 273
    :goto_5
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 276
    move-result v7

    .line 277
    invoke-virtual {v4, v9, v7}, Lkg;->i(II)V

    .line 280
    iget-object v7, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$context:Landroid/content/Context;

    .line 282
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 285
    move-result-object v7

    .line 286
    if-eqz v6, :cond_a

    .line 288
    sget v6, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_60:I

    .line 290
    goto :goto_6

    .line 291
    :cond_a
    sget v6, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_30:I

    .line 293
    :goto_6
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 296
    move-result v6

    .line 297
    invoke-virtual {v4, v9, v8, v6}, Lkg;->q(III)V

    .line 300
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 303
    move-result v6

    .line 304
    if-le v6, v1, :cond_b

    .line 306
    sget v7, Lcom/autonavi/floatwindow/R$id;->flexbox_layout:I

    .line 308
    const/4 v8, 0x6

    .line 309
    const/4 v10, 0x6

    .line 310
    move-object v6, v4

    .line 311
    invoke-virtual/range {v6 .. v11}, Lkg;->h(IIIII)V

    .line 314
    goto :goto_7

    .line 315
    :cond_b
    if-nez v11, :cond_c

    .line 317
    sget v7, Lcom/autonavi/floatwindow/R$id;->flexbox_layout:I

    .line 319
    const/4 v8, 0x6

    .line 320
    const/4 v9, 0x0

    .line 321
    const/4 v10, 0x6

    .line 322
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$context:Landroid/content/Context;

    .line 324
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 327
    move-result-object v6

    .line 328
    sget v11, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_80:I

    .line 330
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 333
    move-result v11

    .line 334
    move-object v6, v4

    .line 335
    invoke-virtual/range {v6 .. v11}, Lkg;->h(IIIII)V

    .line 338
    goto :goto_7

    .line 339
    :cond_c
    sget v7, Lcom/autonavi/floatwindow/R$id;->flexbox_layout:I

    .line 341
    const/4 v8, 0x6

    .line 342
    const/4 v10, 0x6

    .line 343
    move-object v6, v4

    .line 344
    invoke-virtual/range {v6 .. v11}, Lkg;->h(IIIII)V

    .line 347
    :goto_7
    invoke-virtual {v4, v2}, Lkg;->c(Lig;)V

    .line 350
    iget v4, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$cameraType:I

    .line 352
    if-lez v4, :cond_e

    .line 354
    iget-object v4, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$context:Landroid/content/Context;

    .line 356
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 358
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 361
    move-result v7

    .line 362
    if-le v7, v1, :cond_d

    .line 364
    const/4 v7, 0x1

    .line 365
    goto :goto_8

    .line 366
    :cond_d
    const/4 v7, 0x0

    .line 367
    :goto_8
    invoke-static {v4, v2, v6, v5, v7}, Lcom/autonavi/floatwindow/FloatViewHelper;->access$100(Landroid/content/Context;Lig;Landroid/view/View;ZZ)V

    .line 370
    goto :goto_b

    .line 371
    :cond_e
    iget-object v4, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$root:Landroid/view/View;

    .line 373
    invoke-static {}, Lcom/autonavi/floatwindow/FloatViewUtils;->getRoadNamePlaceId()I

    .line 376
    move-result v6

    .line 377
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 380
    move-result-object v4

    .line 381
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v4, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$root:Landroid/view/View;

    .line 386
    sget v6, Lcom/autonavi/floatwindow/R$id;->stv_street_name:I

    .line 388
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 391
    move-result-object v4

    .line 392
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 395
    move-result v4

    .line 396
    const/16 v6, 0x8

    .line 398
    if-ne v4, v6, :cond_10

    .line 400
    iget-object v4, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$context:Landroid/content/Context;

    .line 402
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 404
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 407
    move-result v7

    .line 408
    if-le v7, v1, :cond_f

    .line 410
    const/4 v7, 0x1

    .line 411
    goto :goto_9

    .line 412
    :cond_f
    const/4 v7, 0x0

    .line 413
    :goto_9
    invoke-static {v4, v2, v6, v3, v7}, Lcom/autonavi/floatwindow/FloatViewHelper;->access$100(Landroid/content/Context;Lig;Landroid/view/View;ZZ)V

    .line 416
    goto :goto_b

    .line 417
    :cond_10
    iget-object v4, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$context:Landroid/content/Context;

    .line 419
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 421
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 424
    move-result v7

    .line 425
    if-le v7, v1, :cond_11

    .line 427
    const/4 v7, 0x1

    .line 428
    goto :goto_a

    .line 429
    :cond_11
    const/4 v7, 0x0

    .line 430
    :goto_a
    invoke-static {v4, v2, v6, v5, v7}, Lcom/autonavi/floatwindow/FloatViewHelper;->access$100(Landroid/content/Context;Lig;Landroid/view/View;ZZ)V

    .line 433
    :goto_b
    iget-object v2, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 435
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 438
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 441
    move-result-object v0

    .line 442
    :cond_12
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 445
    move-result v2

    .line 446
    if-eqz v2, :cond_15

    .line 448
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 451
    move-result-object v2

    .line 452
    check-cast v2, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;

    .line 454
    new-instance v4, Landroid/widget/ImageView;

    .line 456
    iget-object v6, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$context:Landroid/content/Context;

    .line 458
    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 461
    sget-object v6, Lcom/autonavi/floatwindow/FloatViewUtils;->TYPE_BGS:[I

    .line 463
    iget v7, v2, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;->type:I

    .line 465
    aget v6, v6, v7

    .line 467
    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 470
    sget-object v6, Lcom/autonavi/floatwindow/FloatViewUtils;->TYPE_DIRECTIONS:[I

    .line 472
    iget v7, v2, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;->direction:I

    .line 474
    aget v6, v6, v7

    .line 476
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 479
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 481
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 484
    new-instance v6, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 486
    const/4 v7, -0x2

    .line 487
    invoke-direct {v6, v7, v7}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    .line 490
    iget-object v8, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$context:Landroid/content/Context;

    .line 492
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 495
    move-result-object v8

    .line 496
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 499
    move-result-object v8

    .line 500
    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    .line 502
    if-ne v8, v5, :cond_13

    .line 504
    const/4 v8, 0x1

    .line 505
    goto :goto_d

    .line 506
    :cond_13
    const/4 v8, 0x0

    .line 507
    :goto_d
    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 510
    iget-object v9, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 512
    invoke-virtual {v9, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 515
    iget-object v4, v2, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;->desc:Ljava/lang/String;

    .line 517
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 520
    move-result v4

    .line 521
    if-nez v4, :cond_12

    .line 523
    new-instance v4, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 525
    invoke-direct {v4, v7, v7}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    .line 528
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 531
    invoke-virtual {v4, v5}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;->r(I)V

    .line 534
    new-instance v6, Landroid/widget/TextView;

    .line 536
    iget-object v7, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$context:Landroid/content/Context;

    .line 538
    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 541
    iget-object v7, v2, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;->desc:Ljava/lang/String;

    .line 543
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    sget-object v7, Lcom/autonavi/floatwindow/FloatViewUtils;->TEXT_TYPE_COLORS:[I

    .line 548
    iget v2, v2, Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;->type:I

    .line 550
    aget v2, v7, v2

    .line 552
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 555
    iget-object v2, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$context:Landroid/content/Context;

    .line 557
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 560
    move-result-object v2

    .line 561
    if-eqz v8, :cond_14

    .line 563
    sget v7, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_21:I

    .line 565
    goto :goto_e

    .line 566
    :cond_14
    sget v7, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_27:I

    .line 568
    :goto_e
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 571
    move-result v2

    .line 572
    int-to-float v2, v2

    .line 573
    const/high16 v7, 0x3fc00000    # 1.5f

    .line 575
    div-float/2addr v2, v7

    .line 576
    invoke-virtual {v6, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 579
    iget-object v2, p0, Lcom/autonavi/floatwindow/FloatViewHelper$2;->val$flexboxLayout:Lcom/google/android/flexbox/FlexboxLayout;

    .line 581
    invoke-virtual {v2, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    goto/16 :goto_c

    .line 586
    :cond_15
    return-void
.end method
