.class public abstract Ljj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lsc$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsc$a;

    .line 3
    invoke-direct {v0}, Lsc$a;-><init>()V

    .line 6
    sput-object v0, Ljj;->a:Lsc$a;

    .line 8
    return-void
.end method

.method public static a(Llg;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Llg;->y()Llg$b;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Llg;->O()Llg$b;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Llg;->I()Llg;

    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {p0}, Llg;->I()Llg;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lmg;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {v2}, Llg;->y()Llg$b;

    .line 28
    move-result-object v3

    .line 29
    sget-object v4, Llg$b;->a:Llg$b;

    .line 31
    :cond_1
    if-eqz v2, :cond_2

    .line 33
    invoke-virtual {v2}, Llg;->O()Llg$b;

    .line 36
    move-result-object v2

    .line 37
    sget-object v3, Llg$b;->a:Llg$b;

    .line 39
    :cond_2
    sget-object v2, Llg$b;->a:Llg$b;

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x1

    .line 44
    if-eq v0, v2, :cond_5

    .line 46
    sget-object v6, Llg$b;->b:Llg$b;

    .line 48
    if-eq v0, v6, :cond_5

    .line 50
    sget-object v6, Llg$b;->c:Llg$b;

    .line 52
    if-ne v0, v6, :cond_3

    .line 54
    iget v0, p0, Llg;->p:I

    .line 56
    if-nez v0, :cond_3

    .line 58
    iget v0, p0, Llg;->W:F

    .line 60
    cmpl-float v0, v0, v3

    .line 62
    if-nez v0, :cond_3

    .line 64
    invoke-virtual {p0, v4}, Llg;->V(I)Z

    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_5

    .line 70
    :cond_3
    invoke-virtual {p0}, Llg;->e0()Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 76
    goto :goto_1

    .line 77
    :cond_4
    const/4 v0, 0x0

    .line 78
    goto :goto_2

    .line 79
    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 80
    :goto_2
    if-eq v1, v2, :cond_8

    .line 82
    sget-object v2, Llg$b;->b:Llg$b;

    .line 84
    if-eq v1, v2, :cond_8

    .line 86
    sget-object v2, Llg$b;->c:Llg$b;

    .line 88
    if-ne v1, v2, :cond_6

    .line 90
    iget v1, p0, Llg;->q:I

    .line 92
    if-nez v1, :cond_6

    .line 94
    iget v1, p0, Llg;->W:F

    .line 96
    cmpl-float v1, v1, v3

    .line 98
    if-nez v1, :cond_6

    .line 100
    invoke-virtual {p0, v5}, Llg;->V(I)Z

    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_8

    .line 106
    :cond_6
    invoke-virtual {p0}, Llg;->f0()Z

    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_7

    .line 112
    goto :goto_3

    .line 113
    :cond_7
    const/4 v1, 0x0

    .line 114
    goto :goto_4

    .line 115
    :cond_8
    :goto_3
    const/4 v1, 0x1

    .line 116
    :goto_4
    iget p0, p0, Llg;->W:F

    .line 118
    cmpl-float p0, p0, v3

    .line 120
    if-lez p0, :cond_a

    .line 122
    if-nez v0, :cond_9

    .line 124
    if-eqz v1, :cond_a

    .line 126
    :cond_9
    return v5

    .line 127
    :cond_a
    if-eqz v0, :cond_b

    .line 129
    if-eqz v1, :cond_b

    .line 131
    const/4 v4, 0x1

    .line 132
    :cond_b
    return v4
.end method

.method public static b(Llg;Lsc$b;Z)V
    .locals 13

    .line 1
    instance-of v0, p0, Lmg;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Llg;->d0()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {p0}, Ljj;->a(Llg;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lsc$a;

    .line 19
    invoke-direct {v0}, Lsc$a;-><init>()V

    .line 22
    sget v1, Lsc$a;->k:I

    .line 24
    invoke-static {p0, p1, v0, v1}, Lmg;->z1(Llg;Lsc$b;Lsc$a;I)Z

    .line 27
    :cond_0
    sget-object v0, Lfg$b;->b:Lfg$b;

    .line 29
    invoke-virtual {p0, v0}, Llg;->m(Lfg$b;)Lfg;

    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lfg$b;->d:Lfg$b;

    .line 35
    invoke-virtual {p0, v1}, Llg;->m(Lfg$b;)Lfg;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lfg;->d()I

    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1}, Lfg;->d()I

    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0}, Lfg;->c()Ljava/util/HashSet;

    .line 50
    move-result-object v4

    .line 51
    const/4 v5, 0x0

    .line 52
    const/16 v6, 0x8

    .line 54
    const/4 v7, 0x1

    .line 55
    const/4 v8, 0x0

    .line 56
    if-eqz v4, :cond_c

    .line 58
    invoke-virtual {v0}, Lfg;->m()Z

    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_c

    .line 64
    invoke-virtual {v0}, Lfg;->c()Ljava/util/HashSet;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object v0

    .line 72
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_c

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lfg;

    .line 84
    iget-object v9, v4, Lfg;->d:Llg;

    .line 86
    invoke-static {v9}, Ljj;->a(Llg;)Z

    .line 89
    move-result v10

    .line 90
    invoke-virtual {v9}, Llg;->d0()Z

    .line 93
    move-result v11

    .line 94
    if-eqz v11, :cond_2

    .line 96
    if-eqz v10, :cond_2

    .line 98
    new-instance v11, Lsc$a;

    .line 100
    invoke-direct {v11}, Lsc$a;-><init>()V

    .line 103
    sget v12, Lsc$a;->k:I

    .line 105
    invoke-static {v9, p1, v11, v12}, Lmg;->z1(Llg;Lsc$b;Lsc$a;I)Z

    .line 108
    :cond_2
    invoke-virtual {v9}, Llg;->y()Llg$b;

    .line 111
    move-result-object v11

    .line 112
    sget-object v12, Llg$b;->c:Llg$b;

    .line 114
    if-ne v11, v12, :cond_8

    .line 116
    if-eqz v10, :cond_3

    .line 118
    goto :goto_2

    .line 119
    :cond_3
    invoke-virtual {v9}, Llg;->y()Llg$b;

    .line 122
    move-result-object v10

    .line 123
    if-ne v10, v12, :cond_1

    .line 125
    iget v10, v9, Llg;->t:I

    .line 127
    if-ltz v10, :cond_1

    .line 129
    iget v10, v9, Llg;->s:I

    .line 131
    if-ltz v10, :cond_1

    .line 133
    invoke-virtual {v9}, Llg;->Q()I

    .line 136
    move-result v10

    .line 137
    if-eq v10, v6, :cond_4

    .line 139
    iget v10, v9, Llg;->p:I

    .line 141
    if-nez v10, :cond_1

    .line 143
    invoke-virtual {v9}, Llg;->t()F

    .line 146
    move-result v10

    .line 147
    cmpl-float v10, v10, v5

    .line 149
    if-nez v10, :cond_1

    .line 151
    :cond_4
    invoke-virtual {v9}, Llg;->Z()Z

    .line 154
    move-result v10

    .line 155
    if-nez v10, :cond_1

    .line 157
    invoke-virtual {v9}, Llg;->c0()Z

    .line 160
    move-result v10

    .line 161
    if-nez v10, :cond_1

    .line 163
    iget-object v10, v9, Llg;->H:Lfg;

    .line 165
    if-ne v4, v10, :cond_5

    .line 167
    iget-object v10, v9, Llg;->J:Lfg;

    .line 169
    iget-object v10, v10, Lfg;->f:Lfg;

    .line 171
    if-eqz v10, :cond_5

    .line 173
    invoke-virtual {v10}, Lfg;->m()Z

    .line 176
    move-result v10

    .line 177
    if-nez v10, :cond_6

    .line 179
    :cond_5
    iget-object v10, v9, Llg;->J:Lfg;

    .line 181
    if-ne v4, v10, :cond_7

    .line 183
    iget-object v4, v9, Llg;->H:Lfg;

    .line 185
    iget-object v4, v4, Lfg;->f:Lfg;

    .line 187
    if-eqz v4, :cond_7

    .line 189
    invoke-virtual {v4}, Lfg;->m()Z

    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_7

    .line 195
    :cond_6
    const/4 v4, 0x1

    .line 196
    goto :goto_1

    .line 197
    :cond_7
    const/4 v4, 0x0

    .line 198
    :goto_1
    if-eqz v4, :cond_1

    .line 200
    invoke-virtual {v9}, Llg;->Z()Z

    .line 203
    move-result v4

    .line 204
    if-nez v4, :cond_1

    .line 206
    invoke-static {p0, p1, v9, p2}, Ljj;->e(Llg;Lsc$b;Llg;Z)V

    .line 209
    goto/16 :goto_0

    .line 211
    :cond_8
    :goto_2
    invoke-virtual {v9}, Llg;->d0()Z

    .line 214
    move-result v10

    .line 215
    if-eqz v10, :cond_9

    .line 217
    goto/16 :goto_0

    .line 219
    :cond_9
    iget-object v10, v9, Llg;->H:Lfg;

    .line 221
    if-ne v4, v10, :cond_a

    .line 223
    iget-object v11, v9, Llg;->J:Lfg;

    .line 225
    iget-object v11, v11, Lfg;->f:Lfg;

    .line 227
    if-nez v11, :cond_a

    .line 229
    invoke-virtual {v10}, Lfg;->e()I

    .line 232
    move-result v4

    .line 233
    add-int/2addr v4, v2

    .line 234
    invoke-virtual {v9}, Llg;->R()I

    .line 237
    move-result v10

    .line 238
    add-int/2addr v10, v4

    .line 239
    invoke-virtual {v9, v4, v10}, Llg;->p0(II)V

    .line 242
    invoke-static {v9, p1, p2}, Ljj;->b(Llg;Lsc$b;Z)V

    .line 245
    goto/16 :goto_0

    .line 247
    :cond_a
    iget-object v11, v9, Llg;->J:Lfg;

    .line 249
    if-ne v4, v11, :cond_b

    .line 251
    iget-object v12, v10, Lfg;->f:Lfg;

    .line 253
    if-nez v12, :cond_b

    .line 255
    invoke-virtual {v11}, Lfg;->e()I

    .line 258
    move-result v4

    .line 259
    sub-int v4, v2, v4

    .line 261
    invoke-virtual {v9}, Llg;->R()I

    .line 264
    move-result v10

    .line 265
    sub-int v10, v4, v10

    .line 267
    invoke-virtual {v9, v10, v4}, Llg;->p0(II)V

    .line 270
    invoke-static {v9, p1, p2}, Ljj;->b(Llg;Lsc$b;Z)V

    .line 273
    goto/16 :goto_0

    .line 275
    :cond_b
    if-ne v4, v10, :cond_1

    .line 277
    iget-object v4, v11, Lfg;->f:Lfg;

    .line 279
    if-eqz v4, :cond_1

    .line 281
    invoke-virtual {v4}, Lfg;->m()Z

    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_1

    .line 287
    invoke-virtual {v9}, Llg;->Z()Z

    .line 290
    move-result v4

    .line 291
    if-nez v4, :cond_1

    .line 293
    invoke-static {p1, v9, p2}, Ljj;->d(Lsc$b;Llg;Z)V

    .line 296
    goto/16 :goto_0

    .line 298
    :cond_c
    instance-of v0, p0, Lro;

    .line 300
    if-eqz v0, :cond_d

    .line 302
    return-void

    .line 303
    :cond_d
    invoke-virtual {v1}, Lfg;->c()Ljava/util/HashSet;

    .line 306
    move-result-object v0

    .line 307
    if-eqz v0, :cond_19

    .line 309
    invoke-virtual {v1}, Lfg;->m()Z

    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_19

    .line 315
    invoke-virtual {v1}, Lfg;->c()Ljava/util/HashSet;

    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 322
    move-result-object v0

    .line 323
    :cond_e
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_19

    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    move-result-object v1

    .line 333
    check-cast v1, Lfg;

    .line 335
    iget-object v2, v1, Lfg;->d:Llg;

    .line 337
    invoke-static {v2}, Ljj;->a(Llg;)Z

    .line 340
    move-result v4

    .line 341
    invoke-virtual {v2}, Llg;->d0()Z

    .line 344
    move-result v9

    .line 345
    if-eqz v9, :cond_f

    .line 347
    if-eqz v4, :cond_f

    .line 349
    new-instance v9, Lsc$a;

    .line 351
    invoke-direct {v9}, Lsc$a;-><init>()V

    .line 354
    sget v10, Lsc$a;->k:I

    .line 356
    invoke-static {v2, p1, v9, v10}, Lmg;->z1(Llg;Lsc$b;Lsc$a;I)Z

    .line 359
    :cond_f
    iget-object v9, v2, Llg;->H:Lfg;

    .line 361
    if-ne v1, v9, :cond_10

    .line 363
    iget-object v9, v2, Llg;->J:Lfg;

    .line 365
    iget-object v9, v9, Lfg;->f:Lfg;

    .line 367
    if-eqz v9, :cond_10

    .line 369
    invoke-virtual {v9}, Lfg;->m()Z

    .line 372
    move-result v9

    .line 373
    if-nez v9, :cond_11

    .line 375
    :cond_10
    iget-object v9, v2, Llg;->J:Lfg;

    .line 377
    if-ne v1, v9, :cond_12

    .line 379
    iget-object v9, v2, Llg;->H:Lfg;

    .line 381
    iget-object v9, v9, Lfg;->f:Lfg;

    .line 383
    if-eqz v9, :cond_12

    .line 385
    invoke-virtual {v9}, Lfg;->m()Z

    .line 388
    move-result v9

    .line 389
    if-eqz v9, :cond_12

    .line 391
    :cond_11
    const/4 v9, 0x1

    .line 392
    goto :goto_4

    .line 393
    :cond_12
    const/4 v9, 0x0

    .line 394
    :goto_4
    invoke-virtual {v2}, Llg;->y()Llg$b;

    .line 397
    move-result-object v10

    .line 398
    sget-object v11, Llg$b;->c:Llg$b;

    .line 400
    if-ne v10, v11, :cond_15

    .line 402
    if-eqz v4, :cond_13

    .line 404
    goto :goto_5

    .line 405
    :cond_13
    invoke-virtual {v2}, Llg;->y()Llg$b;

    .line 408
    move-result-object v1

    .line 409
    if-ne v1, v11, :cond_e

    .line 411
    iget v1, v2, Llg;->t:I

    .line 413
    if-ltz v1, :cond_e

    .line 415
    iget v1, v2, Llg;->s:I

    .line 417
    if-ltz v1, :cond_e

    .line 419
    invoke-virtual {v2}, Llg;->Q()I

    .line 422
    move-result v1

    .line 423
    if-eq v1, v6, :cond_14

    .line 425
    iget v1, v2, Llg;->p:I

    .line 427
    if-nez v1, :cond_e

    .line 429
    invoke-virtual {v2}, Llg;->t()F

    .line 432
    move-result v1

    .line 433
    cmpl-float v1, v1, v5

    .line 435
    if-nez v1, :cond_e

    .line 437
    :cond_14
    invoke-virtual {v2}, Llg;->Z()Z

    .line 440
    move-result v1

    .line 441
    if-nez v1, :cond_e

    .line 443
    invoke-virtual {v2}, Llg;->c0()Z

    .line 446
    move-result v1

    .line 447
    if-nez v1, :cond_e

    .line 449
    if-eqz v9, :cond_e

    .line 451
    invoke-virtual {v2}, Llg;->Z()Z

    .line 454
    move-result v1

    .line 455
    if-nez v1, :cond_e

    .line 457
    invoke-static {p0, p1, v2, p2}, Ljj;->e(Llg;Lsc$b;Llg;Z)V

    .line 460
    goto/16 :goto_3

    .line 462
    :cond_15
    :goto_5
    invoke-virtual {v2}, Llg;->d0()Z

    .line 465
    move-result v4

    .line 466
    if-eqz v4, :cond_16

    .line 468
    goto/16 :goto_3

    .line 470
    :cond_16
    iget-object v4, v2, Llg;->H:Lfg;

    .line 472
    if-ne v1, v4, :cond_17

    .line 474
    iget-object v10, v2, Llg;->J:Lfg;

    .line 476
    iget-object v10, v10, Lfg;->f:Lfg;

    .line 478
    if-nez v10, :cond_17

    .line 480
    invoke-virtual {v4}, Lfg;->e()I

    .line 483
    move-result v1

    .line 484
    add-int/2addr v1, v3

    .line 485
    invoke-virtual {v2}, Llg;->R()I

    .line 488
    move-result v4

    .line 489
    add-int/2addr v4, v1

    .line 490
    invoke-virtual {v2, v1, v4}, Llg;->p0(II)V

    .line 493
    invoke-static {v2, p1, p2}, Ljj;->b(Llg;Lsc$b;Z)V

    .line 496
    goto/16 :goto_3

    .line 498
    :cond_17
    iget-object v10, v2, Llg;->J:Lfg;

    .line 500
    if-ne v1, v10, :cond_18

    .line 502
    iget-object v1, v4, Lfg;->f:Lfg;

    .line 504
    if-nez v1, :cond_18

    .line 506
    invoke-virtual {v10}, Lfg;->e()I

    .line 509
    move-result v1

    .line 510
    sub-int v1, v3, v1

    .line 512
    invoke-virtual {v2}, Llg;->R()I

    .line 515
    move-result v4

    .line 516
    sub-int v4, v1, v4

    .line 518
    invoke-virtual {v2, v4, v1}, Llg;->p0(II)V

    .line 521
    invoke-static {v2, p1, p2}, Ljj;->b(Llg;Lsc$b;Z)V

    .line 524
    goto/16 :goto_3

    .line 526
    :cond_18
    if-eqz v9, :cond_e

    .line 528
    invoke-virtual {v2}, Llg;->Z()Z

    .line 531
    move-result v1

    .line 532
    if-nez v1, :cond_e

    .line 534
    invoke-static {p1, v2, p2}, Ljj;->d(Lsc$b;Llg;Z)V

    .line 537
    goto/16 :goto_3

    .line 539
    :cond_19
    return-void
.end method

.method public static c(Lwb;Lsc$b;IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lwb;->b1()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    if-nez p2, :cond_0

    .line 9
    invoke-static {p0, p1, p3}, Ljj;->b(Llg;Lsc$b;Z)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0, p1}, Ljj;->i(Llg;Lsc$b;)V

    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public static d(Lsc$b;Llg;Z)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Llg;->w()F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p1, Llg;->H:Lfg;

    .line 7
    iget-object v1, v1, Lfg;->f:Lfg;

    .line 9
    invoke-virtual {v1}, Lfg;->d()I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p1, Llg;->J:Lfg;

    .line 15
    iget-object v2, v2, Lfg;->f:Lfg;

    .line 17
    invoke-virtual {v2}, Lfg;->d()I

    .line 20
    move-result v2

    .line 21
    iget-object v3, p1, Llg;->H:Lfg;

    .line 23
    invoke-virtual {v3}, Lfg;->e()I

    .line 26
    move-result v3

    .line 27
    add-int/2addr v3, v1

    .line 28
    iget-object v4, p1, Llg;->J:Lfg;

    .line 30
    invoke-virtual {v4}, Lfg;->e()I

    .line 33
    move-result v4

    .line 34
    sub-int v4, v2, v4

    .line 36
    const/high16 v5, 0x3f000000    # 0.5f

    .line 38
    if-ne v1, v2, :cond_0

    .line 40
    const/high16 v0, 0x3f000000    # 0.5f

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v1, v3

    .line 44
    move v2, v4

    .line 45
    :goto_0
    invoke-virtual {p1}, Llg;->R()I

    .line 48
    move-result v3

    .line 49
    sub-int v4, v2, v1

    .line 51
    sub-int/2addr v4, v3

    .line 52
    if-le v1, v2, :cond_1

    .line 54
    sub-int v4, v1, v2

    .line 56
    sub-int/2addr v4, v3

    .line 57
    :cond_1
    int-to-float v4, v4

    .line 58
    mul-float v0, v0, v4

    .line 60
    add-float/2addr v0, v5

    .line 61
    float-to-int v0, v0

    .line 62
    add-int/2addr v0, v1

    .line 63
    add-int v4, v0, v3

    .line 65
    if-le v1, v2, :cond_2

    .line 67
    sub-int v4, v0, v3

    .line 69
    :cond_2
    invoke-virtual {p1, v0, v4}, Llg;->p0(II)V

    .line 72
    invoke-static {p1, p0, p2}, Ljj;->b(Llg;Lsc$b;Z)V

    .line 75
    return-void
.end method

.method public static e(Llg;Lsc$b;Llg;Z)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Llg;->w()F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p2, Llg;->H:Lfg;

    .line 7
    iget-object v1, v1, Lfg;->f:Lfg;

    .line 9
    invoke-virtual {v1}, Lfg;->d()I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p2, Llg;->H:Lfg;

    .line 15
    invoke-virtual {v2}, Lfg;->e()I

    .line 18
    move-result v2

    .line 19
    add-int/2addr v1, v2

    .line 20
    iget-object v2, p2, Llg;->J:Lfg;

    .line 22
    iget-object v2, v2, Lfg;->f:Lfg;

    .line 24
    invoke-virtual {v2}, Lfg;->d()I

    .line 27
    move-result v2

    .line 28
    iget-object v3, p2, Llg;->J:Lfg;

    .line 30
    invoke-virtual {v3}, Lfg;->e()I

    .line 33
    move-result v3

    .line 34
    sub-int/2addr v2, v3

    .line 35
    if-lt v2, v1, :cond_4

    .line 37
    invoke-virtual {p2}, Llg;->R()I

    .line 40
    move-result v3

    .line 41
    invoke-virtual {p2}, Llg;->Q()I

    .line 44
    move-result v4

    .line 45
    const/16 v5, 0x8

    .line 47
    const/high16 v6, 0x3f000000    # 0.5f

    .line 49
    if-eq v4, v5, :cond_3

    .line 51
    iget v4, p2, Llg;->p:I

    .line 53
    const/4 v5, 0x2

    .line 54
    if-ne v4, v5, :cond_1

    .line 56
    instance-of v3, p0, Lmg;

    .line 58
    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {p0}, Llg;->R()I

    .line 63
    move-result p0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Llg;->I()Llg;

    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Llg;->R()I

    .line 72
    move-result p0

    .line 73
    :goto_0
    invoke-virtual {p2}, Llg;->w()F

    .line 76
    move-result v3

    .line 77
    mul-float v3, v3, v6

    .line 79
    int-to-float p0, p0

    .line 80
    mul-float v3, v3, p0

    .line 82
    float-to-int v3, v3

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    if-nez v4, :cond_2

    .line 86
    sub-int v3, v2, v1

    .line 88
    :cond_2
    :goto_1
    iget p0, p2, Llg;->s:I

    .line 90
    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    .line 93
    move-result v3

    .line 94
    iget p0, p2, Llg;->t:I

    .line 96
    if-lez p0, :cond_3

    .line 98
    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    .line 101
    move-result v3

    .line 102
    :cond_3
    sub-int/2addr v2, v1

    .line 103
    sub-int/2addr v2, v3

    .line 104
    int-to-float p0, v2

    .line 105
    mul-float v0, v0, p0

    .line 107
    add-float/2addr v0, v6

    .line 108
    float-to-int p0, v0

    .line 109
    add-int/2addr v1, p0

    .line 110
    add-int/2addr v3, v1

    .line 111
    invoke-virtual {p2, v1, v3}, Llg;->p0(II)V

    .line 114
    invoke-static {p2, p1, p3}, Ljj;->b(Llg;Lsc$b;Z)V

    .line 117
    :cond_4
    return-void
.end method

.method public static f(Lsc$b;Llg;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Llg;->M()F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p1, Llg;->I:Lfg;

    .line 7
    iget-object v1, v1, Lfg;->f:Lfg;

    .line 9
    invoke-virtual {v1}, Lfg;->d()I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p1, Llg;->K:Lfg;

    .line 15
    iget-object v2, v2, Lfg;->f:Lfg;

    .line 17
    invoke-virtual {v2}, Lfg;->d()I

    .line 20
    move-result v2

    .line 21
    iget-object v3, p1, Llg;->I:Lfg;

    .line 23
    invoke-virtual {v3}, Lfg;->e()I

    .line 26
    move-result v3

    .line 27
    add-int/2addr v3, v1

    .line 28
    iget-object v4, p1, Llg;->K:Lfg;

    .line 30
    invoke-virtual {v4}, Lfg;->e()I

    .line 33
    move-result v4

    .line 34
    sub-int v4, v2, v4

    .line 36
    const/high16 v5, 0x3f000000    # 0.5f

    .line 38
    if-ne v1, v2, :cond_0

    .line 40
    const/high16 v0, 0x3f000000    # 0.5f

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v1, v3

    .line 44
    move v2, v4

    .line 45
    :goto_0
    invoke-virtual {p1}, Llg;->v()I

    .line 48
    move-result v3

    .line 49
    sub-int v4, v2, v1

    .line 51
    sub-int/2addr v4, v3

    .line 52
    if-le v1, v2, :cond_1

    .line 54
    sub-int v4, v1, v2

    .line 56
    sub-int/2addr v4, v3

    .line 57
    :cond_1
    int-to-float v4, v4

    .line 58
    mul-float v0, v0, v4

    .line 60
    add-float/2addr v0, v5

    .line 61
    float-to-int v0, v0

    .line 62
    add-int v4, v1, v0

    .line 64
    add-int v5, v4, v3

    .line 66
    if-le v1, v2, :cond_2

    .line 68
    sub-int v4, v1, v0

    .line 70
    sub-int v5, v4, v3

    .line 72
    :cond_2
    invoke-virtual {p1, v4, v5}, Llg;->s0(II)V

    .line 75
    invoke-static {p1, p0}, Ljj;->i(Llg;Lsc$b;)V

    .line 78
    return-void
.end method

.method public static g(Llg;Lsc$b;Llg;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Llg;->M()F

    .line 4
    move-result v0

    .line 5
    iget-object v1, p2, Llg;->I:Lfg;

    .line 7
    iget-object v1, v1, Lfg;->f:Lfg;

    .line 9
    invoke-virtual {v1}, Lfg;->d()I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p2, Llg;->I:Lfg;

    .line 15
    invoke-virtual {v2}, Lfg;->e()I

    .line 18
    move-result v2

    .line 19
    add-int/2addr v1, v2

    .line 20
    iget-object v2, p2, Llg;->K:Lfg;

    .line 22
    iget-object v2, v2, Lfg;->f:Lfg;

    .line 24
    invoke-virtual {v2}, Lfg;->d()I

    .line 27
    move-result v2

    .line 28
    iget-object v3, p2, Llg;->K:Lfg;

    .line 30
    invoke-virtual {v3}, Lfg;->e()I

    .line 33
    move-result v3

    .line 34
    sub-int/2addr v2, v3

    .line 35
    if-lt v2, v1, :cond_4

    .line 37
    invoke-virtual {p2}, Llg;->v()I

    .line 40
    move-result v3

    .line 41
    invoke-virtual {p2}, Llg;->Q()I

    .line 44
    move-result v4

    .line 45
    const/16 v5, 0x8

    .line 47
    const/high16 v6, 0x3f000000    # 0.5f

    .line 49
    if-eq v4, v5, :cond_3

    .line 51
    iget v4, p2, Llg;->q:I

    .line 53
    const/4 v5, 0x2

    .line 54
    if-ne v4, v5, :cond_1

    .line 56
    instance-of v3, p0, Lmg;

    .line 58
    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {p0}, Llg;->v()I

    .line 63
    move-result p0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Llg;->I()Llg;

    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Llg;->v()I

    .line 72
    move-result p0

    .line 73
    :goto_0
    mul-float v3, v0, v6

    .line 75
    int-to-float p0, p0

    .line 76
    mul-float v3, v3, p0

    .line 78
    float-to-int v3, v3

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    if-nez v4, :cond_2

    .line 82
    sub-int v3, v2, v1

    .line 84
    :cond_2
    :goto_1
    iget p0, p2, Llg;->v:I

    .line 86
    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    .line 89
    move-result v3

    .line 90
    iget p0, p2, Llg;->w:I

    .line 92
    if-lez p0, :cond_3

    .line 94
    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    .line 97
    move-result v3

    .line 98
    :cond_3
    sub-int/2addr v2, v1

    .line 99
    sub-int/2addr v2, v3

    .line 100
    int-to-float p0, v2

    .line 101
    mul-float v0, v0, p0

    .line 103
    add-float/2addr v0, v6

    .line 104
    float-to-int p0, v0

    .line 105
    add-int/2addr v1, p0

    .line 106
    add-int/2addr v3, v1

    .line 107
    invoke-virtual {p2, v1, v3}, Llg;->s0(II)V

    .line 110
    invoke-static {p2, p1}, Ljj;->i(Llg;Lsc$b;)V

    .line 113
    :cond_4
    return-void
.end method

.method public static h(Lmg;Lsc$b;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Llg;->y()Llg$b;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Llg;->O()Llg$b;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Llg;->i0()V

    .line 12
    invoke-virtual {p0}, Lwl0;->Z0()Ljava/util/ArrayList;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    :goto_0
    if-ge v5, v3, :cond_0

    .line 24
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Llg;

    .line 30
    invoke-virtual {v6}, Llg;->i0()V

    .line 33
    add-int/lit8 v5, v5, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lmg;->w1()Z

    .line 39
    move-result v5

    .line 40
    sget-object v6, Llg$b;->a:Llg$b;

    .line 42
    if-ne v0, v6, :cond_1

    .line 44
    invoke-virtual {p0}, Llg;->R()I

    .line 47
    move-result v0

    .line 48
    invoke-virtual {p0, v4, v0}, Llg;->p0(II)V

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0, v4}, Llg;->q0(I)V

    .line 55
    :goto_1
    const/4 v0, 0x0

    .line 56
    const/4 v6, 0x0

    .line 57
    const/4 v7, 0x0

    .line 58
    :goto_2
    const/high16 v8, 0x3f000000    # 0.5f

    .line 60
    const/4 v9, -0x1

    .line 61
    const/4 v10, 0x1

    .line 62
    if-ge v0, v3, :cond_7

    .line 64
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v11

    .line 68
    check-cast v11, Llg;

    .line 70
    instance-of v12, v11, Lro;

    .line 72
    if-eqz v12, :cond_5

    .line 74
    check-cast v11, Lro;

    .line 76
    invoke-virtual {v11}, Lro;->a1()I

    .line 79
    move-result v12

    .line 80
    if-ne v12, v10, :cond_6

    .line 82
    invoke-virtual {v11}, Lro;->b1()I

    .line 85
    move-result v6

    .line 86
    if-eq v6, v9, :cond_2

    .line 88
    invoke-virtual {v11}, Lro;->b1()I

    .line 91
    move-result v6

    .line 92
    invoke-virtual {v11, v6}, Lro;->e1(I)V

    .line 95
    goto :goto_3

    .line 96
    :cond_2
    invoke-virtual {v11}, Lro;->c1()I

    .line 99
    move-result v6

    .line 100
    if-eq v6, v9, :cond_3

    .line 102
    invoke-virtual {p0}, Llg;->e0()Z

    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_3

    .line 108
    invoke-virtual {p0}, Llg;->R()I

    .line 111
    move-result v6

    .line 112
    invoke-virtual {v11}, Lro;->c1()I

    .line 115
    move-result v8

    .line 116
    sub-int/2addr v6, v8

    .line 117
    invoke-virtual {v11, v6}, Lro;->e1(I)V

    .line 120
    goto :goto_3

    .line 121
    :cond_3
    invoke-virtual {p0}, Llg;->e0()Z

    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_4

    .line 127
    invoke-virtual {v11}, Lro;->d1()F

    .line 130
    move-result v6

    .line 131
    invoke-virtual {p0}, Llg;->R()I

    .line 134
    move-result v9

    .line 135
    int-to-float v9, v9

    .line 136
    mul-float v6, v6, v9

    .line 138
    add-float/2addr v6, v8

    .line 139
    float-to-int v6, v6

    .line 140
    invoke-virtual {v11, v6}, Lro;->e1(I)V

    .line 143
    :cond_4
    :goto_3
    const/4 v6, 0x1

    .line 144
    goto :goto_4

    .line 145
    :cond_5
    instance-of v8, v11, Lwb;

    .line 147
    if-eqz v8, :cond_6

    .line 149
    check-cast v11, Lwb;

    .line 151
    invoke-virtual {v11}, Lwb;->f1()I

    .line 154
    move-result v8

    .line 155
    if-nez v8, :cond_6

    .line 157
    const/4 v7, 0x1

    .line 158
    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 160
    goto :goto_2

    .line 161
    :cond_7
    if-eqz v6, :cond_9

    .line 163
    const/4 v0, 0x0

    .line 164
    :goto_5
    if-ge v0, v3, :cond_9

    .line 166
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    move-result-object v6

    .line 170
    check-cast v6, Llg;

    .line 172
    instance-of v11, v6, Lro;

    .line 174
    if-eqz v11, :cond_8

    .line 176
    check-cast v6, Lro;

    .line 178
    invoke-virtual {v6}, Lro;->a1()I

    .line 181
    move-result v11

    .line 182
    if-ne v11, v10, :cond_8

    .line 184
    invoke-static {v6, p1, v5}, Ljj;->b(Llg;Lsc$b;Z)V

    .line 187
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 189
    goto :goto_5

    .line 190
    :cond_9
    invoke-static {p0, p1, v5}, Ljj;->b(Llg;Lsc$b;Z)V

    .line 193
    if-eqz v7, :cond_b

    .line 195
    const/4 v0, 0x0

    .line 196
    :goto_6
    if-ge v0, v3, :cond_b

    .line 198
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object v6

    .line 202
    check-cast v6, Llg;

    .line 204
    instance-of v7, v6, Lwb;

    .line 206
    if-eqz v7, :cond_a

    .line 208
    check-cast v6, Lwb;

    .line 210
    invoke-virtual {v6}, Lwb;->f1()I

    .line 213
    move-result v7

    .line 214
    if-nez v7, :cond_a

    .line 216
    invoke-static {v6, p1, v4, v5}, Ljj;->c(Lwb;Lsc$b;IZ)V

    .line 219
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 221
    goto :goto_6

    .line 222
    :cond_b
    sget-object v0, Llg$b;->a:Llg$b;

    .line 224
    if-ne v1, v0, :cond_c

    .line 226
    invoke-virtual {p0}, Llg;->v()I

    .line 229
    move-result v0

    .line 230
    invoke-virtual {p0, v4, v0}, Llg;->s0(II)V

    .line 233
    goto :goto_7

    .line 234
    :cond_c
    invoke-virtual {p0, v4}, Llg;->r0(I)V

    .line 237
    :goto_7
    const/4 v0, 0x0

    .line 238
    const/4 v1, 0x0

    .line 239
    const/4 v6, 0x0

    .line 240
    :goto_8
    if-ge v0, v3, :cond_12

    .line 242
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 245
    move-result-object v7

    .line 246
    check-cast v7, Llg;

    .line 248
    instance-of v11, v7, Lro;

    .line 250
    if-eqz v11, :cond_10

    .line 252
    check-cast v7, Lro;

    .line 254
    invoke-virtual {v7}, Lro;->a1()I

    .line 257
    move-result v11

    .line 258
    if-nez v11, :cond_11

    .line 260
    invoke-virtual {v7}, Lro;->b1()I

    .line 263
    move-result v1

    .line 264
    if-eq v1, v9, :cond_d

    .line 266
    invoke-virtual {v7}, Lro;->b1()I

    .line 269
    move-result v1

    .line 270
    invoke-virtual {v7, v1}, Lro;->e1(I)V

    .line 273
    goto :goto_9

    .line 274
    :cond_d
    invoke-virtual {v7}, Lro;->c1()I

    .line 277
    move-result v1

    .line 278
    if-eq v1, v9, :cond_e

    .line 280
    invoke-virtual {p0}, Llg;->f0()Z

    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_e

    .line 286
    invoke-virtual {p0}, Llg;->v()I

    .line 289
    move-result v1

    .line 290
    invoke-virtual {v7}, Lro;->c1()I

    .line 293
    move-result v11

    .line 294
    sub-int/2addr v1, v11

    .line 295
    invoke-virtual {v7, v1}, Lro;->e1(I)V

    .line 298
    goto :goto_9

    .line 299
    :cond_e
    invoke-virtual {p0}, Llg;->f0()Z

    .line 302
    move-result v1

    .line 303
    if-eqz v1, :cond_f

    .line 305
    invoke-virtual {v7}, Lro;->d1()F

    .line 308
    move-result v1

    .line 309
    invoke-virtual {p0}, Llg;->v()I

    .line 312
    move-result v11

    .line 313
    int-to-float v11, v11

    .line 314
    mul-float v1, v1, v11

    .line 316
    add-float/2addr v1, v8

    .line 317
    float-to-int v1, v1

    .line 318
    invoke-virtual {v7, v1}, Lro;->e1(I)V

    .line 321
    :cond_f
    :goto_9
    const/4 v1, 0x1

    .line 322
    goto :goto_a

    .line 323
    :cond_10
    instance-of v11, v7, Lwb;

    .line 325
    if-eqz v11, :cond_11

    .line 327
    check-cast v7, Lwb;

    .line 329
    invoke-virtual {v7}, Lwb;->f1()I

    .line 332
    move-result v7

    .line 333
    if-ne v7, v10, :cond_11

    .line 335
    const/4 v6, 0x1

    .line 336
    :cond_11
    :goto_a
    add-int/lit8 v0, v0, 0x1

    .line 338
    goto :goto_8

    .line 339
    :cond_12
    if-eqz v1, :cond_14

    .line 341
    const/4 v0, 0x0

    .line 342
    :goto_b
    if-ge v0, v3, :cond_14

    .line 344
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 347
    move-result-object v1

    .line 348
    check-cast v1, Llg;

    .line 350
    instance-of v7, v1, Lro;

    .line 352
    if-eqz v7, :cond_13

    .line 354
    check-cast v1, Lro;

    .line 356
    invoke-virtual {v1}, Lro;->a1()I

    .line 359
    move-result v7

    .line 360
    if-nez v7, :cond_13

    .line 362
    invoke-static {v1, p1}, Ljj;->i(Llg;Lsc$b;)V

    .line 365
    :cond_13
    add-int/lit8 v0, v0, 0x1

    .line 367
    goto :goto_b

    .line 368
    :cond_14
    invoke-static {p0, p1}, Ljj;->i(Llg;Lsc$b;)V

    .line 371
    if-eqz v6, :cond_16

    .line 373
    const/4 p0, 0x0

    .line 374
    :goto_c
    if-ge p0, v3, :cond_16

    .line 376
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 379
    move-result-object v0

    .line 380
    check-cast v0, Llg;

    .line 382
    instance-of v1, v0, Lwb;

    .line 384
    if-eqz v1, :cond_15

    .line 386
    check-cast v0, Lwb;

    .line 388
    invoke-virtual {v0}, Lwb;->f1()I

    .line 391
    move-result v1

    .line 392
    if-ne v1, v10, :cond_15

    .line 394
    invoke-static {v0, p1, v10, v5}, Ljj;->c(Lwb;Lsc$b;IZ)V

    .line 397
    :cond_15
    add-int/lit8 p0, p0, 0x1

    .line 399
    goto :goto_c

    .line 400
    :cond_16
    :goto_d
    if-ge v4, v3, :cond_18

    .line 402
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 405
    move-result-object p0

    .line 406
    check-cast p0, Llg;

    .line 408
    invoke-virtual {p0}, Llg;->d0()Z

    .line 411
    move-result v0

    .line 412
    if-eqz v0, :cond_17

    .line 414
    invoke-static {p0}, Ljj;->a(Llg;)Z

    .line 417
    move-result v0

    .line 418
    if-eqz v0, :cond_17

    .line 420
    sget-object v0, Ljj;->a:Lsc$a;

    .line 422
    sget v1, Lsc$a;->k:I

    .line 424
    invoke-static {p0, p1, v0, v1}, Lmg;->z1(Llg;Lsc$b;Lsc$a;I)Z

    .line 427
    invoke-static {p0, p1, v5}, Ljj;->b(Llg;Lsc$b;Z)V

    .line 430
    invoke-static {p0, p1}, Ljj;->i(Llg;Lsc$b;)V

    .line 433
    :cond_17
    add-int/lit8 v4, v4, 0x1

    .line 435
    goto :goto_d

    .line 436
    :cond_18
    return-void
.end method

.method public static i(Llg;Lsc$b;)V
    .locals 13

    .line 1
    instance-of v0, p0, Lmg;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Llg;->d0()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {p0}, Ljj;->a(Llg;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lsc$a;

    .line 19
    invoke-direct {v0}, Lsc$a;-><init>()V

    .line 22
    sget v1, Lsc$a;->k:I

    .line 24
    invoke-static {p0, p1, v0, v1}, Lmg;->z1(Llg;Lsc$b;Lsc$a;I)Z

    .line 27
    :cond_0
    sget-object v0, Lfg$b;->c:Lfg$b;

    .line 29
    invoke-virtual {p0, v0}, Llg;->m(Lfg$b;)Lfg;

    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lfg$b;->e:Lfg$b;

    .line 35
    invoke-virtual {p0, v1}, Llg;->m(Lfg$b;)Lfg;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lfg;->d()I

    .line 42
    move-result v2

    .line 43
    invoke-virtual {v1}, Lfg;->d()I

    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0}, Lfg;->c()Ljava/util/HashSet;

    .line 50
    move-result-object v4

    .line 51
    const/4 v5, 0x0

    .line 52
    const/16 v6, 0x8

    .line 54
    const/4 v7, 0x1

    .line 55
    const/4 v8, 0x0

    .line 56
    if-eqz v4, :cond_c

    .line 58
    invoke-virtual {v0}, Lfg;->m()Z

    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_c

    .line 64
    invoke-virtual {v0}, Lfg;->c()Ljava/util/HashSet;

    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object v0

    .line 72
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_c

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Lfg;

    .line 84
    iget-object v9, v4, Lfg;->d:Llg;

    .line 86
    invoke-static {v9}, Ljj;->a(Llg;)Z

    .line 89
    move-result v10

    .line 90
    invoke-virtual {v9}, Llg;->d0()Z

    .line 93
    move-result v11

    .line 94
    if-eqz v11, :cond_2

    .line 96
    if-eqz v10, :cond_2

    .line 98
    new-instance v11, Lsc$a;

    .line 100
    invoke-direct {v11}, Lsc$a;-><init>()V

    .line 103
    sget v12, Lsc$a;->k:I

    .line 105
    invoke-static {v9, p1, v11, v12}, Lmg;->z1(Llg;Lsc$b;Lsc$a;I)Z

    .line 108
    :cond_2
    invoke-virtual {v9}, Llg;->O()Llg$b;

    .line 111
    move-result-object v11

    .line 112
    sget-object v12, Llg$b;->c:Llg$b;

    .line 114
    if-ne v11, v12, :cond_8

    .line 116
    if-eqz v10, :cond_3

    .line 118
    goto :goto_2

    .line 119
    :cond_3
    invoke-virtual {v9}, Llg;->O()Llg$b;

    .line 122
    move-result-object v10

    .line 123
    if-ne v10, v12, :cond_1

    .line 125
    iget v10, v9, Llg;->w:I

    .line 127
    if-ltz v10, :cond_1

    .line 129
    iget v10, v9, Llg;->v:I

    .line 131
    if-ltz v10, :cond_1

    .line 133
    invoke-virtual {v9}, Llg;->Q()I

    .line 136
    move-result v10

    .line 137
    if-eq v10, v6, :cond_4

    .line 139
    iget v10, v9, Llg;->q:I

    .line 141
    if-nez v10, :cond_1

    .line 143
    invoke-virtual {v9}, Llg;->t()F

    .line 146
    move-result v10

    .line 147
    cmpl-float v10, v10, v5

    .line 149
    if-nez v10, :cond_1

    .line 151
    :cond_4
    invoke-virtual {v9}, Llg;->b0()Z

    .line 154
    move-result v10

    .line 155
    if-nez v10, :cond_1

    .line 157
    invoke-virtual {v9}, Llg;->c0()Z

    .line 160
    move-result v10

    .line 161
    if-nez v10, :cond_1

    .line 163
    iget-object v10, v9, Llg;->I:Lfg;

    .line 165
    if-ne v4, v10, :cond_5

    .line 167
    iget-object v10, v9, Llg;->K:Lfg;

    .line 169
    iget-object v10, v10, Lfg;->f:Lfg;

    .line 171
    if-eqz v10, :cond_5

    .line 173
    invoke-virtual {v10}, Lfg;->m()Z

    .line 176
    move-result v10

    .line 177
    if-nez v10, :cond_6

    .line 179
    :cond_5
    iget-object v10, v9, Llg;->K:Lfg;

    .line 181
    if-ne v4, v10, :cond_7

    .line 183
    iget-object v4, v9, Llg;->I:Lfg;

    .line 185
    iget-object v4, v4, Lfg;->f:Lfg;

    .line 187
    if-eqz v4, :cond_7

    .line 189
    invoke-virtual {v4}, Lfg;->m()Z

    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_7

    .line 195
    :cond_6
    const/4 v4, 0x1

    .line 196
    goto :goto_1

    .line 197
    :cond_7
    const/4 v4, 0x0

    .line 198
    :goto_1
    if-eqz v4, :cond_1

    .line 200
    invoke-virtual {v9}, Llg;->b0()Z

    .line 203
    move-result v4

    .line 204
    if-nez v4, :cond_1

    .line 206
    invoke-static {p0, p1, v9}, Ljj;->g(Llg;Lsc$b;Llg;)V

    .line 209
    goto/16 :goto_0

    .line 211
    :cond_8
    :goto_2
    invoke-virtual {v9}, Llg;->d0()Z

    .line 214
    move-result v10

    .line 215
    if-eqz v10, :cond_9

    .line 217
    goto/16 :goto_0

    .line 219
    :cond_9
    iget-object v10, v9, Llg;->I:Lfg;

    .line 221
    if-ne v4, v10, :cond_a

    .line 223
    iget-object v11, v9, Llg;->K:Lfg;

    .line 225
    iget-object v11, v11, Lfg;->f:Lfg;

    .line 227
    if-nez v11, :cond_a

    .line 229
    invoke-virtual {v10}, Lfg;->e()I

    .line 232
    move-result v4

    .line 233
    add-int/2addr v4, v2

    .line 234
    invoke-virtual {v9}, Llg;->v()I

    .line 237
    move-result v10

    .line 238
    add-int/2addr v10, v4

    .line 239
    invoke-virtual {v9, v4, v10}, Llg;->s0(II)V

    .line 242
    invoke-static {v9, p1}, Ljj;->i(Llg;Lsc$b;)V

    .line 245
    goto/16 :goto_0

    .line 247
    :cond_a
    iget-object v11, v9, Llg;->K:Lfg;

    .line 249
    if-ne v4, v11, :cond_b

    .line 251
    iget-object v12, v11, Lfg;->f:Lfg;

    .line 253
    if-nez v12, :cond_b

    .line 255
    invoke-virtual {v11}, Lfg;->e()I

    .line 258
    move-result v4

    .line 259
    sub-int v4, v2, v4

    .line 261
    invoke-virtual {v9}, Llg;->v()I

    .line 264
    move-result v10

    .line 265
    sub-int v10, v4, v10

    .line 267
    invoke-virtual {v9, v10, v4}, Llg;->s0(II)V

    .line 270
    invoke-static {v9, p1}, Ljj;->i(Llg;Lsc$b;)V

    .line 273
    goto/16 :goto_0

    .line 275
    :cond_b
    if-ne v4, v10, :cond_1

    .line 277
    iget-object v4, v11, Lfg;->f:Lfg;

    .line 279
    if-eqz v4, :cond_1

    .line 281
    invoke-virtual {v4}, Lfg;->m()Z

    .line 284
    move-result v4

    .line 285
    if-eqz v4, :cond_1

    .line 287
    invoke-static {p1, v9}, Ljj;->f(Lsc$b;Llg;)V

    .line 290
    goto/16 :goto_0

    .line 292
    :cond_c
    instance-of v0, p0, Lro;

    .line 294
    if-eqz v0, :cond_d

    .line 296
    return-void

    .line 297
    :cond_d
    invoke-virtual {v1}, Lfg;->c()Ljava/util/HashSet;

    .line 300
    move-result-object v0

    .line 301
    if-eqz v0, :cond_19

    .line 303
    invoke-virtual {v1}, Lfg;->m()Z

    .line 306
    move-result v0

    .line 307
    if-eqz v0, :cond_19

    .line 309
    invoke-virtual {v1}, Lfg;->c()Ljava/util/HashSet;

    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 316
    move-result-object v0

    .line 317
    :cond_e
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_19

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    move-result-object v1

    .line 327
    check-cast v1, Lfg;

    .line 329
    iget-object v2, v1, Lfg;->d:Llg;

    .line 331
    invoke-static {v2}, Ljj;->a(Llg;)Z

    .line 334
    move-result v4

    .line 335
    invoke-virtual {v2}, Llg;->d0()Z

    .line 338
    move-result v9

    .line 339
    if-eqz v9, :cond_f

    .line 341
    if-eqz v4, :cond_f

    .line 343
    new-instance v9, Lsc$a;

    .line 345
    invoke-direct {v9}, Lsc$a;-><init>()V

    .line 348
    sget v10, Lsc$a;->k:I

    .line 350
    invoke-static {v2, p1, v9, v10}, Lmg;->z1(Llg;Lsc$b;Lsc$a;I)Z

    .line 353
    :cond_f
    iget-object v9, v2, Llg;->I:Lfg;

    .line 355
    if-ne v1, v9, :cond_10

    .line 357
    iget-object v9, v2, Llg;->K:Lfg;

    .line 359
    iget-object v9, v9, Lfg;->f:Lfg;

    .line 361
    if-eqz v9, :cond_10

    .line 363
    invoke-virtual {v9}, Lfg;->m()Z

    .line 366
    move-result v9

    .line 367
    if-nez v9, :cond_11

    .line 369
    :cond_10
    iget-object v9, v2, Llg;->K:Lfg;

    .line 371
    if-ne v1, v9, :cond_12

    .line 373
    iget-object v9, v2, Llg;->I:Lfg;

    .line 375
    iget-object v9, v9, Lfg;->f:Lfg;

    .line 377
    if-eqz v9, :cond_12

    .line 379
    invoke-virtual {v9}, Lfg;->m()Z

    .line 382
    move-result v9

    .line 383
    if-eqz v9, :cond_12

    .line 385
    :cond_11
    const/4 v9, 0x1

    .line 386
    goto :goto_4

    .line 387
    :cond_12
    const/4 v9, 0x0

    .line 388
    :goto_4
    invoke-virtual {v2}, Llg;->O()Llg$b;

    .line 391
    move-result-object v10

    .line 392
    sget-object v11, Llg$b;->c:Llg$b;

    .line 394
    if-ne v10, v11, :cond_15

    .line 396
    if-eqz v4, :cond_13

    .line 398
    goto :goto_5

    .line 399
    :cond_13
    invoke-virtual {v2}, Llg;->O()Llg$b;

    .line 402
    move-result-object v1

    .line 403
    if-ne v1, v11, :cond_e

    .line 405
    iget v1, v2, Llg;->w:I

    .line 407
    if-ltz v1, :cond_e

    .line 409
    iget v1, v2, Llg;->v:I

    .line 411
    if-ltz v1, :cond_e

    .line 413
    invoke-virtual {v2}, Llg;->Q()I

    .line 416
    move-result v1

    .line 417
    if-eq v1, v6, :cond_14

    .line 419
    iget v1, v2, Llg;->q:I

    .line 421
    if-nez v1, :cond_e

    .line 423
    invoke-virtual {v2}, Llg;->t()F

    .line 426
    move-result v1

    .line 427
    cmpl-float v1, v1, v5

    .line 429
    if-nez v1, :cond_e

    .line 431
    :cond_14
    invoke-virtual {v2}, Llg;->b0()Z

    .line 434
    move-result v1

    .line 435
    if-nez v1, :cond_e

    .line 437
    invoke-virtual {v2}, Llg;->c0()Z

    .line 440
    move-result v1

    .line 441
    if-nez v1, :cond_e

    .line 443
    if-eqz v9, :cond_e

    .line 445
    invoke-virtual {v2}, Llg;->b0()Z

    .line 448
    move-result v1

    .line 449
    if-nez v1, :cond_e

    .line 451
    invoke-static {p0, p1, v2}, Ljj;->g(Llg;Lsc$b;Llg;)V

    .line 454
    goto/16 :goto_3

    .line 456
    :cond_15
    :goto_5
    invoke-virtual {v2}, Llg;->d0()Z

    .line 459
    move-result v4

    .line 460
    if-eqz v4, :cond_16

    .line 462
    goto/16 :goto_3

    .line 464
    :cond_16
    iget-object v4, v2, Llg;->I:Lfg;

    .line 466
    if-ne v1, v4, :cond_17

    .line 468
    iget-object v10, v2, Llg;->K:Lfg;

    .line 470
    iget-object v10, v10, Lfg;->f:Lfg;

    .line 472
    if-nez v10, :cond_17

    .line 474
    invoke-virtual {v4}, Lfg;->e()I

    .line 477
    move-result v1

    .line 478
    add-int/2addr v1, v3

    .line 479
    invoke-virtual {v2}, Llg;->v()I

    .line 482
    move-result v4

    .line 483
    add-int/2addr v4, v1

    .line 484
    invoke-virtual {v2, v1, v4}, Llg;->s0(II)V

    .line 487
    invoke-static {v2, p1}, Ljj;->i(Llg;Lsc$b;)V

    .line 490
    goto/16 :goto_3

    .line 492
    :cond_17
    iget-object v10, v2, Llg;->K:Lfg;

    .line 494
    if-ne v1, v10, :cond_18

    .line 496
    iget-object v1, v4, Lfg;->f:Lfg;

    .line 498
    if-nez v1, :cond_18

    .line 500
    invoke-virtual {v10}, Lfg;->e()I

    .line 503
    move-result v1

    .line 504
    sub-int v1, v3, v1

    .line 506
    invoke-virtual {v2}, Llg;->v()I

    .line 509
    move-result v4

    .line 510
    sub-int v4, v1, v4

    .line 512
    invoke-virtual {v2, v4, v1}, Llg;->s0(II)V

    .line 515
    :try_start_0
    invoke-static {v2, p1}, Ljj;->i(Llg;Lsc$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    goto/16 :goto_3

    .line 520
    :catchall_0
    move-exception p0

    .line 521
    throw p0

    .line 522
    :cond_18
    if-eqz v9, :cond_e

    .line 524
    invoke-virtual {v2}, Llg;->b0()Z

    .line 527
    move-result v1

    .line 528
    if-nez v1, :cond_e

    .line 530
    invoke-static {p1, v2}, Ljj;->f(Lsc$b;Llg;)V

    .line 533
    goto/16 :goto_3

    .line 535
    :cond_19
    sget-object v0, Lfg$b;->f:Lfg$b;

    .line 537
    invoke-virtual {p0, v0}, Llg;->m(Lfg$b;)Lfg;

    .line 540
    move-result-object p0

    .line 541
    invoke-virtual {p0}, Lfg;->c()Ljava/util/HashSet;

    .line 544
    move-result-object v0

    .line 545
    if-eqz v0, :cond_1e

    .line 547
    invoke-virtual {p0}, Lfg;->m()Z

    .line 550
    move-result v0

    .line 551
    if-eqz v0, :cond_1e

    .line 553
    invoke-virtual {p0}, Lfg;->d()I

    .line 556
    move-result v0

    .line 557
    invoke-virtual {p0}, Lfg;->c()Ljava/util/HashSet;

    .line 560
    move-result-object p0

    .line 561
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 564
    move-result-object p0

    .line 565
    :cond_1a
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 568
    move-result v1

    .line 569
    if-eqz v1, :cond_1e

    .line 571
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 574
    move-result-object v1

    .line 575
    check-cast v1, Lfg;

    .line 577
    iget-object v2, v1, Lfg;->d:Llg;

    .line 579
    invoke-static {v2}, Ljj;->a(Llg;)Z

    .line 582
    move-result v3

    .line 583
    invoke-virtual {v2}, Llg;->d0()Z

    .line 586
    move-result v4

    .line 587
    if-eqz v4, :cond_1b

    .line 589
    if-eqz v3, :cond_1b

    .line 591
    new-instance v4, Lsc$a;

    .line 593
    invoke-direct {v4}, Lsc$a;-><init>()V

    .line 596
    sget v5, Lsc$a;->k:I

    .line 598
    invoke-static {v2, p1, v4, v5}, Lmg;->z1(Llg;Lsc$b;Lsc$a;I)Z

    .line 601
    :cond_1b
    invoke-virtual {v2}, Llg;->O()Llg$b;

    .line 604
    move-result-object v4

    .line 605
    sget-object v5, Llg$b;->c:Llg$b;

    .line 607
    if-ne v4, v5, :cond_1c

    .line 609
    if-eqz v3, :cond_1a

    .line 611
    :cond_1c
    invoke-virtual {v2}, Llg;->d0()Z

    .line 614
    move-result v3

    .line 615
    if-eqz v3, :cond_1d

    .line 617
    goto :goto_6

    .line 618
    :cond_1d
    iget-object v3, v2, Llg;->L:Lfg;

    .line 620
    if-ne v1, v3, :cond_1a

    .line 622
    invoke-virtual {v2, v0}, Llg;->o0(I)V

    .line 625
    invoke-static {v2, p1}, Ljj;->i(Llg;Lsc$b;)V

    .line 628
    goto :goto_6

    .line 629
    :cond_1e
    return-void
.end method
