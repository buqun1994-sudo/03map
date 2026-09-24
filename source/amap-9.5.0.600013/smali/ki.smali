.class public Lki;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lmg;

.field public b:Z

.field public c:Z

.field public d:Lmg;

.field public e:Ljava/util/ArrayList;

.field public f:Ljava/util/ArrayList;

.field public g:Lsc$b;

.field public h:Lsc$a;

.field public i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lmg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lki;->b:Z

    .line 7
    iput-boolean v0, p0, Lki;->c:Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lki;->e:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lki;->f:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lki;->g:Lsc$b;

    .line 26
    new-instance v0, Lsc$a;

    .line 28
    invoke-direct {v0}, Lsc$a;-><init>()V

    .line 31
    iput-object v0, p0, Lki;->h:Lsc$a;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iput-object v0, p0, Lki;->i:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lki;->a:Lmg;

    .line 42
    iput-object p1, p0, Lki;->d:Lmg;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lli;IILli;Ljava/util/ArrayList;Lpb0;)V
    .locals 8

    .line 1
    iget-object p1, p1, Lli;->d:Lkm0;

    .line 3
    iget-object v0, p1, Lkm0;->c:Lpb0;

    .line 5
    if-nez v0, :cond_c

    .line 7
    iget-object v0, p0, Lki;->a:Lmg;

    .line 9
    iget-object v1, v0, Llg;->e:Lqp;

    .line 11
    if-eq p1, v1, :cond_c

    .line 13
    iget-object v0, v0, Llg;->f:Luk0;

    .line 15
    if-ne p1, v0, :cond_0

    .line 17
    goto/16 :goto_6

    .line 19
    :cond_0
    if-nez p6, :cond_1

    .line 21
    new-instance p6, Lpb0;

    .line 23
    invoke-direct {p6, p1, p3}, Lpb0;-><init>(Lkm0;I)V

    .line 26
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_1
    iput-object p6, p1, Lkm0;->c:Lpb0;

    .line 31
    invoke-virtual {p6, p1}, Lpb0;->a(Lkm0;)V

    .line 34
    iget-object p3, p1, Lkm0;->h:Lli;

    .line 36
    iget-object p3, p3, Lli;->k:Ljava/util/List;

    .line 38
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object p3

    .line 42
    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 48
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lji;

    .line 54
    instance-of v1, v0, Lli;

    .line 56
    if-eqz v1, :cond_2

    .line 58
    move-object v1, v0

    .line 59
    check-cast v1, Lli;

    .line 61
    const/4 v3, 0x0

    .line 62
    move-object v0, p0

    .line 63
    move v2, p2

    .line 64
    move-object v4, p4

    .line 65
    move-object v5, p5

    .line 66
    move-object v6, p6

    .line 67
    invoke-virtual/range {v0 .. v6}, Lki;->a(Lli;IILli;Ljava/util/ArrayList;Lpb0;)V

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object p3, p1, Lkm0;->i:Lli;

    .line 73
    iget-object p3, p3, Lli;->k:Ljava/util/List;

    .line 75
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object p3

    .line 79
    :cond_4
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_5

    .line 85
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lji;

    .line 91
    instance-of v1, v0, Lli;

    .line 93
    if-eqz v1, :cond_4

    .line 95
    move-object v1, v0

    .line 96
    check-cast v1, Lli;

    .line 98
    const/4 v3, 0x1

    .line 99
    move-object v0, p0

    .line 100
    move v2, p2

    .line 101
    move-object v4, p4

    .line 102
    move-object v5, p5

    .line 103
    move-object v6, p6

    .line 104
    invoke-virtual/range {v0 .. v6}, Lki;->a(Lli;IILli;Ljava/util/ArrayList;Lpb0;)V

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    const/4 p3, 0x1

    .line 109
    if-ne p2, p3, :cond_7

    .line 111
    instance-of v0, p1, Luk0;

    .line 113
    if-eqz v0, :cond_7

    .line 115
    move-object v0, p1

    .line 116
    check-cast v0, Luk0;

    .line 118
    iget-object v0, v0, Luk0;->k:Lli;

    .line 120
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object v7

    .line 126
    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_7

    .line 132
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lji;

    .line 138
    instance-of v1, v0, Lli;

    .line 140
    if-eqz v1, :cond_6

    .line 142
    move-object v1, v0

    .line 143
    check-cast v1, Lli;

    .line 145
    const/4 v3, 0x2

    .line 146
    move-object v0, p0

    .line 147
    move v2, p2

    .line 148
    move-object v4, p4

    .line 149
    move-object v5, p5

    .line 150
    move-object v6, p6

    .line 151
    invoke-virtual/range {v0 .. v6}, Lki;->a(Lli;IILli;Ljava/util/ArrayList;Lpb0;)V

    .line 154
    goto :goto_2

    .line 155
    :cond_7
    iget-object v0, p1, Lkm0;->h:Lli;

    .line 157
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 162
    move-result-object v7

    .line 163
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_9

    .line 169
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    move-result-object v0

    .line 173
    move-object v1, v0

    .line 174
    check-cast v1, Lli;

    .line 176
    if-ne v1, p4, :cond_8

    .line 178
    iput-boolean p3, p6, Lpb0;->b:Z

    .line 180
    :cond_8
    const/4 v3, 0x0

    .line 181
    move-object v0, p0

    .line 182
    move v2, p2

    .line 183
    move-object v4, p4

    .line 184
    move-object v5, p5

    .line 185
    move-object v6, p6

    .line 186
    invoke-virtual/range {v0 .. v6}, Lki;->a(Lli;IILli;Ljava/util/ArrayList;Lpb0;)V

    .line 189
    goto :goto_3

    .line 190
    :cond_9
    iget-object v0, p1, Lkm0;->i:Lli;

    .line 192
    iget-object v0, v0, Lli;->l:Ljava/util/List;

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 197
    move-result-object v7

    .line 198
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_b

    .line 204
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    move-result-object v0

    .line 208
    move-object v1, v0

    .line 209
    check-cast v1, Lli;

    .line 211
    if-ne v1, p4, :cond_a

    .line 213
    iput-boolean p3, p6, Lpb0;->b:Z

    .line 215
    :cond_a
    const/4 v3, 0x1

    .line 216
    move-object v0, p0

    .line 217
    move v2, p2

    .line 218
    move-object v4, p4

    .line 219
    move-object v5, p5

    .line 220
    move-object v6, p6

    .line 221
    invoke-virtual/range {v0 .. v6}, Lki;->a(Lli;IILli;Ljava/util/ArrayList;Lpb0;)V

    .line 224
    goto :goto_4

    .line 225
    :cond_b
    if-ne p2, p3, :cond_c

    .line 227
    instance-of p3, p1, Luk0;

    .line 229
    if-eqz p3, :cond_c

    .line 231
    check-cast p1, Luk0;

    .line 233
    iget-object p1, p1, Luk0;->k:Lli;

    .line 235
    iget-object p1, p1, Lli;->l:Ljava/util/List;

    .line 237
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 240
    move-result-object p1

    .line 241
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    move-result p3

    .line 245
    if-eqz p3, :cond_c

    .line 247
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    move-result-object p3

    .line 251
    move-object v1, p3

    .line 252
    check-cast v1, Lli;

    .line 254
    const/4 v3, 0x2

    .line 255
    move-object v0, p0

    .line 256
    move v2, p2

    .line 257
    move-object v4, p4

    .line 258
    move-object v5, p5

    .line 259
    move-object v6, p6

    .line 260
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lki;->a(Lli;IILli;Ljava/util/ArrayList;Lpb0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    goto :goto_5

    .line 264
    :catchall_0
    move-exception p1

    .line 265
    throw p1

    .line 266
    :cond_c
    :goto_6
    return-void
.end method

.method public final b(Lmg;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 3
    iget-object v1, v0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_28

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Llg;

    .line 22
    iget-object v4, v2, Llg;->S:[Llg$b;

    .line 24
    aget-object v5, v4, v3

    .line 26
    const/4 v10, 0x1

    .line 27
    aget-object v4, v4, v10

    .line 29
    invoke-virtual {v2}, Llg;->Q()I

    .line 32
    move-result v6

    .line 33
    const/16 v7, 0x8

    .line 35
    if-ne v6, v7, :cond_1

    .line 37
    iput-boolean v10, v2, Llg;->a:Z

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget v6, v2, Llg;->u:F

    .line 42
    const/high16 v11, 0x3f800000    # 1.0f

    .line 44
    const/4 v7, 0x2

    .line 45
    cmpg-float v6, v6, v11

    .line 47
    if-gez v6, :cond_2

    .line 49
    sget-object v6, Llg$b;->c:Llg$b;

    .line 51
    if-ne v5, v6, :cond_2

    .line 53
    iput v7, v2, Llg;->p:I

    .line 55
    :cond_2
    iget v6, v2, Llg;->x:F

    .line 57
    cmpg-float v6, v6, v11

    .line 59
    if-gez v6, :cond_3

    .line 61
    sget-object v6, Llg$b;->c:Llg$b;

    .line 63
    if-ne v4, v6, :cond_3

    .line 65
    iput v7, v2, Llg;->q:I

    .line 67
    :cond_3
    invoke-virtual {v2}, Llg;->t()F

    .line 70
    move-result v6

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x3

    .line 73
    cmpl-float v6, v6, v8

    .line 75
    if-lez v6, :cond_9

    .line 77
    sget-object v6, Llg$b;->c:Llg$b;

    .line 79
    if-ne v5, v6, :cond_5

    .line 81
    sget-object v8, Llg$b;->b:Llg$b;

    .line 83
    if-eq v4, v8, :cond_4

    .line 85
    sget-object v8, Llg$b;->a:Llg$b;

    .line 87
    if-ne v4, v8, :cond_5

    .line 89
    :cond_4
    iput v9, v2, Llg;->p:I

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    if-ne v4, v6, :cond_7

    .line 94
    sget-object v8, Llg$b;->b:Llg$b;

    .line 96
    if-eq v5, v8, :cond_6

    .line 98
    sget-object v8, Llg$b;->a:Llg$b;

    .line 100
    if-ne v5, v8, :cond_7

    .line 102
    :cond_6
    iput v9, v2, Llg;->q:I

    .line 104
    goto :goto_1

    .line 105
    :cond_7
    if-ne v5, v6, :cond_9

    .line 107
    if-ne v4, v6, :cond_9

    .line 109
    iget v6, v2, Llg;->p:I

    .line 111
    if-nez v6, :cond_8

    .line 113
    iput v9, v2, Llg;->p:I

    .line 115
    :cond_8
    iget v6, v2, Llg;->q:I

    .line 117
    if-nez v6, :cond_9

    .line 119
    iput v9, v2, Llg;->q:I

    .line 121
    :cond_9
    :goto_1
    sget-object v6, Llg$b;->c:Llg$b;

    .line 123
    if-ne v5, v6, :cond_b

    .line 125
    iget v8, v2, Llg;->p:I

    .line 127
    if-ne v8, v10, :cond_b

    .line 129
    iget-object v8, v2, Llg;->H:Lfg;

    .line 131
    iget-object v8, v8, Lfg;->f:Lfg;

    .line 133
    if-eqz v8, :cond_a

    .line 135
    iget-object v8, v2, Llg;->J:Lfg;

    .line 137
    iget-object v8, v8, Lfg;->f:Lfg;

    .line 139
    if-nez v8, :cond_b

    .line 141
    :cond_a
    sget-object v5, Llg$b;->b:Llg$b;

    .line 143
    :cond_b
    move-object v8, v5

    .line 144
    if-ne v4, v6, :cond_d

    .line 146
    iget v5, v2, Llg;->q:I

    .line 148
    if-ne v5, v10, :cond_d

    .line 150
    iget-object v5, v2, Llg;->I:Lfg;

    .line 152
    iget-object v5, v5, Lfg;->f:Lfg;

    .line 154
    if-eqz v5, :cond_c

    .line 156
    iget-object v5, v2, Llg;->K:Lfg;

    .line 158
    iget-object v5, v5, Lfg;->f:Lfg;

    .line 160
    if-nez v5, :cond_d

    .line 162
    :cond_c
    sget-object v4, Llg$b;->b:Llg$b;

    .line 164
    :cond_d
    move-object v12, v4

    .line 165
    iget-object v4, v2, Llg;->e:Lqp;

    .line 167
    iput-object v8, v4, Lkm0;->d:Llg$b;

    .line 169
    iget v5, v2, Llg;->p:I

    .line 171
    iput v5, v4, Lkm0;->a:I

    .line 173
    iget-object v4, v2, Llg;->f:Luk0;

    .line 175
    iput-object v12, v4, Lkm0;->d:Llg$b;

    .line 177
    iget v13, v2, Llg;->q:I

    .line 179
    iput v13, v4, Lkm0;->a:I

    .line 181
    sget-object v4, Llg$b;->d:Llg$b;

    .line 183
    if-eq v8, v4, :cond_e

    .line 185
    sget-object v14, Llg$b;->a:Llg$b;

    .line 187
    if-eq v8, v14, :cond_e

    .line 189
    sget-object v14, Llg$b;->b:Llg$b;

    .line 191
    if-ne v8, v14, :cond_f

    .line 193
    :cond_e
    if-eq v12, v4, :cond_25

    .line 195
    sget-object v14, Llg$b;->a:Llg$b;

    .line 197
    if-eq v12, v14, :cond_25

    .line 199
    sget-object v14, Llg$b;->b:Llg$b;

    .line 201
    if-ne v12, v14, :cond_f

    .line 203
    goto/16 :goto_3

    .line 205
    :cond_f
    const/high16 v14, 0x3f000000    # 0.5f

    .line 207
    if-ne v8, v6, :cond_17

    .line 209
    sget-object v15, Llg$b;->b:Llg$b;

    .line 211
    if-eq v12, v15, :cond_10

    .line 213
    sget-object v11, Llg$b;->a:Llg$b;

    .line 215
    if-ne v12, v11, :cond_17

    .line 217
    :cond_10
    if-ne v5, v9, :cond_12

    .line 219
    if-ne v12, v15, :cond_11

    .line 221
    const/4 v7, 0x0

    .line 222
    const/4 v9, 0x0

    .line 223
    move-object/from16 v4, p0

    .line 225
    move-object v5, v2

    .line 226
    move-object v6, v15

    .line 227
    move-object v8, v15

    .line 228
    invoke-virtual/range {v4 .. v9}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 231
    :cond_11
    invoke-virtual {v2}, Llg;->v()I

    .line 234
    move-result v9

    .line 235
    int-to-float v3, v9

    .line 236
    iget v4, v2, Llg;->W:F

    .line 238
    mul-float v3, v3, v4

    .line 240
    add-float/2addr v3, v14

    .line 241
    float-to-int v7, v3

    .line 242
    sget-object v8, Llg$b;->a:Llg$b;

    .line 244
    move-object/from16 v4, p0

    .line 246
    move-object v5, v2

    .line 247
    move-object v6, v8

    .line 248
    invoke-virtual/range {v4 .. v9}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 251
    iget-object v3, v2, Llg;->e:Lqp;

    .line 253
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 255
    invoke-virtual {v2}, Llg;->R()I

    .line 258
    move-result v4

    .line 259
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 262
    iget-object v3, v2, Llg;->f:Luk0;

    .line 264
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 266
    invoke-virtual {v2}, Llg;->v()I

    .line 269
    move-result v4

    .line 270
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 273
    iput-boolean v10, v2, Llg;->a:Z

    .line 275
    goto/16 :goto_0

    .line 277
    :cond_12
    if-ne v5, v10, :cond_13

    .line 279
    const/4 v7, 0x0

    .line 280
    const/4 v9, 0x0

    .line 281
    move-object/from16 v4, p0

    .line 283
    move-object v5, v2

    .line 284
    move-object v6, v15

    .line 285
    move-object v8, v12

    .line 286
    invoke-virtual/range {v4 .. v9}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 289
    iget-object v3, v2, Llg;->e:Lqp;

    .line 291
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 293
    invoke-virtual {v2}, Llg;->R()I

    .line 296
    move-result v2

    .line 297
    iput v2, v3, Lhj;->m:I

    .line 299
    goto/16 :goto_0

    .line 301
    :cond_13
    if-ne v5, v7, :cond_15

    .line 303
    iget-object v11, v0, Llg;->S:[Llg$b;

    .line 305
    aget-object v11, v11, v3

    .line 307
    sget-object v15, Llg$b;->a:Llg$b;

    .line 309
    if-eq v11, v15, :cond_14

    .line 311
    if-ne v11, v4, :cond_17

    .line 313
    :cond_14
    iget v3, v2, Llg;->u:F

    .line 315
    invoke-virtual/range {p1 .. p1}, Llg;->R()I

    .line 318
    move-result v4

    .line 319
    int-to-float v4, v4

    .line 320
    mul-float v3, v3, v4

    .line 322
    add-float/2addr v3, v14

    .line 323
    float-to-int v7, v3

    .line 324
    invoke-virtual {v2}, Llg;->v()I

    .line 327
    move-result v9

    .line 328
    move-object/from16 v4, p0

    .line 330
    move-object v5, v2

    .line 331
    move-object v6, v15

    .line 332
    move-object v8, v12

    .line 333
    invoke-virtual/range {v4 .. v9}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 336
    iget-object v3, v2, Llg;->e:Lqp;

    .line 338
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 340
    invoke-virtual {v2}, Llg;->R()I

    .line 343
    move-result v4

    .line 344
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 347
    iget-object v3, v2, Llg;->f:Luk0;

    .line 349
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 351
    invoke-virtual {v2}, Llg;->v()I

    .line 354
    move-result v4

    .line 355
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 358
    iput-boolean v10, v2, Llg;->a:Z

    .line 360
    goto/16 :goto_0

    .line 362
    :cond_15
    iget-object v11, v2, Llg;->P:[Lfg;

    .line 364
    aget-object v7, v11, v3

    .line 366
    iget-object v7, v7, Lfg;->f:Lfg;

    .line 368
    if-eqz v7, :cond_16

    .line 370
    aget-object v7, v11, v10

    .line 372
    iget-object v7, v7, Lfg;->f:Lfg;

    .line 374
    if-nez v7, :cond_17

    .line 376
    :cond_16
    const/4 v7, 0x0

    .line 377
    const/4 v9, 0x0

    .line 378
    move-object/from16 v4, p0

    .line 380
    move-object v5, v2

    .line 381
    move-object v6, v15

    .line 382
    move-object v8, v12

    .line 383
    invoke-virtual/range {v4 .. v9}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 386
    iget-object v3, v2, Llg;->e:Lqp;

    .line 388
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 390
    invoke-virtual {v2}, Llg;->R()I

    .line 393
    move-result v4

    .line 394
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 397
    iget-object v3, v2, Llg;->f:Luk0;

    .line 399
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 401
    invoke-virtual {v2}, Llg;->v()I

    .line 404
    move-result v4

    .line 405
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 408
    iput-boolean v10, v2, Llg;->a:Z

    .line 410
    goto/16 :goto_0

    .line 412
    :cond_17
    if-ne v12, v6, :cond_20

    .line 414
    sget-object v11, Llg$b;->b:Llg$b;

    .line 416
    if-eq v8, v11, :cond_18

    .line 418
    sget-object v7, Llg$b;->a:Llg$b;

    .line 420
    if-ne v8, v7, :cond_20

    .line 422
    :cond_18
    if-ne v13, v9, :cond_1b

    .line 424
    if-ne v8, v11, :cond_19

    .line 426
    const/4 v7, 0x0

    .line 427
    const/4 v9, 0x0

    .line 428
    move-object/from16 v4, p0

    .line 430
    move-object v5, v2

    .line 431
    move-object v6, v11

    .line 432
    move-object v8, v11

    .line 433
    invoke-virtual/range {v4 .. v9}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 436
    :cond_19
    invoke-virtual {v2}, Llg;->R()I

    .line 439
    move-result v7

    .line 440
    iget v3, v2, Llg;->W:F

    .line 442
    invoke-virtual {v2}, Llg;->u()I

    .line 445
    move-result v4

    .line 446
    const/4 v5, -0x1

    .line 447
    if-ne v4, v5, :cond_1a

    .line 449
    const/high16 v4, 0x3f800000    # 1.0f

    .line 451
    div-float v3, v4, v3

    .line 453
    :cond_1a
    int-to-float v4, v7

    .line 454
    mul-float v4, v4, v3

    .line 456
    add-float/2addr v4, v14

    .line 457
    float-to-int v9, v4

    .line 458
    sget-object v8, Llg$b;->a:Llg$b;

    .line 460
    move-object/from16 v4, p0

    .line 462
    move-object v5, v2

    .line 463
    move-object v6, v8

    .line 464
    invoke-virtual/range {v4 .. v9}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 467
    iget-object v3, v2, Llg;->e:Lqp;

    .line 469
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 471
    invoke-virtual {v2}, Llg;->R()I

    .line 474
    move-result v4

    .line 475
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 478
    iget-object v3, v2, Llg;->f:Luk0;

    .line 480
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 482
    invoke-virtual {v2}, Llg;->v()I

    .line 485
    move-result v4

    .line 486
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 489
    iput-boolean v10, v2, Llg;->a:Z

    .line 491
    goto/16 :goto_0

    .line 493
    :cond_1b
    if-ne v13, v10, :cond_1c

    .line 495
    const/4 v7, 0x0

    .line 496
    const/4 v9, 0x0

    .line 497
    move-object/from16 v4, p0

    .line 499
    move-object v5, v2

    .line 500
    move-object v6, v8

    .line 501
    move-object v8, v11

    .line 502
    invoke-virtual/range {v4 .. v9}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 505
    iget-object v3, v2, Llg;->f:Luk0;

    .line 507
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 509
    invoke-virtual {v2}, Llg;->v()I

    .line 512
    move-result v2

    .line 513
    iput v2, v3, Lhj;->m:I

    .line 515
    goto/16 :goto_0

    .line 517
    :cond_1c
    const/4 v7, 0x2

    .line 518
    if-ne v13, v7, :cond_1e

    .line 520
    iget-object v7, v0, Llg;->S:[Llg$b;

    .line 522
    aget-object v7, v7, v10

    .line 524
    sget-object v9, Llg$b;->a:Llg$b;

    .line 526
    if-eq v7, v9, :cond_1d

    .line 528
    if-ne v7, v4, :cond_20

    .line 530
    :cond_1d
    iget v3, v2, Llg;->x:F

    .line 532
    invoke-virtual {v2}, Llg;->R()I

    .line 535
    move-result v7

    .line 536
    invoke-virtual/range {p1 .. p1}, Llg;->v()I

    .line 539
    move-result v4

    .line 540
    int-to-float v4, v4

    .line 541
    mul-float v3, v3, v4

    .line 543
    add-float/2addr v3, v14

    .line 544
    float-to-int v3, v3

    .line 545
    move-object/from16 v4, p0

    .line 547
    move-object v5, v2

    .line 548
    move-object v6, v8

    .line 549
    move-object v8, v9

    .line 550
    move v9, v3

    .line 551
    invoke-virtual/range {v4 .. v9}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 554
    iget-object v3, v2, Llg;->e:Lqp;

    .line 556
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 558
    invoke-virtual {v2}, Llg;->R()I

    .line 561
    move-result v4

    .line 562
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 565
    iget-object v3, v2, Llg;->f:Luk0;

    .line 567
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 569
    invoke-virtual {v2}, Llg;->v()I

    .line 572
    move-result v4

    .line 573
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 576
    iput-boolean v10, v2, Llg;->a:Z

    .line 578
    goto/16 :goto_0

    .line 580
    :cond_1e
    iget-object v4, v2, Llg;->P:[Lfg;

    .line 582
    const/4 v7, 0x2

    .line 583
    aget-object v15, v4, v7

    .line 585
    iget-object v7, v15, Lfg;->f:Lfg;

    .line 587
    if-eqz v7, :cond_1f

    .line 589
    aget-object v4, v4, v9

    .line 591
    iget-object v4, v4, Lfg;->f:Lfg;

    .line 593
    if-nez v4, :cond_20

    .line 595
    :cond_1f
    const/4 v7, 0x0

    .line 596
    const/4 v9, 0x0

    .line 597
    move-object/from16 v4, p0

    .line 599
    move-object v5, v2

    .line 600
    move-object v6, v11

    .line 601
    move-object v8, v12

    .line 602
    invoke-virtual/range {v4 .. v9}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 605
    iget-object v3, v2, Llg;->e:Lqp;

    .line 607
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 609
    invoke-virtual {v2}, Llg;->R()I

    .line 612
    move-result v4

    .line 613
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 616
    iget-object v3, v2, Llg;->f:Luk0;

    .line 618
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 620
    invoke-virtual {v2}, Llg;->v()I

    .line 623
    move-result v4

    .line 624
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 627
    iput-boolean v10, v2, Llg;->a:Z

    .line 629
    goto/16 :goto_0

    .line 631
    :cond_20
    if-ne v8, v6, :cond_0

    .line 633
    if-ne v12, v6, :cond_0

    .line 635
    if-eq v5, v10, :cond_24

    .line 637
    if-ne v13, v10, :cond_21

    .line 639
    goto :goto_2

    .line 640
    :cond_21
    const/4 v4, 0x2

    .line 641
    if-ne v13, v4, :cond_0

    .line 643
    if-ne v5, v4, :cond_0

    .line 645
    iget-object v4, v0, Llg;->S:[Llg$b;

    .line 647
    aget-object v3, v4, v3

    .line 649
    sget-object v8, Llg$b;->a:Llg$b;

    .line 651
    if-eq v3, v8, :cond_22

    .line 653
    if-ne v3, v8, :cond_0

    .line 655
    :cond_22
    aget-object v3, v4, v10

    .line 657
    if-eq v3, v8, :cond_23

    .line 659
    if-ne v3, v8, :cond_0

    .line 661
    :cond_23
    iget v3, v2, Llg;->u:F

    .line 663
    iget v4, v2, Llg;->x:F

    .line 665
    invoke-virtual/range {p1 .. p1}, Llg;->R()I

    .line 668
    move-result v5

    .line 669
    int-to-float v5, v5

    .line 670
    mul-float v3, v3, v5

    .line 672
    add-float/2addr v3, v14

    .line 673
    float-to-int v7, v3

    .line 674
    invoke-virtual/range {p1 .. p1}, Llg;->v()I

    .line 677
    move-result v3

    .line 678
    int-to-float v3, v3

    .line 679
    mul-float v4, v4, v3

    .line 681
    add-float/2addr v4, v14

    .line 682
    float-to-int v9, v4

    .line 683
    move-object/from16 v4, p0

    .line 685
    move-object v5, v2

    .line 686
    move-object v6, v8

    .line 687
    invoke-virtual/range {v4 .. v9}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 690
    iget-object v3, v2, Llg;->e:Lqp;

    .line 692
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 694
    invoke-virtual {v2}, Llg;->R()I

    .line 697
    move-result v4

    .line 698
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 701
    iget-object v3, v2, Llg;->f:Luk0;

    .line 703
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 705
    invoke-virtual {v2}, Llg;->v()I

    .line 708
    move-result v4

    .line 709
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 712
    iput-boolean v10, v2, Llg;->a:Z

    .line 714
    goto/16 :goto_0

    .line 716
    :cond_24
    :goto_2
    sget-object v8, Llg$b;->b:Llg$b;

    .line 718
    const/4 v7, 0x0

    .line 719
    const/4 v9, 0x0

    .line 720
    move-object/from16 v4, p0

    .line 722
    move-object v5, v2

    .line 723
    move-object v6, v8

    .line 724
    invoke-virtual/range {v4 .. v9}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 727
    iget-object v3, v2, Llg;->e:Lqp;

    .line 729
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 731
    invoke-virtual {v2}, Llg;->R()I

    .line 734
    move-result v4

    .line 735
    iput v4, v3, Lhj;->m:I

    .line 737
    iget-object v3, v2, Llg;->f:Luk0;

    .line 739
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 741
    invoke-virtual {v2}, Llg;->v()I

    .line 744
    move-result v2

    .line 745
    iput v2, v3, Lhj;->m:I

    .line 747
    goto/16 :goto_0

    .line 749
    :cond_25
    :goto_3
    invoke-virtual {v2}, Llg;->R()I

    .line 752
    move-result v3

    .line 753
    if-ne v8, v4, :cond_26

    .line 755
    invoke-virtual/range {p1 .. p1}, Llg;->R()I

    .line 758
    move-result v3

    .line 759
    iget-object v5, v2, Llg;->H:Lfg;

    .line 761
    iget v5, v5, Lfg;->g:I

    .line 763
    sub-int/2addr v3, v5

    .line 764
    iget-object v5, v2, Llg;->J:Lfg;

    .line 766
    iget v5, v5, Lfg;->g:I

    .line 768
    sub-int/2addr v3, v5

    .line 769
    sget-object v5, Llg$b;->a:Llg$b;

    .line 771
    move v7, v3

    .line 772
    move-object v6, v5

    .line 773
    goto :goto_4

    .line 774
    :cond_26
    move v7, v3

    .line 775
    move-object v6, v8

    .line 776
    :goto_4
    invoke-virtual {v2}, Llg;->v()I

    .line 779
    move-result v3

    .line 780
    if-ne v12, v4, :cond_27

    .line 782
    invoke-virtual/range {p1 .. p1}, Llg;->v()I

    .line 785
    move-result v3

    .line 786
    iget-object v4, v2, Llg;->I:Lfg;

    .line 788
    iget v4, v4, Lfg;->g:I

    .line 790
    sub-int/2addr v3, v4

    .line 791
    iget-object v4, v2, Llg;->K:Lfg;

    .line 793
    iget v4, v4, Lfg;->g:I

    .line 795
    sub-int/2addr v3, v4

    .line 796
    sget-object v4, Llg$b;->a:Llg$b;

    .line 798
    move v9, v3

    .line 799
    move-object v8, v4

    .line 800
    goto :goto_5

    .line 801
    :cond_27
    move v9, v3

    .line 802
    move-object v8, v12

    .line 803
    :goto_5
    move-object/from16 v4, p0

    .line 805
    move-object v5, v2

    .line 806
    invoke-virtual/range {v4 .. v9}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 809
    iget-object v3, v2, Llg;->e:Lqp;

    .line 811
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 813
    invoke-virtual {v2}, Llg;->R()I

    .line 816
    move-result v4

    .line 817
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 820
    iget-object v3, v2, Llg;->f:Luk0;

    .line 822
    iget-object v3, v3, Lkm0;->e:Lhj;

    .line 824
    invoke-virtual {v2}, Llg;->v()I

    .line 827
    move-result v4

    .line 828
    invoke-virtual {v3, v4}, Lhj;->d(I)V

    .line 831
    iput-boolean v10, v2, Llg;->a:Z

    .line 833
    goto/16 :goto_0

    .line 835
    :cond_28
    return v3
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lki;->e:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0, v0}, Lki;->d(Ljava/util/ArrayList;)V

    .line 6
    iget-object v0, p0, Lki;->i:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    const/4 v0, 0x0

    .line 12
    sput v0, Lpb0;->h:I

    .line 14
    iget-object v1, p0, Lki;->a:Lmg;

    .line 16
    iget-object v1, v1, Llg;->e:Lqp;

    .line 18
    iget-object v2, p0, Lki;->i:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {p0, v1, v0, v2}, Lki;->i(Lkm0;ILjava/util/ArrayList;)V

    .line 23
    iget-object v1, p0, Lki;->a:Lmg;

    .line 25
    iget-object v1, v1, Llg;->f:Luk0;

    .line 27
    const/4 v2, 0x1

    .line 28
    iget-object v3, p0, Lki;->i:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0, v1, v2, v3}, Lki;->i(Lkm0;ILjava/util/ArrayList;)V

    .line 33
    iput-boolean v0, p0, Lki;->b:Z

    .line 35
    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v0, p0, Lki;->d:Lmg;

    .line 6
    iget-object v0, v0, Llg;->e:Lqp;

    .line 8
    invoke-virtual {v0}, Lqp;->f()V

    .line 11
    iget-object v0, p0, Lki;->d:Lmg;

    .line 13
    iget-object v0, v0, Llg;->f:Luk0;

    .line 15
    invoke-virtual {v0}, Luk0;->f()V

    .line 18
    iget-object v0, p0, Lki;->d:Lmg;

    .line 20
    iget-object v0, v0, Llg;->e:Lqp;

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lki;->d:Lmg;

    .line 27
    iget-object v0, v0, Llg;->f:Luk0;

    .line 29
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lki;->d:Lmg;

    .line 34
    iget-object v0, v0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x0

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_8

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Llg;

    .line 53
    instance-of v3, v2, Lro;

    .line 55
    if-eqz v3, :cond_1

    .line 57
    new-instance v3, Lto;

    .line 59
    invoke-direct {v3, v2}, Lto;-><init>(Llg;)V

    .line 62
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v2}, Llg;->Z()Z

    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_4

    .line 72
    iget-object v3, v2, Llg;->c:Lne;

    .line 74
    if-nez v3, :cond_2

    .line 76
    new-instance v3, Lne;

    .line 78
    const/4 v4, 0x0

    .line 79
    invoke-direct {v3, v2, v4}, Lne;-><init>(Llg;I)V

    .line 82
    iput-object v3, v2, Llg;->c:Lne;

    .line 84
    :cond_2
    if-nez v1, :cond_3

    .line 86
    new-instance v1, Ljava/util/HashSet;

    .line 88
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 91
    :cond_3
    iget-object v3, v2, Llg;->c:Lne;

    .line 93
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    iget-object v3, v2, Llg;->e:Lqp;

    .line 99
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_1
    invoke-virtual {v2}, Llg;->b0()Z

    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_7

    .line 108
    iget-object v3, v2, Llg;->d:Lne;

    .line 110
    if-nez v3, :cond_5

    .line 112
    new-instance v3, Lne;

    .line 114
    const/4 v4, 0x1

    .line 115
    invoke-direct {v3, v2, v4}, Lne;-><init>(Llg;I)V

    .line 118
    iput-object v3, v2, Llg;->d:Lne;

    .line 120
    :cond_5
    if-nez v1, :cond_6

    .line 122
    new-instance v1, Ljava/util/HashSet;

    .line 124
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 127
    :cond_6
    iget-object v3, v2, Llg;->d:Lne;

    .line 129
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    goto :goto_2

    .line 133
    :cond_7
    iget-object v3, v2, Llg;->f:Luk0;

    .line 135
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_2
    instance-of v3, v2, Lgp;

    .line 140
    if-eqz v3, :cond_0

    .line 142
    new-instance v3, Lfp;

    .line 144
    invoke-direct {v3, v2}, Lfp;-><init>(Llg;)V

    .line 147
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    goto :goto_0

    .line 151
    :cond_8
    if-eqz v1, :cond_9

    .line 153
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 159
    move-result-object v0

    .line 160
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_a

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Lkm0;

    .line 172
    invoke-virtual {v1}, Lkm0;->f()V

    .line 175
    goto :goto_3

    .line 176
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 179
    move-result-object p1

    .line 180
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_c

    .line 186
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Lkm0;

    .line 192
    iget-object v1, v0, Lkm0;->b:Llg;

    .line 194
    iget-object v2, p0, Lki;->d:Lmg;

    .line 196
    if-ne v1, v2, :cond_b

    .line 198
    goto :goto_4

    .line 199
    :cond_b
    invoke-virtual {v0}, Lkm0;->d()V

    .line 202
    goto :goto_4

    .line 203
    :cond_c
    return-void
.end method

.method public final e(Lmg;I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lki;->i:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v0, :cond_0

    .line 12
    iget-object v4, p0, Lki;->i:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lpb0;

    .line 20
    invoke-virtual {v4, p1, p2}, Lpb0;->b(Lmg;I)J

    .line 23
    move-result-wide v4

    .line 24
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 27
    move-result-wide v1

    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    long-to-int p1, v1

    .line 32
    return p1
.end method

.method public f(Z)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p1, v0

    .line 3
    iget-boolean v1, p0, Lki;->b:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget-boolean v1, p0, Lki;->c:Z

    .line 10
    if-eqz v1, :cond_2

    .line 12
    :cond_0
    iget-object v1, p0, Lki;->a:Lmg;

    .line 14
    iget-object v1, v1, Lwl0;->D0:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Llg;

    .line 32
    invoke-virtual {v3}, Llg;->l()V

    .line 35
    iput-boolean v2, v3, Llg;->a:Z

    .line 37
    iget-object v4, v3, Llg;->e:Lqp;

    .line 39
    invoke-virtual {v4}, Lqp;->r()V

    .line 42
    iget-object v3, v3, Llg;->f:Luk0;

    .line 44
    invoke-virtual {v3}, Luk0;->q()V

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lki;->a:Lmg;

    .line 50
    invoke-virtual {v1}, Llg;->l()V

    .line 53
    iget-object v1, p0, Lki;->a:Lmg;

    .line 55
    iput-boolean v2, v1, Llg;->a:Z

    .line 57
    iget-object v1, v1, Llg;->e:Lqp;

    .line 59
    invoke-virtual {v1}, Lqp;->r()V

    .line 62
    iget-object v1, p0, Lki;->a:Lmg;

    .line 64
    iget-object v1, v1, Llg;->f:Luk0;

    .line 66
    invoke-virtual {v1}, Luk0;->q()V

    .line 69
    iput-boolean v2, p0, Lki;->c:Z

    .line 71
    :cond_2
    iget-object v1, p0, Lki;->d:Lmg;

    .line 73
    invoke-virtual {p0, v1}, Lki;->b(Lmg;)Z

    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 79
    return v2

    .line 80
    :cond_3
    iget-object v1, p0, Lki;->a:Lmg;

    .line 82
    invoke-virtual {v1, v2}, Llg;->U0(I)V

    .line 85
    iget-object v1, p0, Lki;->a:Lmg;

    .line 87
    invoke-virtual {v1, v2}, Llg;->V0(I)V

    .line 90
    iget-object v1, p0, Lki;->a:Lmg;

    .line 92
    invoke-virtual {v1, v2}, Llg;->s(I)Llg$b;

    .line 95
    move-result-object v1

    .line 96
    iget-object v3, p0, Lki;->a:Lmg;

    .line 98
    invoke-virtual {v3, v0}, Llg;->s(I)Llg$b;

    .line 101
    move-result-object v3

    .line 102
    iget-boolean v4, p0, Lki;->b:Z

    .line 104
    if-eqz v4, :cond_4

    .line 106
    invoke-virtual {p0}, Lki;->c()V

    .line 109
    :cond_4
    iget-object v4, p0, Lki;->a:Lmg;

    .line 111
    invoke-virtual {v4}, Llg;->S()I

    .line 114
    move-result v4

    .line 115
    iget-object v5, p0, Lki;->a:Lmg;

    .line 117
    invoke-virtual {v5}, Llg;->T()I

    .line 120
    move-result v5

    .line 121
    iget-object v6, p0, Lki;->a:Lmg;

    .line 123
    iget-object v6, v6, Llg;->e:Lqp;

    .line 125
    iget-object v6, v6, Lkm0;->h:Lli;

    .line 127
    invoke-virtual {v6, v4}, Lli;->d(I)V

    .line 130
    iget-object v6, p0, Lki;->a:Lmg;

    .line 132
    iget-object v6, v6, Llg;->f:Luk0;

    .line 134
    iget-object v6, v6, Lkm0;->h:Lli;

    .line 136
    invoke-virtual {v6, v5}, Lli;->d(I)V

    .line 139
    invoke-virtual {p0}, Lki;->m()V

    .line 142
    sget-object v6, Llg$b;->b:Llg$b;

    .line 144
    if-eq v1, v6, :cond_5

    .line 146
    if-ne v3, v6, :cond_9

    .line 148
    :cond_5
    if-eqz p1, :cond_7

    .line 150
    iget-object v6, p0, Lki;->e:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object v6

    .line 156
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_7

    .line 162
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v7

    .line 166
    check-cast v7, Lkm0;

    .line 168
    invoke-virtual {v7}, Lkm0;->m()Z

    .line 171
    move-result v7

    .line 172
    if-nez v7, :cond_6

    .line 174
    const/4 p1, 0x0

    .line 175
    :cond_7
    if-eqz p1, :cond_8

    .line 177
    sget-object v6, Llg$b;->b:Llg$b;

    .line 179
    if-ne v1, v6, :cond_8

    .line 181
    iget-object v6, p0, Lki;->a:Lmg;

    .line 183
    sget-object v7, Llg$b;->a:Llg$b;

    .line 185
    invoke-virtual {v6, v7}, Llg;->z0(Llg$b;)V

    .line 188
    iget-object v6, p0, Lki;->a:Lmg;

    .line 190
    invoke-virtual {p0, v6, v2}, Lki;->e(Lmg;I)I

    .line 193
    move-result v7

    .line 194
    invoke-virtual {v6, v7}, Llg;->T0(I)V

    .line 197
    iget-object v6, p0, Lki;->a:Lmg;

    .line 199
    iget-object v7, v6, Llg;->e:Lqp;

    .line 201
    iget-object v7, v7, Lkm0;->e:Lhj;

    .line 203
    invoke-virtual {v6}, Llg;->R()I

    .line 206
    move-result v6

    .line 207
    invoke-virtual {v7, v6}, Lhj;->d(I)V

    .line 210
    :cond_8
    if-eqz p1, :cond_9

    .line 212
    sget-object p1, Llg$b;->b:Llg$b;

    .line 214
    if-ne v3, p1, :cond_9

    .line 216
    iget-object p1, p0, Lki;->a:Lmg;

    .line 218
    sget-object v6, Llg$b;->a:Llg$b;

    .line 220
    invoke-virtual {p1, v6}, Llg;->P0(Llg$b;)V

    .line 223
    iget-object p1, p0, Lki;->a:Lmg;

    .line 225
    invoke-virtual {p0, p1, v0}, Lki;->e(Lmg;I)I

    .line 228
    move-result v6

    .line 229
    invoke-virtual {p1, v6}, Llg;->v0(I)V

    .line 232
    iget-object p1, p0, Lki;->a:Lmg;

    .line 234
    iget-object v6, p1, Llg;->f:Luk0;

    .line 236
    iget-object v6, v6, Lkm0;->e:Lhj;

    .line 238
    invoke-virtual {p1}, Llg;->v()I

    .line 241
    move-result p1

    .line 242
    invoke-virtual {v6, p1}, Lhj;->d(I)V

    .line 245
    :cond_9
    iget-object p1, p0, Lki;->a:Lmg;

    .line 247
    iget-object v6, p1, Llg;->S:[Llg$b;

    .line 249
    aget-object v6, v6, v2

    .line 251
    sget-object v7, Llg$b;->a:Llg$b;

    .line 253
    if-eq v6, v7, :cond_b

    .line 255
    sget-object v8, Llg$b;->d:Llg$b;

    .line 257
    if-ne v6, v8, :cond_a

    .line 259
    goto :goto_1

    .line 260
    :cond_a
    const/4 p1, 0x0

    .line 261
    goto :goto_2

    .line 262
    :cond_b
    :goto_1
    invoke-virtual {p1}, Llg;->R()I

    .line 265
    move-result p1

    .line 266
    add-int/2addr p1, v4

    .line 267
    iget-object v6, p0, Lki;->a:Lmg;

    .line 269
    iget-object v6, v6, Llg;->e:Lqp;

    .line 271
    iget-object v6, v6, Lkm0;->i:Lli;

    .line 273
    invoke-virtual {v6, p1}, Lli;->d(I)V

    .line 276
    iget-object v6, p0, Lki;->a:Lmg;

    .line 278
    iget-object v6, v6, Llg;->e:Lqp;

    .line 280
    iget-object v6, v6, Lkm0;->e:Lhj;

    .line 282
    sub-int/2addr p1, v4

    .line 283
    invoke-virtual {v6, p1}, Lhj;->d(I)V

    .line 286
    invoke-virtual {p0}, Lki;->m()V

    .line 289
    iget-object p1, p0, Lki;->a:Lmg;

    .line 291
    iget-object v4, p1, Llg;->S:[Llg$b;

    .line 293
    aget-object v4, v4, v0

    .line 295
    if-eq v4, v7, :cond_c

    .line 297
    sget-object v6, Llg$b;->d:Llg$b;

    .line 299
    if-ne v4, v6, :cond_d

    .line 301
    :cond_c
    invoke-virtual {p1}, Llg;->v()I

    .line 304
    move-result p1

    .line 305
    add-int/2addr p1, v5

    .line 306
    iget-object v4, p0, Lki;->a:Lmg;

    .line 308
    iget-object v4, v4, Llg;->f:Luk0;

    .line 310
    iget-object v4, v4, Lkm0;->i:Lli;

    .line 312
    invoke-virtual {v4, p1}, Lli;->d(I)V

    .line 315
    iget-object v4, p0, Lki;->a:Lmg;

    .line 317
    iget-object v4, v4, Llg;->f:Luk0;

    .line 319
    iget-object v4, v4, Lkm0;->e:Lhj;

    .line 321
    sub-int/2addr p1, v5

    .line 322
    invoke-virtual {v4, p1}, Lhj;->d(I)V

    .line 325
    :cond_d
    invoke-virtual {p0}, Lki;->m()V

    .line 328
    const/4 p1, 0x1

    .line 329
    :goto_2
    iget-object v4, p0, Lki;->e:Ljava/util/ArrayList;

    .line 331
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 334
    move-result-object v4

    .line 335
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 338
    move-result v5

    .line 339
    if-eqz v5, :cond_f

    .line 341
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 344
    move-result-object v5

    .line 345
    check-cast v5, Lkm0;

    .line 347
    iget-object v6, v5, Lkm0;->b:Llg;

    .line 349
    iget-object v7, p0, Lki;->a:Lmg;

    .line 351
    if-ne v6, v7, :cond_e

    .line 353
    iget-boolean v6, v5, Lkm0;->g:Z

    .line 355
    if-nez v6, :cond_e

    .line 357
    goto :goto_3

    .line 358
    :cond_e
    invoke-virtual {v5}, Lkm0;->e()V

    .line 361
    goto :goto_3

    .line 362
    :cond_f
    iget-object v4, p0, Lki;->e:Ljava/util/ArrayList;

    .line 364
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 367
    move-result-object v4

    .line 368
    :cond_10
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    move-result v5

    .line 372
    if-eqz v5, :cond_14

    .line 374
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    move-result-object v5

    .line 378
    check-cast v5, Lkm0;

    .line 380
    if-nez p1, :cond_11

    .line 382
    iget-object v6, v5, Lkm0;->b:Llg;

    .line 384
    iget-object v7, p0, Lki;->a:Lmg;

    .line 386
    if-ne v6, v7, :cond_11

    .line 388
    goto :goto_4

    .line 389
    :cond_11
    iget-object v6, v5, Lkm0;->h:Lli;

    .line 391
    iget-boolean v6, v6, Lli;->j:Z

    .line 393
    if-nez v6, :cond_12

    .line 395
    :goto_5
    const/4 v0, 0x0

    .line 396
    goto :goto_6

    .line 397
    :cond_12
    iget-object v6, v5, Lkm0;->i:Lli;

    .line 399
    iget-boolean v6, v6, Lli;->j:Z

    .line 401
    if-nez v6, :cond_13

    .line 403
    instance-of v6, v5, Lto;

    .line 405
    if-nez v6, :cond_13

    .line 407
    goto :goto_5

    .line 408
    :cond_13
    iget-object v6, v5, Lkm0;->e:Lhj;

    .line 410
    iget-boolean v6, v6, Lli;->j:Z

    .line 412
    if-nez v6, :cond_10

    .line 414
    instance-of v6, v5, Lne;

    .line 416
    if-nez v6, :cond_10

    .line 418
    instance-of v5, v5, Lto;

    .line 420
    if-nez v5, :cond_10

    .line 422
    goto :goto_5

    .line 423
    :cond_14
    :goto_6
    iget-object p1, p0, Lki;->a:Lmg;

    .line 425
    invoke-virtual {p1, v1}, Llg;->z0(Llg$b;)V

    .line 428
    iget-object p1, p0, Lki;->a:Lmg;

    .line 430
    invoke-virtual {p1, v3}, Llg;->P0(Llg$b;)V

    .line 433
    return v0
.end method

.method public g(Z)Z
    .locals 4

    .line 1
    iget-boolean p1, p0, Lki;->b:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lki;->a:Lmg;

    .line 8
    iget-object p1, p1, Lwl0;->D0:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Llg;

    .line 26
    invoke-virtual {v1}, Llg;->l()V

    .line 29
    iput-boolean v0, v1, Llg;->a:Z

    .line 31
    iget-object v2, v1, Llg;->e:Lqp;

    .line 33
    iget-object v3, v2, Lkm0;->e:Lhj;

    .line 35
    iput-boolean v0, v3, Lli;->j:Z

    .line 37
    iput-boolean v0, v2, Lkm0;->g:Z

    .line 39
    invoke-virtual {v2}, Lqp;->r()V

    .line 42
    iget-object v1, v1, Llg;->f:Luk0;

    .line 44
    iget-object v2, v1, Lkm0;->e:Lhj;

    .line 46
    iput-boolean v0, v2, Lli;->j:Z

    .line 48
    iput-boolean v0, v1, Lkm0;->g:Z

    .line 50
    invoke-virtual {v1}, Luk0;->q()V

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lki;->a:Lmg;

    .line 56
    invoke-virtual {p1}, Llg;->l()V

    .line 59
    iget-object p1, p0, Lki;->a:Lmg;

    .line 61
    iput-boolean v0, p1, Llg;->a:Z

    .line 63
    iget-object p1, p1, Llg;->e:Lqp;

    .line 65
    iget-object v1, p1, Lkm0;->e:Lhj;

    .line 67
    iput-boolean v0, v1, Lli;->j:Z

    .line 69
    iput-boolean v0, p1, Lkm0;->g:Z

    .line 71
    invoke-virtual {p1}, Lqp;->r()V

    .line 74
    iget-object p1, p0, Lki;->a:Lmg;

    .line 76
    iget-object p1, p1, Llg;->f:Luk0;

    .line 78
    iget-object v1, p1, Lkm0;->e:Lhj;

    .line 80
    iput-boolean v0, v1, Lli;->j:Z

    .line 82
    iput-boolean v0, p1, Lkm0;->g:Z

    .line 84
    invoke-virtual {p1}, Luk0;->q()V

    .line 87
    invoke-virtual {p0}, Lki;->c()V

    .line 90
    :cond_1
    iget-object p1, p0, Lki;->d:Lmg;

    .line 92
    invoke-virtual {p0, p1}, Lki;->b(Lmg;)Z

    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_2

    .line 98
    return v0

    .line 99
    :cond_2
    iget-object p1, p0, Lki;->a:Lmg;

    .line 101
    invoke-virtual {p1, v0}, Llg;->U0(I)V

    .line 104
    iget-object p1, p0, Lki;->a:Lmg;

    .line 106
    invoke-virtual {p1, v0}, Llg;->V0(I)V

    .line 109
    iget-object p1, p0, Lki;->a:Lmg;

    .line 111
    iget-object p1, p1, Llg;->e:Lqp;

    .line 113
    iget-object p1, p1, Lkm0;->h:Lli;

    .line 115
    invoke-virtual {p1, v0}, Lli;->d(I)V

    .line 118
    iget-object p1, p0, Lki;->a:Lmg;

    .line 120
    iget-object p1, p1, Llg;->f:Luk0;

    .line 122
    iget-object p1, p1, Lkm0;->h:Lli;

    .line 124
    invoke-virtual {p1, v0}, Lli;->d(I)V

    .line 127
    const/4 p1, 0x1

    .line 128
    return p1
.end method

.method public h(ZI)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p1, v0

    .line 3
    iget-object v1, p0, Lki;->a:Lmg;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Llg;->s(I)Llg$b;

    .line 9
    move-result-object v1

    .line 10
    iget-object v3, p0, Lki;->a:Lmg;

    .line 12
    invoke-virtual {v3, v0}, Llg;->s(I)Llg$b;

    .line 15
    move-result-object v3

    .line 16
    iget-object v4, p0, Lki;->a:Lmg;

    .line 18
    invoke-virtual {v4}, Llg;->S()I

    .line 21
    move-result v4

    .line 22
    iget-object v5, p0, Lki;->a:Lmg;

    .line 24
    invoke-virtual {v5}, Llg;->T()I

    .line 27
    move-result v5

    .line 28
    if-eqz p1, :cond_4

    .line 30
    sget-object v6, Llg$b;->b:Llg$b;

    .line 32
    if-eq v1, v6, :cond_0

    .line 34
    if-ne v3, v6, :cond_4

    .line 36
    :cond_0
    iget-object v6, p0, Lki;->e:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v6

    .line 42
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v7

    .line 46
    if-eqz v7, :cond_2

    .line 48
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v7

    .line 52
    check-cast v7, Lkm0;

    .line 54
    iget v8, v7, Lkm0;->f:I

    .line 56
    if-ne v8, p2, :cond_1

    .line 58
    invoke-virtual {v7}, Lkm0;->m()Z

    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_1

    .line 64
    const/4 p1, 0x0

    .line 65
    :cond_2
    if-nez p2, :cond_3

    .line 67
    if-eqz p1, :cond_4

    .line 69
    sget-object p1, Llg$b;->b:Llg$b;

    .line 71
    if-ne v1, p1, :cond_4

    .line 73
    iget-object p1, p0, Lki;->a:Lmg;

    .line 75
    sget-object v6, Llg$b;->a:Llg$b;

    .line 77
    invoke-virtual {p1, v6}, Llg;->z0(Llg$b;)V

    .line 80
    iget-object p1, p0, Lki;->a:Lmg;

    .line 82
    invoke-virtual {p0, p1, v2}, Lki;->e(Lmg;I)I

    .line 85
    move-result v6

    .line 86
    invoke-virtual {p1, v6}, Llg;->T0(I)V

    .line 89
    iget-object p1, p0, Lki;->a:Lmg;

    .line 91
    iget-object v6, p1, Llg;->e:Lqp;

    .line 93
    iget-object v6, v6, Lkm0;->e:Lhj;

    .line 95
    invoke-virtual {p1}, Llg;->R()I

    .line 98
    move-result p1

    .line 99
    invoke-virtual {v6, p1}, Lhj;->d(I)V

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    if-eqz p1, :cond_4

    .line 105
    sget-object p1, Llg$b;->b:Llg$b;

    .line 107
    if-ne v3, p1, :cond_4

    .line 109
    iget-object p1, p0, Lki;->a:Lmg;

    .line 111
    sget-object v6, Llg$b;->a:Llg$b;

    .line 113
    invoke-virtual {p1, v6}, Llg;->P0(Llg$b;)V

    .line 116
    iget-object p1, p0, Lki;->a:Lmg;

    .line 118
    invoke-virtual {p0, p1, v0}, Lki;->e(Lmg;I)I

    .line 121
    move-result v6

    .line 122
    invoke-virtual {p1, v6}, Llg;->v0(I)V

    .line 125
    iget-object p1, p0, Lki;->a:Lmg;

    .line 127
    iget-object v6, p1, Llg;->f:Luk0;

    .line 129
    iget-object v6, v6, Lkm0;->e:Lhj;

    .line 131
    invoke-virtual {p1}, Llg;->v()I

    .line 134
    move-result p1

    .line 135
    invoke-virtual {v6, p1}, Lhj;->d(I)V

    .line 138
    :cond_4
    :goto_0
    if-nez p2, :cond_6

    .line 140
    iget-object p1, p0, Lki;->a:Lmg;

    .line 142
    iget-object v5, p1, Llg;->S:[Llg$b;

    .line 144
    aget-object v5, v5, v2

    .line 146
    sget-object v6, Llg$b;->a:Llg$b;

    .line 148
    if-eq v5, v6, :cond_5

    .line 150
    sget-object v6, Llg$b;->d:Llg$b;

    .line 152
    if-ne v5, v6, :cond_7

    .line 154
    :cond_5
    invoke-virtual {p1}, Llg;->R()I

    .line 157
    move-result p1

    .line 158
    add-int/2addr p1, v4

    .line 159
    iget-object v5, p0, Lki;->a:Lmg;

    .line 161
    iget-object v5, v5, Llg;->e:Lqp;

    .line 163
    iget-object v5, v5, Lkm0;->i:Lli;

    .line 165
    invoke-virtual {v5, p1}, Lli;->d(I)V

    .line 168
    iget-object v5, p0, Lki;->a:Lmg;

    .line 170
    iget-object v5, v5, Llg;->e:Lqp;

    .line 172
    iget-object v5, v5, Lkm0;->e:Lhj;

    .line 174
    sub-int/2addr p1, v4

    .line 175
    invoke-virtual {v5, p1}, Lhj;->d(I)V

    .line 178
    goto :goto_2

    .line 179
    :cond_6
    iget-object p1, p0, Lki;->a:Lmg;

    .line 181
    iget-object v4, p1, Llg;->S:[Llg$b;

    .line 183
    aget-object v4, v4, v0

    .line 185
    sget-object v6, Llg$b;->a:Llg$b;

    .line 187
    if-eq v4, v6, :cond_8

    .line 189
    sget-object v6, Llg$b;->d:Llg$b;

    .line 191
    if-ne v4, v6, :cond_7

    .line 193
    goto :goto_1

    .line 194
    :cond_7
    const/4 p1, 0x0

    .line 195
    goto :goto_3

    .line 196
    :cond_8
    :goto_1
    invoke-virtual {p1}, Llg;->v()I

    .line 199
    move-result p1

    .line 200
    add-int/2addr p1, v5

    .line 201
    iget-object v4, p0, Lki;->a:Lmg;

    .line 203
    iget-object v4, v4, Llg;->f:Luk0;

    .line 205
    iget-object v4, v4, Lkm0;->i:Lli;

    .line 207
    invoke-virtual {v4, p1}, Lli;->d(I)V

    .line 210
    iget-object v4, p0, Lki;->a:Lmg;

    .line 212
    iget-object v4, v4, Llg;->f:Luk0;

    .line 214
    iget-object v4, v4, Lkm0;->e:Lhj;

    .line 216
    sub-int/2addr p1, v5

    .line 217
    invoke-virtual {v4, p1}, Lhj;->d(I)V

    .line 220
    :goto_2
    const/4 p1, 0x1

    .line 221
    :goto_3
    invoke-virtual {p0}, Lki;->m()V

    .line 224
    iget-object v4, p0, Lki;->e:Ljava/util/ArrayList;

    .line 226
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 229
    move-result-object v4

    .line 230
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    move-result v5

    .line 234
    if-eqz v5, :cond_b

    .line 236
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    move-result-object v5

    .line 240
    check-cast v5, Lkm0;

    .line 242
    iget v6, v5, Lkm0;->f:I

    .line 244
    if-eq v6, p2, :cond_9

    .line 246
    goto :goto_4

    .line 247
    :cond_9
    iget-object v6, v5, Lkm0;->b:Llg;

    .line 249
    iget-object v7, p0, Lki;->a:Lmg;

    .line 251
    if-ne v6, v7, :cond_a

    .line 253
    iget-boolean v6, v5, Lkm0;->g:Z

    .line 255
    if-nez v6, :cond_a

    .line 257
    goto :goto_4

    .line 258
    :cond_a
    invoke-virtual {v5}, Lkm0;->e()V

    .line 261
    goto :goto_4

    .line 262
    :cond_b
    iget-object v4, p0, Lki;->e:Ljava/util/ArrayList;

    .line 264
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 267
    move-result-object v4

    .line 268
    :cond_c
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    move-result v5

    .line 272
    if-eqz v5, :cond_11

    .line 274
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    move-result-object v5

    .line 278
    check-cast v5, Lkm0;

    .line 280
    iget v6, v5, Lkm0;->f:I

    .line 282
    if-eq v6, p2, :cond_d

    .line 284
    goto :goto_5

    .line 285
    :cond_d
    if-nez p1, :cond_e

    .line 287
    iget-object v6, v5, Lkm0;->b:Llg;

    .line 289
    iget-object v7, p0, Lki;->a:Lmg;

    .line 291
    if-ne v6, v7, :cond_e

    .line 293
    goto :goto_5

    .line 294
    :cond_e
    iget-object v6, v5, Lkm0;->h:Lli;

    .line 296
    iget-boolean v6, v6, Lli;->j:Z

    .line 298
    if-nez v6, :cond_f

    .line 300
    :goto_6
    const/4 v0, 0x0

    .line 301
    goto :goto_7

    .line 302
    :cond_f
    iget-object v6, v5, Lkm0;->i:Lli;

    .line 304
    iget-boolean v6, v6, Lli;->j:Z

    .line 306
    if-nez v6, :cond_10

    .line 308
    goto :goto_6

    .line 309
    :cond_10
    instance-of v6, v5, Lne;

    .line 311
    if-nez v6, :cond_c

    .line 313
    iget-object v5, v5, Lkm0;->e:Lhj;

    .line 315
    iget-boolean v5, v5, Lli;->j:Z

    .line 317
    if-nez v5, :cond_c

    .line 319
    goto :goto_6

    .line 320
    :cond_11
    :goto_7
    iget-object p1, p0, Lki;->a:Lmg;

    .line 322
    invoke-virtual {p1, v1}, Llg;->z0(Llg$b;)V

    .line 325
    iget-object p1, p0, Lki;->a:Lmg;

    .line 327
    invoke-virtual {p1, v3}, Llg;->P0(Llg$b;)V

    .line 330
    return v0
.end method

.method public final i(Lkm0;ILjava/util/ArrayList;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lkm0;->h:Lli;

    .line 3
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lji;

    .line 21
    instance-of v2, v1, Lli;

    .line 23
    if-eqz v2, :cond_1

    .line 25
    move-object v4, v1

    .line 26
    check-cast v4, Lli;

    .line 28
    const/4 v6, 0x0

    .line 29
    iget-object v7, p1, Lkm0;->i:Lli;

    .line 31
    const/4 v9, 0x0

    .line 32
    move-object v3, p0

    .line 33
    move v5, p2

    .line 34
    move-object v8, p3

    .line 35
    invoke-virtual/range {v3 .. v9}, Lki;->a(Lli;IILli;Ljava/util/ArrayList;Lpb0;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    instance-of v2, v1, Lkm0;

    .line 41
    if-eqz v2, :cond_0

    .line 43
    check-cast v1, Lkm0;

    .line 45
    iget-object v3, v1, Lkm0;->h:Lli;

    .line 47
    const/4 v5, 0x0

    .line 48
    iget-object v6, p1, Lkm0;->i:Lli;

    .line 50
    const/4 v8, 0x0

    .line 51
    move-object v2, p0

    .line 52
    move v4, p2

    .line 53
    move-object v7, p3

    .line 54
    invoke-virtual/range {v2 .. v8}, Lki;->a(Lli;IILli;Ljava/util/ArrayList;Lpb0;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p1, Lkm0;->i:Lli;

    .line 60
    iget-object v0, v0, Lli;->k:Ljava/util/List;

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v0

    .line 66
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_5

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lji;

    .line 78
    instance-of v2, v1, Lli;

    .line 80
    if-eqz v2, :cond_4

    .line 82
    move-object v4, v1

    .line 83
    check-cast v4, Lli;

    .line 85
    const/4 v6, 0x1

    .line 86
    iget-object v7, p1, Lkm0;->h:Lli;

    .line 88
    const/4 v9, 0x0

    .line 89
    move-object v3, p0

    .line 90
    move v5, p2

    .line 91
    move-object v8, p3

    .line 92
    invoke-virtual/range {v3 .. v9}, Lki;->a(Lli;IILli;Ljava/util/ArrayList;Lpb0;)V

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    instance-of v2, v1, Lkm0;

    .line 98
    if-eqz v2, :cond_3

    .line 100
    check-cast v1, Lkm0;

    .line 102
    iget-object v3, v1, Lkm0;->i:Lli;

    .line 104
    const/4 v5, 0x1

    .line 105
    iget-object v6, p1, Lkm0;->h:Lli;

    .line 107
    const/4 v8, 0x0

    .line 108
    move-object v2, p0

    .line 109
    move v4, p2

    .line 110
    move-object v7, p3

    .line 111
    invoke-virtual/range {v2 .. v8}, Lki;->a(Lli;IILli;Ljava/util/ArrayList;Lpb0;)V

    .line 114
    goto :goto_1

    .line 115
    :cond_5
    const/4 v0, 0x1

    .line 116
    if-ne p2, v0, :cond_7

    .line 118
    check-cast p1, Luk0;

    .line 120
    iget-object p1, p1, Luk0;->k:Lli;

    .line 122
    iget-object p1, p1, Lli;->k:Ljava/util/List;

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    move-result-object p1

    .line 128
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_7

    .line 134
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lji;

    .line 140
    instance-of v1, v0, Lli;

    .line 142
    if-eqz v1, :cond_6

    .line 144
    move-object v3, v0

    .line 145
    check-cast v3, Lli;

    .line 147
    const/4 v5, 0x2

    .line 148
    const/4 v6, 0x0

    .line 149
    const/4 v8, 0x0

    .line 150
    move-object v2, p0

    .line 151
    move v4, p2

    .line 152
    move-object v7, p3

    .line 153
    invoke-virtual/range {v2 .. v8}, Lki;->a(Lli;IILli;Ljava/util/ArrayList;Lpb0;)V

    .line 156
    goto :goto_2

    .line 157
    :cond_7
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lki;->b:Z

    .line 4
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lki;->c:Z

    .line 4
    return-void
.end method

.method public final l(Llg;Llg$b;ILlg$b;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lki;->h:Lsc$a;

    .line 3
    iput-object p2, v0, Lsc$a;->a:Llg$b;

    .line 5
    iput-object p4, v0, Lsc$a;->b:Llg$b;

    .line 7
    iput p3, v0, Lsc$a;->c:I

    .line 9
    iput p5, v0, Lsc$a;->d:I

    .line 11
    iget-object p2, p0, Lki;->g:Lsc$b;

    .line 13
    invoke-interface {p2, p1, v0}, Lsc$b;->b(Llg;Lsc$a;)V

    .line 16
    iget-object p2, p0, Lki;->h:Lsc$a;

    .line 18
    iget p2, p2, Lsc$a;->e:I

    .line 20
    invoke-virtual {p1, p2}, Llg;->T0(I)V

    .line 23
    iget-object p2, p0, Lki;->h:Lsc$a;

    .line 25
    iget p2, p2, Lsc$a;->f:I

    .line 27
    invoke-virtual {p1, p2}, Llg;->v0(I)V

    .line 30
    iget-object p2, p0, Lki;->h:Lsc$a;

    .line 32
    iget-boolean p2, p2, Lsc$a;->h:Z

    .line 34
    invoke-virtual {p1, p2}, Llg;->u0(Z)V

    .line 37
    iget-object p2, p0, Lki;->h:Lsc$a;

    .line 39
    iget p2, p2, Lsc$a;->g:I

    .line 41
    invoke-virtual {p1, p2}, Llg;->k0(I)V

    .line 44
    return-void
.end method

.method public m()V
    .locals 12

    .line 1
    iget-object v0, p0, Lki;->a:Lmg;

    .line 3
    iget-object v0, v0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_b

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Llg;

    .line 21
    iget-boolean v2, v1, Llg;->a:Z

    .line 23
    if-eqz v2, :cond_1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, v1, Llg;->S:[Llg$b;

    .line 28
    const/4 v3, 0x0

    .line 29
    aget-object v8, v2, v3

    .line 31
    const/4 v9, 0x1

    .line 32
    aget-object v10, v2, v9

    .line 34
    iget v2, v1, Llg;->p:I

    .line 36
    iget v4, v1, Llg;->q:I

    .line 38
    sget-object v6, Llg$b;->b:Llg$b;

    .line 40
    if-eq v8, v6, :cond_3

    .line 42
    sget-object v5, Llg$b;->c:Llg$b;

    .line 44
    if-ne v8, v5, :cond_2

    .line 46
    if-ne v2, v9, :cond_2

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 v2, 0x0

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 52
    :goto_2
    if-eq v10, v6, :cond_4

    .line 54
    sget-object v5, Llg$b;->c:Llg$b;

    .line 56
    if-ne v10, v5, :cond_5

    .line 58
    if-ne v4, v9, :cond_5

    .line 60
    :cond_4
    const/4 v3, 0x1

    .line 61
    :cond_5
    iget-object v4, v1, Llg;->e:Lqp;

    .line 63
    iget-object v4, v4, Lkm0;->e:Lhj;

    .line 65
    iget-boolean v5, v4, Lli;->j:Z

    .line 67
    iget-object v7, v1, Llg;->f:Luk0;

    .line 69
    iget-object v7, v7, Lkm0;->e:Lhj;

    .line 71
    iget-boolean v11, v7, Lli;->j:Z

    .line 73
    if-eqz v5, :cond_6

    .line 75
    if-eqz v11, :cond_6

    .line 77
    sget-object v6, Llg$b;->a:Llg$b;

    .line 79
    iget v5, v4, Lli;->g:I

    .line 81
    iget v7, v7, Lli;->g:I

    .line 83
    move-object v2, p0

    .line 84
    move-object v3, v1

    .line 85
    move-object v4, v6

    .line 86
    invoke-virtual/range {v2 .. v7}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 89
    iput-boolean v9, v1, Llg;->a:Z

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    if-eqz v5, :cond_8

    .line 94
    if-eqz v3, :cond_8

    .line 96
    sget-object v5, Llg$b;->a:Llg$b;

    .line 98
    iget v8, v4, Lli;->g:I

    .line 100
    iget v7, v7, Lli;->g:I

    .line 102
    move-object v2, p0

    .line 103
    move-object v3, v1

    .line 104
    move-object v4, v5

    .line 105
    move v5, v8

    .line 106
    invoke-virtual/range {v2 .. v7}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 109
    sget-object v2, Llg$b;->c:Llg$b;

    .line 111
    if-ne v10, v2, :cond_7

    .line 113
    iget-object v2, v1, Llg;->f:Luk0;

    .line 115
    iget-object v2, v2, Lkm0;->e:Lhj;

    .line 117
    invoke-virtual {v1}, Llg;->v()I

    .line 120
    move-result v3

    .line 121
    iput v3, v2, Lhj;->m:I

    .line 123
    goto :goto_3

    .line 124
    :cond_7
    iget-object v2, v1, Llg;->f:Luk0;

    .line 126
    iget-object v2, v2, Lkm0;->e:Lhj;

    .line 128
    invoke-virtual {v1}, Llg;->v()I

    .line 131
    move-result v3

    .line 132
    invoke-virtual {v2, v3}, Lhj;->d(I)V

    .line 135
    iput-boolean v9, v1, Llg;->a:Z

    .line 137
    goto :goto_3

    .line 138
    :cond_8
    if-eqz v11, :cond_a

    .line 140
    if-eqz v2, :cond_a

    .line 142
    iget v5, v4, Lli;->g:I

    .line 144
    sget-object v10, Llg$b;->a:Llg$b;

    .line 146
    iget v7, v7, Lli;->g:I

    .line 148
    move-object v2, p0

    .line 149
    move-object v3, v1

    .line 150
    move-object v4, v6

    .line 151
    move-object v6, v10

    .line 152
    invoke-virtual/range {v2 .. v7}, Lki;->l(Llg;Llg$b;ILlg$b;I)V

    .line 155
    sget-object v2, Llg$b;->c:Llg$b;

    .line 157
    if-ne v8, v2, :cond_9

    .line 159
    iget-object v2, v1, Llg;->e:Lqp;

    .line 161
    iget-object v2, v2, Lkm0;->e:Lhj;

    .line 163
    invoke-virtual {v1}, Llg;->R()I

    .line 166
    move-result v3

    .line 167
    iput v3, v2, Lhj;->m:I

    .line 169
    goto :goto_3

    .line 170
    :cond_9
    iget-object v2, v1, Llg;->e:Lqp;

    .line 172
    iget-object v2, v2, Lkm0;->e:Lhj;

    .line 174
    invoke-virtual {v1}, Llg;->R()I

    .line 177
    move-result v3

    .line 178
    invoke-virtual {v2, v3}, Lhj;->d(I)V

    .line 181
    iput-boolean v9, v1, Llg;->a:Z

    .line 183
    :cond_a
    :goto_3
    iget-boolean v2, v1, Llg;->a:Z

    .line 185
    if-eqz v2, :cond_0

    .line 187
    iget-object v2, v1, Llg;->f:Luk0;

    .line 189
    iget-object v2, v2, Luk0;->l:Lhj;

    .line 191
    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v1}, Llg;->n()I

    .line 196
    move-result v1

    .line 197
    invoke-virtual {v2, v1}, Lhj;->d(I)V

    .line 200
    goto/16 :goto_0

    .line 202
    :cond_b
    return-void
.end method

.method public n(Lsc$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lki;->g:Lsc$b;

    .line 3
    return-void
.end method
