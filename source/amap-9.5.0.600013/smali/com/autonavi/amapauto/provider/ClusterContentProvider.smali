.class public Lcom/autonavi/amapauto/provider/ClusterContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;ZZ)Z
    .locals 5

    .line 1
    const-string p1, " new FileOutputStream occur a exception!"

    .line 3
    const-string v0, "ClusterContentProvider"

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p0, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    invoke-static {v2}, Lr50;->h(Ljava/lang/String;)Ljava/io/File;

    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Ljava/io/File;

    .line 22
    invoke-direct {v3, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 31
    const-string p2, "saveBitmapFile() exists!!! needReused:{?}"

    .line 33
    const/4 v2, 0x1

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    move-result-object v4

    .line 40
    aput-object v4, v2, v1

    .line 42
    invoke-static {v0, p2, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    if-eqz p4, :cond_2

    .line 47
    return v1

    .line 48
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 51
    :cond_2
    const-string p2, "saveBitmapFile() create file"

    .line 53
    new-array p4, v1, [Ljava/lang/Object;

    .line 55
    invoke-static {v0, p2, p4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 60
    new-instance p4, Ljava/io/FileOutputStream;

    .line 62
    invoke-direct {p4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 65
    const/16 v2, 0x64

    .line 67
    invoke-virtual {p0, p2, v2, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 70
    move-result v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p2

    .line 73
    new-array p4, v1, [Ljava/lang/Object;

    .line 75
    invoke-static {v0, p1, p2, p4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 78
    goto :goto_0

    .line 79
    :catch_1
    move-exception p2

    .line 80
    new-array p4, v1, [Ljava/lang/Object;

    .line 82
    invoke-static {v0, p1, p2, p4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 85
    :goto_0
    if-eqz p3, :cond_3

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_3

    .line 93
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    :cond_3
    :goto_1
    return v1
.end method

.method public static b(Landroid/graphics/Bitmap;DDZ)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    new-instance v7, Landroid/graphics/Matrix;

    .line 13
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 16
    double-to-float v2, p1

    .line 17
    div-float/2addr v2, v0

    .line 18
    double-to-float v3, p3

    .line 19
    div-float/2addr v3, v1

    .line 20
    cmpl-float v4, v2, v3

    .line 22
    if-lez v4, :cond_0

    .line 24
    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 27
    move v9, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v7, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 32
    move v9, v2

    .line 33
    :goto_0
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    float-to-int v5, v0

    .line 36
    float-to-int v6, v1

    .line 37
    const/4 v8, 0x1

    .line 38
    move-object v2, p0

    .line 39
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 42
    move-result-object p0

    .line 43
    if-eqz p5, :cond_1

    .line 45
    mul-float p1, v0, v9

    .line 47
    float-to-double p1, p1

    .line 48
    :cond_1
    double-to-int p5, p1

    .line 49
    double-to-int v2, p3

    .line 50
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 52
    invoke-static {p5, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 55
    move-result-object p5

    .line 56
    new-instance v2, Landroid/graphics/Canvas;

    .line 58
    invoke-direct {v2, p5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    mul-float v0, v0, v9

    .line 63
    float-to-double v3, v0

    .line 64
    sub-double/2addr p1, v3

    .line 65
    double-to-int p1, p1

    .line 66
    int-to-float p1, p1

    .line 67
    const/high16 p2, 0x40000000    # 2.0f

    .line 69
    div-float/2addr p1, p2

    .line 70
    mul-float v9, v9, v1

    .line 72
    float-to-double v0, v9

    .line 73
    sub-double/2addr p3, v0

    .line 74
    double-to-int p3, p3

    .line 75
    int-to-float p3, p3

    .line 76
    div-float/2addr p3, p2

    .line 77
    const/4 p2, 0x0

    .line 78
    invoke-virtual {v2, p0, p1, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 81
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 84
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 87
    return-object p5
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "ClusterContentProvider"

    .line 6
    const-string v2, "onCreate()"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    new-array v3, v1, [Ljava/lang/Object;

    .line 10
    const-string v4, "ClusterContentProvider"

    .line 12
    const-string v5, "openFile() START"

    .line 14
    invoke-static {v4, v5, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v5, "openFile() uri:{?}"

    .line 24
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v3

    .line 34
    new-array v5, v1, [Ljava/lang/Object;

    .line 36
    invoke-static {v4, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    .line 42
    move-result-wide v5

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    const-string v7, "/"

    .line 49
    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 52
    move-result v3

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 56
    move-result-object v7

    .line 57
    add-int/lit8 v8, v3, -0x1

    .line 59
    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    const-string v7, "w"

    .line 65
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object v7

    .line 69
    const-string v8, "h"

    .line 71
    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    const-string v9, "openFile() iconId:"

    .line 82
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    const-string v5, ", type:"

    .line 90
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v5, ", w,h="

    .line 98
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v5, ","

    .line 106
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v5

    .line 116
    new-array v6, v1, [Ljava/lang/Object;

    .line 118
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 124
    move-result v3

    .line 125
    const/4 v5, 0x0

    .line 126
    invoke-static {v5}, Lr50;->h(Ljava/lang/String;)Ljava/io/File;

    .line 129
    move-result-object v6

    .line 130
    const-string v8, "openFile() imageFile:{?}"

    .line 132
    const/4 v9, 0x2

    .line 133
    const/4 v10, 0x1

    .line 134
    if-eqz v3, :cond_2

    .line 136
    const/16 v2, 0x24

    .line 138
    const-string v11, "bmp_%d_%s.png"

    .line 140
    if-eq v3, v10, :cond_1

    .line 142
    if-eq v3, v9, :cond_0

    .line 144
    move-object v2, v5

    .line 145
    move-object v12, v2

    .line 146
    goto/16 :goto_0

    .line 148
    :cond_0
    new-instance v12, Ljava/io/File;

    .line 150
    new-array v13, v9, [Ljava/lang/Object;

    .line 152
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v14

    .line 156
    aput-object v14, v13, v1

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    move-result-object v2

    .line 162
    aput-object v2, v13, v10

    .line 164
    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    move-result-object v2

    .line 168
    invoke-direct {v12, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    new-array v2, v9, [Ljava/lang/Object;

    .line 173
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v9

    .line 177
    aput-object v9, v2, v1

    .line 179
    aput-object v0, v2, v10

    .line 181
    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 185
    new-array v9, v10, [Ljava/lang/Object;

    .line 187
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 190
    move-result-object v11

    .line 191
    aput-object v11, v9, v1

    .line 193
    invoke-static {v4, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    goto :goto_0

    .line 197
    :cond_1
    new-instance v12, Ljava/io/File;

    .line 199
    new-array v13, v9, [Ljava/lang/Object;

    .line 201
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    move-result-object v14

    .line 205
    aput-object v14, v13, v1

    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    move-result-object v2

    .line 211
    aput-object v2, v13, v10

    .line 213
    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    move-result-object v2

    .line 217
    invoke-direct {v12, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    new-array v2, v9, [Ljava/lang/Object;

    .line 222
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    move-result-object v9

    .line 226
    aput-object v9, v2, v1

    .line 228
    aput-object v0, v2, v10

    .line 230
    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 233
    move-result-object v2

    .line 234
    new-array v9, v10, [Ljava/lang/Object;

    .line 236
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 239
    move-result-object v11

    .line 240
    aput-object v11, v9, v1

    .line 242
    invoke-static {v4, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    goto :goto_0

    .line 246
    :cond_2
    new-instance v12, Ljava/io/File;

    .line 248
    const/4 v11, 0x3

    .line 249
    new-array v13, v11, [Ljava/lang/Object;

    .line 251
    aput-object v2, v13, v1

    .line 253
    const/16 v14, 0x50

    .line 255
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    move-result-object v15

    .line 259
    aput-object v15, v13, v10

    .line 261
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    move-result-object v14

    .line 265
    aput-object v14, v13, v9

    .line 267
    const-string v14, "bmp_%d_%s_%s.png"

    .line 269
    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 272
    move-result-object v13

    .line 273
    invoke-direct {v12, v6, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    new-array v11, v11, [Ljava/lang/Object;

    .line 278
    aput-object v2, v11, v1

    .line 280
    aput-object v7, v11, v10

    .line 282
    aput-object v0, v11, v9

    .line 284
    invoke-static {v14, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 287
    move-result-object v2

    .line 288
    new-array v9, v10, [Ljava/lang/Object;

    .line 290
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 293
    move-result-object v11

    .line 294
    aput-object v11, v9, v1

    .line 296
    invoke-static {v4, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :goto_0
    if-eqz v12, :cond_4

    .line 301
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 304
    move-result v8

    .line 305
    if-eqz v8, :cond_4

    .line 307
    new-array v8, v10, [Ljava/lang/Object;

    .line 309
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 312
    move-result-object v9

    .line 313
    aput-object v9, v8, v1

    .line 315
    const-string v9, "openFile() imageFile:{?} exists."

    .line 317
    invoke-static {v4, v9, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 323
    move-result-object v4

    .line 324
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 327
    move-result-object v11

    .line 328
    if-eqz v11, :cond_5

    .line 330
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 333
    move-result v4

    .line 334
    int-to-double v12, v4

    .line 335
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 338
    move-result v0

    .line 339
    int-to-double v14, v0

    .line 340
    if-eqz v3, :cond_3

    .line 342
    const/16 v16, 0x1

    .line 344
    goto :goto_1

    .line 345
    :cond_3
    const/16 v16, 0x0

    .line 347
    :goto_1
    invoke-static/range {v11 .. v16}, Lcom/autonavi/amapauto/provider/ClusterContentProvider;->b(Landroid/graphics/Bitmap;DDZ)Landroid/graphics/Bitmap;

    .line 350
    move-result-object v0

    .line 351
    invoke-static {}, Lrv;->H()Lrv;

    .line 354
    move-result-object v3

    .line 355
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 358
    move-result-object v3

    .line 359
    invoke-static {v0, v3, v2, v10, v1}, Lcom/autonavi/amapauto/provider/ClusterContentProvider;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Ljava/lang/String;ZZ)Z

    .line 362
    new-instance v0, Ljava/io/File;

    .line 364
    invoke-direct {v0, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 367
    const/high16 v1, 0x10000000

    .line 369
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 372
    move-result-object v0

    .line 373
    return-object v0

    .line 374
    :cond_4
    new-array v0, v10, [Ljava/lang/Object;

    .line 376
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 379
    move-result-object v2

    .line 380
    aput-object v2, v0, v1

    .line 382
    const-string v1, "openFile() imageFile:{?} not exists!!!"

    .line 384
    invoke-static {v4, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    :cond_5
    return-object v5
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
