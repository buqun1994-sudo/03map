.class public Lcom/autonavi/amapauto/jni/NetworkParamNative;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAndNetworkParam(I)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "NetworkParamNative"

    .line 13
    const-string v4, "getAndNetworkParam key={?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {p0}, Lg30;->b(I)Lg30;

    .line 21
    move-result-object p0

    .line 22
    const-string v1, ""

    .line 24
    if-eqz p0, :cond_3

    .line 26
    sget-object v4, Lcom/autonavi/amapauto/jni/NetworkParamNative$a;->a:[I

    .line 28
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 31
    move-result p0

    .line 32
    aget p0, v4, p0

    .line 34
    packed-switch p0, :pswitch_data_0

    .line 37
    goto/16 :goto_2

    .line 39
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {}, Lse;->c()Lse;

    .line 50
    move-result-object v1

    .line 51
    const/16 v4, 0x7552

    .line 53
    invoke-virtual {v1, v4}, Lse;->getIntValue(I)I

    .line 56
    move-result v1

    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    goto/16 :goto_2

    .line 66
    :pswitch_1
    invoke-static {}, Lr50;->b()Z

    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_0

    .line 72
    const-string v1, "30"

    .line 74
    goto/16 :goto_2

    .line 76
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 87
    move-result-object p0

    .line 88
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 90
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    goto/16 :goto_2

    .line 96
    :pswitch_2
    invoke-static {}, Lrv;->H()Lrv;

    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lrv;->L()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    goto/16 :goto_2

    .line 106
    :pswitch_3
    const-string p0, "ro.build.fingerprint"

    .line 108
    invoke-static {p0}, Lqh;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    goto/16 :goto_2

    .line 114
    :pswitch_4
    invoke-static {}, Lrv;->H()Lrv;

    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 121
    move-result-object p0

    .line 122
    const-string v4, "audio"

    .line 124
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    move-result-object p0

    .line 128
    check-cast p0, Landroid/media/AudioManager;

    .line 130
    if-eqz p0, :cond_3

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const/4 v4, 0x3

    .line 138
    invoke-virtual {p0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 141
    move-result v5

    .line 142
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v5, "/"

    .line 147
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 153
    move-result p0

    .line 154
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v1

    .line 161
    goto/16 :goto_2

    .line 163
    :pswitch_5
    invoke-static {}, Lsi;->v()Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 167
    goto/16 :goto_2

    .line 169
    :pswitch_6
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 171
    goto/16 :goto_2

    .line 173
    :pswitch_7
    const-string p0, "gsm.version.baseband"

    .line 175
    invoke-static {p0}, Lqh;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    goto/16 :goto_2

    .line 181
    :pswitch_8
    const-string p0, "["

    .line 183
    const/4 v1, 0x0

    .line 184
    :goto_0
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 186
    array-length v5, v4

    .line 187
    if-ge v1, v5, :cond_2

    .line 189
    array-length v5, v4

    .line 190
    sub-int/2addr v5, v0

    .line 191
    if-ne v1, v5, :cond_1

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    aget-object p0, v4, v1

    .line 203
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object p0

    .line 210
    goto :goto_1

    .line 211
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    aget-object p0, v4, v1

    .line 221
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string p0, ","

    .line 226
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object p0

    .line 233
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 235
    goto :goto_0

    .line 236
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 238
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string p0, "]"

    .line 246
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    move-result-object v1

    .line 253
    goto/16 :goto_2

    .line 255
    :pswitch_9
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 257
    goto/16 :goto_2

    .line 259
    :pswitch_a
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 261
    goto/16 :goto_2

    .line 263
    :pswitch_b
    const-string p0, "ro.board.platform"

    .line 265
    invoke-static {p0}, Lqh;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 268
    move-result-object v1

    .line 269
    goto/16 :goto_2

    .line 271
    :pswitch_c
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 273
    goto/16 :goto_2

    .line 275
    :pswitch_d
    invoke-static {}, Lsi;->c()Ljava/lang/String;

    .line 278
    move-result-object v1

    .line 279
    goto/16 :goto_2

    .line 281
    :pswitch_e
    invoke-static {}, Lsi;->r()Ljava/lang/String;

    .line 284
    move-result-object v1

    .line 285
    goto/16 :goto_2

    .line 287
    :pswitch_f
    invoke-static {}, Lsi;->A()Ljava/lang/String;

    .line 290
    move-result-object v1

    .line 291
    goto/16 :goto_2

    .line 293
    :pswitch_10
    invoke-static {}, Lsi;->S()Ljava/lang/String;

    .line 296
    move-result-object v1

    .line 297
    goto/16 :goto_2

    .line 299
    :pswitch_11
    invoke-static {}, Lsi;->P()Ljava/lang/String;

    .line 302
    move-result-object v1

    .line 303
    goto/16 :goto_2

    .line 305
    :pswitch_12
    invoke-static {}, Lsi;->O()Ljava/lang/String;

    .line 308
    move-result-object v1

    .line 309
    goto/16 :goto_2

    .line 311
    :pswitch_13
    invoke-static {}, Lsi;->Q()Ljava/lang/String;

    .line 314
    move-result-object v1

    .line 315
    goto/16 :goto_2

    .line 317
    :pswitch_14
    invoke-static {}, Lsi;->R()Ljava/lang/String;

    .line 320
    move-result-object v1

    .line 321
    goto/16 :goto_2

    .line 323
    :pswitch_15
    invoke-static {}, Lsi;->V()Ljava/lang/String;

    .line 326
    move-result-object v1

    .line 327
    goto/16 :goto_2

    .line 329
    :pswitch_16
    invoke-static {}, Lsi;->U()Ljava/lang/String;

    .line 332
    move-result-object v1

    .line 333
    goto/16 :goto_2

    .line 335
    :pswitch_17
    invoke-static {}, Lsi;->p()Ljava/lang/String;

    .line 338
    move-result-object v1

    .line 339
    goto/16 :goto_2

    .line 341
    :pswitch_18
    invoke-static {}, Lrv;->H()Lrv;

    .line 344
    move-result-object p0

    .line 345
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 348
    move-result-object p0

    .line 349
    invoke-static {p0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 352
    move-result-object p0

    .line 353
    invoke-virtual {p0}, Lsi;->t()Ljava/lang/String;

    .line 356
    move-result-object v1

    .line 357
    goto/16 :goto_2

    .line 359
    :pswitch_19
    invoke-static {}, Lsi;->K()Ljava/lang/String;

    .line 362
    move-result-object v1

    .line 363
    goto/16 :goto_2

    .line 365
    :pswitch_1a
    invoke-static {}, Lsi;->z()Ljava/lang/String;

    .line 368
    move-result-object v1

    .line 369
    goto/16 :goto_2

    .line 371
    :pswitch_1b
    invoke-static {}, Lsi;->i()Ljava/lang/String;

    .line 374
    move-result-object v1

    .line 375
    goto/16 :goto_2

    .line 377
    :pswitch_1c
    invoke-static {}, Lsi;->h()Ljava/lang/String;

    .line 380
    move-result-object v1

    .line 381
    goto/16 :goto_2

    .line 383
    :pswitch_1d
    invoke-static {}, Lsi;->j()Ljava/lang/String;

    .line 386
    move-result-object v1

    .line 387
    goto/16 :goto_2

    .line 389
    :pswitch_1e
    invoke-static {}, Lsi;->k()Ljava/lang/String;

    .line 392
    move-result-object v1

    .line 393
    goto/16 :goto_2

    .line 395
    :pswitch_1f
    invoke-static {}, Lsi;->b()Ljava/lang/String;

    .line 398
    move-result-object v1

    .line 399
    goto/16 :goto_2

    .line 401
    :pswitch_20
    invoke-static {}, Lsi;->e()Ljava/lang/String;

    .line 404
    move-result-object v1

    .line 405
    goto/16 :goto_2

    .line 407
    :pswitch_21
    invoke-static {}, Lrv;->H()Lrv;

    .line 410
    move-result-object p0

    .line 411
    invoke-virtual {p0}, Lrv;->w()Ljava/lang/String;

    .line 414
    move-result-object v1

    .line 415
    goto/16 :goto_2

    .line 417
    :pswitch_22
    invoke-static {}, Lf30;->d()Ljava/lang/String;

    .line 420
    move-result-object v1

    .line 421
    goto/16 :goto_2

    .line 423
    :pswitch_23
    invoke-static {}, Lsi;->F()Ljava/lang/String;

    .line 426
    move-result-object v1

    .line 427
    goto :goto_2

    .line 428
    :pswitch_24
    invoke-static {}, Lf30;->u()Ljava/lang/String;

    .line 431
    move-result-object v1

    .line 432
    goto :goto_2

    .line 433
    :pswitch_25
    invoke-static {}, Lsi;->f()Ljava/lang/String;

    .line 436
    move-result-object v1

    .line 437
    goto :goto_2

    .line 438
    :pswitch_26
    invoke-static {}, Lsi;->d()Ljava/lang/String;

    .line 441
    move-result-object v1

    .line 442
    goto :goto_2

    .line 443
    :pswitch_27
    invoke-static {}, Lsi;->g()Ljava/lang/String;

    .line 446
    move-result-object v1

    .line 447
    goto :goto_2

    .line 448
    :pswitch_28
    invoke-static {}, Lf30;->s()Ljava/lang/String;

    .line 451
    move-result-object v1

    .line 452
    goto :goto_2

    .line 453
    :pswitch_29
    invoke-static {}, Lf30;->t()Ljava/lang/String;

    .line 456
    move-result-object v1

    .line 457
    goto :goto_2

    .line 458
    :pswitch_2a
    invoke-static {}, Lf30;->g()Ljava/lang/String;

    .line 461
    move-result-object v1

    .line 462
    goto :goto_2

    .line 463
    :pswitch_2b
    invoke-static {}, Lf30;->j()Ljava/lang/String;

    .line 466
    move-result-object v1

    .line 467
    goto :goto_2

    .line 468
    :pswitch_2c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 470
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    invoke-static {}, Lf30;->a()J

    .line 476
    move-result-wide v4

    .line 477
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    move-result-object v1

    .line 487
    goto :goto_2

    .line 488
    :pswitch_2d
    invoke-static {}, Lf30;->z()Ljava/lang/String;

    .line 491
    move-result-object v1

    .line 492
    goto :goto_2

    .line 493
    :pswitch_2e
    invoke-static {}, Lf30;->i()Ljava/lang/String;

    .line 496
    move-result-object v1

    .line 497
    goto :goto_2

    .line 498
    :pswitch_2f
    invoke-static {}, Lf30;->o()Ljava/lang/String;

    .line 501
    move-result-object v1

    .line 502
    goto :goto_2

    .line 503
    :pswitch_30
    invoke-static {}, Lf30;->s()Ljava/lang/String;

    .line 506
    move-result-object v1

    .line 507
    goto :goto_2

    .line 508
    :pswitch_31
    invoke-static {}, Lqf;->a()Ljava/lang/String;

    .line 511
    move-result-object v1

    .line 512
    goto :goto_2

    .line 513
    :pswitch_32
    invoke-static {}, Lf30;->n()Ljava/lang/String;

    .line 516
    move-result-object v1

    .line 517
    goto :goto_2

    .line 518
    :pswitch_33
    invoke-static {}, Lf30;->k()Ljava/lang/String;

    .line 521
    move-result-object v1

    .line 522
    :cond_3
    :goto_2
    :pswitch_34
    new-array p0, v0, [Ljava/lang/Object;

    .line 524
    aput-object v1, p0, v3

    .line 526
    const-string v0, "getAndNetworkParam value={?}"

    .line 528
    invoke-static {v2, v0, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    return-object v1

    .line 532
    nop

    .line 533
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_34
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCppNetworkParam(Lg30;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lg30;->c()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lg30;->d()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lg30;->c()I

    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->nativeGetCppNetworkParam(I)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    const/4 v2, 0x3

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 20
    const/4 v3, 0x0

    .line 21
    aput-object v1, v2, v3

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 28
    aput-object v0, v2, v1

    .line 30
    const/4 v0, 0x2

    .line 31
    aput-object p0, v2, v0

    .line 33
    const-string v0, "NetworkParamNative"

    .line 35
    const-string v1, "getCppNetworkParam name={?},key={?},value={?}"

    .line 37
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    return-object p0
.end method

.method public static getFormatDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->nativeFormatDeviceId(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static native nativeDecryptAes128Cbc(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeEncryptAes128Cbc(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeFormatDeviceId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native nativeGetCppNetworkParam(I)Ljava/lang/String;
.end method

.method public static native nativePostStatisticsMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method
