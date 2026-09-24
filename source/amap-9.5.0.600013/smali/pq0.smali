.class public Lpq0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcw0;

.field public b:Luw0;

.field public c:Lnw0;

.field public d:B

.field public e:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-byte v0, p0, Lpq0;->d:B

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lpq0;->e:[B

    .line 10
    iput-object v0, p0, Lpq0;->a:Lcw0;

    .line 12
    new-instance v0, Luw0;

    .line 14
    invoke-direct {v0}, Luw0;-><init>()V

    .line 17
    iput-object v0, p0, Lpq0;->b:Luw0;

    .line 19
    new-instance v0, Lnw0;

    .line 21
    invoke-direct {v0}, Lnw0;-><init>()V

    .line 24
    iput-object v0, p0, Lpq0;->c:Lnw0;

    .line 26
    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lpq0;->d:B

    .line 3
    return-void
.end method

.method public b(Lcw0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpq0;->a:Lcw0;

    .line 3
    return-void
.end method

.method public c(Luw0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpq0;->b:Luw0;

    .line 3
    return-void
.end method

.method public d([B)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    iput-object v1, v0, Lpq0;->e:[B

    .line 7
    if-eqz v1, :cond_9

    .line 9
    array-length v2, v1

    .line 10
    if-nez v2, :cond_0

    .line 12
    goto/16 :goto_8

    .line 14
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 21
    move-result v2

    .line 22
    invoke-virtual {v0, v2}, Lpq0;->a(B)V

    .line 25
    const/4 v3, 0x1

    .line 26
    if-ne v2, v3, :cond_9

    .line 28
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 31
    move-result v2

    .line 32
    and-int/lit8 v4, v2, 0x1

    .line 34
    if-ne v4, v3, :cond_1

    .line 36
    const/4 v4, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v4, 0x0

    .line 39
    :goto_0
    and-int/lit8 v6, v2, 0x1e

    .line 41
    shr-int/lit8 v3, v6, 0x1

    .line 43
    and-int/lit8 v2, v2, 0x60

    .line 45
    shr-int/lit8 v2, v2, 0x5

    .line 47
    add-int v6, v2, v3

    .line 49
    add-int/2addr v6, v4

    .line 50
    new-instance v7, Ljava/util/ArrayList;

    .line 52
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 55
    new-instance v8, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v9, Ljava/util/ArrayList;

    .line 62
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v10, Ljava/util/ArrayList;

    .line 67
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 70
    if-lez v6, :cond_4

    .line 72
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 75
    move-result v11

    .line 76
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 79
    move-result v12

    .line 80
    const/4 v13, 0x0

    .line 81
    :goto_1
    add-int v14, v3, v4

    .line 83
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 85
    if-ge v13, v14, :cond_2

    .line 87
    invoke-static {v1}, Ljw0;->b(Ljava/nio/ByteBuffer;)I

    .line 90
    move-result v14

    .line 91
    invoke-static {v1}, Ljw0;->b(Ljava/nio/ByteBuffer;)I

    .line 94
    move-result v17

    .line 95
    add-int/2addr v14, v11

    .line 96
    move/from16 v18, v6

    .line 98
    int-to-double v5, v14

    .line 99
    mul-double v5, v5, v15

    .line 101
    const-wide v19, 0x40f86a0000000000L    # 100000.0

    .line 106
    div-double v5, v5, v19

    .line 108
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 111
    move-result-object v5

    .line 112
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int v5, v12, v17

    .line 117
    int-to-double v5, v5

    .line 118
    mul-double v5, v5, v15

    .line 120
    div-double v5, v5, v19

    .line 122
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 125
    move-result-object v5

    .line 126
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v13, v13, 0x1

    .line 131
    move/from16 v6, v18

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    move/from16 v18, v6

    .line 136
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 139
    move-result v5

    .line 140
    const/4 v11, 0x0

    .line 141
    :goto_2
    if-ge v11, v6, :cond_3

    .line 143
    invoke-static {v1}, Ljw0;->b(Ljava/nio/ByteBuffer;)I

    .line 146
    move-result v12

    .line 147
    sub-int v12, v5, v12

    .line 149
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v12

    .line 153
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v11, v11, 0x1

    .line 158
    goto :goto_2

    .line 159
    :cond_3
    const/4 v5, 0x0

    .line 160
    :goto_3
    add-int v6, v3, v4

    .line 162
    if-ge v5, v6, :cond_4

    .line 164
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 167
    move-result v6

    .line 168
    int-to-double v11, v6

    .line 169
    mul-double v11, v11, v15

    .line 171
    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    .line 173
    div-double/2addr v11, v13

    .line 174
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 177
    move-result-object v6

    .line 178
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v5, v5, 0x1

    .line 183
    goto :goto_3

    .line 184
    :cond_4
    const v5, 0x8000

    .line 187
    if-eqz v4, :cond_5

    .line 189
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 192
    move-result v17

    .line 193
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 196
    move-result v6

    .line 197
    add-int v20, v6, v5

    .line 199
    new-instance v6, Lcw0;

    .line 201
    const/4 v14, 0x0

    .line 202
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 205
    move-result-object v11

    .line 206
    check-cast v11, Ljava/lang/Double;

    .line 208
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    .line 211
    move-result-wide v12

    .line 212
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    move-result-object v11

    .line 216
    check-cast v11, Ljava/lang/Double;

    .line 218
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    .line 221
    move-result-wide v15

    .line 222
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 225
    move-result-object v11

    .line 226
    check-cast v11, Ljava/lang/Integer;

    .line 228
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 231
    move-result v18

    .line 232
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 235
    move-result-object v11

    .line 236
    check-cast v11, Ljava/lang/Double;

    .line 238
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    .line 241
    move-result-wide v21

    .line 242
    move-object v11, v6

    .line 243
    const/16 v23, 0x0

    .line 245
    move-wide v14, v15

    .line 246
    move/from16 v16, v18

    .line 248
    move-wide/from16 v18, v21

    .line 250
    invoke-direct/range {v11 .. v20}, Lcw0;-><init>(DDIBDI)V

    .line 253
    invoke-virtual {v0, v6}, Lpq0;->b(Lcw0;)V

    .line 256
    goto :goto_4

    .line 257
    :cond_5
    const/16 v23, 0x0

    .line 259
    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    .line 261
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 264
    const/4 v14, 0x0

    .line 265
    :goto_5
    if-ge v14, v2, :cond_6

    .line 267
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    .line 270
    move-result v11

    .line 271
    add-int/2addr v11, v5

    .line 272
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    move-result-object v11

    .line 276
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v14, v14, 0x1

    .line 281
    goto :goto_5

    .line 282
    :cond_6
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 285
    move-result v1

    .line 286
    if-eqz v1, :cond_7

    .line 288
    return-void

    .line 289
    :cond_7
    new-instance v1, Luw0;

    .line 291
    invoke-direct {v1}, Luw0;-><init>()V

    .line 294
    move v5, v4

    .line 295
    :goto_6
    add-int v11, v3, v4

    .line 297
    if-ge v5, v11, :cond_8

    .line 299
    new-instance v11, Lbx0;

    .line 301
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    move-result-object v12

    .line 305
    check-cast v12, Ljava/lang/Double;

    .line 307
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    .line 310
    move-result-wide v13

    .line 311
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 314
    move-result-object v12

    .line 315
    check-cast v12, Ljava/lang/Double;

    .line 317
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    .line 320
    move-result-wide v15

    .line 321
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 324
    move-result-object v12

    .line 325
    check-cast v12, Ljava/lang/Integer;

    .line 327
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 330
    move-result v17

    .line 331
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 334
    move-result-object v12

    .line 335
    check-cast v12, Ljava/lang/Double;

    .line 337
    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    .line 340
    move-result-wide v18

    .line 341
    move-object v12, v11

    .line 342
    invoke-direct/range {v12 .. v19}, Lbx0;-><init>(DDID)V

    .line 345
    invoke-virtual {v1, v11}, Luw0;->c(Lbx0;)V

    .line 348
    add-int/lit8 v5, v5, 0x1

    .line 350
    goto :goto_6

    .line 351
    :cond_8
    invoke-virtual {v0, v1}, Lpq0;->c(Luw0;)V

    .line 354
    const/4 v5, 0x0

    .line 355
    :goto_7
    if-ge v5, v2, :cond_9

    .line 357
    invoke-virtual/range {p0 .. p0}, Lpq0;->f()Lnw0;

    .line 360
    move-result-object v1

    .line 361
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 364
    move-result-object v7

    .line 365
    check-cast v7, Ljava/lang/Integer;

    .line 367
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 370
    move-result v7

    .line 371
    add-int v8, v5, v3

    .line 373
    add-int/2addr v8, v4

    .line 374
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 377
    move-result-object v8

    .line 378
    check-cast v8, Ljava/lang/Integer;

    .line 380
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 383
    move-result v8

    .line 384
    invoke-virtual {v1, v7, v8}, Lnw0;->c(II)V

    .line 387
    add-int/lit8 v5, v5, 0x1

    .line 389
    goto :goto_7

    .line 390
    :cond_9
    :goto_8
    return-void
.end method

.method public e()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lpq0;->e:[B

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lpq0;->i()[B

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lpq0;->e:[B

    .line 11
    :cond_0
    iget-object v0, p0, Lpq0;->e:[B

    .line 13
    return-object v0
.end method

.method public f()Lnw0;
    .locals 1

    .line 1
    iget-object v0, p0, Lpq0;->c:Lnw0;

    .line 3
    return-object v0
.end method

.method public g()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lpq0;->d:B

    .line 3
    return v0
.end method

.method public h()Luw0;
    .locals 1

    .line 1
    iget-object v0, p0, Lpq0;->b:Luw0;

    .line 3
    return-object v0
.end method

.method public final i()[B
    .locals 14

    .line 1
    invoke-virtual {p0}, Lpq0;->g()B

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_e

    .line 8
    const/16 v0, 0x100

    .line 10
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lpq0;->g()B

    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 21
    iget-object v2, p0, Lpq0;->a:Lcw0;

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v2, :cond_0

    .line 26
    int-to-byte v2, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    .line 31
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v5, p0, Lpq0;->b:Luw0;

    .line 36
    if-eqz v5, :cond_1

    .line 38
    invoke-virtual {v5}, Luw0;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v5

    .line 42
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_1

    .line 48
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v6

    .line 52
    check-cast v6, Lbx0;

    .line 54
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 61
    move-result v5

    .line 62
    shl-int/lit8 v1, v5, 0x1

    .line 64
    or-int/2addr v1, v2

    .line 65
    int-to-byte v1, v1

    .line 66
    iget-object v2, p0, Lpq0;->c:Lnw0;

    .line 68
    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {v2}, Lnw0;->a()I

    .line 73
    move-result v2

    .line 74
    shl-int/lit8 v2, v2, 0x5

    .line 76
    or-int/2addr v1, v2

    .line 77
    int-to-byte v1, v1

    .line 78
    :cond_2
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    .line 83
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    .line 88
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v5, Ljava/util/ArrayList;

    .line 93
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v6, Ljava/util/ArrayList;

    .line 98
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v7, p0, Lpq0;->a:Lcw0;

    .line 103
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 105
    const-wide v10, 0x40f86a0000000000L    # 100000.0

    .line 110
    if-eqz v7, :cond_3

    .line 112
    invoke-virtual {v7}, Lcw0;->a()D

    .line 115
    move-result-wide v12

    .line 116
    mul-double v12, v12, v10

    .line 118
    double-to-int v7, v12

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v7

    .line 123
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v7, p0, Lpq0;->a:Lcw0;

    .line 128
    invoke-virtual {v7}, Lcw0;->b()D

    .line 131
    move-result-wide v12

    .line 132
    mul-double v12, v12, v10

    .line 134
    double-to-int v7, v12

    .line 135
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object v7

    .line 139
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v7, p0, Lpq0;->a:Lcw0;

    .line 144
    invoke-virtual {v7}, Lcw0;->c()I

    .line 147
    move-result v7

    .line 148
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    move-result-object v7

    .line 152
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v7, p0, Lpq0;->a:Lcw0;

    .line 157
    invoke-virtual {v7}, Lcw0;->e()D

    .line 160
    move-result-wide v12

    .line 161
    mul-double v12, v12, v8

    .line 163
    double-to-int v7, v12

    .line 164
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    move-result-object v7

    .line 168
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 174
    move-result-object v4

    .line 175
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    move-result v7

    .line 179
    if-eqz v7, :cond_4

    .line 181
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    move-result-object v7

    .line 185
    check-cast v7, Lbx0;

    .line 187
    invoke-virtual {v7}, Lbx0;->a()D

    .line 190
    move-result-wide v12

    .line 191
    mul-double v12, v12, v10

    .line 193
    double-to-int v12, v12

    .line 194
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    move-result-object v12

    .line 198
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v7}, Lbx0;->b()D

    .line 204
    move-result-wide v12

    .line 205
    mul-double v12, v12, v10

    .line 207
    double-to-int v12, v12

    .line 208
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    move-result-object v12

    .line 212
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {v7}, Lbx0;->c()I

    .line 218
    move-result v12

    .line 219
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    move-result-object v12

    .line 223
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {v7}, Lbx0;->d()D

    .line 229
    move-result-wide v12

    .line 230
    mul-double v12, v12, v8

    .line 232
    double-to-int v7, v12

    .line 233
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    move-result-object v7

    .line 237
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    goto :goto_2

    .line 241
    :cond_4
    iget-object v4, p0, Lpq0;->c:Lnw0;

    .line 243
    if-eqz v4, :cond_5

    .line 245
    iget-object v4, v4, Lnw0;->a:Ljava/util/Queue;

    .line 247
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 250
    move-result-object v4

    .line 251
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    move-result v7

    .line 255
    if-eqz v7, :cond_5

    .line 257
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    move-result-object v7

    .line 261
    check-cast v7, Lop0;

    .line 263
    iget v7, v7, Lop0;->b:I

    .line 265
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    move-result-object v7

    .line 269
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    goto :goto_3

    .line 273
    :cond_5
    const v4, 0x7fffffff

    .line 276
    const v7, 0x7fffffff

    .line 279
    const/4 v8, 0x0

    .line 280
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 283
    move-result v9

    .line 284
    if-ge v8, v9, :cond_6

    .line 286
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 289
    move-result-object v9

    .line 290
    check-cast v9, Ljava/lang/Integer;

    .line 292
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 295
    move-result v9

    .line 296
    invoke-static {v4, v9}, Lnet/jafama/FastMath;->min(II)I

    .line 299
    move-result v4

    .line 300
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 303
    move-result-object v9

    .line 304
    check-cast v9, Ljava/lang/Integer;

    .line 306
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 309
    move-result v9

    .line 310
    invoke-static {v7, v9}, Lnet/jafama/FastMath;->min(II)I

    .line 313
    move-result v7

    .line 314
    add-int/lit8 v8, v8, 0x1

    .line 316
    goto :goto_4

    .line 317
    :cond_6
    const/4 v8, 0x0

    .line 318
    const/4 v9, 0x0

    .line 319
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 322
    move-result v10

    .line 323
    if-ge v8, v10, :cond_7

    .line 325
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 328
    move-result-object v10

    .line 329
    check-cast v10, Ljava/lang/Integer;

    .line 331
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 334
    move-result v10

    .line 335
    invoke-static {v9, v10}, Lnet/jafama/FastMath;->max(II)I

    .line 338
    move-result v9

    .line 339
    add-int/lit8 v8, v8, 0x1

    .line 341
    goto :goto_5

    .line 342
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 345
    move-result v8

    .line 346
    if-lez v8, :cond_d

    .line 348
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 351
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 354
    const/4 v8, 0x0

    .line 355
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 358
    move-result v10

    .line 359
    if-ge v8, v10, :cond_8

    .line 361
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 364
    move-result-object v10

    .line 365
    check-cast v10, Ljava/lang/Integer;

    .line 367
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 370
    move-result v10

    .line 371
    sub-int/2addr v10, v4

    .line 372
    invoke-static {v0, v10}, Ljw0;->c(Ljava/nio/ByteBuffer;I)V

    .line 375
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 378
    move-result-object v10

    .line 379
    check-cast v10, Ljava/lang/Integer;

    .line 381
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 384
    move-result v10

    .line 385
    sub-int/2addr v10, v7

    .line 386
    invoke-static {v0, v10}, Ljw0;->c(Ljava/nio/ByteBuffer;I)V

    .line 389
    add-int/lit8 v8, v8, 0x1

    .line 391
    goto :goto_6

    .line 392
    :cond_8
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 395
    const/4 v1, 0x0

    .line 396
    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 399
    move-result v2

    .line 400
    if-ge v1, v2, :cond_9

    .line 402
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 405
    move-result-object v2

    .line 406
    check-cast v2, Ljava/lang/Integer;

    .line 408
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 411
    move-result v2

    .line 412
    sub-int v2, v9, v2

    .line 414
    invoke-static {v0, v2}, Ljw0;->c(Ljava/nio/ByteBuffer;I)V

    .line 417
    add-int/lit8 v1, v1, 0x1

    .line 419
    goto :goto_7

    .line 420
    :cond_9
    const/4 v1, 0x0

    .line 421
    :goto_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 424
    move-result v2

    .line 425
    if-ge v1, v2, :cond_a

    .line 427
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 430
    move-result-object v2

    .line 431
    check-cast v2, Ljava/lang/Integer;

    .line 433
    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    .line 436
    move-result v2

    .line 437
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 440
    add-int/lit8 v1, v1, 0x1

    .line 442
    goto :goto_8

    .line 443
    :cond_a
    iget-object v1, p0, Lpq0;->a:Lcw0;

    .line 445
    if-eqz v1, :cond_b

    .line 447
    invoke-virtual {v1}, Lcw0;->d()B

    .line 450
    move-result v1

    .line 451
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 454
    iget-object v1, p0, Lpq0;->a:Lcw0;

    .line 456
    invoke-virtual {v1}, Lcw0;->f()I

    .line 459
    move-result v1

    .line 460
    add-int/lit16 v1, v1, -0x8000

    .line 462
    int-to-short v1, v1

    .line 463
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 466
    :cond_b
    iget-object v1, p0, Lpq0;->c:Lnw0;

    .line 468
    if-eqz v1, :cond_c

    .line 470
    iget-object v1, v1, Lnw0;->a:Ljava/util/Queue;

    .line 472
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 475
    move-result-object v1

    .line 476
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 479
    move-result v2

    .line 480
    if-eqz v2, :cond_c

    .line 482
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 485
    move-result-object v2

    .line 486
    check-cast v2, Lop0;

    .line 488
    iget v2, v2, Lop0;->a:I

    .line 490
    add-int/lit16 v2, v2, -0x8000

    .line 492
    int-to-short v2, v2

    .line 493
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 496
    goto :goto_9

    .line 497
    :cond_c
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 500
    move-result v1

    .line 501
    new-array v2, v1, [B

    .line 503
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 506
    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 509
    return-object v2

    .line 510
    :cond_d
    new-array v0, v3, [B

    .line 512
    return-object v0

    .line 513
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    .line 517
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    const-string v2, "Unknown context version("

    .line 522
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {p0}, Lpq0;->g()B

    .line 528
    move-result v2

    .line 529
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    const-string v2, ")"

    .line 534
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    move-result-object v1

    .line 541
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 544
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Lpq0;->h()Luw0;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Luw0;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lbx0;

    .line 26
    invoke-virtual {v2}, Lbx0;->toString()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v2, p0, Lpq0;->c:Lnw0;

    .line 41
    iget-object v2, v2, Lnw0;->a:Ljava/util/Queue;

    .line 43
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v2

    .line 47
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lop0;

    .line 59
    invoke-virtual {v3}, Lop0;->toString()Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 v2, 0x4

    .line 68
    new-array v2, v2, [Ljava/lang/Object;

    .line 70
    iget-byte v3, p0, Lpq0;->d:B

    .line 72
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 75
    move-result-object v3

    .line 76
    const/4 v4, 0x0

    .line 77
    aput-object v3, v2, v4

    .line 79
    iget-object v3, p0, Lpq0;->a:Lcw0;

    .line 81
    if-nez v3, :cond_2

    .line 83
    const/4 v3, 0x0

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {v3}, Lcw0;->toString()Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 89
    :goto_2
    const/4 v4, 0x1

    .line 90
    aput-object v3, v2, v4

    .line 92
    const/4 v3, 0x2

    .line 93
    const-string v4, ","

    .line 95
    invoke-static {v0, v4}, Lex0;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    aput-object v0, v2, v3

    .line 101
    const/4 v0, 0x3

    .line 102
    invoke-static {v1, v4}, Lex0;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    aput-object v1, v2, v0

    .line 108
    const-string v0, ";"

    .line 110
    invoke-static {v2, v0}, Lex0;->b([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    return-object v0
.end method
