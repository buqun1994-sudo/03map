.class public abstract Lig;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig$b;,
        Lig$c;
    }
.end annotation


# instance fields
.field public a:Landroid/util/SparseArray;

.field public b:Ljava/util/ArrayList;

.field public c:Lmg;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:Lkg;

.field public k:Ljg;

.field public l:I

.field public m:Ljava/util/HashMap;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Landroid/util/SparseArray;

.field public u:Lig$c;

.field public v:I

.field public w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object p1, p0, Lig;->a:Landroid/util/SparseArray;

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    const/4 v0, 0x4

    .line 14
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    iput-object p1, p0, Lig;->b:Ljava/util/ArrayList;

    .line 19
    new-instance p1, Lmg;

    .line 21
    invoke-direct {p1}, Lmg;-><init>()V

    .line 24
    iput-object p1, p0, Lig;->c:Lmg;

    .line 26
    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lig;->d:I

    .line 29
    iput p1, p0, Lig;->e:I

    .line 31
    const v0, 0x7fffffff

    .line 34
    iput v0, p0, Lig;->f:I

    .line 36
    iput v0, p0, Lig;->g:I

    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lig;->h:Z

    .line 41
    const/16 v0, 0x101

    .line 43
    iput v0, p0, Lig;->i:I

    .line 45
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lig;->j:Lkg;

    .line 48
    iput-object v0, p0, Lig;->k:Ljg;

    .line 50
    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lig;->l:I

    .line 53
    new-instance v1, Ljava/util/HashMap;

    .line 55
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    iput-object v1, p0, Lig;->m:Ljava/util/HashMap;

    .line 60
    iput v0, p0, Lig;->n:I

    .line 62
    iput v0, p0, Lig;->o:I

    .line 64
    iput v0, p0, Lig;->p:I

    .line 66
    iput v0, p0, Lig;->q:I

    .line 68
    iput p1, p0, Lig;->r:I

    .line 70
    iput p1, p0, Lig;->s:I

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    .line 74
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 77
    iput-object v0, p0, Lig;->t:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Lig$c;

    .line 81
    invoke-direct {v0, p0, p0}, Lig$c;-><init>(Lig;Lig;)V

    .line 84
    iput-object v0, p0, Lig;->u:Lig$c;

    .line 86
    iput p1, p0, Lig;->v:I

    .line 88
    iput p1, p0, Lig;->w:I

    .line 90
    invoke-virtual {p0, p2, p1, p1}, Lig;->j(Landroid/util/AttributeSet;II)V

    .line 93
    return-void
.end method

.method public static synthetic a(Lig;)I
    .locals 0

    .line 1
    iget p0, p0, Lig;->i:I

    .line 3
    return p0
.end method

.method public static synthetic b(Lig;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lig;->b:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method private getPaddingWidth()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 13
    move-result v2

    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v0, v2

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    .line 22
    move-result v2

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    .line 30
    move-result v3

    .line 31
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 34
    move-result v1

    .line 35
    add-int/2addr v2, v1

    .line 36
    if-lez v2, :cond_0

    .line 38
    move v0, v2

    .line 39
    :cond_0
    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    return-void
.end method

.method public c(ZLandroid/view/View;Llg;Lig$b;Landroid/util/SparseArray;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    move-object/from16 v7, p3

    .line 7
    move-object/from16 v8, p4

    .line 9
    move-object/from16 v9, p5

    .line 11
    invoke-virtual/range {p4 .. p4}, Lig$b;->a()V

    .line 14
    const/4 v10, 0x0

    .line 15
    iput-boolean v10, v8, Lig$b;->o0:Z

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {v7, v2}, Llg;->S0(I)V

    .line 24
    iget-boolean v2, v8, Lig$b;->b0:Z

    .line 26
    const/4 v11, 0x1

    .line 27
    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v7, v11}, Llg;->D0(Z)V

    .line 32
    const/16 v2, 0x8

    .line 34
    invoke-virtual {v7, v2}, Llg;->S0(I)V

    .line 37
    :cond_0
    invoke-virtual {v7, v1}, Llg;->l0(Ljava/lang/Object;)V

    .line 40
    instance-of v2, v1, Lhg;

    .line 42
    if-eqz v2, :cond_1

    .line 44
    check-cast v1, Lhg;

    .line 46
    iget-object v2, v0, Lig;->c:Lmg;

    .line 48
    invoke-virtual {v2}, Lmg;->w1()Z

    .line 51
    move-result v2

    .line 52
    invoke-virtual {v1, v7, v2}, Lhg;->g(Llg;Z)V

    .line 55
    :cond_1
    iget-boolean v1, v8, Lig$b;->Z:Z

    .line 57
    const/4 v12, -0x1

    .line 58
    if-eqz v1, :cond_4

    .line 60
    move-object v1, v7

    .line 61
    check-cast v1, Lro;

    .line 63
    iget v2, v8, Lig$b;->k0:I

    .line 65
    iget v3, v8, Lig$b;->l0:I

    .line 67
    iget v4, v8, Lig$b;->m0:F

    .line 69
    const/high16 v5, -0x40800000    # -1.0f

    .line 71
    cmpl-float v5, v4, v5

    .line 73
    if-eqz v5, :cond_2

    .line 75
    invoke-virtual {v1, v4}, Lro;->h1(F)V

    .line 78
    goto/16 :goto_9

    .line 80
    :cond_2
    if-eq v2, v12, :cond_3

    .line 82
    invoke-virtual {v1, v2}, Lro;->f1(I)V

    .line 85
    goto/16 :goto_9

    .line 87
    :cond_3
    if-eq v3, v12, :cond_1c

    .line 89
    invoke-virtual {v1, v3}, Lro;->g1(I)V

    .line 92
    goto/16 :goto_9

    .line 94
    :cond_4
    iget v1, v8, Lig$b;->d0:I

    .line 96
    iget v2, v8, Lig$b;->e0:I

    .line 98
    iget v13, v8, Lig$b;->f0:I

    .line 100
    iget v14, v8, Lig$b;->g0:I

    .line 102
    iget v6, v8, Lig$b;->h0:I

    .line 104
    iget v15, v8, Lig$b;->i0:I

    .line 106
    iget v5, v8, Lig$b;->j0:F

    .line 108
    iget v3, v8, Lig$b;->m:I

    .line 110
    if-eq v3, v12, :cond_5

    .line 112
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Llg;

    .line 118
    if-eqz v1, :cond_11

    .line 120
    iget v2, v8, Lig$b;->o:F

    .line 122
    iget v3, v8, Lig$b;->n:I

    .line 124
    invoke-virtual {v7, v1, v2, v3}, Llg;->j(Llg;FI)V

    .line 127
    goto/16 :goto_4

    .line 129
    :cond_5
    if-eq v1, v12, :cond_7

    .line 131
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object v1

    .line 135
    move-object v3, v1

    .line 136
    check-cast v3, Llg;

    .line 138
    if-eqz v3, :cond_6

    .line 140
    sget-object v4, Lfg$b;->b:Lfg$b;

    .line 142
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 144
    move-object/from16 v1, p3

    .line 146
    move/from16 v16, v2

    .line 148
    move-object v2, v4

    .line 149
    move/from16 v17, v5

    .line 151
    move/from16 v5, v16

    .line 153
    invoke-virtual/range {v1 .. v6}, Llg;->X(Lfg$b;Llg;Lfg$b;II)V

    .line 156
    goto :goto_0

    .line 157
    :cond_6
    move/from16 v17, v5

    .line 159
    goto :goto_0

    .line 160
    :cond_7
    move/from16 v17, v5

    .line 162
    if-eq v2, v12, :cond_8

    .line 164
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 167
    move-result-object v1

    .line 168
    move-object v3, v1

    .line 169
    check-cast v3, Llg;

    .line 171
    if-eqz v3, :cond_8

    .line 173
    sget-object v2, Lfg$b;->b:Lfg$b;

    .line 175
    sget-object v4, Lfg$b;->d:Lfg$b;

    .line 177
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 179
    move-object/from16 v1, p3

    .line 181
    invoke-virtual/range {v1 .. v6}, Llg;->X(Lfg$b;Llg;Lfg$b;II)V

    .line 184
    :cond_8
    :goto_0
    if-eq v13, v12, :cond_9

    .line 186
    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 189
    move-result-object v1

    .line 190
    move-object v3, v1

    .line 191
    check-cast v3, Llg;

    .line 193
    if-eqz v3, :cond_a

    .line 195
    sget-object v2, Lfg$b;->d:Lfg$b;

    .line 197
    sget-object v4, Lfg$b;->b:Lfg$b;

    .line 199
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 201
    move-object/from16 v1, p3

    .line 203
    move v6, v15

    .line 204
    invoke-virtual/range {v1 .. v6}, Llg;->X(Lfg$b;Llg;Lfg$b;II)V

    .line 207
    goto :goto_1

    .line 208
    :cond_9
    if-eq v14, v12, :cond_a

    .line 210
    invoke-virtual {v9, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 213
    move-result-object v1

    .line 214
    move-object v3, v1

    .line 215
    check-cast v3, Llg;

    .line 217
    if-eqz v3, :cond_a

    .line 219
    sget-object v4, Lfg$b;->d:Lfg$b;

    .line 221
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 223
    move-object/from16 v1, p3

    .line 225
    move-object v2, v4

    .line 226
    move v6, v15

    .line 227
    invoke-virtual/range {v1 .. v6}, Llg;->X(Lfg$b;Llg;Lfg$b;II)V

    .line 230
    :cond_a
    :goto_1
    iget v1, v8, Lig$b;->h:I

    .line 232
    if-eq v1, v12, :cond_b

    .line 234
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 237
    move-result-object v1

    .line 238
    move-object v3, v1

    .line 239
    check-cast v3, Llg;

    .line 241
    if-eqz v3, :cond_c

    .line 243
    sget-object v4, Lfg$b;->c:Lfg$b;

    .line 245
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 247
    iget v6, v8, Lig$b;->u:I

    .line 249
    move-object/from16 v1, p3

    .line 251
    move-object v2, v4

    .line 252
    invoke-virtual/range {v1 .. v6}, Llg;->X(Lfg$b;Llg;Lfg$b;II)V

    .line 255
    goto :goto_2

    .line 256
    :cond_b
    iget v1, v8, Lig$b;->i:I

    .line 258
    if-eq v1, v12, :cond_c

    .line 260
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 263
    move-result-object v1

    .line 264
    move-object v3, v1

    .line 265
    check-cast v3, Llg;

    .line 267
    if-eqz v3, :cond_c

    .line 269
    sget-object v2, Lfg$b;->c:Lfg$b;

    .line 271
    sget-object v4, Lfg$b;->e:Lfg$b;

    .line 273
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 275
    iget v6, v8, Lig$b;->u:I

    .line 277
    move-object/from16 v1, p3

    .line 279
    invoke-virtual/range {v1 .. v6}, Llg;->X(Lfg$b;Llg;Lfg$b;II)V

    .line 282
    :cond_c
    :goto_2
    iget v1, v8, Lig$b;->j:I

    .line 284
    if-eq v1, v12, :cond_d

    .line 286
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 289
    move-result-object v1

    .line 290
    move-object v3, v1

    .line 291
    check-cast v3, Llg;

    .line 293
    if-eqz v3, :cond_e

    .line 295
    sget-object v2, Lfg$b;->e:Lfg$b;

    .line 297
    sget-object v4, Lfg$b;->c:Lfg$b;

    .line 299
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 301
    iget v6, v8, Lig$b;->w:I

    .line 303
    move-object/from16 v1, p3

    .line 305
    invoke-virtual/range {v1 .. v6}, Llg;->X(Lfg$b;Llg;Lfg$b;II)V

    .line 308
    goto :goto_3

    .line 309
    :cond_d
    iget v1, v8, Lig$b;->k:I

    .line 311
    if-eq v1, v12, :cond_e

    .line 313
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 316
    move-result-object v1

    .line 317
    move-object v3, v1

    .line 318
    check-cast v3, Llg;

    .line 320
    if-eqz v3, :cond_e

    .line 322
    sget-object v4, Lfg$b;->e:Lfg$b;

    .line 324
    iget v5, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 326
    iget v6, v8, Lig$b;->w:I

    .line 328
    move-object/from16 v1, p3

    .line 330
    move-object v2, v4

    .line 331
    invoke-virtual/range {v1 .. v6}, Llg;->X(Lfg$b;Llg;Lfg$b;II)V

    .line 334
    :cond_e
    :goto_3
    iget v1, v8, Lig$b;->l:I

    .line 336
    if-eq v1, v12, :cond_f

    .line 338
    iget-object v2, v0, Lig;->a:Landroid/util/SparseArray;

    .line 340
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 343
    move-result-object v1

    .line 344
    check-cast v1, Landroid/view/View;

    .line 346
    iget v2, v8, Lig$b;->l:I

    .line 348
    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 351
    move-result-object v2

    .line 352
    check-cast v2, Llg;

    .line 354
    if-eqz v2, :cond_f

    .line 356
    if-eqz v1, :cond_f

    .line 358
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 361
    move-result-object v3

    .line 362
    instance-of v3, v3, Lig$b;

    .line 364
    if-eqz v3, :cond_f

    .line 366
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 369
    move-result-object v1

    .line 370
    check-cast v1, Lig$b;

    .line 372
    iput-boolean v11, v8, Lig$b;->Y:Z

    .line 374
    iput-boolean v11, v1, Lig$b;->Y:Z

    .line 376
    sget-object v3, Lfg$b;->f:Lfg$b;

    .line 378
    invoke-virtual {v7, v3}, Llg;->m(Lfg$b;)Lfg;

    .line 381
    move-result-object v4

    .line 382
    invoke-virtual {v2, v3}, Llg;->m(Lfg$b;)Lfg;

    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v4, v2, v10, v12, v11}, Lfg;->a(Lfg;IIZ)Z

    .line 389
    invoke-virtual {v7, v11}, Llg;->u0(Z)V

    .line 392
    iget-object v1, v1, Lig$b;->n0:Llg;

    .line 394
    invoke-virtual {v1, v11}, Llg;->u0(Z)V

    .line 397
    sget-object v1, Lfg$b;->c:Lfg$b;

    .line 399
    invoke-virtual {v7, v1}, Llg;->m(Lfg$b;)Lfg;

    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {v1}, Lfg;->p()V

    .line 406
    sget-object v1, Lfg$b;->e:Lfg$b;

    .line 408
    invoke-virtual {v7, v1}, Llg;->m(Lfg$b;)Lfg;

    .line 411
    move-result-object v1

    .line 412
    invoke-virtual {v1}, Lfg;->p()V

    .line 415
    :cond_f
    const/4 v1, 0x0

    .line 416
    move/from16 v2, v17

    .line 418
    cmpl-float v3, v2, v1

    .line 420
    if-ltz v3, :cond_10

    .line 422
    invoke-virtual {v7, v2}, Llg;->w0(F)V

    .line 425
    :cond_10
    iget v2, v8, Lig$b;->A:F

    .line 427
    cmpl-float v1, v2, v1

    .line 429
    if-ltz v1, :cond_11

    .line 431
    invoke-virtual {v7, v2}, Llg;->M0(F)V

    .line 434
    :cond_11
    :goto_4
    if-eqz p1, :cond_13

    .line 436
    iget v1, v8, Lig$b;->Q:I

    .line 438
    if-ne v1, v12, :cond_12

    .line 440
    iget v2, v8, Lig$b;->R:I

    .line 442
    if-eq v2, v12, :cond_13

    .line 444
    :cond_12
    iget v2, v8, Lig$b;->R:I

    .line 446
    invoke-virtual {v7, v1, v2}, Llg;->K0(II)V

    .line 449
    :cond_13
    iget-boolean v1, v8, Lig$b;->W:Z

    .line 451
    const/4 v2, -0x2

    .line 452
    if-nez v1, :cond_16

    .line 454
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 456
    if-ne v1, v12, :cond_15

    .line 458
    iget-boolean v1, v8, Lig$b;->T:Z

    .line 460
    if-eqz v1, :cond_14

    .line 462
    sget-object v1, Llg$b;->c:Llg$b;

    .line 464
    invoke-virtual {v7, v1}, Llg;->z0(Llg$b;)V

    .line 467
    goto :goto_5

    .line 468
    :cond_14
    sget-object v1, Llg$b;->d:Llg$b;

    .line 470
    invoke-virtual {v7, v1}, Llg;->z0(Llg$b;)V

    .line 473
    :goto_5
    sget-object v1, Lfg$b;->b:Lfg$b;

    .line 475
    invoke-virtual {v7, v1}, Llg;->m(Lfg$b;)Lfg;

    .line 478
    move-result-object v1

    .line 479
    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 481
    iput v3, v1, Lfg;->g:I

    .line 483
    sget-object v1, Lfg$b;->d:Lfg$b;

    .line 485
    invoke-virtual {v7, v1}, Llg;->m(Lfg$b;)Lfg;

    .line 488
    move-result-object v1

    .line 489
    iget v3, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 491
    iput v3, v1, Lfg;->g:I

    .line 493
    goto :goto_6

    .line 494
    :cond_15
    sget-object v1, Llg$b;->c:Llg$b;

    .line 496
    invoke-virtual {v7, v1}, Llg;->z0(Llg$b;)V

    .line 499
    invoke-virtual {v7, v10}, Llg;->T0(I)V

    .line 502
    goto :goto_6

    .line 503
    :cond_16
    sget-object v1, Llg$b;->a:Llg$b;

    .line 505
    invoke-virtual {v7, v1}, Llg;->z0(Llg$b;)V

    .line 508
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 510
    invoke-virtual {v7, v1}, Llg;->T0(I)V

    .line 513
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 515
    if-ne v1, v2, :cond_17

    .line 517
    sget-object v1, Llg$b;->b:Llg$b;

    .line 519
    invoke-virtual {v7, v1}, Llg;->z0(Llg$b;)V

    .line 522
    :cond_17
    :goto_6
    iget-boolean v1, v8, Lig$b;->X:Z

    .line 524
    if-nez v1, :cond_1a

    .line 526
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 528
    if-ne v1, v12, :cond_19

    .line 530
    iget-boolean v1, v8, Lig$b;->U:Z

    .line 532
    if-eqz v1, :cond_18

    .line 534
    sget-object v1, Llg$b;->c:Llg$b;

    .line 536
    invoke-virtual {v7, v1}, Llg;->P0(Llg$b;)V

    .line 539
    goto :goto_7

    .line 540
    :cond_18
    sget-object v1, Llg$b;->d:Llg$b;

    .line 542
    invoke-virtual {v7, v1}, Llg;->P0(Llg$b;)V

    .line 545
    :goto_7
    sget-object v1, Lfg$b;->c:Lfg$b;

    .line 547
    invoke-virtual {v7, v1}, Llg;->m(Lfg$b;)Lfg;

    .line 550
    move-result-object v1

    .line 551
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 553
    iput v2, v1, Lfg;->g:I

    .line 555
    sget-object v1, Lfg$b;->e:Lfg$b;

    .line 557
    invoke-virtual {v7, v1}, Llg;->m(Lfg$b;)Lfg;

    .line 560
    move-result-object v1

    .line 561
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 563
    iput v2, v1, Lfg;->g:I

    .line 565
    goto :goto_8

    .line 566
    :cond_19
    sget-object v1, Llg$b;->c:Llg$b;

    .line 568
    invoke-virtual {v7, v1}, Llg;->P0(Llg$b;)V

    .line 571
    invoke-virtual {v7, v10}, Llg;->v0(I)V

    .line 574
    goto :goto_8

    .line 575
    :cond_1a
    sget-object v1, Llg$b;->a:Llg$b;

    .line 577
    invoke-virtual {v7, v1}, Llg;->P0(Llg$b;)V

    .line 580
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 582
    invoke-virtual {v7, v1}, Llg;->v0(I)V

    .line 585
    iget v1, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 587
    if-ne v1, v2, :cond_1b

    .line 589
    sget-object v1, Llg$b;->b:Llg$b;

    .line 591
    invoke-virtual {v7, v1}, Llg;->P0(Llg$b;)V

    .line 594
    :cond_1b
    :goto_8
    iget-object v1, v8, Lig$b;->B:Ljava/lang/String;

    .line 596
    invoke-virtual {v7, v1}, Llg;->n0(Ljava/lang/String;)V

    .line 599
    iget v1, v8, Lig$b;->E:F

    .line 601
    invoke-virtual {v7, v1}, Llg;->B0(F)V

    .line 604
    iget v1, v8, Lig$b;->F:F

    .line 606
    invoke-virtual {v7, v1}, Llg;->R0(F)V

    .line 609
    iget v1, v8, Lig$b;->G:I

    .line 611
    invoke-virtual {v7, v1}, Llg;->x0(I)V

    .line 614
    iget v1, v8, Lig$b;->H:I

    .line 616
    invoke-virtual {v7, v1}, Llg;->N0(I)V

    .line 619
    iget v1, v8, Lig$b;->I:I

    .line 621
    iget v2, v8, Lig$b;->K:I

    .line 623
    iget v3, v8, Lig$b;->M:I

    .line 625
    iget v4, v8, Lig$b;->O:F

    .line 627
    invoke-virtual {v7, v1, v2, v3, v4}, Llg;->A0(IIIF)V

    .line 630
    iget v1, v8, Lig$b;->J:I

    .line 632
    iget v2, v8, Lig$b;->L:I

    .line 634
    iget v3, v8, Lig$b;->N:I

    .line 636
    iget v4, v8, Lig$b;->P:F

    .line 638
    invoke-virtual {v7, v1, v2, v3, v4}, Llg;->Q0(IIIF)V

    .line 641
    :cond_1c
    :goto_9
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lig$b;

    .line 3
    return p1
.end method

.method public d()Lig$b;
    .locals 2

    .line 1
    new-instance v0, Lig$b;

    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Lig$b;-><init>(II)V

    .line 7
    return-object v0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lig;->b:Ljava/util/ArrayList;

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v1, :cond_0

    .line 17
    iget-object v4, v0, Lig;->b:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Lhg;

    .line 25
    invoke-virtual {v4, v0}, Lhg;->j(Lig;)V

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_3

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 43
    move-result v1

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 47
    move-result v3

    .line 48
    int-to-float v3, v3

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 52
    move-result v4

    .line 53
    int-to-float v4, v4

    .line 54
    const/4 v5, 0x0

    .line 55
    :goto_1
    if-ge v5, v1, :cond_3

    .line 57
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 64
    move-result v7

    .line 65
    const/16 v8, 0x8

    .line 67
    if-ne v7, v8, :cond_1

    .line 69
    goto/16 :goto_2

    .line 71
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 74
    move-result-object v6

    .line 75
    if-eqz v6, :cond_2

    .line 77
    instance-of v7, v6, Ljava/lang/String;

    .line 79
    if-eqz v7, :cond_2

    .line 81
    check-cast v6, Ljava/lang/String;

    .line 83
    const-string v7, ","

    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 88
    move-result-object v6

    .line 89
    array-length v7, v6

    .line 90
    const/4 v8, 0x4

    .line 91
    if-ne v7, v8, :cond_2

    .line 93
    aget-object v7, v6, v2

    .line 95
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 98
    move-result v7

    .line 99
    const/4 v8, 0x1

    .line 100
    aget-object v8, v6, v8

    .line 102
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 105
    move-result v8

    .line 106
    const/4 v9, 0x2

    .line 107
    aget-object v9, v6, v9

    .line 109
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 112
    move-result v9

    .line 113
    const/4 v10, 0x3

    .line 114
    aget-object v6, v6, v10

    .line 116
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 119
    move-result v6

    .line 120
    int-to-float v7, v7

    .line 121
    const/high16 v10, 0x44870000    # 1080.0f

    .line 123
    div-float/2addr v7, v10

    .line 124
    mul-float v7, v7, v3

    .line 126
    float-to-int v7, v7

    .line 127
    int-to-float v8, v8

    .line 128
    const/high16 v11, 0x44f00000    # 1920.0f

    .line 130
    div-float/2addr v8, v11

    .line 131
    mul-float v8, v8, v4

    .line 133
    float-to-int v8, v8

    .line 134
    int-to-float v9, v9

    .line 135
    div-float/2addr v9, v10

    .line 136
    mul-float v9, v9, v3

    .line 138
    float-to-int v9, v9

    .line 139
    int-to-float v6, v6

    .line 140
    div-float/2addr v6, v11

    .line 141
    mul-float v6, v6, v4

    .line 143
    float-to-int v6, v6

    .line 144
    new-instance v15, Landroid/graphics/Paint;

    .line 146
    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 149
    const/high16 v10, -0x10000

    .line 151
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    int-to-float v14, v7

    .line 155
    int-to-float v13, v8

    .line 156
    add-int/2addr v7, v9

    .line 157
    int-to-float v7, v7

    .line 158
    move-object/from16 v10, p1

    .line 160
    move v11, v14

    .line 161
    move v12, v13

    .line 162
    move v9, v13

    .line 163
    move v13, v7

    .line 164
    move/from16 v16, v14

    .line 166
    move v14, v9

    .line 167
    move-object/from16 v17, v15

    .line 169
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 172
    add-int/2addr v8, v6

    .line 173
    int-to-float v6, v8

    .line 174
    move v11, v7

    .line 175
    move v12, v9

    .line 176
    move v14, v6

    .line 177
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 180
    move v12, v6

    .line 181
    move/from16 v13, v16

    .line 183
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    move/from16 v11, v16

    .line 188
    move v14, v9

    .line 189
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 192
    const v8, -0xff0100

    .line 195
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    move v12, v9

    .line 199
    move v13, v7

    .line 200
    move v14, v6

    .line 201
    move-object v8, v15

    .line 202
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 205
    move v12, v6

    .line 206
    move v14, v9

    .line 207
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 210
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 212
    goto/16 :goto_1

    .line 214
    :cond_3
    return-void
.end method

.method public e(Landroid/util/AttributeSet;)Lig$b;
    .locals 2

    .line 1
    new-instance v0, Lig$b;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Lig$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    return-object v0
.end method

.method public f(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 3
    instance-of p1, p2, Ljava/lang/String;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    check-cast p2, Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lig;->m:Ljava/util/HashMap;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lig;->m:Ljava/util/HashMap;

    .line 21
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return-object p1
.end method

.method public forceLayout()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lig;->l()V

    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 7
    return-void
.end method

.method public final g(I)Llg;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lig;->c:Lmg;

    .line 5
    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lig;->a:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/view/View;

    .line 14
    if-nez v0, :cond_1

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    if-eq v0, p0, :cond_1

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    move-result-object p1

    .line 28
    if-ne p1, p0, :cond_1

    .line 30
    invoke-virtual {p0, v0}, Lig;->onViewAdded(Landroid/view/View;)V

    .line 33
    :cond_1
    if-ne v0, p0, :cond_2

    .line 35
    iget-object p1, p0, Lig;->c:Lmg;

    .line 37
    return-object p1

    .line 38
    :cond_2
    if-nez v0, :cond_3

    .line 40
    const/4 p1, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lig$b;

    .line 48
    iget-object p1, p1, Lig$b;->n0:Llg;

    .line 50
    :goto_0
    return-object p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lig;->d()Lig$b;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lig;->e(Landroid/util/AttributeSet;)Lig$b;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lig$b;

    invoke-direct {v0, p1}, Lig$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lig;->g:I

    .line 3
    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lig;->f:I

    .line 3
    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lig;->e:I

    .line 3
    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lig;->d:I

    .line 3
    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Lig;->c:Lmg;

    .line 3
    invoke-virtual {v0}, Lmg;->r1()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lig;->a:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/View;

    .line 9
    return-object p1
.end method

.method public final i(Landroid/view/View;)Llg;
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    .line 3
    iget-object p1, p0, Lig;->c:Lmg;

    .line 5
    return-object p1

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lig$b;

    .line 16
    iget-object p1, p1, Lig$b;->n0:Llg;

    .line 18
    :goto_0
    return-object p1
.end method

.method public final j(Landroid/util/AttributeSet;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lig;->c:Lmg;

    .line 3
    invoke-virtual {v0, p0}, Llg;->l0(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lig;->c:Lmg;

    .line 8
    iget-object v1, p0, Lig;->u:Lig$c;

    .line 10
    invoke-virtual {v0, v1}, Lmg;->C1(Lsc$b;)V

    .line 13
    iget-object v0, p0, Lig;->a:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lig;->j:Lkg;

    .line 25
    if-eqz p1, :cond_8

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lh90;->a1:[I

    .line 33
    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 40
    move-result p2

    .line 41
    const/4 p3, 0x0

    .line 42
    const/4 v1, 0x0

    .line 43
    :goto_0
    if-ge v1, p2, :cond_7

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 48
    move-result v2

    .line 49
    sget v3, Lh90;->e1:I

    .line 51
    if-ne v2, v3, :cond_0

    .line 53
    iget v3, p0, Lig;->d:I

    .line 55
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 58
    move-result v2

    .line 59
    iput v2, p0, Lig;->d:I

    .line 61
    goto :goto_2

    .line 62
    :cond_0
    sget v3, Lh90;->f1:I

    .line 64
    if-ne v2, v3, :cond_1

    .line 66
    iget v3, p0, Lig;->e:I

    .line 68
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 71
    move-result v2

    .line 72
    iput v2, p0, Lig;->e:I

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    sget v3, Lh90;->c1:I

    .line 77
    if-ne v2, v3, :cond_2

    .line 79
    iget v3, p0, Lig;->f:I

    .line 81
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 84
    move-result v2

    .line 85
    iput v2, p0, Lig;->f:I

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    sget v3, Lh90;->d1:I

    .line 90
    if-ne v2, v3, :cond_3

    .line 92
    iget v3, p0, Lig;->g:I

    .line 94
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 97
    move-result v2

    .line 98
    iput v2, p0, Lig;->g:I

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    sget v3, Lh90;->l2:I

    .line 103
    if-ne v2, v3, :cond_4

    .line 105
    iget v3, p0, Lig;->i:I

    .line 107
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 110
    move-result v2

    .line 111
    iput v2, p0, Lig;->i:I

    .line 113
    goto :goto_2

    .line 114
    :cond_4
    sget v3, Lh90;->m1:I

    .line 116
    if-ne v2, v3, :cond_5

    .line 118
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_6

    .line 124
    :try_start_0
    invoke-virtual {p0, v2}, Lig;->m(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_2

    .line 128
    :catch_0
    iput-object v0, p0, Lig;->k:Ljg;

    .line 130
    goto :goto_2

    .line 131
    :cond_5
    sget v3, Lh90;->j1:I

    .line 133
    if-ne v2, v3, :cond_6

    .line 135
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 138
    move-result v2

    .line 139
    :try_start_1
    new-instance v3, Lkg;

    .line 141
    invoke-direct {v3}, Lkg;-><init>()V

    .line 144
    iput-object v3, p0, Lig;->j:Lkg;

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v3, v4, v2}, Lkg;->m(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    goto :goto_1

    .line 154
    :catch_1
    iput-object v0, p0, Lig;->j:Lkg;

    .line 156
    :goto_1
    iput v2, p0, Lig;->l:I

    .line 158
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 160
    goto :goto_0

    .line 161
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 164
    :cond_8
    iget-object p1, p0, Lig;->c:Lmg;

    .line 166
    iget p2, p0, Lig;->i:I

    .line 168
    invoke-virtual {p1, p2}, Lmg;->D1(I)V

    .line 171
    return-void
.end method

.method public k()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 11
    const/high16 v1, 0x400000

    .line 13
    and-int/2addr v0, v1

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 26
    move-result v0

    .line 27
    if-ne v2, v0, :cond_1

    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_1
    return v1
.end method

.method public final l()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lig;->h:Z

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lig;->n:I

    .line 7
    iput v0, p0, Lig;->o:I

    .line 9
    iput v0, p0, Lig;->p:I

    .line 11
    iput v0, p0, Lig;->q:I

    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lig;->r:I

    .line 16
    iput v0, p0, Lig;->s:I

    .line 18
    return-void
.end method

.method public m(I)V
    .locals 2

    .line 1
    new-instance v0, Ljg;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p0, p1}, Ljg;-><init>(Landroid/content/Context;Lig;I)V

    .line 10
    iput-object v0, p0, Lig;->k:Ljg;

    .line 12
    return-void
.end method

.method public n(IIIIZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lig;->u:Lig$c;

    .line 3
    iget v1, v0, Lig$c;->e:I

    .line 5
    iget v0, v0, Lig$c;->d:I

    .line 7
    add-int/2addr p3, v0

    .line 8
    add-int/2addr p4, v1

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p3, p1, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 13
    move-result p1

    .line 14
    invoke-static {p4, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 17
    move-result p2

    .line 18
    const p3, 0xffffff

    .line 21
    and-int/2addr p1, p3

    .line 22
    and-int/2addr p2, p3

    .line 23
    iget p3, p0, Lig;->f:I

    .line 25
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    .line 28
    move-result p1

    .line 29
    iget p3, p0, Lig;->g:I

    .line 31
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result p2

    .line 35
    const/high16 p3, 0x1000000

    .line 37
    if-eqz p5, :cond_0

    .line 39
    or-int/2addr p1, p3

    .line 40
    :cond_0
    if-eqz p6, :cond_1

    .line 42
    or-int/2addr p2, p3

    .line 43
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 46
    iput p1, p0, Lig;->n:I

    .line 48
    iput p2, p0, Lig;->o:I

    .line 50
    return-void
.end method

.method public o(Lmg;III)V
    .locals 20

    .line 1
    move-object/from16 v6, p0

    .line 3
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    move-result v9

    .line 7
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 10
    move-result v0

    .line 11
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 14
    move-result v11

    .line 15
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 18
    move-result v1

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 27
    move-result v19

    .line 28
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 31
    move-result v2

    .line 32
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 35
    move-result v16

    .line 36
    add-int v2, v19, v16

    .line 38
    invoke-direct/range {p0 .. p0}, Lig;->getPaddingWidth()I

    .line 41
    move-result v4

    .line 42
    iget-object v12, v6, Lig;->u:Lig$c;

    .line 44
    move/from16 v13, p3

    .line 46
    move/from16 v14, p4

    .line 48
    move/from16 v15, v19

    .line 50
    move/from16 v17, v4

    .line 52
    move/from16 v18, v2

    .line 54
    invoke-virtual/range {v12 .. v18}, Lig$c;->c(IIIIII)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    .line 60
    move-result v5

    .line 61
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 64
    move-result v5

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    .line 68
    move-result v7

    .line 69
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    .line 72
    move-result v7

    .line 73
    if-gtz v5, :cond_1

    .line 75
    if-lez v7, :cond_0

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 81
    move-result v5

    .line 82
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 85
    move-result v3

    .line 86
    move v15, v3

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lig;->k()Z

    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_2

    .line 94
    move v15, v7

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move v15, v5

    .line 97
    :goto_1
    sub-int v10, v0, v4

    .line 99
    sub-int v12, v1, v2

    .line 101
    move-object/from16 v0, p0

    .line 103
    move-object/from16 v1, p1

    .line 105
    move v2, v9

    .line 106
    move v3, v10

    .line 107
    move v4, v11

    .line 108
    move v5, v12

    .line 109
    invoke-virtual/range {v0 .. v5}, Lig;->r(Lmg;IIII)V

    .line 112
    iget v13, v6, Lig;->n:I

    .line 114
    iget v14, v6, Lig;->o:I

    .line 116
    move-object/from16 v7, p1

    .line 118
    move/from16 v8, p2

    .line 120
    move/from16 v16, v19

    .line 122
    invoke-virtual/range {v7 .. v16}, Lmg;->y1(IIIIIIIII)J

    .line 125
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x0

    .line 10
    const/4 p4, 0x0

    .line 11
    :goto_0
    if-ge p4, p1, :cond_2

    .line 13
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object p5

    .line 17
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lig$b;

    .line 23
    iget-object v1, v0, Lig$b;->n0:Llg;

    .line 25
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    .line 28
    move-result v2

    .line 29
    const/16 v3, 0x8

    .line 31
    if-ne v2, v3, :cond_0

    .line 33
    iget-boolean v2, v0, Lig$b;->Z:Z

    .line 35
    if-nez v2, :cond_0

    .line 37
    iget-boolean v2, v0, Lig$b;->a0:Z

    .line 39
    if-nez v2, :cond_0

    .line 41
    iget-boolean v2, v0, Lig$b;->c0:Z

    .line 43
    if-nez v2, :cond_0

    .line 45
    if-nez p2, :cond_0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-boolean v0, v0, Lig$b;->b0:Z

    .line 50
    if-eqz v0, :cond_1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v1}, Llg;->S()I

    .line 56
    move-result v0

    .line 57
    invoke-virtual {v1}, Llg;->T()I

    .line 60
    move-result v2

    .line 61
    invoke-virtual {v1}, Llg;->R()I

    .line 64
    move-result v3

    .line 65
    add-int/2addr v3, v0

    .line 66
    invoke-virtual {v1}, Llg;->v()I

    .line 69
    move-result v1

    .line 70
    add-int/2addr v1, v2

    .line 71
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 74
    :goto_1
    add-int/lit8 p4, p4, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object p1, p0, Lig;->b:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 82
    move-result p1

    .line 83
    if-lez p1, :cond_3

    .line 85
    :goto_2
    if-ge p3, p1, :cond_3

    .line 87
    iget-object p2, p0, Lig;->b:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object p2

    .line 93
    check-cast p2, Lhg;

    .line 95
    invoke-virtual {p2, p0}, Lhg;->h(Lig;)V

    .line 98
    add-int/lit8 p3, p3, 0x1

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lig;->h:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 13
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lig;->h:Z

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lig;->h:Z

    .line 32
    if-nez v0, :cond_3

    .line 34
    iget v0, p0, Lig;->v:I

    .line 36
    if-ne v0, p1, :cond_2

    .line 38
    iget v2, p0, Lig;->w:I

    .line 40
    if-ne v2, p2, :cond_2

    .line 42
    iget-object v0, p0, Lig;->c:Lmg;

    .line 44
    invoke-virtual {v0}, Llg;->R()I

    .line 47
    move-result v4

    .line 48
    iget-object v0, p0, Lig;->c:Lmg;

    .line 50
    invoke-virtual {v0}, Llg;->v()I

    .line 53
    move-result v5

    .line 54
    iget-object v0, p0, Lig;->c:Lmg;

    .line 56
    invoke-virtual {v0}, Lmg;->x1()Z

    .line 59
    move-result v6

    .line 60
    iget-object v0, p0, Lig;->c:Lmg;

    .line 62
    invoke-virtual {v0}, Lmg;->v1()Z

    .line 65
    move-result v7

    .line 66
    move-object v1, p0

    .line 67
    move v2, p1

    .line 68
    move v3, p2

    .line 69
    invoke-virtual/range {v1 .. v7}, Lig;->n(IIIIZZ)V

    .line 72
    return-void

    .line 73
    :cond_2
    if-ne v0, p1, :cond_3

    .line 75
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 78
    move-result v0

    .line 79
    const/high16 v2, 0x40000000    # 2.0f

    .line 81
    if-ne v0, v2, :cond_3

    .line 83
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 86
    move-result v0

    .line 87
    const/high16 v2, -0x80000000

    .line 89
    if-ne v0, v2, :cond_3

    .line 91
    iget v0, p0, Lig;->w:I

    .line 93
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 96
    move-result v0

    .line 97
    if-ne v0, v2, :cond_3

    .line 99
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 102
    move-result v0

    .line 103
    iget-object v2, p0, Lig;->c:Lmg;

    .line 105
    invoke-virtual {v2}, Llg;->v()I

    .line 108
    move-result v2

    .line 109
    if-lt v0, v2, :cond_3

    .line 111
    iput p1, p0, Lig;->v:I

    .line 113
    iput p2, p0, Lig;->w:I

    .line 115
    iget-object v0, p0, Lig;->c:Lmg;

    .line 117
    invoke-virtual {v0}, Llg;->R()I

    .line 120
    move-result v4

    .line 121
    iget-object v0, p0, Lig;->c:Lmg;

    .line 123
    invoke-virtual {v0}, Llg;->v()I

    .line 126
    move-result v5

    .line 127
    iget-object v0, p0, Lig;->c:Lmg;

    .line 129
    invoke-virtual {v0}, Lmg;->x1()Z

    .line 132
    move-result v6

    .line 133
    iget-object v0, p0, Lig;->c:Lmg;

    .line 135
    invoke-virtual {v0}, Lmg;->v1()Z

    .line 138
    move-result v7

    .line 139
    move-object v1, p0

    .line 140
    move v2, p1

    .line 141
    move v3, p2

    .line 142
    invoke-virtual/range {v1 .. v7}, Lig;->n(IIIIZZ)V

    .line 145
    return-void

    .line 146
    :cond_3
    iput p1, p0, Lig;->v:I

    .line 148
    iput p2, p0, Lig;->w:I

    .line 150
    iget-object v0, p0, Lig;->c:Lmg;

    .line 152
    invoke-virtual {p0}, Lig;->k()Z

    .line 155
    move-result v2

    .line 156
    invoke-virtual {v0, v2}, Lmg;->E1(Z)V

    .line 159
    iget-boolean v0, p0, Lig;->h:Z

    .line 161
    if-eqz v0, :cond_4

    .line 163
    iput-boolean v1, p0, Lig;->h:Z

    .line 165
    invoke-virtual {p0}, Lig;->s()Z

    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lig;->c:Lmg;

    .line 173
    invoke-virtual {v0}, Lmg;->G1()V

    .line 176
    :cond_4
    iget-object v0, p0, Lig;->c:Lmg;

    .line 178
    iget v1, p0, Lig;->i:I

    .line 180
    invoke-virtual {p0, v0, v1, p1, p2}, Lig;->o(Lmg;III)V

    .line 183
    iget-object v0, p0, Lig;->c:Lmg;

    .line 185
    invoke-virtual {v0}, Llg;->R()I

    .line 188
    move-result v4

    .line 189
    iget-object v0, p0, Lig;->c:Lmg;

    .line 191
    invoke-virtual {v0}, Llg;->v()I

    .line 194
    move-result v5

    .line 195
    iget-object v0, p0, Lig;->c:Lmg;

    .line 197
    invoke-virtual {v0}, Lmg;->x1()Z

    .line 200
    move-result v6

    .line 201
    iget-object v0, p0, Lig;->c:Lmg;

    .line 203
    invoke-virtual {v0}, Lmg;->v1()Z

    .line 206
    move-result v7

    .line 207
    move-object v1, p0

    .line 208
    move v2, p1

    .line 209
    move v3, p2

    .line 210
    invoke-virtual/range {v1 .. v7}, Lig;->n(IIIIZZ)V

    .line 213
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0, p1}, Lig;->i(Landroid/view/View;)Llg;

    .line 7
    move-result-object v0

    .line 8
    instance-of v1, p1, Lso;

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    instance-of v0, v0, Lro;

    .line 15
    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lig$b;

    .line 23
    new-instance v1, Lro;

    .line 25
    invoke-direct {v1}, Lro;-><init>()V

    .line 28
    iput-object v1, v0, Lig$b;->n0:Llg;

    .line 30
    iput-boolean v2, v0, Lig$b;->Z:Z

    .line 32
    iget v0, v0, Lig$b;->S:I

    .line 34
    invoke-virtual {v1, v0}, Lro;->i1(I)V

    .line 37
    :cond_0
    instance-of v0, p1, Lhg;

    .line 39
    if-eqz v0, :cond_1

    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Lhg;

    .line 44
    invoke-virtual {v0}, Lhg;->l()V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lig$b;

    .line 53
    iput-boolean v2, v1, Lig$b;->a0:Z

    .line 55
    iget-object v1, p0, Lig;->b:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_1

    .line 63
    iget-object v1, p0, Lig;->b:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    iget-object v0, p0, Lig;->a:Landroid/util/SparseArray;

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 73
    move-result v1

    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    iput-boolean v2, p0, Lig;->h:Z

    .line 79
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lig;->a:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 13
    invoke-virtual {p0, p1}, Lig;->i(Landroid/view/View;)Llg;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lig;->c:Lmg;

    .line 19
    invoke-virtual {v1, v0}, Lwl0;->b1(Llg;)V

    .line 22
    iget-object v0, p0, Lig;->b:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lig;->h:Z

    .line 30
    return-void
.end method

.method public final p()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 4
    move-result v6

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v7

    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v7, :cond_1

    .line 13
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Lig;->i(Landroid/view/View;)Llg;

    .line 20
    move-result-object v2

    .line 21
    if-nez v2, :cond_0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v2}, Llg;->h0()V

    .line 27
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, -0x1

    .line 31
    if-eqz v6, :cond_3

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_2
    if-ge v2, v7, :cond_3

    .line 36
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    move-result-object v3

    .line 40
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 47
    move-result v5

    .line 48
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 55
    move-result v5

    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {p0, v0, v4, v5}, Lig;->q(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    const/16 v5, 0x2f

    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 68
    move-result v5

    .line 69
    if-eq v5, v1, :cond_2

    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    move-result-object v4

    .line 77
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 80
    move-result v3

    .line 81
    invoke-virtual {p0, v3}, Lig;->g(I)Llg;

    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3, v4}, Llg;->m0(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :catch_0
    add-int/lit8 v2, v2, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    iget v2, p0, Lig;->l:I

    .line 93
    if-eq v2, v1, :cond_4

    .line 95
    const/4 v1, 0x0

    .line 96
    :goto_3
    if-ge v1, v7, :cond_4

    .line 98
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 105
    move-result v2

    .line 106
    iget v3, p0, Lig;->l:I

    .line 108
    add-int/lit8 v1, v1, 0x1

    .line 110
    goto :goto_3

    .line 111
    :cond_4
    iget-object v1, p0, Lig;->j:Lkg;

    .line 113
    if-eqz v1, :cond_5

    .line 115
    const/4 v2, 0x1

    .line 116
    invoke-virtual {v1, p0, v2}, Lkg;->d(Lig;Z)V

    .line 119
    :cond_5
    iget-object v1, p0, Lig;->c:Lmg;

    .line 121
    invoke-virtual {v1}, Lwl0;->c1()V

    .line 124
    iget-object v1, p0, Lig;->b:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 129
    move-result v1

    .line 130
    if-lez v1, :cond_6

    .line 132
    const/4 v2, 0x0

    .line 133
    :goto_4
    if-ge v2, v1, :cond_6

    .line 135
    iget-object v3, p0, Lig;->b:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Lhg;

    .line 143
    invoke-virtual {v3, p0}, Lhg;->k(Lig;)V

    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 148
    goto :goto_4

    .line 149
    :cond_6
    const/4 v1, 0x0

    .line 150
    :goto_5
    if-ge v1, v7, :cond_7

    .line 152
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 157
    goto :goto_5

    .line 158
    :cond_7
    iget-object v1, p0, Lig;->t:Landroid/util/SparseArray;

    .line 160
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 163
    iget-object v1, p0, Lig;->t:Landroid/util/SparseArray;

    .line 165
    iget-object v2, p0, Lig;->c:Lmg;

    .line 167
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lig;->t:Landroid/util/SparseArray;

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 175
    move-result v2

    .line 176
    iget-object v3, p0, Lig;->c:Lmg;

    .line 178
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    const/4 v1, 0x0

    .line 182
    :goto_6
    if-ge v1, v7, :cond_8

    .line 184
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {p0, v2}, Lig;->i(Landroid/view/View;)Llg;

    .line 191
    move-result-object v3

    .line 192
    iget-object v4, p0, Lig;->t:Landroid/util/SparseArray;

    .line 194
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 197
    move-result v2

    .line 198
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    .line 203
    goto :goto_6

    .line 204
    :cond_8
    const/4 v8, 0x0

    .line 205
    :goto_7
    if-ge v8, v7, :cond_a

    .line 207
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {p0, v2}, Lig;->i(Landroid/view/View;)Llg;

    .line 214
    move-result-object v3

    .line 215
    if-nez v3, :cond_9

    .line 217
    goto :goto_8

    .line 218
    :cond_9
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 221
    move-result-object v0

    .line 222
    move-object v4, v0

    .line 223
    check-cast v4, Lig$b;

    .line 225
    iget-object v0, p0, Lig;->c:Lmg;

    .line 227
    invoke-virtual {v0, v3}, Lwl0;->a(Llg;)V

    .line 230
    iget-object v5, p0, Lig;->t:Landroid/util/SparseArray;

    .line 232
    move-object v0, p0

    .line 233
    move v1, v6

    .line 234
    invoke-virtual/range {v0 .. v5}, Lig;->c(ZLandroid/view/View;Llg;Lig$b;Landroid/util/SparseArray;)V

    .line 237
    :goto_8
    add-int/lit8 v8, v8, 0x1

    .line 239
    goto :goto_7

    .line 240
    :cond_a
    return-void
.end method

.method public q(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p1, :cond_2

    .line 3
    instance-of p1, p2, Ljava/lang/String;

    .line 5
    if-eqz p1, :cond_2

    .line 7
    instance-of p1, p3, Ljava/lang/Integer;

    .line 9
    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lig;->m:Ljava/util/HashMap;

    .line 13
    if-nez p1, :cond_0

    .line 15
    new-instance p1, Ljava/util/HashMap;

    .line 17
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 20
    iput-object p1, p0, Lig;->m:Ljava/util/HashMap;

    .line 22
    :cond_0
    check-cast p2, Ljava/lang/String;

    .line 24
    const-string p1, "/"

    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 29
    move-result p1

    .line 30
    const/4 v0, -0x1

    .line 31
    if-eq p1, v0, :cond_1

    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    .line 41
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result p1

    .line 45
    iget-object p3, p0, Lig;->m:Ljava/util/HashMap;

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_2
    return-void
.end method

.method public r(Lmg;IIII)V
    .locals 7

    .line 1
    iget-object v0, p0, Lig;->u:Lig$c;

    .line 3
    iget v1, v0, Lig$c;->e:I

    .line 5
    iget v0, v0, Lig$c;->d:I

    .line 7
    sget-object v2, Llg$b;->a:Llg$b;

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 12
    move-result v3

    .line 13
    const/high16 v4, 0x40000000    # 2.0f

    .line 15
    const/high16 v5, -0x80000000

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eq p2, v5, :cond_3

    .line 20
    if-eqz p2, :cond_2

    .line 22
    if-eq p2, v4, :cond_1

    .line 24
    move-object p2, v2

    .line 25
    :cond_0
    const/4 p3, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget p2, p0, Lig;->f:I

    .line 29
    sub-int/2addr p2, v0

    .line 30
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    .line 33
    move-result p3

    .line 34
    move-object p2, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    sget-object p2, Llg$b;->b:Llg$b;

    .line 38
    if-nez v3, :cond_0

    .line 40
    iget p3, p0, Lig;->d:I

    .line 42
    invoke-static {v6, p3}, Ljava/lang/Math;->max(II)I

    .line 45
    move-result p3

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    sget-object p2, Llg$b;->b:Llg$b;

    .line 49
    if-nez v3, :cond_4

    .line 51
    iget p3, p0, Lig;->d:I

    .line 53
    invoke-static {v6, p3}, Ljava/lang/Math;->max(II)I

    .line 56
    move-result p3

    .line 57
    :cond_4
    :goto_0
    if-eq p4, v5, :cond_8

    .line 59
    if-eqz p4, :cond_7

    .line 61
    if-eq p4, v4, :cond_6

    .line 63
    :cond_5
    const/4 p5, 0x0

    .line 64
    goto :goto_1

    .line 65
    :cond_6
    iget p4, p0, Lig;->g:I

    .line 67
    sub-int/2addr p4, v1

    .line 68
    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    .line 71
    move-result p5

    .line 72
    goto :goto_1

    .line 73
    :cond_7
    sget-object v2, Llg$b;->b:Llg$b;

    .line 75
    if-nez v3, :cond_5

    .line 77
    iget p4, p0, Lig;->e:I

    .line 79
    invoke-static {v6, p4}, Ljava/lang/Math;->max(II)I

    .line 82
    move-result p5

    .line 83
    goto :goto_1

    .line 84
    :cond_8
    sget-object v2, Llg$b;->b:Llg$b;

    .line 86
    if-nez v3, :cond_9

    .line 88
    iget p4, p0, Lig;->e:I

    .line 90
    invoke-static {v6, p4}, Ljava/lang/Math;->max(II)I

    .line 93
    move-result p5

    .line 94
    :cond_9
    :goto_1
    invoke-virtual {p1}, Llg;->R()I

    .line 97
    move-result p4

    .line 98
    if-ne p3, p4, :cond_a

    .line 100
    invoke-virtual {p1}, Llg;->v()I

    .line 103
    move-result p4

    .line 104
    if-eq p5, p4, :cond_b

    .line 106
    :cond_a
    invoke-virtual {p1}, Lmg;->u1()V

    .line 109
    :cond_b
    invoke-virtual {p1, v6}, Llg;->U0(I)V

    .line 112
    invoke-virtual {p1, v6}, Llg;->V0(I)V

    .line 115
    iget p4, p0, Lig;->f:I

    .line 117
    sub-int/2addr p4, v0

    .line 118
    invoke-virtual {p1, p4}, Llg;->G0(I)V

    .line 121
    iget p4, p0, Lig;->g:I

    .line 123
    sub-int/2addr p4, v1

    .line 124
    invoke-virtual {p1, p4}, Llg;->F0(I)V

    .line 127
    invoke-virtual {p1, v6}, Llg;->J0(I)V

    .line 130
    invoke-virtual {p1, v6}, Llg;->I0(I)V

    .line 133
    invoke-virtual {p1, p2}, Llg;->z0(Llg$b;)V

    .line 136
    invoke-virtual {p1, p3}, Llg;->T0(I)V

    .line 139
    invoke-virtual {p1, v2}, Llg;->P0(Llg$b;)V

    .line 142
    invoke-virtual {p1, p5}, Llg;->v0(I)V

    .line 145
    iget p2, p0, Lig;->d:I

    .line 147
    sub-int/2addr p2, v0

    .line 148
    invoke-virtual {p1, p2}, Llg;->J0(I)V

    .line 151
    iget p2, p0, Lig;->e:I

    .line 153
    sub-int/2addr p2, v1

    .line 154
    invoke-virtual {p1, p2}, Llg;->I0(I)V

    .line 157
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lig;->l()V

    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 7
    return-void
.end method

.method public final s()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 26
    invoke-virtual {p0}, Lig;->p()V

    .line 29
    :cond_2
    return v1
.end method

.method public setConstraintSet(Lkg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lig;->j:Lkg;

    .line 3
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lig;->a:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 10
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 13
    iget-object p1, p0, Lig;->a:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Lig;->g:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lig;->g:I

    .line 8
    invoke-virtual {p0}, Lig;->requestLayout()V

    .line 11
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lig;->f:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lig;->f:I

    .line 8
    invoke-virtual {p0}, Lig;->requestLayout()V

    .line 11
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Lig;->e:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lig;->e:I

    .line 8
    invoke-virtual {p0}, Lig;->requestLayout()V

    .line 11
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lig;->d:I

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lig;->d:I

    .line 8
    invoke-virtual {p0}, Lig;->requestLayout()V

    .line 11
    return-void
.end method

.method public setOnConstraintsChanged(Lng;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lig;->k:Ljg;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljg;->c(Lng;)V

    .line 8
    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Lig;->i:I

    .line 3
    iget-object v0, p0, Lig;->c:Lmg;

    .line 5
    invoke-virtual {v0, p1}, Lmg;->D1(I)V

    .line 8
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
