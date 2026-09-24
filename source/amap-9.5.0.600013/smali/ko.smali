.class public abstract Lko;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget v0, p0, Llg;->A0:I

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Llg;->B0:I

    .line 8
    :goto_0
    const/4 v1, 0x0

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v0, v2, :cond_4

    .line 12
    if-eqz p3, :cond_1

    .line 14
    iget v3, p3, Lcm0;->b:I

    .line 16
    if-eq v0, v3, :cond_4

    .line 18
    :cond_1
    const/4 v3, 0x0

    .line 19
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result v4

    .line 23
    if-ge v3, v4, :cond_5

    .line 25
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Lcm0;

    .line 31
    invoke-virtual {v4}, Lcm0;->c()I

    .line 34
    move-result v5

    .line 35
    if-ne v5, v0, :cond_3

    .line 37
    if-eqz p3, :cond_2

    .line 39
    invoke-virtual {p3, p1, v4}, Lcm0;->g(ILcm0;)V

    .line 42
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    :cond_2
    move-object p3, v4

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_4
    if-eq v0, v2, :cond_5

    .line 52
    return-object p3

    .line 53
    :cond_5
    :goto_2
    if-nez p3, :cond_9

    .line 55
    instance-of v0, p0, Lgp;

    .line 57
    if-eqz v0, :cond_7

    .line 59
    move-object v0, p0

    .line 60
    check-cast v0, Lgp;

    .line 62
    invoke-virtual {v0, p1}, Lgp;->a1(I)I

    .line 65
    move-result v0

    .line 66
    if-eq v0, v2, :cond_7

    .line 68
    const/4 v2, 0x0

    .line 69
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 72
    move-result v3

    .line 73
    if-ge v2, v3, :cond_7

    .line 75
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v3

    .line 79
    check-cast v3, Lcm0;

    .line 81
    invoke-virtual {v3}, Lcm0;->c()I

    .line 84
    move-result v4

    .line 85
    if-ne v4, v0, :cond_6

    .line 87
    move-object p3, v3

    .line 88
    goto :goto_4

    .line 89
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 91
    goto :goto_3

    .line 92
    :cond_7
    :goto_4
    if-nez p3, :cond_8

    .line 94
    new-instance p3, Lcm0;

    .line 96
    invoke-direct {p3, p1}, Lcm0;-><init>(I)V

    .line 99
    :cond_8
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_9
    invoke-virtual {p3, p0}, Lcm0;->a(Llg;)Z

    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_d

    .line 108
    instance-of v0, p0, Lro;

    .line 110
    if-eqz v0, :cond_b

    .line 112
    move-object v0, p0

    .line 113
    check-cast v0, Lro;

    .line 115
    invoke-virtual {v0}, Lro;->Z0()Lfg;

    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v0}, Lro;->a1()I

    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_a

    .line 125
    const/4 v1, 0x1

    .line 126
    :cond_a
    invoke-virtual {v2, v1, p2, p3}, Lfg;->b(ILjava/util/ArrayList;Lcm0;)V

    .line 129
    :cond_b
    if-nez p1, :cond_c

    .line 131
    invoke-virtual {p3}, Lcm0;->c()I

    .line 134
    move-result v0

    .line 135
    iput v0, p0, Llg;->A0:I

    .line 137
    iget-object v0, p0, Llg;->H:Lfg;

    .line 139
    invoke-virtual {v0, p1, p2, p3}, Lfg;->b(ILjava/util/ArrayList;Lcm0;)V

    .line 142
    iget-object v0, p0, Llg;->J:Lfg;

    .line 144
    invoke-virtual {v0, p1, p2, p3}, Lfg;->b(ILjava/util/ArrayList;Lcm0;)V

    .line 147
    goto :goto_5

    .line 148
    :cond_c
    invoke-virtual {p3}, Lcm0;->c()I

    .line 151
    move-result v0

    .line 152
    iput v0, p0, Llg;->B0:I

    .line 154
    iget-object v0, p0, Llg;->I:Lfg;

    .line 156
    invoke-virtual {v0, p1, p2, p3}, Lfg;->b(ILjava/util/ArrayList;Lcm0;)V

    .line 159
    iget-object v0, p0, Llg;->L:Lfg;

    .line 161
    invoke-virtual {v0, p1, p2, p3}, Lfg;->b(ILjava/util/ArrayList;Lcm0;)V

    .line 164
    iget-object v0, p0, Llg;->K:Lfg;

    .line 166
    invoke-virtual {v0, p1, p2, p3}, Lfg;->b(ILjava/util/ArrayList;Lcm0;)V

    .line 169
    :goto_5
    iget-object p0, p0, Llg;->O:Lfg;

    .line 171
    invoke-virtual {p0, p1, p2, p3}, Lfg;->b(ILjava/util/ArrayList;Lcm0;)V

    .line 174
    :cond_d
    return-object p3
.end method

.method public static b(Ljava/util/ArrayList;I)Lcm0;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcm0;

    .line 14
    iget v3, v2, Lcm0;->b:I

    .line 16
    if-ne p1, v3, :cond_0

    .line 18
    return-object v2

    .line 19
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public static c(Lmg;Lsc$b;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p0}, Lwl0;->Z0()Ljava/util/ArrayList;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    if-ge v4, v2, :cond_1

    .line 15
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v5

    .line 19
    check-cast v5, Llg;

    .line 21
    invoke-virtual/range {p0 .. p0}, Llg;->y()Llg$b;

    .line 24
    move-result-object v6

    .line 25
    invoke-virtual/range {p0 .. p0}, Llg;->O()Llg$b;

    .line 28
    move-result-object v7

    .line 29
    invoke-virtual {v5}, Llg;->y()Llg$b;

    .line 32
    move-result-object v8

    .line 33
    invoke-virtual {v5}, Llg;->O()Llg$b;

    .line 36
    move-result-object v5

    .line 37
    invoke-static {v6, v7, v8, v5}, Lko;->d(Llg$b;Llg$b;Llg$b;Llg$b;)Z

    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_0

    .line 43
    return v3

    .line 44
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x0

    .line 53
    const/4 v11, 0x0

    .line 54
    :goto_1
    const/4 v12, 0x1

    .line 55
    if-ge v5, v2, :cond_12

    .line 57
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v13

    .line 61
    check-cast v13, Llg;

    .line 63
    invoke-virtual/range {p0 .. p0}, Llg;->y()Llg$b;

    .line 66
    move-result-object v14

    .line 67
    invoke-virtual/range {p0 .. p0}, Llg;->O()Llg$b;

    .line 70
    move-result-object v15

    .line 71
    invoke-virtual {v13}, Llg;->y()Llg$b;

    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v13}, Llg;->O()Llg$b;

    .line 78
    move-result-object v4

    .line 79
    invoke-static {v14, v15, v3, v4}, Lko;->d(Llg$b;Llg$b;Llg$b;Llg$b;)Z

    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_2

    .line 85
    iget-object v3, v0, Lmg;->f1:Lsc$a;

    .line 87
    sget v4, Lsc$a;->k:I

    .line 89
    move-object/from16 v14, p1

    .line 91
    invoke-static {v13, v14, v3, v4}, Lmg;->z1(Llg;Lsc$b;Lsc$a;I)Z

    .line 94
    goto :goto_2

    .line 95
    :cond_2
    move-object/from16 v14, p1

    .line 97
    :goto_2
    instance-of v3, v13, Lro;

    .line 99
    if-eqz v3, :cond_6

    .line 101
    move-object v4, v13

    .line 102
    check-cast v4, Lro;

    .line 104
    invoke-virtual {v4}, Lro;->a1()I

    .line 107
    move-result v15

    .line 108
    if-nez v15, :cond_4

    .line 110
    if-nez v8, :cond_3

    .line 112
    new-instance v8, Ljava/util/ArrayList;

    .line 114
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 117
    :cond_3
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_4
    invoke-virtual {v4}, Lro;->a1()I

    .line 123
    move-result v15

    .line 124
    if-ne v15, v12, :cond_6

    .line 126
    if-nez v6, :cond_5

    .line 128
    new-instance v6, Ljava/util/ArrayList;

    .line 130
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 133
    :cond_5
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_6
    instance-of v4, v13, Lgp;

    .line 138
    if-eqz v4, :cond_d

    .line 140
    instance-of v4, v13, Lwb;

    .line 142
    if-eqz v4, :cond_a

    .line 144
    move-object v4, v13

    .line 145
    check-cast v4, Lwb;

    .line 147
    invoke-virtual {v4}, Lwb;->f1()I

    .line 150
    move-result v15

    .line 151
    if-nez v15, :cond_8

    .line 153
    if-nez v7, :cond_7

    .line 155
    new-instance v7, Ljava/util/ArrayList;

    .line 157
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 160
    :cond_7
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_8
    invoke-virtual {v4}, Lwb;->f1()I

    .line 166
    move-result v15

    .line 167
    if-ne v15, v12, :cond_d

    .line 169
    if-nez v9, :cond_9

    .line 171
    new-instance v9, Ljava/util/ArrayList;

    .line 173
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 176
    :cond_9
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    goto :goto_3

    .line 180
    :cond_a
    move-object v4, v13

    .line 181
    check-cast v4, Lgp;

    .line 183
    if-nez v7, :cond_b

    .line 185
    new-instance v7, Ljava/util/ArrayList;

    .line 187
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 190
    :cond_b
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    if-nez v9, :cond_c

    .line 195
    new-instance v9, Ljava/util/ArrayList;

    .line 197
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 200
    :cond_c
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_d
    :goto_3
    iget-object v4, v13, Llg;->H:Lfg;

    .line 205
    iget-object v4, v4, Lfg;->f:Lfg;

    .line 207
    if-nez v4, :cond_f

    .line 209
    iget-object v4, v13, Llg;->J:Lfg;

    .line 211
    iget-object v4, v4, Lfg;->f:Lfg;

    .line 213
    if-nez v4, :cond_f

    .line 215
    if-nez v3, :cond_f

    .line 217
    instance-of v4, v13, Lwb;

    .line 219
    if-nez v4, :cond_f

    .line 221
    if-nez v10, :cond_e

    .line 223
    new-instance v4, Ljava/util/ArrayList;

    .line 225
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 228
    move-object v10, v4

    .line 229
    :cond_e
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_f
    iget-object v4, v13, Llg;->I:Lfg;

    .line 234
    iget-object v4, v4, Lfg;->f:Lfg;

    .line 236
    if-nez v4, :cond_11

    .line 238
    iget-object v4, v13, Llg;->K:Lfg;

    .line 240
    iget-object v4, v4, Lfg;->f:Lfg;

    .line 242
    if-nez v4, :cond_11

    .line 244
    iget-object v4, v13, Llg;->L:Lfg;

    .line 246
    iget-object v4, v4, Lfg;->f:Lfg;

    .line 248
    if-nez v4, :cond_11

    .line 250
    if-nez v3, :cond_11

    .line 252
    instance-of v3, v13, Lwb;

    .line 254
    if-nez v3, :cond_11

    .line 256
    if-nez v11, :cond_10

    .line 258
    new-instance v3, Ljava/util/ArrayList;

    .line 260
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 263
    move-object v11, v3

    .line 264
    :cond_10
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_11
    add-int/lit8 v5, v5, 0x1

    .line 269
    const/4 v3, 0x0

    .line 270
    goto/16 :goto_1

    .line 272
    :cond_12
    new-instance v3, Ljava/util/ArrayList;

    .line 274
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 277
    if-eqz v6, :cond_13

    .line 279
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 282
    move-result-object v4

    .line 283
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 286
    move-result v5

    .line 287
    if-eqz v5, :cond_13

    .line 289
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 292
    move-result-object v5

    .line 293
    check-cast v5, Lro;

    .line 295
    const/4 v6, 0x0

    .line 296
    const/4 v13, 0x0

    .line 297
    invoke-static {v5, v13, v3, v6}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 300
    goto :goto_4

    .line 301
    :cond_13
    const/4 v6, 0x0

    .line 302
    const/4 v13, 0x0

    .line 303
    if-eqz v7, :cond_14

    .line 305
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 308
    move-result-object v4

    .line 309
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    move-result v5

    .line 313
    if-eqz v5, :cond_14

    .line 315
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    move-result-object v5

    .line 319
    check-cast v5, Lgp;

    .line 321
    invoke-static {v5, v13, v3, v6}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 324
    move-result-object v7

    .line 325
    invoke-virtual {v5, v3, v13, v7}, Lgp;->Z0(Ljava/util/ArrayList;ILcm0;)V

    .line 328
    invoke-virtual {v7, v3}, Lcm0;->b(Ljava/util/ArrayList;)V

    .line 331
    const/4 v6, 0x0

    .line 332
    const/4 v13, 0x0

    .line 333
    goto :goto_5

    .line 334
    :cond_14
    sget-object v4, Lfg$b;->b:Lfg$b;

    .line 336
    invoke-virtual {v0, v4}, Llg;->m(Lfg$b;)Lfg;

    .line 339
    move-result-object v4

    .line 340
    invoke-virtual {v4}, Lfg;->c()Ljava/util/HashSet;

    .line 343
    move-result-object v5

    .line 344
    if-eqz v5, :cond_15

    .line 346
    invoke-virtual {v4}, Lfg;->c()Ljava/util/HashSet;

    .line 349
    move-result-object v4

    .line 350
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 353
    move-result-object v4

    .line 354
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 357
    move-result v5

    .line 358
    if-eqz v5, :cond_15

    .line 360
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 363
    move-result-object v5

    .line 364
    check-cast v5, Lfg;

    .line 366
    iget-object v5, v5, Lfg;->d:Llg;

    .line 368
    const/4 v6, 0x0

    .line 369
    const/4 v7, 0x0

    .line 370
    invoke-static {v5, v7, v3, v6}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 373
    goto :goto_6

    .line 374
    :cond_15
    sget-object v4, Lfg$b;->d:Lfg$b;

    .line 376
    invoke-virtual {v0, v4}, Llg;->m(Lfg$b;)Lfg;

    .line 379
    move-result-object v4

    .line 380
    invoke-virtual {v4}, Lfg;->c()Ljava/util/HashSet;

    .line 383
    move-result-object v5

    .line 384
    if-eqz v5, :cond_16

    .line 386
    invoke-virtual {v4}, Lfg;->c()Ljava/util/HashSet;

    .line 389
    move-result-object v4

    .line 390
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 393
    move-result-object v4

    .line 394
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 397
    move-result v5

    .line 398
    if-eqz v5, :cond_16

    .line 400
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 403
    move-result-object v5

    .line 404
    check-cast v5, Lfg;

    .line 406
    iget-object v5, v5, Lfg;->d:Llg;

    .line 408
    const/4 v6, 0x0

    .line 409
    const/4 v7, 0x0

    .line 410
    invoke-static {v5, v7, v3, v6}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 413
    goto :goto_7

    .line 414
    :cond_16
    sget-object v4, Lfg$b;->g:Lfg$b;

    .line 416
    invoke-virtual {v0, v4}, Llg;->m(Lfg$b;)Lfg;

    .line 419
    move-result-object v4

    .line 420
    invoke-virtual {v4}, Lfg;->c()Ljava/util/HashSet;

    .line 423
    move-result-object v5

    .line 424
    if-eqz v5, :cond_17

    .line 426
    invoke-virtual {v4}, Lfg;->c()Ljava/util/HashSet;

    .line 429
    move-result-object v4

    .line 430
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 433
    move-result-object v4

    .line 434
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 437
    move-result v5

    .line 438
    if-eqz v5, :cond_17

    .line 440
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 443
    move-result-object v5

    .line 444
    check-cast v5, Lfg;

    .line 446
    iget-object v5, v5, Lfg;->d:Llg;

    .line 448
    const/4 v6, 0x0

    .line 449
    const/4 v7, 0x0

    .line 450
    invoke-static {v5, v7, v3, v6}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 453
    goto :goto_8

    .line 454
    :cond_17
    const/4 v6, 0x0

    .line 455
    const/4 v7, 0x0

    .line 456
    if-eqz v10, :cond_18

    .line 458
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 461
    move-result-object v4

    .line 462
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    move-result v5

    .line 466
    if-eqz v5, :cond_18

    .line 468
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    move-result-object v5

    .line 472
    check-cast v5, Llg;

    .line 474
    invoke-static {v5, v7, v3, v6}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 477
    goto :goto_9

    .line 478
    :cond_18
    if-eqz v8, :cond_19

    .line 480
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 483
    move-result-object v4

    .line 484
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 487
    move-result v5

    .line 488
    if-eqz v5, :cond_19

    .line 490
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 493
    move-result-object v5

    .line 494
    check-cast v5, Lro;

    .line 496
    invoke-static {v5, v12, v3, v6}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 499
    goto :goto_a

    .line 500
    :cond_19
    if-eqz v9, :cond_1a

    .line 502
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 505
    move-result-object v4

    .line 506
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 509
    move-result v5

    .line 510
    if-eqz v5, :cond_1a

    .line 512
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 515
    move-result-object v5

    .line 516
    check-cast v5, Lgp;

    .line 518
    invoke-static {v5, v12, v3, v6}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 521
    move-result-object v7

    .line 522
    invoke-virtual {v5, v3, v12, v7}, Lgp;->Z0(Ljava/util/ArrayList;ILcm0;)V

    .line 525
    invoke-virtual {v7, v3}, Lcm0;->b(Ljava/util/ArrayList;)V

    .line 528
    const/4 v6, 0x0

    .line 529
    goto :goto_b

    .line 530
    :cond_1a
    sget-object v4, Lfg$b;->c:Lfg$b;

    .line 532
    invoke-virtual {v0, v4}, Llg;->m(Lfg$b;)Lfg;

    .line 535
    move-result-object v4

    .line 536
    invoke-virtual {v4}, Lfg;->c()Ljava/util/HashSet;

    .line 539
    move-result-object v5

    .line 540
    if-eqz v5, :cond_1b

    .line 542
    invoke-virtual {v4}, Lfg;->c()Ljava/util/HashSet;

    .line 545
    move-result-object v4

    .line 546
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 549
    move-result-object v4

    .line 550
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 553
    move-result v5

    .line 554
    if-eqz v5, :cond_1b

    .line 556
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 559
    move-result-object v5

    .line 560
    check-cast v5, Lfg;

    .line 562
    iget-object v5, v5, Lfg;->d:Llg;

    .line 564
    const/4 v6, 0x0

    .line 565
    invoke-static {v5, v12, v3, v6}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 568
    goto :goto_c

    .line 569
    :cond_1b
    sget-object v4, Lfg$b;->f:Lfg$b;

    .line 571
    invoke-virtual {v0, v4}, Llg;->m(Lfg$b;)Lfg;

    .line 574
    move-result-object v4

    .line 575
    invoke-virtual {v4}, Lfg;->c()Ljava/util/HashSet;

    .line 578
    move-result-object v5

    .line 579
    if-eqz v5, :cond_1c

    .line 581
    invoke-virtual {v4}, Lfg;->c()Ljava/util/HashSet;

    .line 584
    move-result-object v4

    .line 585
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 588
    move-result-object v4

    .line 589
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 592
    move-result v5

    .line 593
    if-eqz v5, :cond_1c

    .line 595
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 598
    move-result-object v5

    .line 599
    check-cast v5, Lfg;

    .line 601
    iget-object v5, v5, Lfg;->d:Llg;

    .line 603
    const/4 v6, 0x0

    .line 604
    invoke-static {v5, v12, v3, v6}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 607
    goto :goto_d

    .line 608
    :cond_1c
    sget-object v4, Lfg$b;->e:Lfg$b;

    .line 610
    invoke-virtual {v0, v4}, Llg;->m(Lfg$b;)Lfg;

    .line 613
    move-result-object v4

    .line 614
    invoke-virtual {v4}, Lfg;->c()Ljava/util/HashSet;

    .line 617
    move-result-object v5

    .line 618
    if-eqz v5, :cond_1d

    .line 620
    invoke-virtual {v4}, Lfg;->c()Ljava/util/HashSet;

    .line 623
    move-result-object v4

    .line 624
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 627
    move-result-object v4

    .line 628
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 631
    move-result v5

    .line 632
    if-eqz v5, :cond_1d

    .line 634
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 637
    move-result-object v5

    .line 638
    check-cast v5, Lfg;

    .line 640
    iget-object v5, v5, Lfg;->d:Llg;

    .line 642
    const/4 v6, 0x0

    .line 643
    invoke-static {v5, v12, v3, v6}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 646
    goto :goto_e

    .line 647
    :cond_1d
    sget-object v4, Lfg$b;->g:Lfg$b;

    .line 649
    invoke-virtual {v0, v4}, Llg;->m(Lfg$b;)Lfg;

    .line 652
    move-result-object v4

    .line 653
    invoke-virtual {v4}, Lfg;->c()Ljava/util/HashSet;

    .line 656
    move-result-object v5

    .line 657
    if-eqz v5, :cond_1e

    .line 659
    invoke-virtual {v4}, Lfg;->c()Ljava/util/HashSet;

    .line 662
    move-result-object v4

    .line 663
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 666
    move-result-object v4

    .line 667
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 670
    move-result v5

    .line 671
    if-eqz v5, :cond_1e

    .line 673
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 676
    move-result-object v5

    .line 677
    check-cast v5, Lfg;

    .line 679
    iget-object v5, v5, Lfg;->d:Llg;

    .line 681
    const/4 v6, 0x0

    .line 682
    invoke-static {v5, v12, v3, v6}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 685
    goto :goto_f

    .line 686
    :cond_1e
    const/4 v6, 0x0

    .line 687
    if-eqz v11, :cond_1f

    .line 689
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 692
    move-result-object v4

    .line 693
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 696
    move-result v5

    .line 697
    if-eqz v5, :cond_1f

    .line 699
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 702
    move-result-object v5

    .line 703
    check-cast v5, Llg;

    .line 705
    invoke-static {v5, v12, v3, v6}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 708
    goto :goto_10

    .line 709
    :cond_1f
    const/4 v4, 0x0

    .line 710
    :goto_11
    if-ge v4, v2, :cond_21

    .line 712
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 715
    move-result-object v5

    .line 716
    check-cast v5, Llg;

    .line 718
    invoke-virtual {v5}, Llg;->g0()Z

    .line 721
    move-result v7

    .line 722
    if-eqz v7, :cond_20

    .line 724
    iget v7, v5, Llg;->A0:I

    .line 726
    invoke-static {v3, v7}, Lko;->b(Ljava/util/ArrayList;I)Lcm0;

    .line 729
    move-result-object v7

    .line 730
    iget v5, v5, Llg;->B0:I

    .line 732
    invoke-static {v3, v5}, Lko;->b(Ljava/util/ArrayList;I)Lcm0;

    .line 735
    move-result-object v5

    .line 736
    if-eqz v7, :cond_20

    .line 738
    if-eqz v5, :cond_20

    .line 740
    const/4 v8, 0x0

    .line 741
    invoke-virtual {v7, v8, v5}, Lcm0;->g(ILcm0;)V

    .line 744
    const/4 v8, 0x2

    .line 745
    invoke-virtual {v5, v8}, Lcm0;->i(I)V

    .line 748
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 751
    :cond_20
    add-int/lit8 v4, v4, 0x1

    .line 753
    goto :goto_11

    .line 754
    :cond_21
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 757
    move-result v1

    .line 758
    if-gt v1, v12, :cond_22

    .line 760
    const/4 v1, 0x0

    .line 761
    return v1

    .line 762
    :cond_22
    invoke-virtual/range {p0 .. p0}, Llg;->y()Llg$b;

    .line 765
    move-result-object v1

    .line 766
    sget-object v2, Llg$b;->b:Llg$b;

    .line 768
    if-ne v1, v2, :cond_26

    .line 770
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 773
    move-result-object v1

    .line 774
    move-object v2, v6

    .line 775
    const/4 v13, 0x0

    .line 776
    :cond_23
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 779
    move-result v4

    .line 780
    if-eqz v4, :cond_25

    .line 782
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 785
    move-result-object v4

    .line 786
    check-cast v4, Lcm0;

    .line 788
    invoke-virtual {v4}, Lcm0;->d()I

    .line 791
    move-result v5

    .line 792
    if-ne v5, v12, :cond_24

    .line 794
    goto :goto_12

    .line 795
    :cond_24
    const/4 v5, 0x0

    .line 796
    invoke-virtual {v4, v5}, Lcm0;->h(Z)V

    .line 799
    invoke-virtual/range {p0 .. p0}, Lmg;->s1()Lax;

    .line 802
    move-result-object v7

    .line 803
    invoke-virtual {v4, v7, v5}, Lcm0;->f(Lax;I)I

    .line 806
    move-result v7

    .line 807
    if-le v7, v13, :cond_23

    .line 809
    move-object v2, v4

    .line 810
    move v13, v7

    .line 811
    goto :goto_12

    .line 812
    :cond_25
    if-eqz v2, :cond_26

    .line 814
    sget-object v1, Llg$b;->a:Llg$b;

    .line 816
    invoke-virtual {v0, v1}, Llg;->z0(Llg$b;)V

    .line 819
    invoke-virtual {v0, v13}, Llg;->T0(I)V

    .line 822
    invoke-virtual {v2, v12}, Lcm0;->h(Z)V

    .line 825
    goto :goto_13

    .line 826
    :cond_26
    move-object v2, v6

    .line 827
    :goto_13
    invoke-virtual/range {p0 .. p0}, Llg;->O()Llg$b;

    .line 830
    move-result-object v1

    .line 831
    sget-object v4, Llg$b;->b:Llg$b;

    .line 833
    if-ne v1, v4, :cond_2a

    .line 835
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 838
    move-result-object v1

    .line 839
    move-object v3, v6

    .line 840
    const/4 v13, 0x0

    .line 841
    :cond_27
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 844
    move-result v4

    .line 845
    if-eqz v4, :cond_29

    .line 847
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 850
    move-result-object v4

    .line 851
    check-cast v4, Lcm0;

    .line 853
    invoke-virtual {v4}, Lcm0;->d()I

    .line 856
    move-result v5

    .line 857
    if-nez v5, :cond_28

    .line 859
    goto :goto_14

    .line 860
    :cond_28
    const/4 v5, 0x0

    .line 861
    invoke-virtual {v4, v5}, Lcm0;->h(Z)V

    .line 864
    invoke-virtual/range {p0 .. p0}, Lmg;->s1()Lax;

    .line 867
    move-result-object v7

    .line 868
    invoke-virtual {v4, v7, v12}, Lcm0;->f(Lax;I)I

    .line 871
    move-result v7

    .line 872
    if-le v7, v13, :cond_27

    .line 874
    move-object v3, v4

    .line 875
    move v13, v7

    .line 876
    goto :goto_14

    .line 877
    :cond_29
    const/4 v5, 0x0

    .line 878
    if-eqz v3, :cond_2b

    .line 880
    sget-object v1, Llg$b;->a:Llg$b;

    .line 882
    invoke-virtual {v0, v1}, Llg;->P0(Llg$b;)V

    .line 885
    invoke-virtual {v0, v13}, Llg;->v0(I)V

    .line 888
    invoke-virtual {v3, v12}, Lcm0;->h(Z)V

    .line 891
    move-object v4, v3

    .line 892
    goto :goto_15

    .line 893
    :cond_2a
    const/4 v5, 0x0

    .line 894
    :cond_2b
    move-object v4, v6

    .line 895
    :goto_15
    if-nez v2, :cond_2d

    .line 897
    if-eqz v4, :cond_2c

    .line 899
    goto :goto_16

    .line 900
    :cond_2c
    const/4 v3, 0x0

    .line 901
    goto :goto_17

    .line 902
    :cond_2d
    :goto_16
    const/4 v3, 0x1

    .line 903
    :goto_17
    return v3
.end method

.method public static d(Llg$b;Llg$b;Llg$b;Llg$b;)Z
    .locals 5

    .line 1
    sget-object v0, Llg$b;->a:Llg$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p2, v0, :cond_1

    .line 7
    sget-object v3, Llg$b;->b:Llg$b;

    .line 9
    if-eq p2, v3, :cond_1

    .line 11
    sget-object v4, Llg$b;->d:Llg$b;

    .line 13
    if-ne p2, v4, :cond_0

    .line 15
    if-eq p0, v3, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    if-eq p3, v0, :cond_3

    .line 23
    sget-object p2, Llg$b;->b:Llg$b;

    .line 25
    if-eq p3, p2, :cond_3

    .line 27
    sget-object v0, Llg$b;->d:Llg$b;

    .line 29
    if-ne p3, v0, :cond_2

    .line 31
    if-eq p1, p2, :cond_2

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    :goto_2
    const/4 p1, 0x1

    .line 37
    :goto_3
    if-nez p0, :cond_5

    .line 39
    if-eqz p1, :cond_4

    .line 41
    goto :goto_4

    .line 42
    :cond_4
    return v1

    .line 43
    :cond_5
    :goto_4
    return v2
.end method
