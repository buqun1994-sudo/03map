.class public Lkd;
.super Ls;
.source "SourceFile"


# instance fields
.field public a:Ldd;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ls;-><init>()V

    .line 4
    new-instance v0, Ldd;

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Ldd;-><init>(ZZ)V

    .line 11
    iput-object v0, p0, Lkd;->a:Ldd;

    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v2, 0x1

    .line 8
    aput-object p2, v0, v2

    .line 10
    const/4 v3, 0x2

    .line 11
    aput-object p3, v0, v3

    .line 13
    const-string v3, "[ALSimulate] BroadcastSimulator"

    .line 15
    const-string v4, "doSimulate protocolContent = {?} protocolId = {?} version = {?}"

    .line 17
    invoke-static {v3, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lkd;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    move-result p2

    .line 24
    invoke-virtual {p0}, Ls;->b()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    const-string v0, "doSimulate isNeedAssert"

    .line 32
    new-array v4, v1, [Ljava/lang/Object;

    .line 34
    invoke-static {v3, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lkd;->a:Ldd;

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v5, ""

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v0, p1, v4, p3}, Ldd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    iget-object v0, p0, Lkd;->a:Ldd;

    .line 61
    invoke-virtual {v0}, Ldd;->b()V

    .line 64
    :cond_0
    const-string v0, "doSimulate after isNeedAssert"

    .line 66
    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0, p2, p1, p3}, Lkd;->d(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lkd;->e(Landroid/content/Intent;)V

    .line 78
    return v2
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v2, 0x1

    .line 8
    aput-object p2, v0, v2

    .line 10
    const/4 v3, 0x2

    .line 11
    aput-object p3, v0, v3

    .line 13
    const-string v4, "[ALSimulate] BroadcastSimulator"

    .line 15
    const-string v5, "getSimulateProtocolId protocolContent = {?} protocolId = {?} version = {?}"

    .line 17
    invoke-static {v4, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :try_start_0
    const-string v0, "getSimulateProtocolId parseInt before"

    .line 22
    new-array v5, v1, [Ljava/lang/Object;

    .line 24
    invoke-static {v4, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    move-result p2

    .line 31
    const-string v0, "getSimulateProtocolId parseInt after"

    .line 33
    new-array v5, v1, [Ljava/lang/Object;

    .line 35
    invoke-static {v4, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {p1, p3}, Ljd;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :try_start_1
    const-string p3, "getSimulateProtocolId protocolIdFromContent = {?}, protocolIdInt = {?}"

    .line 44
    new-array v0, v3, [Ljava/lang/Object;

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v3

    .line 50
    aput-object v3, v0, v1

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v3

    .line 56
    aput-object v3, v0, v2

    .line 58
    invoke-static {v4, p3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    if-eq p2, p1, :cond_0

    .line 63
    const-string p2, "protocolIdInt != protocolIdFromContent"

    .line 65
    new-array p3, v1, [Ljava/lang/Object;

    .line 67
    invoke-static {v4, p2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception p2

    .line 72
    goto :goto_0

    .line 73
    :catch_1
    move-exception p2

    .line 74
    const/4 p1, 0x0

    .line 75
    :goto_0
    new-array p3, v2, [Ljava/lang/Object;

    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    move-result-object p2

    .line 81
    aput-object p2, p3, v1

    .line 83
    const-string p2, "getSimulateProtocolId ex = {?}"

    .line 85
    invoke-static {v4, p2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_0
    :goto_1
    return p1
.end method

.method public final d(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    const/4 v1, 0x1

    .line 12
    aput-object p2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    aput-object p3, v0, v1

    .line 17
    const-string v3, "[ALSimulate] BroadcastSimulator"

    .line 19
    const-string v4, "doSimulate protocolId = {?} simulateJsonString = {?} version = {?}"

    .line 21
    invoke-static {v3, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    const/16 v0, 0x2721

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eq p1, v0, :cond_b

    .line 29
    const/16 v0, 0x2722

    .line 31
    if-eq p1, v0, :cond_a

    .line 33
    const/16 v0, 0x2727

    .line 35
    if-eq p1, v0, :cond_9

    .line 37
    const/16 v0, 0x2728

    .line 39
    if-eq p1, v0, :cond_8

    .line 41
    const/16 v0, 0x272f

    .line 43
    if-eq p1, v0, :cond_7

    .line 45
    const/16 v0, 0x2730

    .line 47
    if-eq p1, v0, :cond_6

    .line 49
    const/16 v0, 0x273c

    .line 51
    if-eq p1, v0, :cond_5

    .line 53
    const/16 v0, 0x273d

    .line 55
    if-eq p1, v0, :cond_4

    .line 57
    const/16 v0, 0x2744

    .line 59
    if-eq p1, v0, :cond_3

    .line 61
    const/16 v0, 0x2745

    .line 63
    if-eq p1, v0, :cond_2

    .line 65
    const/16 v0, 0x2749

    .line 67
    if-eq p1, v0, :cond_1

    .line 69
    const/16 v0, 0x274a

    .line 71
    if-eq p1, v0, :cond_0

    .line 73
    sparse-switch p1, :sswitch_data_0

    .line 76
    packed-switch p1, :pswitch_data_0

    .line 79
    packed-switch p1, :pswitch_data_1

    .line 82
    packed-switch p1, :pswitch_data_2

    .line 85
    move-object p1, v4

    .line 86
    goto/16 :goto_0

    .line 88
    :pswitch_0
    new-instance p1, Lwc0;

    .line 90
    invoke-direct {p1}, Lwc0;-><init>()V

    .line 93
    goto/16 :goto_0

    .line 95
    :pswitch_1
    new-instance p1, Lxh;

    .line 97
    invoke-direct {p1}, Lxh;-><init>()V

    .line 100
    goto/16 :goto_0

    .line 102
    :pswitch_2
    new-instance p1, Ln20;

    .line 104
    invoke-direct {p1}, Ln20;-><init>()V

    .line 107
    goto/16 :goto_0

    .line 109
    :pswitch_3
    new-instance p1, Lpp;

    .line 111
    invoke-direct {p1}, Lpp;-><init>()V

    .line 114
    goto/16 :goto_0

    .line 116
    :pswitch_4
    new-instance p1, Lvz;

    .line 118
    invoke-direct {p1}, Lvz;-><init>()V

    .line 121
    goto/16 :goto_0

    .line 123
    :pswitch_5
    new-instance p1, Lmi;

    .line 125
    invoke-direct {p1}, Lmi;-><init>()V

    .line 128
    goto/16 :goto_0

    .line 130
    :pswitch_6
    new-instance p1, Lqu;

    .line 132
    invoke-direct {p1}, Lqu;-><init>()V

    .line 135
    goto/16 :goto_0

    .line 137
    :pswitch_7
    new-instance p1, Lru;

    .line 139
    invoke-direct {p1}, Lru;-><init>()V

    .line 142
    goto/16 :goto_0

    .line 144
    :pswitch_8
    new-instance p1, La50;

    .line 146
    invoke-direct {p1}, La50;-><init>()V

    .line 149
    goto/16 :goto_0

    .line 151
    :pswitch_9
    new-instance p1, Lyz;

    .line 153
    invoke-direct {p1}, Lyz;-><init>()V

    .line 156
    goto/16 :goto_0

    .line 158
    :sswitch_0
    new-instance p1, Llg0;

    .line 160
    invoke-direct {p1}, Llg0;-><init>()V

    .line 163
    goto/16 :goto_0

    .line 165
    :sswitch_1
    new-instance p1, Lyg;

    .line 167
    invoke-direct {p1}, Lyg;-><init>()V

    .line 170
    goto/16 :goto_0

    .line 172
    :sswitch_2
    new-instance p1, Ljj0;

    .line 174
    invoke-direct {p1}, Ljj0;-><init>()V

    .line 177
    goto/16 :goto_0

    .line 179
    :sswitch_3
    new-instance p1, Lyn;

    .line 181
    invoke-direct {p1}, Lyn;-><init>()V

    .line 184
    goto/16 :goto_0

    .line 186
    :sswitch_4
    new-instance p1, Lrn;

    .line 188
    invoke-direct {p1}, Lrn;-><init>()V

    .line 191
    goto/16 :goto_0

    .line 193
    :sswitch_5
    new-instance p1, Leb0;

    .line 195
    invoke-direct {p1}, Leb0;-><init>()V

    .line 198
    goto/16 :goto_0

    .line 200
    :sswitch_6
    new-instance p1, Lan;

    .line 202
    invoke-direct {p1}, Lan;-><init>()V

    .line 205
    goto/16 :goto_0

    .line 207
    :sswitch_7
    new-instance p1, Ljo;

    .line 209
    invoke-direct {p1}, Ljo;-><init>()V

    .line 212
    goto/16 :goto_0

    .line 214
    :sswitch_8
    new-instance p1, Lvn;

    .line 216
    invoke-direct {p1}, Lvn;-><init>()V

    .line 219
    goto/16 :goto_0

    .line 221
    :sswitch_9
    new-instance p1, Lpn;

    .line 223
    invoke-direct {p1}, Lpn;-><init>()V

    .line 226
    goto/16 :goto_0

    .line 228
    :sswitch_a
    new-instance p1, Lnn;

    .line 230
    invoke-direct {p1}, Lnn;-><init>()V

    .line 233
    goto/16 :goto_0

    .line 235
    :sswitch_b
    new-instance p1, Lao;

    .line 237
    invoke-direct {p1}, Lao;-><init>()V

    .line 240
    goto/16 :goto_0

    .line 242
    :sswitch_c
    new-instance p1, Lkn;

    .line 244
    invoke-direct {p1}, Lkn;-><init>()V

    .line 247
    goto/16 :goto_0

    .line 249
    :sswitch_d
    new-instance p1, Lin;

    .line 251
    invoke-direct {p1}, Lin;-><init>()V

    .line 254
    goto/16 :goto_0

    .line 256
    :sswitch_e
    new-instance p1, Lrf0;

    .line 258
    invoke-direct {p1}, Lrf0;-><init>()V

    .line 261
    goto/16 :goto_0

    .line 263
    :sswitch_f
    new-instance p1, Lbd;

    .line 265
    invoke-direct {p1}, Lbd;-><init>()V

    .line 268
    goto/16 :goto_0

    .line 270
    :sswitch_10
    new-instance p1, Lhb;

    .line 272
    invoke-direct {p1}, Lhb;-><init>()V

    .line 275
    goto/16 :goto_0

    .line 277
    :sswitch_11
    new-instance p1, Lp50;

    .line 279
    invoke-direct {p1}, Lp50;-><init>()V

    .line 282
    goto/16 :goto_0

    .line 284
    :sswitch_12
    new-instance p1, Ltf;

    .line 286
    invoke-direct {p1}, Ltf;-><init>()V

    .line 289
    goto/16 :goto_0

    .line 291
    :sswitch_13
    new-instance p1, Lhv;

    .line 293
    invoke-direct {p1}, Lhv;-><init>()V

    .line 296
    goto/16 :goto_0

    .line 298
    :sswitch_14
    new-instance p1, Lr5;

    .line 300
    invoke-direct {p1}, Lr5;-><init>()V

    .line 303
    goto/16 :goto_0

    .line 305
    :sswitch_15
    new-instance p1, Lxg;

    .line 307
    invoke-direct {p1}, Lxg;-><init>()V

    .line 310
    goto/16 :goto_0

    .line 312
    :sswitch_16
    new-instance p1, Lvg;

    .line 314
    invoke-direct {p1}, Lvg;-><init>()V

    .line 317
    goto/16 :goto_0

    .line 319
    :sswitch_17
    new-instance p1, Lem;

    .line 321
    invoke-direct {p1}, Lem;-><init>()V

    .line 324
    goto/16 :goto_0

    .line 326
    :sswitch_18
    new-instance p1, Lxz;

    .line 328
    invoke-direct {p1}, Lxz;-><init>()V

    .line 331
    goto/16 :goto_0

    .line 333
    :sswitch_19
    new-instance p1, Lig0;

    .line 335
    invoke-direct {p1}, Lig0;-><init>()V

    .line 338
    goto/16 :goto_0

    .line 340
    :sswitch_1a
    new-instance p1, Lzh0;

    .line 342
    invoke-direct {p1}, Lzh0;-><init>()V

    .line 345
    goto/16 :goto_0

    .line 347
    :sswitch_1b
    new-instance p1, Lid0;

    .line 349
    invoke-direct {p1}, Lid0;-><init>()V

    .line 352
    goto/16 :goto_0

    .line 354
    :sswitch_1c
    new-instance p1, Lkh0;

    .line 356
    invoke-direct {p1}, Lkh0;-><init>()V

    .line 359
    goto/16 :goto_0

    .line 361
    :sswitch_1d
    new-instance p1, Lm50;

    .line 363
    invoke-direct {p1}, Lm50;-><init>()V

    .line 366
    goto/16 :goto_0

    .line 368
    :sswitch_1e
    new-instance p1, Lze;

    .line 370
    invoke-direct {p1}, Lze;-><init>()V

    .line 373
    goto/16 :goto_0

    .line 375
    :sswitch_1f
    new-instance p1, Lga0;

    .line 377
    invoke-direct {p1}, Lga0;-><init>()V

    .line 380
    goto/16 :goto_0

    .line 382
    :sswitch_20
    new-instance p1, Lbo;

    .line 384
    invoke-direct {p1}, Lbo;-><init>()V

    .line 387
    goto/16 :goto_0

    .line 389
    :sswitch_21
    new-instance p1, Lie;

    .line 391
    invoke-direct {p1}, Lie;-><init>()V

    .line 394
    goto/16 :goto_0

    .line 396
    :sswitch_22
    new-instance p1, Lv60;

    .line 398
    invoke-direct {p1}, Lv60;-><init>()V

    .line 401
    goto/16 :goto_0

    .line 403
    :sswitch_23
    new-instance p1, Llk;

    .line 405
    invoke-direct {p1}, Llk;-><init>()V

    .line 408
    goto/16 :goto_0

    .line 410
    :sswitch_24
    new-instance p1, Lte;

    .line 412
    invoke-direct {p1}, Lte;-><init>()V

    .line 415
    goto/16 :goto_0

    .line 417
    :sswitch_25
    new-instance p1, Lu60;

    .line 419
    invoke-direct {p1}, Lu60;-><init>()V

    .line 422
    goto/16 :goto_0

    .line 424
    :sswitch_26
    new-instance p1, Lhk0;

    .line 426
    invoke-direct {p1}, Lhk0;-><init>()V

    .line 429
    goto/16 :goto_0

    .line 431
    :sswitch_27
    new-instance p1, Lft;

    .line 433
    invoke-direct {p1}, Lft;-><init>()V

    .line 436
    goto/16 :goto_0

    .line 438
    :sswitch_28
    new-instance p1, Lf1;

    .line 440
    invoke-direct {p1}, Lf1;-><init>()V

    .line 443
    goto/16 :goto_0

    .line 445
    :sswitch_29
    new-instance p1, Ley;

    .line 447
    invoke-direct {p1}, Ley;-><init>()V

    .line 450
    goto/16 :goto_0

    .line 452
    :sswitch_2a
    new-instance p1, Lsy;

    .line 454
    invoke-direct {p1}, Lsy;-><init>()V

    .line 457
    goto/16 :goto_0

    .line 459
    :sswitch_2b
    new-instance p1, Lda0;

    .line 461
    invoke-direct {p1}, Lda0;-><init>()V

    .line 464
    goto/16 :goto_0

    .line 466
    :sswitch_2c
    new-instance p1, Lll0;

    .line 468
    invoke-direct {p1}, Lll0;-><init>()V

    .line 471
    goto/16 :goto_0

    .line 473
    :pswitch_a
    :sswitch_2d
    new-instance p1, Lyk;

    .line 475
    invoke-direct {p1}, Lyk;-><init>()V

    .line 478
    goto/16 :goto_0

    .line 480
    :sswitch_2e
    new-instance p1, Lth0;

    .line 482
    invoke-direct {p1}, Lth0;-><init>()V

    .line 485
    goto/16 :goto_0

    .line 487
    :sswitch_2f
    new-instance p1, Lgz;

    .line 489
    invoke-direct {p1}, Lgz;-><init>()V

    .line 492
    goto/16 :goto_0

    .line 494
    :sswitch_30
    new-instance p1, Le50;

    .line 496
    invoke-direct {p1}, Le50;-><init>()V

    .line 499
    goto/16 :goto_0

    .line 501
    :sswitch_31
    new-instance p1, Lrl;

    .line 503
    invoke-direct {p1}, Lrl;-><init>()V

    .line 506
    goto/16 :goto_0

    .line 508
    :sswitch_32
    new-instance p1, Lkc0;

    .line 510
    invoke-direct {p1}, Lkc0;-><init>()V

    .line 513
    goto/16 :goto_0

    .line 515
    :sswitch_33
    new-instance p1, Li5;

    .line 517
    invoke-direct {p1}, Li5;-><init>()V

    .line 520
    goto/16 :goto_0

    .line 522
    :sswitch_34
    new-instance p1, Lce;

    .line 524
    invoke-direct {p1}, Lce;-><init>()V

    .line 527
    goto/16 :goto_0

    .line 529
    :sswitch_35
    new-instance p1, Lfd0;

    .line 531
    invoke-direct {p1}, Lfd0;-><init>()V

    .line 534
    goto/16 :goto_0

    .line 536
    :sswitch_36
    new-instance p1, Lld0;

    .line 538
    invoke-direct {p1}, Lld0;-><init>()V

    .line 541
    goto/16 :goto_0

    .line 543
    :sswitch_37
    new-instance p1, Lvl;

    .line 545
    invoke-direct {p1}, Lvl;-><init>()V

    .line 548
    goto/16 :goto_0

    .line 550
    :sswitch_38
    new-instance p1, Lxh0;

    .line 552
    invoke-direct {p1}, Lxh0;-><init>()V

    .line 555
    goto/16 :goto_0

    .line 557
    :sswitch_39
    new-instance p1, Lyp;

    .line 559
    invoke-direct {p1}, Lyp;-><init>()V

    .line 562
    goto/16 :goto_0

    .line 564
    :sswitch_3a
    new-instance p1, Lsb;

    .line 566
    invoke-direct {p1}, Lsb;-><init>()V

    .line 569
    goto/16 :goto_0

    .line 571
    :sswitch_3b
    new-instance p1, Lr20;

    .line 573
    invoke-direct {p1}, Lr20;-><init>()V

    .line 576
    goto/16 :goto_0

    .line 578
    :sswitch_3c
    new-instance p1, Lgd0;

    .line 580
    invoke-direct {p1}, Lgd0;-><init>()V

    .line 583
    goto/16 :goto_0

    .line 585
    :sswitch_3d
    new-instance p1, Lxd0;

    .line 587
    invoke-direct {p1}, Lxd0;-><init>()V

    .line 590
    goto/16 :goto_0

    .line 592
    :sswitch_3e
    new-instance p1, Lo20;

    .line 594
    invoke-direct {p1, v1}, Lo20;-><init>(I)V

    .line 597
    goto/16 :goto_0

    .line 599
    :sswitch_3f
    new-instance p1, Lj20;

    .line 601
    invoke-direct {p1}, Lj20;-><init>()V

    .line 604
    goto/16 :goto_0

    .line 606
    :sswitch_40
    new-instance p1, Lma0;

    .line 608
    invoke-direct {p1}, Lma0;-><init>()V

    .line 611
    goto/16 :goto_0

    .line 613
    :sswitch_41
    new-instance p1, Lj10;

    .line 615
    invoke-direct {p1}, Lj10;-><init>()V

    .line 618
    goto/16 :goto_0

    .line 620
    :sswitch_42
    new-instance p1, Lw1;

    .line 622
    invoke-direct {p1}, Lw1;-><init>()V

    .line 625
    goto/16 :goto_0

    .line 627
    :sswitch_43
    new-instance p1, Lxl;

    .line 629
    invoke-direct {p1}, Lxl;-><init>()V

    .line 632
    goto/16 :goto_0

    .line 634
    :sswitch_44
    new-instance p1, Ltl;

    .line 636
    invoke-direct {p1}, Ltl;-><init>()V

    .line 639
    goto/16 :goto_0

    .line 641
    :sswitch_45
    new-instance p1, Lml;

    .line 643
    invoke-direct {p1}, Lml;-><init>()V

    .line 646
    goto/16 :goto_0

    .line 648
    :sswitch_46
    new-instance p1, Ldl;

    .line 650
    invoke-direct {p1}, Ldl;-><init>()V

    .line 653
    goto/16 :goto_0

    .line 655
    :sswitch_47
    new-instance p1, Lcl;

    .line 657
    invoke-direct {p1}, Lcl;-><init>()V

    .line 660
    goto/16 :goto_0

    .line 662
    :sswitch_48
    new-instance p1, Lty;

    .line 664
    invoke-direct {p1}, Lty;-><init>()V

    .line 667
    goto/16 :goto_0

    .line 669
    :sswitch_49
    new-instance p1, Lol;

    .line 671
    invoke-direct {p1}, Lol;-><init>()V

    .line 674
    goto/16 :goto_0

    .line 676
    :sswitch_4a
    new-instance p1, Lpl;

    .line 678
    invoke-direct {p1}, Lpl;-><init>()V

    .line 681
    goto/16 :goto_0

    .line 683
    :sswitch_4b
    new-instance p1, Lnl;

    .line 685
    invoke-direct {p1}, Lnl;-><init>()V

    .line 688
    goto/16 :goto_0

    .line 690
    :sswitch_4c
    new-instance p1, Lll;

    .line 692
    invoke-direct {p1}, Lll;-><init>()V

    .line 695
    goto/16 :goto_0

    .line 697
    :sswitch_4d
    new-instance p1, Lvc;

    .line 699
    invoke-direct {p1}, Lvc;-><init>()V

    .line 702
    goto/16 :goto_0

    .line 704
    :sswitch_4e
    new-instance p1, Lf50;

    .line 706
    invoke-direct {p1}, Lf50;-><init>()V

    .line 709
    goto/16 :goto_0

    .line 711
    :sswitch_4f
    new-instance p1, Ld60;

    .line 713
    invoke-direct {p1}, Ld60;-><init>()V

    .line 716
    goto/16 :goto_0

    .line 718
    :pswitch_b
    :sswitch_50
    new-instance p1, Lv5;

    .line 720
    invoke-direct {p1}, Lv5;-><init>()V

    .line 723
    goto/16 :goto_0

    .line 725
    :sswitch_51
    new-instance p1, Lce0;

    .line 727
    invoke-direct {p1}, Lce0;-><init>()V

    .line 730
    goto/16 :goto_0

    .line 732
    :sswitch_52
    new-instance p1, Lc20;

    .line 734
    invoke-direct {p1}, Lc20;-><init>()V

    .line 737
    goto/16 :goto_0

    .line 739
    :sswitch_53
    new-instance p1, Lse0;

    .line 741
    invoke-direct {p1}, Lse0;-><init>()V

    .line 744
    goto/16 :goto_0

    .line 746
    :sswitch_54
    new-instance p1, Lvh0;

    .line 748
    invoke-direct {p1}, Lvh0;-><init>()V

    .line 751
    goto/16 :goto_0

    .line 753
    :sswitch_55
    new-instance p1, Lmd0;

    .line 755
    invoke-direct {p1}, Lmd0;-><init>()V

    .line 758
    goto/16 :goto_0

    .line 760
    :sswitch_56
    new-instance p1, Luw;

    .line 762
    invoke-direct {p1}, Luw;-><init>()V

    .line 765
    goto/16 :goto_0

    .line 767
    :sswitch_57
    new-instance p1, Ltw;

    .line 769
    invoke-direct {p1}, Ltw;-><init>()V

    .line 772
    goto/16 :goto_0

    .line 774
    :sswitch_58
    new-instance p1, Lsc0;

    .line 776
    invoke-direct {p1}, Lsc0;-><init>()V

    .line 779
    goto/16 :goto_0

    .line 781
    :sswitch_59
    new-instance p1, Lww;

    .line 783
    invoke-direct {p1}, Lww;-><init>()V

    .line 786
    goto/16 :goto_0

    .line 788
    :sswitch_5a
    new-instance p1, Lfl;

    .line 790
    invoke-direct {p1}, Lfl;-><init>()V

    .line 793
    goto/16 :goto_0

    .line 795
    :sswitch_5b
    new-instance p1, Lw40;

    .line 797
    invoke-direct {p1}, Lw40;-><init>()V

    .line 800
    goto/16 :goto_0

    .line 802
    :sswitch_5c
    new-instance p1, Lo60;

    .line 804
    invoke-direct {p1}, Lo60;-><init>()V

    .line 807
    goto/16 :goto_0

    .line 809
    :sswitch_5d
    new-instance p1, Lxe0;

    .line 811
    invoke-direct {p1}, Lxe0;-><init>()V

    .line 814
    goto/16 :goto_0

    .line 816
    :sswitch_5e
    new-instance p1, Lo20;

    .line 818
    invoke-direct {p1}, Lo20;-><init>()V

    .line 821
    goto/16 :goto_0

    .line 823
    :sswitch_5f
    new-instance p1, Ltd0;

    .line 825
    invoke-direct {p1}, Ltd0;-><init>()V

    .line 828
    goto/16 :goto_0

    .line 830
    :sswitch_60
    new-instance p1, Lib0;

    .line 832
    invoke-direct {p1}, Lib0;-><init>()V

    .line 835
    goto/16 :goto_0

    .line 837
    :sswitch_61
    new-instance p1, Lhb0;

    .line 839
    invoke-direct {p1}, Lhb0;-><init>()V

    .line 842
    goto :goto_0

    .line 843
    :sswitch_62
    new-instance p1, Lq20;

    .line 845
    invoke-direct {p1}, Lq20;-><init>()V

    .line 848
    goto :goto_0

    .line 849
    :sswitch_63
    new-instance p1, Lx10;

    .line 851
    invoke-direct {p1}, Lx10;-><init>()V

    .line 854
    goto :goto_0

    .line 855
    :sswitch_64
    new-instance p1, Lba0;

    .line 857
    invoke-direct {p1}, Lba0;-><init>()V

    .line 860
    goto :goto_0

    .line 861
    :cond_0
    new-instance p1, Lx1;

    .line 863
    invoke-direct {p1}, Lx1;-><init>()V

    .line 866
    goto :goto_0

    .line 867
    :cond_1
    new-instance p1, Lt2;

    .line 869
    invoke-direct {p1}, Lt2;-><init>()V

    .line 872
    goto :goto_0

    .line 873
    :cond_2
    new-instance p1, Ltl0;

    .line 875
    invoke-direct {p1}, Ltl0;-><init>()V

    .line 878
    goto :goto_0

    .line 879
    :cond_3
    new-instance p1, Lrc0;

    .line 881
    invoke-direct {p1}, Lrc0;-><init>()V

    .line 884
    goto :goto_0

    .line 885
    :cond_4
    new-instance p1, Lmn;

    .line 887
    invoke-direct {p1}, Lmn;-><init>()V

    .line 890
    goto :goto_0

    .line 891
    :cond_5
    new-instance p1, Lkd0;

    .line 893
    invoke-direct {p1}, Lkd0;-><init>()V

    .line 896
    goto :goto_0

    .line 897
    :cond_6
    new-instance p1, Ljb0;

    .line 899
    invoke-direct {p1}, Ljb0;-><init>()V

    .line 902
    goto :goto_0

    .line 903
    :cond_7
    new-instance p1, Ldo;

    .line 905
    invoke-direct {p1}, Ldo;-><init>()V

    .line 908
    goto :goto_0

    .line 909
    :cond_8
    new-instance p1, Ly5;

    .line 911
    invoke-direct {p1}, Ly5;-><init>()V

    .line 914
    goto :goto_0

    .line 915
    :cond_9
    new-instance p1, Lpw;

    .line 917
    invoke-direct {p1}, Lpw;-><init>()V

    .line 920
    goto :goto_0

    .line 921
    :cond_a
    :sswitch_65
    new-instance p1, Lw;

    .line 923
    invoke-direct {p1}, Lw;-><init>()V

    .line 926
    goto :goto_0

    .line 927
    :cond_b
    new-instance p1, Lgk0;

    .line 929
    invoke-direct {p1}, Lgk0;-><init>()V

    .line 932
    :goto_0
    if-eqz p1, :cond_c

    .line 934
    iget-object v0, p0, Lkd;->a:Ldd;

    .line 936
    invoke-virtual {v0}, Ldd;->i()Led;

    .line 939
    move-result-object v0

    .line 940
    invoke-virtual {v0}, Led;->a()Ljava/util/HashMap;

    .line 943
    move-result-object v0

    .line 944
    invoke-virtual {p1, v0, p2, p3}, Lnc;->n(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 947
    move-result-object p1

    .line 948
    return-object p1

    .line 949
    :cond_c
    const-string p1, "parseToIntentFromAction null == baseProcotolAction"

    .line 951
    new-array p2, v2, [Ljava/lang/Object;

    .line 953
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 956
    return-object v4

    .line 957
    :sswitch_data_0
    .sparse-switch
        0x2713 -> :sswitch_64
        0x2714 -> :sswitch_63
        0x2715 -> :sswitch_62
        0x2716 -> :sswitch_61
        0x2717 -> :sswitch_60
        0x2718 -> :sswitch_5f
        0x2719 -> :sswitch_5e
        0x271a -> :sswitch_5d
        0x271b -> :sswitch_5c
        0x271c -> :sswitch_5c
        0x271d -> :sswitch_5c
        0x271e -> :sswitch_5b
        0x2725 -> :sswitch_5a
        0x2732 -> :sswitch_59
        0x2747 -> :sswitch_58
        0x274d -> :sswitch_57
        0x274e -> :sswitch_56
        0x2750 -> :sswitch_55
        0x2754 -> :sswitch_54
        0x2756 -> :sswitch_53
        0x2757 -> :sswitch_52
        0x2759 -> :sswitch_65
        0x275c -> :sswitch_51
        0x275d -> :sswitch_50
        0x275e -> :sswitch_4f
        0x2761 -> :sswitch_4e
        0x2775 -> :sswitch_4d
        0x2776 -> :sswitch_4d
        0x2778 -> :sswitch_4c
        0x2779 -> :sswitch_4b
        0x277a -> :sswitch_4a
        0x277b -> :sswitch_49
        0x277d -> :sswitch_48
        0x2784 -> :sswitch_47
        0x2786 -> :sswitch_46
        0x2788 -> :sswitch_45
        0x2af9 -> :sswitch_44
        0x2afa -> :sswitch_43
        0x2afb -> :sswitch_42
        0x2ee4 -> :sswitch_41
        0x2ee6 -> :sswitch_55
        0x2ee7 -> :sswitch_40
        0x2eeb -> :sswitch_3f
        0x2eec -> :sswitch_3e
        0x2eed -> :sswitch_3d
        0x2f44 -> :sswitch_3c
        0x2f48 -> :sswitch_3b
        0x2f4a -> :sswitch_3a
        0x2f4b -> :sswitch_39
        0x2f4c -> :sswitch_38
        0x2f4d -> :sswitch_37
        0x2f4f -> :sswitch_36
        0x2f50 -> :sswitch_35
        0x2f52 -> :sswitch_34
        0x2f54 -> :sswitch_33
        0x2fa9 -> :sswitch_32
        0x2faa -> :sswitch_31
        0x2fab -> :sswitch_30
        0x2fac -> :sswitch_2f
        0x300d -> :sswitch_30
        0x3071 -> :sswitch_2e
        0x3072 -> :sswitch_2d
        0x3073 -> :sswitch_2c
        0x3074 -> :sswitch_2b
        0x32c9 -> :sswitch_2a
        0x32ca -> :sswitch_29
        0x32cd -> :sswitch_41
        0x32d6 -> :sswitch_28
        0x32dc -> :sswitch_27
        0x32dd -> :sswitch_26
        0x32de -> :sswitch_25
        0x32df -> :sswitch_24
        0x32e0 -> :sswitch_23
        0x32e1 -> :sswitch_22
        0x32e3 -> :sswitch_21
        0x32e5 -> :sswitch_20
        0x32e6 -> :sswitch_1f
        0x32e8 -> :sswitch_1e
        0x32eb -> :sswitch_1d
        0x32ed -> :sswitch_1c
        0x32f0 -> :sswitch_1b
        0x36be -> :sswitch_1a
        0x4eea -> :sswitch_19
        0xea71 -> :sswitch_18
        0xea73 -> :sswitch_17
        0xea76 -> :sswitch_16
        0xea78 -> :sswitch_15
        0xea79 -> :sswitch_14
        0xea7f -> :sswitch_13
        0xea81 -> :sswitch_12
        0xea82 -> :sswitch_11
        0xea83 -> :sswitch_10
        0xea84 -> :sswitch_f
        0xea85 -> :sswitch_e
        0xea88 -> :sswitch_d
        0xea89 -> :sswitch_c
        0xea8d -> :sswitch_b
        0xea8e -> :sswitch_a
        0xea8f -> :sswitch_9
        0xea91 -> :sswitch_8
        0xea95 -> :sswitch_7
        0xea96 -> :sswitch_6
        0xea98 -> :sswitch_5
        0xea9a -> :sswitch_4
        0xeaa6 -> :sswitch_3
        0xeaa8 -> :sswitch_2
        0xeaab -> :sswitch_1
        0x15f91 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x272b
        :pswitch_9
        :pswitch_8
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2734
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x273f
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_0
    .end packed-switch
.end method

.method public e(Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "[ALSimulate] BroadcastSimulator"

    .line 6
    const-string v3, "broadcastSimulateNormal"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    const-string v3, "null"

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v1, :cond_3

    .line 24
    new-array v1, v4, [Ljava/lang/Object;

    .line 26
    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_1

    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 41
    move-result-object v3

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v3, "intent=null"

    .line 45
    :cond_1
    :goto_0
    aput-object v3, v1, v0

    .line 47
    const-string v3, "broadcastSimulateNormal sendBroadcast intent.getExtras() = {?}"

    .line 49
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    if-eqz p1, :cond_2

    .line 54
    const-string v1, "broadcastSimulateNormal intent!=null"

    .line 56
    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {}, Lrv;->H()Lrv;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lrv;->L()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v0, "AUTONAVI_STANDARD_BROADCAST_RECV"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v0, "SIMULATE_SOURCE"

    .line 79
    const-string v1, "ALSelf"

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-static {}, Lrv;->H()Lrv;

    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    const-string p1, "broadcastSimulateNormal intent==null"

    .line 98
    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    new-array v1, v4, [Ljava/lang/Object;

    .line 106
    if-eqz p1, :cond_4

    .line 108
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 111
    move-result-object v3

    .line 112
    :cond_4
    aput-object v3, v1, v0

    .line 114
    const-string p1, "broadcastSimulateNormal Error context == null, intent={?}"

    .line 116
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :goto_1
    return-void
.end method
