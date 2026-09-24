.class public Lcom/amap/location/k/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/amap/location/k/d/b;

.field private b:Lcom/amap/location/k/a/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/k/d/b;Lcom/amap/location/k/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/amap/location/k/a/a/a;->a:Lcom/amap/location/k/d/b;

    .line 6
    iput-object p2, p0, Lcom/amap/location/k/a/a/a;->b:Lcom/amap/location/k/a/c;

    .line 8
    return-void
.end method

.method private a()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 3
    invoke-direct {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>()V

    .line 6
    new-instance v1, Lorg/json/JSONObject;

    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 11
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 18
    move-result-wide v2

    .line 19
    :try_start_0
    const-string v4, "time"

    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static {v2, v3, v5}, Lcom/amap/location/support/util/DataTypeUtils;->formatTime(JLjava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v4, "command"

    .line 31
    iget-object v5, p0, Lcom/amap/location/k/a/a/a;->b:Lcom/amap/location/k/a/c;

    .line 33
    invoke-virtual {v5}, Lcom/amap/location/k/a/a;->a()Lorg/json/JSONObject;

    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v4

    .line 42
    invoke-static {v4}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 45
    :goto_0
    invoke-static {v0}, Lcom/amap/location/support/header/HeaderBuilder;->createFb(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    .line 48
    move-result v4

    .line 49
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lcom/amap/location/k/d/b/b;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[B)I

    .line 60
    move-result v1

    .line 61
    const v5, 0x186a3

    .line 64
    invoke-static {v0, v5, v1, v2, v3}, Lcom/amap/location/k/d/b/b;->a(Lcom/google/flatbuffers/FlatBufferBuilder;IIJ)I

    .line 67
    move-result v1

    .line 68
    filled-new-array {v1}, [I

    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/amap/location/k/d/b/c;->b(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    .line 75
    move-result v1

    .line 76
    invoke-static {v0}, Lcom/amap/location/k/d/b/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 79
    const/4 v2, 0x1

    .line 80
    invoke-static {v0, v2}, Lcom/amap/location/k/d/b/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 83
    invoke-static {v0, v4}, Lcom/amap/location/k/d/b/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 86
    invoke-static {v0, v1}, Lcom/amap/location/k/d/b/c;->c(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 89
    invoke-static {v0}, Lcom/amap/location/k/d/b/c;->b(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    .line 92
    move-result v1

    .line 93
    invoke-static {v0, v1}, Lcom/amap/location/k/d/b/c;->d(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 96
    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    .line 99
    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/amap/location/k/a/a/a;->a:Lcom/amap/location/k/d/b;

    .line 102
    const/4 v2, 0x2

    .line 103
    invoke-virtual {v1, v2}, Lcom/amap/location/k/d/b;->a(I)Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    const v2, 0xea60

    .line 110
    invoke-static {v1, v0, v2}, Lcom/amap/location/k/d/c/a;->a(Ljava/lang/String;[BI)Lcom/amap/location/k/c/c;

    .line 113
    return-void
.end method


# virtual methods
.method public run()V
    .locals 36

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "UploadTunnelCmdTask"

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const/4 v5, 0x0

    .line 11
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkCoarseType()I

    .line 22
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez v0, :cond_2

    .line 25
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_1

    .line 31
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 34
    move-result v0

    .line 35
    if-ge v5, v0, :cond_0

    .line 37
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/io/Closeable;

    .line 43
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 46
    add-int/lit8 v5, v5, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    :try_start_1
    iget-object v6, v1, Lcom/amap/location/k/a/a/a;->a:Lcom/amap/location/k/d/b;

    .line 55
    invoke-virtual {v6}, Lcom/amap/location/k/d/b;->a()Lcom/amap/location/k/d/a/a;

    .line 58
    move-result-object v6

    .line 59
    iget-object v7, v1, Lcom/amap/location/k/a/a/a;->b:Lcom/amap/location/k/a/c;

    .line 61
    invoke-virtual {v7}, Lcom/amap/location/k/a/c;->c()I

    .line 64
    move-result v7

    .line 65
    invoke-static {v7}, Lcom/amap/location/k/d/b;->b(I)Ljava/lang/String;

    .line 68
    move-result-object v14

    .line 69
    invoke-virtual {v6, v14}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;)J

    .line 72
    move-result-wide v7

    .line 73
    const-wide/16 v15, 0x0

    .line 75
    cmp-long v9, v7, v15

    .line 77
    if-gtz v9, :cond_5

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/k/a/a/a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 85
    move-result v0

    .line 86
    if-lez v0, :cond_4

    .line 88
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 91
    move-result v0

    .line 92
    if-ge v5, v0, :cond_3

    .line 94
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/io/Closeable;

    .line 100
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 103
    add-int/lit8 v5, v5, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 109
    :cond_4
    return-void

    .line 110
    :cond_5
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    const-string v8, "select max(ID) from "

    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v7

    .line 127
    const/4 v8, 0x0

    .line 128
    invoke-virtual {v6, v14, v7, v8}, Lcom/amap/location/k/d/a/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    .line 131
    move-result-object v7

    .line 132
    if-nez v7, :cond_8

    .line 134
    const-string v0, "uptunnel query cursor1 is null"

    .line 136
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 142
    move-result v0

    .line 143
    if-lez v0, :cond_7

    .line 145
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 148
    move-result v0

    .line 149
    if-ge v5, v0, :cond_6

    .line 151
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Ljava/io/Closeable;

    .line 157
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    add-int/lit8 v5, v5, 0x1

    .line 162
    goto :goto_2

    .line 163
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 166
    :cond_7
    return-void

    .line 167
    :cond_8
    :try_start_3
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-interface {v7}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    .line 173
    invoke-interface {v7, v5}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    .line 176
    move-result-wide v12

    .line 177
    invoke-static {v7}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    const-wide/16 v17, 0x1

    .line 182
    const/4 v11, 0x2

    .line 183
    const-wide/32 v19, 0x61a80

    .line 186
    const-string v7, "ID"

    .line 188
    const-wide/16 v21, -0x1

    .line 190
    const/4 v10, 0x1

    .line 191
    if-ne v0, v11, :cond_c

    .line 193
    :try_start_4
    new-array v9, v10, [Ljava/lang/String;

    .line 195
    aput-object v7, v9, v5

    .line 197
    const/4 v0, 0x0

    .line 198
    const/16 v23, 0x0

    .line 200
    const/16 v24, 0x0

    .line 202
    const-string v25, "0,1"

    .line 204
    move-object v7, v6

    .line 205
    move-object v8, v14

    .line 206
    const/4 v4, 0x1

    .line 207
    move-object v10, v0

    .line 208
    const/4 v0, 0x2

    .line 209
    move-object/from16 v11, v23

    .line 211
    move-wide/from16 v26, v12

    .line 213
    move-object/from16 v12, v24

    .line 215
    move-object/from16 v13, v25

    .line 217
    invoke-virtual/range {v7 .. v13}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    .line 220
    move-result-object v7

    .line 221
    if-nez v7, :cond_b

    .line 223
    const-string v0, "uptunnel query cursor2 is null"

    .line 225
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 231
    move-result v0

    .line 232
    if-lez v0, :cond_a

    .line 234
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 237
    move-result v0

    .line 238
    if-ge v5, v0, :cond_9

    .line 240
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    move-result-object v0

    .line 244
    check-cast v0, Ljava/io/Closeable;

    .line 246
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 249
    add-int/lit8 v5, v5, 0x1

    .line 251
    goto :goto_3

    .line 252
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 255
    :cond_a
    return-void

    .line 256
    :cond_b
    :try_start_5
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {v7}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    .line 262
    invoke-interface {v7, v5}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    .line 265
    move-result-wide v8

    .line 266
    invoke-static {v7}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 269
    move-wide v12, v8

    .line 270
    move-wide/from16 v28, v26

    .line 272
    goto/16 :goto_7

    .line 274
    :cond_c
    move-wide/from16 v26, v12

    .line 276
    const/4 v4, 0x1

    .line 277
    const/4 v13, 0x2

    .line 278
    if-ne v0, v4, :cond_11

    .line 280
    move-wide/from16 v11, v26

    .line 282
    add-long v9, v11, v17

    .line 284
    move-wide/from16 v23, v15

    .line 286
    :goto_4
    cmp-long v0, v23, v19

    .line 288
    if-gez v0, :cond_10

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    .line 292
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    const-string v13, "select min(ID) from (select * from "

    .line 297
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v13, " where id < "

    .line 305
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 311
    const-string v13, " order by "

    .line 313
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v13, " desc limit 0, 50)"

    .line 321
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v6, v14, v0, v8}, Lcom/amap/location/k/d/a/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    .line 331
    move-result-object v0

    .line 332
    if-nez v0, :cond_d

    .line 334
    const-string v0, "uptunnel query cursor3 is null"

    .line 336
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    goto/16 :goto_5

    .line 341
    :cond_d
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    .line 347
    move-result v13

    .line 348
    if-eqz v13, :cond_f

    .line 350
    move-wide/from16 v26, v9

    .line 352
    invoke-interface {v0, v5}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    .line 355
    move-result-wide v8

    .line 356
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 359
    cmp-long v0, v8, v15

    .line 361
    if-gtz v0, :cond_e

    .line 363
    move-wide/from16 v28, v11

    .line 365
    move-wide/from16 v10, v26

    .line 367
    goto :goto_6

    .line 368
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 370
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    const-string v13, "select sum(size) from "

    .line 375
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string v13, " where "

    .line 383
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v13, " >= "

    .line 391
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 397
    const-string v13, " and "

    .line 399
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    const-string v13, " < "

    .line 407
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    move-wide/from16 v28, v11

    .line 412
    move-wide/from16 v10, v26

    .line 414
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    move-result-object v0

    .line 421
    const/4 v10, 0x0

    .line 422
    invoke-virtual {v6, v14, v0, v10}, Lcom/amap/location/k/d/a/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    .line 425
    move-result-object v0

    .line 426
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    .line 432
    invoke-interface {v0, v5}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    .line 435
    move-result-wide v11

    .line 436
    add-long v23, v23, v11

    .line 438
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 441
    move-wide/from16 v11, v28

    .line 443
    const/4 v13, 0x2

    .line 444
    move-wide/from16 v34, v8

    .line 446
    move-object v8, v10

    .line 447
    move-wide/from16 v9, v34

    .line 449
    goto/16 :goto_4

    .line 451
    :cond_f
    move-wide/from16 v28, v11

    .line 453
    move-wide v10, v9

    .line 454
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 457
    goto :goto_6

    .line 458
    :cond_10
    :goto_5
    move-wide/from16 v28, v11

    .line 460
    move-wide v10, v9

    .line 461
    :goto_6
    cmp-long v0, v23, v15

    .line 463
    if-lez v0, :cond_12

    .line 465
    move-wide v12, v10

    .line 466
    goto :goto_7

    .line 467
    :cond_11
    move-wide/from16 v28, v26

    .line 469
    :cond_12
    move-wide/from16 v12, v21

    .line 471
    :goto_7
    cmp-long v0, v12, v15

    .line 473
    if-lez v0, :cond_1a

    .line 475
    cmp-long v0, v28, v12

    .line 477
    if-ltz v0, :cond_1a

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    .line 481
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    new-instance v11, Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 486
    invoke-direct {v11}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>()V

    .line 489
    sget-object v9, Lcom/amap/location/k/d/a/a/a;->a:[Ljava/lang/String;

    .line 491
    new-instance v7, Ljava/lang/StringBuilder;

    .line 493
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    const-string v8, " id >= "

    .line 498
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 504
    const-string v8, " and id <= "

    .line 506
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    move-wide/from16 v4, v28

    .line 511
    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    move-result-object v10

    .line 518
    const/16 v26, 0x0

    .line 520
    const/16 v27, 0x0

    .line 522
    const/16 v28, 0x0

    .line 524
    move-object v7, v6

    .line 525
    move-object v8, v14

    .line 526
    move-object v15, v11

    .line 527
    move-object/from16 v11, v26

    .line 529
    move-wide/from16 v30, v12

    .line 531
    move-object/from16 v12, v27

    .line 533
    move-wide/from16 v26, v4

    .line 535
    const/4 v4, 0x2

    .line 536
    move-object/from16 v13, v28

    .line 538
    invoke-virtual/range {v7 .. v13}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    .line 541
    move-result-object v5

    .line 542
    if-nez v5, :cond_13

    .line 544
    const-string v0, "uptunnel query cursor4 is null"

    .line 546
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    goto/16 :goto_b

    .line 551
    :cond_13
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-interface {v5}, Lcom/amap/location/support/db/IAmapCursor;->getCount()I

    .line 557
    move-result v7

    .line 558
    if-nez v7, :cond_14

    .line 560
    goto/16 :goto_b

    .line 562
    :cond_14
    move-wide/from16 v7, v21

    .line 564
    move-wide/from16 v12, v30

    .line 566
    const-wide/16 v9, 0x0

    .line 568
    move-wide/from16 v30, v7

    .line 570
    :goto_8
    invoke-interface {v5}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    .line 573
    move-result v11

    .line 574
    if-eqz v11, :cond_17

    .line 576
    const/4 v11, 0x0

    .line 577
    invoke-interface {v5, v11}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    .line 580
    move-result-wide v12

    .line 581
    add-long v12, v12, v17

    .line 583
    const/4 v11, 0x1

    .line 584
    invoke-interface {v5, v11}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    .line 587
    move-result v4

    .line 588
    move-object/from16 v16, v6

    .line 590
    const/4 v11, 0x2

    .line 591
    invoke-interface {v5, v11}, Lcom/amap/location/support/db/IAmapCursor;->getBlob(I)[B

    .line 594
    move-result-object v6

    .line 595
    const/4 v11, 0x3

    .line 596
    move-wide/from16 v30, v12

    .line 598
    invoke-interface {v5, v11}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    .line 601
    move-result-wide v11

    .line 602
    cmp-long v13, v7, v21

    .line 604
    if-nez v13, :cond_15

    .line 606
    move-wide v7, v11

    .line 607
    :cond_15
    const/4 v13, 0x4

    .line 608
    invoke-interface {v5, v13}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    .line 611
    move-result v13

    .line 612
    invoke-static {v15, v6}, Lcom/amap/location/k/d/b/b;->a(Lcom/google/flatbuffers/FlatBufferBuilder;[B)I

    .line 615
    move-result v6

    .line 616
    invoke-static {v15, v4, v6, v11, v12}, Lcom/amap/location/k/d/b/b;->a(Lcom/google/flatbuffers/FlatBufferBuilder;IIJ)I

    .line 619
    move-result v4

    .line 620
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 623
    move-result-object v4

    .line 624
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    move-wide/from16 v32, v7

    .line 629
    int-to-long v6, v13

    .line 630
    add-long/2addr v9, v6

    .line 631
    cmp-long v4, v9, v19

    .line 633
    if-ltz v4, :cond_16

    .line 635
    move-wide v9, v11

    .line 636
    move-wide/from16 v12, v30

    .line 638
    move-wide/from16 v7, v32

    .line 640
    goto :goto_9

    .line 641
    :cond_16
    move-object/from16 v6, v16

    .line 643
    move-wide/from16 v7, v32

    .line 645
    const/4 v4, 0x2

    .line 646
    move-wide/from16 v34, v11

    .line 648
    move-wide/from16 v12, v30

    .line 650
    move-wide/from16 v30, v34

    .line 652
    goto :goto_8

    .line 653
    :cond_17
    move-object/from16 v16, v6

    .line 655
    move-wide/from16 v9, v30

    .line 657
    :goto_9
    invoke-static {v5}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 660
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 663
    move-result v4

    .line 664
    new-array v4, v4, [I

    .line 666
    const/4 v5, 0x0

    .line 667
    :goto_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 670
    move-result v6

    .line 671
    if-ge v5, v6, :cond_18

    .line 673
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 676
    move-result-object v6

    .line 677
    check-cast v6, Ljava/lang/Integer;

    .line 679
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 682
    move-result v6

    .line 683
    aput v6, v4, v5

    .line 685
    add-int/lit8 v5, v5, 0x1

    .line 687
    goto :goto_a

    .line 688
    :cond_18
    invoke-static {v15}, Lcom/amap/location/support/header/HeaderBuilder;->createFb(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    .line 691
    move-result v5

    .line 692
    invoke-static {v15, v4}, Lcom/amap/location/k/d/b/c;->b(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    .line 695
    move-result v4

    .line 696
    invoke-static {v15}, Lcom/amap/location/k/d/b/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 699
    const/4 v6, 0x1

    .line 700
    invoke-static {v15, v6}, Lcom/amap/location/k/d/b/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 703
    invoke-static {v15, v5}, Lcom/amap/location/k/d/b/c;->a(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 706
    invoke-static {v15, v4}, Lcom/amap/location/k/d/b/c;->c(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 709
    invoke-static {v15}, Lcom/amap/location/k/d/b/c;->b(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    .line 712
    move-result v4

    .line 713
    invoke-static {v15, v4}, Lcom/amap/location/k/d/b/c;->d(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 716
    iget-object v4, v1, Lcom/amap/location/k/a/a/a;->a:Lcom/amap/location/k/d/b;

    .line 718
    iget-object v5, v1, Lcom/amap/location/k/a/a/a;->b:Lcom/amap/location/k/a/c;

    .line 720
    invoke-virtual {v5}, Lcom/amap/location/k/a/c;->c()I

    .line 723
    move-result v5

    .line 724
    invoke-virtual {v4, v5}, Lcom/amap/location/k/d/b;->a(I)Ljava/lang/String;

    .line 727
    move-result-object v4

    .line 728
    invoke-virtual {v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->sizedByteArray()[B

    .line 731
    move-result-object v5

    .line 732
    const v11, 0x1d4c0

    .line 735
    invoke-static {v4, v5, v11}, Lcom/amap/location/k/d/c/a;->a(Ljava/lang/String;[BI)Lcom/amap/location/k/c/c;

    .line 738
    move-result-object v4

    .line 739
    iget v4, v4, Lcom/amap/location/k/c/c;->c:I

    .line 741
    if-nez v4, :cond_19

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    .line 745
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 748
    const-string v5, "UpTunnel fail,\u6761\u6570\u662f:"

    .line 750
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 756
    move-result v0

    .line 757
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 760
    const-string v0, ", \u6700\u540e\u4e00\u6761 id  \u662f:"

    .line 762
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 768
    const-string v0, ",\u7b2c\u4e00\u6761\u65f6\u95f4\uff1a"

    .line 770
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 776
    const-string v0, ",\u6700\u540e\u4e00\u6761\u65f6\u95f4\uff1a"

    .line 778
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 787
    move-result-object v0

    .line 788
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 791
    move-result-object v0

    .line 792
    const v4, 0xc3501

    .line 795
    invoke-static {v4, v0}, Lcom/amap/location/k/b;->a(I[B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 798
    :cond_19
    move-object/from16 v6, v16

    .line 800
    move-wide/from16 v28, v26

    .line 802
    const/4 v4, 0x1

    .line 803
    const/4 v5, 0x0

    .line 804
    const-wide/16 v15, 0x0

    .line 806
    goto/16 :goto_7

    .line 808
    :cond_1a
    :goto_b
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 811
    move-result v0

    .line 812
    if-lez v0, :cond_1c

    .line 814
    const/4 v5, 0x0

    .line 815
    :goto_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 818
    move-result v0

    .line 819
    if-ge v5, v0, :cond_1b

    .line 821
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 824
    move-result-object v0

    .line 825
    check-cast v0, Ljava/io/Closeable;

    .line 827
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 830
    add-int/lit8 v5, v5, 0x1

    .line 832
    goto :goto_c

    .line 833
    :catchall_0
    move-exception v0

    .line 834
    :try_start_6
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 837
    :try_start_7
    invoke-static {v0}, Lcom/amap/location/support/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 840
    move-result-object v2

    .line 841
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 844
    move-result-object v2

    .line 845
    const v4, 0xc3501

    .line 848
    invoke-static {v4, v2}, Lcom/amap/location/k/b;->a(I[B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 851
    goto :goto_d

    .line 852
    :catch_0
    :try_start_8
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 855
    :goto_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 858
    move-result v0

    .line 859
    if-lez v0, :cond_1c

    .line 861
    const/4 v5, 0x0

    .line 862
    :goto_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 865
    move-result v0

    .line 866
    if-ge v5, v0, :cond_1b

    .line 868
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 871
    move-result-object v0

    .line 872
    check-cast v0, Ljava/io/Closeable;

    .line 874
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 877
    add-int/lit8 v5, v5, 0x1

    .line 879
    goto :goto_e

    .line 880
    :cond_1b
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 883
    :cond_1c
    return-void

    .line 884
    :catchall_1
    move-exception v0

    .line 885
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 888
    move-result v2

    .line 889
    if-lez v2, :cond_1e

    .line 891
    const/4 v5, 0x0

    .line 892
    :goto_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 895
    move-result v2

    .line 896
    if-ge v5, v2, :cond_1d

    .line 898
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 901
    move-result-object v2

    .line 902
    check-cast v2, Ljava/io/Closeable;

    .line 904
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 907
    add-int/lit8 v5, v5, 0x1

    .line 909
    goto :goto_f

    .line 910
    :cond_1d
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 913
    :cond_1e
    throw v0
.end method
