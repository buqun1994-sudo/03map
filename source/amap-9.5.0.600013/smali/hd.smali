.class public Lhd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrq;


# instance fields
.field public a:Ldd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ldd;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ldd;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lhd;->a:Ldd;

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lnc;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, p1}, Lhd;->c(Landroid/content/Intent;)Lnc;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public b(Lnc;)Landroid/content/Intent;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "[NewProtocol] BroadcastDataHandle"

    .line 6
    const-string v2, "convertDataToClient"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    if-eqz p1, :cond_2

    .line 13
    instance-of v0, p1, Lld;

    .line 15
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, p1

    .line 19
    check-cast v0, Lld;

    .line 21
    invoke-interface {v0}, Lld;->c()Landroid/content/Intent;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p1}, Lnc;->h()I

    .line 30
    move-result v1

    .line 31
    const/4 v2, -0x1

    .line 32
    if-eq v1, v2, :cond_1

    .line 34
    const-string v1, "KEY_TYPE"

    .line 36
    invoke-virtual {p1}, Lnc;->h()I

    .line 39
    move-result p1

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    :cond_1
    return-object v0

    .line 44
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 45
    return-object p1
.end method

.method public c(Landroid/content/Intent;)Lnc;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    const-string v3, "[NewProtocol] BroadcastDataHandle"

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    :try_start_0
    const-string v0, "KEY_TYPE"

    .line 11
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 14
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 18
    move-result-object v0

    .line 19
    const/16 v7, 0x2722

    .line 21
    const/4 v8, 0x2

    .line 22
    const/4 v9, 0x1

    .line 23
    if-eqz v0, :cond_6

    .line 25
    new-array v0, v9, [Ljava/lang/Object;

    .line 27
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 30
    move-result-object v10

    .line 31
    invoke-virtual {v10}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 34
    move-result-object v10

    .line 35
    aput-object v10, v0, v5

    .line 37
    const-string v10, "BroadcastDataHandle handleMessage hasExtra intent = {?}"

    .line 39
    invoke-static {v3, v10, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sget-boolean v0, Li;->a:Z

    .line 44
    if-nez v0, :cond_1

    .line 46
    invoke-static {}, Li;->b()Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v10, 0x0

    .line 54
    goto :goto_3

    .line 55
    :cond_1
    :goto_0
    const-string v0, "EXTRA_REQUESTCODE"

    .line 57
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 60
    move-result v10

    .line 61
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lew;->e(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 68
    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :try_start_2
    const-string v0, "package"

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 74
    move-result-object v12

    .line 75
    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string v0, "action"

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 83
    move-result-object v12

    .line 84
    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v0, "flags"

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    .line 92
    move-result v12

    .line 93
    invoke-virtual {v11, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    goto :goto_2

    .line 97
    :catch_0
    move-exception v0

    .line 98
    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    move-object v11, v4

    .line 101
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    :goto_2
    if-eqz v11, :cond_2

    .line 106
    new-array v0, v9, [Ljava/lang/Object;

    .line 108
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 111
    move-result-object v11

    .line 112
    aput-object v11, v0, v5

    .line 114
    const-string v11, "galtest BroadcastDataHandle handleMessage hasExtra protocol_req:{?}"

    .line 116
    invoke-static {v3, v11, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_2
    :goto_3
    const-string v0, "SIMULATE_SOURCE"

    .line 121
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    invoke-static {}, Lrh;->d()Lrh;

    .line 128
    move-result-object v11

    .line 129
    invoke-virtual {v11}, Lrh;->c()Lgd;

    .line 132
    move-result-object v11

    .line 133
    invoke-virtual {v11, v0}, Lp;->b(Ljava/lang/String;)Z

    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_5

    .line 139
    invoke-static {v6, v2}, Ljd;->b(ILandroid/content/Intent;)Ljava/lang/String;

    .line 142
    move-result-object v0

    .line 143
    const-string v11, "="

    .line 145
    const-string v12, ":"

    .line 147
    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object v11

    .line 151
    const-string v12, ""

    .line 153
    if-ne v6, v7, :cond_3

    .line 155
    const/4 v13, 0x3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v14

    .line 171
    const-string v16, ""

    .line 173
    const-string v17, ""

    .line 175
    const-string v18, ""

    .line 177
    move-object v15, v11

    .line 178
    invoke-static/range {v13 .. v18}, Lzd0;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_3
    invoke-static {}, Lr70;->e()Z

    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_4

    .line 187
    iget-object v0, v1, Lhd;->a:Ldd;

    .line 189
    invoke-virtual {v0}, Ldd;->j()V

    .line 192
    iget-object v0, v1, Lhd;->a:Ldd;

    .line 194
    new-instance v13, Ljava/lang/StringBuilder;

    .line 196
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object v13

    .line 209
    const-string v14, "202012101229"

    .line 211
    invoke-virtual {v0, v11, v13, v14}, Ldd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    iget-object v0, v1, Lhd;->a:Ldd;

    .line 216
    invoke-virtual {v0}, Ldd;->b()V

    .line 219
    :cond_4
    :try_start_3
    const-string v0, "UTF-8"

    .line 221
    invoke-virtual {v11, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 228
    move-result-object v11
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 229
    goto :goto_4

    .line 230
    :catch_2
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 234
    move-result-object v0

    .line 235
    new-array v13, v5, [Ljava/lang/Object;

    .line 237
    invoke-static {v3, v0, v13}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 242
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object v0

    .line 255
    const/4 v12, 0x3

    .line 256
    invoke-static {v12, v11, v0}, Lzd0;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    goto :goto_5

    .line 260
    :cond_5
    const-string v0, "[ALSimulate] simulateDataForBroadcast isNeedCollection == false"

    .line 262
    new-array v11, v5, [Ljava/lang/Object;

    .line 264
    invoke-static {v3, v0, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    goto :goto_5

    .line 268
    :cond_6
    new-array v0, v8, [Ljava/lang/Object;

    .line 270
    aput-object v2, v0, v5

    .line 272
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    move-result-object v10

    .line 276
    aput-object v10, v0, v9

    .line 278
    const-string v10, "BroadcastDataHandle handleMessage not hasExtra\u3000intent = {?}; keyType = {?}"

    .line 280
    invoke-static {v3, v10, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    const/4 v10, 0x0

    .line 284
    :goto_5
    new-instance v0, Ljava/util/HashMap;

    .line 286
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 289
    const-string v11, "keyType"

    .line 291
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 294
    move-result-object v12

    .line 295
    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :try_start_4
    const-string v11, "B001"

    .line 300
    invoke-static {v11, v0}, Lwe0;->b(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 303
    goto :goto_6

    .line 304
    :catchall_0
    move-exception v0

    .line 305
    new-array v11, v8, [Ljava/lang/Object;

    .line 307
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    move-result-object v12

    .line 311
    aput-object v12, v11, v5

    .line 313
    aput-object v0, v11, v9

    .line 315
    const-string v0, "protocolId={?} addBroadcastActionLog throwable:{?}"

    .line 317
    invoke-static {v3, v0, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    :goto_6
    const/16 v0, 0x2721

    .line 322
    if-eq v6, v0, :cond_10

    .line 324
    const-string v0, "acc_is_on"

    .line 326
    if-eq v6, v7, :cond_f

    .line 328
    const/16 v7, 0x2727

    .line 330
    if-eq v6, v7, :cond_e

    .line 332
    const/16 v7, 0x2728

    .line 334
    if-eq v6, v7, :cond_d

    .line 336
    const/16 v7, 0x272f

    .line 338
    if-eq v6, v7, :cond_c

    .line 340
    const/16 v7, 0x2730

    .line 342
    if-eq v6, v7, :cond_b

    .line 344
    const/16 v7, 0x273c

    .line 346
    if-eq v6, v7, :cond_a

    .line 348
    const/16 v7, 0x273d

    .line 350
    if-eq v6, v7, :cond_9

    .line 352
    const/16 v7, 0x2744

    .line 354
    if-eq v6, v7, :cond_8

    .line 356
    const/16 v7, 0x2745

    .line 358
    if-eq v6, v7, :cond_7

    .line 360
    const-string v7, "EXTRA_EXTERNAL_CROSS_CONTROL"

    .line 362
    const-string v11, "EXTRA_EXTERNAL_ENGINE_ID"

    .line 364
    const/4 v12, -0x1

    .line 365
    sparse-switch v6, :sswitch_data_0

    .line 368
    packed-switch v6, :pswitch_data_0

    .line 371
    packed-switch v6, :pswitch_data_1

    .line 374
    packed-switch v6, :pswitch_data_2

    .line 377
    packed-switch v6, :pswitch_data_3

    .line 380
    goto/16 :goto_7

    .line 382
    :pswitch_0
    new-instance v4, Lx1;

    .line 384
    invoke-direct {v4, v2}, Lx1;-><init>(Landroid/content/Intent;)V

    .line 387
    goto/16 :goto_7

    .line 389
    :pswitch_1
    new-instance v4, Lt2;

    .line 391
    invoke-direct {v4, v2}, Lt2;-><init>(Landroid/content/Intent;)V

    .line 394
    goto/16 :goto_7

    .line 396
    :pswitch_2
    new-instance v4, Lxn;

    .line 398
    invoke-direct {v4, v2}, Lxn;-><init>(Landroid/content/Intent;)V

    .line 401
    goto/16 :goto_7

    .line 403
    :pswitch_3
    new-instance v4, Lsc0;

    .line 405
    invoke-direct {v4, v2}, Lsc0;-><init>(Landroid/content/Intent;)V

    .line 408
    goto/16 :goto_7

    .line 410
    :pswitch_4
    new-instance v4, Lwc0;

    .line 412
    invoke-direct {v4, v2}, Lwc0;-><init>(Landroid/content/Intent;)V

    .line 415
    goto/16 :goto_7

    .line 417
    :pswitch_5
    new-instance v4, Lyk;

    .line 419
    invoke-direct {v4, v2}, Lyk;-><init>(Landroid/content/Intent;)V

    .line 422
    goto/16 :goto_7

    .line 424
    :pswitch_6
    new-instance v4, Lxh;

    .line 426
    invoke-direct {v4, v2}, Lxh;-><init>(Landroid/content/Intent;)V

    .line 429
    goto/16 :goto_7

    .line 431
    :pswitch_7
    new-instance v4, Ln20;

    .line 433
    invoke-direct {v4, v2}, Ln20;-><init>(Landroid/content/Intent;)V

    .line 436
    goto/16 :goto_7

    .line 438
    :pswitch_8
    new-instance v4, Lpp;

    .line 440
    invoke-direct {v4, v2}, Lpp;-><init>(Landroid/content/Intent;)V

    .line 443
    goto/16 :goto_7

    .line 445
    :pswitch_9
    new-instance v4, Lvz;

    .line 447
    invoke-direct {v4, v2}, Lvz;-><init>(Landroid/content/Intent;)V

    .line 450
    goto/16 :goto_7

    .line 452
    :pswitch_a
    new-instance v4, Lmi;

    .line 454
    invoke-direct {v4, v2}, Lmi;-><init>(Landroid/content/Intent;)V

    .line 457
    goto/16 :goto_7

    .line 459
    :pswitch_b
    new-instance v4, Lqu;

    .line 461
    invoke-direct {v4, v2}, Lqu;-><init>(Landroid/content/Intent;)V

    .line 464
    goto/16 :goto_7

    .line 466
    :pswitch_c
    new-instance v4, Lru;

    .line 468
    invoke-direct {v4, v2}, Lru;-><init>(Landroid/content/Intent;)V

    .line 471
    goto/16 :goto_7

    .line 473
    :pswitch_d
    new-instance v4, La50;

    .line 475
    invoke-direct {v4}, La50;-><init>()V

    .line 478
    goto/16 :goto_7

    .line 480
    :pswitch_e
    new-instance v4, Lyz;

    .line 482
    invoke-direct {v4, v2}, Lyz;-><init>(Landroid/content/Intent;)V

    .line 485
    goto/16 :goto_7

    .line 487
    :sswitch_0
    new-instance v4, Llg0;

    .line 489
    invoke-direct {v4, v2}, Llg0;-><init>(Landroid/content/Intent;)V

    .line 492
    goto/16 :goto_7

    .line 494
    :sswitch_1
    new-instance v4, Lhg0;

    .line 496
    invoke-direct {v4, v2}, Lhg0;-><init>(Landroid/content/Intent;)V

    .line 499
    goto/16 :goto_7

    .line 501
    :sswitch_2
    new-instance v4, Lyg;

    .line 503
    invoke-direct {v4, v2}, Lyg;-><init>(Landroid/content/Intent;)V

    .line 506
    goto/16 :goto_7

    .line 508
    :sswitch_3
    new-instance v4, Ljj0;

    .line 510
    invoke-direct {v4, v2}, Ljj0;-><init>(Landroid/content/Intent;)V

    .line 513
    goto/16 :goto_7

    .line 515
    :sswitch_4
    new-instance v4, Lyn;

    .line 517
    invoke-direct {v4, v2}, Lyn;-><init>(Landroid/content/Intent;)V

    .line 520
    goto/16 :goto_7

    .line 522
    :sswitch_5
    new-instance v4, Lrn;

    .line 524
    invoke-direct {v4, v2}, Lrn;-><init>(Landroid/content/Intent;)V

    .line 527
    goto/16 :goto_7

    .line 529
    :sswitch_6
    new-instance v4, Lo20;

    .line 531
    invoke-direct {v4, v2}, Lo20;-><init>(Landroid/content/Intent;)V

    .line 534
    goto/16 :goto_7

    .line 536
    :sswitch_7
    new-instance v4, Leb0;

    .line 538
    invoke-direct {v4, v2}, Leb0;-><init>(Landroid/content/Intent;)V

    .line 541
    goto/16 :goto_7

    .line 543
    :sswitch_8
    new-instance v4, Lan;

    .line 545
    invoke-direct {v4, v2}, Lan;-><init>(Landroid/content/Intent;)V

    .line 548
    goto/16 :goto_7

    .line 550
    :sswitch_9
    new-instance v4, Ljo;

    .line 552
    invoke-direct {v4, v2}, Ljo;-><init>(Landroid/content/Intent;)V

    .line 555
    goto/16 :goto_7

    .line 557
    :sswitch_a
    new-instance v4, Lvn;

    .line 559
    invoke-direct {v4, v2}, Lvn;-><init>(Landroid/content/Intent;)V

    .line 562
    goto/16 :goto_7

    .line 564
    :sswitch_b
    new-instance v4, Lpn;

    .line 566
    invoke-direct {v4, v2}, Lpn;-><init>(Landroid/content/Intent;)V

    .line 569
    goto/16 :goto_7

    .line 571
    :sswitch_c
    new-instance v4, Lnn;

    .line 573
    invoke-direct {v4, v2}, Lnn;-><init>(Landroid/content/Intent;)V

    .line 576
    goto/16 :goto_7

    .line 578
    :sswitch_d
    new-instance v4, Lao;

    .line 580
    invoke-direct {v4, v2}, Lao;-><init>(Landroid/content/Intent;)V

    .line 583
    goto/16 :goto_7

    .line 585
    :sswitch_e
    new-instance v4, Lkn;

    .line 587
    invoke-direct {v4, v2}, Lkn;-><init>(Landroid/content/Intent;)V

    .line 590
    goto/16 :goto_7

    .line 592
    :sswitch_f
    new-instance v4, Lin;

    .line 594
    invoke-direct {v4, v2}, Lin;-><init>(Landroid/content/Intent;)V

    .line 597
    goto/16 :goto_7

    .line 599
    :sswitch_10
    new-instance v4, Lrf0;

    .line 601
    invoke-direct {v4, v2}, Lrf0;-><init>(Landroid/content/Intent;)V

    .line 604
    goto/16 :goto_7

    .line 606
    :sswitch_11
    new-instance v4, Lbd;

    .line 608
    invoke-direct {v4, v2}, Lbd;-><init>(Landroid/content/Intent;)V

    .line 611
    goto/16 :goto_7

    .line 613
    :sswitch_12
    new-instance v4, Lhb;

    .line 615
    invoke-direct {v4, v2}, Lhb;-><init>(Landroid/content/Intent;)V

    .line 618
    goto/16 :goto_7

    .line 620
    :sswitch_13
    new-instance v4, Lp50;

    .line 622
    invoke-direct {v4, v2}, Lp50;-><init>(Landroid/content/Intent;)V

    .line 625
    goto/16 :goto_7

    .line 627
    :sswitch_14
    new-instance v4, Ltf;

    .line 629
    invoke-direct {v4, v2}, Ltf;-><init>(Landroid/content/Intent;)V

    .line 632
    goto/16 :goto_7

    .line 634
    :sswitch_15
    new-instance v4, Lhv;

    .line 636
    invoke-direct {v4, v2}, Lhv;-><init>(Landroid/content/Intent;)V

    .line 639
    goto/16 :goto_7

    .line 641
    :sswitch_16
    new-instance v4, La00;

    .line 643
    invoke-direct {v4, v2}, La00;-><init>(Landroid/content/Intent;)V

    .line 646
    goto/16 :goto_7

    .line 648
    :sswitch_17
    new-instance v4, Lr5;

    .line 650
    invoke-direct {v4, v2}, Lr5;-><init>(Landroid/content/Intent;)V

    .line 653
    goto/16 :goto_7

    .line 655
    :sswitch_18
    new-instance v4, Lxg;

    .line 657
    invoke-direct {v4, v2}, Lxg;-><init>(Landroid/content/Intent;)V

    .line 660
    goto/16 :goto_7

    .line 662
    :sswitch_19
    new-instance v4, Lvg;

    .line 664
    invoke-direct {v4, v2}, Lvg;-><init>(Landroid/content/Intent;)V

    .line 667
    goto/16 :goto_7

    .line 669
    :sswitch_1a
    new-instance v4, Lem;

    .line 671
    invoke-direct {v4, v2}, Lem;-><init>(Landroid/content/Intent;)V

    .line 674
    goto/16 :goto_7

    .line 676
    :sswitch_1b
    new-instance v4, Lxz;

    .line 678
    invoke-direct {v4, v2}, Lxz;-><init>(Landroid/content/Intent;)V

    .line 681
    goto/16 :goto_7

    .line 683
    :sswitch_1c
    new-instance v4, Lig0;

    .line 685
    invoke-direct {v4, v2}, Lig0;-><init>(Landroid/content/Intent;)V

    .line 688
    goto/16 :goto_7

    .line 690
    :sswitch_1d
    new-instance v4, Lzh0;

    .line 692
    invoke-direct {v4, v2}, Lzh0;-><init>(Landroid/content/Intent;)V

    .line 695
    goto/16 :goto_7

    .line 697
    :sswitch_1e
    new-instance v4, Lid0;

    .line 699
    invoke-direct {v4, v2}, Lid0;-><init>(Landroid/content/Intent;)V

    .line 702
    goto/16 :goto_7

    .line 704
    :sswitch_1f
    new-instance v4, Lkh0;

    .line 706
    invoke-direct {v4, v2}, Lkh0;-><init>(Landroid/content/Intent;)V

    .line 709
    goto/16 :goto_7

    .line 711
    :sswitch_20
    new-instance v4, Lm50;

    .line 713
    invoke-direct {v4, v2}, Lm50;-><init>(Landroid/content/Intent;)V

    .line 716
    goto/16 :goto_7

    .line 718
    :sswitch_21
    new-instance v4, Lze;

    .line 720
    invoke-direct {v4, v2}, Lze;-><init>(Landroid/content/Intent;)V

    .line 723
    goto/16 :goto_7

    .line 725
    :sswitch_22
    new-instance v4, Lga0;

    .line 727
    invoke-direct {v4, v2}, Lga0;-><init>(Landroid/content/Intent;)V

    .line 730
    goto/16 :goto_7

    .line 732
    :sswitch_23
    new-instance v4, Lbo;

    .line 734
    invoke-direct {v4, v2}, Lbo;-><init>(Landroid/content/Intent;)V

    .line 737
    goto/16 :goto_7

    .line 739
    :sswitch_24
    new-instance v4, Lie;

    .line 741
    invoke-direct {v4, v2}, Lie;-><init>(Landroid/content/Intent;)V

    .line 744
    goto/16 :goto_7

    .line 746
    :sswitch_25
    new-instance v4, Lv60;

    .line 748
    invoke-direct {v4, v2}, Lv60;-><init>(Landroid/content/Intent;)V

    .line 751
    goto/16 :goto_7

    .line 753
    :sswitch_26
    new-instance v4, Llk;

    .line 755
    invoke-direct {v4, v2}, Llk;-><init>(Landroid/content/Intent;)V

    .line 758
    goto/16 :goto_7

    .line 760
    :sswitch_27
    new-instance v4, Lte;

    .line 762
    invoke-direct {v4, v2}, Lte;-><init>(Landroid/content/Intent;)V

    .line 765
    goto/16 :goto_7

    .line 767
    :sswitch_28
    new-instance v4, Lu60;

    .line 769
    invoke-direct {v4, v2}, Lu60;-><init>(Landroid/content/Intent;)V

    .line 772
    goto/16 :goto_7

    .line 774
    :sswitch_29
    new-instance v4, Lhk0;

    .line 776
    invoke-direct {v4, v2}, Lhk0;-><init>(Landroid/content/Intent;)V

    .line 779
    goto/16 :goto_7

    .line 781
    :sswitch_2a
    new-instance v4, Lft;

    .line 783
    invoke-direct {v4, v2}, Lft;-><init>(Landroid/content/Intent;)V

    .line 786
    goto/16 :goto_7

    .line 788
    :sswitch_2b
    new-instance v4, Lf1;

    .line 790
    invoke-direct {v4}, Lf1;-><init>()V

    .line 793
    goto/16 :goto_7

    .line 795
    :sswitch_2c
    new-instance v4, Ley;

    .line 797
    invoke-direct {v4, v2}, Ley;-><init>(Landroid/content/Intent;)V

    .line 800
    goto/16 :goto_7

    .line 802
    :sswitch_2d
    new-instance v4, Lsy;

    .line 804
    invoke-direct {v4, v2}, Lsy;-><init>(Landroid/content/Intent;)V

    .line 807
    goto/16 :goto_7

    .line 809
    :sswitch_2e
    new-instance v4, Lda0;

    .line 811
    invoke-direct {v4, v2}, Lda0;-><init>(Landroid/content/Intent;)V

    .line 814
    goto/16 :goto_7

    .line 816
    :sswitch_2f
    new-instance v4, Lll0;

    .line 818
    invoke-direct {v4, v2}, Lll0;-><init>(Landroid/content/Intent;)V

    .line 821
    goto/16 :goto_7

    .line 823
    :sswitch_30
    new-instance v4, Lth0;

    .line 825
    invoke-direct {v4, v2}, Lth0;-><init>(Landroid/content/Intent;)V

    .line 828
    goto/16 :goto_7

    .line 830
    :sswitch_31
    const-string v0, "EXTRA_CONTROL"

    .line 832
    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 835
    move-result v0

    .line 836
    new-instance v4, Le50;

    .line 838
    sget v2, Le50;->n:I

    .line 840
    invoke-direct {v4, v2, v0}, Le50;-><init>(II)V

    .line 843
    goto/16 :goto_7

    .line 845
    :sswitch_32
    new-instance v4, Lgz;

    .line 847
    invoke-direct {v4, v2}, Lgz;-><init>(Landroid/content/Intent;)V

    .line 850
    goto/16 :goto_7

    .line 852
    :sswitch_33
    const-string v0, "EXTRA_OPTION"

    .line 854
    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 857
    move-result v0

    .line 858
    new-instance v4, Le50;

    .line 860
    sget v2, Le50;->m:I

    .line 862
    invoke-direct {v4, v2, v0}, Le50;-><init>(II)V

    .line 865
    goto/16 :goto_7

    .line 867
    :sswitch_34
    new-instance v4, Lrl;

    .line 869
    invoke-direct {v4, v2}, Lrl;-><init>(Landroid/content/Intent;)V

    .line 872
    goto/16 :goto_7

    .line 874
    :sswitch_35
    new-instance v4, Lkc0;

    .line 876
    invoke-direct {v4, v2}, Lkc0;-><init>(Landroid/content/Intent;)V

    .line 879
    goto/16 :goto_7

    .line 881
    :sswitch_36
    new-instance v4, Li5;

    .line 883
    invoke-direct {v4, v2}, Li5;-><init>(Landroid/content/Intent;)V

    .line 886
    goto/16 :goto_7

    .line 888
    :sswitch_37
    new-instance v4, Lce;

    .line 890
    invoke-direct {v4, v2}, Lce;-><init>(Landroid/content/Intent;)V

    .line 893
    goto/16 :goto_7

    .line 895
    :sswitch_38
    new-instance v4, Lfd0;

    .line 897
    invoke-direct {v4, v2}, Lfd0;-><init>(Landroid/content/Intent;)V

    .line 900
    goto/16 :goto_7

    .line 902
    :sswitch_39
    new-instance v4, Lld0;

    .line 904
    invoke-direct {v4, v2}, Lld0;-><init>(Landroid/content/Intent;)V

    .line 907
    goto/16 :goto_7

    .line 909
    :sswitch_3a
    new-instance v4, Lvl;

    .line 911
    invoke-direct {v4, v2}, Lvl;-><init>(Landroid/content/Intent;)V

    .line 914
    goto/16 :goto_7

    .line 916
    :sswitch_3b
    new-instance v4, Lxh0;

    .line 918
    invoke-direct {v4, v2}, Lxh0;-><init>(Landroid/content/Intent;)V

    .line 921
    goto/16 :goto_7

    .line 923
    :sswitch_3c
    new-instance v4, Lyp;

    .line 925
    invoke-direct {v4, v2}, Lyp;-><init>(Landroid/content/Intent;)V

    .line 928
    goto/16 :goto_7

    .line 930
    :sswitch_3d
    new-instance v4, Lsb;

    .line 932
    invoke-direct {v4, v2}, Lsb;-><init>(Landroid/content/Intent;)V

    .line 935
    goto/16 :goto_7

    .line 937
    :sswitch_3e
    new-instance v4, Lr20;

    .line 939
    invoke-direct {v4, v2}, Lr20;-><init>(Landroid/content/Intent;)V

    .line 942
    goto/16 :goto_7

    .line 944
    :sswitch_3f
    new-instance v4, Lgd0;

    .line 946
    invoke-direct {v4, v2}, Lgd0;-><init>(Landroid/content/Intent;)V

    .line 949
    goto/16 :goto_7

    .line 951
    :sswitch_40
    new-instance v4, Lxd0;

    .line 953
    invoke-direct {v4, v2}, Lxd0;-><init>(Landroid/content/Intent;)V

    .line 956
    goto/16 :goto_7

    .line 958
    :sswitch_41
    new-instance v4, Lo20;

    .line 960
    invoke-direct {v4, v8}, Lo20;-><init>(I)V

    .line 963
    goto/16 :goto_7

    .line 965
    :sswitch_42
    new-instance v4, Lj20;

    .line 967
    invoke-direct {v4, v2}, Lj20;-><init>(Landroid/content/Intent;)V

    .line 970
    goto/16 :goto_7

    .line 972
    :sswitch_43
    new-instance v4, Lma0;

    .line 974
    invoke-direct {v4, v2}, Lma0;-><init>(Landroid/content/Intent;)V

    .line 977
    goto/16 :goto_7

    .line 979
    :sswitch_44
    new-instance v4, Lj10;

    .line 981
    invoke-direct {v4, v2}, Lj10;-><init>(Landroid/content/Intent;)V

    .line 984
    goto/16 :goto_7

    .line 986
    :sswitch_45
    new-instance v4, Lw1;

    .line 988
    invoke-direct {v4}, Lw1;-><init>()V

    .line 991
    goto/16 :goto_7

    .line 993
    :sswitch_46
    new-instance v4, Lxl;

    .line 995
    invoke-direct {v4}, Lxl;-><init>()V

    .line 998
    goto/16 :goto_7

    .line 1000
    :sswitch_47
    new-instance v4, Ltl;

    .line 1002
    invoke-direct {v4}, Ltl;-><init>()V

    .line 1005
    goto/16 :goto_7

    .line 1007
    :sswitch_48
    new-instance v4, Lml;

    .line 1009
    invoke-direct {v4, v2}, Lml;-><init>(Landroid/content/Intent;)V

    .line 1012
    goto/16 :goto_7

    .line 1014
    :sswitch_49
    new-instance v4, Ldl;

    .line 1016
    invoke-direct {v4, v2}, Ldl;-><init>(Landroid/content/Intent;)V

    .line 1019
    goto/16 :goto_7

    .line 1021
    :sswitch_4a
    new-instance v4, Lcl;

    .line 1023
    invoke-direct {v4, v2}, Lcl;-><init>(Landroid/content/Intent;)V

    .line 1026
    goto/16 :goto_7

    .line 1028
    :sswitch_4b
    new-instance v4, Lty;

    .line 1030
    invoke-direct {v4, v2}, Lty;-><init>(Landroid/content/Intent;)V

    .line 1033
    goto/16 :goto_7

    .line 1035
    :sswitch_4c
    const-string v0, "EXTRA_EXTERNAL_DYNAMIC_LEVEL_LOCK"

    .line 1037
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1040
    move-result v0

    .line 1041
    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1044
    move-result v2

    .line 1045
    new-instance v4, Lol;

    .line 1047
    invoke-direct {v4, v0, v2}, Lol;-><init>(ZI)V

    .line 1050
    goto/16 :goto_7

    .line 1052
    :sswitch_4d
    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1055
    move-result v0

    .line 1056
    const-string v4, "EXTRA_EXTERNAL_CROSS_TYPE"

    .line 1058
    invoke-virtual {v2, v4, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1061
    move-result v4

    .line 1062
    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1065
    move-result v2

    .line 1066
    new-instance v7, Lpl;

    .line 1068
    invoke-direct {v7, v0, v4, v2}, Lpl;-><init>(IIZ)V

    .line 1071
    move-object v4, v7

    .line 1072
    goto/16 :goto_7

    .line 1074
    :sswitch_4e
    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1077
    move-result v0

    .line 1078
    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 1081
    move-result v2

    .line 1082
    new-instance v4, Lnl;

    .line 1084
    invoke-direct {v4, v0, v2}, Lnl;-><init>(IZ)V

    .line 1087
    goto/16 :goto_7

    .line 1089
    :sswitch_4f
    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1092
    move-result v0

    .line 1093
    const-string v4, "EXTRA_EXTERNAL_MAP_LEVEL"

    .line 1095
    invoke-virtual {v2, v4, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1098
    move-result v4

    .line 1099
    const-string v7, "EXTRA_EXTERNAL_MAP_MODE"

    .line 1101
    invoke-virtual {v2, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1104
    move-result v7

    .line 1105
    const-string v11, "EXTRA_EXTERNAL_MAP_POSITION"

    .line 1107
    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1110
    move-result v2

    .line 1111
    new-instance v11, Lll;

    .line 1113
    invoke-direct {v11, v0, v4, v7, v2}, Lll;-><init>(IIII)V

    .line 1116
    move-object v4, v11

    .line 1117
    goto/16 :goto_7

    .line 1119
    :sswitch_50
    new-instance v4, Lvc;

    .line 1121
    invoke-direct {v4, v2}, Lvc;-><init>(Landroid/content/Intent;)V

    .line 1124
    goto/16 :goto_7

    .line 1126
    :sswitch_51
    new-instance v4, Lvc;

    .line 1128
    invoke-direct {v4, v2}, Lvc;-><init>(Landroid/content/Intent;)V

    .line 1131
    goto/16 :goto_7

    .line 1133
    :sswitch_52
    new-instance v4, Lf50;

    .line 1135
    invoke-direct {v4, v2}, Lf50;-><init>(Landroid/content/Intent;)V

    .line 1138
    goto/16 :goto_7

    .line 1140
    :sswitch_53
    new-instance v4, Ld60;

    .line 1142
    invoke-direct {v4, v2}, Ld60;-><init>(Landroid/content/Intent;)V

    .line 1145
    goto/16 :goto_7

    .line 1147
    :pswitch_f
    :sswitch_54
    new-instance v4, Lv5;

    .line 1149
    invoke-direct {v4, v2}, Lv5;-><init>(Landroid/content/Intent;)V

    .line 1152
    goto/16 :goto_7

    .line 1154
    :sswitch_55
    new-instance v4, Lce0;

    .line 1156
    invoke-direct {v4, v2}, Lce0;-><init>(Landroid/content/Intent;)V

    .line 1159
    goto/16 :goto_7

    .line 1161
    :sswitch_56
    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1164
    new-instance v4, Lw;

    .line 1166
    invoke-direct {v4, v2}, Lw;-><init>(Landroid/content/Intent;)V

    .line 1169
    goto/16 :goto_7

    .line 1171
    :sswitch_57
    new-instance v4, Lsn;

    .line 1173
    invoke-direct {v4, v2}, Lsn;-><init>(Landroid/content/Intent;)V

    .line 1176
    goto/16 :goto_7

    .line 1178
    :sswitch_58
    new-instance v4, Lse0;

    .line 1180
    invoke-direct {v4, v2}, Lse0;-><init>(Landroid/content/Intent;)V

    .line 1183
    goto/16 :goto_7

    .line 1185
    :sswitch_59
    new-instance v4, Lvh0;

    .line 1187
    invoke-direct {v4}, Lvh0;-><init>()V

    .line 1190
    goto/16 :goto_7

    .line 1192
    :sswitch_5a
    new-instance v4, Lmd0;

    .line 1194
    invoke-direct {v4, v2}, Lmd0;-><init>(Landroid/content/Intent;)V

    .line 1197
    goto/16 :goto_7

    .line 1199
    :sswitch_5b
    new-instance v4, Luw;

    .line 1201
    invoke-direct {v4}, Luw;-><init>()V

    .line 1204
    goto/16 :goto_7

    .line 1206
    :sswitch_5c
    new-instance v4, Ltw;

    .line 1208
    invoke-direct {v4}, Ltw;-><init>()V

    .line 1211
    goto/16 :goto_7

    .line 1213
    :sswitch_5d
    new-instance v4, Lww;

    .line 1215
    invoke-direct {v4, v2}, Lww;-><init>(Landroid/content/Intent;)V

    .line 1218
    goto/16 :goto_7

    .line 1220
    :sswitch_5e
    const-string v0, "BroadcastDataHandle"

    .line 1222
    const-string v4, "TYPE_EXITAPP 10021"

    .line 1224
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    new-instance v4, Lfl;

    .line 1229
    invoke-direct {v4, v2}, Lfl;-><init>(Landroid/content/Intent;)V

    .line 1232
    goto/16 :goto_7

    .line 1234
    :sswitch_5f
    new-instance v4, Lw40;

    .line 1236
    invoke-direct {v4, v2}, Lw40;-><init>(Landroid/content/Intent;)V

    .line 1239
    goto/16 :goto_7

    .line 1241
    :sswitch_60
    new-instance v4, Lo60;

    .line 1243
    invoke-direct {v4, v2}, Lo60;-><init>(Landroid/content/Intent;)V

    .line 1246
    goto/16 :goto_7

    .line 1248
    :sswitch_61
    new-instance v4, Lxe0;

    .line 1250
    invoke-direct {v4, v2}, Lxe0;-><init>(Landroid/content/Intent;)V

    .line 1253
    goto/16 :goto_7

    .line 1255
    :sswitch_62
    new-instance v4, Lo20;

    .line 1257
    invoke-direct {v4, v12}, Lo20;-><init>(I)V

    .line 1260
    goto/16 :goto_7

    .line 1262
    :sswitch_63
    new-instance v4, Ltd0;

    .line 1264
    invoke-direct {v4, v2}, Ltd0;-><init>(Landroid/content/Intent;)V

    .line 1267
    goto :goto_7

    .line 1268
    :sswitch_64
    new-instance v4, Lib0;

    .line 1270
    invoke-direct {v4, v2}, Lib0;-><init>(Landroid/content/Intent;)V

    .line 1273
    goto :goto_7

    .line 1274
    :sswitch_65
    new-instance v4, Lhb0;

    .line 1276
    invoke-direct {v4, v2}, Lhb0;-><init>(Landroid/content/Intent;)V

    .line 1279
    goto :goto_7

    .line 1280
    :sswitch_66
    new-instance v4, Lq20;

    .line 1282
    invoke-direct {v4, v2}, Lq20;-><init>(Landroid/content/Intent;)V

    .line 1285
    goto :goto_7

    .line 1286
    :sswitch_67
    new-instance v4, Lx10;

    .line 1288
    sget v0, Lx10;->o:I

    .line 1290
    invoke-direct {v4, v2, v0}, Lx10;-><init>(Landroid/content/Intent;I)V

    .line 1293
    goto :goto_7

    .line 1294
    :sswitch_68
    new-instance v4, Lba0;

    .line 1296
    invoke-direct {v4}, Lba0;-><init>()V

    .line 1299
    goto :goto_7

    .line 1300
    :cond_7
    new-instance v4, Ltl0;

    .line 1302
    invoke-direct {v4, v2}, Ltl0;-><init>(Landroid/content/Intent;)V

    .line 1305
    goto :goto_7

    .line 1306
    :cond_8
    new-instance v4, Lrc0;

    .line 1308
    invoke-direct {v4, v2}, Lrc0;-><init>(Landroid/content/Intent;)V

    .line 1311
    goto :goto_7

    .line 1312
    :cond_9
    new-instance v4, Lmn;

    .line 1314
    invoke-direct {v4, v2}, Lmn;-><init>(Landroid/content/Intent;)V

    .line 1317
    goto :goto_7

    .line 1318
    :cond_a
    new-instance v4, Lkd0;

    .line 1320
    invoke-direct {v4, v2}, Lkd0;-><init>(Landroid/content/Intent;)V

    .line 1323
    goto :goto_7

    .line 1324
    :cond_b
    new-instance v4, Ljb0;

    .line 1326
    invoke-direct {v4, v2}, Ljb0;-><init>(Landroid/content/Intent;)V

    .line 1329
    goto :goto_7

    .line 1330
    :cond_c
    new-instance v4, Ldo;

    .line 1332
    invoke-direct {v4, v2}, Ldo;-><init>(Landroid/content/Intent;)V

    .line 1335
    goto :goto_7

    .line 1336
    :cond_d
    new-instance v4, Ly5;

    .line 1338
    invoke-direct {v4, v2}, Ly5;-><init>(Landroid/content/Intent;)V

    .line 1341
    goto :goto_7

    .line 1342
    :cond_e
    new-instance v4, Lpw;

    .line 1344
    invoke-direct {v4, v2}, Lpw;-><init>(Landroid/content/Intent;)V

    .line 1347
    goto :goto_7

    .line 1348
    :cond_f
    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1351
    new-instance v4, Lw;

    .line 1353
    invoke-direct {v4, v2}, Lw;-><init>(Landroid/content/Intent;)V

    .line 1356
    goto :goto_7

    .line 1357
    :cond_10
    new-instance v4, Lgk0;

    .line 1359
    invoke-direct {v4, v2}, Lgk0;-><init>(Landroid/content/Intent;)V

    .line 1362
    :goto_7
    if-eqz v4, :cond_13

    .line 1364
    invoke-virtual {v4, v6}, Lnc;->t(I)V

    .line 1367
    sget-boolean v0, Li;->a:Z

    .line 1369
    if-nez v0, :cond_11

    .line 1371
    invoke-static {}, Li;->b()Z

    .line 1374
    move-result v0

    .line 1375
    if-eqz v0, :cond_12

    .line 1377
    :cond_11
    invoke-virtual {v4, v10}, Lnc;->u(I)V

    .line 1380
    :cond_12
    new-array v0, v8, [Ljava/lang/Object;

    .line 1382
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1385
    move-result-object v2

    .line 1386
    aput-object v2, v0, v5

    .line 1388
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1391
    move-result-object v2

    .line 1392
    aput-object v2, v0, v9

    .line 1394
    const-string v2, "galtest protocolId:{?} requestCode:{?}"

    .line 1396
    invoke-static {v3, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1399
    :cond_13
    return-object v4

    .line 1400
    :catch_3
    move-exception v0

    .line 1401
    const-string v2, "handleDataToAction"

    .line 1403
    new-array v5, v5, [Ljava/lang/Object;

    .line 1405
    invoke-static {v3, v2, v0, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1408
    return-object v4

    .line 1409
    :sswitch_data_0
    .sparse-switch
        0x2713 -> :sswitch_68
        0x2714 -> :sswitch_67
        0x2715 -> :sswitch_66
        0x2716 -> :sswitch_65
        0x2717 -> :sswitch_64
        0x2718 -> :sswitch_63
        0x2719 -> :sswitch_62
        0x271a -> :sswitch_61
        0x271b -> :sswitch_60
        0x271c -> :sswitch_60
        0x271d -> :sswitch_60
        0x271e -> :sswitch_5f
        0x2725 -> :sswitch_5e
        0x2732 -> :sswitch_5d
        0x274d -> :sswitch_5c
        0x274e -> :sswitch_5b
        0x2750 -> :sswitch_5a
        0x2754 -> :sswitch_59
        0x2756 -> :sswitch_58
        0x2757 -> :sswitch_57
        0x2759 -> :sswitch_56
        0x275c -> :sswitch_55
        0x275d -> :sswitch_54
        0x275e -> :sswitch_53
        0x2761 -> :sswitch_52
        0x2775 -> :sswitch_51
        0x2776 -> :sswitch_50
        0x2778 -> :sswitch_4f
        0x2779 -> :sswitch_4e
        0x277a -> :sswitch_4d
        0x277b -> :sswitch_4c
        0x277d -> :sswitch_4b
        0x2784 -> :sswitch_4a
        0x2786 -> :sswitch_49
        0x2788 -> :sswitch_48
        0x2af9 -> :sswitch_47
        0x2afa -> :sswitch_46
        0x2afb -> :sswitch_45
        0x2ee4 -> :sswitch_44
        0x2ee6 -> :sswitch_5a
        0x2ee7 -> :sswitch_43
        0x2eeb -> :sswitch_42
        0x2eec -> :sswitch_41
        0x2eed -> :sswitch_40
        0x2f44 -> :sswitch_3f
        0x2f48 -> :sswitch_3e
        0x2f4a -> :sswitch_3d
        0x2f4b -> :sswitch_3c
        0x2f4c -> :sswitch_3b
        0x2f4d -> :sswitch_3a
        0x2f4f -> :sswitch_39
        0x2f50 -> :sswitch_38
        0x2f52 -> :sswitch_37
        0x2f54 -> :sswitch_36
        0x2fa9 -> :sswitch_35
        0x2faa -> :sswitch_34
        0x2fab -> :sswitch_33
        0x2fac -> :sswitch_32
        0x300d -> :sswitch_31
        0x3071 -> :sswitch_30
        0x3073 -> :sswitch_2f
        0x3074 -> :sswitch_2e
        0x32c9 -> :sswitch_2d
        0x32ca -> :sswitch_2c
        0x32cd -> :sswitch_44
        0x32d6 -> :sswitch_2b
        0x32dc -> :sswitch_2a
        0x32dd -> :sswitch_29
        0x32de -> :sswitch_28
        0x32df -> :sswitch_27
        0x32e0 -> :sswitch_26
        0x32e1 -> :sswitch_25
        0x32e3 -> :sswitch_24
        0x32e5 -> :sswitch_23
        0x32e6 -> :sswitch_22
        0x32e8 -> :sswitch_21
        0x32eb -> :sswitch_20
        0x32ed -> :sswitch_1f
        0x32f0 -> :sswitch_1e
        0x36be -> :sswitch_1d
        0x4eea -> :sswitch_1c
        0xea71 -> :sswitch_1b
        0xea73 -> :sswitch_1a
        0xea76 -> :sswitch_19
        0xea78 -> :sswitch_18
        0xea79 -> :sswitch_17
        0xea7a -> :sswitch_16
        0xea7f -> :sswitch_15
        0xea81 -> :sswitch_14
        0xea82 -> :sswitch_13
        0xea83 -> :sswitch_12
        0xea84 -> :sswitch_11
        0xea85 -> :sswitch_10
        0xea88 -> :sswitch_f
        0xea89 -> :sswitch_e
        0xea8d -> :sswitch_d
        0xea8e -> :sswitch_c
        0xea8f -> :sswitch_b
        0xea91 -> :sswitch_a
        0xea95 -> :sswitch_9
        0xea96 -> :sswitch_8
        0xea98 -> :sswitch_7
        0xea99 -> :sswitch_6
        0xea9a -> :sswitch_5
        0xeaa7 -> :sswitch_4
        0xeaa8 -> :sswitch_3
        0xeaab -> :sswitch_2
        0x1046a -> :sswitch_1
        0x15f91 -> :sswitch_0
    .end sparse-switch

    .line 1847
    :pswitch_data_0
    .packed-switch 0x272b
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch

    .line 1857
    :pswitch_data_1
    .packed-switch 0x2734
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 1871
    :pswitch_data_2
    .packed-switch 0x273f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 1883
    :pswitch_data_3
    .packed-switch 0x2747
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
