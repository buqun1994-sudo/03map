.class public Lme;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Llg;

.field public b:Llg;

.field public c:Llg;

.field public d:Llg;

.field public e:Llg;

.field public f:Llg;

.field public g:Llg;

.field public h:Ljava/util/ArrayList;

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:I

.field public n:I

.field public o:Z

.field public p:I

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z


# direct methods
.method public constructor <init>(Llg;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lme;->k:F

    .line 7
    iput-object p1, p0, Lme;->a:Llg;

    .line 9
    iput p2, p0, Lme;->p:I

    .line 11
    iput-boolean p3, p0, Lme;->q:Z

    .line 13
    return-void
.end method

.method public static c(Llg;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Llg;->Q()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 7
    if-eq v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Llg;->S:[Llg$b;

    .line 11
    aget-object v0, v0, p1

    .line 13
    sget-object v1, Llg$b;->c:Llg$b;

    .line 15
    if-ne v0, v1, :cond_1

    .line 17
    iget-object p0, p0, Llg;->r:[I

    .line 19
    aget p0, p0, p1

    .line 21
    if-eqz p0, :cond_0

    .line 23
    const/4 p1, 0x3

    .line 24
    if-ne p0, p1, :cond_1

    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lme;->v:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lme;->b()V

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lme;->v:Z

    .line 11
    return-void
.end method

.method public final b()V
    .locals 12

    .line 1
    iget v0, p0, Lme;->p:I

    .line 3
    const/4 v1, 0x2

    .line 4
    mul-int/lit8 v0, v0, 0x2

    .line 6
    iget-object v2, p0, Lme;->a:Llg;

    .line 8
    const/4 v3, 0x1

    .line 9
    iput-boolean v3, p0, Lme;->o:Z

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v5, v2

    .line 13
    const/4 v6, 0x0

    .line 14
    :goto_0
    if-nez v6, :cond_15

    .line 16
    iget v7, p0, Lme;->i:I

    .line 18
    add-int/2addr v7, v3

    .line 19
    iput v7, p0, Lme;->i:I

    .line 21
    iget-object v7, v2, Llg;->x0:[Llg;

    .line 23
    iget v8, p0, Lme;->p:I

    .line 25
    const/4 v9, 0x0

    .line 26
    aput-object v9, v7, v8

    .line 28
    iget-object v7, v2, Llg;->w0:[Llg;

    .line 30
    aput-object v9, v7, v8

    .line 32
    invoke-virtual {v2}, Llg;->Q()I

    .line 35
    move-result v7

    .line 36
    const/16 v8, 0x8

    .line 38
    if-eq v7, v8, :cond_10

    .line 40
    iget v7, p0, Lme;->l:I

    .line 42
    add-int/2addr v7, v3

    .line 43
    iput v7, p0, Lme;->l:I

    .line 45
    iget v7, p0, Lme;->p:I

    .line 47
    invoke-virtual {v2, v7}, Llg;->s(I)Llg$b;

    .line 50
    move-result-object v7

    .line 51
    sget-object v8, Llg$b;->c:Llg$b;

    .line 53
    if-eq v7, v8, :cond_0

    .line 55
    iget v7, p0, Lme;->m:I

    .line 57
    iget v10, p0, Lme;->p:I

    .line 59
    invoke-virtual {v2, v10}, Llg;->C(I)I

    .line 62
    move-result v10

    .line 63
    add-int/2addr v7, v10

    .line 64
    iput v7, p0, Lme;->m:I

    .line 66
    :cond_0
    iget v7, p0, Lme;->m:I

    .line 68
    iget-object v10, v2, Llg;->P:[Lfg;

    .line 70
    aget-object v10, v10, v0

    .line 72
    invoke-virtual {v10}, Lfg;->e()I

    .line 75
    move-result v10

    .line 76
    add-int/2addr v7, v10

    .line 77
    iput v7, p0, Lme;->m:I

    .line 79
    iget-object v10, v2, Llg;->P:[Lfg;

    .line 81
    add-int/lit8 v11, v0, 0x1

    .line 83
    aget-object v10, v10, v11

    .line 85
    invoke-virtual {v10}, Lfg;->e()I

    .line 88
    move-result v10

    .line 89
    add-int/2addr v7, v10

    .line 90
    iput v7, p0, Lme;->m:I

    .line 92
    iget v7, p0, Lme;->n:I

    .line 94
    iget-object v10, v2, Llg;->P:[Lfg;

    .line 96
    aget-object v10, v10, v0

    .line 98
    invoke-virtual {v10}, Lfg;->e()I

    .line 101
    move-result v10

    .line 102
    add-int/2addr v7, v10

    .line 103
    iput v7, p0, Lme;->n:I

    .line 105
    iget-object v10, v2, Llg;->P:[Lfg;

    .line 107
    aget-object v10, v10, v11

    .line 109
    invoke-virtual {v10}, Lfg;->e()I

    .line 112
    move-result v10

    .line 113
    add-int/2addr v7, v10

    .line 114
    iput v7, p0, Lme;->n:I

    .line 116
    iget-object v7, p0, Lme;->b:Llg;

    .line 118
    if-nez v7, :cond_1

    .line 120
    iput-object v2, p0, Lme;->b:Llg;

    .line 122
    :cond_1
    iput-object v2, p0, Lme;->d:Llg;

    .line 124
    iget-object v7, v2, Llg;->S:[Llg$b;

    .line 126
    iget v10, p0, Lme;->p:I

    .line 128
    aget-object v7, v7, v10

    .line 130
    if-ne v7, v8, :cond_10

    .line 132
    iget-object v7, v2, Llg;->r:[I

    .line 134
    aget v7, v7, v10

    .line 136
    const/4 v8, 0x0

    .line 137
    if-eqz v7, :cond_2

    .line 139
    const/4 v11, 0x3

    .line 140
    if-eq v7, v11, :cond_2

    .line 142
    if-ne v7, v1, :cond_9

    .line 144
    :cond_2
    iget v7, p0, Lme;->j:I

    .line 146
    add-int/2addr v7, v3

    .line 147
    iput v7, p0, Lme;->j:I

    .line 149
    iget-object v7, v2, Llg;->v0:[F

    .line 151
    aget v7, v7, v10

    .line 153
    cmpl-float v11, v7, v8

    .line 155
    if-lez v11, :cond_3

    .line 157
    iget v11, p0, Lme;->k:F

    .line 159
    add-float/2addr v11, v7

    .line 160
    iput v11, p0, Lme;->k:F

    .line 162
    :cond_3
    invoke-static {v2, v10}, Lme;->c(Llg;I)Z

    .line 165
    move-result v10

    .line 166
    if-eqz v10, :cond_6

    .line 168
    cmpg-float v7, v7, v8

    .line 170
    if-gez v7, :cond_4

    .line 172
    iput-boolean v3, p0, Lme;->r:Z

    .line 174
    goto :goto_1

    .line 175
    :cond_4
    iput-boolean v3, p0, Lme;->s:Z

    .line 177
    :goto_1
    iget-object v7, p0, Lme;->h:Ljava/util/ArrayList;

    .line 179
    if-nez v7, :cond_5

    .line 181
    new-instance v7, Ljava/util/ArrayList;

    .line 183
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 186
    iput-object v7, p0, Lme;->h:Ljava/util/ArrayList;

    .line 188
    :cond_5
    iget-object v7, p0, Lme;->h:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_6
    iget-object v7, p0, Lme;->f:Llg;

    .line 195
    if-nez v7, :cond_7

    .line 197
    iput-object v2, p0, Lme;->f:Llg;

    .line 199
    :cond_7
    iget-object v7, p0, Lme;->g:Llg;

    .line 201
    if-eqz v7, :cond_8

    .line 203
    iget-object v7, v7, Llg;->w0:[Llg;

    .line 205
    iget v10, p0, Lme;->p:I

    .line 207
    aput-object v2, v7, v10

    .line 209
    :cond_8
    iput-object v2, p0, Lme;->g:Llg;

    .line 211
    :cond_9
    iget v7, p0, Lme;->p:I

    .line 213
    if-nez v7, :cond_c

    .line 215
    iget v7, v2, Llg;->p:I

    .line 217
    if-eqz v7, :cond_a

    .line 219
    iput-boolean v4, p0, Lme;->o:Z

    .line 221
    goto :goto_2

    .line 222
    :cond_a
    iget v7, v2, Llg;->s:I

    .line 224
    if-nez v7, :cond_b

    .line 226
    iget v7, v2, Llg;->t:I

    .line 228
    if-eqz v7, :cond_f

    .line 230
    :cond_b
    iput-boolean v4, p0, Lme;->o:Z

    .line 232
    goto :goto_2

    .line 233
    :cond_c
    iget v7, v2, Llg;->q:I

    .line 235
    if-eqz v7, :cond_d

    .line 237
    iput-boolean v4, p0, Lme;->o:Z

    .line 239
    goto :goto_2

    .line 240
    :cond_d
    iget v7, v2, Llg;->v:I

    .line 242
    if-nez v7, :cond_e

    .line 244
    iget v7, v2, Llg;->w:I

    .line 246
    if-eqz v7, :cond_f

    .line 248
    :cond_e
    iput-boolean v4, p0, Lme;->o:Z

    .line 250
    :cond_f
    :goto_2
    iget v7, v2, Llg;->W:F

    .line 252
    cmpl-float v7, v7, v8

    .line 254
    if-eqz v7, :cond_10

    .line 256
    iput-boolean v4, p0, Lme;->o:Z

    .line 258
    iput-boolean v3, p0, Lme;->u:Z

    .line 260
    :cond_10
    if-eq v5, v2, :cond_11

    .line 262
    iget-object v5, v5, Llg;->x0:[Llg;

    .line 264
    iget v7, p0, Lme;->p:I

    .line 266
    aput-object v2, v5, v7

    .line 268
    :cond_11
    iget-object v5, v2, Llg;->P:[Lfg;

    .line 270
    add-int/lit8 v7, v0, 0x1

    .line 272
    aget-object v5, v5, v7

    .line 274
    iget-object v5, v5, Lfg;->f:Lfg;

    .line 276
    if-eqz v5, :cond_13

    .line 278
    iget-object v5, v5, Lfg;->d:Llg;

    .line 280
    iget-object v7, v5, Llg;->P:[Lfg;

    .line 282
    aget-object v7, v7, v0

    .line 284
    iget-object v7, v7, Lfg;->f:Lfg;

    .line 286
    if-eqz v7, :cond_13

    .line 288
    iget-object v7, v7, Lfg;->d:Llg;

    .line 290
    if-eq v7, v2, :cond_12

    .line 292
    goto :goto_3

    .line 293
    :cond_12
    move-object v9, v5

    .line 294
    :cond_13
    :goto_3
    if-eqz v9, :cond_14

    .line 296
    goto :goto_4

    .line 297
    :cond_14
    move-object v9, v2

    .line 298
    const/4 v6, 0x1

    .line 299
    :goto_4
    move-object v5, v2

    .line 300
    move-object v2, v9

    .line 301
    goto/16 :goto_0

    .line 303
    :cond_15
    iget-object v1, p0, Lme;->b:Llg;

    .line 305
    if-eqz v1, :cond_16

    .line 307
    iget v5, p0, Lme;->m:I

    .line 309
    iget-object v1, v1, Llg;->P:[Lfg;

    .line 311
    aget-object v1, v1, v0

    .line 313
    invoke-virtual {v1}, Lfg;->e()I

    .line 316
    move-result v1

    .line 317
    sub-int/2addr v5, v1

    .line 318
    iput v5, p0, Lme;->m:I

    .line 320
    :cond_16
    iget-object v1, p0, Lme;->d:Llg;

    .line 322
    if-eqz v1, :cond_17

    .line 324
    iget v5, p0, Lme;->m:I

    .line 326
    iget-object v1, v1, Llg;->P:[Lfg;

    .line 328
    add-int/2addr v0, v3

    .line 329
    aget-object v0, v1, v0

    .line 331
    invoke-virtual {v0}, Lfg;->e()I

    .line 334
    move-result v0

    .line 335
    sub-int/2addr v5, v0

    .line 336
    iput v5, p0, Lme;->m:I

    .line 338
    :cond_17
    iput-object v2, p0, Lme;->c:Llg;

    .line 340
    iget v0, p0, Lme;->p:I

    .line 342
    if-nez v0, :cond_18

    .line 344
    iget-boolean v0, p0, Lme;->q:Z

    .line 346
    if-eqz v0, :cond_18

    .line 348
    iput-object v2, p0, Lme;->e:Llg;

    .line 350
    goto :goto_5

    .line 351
    :cond_18
    iget-object v0, p0, Lme;->a:Llg;

    .line 353
    iput-object v0, p0, Lme;->e:Llg;

    .line 355
    :goto_5
    iget-boolean v0, p0, Lme;->s:Z

    .line 357
    if-eqz v0, :cond_19

    .line 359
    iget-boolean v0, p0, Lme;->r:Z

    .line 361
    if-eqz v0, :cond_19

    .line 363
    goto :goto_6

    .line 364
    :cond_19
    const/4 v3, 0x0

    .line 365
    :goto_6
    iput-boolean v3, p0, Lme;->t:Z

    .line 367
    return-void
.end method
