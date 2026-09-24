.class public Ls2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/alink/IAlinkAVListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls2;


# direct methods
.method public constructor <init>(Ls2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls2$a;->a:Ls2;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public notifyCameraState(I)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "AlinkCamera"

    .line 13
    const-string v4, "notifyCameraState\uff1a{?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-nez p1, :cond_0

    .line 20
    iget-object p1, p0, Ls2$a;->a:Ls2;

    .line 22
    invoke-static {p1, v0}, Ls2;->o(Ls2;Z)Z

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-ne p1, v0, :cond_1

    .line 28
    iget-object p1, p0, Ls2$a;->a:Ls2;

    .line 30
    invoke-static {p1}, Ls2;->p(Ls2;)V

    .line 33
    iget-object p1, p0, Ls2$a;->a:Ls2;

    .line 35
    invoke-static {p1, v3}, Ls2;->o(Ls2;Z)Z

    .line 38
    :cond_1
    :goto_0
    return v3
.end method

.method public onAVDataReceived(Landroid/media/Image;)I
    .locals 10

    .line 1
    const-string v0, "AlinkCamera"

    .line 3
    const-string v1, "decoderHandler onAVDataReceived"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Ls2$a;->a:Ls2;

    .line 13
    invoke-static {v0}, Ls2;->m(Ls2;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Ls2$a;->a:Ls2;

    .line 20
    invoke-static {v1}, Ls2;->n(Ls2;)Ljava/util/LinkedList;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 27
    move-result v1

    .line 28
    const/4 v3, 0x2

    .line 29
    if-lt v1, v3, :cond_0

    .line 31
    iget-object v1, p0, Ls2$a;->a:Ls2;

    .line 33
    invoke-static {v1}, Ls2;->n(Ls2;)Ljava/util/LinkedList;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 43
    :cond_0
    const-string v1, "AlinkCamera"

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v4, "onAVDataReceived image= "

    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    new-array v4, v2, [Ljava/lang/Object;

    .line 64
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    if-eqz p1, :cond_4

    .line 69
    new-instance v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 71
    invoke-direct {v1}, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    .line 77
    move-result v3

    .line 78
    iput v3, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->format:I

    .line 80
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    .line 83
    move-result v3

    .line 84
    iput v3, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->width:I

    .line 86
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    .line 89
    move-result v3

    .line 90
    iput v3, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->height:I

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    move-result-wide v3

    .line 96
    iput-wide v3, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->timestamp:J

    .line 98
    const-string v3, "AlinkCamera"

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const-string v5, "format:"

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v5, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->format:I

    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    const-string v5, ", width:"

    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v5, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->width:I

    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v5, ", height:"

    .line 127
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v5, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->height:I

    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string v5, ",timestamp:"

    .line 137
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-wide v5, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->timestamp:J

    .line 142
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v4

    .line 149
    new-array v5, v2, [Ljava/lang/Object;

    .line 151
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 157
    move-result-object v3

    .line 158
    if-nez v3, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 163
    const-string p1, "AlinkCamera"

    .line 165
    const-string v1, "planes is null!"

    .line 167
    new-array v3, v2, [Ljava/lang/Object;

    .line 169
    invoke-static {p1, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    monitor-exit v0

    .line 173
    return v2

    .line 174
    :cond_1
    const-string v4, "AlinkCamera"

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    .line 178
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    const-string v6, "readImage: planes count= "

    .line 183
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    array-length v6, v3

    .line 187
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v5

    .line 194
    new-array v6, v2, [Ljava/lang/Object;

    .line 196
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    array-length v4, v3

    .line 200
    const/4 v5, 0x0

    .line 201
    :goto_0
    if-ge v5, v4, :cond_3

    .line 203
    aget-object v6, v3, v5

    .line 205
    new-instance v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 207
    invoke-direct {v7}, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;-><init>()V

    .line 210
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 213
    move-result-object v8

    .line 214
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 217
    move-result v9

    .line 218
    if-eqz v9, :cond_2

    .line 220
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    .line 223
    move-result-object v8

    .line 224
    iput-object v8, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 226
    goto :goto_1

    .line 227
    :cond_2
    invoke-virtual {v8}, Ljava/nio/Buffer;->remaining()I

    .line 230
    move-result v9

    .line 231
    new-array v9, v9, [B

    .line 233
    iput-object v9, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 235
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 238
    :goto_1
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    .line 241
    move-result v8

    .line 242
    iput v8, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->rowStride:I

    .line 244
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 247
    move-result v6

    .line 248
    iput v6, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->pixelStride:I

    .line 250
    iget-object v6, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 252
    array-length v6, v6

    .line 253
    iput v6, v7, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->dataSize:I

    .line 255
    iget-object v6, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 257
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v5, v5, 0x1

    .line 262
    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 266
    iget-object p1, p0, Ls2$a;->a:Ls2;

    .line 268
    invoke-static {p1}, Ls2;->n(Ls2;)Ljava/util/LinkedList;

    .line 271
    move-result-object p1

    .line 272
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_4
    monitor-exit v0

    .line 276
    return v2

    .line 277
    :catchall_0
    move-exception p1

    .line 278
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    throw p1
.end method
