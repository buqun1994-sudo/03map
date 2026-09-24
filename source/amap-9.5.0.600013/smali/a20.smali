.class public La20;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La20$c;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Z

.field public e:Landroid/hardware/display/DisplayManager;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Ljava/util/HashMap;

.field public i:Ljava/util/HashMap;

.field public j:I

.field public k:Landroid/hardware/display/DisplayManager$DisplayListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, La20;->d:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, La20;->j:I

    .line 5
    new-instance v0, La20$b;

    invoke-direct {v0, p0}, La20$b;-><init>(La20;)V

    iput-object v0, p0, La20;->k:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 6
    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, La20;->a:Landroid/content/Context;

    .line 7
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, La20;->c:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La20;->b:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La20;->f:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La20;->g:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La20;->h:Ljava/util/HashMap;

    .line 12
    iget-object v0, p0, La20;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, La20;->e:Landroid/hardware/display/DisplayManager;

    .line 13
    new-instance v0, La20$a;

    invoke-direct {v0, p0}, La20$a;-><init>(La20;)V

    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {p0}, La20;->q()V

    .line 15
    invoke-static {}, Lb20;->g()Lb20;

    move-result-object v0

    iget-object v1, p0, La20;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lb20;->f(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(La20$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, La20;-><init>()V

    return-void
.end method

.method public static synthetic a(La20;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 1
    iget-object p0, p0, La20;->e:Landroid/hardware/display/DisplayManager;

    .line 3
    return-object p0
.end method

.method public static synthetic b(La20;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, La20;->q()V

    .line 4
    return-void
.end method

.method public static synthetic c(La20;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, La20;->b:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic d(La20;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, La20;->f:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic e(La20;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La20;->j(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(La20;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, La20;->h:Ljava/util/HashMap;

    .line 3
    return-object p0
.end method

.method public static synthetic g(La20;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, La20;->c:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static l()La20;
    .locals 1

    .line 1
    invoke-static {}, La20$c;->a()La20;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public h(IIZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La20;->k(I)Lhl;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1, p2, p3}, Lhl;->b(IZ)V

    .line 10
    :cond_0
    return-void
.end method

.method public i(Lcom/autonavi/extscreen/dto/PresentationConfig;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v2, p0, La20;->d:Z

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "MultiScreenManager"

    .line 15
    const-string v4, "createExtScreen hasInitMultiScreen:{?}"

    .line 17
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    if-eqz p1, :cond_17

    .line 22
    iget-boolean v1, p0, La20;->d:Z

    .line 24
    if-eqz v1, :cond_0

    .line 26
    goto/16 :goto_8

    .line 28
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, p1}, Lse;->onInterruptMultiscreen(Lcom/autonavi/extscreen/dto/PresentationConfig;)I

    .line 35
    move-result v1

    .line 36
    new-array v4, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v5

    .line 42
    aput-object v5, v4, v3

    .line 44
    const-string v5, "createExtScreen interruptType = {?}"

    .line 46
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    const/4 v4, 0x2

    .line 50
    if-eqz v1, :cond_2

    .line 52
    if-ne v1, v4, :cond_1

    .line 54
    iget-object v0, p0, La20;->g:Ljava/util/List;

    .line 56
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    return-void

    .line 60
    :cond_2
    new-array v1, v0, [Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Lcom/autonavi/extscreen/dto/PresentationConfig;->toString()Ljava/lang/String;

    .line 65
    move-result-object v5

    .line 66
    aput-object v5, v1, v3

    .line 68
    const-string v5, "createExtScreen presentationConfig:{?}"

    .line 70
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    .line 75
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 78
    const-string v1, "createExtScreen renderType:{?}"

    .line 80
    new-array v5, v0, [Ljava/lang/Object;

    .line 82
    iget v6, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->renderType:I

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v6

    .line 88
    aput-object v6, v5, v3

    .line 90
    invoke-static {v2, v1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, La20;->t()Z

    .line 96
    move-result v1

    .line 97
    const-string v5, "needPresentationMock:{?}, virtualDisplayMockOffset:{?}"

    .line 99
    new-array v6, v4, [Ljava/lang/Object;

    .line 101
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 104
    move-result-object v7

    .line 105
    aput-object v7, v6, v3

    .line 107
    iget v7, p0, La20;->j:I

    .line 109
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v7

    .line 113
    aput-object v7, v6, v0

    .line 115
    invoke-static {v2, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget v5, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->renderType:I

    .line 120
    if-ne v5, v0, :cond_3

    .line 122
    const/4 v5, 0x1

    .line 123
    goto :goto_0

    .line 124
    :cond_3
    const/4 v5, 0x0

    .line 125
    :goto_0
    if-eqz v5, :cond_4

    .line 127
    if-eqz v1, :cond_4

    .line 129
    iget v6, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->deviceId:I

    .line 131
    iget v7, p0, La20;->j:I

    .line 133
    add-int/2addr v6, v7

    .line 134
    iput v6, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->deviceId:I

    .line 136
    :cond_4
    if-eqz v5, :cond_5

    .line 138
    if-nez v1, :cond_6

    .line 140
    :cond_5
    invoke-static {}, Lse;->c()Lse;

    .line 143
    move-result-object v6

    .line 144
    invoke-virtual {v6, p1}, Lse;->isCustomizeMultiScreen(Lcom/autonavi/extscreen/dto/PresentationConfig;)Z

    .line 147
    move-result v6

    .line 148
    if-eqz v6, :cond_6

    .line 150
    invoke-static {}, Lse;->c()Lse;

    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6, p1}, Lse;->createCustomizeMultiScreen(Lcom/autonavi/extscreen/dto/PresentationConfig;)Lhl;

    .line 157
    move-result-object v6

    .line 158
    goto/16 :goto_4

    .line 160
    :cond_6
    iget v6, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->renderType:I

    .line 162
    const/4 v7, 0x0

    .line 163
    if-eq v6, v0, :cond_c

    .line 165
    if-eq v6, v4, :cond_b

    .line 167
    const/4 v8, 0x5

    .line 168
    if-eq v6, v8, :cond_8

    .line 170
    const/4 v8, 0x6

    .line 171
    if-eq v6, v8, :cond_7

    .line 173
    goto/16 :goto_3

    .line 175
    :cond_7
    invoke-virtual {p0, p1}, La20;->p(Lcom/autonavi/extscreen/dto/PresentationConfig;)Lhl;

    .line 178
    move-result-object v6

    .line 179
    goto/16 :goto_4

    .line 181
    :cond_8
    sget-boolean v6, Lxj0;->a:Z

    .line 183
    if-eqz v6, :cond_9

    .line 185
    const-string v6, "MultiScreenManager.rzc"

    .line 187
    const-string v7, "VIDEO_STREAM initVideoScreen"

    .line 189
    new-array v8, v3, [Ljava/lang/Object;

    .line 191
    invoke-static {v6, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :cond_9
    sget-object v6, Lbk0;->c:Lbk0;

    .line 196
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 199
    move-result v6

    .line 200
    sget v7, Lvk0;->a:I

    .line 202
    if-ne v6, v7, :cond_a

    .line 204
    invoke-static {}, Lzg;->a()V

    .line 207
    :cond_a
    invoke-virtual {p0, p1}, La20;->s(Lcom/autonavi/extscreen/dto/PresentationConfig;)Lhl;

    .line 210
    move-result-object v6

    .line 211
    goto/16 :goto_4

    .line 213
    :cond_b
    invoke-virtual {p0}, La20;->o()Lhl;

    .line 216
    move-result-object v6

    .line 217
    goto/16 :goto_4

    .line 219
    :cond_c
    iget-object v6, p0, La20;->b:Ljava/util/List;

    .line 221
    if-eqz v6, :cond_11

    .line 223
    const-string v8, "createExtScreen SYSTEM_PRESENTATION, extDisplays.size={?}"

    .line 225
    new-array v9, v0, [Ljava/lang/Object;

    .line 227
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 230
    move-result v6

    .line 231
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    move-result-object v6

    .line 235
    aput-object v6, v9, v3

    .line 237
    invoke-static {v2, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    const/4 v6, 0x0

    .line 241
    :goto_1
    iget-object v8, p0, La20;->b:Ljava/util/List;

    .line 243
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 246
    move-result v8

    .line 247
    if-ge v6, v8, :cond_10

    .line 249
    iget-object v8, p0, La20;->b:Ljava/util/List;

    .line 251
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 254
    move-result-object v8

    .line 255
    check-cast v8, Landroid/view/Display;

    .line 257
    iget-object v9, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->displayName:Ljava/lang/String;

    .line 259
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 262
    move-result v9

    .line 263
    if-nez v9, :cond_d

    .line 265
    iget-object v9, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->displayName:Ljava/lang/String;

    .line 267
    invoke-virtual {v8}, Landroid/view/Display;->getName()Ljava/lang/String;

    .line 270
    move-result-object v10

    .line 271
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    move-result v9

    .line 275
    if-eqz v9, :cond_d

    .line 277
    invoke-virtual {p0, v6, p1}, La20;->r(ILcom/autonavi/extscreen/dto/PresentationConfig;)Lhl;

    .line 280
    move-result-object v6

    .line 281
    goto :goto_2

    .line 282
    :cond_d
    iget v9, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->deviceId:I

    .line 284
    add-int/lit16 v9, v9, -0x3e8

    .line 286
    if-eqz v8, :cond_e

    .line 288
    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    .line 291
    move-result v8

    .line 292
    if-ne v9, v8, :cond_e

    .line 294
    invoke-virtual {p0, v6, p1}, La20;->r(ILcom/autonavi/extscreen/dto/PresentationConfig;)Lhl;

    .line 297
    move-result-object v6

    .line 298
    goto :goto_2

    .line 299
    :cond_e
    iget v8, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->deviceId:I

    .line 301
    const/16 v9, 0x270f

    .line 303
    if-ne v8, v9, :cond_f

    .line 305
    invoke-virtual {p0, v6, p1}, La20;->r(ILcom/autonavi/extscreen/dto/PresentationConfig;)Lhl;

    .line 308
    move-result-object v6

    .line 309
    goto :goto_2

    .line 310
    :cond_f
    add-int/lit8 v6, v6, 0x1

    .line 312
    goto :goto_1

    .line 313
    :cond_10
    move-object v6, v7

    .line 314
    :goto_2
    if-nez v6, :cond_12

    .line 316
    iget-object v7, p0, La20;->f:Ljava/util/List;

    .line 318
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    goto :goto_4

    .line 322
    :cond_11
    :goto_3
    move-object v6, v7

    .line 323
    :cond_12
    :goto_4
    if-nez v6, :cond_13

    .line 325
    const-string p1, "createExtScreen extScreen is null."

    .line 327
    new-array v0, v3, [Ljava/lang/Object;

    .line 329
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    return-void

    .line 333
    :cond_13
    if-eqz v5, :cond_14

    .line 335
    if-eqz v1, :cond_14

    .line 337
    iget v1, p0, La20;->j:I

    .line 339
    goto :goto_5

    .line 340
    :cond_14
    const/4 v1, 0x0

    .line 341
    :goto_5
    invoke-virtual {p0, p1, v1}, La20;->n(Lcom/autonavi/extscreen/dto/PresentationConfig;I)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v6, v1}, Lhl;->r(Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 348
    iget v1, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->deviceId:I

    .line 350
    invoke-virtual {v6, v1}, Lhl;->o(I)V

    .line 353
    invoke-virtual {v6}, Lhl;->i()V

    .line 356
    iget-object v1, p0, La20;->c:Ljava/util/List;

    .line 358
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    iget v1, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->renderType:I

    .line 363
    if-eq v1, v4, :cond_15

    .line 365
    iget p1, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->createSurfaceWhenInit:I

    .line 367
    if-ne p1, v0, :cond_16

    .line 369
    invoke-virtual {p0, v6}, La20;->u(Lhl;)V

    .line 372
    goto :goto_6

    .line 373
    :cond_15
    invoke-static {v6}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->B(Lhl;)V

    .line 376
    :cond_16
    :goto_6
    const-string p1, "createExtScreen end id={?}"

    .line 378
    new-array v0, v0, [Ljava/lang/Object;

    .line 380
    invoke-virtual {v6}, Lhl;->d()I

    .line 383
    move-result v1

    .line 384
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 387
    move-result-object v1

    .line 388
    aput-object v1, v0, v3

    .line 390
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    goto :goto_7

    .line 394
    :catch_0
    move-exception p1

    .line 395
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    .line 400
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    const-string v1, "initExtScreen error:"

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    move-result-object v0

    .line 419
    new-array v1, v3, [Ljava/lang/Object;

    .line 421
    invoke-static {v2, v0, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 424
    :goto_7
    return-void

    .line 425
    :cond_17
    :goto_8
    const-string p1, "createExtScreen return"

    .line 427
    new-array v0, v3, [Ljava/lang/Object;

    .line 429
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    return-void
.end method

.method public final j(I)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, La20;->b:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, La20;->b:Ljava/util/List;

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/view/Display;

    .line 30
    if-nez v2, :cond_1

    .line 32
    const/4 v2, 0x0

    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    const-string v3, "MultiScreenManager"

    .line 37
    const-string v4, "displayt is null"

    .line 39
    invoke-static {v3, v4, v1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 46
    move-result v3

    .line 47
    if-ne p1, v3, :cond_0

    .line 49
    invoke-virtual {v2}, Landroid/view/Display;->getName()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_2
    return-object v1
.end method

.method public k(I)Lhl;
    .locals 3

    .line 1
    const/16 v0, 0x3e8

    .line 3
    if-ge p1, v0, :cond_0

    .line 5
    add-int/lit16 p1, p1, 0x3e8

    .line 7
    :cond_0
    iget-object v0, p0, La20;->c:Ljava/util/List;

    .line 9
    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_2

    .line 17
    iget-object v0, p0, La20;->c:Ljava/util/List;

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lhl;

    .line 35
    invoke-virtual {v1}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 38
    move-result-object v2

    .line 39
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 41
    if-ne v2, p1, :cond_1

    .line 43
    return-object v1

    .line 44
    :cond_2
    const/4 p1, 0x0

    .line 45
    return-object p1
.end method

.method public m()Ljava/util/HashMap;
    .locals 1

    .line 1
    iget-object v0, p0, La20;->i:Ljava/util/HashMap;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    iput-object v0, p0, La20;->i:Ljava/util/HashMap;

    .line 12
    :cond_0
    iget-object v0, p0, La20;->i:Ljava/util/HashMap;

    .line 14
    return-object v0
.end method

.method public final n(Lcom/autonavi/extscreen/dto/PresentationConfig;I)Lcom/autonavi/amapauto/jni/ViewInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/ViewInfo;-><init>()V

    .line 6
    iget-object v1, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->pluginName:Ljava/lang/String;

    .line 8
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->b:Ljava/lang/String;

    .line 10
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->a:Ljava/lang/String;

    .line 12
    iget v1, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->deviceId:I

    .line 14
    sub-int/2addr v1, p2

    .line 15
    iput v1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 17
    iget p2, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->width:I

    .line 19
    iput p2, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 21
    iget p2, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->height:I

    .line 23
    iput p2, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 25
    iget p2, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->dpi:I

    .line 27
    iput p2, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 29
    iget p2, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->renderType:I

    .line 31
    iput p2, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->i:I

    .line 33
    iget p2, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->eglAlphaSize:I

    .line 35
    iput p2, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->j:I

    .line 37
    iget p2, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->removeSurface:I

    .line 39
    iput p2, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->k:I

    .line 41
    iget p2, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->isMainScreenForegroundStopRender:I

    .line 43
    iput p2, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->m:I

    .line 45
    iget p2, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->createSurfaceWhenInit:I

    .line 47
    iput p2, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->n:I

    .line 49
    iget-boolean p2, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->isSeparateRender:Z

    .line 51
    iput p2, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->l:I

    .line 53
    iget-boolean p2, p1, Lcom/autonavi/extscreen/dto/PresentationConfig;->isSynMultiScreenNotify:Z

    .line 55
    iput-boolean p2, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 57
    invoke-virtual {p1}, Lcom/autonavi/extscreen/dto/PresentationConfig;->getViewModeInfoList()Ljava/util/List;

    .line 60
    move-result-object p1

    .line 61
    iput-object p1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->p:Ljava/util/List;

    .line 63
    return-object v0
.end method

.method public final o()Lhl;
    .locals 4

    .line 1
    const/16 v0, 0xbbe

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetIntValue(I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v3

    .line 15
    aput-object v3, v1, v2

    .line 17
    const-string v2, "MultiScreenManager"

    .line 19
    const-string v3, "initAidlWidgetScreen, widgetType={?}"

    .line 21
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    const/4 v1, 0x4

    .line 25
    if-ne v0, v1, :cond_0

    .line 27
    new-instance v0, Lq2;

    .line 29
    iget-object v1, p0, La20;->a:Landroid/content/Context;

    .line 31
    invoke-direct {v0, v1}, Lq2;-><init>(Landroid/content/Context;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v1, 0x3

    .line 36
    if-ne v0, v1, :cond_1

    .line 38
    new-instance v0, Lp2;

    .line 40
    iget-object v1, p0, La20;->a:Landroid/content/Context;

    .line 42
    invoke-direct {v0, v1}, Lp2;-><init>(Landroid/content/Context;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0
.end method

.method public final p(Lcom/autonavi/extscreen/dto/PresentationConfig;)Lhl;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/extscreen/dto/PresentationConfig;->toString()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, "MultiScreenManager"

    .line 13
    const-string v1, "initPresentationScreen(). config = {?}"

    .line 15
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance p1, Lqb;

    .line 20
    iget-object v0, p0, La20;->a:Landroid/content/Context;

    .line 22
    invoke-direct {p1, v0}, Lqb;-><init>(Landroid/content/Context;)V

    .line 25
    return-object p1
.end method

.method public final q()V
    .locals 9

    .line 1
    const-string v0, "MultiScreenManager"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, La20;->a:Landroid/content/Context;

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    move-result-object v2

    .line 10
    const-string v3, "display"

    .line 12
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 18
    new-array v3, v1, [Landroid/view/Display;

    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_1

    .line 23
    invoke-static {}, Lse;->c()Lse;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lse;->isRealDevices()Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 33
    move-object v3, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v3, "android.hardware.display.category.PRESENTATION"

    .line 37
    :goto_0
    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 40
    move-result-object v3

    .line 41
    :cond_1
    if-eqz v3, :cond_3

    .line 43
    const-string v2, "initDisplays: size = {?}"

    .line 45
    const/4 v5, 0x1

    .line 46
    new-array v6, v5, [Ljava/lang/Object;

    .line 48
    array-length v7, v3

    .line 49
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v7

    .line 53
    aput-object v7, v6, v1

    .line 55
    invoke-static {v0, v2, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    array-length v2, v3

    .line 59
    if-lez v2, :cond_3

    .line 61
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 64
    move-result-object v2

    .line 65
    iput-object v2, p0, La20;->b:Ljava/util/List;

    .line 67
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object v2

    .line 71
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_3

    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Landroid/view/Display;

    .line 83
    if-nez v3, :cond_2

    .line 85
    const-string v3, "displayt is null"

    .line 87
    new-array v6, v1, [Ljava/lang/Object;

    .line 89
    invoke-static {v0, v3, v4, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    const-string v6, "initDisplays: id={?},name={?}"

    .line 95
    const/4 v7, 0x2

    .line 96
    new-array v7, v7, [Ljava/lang/Object;

    .line 98
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    .line 101
    move-result v8

    .line 102
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v8

    .line 106
    aput-object v8, v7, v1

    .line 108
    invoke-virtual {v3}, Landroid/view/Display;->getName()Ljava/lang/String;

    .line 111
    move-result-object v3

    .line 112
    aput-object v3, v7, v5

    .line 114
    invoke-static {v0, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    const-string v3, "exception in initDisplays"

    .line 124
    new-array v1, v1, [Ljava/lang/Object;

    .line 126
    invoke-static {v0, v3, v2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 129
    :cond_3
    invoke-static {}, Lrv;->H()Lrv;

    .line 132
    move-result-object v0

    .line 133
    const-string v1, "VIRTUAL_DISPLAY_MOCK_OFFSET"

    .line 135
    const/4 v2, -0x1

    .line 136
    invoke-virtual {v0, v1, v2}, Lrv;->E(Ljava/lang/String;I)I

    .line 139
    move-result v0

    .line 140
    iput v0, p0, La20;->j:I

    .line 142
    return-void
.end method

.method public final r(ILcom/autonavi/extscreen/dto/PresentationConfig;)Lhl;
    .locals 5

    .line 1
    iget-object v0, p0, La20;->b:Ljava/util/List;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "MultiScreenManager"

    .line 7
    const/4 v4, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    if-lt p1, v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, La20;->b:Ljava/util/List;

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/Display;

    .line 25
    if-nez v0, :cond_1

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    const-string v0, " display is null at index = "

    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    new-array p2, v4, [Ljava/lang/Object;

    .line 46
    invoke-static {v3, p1, v2, p2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 49
    return-object v2

    .line 50
    :cond_1
    iget-object p1, p0, La20;->h:Ljava/util/HashMap;

    .line 52
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 55
    move-result v2

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-array p1, v1, [Ljava/lang/Object;

    .line 65
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 68
    move-result p2

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object p2

    .line 73
    aput-object p2, p1, v4

    .line 75
    const-string p2, "initPresentationScreen(). displayId = {?}"

    .line 77
    invoke-static {v3, p2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    new-instance p1, Lsf0;

    .line 82
    iget-object p2, p0, La20;->a:Landroid/content/Context;

    .line 84
    invoke-direct {p1, p2, v0}, Lsf0;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 87
    return-object p1

    .line 88
    :cond_2
    :goto_0
    const/4 p2, 0x2

    .line 89
    new-array p2, p2, [Ljava/lang/Object;

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object p1

    .line 95
    aput-object p1, p2, v4

    .line 97
    iget-object p1, p0, La20;->b:Ljava/util/List;

    .line 99
    if-nez p1, :cond_3

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 105
    move-result v4

    .line 106
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object p1

    .line 110
    aput-object p1, p2, v1

    .line 112
    const-string p1, "initPresentationScreen index:{?} extDisplays.size:{?}"

    .line 114
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    return-object v2
.end method

.method public final s(Lcom/autonavi/extscreen/dto/PresentationConfig;)Lhl;
    .locals 4

    .line 1
    sget v0, Lvk0;->a:I

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v3

    .line 11
    aput-object v3, v1, v2

    .line 13
    const-string v2, "MultiScreenManager"

    .line 15
    const-string v3, "initVideoScreen videoType:{?}"

    .line 17
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    sget-object v1, Lbk0;->c:Lbk0;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 25
    move-result v1

    .line 26
    if-ne v1, v0, :cond_0

    .line 28
    new-instance v0, Lsb0;

    .line 30
    iget-object v1, p0, La20;->a:Landroid/content/Context;

    .line 32
    invoke-direct {v0, v1, p1}, Lsb0;-><init>(Landroid/content/Context;Lcom/autonavi/extscreen/dto/PresentationConfig;)V

    .line 35
    return-object v0

    .line 36
    :cond_0
    sget-object v1, Lbk0;->d:Lbk0;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 41
    move-result v1

    .line 42
    if-ne v1, v0, :cond_1

    .line 44
    new-instance v0, Lyo;

    .line 46
    iget-object v1, p0, La20;->a:Landroid/content/Context;

    .line 48
    invoke-direct {v0, v1, p1}, Lyo;-><init>(Landroid/content/Context;Lcom/autonavi/extscreen/dto/PresentationConfig;)V

    .line 51
    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lsf;

    .line 54
    iget-object v1, p0, La20;->a:Landroid/content/Context;

    .line 56
    invoke-direct {v0, v1, p1}, Lsf;-><init>(Landroid/content/Context;Lcom/autonavi/extscreen/dto/PresentationConfig;)V

    .line 59
    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget v0, p0, La20;->j:I

    .line 3
    if-ltz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final u(Lhl;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lhl;->s()V

    .line 7
    return-void
.end method

.method public v(I)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "MultiScreenManager"

    .line 13
    const-string v4, "stopRenderScreen deviceId={?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0, p1}, La20;->k(I)Lhl;

    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 24
    iget-object v4, p0, La20;->c:Ljava/util/List;

    .line 26
    if-eqz v4, :cond_0

    .line 28
    new-array v4, v0, [Ljava/lang/Object;

    .line 30
    invoke-virtual {v1}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 33
    move-result-object v5

    .line 34
    iget v5, v5, Lcom/autonavi/amapauto/jni/ViewInfo;->i:I

    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v5

    .line 40
    aput-object v5, v4, v3

    .line 42
    const-string v5, "stopRenderScreen type={?}"

    .line 44
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p0, v1}, La20;->w(Lhl;)V

    .line 50
    invoke-virtual {v1}, Lhl;->c()V

    .line 53
    iget-object v4, p0, La20;->c:Ljava/util/List;

    .line 55
    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    iget-object v1, p0, La20;->g:Ljava/util/List;

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 63
    move-result v1

    .line 64
    sub-int/2addr v1, v0

    .line 65
    :goto_0
    if-ltz v1, :cond_2

    .line 67
    iget-object v4, p0, La20;->g:Ljava/util/List;

    .line 69
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lcom/autonavi/extscreen/dto/PresentationConfig;

    .line 75
    iget v4, v4, Lcom/autonavi/extscreen/dto/PresentationConfig;->deviceId:I

    .line 77
    if-ne p1, v4, :cond_1

    .line 79
    iget-object v4, p0, La20;->g:Ljava/util/List;

    .line 81
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 84
    new-array v4, v0, [Ljava/lang/Object;

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v5

    .line 90
    aput-object v5, v4, v3

    .line 92
    const-string v5, "stopRenderScreen deviceId={?} removed"

    .line 94
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    return-void
.end method

.method public w(Lhl;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lhl;->d()I

    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v1, v0, v2

    .line 18
    const-string v1, "MultiScreenManager"

    .line 20
    const-string v2, "stopRenderScreen id={?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p1}, Lhl;->u()V

    .line 28
    return-void
.end method
