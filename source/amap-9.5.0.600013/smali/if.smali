.class public Lif;
.super Lq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lif$a;
    }
.end annotation


# instance fields
.field public o:I

.field public p:Landroid/media/MediaCodec$BufferInfo;

.field public q:Lif$a;

.field public r:Z

.field public s:I

.field public t:Z

.field public u:I

.field public v:J

.field public w:I

.field public x:Z

.field public y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILz40;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lq;-><init>(Landroid/content/Context;IILz40;)V

    .line 4
    const/16 p1, 0x1f4

    .line 6
    iput p1, p0, Lif;->o:I

    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lif;->s:I

    .line 11
    iput-boolean p1, p0, Lif;->t:Z

    .line 13
    iput p1, p0, Lif;->u:I

    .line 15
    const-wide/16 p2, 0x0

    .line 17
    iput-wide p2, p0, Lif;->v:J

    .line 19
    iput p1, p0, Lif;->w:I

    .line 21
    iput-boolean p1, p0, Lif;->x:Z

    .line 23
    iput p1, p0, Lif;->y:I

    .line 25
    sget p1, Lvk0;->a:I

    .line 27
    iput p1, p0, Lif;->s:I

    .line 29
    return-void
.end method

.method public static synthetic h(Lif;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lif;->r:Z

    .line 3
    return p0
.end method

.method public static synthetic i(Lif;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lif;->r:Z

    .line 3
    return p1
.end method

.method public static synthetic j(Lif;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lif;->p()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic k(Lif;)I
    .locals 0

    .line 1
    iget p0, p0, Lif;->s:I

    .line 3
    return p0
.end method

.method public static synthetic l(Lif;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lif;->t:Z

    .line 3
    return p0
.end method

.method public static synthetic m(Lif;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lif;->o()V

    .line 4
    return-void
.end method

.method public static synthetic n(Lif;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lif;->t()V

    .line 4
    return-void
.end method

.method public static r(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    new-instance v3, Ljava/io/FileInputStream;

    .line 12
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    .line 17
    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 20
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 22
    iput-object v4, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 24
    const/4 v4, 0x1

    .line 25
    iput-boolean v4, p0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 27
    iput v4, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 29
    new-instance v4, Ljava/lang/ref/SoftReference;

    .line 31
    invoke-static {v3, v2, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v4, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    goto :goto_2

    .line 48
    :catchall_0
    move-exception v2

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v2

    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    move-exception p0

    .line 53
    move-object v5, v2

    .line 54
    move-object v2, p0

    .line 55
    move-object p0, v5

    .line 56
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    goto :goto_2

    .line 60
    :catch_1
    move-exception p0

    .line 61
    move-object v5, v2

    .line 62
    move-object v2, p0

    .line 63
    move-object p0, v5

    .line 64
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 67
    :goto_2
    sget-boolean v2, Lxj0;->b:Z

    .line 69
    if-eqz v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const-string v3, "AutoWidgetProvider onReceive action_auto_bitmap pathToBitmap time = "

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 84
    move-result-wide v3

    .line 85
    sub-long/2addr v3, v0

    .line 86
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    const/4 v1, 0x0

    .line 94
    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    const-string v2, "MapManager"

    .line 98
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_0
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    invoke-super {p0}, Lq;->a()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const-string v1, "CommonEncodeHandler"

    .line 9
    const-string v2, "startMediaCodecThread"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lq;->c:Landroid/media/MediaCodec;

    .line 16
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 19
    return-void
.end method

.method public b()Landroid/view/Surface;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    .line 3
    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 6
    iput-object v0, p0, Lif;->p:Landroid/media/MediaCodec$BufferInfo;

    .line 8
    invoke-super {p0}, Lq;->b()Landroid/view/Surface;

    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-super {p0}, Lq;->c()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const-string v1, "CommonEncodeHandler"

    .line 9
    const-string v2, "startDrawAndEncodeThread"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v0, Lif$a;

    .line 16
    invoke-direct {v0, p0}, Lif$a;-><init>(Lif;)V

    .line 19
    iput-object v0, p0, Lif;->q:Lif$a;

    .line 21
    new-instance v0, Ljava/lang/Thread;

    .line 23
    iget-object v1, p0, Lif;->q:Lif$a;

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-super {p0}, Lq;->d()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const-string v1, "CommonEncodeHandler"

    .line 9
    const-string v2, "stopDrawAndEncodeThread"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lif;->q:Lif$a;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Lif$a;->a()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lif;->q:Lif$a;

    .line 26
    invoke-virtual {v0}, Lif$a;->b()V

    .line 29
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lif;->q:Lif$a;

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lif;->t()V

    .line 36
    :goto_0
    return-void
.end method

.method public e(II)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "prepareEncodeEenvironment width = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " height = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    const-string v2, "CommonEncodeHandler"

    .line 31
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lif;->q:Lif$a;

    .line 36
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lif$a;->a()Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    return-void

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Lq;->e(II)V

    .line 48
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    invoke-super {p0}, Lq;->g()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    const-string v2, "CommonEncodeHandler"

    .line 9
    const-string v3, "stopMediaCodecThread"

    .line 11
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_0
    iget-object v3, p0, Lq;->c:Landroid/media/MediaCodec;

    .line 17
    if-eqz v3, :cond_0

    .line 19
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 22
    iget-object v3, p0, Lq;->c:Landroid/media/MediaCodec;

    .line 24
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 27
    iput-object v1, p0, Lq;->c:Landroid/media/MediaCodec;

    .line 29
    const-string v3, "Encoder stop and release"

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    iput-object v1, p0, Lq;->c:Landroid/media/MediaCodec;

    .line 39
    :cond_0
    :goto_0
    return-void
.end method

.method public final o()V
    .locals 10

    .line 1
    iget-object v0, p0, Lq;->c:Landroid/media/MediaCodec;

    .line 3
    const-string v1, "CommonEncodeHandler"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string v0, "drainEncoder mEncoder == null"

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    const-string v3, "getOutputBuffers IllegalStateException="

    .line 24
    new-array v4, v2, [Ljava/lang/Object;

    .line 26
    invoke-static {v1, v3, v0, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    iget-boolean v3, p0, Lif;->r:Z

    .line 32
    if-eqz v3, :cond_7

    .line 34
    :try_start_1
    iget-object v3, p0, Lq;->c:Landroid/media/MediaCodec;

    .line 36
    iget-object v4, p0, Lif;->p:Landroid/media/MediaCodec$BufferInfo;

    .line 38
    iget v5, p0, Lif;->o:I

    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 44
    move-result v3

    .line 45
    sget-boolean v4, Lxj0;->b:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    const/4 v5, 0x2

    .line 48
    const/4 v6, 0x1

    .line 49
    const/4 v7, 0x3

    .line 50
    const-string v8, "drainEncoder outputBufferIndex={?}, size={?}, offset={?}"

    .line 52
    if-eqz v4, :cond_1

    .line 54
    :try_start_2
    new-array v4, v7, [Ljava/lang/Object;

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v9

    .line 60
    aput-object v9, v4, v2

    .line 62
    iget-object v9, p0, Lif;->p:Landroid/media/MediaCodec$BufferInfo;

    .line 64
    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 66
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v9

    .line 70
    aput-object v9, v4, v6

    .line 72
    iget-object v9, p0, Lif;->p:Landroid/media/MediaCodec$BufferInfo;

    .line 74
    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 76
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v9

    .line 80
    aput-object v9, v4, v5

    .line 82
    invoke-static {v1, v8, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_1
    const/4 v4, -0x1

    .line 86
    if-ne v3, v4, :cond_2

    .line 88
    goto/16 :goto_1

    .line 90
    :cond_2
    const/4 v4, -0x3

    .line 91
    if-ne v3, v4, :cond_3

    .line 93
    iget-object v0, p0, Lq;->c:Landroid/media/MediaCodec;

    .line 95
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 98
    move-result-object v0

    .line 99
    goto :goto_0

    .line 100
    :cond_3
    const/4 v4, -0x2

    .line 101
    if-ne v3, v4, :cond_4

    .line 103
    goto :goto_0

    .line 104
    :cond_4
    if-gez v3, :cond_5

    .line 106
    goto :goto_0

    .line 107
    :cond_5
    new-array v4, v7, [Ljava/lang/Object;

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v7

    .line 113
    aput-object v7, v4, v2

    .line 115
    iget-object v7, p0, Lif;->p:Landroid/media/MediaCodec$BufferInfo;

    .line 117
    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v7

    .line 123
    aput-object v7, v4, v6

    .line 125
    iget-object v6, p0, Lif;->p:Landroid/media/MediaCodec$BufferInfo;

    .line 127
    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 129
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v6

    .line 133
    aput-object v6, v4, v5

    .line 135
    invoke-static {v1, v8, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v4, p0, Lif;->p:Landroid/media/MediaCodec$BufferInfo;

    .line 140
    iget v5, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 142
    if-eqz v5, :cond_6

    .line 144
    new-array v5, v5, [B

    .line 146
    aget-object v6, v0, v3

    .line 148
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 150
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 153
    iget-object v4, p0, Lif;->p:Landroid/media/MediaCodec$BufferInfo;

    .line 155
    iget v7, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 157
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 159
    add-int/2addr v7, v4

    .line 160
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 163
    iget-object v4, p0, Lif;->p:Landroid/media/MediaCodec$BufferInfo;

    .line 165
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 167
    invoke-virtual {v6, v5, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 170
    invoke-virtual {p0, v5}, Lq;->f([B)V

    .line 173
    sget-object v4, Lbk0;->d:Lbk0;

    .line 175
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 178
    move-result v4

    .line 179
    iget v6, p0, Lif;->s:I

    .line 181
    if-ne v4, v6, :cond_6

    .line 183
    iget-object v4, p0, Lq;->i:Lz40;

    .line 185
    invoke-static {v5, v4}, Luo;->a([BLz40;)[B

    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {p0, v4}, Lif;->s([B)V

    .line 192
    :cond_6
    iget-object v4, p0, Lq;->c:Landroid/media/MediaCodec;

    .line 194
    invoke-virtual {v4, v3, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_1

    .line 197
    goto/16 :goto_0

    .line 199
    :catch_1
    move-exception v0

    .line 200
    const-string v3, "BufferUnderflowException  =  "

    .line 202
    new-array v2, v2, [Ljava/lang/Object;

    .line 204
    invoke-static {v1, v3, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 207
    goto :goto_1

    .line 208
    :catch_2
    move-exception v0

    .line 209
    const-string v3, "IndexOutOfBoundsException  =  "

    .line 211
    new-array v2, v2, [Ljava/lang/Object;

    .line 213
    invoke-static {v1, v3, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 216
    goto :goto_1

    .line 217
    :catch_3
    move-exception v0

    .line 218
    const-string v3, "IllegalArgumentException  =  "

    .line 220
    new-array v2, v2, [Ljava/lang/Object;

    .line 222
    invoke-static {v1, v3, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 225
    goto :goto_1

    .line 226
    :catch_4
    move-exception v0

    .line 227
    const-string v3, "IllegalStateException  =  "

    .line 229
    new-array v2, v2, [Ljava/lang/Object;

    .line 231
    invoke-static {v1, v3, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 234
    :cond_7
    :goto_1
    return-void
.end method

.method public final p()Z
    .locals 6

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8
    iget-object v3, p0, Lq;->g:Landroid/view/Surface;

    .line 10
    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v3, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    .line 15
    move-result-object v0

    .line 16
    iget-boolean v3, p0, Lif;->x:Z

    .line 18
    if-nez v3, :cond_0

    .line 20
    iget v3, p0, Lif;->w:I

    .line 22
    add-int/2addr v3, v2

    .line 23
    iput v3, p0, Lif;->w:I

    .line 25
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 28
    iput-boolean v1, p0, Lif;->x:Z

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-static {}, Lr50;->j()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v4, "/amapauto8/data/saved_images/debugSaveIndex_"

    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v4, p0, Lif;->y:I

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v4, ".jpg"

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Lif;->r(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 65
    move-result-object v3

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    invoke-virtual {v0, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 71
    iget v3, p0, Lif;->y:I

    .line 73
    add-int/2addr v3, v2

    .line 74
    iput v3, p0, Lif;->y:I

    .line 76
    const/4 v4, 0x2

    .line 77
    if-le v3, v4, :cond_1

    .line 79
    iput v1, p0, Lif;->y:I

    .line 81
    :cond_1
    iput-boolean v1, p0, Lif;->x:Z

    .line 83
    :goto_0
    iget-object v1, p0, Lq;->g:Landroid/view/Surface;

    .line 85
    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 88
    :cond_2
    return v2
.end method

.method public q(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iput-boolean v0, p0, Lif;->t:Z

    .line 8
    return-void
.end method

.method public final s([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq;->i:Lz40;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    if-eqz p1, :cond_0

    .line 7
    array-length v1, p1

    .line 8
    if-lez v1, :cond_0

    .line 10
    invoke-interface {v0, p1}, Lz40;->a([B)V

    .line 13
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "CommonEncodeHandler"

    .line 6
    const-string v2, "stop"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lif;->g()V

    .line 14
    iget-object v0, p0, Lq;->n:Ljava/io/RandomAccessFile;

    .line 16
    invoke-static {v0}, Lns;->a(Ljava/io/Closeable;)V

    .line 19
    return-void
.end method
