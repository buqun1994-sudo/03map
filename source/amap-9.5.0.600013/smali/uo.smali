.class public abstract Luo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[B

.field public static b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:[B

.field public static final f:[B

.field public static final g:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_0

    .line 7
    sput-object v0, Luo;->c:[B

    .line 9
    const/4 v0, 0x5

    .line 10
    new-array v1, v0, [B

    .line 12
    fill-array-data v1, :array_1

    .line 15
    sput-object v1, Luo;->d:[B

    .line 17
    new-array v1, v0, [B

    .line 19
    fill-array-data v1, :array_2

    .line 22
    sput-object v1, Luo;->e:[B

    .line 24
    new-array v1, v0, [B

    .line 26
    fill-array-data v1, :array_3

    .line 29
    sput-object v1, Luo;->f:[B

    .line 31
    new-array v0, v0, [B

    .line 33
    fill-array-data v0, :array_4

    .line 36
    sput-object v0, Luo;->g:[B

    .line 38
    return-void

    .line 39
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 45
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x27t
    .end array-data

    .line 52
    nop

    .line 53
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x67t
    .end array-data

    .line 60
    nop

    .line 61
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x28t
    .end array-data

    .line 68
    nop

    .line 69
    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x68t
    .end array-data
.end method

.method public static a([BLz40;)[B
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "convertNal nal[4]:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const/4 v1, 0x4

    .line 12
    aget-byte v2, p0, v1

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const/4 v2, 0x0

    .line 22
    new-array v3, v2, [Ljava/lang/Object;

    .line 24
    const-string v4, "H264NalUtils"

    .line 26
    invoke-static {v4, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v3, "convertNal nal[]:"

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {p0, v2}, Luo;->e([BI)Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    new-array v3, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v4, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    sget-object v0, Luo;->a:[B

    .line 57
    const/4 v3, 0x1

    .line 58
    if-eqz v0, :cond_4

    .line 60
    sget-object v5, Luo;->b:[B

    .line 62
    if-nez v5, :cond_0

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    aget-byte v1, p0, v1

    .line 67
    const/16 v5, 0x65

    .line 69
    if-eq v1, v5, :cond_2

    .line 71
    const/16 v5, 0x25

    .line 73
    if-ne v1, v5, :cond_1

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-static {p0}, Luo;->c([B)[B

    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_2
    :goto_0
    invoke-static {v0}, Luo;->c([B)[B

    .line 84
    move-result-object v0

    .line 85
    sget-object v1, Luo;->b:[B

    .line 87
    invoke-static {v1}, Luo;->c([B)[B

    .line 90
    move-result-object v1

    .line 91
    invoke-static {p0}, Luo;->c([B)[B

    .line 94
    move-result-object p0

    .line 95
    if-eqz p1, :cond_3

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 100
    move-result-wide v5

    .line 101
    new-array v7, v3, [Ljava/lang/Object;

    .line 103
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    move-result-object v8

    .line 107
    aput-object v8, v7, v2

    .line 109
    const-string v8, "convertNal keyframe sps begin current time = {?}"

    .line 111
    invoke-static {v4, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-interface {p1, v0}, Lz40;->a([B)V

    .line 117
    new-array v0, v3, [Ljava/lang/Object;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 122
    move-result-wide v7

    .line 123
    sub-long/2addr v7, v5

    .line 124
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 127
    move-result-object v5

    .line 128
    aput-object v5, v0, v2

    .line 130
    const-string v5, "convertNal keyframe sps end current time = {?}"

    .line 132
    invoke-static {v4, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 138
    move-result-wide v5

    .line 139
    new-array v0, v3, [Ljava/lang/Object;

    .line 141
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 144
    move-result-object v7

    .line 145
    aput-object v7, v0, v2

    .line 147
    const-string v7, "convertNal keyframe pps begin current time = {?}"

    .line 149
    invoke-static {v4, v7, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-interface {p1, v1}, Lz40;->a([B)V

    .line 155
    new-array p1, v3, [Ljava/lang/Object;

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 160
    move-result-wide v0

    .line 161
    sub-long/2addr v0, v5

    .line 162
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 165
    move-result-object v0

    .line 166
    aput-object v0, p1, v2

    .line 168
    const-string v0, "convertNal keyframe pps end current time = {?}"

    .line 170
    invoke-static {v4, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_3
    return-object p0

    .line 174
    :cond_4
    :goto_1
    sget-object v0, Luo;->d:[B

    .line 176
    invoke-static {p0, v0}, Luo;->d([B[B)I

    .line 179
    move-result v0

    .line 180
    sget-object v1, Luo;->f:[B

    .line 182
    invoke-static {p0, v1}, Luo;->d([B[B)I

    .line 185
    move-result v1

    .line 186
    if-gez v0, :cond_5

    .line 188
    sget-object v0, Luo;->e:[B

    .line 190
    invoke-static {p0, v0}, Luo;->d([B[B)I

    .line 193
    move-result v0

    .line 194
    :cond_5
    if-gez v1, :cond_6

    .line 196
    sget-object v1, Luo;->g:[B

    .line 198
    invoke-static {p0, v1}, Luo;->d([B[B)I

    .line 201
    move-result v1

    .line 202
    :cond_6
    const/4 v5, 0x2

    .line 203
    const/4 v6, 0x0

    .line 204
    if-ltz v0, :cond_9

    .line 206
    if-gez v1, :cond_7

    .line 208
    goto/16 :goto_2

    .line 210
    :cond_7
    sub-int v7, v1, v0

    .line 212
    array-length v8, p0

    .line 213
    sub-int/2addr v8, v1

    .line 214
    new-array v9, v7, [B

    .line 216
    sput-object v9, Luo;->a:[B

    .line 218
    new-array v9, v8, [B

    .line 220
    sput-object v9, Luo;->b:[B

    .line 222
    sget-boolean v9, Lxj0;->b:Z

    .line 224
    if-eqz v9, :cond_8

    .line 226
    new-instance v9, Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    const-string v10, "spsIndex:"

    .line 233
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    const-string v10, ";ppsIndex:"

    .line 241
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    const-string v10, ";dataToWrite length:"

    .line 249
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    array-length v10, p0

    .line 253
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    move-result-object v9

    .line 260
    new-array v10, v2, [Ljava/lang/Object;

    .line 262
    const-string v11, "===zzs==="

    .line 264
    invoke-static {v11, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    :cond_8
    const/4 v9, 0x3

    .line 268
    new-array v9, v9, [Ljava/lang/Object;

    .line 270
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    move-result-object v10

    .line 274
    aput-object v10, v9, v2

    .line 276
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    move-result-object v10

    .line 280
    aput-object v10, v9, v3

    .line 282
    array-length v10, p0

    .line 283
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    move-result-object v10

    .line 287
    aput-object v10, v9, v5

    .line 289
    const-string v5, "convertNal spsIndex = {?}, ppsIndex = {?}, dataToWrite length = {?}"

    .line 291
    invoke-static {v4, v5, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    sget-object v5, Luo;->a:[B

    .line 296
    invoke-static {p0, v0, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    sget-object v0, Luo;->b:[B

    .line 301
    invoke-static {p0, v1, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    if-eqz p1, :cond_a

    .line 306
    sget-object p0, Luo;->a:[B

    .line 308
    invoke-static {p0}, Luo;->c([B)[B

    .line 311
    move-result-object p0

    .line 312
    sget-object v0, Luo;->b:[B

    .line 314
    invoke-static {v0}, Luo;->c([B)[B

    .line 317
    move-result-object v0

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 321
    move-result-wide v7

    .line 322
    new-array v1, v3, [Ljava/lang/Object;

    .line 324
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 327
    move-result-object v5

    .line 328
    aput-object v5, v1, v2

    .line 330
    const-string v5, "convertNal sps begin current time = {?}"

    .line 332
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    invoke-interface {p1, p0}, Lz40;->a([B)V

    .line 338
    new-array p0, v3, [Ljava/lang/Object;

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 343
    move-result-wide v9

    .line 344
    sub-long/2addr v9, v7

    .line 345
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 348
    move-result-object v1

    .line 349
    aput-object v1, p0, v2

    .line 351
    const-string v1, "convertNal sps end current time = {?}"

    .line 353
    invoke-static {v4, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 359
    move-result-wide v7

    .line 360
    new-array p0, v3, [Ljava/lang/Object;

    .line 362
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 365
    move-result-object v1

    .line 366
    aput-object v1, p0, v2

    .line 368
    const-string v1, "convertNal pps begin current time = {?}"

    .line 370
    invoke-static {v4, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    invoke-interface {p1, v0}, Lz40;->a([B)V

    .line 376
    new-array p0, v3, [Ljava/lang/Object;

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 381
    move-result-wide v0

    .line 382
    sub-long/2addr v0, v7

    .line 383
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 386
    move-result-object p1

    .line 387
    aput-object p1, p0, v2

    .line 389
    const-string p1, "convertNal pps end current time = {?}"

    .line 391
    invoke-static {v4, p1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    goto :goto_3

    .line 395
    :cond_9
    :goto_2
    new-array p0, v5, [Ljava/lang/Object;

    .line 397
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    move-result-object p1

    .line 401
    aput-object p1, p0, v2

    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 406
    move-result-object p1

    .line 407
    aput-object p1, p0, v3

    .line 409
    const-string p1, "convertNalHarman can\'t find sps or pps!! spsIndex={?}, ppsIndex={?}"

    .line 411
    invoke-static {v4, p1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    sput-object v6, Luo;->a:[B

    .line 416
    sput-object v6, Luo;->b:[B

    .line 418
    :cond_a
    :goto_3
    return-object v6
.end method

.method public static b(Lr90;[B)[B
    .locals 10

    .line 1
    sget-boolean v0, Lxj0;->b:Z

    .line 3
    const-string v1, "H264NalUtils"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v3, "Communication convertNalWithRtpSession rtpSession = "

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v3, "null"

    .line 27
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v3, "nal.length = "

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    if-eqz p1, :cond_1

    .line 37
    array-length v3, p1

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v3

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string v3, "0"

    .line 45
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    const-string v3, " nal[] = "

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {p1, v2}, Luo;->e([BI)Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    new-array v3, v2, [Ljava/lang/Object;

    .line 66
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_2
    sget-object v0, Luo;->a:[B

    .line 71
    if-eqz v0, :cond_9

    .line 73
    sget-object v0, Luo;->b:[B

    .line 75
    if-nez v0, :cond_3

    .line 77
    goto/16 :goto_3

    .line 79
    :cond_3
    sget-boolean v0, Lxj0;->b:Z

    .line 81
    if-eqz v0, :cond_4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string v3, "Communication 2 convertNalWithRtpSession mSpsNal[] = "

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    sget-object v3, Luo;->a:[B

    .line 95
    invoke-static {v3, v2}, Luo;->e([BI)Ljava/lang/String;

    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    new-array v3, v2, [Ljava/lang/Object;

    .line 108
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const-string v3, "Communication 2 convertNalWithRtpSession mPpsNal[] = "

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    sget-object v3, Luo;->b:[B

    .line 123
    invoke-static {v3, v2}, Luo;->e([BI)Ljava/lang/String;

    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    new-array v3, v2, [Ljava/lang/Object;

    .line 136
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_4
    if-eqz p0, :cond_7

    .line 141
    sget-boolean v0, Lxj0;->b:Z

    .line 143
    if-eqz v0, :cond_5

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const-string v3, "Communication convertNalWithRtpSession ControlConfig.isPackStart = "

    .line 152
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    sget-boolean v3, Lwg;->a:Z

    .line 157
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    const-string v3, " seqNum = "

    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Lr90;->i()I

    .line 168
    move-result v3

    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    new-array v3, v2, [Ljava/lang/Object;

    .line 178
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_5
    sget-boolean v0, Lwg;->a:Z

    .line 183
    if-eqz v0, :cond_8

    .line 185
    invoke-virtual {p0}, Lr90;->i()I

    .line 188
    move-result v0

    .line 189
    if-nez v0, :cond_8

    .line 191
    sget-boolean v0, Lxj0;->b:Z

    .line 193
    if-eqz v0, :cond_6

    .line 195
    const-string v0, "Communication convertNalWithRtpSession ControlConfig.isPackStart && rtpSession.getSeqNum() == 0"

    .line 197
    new-array v2, v2, [Ljava/lang/Object;

    .line 199
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :cond_6
    sget-object v0, Luo;->a:[B

    .line 204
    invoke-static {v0}, Luo;->c([B)[B

    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {p0, v0}, Lr90;->k([B)[J

    .line 211
    sget-object v0, Luo;->b:[B

    .line 213
    invoke-static {v0}, Luo;->c([B)[B

    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {p0, v0}, Lr90;->k([B)[J

    .line 220
    goto :goto_2

    .line 221
    :cond_7
    sget-boolean p0, Lxj0;->b:Z

    .line 223
    if-eqz p0, :cond_8

    .line 225
    const-string p0, "Communication convertNalWithRtpSession rtpSession == null"

    .line 227
    new-array v0, v2, [Ljava/lang/Object;

    .line 229
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :cond_8
    :goto_2
    return-object p1

    .line 233
    :cond_9
    :goto_3
    sget-object v0, Luo;->d:[B

    .line 235
    invoke-static {p1, v0}, Luo;->d([B[B)I

    .line 238
    move-result v0

    .line 239
    sget-object v3, Luo;->f:[B

    .line 241
    invoke-static {p1, v3}, Luo;->d([B[B)I

    .line 244
    move-result v3

    .line 245
    sget-boolean v4, Lxj0;->b:Z

    .line 247
    const-string v5, " ppsIndex = "

    .line 249
    if-eqz v4, :cond_a

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    .line 253
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    const-string v6, "Communication 1 convertNalWithRtpSession spsIndex = "

    .line 258
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    move-result-object v4

    .line 274
    new-array v6, v2, [Ljava/lang/Object;

    .line 276
    invoke-static {v1, v4, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :cond_a
    if-gez v0, :cond_b

    .line 281
    sget-object v0, Luo;->e:[B

    .line 283
    invoke-static {p1, v0}, Luo;->d([B[B)I

    .line 286
    move-result v0

    .line 287
    :cond_b
    if-gez v3, :cond_c

    .line 289
    sget-object v3, Luo;->g:[B

    .line 291
    invoke-static {p1, v3}, Luo;->d([B[B)I

    .line 294
    move-result v3

    .line 295
    :cond_c
    const/4 v4, 0x0

    .line 296
    if-ltz v0, :cond_12

    .line 298
    if-gez v3, :cond_d

    .line 300
    goto/16 :goto_4

    .line 302
    :cond_d
    sget-boolean v6, Lxj0;->b:Z

    .line 304
    if-eqz v6, :cond_e

    .line 306
    const-string v6, "Communication convertNalWithRtpSession find sps or pps"

    .line 308
    new-array v7, v2, [Ljava/lang/Object;

    .line 310
    invoke-static {v1, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    :cond_e
    sub-int v6, v3, v0

    .line 315
    array-length v7, p1

    .line 316
    sub-int/2addr v7, v3

    .line 317
    new-array v8, v6, [B

    .line 319
    sput-object v8, Luo;->a:[B

    .line 321
    new-array v8, v7, [B

    .line 323
    sput-object v8, Luo;->b:[B

    .line 325
    sget-boolean v8, Lxj0;->b:Z

    .line 327
    if-eqz v8, :cond_f

    .line 329
    new-instance v8, Ljava/lang/StringBuilder;

    .line 331
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    const-string v9, "Communication 2 convertNalWithRtpSession spsIndex = "

    .line 336
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    move-result-object v5

    .line 352
    new-array v8, v2, [Ljava/lang/Object;

    .line 354
    invoke-static {v1, v5, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    :cond_f
    sget-object v5, Luo;->a:[B

    .line 359
    invoke-static {p1, v0, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    sget-object v0, Luo;->b:[B

    .line 364
    invoke-static {p1, v3, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    if-eqz p0, :cond_11

    .line 369
    sget-boolean p1, Lxj0;->b:Z

    .line 371
    if-eqz p1, :cond_10

    .line 373
    new-instance p1, Ljava/lang/StringBuilder;

    .line 375
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 378
    const-string v0, "Communication 2 convertNalWithRtpSession ControlConfig.isPackStart  = "

    .line 380
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    sget-boolean v0, Lwg;->a:Z

    .line 385
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    move-result-object p1

    .line 392
    new-array v0, v2, [Ljava/lang/Object;

    .line 394
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    :cond_10
    sget-boolean p1, Lwg;->a:Z

    .line 399
    if-eqz p1, :cond_11

    .line 401
    sget-object p1, Luo;->a:[B

    .line 403
    invoke-static {p1}, Luo;->c([B)[B

    .line 406
    move-result-object p1

    .line 407
    invoke-virtual {p0, p1}, Lr90;->k([B)[J

    .line 410
    sget-object p1, Luo;->b:[B

    .line 412
    invoke-static {p1}, Luo;->c([B)[B

    .line 415
    move-result-object p1

    .line 416
    invoke-virtual {p0, p1}, Lr90;->k([B)[J

    .line 419
    :cond_11
    sget-boolean p0, Lxj0;->b:Z

    .line 421
    if-eqz p0, :cond_14

    .line 423
    new-instance p0, Ljava/lang/StringBuilder;

    .line 425
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    const-string p1, "Communication 1 convertNalWithRtpSession mSpsNal[] = "

    .line 430
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    sget-object p1, Luo;->a:[B

    .line 435
    invoke-static {p1, v2}, Luo;->e([BI)Ljava/lang/String;

    .line 438
    move-result-object p1

    .line 439
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    move-result-object p0

    .line 446
    new-array p1, v2, [Ljava/lang/Object;

    .line 448
    invoke-static {v1, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    new-instance p0, Ljava/lang/StringBuilder;

    .line 453
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    const-string p1, "Communication 1 convertNalWithRtpSession mPpsNal[] = "

    .line 458
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    sget-object p1, Luo;->b:[B

    .line 463
    invoke-static {p1, v2}, Luo;->e([BI)Ljava/lang/String;

    .line 466
    move-result-object p1

    .line 467
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    move-result-object p0

    .line 474
    new-array p1, v2, [Ljava/lang/Object;

    .line 476
    invoke-static {v1, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    goto :goto_5

    .line 480
    :cond_12
    :goto_4
    sget-boolean p0, Lxj0;->b:Z

    .line 482
    if-eqz p0, :cond_13

    .line 484
    const-string p0, "Communication convertNalWithRtpSession can\'t find sps or pps !!!"

    .line 486
    new-array p1, v2, [Ljava/lang/Object;

    .line 488
    invoke-static {v1, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    :cond_13
    sput-object v4, Luo;->a:[B

    .line 493
    sput-object v4, Luo;->b:[B

    .line 495
    :cond_14
    :goto_5
    return-object v4
.end method

.method public static c([B)[B
    .locals 8

    .line 1
    sget-boolean v0, Lxj0;->b:Z

    .line 3
    const-string v1, " nal[] = "

    .line 5
    const-string v2, "0"

    .line 7
    const-string v3, "Communication convertToNal nal.length = "

    .line 9
    const-string v4, "H264NalUtils"

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    if-eqz p0, :cond_0

    .line 24
    array-length v6, p0

    .line 25
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v6

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v6, v2

    .line 31
    :goto_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {p0, v5}, Luo;->e([BI)Ljava/lang/String;

    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    new-array v6, v5, [Ljava/lang/Object;

    .line 50
    invoke-static {v4, v0, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    if-eqz p0, :cond_2

    .line 63
    array-length v2, p0

    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v2

    .line 68
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {p0, v5}, Luo;->e([BI)Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    new-array v1, v5, [Ljava/lang/Object;

    .line 87
    invoke-static {v4, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    if-eqz p0, :cond_3

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    move-result-wide v0

    .line 96
    sget-object v2, Luo;->c:[B

    .line 98
    array-length v2, v2

    .line 99
    array-length v3, p0

    .line 100
    sub-int/2addr v3, v2

    .line 101
    new-array v6, v3, [B

    .line 103
    invoke-static {p0, v2, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    move-result-wide v2

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    const-string v7, "Communication convertToNal arraycopy\u8f6c\u6362\u7528\u65f6\uff1a"

    .line 117
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    sub-long/2addr v2, v0

    .line 121
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p0

    .line 128
    new-array v0, v5, [Ljava/lang/Object;

    .line 130
    invoke-static {v4, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    const-string v0, "Communication convertToNal newNal[] = "

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {v6, v5}, Luo;->e([BI)Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 154
    new-array v0, v5, [Ljava/lang/Object;

    .line 156
    invoke-static {v4, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    return-object v6

    .line 160
    :cond_3
    const-string p0, "Communication convertToNal newNal[] = null"

    .line 162
    new-array v0, v5, [Ljava/lang/Object;

    .line 164
    invoke-static {v4, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    const/4 p0, 0x0

    .line 168
    return-object p0
.end method

.method public static d([B[B)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p0, :cond_4

    .line 4
    if-eqz p1, :cond_4

    .line 6
    array-length v1, p0

    .line 7
    if-eqz v1, :cond_4

    .line 9
    array-length v1, p1

    .line 10
    if-eqz v1, :cond_4

    .line 12
    array-length v1, p0

    .line 13
    array-length v2, p1

    .line 14
    if-ge v1, v2, :cond_0

    .line 16
    goto :goto_3

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    array-length v3, p0

    .line 20
    array-length v4, p1

    .line 21
    sub-int/2addr v3, v4

    .line 22
    const/4 v4, 0x1

    .line 23
    add-int/2addr v3, v4

    .line 24
    if-ge v2, v3, :cond_4

    .line 26
    aget-byte v3, p0, v2

    .line 28
    aget-byte v5, p1, v1

    .line 30
    if-ne v3, v5, :cond_3

    .line 32
    :goto_1
    array-length v3, p1

    .line 33
    if-ge v4, v3, :cond_2

    .line 35
    add-int v3, v2, v4

    .line 37
    aget-byte v3, p0, v3

    .line 39
    aget-byte v5, p1, v4

    .line 41
    if-eq v3, v5, :cond_1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    :goto_2
    array-length v3, p1

    .line 48
    if-ne v4, v3, :cond_3

    .line 50
    return v2

    .line 51
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_4
    :goto_3
    return v0
.end method

.method public static e([BI)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p0, :cond_3

    .line 3
    array-length v0, p0

    .line 4
    if-lez v0, :cond_3

    .line 6
    array-length v0, p0

    .line 7
    const/16 v1, 0x14

    .line 9
    if-le v0, v1, :cond_0

    .line 11
    const/16 v0, 0x14

    .line 13
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    :goto_0
    if-ge p1, v0, :cond_2

    .line 20
    aget-byte v2, p0, p1

    .line 22
    and-int/lit16 v2, v2, 0xff

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x2

    .line 33
    if-ge v3, v4, :cond_1

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string v4, "0"

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    :cond_1
    const-string v3, ","

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    add-int/lit8 p1, p1, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_3
    const-string p0, "0......0"

    .line 70
    return-object p0
.end method
