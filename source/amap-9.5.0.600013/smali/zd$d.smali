.class public Lzd$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzd;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzd;


# direct methods
.method public constructor <init>(Lzd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzd$d;->a:Lzd;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 11

    .line 1
    invoke-static {}, Lcz;->p()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string v0, "Camera2"

    .line 10
    const-string v2, "onImageAvailable start"

    .line 12
    new-array v3, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    move-result-wide v2

    .line 21
    iget-object v0, p0, Lzd$d;->a:Lzd;

    .line 23
    invoke-static {v0}, Lzd;->E(Lzd;)Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;

    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 29
    iget-object v0, p0, Lzd$d;->a:Lzd;

    .line 31
    new-instance v4, Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;

    .line 33
    invoke-direct {v4}, Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;-><init>()V

    .line 36
    invoke-static {v0, v4}, Lzd;->F(Lzd;Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;)Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;

    .line 39
    :cond_1
    iget-object v0, p0, Lzd$d;->a:Lzd;

    .line 41
    invoke-static {v0}, Lzd;->E(Lzd;)Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;

    .line 44
    move-result-object v0

    .line 45
    iput-wide v2, v0, Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;->mReceiveImageTimeStamp:J

    .line 47
    iget-object v0, p0, Lzd$d;->a:Lzd;

    .line 49
    invoke-static {v0}, Lzd;->G(Lzd;)J

    .line 52
    move-result-wide v4

    .line 53
    const-wide/16 v6, 0x0

    .line 55
    cmp-long v0, v4, v6

    .line 57
    if-eqz v0, :cond_6

    .line 59
    iget-object v0, p0, Lzd$d;->a:Lzd;

    .line 61
    invoke-static {v0}, Lzd;->G(Lzd;)J

    .line 64
    move-result-wide v4

    .line 65
    sub-long v4, v2, v4

    .line 67
    iget-object v0, p0, Lzd$d;->a:Lzd;

    .line 69
    invoke-static {v0}, Lzd;->I(Lzd;)Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 72
    move-result-object v0

    .line 73
    iget-wide v8, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->minIntervalTime:J

    .line 75
    cmp-long v0, v8, v4

    .line 77
    if-gtz v0, :cond_2

    .line 79
    iget-object v0, p0, Lzd$d;->a:Lzd;

    .line 81
    invoke-static {v0}, Lzd;->I(Lzd;)Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 84
    move-result-object v0

    .line 85
    iget-wide v8, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->minIntervalTime:J

    .line 87
    cmp-long v0, v8, v6

    .line 89
    if-nez v0, :cond_3

    .line 91
    :cond_2
    iget-object v0, p0, Lzd$d;->a:Lzd;

    .line 93
    invoke-static {v0}, Lzd;->I(Lzd;)Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 96
    move-result-object v0

    .line 97
    iput-wide v4, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->minIntervalTime:J

    .line 99
    :cond_3
    iget-object v0, p0, Lzd$d;->a:Lzd;

    .line 101
    invoke-static {v0}, Lzd;->I(Lzd;)Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 104
    move-result-object v0

    .line 105
    iget-wide v8, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->maxIntervalTime:J

    .line 107
    cmp-long v0, v8, v4

    .line 109
    if-ltz v0, :cond_4

    .line 111
    iget-object v0, p0, Lzd$d;->a:Lzd;

    .line 113
    invoke-static {v0}, Lzd;->I(Lzd;)Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 116
    move-result-object v0

    .line 117
    iget-wide v8, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->maxIntervalTime:J

    .line 119
    cmp-long v0, v8, v6

    .line 121
    if-nez v0, :cond_5

    .line 123
    :cond_4
    iget-object v0, p0, Lzd$d;->a:Lzd;

    .line 125
    invoke-static {v0}, Lzd;->I(Lzd;)Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 128
    move-result-object v0

    .line 129
    iput-wide v4, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->maxIntervalTime:J

    .line 131
    :cond_5
    iget-object v0, p0, Lzd$d;->a:Lzd;

    .line 133
    invoke-static {v0}, Lzd;->J(Lzd;)Ljava/util/ArrayList;

    .line 136
    move-result-object v0

    .line 137
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_6
    iget-object v0, p0, Lzd$d;->a:Lzd;

    .line 146
    invoke-static {v0, v2, v3}, Lzd;->H(Lzd;J)J

    .line 149
    iget-object v0, p0, Lzd$d;->a:Lzd;

    .line 151
    invoke-static {v0}, Lzd;->o(Lzd;)Ljava/lang/Object;

    .line 154
    move-result-object v0

    .line 155
    monitor-enter v0

    .line 156
    if-eqz p1, :cond_b

    .line 158
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    .line 161
    move-result-object p1

    .line 162
    invoke-static {}, Lcz;->p()Z

    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_7

    .line 168
    const-string v4, "Camera2"

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    const-string v8, "onImageAvailable image= "

    .line 177
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v5

    .line 187
    new-array v8, v1, [Ljava/lang/Object;

    .line 189
    invoke-static {v4, v5, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_7
    if-eqz p1, :cond_a

    .line 194
    iget-object v4, p0, Lzd$d;->a:Lzd;

    .line 196
    invoke-static {v4}, Lzd;->p(Lzd;)J

    .line 199
    move-result-wide v4

    .line 200
    cmp-long v8, v4, v6

    .line 202
    if-nez v8, :cond_8

    .line 204
    iget-object v4, p0, Lzd$d;->a:Lzd;

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 209
    move-result-wide v8

    .line 210
    invoke-static {v4, v8, v9}, Lzd;->q(Lzd;J)J

    .line 213
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 216
    move-result-wide v4

    .line 217
    iget-object v8, p0, Lzd$d;->a:Lzd;

    .line 219
    invoke-static {v8}, Lzd;->p(Lzd;)J

    .line 222
    move-result-wide v8

    .line 223
    sub-long/2addr v4, v8

    .line 224
    const-wide/16 v8, 0x3e8

    .line 226
    cmp-long v10, v4, v8

    .line 228
    if-gez v10, :cond_9

    .line 230
    iget-object v4, p0, Lzd$d;->a:Lzd;

    .line 232
    invoke-static {v4}, Lzd;->t(Lzd;)J

    .line 235
    goto :goto_0

    .line 236
    :cond_9
    const-string v4, "Camera2"

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    .line 240
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    const-string v8, "onImageAvailable FPS:"

    .line 245
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v8, p0, Lzd$d;->a:Lzd;

    .line 250
    invoke-static {v8}, Lzd;->r(Lzd;)J

    .line 253
    move-result-wide v8

    .line 254
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object v5

    .line 261
    new-array v8, v1, [Ljava/lang/Object;

    .line 263
    invoke-static {v4, v5, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    iget-object v4, p0, Lzd$d;->a:Lzd;

    .line 268
    invoke-static {v4, v6, v7}, Lzd;->s(Lzd;J)J

    .line 271
    iget-object v4, p0, Lzd$d;->a:Lzd;

    .line 273
    invoke-static {v4, v6, v7}, Lzd;->q(Lzd;J)J

    .line 276
    iget-object v4, p0, Lzd$d;->a:Lzd;

    .line 278
    invoke-static {v4}, Lzd;->u(Lzd;)V

    .line 281
    const-string v4, "Camera2"

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    .line 285
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    const-string v6, "realReceiveImageFps:"

    .line 290
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v6, p0, Lzd$d;->a:Lzd;

    .line 295
    invoke-static {v6}, Lzd;->I(Lzd;)Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 298
    move-result-object v6

    .line 299
    iget v6, v6, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->realReceiveImageFps:F

    .line 301
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 304
    const-string v6, ", realGetImageFps:"

    .line 306
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v6, p0, Lzd$d;->a:Lzd;

    .line 311
    invoke-static {v6}, Lzd;->I(Lzd;)Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 314
    move-result-object v6

    .line 315
    iget v6, v6, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->realGetImageFps:F

    .line 317
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    move-result-object v5

    .line 324
    new-array v6, v1, [Ljava/lang/Object;

    .line 326
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    :cond_a
    :goto_0
    iget-object v4, p0, Lzd$d;->a:Lzd;

    .line 331
    invoke-static {v4, p1}, Lzd;->v(Lzd;Landroid/media/Image;)Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 334
    if-eqz p1, :cond_b

    .line 336
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 339
    iget-object p1, p0, Lzd$d;->a:Lzd;

    .line 341
    invoke-static {p1}, Lzd;->w(Lzd;)Ljava/util/ArrayList;

    .line 344
    move-result-object p1

    .line 345
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 348
    move-result-object v4

    .line 349
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_b
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 356
    move-result-wide v4

    .line 357
    invoke-static {}, Lcz;->p()Z

    .line 360
    move-result p1

    .line 361
    if-eqz p1, :cond_c

    .line 363
    const-string p1, "Camera2"

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    .line 367
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    const-string v6, "onImageAvailable end, startReceiveTimeStamp:"

    .line 372
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 378
    const-string v6, ", endReceiveTimeStamp:"

    .line 380
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 386
    const-string v6, ", consumeTime:"

    .line 388
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    sub-long/2addr v4, v2

    .line 392
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 398
    move-result-object v0

    .line 399
    new-array v1, v1, [Ljava/lang/Object;

    .line 401
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    :cond_c
    return-void

    .line 405
    :catchall_0
    move-exception p1

    .line 406
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    throw p1
.end method
