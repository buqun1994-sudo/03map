.class public Lsv;
.super Lmc;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmc;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lsv;->b:Z

    .line 7
    return-void
.end method


# virtual methods
.method public createRealChannelImpl()Leq;
    .locals 1

    .line 1
    const/16 v0, 0x3b07

    .line 3
    invoke-virtual {p0, v0}, Lsv;->getStringValue(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p0}, Lre;->a(Ljava/lang/String;Leq;)Leq;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "JiangHuaiBaseImpl"

    .line 6
    const-string v2, "addFlags FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    move-result-object p1

    .line 15
    const/high16 v0, -0x80000000

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 20
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 12

    .line 1
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v0, v2, v3

    .line 9
    const-string v4, "JiangHuaiBaseImpl"

    .line 11
    const-string v5, "Build.ID={?}"

    .line 13
    invoke-static {v4, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v2

    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x3

    .line 22
    const/4 v7, 0x2

    .line 23
    const-string v8, ""

    .line 25
    const-string v9, "S4"

    .line 27
    if-nez v2, :cond_2

    .line 29
    const-string v2, "JAC_S432"

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 37
    const-string v0, "C04010268015"

    .line 39
    return-object v0

    .line 40
    :cond_0
    const-string v2, "S4_06F"

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 48
    const-string v0, "C04010268014"

    .line 50
    return-object v0

    .line 51
    :cond_1
    const-string v2, "\\."

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    array-length v2, v0

    .line 58
    if-ne v2, v5, :cond_2

    .line 60
    aget-object v2, v0, v7

    .line 62
    aget-object v0, v0, v6

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move-object v0, v8

    .line 66
    move-object v2, v9

    .line 67
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 70
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 73
    move-result v10

    .line 74
    const/4 v11, -0x1

    .line 75
    sparse-switch v10, :sswitch_data_0

    .line 78
    goto/16 :goto_1

    .line 80
    :sswitch_0
    const-string v9, "iA432"

    .line 82
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v9

    .line 86
    if-nez v9, :cond_3

    .line 88
    goto/16 :goto_1

    .line 90
    :cond_3
    const/16 v11, 0x14

    .line 92
    goto/16 :goto_1

    .line 94
    :sswitch_1
    const-string v9, "P3332"

    .line 96
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result v9

    .line 100
    if-nez v9, :cond_4

    .line 102
    goto/16 :goto_1

    .line 104
    :cond_4
    const/16 v11, 0x13

    .line 106
    goto/16 :goto_1

    .line 108
    :sswitch_2
    const-string v9, "LE6A6"

    .line 110
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v9

    .line 114
    if-nez v9, :cond_5

    .line 116
    goto/16 :goto_1

    .line 118
    :cond_5
    const/16 v11, 0x12

    .line 120
    goto/16 :goto_1

    .line 122
    :sswitch_3
    const-string v9, "IEVS4"

    .line 124
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result v9

    .line 128
    if-nez v9, :cond_6

    .line 130
    goto/16 :goto_1

    .line 132
    :cond_6
    const/16 v11, 0x11

    .line 134
    goto/16 :goto_1

    .line 136
    :sswitch_4
    const-string v9, "IEV6E"

    .line 138
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v9

    .line 142
    if-nez v9, :cond_7

    .line 144
    goto/16 :goto_1

    .line 146
    :cond_7
    const/16 v11, 0x10

    .line 148
    goto/16 :goto_1

    .line 150
    :sswitch_5
    const-string v9, "1A432"

    .line 152
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    move-result v9

    .line 156
    if-nez v9, :cond_8

    .line 158
    goto/16 :goto_1

    .line 160
    :cond_8
    const/16 v11, 0xf

    .line 162
    goto/16 :goto_1

    .line 164
    :sswitch_6
    const-string v9, "0X811"

    .line 166
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v9

    .line 170
    if-nez v9, :cond_9

    .line 172
    goto/16 :goto_1

    .line 174
    :cond_9
    const/16 v11, 0xe

    .line 176
    goto/16 :goto_1

    .line 178
    :sswitch_7
    const-string v9, "0S811"

    .line 180
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result v9

    .line 184
    if-nez v9, :cond_a

    .line 186
    goto/16 :goto_1

    .line 188
    :cond_a
    const/16 v11, 0xd

    .line 190
    goto/16 :goto_1

    .line 192
    :sswitch_8
    const-string v9, "0S011"

    .line 194
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    move-result v9

    .line 198
    if-nez v9, :cond_b

    .line 200
    goto/16 :goto_1

    .line 202
    :cond_b
    const/16 v11, 0xc

    .line 204
    goto/16 :goto_1

    .line 206
    :sswitch_9
    const-string v9, "0N748"

    .line 208
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    move-result v9

    .line 212
    if-nez v9, :cond_c

    .line 214
    goto/16 :goto_1

    .line 216
    :cond_c
    const/16 v11, 0xb

    .line 218
    goto/16 :goto_1

    .line 220
    :sswitch_a
    const-string v9, "0E50A"

    .line 222
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    move-result v9

    .line 226
    if-nez v9, :cond_d

    .line 228
    goto/16 :goto_1

    .line 230
    :cond_d
    const/16 v11, 0xa

    .line 232
    goto/16 :goto_1

    .line 234
    :sswitch_b
    const-string v9, "0E10X"

    .line 236
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    move-result v9

    .line 240
    if-nez v9, :cond_e

    .line 242
    goto/16 :goto_1

    .line 244
    :cond_e
    const/16 v11, 0x9

    .line 246
    goto/16 :goto_1

    .line 248
    :sswitch_c
    const-string v9, "0A432"

    .line 250
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    move-result v9

    .line 254
    if-nez v9, :cond_f

    .line 256
    goto/16 :goto_1

    .line 258
    :cond_f
    const/16 v11, 0x8

    .line 260
    goto :goto_1

    .line 261
    :sswitch_d
    const-string v9, "000S5"

    .line 263
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    move-result v9

    .line 267
    if-nez v9, :cond_10

    .line 269
    goto :goto_1

    .line 270
    :cond_10
    const/4 v11, 0x7

    .line 271
    goto :goto_1

    .line 272
    :sswitch_e
    const-string v9, "000M4"

    .line 274
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    move-result v9

    .line 278
    if-nez v9, :cond_11

    .line 280
    goto :goto_1

    .line 281
    :cond_11
    const/4 v11, 0x6

    .line 282
    goto :goto_1

    .line 283
    :sswitch_f
    const-string v9, "000M3"

    .line 285
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    move-result v9

    .line 289
    if-nez v9, :cond_12

    .line 291
    goto :goto_1

    .line 292
    :cond_12
    const/4 v11, 0x5

    .line 293
    goto :goto_1

    .line 294
    :sswitch_10
    const-string v9, "000L6"

    .line 296
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    move-result v9

    .line 300
    if-nez v9, :cond_13

    .line 302
    goto :goto_1

    .line 303
    :cond_13
    const/4 v11, 0x4

    .line 304
    goto :goto_1

    .line 305
    :sswitch_11
    const-string v9, "M432"

    .line 307
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    move-result v9

    .line 311
    if-nez v9, :cond_14

    .line 313
    goto :goto_1

    .line 314
    :cond_14
    const/4 v11, 0x3

    .line 315
    goto :goto_1

    .line 316
    :sswitch_12
    const-string v9, "S7"

    .line 318
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 321
    move-result v9

    .line 322
    if-nez v9, :cond_15

    .line 324
    goto :goto_1

    .line 325
    :cond_15
    const/4 v11, 0x2

    .line 326
    goto :goto_1

    .line 327
    :sswitch_13
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    move-result v9

    .line 331
    if-nez v9, :cond_16

    .line 333
    goto :goto_1

    .line 334
    :cond_16
    const/4 v11, 0x1

    .line 335
    goto :goto_1

    .line 336
    :sswitch_14
    const-string v9, "IEVA60"

    .line 338
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    move-result v9

    .line 342
    if-nez v9, :cond_17

    .line 344
    goto :goto_1

    .line 345
    :cond_17
    const/4 v11, 0x0

    .line 346
    :goto_1
    const-string v9, "unknow iterationType {?}"

    .line 348
    const-string v10, "00001"

    .line 350
    packed-switch v11, :pswitch_data_0

    .line 353
    new-array v9, v1, [Ljava/lang/Object;

    .line 355
    aput-object v2, v9, v3

    .line 357
    const-string v10, "unknow carType by:{?}"

    .line 359
    invoke-static {v4, v10, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    goto/16 :goto_2

    .line 364
    :pswitch_0
    const-string v8, "C04010268013"

    .line 366
    goto/16 :goto_2

    .line 368
    :pswitch_1
    const-string v8, "C04010268017"

    .line 370
    goto/16 :goto_2

    .line 372
    :pswitch_2
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    move-result v10

    .line 376
    if-eqz v10, :cond_18

    .line 378
    const-string v8, "C04010268028"

    .line 380
    goto/16 :goto_2

    .line 382
    :cond_18
    new-array v10, v1, [Ljava/lang/Object;

    .line 384
    aput-object v0, v10, v3

    .line 386
    invoke-static {v4, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    goto/16 :goto_2

    .line 391
    :pswitch_3
    const-string v8, "C04010268008"

    .line 393
    goto/16 :goto_2

    .line 395
    :pswitch_4
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    move-result v10

    .line 399
    if-eqz v10, :cond_19

    .line 401
    iput-boolean v1, p0, Lsv;->b:Z

    .line 403
    const-string v8, "C04010268020"

    .line 405
    goto/16 :goto_2

    .line 407
    :cond_19
    new-array v10, v1, [Ljava/lang/Object;

    .line 409
    aput-object v0, v10, v3

    .line 411
    invoke-static {v4, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    goto/16 :goto_2

    .line 416
    :pswitch_5
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    move-result v10

    .line 420
    if-eqz v10, :cond_1a

    .line 422
    const-string v8, "C04010268021"

    .line 424
    goto/16 :goto_2

    .line 426
    :cond_1a
    new-array v10, v1, [Ljava/lang/Object;

    .line 428
    aput-object v0, v10, v3

    .line 430
    invoke-static {v4, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    goto/16 :goto_2

    .line 435
    :pswitch_6
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    move-result v10

    .line 439
    if-eqz v10, :cond_1b

    .line 441
    const-string v8, "C04010268023"

    .line 443
    goto/16 :goto_2

    .line 445
    :cond_1b
    new-array v10, v1, [Ljava/lang/Object;

    .line 447
    aput-object v0, v10, v3

    .line 449
    invoke-static {v4, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    goto/16 :goto_2

    .line 454
    :pswitch_7
    const-string v8, "C04010268018"

    .line 456
    goto/16 :goto_2

    .line 458
    :pswitch_8
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 461
    move-result v10

    .line 462
    if-eqz v10, :cond_1c

    .line 464
    const-string v8, "C04010268029"

    .line 466
    goto/16 :goto_2

    .line 468
    :cond_1c
    new-array v10, v1, [Ljava/lang/Object;

    .line 470
    aput-object v0, v10, v3

    .line 472
    invoke-static {v4, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    goto/16 :goto_2

    .line 477
    :pswitch_9
    const-string v8, "C04010268011"

    .line 479
    goto/16 :goto_2

    .line 481
    :pswitch_a
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    move-result v10

    .line 485
    if-eqz v10, :cond_1d

    .line 487
    const-string v8, "C04010268024"

    .line 489
    goto/16 :goto_2

    .line 491
    :cond_1d
    new-array v10, v1, [Ljava/lang/Object;

    .line 493
    aput-object v0, v10, v3

    .line 495
    invoke-static {v4, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    goto :goto_2

    .line 499
    :pswitch_b
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    move-result v10

    .line 503
    if-eqz v10, :cond_1e

    .line 505
    const-string v8, "C04010268027"

    .line 507
    goto :goto_2

    .line 508
    :cond_1e
    new-array v10, v1, [Ljava/lang/Object;

    .line 510
    aput-object v0, v10, v3

    .line 512
    invoke-static {v4, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    goto :goto_2

    .line 516
    :pswitch_c
    const-string v8, "C04010268009"

    .line 518
    goto :goto_2

    .line 519
    :pswitch_d
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    move-result v10

    .line 523
    if-eqz v10, :cond_1f

    .line 525
    const-string v8, "C04010268022"

    .line 527
    goto :goto_2

    .line 528
    :cond_1f
    new-array v10, v1, [Ljava/lang/Object;

    .line 530
    aput-object v0, v10, v3

    .line 532
    invoke-static {v4, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    goto :goto_2

    .line 536
    :pswitch_e
    const-string v8, "C04010268010"

    .line 538
    goto :goto_2

    .line 539
    :pswitch_f
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    move-result v10

    .line 543
    if-eqz v10, :cond_20

    .line 545
    const-string v8, "C04010268026"

    .line 547
    goto :goto_2

    .line 548
    :cond_20
    new-array v10, v1, [Ljava/lang/Object;

    .line 550
    aput-object v0, v10, v3

    .line 552
    invoke-static {v4, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    goto :goto_2

    .line 556
    :pswitch_10
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 559
    move-result v10

    .line 560
    if-eqz v10, :cond_21

    .line 562
    const-string v8, "C04010268025"

    .line 564
    goto :goto_2

    .line 565
    :cond_21
    new-array v10, v1, [Ljava/lang/Object;

    .line 567
    aput-object v0, v10, v3

    .line 569
    invoke-static {v4, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    goto :goto_2

    .line 573
    :pswitch_11
    const-string v8, "C04010268006"

    .line 575
    goto :goto_2

    .line 576
    :pswitch_12
    const-string v8, "C04010268005"

    .line 578
    goto :goto_2

    .line 579
    :pswitch_13
    const-string v8, "C04010268004"

    .line 581
    goto :goto_2

    .line 582
    :pswitch_14
    const-string v8, "C04010268007"

    .line 584
    :goto_2
    new-array v5, v5, [Ljava/lang/Object;

    .line 586
    sget-object v9, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 588
    aput-object v9, v5, v3

    .line 590
    aput-object v2, v5, v1

    .line 592
    aput-object v0, v5, v7

    .line 594
    aput-object v8, v5, v6

    .line 596
    const-string v0, "Build.ID={?}, carType={?} iterationType={?} customId={?}"

    .line 598
    invoke-static {v4, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    return-object v8

    .line 602
    nop

    .line 603
    :sswitch_data_0
    .sparse-switch
        -0x7f79d23f -> :sswitch_14
        0xa41 -> :sswitch_13
        0xa44 -> :sswitch_12
        0x23ca26 -> :sswitch_11
        0x2baf79a -> :sswitch_10
        0x2baf7b6 -> :sswitch_f
        0x2baf7b7 -> :sswitch_e
        0x2baf872 -> :sswitch_d
        0x2c2bde2 -> :sswitch_c
        0x2c483e4 -> :sswitch_b
        0x2c492d1 -> :sswitch_a
        0x2c8b21d -> :sswitch_9
        0x2cadd4d -> :sswitch_8
        0x2cafb55 -> :sswitch_7
        0x2cd4130 -> :sswitch_6
        0x2d0d563 -> :sswitch_5
        0x4255b09 -> :sswitch_4
        0x4255e7b -> :sswitch_3
        0x44f2ab2 -> :sswitch_2
        0x47f4d0f -> :sswitch_1
        0x5e5f99b -> :sswitch_0
    .end sparse-switch

    .line 689
    :pswitch_data_0
    .packed-switch 0x0
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

.method public f()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lsv;->e()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    iget-object v0, p0, Lsv;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "navi_tuid"

    .line 16
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v0, v1, v2

    .line 26
    const-string v2, "JiangHuaiBaseImpl"

    .line 28
    const-string v3, "getDeviceId={?}"

    .line 30
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return-object v0
.end method

.method public getBooleanValue(I)Z
    .locals 4

    .line 1
    const/16 v0, 0x2711

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p1, v0, :cond_4

    .line 7
    const/16 v0, 0x2725

    .line 9
    if-eq p1, v0, :cond_3

    .line 11
    const/16 v0, 0x2726

    .line 13
    if-eq p1, v0, :cond_0

    .line 15
    invoke-super {p0, p1}, Lmc;->getBooleanValue(I)Z

    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    iget-object p1, p0, Lsv;->a:Landroid/content/Context;

    .line 22
    const-string v0, "connectivity"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 30
    if-nez p1, :cond_1

    .line 32
    return v1

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_2

    .line 39
    return v1

    .line 40
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_3
    return v2

    .line 46
    :cond_4
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 48
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 51
    const-string v0, "ACTION_SETTINGS_WIFI_SETTING"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const/high16 v0, 0x10000000

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 61
    const-string v0, "type"

    .line 63
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lsv;->a:Landroid/content/Context;

    .line 68
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    const-string v0, "callSystemNetworkSetting error={?}"

    .line 75
    new-array v1, v1, [Ljava/lang/Object;

    .line 77
    const-string v3, "JiangHuaiBaseImpl"

    .line 79
    invoke-static {v3, v0, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 82
    :goto_0
    return v2
.end method

.method public getIntValue(I)I
    .locals 1

    .line 1
    const/16 v0, 0x753a

    .line 3
    if-eq p1, v0, :cond_1

    .line 5
    const/16 v0, 0x753b

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    invoke-super {p0, p1}, Lmc;->getIntValue(I)I

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    const/4 p1, 0x4

    .line 15
    return p1

    .line 16
    :cond_1
    const/4 p1, 0x3

    .line 17
    return p1
.end method

.method public getSatelliteType(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsv;->b:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lbc;->getSatelliteType(I)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    if-lez p1, :cond_1

    .line 12
    const/16 v0, 0x40

    .line 14
    if-gt p1, v0, :cond_1

    .line 16
    sget p1, Luy;->a:I

    .line 18
    return p1

    .line 19
    :cond_1
    const/16 v0, 0x41

    .line 21
    if-lt p1, v0, :cond_2

    .line 23
    const/16 v0, 0x60

    .line 25
    if-gt p1, v0, :cond_2

    .line 27
    sget p1, Luy;->c:I

    .line 29
    return p1

    .line 30
    :cond_2
    const/16 v0, 0xa1

    .line 32
    if-lt p1, v0, :cond_3

    .line 34
    const/16 v0, 0xc5

    .line 36
    if-gt p1, v0, :cond_3

    .line 38
    sget p1, Luy;->b:I

    .line 40
    return p1

    .line 41
    :cond_3
    sget p1, Luy;->e:I

    .line 43
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x3b07

    .line 3
    if-eq p1, v0, :cond_1

    .line 5
    const v0, 0x9c43

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    invoke-super {p0, p1}, Lmc;->getStringValue(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lsv;->f()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_1
    invoke-virtual {p0}, Lsv;->e()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 30
    invoke-super {p0, p1}, Lmc;->getStringValue(I)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    :cond_2
    return-object v0
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p2, v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lsv;->e()Ljava/lang/String;

    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result v1

    .line 15
    const/4 v2, -0x1

    .line 16
    sparse-switch v1, :sswitch_data_0

    .line 19
    :goto_0
    const/4 v0, -0x1

    .line 20
    goto :goto_1

    .line 21
    :sswitch_0
    const-string v0, "C04010268029"

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p2

    .line 27
    if-nez p2, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x2

    .line 31
    goto :goto_1

    .line 32
    :sswitch_1
    const-string v1, "C04010268027"

    .line 34
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_2

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string v0, "C04010268022"

    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 54
    goto :goto_2

    .line 55
    :pswitch_0
    invoke-virtual {p0, p1}, Lsv;->d(Landroid/app/Activity;)V

    .line 58
    :cond_3
    :goto_2
    return-void

    .line 59
    :sswitch_data_0
    .sparse-switch
        0x7fc9bce4 -> :sswitch_2
        0x7fc9bce9 -> :sswitch_1
        0x7fc9bceb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startup()Z
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lsv;->a:Landroid/content/Context;

    .line 11
    invoke-super {p0}, Lmc;->startup()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method
