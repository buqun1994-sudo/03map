.class public Llg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llg$b;
    }
.end annotation


# static fields
.field public static C0:F = 0.5f


# instance fields
.field public A:[I

.field public A0:I

.field public B:F

.field public B0:I

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:I

.field public G:I

.field public H:Lfg;

.field public I:Lfg;

.field public J:Lfg;

.field public K:Lfg;

.field public L:Lfg;

.field public M:Lfg;

.field public N:Lfg;

.field public O:Lfg;

.field public P:[Lfg;

.field public Q:Ljava/util/ArrayList;

.field public R:[Z

.field public S:[Llg$b;

.field public T:Llg;

.field public U:I

.field public V:I

.field public W:F

.field public X:I

.field public Y:I

.field public Z:I

.field public a:Z

.field public a0:I

.field public b:[Lkm0;

.field public b0:I

.field public c:Lne;

.field public c0:I

.field public d:Lne;

.field public d0:I

.field public e:Lqp;

.field public e0:I

.field public f:Luk0;

.field public f0:I

.field public g:[Z

.field public g0:I

.field public h:Z

.field public h0:F

.field public i:Z

.field public i0:F

.field public j:Z

.field public j0:Ljava/lang/Object;

.field public k:Z

.field public k0:I

.field public l:Z

.field public l0:I

.field public m:Z

.field public m0:Ljava/lang/String;

.field public n:I

.field public n0:Ljava/lang/String;

.field public o:I

.field public o0:Z

.field public p:I

.field public p0:Z

.field public q:I

.field public q0:Z

.field public r:[I

.field public r0:I

.field public s:I

.field public s0:I

.field public t:I

.field public t0:Z

.field public u:F

.field public u0:Z

.field public v:I

.field public v0:[F

.field public w:I

.field public w0:[Llg;

.field public x:F

.field public x0:[Llg;

.field public y:I

.field public y0:Llg;

.field public z:F

.field public z0:Llg;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Llg;->a:Z

    .line 7
    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [Lkm0;

    .line 10
    iput-object v2, p0, Llg;->b:[Lkm0;

    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, p0, Llg;->e:Lqp;

    .line 15
    iput-object v2, p0, Llg;->f:Luk0;

    .line 17
    new-array v3, v1, [Z

    .line 19
    fill-array-data v3, :array_0

    .line 22
    iput-object v3, p0, Llg;->g:[Z

    .line 24
    iput-boolean v0, p0, Llg;->h:Z

    .line 26
    const/4 v3, 0x1

    .line 27
    iput-boolean v3, p0, Llg;->i:Z

    .line 29
    iput-boolean v0, p0, Llg;->j:Z

    .line 31
    iput-boolean v3, p0, Llg;->k:Z

    .line 33
    iput-boolean v0, p0, Llg;->l:Z

    .line 35
    iput-boolean v0, p0, Llg;->m:Z

    .line 37
    const/4 v4, -0x1

    .line 38
    iput v4, p0, Llg;->n:I

    .line 40
    iput v4, p0, Llg;->o:I

    .line 42
    iput v0, p0, Llg;->p:I

    .line 44
    iput v0, p0, Llg;->q:I

    .line 46
    new-array v5, v1, [I

    .line 48
    iput-object v5, p0, Llg;->r:[I

    .line 50
    iput v0, p0, Llg;->s:I

    .line 52
    iput v0, p0, Llg;->t:I

    .line 54
    const/high16 v5, 0x3f800000    # 1.0f

    .line 56
    iput v5, p0, Llg;->u:F

    .line 58
    iput v0, p0, Llg;->v:I

    .line 60
    iput v0, p0, Llg;->w:I

    .line 62
    iput v5, p0, Llg;->x:F

    .line 64
    iput v4, p0, Llg;->y:I

    .line 66
    iput v5, p0, Llg;->z:F

    .line 68
    const v5, 0x7fffffff

    .line 71
    filled-new-array {v5, v5}, [I

    .line 74
    move-result-object v5

    .line 75
    iput-object v5, p0, Llg;->A:[I

    .line 77
    const/4 v5, 0x0

    .line 78
    iput v5, p0, Llg;->B:F

    .line 80
    iput-boolean v0, p0, Llg;->C:Z

    .line 82
    iput-boolean v0, p0, Llg;->E:Z

    .line 84
    iput v0, p0, Llg;->F:I

    .line 86
    iput v0, p0, Llg;->G:I

    .line 88
    new-instance v6, Lfg;

    .line 90
    sget-object v7, Lfg$b;->b:Lfg$b;

    .line 92
    invoke-direct {v6, p0, v7}, Lfg;-><init>(Llg;Lfg$b;)V

    .line 95
    iput-object v6, p0, Llg;->H:Lfg;

    .line 97
    new-instance v6, Lfg;

    .line 99
    sget-object v7, Lfg$b;->c:Lfg$b;

    .line 101
    invoke-direct {v6, p0, v7}, Lfg;-><init>(Llg;Lfg$b;)V

    .line 104
    iput-object v6, p0, Llg;->I:Lfg;

    .line 106
    new-instance v6, Lfg;

    .line 108
    sget-object v7, Lfg$b;->d:Lfg$b;

    .line 110
    invoke-direct {v6, p0, v7}, Lfg;-><init>(Llg;Lfg$b;)V

    .line 113
    iput-object v6, p0, Llg;->J:Lfg;

    .line 115
    new-instance v6, Lfg;

    .line 117
    sget-object v7, Lfg$b;->e:Lfg$b;

    .line 119
    invoke-direct {v6, p0, v7}, Lfg;-><init>(Llg;Lfg$b;)V

    .line 122
    iput-object v6, p0, Llg;->K:Lfg;

    .line 124
    new-instance v6, Lfg;

    .line 126
    sget-object v7, Lfg$b;->f:Lfg$b;

    .line 128
    invoke-direct {v6, p0, v7}, Lfg;-><init>(Llg;Lfg$b;)V

    .line 131
    iput-object v6, p0, Llg;->L:Lfg;

    .line 133
    new-instance v6, Lfg;

    .line 135
    sget-object v7, Lfg$b;->h:Lfg$b;

    .line 137
    invoke-direct {v6, p0, v7}, Lfg;-><init>(Llg;Lfg$b;)V

    .line 140
    iput-object v6, p0, Llg;->M:Lfg;

    .line 142
    new-instance v6, Lfg;

    .line 144
    sget-object v7, Lfg$b;->i:Lfg$b;

    .line 146
    invoke-direct {v6, p0, v7}, Lfg;-><init>(Llg;Lfg$b;)V

    .line 149
    iput-object v6, p0, Llg;->N:Lfg;

    .line 151
    new-instance v6, Lfg;

    .line 153
    sget-object v7, Lfg$b;->g:Lfg$b;

    .line 155
    invoke-direct {v6, p0, v7}, Lfg;-><init>(Llg;Lfg$b;)V

    .line 158
    iput-object v6, p0, Llg;->O:Lfg;

    .line 160
    const/4 v7, 0x6

    .line 161
    new-array v7, v7, [Lfg;

    .line 163
    iget-object v8, p0, Llg;->H:Lfg;

    .line 165
    aput-object v8, v7, v0

    .line 167
    iget-object v8, p0, Llg;->J:Lfg;

    .line 169
    aput-object v8, v7, v3

    .line 171
    iget-object v8, p0, Llg;->I:Lfg;

    .line 173
    aput-object v8, v7, v1

    .line 175
    const/4 v8, 0x3

    .line 176
    iget-object v9, p0, Llg;->K:Lfg;

    .line 178
    aput-object v9, v7, v8

    .line 180
    const/4 v8, 0x4

    .line 181
    iget-object v9, p0, Llg;->L:Lfg;

    .line 183
    aput-object v9, v7, v8

    .line 185
    const/4 v8, 0x5

    .line 186
    aput-object v6, v7, v8

    .line 188
    iput-object v7, p0, Llg;->P:[Lfg;

    .line 190
    new-instance v6, Ljava/util/ArrayList;

    .line 192
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 195
    iput-object v6, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 197
    new-array v6, v1, [Z

    .line 199
    iput-object v6, p0, Llg;->R:[Z

    .line 201
    new-array v6, v1, [Llg$b;

    .line 203
    sget-object v7, Llg$b;->a:Llg$b;

    .line 205
    aput-object v7, v6, v0

    .line 207
    aput-object v7, v6, v3

    .line 209
    iput-object v6, p0, Llg;->S:[Llg$b;

    .line 211
    iput-object v2, p0, Llg;->T:Llg;

    .line 213
    iput v0, p0, Llg;->U:I

    .line 215
    iput v0, p0, Llg;->V:I

    .line 217
    iput v5, p0, Llg;->W:F

    .line 219
    iput v4, p0, Llg;->X:I

    .line 221
    iput v0, p0, Llg;->Y:I

    .line 223
    iput v0, p0, Llg;->Z:I

    .line 225
    iput v0, p0, Llg;->a0:I

    .line 227
    iput v0, p0, Llg;->b0:I

    .line 229
    iput v0, p0, Llg;->c0:I

    .line 231
    iput v0, p0, Llg;->d0:I

    .line 233
    iput v0, p0, Llg;->e0:I

    .line 235
    sget v5, Llg;->C0:F

    .line 237
    iput v5, p0, Llg;->h0:F

    .line 239
    iput v5, p0, Llg;->i0:F

    .line 241
    iput v0, p0, Llg;->k0:I

    .line 243
    iput v0, p0, Llg;->l0:I

    .line 245
    iput-object v2, p0, Llg;->m0:Ljava/lang/String;

    .line 247
    iput-object v2, p0, Llg;->n0:Ljava/lang/String;

    .line 249
    iput-boolean v0, p0, Llg;->q0:Z

    .line 251
    iput v0, p0, Llg;->r0:I

    .line 253
    iput v0, p0, Llg;->s0:I

    .line 255
    new-array v5, v1, [F

    .line 257
    fill-array-data v5, :array_1

    .line 260
    iput-object v5, p0, Llg;->v0:[F

    .line 262
    new-array v5, v1, [Llg;

    .line 264
    aput-object v2, v5, v0

    .line 266
    aput-object v2, v5, v3

    .line 268
    iput-object v5, p0, Llg;->w0:[Llg;

    .line 270
    new-array v1, v1, [Llg;

    .line 272
    aput-object v2, v1, v0

    .line 274
    aput-object v2, v1, v3

    .line 276
    iput-object v1, p0, Llg;->x0:[Llg;

    .line 278
    iput-object v2, p0, Llg;->y0:Llg;

    .line 280
    iput-object v2, p0, Llg;->z0:Llg;

    .line 282
    iput v4, p0, Llg;->A0:I

    .line 284
    iput v4, p0, Llg;->B0:I

    .line 286
    invoke-virtual {p0}, Llg;->d()V

    .line 289
    return-void

    .line 290
    nop

    .line 291
    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 296
    nop

    .line 297
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Llg;->F:I

    .line 3
    return v0
.end method

.method public A0(IIIF)V
    .locals 0

    .line 1
    iput p1, p0, Llg;->p:I

    .line 3
    iput p2, p0, Llg;->s:I

    .line 5
    const p2, 0x7fffffff

    .line 8
    if-ne p3, p2, :cond_0

    .line 10
    const/4 p3, 0x0

    .line 11
    :cond_0
    iput p3, p0, Llg;->t:I

    .line 13
    iput p4, p0, Llg;->u:F

    .line 15
    const/4 p2, 0x0

    .line 16
    cmpl-float p2, p4, p2

    .line 18
    if-lez p2, :cond_1

    .line 20
    const/high16 p2, 0x3f800000    # 1.0f

    .line 22
    cmpg-float p2, p4, p2

    .line 24
    if-gez p2, :cond_1

    .line 26
    if-nez p1, :cond_1

    .line 28
    const/4 p1, 0x2

    .line 29
    iput p1, p0, Llg;->p:I

    .line 31
    :cond_1
    return-void
.end method

.method public B()I
    .locals 1

    .line 1
    iget v0, p0, Llg;->G:I

    .line 3
    return v0
.end method

.method public B0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->v0:[F

    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 6
    return-void
.end method

.method public C(I)I
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Llg;->R()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_1

    .line 11
    invoke-virtual {p0}, Llg;->v()I

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public C0(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Llg;->R:[Z

    .line 3
    aput-boolean p2, v0, p1

    .line 5
    return-void
.end method

.method public D()I
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->A:[I

    .line 3
    const/4 v1, 0x1

    .line 4
    aget v0, v0, v1

    .line 6
    return v0
.end method

.method public D0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Llg;->D:Z

    .line 3
    return-void
.end method

.method public E()I
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->A:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    .line 6
    return v0
.end method

.method public E0(II)V
    .locals 0

    .line 1
    iput p1, p0, Llg;->F:I

    .line 3
    iput p2, p0, Llg;->G:I

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Llg;->H0(Z)V

    .line 9
    return-void
.end method

.method public F()I
    .locals 1

    .line 1
    iget v0, p0, Llg;->g0:I

    .line 3
    return v0
.end method

.method public F0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->A:[I

    .line 3
    const/4 v1, 0x1

    .line 4
    aput p1, v0, v1

    .line 6
    return-void
.end method

.method public G()I
    .locals 1

    .line 1
    iget v0, p0, Llg;->f0:I

    .line 3
    return v0
.end method

.method public G0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->A:[I

    .line 3
    const/4 v1, 0x0

    .line 4
    aput p1, v0, v1

    .line 6
    return-void
.end method

.method public H(I)Llg;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Llg;->J:Lfg;

    .line 5
    iget-object v0, p1, Lfg;->f:Lfg;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v1, v0, Lfg;->f:Lfg;

    .line 11
    if-ne v1, p1, :cond_1

    .line 13
    iget-object p1, v0, Lfg;->d:Llg;

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 19
    iget-object p1, p0, Llg;->K:Lfg;

    .line 21
    iget-object v0, p1, Lfg;->f:Lfg;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v1, v0, Lfg;->f:Lfg;

    .line 27
    if-ne v1, p1, :cond_1

    .line 29
    iget-object p1, v0, Lfg;->d:Llg;

    .line 31
    return-object p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public H0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Llg;->i:Z

    .line 3
    return-void
.end method

.method public I()Llg;
    .locals 1

    .line 1
    iget-object v0, p0, Llg;->T:Llg;

    .line 3
    return-object v0
.end method

.method public I0(I)V
    .locals 0

    .line 1
    if-gez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Llg;->g0:I

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput p1, p0, Llg;->g0:I

    .line 9
    :goto_0
    return-void
.end method

.method public J(I)Llg;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Llg;->H:Lfg;

    .line 5
    iget-object v0, p1, Lfg;->f:Lfg;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v1, v0, Lfg;->f:Lfg;

    .line 11
    if-ne v1, p1, :cond_1

    .line 13
    iget-object p1, v0, Lfg;->d:Llg;

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    if-ne p1, v0, :cond_1

    .line 19
    iget-object p1, p0, Llg;->I:Lfg;

    .line 21
    iget-object v0, p1, Lfg;->f:Lfg;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v1, v0, Lfg;->f:Lfg;

    .line 27
    if-ne v1, p1, :cond_1

    .line 29
    iget-object p1, v0, Lfg;->d:Llg;

    .line 31
    return-object p1

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    return-object p1
.end method

.method public J0(I)V
    .locals 0

    .line 1
    if-gez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Llg;->f0:I

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iput p1, p0, Llg;->f0:I

    .line 9
    :goto_0
    return-void
.end method

.method public K()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Llg;->S()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Llg;->U:I

    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public K0(II)V
    .locals 0

    .line 1
    iput p1, p0, Llg;->Y:I

    .line 3
    iput p2, p0, Llg;->Z:I

    .line 5
    return-void
.end method

.method public L(I)Lkm0;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Llg;->e:Lqp;

    .line 5
    return-object p1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Llg;->f:Luk0;

    .line 11
    return-object p1

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public L0(Llg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llg;->T:Llg;

    .line 3
    return-void
.end method

.method public M()F
    .locals 1

    .line 1
    iget v0, p0, Llg;->i0:F

    .line 3
    return v0
.end method

.method public M0(F)V
    .locals 0

    .line 1
    iput p1, p0, Llg;->i0:F

    .line 3
    return-void
.end method

.method public N()I
    .locals 1

    .line 1
    iget v0, p0, Llg;->s0:I

    .line 3
    return v0
.end method

.method public N0(I)V
    .locals 0

    .line 1
    iput p1, p0, Llg;->s0:I

    .line 3
    return-void
.end method

.method public O()Llg$b;
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->S:[Llg$b;

    .line 3
    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    .line 6
    return-object v0
.end method

.method public O0(II)V
    .locals 0

    .line 1
    iput p1, p0, Llg;->Z:I

    .line 3
    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Llg;->V:I

    .line 6
    iget p1, p0, Llg;->g0:I

    .line 8
    if-ge p2, p1, :cond_0

    .line 10
    iput p1, p0, Llg;->V:I

    .line 12
    :cond_0
    return-void
.end method

.method public P()I
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->H:Lfg;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Llg;->I:Lfg;

    .line 8
    iget v0, v0, Lfg;->g:I

    .line 10
    add-int/2addr v1, v0

    .line 11
    :cond_0
    iget-object v0, p0, Llg;->J:Lfg;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Llg;->K:Lfg;

    .line 17
    iget v0, v0, Lfg;->g:I

    .line 19
    add-int/2addr v1, v0

    .line 20
    :cond_1
    return v1
.end method

.method public P0(Llg$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->S:[Llg$b;

    .line 3
    const/4 v1, 0x1

    .line 4
    aput-object p1, v0, v1

    .line 6
    return-void
.end method

.method public Q()I
    .locals 1

    .line 1
    iget v0, p0, Llg;->l0:I

    .line 3
    return v0
.end method

.method public Q0(IIIF)V
    .locals 0

    .line 1
    iput p1, p0, Llg;->q:I

    .line 3
    iput p2, p0, Llg;->v:I

    .line 5
    const p2, 0x7fffffff

    .line 8
    if-ne p3, p2, :cond_0

    .line 10
    const/4 p3, 0x0

    .line 11
    :cond_0
    iput p3, p0, Llg;->w:I

    .line 13
    iput p4, p0, Llg;->x:F

    .line 15
    const/4 p2, 0x0

    .line 16
    cmpl-float p2, p4, p2

    .line 18
    if-lez p2, :cond_1

    .line 20
    const/high16 p2, 0x3f800000    # 1.0f

    .line 22
    cmpg-float p2, p4, p2

    .line 24
    if-gez p2, :cond_1

    .line 26
    if-nez p1, :cond_1

    .line 28
    const/4 p1, 0x2

    .line 29
    iput p1, p0, Llg;->q:I

    .line 31
    :cond_1
    return-void
.end method

.method public R()I
    .locals 2

    .line 1
    iget v0, p0, Llg;->l0:I

    .line 3
    const/16 v1, 0x8

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget v0, p0, Llg;->U:I

    .line 11
    return v0
.end method

.method public R0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->v0:[F

    .line 3
    const/4 v1, 0x1

    .line 4
    aput p1, v0, v1

    .line 6
    return-void
.end method

.method public S()I
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->T:Llg;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    instance-of v1, v0, Lmg;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lmg;

    .line 11
    iget v0, v0, Lmg;->J0:I

    .line 13
    iget v1, p0, Llg;->Y:I

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0

    .line 17
    :cond_0
    iget v0, p0, Llg;->Y:I

    .line 19
    return v0
.end method

.method public S0(I)V
    .locals 0

    .line 1
    iput p1, p0, Llg;->l0:I

    .line 3
    return-void
.end method

.method public T()I
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->T:Llg;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    instance-of v1, v0, Lmg;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lmg;

    .line 11
    iget v0, v0, Lmg;->K0:I

    .line 13
    iget v1, p0, Llg;->Z:I

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0

    .line 17
    :cond_0
    iget v0, p0, Llg;->Z:I

    .line 19
    return v0
.end method

.method public T0(I)V
    .locals 1

    .line 1
    iput p1, p0, Llg;->U:I

    .line 3
    iget v0, p0, Llg;->f0:I

    .line 5
    if-ge p1, v0, :cond_0

    .line 7
    iput v0, p0, Llg;->U:I

    .line 9
    :cond_0
    return-void
.end method

.method public U()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llg;->C:Z

    .line 3
    return v0
.end method

.method public U0(I)V
    .locals 0

    .line 1
    iput p1, p0, Llg;->Y:I

    .line 3
    return-void
.end method

.method public V(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Llg;->H:Lfg;

    .line 8
    iget-object p1, p1, Lfg;->f:Lfg;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iget-object v3, p0, Llg;->J:Lfg;

    .line 17
    iget-object v3, v3, Lfg;->f:Lfg;

    .line 19
    if-eqz v3, :cond_1

    .line 21
    const/4 v3, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v3, 0x0

    .line 24
    :goto_1
    add-int/2addr p1, v3

    .line 25
    if-ge p1, v0, :cond_2

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    const/4 v1, 0x0

    .line 29
    :goto_2
    return v1

    .line 30
    :cond_3
    iget-object p1, p0, Llg;->I:Lfg;

    .line 32
    iget-object p1, p1, Lfg;->f:Lfg;

    .line 34
    if-eqz p1, :cond_4

    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_3

    .line 38
    :cond_4
    const/4 p1, 0x0

    .line 39
    :goto_3
    iget-object v3, p0, Llg;->K:Lfg;

    .line 41
    iget-object v3, v3, Lfg;->f:Lfg;

    .line 43
    if-eqz v3, :cond_5

    .line 45
    const/4 v3, 0x1

    .line 46
    goto :goto_4

    .line 47
    :cond_5
    const/4 v3, 0x0

    .line 48
    :goto_4
    add-int/2addr p1, v3

    .line 49
    iget-object v3, p0, Llg;->L:Lfg;

    .line 51
    iget-object v3, v3, Lfg;->f:Lfg;

    .line 53
    if-eqz v3, :cond_6

    .line 55
    const/4 v3, 0x1

    .line 56
    goto :goto_5

    .line 57
    :cond_6
    const/4 v3, 0x0

    .line 58
    :goto_5
    add-int/2addr p1, v3

    .line 59
    if-ge p1, v0, :cond_7

    .line 61
    goto :goto_6

    .line 62
    :cond_7
    const/4 v1, 0x0

    .line 63
    :goto_6
    return v1
.end method

.method public V0(I)V
    .locals 0

    .line 1
    iput p1, p0, Llg;->Z:I

    .line 3
    return-void
.end method

.method public W()Z
    .locals 4

    .line 1
    iget-object v0, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    iget-object v3, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lfg;

    .line 19
    invoke-virtual {v3}, Lfg;->l()Z

    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v1
.end method

.method public W0(ZZZZ)V
    .locals 3

    .line 1
    iget p1, p0, Llg;->y:I

    .line 3
    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne p1, v2, :cond_1

    .line 10
    if-eqz p3, :cond_0

    .line 12
    if-nez p4, :cond_0

    .line 14
    iput v0, p0, Llg;->y:I

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-nez p3, :cond_1

    .line 19
    if-eqz p4, :cond_1

    .line 21
    iput v1, p0, Llg;->y:I

    .line 23
    iget p1, p0, Llg;->X:I

    .line 25
    if-ne p1, v2, :cond_1

    .line 27
    iget p1, p0, Llg;->z:F

    .line 29
    div-float p1, p2, p1

    .line 31
    iput p1, p0, Llg;->z:F

    .line 33
    :cond_1
    :goto_0
    iget p1, p0, Llg;->y:I

    .line 35
    if-nez p1, :cond_3

    .line 37
    iget-object p1, p0, Llg;->I:Lfg;

    .line 39
    invoke-virtual {p1}, Lfg;->n()Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 45
    iget-object p1, p0, Llg;->K:Lfg;

    .line 47
    invoke-virtual {p1}, Lfg;->n()Z

    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_3

    .line 53
    :cond_2
    iput v1, p0, Llg;->y:I

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    iget p1, p0, Llg;->y:I

    .line 58
    if-ne p1, v1, :cond_5

    .line 60
    iget-object p1, p0, Llg;->H:Lfg;

    .line 62
    invoke-virtual {p1}, Lfg;->n()Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 68
    iget-object p1, p0, Llg;->J:Lfg;

    .line 70
    invoke-virtual {p1}, Lfg;->n()Z

    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_5

    .line 76
    :cond_4
    iput v0, p0, Llg;->y:I

    .line 78
    :cond_5
    :goto_1
    iget p1, p0, Llg;->y:I

    .line 80
    if-ne p1, v2, :cond_8

    .line 82
    iget-object p1, p0, Llg;->I:Lfg;

    .line 84
    invoke-virtual {p1}, Lfg;->n()Z

    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_6

    .line 90
    iget-object p1, p0, Llg;->K:Lfg;

    .line 92
    invoke-virtual {p1}, Lfg;->n()Z

    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_6

    .line 98
    iget-object p1, p0, Llg;->H:Lfg;

    .line 100
    invoke-virtual {p1}, Lfg;->n()Z

    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_6

    .line 106
    iget-object p1, p0, Llg;->J:Lfg;

    .line 108
    invoke-virtual {p1}, Lfg;->n()Z

    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_8

    .line 114
    :cond_6
    iget-object p1, p0, Llg;->I:Lfg;

    .line 116
    invoke-virtual {p1}, Lfg;->n()Z

    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_7

    .line 122
    iget-object p1, p0, Llg;->K:Lfg;

    .line 124
    invoke-virtual {p1}, Lfg;->n()Z

    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_7

    .line 130
    iput v0, p0, Llg;->y:I

    .line 132
    goto :goto_2

    .line 133
    :cond_7
    iget-object p1, p0, Llg;->H:Lfg;

    .line 135
    invoke-virtual {p1}, Lfg;->n()Z

    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_8

    .line 141
    iget-object p1, p0, Llg;->J:Lfg;

    .line 143
    invoke-virtual {p1}, Lfg;->n()Z

    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_8

    .line 149
    iget p1, p0, Llg;->z:F

    .line 151
    div-float p1, p2, p1

    .line 153
    iput p1, p0, Llg;->z:F

    .line 155
    iput v1, p0, Llg;->y:I

    .line 157
    :cond_8
    :goto_2
    iget p1, p0, Llg;->y:I

    .line 159
    if-ne p1, v2, :cond_a

    .line 161
    iget p1, p0, Llg;->s:I

    .line 163
    if-lez p1, :cond_9

    .line 165
    iget p3, p0, Llg;->v:I

    .line 167
    if-nez p3, :cond_9

    .line 169
    iput v0, p0, Llg;->y:I

    .line 171
    goto :goto_3

    .line 172
    :cond_9
    if-nez p1, :cond_a

    .line 174
    iget p1, p0, Llg;->v:I

    .line 176
    if-lez p1, :cond_a

    .line 178
    iget p1, p0, Llg;->z:F

    .line 180
    div-float/2addr p2, p1

    .line 181
    iput p2, p0, Llg;->z:F

    .line 183
    iput v1, p0, Llg;->y:I

    .line 185
    :cond_a
    :goto_3
    return-void
.end method

.method public X(Lfg$b;Llg;Lfg$b;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Llg;->m(Lfg$b;)Lfg;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2, p3}, Llg;->m(Lfg$b;)Lfg;

    .line 8
    move-result-object p2

    .line 9
    const/4 p3, 0x1

    .line 10
    invoke-virtual {p1, p2, p4, p5, p3}, Lfg;->a(Lfg;IIZ)Z

    .line 13
    return-void
.end method

.method public X0(ZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Llg;->e:Lqp;

    .line 3
    invoke-virtual {v0}, Lkm0;->k()Z

    .line 6
    move-result v0

    .line 7
    and-int/2addr p1, v0

    .line 8
    iget-object v0, p0, Llg;->f:Luk0;

    .line 10
    invoke-virtual {v0}, Lkm0;->k()Z

    .line 13
    move-result v0

    .line 14
    and-int/2addr p2, v0

    .line 15
    iget-object v0, p0, Llg;->e:Lqp;

    .line 17
    iget-object v1, v0, Lkm0;->h:Lli;

    .line 19
    iget v1, v1, Lli;->g:I

    .line 21
    iget-object v2, p0, Llg;->f:Luk0;

    .line 23
    iget-object v3, v2, Lkm0;->h:Lli;

    .line 25
    iget v3, v3, Lli;->g:I

    .line 27
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 29
    iget v0, v0, Lli;->g:I

    .line 31
    iget-object v2, v2, Lkm0;->i:Lli;

    .line 33
    iget v2, v2, Lli;->g:I

    .line 35
    sub-int v4, v0, v1

    .line 37
    sub-int v5, v2, v3

    .line 39
    const/4 v6, 0x0

    .line 40
    if-ltz v4, :cond_0

    .line 42
    if-ltz v5, :cond_0

    .line 44
    const/high16 v4, -0x80000000

    .line 46
    if-eq v1, v4, :cond_0

    .line 48
    const v5, 0x7fffffff

    .line 51
    if-eq v1, v5, :cond_0

    .line 53
    if-eq v3, v4, :cond_0

    .line 55
    if-eq v3, v5, :cond_0

    .line 57
    if-eq v0, v4, :cond_0

    .line 59
    if-eq v0, v5, :cond_0

    .line 61
    if-eq v2, v4, :cond_0

    .line 63
    if-ne v2, v5, :cond_1

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v2, 0x0

    .line 68
    const/4 v3, 0x0

    .line 69
    :cond_1
    sub-int/2addr v0, v1

    .line 70
    sub-int/2addr v2, v3

    .line 71
    if-eqz p1, :cond_2

    .line 73
    iput v1, p0, Llg;->Y:I

    .line 75
    :cond_2
    if-eqz p2, :cond_3

    .line 77
    iput v3, p0, Llg;->Z:I

    .line 79
    :cond_3
    iget v1, p0, Llg;->l0:I

    .line 81
    const/16 v3, 0x8

    .line 83
    if-ne v1, v3, :cond_4

    .line 85
    iput v6, p0, Llg;->U:I

    .line 87
    iput v6, p0, Llg;->V:I

    .line 89
    return-void

    .line 90
    :cond_4
    if-eqz p1, :cond_6

    .line 92
    iget-object p1, p0, Llg;->S:[Llg$b;

    .line 94
    aget-object p1, p1, v6

    .line 96
    sget-object v1, Llg$b;->a:Llg$b;

    .line 98
    if-ne p1, v1, :cond_5

    .line 100
    iget p1, p0, Llg;->U:I

    .line 102
    if-ge v0, p1, :cond_5

    .line 104
    move v0, p1

    .line 105
    :cond_5
    iput v0, p0, Llg;->U:I

    .line 107
    iget p1, p0, Llg;->f0:I

    .line 109
    if-ge v0, p1, :cond_6

    .line 111
    iput p1, p0, Llg;->U:I

    .line 113
    :cond_6
    if-eqz p2, :cond_8

    .line 115
    iget-object p1, p0, Llg;->S:[Llg$b;

    .line 117
    const/4 p2, 0x1

    .line 118
    aget-object p1, p1, p2

    .line 120
    sget-object p2, Llg$b;->a:Llg$b;

    .line 122
    if-ne p1, p2, :cond_7

    .line 124
    iget p1, p0, Llg;->V:I

    .line 126
    if-ge v2, p1, :cond_7

    .line 128
    move v2, p1

    .line 129
    :cond_7
    iput v2, p0, Llg;->V:I

    .line 131
    iget p1, p0, Llg;->g0:I

    .line 133
    if-ge v2, p1, :cond_8

    .line 135
    iput p1, p0, Llg;->V:I

    .line 137
    :cond_8
    return-void
.end method

.method public final Y(I)Z
    .locals 3

    .line 1
    mul-int/lit8 p1, p1, 0x2

    .line 3
    iget-object v0, p0, Llg;->P:[Lfg;

    .line 5
    aget-object v1, v0, p1

    .line 7
    iget-object v2, v1, Lfg;->f:Lfg;

    .line 9
    if-eqz v2, :cond_0

    .line 11
    iget-object v2, v2, Lfg;->f:Lfg;

    .line 13
    if-eq v2, v1, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 16
    add-int/2addr p1, v1

    .line 17
    aget-object p1, v0, p1

    .line 19
    iget-object v0, p1, Lfg;->f:Lfg;

    .line 21
    if-eqz v0, :cond_0

    .line 23
    iget-object v0, v0, Lfg;->f:Lfg;

    .line 25
    if-ne v0, p1, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1
.end method

.method public Y0(Lax;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Llg;->H:Lfg;

    .line 3
    invoke-virtual {p1, v0}, Lax;->x(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Llg;->I:Lfg;

    .line 9
    invoke-virtual {p1, v1}, Lax;->x(Ljava/lang/Object;)I

    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Llg;->J:Lfg;

    .line 15
    invoke-virtual {p1, v2}, Lax;->x(Ljava/lang/Object;)I

    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Llg;->K:Lfg;

    .line 21
    invoke-virtual {p1, v3}, Lax;->x(Ljava/lang/Object;)I

    .line 24
    move-result p1

    .line 25
    if-eqz p2, :cond_0

    .line 27
    iget-object v3, p0, Llg;->e:Lqp;

    .line 29
    if-eqz v3, :cond_0

    .line 31
    iget-object v4, v3, Lkm0;->h:Lli;

    .line 33
    iget-boolean v5, v4, Lli;->j:Z

    .line 35
    if-eqz v5, :cond_0

    .line 37
    iget-object v3, v3, Lkm0;->i:Lli;

    .line 39
    iget-boolean v5, v3, Lli;->j:Z

    .line 41
    if-eqz v5, :cond_0

    .line 43
    iget v0, v4, Lli;->g:I

    .line 45
    iget v2, v3, Lli;->g:I

    .line 47
    :cond_0
    if-eqz p2, :cond_1

    .line 49
    iget-object p2, p0, Llg;->f:Luk0;

    .line 51
    if-eqz p2, :cond_1

    .line 53
    iget-object v3, p2, Lkm0;->h:Lli;

    .line 55
    iget-boolean v4, v3, Lli;->j:Z

    .line 57
    if-eqz v4, :cond_1

    .line 59
    iget-object p2, p2, Lkm0;->i:Lli;

    .line 61
    iget-boolean v4, p2, Lli;->j:Z

    .line 63
    if-eqz v4, :cond_1

    .line 65
    iget v1, v3, Lli;->g:I

    .line 67
    iget p1, p2, Lli;->g:I

    .line 69
    :cond_1
    sub-int p2, v2, v0

    .line 71
    sub-int v3, p1, v1

    .line 73
    if-ltz p2, :cond_2

    .line 75
    if-ltz v3, :cond_2

    .line 77
    const/high16 p2, -0x80000000

    .line 79
    if-eq v0, p2, :cond_2

    .line 81
    const v3, 0x7fffffff

    .line 84
    if-eq v0, v3, :cond_2

    .line 86
    if-eq v1, p2, :cond_2

    .line 88
    if-eq v1, v3, :cond_2

    .line 90
    if-eq v2, p2, :cond_2

    .line 92
    if-eq v2, v3, :cond_2

    .line 94
    if-eq p1, p2, :cond_2

    .line 96
    if-ne p1, v3, :cond_3

    .line 98
    :cond_2
    const/4 v0, 0x0

    .line 99
    const/4 p1, 0x0

    .line 100
    const/4 v1, 0x0

    .line 101
    const/4 v2, 0x0

    .line 102
    :cond_3
    invoke-virtual {p0, v0, v1, v2, p1}, Llg;->t0(IIII)V

    .line 105
    return-void
.end method

.method public Z()Z
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->H:Lfg;

    .line 3
    iget-object v1, v0, Lfg;->f:Lfg;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v1, Lfg;->f:Lfg;

    .line 9
    if-eq v1, v0, :cond_1

    .line 11
    :cond_0
    iget-object v0, p0, Llg;->J:Lfg;

    .line 13
    iget-object v1, v0, Lfg;->f:Lfg;

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v1, v1, Lfg;->f:Lfg;

    .line 19
    if-ne v1, v0, :cond_2

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public a0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llg;->D:Z

    .line 3
    return v0
.end method

.method public b0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->I:Lfg;

    .line 3
    iget-object v1, v0, Lfg;->f:Lfg;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, v1, Lfg;->f:Lfg;

    .line 9
    if-eq v1, v0, :cond_1

    .line 11
    :cond_0
    iget-object v0, p0, Llg;->K:Lfg;

    .line 13
    iget-object v1, v0, Lfg;->f:Lfg;

    .line 15
    if-eqz v1, :cond_2

    .line 17
    iget-object v1, v1, Lfg;->f:Lfg;

    .line 19
    if-ne v1, v0, :cond_2

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    return v0

    .line 23
    :cond_2
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public c0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llg;->E:Z

    .line 3
    return v0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Llg;->H:Lfg;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 10
    iget-object v1, p0, Llg;->I:Lfg;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 17
    iget-object v1, p0, Llg;->J:Lfg;

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 24
    iget-object v1, p0, Llg;->K:Lfg;

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 31
    iget-object v1, p0, Llg;->M:Lfg;

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 38
    iget-object v1, p0, Llg;->N:Lfg;

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 45
    iget-object v1, p0, Llg;->O:Lfg;

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 52
    iget-object v1, p0, Llg;->L:Lfg;

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public d0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Llg;->i:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget v0, p0, Llg;->l0:I

    .line 7
    const/16 v1, 0x8

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public e(Lmg;Lax;Ljava/util/HashSet;IZ)V
    .locals 7

    .line 1
    if-eqz p5, :cond_1

    .line 3
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result p5

    .line 7
    if-nez p5, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p1, p2, p0}, Lc50;->a(Lmg;Lax;Llg;)V

    .line 13
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 16
    const/16 p5, 0x40

    .line 18
    invoke-virtual {p1, p5}, Lmg;->A1(I)Z

    .line 21
    move-result p5

    .line 22
    invoke-virtual {p0, p2, p5}, Llg;->g(Lax;Z)V

    .line 25
    :cond_1
    if-nez p4, :cond_3

    .line 27
    iget-object p5, p0, Llg;->H:Lfg;

    .line 29
    invoke-virtual {p5}, Lfg;->c()Ljava/util/HashSet;

    .line 32
    move-result-object p5

    .line 33
    if-eqz p5, :cond_2

    .line 35
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object p5

    .line 39
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 45
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lfg;

    .line 51
    iget-object v1, v0, Lfg;->d:Llg;

    .line 53
    const/4 v6, 0x1

    .line 54
    move-object v2, p1

    .line 55
    move-object v3, p2

    .line 56
    move-object v4, p3

    .line 57
    move v5, p4

    .line 58
    invoke-virtual/range {v1 .. v6}, Llg;->e(Lmg;Lax;Ljava/util/HashSet;IZ)V

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object p5, p0, Llg;->J:Lfg;

    .line 64
    invoke-virtual {p5}, Lfg;->c()Ljava/util/HashSet;

    .line 67
    move-result-object p5

    .line 68
    if-eqz p5, :cond_6

    .line 70
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 73
    move-result-object p5

    .line 74
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_6

    .line 80
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lfg;

    .line 86
    iget-object v1, v0, Lfg;->d:Llg;

    .line 88
    const/4 v6, 0x1

    .line 89
    move-object v2, p1

    .line 90
    move-object v3, p2

    .line 91
    move-object v4, p3

    .line 92
    move v5, p4

    .line 93
    invoke-virtual/range {v1 .. v6}, Llg;->e(Lmg;Lax;Ljava/util/HashSet;IZ)V

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    iget-object p5, p0, Llg;->I:Lfg;

    .line 99
    invoke-virtual {p5}, Lfg;->c()Ljava/util/HashSet;

    .line 102
    move-result-object p5

    .line 103
    if-eqz p5, :cond_4

    .line 105
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object p5

    .line 109
    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_4

    .line 115
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lfg;

    .line 121
    iget-object v1, v0, Lfg;->d:Llg;

    .line 123
    const/4 v6, 0x1

    .line 124
    move-object v2, p1

    .line 125
    move-object v3, p2

    .line 126
    move-object v4, p3

    .line 127
    move v5, p4

    .line 128
    invoke-virtual/range {v1 .. v6}, Llg;->e(Lmg;Lax;Ljava/util/HashSet;IZ)V

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    iget-object p5, p0, Llg;->K:Lfg;

    .line 134
    invoke-virtual {p5}, Lfg;->c()Ljava/util/HashSet;

    .line 137
    move-result-object p5

    .line 138
    if-eqz p5, :cond_5

    .line 140
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object p5

    .line 144
    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_5

    .line 150
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lfg;

    .line 156
    iget-object v1, v0, Lfg;->d:Llg;

    .line 158
    const/4 v6, 0x1

    .line 159
    move-object v2, p1

    .line 160
    move-object v3, p2

    .line 161
    move-object v4, p3

    .line 162
    move v5, p4

    .line 163
    invoke-virtual/range {v1 .. v6}, Llg;->e(Lmg;Lax;Ljava/util/HashSet;IZ)V

    .line 166
    goto :goto_3

    .line 167
    :cond_5
    iget-object p5, p0, Llg;->L:Lfg;

    .line 169
    invoke-virtual {p5}, Lfg;->c()Ljava/util/HashSet;

    .line 172
    move-result-object p5

    .line 173
    if-eqz p5, :cond_6

    .line 175
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 178
    move-result-object p5

    .line 179
    :goto_4
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_6

    .line 185
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Lfg;

    .line 191
    iget-object v1, v0, Lfg;->d:Llg;

    .line 193
    const/4 v6, 0x1

    .line 194
    move-object v2, p1

    .line 195
    move-object v3, p2

    .line 196
    move-object v4, p3

    .line 197
    move v5, p4

    .line 198
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Llg;->e(Lmg;Lax;Ljava/util/HashSet;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    goto :goto_4

    .line 202
    :catchall_0
    move-exception p1

    .line 203
    throw p1

    .line 204
    :cond_6
    return-void
.end method

.method public e0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llg;->l:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Llg;->H:Lfg;

    .line 7
    invoke-virtual {v0}, Lfg;->m()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Llg;->J:Lfg;

    .line 15
    invoke-virtual {v0}, Lfg;->m()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lro;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public f0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llg;->m:Z

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Llg;->I:Lfg;

    .line 7
    invoke-virtual {v0}, Lfg;->m()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Llg;->K:Lfg;

    .line 15
    invoke-virtual {v0}, Lfg;->m()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public g(Lax;Z)V
    .locals 53

    .line 1
    move-object/from16 v15, p0

    .line 3
    move-object/from16 v14, p1

    .line 5
    iget-object v0, v15, Llg;->H:Lfg;

    .line 7
    invoke-virtual {v14, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 10
    move-result-object v13

    .line 11
    iget-object v0, v15, Llg;->J:Lfg;

    .line 13
    invoke-virtual {v14, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 16
    move-result-object v12

    .line 17
    iget-object v0, v15, Llg;->I:Lfg;

    .line 19
    invoke-virtual {v14, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 22
    move-result-object v11

    .line 23
    iget-object v0, v15, Llg;->K:Lfg;

    .line 25
    invoke-virtual {v14, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 28
    move-result-object v10

    .line 29
    iget-object v0, v15, Llg;->L:Lfg;

    .line 31
    invoke-virtual {v14, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 34
    move-result-object v9

    .line 35
    iget-object v0, v15, Llg;->T:Llg;

    .line 37
    const/4 v8, 0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz v0, :cond_2

    .line 41
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, v0, Llg;->S:[Llg$b;

    .line 45
    aget-object v1, v1, v7

    .line 47
    sget-object v2, Llg$b;->b:Llg$b;

    .line 49
    if-ne v1, v2, :cond_0

    .line 51
    const/4 v1, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v1, 0x0

    .line 54
    :goto_0
    if-eqz v0, :cond_1

    .line 56
    iget-object v0, v0, Llg;->S:[Llg$b;

    .line 58
    aget-object v0, v0, v8

    .line 60
    sget-object v2, Llg$b;->b:Llg$b;

    .line 62
    if-ne v0, v2, :cond_1

    .line 64
    const/4 v0, 0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 v0, 0x0

    .line 67
    :goto_1
    move v6, v0

    .line 68
    move v5, v1

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    :goto_2
    iget v0, v15, Llg;->l0:I

    .line 74
    const/16 v4, 0x8

    .line 76
    if-ne v0, v4, :cond_3

    .line 78
    invoke-virtual/range {p0 .. p0}, Llg;->W()Z

    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_3

    .line 84
    iget-object v0, v15, Llg;->R:[Z

    .line 86
    aget-boolean v1, v0, v7

    .line 88
    if-nez v1, :cond_3

    .line 90
    aget-boolean v0, v0, v8

    .line 92
    if-nez v0, :cond_3

    .line 94
    return-void

    .line 95
    :cond_3
    iget-boolean v0, v15, Llg;->l:Z

    .line 97
    const/4 v3, 0x5

    .line 98
    if-nez v0, :cond_4

    .line 100
    iget-boolean v1, v15, Llg;->m:Z

    .line 102
    if-eqz v1, :cond_a

    .line 104
    :cond_4
    if-eqz v0, :cond_6

    .line 106
    iget v0, v15, Llg;->Y:I

    .line 108
    invoke-virtual {v14, v13, v0}, Lax;->f(Lle0;I)V

    .line 111
    iget v0, v15, Llg;->Y:I

    .line 113
    iget v1, v15, Llg;->U:I

    .line 115
    add-int/2addr v0, v1

    .line 116
    invoke-virtual {v14, v12, v0}, Lax;->f(Lle0;I)V

    .line 119
    if-eqz v5, :cond_6

    .line 121
    iget-object v0, v15, Llg;->T:Llg;

    .line 123
    if-eqz v0, :cond_6

    .line 125
    iget-boolean v1, v15, Llg;->k:Z

    .line 127
    if-eqz v1, :cond_5

    .line 129
    check-cast v0, Lmg;

    .line 131
    iget-object v1, v15, Llg;->H:Lfg;

    .line 133
    invoke-virtual {v0, v1}, Lmg;->m1(Lfg;)V

    .line 136
    iget-object v1, v15, Llg;->J:Lfg;

    .line 138
    invoke-virtual {v0, v1}, Lmg;->g1(Lfg;)V

    .line 141
    goto :goto_3

    .line 142
    :cond_5
    iget-object v0, v0, Llg;->J:Lfg;

    .line 144
    invoke-virtual {v14, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v14, v0, v12, v7, v3}, Lax;->h(Lle0;Lle0;II)V

    .line 151
    :cond_6
    :goto_3
    iget-boolean v0, v15, Llg;->m:Z

    .line 153
    if-eqz v0, :cond_9

    .line 155
    iget v0, v15, Llg;->Z:I

    .line 157
    invoke-virtual {v14, v11, v0}, Lax;->f(Lle0;I)V

    .line 160
    iget v0, v15, Llg;->Z:I

    .line 162
    iget v1, v15, Llg;->V:I

    .line 164
    add-int/2addr v0, v1

    .line 165
    invoke-virtual {v14, v10, v0}, Lax;->f(Lle0;I)V

    .line 168
    iget-object v0, v15, Llg;->L:Lfg;

    .line 170
    invoke-virtual {v0}, Lfg;->l()Z

    .line 173
    move-result v0

    .line 174
    if-eqz v0, :cond_7

    .line 176
    iget v0, v15, Llg;->Z:I

    .line 178
    iget v1, v15, Llg;->e0:I

    .line 180
    add-int/2addr v0, v1

    .line 181
    invoke-virtual {v14, v9, v0}, Lax;->f(Lle0;I)V

    .line 184
    :cond_7
    if-eqz v6, :cond_9

    .line 186
    iget-object v0, v15, Llg;->T:Llg;

    .line 188
    if-eqz v0, :cond_9

    .line 190
    iget-boolean v1, v15, Llg;->k:Z

    .line 192
    if-eqz v1, :cond_8

    .line 194
    check-cast v0, Lmg;

    .line 196
    iget-object v1, v15, Llg;->I:Lfg;

    .line 198
    invoke-virtual {v0, v1}, Lmg;->m1(Lfg;)V

    .line 201
    iget-object v1, v15, Llg;->K:Lfg;

    .line 203
    invoke-virtual {v0, v1}, Lmg;->l1(Lfg;)V

    .line 206
    goto :goto_4

    .line 207
    :cond_8
    iget-object v0, v0, Llg;->K:Lfg;

    .line 209
    invoke-virtual {v14, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v14, v0, v10, v7, v3}, Lax;->h(Lle0;Lle0;II)V

    .line 216
    :cond_9
    :goto_4
    iget-boolean v0, v15, Llg;->l:Z

    .line 218
    if-eqz v0, :cond_a

    .line 220
    iget-boolean v0, v15, Llg;->m:Z

    .line 222
    if-eqz v0, :cond_a

    .line 224
    iput-boolean v7, v15, Llg;->l:Z

    .line 226
    iput-boolean v7, v15, Llg;->m:Z

    .line 228
    return-void

    .line 229
    :cond_a
    sget-boolean v0, Lax;->r:Z

    .line 231
    if-eqz p2, :cond_d

    .line 233
    iget-object v0, v15, Llg;->e:Lqp;

    .line 235
    if-eqz v0, :cond_d

    .line 237
    iget-object v1, v15, Llg;->f:Luk0;

    .line 239
    if-eqz v1, :cond_d

    .line 241
    iget-object v2, v0, Lkm0;->h:Lli;

    .line 243
    iget-boolean v3, v2, Lli;->j:Z

    .line 245
    if-eqz v3, :cond_d

    .line 247
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 249
    iget-boolean v0, v0, Lli;->j:Z

    .line 251
    if-eqz v0, :cond_d

    .line 253
    iget-object v0, v1, Lkm0;->h:Lli;

    .line 255
    iget-boolean v0, v0, Lli;->j:Z

    .line 257
    if-eqz v0, :cond_d

    .line 259
    iget-object v0, v1, Lkm0;->i:Lli;

    .line 261
    iget-boolean v0, v0, Lli;->j:Z

    .line 263
    if-eqz v0, :cond_d

    .line 265
    iget v0, v2, Lli;->g:I

    .line 267
    invoke-virtual {v14, v13, v0}, Lax;->f(Lle0;I)V

    .line 270
    iget-object v0, v15, Llg;->e:Lqp;

    .line 272
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 274
    iget v0, v0, Lli;->g:I

    .line 276
    invoke-virtual {v14, v12, v0}, Lax;->f(Lle0;I)V

    .line 279
    iget-object v0, v15, Llg;->f:Luk0;

    .line 281
    iget-object v0, v0, Lkm0;->h:Lli;

    .line 283
    iget v0, v0, Lli;->g:I

    .line 285
    invoke-virtual {v14, v11, v0}, Lax;->f(Lle0;I)V

    .line 288
    iget-object v0, v15, Llg;->f:Luk0;

    .line 290
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 292
    iget v0, v0, Lli;->g:I

    .line 294
    invoke-virtual {v14, v10, v0}, Lax;->f(Lle0;I)V

    .line 297
    iget-object v0, v15, Llg;->f:Luk0;

    .line 299
    iget-object v0, v0, Luk0;->k:Lli;

    .line 301
    iget v0, v0, Lli;->g:I

    .line 303
    invoke-virtual {v14, v9, v0}, Lax;->f(Lle0;I)V

    .line 306
    iget-object v0, v15, Llg;->T:Llg;

    .line 308
    if-eqz v0, :cond_c

    .line 310
    if-eqz v5, :cond_b

    .line 312
    iget-object v0, v15, Llg;->g:[Z

    .line 314
    aget-boolean v0, v0, v7

    .line 316
    if-eqz v0, :cond_b

    .line 318
    invoke-virtual/range {p0 .. p0}, Llg;->Z()Z

    .line 321
    move-result v0

    .line 322
    if-nez v0, :cond_b

    .line 324
    iget-object v0, v15, Llg;->T:Llg;

    .line 326
    iget-object v0, v0, Llg;->J:Lfg;

    .line 328
    invoke-virtual {v14, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v14, v0, v12, v7, v4}, Lax;->h(Lle0;Lle0;II)V

    .line 335
    :cond_b
    if-eqz v6, :cond_c

    .line 337
    iget-object v0, v15, Llg;->g:[Z

    .line 339
    aget-boolean v0, v0, v8

    .line 341
    if-eqz v0, :cond_c

    .line 343
    invoke-virtual/range {p0 .. p0}, Llg;->b0()Z

    .line 346
    move-result v0

    .line 347
    if-nez v0, :cond_c

    .line 349
    iget-object v0, v15, Llg;->T:Llg;

    .line 351
    iget-object v0, v0, Llg;->K:Lfg;

    .line 353
    invoke-virtual {v14, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v14, v0, v10, v7, v4}, Lax;->h(Lle0;Lle0;II)V

    .line 360
    :cond_c
    iput-boolean v7, v15, Llg;->l:Z

    .line 362
    iput-boolean v7, v15, Llg;->m:Z

    .line 364
    return-void

    .line 365
    :cond_d
    iget-object v0, v15, Llg;->T:Llg;

    .line 367
    if-eqz v0, :cond_12

    .line 369
    invoke-virtual {v15, v7}, Llg;->Y(I)Z

    .line 372
    move-result v0

    .line 373
    if-eqz v0, :cond_e

    .line 375
    iget-object v0, v15, Llg;->T:Llg;

    .line 377
    check-cast v0, Lmg;

    .line 379
    invoke-virtual {v0, v15, v7}, Lmg;->d1(Llg;I)V

    .line 382
    const/4 v0, 0x1

    .line 383
    goto :goto_5

    .line 384
    :cond_e
    invoke-virtual/range {p0 .. p0}, Llg;->Z()Z

    .line 387
    move-result v0

    .line 388
    :goto_5
    invoke-virtual {v15, v8}, Llg;->Y(I)Z

    .line 391
    move-result v1

    .line 392
    if-eqz v1, :cond_f

    .line 394
    iget-object v1, v15, Llg;->T:Llg;

    .line 396
    check-cast v1, Lmg;

    .line 398
    invoke-virtual {v1, v15, v8}, Lmg;->d1(Llg;I)V

    .line 401
    const/4 v1, 0x1

    .line 402
    goto :goto_6

    .line 403
    :cond_f
    invoke-virtual/range {p0 .. p0}, Llg;->b0()Z

    .line 406
    move-result v1

    .line 407
    :goto_6
    if-nez v0, :cond_10

    .line 409
    if-eqz v5, :cond_10

    .line 411
    iget v2, v15, Llg;->l0:I

    .line 413
    if-eq v2, v4, :cond_10

    .line 415
    iget-object v2, v15, Llg;->H:Lfg;

    .line 417
    iget-object v2, v2, Lfg;->f:Lfg;

    .line 419
    if-nez v2, :cond_10

    .line 421
    iget-object v2, v15, Llg;->J:Lfg;

    .line 423
    iget-object v2, v2, Lfg;->f:Lfg;

    .line 425
    if-nez v2, :cond_10

    .line 427
    iget-object v2, v15, Llg;->T:Llg;

    .line 429
    iget-object v2, v2, Llg;->J:Lfg;

    .line 431
    invoke-virtual {v14, v2}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {v14, v2, v12, v7, v8}, Lax;->h(Lle0;Lle0;II)V

    .line 438
    :cond_10
    if-nez v1, :cond_11

    .line 440
    if-eqz v6, :cond_11

    .line 442
    iget v2, v15, Llg;->l0:I

    .line 444
    if-eq v2, v4, :cond_11

    .line 446
    iget-object v2, v15, Llg;->I:Lfg;

    .line 448
    iget-object v2, v2, Lfg;->f:Lfg;

    .line 450
    if-nez v2, :cond_11

    .line 452
    iget-object v2, v15, Llg;->K:Lfg;

    .line 454
    iget-object v2, v2, Lfg;->f:Lfg;

    .line 456
    if-nez v2, :cond_11

    .line 458
    iget-object v2, v15, Llg;->L:Lfg;

    .line 460
    if-nez v2, :cond_11

    .line 462
    iget-object v2, v15, Llg;->T:Llg;

    .line 464
    iget-object v2, v2, Llg;->K:Lfg;

    .line 466
    invoke-virtual {v14, v2}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 469
    move-result-object v2

    .line 470
    invoke-virtual {v14, v2, v10, v7, v8}, Lax;->h(Lle0;Lle0;II)V

    .line 473
    :cond_11
    move/from16 v29, v0

    .line 475
    move/from16 v28, v1

    .line 477
    goto :goto_7

    .line 478
    :cond_12
    const/16 v28, 0x0

    .line 480
    const/16 v29, 0x0

    .line 482
    :goto_7
    iget v0, v15, Llg;->U:I

    .line 484
    iget v1, v15, Llg;->f0:I

    .line 486
    if-ge v0, v1, :cond_13

    .line 488
    goto :goto_8

    .line 489
    :cond_13
    move v1, v0

    .line 490
    :goto_8
    iget v2, v15, Llg;->V:I

    .line 492
    iget v3, v15, Llg;->g0:I

    .line 494
    if-ge v2, v3, :cond_14

    .line 496
    goto :goto_9

    .line 497
    :cond_14
    move v3, v2

    .line 498
    :goto_9
    iget-object v4, v15, Llg;->S:[Llg$b;

    .line 500
    aget-object v8, v4, v7

    .line 502
    sget-object v7, Llg$b;->c:Llg$b;

    .line 504
    move/from16 v20, v1

    .line 506
    if-eq v8, v7, :cond_15

    .line 508
    const/4 v1, 0x1

    .line 509
    goto :goto_a

    .line 510
    :cond_15
    const/4 v1, 0x0

    .line 511
    :goto_a
    const/16 v18, 0x1

    .line 513
    aget-object v4, v4, v18

    .line 515
    move/from16 v21, v3

    .line 517
    move-object/from16 v22, v9

    .line 519
    if-eq v4, v7, :cond_16

    .line 521
    const/4 v3, 0x1

    .line 522
    goto :goto_b

    .line 523
    :cond_16
    const/4 v3, 0x0

    .line 524
    :goto_b
    iget v9, v15, Llg;->X:I

    .line 526
    iput v9, v15, Llg;->y:I

    .line 528
    move-object/from16 v23, v10

    .line 530
    iget v10, v15, Llg;->W:F

    .line 532
    iput v10, v15, Llg;->z:F

    .line 534
    move-object/from16 v27, v11

    .line 536
    iget v11, v15, Llg;->p:I

    .line 538
    move-object/from16 v30, v12

    .line 540
    iget v12, v15, Llg;->q:I

    .line 542
    const/16 v24, 0x0

    .line 544
    move-object/from16 v31, v13

    .line 546
    cmpl-float v24, v10, v24

    .line 548
    if-lez v24, :cond_1f

    .line 550
    iget v13, v15, Llg;->l0:I

    .line 552
    const/16 v14, 0x8

    .line 554
    if-eq v13, v14, :cond_1f

    .line 556
    const/4 v13, 0x3

    .line 557
    if-ne v8, v7, :cond_17

    .line 559
    if-nez v11, :cond_17

    .line 561
    const/4 v11, 0x3

    .line 562
    :cond_17
    if-ne v4, v7, :cond_18

    .line 564
    if-nez v12, :cond_18

    .line 566
    const/4 v12, 0x3

    .line 567
    :cond_18
    if-ne v8, v7, :cond_19

    .line 569
    if-ne v4, v7, :cond_19

    .line 571
    if-ne v11, v13, :cond_19

    .line 573
    if-ne v12, v13, :cond_19

    .line 575
    invoke-virtual {v15, v5, v6, v1, v3}, Llg;->W0(ZZZZ)V

    .line 578
    goto :goto_c

    .line 579
    :cond_19
    const/4 v1, 0x4

    .line 580
    if-ne v8, v7, :cond_1b

    .line 582
    if-ne v11, v13, :cond_1b

    .line 584
    const/4 v3, 0x0

    .line 585
    iput v3, v15, Llg;->y:I

    .line 587
    int-to-float v0, v2

    .line 588
    mul-float v10, v10, v0

    .line 590
    float-to-int v0, v10

    .line 591
    move v1, v0

    .line 592
    if-eq v4, v7, :cond_1a

    .line 594
    move/from16 v33, v12

    .line 596
    move/from16 v32, v21

    .line 598
    const/4 v14, 0x0

    .line 599
    const/16 v34, 0x4

    .line 601
    goto :goto_f

    .line 602
    :cond_1a
    move/from16 v34, v11

    .line 604
    move/from16 v33, v12

    .line 606
    goto :goto_d

    .line 607
    :cond_1b
    if-ne v4, v7, :cond_1e

    .line 609
    if-ne v12, v13, :cond_1e

    .line 611
    const/4 v2, 0x1

    .line 612
    iput v2, v15, Llg;->y:I

    .line 614
    const/4 v2, -0x1

    .line 615
    if-ne v9, v2, :cond_1c

    .line 617
    const/high16 v2, 0x3f800000    # 1.0f

    .line 619
    div-float/2addr v2, v10

    .line 620
    iput v2, v15, Llg;->z:F

    .line 622
    :cond_1c
    iget v2, v15, Llg;->z:F

    .line 624
    int-to-float v0, v0

    .line 625
    mul-float v2, v2, v0

    .line 627
    float-to-int v3, v2

    .line 628
    move/from16 v32, v3

    .line 630
    move/from16 v34, v11

    .line 632
    if-eq v8, v7, :cond_1d

    .line 634
    move/from16 v1, v20

    .line 636
    const/4 v14, 0x0

    .line 637
    const/16 v33, 0x4

    .line 639
    goto :goto_f

    .line 640
    :cond_1d
    move/from16 v33, v12

    .line 642
    move/from16 v1, v20

    .line 644
    goto :goto_e

    .line 645
    :cond_1e
    :goto_c
    move/from16 v34, v11

    .line 647
    move/from16 v33, v12

    .line 649
    move/from16 v1, v20

    .line 651
    :goto_d
    move/from16 v32, v21

    .line 653
    :goto_e
    const/4 v14, 0x1

    .line 654
    goto :goto_f

    .line 655
    :cond_1f
    move/from16 v34, v11

    .line 657
    move/from16 v33, v12

    .line 659
    move/from16 v1, v20

    .line 661
    move/from16 v32, v21

    .line 663
    const/4 v14, 0x0

    .line 664
    :goto_f
    iget-object v0, v15, Llg;->r:[I

    .line 666
    const/4 v2, 0x0

    .line 667
    aput v34, v0, v2

    .line 669
    const/4 v2, 0x1

    .line 670
    aput v33, v0, v2

    .line 672
    iput-boolean v14, v15, Llg;->h:Z

    .line 674
    if-eqz v14, :cond_21

    .line 676
    iget v0, v15, Llg;->y:I

    .line 678
    const/4 v2, -0x1

    .line 679
    if-eqz v0, :cond_20

    .line 681
    if-ne v0, v2, :cond_22

    .line 683
    :cond_20
    const/16 v20, 0x1

    .line 685
    goto :goto_10

    .line 686
    :cond_21
    const/4 v2, -0x1

    .line 687
    :cond_22
    const/16 v20, 0x0

    .line 689
    :goto_10
    if-eqz v14, :cond_24

    .line 691
    iget v0, v15, Llg;->y:I

    .line 693
    const/4 v3, 0x1

    .line 694
    if-eq v0, v3, :cond_23

    .line 696
    if-ne v0, v2, :cond_24

    .line 698
    :cond_23
    const/16 v35, 0x1

    .line 700
    goto :goto_11

    .line 701
    :cond_24
    const/16 v35, 0x0

    .line 703
    :goto_11
    iget-object v0, v15, Llg;->S:[Llg$b;

    .line 705
    const/4 v2, 0x0

    .line 706
    aget-object v0, v0, v2

    .line 708
    sget-object v13, Llg$b;->b:Llg$b;

    .line 710
    if-ne v0, v13, :cond_25

    .line 712
    instance-of v0, v15, Lmg;

    .line 714
    if-eqz v0, :cond_25

    .line 716
    const/4 v9, 0x1

    .line 717
    goto :goto_12

    .line 718
    :cond_25
    const/4 v9, 0x0

    .line 719
    :goto_12
    if-eqz v9, :cond_26

    .line 721
    const/16 v21, 0x0

    .line 723
    goto :goto_13

    .line 724
    :cond_26
    move/from16 v21, v1

    .line 726
    :goto_13
    iget-object v0, v15, Llg;->O:Lfg;

    .line 728
    invoke-virtual {v0}, Lfg;->n()Z

    .line 731
    move-result v0

    .line 732
    const/4 v1, 0x1

    .line 733
    xor-int/lit8 v36, v0, 0x1

    .line 735
    iget-object v0, v15, Llg;->R:[Z

    .line 737
    const/4 v2, 0x0

    .line 738
    aget-boolean v37, v0, v2

    .line 740
    aget-boolean v38, v0, v1

    .line 742
    iget v0, v15, Llg;->n:I

    .line 744
    const/4 v12, 0x2

    .line 745
    const/16 v39, 0x0

    .line 747
    if-eq v0, v12, :cond_2e

    .line 749
    iget-boolean v0, v15, Llg;->l:Z

    .line 751
    if-nez v0, :cond_2e

    .line 753
    if-eqz p2, :cond_2a

    .line 755
    iget-object v0, v15, Llg;->e:Lqp;

    .line 757
    if-eqz v0, :cond_2a

    .line 759
    iget-object v1, v0, Lkm0;->h:Lli;

    .line 761
    iget-boolean v2, v1, Lli;->j:Z

    .line 763
    if-eqz v2, :cond_2a

    .line 765
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 767
    iget-boolean v0, v0, Lli;->j:Z

    .line 769
    if-nez v0, :cond_27

    .line 771
    goto :goto_14

    .line 772
    :cond_27
    if-eqz p2, :cond_29

    .line 774
    iget v0, v1, Lli;->g:I

    .line 776
    move-object/from16 v11, p1

    .line 778
    move-object/from16 v10, v31

    .line 780
    invoke-virtual {v11, v10, v0}, Lax;->f(Lle0;I)V

    .line 783
    iget-object v0, v15, Llg;->e:Lqp;

    .line 785
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 787
    iget v0, v0, Lli;->g:I

    .line 789
    move-object/from16 v8, v30

    .line 791
    invoke-virtual {v11, v8, v0}, Lax;->f(Lle0;I)V

    .line 794
    iget-object v0, v15, Llg;->T:Llg;

    .line 796
    if-eqz v0, :cond_28

    .line 798
    if-eqz v5, :cond_28

    .line 800
    iget-object v0, v15, Llg;->g:[Z

    .line 802
    const/4 v1, 0x0

    .line 803
    aget-boolean v0, v0, v1

    .line 805
    if-eqz v0, :cond_28

    .line 807
    invoke-virtual/range {p0 .. p0}, Llg;->Z()Z

    .line 810
    move-result v0

    .line 811
    if-nez v0, :cond_28

    .line 813
    iget-object v0, v15, Llg;->T:Llg;

    .line 815
    iget-object v0, v0, Llg;->J:Lfg;

    .line 817
    invoke-virtual {v11, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 820
    move-result-object v0

    .line 821
    const/16 v4, 0x8

    .line 823
    invoke-virtual {v11, v0, v8, v1, v4}, Lax;->h(Lle0;Lle0;II)V

    .line 826
    :cond_28
    move/from16 v47, v5

    .line 828
    move/from16 v31, v6

    .line 830
    move-object/from16 v48, v7

    .line 832
    move-object/from16 v30, v8

    .line 834
    move-object/from16 v40, v10

    .line 836
    move-object/from16 v52, v13

    .line 838
    move/from16 v41, v14

    .line 840
    move-object/from16 v49, v22

    .line 842
    move-object/from16 v50, v23

    .line 844
    move-object/from16 v51, v27

    .line 846
    goto/16 :goto_19

    .line 848
    :cond_29
    move-object/from16 v11, p1

    .line 850
    goto/16 :goto_18

    .line 852
    :cond_2a
    :goto_14
    move-object/from16 v11, p1

    .line 854
    move-object/from16 v8, v30

    .line 856
    move-object/from16 v10, v31

    .line 858
    const/16 v4, 0x8

    .line 860
    iget-object v0, v15, Llg;->T:Llg;

    .line 862
    if-eqz v0, :cond_2b

    .line 864
    iget-object v0, v0, Llg;->J:Lfg;

    .line 866
    invoke-virtual {v11, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 869
    move-result-object v0

    .line 870
    move-object/from16 v17, v0

    .line 872
    goto :goto_15

    .line 873
    :cond_2b
    move-object/from16 v17, v39

    .line 875
    :goto_15
    iget-object v0, v15, Llg;->T:Llg;

    .line 877
    if-eqz v0, :cond_2c

    .line 879
    iget-object v0, v0, Llg;->H:Lfg;

    .line 881
    invoke-virtual {v11, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 884
    move-result-object v0

    .line 885
    move-object/from16 v30, v0

    .line 887
    goto :goto_16

    .line 888
    :cond_2c
    move-object/from16 v30, v39

    .line 890
    :goto_16
    iget-object v0, v15, Llg;->g:[Z

    .line 892
    const/16 v19, 0x0

    .line 894
    aget-boolean v31, v0, v19

    .line 896
    iget-object v0, v15, Llg;->S:[Llg$b;

    .line 898
    aget-object v40, v0, v19

    .line 900
    iget-object v3, v15, Llg;->H:Lfg;

    .line 902
    iget-object v1, v15, Llg;->J:Lfg;

    .line 904
    iget v12, v15, Llg;->Y:I

    .line 906
    iget v2, v15, Llg;->f0:I

    .line 908
    iget-object v4, v15, Llg;->A:[I

    .line 910
    aget v44, v4, v19

    .line 912
    iget v4, v15, Llg;->h0:F

    .line 914
    const/16 v18, 0x1

    .line 916
    aget-object v0, v0, v18

    .line 918
    if-ne v0, v7, :cond_2d

    .line 920
    const/16 v45, 0x1

    .line 922
    goto :goto_17

    .line 923
    :cond_2d
    const/16 v45, 0x0

    .line 925
    :goto_17
    iget v0, v15, Llg;->s:I

    .line 927
    move/from16 v24, v0

    .line 929
    iget v0, v15, Llg;->t:I

    .line 931
    move/from16 v25, v0

    .line 933
    iget v0, v15, Llg;->u:F

    .line 935
    move/from16 v26, v0

    .line 937
    move-object/from16 v0, p0

    .line 939
    move-object/from16 v46, v1

    .line 941
    move-object/from16 v1, p1

    .line 943
    move/from16 v42, v2

    .line 945
    const/4 v2, 0x1

    .line 946
    move-object/from16 v16, v3

    .line 948
    move v3, v5

    .line 949
    move/from16 v43, v4

    .line 951
    move v4, v6

    .line 952
    move/from16 v47, v5

    .line 954
    move/from16 v5, v31

    .line 956
    move/from16 v31, v6

    .line 958
    move-object/from16 v6, v30

    .line 960
    move-object/from16 v48, v7

    .line 962
    move-object/from16 v7, v17

    .line 964
    move-object/from16 v17, v8

    .line 966
    move-object/from16 v8, v40

    .line 968
    move-object/from16 v49, v22

    .line 970
    move-object/from16 v18, v10

    .line 972
    move-object/from16 v50, v23

    .line 974
    move-object/from16 v10, v16

    .line 976
    move-object/from16 v51, v27

    .line 978
    move-object/from16 v11, v46

    .line 980
    move-object/from16 v30, v17

    .line 982
    move-object/from16 v52, v13

    .line 984
    move-object/from16 v40, v18

    .line 986
    move/from16 v13, v21

    .line 988
    move/from16 v41, v14

    .line 990
    move/from16 v14, v42

    .line 992
    move/from16 v15, v44

    .line 994
    move/from16 v16, v43

    .line 996
    move/from16 v17, v20

    .line 998
    move/from16 v18, v45

    .line 1000
    move/from16 v19, v29

    .line 1002
    move/from16 v20, v28

    .line 1004
    move/from16 v21, v37

    .line 1006
    move/from16 v22, v34

    .line 1008
    move/from16 v23, v33

    .line 1010
    move/from16 v27, v36

    .line 1012
    invoke-virtual/range {v0 .. v27}, Llg;->i(Lax;ZZZZLle0;Lle0;Llg$b;ZLfg;Lfg;IIIIFZZZZZIIIIFZ)V

    .line 1015
    goto :goto_19

    .line 1016
    :cond_2e
    :goto_18
    move/from16 v47, v5

    .line 1018
    move-object/from16 v48, v7

    .line 1020
    move-object/from16 v52, v13

    .line 1022
    move/from16 v41, v14

    .line 1024
    move-object/from16 v49, v22

    .line 1026
    move-object/from16 v50, v23

    .line 1028
    move-object/from16 v51, v27

    .line 1030
    move-object/from16 v40, v31

    .line 1032
    move/from16 v31, v6

    .line 1034
    :goto_19
    if-eqz p2, :cond_32

    .line 1036
    move-object/from16 v15, p0

    .line 1038
    iget-object v0, v15, Llg;->f:Luk0;

    .line 1040
    if-eqz v0, :cond_31

    .line 1042
    iget-object v1, v0, Lkm0;->h:Lli;

    .line 1044
    iget-boolean v2, v1, Lli;->j:Z

    .line 1046
    if-eqz v2, :cond_31

    .line 1048
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 1050
    iget-boolean v0, v0, Lli;->j:Z

    .line 1052
    if-eqz v0, :cond_31

    .line 1054
    iget v0, v1, Lli;->g:I

    .line 1056
    move-object/from16 v14, p1

    .line 1058
    move-object/from16 v13, v51

    .line 1060
    invoke-virtual {v14, v13, v0}, Lax;->f(Lle0;I)V

    .line 1063
    iget-object v0, v15, Llg;->f:Luk0;

    .line 1065
    iget-object v0, v0, Lkm0;->i:Lli;

    .line 1067
    iget v0, v0, Lli;->g:I

    .line 1069
    move-object/from16 v12, v50

    .line 1071
    invoke-virtual {v14, v12, v0}, Lax;->f(Lle0;I)V

    .line 1074
    iget-object v0, v15, Llg;->f:Luk0;

    .line 1076
    iget-object v0, v0, Luk0;->k:Lli;

    .line 1078
    iget v0, v0, Lli;->g:I

    .line 1080
    move-object/from16 v1, v49

    .line 1082
    invoke-virtual {v14, v1, v0}, Lax;->f(Lle0;I)V

    .line 1085
    iget-object v0, v15, Llg;->T:Llg;

    .line 1087
    if-eqz v0, :cond_30

    .line 1089
    if-nez v28, :cond_30

    .line 1091
    if-eqz v31, :cond_30

    .line 1093
    iget-object v2, v15, Llg;->g:[Z

    .line 1095
    const/4 v11, 0x1

    .line 1096
    aget-boolean v2, v2, v11

    .line 1098
    if-eqz v2, :cond_2f

    .line 1100
    iget-object v0, v0, Llg;->K:Lfg;

    .line 1102
    invoke-virtual {v14, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 1105
    move-result-object v0

    .line 1106
    const/16 v2, 0x8

    .line 1108
    const/4 v10, 0x0

    .line 1109
    invoke-virtual {v14, v0, v12, v10, v2}, Lax;->h(Lle0;Lle0;II)V

    .line 1112
    goto :goto_1a

    .line 1113
    :cond_2f
    const/16 v2, 0x8

    .line 1115
    const/4 v10, 0x0

    .line 1116
    goto :goto_1a

    .line 1117
    :cond_30
    const/16 v2, 0x8

    .line 1119
    const/4 v10, 0x0

    .line 1120
    const/4 v11, 0x1

    .line 1121
    :goto_1a
    const/4 v8, 0x0

    .line 1122
    goto :goto_1c

    .line 1123
    :cond_31
    move-object/from16 v14, p1

    .line 1125
    move-object/from16 v1, v49

    .line 1127
    move-object/from16 v12, v50

    .line 1129
    move-object/from16 v13, v51

    .line 1131
    const/16 v2, 0x8

    .line 1133
    const/4 v10, 0x0

    .line 1134
    const/4 v11, 0x1

    .line 1135
    goto :goto_1b

    .line 1136
    :cond_32
    const/16 v2, 0x8

    .line 1138
    const/4 v10, 0x0

    .line 1139
    const/4 v11, 0x1

    .line 1140
    move-object/from16 v15, p0

    .line 1142
    move-object/from16 v14, p1

    .line 1144
    move-object/from16 v1, v49

    .line 1146
    move-object/from16 v12, v50

    .line 1148
    move-object/from16 v13, v51

    .line 1150
    :goto_1b
    const/4 v8, 0x1

    .line 1151
    :goto_1c
    iget v0, v15, Llg;->o:I

    .line 1153
    const/4 v3, 0x2

    .line 1154
    if-ne v0, v3, :cond_33

    .line 1156
    const/4 v7, 0x0

    .line 1157
    goto :goto_1d

    .line 1158
    :cond_33
    move v7, v8

    .line 1159
    :goto_1d
    if-eqz v7, :cond_3e

    .line 1161
    iget-boolean v0, v15, Llg;->m:Z

    .line 1163
    if-nez v0, :cond_3e

    .line 1165
    iget-object v0, v15, Llg;->S:[Llg$b;

    .line 1167
    aget-object v0, v0, v11

    .line 1169
    move-object/from16 v3, v52

    .line 1171
    if-ne v0, v3, :cond_34

    .line 1173
    instance-of v0, v15, Lmg;

    .line 1175
    if-eqz v0, :cond_34

    .line 1177
    const/4 v9, 0x1

    .line 1178
    goto :goto_1e

    .line 1179
    :cond_34
    const/4 v9, 0x0

    .line 1180
    :goto_1e
    if-eqz v9, :cond_35

    .line 1182
    const/16 v32, 0x0

    .line 1184
    :cond_35
    iget-object v0, v15, Llg;->T:Llg;

    .line 1186
    if-eqz v0, :cond_36

    .line 1188
    iget-object v0, v0, Llg;->K:Lfg;

    .line 1190
    invoke-virtual {v14, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 1193
    move-result-object v0

    .line 1194
    move-object v7, v0

    .line 1195
    goto :goto_1f

    .line 1196
    :cond_36
    move-object/from16 v7, v39

    .line 1198
    :goto_1f
    iget-object v0, v15, Llg;->T:Llg;

    .line 1200
    if-eqz v0, :cond_37

    .line 1202
    iget-object v0, v0, Llg;->I:Lfg;

    .line 1204
    invoke-virtual {v14, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 1207
    move-result-object v0

    .line 1208
    move-object v6, v0

    .line 1209
    goto :goto_20

    .line 1210
    :cond_37
    move-object/from16 v6, v39

    .line 1212
    :goto_20
    iget v0, v15, Llg;->e0:I

    .line 1214
    if-gtz v0, :cond_38

    .line 1216
    iget v0, v15, Llg;->l0:I

    .line 1218
    if-ne v0, v2, :cond_3c

    .line 1220
    :cond_38
    iget-object v0, v15, Llg;->L:Lfg;

    .line 1222
    iget-object v0, v0, Lfg;->f:Lfg;

    .line 1224
    if-eqz v0, :cond_3a

    .line 1226
    invoke-virtual/range {p0 .. p0}, Llg;->n()I

    .line 1229
    move-result v0

    .line 1230
    invoke-virtual {v14, v1, v13, v0, v2}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 1233
    iget-object v0, v15, Llg;->L:Lfg;

    .line 1235
    iget-object v0, v0, Lfg;->f:Lfg;

    .line 1237
    invoke-virtual {v14, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 1240
    move-result-object v0

    .line 1241
    invoke-virtual {v14, v1, v0, v10, v2}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 1244
    if-eqz v31, :cond_39

    .line 1246
    iget-object v0, v15, Llg;->K:Lfg;

    .line 1248
    invoke-virtual {v14, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 1251
    move-result-object v0

    .line 1252
    const/4 v1, 0x5

    .line 1253
    invoke-virtual {v14, v7, v0, v10, v1}, Lax;->h(Lle0;Lle0;II)V

    .line 1256
    :cond_39
    const/16 v27, 0x0

    .line 1258
    goto :goto_22

    .line 1259
    :cond_3a
    iget v0, v15, Llg;->l0:I

    .line 1261
    if-ne v0, v2, :cond_3b

    .line 1263
    invoke-virtual {v14, v1, v13, v10, v2}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 1266
    goto :goto_21

    .line 1267
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Llg;->n()I

    .line 1270
    move-result v0

    .line 1271
    invoke-virtual {v14, v1, v13, v0, v2}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 1274
    :cond_3c
    :goto_21
    move/from16 v27, v36

    .line 1276
    :goto_22
    iget-object v0, v15, Llg;->g:[Z

    .line 1278
    aget-boolean v5, v0, v11

    .line 1280
    iget-object v0, v15, Llg;->S:[Llg$b;

    .line 1282
    aget-object v8, v0, v11

    .line 1284
    iget-object v4, v15, Llg;->I:Lfg;

    .line 1286
    iget-object v3, v15, Llg;->K:Lfg;

    .line 1288
    iget v1, v15, Llg;->Z:I

    .line 1290
    iget v2, v15, Llg;->g0:I

    .line 1292
    iget-object v10, v15, Llg;->A:[I

    .line 1294
    aget v16, v10, v11

    .line 1296
    iget v10, v15, Llg;->i0:F

    .line 1298
    const/16 v17, 0x0

    .line 1300
    aget-object v0, v0, v17

    .line 1302
    move-object/from16 v11, v48

    .line 1304
    if-ne v0, v11, :cond_3d

    .line 1306
    const/16 v18, 0x1

    .line 1308
    goto :goto_23

    .line 1309
    :cond_3d
    const/16 v18, 0x0

    .line 1311
    :goto_23
    iget v0, v15, Llg;->v:I

    .line 1313
    move/from16 v24, v0

    .line 1315
    iget v0, v15, Llg;->w:I

    .line 1317
    move/from16 v25, v0

    .line 1319
    iget v0, v15, Llg;->x:F

    .line 1321
    move/from16 v26, v0

    .line 1323
    move-object/from16 v0, p0

    .line 1325
    move/from16 v19, v1

    .line 1327
    move-object/from16 v1, p1

    .line 1329
    move/from16 v20, v2

    .line 1331
    const/4 v2, 0x0

    .line 1332
    move-object v11, v3

    .line 1333
    move/from16 v3, v31

    .line 1335
    move-object/from16 v21, v4

    .line 1337
    move/from16 v4, v47

    .line 1339
    move/from16 v17, v10

    .line 1341
    move-object/from16 v10, v21

    .line 1343
    move-object/from16 v31, v12

    .line 1345
    move/from16 v12, v19

    .line 1347
    move-object/from16 v36, v13

    .line 1349
    move/from16 v13, v32

    .line 1351
    move/from16 v14, v20

    .line 1353
    move/from16 v15, v16

    .line 1355
    move/from16 v16, v17

    .line 1357
    move/from16 v17, v35

    .line 1359
    move/from16 v19, v28

    .line 1361
    move/from16 v20, v29

    .line 1363
    move/from16 v21, v38

    .line 1365
    move/from16 v22, v33

    .line 1367
    move/from16 v23, v34

    .line 1369
    invoke-virtual/range {v0 .. v27}, Llg;->i(Lax;ZZZZLle0;Lle0;Llg$b;ZLfg;Lfg;IIIIFZZZZZIIIIFZ)V

    .line 1372
    goto :goto_24

    .line 1373
    :cond_3e
    move-object/from16 v31, v12

    .line 1375
    move-object/from16 v36, v13

    .line 1377
    :goto_24
    if-eqz v41, :cond_40

    .line 1379
    const/16 v6, 0x8

    .line 1381
    move-object/from16 v7, p0

    .line 1383
    iget v0, v7, Llg;->y:I

    .line 1385
    const/4 v1, 0x1

    .line 1386
    if-ne v0, v1, :cond_3f

    .line 1388
    iget v5, v7, Llg;->z:F

    .line 1390
    move-object/from16 v0, p1

    .line 1392
    move-object/from16 v1, v31

    .line 1394
    move-object/from16 v2, v36

    .line 1396
    move-object/from16 v3, v30

    .line 1398
    move-object/from16 v4, v40

    .line 1400
    invoke-virtual/range {v0 .. v6}, Lax;->k(Lle0;Lle0;Lle0;Lle0;FI)V

    .line 1403
    goto :goto_25

    .line 1404
    :cond_3f
    iget v5, v7, Llg;->z:F

    .line 1406
    const/16 v6, 0x8

    .line 1408
    move-object/from16 v0, p1

    .line 1410
    move-object/from16 v1, v30

    .line 1412
    move-object/from16 v2, v40

    .line 1414
    move-object/from16 v3, v31

    .line 1416
    move-object/from16 v4, v36

    .line 1418
    invoke-virtual/range {v0 .. v6}, Lax;->k(Lle0;Lle0;Lle0;Lle0;FI)V

    .line 1421
    goto :goto_25

    .line 1422
    :cond_40
    move-object/from16 v7, p0

    .line 1424
    :goto_25
    iget-object v0, v7, Llg;->O:Lfg;

    .line 1426
    invoke-virtual {v0}, Lfg;->n()Z

    .line 1429
    move-result v0

    .line 1430
    if-eqz v0, :cond_41

    .line 1432
    iget-object v0, v7, Llg;->O:Lfg;

    .line 1434
    invoke-virtual {v0}, Lfg;->i()Lfg;

    .line 1437
    move-result-object v0

    .line 1438
    invoke-virtual {v0}, Lfg;->g()Llg;

    .line 1441
    move-result-object v0

    .line 1442
    iget v1, v7, Llg;->B:F

    .line 1444
    const/high16 v2, 0x42b40000    # 90.0f

    .line 1446
    add-float/2addr v1, v2

    .line 1447
    float-to-double v1, v1

    .line 1448
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 1451
    move-result-wide v1

    .line 1452
    double-to-float v1, v1

    .line 1453
    iget-object v2, v7, Llg;->O:Lfg;

    .line 1455
    invoke-virtual {v2}, Lfg;->e()I

    .line 1458
    move-result v2

    .line 1459
    move-object/from16 v3, p1

    .line 1461
    invoke-virtual {v3, v7, v0, v1, v2}, Lax;->b(Llg;Llg;FI)V

    .line 1464
    :cond_41
    const/4 v0, 0x0

    .line 1465
    iput-boolean v0, v7, Llg;->l:Z

    .line 1467
    iput-boolean v0, v7, Llg;->m:Z

    .line 1469
    return-void
.end method

.method public g0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Llg;->S:[Llg$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v2, v0, v1

    .line 6
    sget-object v3, Llg$b;->c:Llg$b;

    .line 8
    if-ne v2, v3, :cond_0

    .line 10
    const/4 v2, 0x1

    .line 11
    aget-object v0, v0, v2

    .line 13
    if-ne v0, v3, :cond_0

    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_0
    return v1
.end method

.method public h()Z
    .locals 2

    .line 1
    iget v0, p0, Llg;->l0:I

    .line 3
    const/16 v1, 0x8

    .line 5
    if-eq v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public h0()V
    .locals 6

    .line 1
    iget-object v0, p0, Llg;->H:Lfg;

    .line 3
    invoke-virtual {v0}, Lfg;->p()V

    .line 6
    iget-object v0, p0, Llg;->I:Lfg;

    .line 8
    invoke-virtual {v0}, Lfg;->p()V

    .line 11
    iget-object v0, p0, Llg;->J:Lfg;

    .line 13
    invoke-virtual {v0}, Lfg;->p()V

    .line 16
    iget-object v0, p0, Llg;->K:Lfg;

    .line 18
    invoke-virtual {v0}, Lfg;->p()V

    .line 21
    iget-object v0, p0, Llg;->L:Lfg;

    .line 23
    invoke-virtual {v0}, Lfg;->p()V

    .line 26
    iget-object v0, p0, Llg;->M:Lfg;

    .line 28
    invoke-virtual {v0}, Lfg;->p()V

    .line 31
    iget-object v0, p0, Llg;->N:Lfg;

    .line 33
    invoke-virtual {v0}, Lfg;->p()V

    .line 36
    iget-object v0, p0, Llg;->O:Lfg;

    .line 38
    invoke-virtual {v0}, Lfg;->p()V

    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Llg;->T:Llg;

    .line 44
    const/4 v1, 0x0

    .line 45
    iput v1, p0, Llg;->B:F

    .line 47
    const/4 v2, 0x0

    .line 48
    iput v2, p0, Llg;->U:I

    .line 50
    iput v2, p0, Llg;->V:I

    .line 52
    iput v1, p0, Llg;->W:F

    .line 54
    const/4 v1, -0x1

    .line 55
    iput v1, p0, Llg;->X:I

    .line 57
    iput v2, p0, Llg;->Y:I

    .line 59
    iput v2, p0, Llg;->Z:I

    .line 61
    iput v2, p0, Llg;->c0:I

    .line 63
    iput v2, p0, Llg;->d0:I

    .line 65
    iput v2, p0, Llg;->e0:I

    .line 67
    iput v2, p0, Llg;->f0:I

    .line 69
    iput v2, p0, Llg;->g0:I

    .line 71
    sget v3, Llg;->C0:F

    .line 73
    iput v3, p0, Llg;->h0:F

    .line 75
    iput v3, p0, Llg;->i0:F

    .line 77
    iget-object v3, p0, Llg;->S:[Llg$b;

    .line 79
    sget-object v4, Llg$b;->a:Llg$b;

    .line 81
    aput-object v4, v3, v2

    .line 83
    const/4 v5, 0x1

    .line 84
    aput-object v4, v3, v5

    .line 86
    iput-object v0, p0, Llg;->j0:Ljava/lang/Object;

    .line 88
    iput v2, p0, Llg;->k0:I

    .line 90
    iput v2, p0, Llg;->l0:I

    .line 92
    iput-object v0, p0, Llg;->n0:Ljava/lang/String;

    .line 94
    iput-boolean v2, p0, Llg;->o0:Z

    .line 96
    iput-boolean v2, p0, Llg;->p0:Z

    .line 98
    iput v2, p0, Llg;->r0:I

    .line 100
    iput v2, p0, Llg;->s0:I

    .line 102
    iput-boolean v2, p0, Llg;->t0:Z

    .line 104
    iput-boolean v2, p0, Llg;->u0:Z

    .line 106
    iget-object v0, p0, Llg;->v0:[F

    .line 108
    const/high16 v3, -0x40800000    # -1.0f

    .line 110
    aput v3, v0, v2

    .line 112
    aput v3, v0, v5

    .line 114
    iput v1, p0, Llg;->n:I

    .line 116
    iput v1, p0, Llg;->o:I

    .line 118
    iget-object v0, p0, Llg;->A:[I

    .line 120
    const v3, 0x7fffffff

    .line 123
    aput v3, v0, v2

    .line 125
    aput v3, v0, v5

    .line 127
    iput v2, p0, Llg;->p:I

    .line 129
    iput v2, p0, Llg;->q:I

    .line 131
    const/high16 v0, 0x3f800000    # 1.0f

    .line 133
    iput v0, p0, Llg;->u:F

    .line 135
    iput v0, p0, Llg;->x:F

    .line 137
    iput v3, p0, Llg;->t:I

    .line 139
    iput v3, p0, Llg;->w:I

    .line 141
    iput v2, p0, Llg;->s:I

    .line 143
    iput v2, p0, Llg;->v:I

    .line 145
    iput-boolean v2, p0, Llg;->h:Z

    .line 147
    iput v1, p0, Llg;->y:I

    .line 149
    iput v0, p0, Llg;->z:F

    .line 151
    iput-boolean v2, p0, Llg;->q0:Z

    .line 153
    iget-object v0, p0, Llg;->g:[Z

    .line 155
    aput-boolean v5, v0, v2

    .line 157
    aput-boolean v5, v0, v5

    .line 159
    iput-boolean v2, p0, Llg;->E:Z

    .line 161
    iget-object v0, p0, Llg;->R:[Z

    .line 163
    aput-boolean v2, v0, v2

    .line 165
    aput-boolean v2, v0, v5

    .line 167
    iput-boolean v5, p0, Llg;->i:Z

    .line 169
    return-void
.end method

.method public final i(Lax;ZZZZLle0;Lle0;Llg$b;ZLfg;Lfg;IIIIFZZZZZIIIIFZ)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    .line 1
    invoke-virtual {v10, v13}, Lax;->q(Ljava/lang/Object;)Lle0;

    move-result-object v9

    .line 2
    invoke-virtual {v10, v14}, Lax;->q(Ljava/lang/Object;)Lle0;

    move-result-object v8

    .line 3
    invoke-virtual/range {p10 .. p10}, Lfg;->i()Lfg;

    move-result-object v5

    invoke-virtual {v10, v5}, Lax;->q(Ljava/lang/Object;)Lle0;

    move-result-object v7

    .line 4
    invoke-virtual/range {p11 .. p11}, Lfg;->i()Lfg;

    move-result-object v5

    invoke-virtual {v10, v5}, Lax;->q(Ljava/lang/Object;)Lle0;

    move-result-object v6

    .line 5
    invoke-static {}, Lax;->w()Ll10;

    .line 6
    invoke-virtual/range {p10 .. p10}, Lfg;->n()Z

    move-result v16

    .line 7
    invoke-virtual/range {p11 .. p11}, Lfg;->n()Z

    move-result v17

    .line 8
    iget-object v5, v0, Llg;->O:Lfg;

    invoke-virtual {v5}, Lfg;->n()Z

    move-result v18

    if-eqz v17, :cond_0

    add-int/lit8 v5, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v5, v16

    :goto_0
    if-eqz v18, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    if-eqz p17, :cond_2

    const/16 v19, 0x3

    goto :goto_1

    :cond_2
    move/from16 v19, p22

    .line 9
    :goto_1
    sget-object v20, Llg$a;->b:[I

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v21

    aget v12, v20, v21

    const/4 v2, 0x1

    if-eq v12, v2, :cond_3

    const/4 v2, 0x2

    if-eq v12, v2, :cond_3

    const/4 v2, 0x3

    if-eq v12, v2, :cond_3

    const/4 v2, 0x4

    if-eq v12, v2, :cond_5

    :cond_3
    move/from16 v12, v19

    :cond_4
    const/16 v19, 0x0

    goto :goto_2

    :cond_5
    move/from16 v12, v19

    if-eq v12, v2, :cond_4

    const/16 v19, 0x1

    .line 10
    :goto_2
    iget v2, v0, Llg;->l0:I

    const/16 v14, 0x8

    if-ne v2, v14, :cond_6

    const/4 v2, 0x0

    const/16 v19, 0x0

    goto :goto_3

    :cond_6
    move/from16 v2, p13

    :goto_3
    if-eqz p27, :cond_8

    if-nez v16, :cond_7

    if-nez v17, :cond_7

    if-nez v18, :cond_7

    move/from16 v14, p12

    .line 11
    invoke-virtual {v10, v9, v14}, Lax;->f(Lle0;I)V

    goto :goto_4

    :cond_7
    if-eqz v16, :cond_8

    if-nez v17, :cond_8

    .line 12
    invoke-virtual/range {p10 .. p10}, Lfg;->e()I

    move-result v14

    move-object/from16 v23, v6

    const/16 v6, 0x8

    invoke-virtual {v10, v9, v7, v14, v6}, Lax;->e(Lle0;Lle0;II)Lb6;

    goto :goto_5

    :cond_8
    :goto_4
    move-object/from16 v23, v6

    const/16 v6, 0x8

    :goto_5
    if-nez v19, :cond_c

    if-eqz p9, :cond_a

    const/4 v6, 0x0

    const/4 v14, 0x3

    .line 13
    invoke-virtual {v10, v8, v9, v6, v14}, Lax;->e(Lle0;Lle0;II)Lb6;

    const/16 v6, 0x8

    if-lez v15, :cond_9

    .line 14
    invoke-virtual {v10, v8, v9, v15, v6}, Lax;->h(Lle0;Lle0;II)V

    :cond_9
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_b

    .line 15
    invoke-virtual {v10, v8, v9, v1, v6}, Lax;->j(Lle0;Lle0;II)V

    goto :goto_6

    .line 16
    :cond_a
    invoke-virtual {v10, v8, v9, v2, v6}, Lax;->e(Lle0;Lle0;II)Lb6;

    :cond_b
    :goto_6
    move/from16 v24, v3

    move v1, v4

    move-object v15, v7

    move-object v2, v8

    :goto_7
    move/from16 v25, v19

    move-object/from16 v14, v23

    move/from16 v19, p5

    :goto_8
    move/from16 v23, v5

    goto/16 :goto_11

    :cond_c
    const/4 v1, 0x2

    if-eq v5, v1, :cond_f

    if-nez p17, :cond_f

    const/4 v1, 0x1

    if-eq v12, v1, :cond_d

    if-nez v12, :cond_f

    .line 17
    :cond_d
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v4, :cond_e

    .line 18
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_e
    const/16 v2, 0x8

    .line 19
    invoke-virtual {v10, v8, v9, v1, v2}, Lax;->e(Lle0;Lle0;II)Lb6;

    move/from16 v19, p5

    move/from16 v24, v3

    move v1, v4

    move-object v15, v7

    move-object v2, v8

    move-object/from16 v14, v23

    const/16 v25, 0x0

    goto :goto_8

    :cond_f
    const/4 v1, -0x2

    if-ne v3, v1, :cond_10

    move v14, v2

    goto :goto_9

    :cond_10
    move v14, v3

    :goto_9
    if-ne v4, v1, :cond_11

    move v1, v2

    goto :goto_a

    :cond_11
    move v1, v4

    :goto_a
    if-lez v2, :cond_12

    const/4 v3, 0x1

    if-eq v12, v3, :cond_12

    const/4 v2, 0x0

    :cond_12
    if-lez v14, :cond_13

    const/16 v3, 0x8

    .line 20
    invoke-virtual {v10, v8, v9, v14, v3}, Lax;->h(Lle0;Lle0;II)V

    .line 21
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_13
    if-lez v1, :cond_16

    if-eqz p3, :cond_14

    const/4 v3, 0x1

    if-ne v12, v3, :cond_14

    const/4 v3, 0x0

    goto :goto_b

    :cond_14
    const/4 v3, 0x1

    :goto_b
    if-eqz v3, :cond_15

    const/16 v3, 0x8

    .line 22
    invoke-virtual {v10, v8, v9, v1, v3}, Lax;->j(Lle0;Lle0;II)V

    goto :goto_c

    :cond_15
    const/16 v3, 0x8

    .line 23
    :goto_c
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_d

    :cond_16
    const/16 v3, 0x8

    :goto_d
    const/4 v4, 0x1

    if-ne v12, v4, :cond_19

    if-eqz p3, :cond_17

    .line 24
    invoke-virtual {v10, v8, v9, v2, v3}, Lax;->e(Lle0;Lle0;II)Lb6;

    goto :goto_e

    :cond_17
    if-eqz p19, :cond_18

    const/4 v4, 0x5

    .line 25
    invoke-virtual {v10, v8, v9, v2, v4}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 26
    invoke-virtual {v10, v8, v9, v2, v3}, Lax;->j(Lle0;Lle0;II)V

    goto :goto_e

    :cond_18
    const/4 v4, 0x5

    .line 27
    invoke-virtual {v10, v8, v9, v2, v4}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 28
    invoke-virtual {v10, v8, v9, v2, v3}, Lax;->j(Lle0;Lle0;II)V

    :goto_e
    move-object v15, v7

    move-object v2, v8

    move/from16 v24, v14

    goto/16 :goto_7

    :cond_19
    const/4 v2, 0x2

    if-ne v12, v2, :cond_1c

    .line 29
    invoke-virtual/range {p10 .. p10}, Lfg;->j()Lfg$b;

    move-result-object v3

    sget-object v4, Lfg$b;->c:Lfg$b;

    if-eq v3, v4, :cond_1b

    invoke-virtual/range {p10 .. p10}, Lfg;->j()Lfg$b;

    move-result-object v3

    sget-object v6, Lfg$b;->e:Lfg$b;

    if-ne v3, v6, :cond_1a

    goto :goto_f

    .line 30
    :cond_1a
    iget-object v3, v0, Llg;->T:Llg;

    sget-object v4, Lfg$b;->b:Lfg$b;

    invoke-virtual {v3, v4}, Llg;->m(Lfg$b;)Lfg;

    move-result-object v3

    invoke-virtual {v10, v3}, Lax;->q(Ljava/lang/Object;)Lle0;

    move-result-object v3

    .line 31
    iget-object v4, v0, Llg;->T:Llg;

    sget-object v6, Lfg$b;->d:Lfg$b;

    invoke-virtual {v4, v6}, Llg;->m(Lfg$b;)Lfg;

    move-result-object v4

    invoke-virtual {v10, v4}, Lax;->q(Ljava/lang/Object;)Lle0;

    move-result-object v4

    goto :goto_10

    .line 32
    :cond_1b
    :goto_f
    iget-object v3, v0, Llg;->T:Llg;

    invoke-virtual {v3, v4}, Llg;->m(Lfg$b;)Lfg;

    move-result-object v3

    invoke-virtual {v10, v3}, Lax;->q(Ljava/lang/Object;)Lle0;

    move-result-object v3

    .line 33
    iget-object v4, v0, Llg;->T:Llg;

    sget-object v6, Lfg$b;->e:Lfg$b;

    invoke-virtual {v4, v6}, Llg;->m(Lfg$b;)Lfg;

    move-result-object v4

    invoke-virtual {v10, v4}, Lax;->q(Ljava/lang/Object;)Lle0;

    move-result-object v4

    :goto_10
    move-object/from16 v19, v3

    move-object v6, v4

    .line 34
    invoke-virtual/range {p1 .. p1}, Lax;->r()Lb6;

    move-result-object v3

    move-object v4, v8

    move v2, v5

    move-object v5, v9

    move/from16 p9, v14

    move-object/from16 v14, v23

    move-object v15, v7

    move-object/from16 v7, v19

    move/from16 v23, v2

    move-object v2, v8

    move/from16 v8, p26

    invoke-virtual/range {v3 .. v8}, Lb6;->k(Lle0;Lle0;Lle0;Lle0;F)Lb6;

    move-result-object v3

    invoke-virtual {v10, v3}, Lax;->d(Lb6;)V

    move/from16 v19, p5

    move/from16 v24, p9

    const/16 v25, 0x0

    goto :goto_11

    :cond_1c
    move-object v15, v7

    move-object v2, v8

    move/from16 p9, v14

    move-object/from16 v14, v23

    move/from16 v23, v5

    move/from16 v24, p9

    move/from16 v25, v19

    const/16 v19, 0x1

    :goto_11
    if-eqz p27, :cond_56

    if-eqz p19, :cond_1d

    move-object/from16 v3, p7

    move-object v4, v2

    move-object v13, v9

    move-object v1, v11

    move/from16 v5, v23

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/16 v30, 0x1

    goto/16 :goto_2f

    :cond_1d
    if-nez v16, :cond_1e

    if-nez v17, :cond_1e

    if-nez v18, :cond_1e

    goto/16 :goto_2c

    :cond_1e
    if-eqz v16, :cond_1f

    if-nez v17, :cond_1f

    goto/16 :goto_2c

    :cond_1f
    if-nez v16, :cond_22

    if-eqz v17, :cond_22

    .line 35
    invoke-virtual/range {p11 .. p11}, Lfg;->e()I

    move-result v1

    neg-int v1, v1

    const/16 v3, 0x8

    invoke-virtual {v10, v2, v14, v1, v3}, Lax;->e(Lle0;Lle0;II)Lb6;

    if-eqz p3, :cond_51

    .line 36
    iget-boolean v1, v0, Llg;->j:Z

    if-eqz v1, :cond_21

    iget-boolean v1, v9, Lle0;->g:Z

    if-eqz v1, :cond_21

    iget-object v1, v0, Llg;->T:Llg;

    if-eqz v1, :cond_21

    .line 37
    check-cast v1, Lmg;

    if-eqz p2, :cond_20

    .line 38
    invoke-virtual {v1, v13}, Lmg;->h1(Lfg;)V

    goto/16 :goto_2c

    .line 39
    :cond_20
    invoke-virtual {v1, v13}, Lmg;->m1(Lfg;)V

    goto/16 :goto_2c

    :cond_21
    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v10, v9, v11, v3, v1}, Lax;->h(Lle0;Lle0;II)V

    goto/16 :goto_2c

    :cond_22
    const/4 v3, 0x0

    if-eqz v16, :cond_51

    if-eqz v17, :cond_51

    .line 41
    iget-object v4, v13, Lfg;->f:Lfg;

    iget-object v8, v4, Lfg;->d:Llg;

    move-object/from16 v6, p11

    const/4 v7, 0x0

    .line 42
    iget-object v3, v6, Lfg;->f:Lfg;

    iget-object v5, v3, Lfg;->d:Llg;

    .line 43
    invoke-virtual/range {p0 .. p0}, Llg;->I()Llg;

    move-result-object v4

    const/16 v16, 0x6

    if-eqz v25, :cond_35

    if-nez v12, :cond_27

    if-nez v1, :cond_24

    if-nez v24, :cond_24

    .line 44
    iget-boolean v1, v15, Lle0;->g:Z

    if-eqz v1, :cond_23

    iget-boolean v1, v14, Lle0;->g:Z

    if-eqz v1, :cond_23

    .line 45
    invoke-virtual/range {p10 .. p10}, Lfg;->e()I

    move-result v1

    const/16 v3, 0x8

    invoke-virtual {v10, v9, v15, v1, v3}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 46
    invoke-virtual/range {p11 .. p11}, Lfg;->e()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v2, v14, v1, v3}, Lax;->e(Lle0;Lle0;II)Lb6;

    return-void

    :cond_23
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x8

    const/16 v21, 0x8

    goto :goto_12

    :cond_24
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x5

    const/16 v21, 0x5

    .line 47
    :goto_12
    instance-of v7, v8, Lwb;

    if-nez v7, :cond_26

    instance-of v7, v5, Lwb;

    if-eqz v7, :cond_25

    goto :goto_13

    :cond_25
    move/from16 v20, v17

    move/from16 v23, v18

    move/from16 v22, v21

    const/4 v7, 0x1

    const/16 v21, 0x6

    goto :goto_14

    :cond_26
    :goto_13
    move/from16 v20, v17

    move/from16 v23, v18

    const/4 v7, 0x1

    const/16 v21, 0x6

    const/16 v22, 0x4

    :goto_14
    move/from16 v17, v1

    move/from16 v18, v3

    const/4 v1, 0x3

    :goto_15
    move-object/from16 v3, p7

    goto/16 :goto_20

    :cond_27
    const/4 v3, 0x1

    if-ne v12, v3, :cond_28

    move-object/from16 v3, p7

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x6

    const/16 v22, 0x4

    :goto_16
    const/16 v23, 0x8

    goto/16 :goto_20

    :cond_28
    const/4 v3, 0x3

    if-ne v12, v3, :cond_34

    .line 48
    iget v7, v0, Llg;->y:I

    const/4 v3, -0x1

    if-ne v7, v3, :cond_2b

    if-eqz p20, :cond_2a

    move-object/from16 v3, p7

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v20, 0x1

    if-eqz p3, :cond_29

    const/16 v21, 0x5

    goto :goto_17

    :cond_29
    const/16 v21, 0x4

    goto :goto_17

    :cond_2a
    move-object/from16 v3, p7

    const/4 v1, 0x3

    const/4 v7, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x8

    :goto_17
    const/16 v22, 0x5

    goto :goto_16

    :cond_2b
    if-eqz p17, :cond_2f

    move/from16 v3, p23

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2d

    const/4 v7, 0x1

    if-ne v3, v7, :cond_2c

    goto :goto_18

    :cond_2c
    const/4 v1, 0x0

    goto :goto_19

    :cond_2d
    const/4 v7, 0x1

    :goto_18
    const/4 v1, 0x1

    :goto_19
    if-nez v1, :cond_2e

    const/16 v1, 0x8

    const/4 v3, 0x5

    goto :goto_1a

    :cond_2e
    const/4 v1, 0x5

    const/4 v3, 0x4

    :goto_1a
    move/from16 v23, v1

    move/from16 v22, v3

    const/4 v1, 0x3

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x6

    goto :goto_15

    :cond_2f
    const/4 v7, 0x1

    if-lez v1, :cond_30

    move-object/from16 v3, p7

    const/4 v1, 0x3

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x6

    const/16 v22, 0x5

    goto/16 :goto_1f

    :cond_30
    if-nez v1, :cond_33

    if-nez v24, :cond_33

    if-nez p20, :cond_31

    move-object/from16 v3, p7

    const/4 v1, 0x3

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x6

    const/16 v22, 0x8

    goto/16 :goto_1f

    :cond_31
    if-eq v8, v4, :cond_32

    if-eq v5, v4, :cond_32

    const/4 v1, 0x4

    goto :goto_1b

    :cond_32
    const/4 v1, 0x5

    :goto_1b
    move-object/from16 v3, p7

    move/from16 v23, v1

    const/4 v1, 0x3

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x6

    const/16 v22, 0x4

    goto/16 :goto_20

    :cond_33
    move-object/from16 v3, p7

    const/4 v1, 0x3

    const/16 v17, 0x1

    const/16 v18, 0x1

    goto :goto_1d

    :cond_34
    const/4 v7, 0x1

    move-object/from16 v3, p7

    const/4 v1, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    goto :goto_1e

    :cond_35
    const/4 v7, 0x1

    .line 49
    iget-boolean v1, v15, Lle0;->g:Z

    if-eqz v1, :cond_38

    iget-boolean v1, v14, Lle0;->g:Z

    if-eqz v1, :cond_38

    .line 50
    invoke-virtual/range {p10 .. p10}, Lfg;->e()I

    move-result v1

    .line 51
    invoke-virtual/range {p11 .. p11}, Lfg;->e()I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v15

    move/from16 p20, v1

    move/from16 p21, p16

    move-object/from16 p22, v14

    move-object/from16 p23, v2

    move/from16 p24, v3

    move/from16 p25, v4

    .line 52
    invoke-virtual/range {p17 .. p25}, Lax;->c(Lle0;Lle0;IFLle0;Lle0;II)V

    if-eqz p3, :cond_37

    if-eqz v19, :cond_37

    .line 53
    iget-object v1, v6, Lfg;->f:Lfg;

    if-eqz v1, :cond_36

    .line 54
    invoke-virtual/range {p11 .. p11}, Lfg;->e()I

    move-result v1

    move-object/from16 v3, p7

    goto :goto_1c

    :cond_36
    move-object/from16 v3, p7

    const/4 v1, 0x0

    :goto_1c
    if-eq v14, v3, :cond_37

    const/4 v4, 0x5

    .line 55
    invoke-virtual {v10, v3, v2, v1, v4}, Lax;->h(Lle0;Lle0;II)V

    :cond_37
    return-void

    :cond_38
    move-object/from16 v3, p7

    const/4 v1, 0x3

    const/16 v17, 0x1

    const/16 v18, 0x0

    :goto_1d
    const/16 v20, 0x1

    :goto_1e
    const/16 v21, 0x6

    const/16 v22, 0x4

    :goto_1f
    const/16 v23, 0x5

    :goto_20
    if-eqz v20, :cond_39

    if-ne v15, v14, :cond_39

    if-eq v8, v4, :cond_39

    const/16 v20, 0x0

    const/16 v26, 0x0

    goto :goto_21

    :cond_39
    const/16 v26, 0x1

    :goto_21
    if-eqz v17, :cond_3b

    if-nez v25, :cond_3a

    if-nez p18, :cond_3a

    if-nez p20, :cond_3a

    if-ne v15, v11, :cond_3a

    if-ne v14, v3, :cond_3a

    const/16 v17, 0x0

    const/16 v21, 0x8

    const/16 v23, 0x8

    const/16 v26, 0x0

    goto :goto_22

    :cond_3a
    move/from16 v17, p3

    .line 56
    :goto_22
    invoke-virtual/range {p10 .. p10}, Lfg;->e()I

    move-result v27

    .line 57
    invoke-virtual/range {p11 .. p11}, Lfg;->e()I

    move-result v28

    const/4 v13, 0x3

    move-object/from16 v1, p1

    move-object/from16 p8, v2

    const/16 v29, 0x4

    const/16 v30, 0x1

    move-object v2, v9

    move-object v7, v3

    move-object v3, v15

    move-object v13, v4

    move/from16 v4, v27

    move/from16 v27, v12

    move-object v12, v5

    move/from16 v5, p16

    move-object v6, v14

    move-object/from16 v7, p8

    move-object v11, v8

    move/from16 v8, v28

    move-object/from16 v28, v13

    move-object v13, v9

    move/from16 v9, v21

    .line 58
    invoke-virtual/range {v1 .. v9}, Lax;->c(Lle0;Lle0;IFLle0;Lle0;II)V

    goto :goto_23

    :cond_3b
    move-object/from16 p8, v2

    move-object/from16 v28, v4

    move-object v11, v8

    move-object v13, v9

    move/from16 v27, v12

    const/16 v29, 0x4

    const/16 v30, 0x1

    move-object v12, v5

    move/from16 v17, p3

    :goto_23
    move/from16 v2, v26

    .line 59
    iget v1, v0, Llg;->l0:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3c

    invoke-virtual/range {p11 .. p11}, Lfg;->l()Z

    move-result v1

    if-nez v1, :cond_3c

    return-void

    :cond_3c
    if-eqz v20, :cond_3f

    if-eqz v17, :cond_3e

    if-eq v15, v14, :cond_3e

    if-nez v25, :cond_3e

    .line 60
    instance-of v1, v11, Lwb;

    if-nez v1, :cond_3d

    instance-of v1, v12, Lwb;

    if-eqz v1, :cond_3e

    :cond_3d
    const/4 v1, 0x6

    goto :goto_24

    :cond_3e
    move/from16 v1, v23

    .line 61
    :goto_24
    invoke-virtual/range {p10 .. p10}, Lfg;->e()I

    move-result v3

    invoke-virtual {v10, v13, v15, v3, v1}, Lax;->h(Lle0;Lle0;II)V

    .line 62
    invoke-virtual/range {p11 .. p11}, Lfg;->e()I

    move-result v3

    neg-int v3, v3

    move-object/from16 v4, p8

    invoke-virtual {v10, v4, v14, v3, v1}, Lax;->j(Lle0;Lle0;II)V

    move/from16 v23, v1

    goto :goto_25

    :cond_3f
    move-object/from16 v4, p8

    :goto_25
    if-eqz v17, :cond_40

    if-eqz p21, :cond_40

    .line 63
    instance-of v1, v11, Lwb;

    if-nez v1, :cond_40

    instance-of v1, v12, Lwb;

    if-nez v1, :cond_40

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x6

    goto :goto_26

    :cond_40
    move/from16 v1, v22

    move/from16 v3, v23

    :goto_26
    if-eqz v2, :cond_4c

    if-eqz v18, :cond_49

    if-eqz p20, :cond_41

    if-eqz p4, :cond_49

    :cond_41
    move-object/from16 v2, v28

    if-eq v11, v2, :cond_43

    if-ne v12, v2, :cond_42

    goto :goto_27

    :cond_42
    move/from16 v16, v1

    .line 64
    :cond_43
    :goto_27
    instance-of v5, v11, Lro;

    if-nez v5, :cond_44

    instance-of v5, v12, Lro;

    if-eqz v5, :cond_45

    :cond_44
    const/16 v16, 0x5

    .line 65
    :cond_45
    instance-of v5, v11, Lwb;

    if-nez v5, :cond_46

    instance-of v5, v12, Lwb;

    if-eqz v5, :cond_47

    :cond_46
    const/16 v16, 0x5

    :cond_47
    if-eqz p20, :cond_48

    const/4 v5, 0x5

    goto :goto_28

    :cond_48
    move/from16 v5, v16

    .line 66
    :goto_28
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_29

    :cond_49
    move-object/from16 v2, v28

    :goto_29
    if-eqz v17, :cond_4b

    .line 67
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p17, :cond_4b

    if-nez p20, :cond_4b

    if-eq v11, v2, :cond_4a

    if-ne v12, v2, :cond_4b

    :cond_4a
    const/4 v2, 0x4

    goto :goto_2a

    :cond_4b
    move v2, v1

    .line 68
    :goto_2a
    invoke-virtual/range {p10 .. p10}, Lfg;->e()I

    move-result v1

    invoke-virtual {v10, v13, v15, v1, v2}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 69
    invoke-virtual/range {p11 .. p11}, Lfg;->e()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v4, v14, v1, v2}, Lax;->e(Lle0;Lle0;II)Lb6;

    :cond_4c
    if-eqz v17, :cond_4e

    move-object/from16 v1, p6

    if-ne v1, v15, :cond_4d

    .line 70
    invoke-virtual/range {p10 .. p10}, Lfg;->e()I

    move-result v2

    goto :goto_2b

    :cond_4d
    const/4 v2, 0x0

    :goto_2b
    if-eq v15, v1, :cond_4e

    const/4 v3, 0x5

    .line 71
    invoke-virtual {v10, v13, v1, v2, v3}, Lax;->h(Lle0;Lle0;II)V

    :cond_4e
    if-eqz v17, :cond_50

    if-eqz v25, :cond_50

    if-nez p14, :cond_50

    if-nez v24, :cond_50

    if-eqz v25, :cond_4f

    move/from16 v12, v27

    const/4 v1, 0x3

    if-ne v12, v1, :cond_4f

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v10, v4, v13, v2, v1}, Lax;->h(Lle0;Lle0;II)V

    goto :goto_2d

    :cond_4f
    const/4 v2, 0x0

    const/4 v1, 0x5

    .line 73
    invoke-virtual {v10, v4, v13, v2, v1}, Lax;->h(Lle0;Lle0;II)V

    goto :goto_2d

    :cond_50
    const/4 v2, 0x0

    goto :goto_2d

    :cond_51
    :goto_2c
    move-object v4, v2

    const/4 v2, 0x0

    move/from16 v17, p3

    :goto_2d
    if-eqz v17, :cond_55

    if-eqz v19, :cond_55

    move-object/from16 v1, p11

    .line 74
    iget-object v3, v1, Lfg;->f:Lfg;

    if-eqz v3, :cond_52

    .line 75
    invoke-virtual/range {p11 .. p11}, Lfg;->e()I

    move-result v2

    :cond_52
    move-object/from16 v3, p7

    if-eq v14, v3, :cond_55

    .line 76
    iget-boolean v5, v0, Llg;->j:Z

    if-eqz v5, :cond_54

    iget-boolean v5, v4, Lle0;->g:Z

    if-eqz v5, :cond_54

    iget-object v5, v0, Llg;->T:Llg;

    if-eqz v5, :cond_54

    .line 77
    check-cast v5, Lmg;

    if-eqz p2, :cond_53

    .line 78
    invoke-virtual {v5, v1}, Lmg;->g1(Lfg;)V

    goto :goto_2e

    .line 79
    :cond_53
    invoke-virtual {v5, v1}, Lmg;->l1(Lfg;)V

    :goto_2e
    return-void

    :cond_54
    const/4 v1, 0x5

    .line 80
    invoke-virtual {v10, v3, v4, v2, v1}, Lax;->h(Lle0;Lle0;II)V

    :cond_55
    return-void

    :cond_56
    move-object/from16 v3, p7

    move-object v4, v2

    move-object v13, v9

    move-object v1, v11

    const/4 v2, 0x0

    const/4 v7, 0x2

    const/16 v30, 0x1

    move/from16 v5, v23

    :goto_2f
    if-ge v5, v7, :cond_5b

    if-eqz p3, :cond_5b

    if-eqz v19, :cond_5b

    const/16 v5, 0x8

    .line 81
    invoke-virtual {v10, v13, v1, v2, v5}, Lax;->h(Lle0;Lle0;II)V

    if-nez p2, :cond_58

    .line 82
    iget-object v1, v0, Llg;->L:Lfg;

    iget-object v1, v1, Lfg;->f:Lfg;

    if-nez v1, :cond_57

    goto :goto_30

    :cond_57
    const/4 v1, 0x0

    goto :goto_31

    :cond_58
    :goto_30
    const/4 v1, 0x1

    :goto_31
    if-nez p2, :cond_5a

    .line 83
    iget-object v5, v0, Llg;->L:Lfg;

    iget-object v5, v5, Lfg;->f:Lfg;

    if-eqz v5, :cond_5a

    .line 84
    iget-object v1, v5, Lfg;->d:Llg;

    .line 85
    iget v5, v1, Llg;->W:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_59

    iget-object v1, v1, Llg;->S:[Llg$b;

    aget-object v5, v1, v2

    sget-object v6, Llg$b;->c:Llg$b;

    if-ne v5, v6, :cond_59

    aget-object v1, v1, v30

    if-ne v1, v6, :cond_59

    goto :goto_32

    :cond_59
    const/16 v30, 0x0

    goto :goto_32

    :cond_5a
    move/from16 v30, v1

    :goto_32
    if-eqz v30, :cond_5b

    const/16 v1, 0x8

    .line 86
    invoke-virtual {v10, v3, v4, v2, v1}, Lax;->h(Lle0;Lle0;II)V

    :cond_5b
    return-void
.end method

.method public i0()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Llg;->l:Z

    .line 4
    iput-boolean v0, p0, Llg;->m:Z

    .line 6
    iget-object v1, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v1

    .line 12
    :goto_0
    if-ge v0, v1, :cond_0

    .line 14
    iget-object v2, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lfg;

    .line 22
    invoke-virtual {v2}, Lfg;->q()V

    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public j(Llg;FI)V
    .locals 6

    .line 1
    sget-object v3, Lfg$b;->g:Lfg$b;

    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, v3

    .line 6
    move-object v2, p1

    .line 7
    move v4, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Llg;->X(Lfg$b;Llg;Lfg$b;II)V

    .line 11
    iput p2, p0, Llg;->B:F

    .line 13
    return-void
.end method

.method public j0(Lud;)V
    .locals 1

    .line 1
    iget-object v0, p0, Llg;->H:Lfg;

    .line 3
    invoke-virtual {v0, p1}, Lfg;->r(Lud;)V

    .line 6
    iget-object v0, p0, Llg;->I:Lfg;

    .line 8
    invoke-virtual {v0, p1}, Lfg;->r(Lud;)V

    .line 11
    iget-object v0, p0, Llg;->J:Lfg;

    .line 13
    invoke-virtual {v0, p1}, Lfg;->r(Lud;)V

    .line 16
    iget-object v0, p0, Llg;->K:Lfg;

    .line 18
    invoke-virtual {v0, p1}, Lfg;->r(Lud;)V

    .line 21
    iget-object v0, p0, Llg;->L:Lfg;

    .line 23
    invoke-virtual {v0, p1}, Lfg;->r(Lud;)V

    .line 26
    iget-object v0, p0, Llg;->O:Lfg;

    .line 28
    invoke-virtual {v0, p1}, Lfg;->r(Lud;)V

    .line 31
    iget-object v0, p0, Llg;->M:Lfg;

    .line 33
    invoke-virtual {v0, p1}, Lfg;->r(Lud;)V

    .line 36
    iget-object v0, p0, Llg;->N:Lfg;

    .line 38
    invoke-virtual {v0, p1}, Lfg;->r(Lud;)V

    .line 41
    return-void
.end method

.method public k(Lax;)V
    .locals 1

    .line 1
    iget-object v0, p0, Llg;->H:Lfg;

    .line 3
    invoke-virtual {p1, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 6
    iget-object v0, p0, Llg;->I:Lfg;

    .line 8
    invoke-virtual {p1, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 11
    iget-object v0, p0, Llg;->J:Lfg;

    .line 13
    invoke-virtual {p1, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 16
    iget-object v0, p0, Llg;->K:Lfg;

    .line 18
    invoke-virtual {p1, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 21
    iget v0, p0, Llg;->e0:I

    .line 23
    if-lez v0, :cond_0

    .line 25
    iget-object v0, p0, Llg;->L:Lfg;

    .line 27
    invoke-virtual {p1, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 30
    :cond_0
    return-void
.end method

.method public k0(I)V
    .locals 0

    .line 1
    iput p1, p0, Llg;->e0:I

    .line 3
    if-lez p1, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Llg;->C:Z

    .line 10
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Llg;->e:Lqp;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lqp;

    .line 7
    invoke-direct {v0, p0}, Lqp;-><init>(Llg;)V

    .line 10
    iput-object v0, p0, Llg;->e:Lqp;

    .line 12
    :cond_0
    iget-object v0, p0, Llg;->f:Luk0;

    .line 14
    if-nez v0, :cond_1

    .line 16
    new-instance v0, Luk0;

    .line 18
    invoke-direct {v0, p0}, Luk0;-><init>(Llg;)V

    .line 21
    iput-object v0, p0, Llg;->f:Luk0;

    .line 23
    :cond_1
    return-void
.end method

.method public l0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llg;->j0:Ljava/lang/Object;

    .line 3
    return-void
.end method

.method public m(Lfg$b;)Lfg;
    .locals 2

    .line 1
    sget-object v0, Llg$a;->a:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 21
    throw v0

    .line 22
    :pswitch_0
    const/4 p1, 0x0

    .line 23
    return-object p1

    .line 24
    :pswitch_1
    iget-object p1, p0, Llg;->N:Lfg;

    .line 26
    return-object p1

    .line 27
    :pswitch_2
    iget-object p1, p0, Llg;->M:Lfg;

    .line 29
    return-object p1

    .line 30
    :pswitch_3
    iget-object p1, p0, Llg;->O:Lfg;

    .line 32
    return-object p1

    .line 33
    :pswitch_4
    iget-object p1, p0, Llg;->L:Lfg;

    .line 35
    return-object p1

    .line 36
    :pswitch_5
    iget-object p1, p0, Llg;->K:Lfg;

    .line 38
    return-object p1

    .line 39
    :pswitch_6
    iget-object p1, p0, Llg;->J:Lfg;

    .line 41
    return-object p1

    .line 42
    :pswitch_7
    iget-object p1, p0, Llg;->I:Lfg;

    .line 44
    return-object p1

    .line 45
    :pswitch_8
    iget-object p1, p0, Llg;->H:Lfg;

    .line 47
    return-object p1

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
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

.method public m0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llg;->m0:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Llg;->e0:I

    .line 3
    return v0
.end method

.method public n0(Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_8

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 10
    goto/16 :goto_2

    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    move-result v1

    .line 16
    const/16 v2, 0x2c

    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    const/4 v5, -0x1

    .line 25
    if-lez v2, :cond_3

    .line 27
    add-int/lit8 v6, v1, -0x1

    .line 29
    if-ge v2, v6, :cond_3

    .line 31
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    move-result-object v6

    .line 35
    const-string v7, "W"

    .line 37
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 40
    move-result v7

    .line 41
    if-eqz v7, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v3, "H"

    .line 46
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 52
    const/4 v3, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v3, -0x1

    .line 55
    :goto_0
    add-int/2addr v2, v4

    .line 56
    move v5, v3

    .line 57
    move v3, v2

    .line 58
    :cond_3
    const/16 v2, 0x3a

    .line 60
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 63
    move-result v2

    .line 64
    if-ltz v2, :cond_5

    .line 66
    sub-int/2addr v1, v4

    .line 67
    if-ge v2, v1, :cond_5

    .line 69
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    add-int/2addr v2, v4

    .line 74
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 81
    move-result v2

    .line 82
    if-lez v2, :cond_6

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 87
    move-result v2

    .line 88
    if-lez v2, :cond_6

    .line 90
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 93
    move-result v1

    .line 94
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 97
    move-result p1

    .line 98
    cmpl-float v2, v1, v0

    .line 100
    if-lez v2, :cond_6

    .line 102
    cmpl-float v2, p1, v0

    .line 104
    if-lez v2, :cond_6

    .line 106
    if-ne v5, v4, :cond_4

    .line 108
    div-float/2addr p1, v1

    .line 109
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 112
    move-result p1

    .line 113
    goto :goto_1

    .line 114
    :cond_4
    div-float/2addr v1, p1

    .line 115
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 118
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_1

    .line 120
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 127
    move-result v1

    .line 128
    if-lez v1, :cond_6

    .line 130
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 133
    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    goto :goto_1

    .line 135
    :catch_0
    nop

    .line 136
    :cond_6
    const/4 p1, 0x0

    .line 137
    :goto_1
    cmpl-float v0, p1, v0

    .line 139
    if-lez v0, :cond_7

    .line 141
    iput p1, p0, Llg;->W:F

    .line 143
    iput v5, p0, Llg;->X:I

    .line 145
    :cond_7
    return-void

    .line 146
    :cond_8
    :goto_2
    iput v0, p0, Llg;->W:F

    .line 148
    return-void
.end method

.method public o(I)F
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget p1, p0, Llg;->h0:F

    .line 5
    return p1

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 9
    iget p1, p0, Llg;->i0:F

    .line 11
    return p1

    .line 12
    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    .line 14
    return p1
.end method

.method public o0(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Llg;->C:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Llg;->e0:I

    .line 8
    sub-int v0, p1, v0

    .line 10
    iget v1, p0, Llg;->V:I

    .line 12
    add-int/2addr v1, v0

    .line 13
    iput v0, p0, Llg;->Z:I

    .line 15
    iget-object v2, p0, Llg;->I:Lfg;

    .line 17
    invoke-virtual {v2, v0}, Lfg;->s(I)V

    .line 20
    iget-object v0, p0, Llg;->K:Lfg;

    .line 22
    invoke-virtual {v0, v1}, Lfg;->s(I)V

    .line 25
    iget-object v0, p0, Llg;->L:Lfg;

    .line 27
    invoke-virtual {v0, p1}, Lfg;->s(I)V

    .line 30
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Llg;->m:Z

    .line 33
    return-void
.end method

.method public p()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Llg;->T()I

    .line 4
    move-result v0

    .line 5
    iget v1, p0, Llg;->V:I

    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public p0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Llg;->H:Lfg;

    .line 3
    invoke-virtual {v0, p1}, Lfg;->s(I)V

    .line 6
    iget-object v0, p0, Llg;->J:Lfg;

    .line 8
    invoke-virtual {v0, p2}, Lfg;->s(I)V

    .line 11
    iput p1, p0, Llg;->Y:I

    .line 13
    sub-int/2addr p2, p1

    .line 14
    iput p2, p0, Llg;->U:I

    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Llg;->l:Z

    .line 19
    return-void
.end method

.method public q()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Llg;->j0:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public q0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Llg;->H:Lfg;

    .line 3
    invoke-virtual {v0, p1}, Lfg;->s(I)V

    .line 6
    iput p1, p0, Llg;->Y:I

    .line 8
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Llg;->m0:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public r0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Llg;->I:Lfg;

    .line 3
    invoke-virtual {v0, p1}, Lfg;->s(I)V

    .line 6
    iput p1, p0, Llg;->Z:I

    .line 8
    return-void
.end method

.method public s(I)Llg$b;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Llg;->y()Llg$b;

    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    if-ne p1, v0, :cond_1

    .line 11
    invoke-virtual {p0}, Llg;->O()Llg$b;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_1
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public s0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Llg;->I:Lfg;

    .line 3
    invoke-virtual {v0, p1}, Lfg;->s(I)V

    .line 6
    iget-object v0, p0, Llg;->K:Lfg;

    .line 8
    invoke-virtual {v0, p2}, Lfg;->s(I)V

    .line 11
    iput p1, p0, Llg;->Z:I

    .line 13
    sub-int/2addr p2, p1

    .line 14
    iput p2, p0, Llg;->V:I

    .line 16
    iget-boolean p2, p0, Llg;->C:Z

    .line 18
    if-eqz p2, :cond_0

    .line 20
    iget-object p2, p0, Llg;->L:Lfg;

    .line 22
    iget v0, p0, Llg;->e0:I

    .line 24
    add-int/2addr p1, v0

    .line 25
    invoke-virtual {p2, p1}, Lfg;->s(I)V

    .line 28
    :cond_0
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Llg;->m:Z

    .line 31
    return-void
.end method

.method public t()F
    .locals 1

    .line 1
    iget v0, p0, Llg;->W:F

    .line 3
    return v0
.end method

.method public t0(IIII)V
    .locals 1

    .line 1
    sub-int/2addr p3, p1

    .line 2
    sub-int/2addr p4, p2

    .line 3
    iput p1, p0, Llg;->Y:I

    .line 5
    iput p2, p0, Llg;->Z:I

    .line 7
    iget p1, p0, Llg;->l0:I

    .line 9
    const/16 p2, 0x8

    .line 11
    const/4 v0, 0x0

    .line 12
    if-ne p1, p2, :cond_0

    .line 14
    iput v0, p0, Llg;->U:I

    .line 16
    iput v0, p0, Llg;->V:I

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Llg;->S:[Llg$b;

    .line 21
    aget-object p2, p1, v0

    .line 23
    sget-object v0, Llg$b;->a:Llg$b;

    .line 25
    if-ne p2, v0, :cond_1

    .line 27
    iget p2, p0, Llg;->U:I

    .line 29
    if-ge p3, p2, :cond_1

    .line 31
    move p3, p2

    .line 32
    :cond_1
    const/4 p2, 0x1

    .line 33
    aget-object p1, p1, p2

    .line 35
    if-ne p1, v0, :cond_2

    .line 37
    iget p1, p0, Llg;->V:I

    .line 39
    if-ge p4, p1, :cond_2

    .line 41
    move p4, p1

    .line 42
    :cond_2
    iput p3, p0, Llg;->U:I

    .line 44
    iput p4, p0, Llg;->V:I

    .line 46
    iget p1, p0, Llg;->g0:I

    .line 48
    if-ge p4, p1, :cond_3

    .line 50
    iput p1, p0, Llg;->V:I

    .line 52
    :cond_3
    iget p1, p0, Llg;->f0:I

    .line 54
    if-ge p3, p1, :cond_4

    .line 56
    iput p1, p0, Llg;->U:I

    .line 58
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Llg;->n0:Ljava/lang/String;

    .line 8
    const-string v2, " "

    .line 10
    const-string v3, ""

    .line 12
    if-eqz v1, :cond_0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v4, "type: "

    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v4, p0, Llg;->n0:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v1, v3

    .line 38
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Llg;->m0:Ljava/lang/String;

    .line 43
    if-eqz v1, :cond_1

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v3, "id: "

    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v3, p0, Llg;->m0:Ljava/lang/String;

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "("

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v1, p0, Llg;->Y:I

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", "

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v1, p0, Llg;->Z:I

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ") - ("

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget v1, p0, Llg;->U:I

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, " x "

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Llg;->V:I

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v1, ")"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    return-object v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Llg;->X:I

    .line 3
    return v0
.end method

.method public u0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Llg;->C:Z

    .line 3
    return-void
.end method

.method public v()I
    .locals 2

    .line 1
    iget v0, p0, Llg;->l0:I

    .line 3
    const/16 v1, 0x8

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget v0, p0, Llg;->V:I

    .line 11
    return v0
.end method

.method public v0(I)V
    .locals 1

    .line 1
    iput p1, p0, Llg;->V:I

    .line 3
    iget v0, p0, Llg;->g0:I

    .line 5
    if-ge p1, v0, :cond_0

    .line 7
    iput v0, p0, Llg;->V:I

    .line 9
    :cond_0
    return-void
.end method

.method public w()F
    .locals 1

    .line 1
    iget v0, p0, Llg;->h0:F

    .line 3
    return v0
.end method

.method public w0(F)V
    .locals 0

    .line 1
    iput p1, p0, Llg;->h0:F

    .line 3
    return-void
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Llg;->r0:I

    .line 3
    return v0
.end method

.method public x0(I)V
    .locals 0

    .line 1
    iput p1, p0, Llg;->r0:I

    .line 3
    return-void
.end method

.method public y()Llg$b;
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->S:[Llg$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 6
    return-object v0
.end method

.method public y0(II)V
    .locals 0

    .line 1
    iput p1, p0, Llg;->Y:I

    .line 3
    sub-int/2addr p2, p1

    .line 4
    iput p2, p0, Llg;->U:I

    .line 6
    iget p1, p0, Llg;->f0:I

    .line 8
    if-ge p2, p1, :cond_0

    .line 10
    iput p1, p0, Llg;->U:I

    .line 12
    :cond_0
    return-void
.end method

.method public z()I
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->H:Lfg;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget v0, v0, Lfg;->g:I

    .line 8
    add-int/2addr v1, v0

    .line 9
    :cond_0
    iget-object v0, p0, Llg;->J:Lfg;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget v0, v0, Lfg;->g:I

    .line 15
    add-int/2addr v1, v0

    .line 16
    :cond_1
    return v1
.end method

.method public z0(Llg$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Llg;->S:[Llg$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    aput-object p1, v0, v1

    .line 6
    return-void
.end method
