.class public Lwb;
.super Lgp;
.source "SourceFile"


# instance fields
.field public F0:I

.field public G0:Z

.field public H0:I

.field public I0:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lgp;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lwb;->F0:I

    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lwb;->G0:Z

    .line 10
    iput v0, p0, Lwb;->H0:I

    .line 12
    iput-boolean v0, p0, Lwb;->I0:Z

    .line 14
    return-void
.end method


# virtual methods
.method public b1()Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    :goto_0
    iget v4, p0, Lgp;->E0:I

    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x2

    .line 9
    if-ge v2, v4, :cond_5

    .line 11
    iget-object v4, p0, Lgp;->D0:[Llg;

    .line 13
    aget-object v4, v4, v2

    .line 15
    iget-boolean v7, p0, Lwb;->G0:Z

    .line 17
    if-nez v7, :cond_0

    .line 19
    invoke-virtual {v4}, Llg;->h()Z

    .line 22
    move-result v7

    .line 23
    if-nez v7, :cond_0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    iget v7, p0, Lwb;->F0:I

    .line 28
    if-eqz v7, :cond_1

    .line 30
    if-ne v7, v0, :cond_2

    .line 32
    :cond_1
    invoke-virtual {v4}, Llg;->e0()Z

    .line 35
    move-result v7

    .line 36
    if-nez v7, :cond_2

    .line 38
    :goto_1
    const/4 v3, 0x0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iget v7, p0, Lwb;->F0:I

    .line 42
    if-eq v7, v6, :cond_3

    .line 44
    if-ne v7, v5, :cond_4

    .line 46
    :cond_3
    invoke-virtual {v4}, Llg;->f0()Z

    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_4

    .line 52
    goto :goto_1

    .line 53
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_5
    if-eqz v3, :cond_13

    .line 58
    if-lez v4, :cond_13

    .line 60
    const/4 v2, 0x0

    .line 61
    const/4 v3, 0x0

    .line 62
    :goto_3
    iget v4, p0, Lgp;->E0:I

    .line 64
    if-ge v1, v4, :cond_10

    .line 66
    iget-object v4, p0, Lgp;->D0:[Llg;

    .line 68
    aget-object v4, v4, v1

    .line 70
    iget-boolean v7, p0, Lwb;->G0:Z

    .line 72
    if-nez v7, :cond_6

    .line 74
    invoke-virtual {v4}, Llg;->h()Z

    .line 77
    move-result v7

    .line 78
    if-nez v7, :cond_6

    .line 80
    goto/16 :goto_5

    .line 82
    :cond_6
    if-nez v3, :cond_b

    .line 84
    iget v3, p0, Lwb;->F0:I

    .line 86
    if-nez v3, :cond_7

    .line 88
    sget-object v2, Lfg$b;->b:Lfg$b;

    .line 90
    invoke-virtual {v4, v2}, Llg;->m(Lfg$b;)Lfg;

    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lfg;->d()I

    .line 97
    move-result v2

    .line 98
    goto :goto_4

    .line 99
    :cond_7
    if-ne v3, v0, :cond_8

    .line 101
    sget-object v2, Lfg$b;->d:Lfg$b;

    .line 103
    invoke-virtual {v4, v2}, Llg;->m(Lfg$b;)Lfg;

    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lfg;->d()I

    .line 110
    move-result v2

    .line 111
    goto :goto_4

    .line 112
    :cond_8
    if-ne v3, v6, :cond_9

    .line 114
    sget-object v2, Lfg$b;->c:Lfg$b;

    .line 116
    invoke-virtual {v4, v2}, Llg;->m(Lfg$b;)Lfg;

    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2}, Lfg;->d()I

    .line 123
    move-result v2

    .line 124
    goto :goto_4

    .line 125
    :cond_9
    if-ne v3, v5, :cond_a

    .line 127
    sget-object v2, Lfg$b;->e:Lfg$b;

    .line 129
    invoke-virtual {v4, v2}, Llg;->m(Lfg$b;)Lfg;

    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lfg;->d()I

    .line 136
    move-result v2

    .line 137
    :cond_a
    :goto_4
    const/4 v3, 0x1

    .line 138
    :cond_b
    iget v7, p0, Lwb;->F0:I

    .line 140
    if-nez v7, :cond_c

    .line 142
    sget-object v7, Lfg$b;->b:Lfg$b;

    .line 144
    invoke-virtual {v4, v7}, Llg;->m(Lfg$b;)Lfg;

    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4}, Lfg;->d()I

    .line 151
    move-result v4

    .line 152
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 155
    move-result v2

    .line 156
    goto :goto_5

    .line 157
    :cond_c
    if-ne v7, v0, :cond_d

    .line 159
    sget-object v7, Lfg$b;->d:Lfg$b;

    .line 161
    invoke-virtual {v4, v7}, Llg;->m(Lfg$b;)Lfg;

    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v4}, Lfg;->d()I

    .line 168
    move-result v4

    .line 169
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 172
    move-result v2

    .line 173
    goto :goto_5

    .line 174
    :cond_d
    if-ne v7, v6, :cond_e

    .line 176
    sget-object v7, Lfg$b;->c:Lfg$b;

    .line 178
    invoke-virtual {v4, v7}, Llg;->m(Lfg$b;)Lfg;

    .line 181
    move-result-object v4

    .line 182
    invoke-virtual {v4}, Lfg;->d()I

    .line 185
    move-result v4

    .line 186
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 189
    move-result v2

    .line 190
    goto :goto_5

    .line 191
    :cond_e
    if-ne v7, v5, :cond_f

    .line 193
    sget-object v7, Lfg$b;->e:Lfg$b;

    .line 195
    invoke-virtual {v4, v7}, Llg;->m(Lfg$b;)Lfg;

    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v4}, Lfg;->d()I

    .line 202
    move-result v4

    .line 203
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 206
    move-result v2

    .line 207
    :cond_f
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 209
    goto/16 :goto_3

    .line 211
    :cond_10
    iget v1, p0, Lwb;->H0:I

    .line 213
    add-int/2addr v2, v1

    .line 214
    iget v1, p0, Lwb;->F0:I

    .line 216
    if-eqz v1, :cond_12

    .line 218
    if-ne v1, v0, :cond_11

    .line 220
    goto :goto_6

    .line 221
    :cond_11
    invoke-virtual {p0, v2, v2}, Llg;->s0(II)V

    .line 224
    goto :goto_7

    .line 225
    :cond_12
    :goto_6
    invoke-virtual {p0, v2, v2}, Llg;->p0(II)V

    .line 228
    :goto_7
    iput-boolean v0, p0, Lwb;->I0:Z

    .line 230
    return v0

    .line 231
    :cond_13
    return v1
.end method

.method public c1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwb;->G0:Z

    .line 3
    return v0
.end method

.method public d1()I
    .locals 1

    .line 1
    iget v0, p0, Lwb;->F0:I

    .line 3
    return v0
.end method

.method public e0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwb;->I0:Z

    .line 3
    return v0
.end method

.method public e1()I
    .locals 1

    .line 1
    iget v0, p0, Lwb;->H0:I

    .line 3
    return v0
.end method

.method public f0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwb;->I0:Z

    .line 3
    return v0
.end method

.method public f1()I
    .locals 3

    .line 1
    iget v0, p0, Lwb;->F0:I

    .line 3
    if-eqz v0, :cond_1

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_0

    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq v0, v2, :cond_0

    .line 14
    const/4 v0, -0x1

    .line 15
    return v0

    .line 16
    :cond_0
    return v1

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public g(Lax;Z)V
    .locals 12

    .line 1
    iget-object p2, p0, Llg;->P:[Lfg;

    .line 3
    iget-object v0, p0, Llg;->H:Lfg;

    .line 5
    const/4 v1, 0x0

    .line 6
    aput-object v0, p2, v1

    .line 8
    iget-object v0, p0, Llg;->I:Lfg;

    .line 10
    const/4 v2, 0x2

    .line 11
    aput-object v0, p2, v2

    .line 13
    iget-object v0, p0, Llg;->J:Lfg;

    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v0, p2, v3

    .line 18
    iget-object v0, p0, Llg;->K:Lfg;

    .line 20
    const/4 v4, 0x3

    .line 21
    aput-object v0, p2, v4

    .line 23
    const/4 p2, 0x0

    .line 24
    :goto_0
    iget-object v0, p0, Llg;->P:[Lfg;

    .line 26
    array-length v5, v0

    .line 27
    if-ge p2, v5, :cond_0

    .line 29
    aget-object v0, v0, p2

    .line 31
    invoke-virtual {p1, v0}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 34
    move-result-object v5

    .line 35
    iput-object v5, v0, Lfg;->i:Lle0;

    .line 37
    add-int/lit8 p2, p2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget p2, p0, Lwb;->F0:I

    .line 42
    if-ltz p2, :cond_1f

    .line 44
    const/4 v5, 0x4

    .line 45
    if-ge p2, v5, :cond_1f

    .line 47
    aget-object p2, v0, p2

    .line 49
    iget-boolean v0, p0, Lwb;->I0:Z

    .line 51
    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lwb;->b1()Z

    .line 56
    :cond_1
    iget-boolean v0, p0, Lwb;->I0:Z

    .line 58
    if-eqz v0, :cond_6

    .line 60
    iput-boolean v1, p0, Lwb;->I0:Z

    .line 62
    iget p2, p0, Lwb;->F0:I

    .line 64
    if-eqz p2, :cond_4

    .line 66
    if-ne p2, v3, :cond_2

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    if-eq p2, v2, :cond_3

    .line 71
    if-ne p2, v4, :cond_5

    .line 73
    :cond_3
    iget-object p2, p0, Llg;->I:Lfg;

    .line 75
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 77
    iget v0, p0, Llg;->Z:I

    .line 79
    invoke-virtual {p1, p2, v0}, Lax;->f(Lle0;I)V

    .line 82
    iget-object p2, p0, Llg;->K:Lfg;

    .line 84
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 86
    iget v0, p0, Llg;->Z:I

    .line 88
    invoke-virtual {p1, p2, v0}, Lax;->f(Lle0;I)V

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    :goto_1
    iget-object p2, p0, Llg;->H:Lfg;

    .line 94
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 96
    iget v0, p0, Llg;->Y:I

    .line 98
    invoke-virtual {p1, p2, v0}, Lax;->f(Lle0;I)V

    .line 101
    iget-object p2, p0, Llg;->J:Lfg;

    .line 103
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 105
    iget v0, p0, Llg;->Y:I

    .line 107
    invoke-virtual {p1, p2, v0}, Lax;->f(Lle0;I)V

    .line 110
    :cond_5
    :goto_2
    return-void

    .line 111
    :cond_6
    const/4 v0, 0x0

    .line 112
    :goto_3
    iget v6, p0, Lgp;->E0:I

    .line 114
    if-ge v0, v6, :cond_c

    .line 116
    iget-object v6, p0, Lgp;->D0:[Llg;

    .line 118
    aget-object v6, v6, v0

    .line 120
    iget-boolean v7, p0, Lwb;->G0:Z

    .line 122
    if-nez v7, :cond_7

    .line 124
    invoke-virtual {v6}, Llg;->h()Z

    .line 127
    move-result v7

    .line 128
    if-nez v7, :cond_7

    .line 130
    goto :goto_5

    .line 131
    :cond_7
    iget v7, p0, Lwb;->F0:I

    .line 133
    if-eqz v7, :cond_8

    .line 135
    if-ne v7, v3, :cond_9

    .line 137
    :cond_8
    invoke-virtual {v6}, Llg;->y()Llg$b;

    .line 140
    move-result-object v7

    .line 141
    sget-object v8, Llg$b;->c:Llg$b;

    .line 143
    if-ne v7, v8, :cond_9

    .line 145
    iget-object v7, v6, Llg;->H:Lfg;

    .line 147
    iget-object v7, v7, Lfg;->f:Lfg;

    .line 149
    if-eqz v7, :cond_9

    .line 151
    iget-object v7, v6, Llg;->J:Lfg;

    .line 153
    iget-object v7, v7, Lfg;->f:Lfg;

    .line 155
    if-eqz v7, :cond_9

    .line 157
    :goto_4
    const/4 v0, 0x1

    .line 158
    goto :goto_6

    .line 159
    :cond_9
    iget v7, p0, Lwb;->F0:I

    .line 161
    if-eq v7, v2, :cond_a

    .line 163
    if-ne v7, v4, :cond_b

    .line 165
    :cond_a
    invoke-virtual {v6}, Llg;->O()Llg$b;

    .line 168
    move-result-object v7

    .line 169
    sget-object v8, Llg$b;->c:Llg$b;

    .line 171
    if-ne v7, v8, :cond_b

    .line 173
    iget-object v7, v6, Llg;->I:Lfg;

    .line 175
    iget-object v7, v7, Lfg;->f:Lfg;

    .line 177
    if-eqz v7, :cond_b

    .line 179
    iget-object v6, v6, Llg;->K:Lfg;

    .line 181
    iget-object v6, v6, Lfg;->f:Lfg;

    .line 183
    if-eqz v6, :cond_b

    .line 185
    goto :goto_4

    .line 186
    :cond_b
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 188
    goto :goto_3

    .line 189
    :cond_c
    const/4 v0, 0x0

    .line 190
    :goto_6
    iget-object v6, p0, Llg;->H:Lfg;

    .line 192
    invoke-virtual {v6}, Lfg;->k()Z

    .line 195
    move-result v6

    .line 196
    if-nez v6, :cond_e

    .line 198
    iget-object v6, p0, Llg;->J:Lfg;

    .line 200
    invoke-virtual {v6}, Lfg;->k()Z

    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_d

    .line 206
    goto :goto_7

    .line 207
    :cond_d
    const/4 v6, 0x0

    .line 208
    goto :goto_8

    .line 209
    :cond_e
    :goto_7
    const/4 v6, 0x1

    .line 210
    :goto_8
    iget-object v7, p0, Llg;->I:Lfg;

    .line 212
    invoke-virtual {v7}, Lfg;->k()Z

    .line 215
    move-result v7

    .line 216
    if-nez v7, :cond_10

    .line 218
    iget-object v7, p0, Llg;->K:Lfg;

    .line 220
    invoke-virtual {v7}, Lfg;->k()Z

    .line 223
    move-result v7

    .line 224
    if-eqz v7, :cond_f

    .line 226
    goto :goto_9

    .line 227
    :cond_f
    const/4 v7, 0x0

    .line 228
    goto :goto_a

    .line 229
    :cond_10
    :goto_9
    const/4 v7, 0x1

    .line 230
    :goto_a
    if-nez v0, :cond_15

    .line 232
    iget v8, p0, Lwb;->F0:I

    .line 234
    if-nez v8, :cond_11

    .line 236
    if-nez v6, :cond_14

    .line 238
    :cond_11
    if-ne v8, v2, :cond_12

    .line 240
    if-nez v7, :cond_14

    .line 242
    :cond_12
    if-ne v8, v3, :cond_13

    .line 244
    if-nez v6, :cond_14

    .line 246
    :cond_13
    if-ne v8, v4, :cond_15

    .line 248
    if-eqz v7, :cond_15

    .line 250
    :cond_14
    const/4 v6, 0x1

    .line 251
    goto :goto_b

    .line 252
    :cond_15
    const/4 v6, 0x0

    .line 253
    :goto_b
    if-nez v6, :cond_16

    .line 255
    const/4 v6, 0x4

    .line 256
    goto :goto_c

    .line 257
    :cond_16
    const/4 v6, 0x5

    .line 258
    :goto_c
    const/4 v7, 0x0

    .line 259
    :goto_d
    iget v8, p0, Lgp;->E0:I

    .line 261
    if-ge v7, v8, :cond_1b

    .line 263
    iget-object v8, p0, Lgp;->D0:[Llg;

    .line 265
    aget-object v8, v8, v7

    .line 267
    iget-boolean v9, p0, Lwb;->G0:Z

    .line 269
    if-nez v9, :cond_17

    .line 271
    invoke-virtual {v8}, Llg;->h()Z

    .line 274
    move-result v9

    .line 275
    if-nez v9, :cond_17

    .line 277
    goto :goto_11

    .line 278
    :cond_17
    iget-object v9, v8, Llg;->P:[Lfg;

    .line 280
    iget v10, p0, Lwb;->F0:I

    .line 282
    aget-object v9, v9, v10

    .line 284
    invoke-virtual {p1, v9}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 287
    move-result-object v9

    .line 288
    iget-object v8, v8, Llg;->P:[Lfg;

    .line 290
    iget v10, p0, Lwb;->F0:I

    .line 292
    aget-object v8, v8, v10

    .line 294
    iput-object v9, v8, Lfg;->i:Lle0;

    .line 296
    iget-object v11, v8, Lfg;->f:Lfg;

    .line 298
    if-eqz v11, :cond_18

    .line 300
    iget-object v11, v11, Lfg;->d:Llg;

    .line 302
    if-ne v11, p0, :cond_18

    .line 304
    iget v8, v8, Lfg;->g:I

    .line 306
    add-int/2addr v8, v1

    .line 307
    goto :goto_e

    .line 308
    :cond_18
    const/4 v8, 0x0

    .line 309
    :goto_e
    if-eqz v10, :cond_1a

    .line 311
    if-ne v10, v2, :cond_19

    .line 313
    goto :goto_f

    .line 314
    :cond_19
    iget-object v10, p2, Lfg;->i:Lle0;

    .line 316
    iget v11, p0, Lwb;->H0:I

    .line 318
    add-int/2addr v11, v8

    .line 319
    invoke-virtual {p1, v10, v9, v11, v0}, Lax;->g(Lle0;Lle0;IZ)V

    .line 322
    goto :goto_10

    .line 323
    :cond_1a
    :goto_f
    iget-object v10, p2, Lfg;->i:Lle0;

    .line 325
    iget v11, p0, Lwb;->H0:I

    .line 327
    sub-int/2addr v11, v8

    .line 328
    invoke-virtual {p1, v10, v9, v11, v0}, Lax;->i(Lle0;Lle0;IZ)V

    .line 331
    :goto_10
    iget-object v10, p2, Lfg;->i:Lle0;

    .line 333
    iget v11, p0, Lwb;->H0:I

    .line 335
    add-int/2addr v11, v8

    .line 336
    invoke-virtual {p1, v10, v9, v11, v6}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 339
    :goto_11
    add-int/lit8 v7, v7, 0x1

    .line 341
    goto :goto_d

    .line 342
    :cond_1b
    iget p2, p0, Lwb;->F0:I

    .line 344
    const/16 v0, 0x8

    .line 346
    if-nez p2, :cond_1c

    .line 348
    iget-object p2, p0, Llg;->J:Lfg;

    .line 350
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 352
    iget-object v2, p0, Llg;->H:Lfg;

    .line 354
    iget-object v2, v2, Lfg;->i:Lle0;

    .line 356
    invoke-virtual {p1, p2, v2, v1, v0}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 359
    iget-object p2, p0, Llg;->H:Lfg;

    .line 361
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 363
    iget-object v0, p0, Llg;->T:Llg;

    .line 365
    iget-object v0, v0, Llg;->J:Lfg;

    .line 367
    iget-object v0, v0, Lfg;->i:Lle0;

    .line 369
    invoke-virtual {p1, p2, v0, v1, v5}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 372
    iget-object p2, p0, Llg;->H:Lfg;

    .line 374
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 376
    iget-object v0, p0, Llg;->T:Llg;

    .line 378
    iget-object v0, v0, Llg;->H:Lfg;

    .line 380
    iget-object v0, v0, Lfg;->i:Lle0;

    .line 382
    invoke-virtual {p1, p2, v0, v1, v1}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 385
    goto/16 :goto_12

    .line 387
    :cond_1c
    if-ne p2, v3, :cond_1d

    .line 389
    iget-object p2, p0, Llg;->H:Lfg;

    .line 391
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 393
    iget-object v2, p0, Llg;->J:Lfg;

    .line 395
    iget-object v2, v2, Lfg;->i:Lle0;

    .line 397
    invoke-virtual {p1, p2, v2, v1, v0}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 400
    iget-object p2, p0, Llg;->H:Lfg;

    .line 402
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 404
    iget-object v0, p0, Llg;->T:Llg;

    .line 406
    iget-object v0, v0, Llg;->H:Lfg;

    .line 408
    iget-object v0, v0, Lfg;->i:Lle0;

    .line 410
    invoke-virtual {p1, p2, v0, v1, v5}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 413
    iget-object p2, p0, Llg;->H:Lfg;

    .line 415
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 417
    iget-object v0, p0, Llg;->T:Llg;

    .line 419
    iget-object v0, v0, Llg;->J:Lfg;

    .line 421
    iget-object v0, v0, Lfg;->i:Lle0;

    .line 423
    invoke-virtual {p1, p2, v0, v1, v1}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 426
    goto :goto_12

    .line 427
    :cond_1d
    if-ne p2, v2, :cond_1e

    .line 429
    iget-object p2, p0, Llg;->K:Lfg;

    .line 431
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 433
    iget-object v2, p0, Llg;->I:Lfg;

    .line 435
    iget-object v2, v2, Lfg;->i:Lle0;

    .line 437
    invoke-virtual {p1, p2, v2, v1, v0}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 440
    iget-object p2, p0, Llg;->I:Lfg;

    .line 442
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 444
    iget-object v0, p0, Llg;->T:Llg;

    .line 446
    iget-object v0, v0, Llg;->K:Lfg;

    .line 448
    iget-object v0, v0, Lfg;->i:Lle0;

    .line 450
    invoke-virtual {p1, p2, v0, v1, v5}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 453
    iget-object p2, p0, Llg;->I:Lfg;

    .line 455
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 457
    iget-object v0, p0, Llg;->T:Llg;

    .line 459
    iget-object v0, v0, Llg;->I:Lfg;

    .line 461
    iget-object v0, v0, Lfg;->i:Lle0;

    .line 463
    invoke-virtual {p1, p2, v0, v1, v1}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 466
    goto :goto_12

    .line 467
    :cond_1e
    if-ne p2, v4, :cond_1f

    .line 469
    iget-object p2, p0, Llg;->I:Lfg;

    .line 471
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 473
    iget-object v2, p0, Llg;->K:Lfg;

    .line 475
    iget-object v2, v2, Lfg;->i:Lle0;

    .line 477
    invoke-virtual {p1, p2, v2, v1, v0}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 480
    iget-object p2, p0, Llg;->I:Lfg;

    .line 482
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 484
    iget-object v0, p0, Llg;->T:Llg;

    .line 486
    iget-object v0, v0, Llg;->I:Lfg;

    .line 488
    iget-object v0, v0, Lfg;->i:Lle0;

    .line 490
    invoke-virtual {p1, p2, v0, v1, v5}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 493
    iget-object p2, p0, Llg;->I:Lfg;

    .line 495
    iget-object p2, p2, Lfg;->i:Lle0;

    .line 497
    iget-object v0, p0, Llg;->T:Llg;

    .line 499
    iget-object v0, v0, Llg;->K:Lfg;

    .line 501
    iget-object v0, v0, Lfg;->i:Lle0;

    .line 503
    invoke-virtual {p1, p2, v0, v1, v1}, Lax;->e(Lle0;Lle0;II)Lb6;

    .line 506
    :cond_1f
    :goto_12
    return-void
.end method

.method public g1()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lgp;->E0:I

    .line 5
    if-ge v1, v2, :cond_4

    .line 7
    iget-object v2, p0, Lgp;->D0:[Llg;

    .line 9
    aget-object v2, v2, v1

    .line 11
    iget v3, p0, Lwb;->F0:I

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v3, :cond_2

    .line 16
    if-ne v3, v4, :cond_0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v5, 0x2

    .line 20
    if-eq v3, v5, :cond_1

    .line 22
    const/4 v5, 0x3

    .line 23
    if-ne v3, v5, :cond_3

    .line 25
    :cond_1
    invoke-virtual {v2, v4, v4}, Llg;->C0(IZ)V

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    :goto_1
    invoke-virtual {v2, v0, v4}, Llg;->C0(IZ)V

    .line 32
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_4
    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public h1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lwb;->G0:Z

    .line 3
    return-void
.end method

.method public i1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lwb;->F0:I

    .line 3
    return-void
.end method

.method public j1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lwb;->H0:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "[Barrier] "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Llg;->r()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " {"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    iget v2, p0, Lgp;->E0:I

    .line 30
    if-ge v1, v2, :cond_1

    .line 32
    iget-object v2, p0, Lgp;->D0:[Llg;

    .line 34
    aget-object v2, v2, v1

    .line 36
    if-lez v1, :cond_0

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v0, ", "

    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2}, Llg;->r()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v0, "}"

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    return-object v0
.end method
