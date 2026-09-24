.class public Lsc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsc$a;,
        Lsc$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Lsc$a;

.field public c:Lmg;


# direct methods
.method public constructor <init>(Lmg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lsc;->a:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lsc$a;

    .line 13
    invoke-direct {v0}, Lsc$a;-><init>()V

    .line 16
    iput-object v0, p0, Lsc;->b:Lsc$a;

    .line 18
    iput-object p1, p0, Lsc;->c:Lmg;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Lsc$b;Llg;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lsc;->b:Lsc$a;

    .line 3
    invoke-virtual {p2}, Llg;->y()Llg$b;

    .line 6
    move-result-object v1

    .line 7
    iput-object v1, v0, Lsc$a;->a:Llg$b;

    .line 9
    iget-object v0, p0, Lsc;->b:Lsc$a;

    .line 11
    invoke-virtual {p2}, Llg;->O()Llg$b;

    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Lsc$a;->b:Llg$b;

    .line 17
    iget-object v0, p0, Lsc;->b:Lsc$a;

    .line 19
    invoke-virtual {p2}, Llg;->R()I

    .line 22
    move-result v1

    .line 23
    iput v1, v0, Lsc$a;->c:I

    .line 25
    iget-object v0, p0, Lsc;->b:Lsc$a;

    .line 27
    invoke-virtual {p2}, Llg;->v()I

    .line 30
    move-result v1

    .line 31
    iput v1, v0, Lsc$a;->d:I

    .line 33
    iget-object v0, p0, Lsc;->b:Lsc$a;

    .line 35
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, v0, Lsc$a;->i:Z

    .line 38
    iput p3, v0, Lsc$a;->j:I

    .line 40
    iget-object p3, v0, Lsc$a;->a:Llg$b;

    .line 42
    sget-object v2, Llg$b;->c:Llg$b;

    .line 44
    const/4 v3, 0x1

    .line 45
    if-ne p3, v2, :cond_0

    .line 47
    const/4 p3, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p3, 0x0

    .line 50
    :goto_0
    iget-object v4, v0, Lsc$a;->b:Llg$b;

    .line 52
    if-ne v4, v2, :cond_1

    .line 54
    const/4 v2, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v2, 0x0

    .line 57
    :goto_1
    const/4 v4, 0x0

    .line 58
    if-eqz p3, :cond_2

    .line 60
    iget p3, p2, Llg;->W:F

    .line 62
    cmpl-float p3, p3, v4

    .line 64
    if-lez p3, :cond_2

    .line 66
    const/4 p3, 0x1

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    const/4 p3, 0x0

    .line 69
    :goto_2
    if-eqz v2, :cond_3

    .line 71
    iget v2, p2, Llg;->W:F

    .line 73
    cmpl-float v2, v2, v4

    .line 75
    if-lez v2, :cond_3

    .line 77
    const/4 v2, 0x1

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    const/4 v2, 0x0

    .line 80
    :goto_3
    const/4 v4, 0x4

    .line 81
    if-eqz p3, :cond_4

    .line 83
    iget-object p3, p2, Llg;->r:[I

    .line 85
    aget p3, p3, v1

    .line 87
    if-ne p3, v4, :cond_4

    .line 89
    sget-object p3, Llg$b;->a:Llg$b;

    .line 91
    iput-object p3, v0, Lsc$a;->a:Llg$b;

    .line 93
    :cond_4
    if-eqz v2, :cond_5

    .line 95
    iget-object p3, p2, Llg;->r:[I

    .line 97
    aget p3, p3, v3

    .line 99
    if-ne p3, v4, :cond_5

    .line 101
    sget-object p3, Llg$b;->a:Llg$b;

    .line 103
    iput-object p3, v0, Lsc$a;->b:Llg$b;

    .line 105
    :cond_5
    invoke-interface {p1, p2, v0}, Lsc$b;->b(Llg;Lsc$a;)V

    .line 108
    iget-object p1, p0, Lsc;->b:Lsc$a;

    .line 110
    iget p1, p1, Lsc$a;->e:I

    .line 112
    invoke-virtual {p2, p1}, Llg;->T0(I)V

    .line 115
    iget-object p1, p0, Lsc;->b:Lsc$a;

    .line 117
    iget p1, p1, Lsc$a;->f:I

    .line 119
    invoke-virtual {p2, p1}, Llg;->v0(I)V

    .line 122
    iget-object p1, p0, Lsc;->b:Lsc$a;

    .line 124
    iget-boolean p1, p1, Lsc$a;->h:Z

    .line 126
    invoke-virtual {p2, p1}, Llg;->u0(Z)V

    .line 129
    iget-object p1, p0, Lsc;->b:Lsc$a;

    .line 131
    iget p1, p1, Lsc$a;->g:I

    .line 133
    invoke-virtual {p2, p1}, Llg;->k0(I)V

    .line 136
    iget-object p1, p0, Lsc;->b:Lsc$a;

    .line 138
    sget p2, Lsc$a;->k:I

    .line 140
    iput p2, p1, Lsc$a;->j:I

    .line 142
    iget-boolean p1, p1, Lsc$a;->i:Z

    .line 144
    return p1
.end method

.method public final b(Lmg;)V
    .locals 12

    .line 1
    iget-object v0, p1, Lwl0;->D0:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x40

    .line 9
    invoke-virtual {p1, v1}, Lmg;->A1(I)Z

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Lmg;->q1()Lsc$b;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    if-ge v4, v0, :cond_a

    .line 21
    iget-object v5, p1, Lwl0;->D0:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v5

    .line 27
    check-cast v5, Llg;

    .line 29
    instance-of v6, v5, Lro;

    .line 31
    if-eqz v6, :cond_0

    .line 33
    goto/16 :goto_3

    .line 35
    :cond_0
    instance-of v6, v5, Lwb;

    .line 37
    if-eqz v6, :cond_1

    .line 39
    goto/16 :goto_3

    .line 41
    :cond_1
    invoke-virtual {v5}, Llg;->c0()Z

    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_2

    .line 47
    goto/16 :goto_3

    .line 49
    :cond_2
    if-eqz v1, :cond_3

    .line 51
    iget-object v6, v5, Llg;->e:Lqp;

    .line 53
    if-eqz v6, :cond_3

    .line 55
    iget-object v7, v5, Llg;->f:Luk0;

    .line 57
    if-eqz v7, :cond_3

    .line 59
    iget-object v6, v6, Lkm0;->e:Lhj;

    .line 61
    iget-boolean v6, v6, Lli;->j:Z

    .line 63
    if-eqz v6, :cond_3

    .line 65
    iget-object v6, v7, Lkm0;->e:Lhj;

    .line 67
    iget-boolean v6, v6, Lli;->j:Z

    .line 69
    if-eqz v6, :cond_3

    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-virtual {v5, v3}, Llg;->s(I)Llg$b;

    .line 75
    move-result-object v6

    .line 76
    const/4 v7, 0x1

    .line 77
    invoke-virtual {v5, v7}, Llg;->s(I)Llg$b;

    .line 80
    move-result-object v8

    .line 81
    sget-object v9, Llg$b;->c:Llg$b;

    .line 83
    if-ne v6, v9, :cond_4

    .line 85
    iget v10, v5, Llg;->p:I

    .line 87
    if-eq v10, v7, :cond_4

    .line 89
    if-ne v8, v9, :cond_4

    .line 91
    iget v10, v5, Llg;->q:I

    .line 93
    if-eq v10, v7, :cond_4

    .line 95
    const/4 v10, 0x1

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    const/4 v10, 0x0

    .line 98
    :goto_1
    if-nez v10, :cond_8

    .line 100
    invoke-virtual {p1, v7}, Lmg;->A1(I)Z

    .line 103
    move-result v11

    .line 104
    if-eqz v11, :cond_8

    .line 106
    if-ne v6, v9, :cond_5

    .line 108
    iget v11, v5, Llg;->p:I

    .line 110
    if-nez v11, :cond_5

    .line 112
    if-eq v8, v9, :cond_5

    .line 114
    invoke-virtual {v5}, Llg;->Z()Z

    .line 117
    move-result v11

    .line 118
    if-nez v11, :cond_5

    .line 120
    const/4 v10, 0x1

    .line 121
    :cond_5
    if-ne v8, v9, :cond_6

    .line 123
    iget v11, v5, Llg;->q:I

    .line 125
    if-nez v11, :cond_6

    .line 127
    if-eq v6, v9, :cond_6

    .line 129
    invoke-virtual {v5}, Llg;->Z()Z

    .line 132
    move-result v11

    .line 133
    if-nez v11, :cond_6

    .line 135
    const/4 v10, 0x1

    .line 136
    :cond_6
    if-eq v6, v9, :cond_7

    .line 138
    if-ne v8, v9, :cond_8

    .line 140
    :cond_7
    iget v6, v5, Llg;->W:F

    .line 142
    const/4 v8, 0x0

    .line 143
    cmpl-float v6, v6, v8

    .line 145
    if-lez v6, :cond_8

    .line 147
    goto :goto_2

    .line 148
    :cond_8
    move v7, v10

    .line 149
    :goto_2
    if-eqz v7, :cond_9

    .line 151
    goto :goto_3

    .line 152
    :cond_9
    sget v6, Lsc$a;->k:I

    .line 154
    invoke-virtual {p0, v2, v5, v6}, Lsc;->a(Lsc$b;Llg;I)Z

    .line 157
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 159
    goto/16 :goto_0

    .line 161
    :cond_a
    invoke-interface {v2}, Lsc$b;->a()V

    .line 164
    return-void
.end method

.method public final c(Lmg;Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Llg;->G()I

    .line 4
    move-result p2

    .line 5
    invoke-virtual {p1}, Llg;->F()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1}, Llg;->J0(I)V

    .line 13
    invoke-virtual {p1, v1}, Llg;->I0(I)V

    .line 16
    invoke-virtual {p1, p3}, Llg;->T0(I)V

    .line 19
    invoke-virtual {p1, p4}, Llg;->v0(I)V

    .line 22
    invoke-virtual {p1, p2}, Llg;->J0(I)V

    .line 25
    invoke-virtual {p1, v0}, Llg;->I0(I)V

    .line 28
    iget-object p1, p0, Lsc;->c:Lmg;

    .line 30
    invoke-virtual {p1}, Lmg;->a1()V

    .line 33
    return-void
.end method

.method public d(Lmg;IIIIIIIII)J
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    .line 1
    invoke-virtual/range {p1 .. p1}, Lmg;->q1()Lsc$b;

    move-result-object v5

    .line 2
    iget-object v6, v1, Lwl0;->D0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3
    invoke-virtual/range {p1 .. p1}, Llg;->R()I

    move-result v7

    .line 4
    invoke-virtual/range {p1 .. p1}, Llg;->v()I

    move-result v8

    const/16 v9, 0x80

    .line 5
    invoke-static {v2, v9}, Lc50;->b(II)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_1

    const/16 v12, 0x40

    .line 6
    invoke-static {v2, v12}, Lc50;->b(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_9

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v6, :cond_9

    .line 7
    iget-object v13, v1, Lwl0;->D0:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Llg;

    .line 8
    invoke-virtual {v13}, Llg;->y()Llg$b;

    move-result-object v14

    sget-object v15, Llg$b;->c:Llg$b;

    if-ne v14, v15, :cond_2

    const/4 v14, 0x1

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    .line 9
    :goto_3
    invoke-virtual {v13}, Llg;->O()Llg$b;

    move-result-object v11

    if-ne v11, v15, :cond_3

    const/4 v11, 0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :goto_4
    if-eqz v14, :cond_4

    if-eqz v11, :cond_4

    .line 10
    invoke-virtual {v13}, Llg;->t()F

    move-result v11

    const/4 v14, 0x0

    cmpl-float v11, v11, v14

    if-lez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_5

    :cond_4
    const/4 v11, 0x0

    .line 11
    :goto_5
    invoke-virtual {v13}, Llg;->Z()Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v11, :cond_6

    :cond_5
    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    .line 12
    :cond_6
    invoke-virtual {v13}, Llg;->b0()Z

    move-result v14

    if-eqz v14, :cond_7

    if-eqz v11, :cond_7

    goto :goto_6

    .line 13
    :cond_7
    invoke-virtual {v13}, Llg;->Z()Z

    move-result v11

    if-nez v11, :cond_5

    .line 14
    invoke-virtual {v13}, Llg;->b0()Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_9
    :goto_7
    if-eqz v2, :cond_a

    .line 15
    sget-boolean v11, Lax;->r:Z

    :cond_a
    const/high16 v11, 0x40000000    # 2.0f

    if-ne v3, v11, :cond_b

    if-eq v4, v11, :cond_c

    :cond_b
    if-eqz v9, :cond_d

    :cond_c
    const/4 v12, 0x1

    goto :goto_8

    :cond_d
    const/4 v12, 0x0

    :goto_8
    and-int/2addr v2, v12

    const/4 v12, 0x2

    if-eqz v2, :cond_15

    .line 16
    invoke-virtual/range {p1 .. p1}, Llg;->E()I

    move-result v13

    move/from16 v14, p6

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 17
    invoke-virtual/range {p1 .. p1}, Llg;->D()I

    move-result v14

    move/from16 v15, p8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-ne v3, v11, :cond_e

    .line 18
    invoke-virtual/range {p1 .. p1}, Llg;->R()I

    move-result v15

    if-eq v15, v13, :cond_e

    .line 19
    invoke-virtual {v1, v13}, Llg;->T0(I)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lmg;->t1()V

    :cond_e
    if-ne v4, v11, :cond_f

    .line 21
    invoke-virtual/range {p1 .. p1}, Llg;->v()I

    move-result v13

    if-eq v13, v14, :cond_f

    .line 22
    invoke-virtual {v1, v14}, Llg;->v0(I)V

    .line 23
    invoke-virtual/range {p1 .. p1}, Lmg;->t1()V

    :cond_f
    if-ne v3, v11, :cond_10

    if-ne v4, v11, :cond_10

    .line 24
    invoke-virtual {v1, v9}, Lmg;->n1(Z)Z

    move-result v9

    const/4 v14, 0x2

    goto :goto_a

    .line 25
    :cond_10
    invoke-virtual {v1, v9}, Lmg;->o1(Z)Z

    move-result v13

    if-ne v3, v11, :cond_11

    .line 26
    invoke-virtual {v1, v9, v10}, Lmg;->p1(ZI)Z

    move-result v14

    and-int/2addr v13, v14

    const/4 v14, 0x1

    goto :goto_9

    :cond_11
    const/4 v14, 0x0

    :goto_9
    if-ne v4, v11, :cond_12

    const/4 v15, 0x1

    .line 27
    invoke-virtual {v1, v9, v15}, Lmg;->p1(ZI)Z

    move-result v9

    and-int/2addr v9, v13

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_12
    move v9, v13

    :goto_a
    if-eqz v9, :cond_16

    if-ne v3, v11, :cond_13

    const/4 v15, 0x1

    goto :goto_b

    :cond_13
    const/4 v15, 0x0

    :goto_b
    if-ne v4, v11, :cond_14

    const/4 v3, 0x1

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    .line 28
    :goto_c
    invoke-virtual {v1, v15, v3}, Lmg;->X0(ZZ)V

    goto :goto_d

    :cond_15
    const/4 v9, 0x0

    const/4 v14, 0x0

    :cond_16
    :goto_d
    if-eqz v9, :cond_17

    if-eq v14, v12, :cond_2e

    .line 29
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lmg;->r1()I

    move-result v3

    if-lez v6, :cond_18

    .line 30
    invoke-virtual/range {p0 .. p1}, Lsc;->b(Lmg;)V

    .line 31
    :cond_18
    invoke-virtual/range {p0 .. p1}, Lsc;->e(Lmg;)V

    .line 32
    iget-object v4, v0, Lsc;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v6, :cond_19

    const-string v6, "First pass"

    .line 33
    invoke-virtual {v0, v1, v6, v7, v8}, Lsc;->c(Lmg;Ljava/lang/String;II)V

    :cond_19
    if-lez v4, :cond_2d

    .line 34
    invoke-virtual/range {p1 .. p1}, Llg;->y()Llg$b;

    move-result-object v6

    sget-object v9, Llg$b;->b:Llg$b;

    if-ne v6, v9, :cond_1a

    const/4 v15, 0x1

    goto :goto_e

    :cond_1a
    const/4 v15, 0x0

    .line 35
    :goto_e
    invoke-virtual/range {p1 .. p1}, Llg;->O()Llg$b;

    move-result-object v6

    if-ne v6, v9, :cond_1b

    const/4 v6, 0x1

    goto :goto_f

    :cond_1b
    const/4 v6, 0x0

    .line 36
    :goto_f
    invoke-virtual/range {p1 .. p1}, Llg;->R()I

    move-result v9

    iget-object v11, v0, Lsc;->c:Lmg;

    invoke-virtual {v11}, Llg;->G()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 37
    invoke-virtual/range {p1 .. p1}, Llg;->v()I

    move-result v11

    iget-object v13, v0, Lsc;->c:Lmg;

    invoke-virtual {v13}, Llg;->F()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v4, :cond_1c

    .line 38
    iget-object v14, v0, Lsc;->a:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Llg;

    add-int/lit8 v13, v13, 0x1

    goto :goto_10

    :cond_1c
    const/4 v13, 0x0

    :goto_11
    if-ge v13, v12, :cond_29

    const/4 v14, 0x0

    :goto_12
    if-ge v10, v4, :cond_27

    .line 39
    iget-object v12, v0, Lsc;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Llg;

    move/from16 p5, v4

    .line 40
    instance-of v4, v12, Lep;

    if-eqz v4, :cond_1d

    :goto_13
    move/from16 p6, v3

    goto :goto_14

    :cond_1d
    instance-of v4, v12, Lro;

    if-eqz v4, :cond_1e

    goto :goto_13

    .line 41
    :cond_1e
    invoke-virtual {v12}, Llg;->Q()I

    move-result v4

    move/from16 p6, v3

    const/16 v3, 0x8

    if-ne v4, v3, :cond_1f

    goto :goto_14

    :cond_1f
    if-eqz v2, :cond_20

    .line 42
    iget-object v3, v12, Llg;->e:Lqp;

    iget-object v3, v3, Lkm0;->e:Lhj;

    iget-boolean v3, v3, Lli;->j:Z

    if-eqz v3, :cond_20

    iget-object v3, v12, Llg;->f:Luk0;

    iget-object v3, v3, Lkm0;->e:Lhj;

    iget-boolean v3, v3, Lli;->j:Z

    if-eqz v3, :cond_20

    :goto_14
    move/from16 p9, v2

    goto/16 :goto_16

    .line 43
    :cond_20
    invoke-virtual {v12}, Llg;->R()I

    move-result v3

    .line 44
    invoke-virtual {v12}, Llg;->v()I

    move-result v4

    move/from16 p9, v2

    .line 45
    invoke-virtual {v12}, Llg;->n()I

    move-result v2

    .line 46
    sget v16, Lsc$a;->l:I

    const/4 v1, 0x1

    if-ne v13, v1, :cond_21

    .line 47
    sget v16, Lsc$a;->m:I

    :cond_21
    move/from16 v1, v16

    .line 48
    invoke-virtual {v0, v5, v12, v1}, Lsc;->a(Lsc$b;Llg;I)Z

    move-result v1

    or-int/2addr v1, v14

    .line 49
    invoke-virtual {v12}, Llg;->R()I

    move-result v14

    move/from16 p7, v1

    .line 50
    invoke-virtual {v12}, Llg;->v()I

    move-result v1

    if-eq v14, v3, :cond_23

    .line 51
    invoke-virtual {v12, v14}, Llg;->T0(I)V

    if-eqz v15, :cond_22

    .line 52
    invoke-virtual {v12}, Llg;->K()I

    move-result v3

    if-le v3, v9, :cond_22

    .line 53
    invoke-virtual {v12}, Llg;->K()I

    move-result v3

    sget-object v14, Lfg$b;->d:Lfg$b;

    .line 54
    invoke-virtual {v12, v14}, Llg;->m(Lfg$b;)Lfg;

    move-result-object v14

    invoke-virtual {v14}, Lfg;->e()I

    move-result v14

    add-int/2addr v3, v14

    .line 55
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_22
    const/4 v3, 0x1

    goto :goto_15

    :cond_23
    move/from16 v3, p7

    :goto_15
    if-eq v1, v4, :cond_25

    .line 56
    invoke-virtual {v12, v1}, Llg;->v0(I)V

    if-eqz v6, :cond_24

    .line 57
    invoke-virtual {v12}, Llg;->p()I

    move-result v1

    if-le v1, v11, :cond_24

    .line 58
    invoke-virtual {v12}, Llg;->p()I

    move-result v1

    sget-object v3, Lfg$b;->e:Lfg$b;

    .line 59
    invoke-virtual {v12, v3}, Llg;->m(Lfg$b;)Lfg;

    move-result-object v3

    invoke-virtual {v3}, Lfg;->e()I

    move-result v3

    add-int/2addr v1, v3

    .line 60
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v11, v1

    :cond_24
    const/4 v3, 0x1

    .line 61
    :cond_25
    invoke-virtual {v12}, Llg;->U()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v12}, Llg;->n()I

    move-result v1

    if-eq v2, v1, :cond_26

    const/4 v14, 0x1

    goto :goto_16

    :cond_26
    move v14, v3

    :goto_16
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move/from16 v4, p5

    move/from16 v3, p6

    move/from16 v2, p9

    const/4 v12, 0x2

    goto/16 :goto_12

    :cond_27
    move/from16 p9, v2

    move/from16 p6, v3

    move/from16 p5, v4

    if-eqz v14, :cond_28

    const-string v1, "intermediate pass"

    move-object/from16 v2, p1

    const/4 v3, 0x1

    .line 62
    invoke-virtual {v0, v2, v1, v7, v8}, Lsc;->c(Lmg;Ljava/lang/String;II)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v4, p5

    move/from16 v3, p6

    move-object v1, v2

    const/4 v10, 0x0

    const/4 v12, 0x2

    move/from16 v2, p9

    goto/16 :goto_11

    :cond_28
    move-object/from16 v2, p1

    const/4 v3, 0x1

    goto :goto_17

    :cond_29
    move-object v2, v1

    move/from16 p6, v3

    const/4 v3, 0x1

    const/4 v14, 0x0

    :goto_17
    if-eqz v14, :cond_2c

    const-string v1, "2nd pass"

    .line 63
    invoke-virtual {v0, v2, v1, v7, v8}, Lsc;->c(Lmg;Ljava/lang/String;II)V

    .line 64
    invoke-virtual/range {p1 .. p1}, Llg;->R()I

    move-result v1

    if-ge v1, v9, :cond_2a

    .line 65
    invoke-virtual {v2, v9}, Llg;->T0(I)V

    const/4 v10, 0x1

    goto :goto_18

    :cond_2a
    const/4 v10, 0x0

    .line 66
    :goto_18
    invoke-virtual/range {p1 .. p1}, Llg;->v()I

    move-result v1

    if-ge v1, v11, :cond_2b

    .line 67
    invoke-virtual {v2, v11}, Llg;->v0(I)V

    const/4 v11, 0x1

    goto :goto_19

    :cond_2b
    move v11, v10

    :goto_19
    if-eqz v11, :cond_2c

    const-string v1, "3rd pass"

    .line 68
    invoke-virtual {v0, v2, v1, v7, v8}, Lsc;->c(Lmg;Ljava/lang/String;II)V

    :cond_2c
    move/from16 v1, p6

    goto :goto_1a

    :cond_2d
    move-object v2, v1

    move v1, v3

    .line 69
    :goto_1a
    invoke-virtual {v2, v1}, Lmg;->D1(I)V

    :cond_2e
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public e(Lmg;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lsc;->a:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p1, Lwl0;->D0:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 15
    iget-object v2, p1, Lwl0;->D0:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Llg;

    .line 23
    invoke-virtual {v2}, Llg;->y()Llg$b;

    .line 26
    move-result-object v3

    .line 27
    sget-object v4, Llg$b;->c:Llg$b;

    .line 29
    if-eq v3, v4, :cond_0

    .line 31
    invoke-virtual {v2}, Llg;->O()Llg$b;

    .line 34
    move-result-object v3

    .line 35
    if-ne v3, v4, :cond_1

    .line 37
    :cond_0
    iget-object v3, p0, Lsc;->a:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Lmg;->t1()V

    .line 48
    return-void
.end method
