.class public abstract Lq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljr;


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/media/MediaCodec;

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroid/view/Surface;

.field public h:Landroid/content/Context;

.field public i:Lz40;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILz40;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0xf

    .line 6
    iput v0, p0, Lq;->a:I

    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lq;->b:I

    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lq;->d:I

    .line 14
    iput v1, p0, Lq;->e:I

    .line 16
    iput v1, p0, Lq;->f:I

    .line 18
    const/4 v2, 0x0

    .line 19
    iput-object v2, p0, Lq;->g:Landroid/view/Surface;

    .line 21
    iput-boolean v1, p0, Lq;->j:Z

    .line 23
    iput-boolean v1, p0, Lq;->k:Z

    .line 25
    iput-boolean v1, p0, Lq;->l:Z

    .line 27
    iput v0, p0, Lq;->m:I

    .line 29
    iput-object v2, p0, Lq;->n:Ljava/io/RandomAccessFile;

    .line 31
    iput-object p1, p0, Lq;->h:Landroid/content/Context;

    .line 33
    iput-object p4, p0, Lq;->i:Lz40;

    .line 35
    invoke-virtual {p0, p2, p3}, Lq;->e(II)V

    .line 38
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b()Landroid/view/Surface;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AbstractEncodeHandler"

    .line 6
    const-string v3, "prepareEncoderSurface before selectCodec"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const-string v1, "video/avc"

    .line 13
    invoke-static {v1}, Lwk;->a(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    .line 16
    move-result-object v3

    .line 17
    const-string v4, "prepareEncoderSurface after selectCodec"

    .line 19
    new-array v5, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    const/4 v4, 0x0

    .line 25
    if-nez v3, :cond_0

    .line 27
    const-string v1, "prepareEncoderSurface codecInfo == null"

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    return-object v4

    .line 35
    :cond_0
    invoke-virtual {v3, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 38
    move-result-object v5

    .line 39
    iget-object v5, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 41
    const/4 v6, 0x4

    .line 42
    new-array v6, v6, [Ljava/lang/Object;

    .line 44
    iget v7, p0, Lq;->d:I

    .line 46
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v7

    .line 50
    aput-object v7, v6, v0

    .line 52
    iget v7, p0, Lq;->e:I

    .line 54
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v7

    .line 58
    const/4 v8, 0x1

    .line 59
    aput-object v7, v6, v8

    .line 61
    iget v7, p0, Lq;->f:I

    .line 63
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v7

    .line 67
    const/4 v9, 0x2

    .line 68
    aput-object v7, v6, v9

    .line 70
    const/4 v7, 0x3

    .line 71
    aput-object v1, v6, v7

    .line 73
    const-string v7, "prepareEncoderSurface width={?}, height={?}, bitRate={?}, MIME_TYPE={?}"

    .line 75
    invoke-static {v2, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget v6, p0, Lq;->d:I

    .line 80
    iget v7, p0, Lq;->e:I

    .line 82
    invoke-static {v1, v6, v7}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    .line 85
    move-result-object v1

    .line 86
    const-string v6, "prepareEncoderSurface after createVideoFormat"

    .line 88
    new-array v7, v0, [Ljava/lang/Object;

    .line 90
    invoke-static {v2, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    const-string v6, "color-format"

    .line 95
    const v7, 0x7f000789

    .line 98
    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 101
    const-string v6, "bitrate"

    .line 103
    iget v7, p0, Lq;->f:I

    .line 105
    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 108
    const-string v6, "frame-rate"

    .line 110
    iget v7, p0, Lq;->a:I

    .line 112
    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 115
    new-array v6, v8, [Ljava/lang/Object;

    .line 117
    iget v7, p0, Lq;->a:I

    .line 119
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v7

    .line 123
    aput-object v7, v6, v0

    .line 125
    const-string v7, "prepareEncoderSurface KEY_FRAME_RATE mframeRate:{?}"

    .line 127
    invoke-static {v2, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const-string v6, "i-frame-interval"

    .line 132
    iget v7, p0, Lq;->b:I

    .line 134
    invoke-virtual {v1, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 137
    const-string v6, "profile"

    .line 139
    invoke-virtual {v1, v6, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 142
    const-string v6, "prepareEncoderSurface after profile"

    .line 144
    new-array v7, v0, [Ljava/lang/Object;

    .line 146
    invoke-static {v2, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    array-length v6, v5

    .line 150
    const/4 v7, 0x0

    .line 151
    const/4 v10, 0x1

    .line 152
    :goto_0
    if-ge v7, v6, :cond_3

    .line 154
    aget-object v11, v5, v7

    .line 156
    new-array v12, v9, [Ljava/lang/Object;

    .line 158
    iget v13, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 160
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object v13

    .line 164
    aput-object v13, v12, v0

    .line 166
    iget v13, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 168
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    move-result-object v13

    .line 172
    aput-object v13, v12, v8

    .line 174
    const-string v13, "prepareEncoderSurface profileLevels profile={?}, level={?}"

    .line 176
    invoke-static {v2, v13, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget v12, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 181
    if-eq v12, v8, :cond_1

    .line 183
    const-string v11, "prepareEncoderSurface profileLevel.profile != CodecProfileLevel.AVCProfileBaseline"

    .line 185
    new-array v12, v0, [Ljava/lang/Object;

    .line 187
    invoke-static {v2, v11, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    goto :goto_1

    .line 191
    :cond_1
    iget v12, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 193
    if-le v12, v10, :cond_2

    .line 195
    const-string v10, "prepareEncoderSurface profileLevel.level > maxCodecProfileLevel"

    .line 197
    new-array v12, v0, [Ljava/lang/Object;

    .line 199
    invoke-static {v2, v10, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget v10, v11, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 204
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 206
    goto :goto_0

    .line 207
    :cond_3
    new-array v5, v8, [Ljava/lang/Object;

    .line 209
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    move-result-object v6

    .line 213
    aput-object v6, v5, v0

    .line 215
    const-string v6, "prepareEncoderSurface maxCodecProfileLevel={?}"

    .line 217
    invoke-static {v2, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    const/16 v5, 0x800

    .line 222
    if-le v10, v5, :cond_4

    .line 224
    const-string v6, "prepareEncoderSurface maxCodecProfileLevel > CodecProfileLevel.AVCLevel4"

    .line 226
    new-array v7, v0, [Ljava/lang/Object;

    .line 228
    invoke-static {v2, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    const/16 v10, 0x800

    .line 233
    :cond_4
    const-string v5, "level"

    .line 235
    invoke-virtual {v1, v5, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 238
    new-array v5, v8, [Ljava/lang/Object;

    .line 240
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    move-result-object v6

    .line 244
    aput-object v6, v5, v0

    .line 246
    const-string v6, "prepareEncoderSurface after level maxCodecProfileLevel={?}"

    .line 248
    invoke-static {v2, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :try_start_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 254
    move-result-object v3

    .line 255
    const-string v5, "prepareEncoderSurface MediaCodec createByCodecName(), name={?}"

    .line 257
    new-array v6, v8, [Ljava/lang/Object;

    .line 259
    aput-object v3, v6, v0

    .line 261
    invoke-static {v2, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-static {v3}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 267
    move-result-object v3

    .line 268
    iput-object v3, p0, Lq;->c:Landroid/media/MediaCodec;

    .line 270
    const-string v3, "prepareEncoderSurface MediaCodec configure()"

    .line 272
    new-array v5, v0, [Ljava/lang/Object;

    .line 274
    invoke-static {v2, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    iget-object v3, p0, Lq;->c:Landroid/media/MediaCodec;

    .line 279
    invoke-virtual {v3, v1, v4, v4, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 282
    const-string v1, "prepareEncoderSurface MediaCodec createInputSurface()"

    .line 284
    new-array v3, v0, [Ljava/lang/Object;

    .line 286
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    iget-object v1, p0, Lq;->c:Landroid/media/MediaCodec;

    .line 291
    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    .line 294
    move-result-object v1

    .line 295
    iput-object v1, p0, Lq;->g:Landroid/view/Surface;

    .line 297
    const-string v1, "prepareEncoderSurface MediaCodec createInputSurface() end"

    .line 299
    new-array v3, v0, [Ljava/lang/Object;

    .line 301
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_2

    .line 305
    :catch_0
    move-exception v1

    .line 306
    const-string v3, "prepareEncoderSurface Error e="

    .line 308
    new-array v0, v0, [Ljava/lang/Object;

    .line 310
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 313
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 316
    goto :goto_2

    .line 317
    :catch_1
    move-exception v1

    .line 318
    const-string v3, "prepareEncoderSurface Exception e="

    .line 320
    new-array v0, v0, [Ljava/lang/Object;

    .line 322
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 325
    goto :goto_2

    .line 326
    :catch_2
    move-exception v1

    .line 327
    const-string v3, "prepareEncoderSurface IOException e="

    .line 329
    new-array v0, v0, [Ljava/lang/Object;

    .line 331
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 334
    :goto_2
    iget-object v0, p0, Lq;->g:Landroid/view/Surface;

    .line 336
    return-object v0
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e(II)V
    .locals 4

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
    new-array v2, v1, [Ljava/lang/Object;

    .line 29
    const-string v3, "AbstractEncodeHandler"

    .line 31
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    rem-int/lit8 v0, p1, 0x10

    .line 36
    const/4 v2, 0x2

    .line 37
    if-nez v0, :cond_0

    .line 39
    rem-int/lit8 v0, p2, 0x2

    .line 41
    if-nez v0, :cond_0

    .line 43
    iput p1, p0, Lq;->d:I

    .line 45
    iput p2, p0, Lq;->e:I

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    div-int/lit8 v0, p1, 0x10

    .line 50
    mul-int/lit8 v0, v0, 0x10

    .line 52
    iput v0, p0, Lq;->d:I

    .line 54
    int-to-float p1, p1

    .line 55
    int-to-float p2, p2

    .line 56
    div-float/2addr p1, p2

    .line 57
    int-to-float p2, v0

    .line 58
    div-float/2addr p2, p1

    .line 59
    float-to-int p1, p2

    .line 60
    div-int/2addr p1, v2

    .line 61
    mul-int/lit8 p1, p1, 0x2

    .line 63
    iput p1, p0, Lq;->e:I

    .line 65
    :goto_0
    iget-object p1, p0, Lq;->h:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Lof;->a(Landroid/content/Context;)I

    .line 70
    move-result p1

    .line 71
    const/16 p2, 0x78

    .line 73
    const v0, 0x1e8480

    .line 76
    if-eq p1, p2, :cond_2

    .line 78
    const/16 p2, 0xa0

    .line 80
    if-eq p1, p2, :cond_2

    .line 82
    const/16 p2, 0xf0

    .line 84
    if-eq p1, p2, :cond_2

    .line 86
    const/16 p2, 0x140

    .line 88
    if-eq p1, p2, :cond_1

    .line 90
    const/16 p2, 0x1e0

    .line 92
    if-eq p1, p2, :cond_1

    .line 94
    const p1, 0x2dc6c0

    .line 97
    iput p1, p0, Lq;->f:I

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const p1, 0x3d0900

    .line 103
    iput p1, p0, Lq;->f:I

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    iput v0, p0, Lq;->f:I

    .line 108
    :goto_1
    iput v0, p0, Lq;->f:I

    .line 110
    new-instance p1, Ljava/io/File;

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    invoke-static {}, Lr50;->j()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v0, "/autotestvideo.txt"

    .line 126
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object p2

    .line 133
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 139
    move-result p1

    .line 140
    iput-boolean p1, p0, Lq;->j:Z

    .line 142
    const/4 p1, 0x3

    .line 143
    new-array p1, p1, [Ljava/lang/Object;

    .line 145
    iget p2, p0, Lq;->d:I

    .line 147
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object p2

    .line 151
    aput-object p2, p1, v1

    .line 153
    iget p2, p0, Lq;->e:I

    .line 155
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    move-result-object p2

    .line 159
    const/4 v0, 0x1

    .line 160
    aput-object p2, p1, v0

    .line 162
    iget-boolean p2, p0, Lq;->j:Z

    .line 164
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 167
    move-result-object p2

    .line 168
    aput-object p2, p1, v2

    .line 170
    const-string p2, "prepareEncodeEenvironment mEncWidth={?}, mEncHeight={?}, mIsWriteToFile={?}"

    .line 172
    invoke-static {v3, p2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method public f([B)V
    .locals 6

    .line 1
    const-string v0, "AbstractEncodeHandler"

    .line 3
    iget-boolean v1, p0, Lq;->j:Z

    .line 5
    if-eqz v1, :cond_4

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v4, "saveH264DataToFile length="

    .line 16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    array-length v4, p1

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    new-array v4, v1, [Ljava/lang/Object;

    .line 29
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v3, p0, Lq;->n:Ljava/io/RandomAccessFile;

    .line 34
    if-eqz v3, :cond_0

    .line 36
    array-length v4, p1

    .line 37
    invoke-virtual {v3, p1, v1, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 40
    :cond_0
    iget-boolean v3, p0, Lq;->k:Z

    .line 42
    if-eqz v3, :cond_3

    .line 44
    new-instance v3, Ljava/io/File;

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-static {}, Lr50;->j()Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v5, "/sendVideo/beforeSend"

    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v5, p0, Lq;->m:I

    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 76
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_1

    .line 89
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 96
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 99
    move-result v4

    .line 100
    if-nez v4, :cond_2

    .line 102
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 105
    :cond_2
    iget v4, p0, Lq;->m:I

    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 109
    iput v4, p0, Lq;->m:I

    .line 111
    new-instance v4, Ljava/io/RandomAccessFile;

    .line 113
    const-string v5, "rw"

    .line 115
    invoke-direct {v4, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    array-length v2, p1

    .line 119
    invoke-virtual {v4, p1, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 122
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    move-object v2, v4

    .line 126
    goto :goto_4

    .line 127
    :catchall_0
    move-exception p1

    .line 128
    move-object v2, v4

    .line 129
    goto :goto_5

    .line 130
    :catch_0
    move-exception p1

    .line 131
    move-object v2, v4

    .line 132
    goto :goto_0

    .line 133
    :catch_1
    move-exception p1

    .line 134
    move-object v2, v4

    .line 135
    goto :goto_1

    .line 136
    :catch_2
    move-exception p1

    .line 137
    move-object v2, v4

    .line 138
    goto :goto_2

    .line 139
    :catch_3
    move-exception p1

    .line 140
    move-object v2, v4

    .line 141
    goto :goto_3

    .line 142
    :catchall_1
    move-exception p1

    .line 143
    goto :goto_5

    .line 144
    :catch_4
    move-exception p1

    .line 145
    :goto_0
    :try_start_2
    const-string v3, "Exception = "

    .line 147
    new-array v1, v1, [Ljava/lang/Object;

    .line 149
    invoke-static {v0, v3, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 152
    goto :goto_4

    .line 153
    :catch_5
    move-exception p1

    .line 154
    :goto_1
    const-string v3, "IndexOutOfBoundsException = "

    .line 156
    new-array v1, v1, [Ljava/lang/Object;

    .line 158
    invoke-static {v0, v3, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 161
    goto :goto_4

    .line 162
    :catch_6
    move-exception p1

    .line 163
    :goto_2
    const-string v3, "IOException = "

    .line 165
    new-array v1, v1, [Ljava/lang/Object;

    .line 167
    invoke-static {v0, v3, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 170
    goto :goto_4

    .line 171
    :catch_7
    move-exception p1

    .line 172
    :goto_3
    const-string v3, "FileNotFoundException = "

    .line 174
    new-array v1, v1, [Ljava/lang/Object;

    .line 176
    invoke-static {v0, v3, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    :cond_3
    :goto_4
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 182
    goto :goto_6

    .line 183
    :goto_5
    invoke-static {v2}, Lns;->a(Ljava/io/Closeable;)V

    .line 186
    throw p1

    .line 187
    :cond_4
    :goto_6
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    return-void
.end method
