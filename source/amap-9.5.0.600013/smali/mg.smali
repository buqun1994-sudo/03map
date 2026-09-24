.class public Lmg;
.super Lwl0;
.source "SourceFile"


# instance fields
.field public E0:Lsc;

.field public F0:Lki;

.field public G0:Lsc$b;

.field public H0:Z

.field public I0:Lax;

.field public J0:I

.field public K0:I

.field public L0:I

.field public M0:I

.field public N0:I

.field public O0:I

.field public P0:[Lme;

.field public Q0:[Lme;

.field public R0:Z

.field public S0:Z

.field public T0:Z

.field public U0:I

.field public V0:I

.field public W0:I

.field public X0:Z

.field public Y0:Z

.field public Z0:Z

.field public a1:I

.field public b1:Ljava/lang/ref/WeakReference;

.field public c1:Ljava/lang/ref/WeakReference;

.field public d1:Ljava/lang/ref/WeakReference;

.field public e1:Ljava/lang/ref/WeakReference;

.field public f1:Lsc$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lwl0;-><init>()V

    .line 4
    new-instance v0, Lsc;

    .line 6
    invoke-direct {v0, p0}, Lsc;-><init>(Lmg;)V

    .line 9
    iput-object v0, p0, Lmg;->E0:Lsc;

    .line 11
    new-instance v0, Lki;

    .line 13
    invoke-direct {v0, p0}, Lki;-><init>(Lmg;)V

    .line 16
    iput-object v0, p0, Lmg;->F0:Lki;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lmg;->G0:Lsc$b;

    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lmg;->H0:Z

    .line 24
    new-instance v2, Lax;

    .line 26
    invoke-direct {v2}, Lax;-><init>()V

    .line 29
    iput-object v2, p0, Lmg;->I0:Lax;

    .line 31
    iput v1, p0, Lmg;->N0:I

    .line 33
    iput v1, p0, Lmg;->O0:I

    .line 35
    const/4 v2, 0x4

    .line 36
    new-array v3, v2, [Lme;

    .line 38
    iput-object v3, p0, Lmg;->P0:[Lme;

    .line 40
    new-array v2, v2, [Lme;

    .line 42
    iput-object v2, p0, Lmg;->Q0:[Lme;

    .line 44
    iput-boolean v1, p0, Lmg;->R0:Z

    .line 46
    iput-boolean v1, p0, Lmg;->S0:Z

    .line 48
    iput-boolean v1, p0, Lmg;->T0:Z

    .line 50
    iput v1, p0, Lmg;->U0:I

    .line 52
    iput v1, p0, Lmg;->V0:I

    .line 54
    const/16 v2, 0x101

    .line 56
    iput v2, p0, Lmg;->W0:I

    .line 58
    iput-boolean v1, p0, Lmg;->X0:Z

    .line 60
    iput-boolean v1, p0, Lmg;->Y0:Z

    .line 62
    iput-boolean v1, p0, Lmg;->Z0:Z

    .line 64
    iput v1, p0, Lmg;->a1:I

    .line 66
    iput-object v0, p0, Lmg;->b1:Ljava/lang/ref/WeakReference;

    .line 68
    iput-object v0, p0, Lmg;->c1:Ljava/lang/ref/WeakReference;

    .line 70
    iput-object v0, p0, Lmg;->d1:Ljava/lang/ref/WeakReference;

    .line 72
    iput-object v0, p0, Lmg;->e1:Ljava/lang/ref/WeakReference;

    .line 74
    new-instance v0, Lsc$a;

    .line 76
    invoke-direct {v0}, Lsc$a;-><init>()V

    .line 79
    iput-object v0, p0, Lmg;->f1:Lsc$a;

    .line 81
    return-void
.end method

.method public static z1(Llg;Lsc$b;Lsc$a;I)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Llg;->y()Llg$b;

    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p2, Lsc$a;->a:Llg$b;

    .line 11
    invoke-virtual {p0}, Llg;->O()Llg$b;

    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p2, Lsc$a;->b:Llg$b;

    .line 17
    invoke-virtual {p0}, Llg;->R()I

    .line 20
    move-result v1

    .line 21
    iput v1, p2, Lsc$a;->c:I

    .line 23
    invoke-virtual {p0}, Llg;->v()I

    .line 26
    move-result v1

    .line 27
    iput v1, p2, Lsc$a;->d:I

    .line 29
    iput-boolean v0, p2, Lsc$a;->i:Z

    .line 31
    iput p3, p2, Lsc$a;->j:I

    .line 33
    iget-object p3, p2, Lsc$a;->a:Llg$b;

    .line 35
    sget-object v1, Llg$b;->c:Llg$b;

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne p3, v1, :cond_1

    .line 40
    const/4 p3, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p3, 0x0

    .line 43
    :goto_0
    iget-object v3, p2, Lsc$a;->b:Llg$b;

    .line 45
    if-ne v3, v1, :cond_2

    .line 47
    const/4 v1, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 v1, 0x0

    .line 50
    :goto_1
    const/4 v3, 0x0

    .line 51
    if-eqz p3, :cond_3

    .line 53
    iget v4, p0, Llg;->W:F

    .line 55
    cmpl-float v4, v4, v3

    .line 57
    if-lez v4, :cond_3

    .line 59
    const/4 v4, 0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    const/4 v4, 0x0

    .line 62
    :goto_2
    if-eqz v1, :cond_4

    .line 64
    iget v5, p0, Llg;->W:F

    .line 66
    cmpl-float v3, v5, v3

    .line 68
    if-lez v3, :cond_4

    .line 70
    const/4 v3, 0x1

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    const/4 v3, 0x0

    .line 73
    :goto_3
    if-eqz p3, :cond_6

    .line 75
    invoke-virtual {p0, v0}, Llg;->V(I)Z

    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_6

    .line 81
    iget v5, p0, Llg;->p:I

    .line 83
    if-nez v5, :cond_6

    .line 85
    if-nez v4, :cond_6

    .line 87
    sget-object p3, Llg$b;->b:Llg$b;

    .line 89
    iput-object p3, p2, Lsc$a;->a:Llg$b;

    .line 91
    if-eqz v1, :cond_5

    .line 93
    iget p3, p0, Llg;->q:I

    .line 95
    if-nez p3, :cond_5

    .line 97
    sget-object p3, Llg$b;->a:Llg$b;

    .line 99
    iput-object p3, p2, Lsc$a;->a:Llg$b;

    .line 101
    :cond_5
    const/4 p3, 0x0

    .line 102
    :cond_6
    if-eqz v1, :cond_8

    .line 104
    invoke-virtual {p0, v2}, Llg;->V(I)Z

    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_8

    .line 110
    iget v5, p0, Llg;->q:I

    .line 112
    if-nez v5, :cond_8

    .line 114
    if-nez v3, :cond_8

    .line 116
    sget-object v1, Llg$b;->b:Llg$b;

    .line 118
    iput-object v1, p2, Lsc$a;->b:Llg$b;

    .line 120
    if-eqz p3, :cond_7

    .line 122
    iget v1, p0, Llg;->p:I

    .line 124
    if-nez v1, :cond_7

    .line 126
    sget-object v1, Llg$b;->a:Llg$b;

    .line 128
    iput-object v1, p2, Lsc$a;->b:Llg$b;

    .line 130
    :cond_7
    const/4 v1, 0x0

    .line 131
    :cond_8
    invoke-virtual {p0}, Llg;->e0()Z

    .line 134
    move-result v5

    .line 135
    if-eqz v5, :cond_9

    .line 137
    sget-object p3, Llg$b;->a:Llg$b;

    .line 139
    iput-object p3, p2, Lsc$a;->a:Llg$b;

    .line 141
    const/4 p3, 0x0

    .line 142
    :cond_9
    invoke-virtual {p0}, Llg;->f0()Z

    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_a

    .line 148
    sget-object v1, Llg$b;->a:Llg$b;

    .line 150
    iput-object v1, p2, Lsc$a;->b:Llg$b;

    .line 152
    const/4 v1, 0x0

    .line 153
    :cond_a
    const/4 v5, -0x1

    .line 154
    const/4 v6, 0x4

    .line 155
    if-eqz v4, :cond_f

    .line 157
    iget-object v4, p0, Llg;->r:[I

    .line 159
    aget v0, v4, v0

    .line 161
    if-ne v0, v6, :cond_b

    .line 163
    sget-object v0, Llg$b;->a:Llg$b;

    .line 165
    iput-object v0, p2, Lsc$a;->a:Llg$b;

    .line 167
    goto :goto_6

    .line 168
    :cond_b
    if-nez v1, :cond_f

    .line 170
    iget-object v0, p2, Lsc$a;->b:Llg$b;

    .line 172
    sget-object v1, Llg$b;->a:Llg$b;

    .line 174
    if-ne v0, v1, :cond_c

    .line 176
    iget v0, p2, Lsc$a;->d:I

    .line 178
    goto :goto_4

    .line 179
    :cond_c
    sget-object v0, Llg$b;->b:Llg$b;

    .line 181
    iput-object v0, p2, Lsc$a;->a:Llg$b;

    .line 183
    invoke-interface {p1, p0, p2}, Lsc$b;->b(Llg;Lsc$a;)V

    .line 186
    iget v0, p2, Lsc$a;->f:I

    .line 188
    :goto_4
    iput-object v1, p2, Lsc$a;->a:Llg$b;

    .line 190
    iget v1, p0, Llg;->X:I

    .line 192
    if-eqz v1, :cond_e

    .line 194
    if-ne v1, v5, :cond_d

    .line 196
    goto :goto_5

    .line 197
    :cond_d
    invoke-virtual {p0}, Llg;->t()F

    .line 200
    move-result v1

    .line 201
    int-to-float v0, v0

    .line 202
    div-float/2addr v1, v0

    .line 203
    float-to-int v0, v1

    .line 204
    iput v0, p2, Lsc$a;->c:I

    .line 206
    goto :goto_6

    .line 207
    :cond_e
    :goto_5
    invoke-virtual {p0}, Llg;->t()F

    .line 210
    move-result v1

    .line 211
    int-to-float v0, v0

    .line 212
    mul-float v1, v1, v0

    .line 214
    float-to-int v0, v1

    .line 215
    iput v0, p2, Lsc$a;->c:I

    .line 217
    :cond_f
    :goto_6
    if-eqz v3, :cond_14

    .line 219
    iget-object v0, p0, Llg;->r:[I

    .line 221
    aget v0, v0, v2

    .line 223
    if-ne v0, v6, :cond_10

    .line 225
    sget-object p3, Llg$b;->a:Llg$b;

    .line 227
    iput-object p3, p2, Lsc$a;->b:Llg$b;

    .line 229
    goto :goto_9

    .line 230
    :cond_10
    if-nez p3, :cond_14

    .line 232
    iget-object p3, p2, Lsc$a;->a:Llg$b;

    .line 234
    sget-object v0, Llg$b;->a:Llg$b;

    .line 236
    if-ne p3, v0, :cond_11

    .line 238
    iget p3, p2, Lsc$a;->c:I

    .line 240
    goto :goto_7

    .line 241
    :cond_11
    sget-object p3, Llg$b;->b:Llg$b;

    .line 243
    iput-object p3, p2, Lsc$a;->b:Llg$b;

    .line 245
    invoke-interface {p1, p0, p2}, Lsc$b;->b(Llg;Lsc$a;)V

    .line 248
    iget p3, p2, Lsc$a;->e:I

    .line 250
    :goto_7
    iput-object v0, p2, Lsc$a;->b:Llg$b;

    .line 252
    iget v0, p0, Llg;->X:I

    .line 254
    if-eqz v0, :cond_13

    .line 256
    if-ne v0, v5, :cond_12

    .line 258
    goto :goto_8

    .line 259
    :cond_12
    int-to-float p3, p3

    .line 260
    invoke-virtual {p0}, Llg;->t()F

    .line 263
    move-result v0

    .line 264
    mul-float p3, p3, v0

    .line 266
    float-to-int p3, p3

    .line 267
    iput p3, p2, Lsc$a;->d:I

    .line 269
    goto :goto_9

    .line 270
    :cond_13
    :goto_8
    int-to-float p3, p3

    .line 271
    invoke-virtual {p0}, Llg;->t()F

    .line 274
    move-result v0

    .line 275
    div-float/2addr p3, v0

    .line 276
    float-to-int p3, p3

    .line 277
    iput p3, p2, Lsc$a;->d:I

    .line 279
    :cond_14
    :goto_9
    invoke-interface {p1, p0, p2}, Lsc$b;->b(Llg;Lsc$a;)V

    .line 282
    iget p1, p2, Lsc$a;->e:I

    .line 284
    invoke-virtual {p0, p1}, Llg;->T0(I)V

    .line 287
    iget p1, p2, Lsc$a;->f:I

    .line 289
    invoke-virtual {p0, p1}, Llg;->v0(I)V

    .line 292
    iget-boolean p1, p2, Lsc$a;->h:Z

    .line 294
    invoke-virtual {p0, p1}, Llg;->u0(Z)V

    .line 297
    iget p1, p2, Lsc$a;->g:I

    .line 299
    invoke-virtual {p0, p1}, Llg;->k0(I)V

    .line 302
    sget p0, Lsc$a;->k:I

    .line 304
    iput p0, p2, Lsc$a;->j:I

    .line 306
    iget-boolean p0, p2, Lsc$a;->i:Z

    .line 308
    return p0
.end method


# virtual methods
.method public A1(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lmg;->W0:I

    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method public final B1()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmg;->N0:I

    .line 4
    iput v0, p0, Lmg;->O0:I

    .line 6
    return-void
.end method

.method public C1(Lsc$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lmg;->G0:Lsc$b;

    .line 3
    iget-object v0, p0, Lmg;->F0:Lki;

    .line 5
    invoke-virtual {v0, p1}, Lki;->n(Lsc$b;)V

    .line 8
    return-void
.end method

.method public D1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lmg;->W0:I

    .line 3
    const/16 p1, 0x200

    .line 5
    invoke-virtual {p0, p1}, Lmg;->A1(I)Z

    .line 8
    move-result p1

    .line 9
    sput-boolean p1, Lax;->r:Z

    .line 11
    return-void
.end method

.method public E1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmg;->H0:Z

    .line 3
    return-void
.end method

.method public F1(Lax;[Z)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    aput-boolean v1, p2, v0

    .line 5
    const/16 p2, 0x40

    .line 7
    invoke-virtual {p0, p2}, Lmg;->A1(I)Z

    .line 10
    move-result p2

    .line 11
    invoke-virtual {p0, p1, p2}, Llg;->Y0(Lax;Z)V

    .line 14
    iget-object v0, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    move-result v0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_0

    .line 22
    iget-object v2, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Llg;

    .line 30
    invoke-virtual {v2, p1, p2}, Llg;->Y0(Lax;Z)V

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public G1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmg;->E0:Lsc;

    .line 3
    invoke-virtual {v0, p0}, Lsc;->e(Lmg;)V

    .line 6
    return-void
.end method

.method public X0(ZZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Llg;->X0(ZZ)V

    .line 4
    iget-object v0, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    iget-object v2, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Llg;

    .line 21
    invoke-virtual {v2, p1, p2}, Llg;->X0(ZZ)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public a1()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    const/4 v2, 0x0

    .line 4
    iput v2, v1, Llg;->Y:I

    .line 6
    iput v2, v1, Llg;->Z:I

    .line 8
    iput-boolean v2, v1, Lmg;->Y0:Z

    .line 10
    iput-boolean v2, v1, Lmg;->Z0:Z

    .line 12
    iget-object v0, v1, Lwl0;->D0:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v3

    .line 18
    invoke-virtual/range {p0 .. p0}, Llg;->R()I

    .line 21
    move-result v0

    .line 22
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result v0

    .line 26
    invoke-virtual/range {p0 .. p0}, Llg;->v()I

    .line 29
    move-result v4

    .line 30
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 33
    move-result v4

    .line 34
    iget-object v5, v1, Llg;->S:[Llg$b;

    .line 36
    const/4 v6, 0x1

    .line 37
    aget-object v7, v5, v6

    .line 39
    aget-object v5, v5, v2

    .line 41
    iget v8, v1, Lmg;->W0:I

    .line 43
    invoke-static {v8, v6}, Lc50;->b(II)Z

    .line 46
    move-result v8

    .line 47
    if-eqz v8, :cond_2

    .line 49
    invoke-virtual/range {p0 .. p0}, Lmg;->q1()Lsc$b;

    .line 52
    move-result-object v8

    .line 53
    invoke-static {v1, v8}, Ljj;->h(Lmg;Lsc$b;)V

    .line 56
    const/4 v8, 0x0

    .line 57
    :goto_0
    if-ge v8, v3, :cond_2

    .line 59
    iget-object v9, v1, Lwl0;->D0:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v9

    .line 65
    check-cast v9, Llg;

    .line 67
    invoke-virtual {v9}, Llg;->d0()Z

    .line 70
    move-result v10

    .line 71
    if-eqz v10, :cond_1

    .line 73
    instance-of v10, v9, Lro;

    .line 75
    if-nez v10, :cond_1

    .line 77
    instance-of v10, v9, Lwb;

    .line 79
    if-nez v10, :cond_1

    .line 81
    invoke-virtual {v9}, Llg;->c0()Z

    .line 84
    move-result v10

    .line 85
    if-nez v10, :cond_1

    .line 87
    invoke-virtual {v9, v2}, Llg;->s(I)Llg$b;

    .line 90
    move-result-object v10

    .line 91
    invoke-virtual {v9, v6}, Llg;->s(I)Llg$b;

    .line 94
    move-result-object v11

    .line 95
    sget-object v12, Llg$b;->c:Llg$b;

    .line 97
    if-ne v10, v12, :cond_0

    .line 99
    iget v10, v9, Llg;->p:I

    .line 101
    if-eq v10, v6, :cond_0

    .line 103
    if-ne v11, v12, :cond_0

    .line 105
    iget v10, v9, Llg;->q:I

    .line 107
    if-eq v10, v6, :cond_0

    .line 109
    const/4 v10, 0x1

    .line 110
    goto :goto_1

    .line 111
    :cond_0
    const/4 v10, 0x0

    .line 112
    :goto_1
    if-nez v10, :cond_1

    .line 114
    new-instance v10, Lsc$a;

    .line 116
    invoke-direct {v10}, Lsc$a;-><init>()V

    .line 119
    iget-object v11, v1, Lmg;->G0:Lsc$b;

    .line 121
    sget v12, Lsc$a;->k:I

    .line 123
    invoke-static {v9, v11, v10, v12}, Lmg;->z1(Llg;Lsc$b;Lsc$a;I)Z

    .line 126
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 128
    goto :goto_0

    .line 129
    :cond_2
    const/4 v8, 0x2

    .line 130
    if-le v3, v8, :cond_8

    .line 132
    sget-object v9, Llg$b;->b:Llg$b;

    .line 134
    if-eq v5, v9, :cond_3

    .line 136
    if-ne v7, v9, :cond_8

    .line 138
    :cond_3
    iget v10, v1, Lmg;->W0:I

    .line 140
    const/16 v11, 0x400

    .line 142
    invoke-static {v10, v11}, Lc50;->b(II)Z

    .line 145
    move-result v10

    .line 146
    if-eqz v10, :cond_8

    .line 148
    invoke-virtual/range {p0 .. p0}, Lmg;->q1()Lsc$b;

    .line 151
    move-result-object v10

    .line 152
    invoke-static {v1, v10}, Lko;->c(Lmg;Lsc$b;)Z

    .line 155
    move-result v10

    .line 156
    if-eqz v10, :cond_8

    .line 158
    if-ne v5, v9, :cond_5

    .line 160
    invoke-virtual/range {p0 .. p0}, Llg;->R()I

    .line 163
    move-result v10

    .line 164
    if-ge v0, v10, :cond_4

    .line 166
    if-lez v0, :cond_4

    .line 168
    invoke-virtual {v1, v0}, Llg;->T0(I)V

    .line 171
    iput-boolean v6, v1, Lmg;->Y0:Z

    .line 173
    goto :goto_2

    .line 174
    :cond_4
    invoke-virtual/range {p0 .. p0}, Llg;->R()I

    .line 177
    move-result v0

    .line 178
    :cond_5
    :goto_2
    if-ne v7, v9, :cond_7

    .line 180
    invoke-virtual/range {p0 .. p0}, Llg;->v()I

    .line 183
    move-result v9

    .line 184
    if-ge v4, v9, :cond_6

    .line 186
    if-lez v4, :cond_6

    .line 188
    invoke-virtual {v1, v4}, Llg;->v0(I)V

    .line 191
    iput-boolean v6, v1, Lmg;->Z0:Z

    .line 193
    goto :goto_3

    .line 194
    :cond_6
    invoke-virtual/range {p0 .. p0}, Llg;->v()I

    .line 197
    move-result v4

    .line 198
    :cond_7
    :goto_3
    move v9, v4

    .line 199
    move v4, v0

    .line 200
    const/4 v0, 0x1

    .line 201
    goto :goto_4

    .line 202
    :cond_8
    move v9, v4

    .line 203
    move v4, v0

    .line 204
    const/4 v0, 0x0

    .line 205
    :goto_4
    const/16 v10, 0x40

    .line 207
    invoke-virtual {v1, v10}, Lmg;->A1(I)Z

    .line 210
    move-result v11

    .line 211
    if-nez v11, :cond_a

    .line 213
    const/16 v11, 0x80

    .line 215
    invoke-virtual {v1, v11}, Lmg;->A1(I)Z

    .line 218
    move-result v11

    .line 219
    if-eqz v11, :cond_9

    .line 221
    goto :goto_5

    .line 222
    :cond_9
    const/4 v11, 0x0

    .line 223
    goto :goto_6

    .line 224
    :cond_a
    :goto_5
    const/4 v11, 0x1

    .line 225
    :goto_6
    iget-object v12, v1, Lmg;->I0:Lax;

    .line 227
    iput-boolean v2, v12, Lax;->h:Z

    .line 229
    iput-boolean v2, v12, Lax;->i:Z

    .line 231
    iget v13, v1, Lmg;->W0:I

    .line 233
    if-eqz v13, :cond_b

    .line 235
    if-eqz v11, :cond_b

    .line 237
    iput-boolean v6, v12, Lax;->i:Z

    .line 239
    :cond_b
    iget-object v11, v1, Lwl0;->D0:Ljava/util/ArrayList;

    .line 241
    invoke-virtual/range {p0 .. p0}, Llg;->y()Llg$b;

    .line 244
    move-result-object v12

    .line 245
    sget-object v13, Llg$b;->b:Llg$b;

    .line 247
    if-eq v12, v13, :cond_d

    .line 249
    invoke-virtual/range {p0 .. p0}, Llg;->O()Llg$b;

    .line 252
    move-result-object v12

    .line 253
    if-ne v12, v13, :cond_c

    .line 255
    goto :goto_7

    .line 256
    :cond_c
    const/4 v12, 0x0

    .line 257
    goto :goto_8

    .line 258
    :cond_d
    :goto_7
    const/4 v12, 0x1

    .line 259
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lmg;->B1()V

    .line 262
    const/4 v13, 0x0

    .line 263
    :goto_9
    if-ge v13, v3, :cond_f

    .line 265
    iget-object v14, v1, Lwl0;->D0:Ljava/util/ArrayList;

    .line 267
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 270
    move-result-object v14

    .line 271
    check-cast v14, Llg;

    .line 273
    instance-of v15, v14, Lwl0;

    .line 275
    if-eqz v15, :cond_e

    .line 277
    check-cast v14, Lwl0;

    .line 279
    invoke-virtual {v14}, Lwl0;->a1()V

    .line 282
    :cond_e
    add-int/lit8 v13, v13, 0x1

    .line 284
    goto :goto_9

    .line 285
    :cond_f
    invoke-virtual {v1, v10}, Lmg;->A1(I)Z

    .line 288
    move-result v10

    .line 289
    move v13, v0

    .line 290
    const/4 v0, 0x0

    .line 291
    const/4 v14, 0x1

    .line 292
    :goto_a
    if-eqz v14, :cond_20

    .line 294
    add-int/lit8 v15, v0, 0x1

    .line 296
    :try_start_0
    iget-object v0, v1, Lmg;->I0:Lax;

    .line 298
    invoke-virtual {v0}, Lax;->D()V

    .line 301
    invoke-virtual/range {p0 .. p0}, Lmg;->B1()V

    .line 304
    iget-object v0, v1, Lmg;->I0:Lax;

    .line 306
    invoke-virtual {v1, v0}, Llg;->k(Lax;)V

    .line 309
    const/4 v0, 0x0

    .line 310
    :goto_b
    if-ge v0, v3, :cond_10

    .line 312
    iget-object v6, v1, Lwl0;->D0:Ljava/util/ArrayList;

    .line 314
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 317
    move-result-object v6

    .line 318
    check-cast v6, Llg;

    .line 320
    iget-object v2, v1, Lmg;->I0:Lax;

    .line 322
    invoke-virtual {v6, v2}, Llg;->k(Lax;)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    .line 327
    const/4 v2, 0x0

    .line 328
    const/4 v6, 0x1

    .line 329
    goto :goto_b

    .line 330
    :cond_10
    iget-object v0, v1, Lmg;->I0:Lax;

    .line 332
    invoke-virtual {v1, v0}, Lmg;->e1(Lax;)Z

    .line 335
    move-result v14

    .line 336
    iget-object v0, v1, Lmg;->b1:Ljava/lang/ref/WeakReference;

    .line 338
    const/4 v2, 0x0

    .line 339
    if-eqz v0, :cond_11

    .line 341
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 344
    move-result-object v0

    .line 345
    if-eqz v0, :cond_11

    .line 347
    iget-object v0, v1, Lmg;->b1:Ljava/lang/ref/WeakReference;

    .line 349
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 352
    move-result-object v0

    .line 353
    check-cast v0, Lfg;

    .line 355
    iget-object v6, v1, Lmg;->I0:Lax;

    .line 357
    iget-object v8, v1, Llg;->I:Lfg;

    .line 359
    invoke-virtual {v6, v8}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 362
    move-result-object v6

    .line 363
    invoke-virtual {v1, v0, v6}, Lmg;->j1(Lfg;Lle0;)V

    .line 366
    iput-object v2, v1, Lmg;->b1:Ljava/lang/ref/WeakReference;

    .line 368
    :cond_11
    iget-object v0, v1, Lmg;->d1:Ljava/lang/ref/WeakReference;

    .line 370
    if-eqz v0, :cond_12

    .line 372
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 375
    move-result-object v0

    .line 376
    if-eqz v0, :cond_12

    .line 378
    iget-object v0, v1, Lmg;->d1:Ljava/lang/ref/WeakReference;

    .line 380
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 383
    move-result-object v0

    .line 384
    check-cast v0, Lfg;

    .line 386
    iget-object v6, v1, Lmg;->I0:Lax;

    .line 388
    iget-object v8, v1, Llg;->K:Lfg;

    .line 390
    invoke-virtual {v6, v8}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 393
    move-result-object v6

    .line 394
    invoke-virtual {v1, v0, v6}, Lmg;->i1(Lfg;Lle0;)V

    .line 397
    iput-object v2, v1, Lmg;->d1:Ljava/lang/ref/WeakReference;

    .line 399
    :cond_12
    iget-object v0, v1, Lmg;->c1:Ljava/lang/ref/WeakReference;

    .line 401
    if-eqz v0, :cond_13

    .line 403
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 406
    move-result-object v0

    .line 407
    if-eqz v0, :cond_13

    .line 409
    iget-object v0, v1, Lmg;->c1:Ljava/lang/ref/WeakReference;

    .line 411
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 414
    move-result-object v0

    .line 415
    check-cast v0, Lfg;

    .line 417
    iget-object v6, v1, Lmg;->I0:Lax;

    .line 419
    iget-object v8, v1, Llg;->H:Lfg;

    .line 421
    invoke-virtual {v6, v8}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 424
    move-result-object v6

    .line 425
    invoke-virtual {v1, v0, v6}, Lmg;->j1(Lfg;Lle0;)V

    .line 428
    iput-object v2, v1, Lmg;->c1:Ljava/lang/ref/WeakReference;

    .line 430
    :cond_13
    iget-object v0, v1, Lmg;->e1:Ljava/lang/ref/WeakReference;

    .line 432
    if-eqz v0, :cond_14

    .line 434
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 437
    move-result-object v0

    .line 438
    if-eqz v0, :cond_14

    .line 440
    iget-object v0, v1, Lmg;->e1:Ljava/lang/ref/WeakReference;

    .line 442
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 445
    move-result-object v0

    .line 446
    check-cast v0, Lfg;

    .line 448
    iget-object v6, v1, Lmg;->I0:Lax;

    .line 450
    iget-object v8, v1, Llg;->J:Lfg;

    .line 452
    invoke-virtual {v6, v8}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 455
    move-result-object v6

    .line 456
    invoke-virtual {v1, v0, v6}, Lmg;->i1(Lfg;Lle0;)V

    .line 459
    iput-object v2, v1, Lmg;->e1:Ljava/lang/ref/WeakReference;

    .line 461
    :cond_14
    if-eqz v14, :cond_15

    .line 463
    iget-object v0, v1, Lmg;->I0:Lax;

    .line 465
    invoke-virtual {v0}, Lax;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    goto :goto_c

    .line 469
    :catch_0
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 473
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 475
    new-instance v6, Ljava/lang/StringBuilder;

    .line 477
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    const-string v8, "EXCEPTION : "

    .line 482
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 495
    :cond_15
    :goto_c
    if-eqz v14, :cond_16

    .line 497
    iget-object v0, v1, Lmg;->I0:Lax;

    .line 499
    sget-object v2, Lc50;->a:[Z

    .line 501
    invoke-virtual {v1, v0, v2}, Lmg;->F1(Lax;[Z)V

    .line 504
    goto :goto_e

    .line 505
    :cond_16
    iget-object v0, v1, Lmg;->I0:Lax;

    .line 507
    invoke-virtual {v1, v0, v10}, Llg;->Y0(Lax;Z)V

    .line 510
    const/4 v0, 0x0

    .line 511
    :goto_d
    if-ge v0, v3, :cond_17

    .line 513
    iget-object v2, v1, Lwl0;->D0:Ljava/util/ArrayList;

    .line 515
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 518
    move-result-object v2

    .line 519
    check-cast v2, Llg;

    .line 521
    iget-object v6, v1, Lmg;->I0:Lax;

    .line 523
    invoke-virtual {v2, v6, v10}, Llg;->Y0(Lax;Z)V

    .line 526
    add-int/lit8 v0, v0, 0x1

    .line 528
    goto :goto_d

    .line 529
    :cond_17
    :goto_e
    if-eqz v12, :cond_1a

    .line 531
    const/16 v0, 0x8

    .line 533
    if-ge v15, v0, :cond_1a

    .line 535
    sget-object v0, Lc50;->a:[Z

    .line 537
    const/4 v2, 0x2

    .line 538
    aget-boolean v0, v0, v2

    .line 540
    if-eqz v0, :cond_1a

    .line 542
    const/4 v0, 0x0

    .line 543
    const/4 v6, 0x0

    .line 544
    const/4 v8, 0x0

    .line 545
    :goto_f
    if-ge v0, v3, :cond_18

    .line 547
    iget-object v14, v1, Lwl0;->D0:Ljava/util/ArrayList;

    .line 549
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 552
    move-result-object v14

    .line 553
    check-cast v14, Llg;

    .line 555
    iget v2, v14, Llg;->Y:I

    .line 557
    invoke-virtual {v14}, Llg;->R()I

    .line 560
    move-result v16

    .line 561
    add-int v2, v2, v16

    .line 563
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 566
    move-result v6

    .line 567
    iget v2, v14, Llg;->Z:I

    .line 569
    invoke-virtual {v14}, Llg;->v()I

    .line 572
    move-result v14

    .line 573
    add-int/2addr v2, v14

    .line 574
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 577
    move-result v8

    .line 578
    add-int/lit8 v0, v0, 0x1

    .line 580
    const/4 v2, 0x2

    .line 581
    goto :goto_f

    .line 582
    :cond_18
    iget v0, v1, Llg;->f0:I

    .line 584
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    .line 587
    move-result v0

    .line 588
    iget v2, v1, Llg;->g0:I

    .line 590
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    .line 593
    move-result v2

    .line 594
    sget-object v6, Llg$b;->b:Llg$b;

    .line 596
    if-ne v5, v6, :cond_19

    .line 598
    invoke-virtual/range {p0 .. p0}, Llg;->R()I

    .line 601
    move-result v8

    .line 602
    if-ge v8, v0, :cond_19

    .line 604
    invoke-virtual {v1, v0}, Llg;->T0(I)V

    .line 607
    iget-object v0, v1, Llg;->S:[Llg$b;

    .line 609
    const/4 v8, 0x0

    .line 610
    aput-object v6, v0, v8

    .line 612
    const/4 v0, 0x1

    .line 613
    const/4 v13, 0x1

    .line 614
    goto :goto_10

    .line 615
    :cond_19
    const/4 v0, 0x0

    .line 616
    :goto_10
    if-ne v7, v6, :cond_1b

    .line 618
    invoke-virtual/range {p0 .. p0}, Llg;->v()I

    .line 621
    move-result v8

    .line 622
    if-ge v8, v2, :cond_1b

    .line 624
    invoke-virtual {v1, v2}, Llg;->v0(I)V

    .line 627
    iget-object v0, v1, Llg;->S:[Llg$b;

    .line 629
    const/4 v2, 0x1

    .line 630
    aput-object v6, v0, v2

    .line 632
    const/4 v0, 0x1

    .line 633
    const/4 v13, 0x1

    .line 634
    goto :goto_11

    .line 635
    :cond_1a
    const/4 v0, 0x0

    .line 636
    :cond_1b
    :goto_11
    iget v2, v1, Llg;->f0:I

    .line 638
    invoke-virtual/range {p0 .. p0}, Llg;->R()I

    .line 641
    move-result v6

    .line 642
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 645
    move-result v2

    .line 646
    invoke-virtual/range {p0 .. p0}, Llg;->R()I

    .line 649
    move-result v6

    .line 650
    if-le v2, v6, :cond_1c

    .line 652
    invoke-virtual {v1, v2}, Llg;->T0(I)V

    .line 655
    iget-object v0, v1, Llg;->S:[Llg$b;

    .line 657
    sget-object v2, Llg$b;->a:Llg$b;

    .line 659
    const/4 v6, 0x0

    .line 660
    aput-object v2, v0, v6

    .line 662
    const/4 v0, 0x1

    .line 663
    const/4 v13, 0x1

    .line 664
    :cond_1c
    iget v2, v1, Llg;->g0:I

    .line 666
    invoke-virtual/range {p0 .. p0}, Llg;->v()I

    .line 669
    move-result v6

    .line 670
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 673
    move-result v2

    .line 674
    invoke-virtual/range {p0 .. p0}, Llg;->v()I

    .line 677
    move-result v6

    .line 678
    if-le v2, v6, :cond_1d

    .line 680
    invoke-virtual {v1, v2}, Llg;->v0(I)V

    .line 683
    iget-object v0, v1, Llg;->S:[Llg$b;

    .line 685
    sget-object v2, Llg$b;->a:Llg$b;

    .line 687
    const/4 v6, 0x1

    .line 688
    aput-object v2, v0, v6

    .line 690
    const/4 v0, 0x1

    .line 691
    const/4 v2, 0x1

    .line 692
    goto :goto_12

    .line 693
    :cond_1d
    const/4 v6, 0x1

    .line 694
    move v2, v13

    .line 695
    :goto_12
    if-nez v2, :cond_1f

    .line 697
    iget-object v8, v1, Llg;->S:[Llg$b;

    .line 699
    const/4 v13, 0x0

    .line 700
    aget-object v8, v8, v13

    .line 702
    sget-object v14, Llg$b;->b:Llg$b;

    .line 704
    if-ne v8, v14, :cond_1e

    .line 706
    if-lez v4, :cond_1e

    .line 708
    invoke-virtual/range {p0 .. p0}, Llg;->R()I

    .line 711
    move-result v8

    .line 712
    if-le v8, v4, :cond_1e

    .line 714
    iput-boolean v6, v1, Lmg;->Y0:Z

    .line 716
    iget-object v0, v1, Llg;->S:[Llg$b;

    .line 718
    sget-object v2, Llg$b;->a:Llg$b;

    .line 720
    aput-object v2, v0, v13

    .line 722
    invoke-virtual {v1, v4}, Llg;->T0(I)V

    .line 725
    const/4 v0, 0x1

    .line 726
    const/4 v2, 0x1

    .line 727
    :cond_1e
    iget-object v8, v1, Llg;->S:[Llg$b;

    .line 729
    aget-object v8, v8, v6

    .line 731
    if-ne v8, v14, :cond_1f

    .line 733
    if-lez v9, :cond_1f

    .line 735
    invoke-virtual/range {p0 .. p0}, Llg;->v()I

    .line 738
    move-result v8

    .line 739
    if-le v8, v9, :cond_1f

    .line 741
    iput-boolean v6, v1, Lmg;->Z0:Z

    .line 743
    iget-object v0, v1, Llg;->S:[Llg$b;

    .line 745
    sget-object v2, Llg$b;->a:Llg$b;

    .line 747
    aput-object v2, v0, v6

    .line 749
    invoke-virtual {v1, v9}, Llg;->v0(I)V

    .line 752
    const/4 v13, 0x1

    .line 753
    const/4 v14, 0x1

    .line 754
    goto :goto_13

    .line 755
    :cond_1f
    move v14, v0

    .line 756
    move v13, v2

    .line 757
    :goto_13
    move v0, v15

    .line 758
    const/4 v2, 0x0

    .line 759
    const/4 v6, 0x1

    .line 760
    const/4 v8, 0x2

    .line 761
    goto/16 :goto_a

    .line 763
    :cond_20
    iput-object v11, v1, Lwl0;->D0:Ljava/util/ArrayList;

    .line 765
    if-eqz v13, :cond_21

    .line 767
    iget-object v0, v1, Llg;->S:[Llg$b;

    .line 769
    const/4 v2, 0x0

    .line 770
    aput-object v5, v0, v2

    .line 772
    const/4 v2, 0x1

    .line 773
    aput-object v7, v0, v2

    .line 775
    :cond_21
    iget-object v0, v1, Lmg;->I0:Lax;

    .line 777
    invoke-virtual {v0}, Lax;->v()Lud;

    .line 780
    move-result-object v0

    .line 781
    invoke-virtual {v1, v0}, Lwl0;->j0(Lud;)V

    .line 784
    return-void
.end method

.method public d1(Llg;I)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lmg;->f1(Llg;)V

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-ne p2, v0, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lmg;->k1(Llg;)V

    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public e1(Lax;)Z
    .locals 12

    .line 1
    const/16 v0, 0x40

    .line 3
    invoke-virtual {p0, v0}, Lmg;->A1(I)Z

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, p1, v0}, Llg;->g(Lax;Z)V

    .line 10
    iget-object v1, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    const/4 v5, 0x1

    .line 20
    if-ge v3, v1, :cond_1

    .line 22
    iget-object v6, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v6

    .line 28
    check-cast v6, Llg;

    .line 30
    invoke-virtual {v6, v2, v2}, Llg;->C0(IZ)V

    .line 33
    invoke-virtual {v6, v5, v2}, Llg;->C0(IZ)V

    .line 36
    instance-of v6, v6, Lwb;

    .line 38
    if-eqz v6, :cond_0

    .line 40
    const/4 v4, 0x1

    .line 41
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-eqz v4, :cond_3

    .line 46
    const/4 v3, 0x0

    .line 47
    :goto_1
    if-ge v3, v1, :cond_3

    .line 49
    iget-object v4, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Llg;

    .line 57
    instance-of v6, v4, Lwb;

    .line 59
    if-eqz v6, :cond_2

    .line 61
    check-cast v4, Lwb;

    .line 63
    invoke-virtual {v4}, Lwb;->g1()V

    .line 66
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const/4 v3, 0x0

    .line 70
    :goto_2
    if-ge v3, v1, :cond_5

    .line 72
    iget-object v4, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Llg;

    .line 80
    invoke-virtual {v4}, Llg;->f()Z

    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_4

    .line 86
    invoke-virtual {v4, p1, v0}, Llg;->g(Lax;Z)V

    .line 89
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 91
    goto :goto_2

    .line 92
    :cond_5
    sget-boolean v3, Lax;->r:Z

    .line 94
    if-eqz v3, :cond_9

    .line 96
    new-instance v3, Ljava/util/HashSet;

    .line 98
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 101
    const/4 v4, 0x0

    .line 102
    :goto_3
    if-ge v4, v1, :cond_7

    .line 104
    iget-object v6, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v6

    .line 110
    check-cast v6, Llg;

    .line 112
    invoke-virtual {v6}, Llg;->f()Z

    .line 115
    move-result v7

    .line 116
    if-nez v7, :cond_6

    .line 118
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 123
    goto :goto_3

    .line 124
    :cond_7
    invoke-virtual {p0}, Llg;->y()Llg$b;

    .line 127
    move-result-object v1

    .line 128
    sget-object v4, Llg$b;->b:Llg$b;

    .line 130
    if-ne v1, v4, :cond_8

    .line 132
    const/4 v10, 0x0

    .line 133
    goto :goto_4

    .line 134
    :cond_8
    const/4 v10, 0x1

    .line 135
    :goto_4
    const/4 v11, 0x0

    .line 136
    move-object v6, p0

    .line 137
    move-object v7, p0

    .line 138
    move-object v8, p1

    .line 139
    move-object v9, v3

    .line 140
    invoke-virtual/range {v6 .. v11}, Llg;->e(Lmg;Lax;Ljava/util/HashSet;IZ)V

    .line 143
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 146
    move-result-object v1

    .line 147
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_f

    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 156
    move-result-object v3

    .line 157
    check-cast v3, Llg;

    .line 159
    invoke-static {p0, p1, v3}, Lc50;->a(Lmg;Lax;Llg;)V

    .line 162
    invoke-virtual {v3, p1, v0}, Llg;->g(Lax;Z)V

    .line 165
    goto :goto_5

    .line 166
    :cond_9
    const/4 v3, 0x0

    .line 167
    :goto_6
    if-ge v3, v1, :cond_f

    .line 169
    iget-object v4, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 174
    move-result-object v4

    .line 175
    check-cast v4, Llg;

    .line 177
    instance-of v6, v4, Lmg;

    .line 179
    if-eqz v6, :cond_d

    .line 181
    iget-object v6, v4, Llg;->S:[Llg$b;

    .line 183
    aget-object v7, v6, v2

    .line 185
    aget-object v6, v6, v5

    .line 187
    sget-object v8, Llg$b;->b:Llg$b;

    .line 189
    if-ne v7, v8, :cond_a

    .line 191
    sget-object v9, Llg$b;->a:Llg$b;

    .line 193
    invoke-virtual {v4, v9}, Llg;->z0(Llg$b;)V

    .line 196
    :cond_a
    if-ne v6, v8, :cond_b

    .line 198
    sget-object v9, Llg$b;->a:Llg$b;

    .line 200
    invoke-virtual {v4, v9}, Llg;->P0(Llg$b;)V

    .line 203
    :cond_b
    invoke-virtual {v4, p1, v0}, Llg;->g(Lax;Z)V

    .line 206
    if-ne v7, v8, :cond_c

    .line 208
    invoke-virtual {v4, v7}, Llg;->z0(Llg$b;)V

    .line 211
    :cond_c
    if-ne v6, v8, :cond_e

    .line 213
    invoke-virtual {v4, v6}, Llg;->P0(Llg$b;)V

    .line 216
    goto :goto_7

    .line 217
    :cond_d
    invoke-static {p0, p1, v4}, Lc50;->a(Lmg;Lax;Llg;)V

    .line 220
    invoke-virtual {v4}, Llg;->f()Z

    .line 223
    move-result v6

    .line 224
    if-nez v6, :cond_e

    .line 226
    invoke-virtual {v4, p1, v0}, Llg;->g(Lax;Z)V

    .line 229
    :cond_e
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 231
    goto :goto_6

    .line 232
    :cond_f
    iget v0, p0, Lmg;->N0:I

    .line 234
    const/4 v1, 0x0

    .line 235
    if-lez v0, :cond_10

    .line 237
    invoke-static {p0, p1, v1, v2}, Lle;->b(Lmg;Lax;Ljava/util/ArrayList;I)V

    .line 240
    :cond_10
    iget v0, p0, Lmg;->O0:I

    .line 242
    if-lez v0, :cond_11

    .line 244
    invoke-static {p0, p1, v1, v5}, Lle;->b(Lmg;Lax;Ljava/util/ArrayList;I)V

    .line 247
    :cond_11
    return v5
.end method

.method public final f1(Llg;)V
    .locals 5

    .line 1
    iget v0, p0, Lmg;->N0:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iget-object v1, p0, Lmg;->Q0:[Lme;

    .line 7
    array-length v2, v1

    .line 8
    if-lt v0, v2, :cond_0

    .line 10
    array-length v0, v1

    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 13
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [Lme;

    .line 19
    iput-object v0, p0, Lmg;->Q0:[Lme;

    .line 21
    :cond_0
    iget-object v0, p0, Lmg;->Q0:[Lme;

    .line 23
    iget v1, p0, Lmg;->N0:I

    .line 25
    new-instance v2, Lme;

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p0}, Lmg;->w1()Z

    .line 31
    move-result v4

    .line 32
    invoke-direct {v2, p1, v3, v4}, Lme;-><init>(Llg;IZ)V

    .line 35
    aput-object v2, v0, v1

    .line 37
    iget p1, p0, Lmg;->N0:I

    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 41
    iput p1, p0, Lmg;->N0:I

    .line 43
    return-void
.end method

.method public g1(Lfg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmg;->e1:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lfg;->d()I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lmg;->e1:Ljava/lang/ref/WeakReference;

    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lfg;

    .line 23
    invoke-virtual {v1}, Lfg;->d()I

    .line 26
    move-result v1

    .line 27
    if-le v0, v1, :cond_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    iput-object v0, p0, Lmg;->e1:Ljava/lang/ref/WeakReference;

    .line 36
    :cond_1
    return-void
.end method

.method public h0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmg;->I0:Lax;

    .line 3
    invoke-virtual {v0}, Lax;->D()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lmg;->J0:I

    .line 9
    iput v0, p0, Lmg;->L0:I

    .line 11
    iput v0, p0, Lmg;->K0:I

    .line 13
    iput v0, p0, Lmg;->M0:I

    .line 15
    iput-boolean v0, p0, Lmg;->X0:Z

    .line 17
    invoke-super {p0}, Lwl0;->h0()V

    .line 20
    return-void
.end method

.method public h1(Lfg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmg;->c1:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lfg;->d()I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lmg;->c1:Ljava/lang/ref/WeakReference;

    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lfg;

    .line 23
    invoke-virtual {v1}, Lfg;->d()I

    .line 26
    move-result v1

    .line 27
    if-le v0, v1, :cond_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    iput-object v0, p0, Lmg;->c1:Ljava/lang/ref/WeakReference;

    .line 36
    :cond_1
    return-void
.end method

.method public final i1(Lfg;Lle0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmg;->I0:Lax;

    .line 3
    invoke-virtual {v0, p1}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lmg;->I0:Lax;

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x5

    .line 11
    invoke-virtual {v0, p2, p1, v1, v2}, Lax;->h(Lle0;Lle0;II)V

    .line 14
    return-void
.end method

.method public final j1(Lfg;Lle0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmg;->I0:Lax;

    .line 3
    invoke-virtual {v0, p1}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lmg;->I0:Lax;

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x5

    .line 11
    invoke-virtual {v0, p1, p2, v1, v2}, Lax;->h(Lle0;Lle0;II)V

    .line 14
    return-void
.end method

.method public final k1(Llg;)V
    .locals 5

    .line 1
    iget v0, p0, Lmg;->O0:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Lmg;->P0:[Lme;

    .line 7
    array-length v3, v2

    .line 8
    if-lt v0, v3, :cond_0

    .line 10
    array-length v0, v2

    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 13
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [Lme;

    .line 19
    iput-object v0, p0, Lmg;->P0:[Lme;

    .line 21
    :cond_0
    iget-object v0, p0, Lmg;->P0:[Lme;

    .line 23
    iget v2, p0, Lmg;->O0:I

    .line 25
    new-instance v3, Lme;

    .line 27
    invoke-virtual {p0}, Lmg;->w1()Z

    .line 30
    move-result v4

    .line 31
    invoke-direct {v3, p1, v1, v4}, Lme;-><init>(Llg;IZ)V

    .line 34
    aput-object v3, v0, v2

    .line 36
    iget p1, p0, Lmg;->O0:I

    .line 38
    add-int/2addr p1, v1

    .line 39
    iput p1, p0, Lmg;->O0:I

    .line 41
    return-void
.end method

.method public l1(Lfg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmg;->d1:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lfg;->d()I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lmg;->d1:Ljava/lang/ref/WeakReference;

    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lfg;

    .line 23
    invoke-virtual {v1}, Lfg;->d()I

    .line 26
    move-result v1

    .line 27
    if-le v0, v1, :cond_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    iput-object v0, p0, Lmg;->d1:Ljava/lang/ref/WeakReference;

    .line 36
    :cond_1
    return-void
.end method

.method public m1(Lfg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmg;->b1:Ljava/lang/ref/WeakReference;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Lfg;->d()I

    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lmg;->b1:Ljava/lang/ref/WeakReference;

    .line 17
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lfg;

    .line 23
    invoke-virtual {v1}, Lfg;->d()I

    .line 26
    move-result v1

    .line 27
    if-le v0, v1, :cond_1

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 31
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 34
    iput-object v0, p0, Lmg;->b1:Ljava/lang/ref/WeakReference;

    .line 36
    :cond_1
    return-void
.end method

.method public n1(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmg;->F0:Lki;

    .line 3
    invoke-virtual {v0, p1}, Lki;->f(Z)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public o1(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmg;->F0:Lki;

    .line 3
    invoke-virtual {v0, p1}, Lki;->g(Z)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public p1(ZI)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmg;->F0:Lki;

    .line 3
    invoke-virtual {v0, p1, p2}, Lki;->h(ZI)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public q1()Lsc$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lmg;->G0:Lsc$b;

    .line 3
    return-object v0
.end method

.method public r1()I
    .locals 1

    .line 1
    iget v0, p0, Lmg;->W0:I

    .line 3
    return v0
.end method

.method public s1()Lax;
    .locals 1

    .line 1
    iget-object v0, p0, Lmg;->I0:Lax;

    .line 3
    return-object v0
.end method

.method public t1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmg;->F0:Lki;

    .line 3
    invoke-virtual {v0}, Lki;->j()V

    .line 6
    return-void
.end method

.method public u1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmg;->F0:Lki;

    .line 3
    invoke-virtual {v0}, Lki;->k()V

    .line 6
    return-void
.end method

.method public v1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmg;->Z0:Z

    .line 3
    return v0
.end method

.method public w1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmg;->H0:Z

    .line 3
    return v0
.end method

.method public x1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmg;->Y0:Z

    .line 3
    return v0
.end method

.method public y1(IIIIIIIII)J
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    move/from16 v3, p8

    .line 4
    iput v3, v11, Lmg;->J0:I

    .line 6
    move/from16 v4, p9

    .line 8
    iput v4, v11, Lmg;->K0:I

    .line 10
    iget-object v0, v11, Lmg;->E0:Lsc;

    .line 12
    move-object v1, p0

    .line 13
    move v2, p1

    .line 14
    move v5, p2

    .line 15
    move v6, p3

    .line 16
    move/from16 v7, p4

    .line 18
    move/from16 v8, p5

    .line 20
    move/from16 v9, p6

    .line 22
    move/from16 v10, p7

    .line 24
    invoke-virtual/range {v0 .. v10}, Lsc;->d(Lmg;IIIIIIIII)J

    .line 27
    move-result-wide v0

    .line 28
    return-wide v0
.end method
