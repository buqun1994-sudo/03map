.class public Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/openspace/IOpenSpaceDetector;


# instance fields
.field private mLastUpdateTime:J

.field private final mLocations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amap/location/support/bean/location/AmapLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mLogger:Ljava/lang/StringBuffer;

.field private mOpenSpace:Z

.field private mSampleTimeInterval:I

.field private mValidTimeInterval:I

.field private mWindowSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const v0, 0x1d4c0

    .line 7
    iput v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mValidTimeInterval:I

    .line 9
    const/16 v0, 0x4e20

    .line 11
    iput v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mSampleTimeInterval:I

    .line 13
    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mWindowSize:I

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    .line 18
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 23
    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLastUpdateTime:J

    .line 27
    return-void
.end method


# virtual methods
.method public isOpenSpace()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mOpenSpace:Z

    .line 3
    return v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 7
    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLastUpdateTime:J

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mOpenSpace:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public setDebugLogger(Ljava/lang/StringBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLogger:Ljava/lang/StringBuffer;

    .line 3
    return-void
.end method

.method public declared-synchronized updateStatus(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 16
    invoke-virtual {v2}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 22
    invoke-virtual {v2}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 25
    move-result-wide v2

    .line 26
    sub-long/2addr v0, v2

    .line 27
    iget v2, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mValidTimeInterval:I

    .line 29
    int-to-long v2, v2

    .line 30
    cmp-long v4, v0, v2

    .line 32
    if-lez v4, :cond_0

    .line 34
    iget-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 36
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 41
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 44
    move-result v0

    .line 45
    const/16 v1, 0x1e

    .line 47
    if-lt v0, v1, :cond_1

    .line 49
    iget-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 51
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 56
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 62
    move-result-wide v0

    .line 63
    iget-wide v2, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLastUpdateTime:J

    .line 65
    sub-long/2addr v0, v2

    .line 66
    iget v2, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mSampleTimeInterval:I

    .line 68
    int-to-long v2, v2

    .line 69
    cmp-long v4, v0, v2

    .line 71
    if-lez v4, :cond_17

    .line 73
    iget-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 75
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 78
    move-result v0

    .line 79
    const/16 v1, 0xa

    .line 81
    if-le v0, v1, :cond_17

    .line 83
    iget-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 85
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 91
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 94
    move-result-wide v0

    .line 95
    iget-object v2, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 97
    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 103
    invoke-virtual {v2}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 106
    move-result-wide v2

    .line 107
    sub-long/2addr v0, v2

    .line 108
    const-wide/32 v2, 0xea60

    .line 111
    cmp-long v4, v0, v2

    .line 113
    if-lez v4, :cond_17

    .line 115
    iget-object v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 117
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 120
    move-result-object v0

    .line 121
    const/4 v1, 0x0

    .line 122
    const/4 v2, 0x0

    .line 123
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    move-result v3

    .line 127
    const/4 v4, 0x3

    .line 128
    if-eqz v3, :cond_3

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 136
    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getSubType()I

    .line 139
    move-result v3

    .line 140
    if-ne v3, v4, :cond_2

    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 144
    goto :goto_0

    .line 145
    :cond_3
    int-to-float v0, v2

    .line 146
    iget-object v2, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 148
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 151
    move-result v2

    .line 152
    int-to-float v2, v2

    .line 153
    div-float/2addr v0, v2

    .line 154
    float-to-double v2, v0

    .line 155
    const-wide v5, 0x3fe3333333333333L    # 0.6

    .line 160
    const/4 v0, 0x1

    .line 161
    cmpl-double v7, v2, v5

    .line 163
    if-lez v7, :cond_4

    .line 165
    const/4 v2, 0x1

    .line 166
    goto :goto_1

    .line 167
    :cond_4
    const/4 v2, 0x0

    .line 168
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    .line 170
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 173
    iget-object v5, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 175
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    .line 178
    move-result v5

    .line 179
    sub-int/2addr v5, v0

    .line 180
    :goto_2
    if-le v5, v0, :cond_9

    .line 182
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 185
    move-result v6

    .line 186
    if-lez v6, :cond_5

    .line 188
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 191
    move-result v6

    .line 192
    sub-int/2addr v6, v0

    .line 193
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    move-result-object v6

    .line 197
    check-cast v6, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 199
    invoke-virtual {v6}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 202
    move-result-wide v6

    .line 203
    iget-object v8, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 205
    invoke-virtual {v8, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 208
    move-result-object v8

    .line 209
    check-cast v8, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 211
    invoke-virtual {v8}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 214
    move-result-wide v8

    .line 215
    sub-long/2addr v6, v8

    .line 216
    iget v8, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mSampleTimeInterval:I

    .line 218
    int-to-long v8, v8

    .line 219
    cmp-long v10, v6, v8

    .line 221
    if-gez v10, :cond_5

    .line 223
    goto :goto_4

    .line 224
    :cond_5
    iget-object v6, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 226
    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 229
    move-result-object v6

    .line 230
    check-cast v6, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 232
    invoke-virtual {v6}, Lcom/amap/location/type/location/Location;->getSubType()I

    .line 235
    move-result v6

    .line 236
    if-ne v6, v4, :cond_6

    .line 238
    const/4 v6, 0x1

    .line 239
    goto :goto_3

    .line 240
    :cond_6
    const/4 v6, 0x0

    .line 241
    :goto_3
    if-ne v6, v2, :cond_7

    .line 243
    iget-object v6, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLocations:Ljava/util/LinkedList;

    .line 245
    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 248
    move-result-object v6

    .line 249
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 255
    move-result v6

    .line 256
    iget v7, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mWindowSize:I

    .line 258
    if-lt v6, v7, :cond_8

    .line 260
    goto :goto_5

    .line 261
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, -0x1

    .line 263
    goto :goto_2

    .line 264
    :cond_9
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 267
    move-result v5

    .line 268
    if-le v5, v4, :cond_17

    .line 270
    const/4 v5, 0x1

    .line 271
    const/4 v6, 0x0

    .line 272
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 275
    move-result v7

    .line 276
    if-ge v5, v7, :cond_c

    .line 278
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 281
    move-result-object v7

    .line 282
    check-cast v7, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 284
    add-int/lit8 v8, v5, -0x1

    .line 286
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 289
    move-result-object v8

    .line 290
    check-cast v8, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 292
    invoke-virtual {v7, v8}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    .line 295
    move-result-wide v7

    .line 296
    const-wide/high16 v9, 0x4069000000000000L    # 200.0

    .line 298
    cmpl-double v11, v7, v9

    .line 300
    if-lez v11, :cond_a

    .line 302
    add-int/lit8 v6, v6, 0x1

    .line 304
    goto :goto_7

    .line 305
    :cond_a
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 308
    move-result v9

    .line 309
    if-le v9, v4, :cond_b

    .line 311
    if-eqz v2, :cond_b

    .line 313
    const-wide/high16 v9, 0x403e000000000000L    # 30.0

    .line 315
    cmpg-double v11, v7, v9

    .line 317
    if-gez v11, :cond_b

    .line 319
    const/4 v6, 0x0

    .line 320
    goto :goto_8

    .line 321
    :cond_b
    :goto_7
    add-int/lit8 v5, v5, 0x1

    .line 323
    goto :goto_6

    .line 324
    :cond_c
    :goto_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 327
    move-result v2

    .line 328
    div-int/lit8 v2, v2, 0x2

    .line 330
    if-lt v6, v2, :cond_d

    .line 332
    iput-boolean v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mOpenSpace:Z

    .line 334
    goto/16 :goto_f

    .line 336
    :cond_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 339
    move-result v2

    .line 340
    if-lt v2, v4, :cond_15

    .line 342
    const/4 v2, 0x1

    .line 343
    :goto_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 346
    move-result v4

    .line 347
    if-ge v2, v4, :cond_f

    .line 349
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 352
    move-result-object v4

    .line 353
    check-cast v4, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 355
    add-int/lit8 v5, v2, -0x1

    .line 357
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 360
    move-result-object v5

    .line 361
    check-cast v5, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 363
    invoke-virtual {v4, v5}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    .line 366
    move-result-wide v4

    .line 367
    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    .line 369
    cmpg-double v8, v4, v6

    .line 371
    if-gez v8, :cond_e

    .line 373
    const/4 v2, 0x0

    .line 374
    goto :goto_a

    .line 375
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 377
    goto :goto_9

    .line 378
    :cond_f
    const/4 v2, 0x1

    .line 379
    :goto_a
    if-eqz v2, :cond_13

    .line 381
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 384
    move-result v4

    .line 385
    sub-int/2addr v4, v0

    .line 386
    new-array v5, v4, [D

    .line 388
    const/4 v6, 0x0

    .line 389
    :goto_b
    if-ge v6, v4, :cond_10

    .line 391
    add-int/lit8 v7, v6, 0x1

    .line 393
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 396
    move-result-object v8

    .line 397
    check-cast v8, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 399
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 402
    move-result-object v9

    .line 403
    check-cast v9, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 405
    invoke-virtual {v8, v9}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    .line 408
    move-result-wide v8

    .line 409
    aput-wide v8, v5, v6

    .line 411
    move v6, v7

    .line 412
    goto :goto_b

    .line 413
    :cond_10
    new-array v6, v4, [D

    .line 415
    const/4 v7, 0x1

    .line 416
    :goto_c
    if-ge v7, v4, :cond_11

    .line 418
    add-int/lit8 v8, v7, 0x1

    .line 420
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 423
    move-result-object v9

    .line 424
    check-cast v9, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 426
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 429
    move-result-object v10

    .line 430
    check-cast v10, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 432
    invoke-virtual {v9, v10}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    .line 435
    move-result-wide v9

    .line 436
    aput-wide v9, v6, v7

    .line 438
    move v7, v8

    .line 439
    goto :goto_c

    .line 440
    :cond_11
    :goto_d
    if-ge v0, v4, :cond_13

    .line 442
    aget-wide v7, v5, v0

    .line 444
    add-int/lit8 v3, v0, -0x1

    .line 446
    aget-wide v9, v5, v3

    .line 448
    cmpg-double v3, v7, v9

    .line 450
    if-ltz v3, :cond_14

    .line 452
    aget-wide v9, v6, v0

    .line 454
    cmpg-double v3, v7, v9

    .line 456
    if-gez v3, :cond_12

    .line 458
    goto :goto_e

    .line 459
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 461
    goto :goto_d

    .line 462
    :cond_13
    move v1, v2

    .line 463
    :cond_14
    :goto_e
    iput-boolean v1, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mOpenSpace:Z

    .line 465
    goto :goto_f

    .line 466
    :cond_15
    iput-boolean v1, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mOpenSpace:Z

    .line 468
    :goto_f
    sget-boolean v0, Lcom/amap/location/support/AmapContext;->DEBUG:Z

    .line 470
    if-eqz v0, :cond_16

    .line 472
    const-string v0, "osdForCar"

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    .line 476
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    const-string v2, "res:"

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    iget-boolean v2, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mOpenSpace:Z

    .line 486
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    move-result-object v1

    .line 493
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_16
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 499
    move-result-wide v0

    .line 500
    iput-wide v0, p0, Lcom/amap/location/support/openspace/OpenSpaceDetectorForCar;->mLastUpdateTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :cond_17
    monitor-exit p0

    .line 503
    return-void

    .line 504
    :catchall_0
    move-exception p1

    .line 505
    monitor-exit p0

    .line 506
    throw p1
.end method
