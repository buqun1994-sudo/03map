.class public Lvo0$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvo0$n;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/amap/location/support/bean/location/AmapLocation;

.field public final synthetic b:Lvo0$n;


# direct methods
.method public constructor <init>(Lvo0$n;Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0$n$a;->b:Lvo0$n;

    .line 3
    iput-object p2, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getOptContent()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    const-string v1, ":"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    iget-object v1, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 23
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getType()I

    .line 26
    move-result v1

    .line 27
    const/16 v2, 0xe

    .line 29
    const/4 v3, 0x1

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x2

    .line 32
    if-eq v1, v2, :cond_1

    .line 34
    iget-object v1, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 36
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getType()I

    .line 39
    move-result v1

    .line 40
    const/16 v2, 0xf

    .line 42
    if-ne v1, v2, :cond_4

    .line 44
    :cond_1
    iget-object v1, p0, Lvo0$n$a;->b:Lvo0$n;

    .line 46
    iget-object v1, v1, Lvo0$n;->d:Lvo0;

    .line 48
    invoke-static {v1}, Lvo0;->b0(Lvo0;)Z

    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_2

    .line 54
    goto/16 :goto_2

    .line 56
    :cond_2
    iget-object v1, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 58
    const-string v2, "softLoc"

    .line 60
    invoke-virtual {v1, v2}, Lcom/amap/location/type/location/Location;->setSource(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 65
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 68
    move-result-wide v1

    .line 69
    iget-object v6, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 71
    invoke-virtual {v6}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 74
    move-result-wide v6

    .line 75
    invoke-static {v1, v2, v6, v7}, Lcom/amap/location/support/coord/OffsetVersion3;->wgs84ToGcj02(DD)[D

    .line 78
    move-result-object v1

    .line 79
    iget-object v2, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 81
    const-string v6, "coord"

    .line 83
    const-string v7, "GCJ02"

    .line 85
    invoke-virtual {v2, v6, v7}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    iget-object v2, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 90
    const-string v6, "hasgcj"

    .line 92
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 94
    invoke-virtual {v2, v6, v7}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    iget-object v2, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 99
    const-string v6, "gcjlat"

    .line 101
    aget-wide v7, v1, v3

    .line 103
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v2, v6, v7}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 112
    const-string v6, "gcjlng"

    .line 114
    aget-wide v7, v1, v4

    .line 116
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v2, v6, v1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    if-eqz v0, :cond_3

    .line 125
    array-length v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 126
    const/16 v2, 0x8

    .line 128
    if-lt v1, v2, :cond_3

    .line 130
    :try_start_1
    aget-object v1, v0, v5

    .line 132
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 135
    move-result-wide v1

    .line 136
    iget-object v6, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 138
    const-string v7, "pdop"

    .line 140
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v6, v7, v1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const/4 v1, 0x3

    .line 148
    aget-object v1, v0, v1

    .line 150
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 153
    move-result-wide v1

    .line 154
    iget-object v6, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 156
    const-string v7, "hodp"

    .line 158
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {v6, v7, v1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    const/4 v1, 0x4

    .line 166
    aget-object v1, v0, v1

    .line 168
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 171
    move-result-wide v1

    .line 172
    iget-object v6, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 174
    const-string v7, "vdop"

    .line 176
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v6, v7, v1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    const/4 v1, 0x5

    .line 184
    aget-object v1, v0, v1

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 189
    move-result v1

    .line 190
    iget-object v2, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 192
    const-string v6, "satelliteCount"

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v2, v6, v1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    const/4 v1, 0x7

    .line 202
    aget-object v1, v0, v1

    .line 204
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 207
    move-result v1

    .line 208
    iget-object v2, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 210
    const-string v6, "lateralAccuracy"

    .line 212
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v2, v6, v1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    const/4 v1, 0x6

    .line 220
    aget-object v1, v0, v1

    .line 222
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 225
    move-result v1

    .line 226
    iget-object v2, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 228
    const-string v6, "longitudinalAccuracy"

    .line 230
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v2, v6, v1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 237
    goto :goto_1

    .line 238
    :catch_0
    move-exception v1

    .line 239
    :try_start_2
    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 242
    :cond_3
    :goto_1
    iget-object v1, p0, Lvo0$n$a;->b:Lvo0$n;

    .line 244
    iget-object v1, v1, Lvo0$n;->d:Lvo0;

    .line 246
    iget-object v2, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 248
    invoke-virtual {v1, v2}, Lcom/amap/location/support/location/AbstractLocator;->report(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 251
    :goto_2
    iget-object v1, p0, Lvo0$n$a;->b:Lvo0$n;

    .line 253
    iget-object v1, v1, Lvo0$n;->d:Lvo0;

    .line 255
    invoke-static {v1}, Lvo0;->Z(Lvo0;)I

    .line 258
    move-result v1

    .line 259
    if-lez v1, :cond_4

    .line 261
    iget-object v1, p0, Lvo0$n$a;->b:Lvo0$n;

    .line 263
    iget-object v1, v1, Lvo0$n;->d:Lvo0;

    .line 265
    invoke-static {v1}, Lvo0;->a0(Lvo0;)Lgw0;

    .line 268
    move-result-object v1

    .line 269
    iget-object v2, p0, Lvo0$n$a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 271
    invoke-virtual {v1, v2}, Lgw0;->c(Lcom/amap/location/support/bean/location/AmapLocation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 274
    :cond_4
    if-eqz v0, :cond_7

    .line 276
    :try_start_3
    array-length v1, v0

    .line 277
    if-lt v1, v5, :cond_7

    .line 279
    aget-object v1, v0, v4

    .line 281
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 284
    move-result v1

    .line 285
    const v2, 0x18ed4

    .line 288
    add-int/2addr v2, v1

    .line 289
    invoke-static {v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 292
    aget-object v0, v0, v3

    .line 294
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 297
    move-result v0

    .line 298
    const v2, 0x18ede

    .line 301
    add-int/2addr v2, v0

    .line 302
    invoke-static {v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    .line 307
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    const-string v3, ","

    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v2

    .line 325
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 328
    move-result-object v3

    .line 329
    invoke-interface {v3}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 332
    move-result-wide v3

    .line 333
    iget-object v5, p0, Lvo0$n$a;->b:Lvo0$n;

    .line 335
    iget-object v5, v5, Lvo0$n;->d:Lvo0;

    .line 337
    invoke-static {v5}, Lvo0;->c0(Lvo0;)Ljava/lang/String;

    .line 340
    move-result-object v5

    .line 341
    invoke-static {v5}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 344
    move-result v5

    .line 345
    if-nez v5, :cond_5

    .line 347
    iget-object v5, p0, Lvo0$n$a;->b:Lvo0$n;

    .line 349
    iget-object v5, v5, Lvo0$n;->d:Lvo0;

    .line 351
    invoke-static {v5}, Lvo0;->c0(Lvo0;)Ljava/lang/String;

    .line 354
    move-result-object v5

    .line 355
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    move-result v5

    .line 359
    if-eqz v5, :cond_5

    .line 361
    iget-object v5, p0, Lvo0$n$a;->b:Lvo0$n;

    .line 363
    iget-object v5, v5, Lvo0$n;->d:Lvo0;

    .line 365
    invoke-static {v5}, Lvo0;->d0(Lvo0;)J

    .line 368
    move-result-wide v5

    .line 369
    sub-long v5, v3, v5

    .line 371
    const-wide/16 v7, 0x7530

    .line 373
    cmp-long v9, v5, v7

    .line 375
    if-lez v9, :cond_6

    .line 377
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 379
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    const-string v6, "5#"

    .line 384
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    const-string v1, "&"

    .line 392
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 405
    move-result-object v0

    .line 406
    const v1, 0x18ef4

    .line 409
    invoke-static {v1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 412
    iget-object v0, p0, Lvo0$n$a;->b:Lvo0$n;

    .line 414
    iget-object v0, v0, Lvo0$n;->d:Lvo0;

    .line 416
    invoke-static {v0, v3, v4}, Lvo0;->f(Lvo0;J)J

    .line 419
    :cond_6
    iget-object v0, p0, Lvo0$n$a;->b:Lvo0$n;

    .line 421
    iget-object v0, v0, Lvo0$n;->d:Lvo0;

    .line 423
    invoke-static {v0, v2}, Lvo0;->K(Lvo0;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 426
    goto :goto_3

    .line 427
    :catch_1
    move-exception v0

    .line 428
    :try_start_4
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 431
    goto :goto_3

    .line 432
    :catch_2
    move-exception v0

    .line 433
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 436
    :cond_7
    :goto_3
    return-void
.end method
