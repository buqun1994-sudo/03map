.class public Lcom/amap/location/e/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/location/support/bean/location/AmapLocation;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/location/e/a/a;)V
    .locals 14

    .line 1
    const-string v0, "3dma start"

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/util/TestCaseUtil;->writeLog(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 9
    move-result v0

    .line 10
    const-string v1, "gnss3dma"

    .line 12
    const/16 v2, 0x8

    .line 14
    if-ne v0, v2, :cond_0

    .line 16
    const-string v0, "gnssAlgo3DMA"

    .line 18
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    .line 24
    move-result v0

    .line 25
    const/16 v3, 0x1a

    .line 27
    if-ge v0, v3, :cond_1

    .line 29
    return-void

    .line 30
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 37
    move-result-wide v3

    .line 38
    iget-object v0, p0, Lcom/amap/location/e/a/b;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 40
    if-eqz v0, :cond_3

    .line 42
    iget-wide v5, p0, Lcom/amap/location/e/a/b;->b:J

    .line 44
    sub-long v5, v3, v5

    .line 46
    const-wide/16 v7, 0x384

    .line 48
    cmp-long v0, v5, v7

    .line 50
    if-gez v0, :cond_3

    .line 52
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 55
    move-result p1

    .line 56
    if-ne p1, v2, :cond_2

    .line 58
    const-string p1, "return1"

    .line 60
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_2
    return-void

    .line 64
    :cond_3
    iput-wide v3, p0, Lcom/amap/location/e/a/b;->b:J

    .line 66
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/location/e/a/a;->j()Ljava/util/List;

    .line 69
    move-result-object v7

    .line 70
    if-eqz v7, :cond_11

    .line 72
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 75
    move-result v0

    .line 76
    if-gtz v0, :cond_4

    .line 78
    goto/16 :goto_2

    .line 80
    :cond_4
    const-string v0, "request_3dma_count"

    .line 82
    invoke-static {v0}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    .line 85
    iget-wide v5, p0, Lcom/amap/location/e/a/b;->b:J

    .line 87
    invoke-virtual {p1}, Lcom/amap/location/e/a/a;->b()Ljava/util/List;

    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {p1}, Lcom/amap/location/e/a/a;->c()J

    .line 94
    move-result-wide v9

    .line 95
    invoke-virtual {p1}, Lcom/amap/location/e/a/a;->l()Lcom/amap/location/support/bean/location/AmapLocation;

    .line 98
    move-result-object v11

    .line 99
    invoke-virtual {p1}, Lcom/amap/location/e/a/a;->a()J

    .line 102
    move-result-wide v12

    .line 103
    invoke-static/range {v5 .. v13}, Lcom/amap/location/e/a/b/c;->a(JLjava/util/List;Ljava/util/List;JLcom/amap/location/support/bean/location/AmapLocation;J)Lcom/amap/location/e/a/b/a;

    .line 106
    move-result-object v0

    .line 107
    if-nez v0, :cond_6

    .line 109
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 112
    move-result p1

    .line 113
    if-ne p1, v2, :cond_5

    .line 115
    const-string p1, "return3"

    .line 117
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_5
    return-void

    .line 121
    :cond_6
    iget-object v5, v0, Lcom/amap/location/e/a/b/a;->b:[I

    .line 123
    invoke-static {v5}, Lcom/amap/location/e/a/b/c;->a([I)V

    .line 126
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 129
    move-result v5

    .line 130
    if-ne v5, v2, :cond_7

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v6, "RtkErrorCode:"

    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v6, v0, Lcom/amap/location/e/a/b/a;->b:[I

    .line 144
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v5

    .line 155
    invoke-static {v1, v5}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_7
    iget-object v5, v0, Lcom/amap/location/e/a/b/a;->b:[I

    .line 160
    invoke-static {v5}, Lcom/amap/location/e/a/b/c;->c([I)Z

    .line 163
    move-result v5

    .line 164
    sget v6, Lcom/amap/location/e/a/d;->G:I

    .line 166
    const/4 v7, 0x1

    .line 167
    if-nez v6, :cond_8

    .line 169
    if-eqz v5, :cond_b

    .line 171
    :cond_8
    const/4 v8, 0x2

    .line 172
    if-eq v6, v8, :cond_a

    .line 174
    if-eqz v5, :cond_9

    .line 176
    goto :goto_0

    .line 177
    :cond_9
    const/4 v5, 0x0

    .line 178
    goto :goto_1

    .line 179
    :cond_a
    :goto_0
    const/4 v5, 0x1

    .line 180
    :goto_1
    invoke-static {v3, v4, v0, p1, v5}, Lcom/amap/location/e/c/c;->a(JLcom/amap/location/e/a/b/a;Lcom/amap/location/e/a/a;Z)V

    .line 183
    :cond_b
    iget-object v3, v0, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 185
    if-nez v3, :cond_d

    .line 187
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 190
    move-result p1

    .line 191
    if-ne p1, v2, :cond_c

    .line 193
    const-string p1, "return4"

    .line 195
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_c
    return-void

    .line 199
    :cond_d
    invoke-virtual {p1}, Lcom/amap/location/e/a/a;->e()Lcom/amap/location/e/a/g;

    .line 202
    move-result-object v3

    .line 203
    if-eqz v3, :cond_10

    .line 205
    const-string v4, "3dma_soft_count"

    .line 207
    invoke-static {v4}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 213
    move-result v4

    .line 214
    if-ne v4, v2, :cond_e

    .line 216
    iget-object v4, v0, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 218
    const-string v5, "eventUnixTime"

    .line 220
    invoke-virtual {p1}, Lcom/amap/location/e/a/a;->j()Ljava/util/List;

    .line 223
    move-result-object v6

    .line 224
    invoke-virtual {p1}, Lcom/amap/location/e/a/a;->j()Ljava/util/List;

    .line 227
    move-result-object v8

    .line 228
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 231
    move-result v8

    .line 232
    sub-int/2addr v8, v7

    .line 233
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 236
    move-result-object v6

    .line 237
    check-cast v6, Lcom/amap/location/e/a/b/b;

    .line 239
    iget-wide v8, v6, Lcom/amap/location/e/a/b/b;->c:J

    .line 241
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 244
    move-result-object v6

    .line 245
    invoke-virtual {v4, v5, v6}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    iget-object v4, v0, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 250
    const-string v5, "eventTickTime"

    .line 252
    invoke-virtual {p1}, Lcom/amap/location/e/a/a;->j()Ljava/util/List;

    .line 255
    move-result-object v6

    .line 256
    invoke-virtual {p1}, Lcom/amap/location/e/a/a;->j()Ljava/util/List;

    .line 259
    move-result-object p1

    .line 260
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 263
    move-result p1

    .line 264
    sub-int/2addr p1, v7

    .line 265
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    move-result-object p1

    .line 269
    check-cast p1, Lcom/amap/location/e/a/b/b;

    .line 271
    iget-wide v6, p1, Lcom/amap/location/e/a/b/b;->d:J

    .line 273
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {v4, v5, p1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    :cond_e
    iget-object p1, v0, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 282
    const-string v4, "softGnssType"

    .line 284
    const/4 v5, 0x3

    .line 285
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    move-result-object v5

    .line 289
    invoke-virtual {p1, v4, v5}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    const-string p1, "3dma success"

    .line 294
    invoke-static {p1}, Lcom/amap/location/support/util/TestCaseUtil;->writeLog(Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 300
    move-result p1

    .line 301
    if-ne p1, v2, :cond_f

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    .line 305
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    const-string v2, "onGnssAlogComplete:"

    .line 310
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v2, v0, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 315
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    move-result-object p1

    .line 322
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_f
    iget-object p1, v0, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 327
    const/4 v2, -0x1

    .line 328
    invoke-interface {v3, v2, p1}, Lcom/amap/location/e/a/g;->a(ILcom/amap/location/support/bean/location/AmapLocation;)V

    .line 331
    iget-object p1, v0, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 333
    iput-object p1, p0, Lcom/amap/location/e/a/b;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 335
    goto :goto_3

    .line 336
    :cond_10
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 339
    move-result p1

    .line 340
    if-ne p1, v2, :cond_13

    .line 342
    const-string p1, "callback == null"

    .line 344
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    goto :goto_3

    .line 348
    :cond_11
    :goto_2
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 351
    move-result p1

    .line 352
    if-ne p1, v2, :cond_12

    .line 354
    const-string p1, "return2"

    .line 356
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_12
    return-void

    .line 360
    :catch_0
    move-exception p1

    .line 361
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    :cond_13
    :goto_3
    return-void
.end method
