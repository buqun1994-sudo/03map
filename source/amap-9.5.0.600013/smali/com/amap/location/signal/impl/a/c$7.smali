.class Lcom/amap/location/signal/impl/a/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/signal/impl/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/signal/impl/a/c;

.field private b:J

.field private c:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/amap/location/signal/impl/a/c;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/c$7;->a:Lcom/amap/location/signal/impl/a/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/amap/location/signal/impl/a/c$7;->b:J

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/c$7;->c:Ljava/lang/StringBuilder;

    .line 17
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9

    .line 1
    if-eqz p1, :cond_9

    .line 3
    const-string v0, "gps"

    .line 5
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    goto/16 :goto_4

    .line 17
    :cond_0
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->isMainProcess()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    const v0, 0x18f43

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const v0, 0x18f3e

    .line 30
    :goto_0
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 33
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onDriveNavi()Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 39
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->isMainProcess()Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 45
    const v0, 0x18fa7

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const v0, 0x18fa2

    .line 52
    :goto_1
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c$7;->a:Lcom/amap/location/signal/impl/a/c;

    .line 57
    invoke-static {v0}, Lcom/amap/location/signal/impl/a/c;->f(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 60
    move-result-object v0

    .line 61
    const/4 v1, 0x0

    .line 62
    const/4 v2, 0x0

    .line 63
    if-eqz v0, :cond_4

    .line 65
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c$7;->a:Lcom/amap/location/signal/impl/a/c;

    .line 67
    invoke-static {v0, p1}, Lcom/amap/location/signal/impl/a/c;->a(Lcom/amap/location/signal/impl/a/c;Landroid/location/Location;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 70
    move-result-object v0

    .line 71
    iget-object v3, p0, Lcom/amap/location/signal/impl/a/c$7;->a:Lcom/amap/location/signal/impl/a/c;

    .line 73
    invoke-static {v3}, Lcom/amap/location/signal/impl/a/c;->f(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v3, v0}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 80
    const/4 v3, 0x1

    .line 81
    new-array v3, v3, [Ljava/lang/Object;

    .line 83
    aput-object v0, v3, v1

    .line 85
    const-wide/16 v4, 0x1

    .line 87
    invoke-static {v4, v5, v3}, Lcom/amap/location/support/icecream/IcecreamHostUtils;->sendSignal(J[Ljava/lang/Object;)V

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    move-object v0, v2

    .line 92
    :goto_2
    iget-object v3, p0, Lcom/amap/location/signal/impl/a/c$7;->a:Lcom/amap/location/signal/impl/a/c;

    .line 94
    invoke-static {v3}, Lcom/amap/location/signal/impl/a/c;->g(Lcom/amap/location/signal/impl/a/c;)Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    invoke-static {v3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_7

    .line 104
    iget-object v3, p0, Lcom/amap/location/signal/impl/a/c$7;->a:Lcom/amap/location/signal/impl/a/c;

    .line 106
    invoke-static {v3}, Lcom/amap/location/signal/impl/a/c;->g(Lcom/amap/location/signal/impl/a/c;)Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 110
    const-string v4, "#"

    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_5

    .line 118
    iget-object v3, p0, Lcom/amap/location/signal/impl/a/c$7;->a:Lcom/amap/location/signal/impl/a/c;

    .line 120
    invoke-static {v3}, Lcom/amap/location/signal/impl/a/c;->g(Lcom/amap/location/signal/impl/a/c;)Ljava/lang/String;

    .line 123
    move-result-object v3

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    .line 135
    move-result v6

    .line 136
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_8

    .line 152
    :cond_5
    iget-object v3, p0, Lcom/amap/location/signal/impl/a/c$7;->c:Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 157
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/c$7;->c:Ljava/lang/StringBuilder;

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 162
    move-result-wide v5

    .line 163
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/c$7;->c:Ljava/lang/StringBuilder;

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 174
    move-result-wide v5

    .line 175
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/c$7;->c:Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 186
    move-result-wide v5

    .line 187
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/c$7;->c:Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 198
    move-result-wide v5

    .line 199
    const-wide v7, 0x412e848000000000L    # 1000000.0

    .line 204
    mul-double v5, v5, v7

    .line 206
    double-to-int v3, v5

    .line 207
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/c$7;->c:Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 218
    move-result-wide v5

    .line 219
    mul-double v5, v5, v7

    .line 221
    double-to-int v3, v5

    .line 222
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/c$7;->c:Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 233
    move-result v3

    .line 234
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/c$7;->c:Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    .line 245
    move-result v3

    .line 246
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/c$7;->c:Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    .line 257
    move-result p1

    .line 258
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    if-eqz v0, :cond_6

    .line 266
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c$7;->c:Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getType()I

    .line 271
    move-result v1

    .line 272
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c$7;->c:Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getSubType()I

    .line 283
    move-result v1

    .line 284
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c$7;->c:Ljava/lang/StringBuilder;

    .line 292
    const-string v1, "satelliteCount"

    .line 294
    invoke-virtual {v0, v1}, Lcom/amap/location/type/location/Location;->getOptAttr(Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_6
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/c$7;->c:Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 313
    move-result-object p1

    .line 314
    const v0, 0x1ae59

    .line 317
    invoke-static {v0, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 320
    goto :goto_3

    .line 321
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 324
    move-result-wide v0

    .line 325
    iget-wide v3, p0, Lcom/amap/location/signal/impl/a/c$7;->b:J

    .line 327
    sub-long/2addr v0, v3

    .line 328
    const-wide/16 v3, 0x2710

    .line 330
    cmp-long v5, v0, v3

    .line 332
    if-ltz v5, :cond_8

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    .line 336
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    const-string v1, "rec gps:"

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 347
    move-result-wide v3

    .line 348
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 351
    const-string v1, ","

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 359
    move-result-wide v3

    .line 360
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 369
    move-result-wide v3

    .line 370
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    move-result-object p1

    .line 377
    const-string v0, "sysgnssprd"

    .line 379
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 385
    move-result-wide v0

    .line 386
    iput-wide v0, p0, Lcom/amap/location/signal/impl/a/c$7;->b:J

    .line 388
    :cond_8
    :goto_3
    const p1, 0x1ae2a

    .line 391
    const/16 v0, 0x4e20

    .line 393
    invoke-static {p1, v2, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[BI)V

    .line 396
    :cond_9
    :goto_4
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c$7;->a:Lcom/amap/location/signal/impl/a/c;

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/a/c;->f(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c$7;->a:Lcom/amap/location/signal/impl/a/c;

    .line 11
    invoke-static {v0}, Lcom/amap/location/signal/impl/a/c;->f(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onProviderDisabled(Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c$7;->a:Lcom/amap/location/signal/impl/a/c;

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/a/c;->f(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/c$7;->a:Lcom/amap/location/signal/impl/a/c;

    .line 11
    invoke-static {v0}, Lcom/amap/location/signal/impl/a/c;->f(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onProviderEnabled(Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/amap/location/signal/impl/a/c$7;->a:Lcom/amap/location/signal/impl/a/c;

    .line 3
    invoke-static {p3}, Lcom/amap/location/signal/impl/a/c;->f(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 6
    move-result-object p3

    .line 7
    if-eqz p3, :cond_0

    .line 9
    iget-object p3, p0, Lcom/amap/location/signal/impl/a/c$7;->a:Lcom/amap/location/signal/impl/a/c;

    .line 11
    invoke-static {p3}, Lcom/amap/location/signal/impl/a/c;->f(Lcom/amap/location/signal/impl/a/c;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {p3, p1, p2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onStatusChanged(Ljava/lang/String;I)V

    .line 18
    :cond_0
    return-void
.end method
