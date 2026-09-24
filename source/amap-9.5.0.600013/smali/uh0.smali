.class public Luh0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/String; = "uh0"

.field public static volatile k:Luh0;


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Luh0;->a:J

    .line 8
    iput-wide v0, p0, Luh0;->b:J

    .line 10
    iput-wide v0, p0, Luh0;->c:J

    .line 12
    iput-wide v0, p0, Luh0;->d:J

    .line 14
    iput-wide v0, p0, Luh0;->e:J

    .line 16
    iput-wide v0, p0, Luh0;->f:J

    .line 18
    iput-wide v0, p0, Luh0;->g:J

    .line 20
    iput-wide v0, p0, Luh0;->h:J

    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Luh0;->i:I

    .line 25
    return-void
.end method

.method public static b()Luh0;
    .locals 2

    .line 1
    sget-object v0, Luh0;->k:Luh0;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Luh0;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Luh0;->k:Luh0;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Luh0;

    .line 14
    invoke-direct {v1}, Luh0;-><init>()V

    .line 17
    sput-object v1, Luh0;->k:Luh0;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Luh0;->k:Luh0;

    .line 26
    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Luh0;->h()V

    .line 4
    iget-wide v0, p0, Luh0;->a:J

    .line 6
    iget-wide v2, p0, Luh0;->b:J

    .line 8
    add-long/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public c()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Luh0;->h()V

    .line 4
    iget-wide v0, p0, Luh0;->e:J

    .line 6
    iget-wide v2, p0, Luh0;->f:J

    .line 8
    add-long/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public declared-synchronized d()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 4
    :try_start_0
    iput-wide v0, p0, Luh0;->b:J

    .line 6
    iput-wide v0, p0, Luh0;->a:J

    .line 8
    iput-wide v0, p0, Luh0;->f:J

    .line 10
    iput-wide v0, p0, Luh0;->e:J

    .line 12
    iput-wide v0, p0, Luh0;->c:J

    .line 14
    iput-wide v0, p0, Luh0;->d:J

    .line 16
    iput-wide v0, p0, Luh0;->g:J

    .line 18
    iput-wide v0, p0, Luh0;->h:J

    .line 20
    invoke-virtual {p0}, Luh0;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 4
    :try_start_0
    iput-wide v0, p0, Luh0;->c:J

    .line 6
    iput-wide v0, p0, Luh0;->d:J

    .line 8
    iput-wide v0, p0, Luh0;->g:J

    .line 10
    iput-wide v0, p0, Luh0;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method

.method public f(I)V
    .locals 4

    .line 1
    sget-object v0, Luh0;->j:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v3

    .line 11
    aput-object v3, v1, v2

    .line 13
    const-string v2, "startCountTraffic mode = {?}"

    .line 15
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0}, Luh0;->h()V

    .line 21
    iput p1, p0, Luh0;->i:I

    .line 23
    invoke-virtual {p0}, Luh0;->e()V

    .line 26
    invoke-virtual {p0}, Luh0;->h()V

    .line 29
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    sget-object v0, Luh0;->j:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    iget v2, p0, Luh0;->i:I

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    const-string v2, "stopCountTraffic proxyMode = {?}"

    .line 17
    invoke-static {v0, v2, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Luh0;->h()V

    .line 23
    invoke-virtual {p0}, Luh0;->e()V

    .line 26
    iput v3, p0, Luh0;->i:I

    .line 28
    return-void
.end method

.method public final declared-synchronized h()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v0, Luh0;->j:Ljava/lang/String;

    .line 6
    const-string v2, "updateTraffic proxyMode = {?}"

    .line 8
    const/4 v3, 0x1

    .line 9
    new-array v4, v3, [Ljava/lang/Object;

    .line 11
    iget v5, v1, Luh0;->i:I

    .line 13
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v5

    .line 17
    const/4 v6, 0x0

    .line 18
    aput-object v5, v4, v6

    .line 20
    invoke-static {v0, v2, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    const-string v2, "updateTraffic begin appRxBytes = {?},appTxBytes = {?},otherTotalRxBytes = {?},otherTotalTxBytes = {?}"

    .line 25
    const/4 v4, 0x4

    .line 26
    new-array v5, v4, [Ljava/lang/Object;

    .line 28
    iget-wide v7, v1, Luh0;->a:J

    .line 30
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    move-result-object v7

    .line 34
    aput-object v7, v5, v6

    .line 36
    iget-wide v7, v1, Luh0;->b:J

    .line 38
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    move-result-object v7

    .line 42
    aput-object v7, v5, v3

    .line 44
    iget-wide v7, v1, Luh0;->e:J

    .line 46
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    move-result-object v7

    .line 50
    const/4 v8, 0x2

    .line 51
    aput-object v7, v5, v8

    .line 53
    iget-wide v9, v1, Luh0;->f:J

    .line 55
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    move-result-object v7

    .line 59
    const/4 v9, 0x3

    .line 60
    aput-object v7, v5, v9

    .line 62
    invoke-static {v0, v2, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget v2, v1, Luh0;->i:I

    .line 67
    const-wide/16 v10, 0x0

    .line 69
    if-eq v2, v3, :cond_3

    .line 71
    if-eq v2, v8, :cond_0

    .line 73
    goto/16 :goto_5

    .line 75
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 78
    move-result v2

    .line 79
    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 82
    move-result-wide v12

    .line 83
    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 86
    move-result-wide v14

    .line 87
    iget-wide v4, v1, Luh0;->c:J

    .line 89
    cmp-long v7, v4, v10

    .line 91
    if-eqz v7, :cond_1

    .line 93
    cmp-long v7, v4, v12

    .line 95
    if-gez v7, :cond_1

    .line 97
    sub-long v4, v12, v4

    .line 99
    goto :goto_0

    .line 100
    :cond_1
    move-wide v4, v10

    .line 101
    :goto_0
    iget-wide v2, v1, Luh0;->d:J

    .line 103
    cmp-long v16, v2, v10

    .line 105
    if-eqz v16, :cond_2

    .line 107
    cmp-long v16, v2, v14

    .line 109
    if-gez v16, :cond_2

    .line 111
    sub-long v10, v14, v2

    .line 113
    :cond_2
    const-string v2, "updateTraffic currentAppRxBytes = {?},lastAppRxBytes = {?},useAppRxBytes = {?}"

    .line 115
    new-array v3, v9, [Ljava/lang/Object;

    .line 117
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    move-result-object v16

    .line 121
    aput-object v16, v3, v6

    .line 123
    iget-wide v6, v1, Luh0;->c:J

    .line 125
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    move-result-object v6

    .line 129
    const/4 v7, 0x1

    .line 130
    aput-object v6, v3, v7

    .line 132
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    move-result-object v6

    .line 136
    aput-object v6, v3, v8

    .line 138
    invoke-static {v0, v2, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const-string v2, "updateTraffic currentAppTxBytes = {?},lastAppTxBytes = {?},useAppTxBytes = {?}"

    .line 143
    new-array v3, v9, [Ljava/lang/Object;

    .line 145
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    move-result-object v6

    .line 149
    const/16 v16, 0x0

    .line 151
    aput-object v6, v3, v16

    .line 153
    iget-wide v7, v1, Luh0;->d:J

    .line 155
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    move-result-object v7

    .line 159
    const/4 v8, 0x1

    .line 160
    aput-object v7, v3, v8

    .line 162
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 165
    move-result-object v8

    .line 166
    const/4 v6, 0x2

    .line 167
    aput-object v8, v3, v6

    .line 169
    invoke-static {v0, v2, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iput-wide v12, v1, Luh0;->c:J

    .line 174
    iput-wide v14, v1, Luh0;->d:J

    .line 176
    iget-wide v2, v1, Luh0;->a:J

    .line 178
    add-long/2addr v2, v4

    .line 179
    iput-wide v2, v1, Luh0;->a:J

    .line 181
    iget-wide v2, v1, Luh0;->b:J

    .line 183
    add-long/2addr v2, v10

    .line 184
    iput-wide v2, v1, Luh0;->b:J

    .line 186
    goto/16 :goto_5

    .line 188
    :cond_3
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 191
    move-result v2

    .line 192
    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 195
    move-result-wide v3

    .line 196
    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 199
    move-result-wide v12

    .line 200
    iget-wide v14, v1, Luh0;->c:J

    .line 202
    cmp-long v2, v14, v10

    .line 204
    if-eqz v2, :cond_4

    .line 206
    cmp-long v2, v14, v3

    .line 208
    if-gez v2, :cond_4

    .line 210
    sub-long v14, v3, v14

    .line 212
    goto :goto_1

    .line 213
    :cond_4
    move-wide v14, v10

    .line 214
    :goto_1
    iget-wide v6, v1, Luh0;->d:J

    .line 216
    cmp-long v5, v6, v10

    .line 218
    if-eqz v5, :cond_5

    .line 220
    cmp-long v5, v6, v12

    .line 222
    if-gez v5, :cond_5

    .line 224
    sub-long v5, v12, v6

    .line 226
    move-wide/from16 v17, v5

    .line 228
    goto :goto_2

    .line 229
    :cond_5
    move-wide/from16 v17, v10

    .line 231
    :goto_2
    const-string v5, "updateTraffic currentAppRxBytes = {?},lastAppRxBytes = {?},useAppRxBytes = {?}"

    .line 233
    new-array v6, v9, [Ljava/lang/Object;

    .line 235
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 238
    move-result-object v7

    .line 239
    const/16 v16, 0x0

    .line 241
    aput-object v7, v6, v16

    .line 243
    iget-wide v10, v1, Luh0;->c:J

    .line 245
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 248
    move-result-object v7

    .line 249
    const/4 v8, 0x1

    .line 250
    aput-object v7, v6, v8

    .line 252
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 255
    move-result-object v8

    .line 256
    const/4 v2, 0x2

    .line 257
    aput-object v8, v6, v2

    .line 259
    move-object v2, v6

    .line 260
    invoke-static {v0, v5, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    const-string v2, "updateTraffic currentAppTxBytes = {?},lastAppTxBytes = {?},useAppTxBytes = {?}"

    .line 265
    new-array v5, v9, [Ljava/lang/Object;

    .line 267
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 270
    move-result-object v8

    .line 271
    const/4 v10, 0x0

    .line 272
    aput-object v8, v5, v10

    .line 274
    iget-wide v10, v1, Luh0;->d:J

    .line 276
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 279
    move-result-object v8

    .line 280
    const/4 v7, 0x1

    .line 281
    aput-object v8, v5, v7

    .line 283
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 286
    move-result-object v8

    .line 287
    const/4 v6, 0x2

    .line 288
    aput-object v8, v5, v6

    .line 290
    invoke-static {v0, v2, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iput-wide v3, v1, Luh0;->c:J

    .line 295
    iput-wide v12, v1, Luh0;->d:J

    .line 297
    iget-wide v2, v1, Luh0;->a:J

    .line 299
    add-long/2addr v2, v14

    .line 300
    iput-wide v2, v1, Luh0;->a:J

    .line 302
    iget-wide v2, v1, Luh0;->b:J

    .line 304
    add-long v2, v2, v17

    .line 306
    iput-wide v2, v1, Luh0;->b:J

    .line 308
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 311
    move-result-wide v2

    .line 312
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    .line 315
    move-result-wide v4

    .line 316
    iget-wide v10, v1, Luh0;->g:J

    .line 318
    const-wide/16 v12, 0x0

    .line 320
    cmp-long v8, v10, v12

    .line 322
    if-eqz v8, :cond_6

    .line 324
    cmp-long v8, v10, v2

    .line 326
    if-gez v8, :cond_6

    .line 328
    sub-long v12, v2, v10

    .line 330
    cmp-long v8, v12, v14

    .line 332
    if-lez v8, :cond_7

    .line 334
    sub-long/2addr v12, v14

    .line 335
    goto :goto_3

    .line 336
    :cond_6
    const-wide/16 v12, 0x0

    .line 338
    :cond_7
    :goto_3
    iget-wide v10, v1, Luh0;->h:J

    .line 340
    const-wide/16 v14, 0x0

    .line 342
    cmp-long v8, v10, v14

    .line 344
    if-eqz v8, :cond_8

    .line 346
    cmp-long v8, v10, v4

    .line 348
    if-gez v8, :cond_8

    .line 350
    sub-long v10, v4, v10

    .line 352
    cmp-long v8, v10, v17

    .line 354
    if-lez v8, :cond_9

    .line 356
    sub-long v10, v10, v17

    .line 358
    goto :goto_4

    .line 359
    :cond_8
    move-wide v10, v14

    .line 360
    :cond_9
    :goto_4
    const-string v8, "updateTraffic currentOtherTotalRxBytes = {?},lastOtherTotalRxBytes = {?},useOtherTotalRxBytes = {?}"

    .line 362
    new-array v14, v9, [Ljava/lang/Object;

    .line 364
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 367
    move-result-object v15

    .line 368
    const/16 v16, 0x0

    .line 370
    aput-object v15, v14, v16

    .line 372
    iget-wide v6, v1, Luh0;->g:J

    .line 374
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 377
    move-result-object v6

    .line 378
    const/4 v7, 0x1

    .line 379
    aput-object v6, v14, v7

    .line 381
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 384
    move-result-object v6

    .line 385
    const/4 v15, 0x2

    .line 386
    aput-object v6, v14, v15

    .line 388
    invoke-static {v0, v8, v14}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    const-string v8, "updateTraffic currentOtherTotalTxBytes = {?},lastOtherTotalTxBytes = {?},useOtherTotalTxBytes = {?}"

    .line 393
    new-array v14, v9, [Ljava/lang/Object;

    .line 395
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 398
    move-result-object v15

    .line 399
    const/16 v16, 0x0

    .line 401
    aput-object v15, v14, v16

    .line 403
    iget-wide v6, v1, Luh0;->h:J

    .line 405
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 408
    move-result-object v6

    .line 409
    const/4 v7, 0x1

    .line 410
    aput-object v6, v14, v7

    .line 412
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 415
    move-result-object v6

    .line 416
    const/4 v15, 0x2

    .line 417
    aput-object v6, v14, v15

    .line 419
    invoke-static {v0, v8, v14}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    iput-wide v2, v1, Luh0;->g:J

    .line 424
    iput-wide v4, v1, Luh0;->h:J

    .line 426
    iget-wide v2, v1, Luh0;->e:J

    .line 428
    add-long/2addr v2, v12

    .line 429
    iput-wide v2, v1, Luh0;->e:J

    .line 431
    iget-wide v2, v1, Luh0;->f:J

    .line 433
    add-long/2addr v2, v10

    .line 434
    iput-wide v2, v1, Luh0;->f:J

    .line 436
    :goto_5
    const-string v2, "updateTraffic end appRxBytes = {?},appTxBytes = {?},otherTotalRxBytes = {?},otherTotalTxBytes = {?}"

    .line 438
    const/4 v3, 0x4

    .line 439
    new-array v3, v3, [Ljava/lang/Object;

    .line 441
    iget-wide v4, v1, Luh0;->a:J

    .line 443
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 446
    move-result-object v4

    .line 447
    const/4 v5, 0x0

    .line 448
    aput-object v4, v3, v5

    .line 450
    iget-wide v4, v1, Luh0;->b:J

    .line 452
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 455
    move-result-object v4

    .line 456
    const/4 v5, 0x1

    .line 457
    aput-object v4, v3, v5

    .line 459
    iget-wide v4, v1, Luh0;->e:J

    .line 461
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 464
    move-result-object v4

    .line 465
    const/4 v5, 0x2

    .line 466
    aput-object v4, v3, v5

    .line 468
    iget-wide v4, v1, Luh0;->f:J

    .line 470
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 473
    move-result-object v4

    .line 474
    aput-object v4, v3, v9

    .line 476
    invoke-static {v0, v2, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    monitor-exit p0

    .line 480
    return-void

    .line 481
    :catchall_0
    move-exception v0

    .line 482
    monitor-exit p0

    .line 483
    throw v0
.end method
