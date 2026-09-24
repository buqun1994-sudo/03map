.class public Lro;
.super Llg;
.source "SourceFile"


# instance fields
.field public D0:F

.field public E0:I

.field public F0:I

.field public G0:Lfg;

.field public H0:I

.field public I0:I

.field public J0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Llg;-><init>()V

    .line 4
    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    iput v0, p0, Lro;->D0:F

    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lro;->E0:I

    .line 11
    iput v0, p0, Lro;->F0:I

    .line 13
    iget-object v0, p0, Llg;->I:Lfg;

    .line 15
    iput-object v0, p0, Lro;->G0:Lfg;

    .line 17
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lro;->H0:I

    .line 20
    iput v0, p0, Lro;->I0:I

    .line 22
    iget-object v1, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 27
    iget-object v1, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 29
    iget-object v2, p0, Lro;->G0:Lfg;

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v1, p0, Llg;->P:[Lfg;

    .line 36
    array-length v1, v1

    .line 37
    :goto_0
    if-ge v0, v1, :cond_0

    .line 39
    iget-object v2, p0, Llg;->P:[Lfg;

    .line 41
    iget-object v3, p0, Lro;->G0:Lfg;

    .line 43
    aput-object v3, v2, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public Y0(Lax;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Llg;->I()Llg;

    .line 4
    move-result-object p2

    .line 5
    if-nez p2, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p2, p0, Lro;->G0:Lfg;

    .line 10
    invoke-virtual {p1, p2}, Lax;->x(Ljava/lang/Object;)I

    .line 13
    move-result p1

    .line 14
    iget p2, p0, Lro;->H0:I

    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    if-ne p2, v0, :cond_1

    .line 20
    invoke-virtual {p0, p1}, Llg;->U0(I)V

    .line 23
    invoke-virtual {p0, v1}, Llg;->V0(I)V

    .line 26
    invoke-virtual {p0}, Llg;->I()Llg;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Llg;->v()I

    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Llg;->v0(I)V

    .line 37
    invoke-virtual {p0, v1}, Llg;->T0(I)V

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0, v1}, Llg;->U0(I)V

    .line 44
    invoke-virtual {p0, p1}, Llg;->V0(I)V

    .line 47
    invoke-virtual {p0}, Llg;->I()Llg;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Llg;->R()I

    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0, p1}, Llg;->T0(I)V

    .line 58
    invoke-virtual {p0, v1}, Llg;->v0(I)V

    .line 61
    :goto_0
    return-void
.end method

.method public Z0()Lfg;
    .locals 1

    .line 1
    iget-object v0, p0, Lro;->G0:Lfg;

    .line 3
    return-object v0
.end method

.method public a1()I
    .locals 1

    .line 1
    iget v0, p0, Lro;->H0:I

    .line 3
    return v0
.end method

.method public b1()I
    .locals 1

    .line 1
    iget v0, p0, Lro;->E0:I

    .line 3
    return v0
.end method

.method public c1()I
    .locals 1

    .line 1
    iget v0, p0, Lro;->F0:I

    .line 3
    return v0
.end method

.method public d1()F
    .locals 1

    .line 1
    iget v0, p0, Lro;->D0:F

    .line 3
    return v0
.end method

.method public e0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lro;->J0:Z

    .line 3
    return v0
.end method

.method public e1(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lro;->G0:Lfg;

    .line 3
    invoke-virtual {v0, p1}, Lfg;->s(I)V

    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lro;->J0:Z

    .line 9
    return-void
.end method

.method public f0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lro;->J0:Z

    .line 3
    return v0
.end method

.method public f1(I)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-le p1, v0, :cond_0

    .line 4
    const/high16 v1, -0x40800000    # -1.0f

    .line 6
    iput v1, p0, Lro;->D0:F

    .line 8
    iput p1, p0, Lro;->E0:I

    .line 10
    iput v0, p0, Lro;->F0:I

    .line 12
    :cond_0
    return-void
.end method

.method public g(Lax;Z)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Llg;->I()Llg;

    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lmg;

    .line 7
    if-nez p2, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lfg$b;->b:Lfg$b;

    .line 12
    invoke-virtual {p2, v0}, Llg;->m(Lfg$b;)Lfg;

    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lfg$b;->d:Lfg$b;

    .line 18
    invoke-virtual {p2, v1}, Llg;->m(Lfg$b;)Lfg;

    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Llg;->T:Llg;

    .line 24
    const/4 v3, 0x1

    .line 25
    const/4 v4, 0x0

    .line 26
    if-eqz v2, :cond_1

    .line 28
    iget-object v2, v2, Llg;->S:[Llg$b;

    .line 30
    aget-object v2, v2, v4

    .line 32
    sget-object v5, Llg$b;->b:Llg$b;

    .line 34
    if-ne v2, v5, :cond_1

    .line 36
    const/4 v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 39
    :goto_0
    iget v5, p0, Lro;->H0:I

    .line 41
    if-nez v5, :cond_3

    .line 43
    sget-object v0, Lfg$b;->c:Lfg$b;

    .line 45
    invoke-virtual {p2, v0}, Llg;->m(Lfg$b;)Lfg;

    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Lfg$b;->e:Lfg$b;

    .line 51
    invoke-virtual {p2, v1}, Llg;->m(Lfg$b;)Lfg;

    .line 54
    move-result-object v1

    .line 55
    iget-object p2, p0, Llg;->T:Llg;

    .line 57
    if-eqz p2, :cond_2

    .line 59
    iget-object p2, p2, Llg;->S:[Llg$b;

    .line 61
    aget-object p2, p2, v3

    .line 63
    sget-object v2, Llg$b;->b:Llg$b;

    .line 65
    if-ne p2, v2, :cond_2

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const/4 v3, 0x0

    .line 69
    :goto_1
    move v2, v3

    .line 70
    :cond_3
    iget-boolean p2, p0, Lro;->J0:Z

    .line 72
    const/4 v3, -0x1

    .line 73
    const/4 v5, 0x5

    .line 74
    if-eqz p2, :cond_6

    .line 76
    iget-object p2, p0, Lro;->G0:Lfg;

    .line 78
    invoke-virtual {p2}, Lfg;->m()Z

    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_6

    .line 84
    iget-object p2, p0, Lro;->G0:Lfg;

    .line 86
    invoke-virtual {p1, p2}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 89
    move-result-object p2

    .line 90
    iget-object v6, p0, Lro;->G0:Lfg;

    .line 92
    invoke-virtual {v6}, Lfg;->d()I

    .line 95
    move-result v6

    .line 96
    invoke-virtual {p1, p2, v6}, Lax;->f(Lle0;I)V

    .line 99
    iget v6, p0, Lro;->E0:I

    .line 101
    if-eq v6, v3, :cond_4

    .line 103
    if-eqz v2, :cond_5

    .line 105
    invoke-virtual {p1, v1}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p1, v0, p2, v4, v5}, Lax;->h(Lle0;Lle0;II)V

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    iget v6, p0, Lro;->F0:I

    .line 115
    if-eq v6, v3, :cond_5

    .line 117
    if-eqz v2, :cond_5

    .line 119
    invoke-virtual {p1, v1}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p1, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p1, p2, v0, v4, v5}, Lax;->h(Lle0;Lle0;II)V

    .line 130
    invoke-virtual {p1, v1, p2, v4, v5}, Lax;->h(Lle0;Lle0;II)V

    .line 133
    :cond_5
    :goto_2
    iput-boolean v4, p0, Lro;->J0:Z

    .line 135
    return-void

    .line 136
    :cond_6
    iget p2, p0, Lro;->E0:I

    .line 138
    const/16 v6, 0x8

    .line 140
    if-eq p2, v3, :cond_7

    .line 142
    iget-object p2, p0, Lro;->G0:Lfg;

    .line 144
    invoke-virtual {p1, p2}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p1, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 151
    move-result-object v0

    .line 152
    iget v3, p0, Lro;->E0:I

    .line 154
    invoke-virtual {p1, p2, v0, v3, v6}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 157
    if-eqz v2, :cond_9

    .line 159
    invoke-virtual {p1, v1}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1, v0, p2, v4, v5}, Lax;->h(Lle0;Lle0;II)V

    .line 166
    goto :goto_3

    .line 167
    :cond_7
    iget p2, p0, Lro;->F0:I

    .line 169
    if-eq p2, v3, :cond_8

    .line 171
    iget-object p2, p0, Lro;->G0:Lfg;

    .line 173
    invoke-virtual {p1, p2}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p1, v1}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 180
    move-result-object v1

    .line 181
    iget v3, p0, Lro;->F0:I

    .line 183
    neg-int v3, v3

    .line 184
    invoke-virtual {p1, p2, v1, v3, v6}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 187
    if-eqz v2, :cond_9

    .line 189
    invoke-virtual {p1, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p1, p2, v0, v4, v5}, Lax;->h(Lle0;Lle0;II)V

    .line 196
    invoke-virtual {p1, v1, p2, v4, v5}, Lax;->h(Lle0;Lle0;II)V

    .line 199
    goto :goto_3

    .line 200
    :cond_8
    iget p2, p0, Lro;->D0:F

    .line 202
    const/high16 v0, -0x40800000    # -1.0f

    .line 204
    cmpl-float p2, p2, v0

    .line 206
    if-eqz p2, :cond_9

    .line 208
    iget-object p2, p0, Lro;->G0:Lfg;

    .line 210
    invoke-virtual {p1, p2}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 213
    move-result-object p2

    .line 214
    invoke-virtual {p1, v1}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 217
    move-result-object v0

    .line 218
    iget v1, p0, Lro;->D0:F

    .line 220
    invoke-static {p1, p2, v0, v1}, Lax;->s(Lax;Lle0;Lle0;F)Lb6;

    .line 223
    move-result-object p2

    .line 224
    invoke-virtual {p1, p2}, Lax;->d(Lb6;)V

    .line 227
    :cond_9
    :goto_3
    return-void
.end method

.method public g1(I)V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-le p1, v0, :cond_0

    .line 4
    const/high16 v1, -0x40800000    # -1.0f

    .line 6
    iput v1, p0, Lro;->D0:F

    .line 8
    iput v0, p0, Lro;->E0:I

    .line 10
    iput p1, p0, Lro;->F0:I

    .line 12
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public h1(F)V
    .locals 1

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    if-lez v0, :cond_0

    .line 7
    iput p1, p0, Lro;->D0:F

    .line 9
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lro;->E0:I

    .line 12
    iput p1, p0, Lro;->F0:I

    .line 14
    :cond_0
    return-void
.end method

.method public i1(I)V
    .locals 3

    .line 1
    iget v0, p0, Lro;->H0:I

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lro;->H0:I

    .line 8
    iget-object p1, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 13
    iget p1, p0, Lro;->H0:I

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p1, v0, :cond_1

    .line 18
    iget-object p1, p0, Llg;->H:Lfg;

    .line 20
    iput-object p1, p0, Lro;->G0:Lfg;

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object p1, p0, Llg;->I:Lfg;

    .line 25
    iput-object p1, p0, Lro;->G0:Lfg;

    .line 27
    :goto_0
    iget-object p1, p0, Llg;->Q:Ljava/util/ArrayList;

    .line 29
    iget-object v0, p0, Lro;->G0:Lfg;

    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object p1, p0, Llg;->P:[Lfg;

    .line 36
    array-length p1, p1

    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_1
    if-ge v0, p1, :cond_2

    .line 40
    iget-object v1, p0, Llg;->P:[Lfg;

    .line 42
    iget-object v2, p0, Lro;->G0:Lfg;

    .line 44
    aput-object v2, v1, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    return-void
.end method

.method public m(Lfg$b;)Lfg;
    .locals 2

    .line 1
    sget-object v0, Lro$a;->a:[I

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :pswitch_1
    iget v0, p0, Lro;->H0:I

    .line 17
    if-nez v0, :cond_0

    .line 19
    iget-object p1, p0, Lro;->G0:Lfg;

    .line 21
    return-object p1

    .line 22
    :pswitch_2
    iget v0, p0, Lro;->H0:I

    .line 24
    const/4 v1, 0x1

    .line 25
    if-ne v0, v1, :cond_0

    .line 27
    iget-object p1, p0, Lro;->G0:Lfg;

    .line 29
    return-object p1

    .line 30
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 32
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 39
    throw v0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
