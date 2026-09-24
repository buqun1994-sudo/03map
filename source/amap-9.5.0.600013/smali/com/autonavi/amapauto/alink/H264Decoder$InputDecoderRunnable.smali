.class Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/alink/H264Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputDecoderRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/amapauto/alink/H264Decoder;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/alink/H264Decoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    const-string v0, "DecoderHandler"

    .line 3
    const-string v1, "InputDecoderRunnable mInputStart:{?} "

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    iget-object v4, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 10
    invoke-static {v4}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$000(Lcom/autonavi/amapauto/alink/H264Decoder;)Z

    .line 13
    move-result v4

    .line 14
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x0

    .line 19
    aput-object v4, v3, v5

    .line 21
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 26
    invoke-static {v0}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$000(Lcom/autonavi/amapauto/alink/H264Decoder;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_7

    .line 32
    const-string v0, "DecoderHandler"

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v3, "start onInputBufferAvailable: mVideoFrames.size()="

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v3, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 46
    invoke-static {v3}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$100(Lcom/autonavi/amapauto/alink/H264Decoder;)Ljava/util/LinkedList;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 53
    move-result v3

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    new-array v3, v5, [Ljava/lang/Object;

    .line 63
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 68
    invoke-static {v0}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$100(Lcom/autonavi/amapauto/alink/H264Decoder;)Ljava/util/LinkedList;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 75
    move-result v0

    .line 76
    if-ge v0, v2, :cond_1

    .line 78
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 80
    invoke-static {v0}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$200(Lcom/autonavi/amapauto/alink/H264Decoder;)Ljava/util/concurrent/locks/Lock;

    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 89
    invoke-static {v0}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$300(Lcom/autonavi/amapauto/alink/H264Decoder;)Ljava/util/concurrent/locks/Condition;

    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    goto :goto_2

    .line 99
    :catch_0
    move-exception v0

    .line 100
    :try_start_1
    const-string v1, "DecoderHandler"

    .line 102
    const-string v3, "InputDecoderRunnable mCondition.await Exception : "

    .line 104
    new-array v4, v5, [Ljava/lang/Object;

    .line 106
    invoke-static {v1, v3, v0, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 111
    invoke-static {v0}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$200(Lcom/autonavi/amapauto/alink/H264Decoder;)Ljava/util/concurrent/locks/Lock;

    .line 114
    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 118
    goto :goto_3

    .line 119
    :goto_2
    iget-object v1, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 121
    invoke-static {v1}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$200(Lcom/autonavi/amapauto/alink/H264Decoder;)Ljava/util/concurrent/locks/Lock;

    .line 124
    move-result-object v1

    .line 125
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 128
    throw v0

    .line 129
    :cond_1
    :goto_3
    const-string v0, "DecoderHandler"

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    const-string v3, "onInputBufferAvailable: mVideoFrames.size()="

    .line 138
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v3, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 143
    invoke-static {v3}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$100(Lcom/autonavi/amapauto/alink/H264Decoder;)Ljava/util/LinkedList;

    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 150
    move-result v3

    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    new-array v3, v5, [Ljava/lang/Object;

    .line 160
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 165
    invoke-static {v0}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$400(Lcom/autonavi/amapauto/alink/H264Decoder;)Landroid/media/MediaCodec;

    .line 168
    move-result-object v0

    .line 169
    const-wide/16 v3, -0x1

    .line 171
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    .line 174
    move-result v7

    .line 175
    if-ltz v7, :cond_5

    .line 177
    const-string v0, "DecoderHandler"

    .line 179
    const-string v1, "before queueInputBuffer"

    .line 181
    new-array v3, v5, [Ljava/lang/Object;

    .line 183
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 188
    invoke-static {v0}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$100(Lcom/autonavi/amapauto/alink/H264Decoder;)Ljava/util/LinkedList;

    .line 191
    move-result-object v0

    .line 192
    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 193
    :try_start_3
    iget-object v1, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 195
    invoke-static {v1}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$100(Lcom/autonavi/amapauto/alink/H264Decoder;)Ljava/util/LinkedList;

    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 202
    move-result v1

    .line 203
    if-lez v1, :cond_4

    .line 205
    iget-object v1, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 207
    invoke-static {v1}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$100(Lcom/autonavi/amapauto/alink/H264Decoder;)Ljava/util/LinkedList;

    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    .line 214
    move-result-object v1

    .line 215
    check-cast v1, Lcom/autonavi/amapauto/alink/H264Decoder$VideoFrame;

    .line 217
    iget-object v3, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 219
    invoke-static {v3}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$400(Lcom/autonavi/amapauto/alink/H264Decoder;)Landroid/media/MediaCodec;

    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    .line 226
    move-result-object v3

    .line 227
    aget-object v3, v3, v7

    .line 229
    if-eqz v3, :cond_3

    .line 231
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 234
    if-eqz v1, :cond_2

    .line 236
    iget-object v4, v1, Lcom/autonavi/amapauto/alink/H264Decoder$VideoFrame;->data:[B

    .line 238
    array-length v6, v4

    .line 239
    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 242
    iget-object v3, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 244
    invoke-static {v3}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$400(Lcom/autonavi/amapauto/alink/H264Decoder;)Landroid/media/MediaCodec;

    .line 247
    move-result-object v6

    .line 248
    const/4 v8, 0x0

    .line 249
    iget-object v1, v1, Lcom/autonavi/amapauto/alink/H264Decoder$VideoFrame;->data:[B

    .line 251
    array-length v9, v1

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 255
    move-result-wide v10

    .line 256
    const/4 v12, 0x0

    .line 257
    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 260
    goto :goto_4

    .line 261
    :cond_2
    const-string v1, "DecoderHandler"

    .line 263
    const-string v3, "frame is null!"

    .line 265
    new-array v4, v5, [Ljava/lang/Object;

    .line 267
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    goto :goto_4

    .line 271
    :cond_3
    const-string v1, "DecoderHandler"

    .line 273
    const-string v3, "inputBuffer is null!"

    .line 275
    new-array v4, v5, [Ljava/lang/Object;

    .line 277
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :cond_4
    :goto_4
    monitor-exit v0

    .line 281
    goto :goto_5

    .line 282
    :catchall_1
    move-exception v1

    .line 283
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 284
    :try_start_4
    throw v1

    .line 285
    :cond_5
    const-string v0, "DecoderHandler"

    .line 287
    const-string v1, "No input buffer and inputBufferIndex ={?}"

    .line 289
    new-array v3, v2, [Ljava/lang/Object;

    .line 291
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    move-result-object v4

    .line 295
    aput-object v4, v3, v5

    .line 297
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 300
    goto :goto_6

    .line 301
    :catch_1
    move-exception v0

    .line 302
    const-string v1, "DecoderHandler"

    .line 304
    const-string v3, "InputDecoderRunnable  Exception : "

    .line 306
    new-array v4, v5, [Ljava/lang/Object;

    .line 308
    invoke-static {v1, v3, v0, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 311
    :goto_5
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 313
    invoke-static {v0}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$500(Lcom/autonavi/amapauto/alink/H264Decoder;)Z

    .line 316
    move-result v0

    .line 317
    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 321
    invoke-static {v0}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$600(Lcom/autonavi/amapauto/alink/H264Decoder;)Z

    .line 324
    move-result v0

    .line 325
    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 329
    invoke-static {v0, v2}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$502(Lcom/autonavi/amapauto/alink/H264Decoder;Z)Z

    .line 332
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 334
    invoke-static {v0}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$700(Lcom/autonavi/amapauto/alink/H264Decoder;)Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;

    .line 337
    move-result-object v0

    .line 338
    if-nez v0, :cond_6

    .line 340
    iget-object v0, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 342
    new-instance v1, Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;

    .line 344
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;-><init>(Lcom/autonavi/amapauto/alink/H264Decoder;)V

    .line 347
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$702(Lcom/autonavi/amapauto/alink/H264Decoder;Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;)Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;

    .line 350
    :cond_6
    sget-object v0, Lag0;->f:Lag0;

    .line 352
    invoke-static {v0}, Lbg0;->a(Lag0;)Lcg0;

    .line 355
    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/autonavi/amapauto/alink/H264Decoder$InputDecoderRunnable;->this$0:Lcom/autonavi/amapauto/alink/H264Decoder;

    .line 358
    invoke-static {v1}, Lcom/autonavi/amapauto/alink/H264Decoder;->access$700(Lcom/autonavi/amapauto/alink/H264Decoder;)Lcom/autonavi/amapauto/alink/H264Decoder$OutputDecoderRunnable;

    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Lcg0;->execute(Ljava/lang/Runnable;)V

    .line 365
    goto/16 :goto_0

    .line 367
    :cond_7
    :goto_6
    return-void
.end method
