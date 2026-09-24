.class public Luk0;
.super Lkm0;
.source "SourceFile"


# instance fields
.field public k:Lli;

.field public l:Lhj;


# direct methods
.method public constructor <init>(Llg;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lkm0;-><init>(Llg;)V

    .line 4
    new-instance p1, Lli;

    .line 6
    invoke-direct {p1, p0}, Lli;-><init>(Lkm0;)V

    .line 9
    iput-object p1, p0, Luk0;->k:Lli;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Luk0;->l:Lhj;

    .line 14
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 16
    sget-object v1, Lli$a;->f:Lli$a;

    .line 18
    iput-object v1, v0, Lli;->e:Lli$a;

    .line 20
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 22
    sget-object v1, Lli$a;->g:Lli$a;

    .line 24
    iput-object v1, v0, Lli;->e:Lli$a;

    .line 26
    sget-object v0, Lli$a;->h:Lli$a;

    .line 28
    iput-object v0, p1, Lli;->e:Lli$a;

    .line 30
    const/4 p1, 0x1

    .line 31
    iput p1, p0, Lkm0;->f:I

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lji;)V
    .locals 6

    .line 1
    sget-object v0, Luk0$a;->a:[I

    .line 3
    iget-object v1, p0, Lkm0;->j:Lkm0$b;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x3

    .line 12
    const/4 v2, 0x2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v0, v3, :cond_2

    .line 16
    if-eq v0, v2, :cond_1

    .line 18
    if-eq v0, v1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 23
    iget-object v1, v0, Llg;->I:Lfg;

    .line 25
    iget-object v0, v0, Llg;->K:Lfg;

    .line 27
    invoke-virtual {p0, p1, v1, v0, v3}, Lkm0;->n(Lji;Lfg;Lfg;I)V

    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0, p1}, Lkm0;->o(Lji;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0, p1}, Lkm0;->p(Lji;)V

    .line 38
    :goto_0
    iget-object p1, p0, Lkm0;->e:Lhj;

    .line 40
    iget-boolean v0, p1, Lli;->c:Z

    .line 42
    const/high16 v4, 0x3f000000    # 0.5f

    .line 44
    const/4 v5, 0x0

    .line 45
    if-eqz v0, :cond_8

    .line 47
    iget-boolean p1, p1, Lli;->j:Z

    .line 49
    if-nez p1, :cond_8

    .line 51
    iget-object p1, p0, Lkm0;->d:Llg$b;

    .line 53
    sget-object v0, Llg$b;->c:Llg$b;

    .line 55
    if-ne p1, v0, :cond_8

    .line 57
    iget-object p1, p0, Lkm0;->b:Llg;

    .line 59
    iget v0, p1, Llg;->q:I

    .line 61
    if-eq v0, v2, :cond_7

    .line 63
    if-eq v0, v1, :cond_3

    .line 65
    goto :goto_4

    .line 66
    :cond_3
    iget-object v0, p1, Llg;->e:Lqp;

    .line 68
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 70
    iget-boolean v0, v0, Lli;->j:Z

    .line 72
    if-eqz v0, :cond_8

    .line 74
    invoke-virtual {p1}, Llg;->u()I

    .line 77
    move-result p1

    .line 78
    const/4 v0, -0x1

    .line 79
    if-eq p1, v0, :cond_6

    .line 81
    if-eqz p1, :cond_5

    .line 83
    if-eq p1, v3, :cond_4

    .line 85
    const/4 p1, 0x0

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    iget-object p1, p0, Lkm0;->b:Llg;

    .line 89
    iget-object v0, p1, Llg;->e:Lqp;

    .line 91
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 93
    iget v0, v0, Lli;->g:I

    .line 95
    int-to-float v0, v0

    .line 96
    invoke-virtual {p1}, Llg;->t()F

    .line 99
    move-result p1

    .line 100
    goto :goto_1

    .line 101
    :cond_5
    iget-object p1, p0, Lkm0;->b:Llg;

    .line 103
    iget-object v0, p1, Llg;->e:Lqp;

    .line 105
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 107
    iget v0, v0, Lli;->g:I

    .line 109
    int-to-float v0, v0

    .line 110
    invoke-virtual {p1}, Llg;->t()F

    .line 113
    move-result p1

    .line 114
    mul-float v0, v0, p1

    .line 116
    goto :goto_2

    .line 117
    :cond_6
    iget-object p1, p0, Lkm0;->b:Llg;

    .line 119
    iget-object v0, p1, Llg;->e:Lqp;

    .line 121
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 123
    iget v0, v0, Lli;->g:I

    .line 125
    int-to-float v0, v0

    .line 126
    invoke-virtual {p1}, Llg;->t()F

    .line 129
    move-result p1

    .line 130
    :goto_1
    div-float/2addr v0, p1

    .line 131
    :goto_2
    add-float/2addr v0, v4

    .line 132
    float-to-int p1, v0

    .line 133
    :goto_3
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 135
    invoke-virtual {v0, p1}, Lhj;->d(I)V

    .line 138
    goto :goto_4

    .line 139
    :cond_7
    invoke-virtual {p1}, Llg;->I()Llg;

    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_8

    .line 145
    iget-object p1, p1, Llg;->f:Luk0;

    .line 147
    iget-object p1, p1, Lkm0;->e:Lhj;

    .line 149
    iget-boolean v0, p1, Lli;->j:Z

    .line 151
    if-eqz v0, :cond_8

    .line 153
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 155
    iget v0, v0, Llg;->x:F

    .line 157
    iget p1, p1, Lli;->g:I

    .line 159
    int-to-float p1, p1

    .line 160
    mul-float p1, p1, v0

    .line 162
    add-float/2addr p1, v4

    .line 163
    float-to-int p1, p1

    .line 164
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 166
    invoke-virtual {v0, p1}, Lhj;->d(I)V

    .line 169
    :cond_8
    :goto_4
    iget-object p1, p0, Lkm0;->h:Lli;

    .line 171
    iget-boolean v0, p1, Lli;->c:Z

    .line 173
    if-eqz v0, :cond_10

    .line 175
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 177
    iget-boolean v1, v0, Lli;->c:Z

    .line 179
    if-nez v1, :cond_9

    .line 181
    goto/16 :goto_6

    .line 183
    :cond_9
    iget-boolean p1, p1, Lli;->j:Z

    .line 185
    if-eqz p1, :cond_a

    .line 187
    iget-boolean p1, v0, Lli;->j:Z

    .line 189
    if-eqz p1, :cond_a

    .line 191
    iget-object p1, p0, Lkm0;->e:Lhj;

    .line 193
    iget-boolean p1, p1, Lli;->j:Z

    .line 195
    if-eqz p1, :cond_a

    .line 197
    return-void

    .line 198
    :cond_a
    iget-object p1, p0, Lkm0;->e:Lhj;

    .line 200
    iget-boolean p1, p1, Lli;->j:Z

    .line 202
    if-nez p1, :cond_b

    .line 204
    iget-object p1, p0, Lkm0;->d:Llg$b;

    .line 206
    sget-object v0, Llg$b;->c:Llg$b;

    .line 208
    if-ne p1, v0, :cond_b

    .line 210
    iget-object p1, p0, Lkm0;->b:Llg;

    .line 212
    iget v0, p1, Llg;->p:I

    .line 214
    if-nez v0, :cond_b

    .line 216
    invoke-virtual {p1}, Llg;->b0()Z

    .line 219
    move-result p1

    .line 220
    if-nez p1, :cond_b

    .line 222
    iget-object p1, p0, Lkm0;->h:Lli;

    .line 224
    iget-object p1, p1, Lli;->l:Ljava/util/List;

    .line 226
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 229
    move-result-object p1

    .line 230
    check-cast p1, Lli;

    .line 232
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 234
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 236
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Lli;

    .line 242
    iget p1, p1, Lli;->g:I

    .line 244
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 246
    iget v2, v1, Lli;->f:I

    .line 248
    add-int/2addr p1, v2

    .line 249
    iget v0, v0, Lli;->g:I

    .line 251
    iget-object v2, p0, Lkm0;->i:Lli;

    .line 253
    iget v2, v2, Lli;->f:I

    .line 255
    add-int/2addr v0, v2

    .line 256
    sub-int v2, v0, p1

    .line 258
    invoke-virtual {v1, p1}, Lli;->d(I)V

    .line 261
    iget-object p1, p0, Lkm0;->i:Lli;

    .line 263
    invoke-virtual {p1, v0}, Lli;->d(I)V

    .line 266
    iget-object p1, p0, Lkm0;->e:Lhj;

    .line 268
    invoke-virtual {p1, v2}, Lhj;->d(I)V

    .line 271
    return-void

    .line 272
    :cond_b
    iget-object p1, p0, Lkm0;->e:Lhj;

    .line 274
    iget-boolean p1, p1, Lli;->j:Z

    .line 276
    if-nez p1, :cond_d

    .line 278
    iget-object p1, p0, Lkm0;->d:Llg$b;

    .line 280
    sget-object v0, Llg$b;->c:Llg$b;

    .line 282
    if-ne p1, v0, :cond_d

    .line 284
    iget p1, p0, Lkm0;->a:I

    .line 286
    if-ne p1, v3, :cond_d

    .line 288
    iget-object p1, p0, Lkm0;->h:Lli;

    .line 290
    iget-object p1, p1, Lli;->l:Ljava/util/List;

    .line 292
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 295
    move-result p1

    .line 296
    if-lez p1, :cond_d

    .line 298
    iget-object p1, p0, Lkm0;->i:Lli;

    .line 300
    iget-object p1, p1, Lli;->l:Ljava/util/List;

    .line 302
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 305
    move-result p1

    .line 306
    if-lez p1, :cond_d

    .line 308
    iget-object p1, p0, Lkm0;->h:Lli;

    .line 310
    iget-object p1, p1, Lli;->l:Ljava/util/List;

    .line 312
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    move-result-object p1

    .line 316
    check-cast p1, Lli;

    .line 318
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 320
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 322
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 325
    move-result-object v0

    .line 326
    check-cast v0, Lli;

    .line 328
    iget p1, p1, Lli;->g:I

    .line 330
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 332
    iget v1, v1, Lli;->f:I

    .line 334
    add-int/2addr p1, v1

    .line 335
    iget v0, v0, Lli;->g:I

    .line 337
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 339
    iget v1, v1, Lli;->f:I

    .line 341
    add-int/2addr v0, v1

    .line 342
    sub-int/2addr v0, p1

    .line 343
    iget-object p1, p0, Lkm0;->e:Lhj;

    .line 345
    iget v1, p1, Lhj;->m:I

    .line 347
    if-ge v0, v1, :cond_c

    .line 349
    invoke-virtual {p1, v0}, Lhj;->d(I)V

    .line 352
    goto :goto_5

    .line 353
    :cond_c
    invoke-virtual {p1, v1}, Lhj;->d(I)V

    .line 356
    :cond_d
    :goto_5
    iget-object p1, p0, Lkm0;->e:Lhj;

    .line 358
    iget-boolean p1, p1, Lli;->j:Z

    .line 360
    if-nez p1, :cond_e

    .line 362
    return-void

    .line 363
    :cond_e
    iget-object p1, p0, Lkm0;->h:Lli;

    .line 365
    iget-object p1, p1, Lli;->l:Ljava/util/List;

    .line 367
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 370
    move-result p1

    .line 371
    if-lez p1, :cond_10

    .line 373
    iget-object p1, p0, Lkm0;->i:Lli;

    .line 375
    iget-object p1, p1, Lli;->l:Ljava/util/List;

    .line 377
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 380
    move-result p1

    .line 381
    if-lez p1, :cond_10

    .line 383
    iget-object p1, p0, Lkm0;->h:Lli;

    .line 385
    iget-object p1, p1, Lli;->l:Ljava/util/List;

    .line 387
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 390
    move-result-object p1

    .line 391
    check-cast p1, Lli;

    .line 393
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 395
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 397
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 400
    move-result-object v0

    .line 401
    check-cast v0, Lli;

    .line 403
    iget v1, p1, Lli;->g:I

    .line 405
    iget-object v2, p0, Lkm0;->h:Lli;

    .line 407
    iget v2, v2, Lli;->f:I

    .line 409
    add-int/2addr v1, v2

    .line 410
    iget v2, v0, Lli;->g:I

    .line 412
    iget-object v3, p0, Lkm0;->i:Lli;

    .line 414
    iget v3, v3, Lli;->f:I

    .line 416
    add-int/2addr v2, v3

    .line 417
    iget-object v3, p0, Lkm0;->b:Llg;

    .line 419
    invoke-virtual {v3}, Llg;->M()F

    .line 422
    move-result v3

    .line 423
    if-ne p1, v0, :cond_f

    .line 425
    iget v1, p1, Lli;->g:I

    .line 427
    iget v2, v0, Lli;->g:I

    .line 429
    const/high16 v3, 0x3f000000    # 0.5f

    .line 431
    :cond_f
    sub-int/2addr v2, v1

    .line 432
    iget-object p1, p0, Lkm0;->e:Lhj;

    .line 434
    iget p1, p1, Lli;->g:I

    .line 436
    sub-int/2addr v2, p1

    .line 437
    iget-object p1, p0, Lkm0;->h:Lli;

    .line 439
    int-to-float v0, v1

    .line 440
    add-float/2addr v0, v4

    .line 441
    int-to-float v1, v2

    .line 442
    mul-float v1, v1, v3

    .line 444
    add-float/2addr v0, v1

    .line 445
    float-to-int v0, v0

    .line 446
    invoke-virtual {p1, v0}, Lli;->d(I)V

    .line 449
    iget-object p1, p0, Lkm0;->i:Lli;

    .line 451
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 453
    iget v0, v0, Lli;->g:I

    .line 455
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 457
    iget v1, v1, Lli;->g:I

    .line 459
    add-int/2addr v0, v1

    .line 460
    invoke-virtual {p1, v0}, Lli;->d(I)V

    .line 463
    :cond_10
    :goto_6
    return-void
.end method

.method public d()V
    .locals 10

    .line 1
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 3
    iget-boolean v1, v0, Llg;->a:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 9
    invoke-virtual {v0}, Llg;->v()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {v1, v0}, Lhj;->d(I)V

    .line 16
    :cond_0
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 18
    iget-boolean v0, v0, Lli;->j:Z

    .line 20
    if-nez v0, :cond_3

    .line 22
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 24
    invoke-virtual {v0}, Llg;->O()Llg$b;

    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lkm0;->d:Llg$b;

    .line 30
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 32
    invoke-virtual {v0}, Llg;->U()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 38
    new-instance v0, Lrc;

    .line 40
    invoke-direct {v0, p0}, Lrc;-><init>(Lkm0;)V

    .line 43
    iput-object v0, p0, Luk0;->l:Lhj;

    .line 45
    :cond_1
    iget-object v0, p0, Lkm0;->d:Llg$b;

    .line 47
    sget-object v1, Llg$b;->c:Llg$b;

    .line 49
    if-eq v0, v1, :cond_4

    .line 51
    sget-object v1, Llg$b;->d:Llg$b;

    .line 53
    if-ne v0, v1, :cond_2

    .line 55
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 57
    invoke-virtual {v0}, Llg;->I()Llg;

    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_2

    .line 63
    invoke-virtual {v0}, Llg;->O()Llg$b;

    .line 66
    move-result-object v1

    .line 67
    sget-object v2, Llg$b;->a:Llg$b;

    .line 69
    if-ne v1, v2, :cond_2

    .line 71
    invoke-virtual {v0}, Llg;->v()I

    .line 74
    move-result v1

    .line 75
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 77
    iget-object v2, v2, Llg;->I:Lfg;

    .line 79
    invoke-virtual {v2}, Lfg;->e()I

    .line 82
    move-result v2

    .line 83
    sub-int/2addr v1, v2

    .line 84
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 86
    iget-object v2, v2, Llg;->K:Lfg;

    .line 88
    invoke-virtual {v2}, Lfg;->e()I

    .line 91
    move-result v2

    .line 92
    sub-int/2addr v1, v2

    .line 93
    iget-object v2, p0, Lkm0;->h:Lli;

    .line 95
    iget-object v3, v0, Llg;->f:Luk0;

    .line 97
    iget-object v3, v3, Lkm0;->h:Lli;

    .line 99
    iget-object v4, p0, Lkm0;->b:Llg;

    .line 101
    iget-object v4, v4, Llg;->I:Lfg;

    .line 103
    invoke-virtual {v4}, Lfg;->e()I

    .line 106
    move-result v4

    .line 107
    invoke-virtual {p0, v2, v3, v4}, Lkm0;->b(Lli;Lli;I)V

    .line 110
    iget-object v2, p0, Lkm0;->i:Lli;

    .line 112
    iget-object v0, v0, Llg;->f:Luk0;

    .line 114
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 116
    iget-object v3, p0, Lkm0;->b:Llg;

    .line 118
    iget-object v3, v3, Llg;->K:Lfg;

    .line 120
    invoke-virtual {v3}, Lfg;->e()I

    .line 123
    move-result v3

    .line 124
    neg-int v3, v3

    .line 125
    invoke-virtual {p0, v2, v0, v3}, Lkm0;->b(Lli;Lli;I)V

    .line 128
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 130
    invoke-virtual {v0, v1}, Lhj;->d(I)V

    .line 133
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lkm0;->d:Llg$b;

    .line 136
    sget-object v1, Llg$b;->a:Llg$b;

    .line 138
    if-ne v0, v1, :cond_4

    .line 140
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 142
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 144
    invoke-virtual {v1}, Llg;->v()I

    .line 147
    move-result v1

    .line 148
    invoke-virtual {v0, v1}, Lhj;->d(I)V

    .line 151
    goto :goto_0

    .line 152
    :cond_3
    iget-object v0, p0, Lkm0;->d:Llg$b;

    .line 154
    sget-object v1, Llg$b;->d:Llg$b;

    .line 156
    if-ne v0, v1, :cond_4

    .line 158
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 160
    invoke-virtual {v0}, Llg;->I()Llg;

    .line 163
    move-result-object v0

    .line 164
    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {v0}, Llg;->O()Llg$b;

    .line 169
    move-result-object v1

    .line 170
    sget-object v2, Llg$b;->a:Llg$b;

    .line 172
    if-ne v1, v2, :cond_4

    .line 174
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 176
    iget-object v2, v0, Llg;->f:Luk0;

    .line 178
    iget-object v2, v2, Lkm0;->h:Lli;

    .line 180
    iget-object v3, p0, Lkm0;->b:Llg;

    .line 182
    iget-object v3, v3, Llg;->I:Lfg;

    .line 184
    invoke-virtual {v3}, Lfg;->e()I

    .line 187
    move-result v3

    .line 188
    invoke-virtual {p0, v1, v2, v3}, Lkm0;->b(Lli;Lli;I)V

    .line 191
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 193
    iget-object v0, v0, Llg;->f:Luk0;

    .line 195
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 197
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 199
    iget-object v2, v2, Llg;->K:Lfg;

    .line 201
    invoke-virtual {v2}, Lfg;->e()I

    .line 204
    move-result v2

    .line 205
    neg-int v2, v2

    .line 206
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 209
    return-void

    .line 210
    :cond_4
    :goto_0
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 212
    iget-boolean v1, v0, Lli;->j:Z

    .line 214
    const/4 v2, 0x0

    .line 215
    const/4 v3, 0x4

    .line 216
    const/4 v4, 0x2

    .line 217
    const/4 v5, 0x1

    .line 218
    const/4 v6, 0x3

    .line 219
    if-eqz v1, :cond_d

    .line 221
    iget-object v7, p0, Lkm0;->b:Llg;

    .line 223
    iget-boolean v8, v7, Llg;->a:Z

    .line 225
    if-eqz v8, :cond_d

    .line 227
    iget-object v0, v7, Llg;->P:[Lfg;

    .line 229
    aget-object v1, v0, v4

    .line 231
    iget-object v8, v1, Lfg;->f:Lfg;

    .line 233
    if-eqz v8, :cond_8

    .line 235
    aget-object v9, v0, v6

    .line 237
    iget-object v9, v9, Lfg;->f:Lfg;

    .line 239
    if-eqz v9, :cond_8

    .line 241
    invoke-virtual {v7}, Llg;->b0()Z

    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_5

    .line 247
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 249
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 251
    iget-object v1, v1, Llg;->P:[Lfg;

    .line 253
    aget-object v1, v1, v4

    .line 255
    invoke-virtual {v1}, Lfg;->e()I

    .line 258
    move-result v1

    .line 259
    iput v1, v0, Lli;->f:I

    .line 261
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 263
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 265
    iget-object v1, v1, Llg;->P:[Lfg;

    .line 267
    aget-object v1, v1, v6

    .line 269
    invoke-virtual {v1}, Lfg;->e()I

    .line 272
    move-result v1

    .line 273
    neg-int v1, v1

    .line 274
    iput v1, v0, Lli;->f:I

    .line 276
    goto :goto_1

    .line 277
    :cond_5
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 279
    iget-object v0, v0, Llg;->P:[Lfg;

    .line 281
    aget-object v0, v0, v4

    .line 283
    invoke-virtual {p0, v0}, Lkm0;->h(Lfg;)Lli;

    .line 286
    move-result-object v0

    .line 287
    if-eqz v0, :cond_6

    .line 289
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 291
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 293
    iget-object v2, v2, Llg;->P:[Lfg;

    .line 295
    aget-object v2, v2, v4

    .line 297
    invoke-virtual {v2}, Lfg;->e()I

    .line 300
    move-result v2

    .line 301
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 304
    :cond_6
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 306
    iget-object v0, v0, Llg;->P:[Lfg;

    .line 308
    aget-object v0, v0, v6

    .line 310
    invoke-virtual {p0, v0}, Lkm0;->h(Lfg;)Lli;

    .line 313
    move-result-object v0

    .line 314
    if-eqz v0, :cond_7

    .line 316
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 318
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 320
    iget-object v2, v2, Llg;->P:[Lfg;

    .line 322
    aget-object v2, v2, v6

    .line 324
    invoke-virtual {v2}, Lfg;->e()I

    .line 327
    move-result v2

    .line 328
    neg-int v2, v2

    .line 329
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 332
    :cond_7
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 334
    iput-boolean v5, v0, Lli;->b:Z

    .line 336
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 338
    iput-boolean v5, v0, Lli;->b:Z

    .line 340
    :goto_1
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 342
    invoke-virtual {v0}, Llg;->U()Z

    .line 345
    move-result v0

    .line 346
    if-eqz v0, :cond_1c

    .line 348
    iget-object v0, p0, Luk0;->k:Lli;

    .line 350
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 352
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 354
    invoke-virtual {v2}, Llg;->n()I

    .line 357
    move-result v2

    .line 358
    invoke-virtual {p0, v0, v1, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 361
    goto/16 :goto_5

    .line 363
    :cond_8
    if-eqz v8, :cond_9

    .line 365
    invoke-virtual {p0, v1}, Lkm0;->h(Lfg;)Lli;

    .line 368
    move-result-object v0

    .line 369
    if-eqz v0, :cond_1c

    .line 371
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 373
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 375
    iget-object v2, v2, Llg;->P:[Lfg;

    .line 377
    aget-object v2, v2, v4

    .line 379
    invoke-virtual {v2}, Lfg;->e()I

    .line 382
    move-result v2

    .line 383
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 386
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 388
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 390
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 392
    iget v2, v2, Lli;->g:I

    .line 394
    invoke-virtual {p0, v0, v1, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 397
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 399
    invoke-virtual {v0}, Llg;->U()Z

    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_1c

    .line 405
    iget-object v0, p0, Luk0;->k:Lli;

    .line 407
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 409
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 411
    invoke-virtual {v2}, Llg;->n()I

    .line 414
    move-result v2

    .line 415
    invoke-virtual {p0, v0, v1, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 418
    goto/16 :goto_5

    .line 420
    :cond_9
    aget-object v1, v0, v6

    .line 422
    iget-object v4, v1, Lfg;->f:Lfg;

    .line 424
    if-eqz v4, :cond_b

    .line 426
    invoke-virtual {p0, v1}, Lkm0;->h(Lfg;)Lli;

    .line 429
    move-result-object v0

    .line 430
    if-eqz v0, :cond_a

    .line 432
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 434
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 436
    iget-object v2, v2, Llg;->P:[Lfg;

    .line 438
    aget-object v2, v2, v6

    .line 440
    invoke-virtual {v2}, Lfg;->e()I

    .line 443
    move-result v2

    .line 444
    neg-int v2, v2

    .line 445
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 448
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 450
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 452
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 454
    iget v2, v2, Lli;->g:I

    .line 456
    neg-int v2, v2

    .line 457
    invoke-virtual {p0, v0, v1, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 460
    :cond_a
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 462
    invoke-virtual {v0}, Llg;->U()Z

    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_1c

    .line 468
    iget-object v0, p0, Luk0;->k:Lli;

    .line 470
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 472
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 474
    invoke-virtual {v2}, Llg;->n()I

    .line 477
    move-result v2

    .line 478
    invoke-virtual {p0, v0, v1, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 481
    goto/16 :goto_5

    .line 483
    :cond_b
    aget-object v0, v0, v3

    .line 485
    iget-object v1, v0, Lfg;->f:Lfg;

    .line 487
    if-eqz v1, :cond_c

    .line 489
    invoke-virtual {p0, v0}, Lkm0;->h(Lfg;)Lli;

    .line 492
    move-result-object v0

    .line 493
    if-eqz v0, :cond_1c

    .line 495
    iget-object v1, p0, Luk0;->k:Lli;

    .line 497
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 500
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 502
    iget-object v1, p0, Luk0;->k:Lli;

    .line 504
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 506
    invoke-virtual {v2}, Llg;->n()I

    .line 509
    move-result v2

    .line 510
    neg-int v2, v2

    .line 511
    invoke-virtual {p0, v0, v1, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 514
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 516
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 518
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 520
    iget v2, v2, Lli;->g:I

    .line 522
    invoke-virtual {p0, v0, v1, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 525
    goto/16 :goto_5

    .line 527
    :cond_c
    instance-of v0, v7, Lep;

    .line 529
    if-nez v0, :cond_1c

    .line 531
    invoke-virtual {v7}, Llg;->I()Llg;

    .line 534
    move-result-object v0

    .line 535
    if-eqz v0, :cond_1c

    .line 537
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 539
    sget-object v1, Lfg$b;->g:Lfg$b;

    .line 541
    invoke-virtual {v0, v1}, Llg;->m(Lfg$b;)Lfg;

    .line 544
    move-result-object v0

    .line 545
    iget-object v0, v0, Lfg;->f:Lfg;

    .line 547
    if-nez v0, :cond_1c

    .line 549
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 551
    invoke-virtual {v0}, Llg;->I()Llg;

    .line 554
    move-result-object v0

    .line 555
    iget-object v0, v0, Llg;->f:Luk0;

    .line 557
    iget-object v0, v0, Lkm0;->h:Lli;

    .line 559
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 561
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 563
    invoke-virtual {v2}, Llg;->T()I

    .line 566
    move-result v2

    .line 567
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 570
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 572
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 574
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 576
    iget v2, v2, Lli;->g:I

    .line 578
    invoke-virtual {p0, v0, v1, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 581
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 583
    invoke-virtual {v0}, Llg;->U()Z

    .line 586
    move-result v0

    .line 587
    if-eqz v0, :cond_1c

    .line 589
    iget-object v0, p0, Luk0;->k:Lli;

    .line 591
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 593
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 595
    invoke-virtual {v2}, Llg;->n()I

    .line 598
    move-result v2

    .line 599
    invoke-virtual {p0, v0, v1, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 602
    goto/16 :goto_5

    .line 604
    :cond_d
    if-nez v1, :cond_12

    .line 606
    iget-object v1, p0, Lkm0;->d:Llg$b;

    .line 608
    sget-object v7, Llg$b;->c:Llg$b;

    .line 610
    if-ne v1, v7, :cond_12

    .line 612
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 614
    iget v1, v0, Llg;->q:I

    .line 616
    if-eq v1, v4, :cond_10

    .line 618
    if-eq v1, v6, :cond_e

    .line 620
    goto :goto_2

    .line 621
    :cond_e
    invoke-virtual {v0}, Llg;->b0()Z

    .line 624
    move-result v0

    .line 625
    if-nez v0, :cond_13

    .line 627
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 629
    iget v1, v0, Llg;->p:I

    .line 631
    if-ne v1, v6, :cond_f

    .line 633
    goto :goto_2

    .line 634
    :cond_f
    iget-object v0, v0, Llg;->e:Lqp;

    .line 636
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 638
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 640
    iget-object v1, v1, Lli;->l:Ljava/util/List;

    .line 642
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 647
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 649
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 654
    iput-boolean v5, v0, Lli;->b:Z

    .line 656
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 658
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 660
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 665
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 667
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 669
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    goto :goto_2

    .line 673
    :cond_10
    invoke-virtual {v0}, Llg;->I()Llg;

    .line 676
    move-result-object v0

    .line 677
    if-nez v0, :cond_11

    .line 679
    goto :goto_2

    .line 680
    :cond_11
    iget-object v0, v0, Llg;->f:Luk0;

    .line 682
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 684
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 686
    iget-object v1, v1, Lli;->l:Ljava/util/List;

    .line 688
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 693
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 695
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 700
    iput-boolean v5, v0, Lli;->b:Z

    .line 702
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 704
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 706
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 711
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 713
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 715
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    goto :goto_2

    .line 719
    :cond_12
    invoke-virtual {v0, p0}, Lli;->b(Lji;)V

    .line 722
    :cond_13
    :goto_2
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 724
    iget-object v1, v0, Llg;->P:[Lfg;

    .line 726
    aget-object v7, v1, v4

    .line 728
    iget-object v8, v7, Lfg;->f:Lfg;

    .line 730
    if-eqz v8, :cond_15

    .line 732
    aget-object v9, v1, v6

    .line 734
    iget-object v9, v9, Lfg;->f:Lfg;

    .line 736
    if-eqz v9, :cond_15

    .line 738
    invoke-virtual {v0}, Llg;->b0()Z

    .line 741
    move-result v0

    .line 742
    if-eqz v0, :cond_14

    .line 744
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 746
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 748
    iget-object v1, v1, Llg;->P:[Lfg;

    .line 750
    aget-object v1, v1, v4

    .line 752
    invoke-virtual {v1}, Lfg;->e()I

    .line 755
    move-result v1

    .line 756
    iput v1, v0, Lli;->f:I

    .line 758
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 760
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 762
    iget-object v1, v1, Llg;->P:[Lfg;

    .line 764
    aget-object v1, v1, v6

    .line 766
    invoke-virtual {v1}, Lfg;->e()I

    .line 769
    move-result v1

    .line 770
    neg-int v1, v1

    .line 771
    iput v1, v0, Lli;->f:I

    .line 773
    goto :goto_3

    .line 774
    :cond_14
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 776
    iget-object v0, v0, Llg;->P:[Lfg;

    .line 778
    aget-object v0, v0, v4

    .line 780
    invoke-virtual {p0, v0}, Lkm0;->h(Lfg;)Lli;

    .line 783
    move-result-object v0

    .line 784
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 786
    iget-object v1, v1, Llg;->P:[Lfg;

    .line 788
    aget-object v1, v1, v6

    .line 790
    invoke-virtual {p0, v1}, Lkm0;->h(Lfg;)Lli;

    .line 793
    move-result-object v1

    .line 794
    invoke-virtual {v0, p0}, Lli;->b(Lji;)V

    .line 797
    invoke-virtual {v1, p0}, Lli;->b(Lji;)V

    .line 800
    sget-object v0, Lkm0$b;->d:Lkm0$b;

    .line 802
    iput-object v0, p0, Lkm0;->j:Lkm0$b;

    .line 804
    :goto_3
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 806
    invoke-virtual {v0}, Llg;->U()Z

    .line 809
    move-result v0

    .line 810
    if-eqz v0, :cond_1b

    .line 812
    iget-object v0, p0, Luk0;->k:Lli;

    .line 814
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 816
    iget-object v2, p0, Luk0;->l:Lhj;

    .line 818
    invoke-virtual {p0, v0, v1, v5, v2}, Lkm0;->c(Lli;Lli;ILhj;)V

    .line 821
    goto/16 :goto_4

    .line 823
    :cond_15
    const/4 v9, 0x0

    .line 824
    if-eqz v8, :cond_17

    .line 826
    invoke-virtual {p0, v7}, Lkm0;->h(Lfg;)Lli;

    .line 829
    move-result-object v0

    .line 830
    if-eqz v0, :cond_1b

    .line 832
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 834
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 836
    iget-object v2, v2, Llg;->P:[Lfg;

    .line 838
    aget-object v2, v2, v4

    .line 840
    invoke-virtual {v2}, Lfg;->e()I

    .line 843
    move-result v2

    .line 844
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 847
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 849
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 851
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 853
    invoke-virtual {p0, v0, v1, v5, v2}, Lkm0;->c(Lli;Lli;ILhj;)V

    .line 856
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 858
    invoke-virtual {v0}, Llg;->U()Z

    .line 861
    move-result v0

    .line 862
    if-eqz v0, :cond_16

    .line 864
    iget-object v0, p0, Luk0;->k:Lli;

    .line 866
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 868
    iget-object v2, p0, Luk0;->l:Lhj;

    .line 870
    invoke-virtual {p0, v0, v1, v5, v2}, Lkm0;->c(Lli;Lli;ILhj;)V

    .line 873
    :cond_16
    iget-object v0, p0, Lkm0;->d:Llg$b;

    .line 875
    sget-object v1, Llg$b;->c:Llg$b;

    .line 877
    if-ne v0, v1, :cond_1b

    .line 879
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 881
    invoke-virtual {v0}, Llg;->t()F

    .line 884
    move-result v0

    .line 885
    cmpl-float v0, v0, v9

    .line 887
    if-lez v0, :cond_1b

    .line 889
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 891
    iget-object v0, v0, Llg;->e:Lqp;

    .line 893
    iget-object v2, v0, Lkm0;->d:Llg$b;

    .line 895
    if-ne v2, v1, :cond_1b

    .line 897
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 899
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 901
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 903
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 908
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 910
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 912
    iget-object v1, v1, Llg;->e:Lqp;

    .line 914
    iget-object v1, v1, Lkm0;->e:Lhj;

    .line 916
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 921
    iput-object p0, v0, Lli;->a:Lji;

    .line 923
    goto/16 :goto_4

    .line 925
    :cond_17
    aget-object v4, v1, v6

    .line 927
    iget-object v7, v4, Lfg;->f:Lfg;

    .line 929
    const/4 v8, -0x1

    .line 930
    if-eqz v7, :cond_18

    .line 932
    invoke-virtual {p0, v4}, Lkm0;->h(Lfg;)Lli;

    .line 935
    move-result-object v0

    .line 936
    if-eqz v0, :cond_1b

    .line 938
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 940
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 942
    iget-object v2, v2, Llg;->P:[Lfg;

    .line 944
    aget-object v2, v2, v6

    .line 946
    invoke-virtual {v2}, Lfg;->e()I

    .line 949
    move-result v2

    .line 950
    neg-int v2, v2

    .line 951
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 954
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 956
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 958
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 960
    invoke-virtual {p0, v0, v1, v8, v2}, Lkm0;->c(Lli;Lli;ILhj;)V

    .line 963
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 965
    invoke-virtual {v0}, Llg;->U()Z

    .line 968
    move-result v0

    .line 969
    if-eqz v0, :cond_1b

    .line 971
    iget-object v0, p0, Luk0;->k:Lli;

    .line 973
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 975
    iget-object v2, p0, Luk0;->l:Lhj;

    .line 977
    invoke-virtual {p0, v0, v1, v5, v2}, Lkm0;->c(Lli;Lli;ILhj;)V

    .line 980
    goto/16 :goto_4

    .line 982
    :cond_18
    aget-object v1, v1, v3

    .line 984
    iget-object v3, v1, Lfg;->f:Lfg;

    .line 986
    if-eqz v3, :cond_19

    .line 988
    invoke-virtual {p0, v1}, Lkm0;->h(Lfg;)Lli;

    .line 991
    move-result-object v0

    .line 992
    if-eqz v0, :cond_1b

    .line 994
    iget-object v1, p0, Luk0;->k:Lli;

    .line 996
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 999
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 1001
    iget-object v1, p0, Luk0;->k:Lli;

    .line 1003
    iget-object v2, p0, Luk0;->l:Lhj;

    .line 1005
    invoke-virtual {p0, v0, v1, v8, v2}, Lkm0;->c(Lli;Lli;ILhj;)V

    .line 1008
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 1010
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 1012
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 1014
    invoke-virtual {p0, v0, v1, v5, v2}, Lkm0;->c(Lli;Lli;ILhj;)V

    .line 1017
    goto :goto_4

    .line 1018
    :cond_19
    instance-of v1, v0, Lep;

    .line 1020
    if-nez v1, :cond_1b

    .line 1022
    invoke-virtual {v0}, Llg;->I()Llg;

    .line 1025
    move-result-object v0

    .line 1026
    if-eqz v0, :cond_1b

    .line 1028
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 1030
    invoke-virtual {v0}, Llg;->I()Llg;

    .line 1033
    move-result-object v0

    .line 1034
    iget-object v0, v0, Llg;->f:Luk0;

    .line 1036
    iget-object v0, v0, Lkm0;->h:Lli;

    .line 1038
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 1040
    iget-object v2, p0, Lkm0;->b:Llg;

    .line 1042
    invoke-virtual {v2}, Llg;->T()I

    .line 1045
    move-result v2

    .line 1046
    invoke-virtual {p0, v1, v0, v2}, Lkm0;->b(Lli;Lli;I)V

    .line 1049
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 1051
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 1053
    iget-object v2, p0, Lkm0;->e:Lhj;

    .line 1055
    invoke-virtual {p0, v0, v1, v5, v2}, Lkm0;->c(Lli;Lli;ILhj;)V

    .line 1058
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 1060
    invoke-virtual {v0}, Llg;->U()Z

    .line 1063
    move-result v0

    .line 1064
    if-eqz v0, :cond_1a

    .line 1066
    iget-object v0, p0, Luk0;->k:Lli;

    .line 1068
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 1070
    iget-object v2, p0, Luk0;->l:Lhj;

    .line 1072
    invoke-virtual {p0, v0, v1, v5, v2}, Lkm0;->c(Lli;Lli;ILhj;)V

    .line 1075
    :cond_1a
    iget-object v0, p0, Lkm0;->d:Llg$b;

    .line 1077
    sget-object v1, Llg$b;->c:Llg$b;

    .line 1079
    if-ne v0, v1, :cond_1b

    .line 1081
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 1083
    invoke-virtual {v0}, Llg;->t()F

    .line 1086
    move-result v0

    .line 1087
    cmpl-float v0, v0, v9

    .line 1089
    if-lez v0, :cond_1b

    .line 1091
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 1093
    iget-object v0, v0, Llg;->e:Lqp;

    .line 1095
    iget-object v2, v0, Lkm0;->d:Llg$b;

    .line 1097
    if-ne v2, v1, :cond_1b

    .line 1099
    iget-object v0, v0, Lkm0;->e:Lhj;

    .line 1101
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 1103
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 1105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 1110
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 1112
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 1114
    iget-object v1, v1, Llg;->e:Lqp;

    .line 1116
    iget-object v1, v1, Lkm0;->e:Lhj;

    .line 1118
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 1123
    iput-object p0, v0, Lli;->a:Lji;

    .line 1125
    :cond_1b
    :goto_4
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 1127
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 1129
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1132
    move-result v0

    .line 1133
    if-nez v0, :cond_1c

    .line 1135
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 1137
    iput-boolean v5, v0, Lli;->c:Z

    .line 1139
    :cond_1c
    :goto_5
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 3
    iget-boolean v1, v0, Lli;->j:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 9
    iget v0, v0, Lli;->g:I

    .line 11
    invoke-virtual {v1, v0}, Llg;->V0(I)V

    .line 14
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lkm0;->c:Lpb0;

    .line 4
    iget-object v0, p0, Lkm0;->h:Lli;

    .line 6
    invoke-virtual {v0}, Lli;->c()V

    .line 9
    iget-object v0, p0, Lkm0;->i:Lli;

    .line 11
    invoke-virtual {v0}, Lli;->c()V

    .line 14
    iget-object v0, p0, Luk0;->k:Lli;

    .line 16
    invoke-virtual {v0}, Lli;->c()V

    .line 19
    iget-object v0, p0, Lkm0;->e:Lhj;

    .line 21
    invoke-virtual {v0}, Lli;->c()V

    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lkm0;->g:Z

    .line 27
    return-void
.end method

.method public m()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lkm0;->d:Llg$b;

    .line 3
    sget-object v1, Llg$b;->c:Llg$b;

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lkm0;->b:Llg;

    .line 10
    iget v0, v0, Llg;->q:I

    .line 12
    if-nez v0, :cond_0

    .line 14
    return v2

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0

    .line 17
    :cond_1
    return v2
.end method

.method public q()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lkm0;->g:Z

    .line 4
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 6
    invoke-virtual {v1}, Lli;->c()V

    .line 9
    iget-object v1, p0, Lkm0;->h:Lli;

    .line 11
    iput-boolean v0, v1, Lli;->j:Z

    .line 13
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 15
    invoke-virtual {v1}, Lli;->c()V

    .line 18
    iget-object v1, p0, Lkm0;->i:Lli;

    .line 20
    iput-boolean v0, v1, Lli;->j:Z

    .line 22
    iget-object v1, p0, Luk0;->k:Lli;

    .line 24
    invoke-virtual {v1}, Lli;->c()V

    .line 27
    iget-object v1, p0, Luk0;->k:Lli;

    .line 29
    iput-boolean v0, v1, Lli;->j:Z

    .line 31
    iget-object v1, p0, Lkm0;->e:Lhj;

    .line 33
    iput-boolean v0, v1, Lli;->j:Z

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "VerticalRun "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lkm0;->b:Llg;

    .line 13
    invoke-virtual {v1}, Llg;->r()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
